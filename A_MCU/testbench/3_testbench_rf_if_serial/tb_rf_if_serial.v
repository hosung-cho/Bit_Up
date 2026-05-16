`timescale 1ns/1ps

module tb_rf_if_serial();
   localparam W         = 1;
   localparam RF_WIDTH  = W * 2;
   localparam CSR_REGS  = 4;
   localparam RF_DEPTH  = (32*(32+CSR_REGS))/RF_WIDTH;
   localparam RF_AW     = $clog2(RF_DEPTH);
   localparam RAW       = $clog2(32+CSR_REGS);
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

   reg i_wreq = 0;
   reg i_rreq = 0;
   wire o_ready;

   reg [RAW-1:0] i_wreg0 = 0;
   reg [RAW-1:0] i_wreg1 = 0;
   reg i_wen0 = 0;
   reg i_wen1 = 0;
   reg i_wdata0 = 0;
   reg i_wdata1 = 0;

   reg [RAW-1:0] i_rreg0 = 0;
   reg [RAW-1:0] i_rreg1 = 0;
   wire o_rdata0;
   wire o_rdata1;

   wire [RF_AW-1:0] rf_waddr;
   wire [RF_WIDTH-1:0] rf_wdata;
   wire rf_wen;
   wire [RF_AW-1:0] rf_raddr;
   wire rf_ren;
   wire [RF_WIDTH-1:0] rf_rdata;

   wire sync, sck, mosi, miso;

   serv_rf_ram_if #(
      .width(RF_WIDTH),
      .W(W),
      .reset_strategy("MINI"),
      .csr_regs(CSR_REGS)
   ) u_rf_if (
      .i_clk(clk_sys),
      .i_rst(rst),
      .i_wreq(i_wreq),
      .i_rreq(i_rreq),
      .o_ready(o_ready),
      .i_wreg0(i_wreg0),
      .i_wreg1(i_wreg1),
      .i_wen0(i_wen0),
      .i_wen1(i_wen1),
      .i_wdata0(i_wdata0),
      .i_wdata1(i_wdata1),
      .i_wdata0_next(1'b0),
      .i_rreg0(i_rreg0),
      .i_rreg1(i_rreg1),
      .o_rdata0(o_rdata0),
      .o_rdata1(o_rdata1),
      .o_waddr(rf_waddr),
      .o_wdata(rf_wdata),
      .o_wen(rf_wen),
      .o_raddr(rf_raddr),
      .o_ren(rf_ren),
      .i_rdata(rf_rdata)
   );

   serv_rf_ram #(
      .width(RF_WIDTH),
      .csr_regs(CSR_REGS),
      .depth(RF_DEPTH)
   ) u_serial_bridge (
      .i_clk(clk_sys),
      .i_waddr(rf_waddr),
      .i_wdata(rf_wdata),
      .i_wen(rf_wen),
      .i_raddr(rf_raddr),
      .i_ren(rf_ren),
      .o_rdata(rf_rdata),
      .i_clk_fast(clk_fast),
      .i_rst(rst),
      .o_ext_rf_sync(sync),
      .o_ext_rf_sck(sck),
      .o_ext_rf_mosi(mosi),
      .i_ext_rf_miso(miso)
   );

   reg [31:0] pico_ram [0:32+CSR_REGS-1];
   reg [RF_FRAME_BITS-1:0] rx_buffer = 0;
   integer bit_cnt = 0;
   reg [1:0] pico_tx_data = 0;
   integer frame_cnt = 0;
   integer write_frame_cnt = 0;
   integer read_frame_cnt = 0;
   integer error_cnt = 0;
   reg test_active = 0;
   reg cap0 [0:95];
   reg cap1 [0:95];

   task fail;
      input [1023:0] msg;
      begin
         error_cnt = error_cnt + 1;
         $display("[FAIL] %0s", msg);
      end
   endtask

   task wait_ready;
      integer timeout;
      begin
         timeout = 0;
         while (!o_ready && timeout < 80) begin
            @(posedge clk_sys);
            timeout = timeout + 1;
         end
         if (!o_ready)
            fail("RF interface ready timeout");
      end
   endtask

   task write_two_regs;
      input [4:0] reg0;
      input [31:0] value0;
      input [4:0] reg1;
      input [31:0] value1;
      integer bit_idx;
         begin
         i_wreg0 = {1'b0, reg0};
         i_wreg1 = {1'b0, reg1};
         i_wen0 = 1'b0;
         i_wen1 = 1'b0;

         @(negedge clk_sys);
         i_wreq = 1'b1;
         @(posedge clk_sys);
         #10;
         i_wreq = 1'b0;

         @(negedge clk_sys);
         i_wen0 = 1'b1;
         i_wen1 = 1'b1;
         i_wdata0 = value0[0];
         i_wdata1 = value1[0];

         @(posedge clk_sys);

         for (bit_idx = 1; bit_idx < 32; bit_idx = bit_idx + 1) begin
            @(negedge clk_sys);
            i_wdata0 = value0[bit_idx];
            i_wdata1 = value1[bit_idx];
            @(posedge clk_sys);
         end

         #10;
         i_wen0 = 1'b0;
         i_wen1 = 1'b0;
         i_wdata0 = 1'b0;
         i_wdata1 = 1'b0;
         repeat (80) @(posedge clk_sys);
         repeat (8) @(posedge clk_sys);
      end
   endtask

   task find_read_window;
      input [31:0] expected0;
      input [31:0] expected1;
      integer start_idx;
      integer bit_idx;
      reg [31:0] word0;
      reg [31:0] word1;
      reg found;
      begin
         found = 1'b0;
         for (start_idx = 0; start_idx <= 64; start_idx = start_idx + 1) begin
            word0 = 32'h0;
            word1 = 32'h0;
            for (bit_idx = 0; bit_idx < 32; bit_idx = bit_idx + 1) begin
               word0[bit_idx] = cap0[start_idx + bit_idx];
               word1[bit_idx] = cap1[start_idx + bit_idx];
            end

            if (word0 === expected0 && word1 === expected1) begin
               found = 1'b1;
               $display("[PASS] readback window start=%0d x5=%h x6=%h",
                        start_idx, word0, word1);
            end
         end

         if (!found) begin
            fail("Readback bit stream did not contain expected words");
            $display("       expected0=%h expected1=%h", expected0, expected1);
            for (start_idx = 0; start_idx < 12; start_idx = start_idx + 1) begin
               word0 = 32'h0;
               word1 = 32'h0;
               for (bit_idx = 0; bit_idx < 32; bit_idx = bit_idx + 1) begin
                  word0[bit_idx] = cap0[start_idx + bit_idx];
                  word1[bit_idx] = cap1[start_idx + bit_idx];
               end
               $display("       window[%0d] x5=%h x6=%h", start_idx, word0, word1);
            end
         end
      end
   endtask

   task read_two_regs;
      input [4:0] reg0;
      input [31:0] expected0;
      input [4:0] reg1;
      input [31:0] expected1;
      integer sample_idx;
      begin
         i_rreg0 = {1'b0, reg0};
         i_rreg1 = {1'b0, reg1};

         @(negedge clk_sys);
         i_rreq = 1'b1;
         @(posedge clk_sys);
         #10;
         i_rreq = 1'b0;

         for (sample_idx = 0; sample_idx < 96; sample_idx = sample_idx + 1) begin
            @(posedge clk_sys);
            #10;
            cap0[sample_idx] = o_rdata0;
            cap1[sample_idx] = o_rdata1;
         end

         find_read_window(expected0, expected1);
      end
   endtask

   always @(posedge sck) begin
      if (sync) begin
         rx_buffer[RF_FRAME_BITS-1 - bit_cnt] = mosi;
         bit_cnt = bit_cnt + 1;

         if (bit_cnt == RF_FRAME_BITS-2) begin
            if (rx_buffer[RF_FRAME_BITS-2])
               pico_tx_data = pico_ram[rx_buffer[RF_FRAME_BITS-3:6]][{rx_buffer[5:2], 1'b0} +: 2];
         end
      end
   end

   always @(negedge sync) begin
      if (test_active) begin
         frame_cnt = frame_cnt + 1;

         if (rx_buffer[RF_FRAME_BITS-1]) begin
            write_frame_cnt = write_frame_cnt + 1;
            pico_ram[rx_buffer[RF_FRAME_BITS-3:6]][{rx_buffer[5:2], 1'b0} +: 2] = rx_buffer[1:0];
            $display("[FRAME W] x%0d bits[%0d:%0d] = %b",
                     rx_buffer[RF_FRAME_BITS-3:6], ({rx_buffer[5:2], 1'b0} + 1), {rx_buffer[5:2], 1'b0}, rx_buffer[1:0]);
         end else if (rx_buffer[RF_FRAME_BITS-2]) begin
            read_frame_cnt = read_frame_cnt + 1;
            $display("[FRAME R] x%0d bits[%0d:%0d]",
                     rx_buffer[RF_FRAME_BITS-3:6], ({rx_buffer[5:2], 1'b0} + 1), {rx_buffer[5:2], 1'b0});
         end else begin
            fail("Frame without WEN or REN");
            $display("       frame=%b", rx_buffer);
         end
      end
   end

   always @(posedge sync) begin
      bit_cnt = 0;
      rx_buffer = {RF_FRAME_BITS{1'b0}};
   end

   assign miso = (bit_cnt >= RF_FRAME_BITS-3 && bit_cnt <= RF_FRAME_BITS-1) ? pico_tx_data[1] :
                 (bit_cnt >= RF_FRAME_BITS) ? pico_tx_data[0] : 1'b0;

   integer i;
   initial begin
      for (i = 0; i < 32+CSR_REGS; i = i + 1)
         pico_ram[i] = 32'h0;

      rst = 1'b1;
      repeat (4) @(posedge clk_sys);
      rst = 1'b0;
      repeat (2) @(posedge clk_sys);
      test_active = 1'b1;

      write_two_regs(5'd5, 32'hA5A5_3C3C, 5'd6, 32'h5A5A_C3C3);
      $display("[INFO] external raw x5=%h x6=%h", pico_ram[5], pico_ram[6]);
      read_two_regs(5'd5, 32'hA5A5_3C3C, 5'd6, 32'h5A5A_C3C3);

      if (write_frame_cnt < 32)
         fail("Too few write frames observed from serv_rf_ram_if");
      if (read_frame_cnt < 32)
         fail("Too few read frames observed from serv_rf_ram_if");

      if (error_cnt == 0)
         $display("[TB PASS] rf_if + serial bridge integration passed. frames=%0d writes=%0d reads=%0d",
                  frame_cnt, write_frame_cnt, read_frame_cnt);
      else
         $fatal(1, "[TB FAIL] rf_if + serial bridge integration failed. errors=%0d", error_cnt);

      #1000;
      $finish;
   end
endmodule
