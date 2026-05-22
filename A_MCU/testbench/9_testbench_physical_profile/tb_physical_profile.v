`timescale 1ns/1ps

module tb_physical_profile;
   localparam RF_RAW = 4;
   localparam RF_REGS = 16;
   localparam RF_FRAME_BITS = RF_RAW + 8;
   localparam MEM_ADDR_BITS = 6;
   localparam MEM_HEADER_BITS = MEM_ADDR_BITS + 1;
   localparam MEM_FRAME_BITS = MEM_HEADER_BITS + 32;

   localparam OPC_JAL       = 7'b1101111;
   localparam OPC_LOAD      = 7'b0000011;
   localparam OPC_STORE     = 7'b0100011;
   localparam OPC_ARI_RTYPE = 7'b0110011;
   localparam OPC_ARI_ITYPE = 7'b0010011;
   localparam OPC_LUI       = 7'b0110111;

   localparam FNC_LW      = 3'b010;
   localparam FNC_SW      = 3'b010;
   localparam FNC_ADD_SUB = 3'b000;
   localparam FNC7_0      = 7'b0000000;

   reg clk_fast = 1'b0;
   reg clk_sys_ext = 1'b0;
   reg rst_n = 1'b0;

   always #31.25 clk_fast = ~clk_fast;
   always #500 clk_sys_ext = ~clk_sys_ext;

   wire rf_sync;
   wire rf_sck;
   wire rf_mosi;
   wire rf_miso;
   wire mem_sync;
   wire mem_sck;
   wire mem_mosi;
   wire mem_miso;

   my_mcu_top #(
      .USE_EXT_SYS_CLK(1),
      .RV32E_MODE(1),
      .MEM_ADDR_BITS(MEM_ADDR_BITS),
      .USE_RF_INTERLOCK(0),
      .DISABLE_DBUS(0),
      .WORD_MEM_ONLY(1),
      .SERV_PRE_REGISTER(1),
      .SINGLE_RF_READ(0),
      .STREAM_RS2_READ(1),
      .SHARED_SERIAL(1),
      .UNIFIED_SERIAL(1),
      .RESET_STRATEGY("STATE_ONLY")
   ) dut (
      .i_clk_fast(clk_fast),
      .i_clk_sys_ext(clk_sys_ext),
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
   reg [31:0] ext_mem [0:63];
   reg [MEM_FRAME_BITS-1:0] mem_rx_buffer = {MEM_FRAME_BITS{1'b0}};
   reg [RF_FRAME_BITS-1:0] unified_rf_rx_buffer = {RF_FRAME_BITS{1'b0}};
   integer mem_bit_cnt = 0;
   reg [31:0] mem_read_shift = 32'h00000013;
   reg [1:0] unified_rf_tx_data = 2'b00;
   reg [7:0] mem_addr = 8'h00;
   integer mem_word_index = 0;

   integer rf_frame_cnt = 0;
   integer rf_write_cnt = 0;
   integer rf_read_cnt = 0;
   integer invalid_rf_frame_cnt = 0;
   integer mem_frame_cnt = 0;
   integer mem_write_cnt = 0;
   integer mem_read_cnt = 0;
   integer error_cnt = 0;
   integer i;
   integer pc_word;
   reg done_seen = 1'b0;

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

   always @(posedge mem_sck) begin
      if (mem_sync) begin
         if (mem_bit_cnt < MEM_FRAME_BITS)
            mem_rx_buffer[MEM_FRAME_BITS-1 - mem_bit_cnt] = mem_mosi;
         if (mem_bit_cnt < RF_FRAME_BITS)
            unified_rf_rx_buffer[RF_FRAME_BITS-1 - mem_bit_cnt] = mem_mosi;
         mem_bit_cnt = mem_bit_cnt + 1;

         if (mem_bit_cnt == RF_FRAME_BITS-2) begin
            if (unified_rf_rx_buffer[RF_FRAME_BITS-2] &&
                (unified_rf_rx_buffer[RF_FRAME_BITS-3:6] < RF_REGS))
               unified_rf_tx_data = pico_ram[unified_rf_rx_buffer[RF_FRAME_BITS-3:6]][{unified_rf_rx_buffer[5:2], 1'b0} +: 2];
         end

         if (mem_bit_cnt == MEM_HEADER_BITS) begin
            mem_addr = {{(8-MEM_ADDR_BITS){1'b0}}, mem_rx_buffer[MEM_FRAME_BITS-2 -: MEM_ADDR_BITS]};
            mem_word_index = {{(8-MEM_ADDR_BITS){1'b0}}, mem_rx_buffer[MEM_FRAME_BITS-2 -: MEM_ADDR_BITS]} >> 2;
            mem_read_shift = ext_mem[mem_word_index];
         end
      end
   end

   always @(posedge mem_sync) begin
      mem_bit_cnt = 0;
      mem_rx_buffer = {MEM_FRAME_BITS{1'b0}};
      unified_rf_rx_buffer = {RF_FRAME_BITS{1'b0}};
      mem_read_shift = 32'h00000013;
      unified_rf_tx_data = 2'b00;
   end

   always @(negedge mem_sync) begin
      if (mem_bit_cnt == RF_FRAME_BITS) begin
         rf_frame_cnt = rf_frame_cnt + 1;
         if (unified_rf_rx_buffer[RF_FRAME_BITS-1]) begin
            rf_write_cnt = rf_write_cnt + 1;
            if (rf_write_cnt < 80)
               $display("TB_RF_WRITE: reg=%0d chunk=%0d data=%b",
                        unified_rf_rx_buffer[RF_FRAME_BITS-3:6],
                        unified_rf_rx_buffer[5:2],
                        unified_rf_rx_buffer[1:0]);
            if (unified_rf_rx_buffer[RF_FRAME_BITS-3:6] < RF_REGS)
               pico_ram[unified_rf_rx_buffer[RF_FRAME_BITS-3:6]][{unified_rf_rx_buffer[5:2], 1'b0} +: 2] = unified_rf_rx_buffer[1:0];
            else
               invalid_rf_frame_cnt = invalid_rf_frame_cnt + 1;
         end else if (unified_rf_rx_buffer[RF_FRAME_BITS-2]) begin
            rf_read_cnt = rf_read_cnt + 1;
            if (rf_read_cnt < 80)
               $display("TB_RF_READ: reg=%0d chunk=%0d data=%b",
                        unified_rf_rx_buffer[RF_FRAME_BITS-3:6],
                        unified_rf_rx_buffer[5:2],
                        pico_ram[unified_rf_rx_buffer[RF_FRAME_BITS-3:6]][{unified_rf_rx_buffer[5:2], 1'b0} +: 2]);
         end
      end else if (mem_bit_cnt == MEM_FRAME_BITS) begin
         mem_frame_cnt = mem_frame_cnt + 1;
         mem_addr = {{(8-MEM_ADDR_BITS){1'b0}}, mem_rx_buffer[MEM_FRAME_BITS-2 -: MEM_ADDR_BITS]};
         mem_word_index = mem_addr >> 2;

         if (mem_rx_buffer[MEM_FRAME_BITS-1]) begin
            mem_write_cnt = mem_write_cnt + 1;
            ext_mem[mem_word_index] = mem_rx_buffer[31:0];
            $display("TB_MEM_WRITE: addr=%h data=%h", mem_addr, mem_rx_buffer[31:0]);
            if (mem_addr == 8'h28)
               done_seen = 1'b1;
         end else begin
            mem_read_cnt = mem_read_cnt + 1;
            if ((mem_read_cnt < 20) || (mem_addr >= 8'h20))
               $display("TB_MEM_READ: addr=%h data=%h", mem_addr, ext_mem[mem_word_index]);
         end
      end
   end

   assign mem_miso = (mem_sync && mem_bit_cnt == RF_FRAME_BITS-2) ? unified_rf_tx_data[1] :
                     (mem_sync && mem_bit_cnt >= RF_FRAME_BITS-1 && mem_bit_cnt < RF_FRAME_BITS) ? unified_rf_tx_data[0] :
                     (mem_sync && mem_bit_cnt >= MEM_HEADER_BITS && mem_bit_cnt < MEM_FRAME_BITS) ? mem_read_shift[MEM_FRAME_BITS-1 - mem_bit_cnt] :
                     1'b0;

   assign rf_miso = 1'b0;

   task check_word;
      input [7:0] addr;
      input [31:0] expected;
      begin
         if (ext_mem[addr >> 2] !== expected) begin
            error_cnt = error_cnt + 1;
            $display("[FAIL] memory[0x%02h]=%h expected=%h", addr, ext_mem[addr >> 2], expected);
         end else begin
            $display("[PASS] memory[0x%02h]=%h", addr, ext_mem[addr >> 2]);
         end
      end
   endtask

   initial begin
      for (i = 0; i < RF_REGS; i = i + 1)
         pico_ram[i] = 32'h00000000;
      for (i = 0; i < 64; i = i + 1)
         ext_mem[i] = 32'h00000013;

      pc_word = 0;
      emit(enc_i(5, 5'd0, FNC_ADD_SUB, 5'd1, OPC_ARI_ITYPE));
      emit(enc_i(7, 5'd0, FNC_ADD_SUB, 5'd2, OPC_ARI_ITYPE));
      emit_nops(2);
      emit(enc_r(FNC7_0, 5'd2, 5'd1, FNC_ADD_SUB, 5'd3));
      emit_nops(2);
      emit(enc_s(32'h020, 5'd3, 5'd0, FNC_SW));
      emit(enc_i(32'h020, 5'd0, FNC_LW, 5'd4, OPC_LOAD));
      emit_nops(2);
      emit(enc_i(1, 5'd4, FNC_ADD_SUB, 5'd5, OPC_ARI_ITYPE));
      emit_nops(2);
      emit(enc_s(32'h024, 5'd5, 5'd0, FNC_SW));
      emit(enc_i(21, 5'd0, FNC_ADD_SUB, 5'd6, OPC_ARI_ITYPE));
      emit_nops(2);
      emit(enc_s(32'h028, 5'd6, 5'd0, FNC_SW));
      emit(enc_j(0, 5'd0));

      $display("------------------------------------------------------------");
      $display("Physical profile smoke: RV32E + %0d-bit WORD_MEM_ONLY DBUS", MEM_ADDR_BITS);
      $display("  Program words = %0d", pc_word);
      $display("  Expected writes: [0x20]=12 [0x24]=13 [0x28]=21");
      $display("------------------------------------------------------------");

      rst_n = 1'b0;
      #5000;
      rst_n = 1'b1;

      wait(done_seen);
      #50000;

      check_word(8'h20, 32'h0000000c);
      check_word(8'h24, 32'h0000000d);
      check_word(8'h28, 32'h00000015);

      if (rf_sync !== 1'b0 || rf_sck !== 1'b0 || rf_mosi !== 1'b0) begin
         error_cnt = error_cnt + 1;
         $display("[FAIL] dedicated RF pins should stay low in UNIFIED_SERIAL mode");
      end

      $display("RF frames observed = %0d writes=%0d reads=%0d invalid=%0d",
               rf_frame_cnt, rf_write_cnt, rf_read_cnt, invalid_rf_frame_cnt);
      $display("Memory frames observed = %0d writes=%0d reads=%0d",
               mem_frame_cnt, mem_write_cnt, mem_read_cnt);
      if (error_cnt == 0 && invalid_rf_frame_cnt == 0 && mem_write_cnt >= 3 && mem_read_cnt >= 1) begin
         $display("[TB PASS] physical profile LW/SW smoke passed");
         $finish;
      end else begin
         $display("[TB FAIL] physical profile smoke failed errors=%0d", error_cnt);
         $finish;
      end
   end

   initial begin
      #50000000;
      $display("[TB FAIL] timeout done_seen=%0d writes=%0d reads=%0d rf_frames=%0d mem_frames=%0d",
               done_seen, mem_write_cnt, mem_read_cnt, rf_frame_cnt, mem_frame_cnt);
      $finish;
   end
endmodule
