`timescale 1ns/1ps
`default_nettype none

module tb_fpga_host_riscv_tests;
   localparam IMEM_WORDS = 512;
   localparam DMEM_BYTES = 2048;
   localparam RESULT_ADDR = 32'h0000_0700;
   localparam RESULT_WORD = RESULT_ADDR >> 2;

   reg         clk = 1'b0;
   reg         rst_n = 1'b0;

   wire        asic_cmd_valid;
   wire        asic_cmd_ready;
   wire [3:0]  asic_cmd_op;
   wire        asic_cmd_a;
   wire        asic_cmd_b;
   wire        asic_cmd_last;
   wire        asic_rsp_valid;
   wire        asic_rsp_ready;
   wire        asic_rsp_result;
   wire [5:0]  asic_rsp_flags;
   wire        asic_rsp_last;

   wire        halted;
   wire        trap;
   wire [3:0]  debug_state;
   wire [31:0] debug_pc;
   wire [31:0] debug_instr;
   wire        debug_commit_valid;
   wire [4:0]  debug_commit_rd;
   wire [31:0] debug_commit_wdata;
   wire [31:0] debug_x1;
   wire [31:0] debug_x2;
   wire [31:0] debug_x3;
   wire [31:0] debug_x10;

   reg [31:0]  program_mem [0:IMEM_WORDS-1];
   integer     i;
   integer     cycles = 0;
   integer     errors = 0;
   reg [31:0]  result_word;

   serv_fpga_host #(.IMEM_WORDS(IMEM_WORDS), .DMEM_BYTES(DMEM_BYTES)) dut
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
      .debug_state(debug_state),
      .debug_pc(debug_pc),
      .debug_instr(debug_instr),
      .debug_commit_valid(debug_commit_valid),
      .debug_commit_rd(debug_commit_rd),
      .debug_commit_wdata(debug_commit_wdata),
      .debug_x1(debug_x1),
      .debug_x2(debug_x2),
      .debug_x3(debug_x3),
      .debug_x10(debug_x10)
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
      .busy(),
      .debug_state()
      );

   always #5 clk = ~clk;

   task mirror_word_to_dmem;
      input integer idx;
      input [31:0] value;
      integer byte_addr;
      begin
         byte_addr = idx * 4;
         if (byte_addr + 3 < DMEM_BYTES) begin
            dut.dmem[byte_addr + 0] = value[7:0];
            dut.dmem[byte_addr + 1] = value[15:8];
            dut.dmem[byte_addr + 2] = value[23:16];
            dut.dmem[byte_addr + 3] = value[31:24];
         end
      end
   endtask

   function [31:0] load_dmem_word;
      input integer byte_addr;
      begin
         load_dmem_word = {dut.dmem[byte_addr + 3],
                           dut.dmem[byte_addr + 2],
                           dut.dmem[byte_addr + 1],
                           dut.dmem[byte_addr + 0]};
      end
   endfunction

   initial begin
      for (i = 0; i < IMEM_WORDS; i = i + 1) begin
         program_mem[i] = 32'h00000013;
         dut.imem[i] = 32'h00000013;
      end
      for (i = 0; i < DMEM_BYTES; i = i + 1) begin
         dut.dmem[i] = 8'h00;
      end

      `include "program_init.vh"
      for (i = 0; i < IMEM_WORDS; i = i + 1) begin
         dut.imem[i] = program_mem[i];
         mirror_word_to_dmem(i, program_mem[i]);
      end
      mirror_word_to_dmem(RESULT_WORD, 32'h00000000);
   end

   initial begin
      repeat (4) @(posedge clk);
      rst_n <= 1'b1;

      while (!trap && cycles < 200000) begin
         @(posedge clk);
         cycles = cycles + 1;
         result_word = load_dmem_word(RESULT_ADDR);
         if (result_word !== 32'h00000000) begin
            if (result_word == 32'h00000001) begin
               $display("[TB PASS] riscv-tests case passed cycles=%0d pc=%08x",
                        cycles, debug_pc);
            end else begin
               $display("[TB FAIL] riscv-tests reported failure code=%08x cycles=%0d pc=%08x",
                        result_word, cycles, debug_pc);
               errors = errors + 1;
            end
            $finish;
         end
      end

      if (trap) begin
         $display("[TB FAIL] trap pc=%08x instr=%08x state=%0d cycles=%0d",
                  debug_pc, debug_instr, debug_state, cycles);
         errors = errors + 1;
      end else begin
         $display("[TB FAIL] timeout cycles=%0d pc=%08x instr=%08x state=%0d result=%08x",
                  cycles, debug_pc, debug_instr, debug_state, load_dmem_word(RESULT_ADDR));
         errors = errors + 1;
      end
      $fatal(1, "[TB FAIL] riscv-tests harness errors=%0d", errors);
   end

endmodule

`default_nettype wire
