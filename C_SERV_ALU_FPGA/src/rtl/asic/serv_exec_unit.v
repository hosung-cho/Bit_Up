`default_nettype none

module serv_exec_unit
  (
   input wire        clk,
   input wire        rst_n,

   input wire        cmd_valid,
   output wire       cmd_ready,
   input wire [3:0]  cmd_op,
   input wire [3:0]  cmd_a,
   input wire [3:0]  cmd_b,
   input wire        cmd_last,

   output wire       rsp_valid,
   input wire        rsp_ready,
   output wire [3:0] rsp_result,
   output wire [5:0] rsp_flags,
   output wire       rsp_last,

   output wire       busy,
   output wire [2:0] debug_state
   );

   localparam OP_ADD  = 4'h0;
   localparam OP_SUB  = 4'h1;
   localparam OP_AND  = 4'h2;
   localparam OP_OR   = 4'h3;
   localparam OP_XOR  = 4'h4;
   localparam OP_SLT  = 4'h5;
   localparam OP_SLTU = 4'h6;
   localparam OP_EQ   = 4'h7;
   localparam OP_NE   = 4'h8;
   localparam OP_LT   = 4'h9;
   localparam OP_LTU  = 4'ha;
   localparam OP_GE   = 4'hb;
   localparam OP_GEU  = 4'hc;

   localparam ST_IDLE = 3'd0;
   localparam ST_LOAD = 3'd1;
   localparam ST_EXEC = 3'd2;
   localparam ST_SEND = 3'd3;

   reg [2:0]  state;
   reg [2:0]  load_cnt;
   reg [2:0]  send_cnt;
   reg [5:0]  exec_cnt;
   reg [3:0]  op_r;
   reg [31:0] a_r;
   reg [31:0] b_r;
   reg [31:0] result_r;
   reg        cmp_r;
   reg        valid_r;

   wire       load_fire = cmd_valid & cmd_ready;
   wire       send_fire = rsp_valid & rsp_ready;
   wire       exec_done = (exec_cnt == 6'd31);
   wire       is_add    = (op_r == OP_ADD);
   wire       is_sub    = (op_r == OP_SUB);
   wire       is_and    = (op_r == OP_AND);
   wire       is_or     = (op_r == OP_OR);
   wire       is_xor    = (op_r == OP_XOR);
   wire       is_slt    = (op_r == OP_SLT);
   wire       is_sltu   = (op_r == OP_SLTU);
   wire       is_eq     = (op_r == OP_EQ);
   wire       is_ne     = (op_r == OP_NE);
   wire       is_lt     = (op_r == OP_LT);
   wire       is_ltu    = (op_r == OP_LTU);
   wire       is_ge     = (op_r == OP_GE);
   wire       is_geu    = (op_r == OP_GEU);
   wire       is_cmp    = is_slt | is_sltu | is_eq | is_ne | is_lt | is_ltu | is_ge | is_geu;
   wire       cmp_eq    = is_eq | is_ne;
   wire       cmp_sig   = is_slt | is_lt | is_ge;
   wire       alu_sub   = is_sub | is_cmp;
   wire [1:0] bool_op   = is_and ? 2'b11 :
                          is_or  ? 2'b10 :
                          is_xor ? 2'b00 : 2'b01;
   wire [2:0] rd_sel    = {is_and | is_or | is_xor, is_slt | is_sltu, is_add | is_sub};
   wire       alu_cmp;
   wire       alu_rd;

   assign cmd_ready  = (state == ST_IDLE) | (state == ST_LOAD);
   assign rsp_valid  = (state == ST_SEND) & valid_r;
   assign rsp_result = result_r[3:0];
   assign rsp_last   = (send_cnt == 3'd7);
   assign rsp_flags  = {~cmp_r, cmp_r, is_cmp & cmp_r, is_cmp & ~cmp_r, is_sub, 1'b1};
   assign busy       = (state != ST_IDLE);
   assign debug_state = state;

   serv_alu #(.W(1)) u_serv_alu
     (
      .clk(clk),
      .i_en(state == ST_EXEC),
      .i_cnt0(exec_cnt == 6'd0),
      .o_cmp(alu_cmp),
      .i_sub(alu_sub),
      .i_bool_op(bool_op),
      .i_cmp_eq(cmp_eq),
      .i_cmp_sig(cmp_sig),
      .i_rd_sel(rd_sel),
      .i_rs1(a_r[0]),
      .i_op_b(b_r[0]),
      .i_buf(1'b0),
      .o_rd(alu_rd)
      );

   always @(posedge clk) begin
      if (!rst_n) begin
         state    <= ST_IDLE;
         load_cnt <= 3'd0;
         send_cnt <= 3'd0;
         exec_cnt <= 6'd0;
         op_r     <= OP_ADD;
         a_r      <= 32'd0;
         b_r      <= 32'd0;
         result_r <= 32'd0;
         cmp_r    <= 1'b0;
         valid_r  <= 1'b0;
      end else begin
         case (state)
           ST_IDLE: begin
              valid_r  <= 1'b0;
              load_cnt <= 3'd0;
              send_cnt <= 3'd0;
              exec_cnt <= 6'd0;
              if (load_fire) begin
                 op_r <= cmd_op;
                 a_r  <= {28'd0, cmd_a};
                 b_r  <= {28'd0, cmd_b};
                 if (cmd_last) begin
                    state <= ST_EXEC;
                 end else begin
                    state <= ST_LOAD;
                    load_cnt <= 3'd1;
                 end
              end
           end

           ST_LOAD: begin
              if (load_fire) begin
                 case (load_cnt)
                   3'd1: begin a_r[7:4]   <= cmd_a; b_r[7:4]   <= cmd_b; end
                   3'd2: begin a_r[11:8]  <= cmd_a; b_r[11:8]  <= cmd_b; end
                   3'd3: begin a_r[15:12] <= cmd_a; b_r[15:12] <= cmd_b; end
                   3'd4: begin a_r[19:16] <= cmd_a; b_r[19:16] <= cmd_b; end
                   3'd5: begin a_r[23:20] <= cmd_a; b_r[23:20] <= cmd_b; end
                   3'd6: begin a_r[27:24] <= cmd_a; b_r[27:24] <= cmd_b; end
                   default: begin a_r[31:28] <= cmd_a; b_r[31:28] <= cmd_b; end
                 endcase
                 if (cmd_last | (load_cnt == 3'd7)) begin
                    state <= ST_EXEC;
                    exec_cnt <= 6'd0;
                 end else begin
                    load_cnt <= load_cnt + 3'd1;
                 end
              end
           end

           ST_EXEC: begin
              a_r <= {1'b0, a_r[31:1]};
              b_r <= {1'b0, b_r[31:1]};
              result_r <= {alu_rd, result_r[31:1]};
              cmp_r <= alu_cmp;
              if (exec_done) begin
                 state <= ST_SEND;
                 valid_r <= 1'b1;
                 send_cnt <= 3'd0;
                 if (is_slt | is_sltu | is_eq | is_lt | is_ltu) begin
                    result_r <= {31'd0, alu_cmp};
                 end else if (is_ne | is_ge | is_geu) begin
                    result_r <= {31'd0, ~alu_cmp};
                    cmp_r <= ~alu_cmp;
                 end
              end else begin
                 exec_cnt <= exec_cnt + 6'd1;
              end
           end

           ST_SEND: begin
              if (send_fire) begin
                 result_r <= {4'd0, result_r[31:4]};
                 if (rsp_last) begin
                    state <= ST_IDLE;
                    valid_r <= 1'b0;
                 end else begin
                    send_cnt <= send_cnt + 3'd1;
                 end
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
