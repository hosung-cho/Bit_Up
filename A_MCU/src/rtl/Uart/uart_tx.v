// ============================================================
// File: uart_tx.v
// Role: Convert 8-bit parallel data to UART serial TX frame
// Format: 8N1, LSB first
// ============================================================
module uart_tx (
    input  wire       clk,
    input  wire       reset_n,
    input  wire       baud_tick,

    input  wire       tx_start,
    input  wire [7:0] tx_data,

    output reg        uart_tx_o,
    output reg        tx_busy,
    output reg        tx_done
);
    localparam TX_IDLE  = 2'd0;
    localparam TX_START = 2'd1;
    localparam TX_DATA  = 2'd2;
    localparam TX_STOP  = 2'd3;

    reg [1:0] tx_state;
    reg [7:0] tx_shift;
    reg [2:0] tx_bit_cnt;

    always @(posedge clk or negedge reset_n) begin
        if (!reset_n) begin
            tx_state   <= TX_IDLE;
            tx_shift   <= 8'd0;
            tx_bit_cnt <= 3'd0;
            uart_tx_o  <= 1'b1;
            tx_busy    <= 1'b0;
            tx_done    <= 1'b0;
        end else begin
            tx_done <= 1'b0;

            case (tx_state)
                TX_IDLE: begin
                    uart_tx_o  <= 1'b1;
                    tx_busy    <= 1'b0;
                    tx_bit_cnt <= 3'd0;

                    if (tx_start) begin
                        tx_shift <= tx_data;
                        tx_busy  <= 1'b1;
                        tx_state <= TX_START;
                    end
                end

                TX_START: begin
                    uart_tx_o <= 1'b0;
                    tx_busy   <= 1'b1;

                    if (baud_tick) begin
                        tx_state <= TX_DATA;
                    end
                end

                TX_DATA: begin
                    uart_tx_o <= tx_shift[0];
                    tx_busy   <= 1'b1;

                    if (baud_tick) begin
                        tx_shift <= {1'b0, tx_shift[7:1]};

                        if (tx_bit_cnt == 3'd7) begin
                            tx_bit_cnt <= 3'd0;
                            tx_state   <= TX_STOP;
                        end else begin
                            tx_bit_cnt <= tx_bit_cnt + 1'b1;
                        end
                    end
                end

                TX_STOP: begin
                    uart_tx_o <= 1'b1;
                    tx_busy   <= 1'b1;

                    if (baud_tick) begin
                        tx_done  <= 1'b1;
                        tx_busy  <= 1'b0;
                        tx_state <= TX_IDLE;
                    end
                end

                default: begin
                    tx_state  <= TX_IDLE;
                    uart_tx_o <= 1'b1;
                    tx_busy   <= 1'b0;
                end
            endcase
        end
    end
endmodule
