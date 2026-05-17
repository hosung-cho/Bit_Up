`timescale 1ns/1ps

// Simple testbench for the uploaded 6502 CPU core.
// Memory model is synchronous: read data appears on DI one clock after AB.

module tb_6502_cpu;
    reg         clk;
    reg         reset;
    wire [15:0] AB;
    reg  [7:0]  DI;
    wire [7:0]  DO;
    wire        WE;
    reg         IRQ;
    reg         NMI;
    reg         RDY;

    reg [7:0] mem [0:65535];
    integer i;
    integer cycle;

    cpu dut (
        .clk   (clk),
        .reset (reset),
        .AB    (AB),
        .DI    (DI),
        .DO    (DO),
        .WE    (WE),
        .IRQ   (IRQ),
        .NMI   (NMI),
        .RDY   (RDY)
    );

    // 100 MHz clock for simulation
    initial begin
        clk = 1'b0;
        forever #5 clk = ~clk;
    end

    // Synchronous 64KB memory model
    always @(posedge clk) begin
        if (RDY) begin
            if (^AB !== 1'bx) begin
                DI <= mem[AB];
                if (WE) begin
                    mem[AB] <= DO;
                    $display("[%0t] WRITE mem[%04h] <= %02h", $time, AB, DO);
                end
            end else begin
                DI <= 8'h00;
            end
        end
    end

    initial begin
        $dumpfile("tb_6502_cpu.vcd");
        $dumpvars(0, tb_6502_cpu);

        for (i = 0; i < 65536; i = i + 1)
            mem[i] = 8'h00;

        // Initialize internal register file for clean simulation.
        // AXYS index: 0=A, 1=S, 2=X, 3=Y in this CPU core.
        dut.AXYS[0] = 8'h00;  // A
        dut.AXYS[1] = 8'hFF;  // S, stack pointer
        dut.AXYS[2] = 8'h00;  // X
        dut.AXYS[3] = 8'h00;  // Y

        // ------------------------------------------------------------
        // Test program at $8000
        // ------------------------------------------------------------
        // $8000: A9 05       LDA #$05
        // $8002: 69 03       ADC #$03       ; A = 0x08
        // $8004: 8D 00 02    STA $0200      ; mem[$0200] = 0x08
        // $8007: A2 03       LDX #$03
        // $8009: CA          DEX
        // $800A: D0 FD       BNE $8009      ; repeat until X == 0
        // $800C: E8          INX            ; X = 1
        // $800D: 8E 01 02    STX $0201      ; mem[$0201] = 0x01
        // $8010: 4C 10 80    JMP $8010      ; stop loop
        // ------------------------------------------------------------
        mem[16'h8000] = 8'hA9;
        mem[16'h8001] = 8'h05;
        mem[16'h8002] = 8'h69;
        mem[16'h8003] = 8'h03;
        mem[16'h8004] = 8'h8D;
        mem[16'h8005] = 8'h00;
        mem[16'h8006] = 8'h02;
        mem[16'h8007] = 8'hA2;
        mem[16'h8008] = 8'h03;
        mem[16'h8009] = 8'hCA;
        mem[16'h800A] = 8'hD0;
        mem[16'h800B] = 8'hFD;
        mem[16'h800C] = 8'hE8;
        mem[16'h800D] = 8'h8E;
        mem[16'h800E] = 8'h01;
        mem[16'h800F] = 8'h02;
        mem[16'h8010] = 8'h4C;
        mem[16'h8011] = 8'h10;
        mem[16'h8012] = 8'h80;

        // Reset vector = $8000
        mem[16'hFFFC] = 8'h00;
        mem[16'hFFFD] = 8'h80;

        // IRQ/BRK vector also points to $8000 for safety
        mem[16'hFFFE] = 8'h00;
        mem[16'hFFFF] = 8'h80;

        IRQ   = 1'b0;
        NMI   = 1'b0;
        RDY   = 1'b1;
        DI    = 8'h00;
        reset = 1'b1;

        repeat (5) @(posedge clk);
        reset = 1'b0;

        // Run long enough for the program to complete and enter JMP loop.
        for (cycle = 0; cycle < 300; cycle = cycle + 1) begin
            @(posedge clk);

`ifdef SIM
            $display("cycle=%0d AB=%04h DI=%02h DO=%02h WE=%b PC=%04h A=%02h X=%02h Y=%02h S=%02h state=%s",
                     cycle, AB, DI, DO, WE,
                     dut.PC, dut.A, dut.X, dut.Y, dut.S, dut.statename);
`else
            $display("cycle=%0d AB=%04h DI=%02h DO=%02h WE=%b PC=%04h",
                     cycle, AB, DI, DO, WE, dut.PC);
`endif
        end

        $display("--------------------------------------------------");
        $display("RESULT mem[0200] = %02h, expected 08", mem[16'h0200]);
        $display("RESULT mem[0201] = %02h, expected 01", mem[16'h0201]);

        if (mem[16'h0200] == 8'h08 && mem[16'h0201] == 8'h01)
            $display("TEST PASS");
        else
            $display("TEST FAIL");

        $display("--------------------------------------------------");
        $finish;
    end
endmodule
