`timescale 1ns/1ps

module tb_my_mcu_top;
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
   reg [12:0] rx_buffer = 0;
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
   reg [31:0] last_ibus_adr = 0;
   reg [31:0] last_ibus_insn = 0;
   integer i;

   reg [31:0] ext_mem [0:255];
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
            mem_word_index = mem_addr[9:2];
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
      mem_word_index = mem_addr[9:2];

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
         rx_buffer[12 - bit_cnt] = rf_mosi;
         bit_cnt = bit_cnt + 1;

         if (bit_cnt == 11) begin
            if (rx_buffer[11])
               pico_tx_data = pico_ram[rx_buffer[10:6]][{rx_buffer[5:2], 1'b0} +: 2];
         end
      end
   end

   always @(negedge rf_sync) begin
      frame_cnt = frame_cnt + 1;
      if (rx_buffer[12]) begin
         write_frame_cnt = write_frame_cnt + 1;
         pico_ram[rx_buffer[10:6]][{rx_buffer[5:2], 1'b0} +: 2] = rx_buffer[1:0];
      end else if (rx_buffer[11]) begin
         read_frame_cnt = read_frame_cnt + 1;
      end
   end

   always @(posedge rf_sync) begin
      bit_cnt = 0;
      rx_buffer = 13'b0;
   end

   assign rf_miso = (bit_cnt >= 10 && bit_cnt <= 12) ? pico_tx_data[1] :
                    (bit_cnt >= 13) ? pico_tx_data[0] : 1'b0;

   task expect_reg;
      input [4:0] reg_idx;
      input [31:0] expected;
      begin
         if (pico_ram[reg_idx] !== expected) begin
            error_cnt = error_cnt + 1;
            $display("[FAIL] x%0d observed=%h expected=%h",
                     reg_idx, pico_ram[reg_idx], expected);
         end else begin
            $display("[PASS] x%0d = %h", reg_idx, pico_ram[reg_idx]);
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
      if (dut.wen)
         rf_ram_wen_cnt = rf_ram_wen_cnt + 1;
      if (dut.wb_ibus_cyc) begin
         fetch_cnt = fetch_cnt + 1;
         last_ibus_adr = dut.wb_ibus_adr;
         last_ibus_insn = dut.wb_ibus_rdt;
      end
   end

   initial begin
      for (i = 0; i < 32; i = i + 1)
         pico_ram[i] = 32'h0;
      for (i = 0; i < 256; i = i + 1)
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
      ext_mem[30] = 32'h0000006f; // jal  x0, 0
      ext_mem[8'h40] = 32'h00000003;
      ext_mem[8'h42] = 32'hdeadbeef;
      ext_mem[8'h43] = 32'h123480ff;
      ext_mem[8'h44] = 32'haaaa5555;
      ext_mem[8'h45] = 32'h12345678;
      ext_mem[8'h46] = 32'h40000100;
      ext_mem[8'h47] = 32'h0000005a;
      ext_mem[8'h48] = 32'h000000ff;

      #10000000;
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
      expect_reg(5'd10, 32'h00000003);
      expect_reg(5'd11, 32'h00000007);
      expect_reg(5'd12, 32'h00000003);
      expect_reg(5'd13, 32'hffffffff);
      expect_reg(5'd14, 32'h000000ff);
      expect_reg(5'd15, 32'hffff80ff);
      expect_reg(5'd16, 32'h000080ff);
      expect_reg(5'd19, 32'h0000005a);
      expect_reg(5'd20, 32'h000000a5);

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
