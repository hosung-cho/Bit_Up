`timescale 1ns/1ps

module tb_my_mcu_top;
   localparam RF_RAW = 5;
   localparam RF_FRAME_BITS = RF_RAW + 8;

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
   reg [7:0] gpio_in = 8'ha5;
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
      .i_gpio(gpio_in),
      .o_gpio(gpio_out),
      .o_gpio_oe(gpio_oe)
   );

   initial begin
      rst_n = 0;
      #200;
      rst_n = 1;
   end

   reg [31:0] pico_ram [0:31];
   reg [RF_FRAME_BITS-1:0] rx_buffer = 0;
   integer bit_cnt = 0;
   reg [1:0] pico_tx_data = 0;
   integer frame_cnt = 0;
   integer write_frame_cnt = 0;
   integer read_frame_cnt = 0;
   integer error_cnt = 0;
   integer fetch_cnt = 0;
   integer mem_frame_cnt = 0;
   integer mem_write_cnt = 0;
   integer mem_read_cnt = 0;
   integer rf_wreq_cnt = 0;
   integer wen0_cnt = 0;
   integer wen1_cnt = 0;
   integer rf_ram_wen_cnt = 0;
   integer csr_port1_cnt = 0;
   integer csr_frame_write_cnt = 0;
   integer csr_frame_nonzero_cnt = 0;
   integer invalid_rf_frame_cnt = 0;
   reg [31:0] last_ibus_adr = 0;
   reg [31:0] last_ibus_insn = 0;
   integer i;

   reg [31:0] ext_mem [0:511];
   reg [69:0] mem_rx_buffer = 0;
   integer mem_bit_cnt = 0;
   reg [31:0] mem_read_shift = 0;
   reg [31:0] mem_addr = 0;
   reg [31:0] mem_wdata = 0;
   reg [3:0] mem_sel = 0;
   integer mem_word_index = 0;

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
   end

   assign mem_miso = (mem_sync && mem_bit_cnt >= 38 && mem_bit_cnt < 70) ?
                     mem_read_shift[69 - mem_bit_cnt] : 1'b0;

   always @(posedge rf_sck) begin
      if (rf_sync) begin
         rx_buffer[RF_FRAME_BITS-1 - bit_cnt] = rf_mosi;
         bit_cnt = bit_cnt + 1;

         if (bit_cnt == RF_FRAME_BITS-2) begin
            if (rx_buffer[RF_FRAME_BITS-2] && rx_buffer[RF_FRAME_BITS-3:6] < 32)
               pico_tx_data = pico_ram[rx_buffer[RF_FRAME_BITS-3:6]][{rx_buffer[5:2], 1'b0} +: 2];
         end
      end
   end

   always @(negedge rf_sync) begin
      frame_cnt = frame_cnt + 1;
      if (rx_buffer[RF_FRAME_BITS-1]) begin
         write_frame_cnt = write_frame_cnt + 1;
         if (rx_buffer[RF_FRAME_BITS-3:6] >= 6'd32) begin
            csr_frame_write_cnt = csr_frame_write_cnt + 1;
            if (rx_buffer[1:0] != 2'b00)
               csr_frame_nonzero_cnt = csr_frame_nonzero_cnt + 1;
         end
         if (rx_buffer[RF_FRAME_BITS-3:6] < 32)
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

   task expect_reg;
      input [RF_RAW-1:0] reg_idx;
      input [31:0] expected;
      begin
         if (pico_ram[reg_idx] !== expected) begin
            error_cnt = error_cnt + 1;
            $display("[FAIL] rf%0d observed=%h expected=%h",
                     reg_idx, pico_ram[reg_idx], expected);
         end else begin
            $display("[PASS] rf%0d = %h", reg_idx, pico_ram[reg_idx]);
         end
      end
   endtask

   task expect_mem_word;
      input [8:0] word_idx;
      input [31:0] expected;
      begin
         if (ext_mem[word_idx] !== expected) begin
            error_cnt = error_cnt + 1;
            $display("[FAIL] memory[0x%03h]=%h expected=%h",
                     {word_idx, 2'b00}, ext_mem[word_idx], expected);
         end else begin
            $display("[PASS] memory[0x%03h] = %h",
                     {word_idx, 2'b00}, ext_mem[word_idx]);
         end
      end
   endtask

   always @(posedge dut.clk_sys) begin
      if (dut.rf_wreq)
         rf_wreq_cnt = rf_wreq_cnt + 1;
      if (dut.wen0)
         wen0_cnt = wen0_cnt + 1;
      if (dut.wen1)
         wen1_cnt = wen1_cnt + 1;
      if (dut.wen1 && dut.wreg1 >= 6'd32)
         csr_port1_cnt = csr_port1_cnt + 1;
      if (dut.wen)
         rf_ram_wen_cnt = rf_ram_wen_cnt + 1;
      if (dut.wb_ibus_ack) begin
         fetch_cnt = fetch_cnt + 1;
         last_ibus_adr = dut.wb_ibus_adr;
         last_ibus_insn = dut.wb_ibus_rdt;
      end
   end

   initial begin
      for (i = 0; i < 32; i = i + 1)
         pico_ram[i] = 32'h0;
      for (i = 0; i < 512; i = i + 1)
         ext_mem[i] = 32'h00000013;

      ext_mem[0] = 32'h00300513;  // addi x10, x0, 3
      ext_mem[1] = 32'h00450593;  // addi x11, x10, 4
      ext_mem[2] = 32'h10002603;  // lw   x12, 0x100(x0)
      ext_mem[3] = 32'h10c00683;  // lb   x13, 0x10c(x0)
      ext_mem[4] = 32'h10c04703;  // lbu  x14, 0x10c(x0)
      ext_mem[5] = 32'h10c01783;  // lh   x15, 0x10c(x0)
      ext_mem[6] = 32'h10c05803;  // lhu  x16, 0x10c(x0)
      ext_mem[7] = 32'h10c02223;  // sw   x12, 0x104(x0)
      ext_mem[8] = 32'h10002423;  // sw   x0,  0x108(x0)
      ext_mem[9] = 32'h10e00823;  // sb   x14, 0x110(x0)
      ext_mem[10] = 32'h11001a23; // sh   x16, 0x114(x0)
      ext_mem[11] = 32'h11802883; // lw   x17, 0x118(x0)  GPIO base
      ext_mem[12] = 32'h00000013; // nop
      ext_mem[13] = 32'h00000013; // nop
      ext_mem[14] = 32'h00000013; // nop
      ext_mem[15] = 32'h00000013; // nop
      ext_mem[16] = 32'h11c02903; // lw   x18, 0x11c(x0) GPIO DATA_OUT value
      ext_mem[17] = 32'h00000013; // nop
      ext_mem[18] = 32'h00000013; // nop
      ext_mem[19] = 32'h00000013; // nop
      ext_mem[20] = 32'h00000013; // nop
      ext_mem[21] = 32'h0128a023; // sw   x18, 0x0(x17)  GPIO DATA_OUT
      ext_mem[22] = 32'h0008a983; // lw   x19, 0x0(x17)  GPIO DATA_OUT
      ext_mem[23] = 32'h12002903; // lw   x18, 0x120(x0) GPIO OE value
      ext_mem[24] = 32'h00000013; // nop
      ext_mem[25] = 32'h00000013; // nop
      ext_mem[26] = 32'h00000013; // nop
      ext_mem[27] = 32'h00000013; // nop
      ext_mem[28] = 32'h0128a423; // sw   x18, 0x8(x17)  GPIO OE
      ext_mem[29] = 32'h0048aa03; // lw   x20, 0x4(x17)  GPIO DATA_IN
      ext_mem[30] = 32'h12c02a83; // lw   x21, 0x12c(x0)
      ext_mem[31] = 32'h00000013; // nop
      ext_mem[32] = 32'h00000013; // nop
      ext_mem[33] = 32'h000a8463; // beq  x21, x0, +8  (not taken)
      ext_mem[34] = 32'h12c02423; // sw   x12, 0x128(x0)
      ext_mem[35] = 32'h000a9463; // bne  x21, x0, +8  (taken)
      ext_mem[36] = 32'h12b02423; // sw   x11, 0x128(x0) (skipped)
      ext_mem[37] = 32'h00800bef; // jal  x23, +8
      ext_mem[38] = 32'h05500b13; // addi x22, x0, 0x55 (skipped)
      ext_mem[39] = 32'h12402c03; // lw   x24, 0x124(x0) JALR target
      ext_mem[40] = 32'h00000013; // nop
      ext_mem[41] = 32'h00000013; // nop
      ext_mem[42] = 32'h000c0ce7; // jalr x25, 0(x24)
      ext_mem[43] = 32'h06600b13; // addi x22, x0, 0x66 (skipped)
      ext_mem[44] = 32'h07700b13; // addi x22, x0, 0x77 (skipped)
      ext_mem[45] = 32'h00000013; // nop
      ext_mem[46] = 32'h00000013; // nop
      ext_mem[47] = 32'h00000013; // nop
      ext_mem[48] = 32'h3400dd73; // csrrwi x26, mscratch, 1
      ext_mem[49] = 32'h34002df3; // csrrs x27, mscratch, x0
      ext_mem[50] = 32'h30515e73; // csrrwi x28, mtvec, 2
      ext_mem[51] = 32'h30502e73; // csrrs x28, mtvec, x0
      ext_mem[52] = 32'h3411def3; // csrrwi x29, mepc, 3
      ext_mem[53] = 32'h34102ef3; // csrrs x29, mepc, x0
      ext_mem[54] = 32'h34325f73; // csrrwi x30, mtval, 4
      ext_mem[55] = 32'h34302f73; // csrrs x30, mtval, x0
      ext_mem[56] = 32'h1200006f; // jal  x0, 0x200
      ext_mem[128] = 32'h00500293; // addi x5, x0, 5
      ext_mem[129] = 32'h00300313; // addi x6, x0, 3
      ext_mem[130] = 32'h123453b7; // lui  x7, 0x12345
      ext_mem[131] = 32'h00000013; // nop
      ext_mem[132] = 32'h00000013; // nop
      ext_mem[133] = 32'h00000013; // nop
      ext_mem[134] = 32'h00000013; // nop
      ext_mem[135] = 32'h18702023; // sw   x7, 0x180(x0)
      ext_mem[136] = 32'h00000397; // auipc x7, 0
      ext_mem[137] = 32'h00000013; // nop
      ext_mem[138] = 32'h00000013; // nop
      ext_mem[139] = 32'h00000013; // nop
      ext_mem[140] = 32'h00000013; // nop
      ext_mem[141] = 32'h18702223; // sw   x7, 0x184(x0)
      ext_mem[142] = 32'h006283b3; // add  x7, x5, x6
      ext_mem[143] = 32'h00000013; // nop
      ext_mem[144] = 32'h00000013; // nop
      ext_mem[145] = 32'h00000013; // nop
      ext_mem[146] = 32'h00000013; // nop
      ext_mem[147] = 32'h18702423; // sw   x7, 0x188(x0)
      ext_mem[148] = 32'h406283b3; // sub  x7, x5, x6
      ext_mem[149] = 32'h00000013; // nop
      ext_mem[150] = 32'h00000013; // nop
      ext_mem[151] = 32'h00000013; // nop
      ext_mem[152] = 32'h00000013; // nop
      ext_mem[153] = 32'h18702623; // sw   x7, 0x18c(x0)
      ext_mem[154] = 32'h006293b3; // sll  x7, x5, x6
      ext_mem[155] = 32'h00000013; // nop
      ext_mem[156] = 32'h00000013; // nop
      ext_mem[157] = 32'h00000013; // nop
      ext_mem[158] = 32'h00000013; // nop
      ext_mem[159] = 32'h18702823; // sw   x7, 0x190(x0)
      ext_mem[160] = 32'h005323b3; // slt  x7, x6, x5
      ext_mem[161] = 32'h00000013; // nop
      ext_mem[162] = 32'h00000013; // nop
      ext_mem[163] = 32'h00000013; // nop
      ext_mem[164] = 32'h00000013; // nop
      ext_mem[165] = 32'h18702a23; // sw   x7, 0x194(x0)
      ext_mem[166] = 32'h005333b3; // sltu x7, x6, x5
      ext_mem[167] = 32'h00000013; // nop
      ext_mem[168] = 32'h00000013; // nop
      ext_mem[169] = 32'h00000013; // nop
      ext_mem[170] = 32'h00000013; // nop
      ext_mem[171] = 32'h18702c23; // sw   x7, 0x198(x0)
      ext_mem[172] = 32'h0062c3b3; // xor  x7, x5, x6
      ext_mem[173] = 32'h00000013; // nop
      ext_mem[174] = 32'h00000013; // nop
      ext_mem[175] = 32'h00000013; // nop
      ext_mem[176] = 32'h00000013; // nop
      ext_mem[177] = 32'h18702e23; // sw   x7, 0x19c(x0)
      ext_mem[178] = 32'h0062d3b3; // srl  x7, x5, x6
      ext_mem[179] = 32'h00000013; // nop
      ext_mem[180] = 32'h00000013; // nop
      ext_mem[181] = 32'h00000013; // nop
      ext_mem[182] = 32'h00000013; // nop
      ext_mem[183] = 32'h1a702023; // sw   x7, 0x1a0(x0)
      ext_mem[184] = 32'h0062e3b3; // or   x7, x5, x6
      ext_mem[185] = 32'h00000013; // nop
      ext_mem[186] = 32'h00000013; // nop
      ext_mem[187] = 32'h00000013; // nop
      ext_mem[188] = 32'h00000013; // nop
      ext_mem[189] = 32'h1a702223; // sw   x7, 0x1a4(x0)
      ext_mem[190] = 32'h0062f3b3; // and  x7, x5, x6
      ext_mem[191] = 32'h00000013; // nop
      ext_mem[192] = 32'h00000013; // nop
      ext_mem[193] = 32'h00000013; // nop
      ext_mem[194] = 32'h00000013; // nop
      ext_mem[195] = 32'h1a702423; // sw   x7, 0x1a8(x0)
      ext_mem[196] = 32'hff800413; // addi x8, x0, -8
      ext_mem[197] = 32'h00100493; // addi x9, x0, 1
      ext_mem[198] = 32'h409453b3; // sra  x7, x8, x9
      ext_mem[199] = 32'h00000013; // nop
      ext_mem[200] = 32'h00000013; // nop
      ext_mem[201] = 32'h00000013; // nop
      ext_mem[202] = 32'h00000013; // nop
      ext_mem[203] = 32'h1a702623; // sw   x7, 0x1ac(x0)
      ext_mem[204] = 32'h00432393; // slti x7, x6, 4
      ext_mem[205] = 32'h00000013; // nop
      ext_mem[206] = 32'h00000013; // nop
      ext_mem[207] = 32'h00000013; // nop
      ext_mem[208] = 32'h00000013; // nop
      ext_mem[209] = 32'h1a702823; // sw   x7, 0x1b0(x0)
      ext_mem[210] = 32'h00433393; // sltiu x7, x6, 4
      ext_mem[211] = 32'h00000013; // nop
      ext_mem[212] = 32'h00000013; // nop
      ext_mem[213] = 32'h00000013; // nop
      ext_mem[214] = 32'h00000013; // nop
      ext_mem[215] = 32'h1a702a23; // sw   x7, 0x1b4(x0)
      ext_mem[216] = 32'h00f2c393; // xori x7, x5, 0xf
      ext_mem[217] = 32'h00000013; // nop
      ext_mem[218] = 32'h00000013; // nop
      ext_mem[219] = 32'h00000013; // nop
      ext_mem[220] = 32'h00000013; // nop
      ext_mem[221] = 32'h1a702c23; // sw   x7, 0x1b8(x0)
      ext_mem[222] = 32'h0022e393; // ori  x7, x5, 2
      ext_mem[223] = 32'h00000013; // nop
      ext_mem[224] = 32'h00000013; // nop
      ext_mem[225] = 32'h00000013; // nop
      ext_mem[226] = 32'h00000013; // nop
      ext_mem[227] = 32'h1a702e23; // sw   x7, 0x1bc(x0)
      ext_mem[228] = 32'h0012f393; // andi x7, x5, 1
      ext_mem[229] = 32'h00000013; // nop
      ext_mem[230] = 32'h00000013; // nop
      ext_mem[231] = 32'h00000013; // nop
      ext_mem[232] = 32'h00000013; // nop
      ext_mem[233] = 32'h1c702023; // sw   x7, 0x1c0(x0)
      ext_mem[234] = 32'h00229393; // slli x7, x5, 2
      ext_mem[235] = 32'h00000013; // nop
      ext_mem[236] = 32'h00000013; // nop
      ext_mem[237] = 32'h00000013; // nop
      ext_mem[238] = 32'h00000013; // nop
      ext_mem[239] = 32'h1c702223; // sw   x7, 0x1c4(x0)
      ext_mem[240] = 32'h0012d393; // srli x7, x5, 1
      ext_mem[241] = 32'h00000013; // nop
      ext_mem[242] = 32'h00000013; // nop
      ext_mem[243] = 32'h00000013; // nop
      ext_mem[244] = 32'h00000013; // nop
      ext_mem[245] = 32'h1c702423; // sw   x7, 0x1c8(x0)
      ext_mem[246] = 32'h40145393; // srai x7, x8, 1
      ext_mem[247] = 32'h00000013; // nop
      ext_mem[248] = 32'h00000013; // nop
      ext_mem[249] = 32'h00000013; // nop
      ext_mem[250] = 32'h00000013; // nop
      ext_mem[251] = 32'h1c702623; // sw   x7, 0x1cc(x0)
      ext_mem[252] = 32'h00100393; // addi x7, x0, 1
      ext_mem[253] = 32'h00534463; // blt  x6, x5, +8
      ext_mem[254] = 32'h00000393; // addi x7, x0, 0 (skipped)
      ext_mem[255] = 32'h00000013; // nop
      ext_mem[256] = 32'h00000013; // nop
      ext_mem[257] = 32'h00000013; // nop
      ext_mem[258] = 32'h00000013; // nop
      ext_mem[259] = 32'h1c702823; // sw   x7, 0x1d0(x0)
      ext_mem[260] = 32'h00100393; // addi x7, x0, 1
      ext_mem[261] = 32'h0062d463; // bge  x5, x6, +8
      ext_mem[262] = 32'h00000393; // addi x7, x0, 0 (skipped)
      ext_mem[263] = 32'h00000013; // nop
      ext_mem[264] = 32'h00000013; // nop
      ext_mem[265] = 32'h00000013; // nop
      ext_mem[266] = 32'h00000013; // nop
      ext_mem[267] = 32'h1c702a23; // sw   x7, 0x1d4(x0)
      ext_mem[268] = 32'h00100393; // addi x7, x0, 1
      ext_mem[269] = 32'h00536463; // bltu x6, x5, +8
      ext_mem[270] = 32'h00000393; // addi x7, x0, 0 (skipped)
      ext_mem[271] = 32'h00000013; // nop
      ext_mem[272] = 32'h00000013; // nop
      ext_mem[273] = 32'h00000013; // nop
      ext_mem[274] = 32'h00000013; // nop
      ext_mem[275] = 32'h1c702c23; // sw   x7, 0x1d8(x0)
      ext_mem[276] = 32'h00100393; // addi x7, x0, 1
      ext_mem[277] = 32'h0062f463; // bgeu x5, x6, +8
      ext_mem[278] = 32'h00000393; // addi x7, x0, 0 (skipped)
      ext_mem[279] = 32'h00000013; // nop
      ext_mem[280] = 32'h00000013; // nop
      ext_mem[281] = 32'h00000013; // nop
      ext_mem[282] = 32'h00000013; // nop
      ext_mem[283] = 32'h1c702e23; // sw   x7, 0x1dc(x0)
      ext_mem[284] = 32'h00100393; // addi x7, x0, 1
      ext_mem[285] = 32'h00528463; // beq  x5, x5, +8
      ext_mem[286] = 32'h00000393; // addi x7, x0, 0 (skipped)
      ext_mem[287] = 32'h00000013; // nop
      ext_mem[288] = 32'h00000013; // nop
      ext_mem[289] = 32'h00000013; // nop
      ext_mem[290] = 32'h00000013; // nop
      ext_mem[291] = 32'h1e702023; // sw   x7, 0x1e0(x0)
      ext_mem[292] = 32'h00100393; // addi x7, x0, 1
      ext_mem[293] = 32'h00629463; // bne  x5, x6, +8
      ext_mem[294] = 32'h00000393; // addi x7, x0, 0 (skipped)
      ext_mem[295] = 32'h00000013; // nop
      ext_mem[296] = 32'h00000013; // nop
      ext_mem[297] = 32'h00000013; // nop
      ext_mem[298] = 32'h00000013; // nop
      ext_mem[299] = 32'h1e702223; // sw   x7, 0x1e4(x0)
      ext_mem[384] = 32'h342020f3; // csrrs x1, mcause, x0
      ext_mem[385] = 32'h00000013; // nop
      ext_mem[386] = 32'h00000013; // nop
      ext_mem[387] = 32'h00000013; // nop
      ext_mem[388] = 32'h00000013; // nop
      ext_mem[389] = 32'h70102423; // sw    x1, 0x708(x0)
      ext_mem[390] = 32'h4bc00113; // addi  x2, x0, 0x4bc (return after ecall)
      ext_mem[391] = 32'h00000013; // nop
      ext_mem[392] = 32'h00000013; // nop
      ext_mem[393] = 32'h00000013; // nop
      ext_mem[394] = 32'h00000013; // nop
      ext_mem[395] = 32'h70202023; // sw    x2, 0x700(x0)
      ext_mem[396] = 32'h00000013; // nop
      ext_mem[397] = 32'h00000013; // nop
      ext_mem[398] = 32'h00000013; // nop
      ext_mem[399] = 32'h00000013; // nop
      ext_mem[400] = 32'h341111f3; // csrrw x3, mepc, x2
      ext_mem[401] = 32'h00000013; // nop
      ext_mem[402] = 32'h00000013; // nop
      ext_mem[403] = 32'h00000013; // nop
      ext_mem[404] = 32'h00000013; // nop
      ext_mem[405] = 32'h34102273; // csrrs x4, mepc, x0
      ext_mem[406] = 32'h00000013; // nop
      ext_mem[407] = 32'h00000013; // nop
      ext_mem[408] = 32'h00000013; // nop
      ext_mem[409] = 32'h00000013; // nop
      ext_mem[410] = 32'h70402623; // sw   x4, 0x70c(x0)
      ext_mem[411] = 32'h00000013; // nop
      ext_mem[412] = 32'h00000013; // nop
      ext_mem[413] = 32'h00000013; // nop
      ext_mem[414] = 32'h00000013; // nop
      ext_mem[415] = 32'h30200073; // mret
      ext_mem[300] = 32'h60000f93; // addi x31, x0, 0x600
      ext_mem[301] = 32'h305f9073; // csrrw x0, mtvec, x31
      ext_mem[302] = 32'h00000073; // ecall
      ext_mem[303] = 32'h00100393; // addi x7, x0, 1   (executed after mret)
      ext_mem[304] = 32'h00000013; // nop
      ext_mem[305] = 32'h00000013; // nop
      ext_mem[306] = 32'h00000013; // nop
      ext_mem[307] = 32'h00000013; // nop
      ext_mem[308] = 32'h70702223; // sw   x7, 0x704(x0)
      ext_mem[309] = 32'h0000006f; // jal  x0, 0
      ext_mem[8'h40] = 32'h00000003;
      ext_mem[8'h42] = 32'hdeadbeef;
      ext_mem[8'h43] = 32'h123480ff;
      ext_mem[8'h44] = 32'haaaa5555;
      ext_mem[8'h45] = 32'h12345678;
      ext_mem[8'h46] = 32'h40000100;
      ext_mem[8'h47] = 32'h0000005a;
      ext_mem[8'h48] = 32'h000000ff;
      ext_mem[8'h49] = 32'h000000b8;
      ext_mem[8'h4a] = 32'h00000000;
      ext_mem[8'h4b] = 32'h00000001;

      #120000000;
      if (frame_cnt == 0)
         $fatal(1, "No RF frames observed");
      if (mem_frame_cnt == 0)
         $fatal(1, "No memory frames observed");

      $display("RF frames observed = %0d writes=%0d reads=%0d",
               frame_cnt, write_frame_cnt, read_frame_cnt);
      $display("Memory frames observed = %0d writes=%0d reads=%0d data[0x100]=%h",
               mem_frame_cnt, mem_write_cnt, mem_read_cnt, ext_mem[8'h40]);
      $display("Instruction fetches = %0d last_pc=%h last_insn=%h",
               fetch_cnt, last_ibus_adr, last_ibus_insn);
      $display("RF control = wreq=%0d wen0=%0d wen1=%0d",
               rf_wreq_cnt, wen0_cnt, wen1_cnt);
      $display("RF adapter = ram_wen=%0d", rf_ram_wen_cnt);
      $display("CSR write counters = port1=%0d frame_writes=%0d nonzero=%0d",
               csr_port1_cnt, csr_frame_write_cnt, csr_frame_nonzero_cnt);
      $display("Invalid RF frames ignored = %0d", invalid_rf_frame_cnt);
      $display("CSR RF slots = rf32:%h rf33:%h rf34:%h rf35:%h",
               pico_ram[32], pico_ram[33], pico_ram[34], pico_ram[35]);
      expect_reg(6'd5, 32'h00000005);
      expect_reg(6'd6, 32'h00000003);
      expect_reg(6'd8, 32'hfffffff8);
      expect_reg(6'd9, 32'h00000001);
      expect_reg(6'd10, 32'h00000003);
      expect_reg(6'd11, 32'h00000007);
      expect_reg(6'd12, 32'h00000003);
      expect_reg(6'd13, 32'hffffffff);
      expect_reg(6'd14, 32'h000000ff);
      expect_reg(6'd15, 32'hffff80ff);
      expect_reg(6'd16, 32'h000080ff);
      expect_reg(6'd19, 32'h0000005a);
      expect_reg(6'd20, 32'h000000a5);
      expect_reg(6'd21, 32'h00000001);
      expect_reg(6'd23, 32'h00000098);
      expect_reg(6'd24, 32'h000000b8);
      expect_reg(6'd25, 32'h000000ac);
      expect_reg(6'd26, 32'h00000000);
      expect_reg(6'd27, 32'h00000001);
      expect_reg(6'd28, 32'h00000002);
      expect_reg(6'd29, 32'h00000003);
      expect_reg(6'd30, 32'h00000004);
      expect_reg(6'd32, 32'h00000001);
      expect_reg(6'd33, 32'h00000600);
      expect_reg(6'd34, 32'h000004bc);
      expect_reg(6'd35, 32'h00000000);

      if (ext_mem[8'h40] !== 32'h00000003) begin
         error_cnt = error_cnt + 1;
         $display("[FAIL] memory[0x100]=%h expected=00000003", ext_mem[8'h40]);
      end else begin
         $display("[PASS] memory[0x100] = %h", ext_mem[8'h40]);
      end

      if (ext_mem[8'h41] !== 32'h00000003) begin
         error_cnt = error_cnt + 1;
         $display("[FAIL] memory[0x104]=%h expected=00000003", ext_mem[8'h41]);
      end else begin
         $display("[PASS] memory[0x104] = %h", ext_mem[8'h41]);
      end

      if (ext_mem[8'h42] !== 32'h00000000) begin
         error_cnt = error_cnt + 1;
         $display("[FAIL] memory[0x108]=%h expected=00000000", ext_mem[8'h42]);
      end else begin
         $display("[PASS] memory[0x108] = %h", ext_mem[8'h42]);
      end

      if (ext_mem[8'h44] !== 32'haaaa55ff) begin
         error_cnt = error_cnt + 1;
         $display("[FAIL] memory[0x110]=%h expected=aaaa55ff", ext_mem[8'h44]);
      end else begin
         $display("[PASS] memory[0x110] = %h", ext_mem[8'h44]);
      end

      if (ext_mem[8'h45] !== 32'h123480ff) begin
         error_cnt = error_cnt + 1;
         $display("[FAIL] memory[0x114]=%h expected=123480ff", ext_mem[8'h45]);
      end else begin
         $display("[PASS] memory[0x114] = %h", ext_mem[8'h45]);
      end

      if (ext_mem[8'h4a] !== 32'h00000003) begin
         error_cnt = error_cnt + 1;
         $display("[FAIL] memory[0x128]=%h expected=00000003", ext_mem[8'h4a]);
      end else begin
         $display("[PASS] memory[0x128] = %h", ext_mem[8'h4a]);
      end

      expect_mem_word(8'h60, 32'h12345000);
      expect_mem_word(8'h61, 32'h00000220);
      expect_mem_word(8'h62, 32'h00000008);
      expect_mem_word(8'h63, 32'h00000002);
      expect_mem_word(8'h64, 32'h00000028);
      expect_mem_word(8'h65, 32'h00000001);
      expect_mem_word(8'h66, 32'h00000001);
      expect_mem_word(8'h67, 32'h00000006);
      expect_mem_word(8'h68, 32'h00000000);
      expect_mem_word(8'h69, 32'h00000007);
      expect_mem_word(8'h6a, 32'h00000001);
      expect_mem_word(8'h6b, 32'hfffffffc);
      expect_mem_word(8'h6c, 32'h00000001);
      expect_mem_word(8'h6d, 32'h00000001);
      expect_mem_word(8'h6e, 32'h0000000a);
      expect_mem_word(8'h6f, 32'h00000007);
      expect_mem_word(8'h70, 32'h00000001);
      expect_mem_word(8'h71, 32'h00000014);
      expect_mem_word(8'h72, 32'h00000002);
      expect_mem_word(8'h73, 32'hfffffffc);
      expect_mem_word(8'h74, 32'h00000001);
      expect_mem_word(8'h75, 32'h00000001);
      expect_mem_word(8'h76, 32'h00000001);
      expect_mem_word(8'h77, 32'h00000001);
      expect_mem_word(8'h78, 32'h00000001);
      expect_mem_word(8'h79, 32'h00000001);
      expect_mem_word(9'h1c0, 32'h000004bc);
      expect_mem_word(9'h1c1, 32'h00000001);
      expect_mem_word(9'h1c2, 32'h0000000b);
      expect_mem_word(9'h1c3, 32'h000004bc);

      if (gpio_out !== 8'h5a) begin
         error_cnt = error_cnt + 1;
         $display("[FAIL] gpio_out=%h expected=5a", gpio_out);
      end else begin
         $display("[PASS] gpio_out = %h", gpio_out);
      end

      if (gpio_oe !== 8'hff) begin
         error_cnt = error_cnt + 1;
         $display("[FAIL] gpio_oe=%h expected=ff", gpio_oe);
      end else begin
         $display("[PASS] gpio_oe = %h", gpio_oe);
      end

      if (error_cnt == 0)
         $display("[TB PASS] my_mcu_top executed off-chip instruction/data memory program");
      else
         $fatal(1, "[TB FAIL] my_mcu_top program result mismatch. errors=%0d", error_cnt);

      $finish;
   end
endmodule
