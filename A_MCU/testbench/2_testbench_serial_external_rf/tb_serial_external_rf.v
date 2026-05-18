`timescale 1ns/1ps

module tb_serial_external_rf();
   localparam RF_WIDTH = 2;
   localparam CSR_REGS = 4;
   localparam RF_DEPTH = 32*(32+CSR_REGS)/RF_WIDTH;
   localparam RF_AW    = $clog2(RF_DEPTH);
   localparam RAW      = $clog2(32+CSR_REGS);
   localparam RF_FRAME_BITS = RAW + 8;

   reg clk_sys = 0;
   reg clk_fast = 0;
   reg rst = 1;

   always #31.25 clk_fast = ~clk_fast;

   integer div_cnt = 0;
   always @(posedge clk_fast) begin
      div_cnt = div_cnt + 1;
      if (div_cnt == 8) begin
         clk_sys <= ~clk_sys;
         div_cnt = 0;
      end
   end

   wire sync, sck, mosi;
   wire miso;
   wire [RF_WIDTH-1:0] rdata_to_cpu;

   reg [RF_AW-1:0] waddr_sig = 0;
   reg [RF_AW-1:0] raddr_sig = 0;
   reg [RF_WIDTH-1:0] wdata_sig = 0;
   reg wen_sig = 0;
   reg ren_sig = 0;

   serv_rf_ram #(
      .width(RF_WIDTH),
      .csr_regs(4),
      .depth(RF_DEPTH)
   ) u_serial_bridge (
      .i_clk(clk_sys),
      .i_waddr(waddr_sig),
      .i_wdata(wdata_sig),
      .i_wen(wen_sig),
      .i_raddr(raddr_sig),
      .i_ren(ren_sig),
      .o_rdata(rdata_to_cpu),
      .i_clk_fast(clk_fast),
      .i_rst(rst),
      .o_ext_rf_sync(sync),
      .o_ext_rf_sck(sck),
      .o_ext_rf_mosi(mosi),
      .i_ext_rf_miso(miso)
   );

   reg [31:0] pico_ram [0:32+CSR_REGS-1];
   reg [RF_FRAME_BITS-1:0] rx_buffer;
   integer bit_cnt = 0;
   reg [1:0] pico_tx_data = 0;
   integer frame_cnt = 0;
   integer error_cnt = 0;
   reg test_active = 0;

   reg        exp_valid = 0;
   reg        exp_wen = 0;
   reg        exp_ren = 0;
   reg [RAW-1:0]  exp_reg = 0;
   reg [3:0]  exp_bit = 0;
   reg [1:0]  exp_wdata = 0;
   reg [RF_FRAME_BITS-1:0] exp_frame = 0;

   function [RF_AW-1:0] rf_addr;
      input [RAW-1:0] reg_idx;
      input [3:0] bit_idx;
      begin
         rf_addr = {reg_idx, bit_idx};
      end
   endfunction

   task fail;
      input [1023:0] msg;
      begin
         error_cnt = error_cnt + 1;
         $display("[FAIL] %0s", msg);
      end
   endtask

   task expect_next_frame;
      input        wen;
      input        ren;
      input [RAW-1:0]  reg_idx;
      input [3:0]  bit_idx;
      input [1:0]  wdata;
      begin
         exp_wen   = wen;
         exp_ren   = ren;
         exp_reg   = reg_idx;
         exp_bit   = bit_idx;
         exp_wdata = wdata;
         exp_frame = {wen, ren, reg_idx, bit_idx, wdata};
         exp_valid = 1'b1;
      end
   endtask

   task wait_frame_done;
      input integer start_count;
      begin
         while (frame_cnt <= start_count)
            @(negedge sync);
         #100;
      end
   endtask

   task expect_idle_cycles;
      input integer cycles;
      integer start_count;
      integer n;
      begin
         start_count = frame_cnt;
         for (n = 0; n < cycles; n = n + 1)
            @(posedge clk_sys);

         if (frame_cnt !== start_count) begin
            fail("Unexpected frame during idle cycles");
            $display("       start_count=%0d frame_cnt=%0d", start_count, frame_cnt);
         end else begin
            $display("[PASS] idle for %0d clk_sys cycles without frame", cycles);
         end
      end
   endtask

   task serial_write;
      input [RAW-1:0] reg_idx;
      input [3:0] chunk_idx;
      input [1:0] data;
      integer start_count;
      begin
         start_count = frame_cnt;
         expect_next_frame(1'b1, 1'b0, reg_idx, chunk_idx, data);

         @(posedge clk_sys);
         #10;
         waddr_sig = rf_addr(reg_idx, chunk_idx);
         wdata_sig = data;
         wen_sig = 1'b1;

         @(posedge clk_sys);
         #10;
         wen_sig = 1'b0;

         wait_frame_done(start_count);
         if (pico_ram[reg_idx][{chunk_idx, 1'b0} +: 2] !== data)
            fail("Pico memory write-back mismatch");
         else
            $display("[PASS] write x%0d bits[%0d:%0d] = %b",
                     reg_idx, ({chunk_idx, 1'b0} + 1), {chunk_idx, 1'b0}, data);
      end
   endtask

   task serial_read;
      input [RAW-1:0] reg_idx;
      input [3:0] chunk_idx;
      input [1:0] expected;
      integer start_count;
      reg [1:0] observed;
      begin
         start_count = frame_cnt;
         expect_next_frame(1'b0, 1'b1, reg_idx, chunk_idx, 2'b00);

         @(posedge clk_sys);
         #10;
         raddr_sig = rf_addr(reg_idx, chunk_idx);
         wdata_sig = 2'b00;
         ren_sig = 1'b1;

         @(posedge clk_sys);
         #10;
         ren_sig = 1'b0;

         wait_frame_done(start_count);
         @(posedge clk_sys);
         #10;
         observed = rdata_to_cpu;

         if (observed !== expected) begin
            fail("CPU read data mismatch");
            $display("       read x%0d bits[%0d:%0d], observed=%b expected=%b",
                     reg_idx, ({chunk_idx, 1'b0} + 1), {chunk_idx, 1'b0}, observed, expected);
         end else begin
            $display("[PASS] read  x%0d bits[%0d:%0d] = %b",
                     reg_idx, ({chunk_idx, 1'b0} + 1), {chunk_idx, 1'b0}, observed);
         end
      end
   endtask

   always @(posedge sck) begin
      if (sync) begin
         rx_buffer[RF_FRAME_BITS-1 - bit_cnt] = mosi;
         bit_cnt = bit_cnt + 1;

         if (bit_cnt == RF_FRAME_BITS-2) begin
            if (rx_buffer[RF_FRAME_BITS-2]) begin
               pico_tx_data = pico_ram[rx_buffer[RF_FRAME_BITS-3:6]][{rx_buffer[5:2], 1'b0} +: 2];
            end
         end
      end
   end

   always @(negedge sync) begin
      if (test_active) begin
         frame_cnt = frame_cnt + 1;

      if (exp_valid) begin
         if (rx_buffer !== exp_frame) begin
            fail("Serial frame mismatch");
            $display("       observed=%b expected=%b", rx_buffer, exp_frame);
         end else begin
            $display("[PASS] frame %0d = %b", frame_cnt, rx_buffer);
         end
         exp_valid = 1'b0;
      end else begin
         fail("Unexpected serial frame");
         $display("       observed=%b", rx_buffer);
      end

         if (rx_buffer[RF_FRAME_BITS-1]) begin
            pico_ram[rx_buffer[RF_FRAME_BITS-3:6]][{rx_buffer[5:2], 1'b0} +: 2] = rx_buffer[1:0];
         end
      end
   end

   always @(posedge sync) begin
      bit_cnt = 0;
      rx_buffer = {RF_FRAME_BITS{1'b0}};
   end

   assign miso = (bit_cnt == RF_FRAME_BITS-2) ? pico_tx_data[1] :
                    (bit_cnt >= RF_FRAME_BITS-1) ? pico_tx_data[0] : 1'b0;

   integer i;
   integer chunk_idx;
   reg [1:0] pattern;
   initial begin
      for (i = 0; i < 32+CSR_REGS; i = i + 1)
         pico_ram[i] = 32'h0;

      rst = 1;
      repeat (4) @(posedge clk_sys);
      rst = 0;
      repeat (2) @(posedge clk_sys);
      test_active = 1'b1;

      serial_write(5'd10, 4'd0,  2'b11);
      serial_read (5'd10, 4'd0,  2'b11);

      serial_write(5'd1,  4'd1,  2'b01);
      serial_read (5'd1,  4'd1,  2'b01);

      serial_write(5'd2,  4'd7,  2'b10);
      serial_read (5'd2,  4'd7,  2'b10);

      serial_write(5'd31, 4'd15, 2'b11);
      serial_read (5'd31, 4'd15, 2'b11);

      pico_ram[0] = 32'hFFFF_FFFF;
      serial_read (5'd0,  4'd0,  2'b00);

      expect_idle_cycles(4);

      for (chunk_idx = 0; chunk_idx < 16; chunk_idx = chunk_idx + 1) begin
         pattern = (chunk_idx[1:0] + 2'b01) & 2'b11;
         serial_write(5'd7, chunk_idx[3:0], pattern);
         serial_read (5'd7, chunk_idx[3:0], pattern);
      end

      serial_write(5'd12, 4'd0, 2'b00);
      serial_read (5'd12, 4'd0, 2'b00);

      if (error_cnt == 0) begin
         $display("[TB PASS] serial external RF bridge test passed. frames=%0d", frame_cnt);
      end else begin
         $fatal(1, "[TB FAIL] serial external RF bridge test failed. errors=%0d", error_cnt);
      end

      #1000;
      $finish;
   end
endmodule
