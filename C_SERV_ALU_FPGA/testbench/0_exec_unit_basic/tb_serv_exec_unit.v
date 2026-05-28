`timescale 1ns/1ps
`default_nettype none

module tb_serv_exec_unit;
   reg         clk = 1'b0;
   reg         rst_n = 1'b0;
   reg         cmd_valid = 1'b0;
   wire        cmd_ready;
   reg [3:0]   cmd_op = 4'd0;
   reg [3:0]   cmd_a = 4'd0;
   reg [3:0]   cmd_b = 4'd0;
   reg         cmd_last = 1'b0;
   wire        rsp_valid;
   reg         rsp_ready = 1'b1;
   wire [3:0]  rsp_result;
   wire [5:0]  rsp_flags;
   wire        rsp_last;
   wire        busy;
   wire [2:0]  debug_state;

   integer     errors = 0;

   localparam OP_ADD  = 4'h0;
   localparam OP_SUB  = 4'h1;
   localparam OP_AND  = 4'h2;
   localparam OP_OR   = 4'h3;
   localparam OP_XOR  = 4'h4;
   localparam OP_SLT  = 4'h5;
   localparam OP_SLTU = 4'h6;
   localparam OP_EQ   = 4'h7;
   localparam OP_NE   = 4'h8;
   localparam OP_LT   = 4'h9;
   localparam OP_LTU  = 4'ha;
   localparam OP_GE   = 4'hb;
   localparam OP_GEU  = 4'hc;

   serv_exec_unit dut
     (
      .clk(clk),
      .rst_n(rst_n),
      .cmd_valid(cmd_valid),
      .cmd_ready(cmd_ready),
      .cmd_op(cmd_op),
      .cmd_a(cmd_a),
      .cmd_b(cmd_b),
      .cmd_last(cmd_last),
      .rsp_valid(rsp_valid),
      .rsp_ready(rsp_ready),
      .rsp_result(rsp_result),
      .rsp_flags(rsp_flags),
      .rsp_last(rsp_last),
      .busy(busy),
      .debug_state(debug_state)
      );

   always #5 clk = ~clk;

   task send_word;
      input [3:0] op;
      input [31:0] a;
      input [31:0] b;
      integer i;
      begin
         for (i = 0; i < 8; i = i + 1) begin
            @(posedge clk);
            while (!cmd_ready) @(posedge clk);
            cmd_valid <= 1'b1;
            cmd_op <= op;
            cmd_a <= a[(i*4) +: 4];
            cmd_b <= b[(i*4) +: 4];
            cmd_last <= (i == 7);
         end
         @(posedge clk);
         cmd_valid <= 1'b0;
         cmd_last <= 1'b0;
      end
   endtask

   task recv_word;
      output [31:0] value;
      integer i;
      begin
         value = 32'd0;
         i = 0;
         while (i < 8) begin
            @(posedge clk);
            if (rsp_valid) begin
               value[(i*4) +: 4] = rsp_result;
               i = i + 1;
            end
         end
      end
   endtask

   task check_op;
      input [3:0] op;
      input [31:0] a;
      input [31:0] b;
      input [31:0] expected;
      reg [31:0] got;
      begin
         send_word(op, a, b);
         recv_word(got);
         if (got !== expected) begin
            $display("FAIL op=%0h a=%08x b=%08x got=%08x expected=%08x flags=%02x",
                     op, a, b, got, expected, rsp_flags);
            errors = errors + 1;
         end else begin
            $display("PASS op=%0h a=%08x b=%08x result=%08x", op, a, b, got);
         end
      end
   endtask

   initial begin
      repeat (4) @(posedge clk);
      rst_n <= 1'b1;
      repeat (2) @(posedge clk);

      check_op(OP_ADD,  32'h00000011, 32'h00000022, 32'h00000033);
      check_op(OP_ADD,  32'hffffffff, 32'h00000001, 32'h00000000);
      check_op(OP_SUB,  32'h00000040, 32'h00000011, 32'h0000002f);
      check_op(OP_AND,  32'ha5a55a5a, 32'h0ff00ff0, 32'h05a00a50);
      check_op(OP_OR,   32'ha5a55a5a, 32'h0ff00ff0, 32'haff55ffa);
      check_op(OP_XOR,  32'ha5a55a5a, 32'h0ff00ff0, 32'haa5555aa);
      check_op(OP_SLT,  32'hffffffff, 32'h00000001, 32'h00000001);
      check_op(OP_SLTU, 32'hffffffff, 32'h00000001, 32'h00000000);
      check_op(OP_EQ,   32'h12345678, 32'h12345678, 32'h00000001);
      check_op(OP_NE,   32'h12345678, 32'h12345670, 32'h00000001);
      check_op(OP_LT,   32'h80000000, 32'h00000000, 32'h00000001);
      check_op(OP_LTU,  32'h00000002, 32'h00000003, 32'h00000001);
      check_op(OP_GE,   32'h00000000, 32'h80000000, 32'h00000001);
      check_op(OP_GEU,  32'h00000003, 32'h00000002, 32'h00000001);

      if (errors == 0) begin
         $display("TB PASS");
      end else begin
         $display("TB FAIL errors=%0d", errors);
      end
      $finish;
   end

endmodule

`default_nettype wire
