`timescale 1ns/1ps
`default_nettype none

module tb_fpga_bridge_exec_unit;
   reg         clk = 1'b0;
   reg         rst_n = 1'b0;
   reg         req_valid = 1'b0;
   wire        req_ready;
   reg [3:0]   req_op = 4'd0;
   reg [31:0]  req_a = 32'd0;
   reg [31:0]  req_b = 32'd0;
   wire        resp_valid;
   reg         resp_ready = 1'b1;
   wire [31:0] resp_result;
   wire [5:0]  resp_flags;

   wire        asic_cmd_valid;
   wire        asic_cmd_ready;
   wire [3:0]  asic_cmd_op;
   wire [3:0]  asic_cmd_a;
   wire [3:0]  asic_cmd_b;
   wire        asic_cmd_last;
   wire        asic_rsp_valid;
   wire        asic_rsp_ready;
   wire [3:0]  asic_rsp_result;
   wire [5:0]  asic_rsp_flags;
   wire        asic_rsp_last;
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

   serv_exec_fpga_bridge bridge
     (
      .clk(clk),
      .rst_n(rst_n),
      .req_valid(req_valid),
      .req_ready(req_ready),
      .req_op(req_op),
      .req_a(req_a),
      .req_b(req_b),
      .resp_valid(resp_valid),
      .resp_ready(resp_ready),
      .resp_result(resp_result),
      .resp_flags(resp_flags),
      .asic_cmd_valid(asic_cmd_valid),
      .asic_cmd_ready(asic_cmd_ready),
      .asic_cmd_op(asic_cmd_op),
      .asic_cmd_a(asic_cmd_a),
      .asic_cmd_b(asic_cmd_b),
      .asic_cmd_last(asic_cmd_last),
      .asic_rsp_valid(asic_rsp_valid),
      .asic_rsp_ready(asic_rsp_ready),
      .asic_rsp_result(asic_rsp_result),
      .asic_rsp_flags(asic_rsp_flags),
      .asic_rsp_last(asic_rsp_last)
      );

   serv_exec_unit asic
     (
      .clk(clk),
      .rst_n(rst_n),
      .cmd_valid(asic_cmd_valid),
      .cmd_ready(asic_cmd_ready),
      .cmd_op(asic_cmd_op),
      .cmd_a(asic_cmd_a),
      .cmd_b(asic_cmd_b),
      .cmd_last(asic_cmd_last),
      .rsp_valid(asic_rsp_valid),
      .rsp_ready(asic_rsp_ready),
      .rsp_result(asic_rsp_result),
      .rsp_flags(asic_rsp_flags),
      .rsp_last(asic_rsp_last),
      .busy(busy),
      .debug_state(debug_state)
      );

   always #5 clk = ~clk;

   task check_op;
      input [3:0] op;
      input [31:0] a;
      input [31:0] b;
      input [31:0] expected;
      begin
         @(posedge clk);
         while (!req_ready) @(posedge clk);
         req_op <= op;
         req_a <= a;
         req_b <= b;
         req_valid <= 1'b1;
         @(posedge clk);
         req_valid <= 1'b0;
         while (!resp_valid) @(posedge clk);
         if (resp_result !== expected) begin
            $display("FAIL bridge op=%0h a=%08x b=%08x got=%08x expected=%08x flags=%02x",
                     op, a, b, resp_result, expected, resp_flags);
            errors = errors + 1;
         end else begin
            $display("PASS bridge op=%0h a=%08x b=%08x result=%08x", op, a, b, resp_result);
         end
         @(posedge clk);
      end
   endtask

   initial begin
      repeat (4) @(posedge clk);
      rst_n <= 1'b1;
      repeat (2) @(posedge clk);

      check_op(OP_ADD,  32'h00000011, 32'h00000022, 32'h00000033);
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
