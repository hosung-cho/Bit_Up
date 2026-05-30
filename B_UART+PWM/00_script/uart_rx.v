// -----------------------------------------------------------------------------
// uart_rx.v
// Simple UART receiver: 8 data bits, no parity, 1 stop bit (8N1)
// -----------------------------------------------------------------------------
module uart_rx #(
    parameter CLKS_PER_BIT = 87   // example: 10 MHz / 115200 bps = 86.8
)(
    input  wire       clk,
    input  wire       reset_n,
    input  wire       rx,

    output reg  [7:0] rx_data,
    output reg        rx_valid
);

    localparam S_IDLE  = 3'd0;
    localparam S_START = 3'd1;
    localparam S_DATA  = 3'd2;
    localparam S_STOP  = 3'd3;
    localparam S_DONE  = 3'd4;

    reg [2:0]  state;
    reg [31:0] clk_count;
    reg [2:0]  bit_index;
    reg [7:0]  rx_shift;

    always @(posedge clk or negedge reset_n) begin
        if (!reset_n) begin
            state     <= S_IDLE;
            clk_count <= 32'd0;
            bit_index <= 3'd0;
            rx_shift  <= 8'd0;
            rx_data   <= 8'd0;
            rx_valid  <= 1'b0;
        end else begin
            rx_valid <= 1'b0;

            case (state)
                S_IDLE: begin
                    clk_count <= 32'd0;
                    bit_index <= 3'd0;
                    if (rx == 1'b0) begin
                        state <= S_START;
                    end
                end

                S_START: begin
                    // sample at the middle of the start bit
                    if (clk_count == (CLKS_PER_BIT / 2)) begin
                        if (rx == 1'b0) begin
                            clk_count <= 32'd0;
                            state <= S_DATA;
                        end else begin
                            state <= S_IDLE;
                        end
                    end else begin
                        clk_count <= clk_count + 32'd1;
                    end
                end

                S_DATA: begin
                    if (clk_count == CLKS_PER_BIT - 1) begin
                        clk_count <= 32'd0;
                        rx_shift[bit_index] <= rx;

                        if (bit_index == 3'd7) begin
                            bit_index <= 3'd0;
                            state <= S_STOP;
                        end else begin
                            bit_index <= bit_index + 3'd1;
                        end
                    end else begin
                        clk_count <= clk_count + 32'd1;
                    end
                end

                S_STOP: begin
                    if (clk_count == CLKS_PER_BIT - 1) begin
                        clk_count <= 32'd0;
                        rx_data <= rx_shift;
                        state <= S_DONE;
                    end else begin
                        clk_count <= clk_count + 32'd1;
                    end
                end

                S_DONE: begin
                    rx_valid <= 1'b1;
                    state <= S_IDLE;
                end

                default: begin
                    state <= S_IDLE;
                end
            endcase
        end
    end

endmodule
