`timescale 1ns/1ps
`default_nettype none

module tb_fpga_host_rv32i_directed;
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
   integer     i;

   localparam OPC_LOAD   = 7'b0000011;
   localparam OPC_STORE  = 7'b0100011;
   localparam OPC_OP_IMM = 7'b0010011;
   localparam OPC_OP     = 7'b0110011;
   localparam OPC_BRANCH = 7'b1100011;
   localparam OPC_JALR   = 7'b1100111;
   localparam OPC_JAL    = 7'b1101111;
   localparam OPC_LUI    = 7'b0110111;
   localparam OPC_AUIPC  = 7'b0010111;
   localparam OPC_SYSTEM = 7'b1110011;

   serv_fpga_host #(.IMEM_WORDS(256), .DMEM_BYTES(512)) dut
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

   function [31:0] u_type;
      input [31:0] imm;
      input [4:0] rd;
      input [6:0] opcode;
      begin
         u_type = {imm[31:12], rd, opcode};
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
      for (i = 0; i < 256; i = i + 1) begin
         dut.imem[i] = 32'h00100073;
      end
      for (i = 0; i < 512; i = i + 1) begin
         dut.dmem[i] = 8'h00;
      end

      dut.imem[0]  = i_type(-1, 5'd0, 3'b000, 5'd1, OPC_OP_IMM);          // addi x1,x0,-1
      dut.imem[1]  = i_type(1, 5'd0, 3'b000, 5'd2, OPC_OP_IMM);           // addi x2,x0,1
      dut.imem[2]  = r_type(7'b0000000, 5'd2, 5'd1, 3'b000, 5'd3);       // add x3,x1,x2
      dut.imem[3]  = r_type(7'b0100000, 5'd1, 5'd2, 3'b000, 5'd4);       // sub x4,x2,x1
      dut.imem[4]  = r_type(7'b0000000, 5'd2, 5'd1, 3'b111, 5'd5);       // and x5,x1,x2
      dut.imem[5]  = r_type(7'b0000000, 5'd1, 5'd4, 3'b110, 5'd6);       // or x6,x4,x1
      dut.imem[6]  = r_type(7'b0000000, 5'd1, 5'd6, 3'b100, 5'd7);       // xor x7,x6,x1
      dut.imem[7]  = r_type(7'b0000000, 5'd2, 5'd1, 3'b010, 5'd8);       // slt x8,x1,x2
      dut.imem[8]  = r_type(7'b0000000, 5'd2, 5'd1, 3'b011, 5'd9);       // sltu x9,x1,x2
      dut.imem[9]  = i_type(8, 5'd0, 3'b000, 5'd10, OPC_OP_IMM);         // addi x10,x0,8
      dut.imem[10] = r_type(7'b0000000, 5'd10, 5'd2, 3'b001, 5'd11);     // sll x11,x2,x10
      dut.imem[11] = r_type(7'b0000000, 5'd10, 5'd11, 3'b101, 5'd12);    // srl x12,x11,x10
      dut.imem[12] = r_type(7'b0100000, 5'd10, 5'd1, 3'b101, 5'd13);     // sra x13,x1,x10
      dut.imem[13] = i_type(4, 5'd2, 3'b001, 5'd14, OPC_OP_IMM);         // slli x14,x2,4
      dut.imem[14] = i_type(2, 5'd14, 3'b101, 5'd15, OPC_OP_IMM);        // srli x15,x14,2
      dut.imem[15] = i_type(1028, 5'd1, 3'b101, 5'd16, OPC_OP_IMM);      // srai x16,x1,4
      dut.imem[16] = i_type(0, 5'd1, 3'b010, 5'd17, OPC_OP_IMM);         // slti x17,x1,0
      dut.imem[17] = i_type(1, 5'd1, 3'b011, 5'd18, OPC_OP_IMM);         // sltiu x18,x1,1
      dut.imem[18] = i_type(255, 5'd1, 3'b100, 5'd19, OPC_OP_IMM);       // xori x19,x1,0xff
      dut.imem[19] = i_type(240, 5'd0, 3'b110, 5'd20, OPC_OP_IMM);       // ori x20,x0,0xf0
      dut.imem[20] = i_type(240, 5'd19, 3'b111, 5'd21, OPC_OP_IMM);      // andi x21,x19,0xf0
      dut.imem[21] = i_type(64, 5'd0, 3'b000, 5'd31, OPC_OP_IMM);        // addi x31,x0,64
      dut.imem[22] = i_type(-128, 5'd0, 3'b000, 5'd22, OPC_OP_IMM);      // addi x22,x0,-128
      dut.imem[23] = s_type(0, 5'd22, 5'd31, 3'b000);                   // sb x22,0(x31)
      dut.imem[24] = i_type(0, 5'd31, 3'b000, 5'd23, OPC_LOAD);          // lb x23,0(x31)
      dut.imem[25] = i_type(0, 5'd31, 3'b100, 5'd24, OPC_LOAD);          // lbu x24,0(x31)
      dut.imem[26] = i_type(-1, 5'd0, 3'b000, 5'd25, OPC_OP_IMM);        // addi x25,x0,-1
      dut.imem[27] = s_type(2, 5'd25, 5'd31, 3'b001);                   // sh x25,2(x31)
      dut.imem[28] = i_type(2, 5'd31, 3'b001, 5'd26, OPC_LOAD);          // lh x26,2(x31)
      dut.imem[29] = i_type(2, 5'd31, 3'b101, 5'd27, OPC_LOAD);          // lhu x27,2(x31)
      dut.imem[30] = s_type(4, 5'd11, 5'd31, 3'b010);                   // sw x11,4(x31)
      dut.imem[31] = i_type(4, 5'd31, 3'b010, 5'd28, OPC_LOAD);          // lw x28,4(x31)
      dut.imem[32] = b_type(8, 5'd7, 5'd3, 3'b000);                     // beq x3,x7,+8 taken
      dut.imem[33] = i_type(85, 5'd0, 3'b000, 5'd5, OPC_OP_IMM);         // skipped
      dut.imem[34] = b_type(8, 5'd7, 5'd3, 3'b001);                     // bne x3,x7,+8 not taken
      dut.imem[35] = i_type(102, 5'd0, 3'b000, 5'd5, OPC_OP_IMM);        // addi x5,x0,0x66
      dut.imem[36] = b_type(8, 5'd2, 5'd1, 3'b100);                     // blt x1,x2,+8 taken
      dut.imem[37] = i_type(119, 5'd0, 3'b000, 5'd6, OPC_OP_IMM);        // skipped
      dut.imem[38] = b_type(8, 5'd1, 5'd2, 3'b101);                     // bge x2,x1,+8 taken
      dut.imem[39] = i_type(136, 5'd0, 3'b000, 5'd6, OPC_OP_IMM);        // skipped
      dut.imem[40] = b_type(8, 5'd1, 5'd2, 3'b110);                     // bltu x2,x1,+8 taken
      dut.imem[41] = i_type(153, 5'd0, 3'b000, 5'd7, OPC_OP_IMM);        // skipped
      dut.imem[42] = b_type(8, 5'd2, 5'd1, 3'b111);                     // bgeu x1,x2,+8 taken
      dut.imem[43] = i_type(170, 5'd0, 3'b000, 5'd7, OPC_OP_IMM);        // skipped
      dut.imem[44] = u_type(32'h12345000, 5'd29, OPC_LUI);              // lui x29,0x12345
      dut.imem[45] = u_type(32'h00001000, 5'd30, OPC_AUIPC);            // auipc x30,0x1
      dut.imem[46] = j_type(8, 5'd5);                                   // jal x5,+8
      dut.imem[47] = i_type(126, 5'd0, 3'b000, 5'd6, OPC_OP_IMM);        // skipped
      dut.imem[48] = i_type(51, 5'd0, 3'b000, 5'd6, OPC_OP_IMM);         // addi x6,x0,0x33
      dut.imem[49] = i_type(208, 5'd0, 3'b000, 5'd4, OPC_OP_IMM);        // addi x4,x0,208
      dut.imem[50] = i_type(0, 5'd4, 3'b000, 5'd7, OPC_JALR);            // jalr x7,0(x4)
      dut.imem[51] = i_type(68, 5'd0, 3'b000, 5'd6, OPC_OP_IMM);         // skipped
      dut.imem[52] = i_type(90, 5'd0, 3'b000, 5'd3, OPC_OP_IMM);         // addi x3,x0,0x5a
      dut.imem[53] = 32'h00100073;                                      // ebreak
   end

   initial begin
      repeat (4) @(posedge clk);
      rst_n <= 1'b1;

      while (!halted && !trap && cycles < 5000) begin
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

      expect_reg(1, 32'hffffffff);
      expect_reg(2, 32'h00000001);
      expect_reg(3, 32'h0000005a);
      expect_reg(4, 32'h000000d0);
      expect_reg(5, 32'h000000bc);
      expect_reg(6, 32'h00000033);
      expect_reg(7, 32'h000000cc);
      expect_reg(8, 32'h00000001);
      expect_reg(9, 32'h00000000);
      expect_reg(10, 32'h00000008);
      expect_reg(11, 32'h00000100);
      expect_reg(12, 32'h00000001);
      expect_reg(13, 32'hffffffff);
      expect_reg(14, 32'h00000010);
      expect_reg(15, 32'h00000004);
      expect_reg(16, 32'hffffffff);
      expect_reg(17, 32'h00000001);
      expect_reg(18, 32'h00000000);
      expect_reg(19, 32'hffffff00);
      expect_reg(20, 32'h000000f0);
      expect_reg(21, 32'h00000000);
      expect_reg(22, 32'hffffff80);
      expect_reg(23, 32'hffffff80);
      expect_reg(24, 32'h00000080);
      expect_reg(25, 32'hffffffff);
      expect_reg(26, 32'hffffffff);
      expect_reg(27, 32'h0000ffff);
      expect_reg(28, 32'h00000100);
      expect_reg(29, 32'h12345000);
      expect_reg(30, 32'h000010b4);
      expect_reg(31, 32'h00000040);
      expect_mem_byte(64, 8'h80);
      expect_mem_byte(66, 8'hff);
      expect_mem_byte(67, 8'hff);
      expect_mem_byte(68, 8'h00);
      expect_mem_byte(69, 8'h01);
      expect_mem_byte(70, 8'h00);
      expect_mem_byte(71, 8'h00);

      if (errors == 0) begin
         $display("TB PASS");
      end else begin
         $display("TB FAIL errors=%0d", errors);
      end
      $finish;
   end

endmodule

`default_nettype wire
