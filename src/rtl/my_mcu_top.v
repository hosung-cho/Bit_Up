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

    // UART
    output wire o_uart_tx,
    input  wire i_uart_rx
    
    // (SPI, GPIO 핀 등은 생략 - 필요시 추가)
);

    // 1. 클럭 및 리셋
    localparam integer CLK_DIV_HALF = CLK_SYS_DIV / 2;
    localparam integer CLK_DIV_WIDTH = (CLK_DIV_HALF <= 2) ? 1 : $clog2(CLK_DIV_HALF);

    reg [CLK_DIV_WIDTH-1:0] clk_div;
    reg clk_sys;
    always @(posedge i_clk_fast or negedge i_rst_n) begin
        if (!i_rst_n) begin
            clk_div <= {CLK_DIV_WIDTH{1'b0}};
            clk_sys <= 1'b0;
        end else begin
            if (clk_div == CLK_DIV_HALF-1) begin
                clk_div <= {CLK_DIV_WIDTH{1'b0}};
                clk_sys <= ~clk_sys;
            end else begin
                clk_div <= clk_div + 1'b1;
            end
        end
    end
    reg [3:0] rst_shift;
    always @(posedge clk_sys or negedge i_rst_n) begin
        if (!i_rst_n)
            rst_shift <= 4'hf;
        else
            rst_shift <= {rst_shift[2:0], 1'b0};
    end
    wire rst = |rst_shift;

    // 2. SERV 파라미터
    localparam WITH_CSR  = 1;
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
    wire        wen0, wen1;
    wire [W-1:0] wdata0, wdata1;
    wire [W-1:0] rdata0, rdata1;

    wire [$clog2(RF_DEPTH)-1:0] waddr;
    wire [RF_WIDTH-1:0] wdata;
    wire                wen;
    wire [$clog2(RF_DEPTH)-1:0] raddr;
    wire                ren;
    wire [RF_WIDTH-1:0] rdata;

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
        .i_rreg0(rreg0),
        .i_rreg1(rreg1),
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
    
    wire sel_mem  = (wb_dbus_adr[31:28] == 4'h0); // 0x0000_XXXX : 피코 메모리
    wire sel_peri = (wb_dbus_adr[31:28] == 4'h4); // 0x4000_XXXX : 주변장치 영역
    
    wire sel_uart = sel_peri && (wb_dbus_adr[11:8] == 4'h0); // 0x4000_00XX
    wire sel_gpio = sel_peri && (wb_dbus_adr[11:8] == 4'h1); // 0x4000_01XX

    // -----------------------------------------------------------------
    // 8. 주변장치 더미 연결 (UART 등)
    // -----------------------------------------------------------------
    wire [31:0] uart_rdt;
    wire        uart_ack;

    // 데이터 버스 MUX (선택된 장치의 응답을 CPU로 전달)
    assign wb_dbus_rdt = sel_uart ? uart_rdt :
                         sel_mem  ? 32'h0000_0000 : // TODO: 메모리 브리지 연결
                         32'h0000_0000;
                         
    assign wb_dbus_ack = sel_uart ? uart_ack :
                         sel_mem  ? 1'b0 : // TODO: 메모리 브리지 연결
                         1'b0;

    // TODO: 여기에 UART 모듈 인스턴스화

endmodule
