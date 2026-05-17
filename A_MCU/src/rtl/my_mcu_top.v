/*
 * my_mcu_top.v : SOP-28 패키지 타겟 RISC-V SoC Top Module
 */
module my_mcu_top #(
    // clk_sys = i_clk_fast / CLK_SYS_DIV. Keep this even and >= 2.
    parameter integer CLK_SYS_DIV = 32
) (
    input  wire i_clk_fast, // 외부 기준/고속 클럭. 실제 주파수는 보드에서 결정
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
    input  wire i_mem_miso,

    // UART
    output wire o_uart_tx,
    input  wire i_uart_rx,

    // GPIO
    input  wire [7:0] i_gpio,
    output wire [7:0] o_gpio,
    output wire [7:0] o_gpio_oe
    
    // (SPI, GPIO 핀 등은 생략 - 필요시 추가)
);

    // 1. 클럭 및 리셋
    localparam integer CLK_DIV_HALF = CLK_SYS_DIV / 2;
    localparam integer CLK_DIV_WIDTH = (CLK_DIV_HALF <= 2) ? 1 : $clog2(CLK_DIV_HALF);

    reg [CLK_DIV_WIDTH-1:0] clk_div = {CLK_DIV_WIDTH{1'b0}};
    reg clk_sys = 1'b0;
    always @(posedge i_clk_fast) begin
        if (clk_div == CLK_DIV_HALF-1) begin
            clk_div <= {CLK_DIV_WIDTH{1'b0}};
            clk_sys <= ~clk_sys;
        end else begin
            clk_div <= clk_div + 1'b1;
        end
    end
    wire rst = !i_rst_n;

    // 2. SERV 파라미터
    localparam WITH_CSR  = 0;
    localparam W         = 1;
    localparam RF_WIDTH  = W * 2;
    localparam CSR_REGS  = WITH_CSR * 4;
    localparam RF_DEPTH  = (32*(32+CSR_REGS))/RF_WIDTH;

    // 3. Wishbone 버스 선언
    wire [31:0] wb_ibus_adr, wb_dbus_adr;
    wire [31:0] wb_ibus_rdt, wb_dbus_rdt;
    wire [31:0] wb_dbus_dat;
    wire [3:0]  wb_dbus_sel;
    wire        wb_ibus_cyc, wb_dbus_cyc;
    wire        wb_dbus_we;
    wire        wb_ibus_ack, wb_dbus_ack;

    // 4. RF 인터페이스 신호
    wire        rf_wreq, rf_rreq, rf_ready;
    wire [4+WITH_CSR:0] wreg0, wreg1, rreg0, rreg1;
    reg  [4+WITH_CSR:0] rf_read_reg0;
    reg  [4+WITH_CSR:0] rf_read_reg1;
    wire [4+WITH_CSR:0] rf_read_reg0_to_if;
    wire [4+WITH_CSR:0] rf_read_reg1_to_if;
    wire        wen0, wen1;
    reg         rd_wdata0_next;
    wire [W-1:0] wdata0, wdata1;
    wire [W-1:0] rdata0, rdata1;

    wire [$clog2(RF_DEPTH)-1:0] waddr;
    wire [RF_WIDTH-1:0] wdata;
    wire                wen;
    wire [$clog2(RF_DEPTH)-1:0] raddr;
    wire                ren;
    wire [RF_WIDTH-1:0] rdata;

    function decode_rd_wdata0_next;
        input [31:0] insn;
        reg [6:0] opcode;
        reg [2:0] funct3;
        reg       is_alu_op;
        reg       is_shift_op;
        reg       is_compare_op;
        begin
            opcode = insn[6:0];
            funct3 = insn[14:12];
            is_alu_op = (opcode == 7'b0010011) || (opcode == 7'b0110011);
            is_shift_op = is_alu_op && funct3[0] && !funct3[1];
            is_compare_op = is_alu_op && (funct3[2:1] == 2'b01);

            decode_rd_wdata0_next =
                (opcode == 7'b0110111) ||                 // LUI
                (opcode == 7'b0010111) ||                 // AUIPC
                ((opcode == 7'b1110011) && (|funct3)) ||  // CSR
                (is_alu_op && !is_shift_op && !is_compare_op);
        end
    endfunction

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

    always @(posedge clk_sys) begin
        if (rst) begin
            rf_read_reg0 <= {1'b0, 5'd0};
            rf_read_reg1 <= {1'b0, 5'd0};
            rd_wdata0_next <= 1'b0;
        end else if (wb_ibus_ack) begin
            rf_read_reg0 <= {1'b0, wb_ibus_rdt[19:15]};
            rf_read_reg1 <= decode_rf_read_reg1(wb_ibus_rdt);
            rd_wdata0_next <= decode_rd_wdata0_next(wb_ibus_rdt);
        end else if (rf_rreq) begin
            rf_read_reg0 <= rreg0;
            rf_read_reg1 <= rreg1;
        end
    end

    assign rf_read_reg0_to_if = wb_ibus_ack ? {1'b0, wb_ibus_rdt[19:15]} :
                                rf_read_reg0;
    assign rf_read_reg1_to_if = (rf_rreq && rreg1[4+WITH_CSR]) ? rreg1 :
                                wb_ibus_ack ? decode_rf_read_reg1(wb_ibus_rdt) :
                                rf_read_reg1;

    // 5. SERV 코어 (RF 직접 연결)
    serv_top #(
        .RESET_PC(32'h0000_0000), // 부팅 주소
        .WITH_CSR(WITH_CSR),
        .W(W)
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

    // 6. RF 어댑터 + 외부 4핀 시리얼 RF
    serv_rf_ram_if #(
        .width(RF_WIDTH),
        .reset_strategy("MINI"),
        .csr_regs(CSR_REGS),
        .W(W)
    ) u_rf_if (
        .i_clk(clk_sys),
        .i_rst(rst),
        .i_wreq(rf_wreq),
        .i_rreq(rf_rreq),
        .o_ready(rf_ready),
        .i_wreg0(wreg0),
        .i_wreg1(wreg1),
        .i_wen0(wen0),
        .i_wen1(wen1),
        .i_wdata0(wdata0),
        .i_wdata1(wdata1),
        .i_wdata0_next(rd_wdata0_next),
        .i_rreg0(rf_read_reg0_to_if),
        .i_rreg1(rf_read_reg1_to_if),
        .o_rdata0(rdata0),
        .o_rdata1(rdata1),
        .o_waddr(waddr),
        .o_wdata(wdata),
        .o_wen(wen),
        .o_raddr(raddr),
        .o_ren(ren),
        .i_rdata(rdata)
    );

    serv_rf_ram #(
        .width(RF_WIDTH),
        .csr_regs(CSR_REGS),
        .depth(RF_DEPTH)
    ) u_rf_serial (
        .i_clk(clk_sys),
        .i_waddr(waddr),
        .i_wdata(wdata),
        .i_wen(wen),
        .i_raddr(raddr),
        .i_ren(ren),
        .o_rdata(rdata),
        .i_clk_fast(i_clk_fast),
        .i_rst(rst),
        .o_ext_rf_sync(o_rf_sync),
        .o_ext_rf_sck(o_rf_sck),
        .o_ext_rf_mosi(o_rf_mosi),
        .i_ext_rf_miso(i_rf_miso)
    );

    // -----------------------------------------------------------------
    // 7. Wishbone 주소 디코더 (Address Decoder)
    // -----------------------------------------------------------------
    // CPU가 내보내는 주소(wb_dbus_adr)를 보고 누구를 깨울지 결정합니다.
    
    wire [31:0] mem_ibus_rdt;
    wire        mem_ibus_ack;
    wire [31:0] mem_dbus_rdt;
    wire        mem_dbus_ack;

    offchip_mem_bridge u_mem_serial (
        .i_clk_fast(i_clk_fast),
        .i_clk_sys(clk_sys),
        .i_rst((!i_rst_n) || rst),

        .i_ibus_cyc(wb_ibus_cyc),
        .i_ibus_adr(wb_ibus_adr),
        .o_ibus_rdt(mem_ibus_rdt),
        .o_ibus_ack(mem_ibus_ack),

        .i_dbus_cyc(wb_dbus_cyc),
        .i_dbus_adr(wb_dbus_adr),
        .i_dbus_dat(wb_dbus_dat),
        .i_dbus_sel(wb_dbus_sel),
        .i_dbus_we(wb_dbus_we),
        .o_dbus_rdt(mem_dbus_rdt),
        .o_dbus_ack(mem_dbus_ack),

        .o_mem_sync(o_mem_sync),
        .o_mem_sck(o_mem_sck),
        .o_mem_mosi(o_mem_mosi),
        .i_mem_miso(i_mem_miso)
    );

    assign wb_ibus_rdt = mem_ibus_rdt;
    assign wb_ibus_ack = mem_ibus_ack;

    assign o_uart_tx = 1'b1;
    assign o_gpio = 8'h00;
    assign o_gpio_oe = 8'h00;

    assign wb_dbus_rdt = mem_dbus_rdt;
    assign wb_dbus_ack = mem_dbus_ack;

endmodule
