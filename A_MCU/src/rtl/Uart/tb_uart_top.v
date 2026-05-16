// ============================================================
// File: uart_tx.v
// Role: Convert 8-bit parallel data to UART serial TX frame
// Format: 8N1, LSB first
// ============================================================
module uart_tx (
    input  wire       clk,
    input  wire       reset_n,
    input  wire       baud_tick,

    input  wire       tx_start,
    input  wire [7:0] tx_data,

    output reg        uart_tx_o,
    output reg        tx_busy,
    output reg        tx_done
);
    localparam TX_IDLE  = 2'd0;
    localparam TX_START = 2'd1;
    localparam TX_DATA  = 2'd2;
    localparam TX_STOP  = 2'd3;

    reg [1:0] tx_state;
    reg [7:0] tx_shift;
    reg [2:0] tx_bit_cnt;

    always @(posedge clk or negedge reset_n) begin
        if (!reset_n) begin
            tx_state   <= TX_IDLE;
            tx_shift   <= 8'd0;
            tx_bit_cnt <= 3'd0;
            uart_tx_o  <= 1'b1;
            tx_busy    <= 1'b0;
            tx_done    <= 1'b0;
        end else begin
            tx_done <= 1'b0;

            case (tx_state)
                TX_IDLE: begin
                    uart_tx_o  <= 1'b1;
                    tx_busy    <= 1'b0;
                    tx_bit_cnt <= 3'd0;

                    if (tx_start) begin
                        tx_shift <= tx_data;
                        tx_busy  <= 1'b1;
                        tx_state <= TX_START;
                    end
                end

                TX_START: begin
                    uart_tx_o <= 1'b0;
                    tx_busy   <= 1'b1;

                    if (baud_tick) begin
                        tx_state <= TX_DATA;
                    end
                end

                TX_DATA: begin
                    uart_tx_o <= tx_shift[0];
                    tx_busy   <= 1'b1;

                    if (baud_tick) begin
                        tx_shift <= {1'b0, tx_shift[7:1]};

                        if (tx_bit_cnt == 3'd7) begin
                            tx_bit_cnt <= 3'd0;
                            tx_state   <= TX_STOP;
                        end else begin
                            tx_bit_cnt <= tx_bit_cnt + 1'b1;
                        end
                    end
                end

                TX_STOP: begin
                    uart_tx_o <= 1'b1;
                    tx_busy   <= 1'b1;

                    if (baud_tick) begin
                        tx_done  <= 1'b1;
                        tx_busy  <= 1'b0;
                        tx_state <= TX_IDLE;
                    end
                end

                default: begin
                    tx_state  <= TX_IDLE;
                    uart_tx_o <= 1'b1;
                    tx_busy   <= 1'b0;
                end
            endcase
        end
    end
endmodule


// ============================================================
// File: uart_rx.v
// Role: Convert UART serial RX frame to 8-bit parallel data
// Format: 8N1, LSB first
// Note: RX has its own baud counter because it must sample
//       the center of the start bit and each data bit.
// ============================================================
module uart_rx #(
    parameter CLK_FREQ  = 50000000,
    parameter BAUD_RATE = 115200
)(
    input  wire       clk,
    input  wire       reset_n,
    input  wire       uart_rx_i,

    output reg  [7:0] rx_data,
    output reg        rx_done,
    output reg        frame_error
);
    localparam integer BAUD_DIV = CLK_FREQ / BAUD_RATE;
    localparam integer HALF_DIV = BAUD_DIV / 2;

    localparam RX_IDLE  = 2'd0;
    localparam RX_START = 2'd1;
    localparam RX_DATA  = 2'd2;
    localparam RX_STOP  = 2'd3;

    reg [1:0]  rx_state;
    reg [31:0] rx_cnt;
    reg [2:0]  rx_bit_cnt;
    reg [7:0]  rx_shift;

    // 2-stage synchronizer
    reg rx_sync1;
    reg rx_sync2;
    reg rx_sync2_d;

    wire rx_falling;
    assign rx_falling = (rx_sync2_d == 1'b1) && (rx_sync2 == 1'b0);

    always @(posedge clk or negedge reset_n) begin
        if (!reset_n) begin
            rx_sync1   <= 1'b1;
            rx_sync2   <= 1'b1;
            rx_sync2_d <= 1'b1;
        end else begin
            rx_sync1   <= uart_rx_i;
            rx_sync2   <= rx_sync1;
            rx_sync2_d <= rx_sync2;
        end
    end

    always @(posedge clk or negedge reset_n) begin
        if (!reset_n) begin
            rx_state    <= RX_IDLE;
            rx_cnt      <= 32'd0;
            rx_bit_cnt  <= 3'd0;
            rx_shift    <= 8'd0;
            rx_data     <= 8'd0;
            rx_done     <= 1'b0;
            frame_error <= 1'b0;
        end else begin
            rx_done <= 1'b0;

            case (rx_state)
                RX_IDLE: begin
                    rx_cnt     <= 32'd0;
                    rx_bit_cnt <= 3'd0;

                    if (rx_falling) begin
                        frame_error <= 1'b0;
                        rx_state    <= RX_START;
                        rx_cnt      <= 32'd0;
                    end
                end

                RX_START: begin
                    if (rx_cnt == HALF_DIV - 1) begin
                        rx_cnt <= 32'd0;

                        if (rx_sync2 == 1'b0) begin
                            rx_state <= RX_DATA;
                        end else begin
                            rx_state <= RX_IDLE;
                        end
                    end else begin
                        rx_cnt <= rx_cnt + 1'b1;
                    end
                end

                RX_DATA: begin
                    if (rx_cnt == BAUD_DIV - 1) begin
                        rx_cnt   <= 32'd0;
                        rx_shift <= {rx_sync2, rx_shift[7:1]};

                        if (rx_bit_cnt == 3'd7) begin
                            rx_bit_cnt <= 3'd0;
                            rx_state   <= RX_STOP;
                        end else begin
                            rx_bit_cnt <= rx_bit_cnt + 1'b1;
                        end
                    end else begin
                        rx_cnt <= rx_cnt + 1'b1;
                    end
                end

                RX_STOP: begin
                    if (rx_cnt == BAUD_DIV - 1) begin
                        rx_cnt <= 32'd0;

                        if (rx_sync2 == 1'b1) begin
                            rx_data <= rx_shift;
                            rx_done <= 1'b1;
                        end else begin
                            frame_error <= 1'b1;
                        end

                        rx_state <= RX_IDLE;
                    end else begin
                        rx_cnt <= rx_cnt + 1'b1;
                    end
                end

                default: begin
                    rx_state <= RX_IDLE;
                end
            endcase
        end
    end
endmodule


// ============================================================
// File: uart_regs.v
// Role: Memory-mapped register block
//
// This block converts SERV bus read/write into UART control/status.
// It does not directly include TX/RX FSMs.
// ============================================================
module uart_regs (
    input  wire        clk,
    input  wire        reset_n,

    // MMIO bus
    input  wire        uart_sel,
    input  wire [31:0] bus_addr,
    input  wire [31:0] bus_wdata,
    input  wire        bus_we,
    input  wire        bus_re,
    output reg  [31:0] bus_rdata,
    output wire        bus_ready,

    // TX control interface
    output reg         tx_start,
    output reg  [7:0]  tx_data,
    input  wire        tx_busy,
    input  wire        tx_done,

    // RX data interface
    input  wire [7:0]  rx_data_in,
    input  wire        rx_done,
    input  wire        frame_error_in
);
    localparam REG_TXDATA = 4'h0;
    localparam REG_RXDATA = 4'h4;
    localparam REG_STATUS = 4'h8;

    wire [3:0] reg_offset;
    wire       uart_write;
    wire       uart_read;
    wire       tx_ready;
    wire       txdata_write;
    wire       rxdata_read;
    wire       status_read;

    reg [7:0] rx_data_reg;
    reg       rx_valid;
    reg       rx_overrun;
    reg       frame_error_reg;

    assign reg_offset   = bus_addr[3:0];
    assign uart_write   = uart_sel & bus_we;
    assign uart_read    = uart_sel & bus_re;
    assign tx_ready     = ~tx_busy;
    assign txdata_write = uart_write & (reg_offset == REG_TXDATA);
    assign rxdata_read  = uart_read  & (reg_offset == REG_RXDATA);
    assign status_read  = uart_read  & (reg_offset == REG_STATUS);

    assign bus_ready = 1'b1;

    // TX register write path
    always @(posedge clk or negedge reset_n) begin
        if (!reset_n) begin
            tx_start <= 1'b0;
            tx_data  <= 8'd0;
        end else begin
            tx_start <= 1'b0;

            if (txdata_write && tx_ready) begin
                tx_data  <= bus_wdata[7:0];
                tx_start <= 1'b1;
            end
        end
    end

    // RX register and status flags
    always @(posedge clk or negedge reset_n) begin
        if (!reset_n) begin
            rx_data_reg     <= 8'd0;
            rx_valid        <= 1'b0;
            rx_overrun      <= 1'b0;
            frame_error_reg <= 1'b0;
        end else begin
            if (rx_done) begin
                if (rx_valid) begin
                    rx_overrun <= 1'b1;
                end

                rx_data_reg <= rx_data_in;
                rx_valid    <= 1'b1;
            end

            if (frame_error_in) begin
                frame_error_reg <= 1'b1;
            end

            // RXDATA read clears rx_valid
            if (rxdata_read) begin
                rx_valid <= 1'b0;
            end

            // STATUS read clears sticky error flags
            if (status_read) begin
                rx_overrun      <= 1'b0;
                frame_error_reg <= 1'b0;
            end
        end
    end

    // Bus read mux
    always @(*) begin
        if (uart_sel) begin
            case (reg_offset)
                REG_TXDATA: begin
                    bus_rdata = 32'd0;
                end

                REG_RXDATA: begin
                    bus_rdata = {24'd0, rx_data_reg};
                end

                REG_STATUS: begin
                    bus_rdata = {
                        27'd0,
                        frame_error_reg,
                        rx_overrun,
                        tx_ready,
                        tx_busy,
                        rx_valid
                    };
                end

                default: begin
                    bus_rdata = 32'd0;
                end
            endcase
        end else begin
            bus_rdata = 32'd0;
        end
    end
endmodule


// ============================================================
// File: uart_top.v
// Role: Top module that connects baud_gen, uart_tx, uart_rx,
//       and uart_regs.
//
// This is the module that should be connected to SERV bus.
// ============================================================
module uart_top #(
    parameter CLK_FREQ  = 50000000,
    parameter BAUD_RATE = 115200
)(
    input  wire        clk,
    input  wire        reset_n,

    // SERV/simple MMIO bus interface
    input  wire        uart_sel,
    input  wire [31:0] bus_addr,
    input  wire [31:0] bus_wdata,
    input  wire        bus_we,
    input  wire        bus_re,
    output wire [31:0] bus_rdata,
    output wire        bus_ready,

    // External UART pins
    input  wire        uart_rx_i,
    output wire        uart_tx_o
);
    wire       baud_tick;

    wire       tx_start;
    wire [7:0] tx_data;
    wire       tx_busy;
    wire       tx_done;

    wire [7:0] rx_data;
    wire       rx_done;
    wire       frame_error;

    baud_gen #(
        .CLK_FREQ(CLK_FREQ),
        .BAUD_RATE(BAUD_RATE)
    ) u_baud_gen (
        .clk(clk),
        .reset_n(reset_n),
        .baud_tick(baud_tick)
    );

    uart_tx u_uart_tx (
        .clk(clk),
        .reset_n(reset_n),
        .baud_tick(baud_tick),
        .tx_start(tx_start),
        .tx_data(tx_data),
        .uart_tx_o(uart_tx_o),
        .tx_busy(tx_busy),
        .tx_done(tx_done)
    );

    uart_rx #(
        .CLK_FREQ(CLK_FREQ),
        .BAUD_RATE(BAUD_RATE)
    ) u_uart_rx (
        .clk(clk),
        .reset_n(reset_n),
        .uart_rx_i(uart_rx_i),
        .rx_data(rx_data),
        .rx_done(rx_done),
        .frame_error(frame_error)
    );

    uart_regs u_uart_regs (
        .clk(clk),
        .reset_n(reset_n),

        .uart_sel(uart_sel),
        .bus_addr(bus_addr),
        .bus_wdata(bus_wdata),
        .bus_we(bus_we),
        .bus_re(bus_re),
        .bus_rdata(bus_rdata),
        .bus_ready(bus_ready),

        .tx_start(tx_start),
        .tx_data(tx_data),
        .tx_busy(tx_busy),
        .tx_done(tx_done),

        .rx_data_in(rx_data),
        .rx_done(rx_done),
        .frame_error_in(frame_error)
    );
endmodule


// ============================================================
// File: tb_uart_top.v
// Role: Simple simulation testbench
// ============================================================
`timescale 1ns/1ps

module tb_uart_top;
    reg clk;
    reg reset_n;

    reg        uart_sel;
    reg [31:0] bus_addr;
    reg [31:0] bus_wdata;
    reg        bus_we;
    reg        bus_re;
    wire [31:0] bus_rdata;
    wire        bus_ready;

    reg  uart_rx_i;
    wire uart_tx_o;

    // Fast simulation setting
    localparam CLK_FREQ_TB  = 1000000;
    localparam BAUD_RATE_TB = 100000;
    localparam CLK_PERIOD   = 1000;   // 1 MHz clock
    localparam BIT_TIME     = 10000;  // 100 kbaud

    localparam UART_BASE  = 32'h1000_0000;
    localparam REG_TXDATA = UART_BASE + 32'h0;
    localparam REG_RXDATA = UART_BASE + 32'h4;
    localparam REG_STATUS = UART_BASE + 32'h8;

    uart_top #(
        .CLK_FREQ(CLK_FREQ_TB),
        .BAUD_RATE(BAUD_RATE_TB)
    ) dut (
        .clk(clk),
        .reset_n(reset_n),
        .uart_sel(uart_sel),
        .bus_addr(bus_addr),
        .bus_wdata(bus_wdata),
        .bus_we(bus_we),
        .bus_re(bus_re),
        .bus_rdata(bus_rdata),
        .bus_ready(bus_ready),
        .uart_rx_i(uart_rx_i),
        .uart_tx_o(uart_tx_o)
    );

    initial begin
        clk = 1'b0;
        forever #(CLK_PERIOD/2) clk = ~clk;
    end

    task mmio_write;
        input [31:0] addr;
        input [31:0] data;
        begin
            @(posedge clk);
            uart_sel  <= 1'b1;
            bus_addr  <= addr;
            bus_wdata <= data;
            bus_we    <= 1'b1;
            bus_re    <= 1'b0;

            @(posedge clk);
            uart_sel  <= 1'b0;
            bus_addr  <= 32'd0;
            bus_wdata <= 32'd0;
            bus_we    <= 1'b0;
            bus_re    <= 1'b0;
        end
    endtask

    task mmio_read;
        input [31:0] addr;
        begin
            @(posedge clk);
            uart_sel <= 1'b1;
            bus_addr <= addr;
            bus_we   <= 1'b0;
            bus_re   <= 1'b1;

            @(posedge clk);
            $display("[READ] addr=0x%08h data=0x%08h time=%0t", addr, bus_rdata, $time);

            uart_sel <= 1'b0;
            bus_addr <= 32'd0;
            bus_we   <= 1'b0;
            bus_re   <= 1'b0;
        end
    endtask

    task send_uart_byte_to_rx;
        input [7:0] data;
        integer i;
        begin
            uart_rx_i <= 1'b1;
            #(BIT_TIME);

            uart_rx_i <= 1'b0;
            #(BIT_TIME);

            for (i = 0; i < 8; i = i + 1) begin
                uart_rx_i <= data[i];
                #(BIT_TIME);
            end

            uart_rx_i <= 1'b1;
            #(BIT_TIME);
        end
    endtask

    initial begin
        $dumpfile("tb_uart_top.vcd");
        $dumpvars(0, tb_uart_top);

        reset_n   = 1'b0;
        uart_sel  = 1'b0;
        bus_addr  = 32'd0;
        bus_wdata = 32'd0;
        bus_we    = 1'b0;
        bus_re    = 1'b0;
        uart_rx_i = 1'b1;

        repeat (5) @(posedge clk);
        reset_n = 1'b1;
        repeat (5) @(posedge clk);

        $display("[TEST 1] Initial STATUS");
        mmio_read(REG_STATUS);

        $display("[TEST 2] TXDATA write: 0x41 ('A')");
        mmio_write(REG_TXDATA, 32'h0000_0041);
        repeat (120) @(posedge clk);
        mmio_read(REG_STATUS);

        $display("[TEST 3] External RX byte: 0x55");
        send_uart_byte_to_rx(8'h55);
        repeat (20) @(posedge clk);

        $display("[TEST 4] STATUS should show rx_valid=1");
        mmio_read(REG_STATUS);

        $display("[TEST 5] RXDATA should be 0x55");
        mmio_read(REG_RXDATA);

        $display("[TEST 6] STATUS should show rx_valid=0 after RXDATA read");
        mmio_read(REG_STATUS);

        $display("[TEST DONE]");
        #10000;
        $finish;
    end
endmodule
