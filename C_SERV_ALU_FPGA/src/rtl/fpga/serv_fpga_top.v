`default_nettype none

module serv_fpga_top
  (
   input wire        clk,
   input wire        rst_n,

   output wire       asic_cmd_valid,
   input wire        asic_cmd_ready,
   output wire [3:0] asic_cmd_op,
   output wire [3:0] asic_cmd_a,
   output wire [3:0] asic_cmd_b,
   output wire       asic_cmd_last,

   input wire        asic_rsp_valid,
   output wire       asic_rsp_ready,
   input wire [3:0]  asic_rsp_result,
   input wire [5:0]  asic_rsp_flags,
   input wire        asic_rsp_last,

   output wire [7:0] debug_led,
   output wire       debug_uart_tx
   );

   wire        halted;
   wire        trap;
   wire [3:0]  host_state;
   wire [31:0] debug_pc;
   wire [31:0] debug_instr;
   wire        commit_valid;
   wire [4:0]  commit_rd;
   wire [31:0] commit_wdata;
   wire [31:0] debug_x1;
   wire [31:0] debug_x2;
   wire [31:0] debug_x3;
   wire [31:0] debug_x10;

   serv_fpga_host u_host
     (
      .clk(clk),
      .rst_n(rst_n),
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
      .asic_rsp_last(asic_rsp_last),
      .halted(halted),
      .trap(trap),
      .debug_state(host_state),
      .debug_pc(debug_pc),
      .debug_instr(debug_instr),
      .debug_commit_valid(commit_valid),
      .debug_commit_rd(commit_rd),
      .debug_commit_wdata(commit_wdata),
      .debug_x1(debug_x1),
      .debug_x2(debug_x2),
      .debug_x3(debug_x3),
      .debug_x10(debug_x10)
      );

   assign debug_led = {halted, trap, host_state, commit_valid, asic_cmd_valid};
   assign debug_uart_tx = 1'b1;

endmodule

`default_nettype wire
