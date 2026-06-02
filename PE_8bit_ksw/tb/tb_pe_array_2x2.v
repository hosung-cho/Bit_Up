`timescale 1ns/1ps

module tb_pe_array_2x2;
    localparam DATA_WIDTH = 4;
    localparam ACC_WIDTH  = 10;

    reg clk;
    reg rst_n;
    reg start;
    reg [4*DATA_WIDTH-1:0] a_flat;
    reg [4*DATA_WIDTH-1:0] b_flat;
    wire busy;
    wire done;
    wire [4*ACC_WIDTH-1:0] c_flat;

    pe_array_2x2 #(
        .DATA_WIDTH(DATA_WIDTH),
        .ACC_WIDTH(ACC_WIDTH)
    ) dut (
        .clk(clk),
        .rst_n(rst_n),
        .start(start),
        .a_flat(a_flat),
        .b_flat(b_flat),
        .busy(busy),
        .done(done),
        .c_flat(c_flat)
    );

    always #5 clk = ~clk;

    task run_case;
        input [3:0] a00;
        input [3:0] a01;
        input [3:0] a10;
        input [3:0] a11;
        input [3:0] b00;
        input [3:0] b01;
        input [3:0] b10;
        input [3:0] b11;
        input [9:0] e00;
        input [9:0] e01;
        input [9:0] e10;
        input [9:0] e11;
        begin
            a_flat = {a11, a10, a01, a00};
            b_flat = {b11, b10, b01, b00};
            @(posedge clk);
            start = 1'b1;
            @(posedge clk);
            start = 1'b0;
            wait (done == 1'b1);
            @(posedge clk);

            if (c_flat[0*ACC_WIDTH +: ACC_WIDTH] !== e00 ||
                c_flat[1*ACC_WIDTH +: ACC_WIDTH] !== e01 ||
                c_flat[2*ACC_WIDTH +: ACC_WIDTH] !== e10 ||
                c_flat[3*ACC_WIDTH +: ACC_WIDTH] !== e11) begin
                $display("FAIL core: got %0d %0d %0d %0d expected %0d %0d %0d %0d",
                    c_flat[0*ACC_WIDTH +: ACC_WIDTH],
                    c_flat[1*ACC_WIDTH +: ACC_WIDTH],
                    c_flat[2*ACC_WIDTH +: ACC_WIDTH],
                    c_flat[3*ACC_WIDTH +: ACC_WIDTH],
                    e00, e01, e10, e11);
                $finish;
            end
        end
    endtask

    initial begin
        clk = 1'b0;
        rst_n = 1'b0;
        start = 1'b0;
        a_flat = 16'd0;
        b_flat = 16'd0;

        repeat (3) @(posedge clk);
        rst_n = 1'b1;

        run_case(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
        run_case(1, 0, 0, 1, 7, 8, 9, 10, 7, 8, 9, 10);
        run_case(1, 2, 3, 4, 5, 6, 7, 8, 19, 22, 43, 50);
        run_case(15, 15, 15, 15, 15, 15, 15, 15, 450, 450, 450, 450);

        $display("PASS tb_pe_array_2x2");
        $finish;
    end
endmodule
