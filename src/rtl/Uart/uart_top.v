// ============================================================
// File: uart_top.v
// Role: Top module that connects baud_gen, uart_tx, uart_rx,
//       and uart_regs.
//
// This is the module that should be connected to SERV bus.
// ============================================================
module uart_top #(
    parameter CLK_FREQ  = 50000000,
    parameter BAUD_RATE = 115200
)(
    input  wire        clk,
    input  wire        reset_n,

    // SERV/simple MMIO bus interface
    input  wire        uart_sel,
    input  wire [31:0] bus_addr,
    input  wire [31:0] bus_wdata,
    input  wire        bus_we,
    input  wire        bus_re,
    output wire [31:0] bus_rdata,
    output wire        bus_ready,

    // External UART pins
    input  wire        uart_rx_i,
    output wire        uart_tx_o
);
    wire       baud_tick;

    wire       tx_start;
    wire [7:0] tx_data;
    wire       tx_busy;
    wire       tx_done;

    wire [7:0] rx_data;
    wire       rx_done;
    wire       frame_error;

    baud_gen #(
        .CLK_FREQ(CLK_FREQ),
        .BAUD_RATE(BAUD_RATE)
    ) u_baud_gen (
        .clk(clk),
        .reset_n(reset_n),
        .baud_tick(baud_tick)
    );

    uart_tx u_uart_tx (
        .clk(clk),
        .reset_n(reset_n),
        .baud_tick(baud_tick),
        .tx_start(tx_start),
        .tx_data(tx_data),
        .uart_tx_o(uart_tx_o),
        .tx_busy(tx_busy),
        .tx_done(tx_done)
    );

    uart_rx #(
        .CLK_FREQ(CLK_FREQ),
        .BAUD_RATE(BAUD_RATE)
    ) u_uart_rx (
        .clk(clk),
        .reset_n(reset_n),
        .uart_rx_i(uart_rx_i),
        .rx_data(rx_data),
        .rx_done(rx_done),
        .frame_error(frame_error)
    );

    uart_regs u_uart_regs (
        .clk(clk),
        .reset_n(reset_n),

        .uart_sel(uart_sel),
        .bus_addr(bus_addr),
        .bus_wdata(bus_wdata),
        .bus_we(bus_we),
        .bus_re(bus_re),
        .bus_rdata(bus_rdata),
        .bus_ready(bus_ready),

        .tx_start(tx_start),
        .tx_data(tx_data),
        .tx_busy(tx_busy),
        .tx_done(tx_done),

        .rx_data_in(rx_data),
        .rx_done(rx_done),
        .frame_error_in(frame_error)
    );
endmodule

