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
    input  wire        i_mem_miso
);

    localparam [1:0] ST_IDLE = 2'd0;
    localparam [1:0] ST_SHIFT = 2'd1;
    localparam [1:0] ST_ACK_HOLD = 2'd2;
    localparam integer HEADER_BITS = ADDR_BITS + 6;
    localparam integer FRAME_BITS = HEADER_BITS + 32;
    localparam integer SHIFT_BITS = (HEADER_BITS > 32) ? HEADER_BITS : 32;

    reg [1:0] state = ST_IDLE;
    reg [SHIFT_BITS-1:0] shift_reg = {SHIFT_BITS{1'b0}};
    reg [6:0] bit_count = 7'b0;
    reg active_ibus = 1'b0;
    reg active_we = 1'b0;
    reg req_pending = 1'b0;

    reg clk_sys_prev = 1'b0;
    wire clk_sys_rise = i_clk_sys & !clk_sys_prev;
    wire sys_tick = (SYS_CLK_EQUALS_FAST != 0) ? 1'b1 : clk_sys_rise;

    wire dbus_req = i_rst ? 1'b0 : i_dbus_cyc;
    wire ibus_req = i_rst ? 1'b0 : i_ibus_cyc;

    wire        next_ibus = !dbus_req && ibus_req;
    wire        next_we   = dbus_req && i_dbus_we;
    wire [3:0]  active_sel = active_we ? i_dbus_sel : 4'b1111;

    assign o_ibus_rdt = shift_reg[31:0];
    assign o_dbus_rdt = shift_reg[31:0];

    assign o_mem_sck = o_mem_sync ? ~i_clk_fast : 1'b0;
    assign o_mem_mosi = o_mem_sync ? shift_reg[SHIFT_BITS-1] : 1'b0;

    always @(posedge i_clk_fast) begin
        clk_sys_prev <= i_clk_sys;

        if ((RESET_STRATEGY != "NONE") && i_rst) begin
            state <= ST_IDLE;
            shift_reg <= {SHIFT_BITS{1'b0}};
            bit_count <= 7'd0;
            active_ibus <= 1'b0;
            active_we <= 1'b0;
            o_ibus_ack <= 1'b0;
            o_dbus_ack <= 1'b0;
            o_mem_sync <= 1'b0;
            req_pending <= 1'b0;
        end else begin
            case (state)
                ST_IDLE: begin
                    o_ibus_ack <= 1'b0;
                    o_dbus_ack <= 1'b0;
                    o_mem_sync <= 1'b0;

                    if (sys_tick) begin
                        if (dbus_req || ibus_req) begin
                            if ((SYS_CLK_EQUALS_FAST != 0) || req_pending) begin
                                active_ibus <= next_ibus;
                                active_we <= next_we;
                                shift_reg <= {next_we, next_ibus, (next_we ? i_dbus_sel : 4'b1111), (next_ibus ? i_ibus_adr[ADDR_BITS-1:0] : i_dbus_adr[ADDR_BITS-1:0]), {(SHIFT_BITS-HEADER_BITS){1'b0}}};
                                bit_count <= FRAME_BITS[6:0];
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
                        if (active_ibus) o_ibus_ack <= 1'b1;
                        else             o_dbus_ack <= 1'b1;
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
