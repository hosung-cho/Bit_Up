`default_nettype none

module serv_exec_fpga_bridge
  (
   input wire        clk,
   input wire        rst_n,

   input wire        req_valid,
   output wire       req_ready,
   input wire [3:0]  req_op,
   input wire [31:0] req_a,
   input wire [31:0] req_b,

   output wire       resp_valid,
   input wire        resp_ready,
   output wire [31:0] resp_result,
   output wire [5:0] resp_flags,

   output wire       asic_cmd_valid,
   input wire        asic_cmd_ready,
   output wire [3:0] asic_cmd_op,
   output wire       asic_cmd_a,
   output wire       asic_cmd_b,
   output wire       asic_cmd_last,

   input wire        asic_rsp_valid,
   output wire       asic_rsp_ready,
   input wire        asic_rsp_result,
   input wire [5:0]  asic_rsp_flags,
   input wire        asic_rsp_last
   );

   localparam ST_IDLE = 2'd0;
   localparam ST_SEND = 2'd1;
   localparam ST_RECV = 2'd2;
   localparam ST_RESP = 2'd3;

   reg [1:0]  state;
   reg [4:0]  send_cnt;
   reg [4:0]  recv_cnt;
   reg [3:0]  op_r;
   reg [31:0] a_r;
   reg [31:0] b_r;
   reg [31:0] result_r;
   reg [5:0]  flags_r;

   wire       send_fire = asic_cmd_valid & asic_cmd_ready;
   wire       recv_fire = asic_rsp_valid & asic_rsp_ready;

   assign req_ready = (state == ST_IDLE);
   assign resp_valid = (state == ST_RESP);
   assign resp_result = result_r;
   assign resp_flags = flags_r;

   assign asic_cmd_valid = (state == ST_SEND);
   assign asic_cmd_op = op_r;
   assign asic_cmd_a = a_r[0];
   assign asic_cmd_b = b_r[0];
   assign asic_cmd_last = (send_cnt == 5'd31);
   assign asic_rsp_ready = (state == ST_RECV);

   always @(posedge clk) begin
      if (!rst_n) begin
         state <= ST_IDLE;
         send_cnt <= 5'd0;
         recv_cnt <= 5'd0;
         op_r <= 4'd0;
         a_r <= 32'd0;
         b_r <= 32'd0;
         result_r <= 32'd0;
         flags_r <= 6'd0;
      end else begin
         case (state)
           ST_IDLE: begin
              send_cnt <= 5'd0;
              recv_cnt <= 5'd0;
              if (req_valid) begin
                 op_r <= req_op;
                 a_r <= req_a;
                 b_r <= req_b;
                 result_r <= 32'd0;
                 flags_r <= 6'd0;
                 state <= ST_SEND;
              end
           end

           ST_SEND: begin
              if (send_fire) begin
                 a_r <= {1'b0, a_r[31:1]};
                 b_r <= {1'b0, b_r[31:1]};
                 if (asic_cmd_last) begin
                    state <= ST_RECV;
                    recv_cnt <= 5'd0;
                 end else begin
                    send_cnt <= send_cnt + 5'd1;
                 end
              end
           end

           ST_RECV: begin
              if (recv_fire) begin
                 result_r <= {asic_rsp_result, result_r[31:1]};
                 flags_r <= asic_rsp_flags;
                 if (asic_rsp_last | (recv_cnt == 5'd31)) begin
                    state <= ST_RESP;
                 end else begin
                    recv_cnt <= recv_cnt + 5'd1;
                 end
              end
           end

           ST_RESP: begin
              if (resp_ready) begin
                 state <= ST_IDLE;
              end
           end

           default: begin
              state <= ST_IDLE;
           end
         endcase
      end
   end

endmodule

`default_nettype wire
