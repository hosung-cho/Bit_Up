/*
 * my_mcu_top.v : SOP-28 패키지 타겟 RISC-V SoC Top Module
 */
module my_mcu_top #(
    // Default keeps the proven internal divider flow.
    // Set USE_EXT_SYS_CLK=1 for area-first tape-out mode where the board/Pico
    // supplies a separate slow SERV clock on i_clk_sys_ext.
    parameter integer CLK_SYS_DIV = 32,
    // QFlow physical implementation copy: synthesize the area-first external
    // slow-clock variant.  The canonical RTL keeps USE_EXT_SYS_CLK=0 by
    // default for existing functional simulations.
    parameter integer USE_EXT_SYS_CLK = 0,
    // Area-first RV32E mode. The core still decodes 5-bit register fields, but
    // the external RF only implements x0-x15; software must not use x16-x31.
    parameter integer RV32E_MODE = 0,
    parameter integer MEM_ADDR_BITS = 32,
    parameter integer USE_RF_INTERLOCK = 1,
    parameter integer DISABLE_DBUS = 0,
    parameter integer WORD_MEM_ONLY = 0,
    parameter integer STORE_ONLY_DBUS = 0,
    parameter integer SERV_PRE_REGISTER = 1,
    parameter integer SINGLE_RF_READ = 0,
    parameter integer STREAM_RS2_READ = 0,
    // Keep MINI for simulation/debug. The physical implementation copy can
    // override this to "NONE" when the MPW flow needs the smallest cell area.
    parameter RESET_STRATEGY = "MINI"
) (
    input  wire i_clk_fast,    // RF/memory serial fast clock
    input  wire i_clk_sys_ext, // optional external slow SERV clock
    input  wire i_rst_n,    // Active-Low 리셋 버튼

    // External RF 브리지 (Pico 통신용)
    output wire o_rf_sync,
    output wire o_rf_sck,
    output wire o_rf_mosi,
    input  wire i_rf_miso,

    // External instruction/data memory bridge (Pico 통신용)
    output wire o_mem_sync,
    output wire o_mem_sck,
    output wire o_mem_mosi,
    input  wire i_mem_miso
);

    // 1. 클럭 및 리셋
    wire clk_sys;
    generate
        if (USE_EXT_SYS_CLK != 0) begin : gen_ext_sys_clk
            assign clk_sys = i_clk_sys_ext;
        end else begin : gen_int_sys_clk
            localparam integer CLK_DIV_HALF = CLK_SYS_DIV / 2;
            localparam integer CLK_DIV_WIDTH = (CLK_DIV_HALF <= 2) ? 1 : $clog2(CLK_DIV_HALF);

            reg [CLK_DIV_WIDTH-1:0] clk_div = {CLK_DIV_WIDTH{1'b0}};
            reg clk_sys_r = 1'b0;
            always @(posedge i_clk_fast) begin
                if (clk_div == CLK_DIV_HALF-1) begin
                    clk_div <= {CLK_DIV_WIDTH{1'b0}};
                    clk_sys_r <= ~clk_sys_r;
                end else begin
                    clk_div <= clk_div + 1'b1;
                end
            end
            assign clk_sys = clk_sys_r;
        end
    endgenerate
    wire rst = !i_rst_n;

    // 2. SERV 파라미터
    localparam WITH_CSR  = 0;
    localparam W         = 1;
    localparam RF_WIDTH  = W * 2;
    localparam CSR_REGS  = WITH_CSR * 4;
    localparam GPR_REGS  = (RV32E_MODE != 0) ? 16 : 32;
    localparam RF_DEPTH  = (32*(GPR_REGS+CSR_REGS))/RF_WIDTH;
    localparam RF_RAW    = $clog2(GPR_REGS+CSR_REGS);

    // 3. Wishbone 버스 선언
    wire [31:0] wb_ibus_adr, wb_dbus_adr;
    wire [31:0] wb_ibus_rdt, wb_dbus_rdt;
    wire [31:0] wb_dbus_dat;
    wire [3:0]  wb_dbus_sel;
    wire        wb_ibus_cyc, wb_dbus_cyc;
    wire        wb_dbus_we;
    wire        wb_ibus_ack, wb_dbus_ack;
    wire [31:0] mem_ibus_rdt;
    wire        mem_ibus_ack;
    wire [31:0] mem_dbus_rdt;
    wire        mem_dbus_ack;

    // 4. RF 인터페이스 신호
    wire        rf_wreq, rf_rreq, rf_ready;
    wire [4+WITH_CSR:0] wreg0, wreg1, rreg0, rreg1;
    reg  [4+WITH_CSR:0] rf_read_reg0;
    reg  [4+WITH_CSR:0] rf_read_reg1;
    wire [4+WITH_CSR:0] rf_read_reg0_to_if;
    wire [4+WITH_CSR:0] rf_read_reg1_to_if;
    wire        wen0, wen1;
    wire        rf_wdata0_next;
    wire        rf_wdata0_next_to_if;
    wire [W-1:0] wdata0, wdata1;
    wire [W-1:0] rdata0, rdata1;

    wire [$clog2(RF_DEPTH)-1:0] waddr;
    wire [RF_WIDTH-1:0] wdata;
    wire                wen;
    wire [$clog2(RF_DEPTH)-1:0] raddr;
    wire                ren;
    wire [RF_WIDTH-1:0] rdata;
    wire [RF_RAW-1:0]   rf_wreg0_to_if = wreg0[RF_RAW-1:0];
    wire [RF_RAW-1:0]   rf_wreg1_to_if = wreg1[RF_RAW-1:0];
    wire [RF_RAW-1:0]   rf_rreg0_to_if = rf_read_reg0_to_if[RF_RAW-1:0];
    wire [RF_RAW-1:0]   rf_rreg1_to_if = rf_read_reg1_to_if[RF_RAW-1:0];

    // Correctness-first off-chip RF interlock.
    //
    // SERV can fetch the next instruction while the previous instruction's
    // RF write bits are still being drained to the serial RF. With an on-chip
    // RF this timing is harmless, but the off-chip RF read prefetch can then
    // sample stale operands. Hold the instruction ack seen by SERV until the
    // current GPR write burst has reached its final chunk.
    reg        rf_write_drain_busy;
    reg        ibus_pending_ack;
    reg [31:0] ibus_pending_rdt;
    wire       rf_write_start = rf_wreq && wen0 && (wreg0[4:0] != 5'd0);
    wire       rf_write_done  = wen && (waddr[3:0] == 4'd15);
    wire       ibus_interlock = rf_write_drain_busy || rf_write_start;
    wire       ibus_can_ack   = !ibus_interlock;

    assign wb_ibus_ack = (USE_RF_INTERLOCK == 0) ? mem_ibus_ack :
                         ibus_pending_ack ? ibus_can_ack :
                         (mem_ibus_ack && ibus_can_ack);
    assign wb_ibus_rdt = ((USE_RF_INTERLOCK != 0) && ibus_pending_ack) ? ibus_pending_rdt : mem_ibus_rdt;

    generate
        if (RESET_STRATEGY == "NONE") begin : gen_ibus_interlock_no_reset
            always @(posedge clk_sys) begin
                if (USE_RF_INTERLOCK != 0) begin
                    if (rf_write_start)
                        rf_write_drain_busy <= 1'b1;
                    else if (rf_write_done)
                        rf_write_drain_busy <= 1'b0;

                    if (mem_ibus_ack && (!ibus_can_ack || ibus_pending_ack)) begin
                        ibus_pending_ack <= 1'b1;
                        ibus_pending_rdt <= mem_ibus_rdt;
                    end else if (ibus_pending_ack && ibus_can_ack) begin
                        ibus_pending_ack <= 1'b0;
                    end
                end
            end
        end else begin : gen_ibus_interlock_reset
            always @(posedge clk_sys or posedge rst) begin
                if (rst) begin
                    rf_write_drain_busy <= 1'b0;
                    ibus_pending_ack <= 1'b0;
                    ibus_pending_rdt <= 32'h0000_0013;
                end else begin
                    if (USE_RF_INTERLOCK != 0) begin
                        if (rf_write_start)
                            rf_write_drain_busy <= 1'b1;
                        else if (rf_write_done)
                            rf_write_drain_busy <= 1'b0;

                        if (mem_ibus_ack && (!ibus_can_ack || ibus_pending_ack)) begin
                            ibus_pending_ack <= 1'b1;
                            ibus_pending_rdt <= mem_ibus_rdt;
                        end else if (ibus_pending_ack && ibus_can_ack) begin
                            ibus_pending_ack <= 1'b0;
                        end
                    end
                end
            end
        end
    endgenerate

    function [4+WITH_CSR:0] decode_rf_read_reg1;
        input [31:0] insn;
        reg [1:0] csr_addr;
        reg       csr_valid;
        begin
            if (WITH_CSR == 0) begin
                decode_rf_read_reg1 = insn[24:20];
            end else begin
                csr_addr = {insn[26] & insn[20], !insn[26] | insn[21]};
                csr_valid = insn[20] | (insn[26] & !insn[21]);

                if (insn[6:0] == 7'b1110011) begin
                    if (|insn[14:12])
                        decode_rf_read_reg1 = csr_valid ? {4'b1000, csr_addr} : {1'b0, insn[24:20]};
                    else if (insn == 32'h30200073)
                        decode_rf_read_reg1 = 6'b100010; // mret reads mepc
                    else
                        decode_rf_read_reg1 = 6'b100001; // traps read mtvec
                end else begin
                    decode_rf_read_reg1 = {1'b0, insn[24:20]};
                end
            end
        end
    endfunction

    function decode_wdata0_next_hint;
        input [31:0] insn;
        reg is_bool_alu;
        reg is_sub_alu;
        reg is_u_type;
        begin
            is_bool_alu = ((insn[6:0] == 7'b0110011) ||
                           (insn[6:0] == 7'b0010011)) &&
                          ((insn[14:12] == 3'b100) ||
                           (insn[14:12] == 3'b110) ||
                           (insn[14:12] == 3'b111));
            is_sub_alu = (insn[6:0] == 7'b0110011) &&
                         (insn[14:12] == 3'b000) &&
                         insn[30];
            is_u_type = (insn[6:0] == 7'b0110111) || // LUI
                        (insn[6:0] == 7'b0010111);   // AUIPC

            decode_wdata0_next_hint = is_bool_alu | is_sub_alu | is_u_type;
        end
    endfunction

    function decode_uses_rs2;
        input [31:0] insn;
        begin
            decode_uses_rs2 = (insn[6:0] == 7'b0110011) | // R-type ALU
                              (insn[6:0] == 7'b1100011) | // branch compare
                              (insn[6:0] == 7'b0100011);  // store data
        end
    endfunction

    reg has_fetched_first_insn;
    reg current_wdata0_next_hint;
    reg current_stream_rs2_hint;
    generate
        if (RESET_STRATEGY == "NONE") begin : gen_rf_prefetch_hint_no_reset
            always @(posedge clk_sys) begin
                if (wb_ibus_ack) begin
                    rf_read_reg0 <= (USE_RF_INTERLOCK == 0) ? rreg0 : {1'b0, wb_ibus_rdt[19:15]};
                    rf_read_reg1 <= (USE_RF_INTERLOCK == 0) ? rreg1 : decode_rf_read_reg1(wb_ibus_rdt);
                    has_fetched_first_insn <= 1'b1;
                    current_wdata0_next_hint <= (USE_RF_INTERLOCK == 0) ? 1'b0 : decode_wdata0_next_hint(wb_ibus_rdt);
                    current_stream_rs2_hint <= decode_uses_rs2(wb_ibus_rdt);
                end else if (rf_rreq) begin
                    rf_read_reg0 <= rreg0;
                    rf_read_reg1 <= rreg1;
                end
            end
        end else begin : gen_rf_prefetch_hint_reset
            always @(posedge clk_sys or posedge rst) begin
                if (rst) begin
                    rf_read_reg0 <= {1'b0, 5'd0};
                    rf_read_reg1 <= {1'b0, 5'd0};
                    has_fetched_first_insn <= 1'b0;
                    current_wdata0_next_hint <= 1'b0;
                    current_stream_rs2_hint <= 1'b0;
                end else if (wb_ibus_ack) begin
                    rf_read_reg0 <= (USE_RF_INTERLOCK == 0) ? rreg0 : {1'b0, wb_ibus_rdt[19:15]};
                    rf_read_reg1 <= (USE_RF_INTERLOCK == 0) ? rreg1 : decode_rf_read_reg1(wb_ibus_rdt);
                    has_fetched_first_insn <= 1'b1;
                    current_wdata0_next_hint <= (USE_RF_INTERLOCK == 0) ? 1'b0 : decode_wdata0_next_hint(wb_ibus_rdt);
                    current_stream_rs2_hint <= decode_uses_rs2(wb_ibus_rdt);
                end else if (rf_rreq) begin
                    rf_read_reg0 <= rreg0;
                    rf_read_reg1 <= rreg1;
                end
            end
        end
    endgenerate

    assign rf_wdata0_next_to_if = (USE_RF_INTERLOCK == 0) ? rf_wdata0_next :
                                  (rf_wdata0_next | current_wdata0_next_hint);

    assign rf_read_reg0_to_if = (USE_RF_INTERLOCK == 0) ? rreg0 :
                                wb_ibus_ack ? {1'b0, wb_ibus_rdt[19:15]} :
                                rf_read_reg0;
    assign rf_read_reg1_to_if = (USE_RF_INTERLOCK == 0) ? rreg1 :
                                ((WITH_CSR != 0) && rf_rreq && rreg1[4+WITH_CSR]) ? rreg1 :
                                wb_ibus_ack ? decode_rf_read_reg1(wb_ibus_rdt) :
                                rf_read_reg1;

    // 5. SERV 코어 (RF 직접 연결)
    serv_top #(
        .RESET_PC(32'h0000_0000), // 부팅 주소
        .WITH_CSR(WITH_CSR),
        .W(W),
        .PRE_REGISTER(SERV_PRE_REGISTER != 0),
        .WITH_MEM(DISABLE_DBUS == 0),
        .WORD_MEM_ONLY(WORD_MEM_ONLY != 0),
        .STORE_ONLY_MEM(STORE_ONLY_DBUS != 0),
        .RESET_STRATEGY(RESET_STRATEGY)
    ) u_cpu (
        .clk(clk_sys),
        .i_rst(rst),
        .i_timer_irq(1'b0),

        // RF Interface
        .o_rf_rreq(rf_rreq),
        .o_rf_wreq(rf_wreq),
        .i_rf_ready(rf_ready),
        .o_wreg0(wreg0),
        .o_wreg1(wreg1),
        .o_wen0(wen0),
        .o_wen1(wen1),
        .o_wdata0(wdata0),
        .o_wdata1(wdata1),
        .o_rreg0(rreg0),
        .o_rreg1(rreg1),
        .i_rdata0(rdata0),
        .i_rdata1(rdata1),
        .o_rf_wdata0_next(rf_wdata0_next),

        // Instruction Bus
        .o_ibus_adr(wb_ibus_adr), .o_ibus_cyc(wb_ibus_cyc),
        .i_ibus_rdt(wb_ibus_rdt), .i_ibus_ack(wb_ibus_ack),
        
        // Data Bus
        .o_dbus_adr(wb_dbus_adr), .o_dbus_cyc(wb_dbus_cyc), .o_dbus_we(wb_dbus_we),
        .o_dbus_dat(wb_dbus_dat), .o_dbus_sel(wb_dbus_sel),
        .i_dbus_rdt(wb_dbus_rdt), .i_dbus_ack(wb_dbus_ack),

        // Extension interface (unused)
        .i_ext_ready(1'b0),
        .i_ext_rd(32'b0)
    );

    // 6. 통합 RF 어댑터 및 외부 4핀 시리얼 RF
    serv_rf_ram_if #(
        .width(RF_WIDTH),
        .reset_strategy(RESET_STRATEGY),
        .gpr_regs(GPR_REGS),
        .csr_regs(CSR_REGS),
        .single_read_port(SINGLE_RF_READ != 0),
        .stream_rs2_read(STREAM_RS2_READ != 0),
        .W(W)
    ) u_rf_if (
        .i_clk(clk_sys),
        .i_rst(rst),
        .i_wreq(rf_wreq),
        .i_rreq(rf_rreq && (has_fetched_first_insn || wb_ibus_ack)),
        .o_ready(rf_ready),
        .i_wreg0(rf_wreg0_to_if),
        .i_wreg1(rf_wreg1_to_if),
        .i_wen0(wen0),
        .i_wen1(wen1),
        .i_wdata0(wdata0),
        .i_wdata1(wdata1),
        .i_wdata0_next(rf_wdata0_next_to_if),
        .i_rreg0(rf_rreg0_to_if),
        .i_rreg1(rf_rreg1_to_if),
        .i_stream_rs2_en(wb_ibus_ack ? decode_uses_rs2(wb_ibus_rdt) : current_stream_rs2_hint),
        .o_rdata0(rdata0),
        .o_rdata1(rdata1),
        .o_waddr(waddr),
        .o_wdata(wdata),
        .o_wen(wen),
        .o_raddr(raddr),
        .o_ren(ren),
        .i_clk_fast(i_clk_fast),
        .o_rf_sync(o_rf_sync),
        .o_rf_sck(o_rf_sck),
        .o_rf_mosi(o_rf_mosi),
        .i_rf_miso(i_rf_miso)
    );

    // -----------------------------------------------------------------
    // 7. Wishbone 주소 디코더 (Address Decoder)
    // -----------------------------------------------------------------
    // CPU가 내보내는 주소(wb_dbus_adr)를 보고 누구를 깨울지 결정합니다.
    
    offchip_mem_bridge #(
        .ADDR_BITS(MEM_ADDR_BITS),
        .RESET_STRATEGY(RESET_STRATEGY)
    ) u_mem_serial (
        .i_clk_fast(i_clk_fast),
        .i_clk_sys(clk_sys),
        .i_rst((!i_rst_n) || rst),

        .i_ibus_cyc(wb_ibus_cyc),
        .i_ibus_adr(wb_ibus_adr),
        .o_ibus_rdt(mem_ibus_rdt),
        .o_ibus_ack(mem_ibus_ack),

        .i_dbus_cyc((DISABLE_DBUS == 0) ? wb_dbus_cyc : 1'b0),
        .i_dbus_adr(wb_dbus_adr),
        .i_dbus_dat(wb_dbus_dat),
        .i_dbus_sel((STORE_ONLY_DBUS != 0) ? 4'b1111 : wb_dbus_sel),
        .i_dbus_we((STORE_ONLY_DBUS != 0) ? 1'b1 : wb_dbus_we),
        .o_dbus_rdt(mem_dbus_rdt),
        .o_dbus_ack(mem_dbus_ack),

        .o_mem_sync(o_mem_sync),
        .o_mem_sck(o_mem_sck),
        .o_mem_mosi(o_mem_mosi),
        .i_mem_miso(i_mem_miso)
    );

    assign wb_dbus_rdt = ((DISABLE_DBUS == 0) && (STORE_ONLY_DBUS == 0)) ? mem_dbus_rdt : 32'b0;
    assign wb_dbus_ack = (DISABLE_DBUS == 0) ? mem_dbus_ack : wb_dbus_cyc;

endmodule
