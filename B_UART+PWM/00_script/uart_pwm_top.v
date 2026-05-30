// -----------------------------------------------------------------------------
// uart_pwm_top.v
// Top-level: UART RX/TX + command parser + register bank + 4-channel PWM core
// -----------------------------------------------------------------------------
module uart_pwm_top #(
    parameter CLKS_PER_BIT = 87
)(
    input  wire       clk,
    input  wire       reset_n,

    input  wire       uart_rx_i,
    output wire       uart_tx_o,
    output wire [3:0] pwm_out
);

    wire [7:0] rx_data;
    wire       rx_valid;

    wire       reg_wr_en;
    wire [7:0] reg_addr;
    wire [7:0] reg_wdata;
    wire       reg_rd_en;
    wire [7:0] reg_rd_addr;
    wire [7:0] reg_rdata;

    wire       global_enable;
    wire [3:0] ch_enable;
    wire [7:0] prescale;
    wire [15:0] period;
    wire [15:0] duty0;
    wire [15:0] duty1;
    wire [15:0] duty2;
    wire [15:0] duty3;

    reg  [7:0] tx_data_reg;
    reg        tx_start_reg;
    wire       tx_busy;
    wire       tx_done;

    uart_rx #(
        .CLKS_PER_BIT(CLKS_PER_BIT)
    ) u_uart_rx (
        .clk      (clk),
        .reset_n  (reset_n),
        .rx       (uart_rx_i),
        .rx_data  (rx_data),
        .rx_valid (rx_valid)
    );

    uart_cmd_parser u_uart_cmd_parser (
        .clk         (clk),
        .reset_n     (reset_n),
        .rx_data     (rx_data),
        .rx_valid    (rx_valid),
        .reg_wr_en   (reg_wr_en),
        .reg_addr    (reg_addr),
        .reg_wdata   (reg_wdata),
        .reg_rd_en   (reg_rd_en),
        .reg_rd_addr (reg_rd_addr)
    );

    reg_bank u_reg_bank (
        .clk           (clk),
        .reset_n       (reset_n),
        .wr_en         (reg_wr_en),
        .wr_addr       (reg_addr),
        .wr_data       (reg_wdata),
        .rd_addr       (reg_rd_addr),
        .rd_data       (reg_rdata),
        .global_enable (global_enable),
        .ch_enable     (ch_enable),
        .prescale      (prescale),
        .period        (period),
        .duty0         (duty0),
        .duty1         (duty1),
        .duty2         (duty2),
        .duty3         (duty3)
    );

    pwm_core u_pwm_core (
        .clk           (clk),
        .reset_n       (reset_n),
        .global_enable (global_enable),
        .ch_enable     (ch_enable),
        .prescale      (prescale),
        .period        (period),
        .duty0         (duty0),
        .duty1         (duty1),
        .duty2         (duty2),
        .duty3         (duty3),
        .pwm_out       (pwm_out)
    );

    uart_tx #(
        .CLKS_PER_BIT(CLKS_PER_BIT)
    ) u_uart_tx (
        .clk      (clk),
        .reset_n  (reset_n),
        .tx_data  (tx_data_reg),
        .tx_start (tx_start_reg),
        .tx       (uart_tx_o),
        .tx_busy  (tx_busy),
        .tx_done  (tx_done)
    );

    // For read command, return the selected register value through UART TX.
    // If TX is busy, this minimal version ignores the read request.
    always @(posedge clk or negedge reset_n) begin
        if (!reset_n) begin
            tx_data_reg  <= 8'd0;
            tx_start_reg <= 1'b0;
        end else begin
            tx_start_reg <= 1'b0;

            if (reg_rd_en && !tx_busy) begin
                tx_data_reg  <= reg_rdata;
                tx_start_reg <= 1'b1;
            end
        end
    end

endmodule
