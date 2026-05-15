/*
 * serv_rf_ram.v : External Bridge (Off-chip RF)
 * 내부 저장소를 제거하고 외부 Pico와 통신합니다.
 */
module serv_rf_ram
  #(parameter width=2,
    parameter csr_regs=4,
    parameter depth=32*(16+csr_regs)/width)
   (input wire i_clk,
    input wire [$clog2(depth)-1:0] i_waddr,
    input wire [width-1:0]     i_wdata,
    input wire         i_wen,
    input wire [$clog2(depth)-1:0] i_raddr,
    input wire         i_ren,
    output wire [width-1:0]      o_rdata,

    // 외부 Pico와 연결될 브리지 핀들
    output wire [4:0] o_ext_rf_rreg, // 읽을 레지스터 번호 (x0~x15)
    output wire [4:0] o_ext_rf_wreg, // 쓸 레지스터 번호
    output wire [width-1:0] o_ext_rf_wdata, 
    output wire [3:0] o_ext_rf_bit_idx, // 32비트 중 몇 번째 비트인지 (0, 2, 4...)
    input  wire [width-1:0] i_ext_rf_rdata, 
    output wire o_ext_rf_wen,
    output wire o_ext_rf_ren
    );

   // RV32E(width=2) 기준 주소 구조 분해
   // i_raddr = {reg_idx[4:0], bit_idx[3:0]}
   assign o_ext_rf_rreg    = i_raddr[$clog2(depth)-1 : 4];
   assign o_ext_rf_bit_idx = i_raddr[3:0];
   assign o_ext_rf_wreg    = i_waddr[$clog2(depth)-1 : 4];
   
   assign o_ext_rf_wdata   = i_wdata;
   assign o_ext_rf_wen     = i_wen;
   assign o_ext_rf_ren     = i_ren;

   // x0 레지스터(Zero Register)는 칩 내부에서 0으로 강제 (Pico 부담 경감)
   reg regzero;
   always @(posedge i_clk) begin
      regzero <= !(|o_ext_rf_rreg); // x0 접근 시 1
   end

   // 외부 데이터를 코어로 전달
   assign o_rdata = (regzero) ? {width{1'b0}} : i_ext_rf_rdata;

endmodule