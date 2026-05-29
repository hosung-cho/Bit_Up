`timescale 1ns/1ps

module tb_mychip_gpio_top;
    reg clk;
    reg rst_n;
    reg gpio_strobe;
    reg gpio_mode;
    reg gpio_drive_en;
    reg [3:0] gpio_drive;
    wire [3:0] gpio_data;

    reg [3:0] nibbles [0:11];
    integer i;

    assign gpio_data = gpio_drive_en ? gpio_drive : 4'bzzzz;

    mychip_gpio_top dut (
        .clk(clk),
        .rst_n(rst_n),
        .gpio_data(gpio_data),
        .gpio_strobe(gpio_strobe),
        .gpio_mode(gpio_mode)
    );

    always #5 clk = ~clk;

    task pulse_strobe;
        begin
            @(posedge clk);
            gpio_strobe = 1'b1;
            @(posedge clk);
            gpio_strobe = 1'b0;
            @(posedge clk);
        end
    endtask

    task load_nibble;
        input [3:0] value;
        begin
            gpio_drive = value;
            pulse_strobe();
        end
    endtask

    initial begin
        clk = 1'b0;
        rst_n = 1'b0;
        gpio_strobe = 1'b0;
        gpio_mode = 1'b0;
        gpio_drive_en = 1'b1;
        gpio_drive = 4'd0;

        repeat (3) @(posedge clk);
        rst_n = 1'b1;

        load_nibble(4'd1);  // a00
        load_nibble(4'd2);  // a01
        load_nibble(4'd3);  // a10
        load_nibble(4'd4);  // a11
        load_nibble(4'd5);  // b00
        load_nibble(4'd6);  // b01
        load_nibble(4'd7);  // b10
        load_nibble(4'd8);  // b11

        gpio_drive_en = 1'b0;
        gpio_mode = 1'b1;

        wait (dut.u_pe_array_2x2.done == 1'b1);
        @(posedge clk);

        for (i = 0; i < 12; i = i + 1) begin
            nibbles[i] = gpio_data;
            if (i < 11) begin
                pulse_strobe();
            end
        end

        if ({nibbles[2][1:0], nibbles[1], nibbles[0]} !== 10'd19 ||
            {nibbles[5][1:0], nibbles[4], nibbles[3]} !== 10'd22 ||
            {nibbles[8][1:0], nibbles[7], nibbles[6]} !== 10'd43 ||
            {nibbles[11][1:0], nibbles[10], nibbles[9]} !== 10'd50) begin
            $display("FAIL gpio result nibbles");
            $finish;
        end

        $display("PASS tb_mychip_gpio_top");
        $finish;
    end
endmodule
