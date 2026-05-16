`timescale 1ns/1ps

module tb_my_mcu_top;
   reg clk_fast = 0;
   reg rst_n = 0;

   always #31.25 clk_fast = ~clk_fast;

   wire rf_sync;
   wire rf_sck;
   wire rf_mosi;
   wire rf_miso;
   reg [31:0] ibus_rdt = 32'h00000013;
   reg        ibus_ack = 1'b0;

   my_mcu_top dut (
      .i_clk_fast(clk_fast),
      .i_rst_n(rst_n),
      .o_rf_sync(rf_sync),
      .o_rf_sck(rf_sck),
      .o_rf_mosi(rf_mosi),
      .i_rf_miso(rf_miso),
      .o_uart_tx(),
      .i_uart_rx(1'b1)
   );

   function [31:0] instr_at;
      input [31:0] addr;
      begin
         case (addr[5:2])
            4'd0: instr_at = 32'h00300513; // addi x10, x0, 3
            4'd1: instr_at = 32'h00450593; // addi x11, x10, 4
            4'd2: instr_at = 32'h00b50633; // add  x12, x10, x11
            4'd3: instr_at = 32'h0000006f; // jal  x0, 0
            default: instr_at = 32'h00000013;
         endcase
      end
   endfunction

   initial begin
      force dut.wb_ibus_rdt = ibus_rdt;
      force dut.wb_ibus_ack = ibus_ack;
      force dut.wb_dbus_rdt = 32'h00000000;
      force dut.wb_dbus_ack = 1'b0;
   end

   always @(posedge dut.clk_sys) begin
      ibus_rdt <= instr_at(dut.wb_ibus_adr);
      ibus_ack <= dut.wb_ibus_cyc;
   end

   initial begin
      rst_n = 0;
      #200;
      rst_n = 1;
   end

   reg [31:0] pico_ram [0:15];
   reg [12:0] rx_buffer = 0;
   integer bit_cnt = 0;
   reg [1:0] pico_tx_data = 0;
   integer frame_cnt = 0;
   integer write_frame_cnt = 0;
   integer read_frame_cnt = 0;
   integer error_cnt = 0;
   integer fetch_cnt = 0;
   integer rf_wreq_cnt = 0;
   integer wen0_cnt = 0;
   integer wen1_cnt = 0;
   integer rf_ram_wen_cnt = 0;
   reg [31:0] last_ibus_adr = 0;
   reg [31:0] last_ibus_insn = 0;
   integer i;

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
         last_ibus_insn = ibus_rdt;
      end
   end

   initial begin
      for (i = 0; i < 16; i = i + 1)
         pico_ram[i] = 32'h0;

      #10000000;
      if (frame_cnt == 0)
         $fatal(1, "No RF frames observed");

      $display("RF frames observed = %0d writes=%0d reads=%0d",
               frame_cnt, write_frame_cnt, read_frame_cnt);
      $display("Instruction fetches = %0d last_pc=%h last_insn=%h",
               fetch_cnt, last_ibus_adr, last_ibus_insn);
      $display("RF control = wreq=%0d wen0=%0d wen1=%0d",
               rf_wreq_cnt, wen0_cnt, wen1_cnt);
      $display("RF adapter = ram_wen=%0d", rf_ram_wen_cnt);
      expect_reg(5'd10, 32'h00000003);
      expect_reg(5'd11, 32'h00000007);
      expect_reg(5'd12, 32'h0000000a);

      if (error_cnt == 0)
         $display("[TB PASS] my_mcu_top executed register-dependent program");
      else
         $fatal(1, "[TB FAIL] my_mcu_top program result mismatch. errors=%0d", error_cnt);

      $finish;
   end
endmodule
