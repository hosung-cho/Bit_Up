// ============================================================
// File: uart_regs.v
// Role: Memory-mapped register block
//
// This block converts SERV bus read/write into UART control/status.
// It does not directly include TX/RX FSMs.
// ============================================================
module uart_regs (
    input  wire        clk,
    input  wire        reset_n,

    // MMIO bus
    input  wire        uart_sel,
    input  wire [31:0] bus_addr,
    input  wire [31:0] bus_wdata,
    input  wire        bus_we,
    input  wire        bus_re,
    output reg  [31:0] bus_rdata,
    output wire        bus_ready,

    // TX control interface
    output reg         tx_start,
    output reg  [7:0]  tx_data,
    input  wire        tx_busy,
    input  wire        tx_done,

    // RX data interface
    input  wire [7:0]  rx_data_in,
    input  wire        rx_done,
    input  wire        frame_error_in
);
    localparam REG_TXDATA = 4'h0;
    localparam REG_RXDATA = 4'h4;
    localparam REG_STATUS = 4'h8;

    wire [3:0] reg_offset;
    wire       uart_write;
    wire       uart_read;
    wire       tx_ready;
    wire       txdata_write;
    wire       rxdata_read;
    wire       status_read;

    reg [7:0] rx_data_reg;
    reg       rx_valid;
    reg       rx_overrun;
    reg       frame_error_reg;

    assign reg_offset   = bus_addr[3:0];
    assign uart_write   = uart_sel & bus_we;
    assign uart_read    = uart_sel & bus_re;
    assign tx_ready     = ~tx_busy;
    assign txdata_write = uart_write & (reg_offset == REG_TXDATA);
    assign rxdata_read  = uart_read  & (reg_offset == REG_RXDATA);
    assign status_read  = uart_read  & (reg_offset == REG_STATUS);

    assign bus_ready = 1'b1;

    // TX register write path
    always @(posedge clk or negedge reset_n) begin
        if (!reset_n) begin
            tx_start <= 1'b0;
            tx_data  <= 8'd0;
        end else begin
            tx_start <= 1'b0;

            if (txdata_write && tx_ready) begin
                tx_data  <= bus_wdata[7:0];
                tx_start <= 1'b1;
            end
        end
    end

    // RX register and status flags
    always @(posedge clk or negedge reset_n) begin
        if (!reset_n) begin
            rx_data_reg     <= 8'd0;
            rx_valid        <= 1'b0;
            rx_overrun      <= 1'b0;
            frame_error_reg <= 1'b0;
        end else begin
            if (rx_done) begin
                if (rx_valid) begin
                    rx_overrun <= 1'b1;
                end

                rx_data_reg <= rx_data_in;
                rx_valid    <= 1'b1;
            end

            if (frame_error_in) begin
                frame_error_reg <= 1'b1;
            end

            // RXDATA read clears rx_valid
            if (rxdata_read) begin
                rx_valid <= 1'b0;
            end

            // STATUS read clears sticky error flags
            if (status_read) begin
                rx_overrun      <= 1'b0;
                frame_error_reg <= 1'b0;
            end
        end
    end

    // Bus read mux
    always @(*) begin
        if (uart_sel) begin
            case (reg_offset)
                REG_TXDATA: begin
                    bus_rdata = 32'd0;
                end

                REG_RXDATA: begin
                    bus_rdata = {24'd0, rx_data_reg};
                end

                REG_STATUS: begin
                    bus_rdata = {
                        27'd0,
                        frame_error_reg,
                        rx_overrun,
                        tx_ready,
                        tx_busy,
                        rx_valid
                    };
                end

                default: begin
                    bus_rdata = 32'd0;
                end
            endcase
        end else begin
            bus_rdata = 32'd0;
        end
    end
endmodule

