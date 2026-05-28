// -----------------------------------------------------------------------------
// uart_cmd_parser.v
// Command frame format: [CMD][ADDR][DATA]
// CMD_WRITE = 0x01 : write DATA to register ADDR
// CMD_READ  = 0x02 : request register ADDR, DATA byte is ignored
// -----------------------------------------------------------------------------
module uart_cmd_parser (
    input  wire       clk,
    input  wire       reset_n,

    input  wire [7:0] rx_data,
    input  wire       rx_valid,

    output reg        reg_wr_en,
    output reg  [7:0] reg_addr,
    output reg  [7:0] reg_wdata,

    output reg        reg_rd_en,
    output reg  [7:0] reg_rd_addr
);

    localparam CMD_WRITE = 8'h01;
    localparam CMD_READ  = 8'h02;

    localparam S_CMD  = 2'd0;
    localparam S_ADDR = 2'd1;
    localparam S_DATA = 2'd2;

    reg [1:0] state;
    reg [7:0] cmd_buf;
    reg [7:0] addr_buf;

    always @(posedge clk or negedge reset_n) begin
        if (!reset_n) begin
            state       <= S_CMD;
            cmd_buf     <= 8'd0;
            addr_buf    <= 8'd0;
            reg_wr_en   <= 1'b0;
            reg_addr    <= 8'd0;
            reg_wdata   <= 8'd0;
            reg_rd_en   <= 1'b0;
            reg_rd_addr <= 8'd0;
        end else begin
            reg_wr_en <= 1'b0;
            reg_rd_en <= 1'b0;

            if (rx_valid) begin
                case (state)
                    S_CMD: begin
                        cmd_buf <= rx_data;
                        state <= S_ADDR;
                    end

                    S_ADDR: begin
                        addr_buf <= rx_data;
                        state <= S_DATA;
                    end

                    S_DATA: begin
                        if (cmd_buf == CMD_WRITE) begin
                            reg_wr_en <= 1'b1;
                            reg_addr  <= addr_buf;
                            reg_wdata <= rx_data;
                        end else if (cmd_buf == CMD_READ) begin
                            reg_rd_en   <= 1'b1;
                            reg_rd_addr <= addr_buf;
                        end
                        state <= S_CMD;
                    end

                    default: begin
                        state <= S_CMD;
                    end
                endcase
            end
        end
    end

endmodule
