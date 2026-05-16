module serv_rf_ram
  #(parameter width=2,
    parameter csr_regs=4,
    parameter depth=32*(16+csr_regs)/width,
    parameter raw=$clog2(32+csr_regs),
    parameter frame_bits=raw+8)
   (
    input wire i_clk,
    input wire [$clog2(depth)-1:0] i_waddr,
    input wire [width-1:0]     i_wdata,
    input wire         i_wen,
    input wire [$clog2(depth)-1:0] i_raddr,
    input wire         i_ren,
    output wire [width-1:0]    o_rdata,

    input wire i_clk_fast,
    input wire i_rst,

    output reg  o_ext_rf_sync,
    output wire o_ext_rf_sck,
    output wire o_ext_rf_mosi,
    input  wire i_ext_rf_miso
    );

   localparam [4:0] FRAME_BITS = frame_bits;

   wire [raw-1:0] rreg = i_raddr[$clog2(depth)-1 : 4];
   wire [3:0] rbit = i_raddr[3:0];
   wire [raw-1:0] wreg = i_waddr[$clog2(depth)-1 : 4];
   wire [3:0] wbit = i_waddr[3:0];

   wire [raw-1:0] target_reg = i_ren ? rreg : wreg;
   wire [3:0] target_bit = i_ren ? rbit : wbit;
   wire [frame_bits-1:0] req_key = {i_wen, i_ren, target_reg, target_bit, i_wdata};

   // ----------------------------------------------------
   // 시리얼 전송 FSM
   // ----------------------------------------------------
   reg [4:0] tx_state;
   reg [frame_bits-1:0] shift_tx;
   reg [width-1:0] shift_rx;
   reg [frame_bits-1:0] last_req_key;
   reg        req_seen;
   reg        launch_pending;

   // [수정됨] SCK 위상을 반전(~i_clk_fast)하여 피코가 안정적으로 데이터를 읽게 함
   assign o_ext_rf_sck = (o_ext_rf_sync) ? ~i_clk_fast : 1'b0;
   assign o_ext_rf_mosi = shift_tx[frame_bits-1];

   always @(posedge i_clk_fast) begin
      if (i_rst) begin
         tx_state <= 0;
         o_ext_rf_sync <= 0;
         shift_rx <= 0;
         last_req_key <= {frame_bits{1'b0}};
         req_seen <= 1'b0;
         launch_pending <= 1'b0;
      end else begin
         if (!(i_wen || i_ren)) begin
            req_seen <= 1'b0;
            launch_pending <= 1'b0;
         end

         if (tx_state == 0) begin
            if (launch_pending && (i_wen || i_ren)) begin
               shift_tx <= req_key;
               last_req_key <= req_key;
               req_seen <= 1'b1;
               launch_pending <= 1'b0;
               tx_state <= FRAME_BITS;
               o_ext_rf_sync <= 1'b1;
            end else if ((i_wen || i_ren) && (!req_seen || (req_key != last_req_key))) begin
               launch_pending <= 1'b1;
            end
         end 
         else begin
            if (tx_state == 2) shift_rx[1] <= i_ext_rf_miso;
            if (tx_state == 1) shift_rx[0] <= i_ext_rf_miso;

            shift_tx <= {shift_tx[frame_bits-2:0], 1'b0};
            tx_state <= tx_state - 1;

            if (tx_state == 1) begin
               o_ext_rf_sync <= 1'b0;
            end
         end
      end
   end

   reg regzero;
   always @(posedge i_clk) begin
      regzero <= !(|rreg);
   end
   assign o_rdata = (regzero) ? {width{1'b0}} : shift_rx;

endmodule
