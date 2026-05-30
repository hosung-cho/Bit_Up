// -----------------------------------------------------------------------------
// reg_bank.v
// Register map for UART-controlled 4-channel PWM generator
// -----------------------------------------------------------------------------
module reg_bank (
    input  wire        clk,
    input  wire        reset_n,

    input  wire        wr_en,
    input  wire [7:0]  wr_addr,
    input  wire [7:0]  wr_data,

    input  wire [7:0]  rd_addr,
    output reg  [7:0]  rd_data,

    output wire        global_enable,
    output wire [3:0]  ch_enable,
    output wire [7:0]  prescale,
    output wire [15:0] period,
    output wire [15:0] duty0,
    output wire [15:0] duty1,
    output wire [15:0] duty2,
    output wire [15:0] duty3
);

    reg [7:0] ctrl_reg;
    reg [7:0] prescale_reg;
    reg [15:0] period_reg;
    reg [15:0] duty0_reg;
    reg [15:0] duty1_reg;
    reg [15:0] duty2_reg;
    reg [15:0] duty3_reg;
    reg [7:0] ch_enable_reg;

    assign global_enable = ctrl_reg[0];
    assign ch_enable     = ch_enable_reg[3:0];
    assign prescale      = prescale_reg;
    assign period        = period_reg;
    assign duty0         = duty0_reg;
    assign duty1         = duty1_reg;
    assign duty2         = duty2_reg;
    assign duty3         = duty3_reg;

    always @(posedge clk or negedge reset_n) begin
        if (!reset_n) begin
            ctrl_reg      <= 8'h00;
            prescale_reg  <= 8'd9;
            period_reg    <= 16'd999;
            duty0_reg     <= 16'd0;
            duty1_reg     <= 16'd0;
            duty2_reg     <= 16'd0;
            duty3_reg     <= 16'd0;
            ch_enable_reg <= 8'h00;
        end else begin
            if (wr_en) begin
                case (wr_addr)
                    8'h00: ctrl_reg          <= wr_data;
                    8'h01: prescale_reg      <= wr_data;
                    8'h02: period_reg[7:0]   <= wr_data;
                    8'h03: period_reg[15:8]  <= wr_data;
                    8'h04: duty0_reg[7:0]    <= wr_data;
                    8'h05: duty0_reg[15:8]   <= wr_data;
                    8'h06: duty1_reg[7:0]    <= wr_data;
                    8'h07: duty1_reg[15:8]   <= wr_data;
                    8'h08: duty2_reg[7:0]    <= wr_data;
                    8'h09: duty2_reg[15:8]   <= wr_data;
                    8'h0A: duty3_reg[7:0]    <= wr_data;
                    8'h0B: duty3_reg[15:8]   <= wr_data;
                    8'h0C: ch_enable_reg     <= wr_data;
                    default: begin
                    end
                endcase
            end
        end
    end

    always @(*) begin
        case (rd_addr)
            8'h00: rd_data = ctrl_reg;
            8'h01: rd_data = prescale_reg;
            8'h02: rd_data = period_reg[7:0];
            8'h03: rd_data = period_reg[15:8];
            8'h04: rd_data = duty0_reg[7:0];
            8'h05: rd_data = duty0_reg[15:8];
            8'h06: rd_data = duty1_reg[7:0];
            8'h07: rd_data = duty1_reg[15:8];
            8'h08: rd_data = duty2_reg[7:0];
            8'h09: rd_data = duty2_reg[15:8];
            8'h0A: rd_data = duty3_reg[7:0];
            8'h0B: rd_data = duty3_reg[15:8];
            8'h0C: rd_data = ch_enable_reg;
            default: rd_data = 8'h00;
        endcase
    end

endmodule
