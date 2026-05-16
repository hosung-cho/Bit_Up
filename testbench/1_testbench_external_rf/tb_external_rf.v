`timescale 1ns/1ps

module tb_external_rf();
   reg clk = 0;
   always #5 clk = ~clk;

   // 브리지 신호들
   wire [4:0] rreg, wreg;
   wire [1:0] wdata, rdata_from_pico;
   wire [3:0] bit_idx;
   wire wen, ren;

   // 1. 브리지 인스턴스화
   serv_rf_ram #(.width(2)) u_bridge (
      .i_clk(clk),
      .i_waddr({5'd10, 4'd0}), // x10 레지스터의 0비트부터 쓰기 시뮬레이션
      .i_wdata(2'b11),
      .i_wen(wen_sig),
      .i_raddr({5'd10, 4'd0}),
      .i_ren(ren_sig),
      .o_rdata(),
      .o_ext_rf_rreg(rreg),
      .o_ext_rf_wreg(wreg),
      .o_ext_rf_wdata(wdata),
      .o_ext_rf_bit_idx(bit_idx),
      .i_ext_rf_rdata(rdata_from_pico),
      .o_ext_rf_wen(wen),
      .o_ext_rf_ren(ren)
   );

   // 2. Mock Pico (외부 메모리 역할)
   // 실제 피코의 C 코드가 해야 할 동작을 시뮬레이션합니다.
   reg [31:0] pico_ram [0:15]; // x0~x15 저장용
   
   always @(posedge clk) begin
      if (wen) begin
         // 피코는 주소와 비트 인덱스를 보고 자신의 RAM에 저장
         pico_ram[wreg][bit_idx +: 2] <= wdata;
         $display("[Pico Write] x%0d, bits[%0d:%0d] = %b", wreg, bit_idx+1, bit_idx, wdata);
      end
   end

   assign rdata_from_pico = pico_ram[rreg][bit_idx +: 2];

   // 3. 테스트 시나리오
   reg wen_sig = 0, ren_sig = 0;
   initial begin
      pico_ram[10] = 32'h0;
      #20;
      // x10 레지스터에 0xABCD... 값을 쓰는 상황 연출
      wen_sig = 1;
      #100;
      wen_sig = 0;
      #20;
      // x10 레지스터를 읽는 상황 연출
      ren_sig = 1;
      #100;
      $finish;
   end
endmodule