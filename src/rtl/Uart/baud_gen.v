// ============================================================
// Memory-Mapped UART RTL separated by structure
// ============================================================
// Recommended file structure:
//
// rtl/
//  ├── baud_gen.v
//  ├── uart_tx.v
//  ├── uart_rx.v
//  ├── uart_regs.v
//  ├── uart_top.v
//  └── tb_uart_top.v
//
// UART MMIO register map:
//   UART_BASE + 0x00 : TXDATA  [W]
//   UART_BASE + 0x04 : RXDATA  [R]
//   UART_BASE + 0x08 : STATUS  [R]
//
// STATUS register:
//   bit[0] rx_valid
//   bit[1] tx_busy
//   bit[2] tx_ready
//   bit[3] rx_overrun
//   bit[4] frame_error
// ============================================================


// ============================================================
// File: baud_gen.v
// Role: Generate baud_tick for UART TX timing
// ============================================================
module baud_gen #(
    parameter CLK_FREQ  = 50000000,
    parameter BAUD_RATE = 115200
)(
    input  wire clk,
    input  wire reset_n,
    output reg  baud_tick
);
    localparam integer BAUD_DIV = CLK_FREQ / BAUD_RATE;

    reg [31:0] baud_cnt;

    always @(posedge clk or negedge reset_n) begin
        if (!reset_n) begin
            baud_cnt  <= 32'd0;
            baud_tick <= 1'b0;
        end else begin
            if (baud_cnt == BAUD_DIV - 1) begin
                baud_cnt  <= 32'd0;
                baud_tick <= 1'b1;
            end else begin
                baud_cnt  <= baud_cnt + 1'b1;
                baud_tick <= 1'b0;
            end
        end
    end
endmodule

