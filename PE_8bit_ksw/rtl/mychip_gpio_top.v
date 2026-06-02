`timescale 1ns/1ps

module mychip_gpio_top (
    input  wire clk,
    input  wire rst_n,
    inout  wire [3:0] gpio_data,
    input  wire gpio_strobe,
    input  wire gpio_mode
);
    localparam DATA_WIDTH = 4;
    localparam ACC_WIDTH  = 10;

    reg [DATA_WIDTH-1:0] a00;
    reg [DATA_WIDTH-1:0] a01;
    reg [DATA_WIDTH-1:0] a10;
    reg [DATA_WIDTH-1:0] a11;
    reg [DATA_WIDTH-1:0] b00;
    reg [DATA_WIDTH-1:0] b01;
    reg [DATA_WIDTH-1:0] b10;
    reg [DATA_WIDTH-1:0] b11;

    reg [3:0] load_count;
    reg [3:0] read_count;
    reg strobe_d;
    reg core_start;

    wire strobe_rise = gpio_strobe & ~strobe_d;
    wire [3:0] gpio_in = gpio_data;

    wire [4*DATA_WIDTH-1:0] a_flat = {a11, a10, a01, a00};
    wire [4*DATA_WIDTH-1:0] b_flat = {b11, b10, b01, b00};
    wire [4*ACC_WIDTH-1:0] c_flat;
    wire core_busy;
    wire core_done;

    wire [ACC_WIDTH-1:0] c00 = c_flat[0*ACC_WIDTH +: ACC_WIDTH];
    wire [ACC_WIDTH-1:0] c01 = c_flat[1*ACC_WIDTH +: ACC_WIDTH];
    wire [ACC_WIDTH-1:0] c10 = c_flat[2*ACC_WIDTH +: ACC_WIDTH];
    wire [ACC_WIDTH-1:0] c11 = c_flat[3*ACC_WIDTH +: ACC_WIDTH];

    reg [3:0] gpio_out;
    assign gpio_data = gpio_mode ? gpio_out : 4'bzzzz;

    pe_array_2x2 #(
        .DATA_WIDTH(DATA_WIDTH),
        .ACC_WIDTH(ACC_WIDTH)
    ) u_pe_array_2x2 (
        .clk(clk),
        .rst_n(rst_n),
        .start(core_start),
        .a_flat(a_flat),
        .b_flat(b_flat),
        .busy(core_busy),
        .done(core_done),
        .c_flat(c_flat)
    );

    always @(*) begin
        if (!core_done) begin
            gpio_out = {1'b0, core_done, core_busy, (load_count == 4'd8)};
        end else begin
            case (read_count)
                4'd0:  gpio_out = c00[3:0];
                4'd1:  gpio_out = c00[7:4];
                4'd2:  gpio_out = {2'b00, c00[9:8]};
                4'd3:  gpio_out = c01[3:0];
                4'd4:  gpio_out = c01[7:4];
                4'd5:  gpio_out = {2'b00, c01[9:8]};
                4'd6:  gpio_out = c10[3:0];
                4'd7:  gpio_out = c10[7:4];
                4'd8:  gpio_out = {2'b00, c10[9:8]};
                4'd9:  gpio_out = c11[3:0];
                4'd10: gpio_out = c11[7:4];
                default: gpio_out = {2'b00, c11[9:8]};
            endcase
        end
    end

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            strobe_d   <= 1'b0;
            core_start <= 1'b0;
            load_count <= 4'd0;
            read_count <= 4'd0;
            a00 <= 4'd0;
            a01 <= 4'd0;
            a10 <= 4'd0;
            a11 <= 4'd0;
            b00 <= 4'd0;
            b01 <= 4'd0;
            b10 <= 4'd0;
            b11 <= 4'd0;
        end else begin
            strobe_d   <= gpio_strobe;
            core_start <= 1'b0;

            if (!gpio_mode && strobe_rise) begin
                if ((load_count == 4'd8) && !core_busy) begin
                    a00 <= gpio_in;
                    a01 <= 4'd0;
                    a10 <= 4'd0;
                    a11 <= 4'd0;
                    b00 <= 4'd0;
                    b01 <= 4'd0;
                    b10 <= 4'd0;
                    b11 <= 4'd0;
                    load_count <= 4'd1;
                    read_count <= 4'd0;
                end else if (load_count < 4'd8) begin
                    case (load_count)
                        4'd0: a00 <= gpio_in;
                        4'd1: a01 <= gpio_in;
                        4'd2: a10 <= gpio_in;
                        4'd3: a11 <= gpio_in;
                        4'd4: b00 <= gpio_in;
                        4'd5: b01 <= gpio_in;
                        4'd6: b10 <= gpio_in;
                        default: b11 <= gpio_in;
                    endcase

                    load_count <= load_count + 4'd1;
                    read_count <= 4'd0;

                    if (load_count == 4'd7) begin
                        core_start <= 1'b1;
                    end
                end
            end else if (gpio_mode && strobe_rise && core_done) begin
                if (read_count < 4'd11) begin
                    read_count <= read_count + 4'd1;
                end
            end
        end
    end
endmodule
