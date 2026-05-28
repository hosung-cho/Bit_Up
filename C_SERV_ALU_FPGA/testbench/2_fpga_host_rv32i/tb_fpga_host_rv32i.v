`timescale 1ns/1ps
`default_nettype none

module tb_fpga_host_rv32i;
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

   integer     errors = 0;
   integer     cycles = 0;

   localparam OPC_LOAD   = 7'b0000011;
   localparam OPC_STORE  = 7'b0100011;
   localparam OPC_OP_IMM = 7'b0010011;
   localparam OPC_OP     = 7'b0110011;
   localparam OPC_BRANCH = 7'b1100011;
   localparam OPC_JAL    = 7'b1101111;
   localparam OPC_SYSTEM = 7'b1110011;

   serv_fpga_host #(.IMEM_WORDS(64), .DMEM_BYTES(256)) dut
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

   function [31:0] r_type;
      input [6:0] funct7;
      input [4:0] rs2;
      input [4:0] rs1;
      input [2:0] funct3;
      input [4:0] rd;
      begin
         r_type = {funct7, rs2, rs1, funct3, rd, OPC_OP};
      end
   endfunction

   function [31:0] i_type;
      input integer imm;
      input [4:0] rs1;
      input [2:0] funct3;
      input [4:0] rd;
      input [6:0] opcode;
      reg [11:0] imm12;
      begin
         imm12 = imm[11:0];
         i_type = {imm12, rs1, funct3, rd, opcode};
      end
   endfunction

   function [31:0] s_type;
      input integer imm;
      input [4:0] rs2;
      input [4:0] rs1;
      input [2:0] funct3;
      reg [11:0] imm12;
      begin
         imm12 = imm[11:0];
         s_type = {imm12[11:5], rs2, rs1, funct3, imm12[4:0], OPC_STORE};
      end
   endfunction

   function [31:0] b_type;
      input integer imm;
      input [4:0] rs2;
      input [4:0] rs1;
      input [2:0] funct3;
      reg [12:0] imm13;
      begin
         imm13 = imm[12:0];
         b_type = {imm13[12], imm13[10:5], rs2, rs1, funct3, imm13[4:1], imm13[11], OPC_BRANCH};
      end
   endfunction

   function [31:0] j_type;
      input integer imm;
      input [4:0] rd;
      reg [20:0] imm21;
      begin
         imm21 = imm[20:0];
         j_type = {imm21[20], imm21[10:1], imm21[11], imm21[19:12], rd, OPC_JAL};
      end
   endfunction

   task expect_reg;
      input [4:0] idx;
      input [31:0] expected;
      begin
         if (dut.regs[idx] !== expected) begin
            $display("FAIL x%0d got=%08x expected=%08x", idx, dut.regs[idx], expected);
            errors = errors + 1;
         end else begin
            $display("PASS x%0d = %08x", idx, expected);
         end
      end
   endtask

   task expect_mem_byte;
      input integer idx;
      input [7:0] expected;
      begin
         if (dut.dmem[idx] !== expected) begin
            $display("FAIL dmem[%0d] got=%02x expected=%02x", idx, dut.dmem[idx], expected);
            errors = errors + 1;
         end else begin
            $display("PASS dmem[%0d] = %02x", idx, expected);
         end
      end
   endtask

   initial begin
      dut.imem[0]  = i_type(5,  5'd0, 3'b000, 5'd1, OPC_OP_IMM);       // addi x1,x0,5
      dut.imem[1]  = i_type(7,  5'd0, 3'b000, 5'd2, OPC_OP_IMM);       // addi x2,x0,7
      dut.imem[2]  = r_type(7'b0000000, 5'd2, 5'd1, 3'b000, 5'd3);    // add x3,x1,x2
      dut.imem[3]  = r_type(7'b0100000, 5'd1, 5'd3, 3'b000, 5'd4);    // sub x4,x3,x1
      dut.imem[4]  = r_type(7'b0000000, 5'd2, 5'd4, 3'b111, 5'd5);    // and x5,x4,x2
      dut.imem[5]  = r_type(7'b0000000, 5'd1, 5'd5, 3'b100, 5'd6);    // xor x6,x5,x1
      dut.imem[6]  = r_type(7'b0000000, 5'd2, 5'd1, 3'b010, 5'd7);    // slt x7,x1,x2
      dut.imem[7]  = r_type(7'b0000000, 5'd1, 5'd2, 3'b011, 5'd8);    // sltu x8,x2,x1
      dut.imem[8]  = b_type(8, 5'd8, 5'd7, 3'b000);                  // beq x7,x8,+8 not taken
      dut.imem[9]  = i_type(17, 5'd0, 3'b000, 5'd9, OPC_OP_IMM);      // addi x9,x0,0x11
      dut.imem[10] = b_type(8, 5'd8, 5'd7, 3'b001);                  // bne x7,x8,+8 taken
      dut.imem[11] = i_type(34, 5'd0, 3'b000, 5'd9, OPC_OP_IMM);      // skipped
      dut.imem[12] = s_type(0, 5'd3, 5'd0, 3'b010);                  // sw x3,0(x0)
      dut.imem[13] = i_type(0, 5'd0, 3'b010, 5'd10, OPC_LOAD);        // lw x10,0(x0)
      dut.imem[14] = j_type(8, 5'd11);                               // jal x11,+8
      dut.imem[15] = i_type(51, 5'd0, 3'b000, 5'd12, OPC_OP_IMM);     // skipped
      dut.imem[16] = i_type(68, 5'd0, 3'b000, 5'd13, OPC_OP_IMM);     // addi x13,x0,0x44
      dut.imem[17] = 32'h00100073;                                    // ebreak
   end

   initial begin
      repeat (4) @(posedge clk);
      rst_n <= 1'b1;

      while (!halted && !trap && cycles < 2000) begin
         @(posedge clk);
         cycles = cycles + 1;
         if (debug_commit_valid) begin
            $display("COMMIT pc=%08x rd=x%0d data=%08x instr=%08x",
                     debug_pc, debug_commit_rd, debug_commit_wdata, debug_instr);
         end
      end

      if (trap) begin
         $display("FAIL trap pc=%08x instr=%08x state=%0d", debug_pc, debug_instr, debug_state);
         errors = errors + 1;
      end
      if (!halted) begin
         $display("FAIL timeout/no halt cycles=%0d pc=%08x state=%0d", cycles, debug_pc, debug_state);
         errors = errors + 1;
      end

      expect_reg(1, 32'd5);
      expect_reg(2, 32'd7);
      expect_reg(3, 32'd12);
      expect_reg(4, 32'd7);
      expect_reg(5, 32'd7);
      expect_reg(6, 32'd2);
      expect_reg(7, 32'd1);
      expect_reg(8, 32'd0);
      expect_reg(9, 32'h00000011);
      expect_reg(10, 32'd12);
      expect_reg(11, 32'd60);
      expect_reg(12, 32'd0);
      expect_reg(13, 32'h00000044);
      expect_mem_byte(0, 8'h0c);
      expect_mem_byte(1, 8'h00);
      expect_mem_byte(2, 8'h00);
      expect_mem_byte(3, 8'h00);

      if (errors == 0) begin
         $display("TB PASS");
      end else begin
         $display("TB FAIL errors=%0d", errors);
      end
      $finish;
   end

endmodule

`default_nettype wire
