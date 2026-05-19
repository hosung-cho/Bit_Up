`timescale 1ns/1ps

`include "external_hex_config.vh"

module tb_rv32i_dhrystone;
   localparam RF_RAW = 5;
   localparam RF_FRAME_BITS = RF_RAW + 8;
   localparam RESULT_BASE = 32'h0000_0700;

   reg clk_fast = 0;
   reg rst_n = 0;
   always #31.25 clk_fast = ~clk_fast; // 16MHz base

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

   reg [31:0] pico_ram [0:31];
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
   
   /* 실시간 성능 측정용 하드웨어 카운터 */
   integer cycle_cnt = 0;
   integer fetch_cnt = 0;
   reg [31:0] last_ibus_adr = 0;
   reg [31:0] last_ibus_insn = 0;

   integer i;
   integer use_external_program = 0;
   integer external_flag_fd;
   reg [8*1024-1:0] program_hex_path;

   /* 시스템 시스템 클럭 사이클 및 명령어 페치 측정 */
   always @(posedge dut.clk_sys) begin
      if (rst_n) begin
         cycle_cnt = cycle_cnt + 1;
         if (dut.wb_ibus_ack) begin
            fetch_cnt = fetch_cnt + 1;
            last_ibus_adr = dut.wb_ibus_adr;
            last_ibus_insn = dut.wb_ibus_rdt;
         end
      end
   end

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

         /* 0x700 (RESULT_BASE) 주소에 값이 써지면 Dhrystone 완료 처리 및 결과 분석 출력! */
         if (mem_addr == RESULT_BASE) begin
            $display("\n=========================================================");
            $display("  DHRYSTONE 2.1 BENCHMARK PERFORMANCE RESULTS");
            $display("=========================================================");
            if (mem_wdata == 32'h1) begin
               $display("  Verification     : [PASS] (Checksum validated)");
            end else begin
               $display("  Verification     : [FAIL] (Err Code: 0x%h)", mem_wdata);
            end
            $display("  Total Runs (Loops): 50 iterations");
            $display("  Total Cycles     : %0d clks", cycle_cnt);
            $display("  Total Instruction: %0d insts", fetch_cnt);
            
            /* 고정소수점 연산을 이용한 CPI & IPC 예쁜 산출 */
            $display("  Average CPI      : %0d.%0d clks/inst", cycle_cnt / fetch_cnt, ((cycle_cnt * 100) / fetch_cnt) % 100);
            $display("  Average IPC      : %0d.%0d insts/clk", fetch_cnt / cycle_cnt, ((fetch_cnt * 100) / cycle_cnt) % 100);
            
            /* DMIPS / MHz 정량 산출 */
            // 루프당 평균 클럭 = cycle_cnt / 50
            // DMIPS/MHz = 1,000,000 / (루프당클럭 * 1757)
            // 고정 소수점 스케일 100000000000 / (cycle_cnt * 1757)
            $display("  DMIPS / MHz      : 0.%04d", (1000000000 / ((cycle_cnt / 50) * 1757)));
            $display("=========================================================\n");
            $finish;
         end

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

   initial begin
      rst_n = 0;
      #20000;
      rst_n = 1;
   end

   initial begin
      for (i = 0; i < 32; i = i + 1)
         pico_ram[i] = 32'h0;
      for (i = 0; i < 512; i = i + 1) begin
         ext_mem[i] = 32'h00000013;
      end

      external_flag_fd = $fopen("/home/hosung/Ho/MPW/MPW_workspace/Bit_Up/A_MCU/testbench/8_testbench_rv32i_dhrystone/sim/generated/use_external.flag", "r");
      if (external_flag_fd != 0) begin
         $fclose(external_flag_fd);
         use_external_program = 1;
         $readmemh("/home/hosung/Ho/MPW/MPW_workspace/Bit_Up/A_MCU/testbench/8_testbench_rv32i_dhrystone/sim/generated/program.hex", ext_mem);
      end
      if ($value$plusargs("PROGRAM_HEX=%s", program_hex_path)) begin
         use_external_program = 1;
         $readmemh(program_hex_path, ext_mem);
      end
      `include "external_hex_init.vh"

      // 시뮬레이션 폭발 방지 세이프가드 타임아웃 (450ms)
      #450000000;
      $display("[TIMEOUT] Dhrystone benchmark simulation timed out!");
      $display("  cycles=%0d fetches=%0d last_pc=%08h last_insn=%08h",
               cycle_cnt, fetch_cnt, last_ibus_adr, last_ibus_insn);
      $display("  RF frames=%0d writes=%0d reads=%0d invalid=%0d",
               frame_cnt, write_frame_cnt, read_frame_cnt, invalid_rf_frame_cnt);
      $display("  Memory frames=%0d writes=%0d reads=%0d last_addr=%08h last_wdata=%08h",
               mem_frame_cnt, mem_write_cnt, mem_read_cnt, mem_addr, mem_wdata);
      $fatal(1, "[TIMEOUT] Fail");
   end
endmodule
