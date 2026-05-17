`timescale 1ns/1ps

`include "external_hex_config.vh"

module tb_rv32i_hex;
   localparam RF_RAW = 6;
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
   always #0.5 clk_fast = ~clk_fast;

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
      .i_mem_miso(mem_miso),
      .o_uart_tx(),
      .i_uart_rx(1'b1),
      .i_gpio(8'ha5),
      .o_gpio(gpio_out),
      .o_gpio_oe(gpio_oe)
   );

   reg [31:0] pico_ram [0:35];
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
   reg [31:0] expected_valid_words [0:511];
   reg [31:0] expected_mem [0:511];

   integer i;
   integer pc_word;
   integer result_addr;
   integer error_cnt = 0;
   integer use_external_program = 0;
   integer external_flag_fd;
   reg [8*1024-1:0] program_hex_path;
   reg [8*1024-1:0] expected_hex_path;
   reg [8*1024-1:0] expected_valid_hex_path;

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
      end
   endtask

   task store_result;
      input [4:0] reg_idx;
      input [31:0] value;
      begin
         emit_nops(4);
         emit(enc_s(result_addr, reg_idx, 5'd0, FNC_SW));
         put_expected_addr(result_addr, value);
         result_addr = result_addr + 4;
      end
   endtask

   task check_expected_mem;
      input [8:0] word_idx;
      begin
         if (ext_mem[word_idx] !== expected_mem[word_idx]) begin
            error_cnt = error_cnt + 1;
            $display("[FAIL] memory[0x%03h]=%h expected=%h",
                     {word_idx, 2'b00}, ext_mem[word_idx], expected_mem[word_idx]);
         end else begin
            $display("[PASS] memory[0x%03h] = %h",
                     {word_idx, 2'b00}, ext_mem[word_idx]);
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

         if (mem_sel[0]) ext_mem[mem_word_index][7:0] = mem_wdata[7:0];
         if (mem_sel[1]) ext_mem[mem_word_index][15:8] = mem_wdata[15:8];
         if (mem_sel[2]) ext_mem[mem_word_index][23:16] = mem_wdata[23:16];
         if (mem_sel[3]) ext_mem[mem_word_index][31:24] = mem_wdata[31:24];
      end else begin
         mem_read_cnt = mem_read_cnt + 1;
      end
      $display("[MEM TRACE] Frame #%0d | Addr=0x%08h (Idx=%0d) | Write=%b | Data=0x%08h | Sel=%b",
               mem_frame_cnt, mem_addr, mem_word_index, mem_rx_buffer[69],
               mem_rx_buffer[69] ? mem_wdata : ext_mem[mem_word_index], mem_sel);
   end

   assign mem_miso = (mem_sync && mem_bit_cnt >= 38 && mem_bit_cnt < 70) ?
                     mem_read_shift[69 - mem_bit_cnt] : 1'b0;

   always @(posedge rf_sck) begin
      if (rf_sync) begin
         rx_buffer[RF_FRAME_BITS-1 - bit_cnt] = rf_mosi;
         bit_cnt = bit_cnt + 1;

         if (bit_cnt == RF_FRAME_BITS-2) begin
            if (rx_buffer[RF_FRAME_BITS-2] && rx_buffer[RF_FRAME_BITS-3:6] < 6'd36)
               pico_tx_data = pico_ram[rx_buffer[RF_FRAME_BITS-3:6]][{rx_buffer[5:2], 1'b0} +: 2];
         end
      end
   end

   always @(negedge rf_sync) begin
      frame_cnt = frame_cnt + 1;
      if (rx_buffer[RF_FRAME_BITS-1]) begin
         write_frame_cnt = write_frame_cnt + 1;
         if (rx_buffer[RF_FRAME_BITS-3:6] < 6'd36)
            pico_ram[rx_buffer[RF_FRAME_BITS-3:6]][{rx_buffer[5:2], 1'b0} +: 2] = rx_buffer[1:0];
         else
            invalid_rf_frame_cnt = invalid_rf_frame_cnt + 1;
      end else if (rx_buffer[RF_FRAME_BITS-2]) begin
         read_frame_cnt = read_frame_cnt + 1;
      end
      $display("[RF TRACE] Frame #%0d | Reg=%0d | Write=%b | Read=%b | Data=2'b%b",
               frame_cnt, rx_buffer[RF_FRAME_BITS-3:6], rx_buffer[RF_FRAME_BITS-1], rx_buffer[RF_FRAME_BITS-2], rx_buffer[1:0]);
   end

   always @(posedge rf_sync) begin
      bit_cnt = 0;
      rx_buffer = {RF_FRAME_BITS{1'b0}};
   end

   assign rf_miso = (bit_cnt >= RF_FRAME_BITS-3 && bit_cnt <= RF_FRAME_BITS-1) ? pico_tx_data[1] :
                    (bit_cnt >= RF_FRAME_BITS) ? pico_tx_data[0] : 1'b0;

   always @(posedge dut.clk_sys) begin
      if (dut.wb_ibus_ack) begin
         fetch_cnt = fetch_cnt + 1;
         last_ibus_adr = dut.wb_ibus_adr;
         last_ibus_insn = dut.wb_ibus_rdt;
      end
   end

   always @(posedge dut.clk_sys) begin
      if ($time < 50000) begin
         $display("[SYS_MON] Time=%0d ns | rst=%b | cyc=%b | ack=%b | rdt=%h | rf_rreq=%b | rf_ready=%b | has_fetched=%b",
                  $time, dut.rst, dut.wb_ibus_cyc, dut.wb_ibus_ack, dut.wb_ibus_rdt, dut.rf_rreq, dut.rf_ready, dut.has_fetched_first_insn);
      end
   end

   initial begin
      rst_n = 0;
      #20000;
      rst_n = 1;
   end

   initial begin
      for (i = 0; i < 36; i = i + 1)
         pico_ram[i] = 32'h0;
      for (i = 0; i < 512; i = i + 1) begin
         ext_mem[i] = 32'h00000013;
         expected_valid[i] = 1'b0;
         expected_valid_words[i] = 32'h0;
         expected_mem[i] = 32'h0;
      end

      pc_word = 0;
      result_addr = RESULT_BASE;

      use_external_program = 0;
      external_flag_fd = $fopen("/home/hosung/Ho/MPW/MPW_workspace/Bit_Up/A_MCU/testbench/6_testbench_rv32i_hex/sim/generated/use_external.flag", "r");
      if (external_flag_fd != 0) begin
         $fclose(external_flag_fd);
         use_external_program = 1;
         $display("Loading external hex from generated directory");
         $readmemh("/home/hosung/Ho/MPW/MPW_workspace/Bit_Up/A_MCU/testbench/6_testbench_rv32i_hex/sim/generated/program.hex", ext_mem);
         $readmemh("/home/hosung/Ho/MPW/MPW_workspace/Bit_Up/A_MCU/testbench/6_testbench_rv32i_hex/sim/generated/expected_mem.hex", expected_mem);
         $readmemh("/home/hosung/Ho/MPW/MPW_workspace/Bit_Up/A_MCU/testbench/6_testbench_rv32i_hex/sim/generated/expected_valid.hex", expected_valid_words);
         for (i = 0; i < 512; i = i + 1)
            expected_valid[i] = expected_valid_words[i][0];
      end
      if ($value$plusargs("PROGRAM_HEX=%s", program_hex_path)) begin
         if (!$value$plusargs("EXPECTED_HEX=%s", expected_hex_path))
            $fatal(1, "PROGRAM_HEX requires EXPECTED_HEX plusarg");
         if (!$value$plusargs("EXPECTED_VALID_HEX=%s", expected_valid_hex_path))
            $fatal(1, "PROGRAM_HEX requires EXPECTED_VALID_HEX plusarg");

         use_external_program = 1;
         $display("Loading external hex:");
         $display("  program        = %0s", program_hex_path);
         $display("  expected       = %0s", expected_hex_path);
         $display("  expected_valid = %0s", expected_valid_hex_path);
         $readmemh(program_hex_path, ext_mem);
         $readmemh(expected_hex_path, expected_mem);
         $readmemh(expected_valid_hex_path, expected_valid_words);
         for (i = 0; i < 512; i = i + 1)
            expected_valid[i] = expected_valid_words[i][0];
      end
      `include "external_hex_init.vh"

      if (!use_external_program) begin
      // R-type and shift-immediate directed tests from 0_testbench_Basic.
      emit(enc_i(-100, 5'd0, FNC_ADD_SUB, 5'd1, OPC_ARI_ITYPE));
      emit(enc_i(200, 5'd0, FNC_ADD_SUB, 5'd2, OPC_ARI_ITYPE));
      emit(enc_r(FNC7_0, 5'd2, 5'd1, FNC_ADD_SUB, 5'd3));
      store_result(5'd3, 32'h00000064);
      emit(enc_r(FNC7_1, 5'd2, 5'd1, FNC_ADD_SUB, 5'd4));
      store_result(5'd4, 32'hfffffed4);
      emit(enc_r(FNC7_0, 5'd2, 5'd1, FNC_SLL, 5'd5));
      store_result(5'd5, 32'hffff9c00);
      emit(enc_r(FNC7_0, 5'd2, 5'd1, FNC_SLT, 5'd6));
      store_result(5'd6, 32'h00000001);
      emit(enc_r(FNC7_0, 5'd2, 5'd1, FNC_SLTU, 5'd7));
      store_result(5'd7, 32'h00000000);
      emit(enc_r(FNC7_0, 5'd2, 5'd1, FNC_XOR, 5'd8));
      store_result(5'd8, 32'hffffff54);
      emit(enc_r(FNC7_0, 5'd2, 5'd1, FNC_OR, 5'd9));
      store_result(5'd9, 32'hffffffdc);
      emit(enc_r(FNC7_0, 5'd2, 5'd1, FNC_AND, 5'd10));
      store_result(5'd10, 32'h00000088);
      emit(enc_r(FNC7_0, 5'd2, 5'd1, FNC_SRL_SRA, 5'd11));
      store_result(5'd11, 32'h00ffffff);
      emit(enc_r(FNC7_1, 5'd2, 5'd1, FNC_SRL_SRA, 5'd12));
      store_result(5'd12, 32'hffffffff);
      emit(enc_i({7'b0000000, 5'd20}, 5'd1, FNC_SLL, 5'd13, OPC_ARI_ITYPE));
      store_result(5'd13, 32'hf9c00000);
      emit(enc_i({7'b0000000, 5'd20}, 5'd1, FNC_SRL_SRA, 5'd14, OPC_ARI_ITYPE));
      store_result(5'd14, 32'h00000fff);
      emit(enc_i({7'b0100000, 5'd20}, 5'd1, FNC_SRL_SRA, 5'd15, OPC_ARI_ITYPE));
      store_result(5'd15, 32'hffffffff);

      // I-type arithmetic directed tests.
      emit(enc_i(-200, 5'd1, FNC_ADD_SUB, 5'd3, OPC_ARI_ITYPE));
      store_result(5'd3, 32'hfffffed4);
      emit(enc_i(-200, 5'd1, FNC_SLT, 5'd4, OPC_ARI_ITYPE));
      store_result(5'd4, 32'h00000000);
      emit(enc_i(-200, 5'd1, FNC_SLTU, 5'd5, OPC_ARI_ITYPE));
      store_result(5'd5, 32'h00000000);
      emit(enc_i(-200, 5'd1, FNC_XOR, 5'd6, OPC_ARI_ITYPE));
      store_result(5'd6, 32'h000000a4);
      emit(enc_i(-200, 5'd1, FNC_OR, 5'd7, OPC_ARI_ITYPE));
      store_result(5'd7, 32'hffffffbc);
      emit(enc_i(-200, 5'd1, FNC_AND, 5'd8, OPC_ARI_ITYPE));
      store_result(5'd8, 32'hffffff18);

      // Load subword tests.
      ext_mem[9'h180] = 32'hdeadbeef;
      emit(enc_i(32'h600, 5'd0, FNC_ADD_SUB, 5'd20, OPC_ARI_ITYPE));
      emit(enc_i(0, 5'd20, FNC_LW, 5'd2, OPC_LOAD));
      store_result(5'd2, 32'hdeadbeef);
      emit(enc_i(0, 5'd20, FNC_LH, 5'd3, OPC_LOAD));
      store_result(5'd3, 32'hffffbeef);
      emit(enc_i(2, 5'd20, FNC_LH, 5'd5, OPC_LOAD));
      store_result(5'd5, 32'hffffdead);
      emit(enc_i(0, 5'd20, FNC_LB, 5'd7, OPC_LOAD));
      store_result(5'd7, 32'hffffffef);
      emit(enc_i(1, 5'd20, FNC_LB, 5'd8, OPC_LOAD));
      store_result(5'd8, 32'hffffffbe);
      emit(enc_i(2, 5'd20, FNC_LB, 5'd9, OPC_LOAD));
      store_result(5'd9, 32'hffffffad);
      emit(enc_i(3, 5'd20, FNC_LB, 5'd10, OPC_LOAD));
      store_result(5'd10, 32'hffffffde);
      emit(enc_i(0, 5'd20, FNC_LHU, 5'd11, OPC_LOAD));
      store_result(5'd11, 32'h0000beef);
      emit(enc_i(2, 5'd20, FNC_LHU, 5'd13, OPC_LOAD));
      store_result(5'd13, 32'h0000dead);
      emit(enc_i(0, 5'd20, FNC_LBU, 5'd15, OPC_LOAD));
      store_result(5'd15, 32'h000000ef);
      emit(enc_i(1, 5'd20, FNC_LBU, 5'd16, OPC_LOAD));
      store_result(5'd16, 32'h000000be);
      emit(enc_i(2, 5'd20, FNC_LBU, 5'd17, OPC_LOAD));
      store_result(5'd17, 32'h000000ad);
      emit(enc_i(3, 5'd20, FNC_LBU, 5'd18, OPC_LOAD));
      store_result(5'd18, 32'h000000de);

      // Store byte/halfword/word tests.
      ext_mem[9'h190] = 32'h0;
      ext_mem[9'h191] = 32'h0;
      ext_mem[9'h192] = 32'h0;
      ext_mem[9'h193] = 32'h0;
      emit(enc_u(32'h12345000, 5'd21, OPC_LUI));
      emit(enc_i(32'h678, 5'd21, FNC_ADD_SUB, 5'd21, OPC_ARI_ITYPE));
      emit(enc_s(32'h640, 5'd21, 5'd0, FNC_SW));
      put_expected_addr(32'h640, 32'h12345678);
      emit(enc_s(32'h644, 5'd21, 5'd0, FNC_SH));
      put_expected_addr(32'h644, 32'h00005678);
      emit(enc_s(32'h64a, 5'd21, 5'd0, FNC_SH));
      put_expected_addr(32'h648, 32'h56780000);
      emit(enc_s(32'h650, 5'd21, 5'd0, FNC_SB));
      emit(enc_s(32'h651, 5'd21, 5'd0, FNC_SB));
      emit(enc_s(32'h652, 5'd21, 5'd0, FNC_SB));
      emit(enc_s(32'h653, 5'd21, 5'd0, FNC_SB));
      put_expected_addr(32'h650, 32'h78787878);

      // U-type tests. AUIPC expected value is tied to the actual program PC.
      emit(enc_u(32'h7fff0000, 5'd22, OPC_LUI));
      store_result(5'd22, 32'h7fff0000);
      i = pc_word;
      emit(enc_u(32'h7fff0000, 5'd23, OPC_AUIPC));
      store_result(5'd23, 32'h7fff0000 + (i * 4));

      // Branch taken and not-taken tests for all RV32I branch funct3 values.
      emit(enc_i(100, 5'd0, FNC_ADD_SUB, 5'd1, OPC_ARI_ITYPE));
      emit(enc_i(100, 5'd0, FNC_ADD_SUB, 5'd2, OPC_ARI_ITYPE));
      emit(enc_i(0, 5'd0, FNC_ADD_SUB, 5'd24, OPC_ARI_ITYPE));
      emit(enc_b(8, 5'd2, 5'd1, FNC_BEQ));
      emit(enc_i(1, 5'd0, FNC_ADD_SUB, 5'd24, OPC_ARI_ITYPE));
      emit(enc_i(2, 5'd0, FNC_ADD_SUB, 5'd24, OPC_ARI_ITYPE));
      store_result(5'd24, 32'h00000002);

      emit(enc_i(100, 5'd0, FNC_ADD_SUB, 5'd1, OPC_ARI_ITYPE));
      emit(enc_i(200, 5'd0, FNC_ADD_SUB, 5'd2, OPC_ARI_ITYPE));
      emit(enc_i(0, 5'd0, FNC_ADD_SUB, 5'd24, OPC_ARI_ITYPE));
      emit(enc_b(8, 5'd2, 5'd1, FNC_BNE));
      emit(enc_i(1, 5'd0, FNC_ADD_SUB, 5'd24, OPC_ARI_ITYPE));
      emit(enc_i(3, 5'd0, FNC_ADD_SUB, 5'd24, OPC_ARI_ITYPE));
      store_result(5'd24, 32'h00000003);

      emit(enc_i(100, 5'd0, FNC_ADD_SUB, 5'd1, OPC_ARI_ITYPE));
      emit(enc_i(200, 5'd0, FNC_ADD_SUB, 5'd2, OPC_ARI_ITYPE));
      emit(enc_i(0, 5'd0, FNC_ADD_SUB, 5'd24, OPC_ARI_ITYPE));
      emit(enc_b(8, 5'd2, 5'd1, FNC_BLT));
      emit(enc_i(1, 5'd0, FNC_ADD_SUB, 5'd24, OPC_ARI_ITYPE));
      emit(enc_i(4, 5'd0, FNC_ADD_SUB, 5'd24, OPC_ARI_ITYPE));
      store_result(5'd24, 32'h00000004);

      emit(enc_i(200, 5'd0, FNC_ADD_SUB, 5'd1, OPC_ARI_ITYPE));
      emit(enc_i(100, 5'd0, FNC_ADD_SUB, 5'd2, OPC_ARI_ITYPE));
      emit(enc_i(0, 5'd0, FNC_ADD_SUB, 5'd24, OPC_ARI_ITYPE));
      emit(enc_b(8, 5'd2, 5'd1, FNC_BGE));
      emit(enc_i(1, 5'd0, FNC_ADD_SUB, 5'd24, OPC_ARI_ITYPE));
      emit(enc_i(5, 5'd0, FNC_ADD_SUB, 5'd24, OPC_ARI_ITYPE));
      store_result(5'd24, 32'h00000005);

      emit(enc_i(1, 5'd0, FNC_ADD_SUB, 5'd1, OPC_ARI_ITYPE));
      emit(enc_i(-1, 5'd0, FNC_ADD_SUB, 5'd2, OPC_ARI_ITYPE));
      emit(enc_i(0, 5'd0, FNC_ADD_SUB, 5'd24, OPC_ARI_ITYPE));
      emit(enc_b(8, 5'd2, 5'd1, FNC_BLTU));
      emit(enc_i(1, 5'd0, FNC_ADD_SUB, 5'd24, OPC_ARI_ITYPE));
      emit(enc_i(6, 5'd0, FNC_ADD_SUB, 5'd24, OPC_ARI_ITYPE));
      store_result(5'd24, 32'h00000006);

      emit(enc_i(-1, 5'd0, FNC_ADD_SUB, 5'd1, OPC_ARI_ITYPE));
      emit(enc_i(1, 5'd0, FNC_ADD_SUB, 5'd2, OPC_ARI_ITYPE));
      emit(enc_i(0, 5'd0, FNC_ADD_SUB, 5'd24, OPC_ARI_ITYPE));
      emit(enc_b(8, 5'd2, 5'd1, FNC_BGEU));
      emit(enc_i(1, 5'd0, FNC_ADD_SUB, 5'd24, OPC_ARI_ITYPE));
      emit(enc_i(7, 5'd0, FNC_ADD_SUB, 5'd24, OPC_ARI_ITYPE));
      store_result(5'd24, 32'h00000007);

      // JAL and JALR link/skip tests.
      i = pc_word;
      emit(enc_j(8, 5'd25));
      emit(enc_i(1, 5'd0, FNC_ADD_SUB, 5'd26, OPC_ARI_ITYPE));
      emit(enc_i(9, 5'd0, FNC_ADD_SUB, 5'd27, OPC_ARI_ITYPE));
      store_result(5'd25, (i * 4) + 4);
      store_result(5'd26, 32'h00000000);
      store_result(5'd27, 32'h00000009);

      i = pc_word;
      emit(enc_i((i + 3) * 4, 5'd0, FNC_ADD_SUB, 5'd28, OPC_ARI_ITYPE));
      i = pc_word;
      emit(enc_i(0, 5'd28, 3'b000, 5'd29, OPC_JALR));
      emit(enc_i(1, 5'd0, FNC_ADD_SUB, 5'd30, OPC_ARI_ITYPE));
      emit(enc_i(10, 5'd0, FNC_ADD_SUB, 5'd31, OPC_ARI_ITYPE));
      store_result(5'd29, (i * 4) + 4);
      store_result(5'd30, 32'h00000000);
      store_result(5'd31, 32'h0000000a);

      emit(32'h0000006f);
      end

      #800000000;
      if (frame_cnt == 0)
         $fatal(1, "No RF frames observed");
      if (mem_frame_cnt == 0)
         $fatal(1, "No memory frames observed");

      if (use_external_program)
         $display("RV32I directed program source = external hex");
      else
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
