`timescale 1ns/1ps

module tb_rv32i_directed;
   localparam RF_RAW = 5;
   localparam RF_REGS = 32;
   localparam RF_FRAME_BITS = RF_RAW + 8;
   localparam RESULT_BASE = 32'h0000_0700;

   localparam OPC_LUI       = 7'b0110111;
   localparam OPC_AUIPC     = 7'b0010111;
   localparam OPC_JAL       = 7'b1101111;
   localparam OPC_JALR      = 7'b1100111;
   localparam OPC_BRANCH    = 7'b1100011;
   localparam OPC_LOAD      = 7'b0000011;
   localparam OPC_STORE     = 7'b0100011;
   localparam OPC_ARI_RTYPE = 7'b0110011;
   localparam OPC_ARI_ITYPE = 7'b0010011;

   localparam FNC_BEQ     = 3'b000;
   localparam FNC_BNE     = 3'b001;
   localparam FNC_BLT     = 3'b100;
   localparam FNC_BGE     = 3'b101;
   localparam FNC_BLTU    = 3'b110;
   localparam FNC_BGEU    = 3'b111;
   localparam FNC_LB      = 3'b000;
   localparam FNC_LH      = 3'b001;
   localparam FNC_LW      = 3'b010;
   localparam FNC_LBU     = 3'b100;
   localparam FNC_LHU     = 3'b101;
   localparam FNC_SB      = 3'b000;
   localparam FNC_SH      = 3'b001;
   localparam FNC_SW      = 3'b010;
   localparam FNC_ADD_SUB = 3'b000;
   localparam FNC_SLL     = 3'b001;
   localparam FNC_SLT     = 3'b010;
   localparam FNC_SLTU    = 3'b011;
   localparam FNC_XOR     = 3'b100;
   localparam FNC_OR      = 3'b110;
   localparam FNC_AND     = 3'b111;
   localparam FNC_SRL_SRA = 3'b101;
   localparam FNC7_0      = 7'b0000000;
   localparam FNC7_1      = 7'b0100000;

   reg clk_fast = 0;
   reg rst_n = 0;
   always #31.25 clk_fast = ~clk_fast;

   wire rf_sync;
   wire rf_sck;
   wire rf_mosi;
   wire rf_miso;
   wire mem_sync;
   wire mem_sck;
   wire mem_mosi;
   wire mem_miso;
   wire [7:0] gpio_out;
   wire [7:0] gpio_oe;

   my_mcu_top dut (
      .i_clk_fast(clk_fast),
      .i_rst_n(rst_n),
      .o_rf_sync(rf_sync),
      .o_rf_sck(rf_sck),
      .o_rf_mosi(rf_mosi),
      .i_rf_miso(rf_miso),
      .o_mem_sync(mem_sync),
      .o_mem_sck(mem_sck),
      .o_mem_mosi(mem_mosi),
      .i_mem_miso(mem_miso)
   );

   reg [31:0] pico_ram [0:RF_REGS-1];
   reg [RF_FRAME_BITS-1:0] rx_buffer = 0;
   integer bit_cnt = 0;
   reg [1:0] pico_tx_data = 0;
   integer frame_cnt = 0;
   integer write_frame_cnt = 0;
   integer read_frame_cnt = 0;
   integer invalid_rf_frame_cnt = 0;

   reg [31:0] ext_mem [0:511];
   reg [69:0] mem_rx_buffer = 0;
   integer mem_bit_cnt = 0;
   reg [31:0] mem_read_shift = 0;
   reg [31:0] mem_addr = 0;
   reg [31:0] mem_wdata = 0;
   reg [3:0] mem_sel = 0;
   integer mem_word_index = 0;
   integer mem_frame_cnt = 0;
   integer mem_write_cnt = 0;
   integer mem_read_cnt = 0;
   integer fetch_cnt = 0;
   reg [31:0] last_ibus_adr = 0;
   reg [31:0] last_ibus_insn = 0;

   reg expected_valid [0:511];
   reg [31:0] expected_mem [0:511];
   reg [5:0] expected_case_id [0:511];
   reg [8*64-1:0] case_name [0:63];

   integer i;
   integer pc_word;
   integer result_addr;
   integer error_cnt = 0;
   integer case_count = 0;

   function [31:0] enc_r;
      input [6:0] funct7;
      input [4:0] rs2;
      input [4:0] rs1;
      input [2:0] funct3;
      input [4:0] rd;
      begin
         enc_r = {funct7, rs2, rs1, funct3, rd, OPC_ARI_RTYPE};
      end
   endfunction

   function [31:0] enc_i;
      input [31:0] imm;
      input [4:0] rs1;
      input [2:0] funct3;
      input [4:0] rd;
      input [6:0] opcode;
      begin
         enc_i = {imm[11:0], rs1, funct3, rd, opcode};
      end
   endfunction

   function [31:0] enc_s;
      input [31:0] imm;
      input [4:0] rs2;
      input [4:0] rs1;
      input [2:0] funct3;
      begin
         enc_s = {imm[11:5], rs2, rs1, funct3, imm[4:0], OPC_STORE};
      end
   endfunction

   function [31:0] enc_b;
      input [31:0] imm;
      input [4:0] rs2;
      input [4:0] rs1;
      input [2:0] funct3;
      begin
         enc_b = {imm[12], imm[10:5], rs2, rs1, funct3, imm[4:1], imm[11], OPC_BRANCH};
      end
   endfunction

   function [31:0] enc_u;
      input [31:0] imm;
      input [4:0] rd;
      input [6:0] opcode;
      begin
         enc_u = {imm[31:12], rd, opcode};
      end
   endfunction

   function [31:0] enc_j;
      input [31:0] imm;
      input [4:0] rd;
      begin
         enc_j = {imm[20], imm[10:1], imm[11], imm[19:12], rd, OPC_JAL};
      end
   endfunction

   task emit;
      input [31:0] insn;
      begin
         ext_mem[pc_word] = insn;
         pc_word = pc_word + 1;
      end
   endtask

   task emit_nops;
      input integer count;
      integer n;
      begin
         for (n = 0; n < count; n = n + 1)
            emit(32'h00000013);
      end
   endtask

   task put_expected_addr;
      input [31:0] addr;
      input [31:0] value;
      begin
         expected_valid[addr[10:2]] = 1'b1;
         expected_mem[addr[10:2]] = value;
         expected_case_id[addr[10:2]] = case_count[5:0];
         case_name[case_count[5:0]] = "unnamed";
         case_count = case_count + 1;
      end
   endtask

   task put_expected_case;
      input [31:0] addr;
      input [31:0] value;
      input [8*64-1:0] name;
      begin
         expected_valid[addr[10:2]] = 1'b1;
         expected_mem[addr[10:2]] = value;
         expected_case_id[addr[10:2]] = case_count[5:0];
         case_name[case_count[5:0]] = name;
         case_count = case_count + 1;
      end
   endtask

   task store_result;
      input [4:0] reg_idx;
      input [31:0] value;
      input [8*64-1:0] name;
      begin
         emit_nops(4);
         emit(enc_s(result_addr, reg_idx, 5'd0, FNC_SW));
         put_expected_case(result_addr, value, name);
         result_addr = result_addr + 4;
      end
   endtask

   task check_expected_mem;
      input [8:0] word_idx;
      begin
         if (ext_mem[word_idx] !== expected_mem[word_idx]) begin
            error_cnt = error_cnt + 1;
            $display("[FAIL] %-48s memory[0x%03h]=%h expected=%h",
                     case_name[expected_case_id[word_idx]], {word_idx, 2'b00}, ext_mem[word_idx], expected_mem[word_idx]);
         end else begin
            $display("[PASS] %-48s memory[0x%03h]=%h",
                     case_name[expected_case_id[word_idx]], {word_idx, 2'b00}, ext_mem[word_idx]);
         end
      end
   endtask

   always @(posedge mem_sck) begin
      if (mem_sync) begin
         mem_rx_buffer[69 - mem_bit_cnt] = mem_mosi;
         mem_bit_cnt = mem_bit_cnt + 1;

         if (mem_bit_cnt == 38) begin
            mem_addr = mem_rx_buffer[63:32];
            mem_word_index = mem_addr[10:2];
            mem_read_shift = ext_mem[mem_word_index];
         end
      end
   end

   always @(posedge mem_sync) begin
      mem_bit_cnt = 0;
      mem_rx_buffer = 70'b0;
      mem_read_shift = 32'h0000_0013;
   end

   always @(negedge mem_sync) begin
      mem_frame_cnt = mem_frame_cnt + 1;
      mem_addr = mem_rx_buffer[63:32];
      mem_word_index = mem_addr[10:2];

      if (mem_rx_buffer[69]) begin
         mem_write_cnt = mem_write_cnt + 1;
         mem_sel = mem_rx_buffer[67:64];
         mem_wdata = mem_rx_buffer[31:0];

         if (mem_sel[0]) begin
            ext_mem[mem_word_index][7:0] = mem_wdata[7:0];
            $display("TB_MEM_WRITE: addr=%h data=%h", mem_addr, mem_wdata);
         end
         if (mem_sel[1]) ext_mem[mem_word_index][15:8] = mem_wdata[15:8];
         if (mem_sel[2]) ext_mem[mem_word_index][23:16] = mem_wdata[23:16];
         if (mem_sel[3]) ext_mem[mem_word_index][31:24] = mem_wdata[31:24];
      end else begin
         mem_read_cnt = mem_read_cnt + 1;
      end
   end

   assign mem_miso = (mem_sync && mem_bit_cnt >= 38 && mem_bit_cnt < 70) ?
                     mem_read_shift[69 - mem_bit_cnt] : 1'b0;

   always @(posedge rf_sck) begin
      if (rf_sync) begin
         rx_buffer[RF_FRAME_BITS-1 - bit_cnt] = rf_mosi;
         bit_cnt = bit_cnt + 1;

         if (bit_cnt == RF_FRAME_BITS-2) begin
            if (rx_buffer[RF_FRAME_BITS-2] && rx_buffer[RF_FRAME_BITS-3:6] < RF_REGS)
               pico_tx_data = pico_ram[rx_buffer[RF_FRAME_BITS-3:6]][{rx_buffer[5:2], 1'b0} +: 2];
         end
      end
   end

   always @(negedge rf_sync) begin
      frame_cnt = frame_cnt + 1;
      if (rx_buffer[RF_FRAME_BITS-1]) begin
         write_frame_cnt = write_frame_cnt + 1;
         $display("TB_RF_WRITE: reg=%d chunk=%d data=%b", rx_buffer[RF_FRAME_BITS-3:6], rx_buffer[5:2], rx_buffer[1:0]);
         if (rx_buffer[RF_FRAME_BITS-3:6] < RF_REGS)
            pico_ram[rx_buffer[RF_FRAME_BITS-3:6]][{rx_buffer[5:2], 1'b0} +: 2] = rx_buffer[1:0];
         else
            invalid_rf_frame_cnt = invalid_rf_frame_cnt + 1;
      end else if (rx_buffer[RF_FRAME_BITS-2]) begin
         read_frame_cnt = read_frame_cnt + 1;
      end
   end

   always @(posedge rf_sync) begin
      bit_cnt = 0;
      rx_buffer = {RF_FRAME_BITS{1'b0}};
   end

   assign rf_miso = (bit_cnt == RF_FRAME_BITS-2) ? pico_tx_data[1] :
                    (bit_cnt >= RF_FRAME_BITS-1) ? pico_tx_data[0] : 1'b0;

   always @(posedge dut.clk_sys) begin
      if (dut.wb_ibus_ack) begin
         fetch_cnt = fetch_cnt + 1;
         last_ibus_adr = dut.wb_ibus_adr;
         last_ibus_insn = dut.wb_ibus_rdt;
      end
   end

   initial begin
      rst_n = 0;
      #5000;
      rst_n = 1;
   end

   initial begin
      for (i = 0; i < 36; i = i + 1)
         pico_ram[i] = 32'h0;
      for (i = 0; i < 512; i = i + 1) begin
         ext_mem[i] = 32'h00000013;
         expected_valid[i] = 1'b0;
         expected_mem[i] = 32'h0;
         expected_case_id[i] = 6'd0;
      end
      for (i = 0; i < 64; i = i + 1)
         case_name[i] = "";

      pc_word = 0;
      result_addr = RESULT_BASE;
      case_count = 0;

      $display("------------------------------------------------------------");
      $display("RV32I directed regression case list");
      $display("  R-type      : ADD SUB SLL SLT SLTU XOR OR AND SRL SRA");
      $display("  I-type      : ADDI SLTI SLTIU XORI ORI ANDI");
      $display("  Shift imm   : SLLI SRLI SRAI");
      $display("  Load        : LW LH LB LHU LBU");
      $display("  Store       : SW SH SB");
      $display("  U-type      : LUI AUIPC");
      $display("  Branch      : BEQ BNE BLT BGE BLTU BGEU");
      $display("  Jump        : JAL JALR");
      $display("------------------------------------------------------------");

      // R-type and shift-immediate directed tests from 0_testbench_Basic.
      emit(enc_i(-100, 5'd0, FNC_ADD_SUB, 5'd1, OPC_ARI_ITYPE));
      emit(enc_i(200, 5'd0, FNC_ADD_SUB, 5'd2, OPC_ARI_ITYPE));
      emit(enc_r(FNC7_0, 5'd2, 5'd1, FNC_ADD_SUB, 5'd3));
      store_result(5'd3, 32'h00000064, "ADD");
      emit(enc_r(FNC7_1, 5'd2, 5'd1, FNC_ADD_SUB, 5'd4));
      store_result(5'd4, 32'hfffffed4, "SUB");
      emit(enc_r(FNC7_0, 5'd2, 5'd1, FNC_SLL, 5'd5));
      store_result(5'd5, 32'hffff9c00, "SLL");
      emit(enc_r(FNC7_0, 5'd2, 5'd1, FNC_SLT, 5'd6));
      store_result(5'd6, 32'h00000001, "SLT");
      emit(enc_r(FNC7_0, 5'd2, 5'd1, FNC_SLTU, 5'd7));
      store_result(5'd7, 32'h00000000, "SLTU");
      emit(enc_r(FNC7_0, 5'd2, 5'd1, FNC_XOR, 5'd8));
      store_result(5'd8, 32'hffffff54, "XOR");
      emit(enc_r(FNC7_0, 5'd2, 5'd1, FNC_OR, 5'd9));
      store_result(5'd9, 32'hffffffdc, "OR");
      emit(enc_r(FNC7_0, 5'd2, 5'd1, FNC_AND, 5'd10));
      store_result(5'd10, 32'h00000088, "AND");
      emit(enc_r(FNC7_0, 5'd2, 5'd1, FNC_SRL_SRA, 5'd11));
      store_result(5'd11, 32'h00ffffff, "SRL");
      emit(enc_r(FNC7_1, 5'd2, 5'd1, FNC_SRL_SRA, 5'd12));
      store_result(5'd12, 32'hffffffff, "SRA");
      emit(enc_i({7'b0000000, 5'd20}, 5'd1, FNC_SLL, 5'd13, OPC_ARI_ITYPE));
      store_result(5'd13, 32'hf9c00000, "SLLI");
      emit(enc_i({7'b0000000, 5'd20}, 5'd1, FNC_SRL_SRA, 5'd14, OPC_ARI_ITYPE));
      store_result(5'd14, 32'h00000fff, "SRLI");
      emit(enc_i({7'b0100000, 5'd20}, 5'd1, FNC_SRL_SRA, 5'd15, OPC_ARI_ITYPE));
      store_result(5'd15, 32'hffffffff, "SRAI");

      // I-type arithmetic directed tests.
      emit(enc_i(-200, 5'd1, FNC_ADD_SUB, 5'd3, OPC_ARI_ITYPE));
      store_result(5'd3, 32'hfffffed4, "ADDI");
      emit(enc_i(-200, 5'd1, FNC_SLT, 5'd4, OPC_ARI_ITYPE));
      store_result(5'd4, 32'h00000000, "SLTI");
      emit(enc_i(-200, 5'd1, FNC_SLTU, 5'd5, OPC_ARI_ITYPE));
      store_result(5'd5, 32'h00000000, "SLTIU");
      emit(enc_i(-200, 5'd1, FNC_XOR, 5'd6, OPC_ARI_ITYPE));
      store_result(5'd6, 32'h000000a4, "XORI");
      emit(enc_i(-200, 5'd1, FNC_OR, 5'd7, OPC_ARI_ITYPE));
      store_result(5'd7, 32'hffffffbc, "ORI");
      emit(enc_i(-200, 5'd1, FNC_AND, 5'd8, OPC_ARI_ITYPE));
      store_result(5'd8, 32'hffffff18, "ANDI");

      // Load subword tests.
      ext_mem[9'h180] = 32'hdeadbeef;
      emit(enc_i(32'h600, 5'd0, FNC_ADD_SUB, 5'd20, OPC_ARI_ITYPE));
      emit(enc_i(0, 5'd20, FNC_LW, 5'd2, OPC_LOAD));
      store_result(5'd2, 32'hdeadbeef, "LW offset 0");
      emit(enc_i(0, 5'd20, FNC_LH, 5'd3, OPC_LOAD));
      store_result(5'd3, 32'hffffbeef, "LH offset 0 sign-extend");
      emit(enc_i(2, 5'd20, FNC_LH, 5'd5, OPC_LOAD));
      store_result(5'd5, 32'hffffdead, "LH offset 2 sign-extend");
      emit(enc_i(0, 5'd20, FNC_LB, 5'd7, OPC_LOAD));
      store_result(5'd7, 32'hffffffef, "LB offset 0 sign-extend");
      emit(enc_i(1, 5'd20, FNC_LB, 5'd8, OPC_LOAD));
      store_result(5'd8, 32'hffffffbe, "LB offset 1 sign-extend");
      emit(enc_i(2, 5'd20, FNC_LB, 5'd9, OPC_LOAD));
      store_result(5'd9, 32'hffffffad, "LB offset 2 sign-extend");
      emit(enc_i(3, 5'd20, FNC_LB, 5'd10, OPC_LOAD));
      store_result(5'd10, 32'hffffffde, "LB offset 3 sign-extend");
      emit(enc_i(0, 5'd20, FNC_LHU, 5'd11, OPC_LOAD));
      store_result(5'd11, 32'h0000beef, "LHU offset 0 zero-extend");
      emit(enc_i(2, 5'd20, FNC_LHU, 5'd13, OPC_LOAD));
      store_result(5'd13, 32'h0000dead, "LHU offset 2 zero-extend");
      emit(enc_i(0, 5'd20, FNC_LBU, 5'd15, OPC_LOAD));
      store_result(5'd15, 32'h000000ef, "LBU offset 0 zero-extend");
      emit(enc_i(1, 5'd20, FNC_LBU, 5'd16, OPC_LOAD));
      store_result(5'd16, 32'h000000be, "LBU offset 1 zero-extend");
      emit(enc_i(2, 5'd20, FNC_LBU, 5'd17, OPC_LOAD));
      store_result(5'd17, 32'h000000ad, "LBU offset 2 zero-extend");
      emit(enc_i(3, 5'd20, FNC_LBU, 5'd18, OPC_LOAD));
      store_result(5'd18, 32'h000000de, "LBU offset 3 zero-extend");

      // Store byte/halfword/word tests.
      ext_mem[9'h190] = 32'h0;
      ext_mem[9'h191] = 32'h0;
      ext_mem[9'h192] = 32'h0;
      ext_mem[9'h193] = 32'h0;
      emit(enc_u(32'h12345000, 5'd21, OPC_LUI));
      emit(enc_i(32'h678, 5'd21, FNC_ADD_SUB, 5'd21, OPC_ARI_ITYPE));
      emit(enc_s(32'h640, 5'd21, 5'd0, FNC_SW));
      put_expected_case(32'h640, 32'h12345678, "SW full word");
      emit(enc_s(32'h644, 5'd21, 5'd0, FNC_SH));
      put_expected_case(32'h644, 32'h00005678, "SH low halfword");
      emit(enc_s(32'h64a, 5'd21, 5'd0, FNC_SH));
      put_expected_case(32'h648, 32'h56780000, "SH high halfword");
      emit(enc_s(32'h650, 5'd21, 5'd0, FNC_SB));
      emit(enc_s(32'h651, 5'd21, 5'd0, FNC_SB));
      emit(enc_s(32'h652, 5'd21, 5'd0, FNC_SB));
      emit(enc_s(32'h653, 5'd21, 5'd0, FNC_SB));
      put_expected_case(32'h650, 32'h78787878, "SB byte lanes 0/1/2/3");

      // U-type tests. AUIPC expected value is tied to the actual program PC.
      emit(enc_u(32'h7fff0000, 5'd22, OPC_LUI));
      store_result(5'd22, 32'h7fff0000, "LUI");
      i = pc_word;
      emit(enc_u(32'h7fff0000, 5'd23, OPC_AUIPC));
      store_result(5'd23, 32'h7fff0000 + (i * 4), "AUIPC");

      // Branch taken and not-taken tests for all RV32I branch funct3 values.
      emit(enc_i(100, 5'd0, FNC_ADD_SUB, 5'd1, OPC_ARI_ITYPE));
      emit(enc_i(100, 5'd0, FNC_ADD_SUB, 5'd2, OPC_ARI_ITYPE));
      emit(enc_i(0, 5'd0, FNC_ADD_SUB, 5'd24, OPC_ARI_ITYPE));
      emit(enc_b(8, 5'd2, 5'd1, FNC_BEQ));
      emit(enc_i(1, 5'd0, FNC_ADD_SUB, 5'd24, OPC_ARI_ITYPE));
      emit(enc_i(2, 5'd0, FNC_ADD_SUB, 5'd24, OPC_ARI_ITYPE));
      store_result(5'd24, 32'h00000002, "BEQ taken");

      emit(enc_i(100, 5'd0, FNC_ADD_SUB, 5'd1, OPC_ARI_ITYPE));
      emit(enc_i(200, 5'd0, FNC_ADD_SUB, 5'd2, OPC_ARI_ITYPE));
      emit(enc_i(0, 5'd0, FNC_ADD_SUB, 5'd24, OPC_ARI_ITYPE));
      emit(enc_b(8, 5'd2, 5'd1, FNC_BNE));
      emit(enc_i(1, 5'd0, FNC_ADD_SUB, 5'd24, OPC_ARI_ITYPE));
      emit(enc_i(3, 5'd0, FNC_ADD_SUB, 5'd24, OPC_ARI_ITYPE));
      store_result(5'd24, 32'h00000003, "BNE taken");
 
      emit(enc_i(100, 5'd0, FNC_ADD_SUB, 5'd1, OPC_ARI_ITYPE));
      emit(enc_i(200, 5'd0, FNC_ADD_SUB, 5'd2, OPC_ARI_ITYPE));
      emit(enc_i(0, 5'd0, FNC_ADD_SUB, 5'd24, OPC_ARI_ITYPE));
      emit(enc_b(8, 5'd2, 5'd1, FNC_BLT));
      emit(enc_i(1, 5'd0, FNC_ADD_SUB, 5'd24, OPC_ARI_ITYPE));
      emit(enc_i(4, 5'd0, FNC_ADD_SUB, 5'd24, OPC_ARI_ITYPE));
      store_result(5'd24, 32'h00000004, "BLT taken");
 
      emit(enc_i(200, 5'd0, FNC_ADD_SUB, 5'd1, OPC_ARI_ITYPE));
      emit(enc_i(100, 5'd0, FNC_ADD_SUB, 5'd2, OPC_ARI_ITYPE));
      emit(enc_i(0, 5'd0, FNC_ADD_SUB, 5'd24, OPC_ARI_ITYPE));
      emit(enc_b(8, 5'd2, 5'd1, FNC_BGE));
      emit(enc_i(1, 5'd0, FNC_ADD_SUB, 5'd24, OPC_ARI_ITYPE));
      emit(enc_i(5, 5'd0, FNC_ADD_SUB, 5'd24, OPC_ARI_ITYPE));
      store_result(5'd24, 32'h00000005, "BGE taken");
 
      emit(enc_i(1, 5'd0, FNC_ADD_SUB, 5'd1, OPC_ARI_ITYPE));
      emit(enc_i(-1, 5'd0, FNC_ADD_SUB, 5'd2, OPC_ARI_ITYPE));
      emit(enc_i(0, 5'd0, FNC_ADD_SUB, 5'd24, OPC_ARI_ITYPE));
      emit(enc_b(8, 5'd2, 5'd1, FNC_BLTU));
      emit(enc_i(1, 5'd0, FNC_ADD_SUB, 5'd24, OPC_ARI_ITYPE));
      emit(enc_i(6, 5'd0, FNC_ADD_SUB, 5'd24, OPC_ARI_ITYPE));
      store_result(5'd24, 32'h00000006, "BLTU taken");
 
      emit(enc_i(-1, 5'd0, FNC_ADD_SUB, 5'd1, OPC_ARI_ITYPE));
      emit(enc_i(1, 5'd0, FNC_ADD_SUB, 5'd2, OPC_ARI_ITYPE));
      emit(enc_i(0, 5'd0, FNC_ADD_SUB, 5'd24, OPC_ARI_ITYPE));
      emit(enc_b(8, 5'd2, 5'd1, FNC_BGEU));
      emit(enc_i(1, 5'd0, FNC_ADD_SUB, 5'd24, OPC_ARI_ITYPE));
      emit(enc_i(7, 5'd0, FNC_ADD_SUB, 5'd24, OPC_ARI_ITYPE));
      store_result(5'd24, 32'h00000007, "BGEU taken");
 
      // JAL and JALR link/skip tests.
      i = pc_word;
      emit(enc_j(8, 5'd25));
      emit(enc_i(1, 5'd0, FNC_ADD_SUB, 5'd26, OPC_ARI_ITYPE));
      emit(enc_i(9, 5'd0, FNC_ADD_SUB, 5'd27, OPC_ARI_ITYPE));
      store_result(5'd25, (i * 4) + 4, "JAL link rd=pc+4");
      store_result(5'd26, 32'h00000000, "JAL skipped instruction");
      store_result(5'd27, 32'h00000009, "JAL target executed");
 
      i = pc_word;
      emit(enc_i((i + 3) * 4, 5'd0, FNC_ADD_SUB, 5'd28, OPC_ARI_ITYPE));
      i = pc_word;
      emit(enc_i(0, 5'd28, 3'b000, 5'd29, OPC_JALR));
      emit(enc_i(1, 5'd0, FNC_ADD_SUB, 5'd30, OPC_ARI_ITYPE));
      emit(enc_i(10, 5'd0, FNC_ADD_SUB, 5'd31, OPC_ARI_ITYPE));
      store_result(5'd29, (i * 4) + 4, "JALR link rd=pc+4");
      store_result(5'd30, 32'h00000000, "JALR skipped instruction");
      store_result(5'd31, 32'h0000000a, "JALR target executed");

      emit(32'h0000006f);

      #180000000;
      if (frame_cnt == 0)
         $fatal(1, "No RF frames observed");
      if (mem_frame_cnt == 0)
         $fatal(1, "No memory frames observed");

      $display("RV32I directed program words = %0d", pc_word);
      $display("RF frames observed = %0d writes=%0d reads=%0d invalid=%0d",
               frame_cnt, write_frame_cnt, read_frame_cnt, invalid_rf_frame_cnt);
      $display("Memory frames observed = %0d writes=%0d reads=%0d",
               mem_frame_cnt, mem_write_cnt, mem_read_cnt);
      $display("Instruction fetches = %0d last_pc=%h last_insn=%h",
               fetch_cnt, last_ibus_adr, last_ibus_insn);

      for (i = 0; i < 512; i = i + 1) begin
         if (expected_valid[i])
            check_expected_mem(i[8:0]);
      end

      if (error_cnt == 0)
         $display("[TB PASS] rv32i directed tests passed on my_mcu_top off-chip path");
      else
         $fatal(1, "[TB FAIL] rv32i directed tests mismatch. errors=%0d", error_cnt);

      $finish;
   end
endmodule
