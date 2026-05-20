/*
 * serv_rf_ram_if.v : SERV RF adapter for 2-bit external serial RF storage
 *
 * This project uses W=1 and width=2. The write side follows the original SERV
 * RAM adapter timing. Reads are prefetched from the external bridge before
 * SERV is released with o_ready.
 */
`default_nettype none
module serv_rf_ram_if
  #(parameter width=2,
    parameter W = 1,
    parameter reset_strategy="MINI",
    parameter gpr_regs=32,
    parameter csr_regs=4,
    parameter single_read_port=0,
    parameter stream_rs2_read=0,
    parameter B=W-1,
    parameter raw=$clog2(gpr_regs+csr_regs),
    parameter l2w=$clog2(width),
    parameter aw=5+raw-l2w)
  (
   input wire		   i_clk,
   input wire		   i_rst,
   input wire		   i_wreq,
   input wire		   i_rreq,
   output wire		   o_ready,
   input wire [raw-1:0]	   i_wreg0,
   input wire [raw-1:0]	   i_wreg1,
   input wire		   i_wen0,
   input wire		   i_wen1,
   input wire [B:0]	   i_wdata0,
   input wire [B:0]	   i_wdata1,
   input wire		   i_wdata0_next,
   input wire [raw-1:0]	   i_rreg0,
   input wire [raw-1:0]	   i_rreg1,
   input wire              i_stream_rs2_en,
   output wire [B:0]	   o_rdata0,
   output wire [B:0]	   o_rdata1,
   
   // 보존되는 출력 포트 (my_mcu_top의 rf_write_done 등에서 참조함)
   output wire [aw-1:0]    o_waddr,
   output wire [width-1:0] o_wdata,
   output wire             o_wen,
   output reg [aw-1:0]     o_raddr,
   output reg              o_ren,

   // 패스트 클럭 및 외부 RF 핀 직결 포트
   input wire              i_clk_fast,
   output reg              o_rf_sync,
   output wire             o_rf_sck,
   output wire             o_rf_mosi,
   input wire              i_rf_miso
  );

   localparam depth = 32 * (gpr_regs + csr_regs) / width;

   reg ready_pulse;
   assign o_ready = i_wreq | ready_pulse;

   reg [31:0] read_buf0;
   reg [31:0] read_buf1;
   reg [4:0]  stream_cnt;
   reg        stream_pending;
   reg        stream_active;

   assign o_rdata0 = stream_active ? read_buf0[0] : 1'b0;
   wire stream_rs2_mode = (stream_rs2_read != 0) && (single_read_port == 0);
   wire stream_rs2_active = stream_rs2_mode && i_stream_rs2_en;
   reg [width-1:0] rs2_stream_buf;

   assign o_rdata1 = (single_read_port != 0) ? 1'b0 :
                     stream_active ? (stream_rs2_active ? rs2_stream_buf[0] : read_buf1[0]) : 1'b0;

   localparam ratio = width/W;
   localparam CMSB = 4-$clog2(W);
   localparam l2r = $clog2(ratio);

   reg [CMSB:0] rcnt;
   reg          rtrig1;
   reg [width-1:0] wdata0_r;
   reg [width+W-1:0] wdata1_r;
   reg          wen0_r;
   reg          wen1_r;
   reg [3:0]    write_chunk;
   reg          wdata0_next_phase;
   reg [1:0]    write_wait;
   wire [CMSB:0] rcnt_eff = (i_rreq | i_wreq) ? {{CMSB-1{1'b0}}, i_wreq, 1'b0} : rcnt;
   wire [CMSB:0] wcnt = rcnt_eff-4;
   wire          rtrig0 = (rcnt_eff[l2r-1:0] == 1);
   wire          wtrig0 = rtrig1;
   wire          wtrig1 = wcnt[0];
   wire [raw-1:0] wreg = wtrig1 ? i_wreg1 : i_wreg0;

   wire [width-1:0] wdata0_next = {i_wdata0, wdata0_r[width-1:W]};
   wire [width-1:0] wdata1_phase = wdata1_r[width:W];
   wire [width-1:0] wdata1_sel = i_wreg1[raw-1] ? wdata1_phase : wdata1_r[width-1:0];

   wire          use_wdata0_next = i_wdata0_next &
                                   ((write_chunk == 4'd0) ? rcnt[2] : wdata0_next_phase);

   // 내부 연결 와이어 선언 및 출력 매핑
   wire [width-1:0]  wdata_w = wtrig1 ? wdata1_sel :
                               use_wdata0_next ? wdata0_next : wdata0_r;
   wire [aw-1:0]     waddr_w = {wreg, write_chunk};
   wire              wen_w   = (wtrig0 & wen0_r) | (wtrig1 & wen1_r);

   assign o_wdata = wdata_w;
   assign o_waddr = waddr_w;
   assign o_wen   = wen_w;

   reg        prefetch_active;
   reg        pending_read;
   reg [5:0]  issue_idx;
   reg [raw-1:0] rreg0_latched;
   reg [raw-1:0] rreg1_latched;

   wire       issue_stream_rs2 = stream_rs2_active && (issue_idx == 6'd16);
   wire [3:0] issue_chunk = (single_read_port != 0) ? issue_idx[3:0] :
                             stream_rs2_mode ? (issue_stream_rs2 ? 4'd0 : issue_idx[3:0]) :
                             issue_idx[4:1];
   wire       issue_sel   = (single_read_port != 0) ? 1'b0 :
                             stream_rs2_mode ? issue_stream_rs2 :
                             issue_idx[0];
   wire [raw-1:0] issue_reg = issue_sel ? rreg1_latched : rreg0_latched;
   wire       prev_valid = prefetch_active && (issue_idx != 6'd0);
   wire [4:0] prev_issue_idx = issue_idx[4:0] - 5'd1;
   wire       prev_sel = (single_read_port != 0) ? 1'b0 :
                          stream_rs2_mode ? (stream_rs2_active && (prev_issue_idx == 5'd16)) :
                          prev_issue_idx[0];
   wire [5:0] issue_limit = (single_read_port != 0) ? 6'd16 :
                             stream_rs2_mode ? (i_stream_rs2_en ? 6'd17 : 6'd16) :
                             6'd32;
   wire [aw-1:0] raddr_w = o_raddr;
   wire          ren_w   = o_ren;

   // ----------------------------------------------------------------
   // serv_rf_ram 모듈 내부에서 이식한 통합 FSM 및 시리얼 전송 로직
   // ----------------------------------------------------------------
   localparam FRAME_BITS = raw + 8;
   localparam KEY_BITS = FRAME_BITS - width;

   wire [raw-1:0] ram_rreg = raddr_w[aw-1 : 4];
   wire [3:0] ram_rbit = raddr_w[3:0];
   wire [raw-1:0] ram_wreg = waddr_w[aw-1 : 4];
   wire [3:0] ram_wbit = waddr_w[3:0];

   wire [raw-1:0] target_reg = ren_w ? ram_rreg : ram_wreg;
   wire [3:0] target_bit = ren_w ? ram_rbit : ram_wbit;
   wire [FRAME_BITS-1:0] req_key = {wen_w, ren_w, target_reg, target_bit, wdata_w};
   wire [KEY_BITS-1:0] req_seen_key = {wen_w, ren_w, target_reg, target_bit};

   reg [4:0] tx_state;
   reg [width-1:0] shift_rx;
   reg [KEY_BITS-1:0] last_req_key;
   reg        req_seen;
   reg        launch_pending;

   assign o_rf_sck = (o_rf_sync) ? ~i_clk_fast : 1'b0;
   assign o_rf_mosi = o_rf_sync ? req_key[tx_state - 1'b1] : 1'b0;

   always @(posedge i_clk_fast) begin
      if (i_rst) begin
         tx_state <= 0;
         o_rf_sync <= 0;
         shift_rx <= 0;
         last_req_key <= {KEY_BITS{1'b0}};
         req_seen <= 1'b0;
         launch_pending <= 1'b0;
      end else begin
         if (!(wen_w || ren_w)) begin
            req_seen <= 1'b0;
            launch_pending <= 1'b0;
         end

         if (tx_state == 0) begin
            if (launch_pending && (wen_w || ren_w)) begin
               last_req_key <= req_seen_key;
               req_seen <= 1'b1;
               launch_pending <= 1'b0;
               tx_state <= FRAME_BITS;
               o_rf_sync <= 1'b1;
            end else if ((wen_w || ren_w) && (!req_seen || (req_seen_key != last_req_key))) begin
               last_req_key <= req_seen_key;
               req_seen <= 1'b1;
               tx_state <= FRAME_BITS;
               o_rf_sync <= 1'b1;
            end
         end 
         else begin
            if (tx_state == 3) shift_rx[1] <= i_rf_miso;
            if (tx_state == 2) shift_rx[0] <= i_rf_miso;

            tx_state <= tx_state - 1;

            if (tx_state == 1) begin
               o_rf_sync <= 1'b0;
            end
         end
      end
   end

   // 0번 레지스터(x0)는 RISC-V 스펙상 항상 0을 반환하도록 마스킹
   wire [width-1:0] rdata_w = (target_reg == {raw{1'b0}}) ? {width{1'b0}} : shift_rx;

   always @(posedge i_clk) begin
      ready_pulse <= 1'b0;
      o_ren <= 1'b0;

      if (stream_pending) begin
         stream_pending <= 1'b0;
         stream_active <= 1'b1;
         stream_cnt <= 5'd0;
      end

      if (wcnt[0]) begin
         wen0_r <= i_wen0;
         wen1_r <= i_wen1;
      end

      wdata0_r <= {i_wdata0, wdata0_r[width-1:W]};
      wdata1_r <= {i_wdata1, wdata1_r[width+W-1:W]};

      rtrig1 <= rtrig0;
      rcnt <= rcnt + {{CMSB{1'b0}}, 1'b1};
      if (i_rreq | i_wreq)
         rcnt <= {{CMSB-1{1'b0}}, i_wreq, 1'b0};

      if (i_wreq) begin
         write_wait <= 2'd2;
      end else if (write_wait != 2'd0) begin
         write_wait <= write_wait - 2'd1;
      end

      if (i_wreq)
         write_chunk <= 4'd0;
      else if (wtrig1 && (wen0_r || wen1_r))
         write_chunk <= write_chunk + 4'd1;

      if (i_wreq)
         wdata0_next_phase <= 1'b0;
      else if (wen_w && !wtrig1 && (write_chunk == 4'd0))
         wdata0_next_phase <= i_wdata0_next & rcnt[2];

      if (i_rreq) begin
         pending_read <= 1'b1;
         rreg0_latched <= i_rreg0;
         rreg1_latched <= i_rreg1;
      end

      if (!prefetch_active && (write_wait == 2'd0) && pending_read) begin
         prefetch_active <= 1'b1;
         pending_read <= 1'b0;
         issue_idx <= 6'd0;
      end else if (prefetch_active) begin
         if (prev_valid) begin
            if (prev_sel) begin
               if (stream_rs2_active)
                  rs2_stream_buf <= rdata_w;
               else
                  read_buf1 <= {rdata_w, read_buf1[31:2]};
            end else begin
               read_buf0 <= {rdata_w, read_buf0[31:2]};
            end
         end

         if (issue_idx < issue_limit) begin
            o_ren <= 1'b1;
            o_raddr <= {issue_reg, issue_chunk};
            issue_idx <= issue_idx + 6'd1;
         end else begin
            prefetch_active <= 1'b0;
            ready_pulse <= 1'b1;
            stream_pending <= 1'b1;
         end
      end

      if (stream_active) begin
         read_buf0 <= {1'b0, read_buf0[31:1]};
         if (stream_rs2_mode) begin
            if (!stream_cnt[0]) begin
               rs2_stream_buf <= {1'b0, rs2_stream_buf[width-1:1]};
               if (stream_rs2_active && (stream_cnt != 5'd30)) begin
                  o_ren <= 1'b1;
                  o_raddr <= {rreg1_latched, stream_cnt[4:1] + 4'd1};
               end
            end else if (stream_cnt != 5'd31) begin
               if (stream_rs2_active)
                  rs2_stream_buf <= rdata_w;
            end
         end else begin
            read_buf1 <= {1'b0, read_buf1[31:1]};
         end
         stream_cnt <= stream_cnt + 5'd1;
         if (stream_cnt == 5'd31)
            stream_active <= 1'b0;
      end

      if (i_rst) begin
         if (reset_strategy != "NONE") begin
            ready_pulse <= 1'b0;
            o_raddr <= {aw{1'b0}};
            o_ren <= 1'b0;
            read_buf0 <= 32'b0;
            read_buf1 <= 32'b0;
            rs2_stream_buf <= {width{1'b0}};
            rcnt <= {CMSB+1{1'b0}};
            rtrig1 <= 1'b0;
            wdata0_r <= {width{1'b0}};
            wdata1_r <= {(width+W){1'b0}};
            wen0_r <= 1'b0;
            wen1_r <= 1'b0;
            write_chunk <= 4'b0;
            wdata0_next_phase <= 1'b0;
            write_wait <= 2'b0;
            prefetch_active <= 1'b0;
            pending_read <= 1'b0;
            issue_idx <= 6'b0;
            rreg0_latched <= {raw{1'b0}};
            rreg1_latched <= {raw{1'b0}};
            stream_pending <= 1'b0;
            stream_active <= 1'b0;
            stream_cnt <= 5'b0;
         end
      end
   end

endmodule
`default_nettype wire
