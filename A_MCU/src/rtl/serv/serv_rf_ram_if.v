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
    parameter csr_regs=4,
    parameter B=W-1,
    parameter raw=$clog2(32+csr_regs),
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
   output wire [B:0]	   o_rdata0,
   output wire [B:0]	   o_rdata1,
   output wire [aw-1:0]   o_waddr,
   output wire [width-1:0] o_wdata,
   output wire		   o_wen,
   output reg [aw-1:0]	   o_raddr,
   output reg		   o_ren,
   input wire [width-1:0]  i_rdata);

   reg ready_pulse;
   assign o_ready = i_wreq | ready_pulse;

   reg [31:0] read_buf0;
   reg [31:0] read_buf1;
   reg [5:0]  stream_cnt;
   reg        stream_pending;
   reg        stream_active;

   assign o_rdata0 = stream_active ? read_buf0[stream_cnt[4:0]] : 1'b0;
   assign o_rdata1 = stream_active ? read_buf1[stream_cnt[4:0]] : 1'b0;

   localparam ratio = width/W;
   localparam CMSB = 4-$clog2(W);
   localparam l2r = $clog2(ratio);

   reg [CMSB:0] rcnt;
   reg          rtrig1;
   reg [width-1:0] wdata0_r;
   reg [width+W-1:0] wdata1_r;
   reg          wen0_r;
   reg          wen1_r;
   reg [7:0]    write_wait;
   reg [31:0]   bypass_ram [0:32+csr_regs-1];
   reg          bypass_valid [0:32+csr_regs-1];

   wire [CMSB:0] wcnt = rcnt-4;
   wire          rtrig0 = (rcnt[l2r-1:0] == 1);
   wire          wtrig0 = rtrig1;
   wire          wtrig1 = wcnt[0];
   wire [raw-1:0] wreg = wtrig1 ? i_wreg1 : i_wreg0;
   wire [3:0]     wchunk = wcnt[CMSB:l2r];

   // ALU writeback is phase-aligned one cycle later than memory writeback in
   // this off-chip RF path, so port 0 can select the next packed shift value.
   wire [width-1:0] wdata0_next = {i_wdata0, wdata0_r[width-1:W]};

   assign o_wdata = wtrig1 ? wdata1_r[width-1:0] :
                    i_wdata0_next ? wdata0_next : wdata0_r;
   assign o_waddr = {wreg, wchunk};
   assign o_wen = (wtrig0 & wen0_r) | (wtrig1 & wen1_r);

   reg        prefetch_active;
   reg        pending_read;
   reg [5:0]  issue_idx;
   reg        prev_valid;
   reg        prev_sel;
   reg [3:0]  prev_chunk;
   reg [raw-1:0] prev_reg;
   reg [raw-1:0] rreg0_q;
   reg [raw-1:0] rreg1_q;

   wire [3:0] issue_chunk = issue_idx[4:1];
   wire       issue_sel   = issue_idx[0];
   wire [raw-1:0] issue_reg = issue_sel ? rreg1_q : rreg0_q;
   wire       prev_bypass_valid = bypass_valid[prev_reg];
   wire [width-1:0] prev_bypass_data = bypass_ram[prev_reg][{prev_chunk, 1'b0} +: 2];

   integer init_idx;

   always @(posedge i_clk) begin
      ready_pulse <= 1'b0;
      o_ren <= 1'b0;

      if (stream_pending) begin
         stream_pending <= 1'b0;
         stream_active <= 1'b1;
         stream_cnt <= 6'd0;
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

      if (i_wreq)
         write_wait <= 8'd63;
      else if (write_wait != 8'd0)
         write_wait <= write_wait - 6'd1;

      if (o_wen && (wreg != {raw{1'b0}})) begin
         bypass_ram[wreg][{wchunk, 1'b0} +: 2] <= o_wdata;
         bypass_valid[wreg] <= 1'b1;
      end

      if (i_rreq) begin
         pending_read <= 1'b1;
         rreg0_q <= i_rreg0;
         rreg1_q <= i_rreg1;
      end

      if (!prefetch_active && (write_wait == 8'd0) && pending_read) begin
         prefetch_active <= 1'b1;
         pending_read <= 1'b0;
         issue_idx <= 6'd0;
         prev_valid <= 1'b0;
      end else if (prefetch_active) begin
         if (prev_valid) begin
            if (prev_sel)
               read_buf1[{prev_chunk, 1'b0} +: 2] <=
                  (prev_reg == {raw{1'b0}}) ? {width{1'b0}} :
                  prev_bypass_valid ? prev_bypass_data : i_rdata;
            else
               read_buf0[{prev_chunk, 1'b0} +: 2] <=
                  (prev_reg == {raw{1'b0}}) ? {width{1'b0}} :
                  prev_bypass_valid ? prev_bypass_data : i_rdata;
         end

         if (issue_idx < 6'd32) begin
            o_ren <= 1'b1;
            o_raddr <= {issue_reg, issue_chunk};
            prev_valid <= 1'b1;
            prev_sel <= issue_sel;
            prev_chunk <= issue_chunk;
            prev_reg <= issue_reg;
            issue_idx <= issue_idx + 6'd1;
         end else begin
            prev_valid <= 1'b0;
            prefetch_active <= 1'b0;
            ready_pulse <= 1'b1;
            stream_pending <= 1'b1;
         end
      end

      if (stream_active) begin
         stream_cnt <= stream_cnt + 6'd1;
         if (stream_cnt == 6'd31)
            stream_active <= 1'b0;
      end

      if (i_rst) begin
         if (reset_strategy != "NONE") begin
            ready_pulse <= 1'b0;
            o_raddr <= {aw{1'b0}};
            o_ren <= 1'b0;
            read_buf0 <= 32'b0;
            read_buf1 <= 32'b0;
            rcnt <= {CMSB+1{1'b0}};
            rtrig1 <= 1'b0;
            wdata0_r <= {width{1'b0}};
            wdata1_r <= {(width+W){1'b0}};
            wen0_r <= 1'b0;
            wen1_r <= 1'b0;
            write_wait <= 8'b0;
            prefetch_active <= 1'b0;
            pending_read <= 1'b0;
            issue_idx <= 6'b0;
            prev_valid <= 1'b0;
            stream_pending <= 1'b0;
            stream_active <= 1'b0;
            stream_cnt <= 6'b0;
            rreg0_q <= {raw{1'b0}};
            rreg1_q <= {raw{1'b0}};
            prev_reg <= {raw{1'b0}};
            for (init_idx = 0; init_idx < 32+csr_regs; init_idx = init_idx + 1) begin
               bypass_ram[init_idx] <= 32'b0;
               bypass_valid[init_idx] <= 1'b0;
            end
         end
      end
   end

endmodule
`default_nettype wire
