/*
 * offchip_mem_bridge.v
 *
 * Shared serial bridge for SERV instruction/data memory accesses.
 *
 * Frame format, MSB first while o_mem_sync is high:
 *
 *   [69]    WE
 *   [68]    IBUS access flag
 *   [67:64] byte select
 *   [63:32] byte address
 *   [31:0]  write data / read dummy
 *
 * For reads, the external memory drives MISO during the final 32 bit times.
 * For writes, the bridge ignores MISO and acknowledges after the frame.
 */
module offchip_mem_bridge #(
    parameter integer SYS_CLK_EQUALS_FAST = 0,
    parameter integer ADDR_BITS = 32,
    parameter integer ENABLE_RF_PORT = 0,
    parameter integer RF_RAW = 5,
    parameter integer RF_WIDTH = 2,
    parameter integer WORD_MEM_ONLY = 0,
    parameter integer UNIFIED_SERIAL = 0,
    parameter RESET_STRATEGY = "MINI"
) (
    input  wire        i_clk_fast,
    input  wire        i_clk_sys,
    input  wire        i_rst,

    input  wire        i_ibus_cyc,
    input  wire [31:0] i_ibus_adr,
    output wire [31:0] o_ibus_rdt,
    output reg         o_ibus_ack,

    input  wire        i_dbus_cyc,
    input  wire [31:0] i_dbus_adr,
    input  wire [31:0] i_dbus_dat,
    input  wire [3:0]  i_dbus_sel,
    input  wire        i_dbus_we,
    output wire [31:0] o_dbus_rdt,
    output reg         o_dbus_ack,

    output reg         o_mem_sync,
    output wire        o_mem_sck,
    output wire        o_mem_mosi,
    input  wire        i_mem_miso,

    input  wire        i_rf_valid,
    input  wire [RF_RAW+7:0] i_rf_frame,
    output reg  [RF_WIDTH-1:0] o_rf_rdata,
    output reg         o_rf_sync,
    output wire        o_rf_sck,
    output wire        o_rf_mosi,
    input  wire        i_rf_miso
);

    localparam [1:0] ST_IDLE = 2'd0;
    localparam [1:0] ST_SHIFT = 2'd1;
    localparam [1:0] ST_ACK_HOLD = 2'd2;
    localparam [1:0] ST_RF_SHIFT = 2'd3;
    localparam integer HEADER_BITS = (WORD_MEM_ONLY != 0) ? (ADDR_BITS + 1) : (ADDR_BITS + 6);
    localparam integer FRAME_BITS = HEADER_BITS + 32;
    localparam integer RF_FRAME_BITS = RF_RAW + 8;
    localparam integer BASE_SHIFT_BITS = (HEADER_BITS > 32) ? HEADER_BITS : 32;
    localparam integer SHIFT_BITS = (BASE_SHIFT_BITS > RF_FRAME_BITS) ? BASE_SHIFT_BITS : RF_FRAME_BITS;
    localparam integer COUNT_BITS = (FRAME_BITS > 63) ? 7 : 6;
    localparam RESET_BRIDGE = (RESET_STRATEGY != "NONE") && (RESET_STRATEGY != "STATE_ONLY");

    reg [1:0] state = ST_IDLE;
    reg [SHIFT_BITS-1:0] shift_reg = {SHIFT_BITS{1'b0}};
    reg [COUNT_BITS-1:0] bit_count = {COUNT_BITS{1'b0}};
    reg active_we = 1'b0;
    reg req_pending = 1'b0;

    reg clk_sys_prev = 1'b0;
    wire clk_sys_rise = i_clk_sys & !clk_sys_prev;
    wire sys_tick = (SYS_CLK_EQUALS_FAST != 0) ? 1'b1 : clk_sys_rise;

    wire dbus_req = i_rst ? 1'b0 : i_dbus_cyc;
    wire ibus_req = i_rst ? 1'b0 : i_ibus_cyc;

    wire        next_ibus = !dbus_req && ibus_req;
    wire        next_we   = dbus_req && i_dbus_we;
    wire [ADDR_BITS-1:0] next_addr = next_ibus ? i_ibus_adr[ADDR_BITS-1:0] : i_dbus_adr[ADDR_BITS-1:0];

    assign o_ibus_rdt = shift_reg[31:0];
    assign o_dbus_rdt = shift_reg[31:0];

    wire rf_miso_w = (UNIFIED_SERIAL != 0) ? i_mem_miso : i_rf_miso;

    assign o_mem_sck = o_mem_sync ? ~i_clk_fast : 1'b0;
    assign o_mem_mosi = o_mem_sync ? shift_reg[SHIFT_BITS-1] : 1'b0;
    assign o_rf_sck = ((UNIFIED_SERIAL == 0) && o_rf_sync) ? ~i_clk_fast : 1'b0;
    assign o_rf_mosi = ((UNIFIED_SERIAL == 0) && o_rf_sync) ? shift_reg[SHIFT_BITS-1] : 1'b0;

    always @(posedge i_clk_fast) begin
        clk_sys_prev <= i_clk_sys;

        if (RESET_BRIDGE && i_rst) begin
            state <= ST_IDLE;
            shift_reg <= {SHIFT_BITS{1'b0}};
            bit_count <= {COUNT_BITS{1'b0}};
            active_we <= 1'b0;
            o_ibus_ack <= 1'b0;
            o_dbus_ack <= 1'b0;
            o_mem_sync <= 1'b0;
            o_rf_sync <= 1'b0;
            o_rf_rdata <= {RF_WIDTH{1'b0}};
            req_pending <= 1'b0;
        end else begin
            case (state)
                ST_IDLE: begin
                    o_ibus_ack <= 1'b0;
                    o_dbus_ack <= 1'b0;
                    o_mem_sync <= 1'b0;
                    o_rf_sync <= 1'b0;

                    if (sys_tick) begin
                        if ((ENABLE_RF_PORT != 0) && i_rf_valid) begin
                            active_we <= 1'b0;
                            shift_reg <= {i_rf_frame, {(SHIFT_BITS-RF_FRAME_BITS){1'b0}}};
                            bit_count <= RF_FRAME_BITS[COUNT_BITS-1:0];
                            if (UNIFIED_SERIAL != 0)
                                o_mem_sync <= 1'b1;
                            else
                                o_rf_sync <= 1'b1;
                            state <= ST_RF_SHIFT;
                        end else if (dbus_req || ibus_req) begin
                            if ((SYS_CLK_EQUALS_FAST != 0) || req_pending) begin
                                active_we <= next_we;
                                if (WORD_MEM_ONLY != 0)
                                    shift_reg <= {next_we, next_addr, {(SHIFT_BITS-HEADER_BITS){1'b0}}};
                                else
                                    shift_reg <= {next_we, next_ibus, (next_we ? i_dbus_sel : 4'b1111), next_addr, {(SHIFT_BITS-HEADER_BITS){1'b0}}};
                                bit_count <= FRAME_BITS[COUNT_BITS-1:0];
                                o_mem_sync <= 1'b1;
                                req_pending <= 1'b0;
                                state <= ST_SHIFT;
                            end else begin
                                req_pending <= 1'b1;
                            end
                        end else begin
                            req_pending <= 1'b0;
                        end
                    end
                end

                ST_RF_SHIFT: begin
                    if ((bit_count <= (RF_WIDTH + 1)) && (bit_count >= 7'd2))
                        o_rf_rdata <= {o_rf_rdata[RF_WIDTH-2:0], rf_miso_w};

                    if (bit_count >= 7'd2)
                        shift_reg <= {shift_reg[SHIFT_BITS-2:0], 1'b0};

                    bit_count <= bit_count - 1'b1;

                    if (bit_count == 7'd1) begin
                        o_mem_sync <= 1'b0;
                        o_rf_sync <= 1'b0;
                        state <= ST_IDLE;
                    end
                end

                ST_SHIFT: begin
                    if (bit_count >= 7'd34) begin
                        shift_reg <= {shift_reg[SHIFT_BITS-2:0], 1'b0};
                    end else if (bit_count == 7'd33) begin
                        if (active_we) begin
                            shift_reg <= {i_dbus_dat, {(SHIFT_BITS-32){1'b0}}};
                        end else begin
                            shift_reg <= {shift_reg[SHIFT_BITS-2:0], i_mem_miso};
                        end
                    end else if (bit_count >= 7'd2) begin
                        if (active_we) begin
                            shift_reg <= {shift_reg[SHIFT_BITS-2:0], 1'b0};
                        end else begin
                            shift_reg <= {shift_reg[SHIFT_BITS-2:0], i_mem_miso};
                        end
                    end else begin
                        shift_reg <= shift_reg;
                    end

                    bit_count <= bit_count - 1'b1;

                    if (bit_count == 7'd1) begin
                        o_mem_sync <= 1'b0;
                        if (next_ibus) o_ibus_ack <= 1'b1;
                        else           o_dbus_ack <= 1'b1;
                        state <= ST_ACK_HOLD;
                    end
                end

                ST_ACK_HOLD: begin
                    if (sys_tick) begin
                        o_ibus_ack <= 1'b0;
                        o_dbus_ack <= 1'b0;
                        state <= ST_IDLE;
                    end
                end

                default: state <= ST_IDLE;
            endcase
        end
    end

endmodule
