// -----------------------------------------------------------------------------
// pwm_core.v
// 4-channel PWM generator with shared period/prescaler and per-channel duty
// -----------------------------------------------------------------------------
module pwm_core (
    input  wire        clk,
    input  wire        reset_n,

    input  wire        global_enable,
    input  wire [3:0]  ch_enable,
    input  wire [7:0]  prescale,
    input  wire [15:0] period,
    input  wire [15:0] duty0,
    input  wire [15:0] duty1,
    input  wire [15:0] duty2,
    input  wire [15:0] duty3,

    output reg  [3:0]  pwm_out
);

    reg [7:0]  prescale_cnt;
    reg [15:0] pwm_cnt;

    wire pwm_tick;
    assign pwm_tick = (prescale_cnt >= prescale);

    always @(posedge clk or negedge reset_n) begin
        if (!reset_n) begin
            prescale_cnt <= 8'd0;
        end else begin
            if (!global_enable) begin
                prescale_cnt <= 8'd0;
            end else if (pwm_tick) begin
                prescale_cnt <= 8'd0;
            end else begin
                prescale_cnt <= prescale_cnt + 8'd1;
            end
        end
    end

    always @(posedge clk or negedge reset_n) begin
        if (!reset_n) begin
            pwm_cnt <= 16'd0;
        end else begin
            if (!global_enable) begin
                pwm_cnt <= 16'd0;
            end else if (pwm_tick) begin
                if (pwm_cnt >= period) begin
                    pwm_cnt <= 16'd0;
                end else begin
                    pwm_cnt <= pwm_cnt + 16'd1;
                end
            end
        end
    end

    always @(posedge clk or negedge reset_n) begin
        if (!reset_n) begin
            pwm_out <= 4'b0000;
        end else begin
            if (!global_enable) begin
                pwm_out <= 4'b0000;
            end else if (period == 16'd0) begin
                pwm_out <= 4'b0000;
            end else begin
                pwm_out[0] <= ch_enable[0] && (pwm_cnt < duty0);
                pwm_out[1] <= ch_enable[1] && (pwm_cnt < duty1);
                pwm_out[2] <= ch_enable[2] && (pwm_cnt < duty2);
                pwm_out[3] <= ch_enable[3] && (pwm_cnt < duty3);
            end
        end
    end

endmodule
