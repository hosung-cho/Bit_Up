`default_nettype none

module serv_fpga_host
  #(
    parameter IMEM_WORDS = 256,
    parameter DMEM_BYTES = 1024,
    parameter RESET_PC = 32'h00000000
    )
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

    output wire       halted,
    output wire       trap,
    output wire [3:0] debug_state,
    output wire [31:0] debug_pc,
    output wire [31:0] debug_instr,
    output wire       debug_commit_valid,
    output wire [4:0] debug_commit_rd,
    output wire [31:0] debug_commit_wdata,
    output wire [31:0] debug_x1,
    output wire [31:0] debug_x2,
    output wire [31:0] debug_x3,
    output wire [31:0] debug_x10
    );

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

   localparam ST_FETCH = 4'd0;
   localparam ST_DECODE = 4'd1;
   localparam ST_ASIC_ISSUE = 4'd2;
   localparam ST_ASIC_WAIT = 4'd3;
   localparam ST_HALT = 4'd4;
   localparam ST_TRAP = 4'd5;

   reg [3:0]   state;
   reg [31:0]  pc;
   reg [31:0]  instr;
   reg         halted_r;
   reg         trap_r;
   reg         commit_valid_r;
   reg [4:0]   commit_rd_r;
   reg [31:0]  commit_wdata_r;

   reg         bridge_req_valid;
   wire        bridge_req_ready;
   reg [3:0]   bridge_req_op;
   reg [31:0]  bridge_req_a;
   reg [31:0]  bridge_req_b;
   wire        bridge_resp_valid;
   wire [31:0] bridge_resp_result;
   wire [5:0]  bridge_resp_flags;

   reg         pending_wb;
   reg [4:0]   pending_rd;
   reg [31:0]  pending_next_pc;
   reg         pending_branch;
   reg [31:0]  pending_branch_target;

   reg [31:0] regs [0:31];
   reg [31:0] imem [0:IMEM_WORDS-1];
   reg [7:0]  dmem [0:DMEM_BYTES-1];

   wire [6:0]  opcode = instr[6:0];
   wire [4:0]  rd = instr[11:7];
   wire [2:0]  funct3 = instr[14:12];
   wire [4:0]  rs1 = instr[19:15];
   wire [4:0]  rs2 = instr[24:20];
   wire [6:0]  funct7 = instr[31:25];
   wire [31:0] rs1_val = (rs1 == 5'd0) ? 32'd0 : regs[rs1];
   wire [31:0] rs2_val = (rs2 == 5'd0) ? 32'd0 : regs[rs2];
   wire [31:0] imm_i = {{20{instr[31]}}, instr[31:20]};
   wire [31:0] imm_s = {{20{instr[31]}}, instr[31:25], instr[11:7]};
   wire [31:0] imm_b = {{19{instr[31]}}, instr[31], instr[7], instr[30:25], instr[11:8], 1'b0};
   wire [31:0] imm_u = {instr[31:12], 12'd0};
   wire [31:0] imm_j = {{11{instr[31]}}, instr[31], instr[19:12], instr[20], instr[30:21], 1'b0};

   assign halted = halted_r;
   assign trap = trap_r;
   assign debug_state = state;
   assign debug_pc = pc;
   assign debug_instr = instr;
   assign debug_commit_valid = commit_valid_r;
   assign debug_commit_rd = commit_rd_r;
   assign debug_commit_wdata = commit_wdata_r;
   assign debug_x1 = regs[1];
   assign debug_x2 = regs[2];
   assign debug_x3 = regs[3];
   assign debug_x10 = regs[10];

   serv_exec_fpga_bridge u_bridge
     (
      .clk(clk),
      .rst_n(rst_n),
      .req_valid(bridge_req_valid),
      .req_ready(bridge_req_ready),
      .req_op(bridge_req_op),
      .req_a(bridge_req_a),
      .req_b(bridge_req_b),
      .resp_valid(bridge_resp_valid),
      .resp_ready(1'b1),
      .resp_result(bridge_resp_result),
      .resp_flags(bridge_resp_flags),
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

   function [31:0] load_word;
      input [31:0] addr;
      begin
         load_word = {dmem[addr + 32'd3], dmem[addr + 32'd2], dmem[addr + 32'd1], dmem[addr]};
      end
   endfunction

   function [31:0] load_half;
      input [31:0] addr;
      reg [15:0] value;
      begin
         value = {dmem[addr + 32'd1], dmem[addr]};
         load_half = {{16{value[15]}}, value};
      end
   endfunction

   function [31:0] load_half_u;
      input [31:0] addr;
      begin
         load_half_u = {16'd0, dmem[addr + 32'd1], dmem[addr]};
      end
   endfunction

   function [31:0] load_byte;
      input [31:0] addr;
      begin
         load_byte = {{24{dmem[addr][7]}}, dmem[addr]};
      end
   endfunction

   function [31:0] load_byte_u;
      input [31:0] addr;
      begin
         load_byte_u = {24'd0, dmem[addr]};
      end
   endfunction

   task write_reg;
      input [4:0] wr_rd;
      input [31:0] wr_data;
      begin
         if (wr_rd != 5'd0) begin
            regs[wr_rd] <= wr_data;
            commit_valid_r <= 1'b1;
            commit_rd_r <= wr_rd;
            commit_wdata_r <= wr_data;
         end
      end
   endtask

   task issue_asic;
      input [3:0] op;
      input [31:0] a;
      input [31:0] b;
      input wb;
      input [4:0] wb_rd;
      input branch;
      input [31:0] next_pc;
      input [31:0] branch_target;
      begin
         bridge_req_op <= op;
         bridge_req_a <= a;
         bridge_req_b <= b;
         bridge_req_valid <= 1'b1;
         pending_wb <= wb;
         pending_rd <= wb_rd;
         pending_branch <= branch;
         pending_next_pc <= next_pc;
         pending_branch_target <= branch_target;
         state <= ST_ASIC_ISSUE;
      end
   endtask

   integer i;
   reg [31:0] ea;
   reg [31:0] load_data;

   always @(posedge clk) begin
      if (!rst_n) begin
         state <= ST_FETCH;
         pc <= RESET_PC;
         instr <= 32'd0;
         halted_r <= 1'b0;
         trap_r <= 1'b0;
         bridge_req_valid <= 1'b0;
         bridge_req_op <= OP_ADD;
         bridge_req_a <= 32'd0;
         bridge_req_b <= 32'd0;
         pending_wb <= 1'b0;
         pending_rd <= 5'd0;
         pending_next_pc <= RESET_PC;
         pending_branch <= 1'b0;
         pending_branch_target <= RESET_PC;
         commit_valid_r <= 1'b0;
         commit_rd_r <= 5'd0;
         commit_wdata_r <= 32'd0;
         for (i = 0; i < 32; i = i + 1) begin
            regs[i] <= 32'd0;
         end
      end else begin
         commit_valid_r <= 1'b0;
         regs[0] <= 32'd0;

         case (state)
           ST_FETCH: begin
              instr <= imem[pc[31:2]];
              state <= ST_DECODE;
           end

           ST_DECODE: begin
              case (opcode)
                OPC_OP: begin
                   case (funct3)
                     3'b000: begin
                        if (funct7 == 7'b0100000)
                          issue_asic(OP_SUB, rs1_val, rs2_val, rd != 5'd0, rd, 1'b0, pc + 32'd4, 32'd0);
                        else if (funct7 == 7'b0000000)
                          issue_asic(OP_ADD, rs1_val, rs2_val, rd != 5'd0, rd, 1'b0, pc + 32'd4, 32'd0);
                        else
                          state <= ST_TRAP;
                     end
                     3'b001: begin
                        if (funct7 == 7'b0000000) begin
                           write_reg(rd, rs1_val << rs2_val[4:0]);
                           pc <= pc + 32'd4;
                           state <= ST_FETCH;
                        end else begin
                           state <= ST_TRAP;
                        end
                     end
                     3'b010: issue_asic(OP_SLT,  rs1_val, rs2_val, rd != 5'd0, rd, 1'b0, pc + 32'd4, 32'd0);
                     3'b011: issue_asic(OP_SLTU, rs1_val, rs2_val, rd != 5'd0, rd, 1'b0, pc + 32'd4, 32'd0);
                     3'b100: issue_asic(OP_XOR,  rs1_val, rs2_val, rd != 5'd0, rd, 1'b0, pc + 32'd4, 32'd0);
                     3'b101: begin
                        if (funct7 == 7'b0100000)
                          write_reg(rd, $signed(rs1_val) >>> rs2_val[4:0]);
                        else if (funct7 == 7'b0000000)
                          write_reg(rd, rs1_val >> rs2_val[4:0]);
                        else
                          state <= ST_TRAP;
                        if ((funct7 == 7'b0100000) || (funct7 == 7'b0000000)) begin
                           pc <= pc + 32'd4;
                           state <= ST_FETCH;
                        end
                     end
                     3'b110: issue_asic(OP_OR,   rs1_val, rs2_val, rd != 5'd0, rd, 1'b0, pc + 32'd4, 32'd0);
                     3'b111: issue_asic(OP_AND,  rs1_val, rs2_val, rd != 5'd0, rd, 1'b0, pc + 32'd4, 32'd0);
                     default: state <= ST_TRAP;
                   endcase
                end

                OPC_OP_IMM: begin
                   case (funct3)
                     3'b000: issue_asic(OP_ADD,  rs1_val, imm_i, rd != 5'd0, rd, 1'b0, pc + 32'd4, 32'd0);
                     3'b010: issue_asic(OP_SLT,  rs1_val, imm_i, rd != 5'd0, rd, 1'b0, pc + 32'd4, 32'd0);
                     3'b011: issue_asic(OP_SLTU, rs1_val, imm_i, rd != 5'd0, rd, 1'b0, pc + 32'd4, 32'd0);
                     3'b100: issue_asic(OP_XOR,  rs1_val, imm_i, rd != 5'd0, rd, 1'b0, pc + 32'd4, 32'd0);
                     3'b110: issue_asic(OP_OR,   rs1_val, imm_i, rd != 5'd0, rd, 1'b0, pc + 32'd4, 32'd0);
                     3'b111: issue_asic(OP_AND,  rs1_val, imm_i, rd != 5'd0, rd, 1'b0, pc + 32'd4, 32'd0);
                     3'b001: begin
                        if (funct7 == 7'b0000000) begin
                           write_reg(rd, rs1_val << instr[24:20]);
                           pc <= pc + 32'd4;
                           state <= ST_FETCH;
                        end else begin
                           state <= ST_TRAP;
                        end
                     end
                     3'b101: begin
                        if (funct7 == 7'b0100000)
                          write_reg(rd, $signed(rs1_val) >>> instr[24:20]);
                        else if (funct7 == 7'b0000000)
                          write_reg(rd, rs1_val >> instr[24:20]);
                        else
                          state <= ST_TRAP;
                        if ((funct7 == 7'b0100000) || (funct7 == 7'b0000000)) begin
                           pc <= pc + 32'd4;
                           state <= ST_FETCH;
                        end
                     end
                     default: state <= ST_TRAP;
                   endcase
                end

                OPC_BRANCH: begin
                   case (funct3)
                     3'b000: issue_asic(OP_EQ,  rs1_val, rs2_val, 1'b0, 5'd0, 1'b1, pc + 32'd4, pc + imm_b);
                     3'b001: issue_asic(OP_NE,  rs1_val, rs2_val, 1'b0, 5'd0, 1'b1, pc + 32'd4, pc + imm_b);
                     3'b100: issue_asic(OP_LT,  rs1_val, rs2_val, 1'b0, 5'd0, 1'b1, pc + 32'd4, pc + imm_b);
                     3'b101: issue_asic(OP_GE,  rs1_val, rs2_val, 1'b0, 5'd0, 1'b1, pc + 32'd4, pc + imm_b);
                     3'b110: issue_asic(OP_LTU, rs1_val, rs2_val, 1'b0, 5'd0, 1'b1, pc + 32'd4, pc + imm_b);
                     3'b111: issue_asic(OP_GEU, rs1_val, rs2_val, 1'b0, 5'd0, 1'b1, pc + 32'd4, pc + imm_b);
                     default: state <= ST_TRAP;
                   endcase
                end

                OPC_LOAD: begin
                   ea = rs1_val + imm_i;
                   case (funct3)
                     3'b000: load_data = load_byte(ea);
                     3'b001: load_data = load_half(ea);
                     3'b010: load_data = load_word(ea);
                     3'b100: load_data = load_byte_u(ea);
                     3'b101: load_data = load_half_u(ea);
                     default: load_data = 32'd0;
                   endcase
                   if ((funct3 == 3'b011) || (funct3 == 3'b110) || (funct3 == 3'b111)) begin
                      state <= ST_TRAP;
                   end else begin
                      write_reg(rd, load_data);
                      pc <= pc + 32'd4;
                      state <= ST_FETCH;
                   end
                end

                OPC_STORE: begin
                   ea = rs1_val + imm_s;
                   case (funct3)
                     3'b000: dmem[ea] <= rs2_val[7:0];
                     3'b001: begin
                        dmem[ea] <= rs2_val[7:0];
                        dmem[ea + 32'd1] <= rs2_val[15:8];
                     end
                     3'b010: begin
                        dmem[ea] <= rs2_val[7:0];
                        dmem[ea + 32'd1] <= rs2_val[15:8];
                        dmem[ea + 32'd2] <= rs2_val[23:16];
                        dmem[ea + 32'd3] <= rs2_val[31:24];
                     end
                     default: begin
                        state <= ST_TRAP;
                     end
                   endcase
                   if (funct3 <= 3'b010) begin
                      pc <= pc + 32'd4;
                      state <= ST_FETCH;
                   end
                end

                OPC_LUI: begin
                   write_reg(rd, imm_u);
                   pc <= pc + 32'd4;
                   state <= ST_FETCH;
                end

                OPC_AUIPC: begin
                   write_reg(rd, pc + imm_u);
                   pc <= pc + 32'd4;
                   state <= ST_FETCH;
                end

                OPC_JAL: begin
                   write_reg(rd, pc + 32'd4);
                   pc <= pc + imm_j;
                   state <= ST_FETCH;
                end

                OPC_JALR: begin
                   write_reg(rd, pc + 32'd4);
                   pc <= (rs1_val + imm_i) & 32'hfffffffe;
                   state <= ST_FETCH;
                end

                OPC_SYSTEM: begin
                   if (instr == 32'h00100073) begin
                      halted_r <= 1'b1;
                      state <= ST_HALT;
                   end else begin
                      state <= ST_TRAP;
                   end
                end

                default: begin
                   state <= ST_TRAP;
                end
              endcase
           end

           ST_ASIC_ISSUE: begin
              if (bridge_req_ready) begin
                 bridge_req_valid <= 1'b0;
                 state <= ST_ASIC_WAIT;
              end
           end

           ST_ASIC_WAIT: begin
              if (bridge_resp_valid) begin
                 if (pending_wb) begin
                    write_reg(pending_rd, bridge_resp_result);
                 end
                 if (pending_branch) begin
                    pc <= bridge_resp_result[0] ? pending_branch_target : pending_next_pc;
                 end else begin
                    pc <= pending_next_pc;
                 end
                 state <= ST_FETCH;
              end
           end

           ST_HALT: begin
              halted_r <= 1'b1;
           end

           ST_TRAP: begin
              trap_r <= 1'b1;
           end

           default: begin
              state <= ST_TRAP;
           end
         endcase
      end
   end

endmodule

`default_nettype wire
