// ============================================================
// File: uart_rx.v
// Role: Convert UART serial RX frame to 8-bit parallel data
// Format: 8N1, LSB first
// Note: RX has its own baud counter because it must sample
//       the center of the start bit and each data bit.
// ============================================================
module uart_rx #(
    parameter CLK_FREQ  = 50000000,
    parameter BAUD_RATE = 115200
)(
    input  wire       clk,
    input  wire       reset_n,
    input  wire       uart_rx_i,

    output reg  [7:0] rx_data,
    output reg        rx_done,
    output reg        frame_error
);
    localparam integer BAUD_DIV = CLK_FREQ / BAUD_RATE;
    localparam integer HALF_DIV = BAUD_DIV / 2;

    localparam RX_IDLE  = 2'd0;
    localparam RX_START = 2'd1;
    localparam RX_DATA  = 2'd2;
    localparam RX_STOP  = 2'd3;

    reg [1:0]  rx_state;
    reg [31:0] rx_cnt;
    reg [2:0]  rx_bit_cnt;
    reg [7:0]  rx_shift;

    // 2-stage synchronizer
    reg rx_sync1;
    reg rx_sync2;
    reg rx_sync2_d;

    wire rx_falling;
    assign rx_falling = (rx_sync2_d == 1'b1) && (rx_sync2 == 1'b0);

    always @(posedge clk or negedge reset_n) begin
        if (!reset_n) begin
            rx_sync1   <= 1'b1;
            rx_sync2   <= 1'b1;
            rx_sync2_d <= 1'b1;
        end else begin
            rx_sync1   <= uart_rx_i;
            rx_sync2   <= rx_sync1;
            rx_sync2_d <= rx_sync2;
        end
    end

    always @(posedge clk or negedge reset_n) begin
        if (!reset_n) begin
            rx_state    <= RX_IDLE;
            rx_cnt      <= 32'd0;
            rx_bit_cnt  <= 3'd0;
            rx_shift    <= 8'd0;
            rx_data     <= 8'd0;
            rx_done     <= 1'b0;
            frame_error <= 1'b0;
        end else begin
            rx_done <= 1'b0;

            case (rx_state)
                RX_IDLE: begin
                    rx_cnt     <= 32'd0;
                    rx_bit_cnt <= 3'd0;

                    if (rx_falling) begin
                        frame_error <= 1'b0;
                        rx_state    <= RX_START;
                        rx_cnt      <= 32'd0;
                    end
                end

                RX_START: begin
                    if (rx_cnt == HALF_DIV - 1) begin
                        rx_cnt <= 32'd0;

                        if (rx_sync2 == 1'b0) begin
                            rx_state <= RX_DATA;
                        end else begin
                            rx_state <= RX_IDLE;
                        end
                    end else begin
                        rx_cnt <= rx_cnt + 1'b1;
                    end
                end

                RX_DATA: begin
                    if (rx_cnt == BAUD_DIV - 1) begin
                        rx_cnt   <= 32'd0;
                        rx_shift <= {rx_sync2, rx_shift[7:1]};

                        if (rx_bit_cnt == 3'd7) begin
                            rx_bit_cnt <= 3'd0;
                            rx_state   <= RX_STOP;
                        end else begin
                            rx_bit_cnt <= rx_bit_cnt + 1'b1;
                        end
                    end else begin
                        rx_cnt <= rx_cnt + 1'b1;
                    end
                end

                RX_STOP: begin
                    if (rx_cnt == BAUD_DIV - 1) begin
                        rx_cnt <= 32'd0;

                        if (rx_sync2 == 1'b1) begin
                            rx_data <= rx_shift;
                            rx_done <= 1'b1;
                        end else begin
                            frame_error <= 1'b1;
                        end

                        rx_state <= RX_IDLE;
                    end else begin
                        rx_cnt <= rx_cnt + 1'b1;
                    end
                end

                default: begin
                    rx_state <= RX_IDLE;
                end
            endcase
        end
    end
endmodule

