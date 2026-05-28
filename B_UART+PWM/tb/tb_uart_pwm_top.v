`timescale 1ns/1ps

module tb_uart_pwm_top;

    // Fast simulation setting
    // CLK_PERIOD = 10 ns -> 100 MHz test clock
    // CLKS_PER_BIT = 16 -> artificial fast UART for simulation
    parameter CLK_PERIOD   = 10;
    parameter CLKS_PER_BIT = 16;
    parameter BIT_PERIOD   = CLK_PERIOD * CLKS_PER_BIT;

    reg clk;
    reg reset_n;
    reg uart_rx_i;
    wire uart_tx_o;
    wire [3:0] pwm_out;

    integer high_count;
    integer total_count;
    integer i;

    uart_pwm_top #(
        .CLKS_PER_BIT(CLKS_PER_BIT)
    ) dut (
        .clk       (clk),
        .reset_n   (reset_n),
        .uart_rx_i (uart_rx_i),
        .uart_tx_o (uart_tx_o),
        .pwm_out   (pwm_out)
    );

    initial begin
        clk = 1'b0;
        forever #(CLK_PERIOD/2) clk = ~clk;
    end

    task uart_send_byte;
        input [7:0] data;
        integer bit_idx;
        begin
            // Start bit
            uart_rx_i = 1'b0;
            #(BIT_PERIOD);

            // Data bits, LSB first
            for (bit_idx = 0; bit_idx < 8; bit_idx = bit_idx + 1) begin
                uart_rx_i = data[bit_idx];
                #(BIT_PERIOD);
            end

            // Stop bit
            uart_rx_i = 1'b1;
            #(BIT_PERIOD);

            // Idle gap
            #(BIT_PERIOD);
        end
    endtask

    task uart_write_reg;
        input [7:0] addr;
        input [7:0] data;
        begin
            uart_send_byte(8'h01); // CMD_WRITE
            uart_send_byte(addr);
            uart_send_byte(data);
        end
    endtask

    task uart_read_reg;
        input [7:0] addr;
        begin
            uart_send_byte(8'h02); // CMD_READ
            uart_send_byte(addr);
            uart_send_byte(8'h00); // dummy
        end
    endtask

    initial begin
        $dumpfile("tb_uart_pwm_top.vcd");
        $dumpvars(0, tb_uart_pwm_top);

        reset_n   = 1'b0;
        uart_rx_i = 1'b1;
        high_count  = 0;
        total_count = 0;

        #(CLK_PERIOD * 20);
        reset_n = 1'b1;
        #(CLK_PERIOD * 20);

        // ------------------------------------------------------------
        // Configure PWM for easy waveform check:
        // prescale = 0, period = 9, duty0 = 5, duty1 = 2
        // PWM0 duty = 5 / 10 = 50%
        // PWM1 duty = 2 / 10 = 20%
        // ------------------------------------------------------------
        uart_write_reg(8'h01, 8'd0);    // PRESCALE = 0
        uart_write_reg(8'h02, 8'd9);    // PERIOD_L = 9
        uart_write_reg(8'h03, 8'd0);    // PERIOD_H = 0
        uart_write_reg(8'h04, 8'd5);    // DUTY0_L = 5
        uart_write_reg(8'h05, 8'd0);    // DUTY0_H = 0
        uart_write_reg(8'h06, 8'd2);    // DUTY1_L = 2
        uart_write_reg(8'h07, 8'd0);    // DUTY1_H = 0
        uart_write_reg(8'h0C, 8'b0000_0011); // enable PWM0, PWM1
        uart_write_reg(8'h00, 8'h01);   // global enable

        // Wait until values are applied and PWM is running
        #(CLK_PERIOD * 100);

        if (dut.u_reg_bank.prescale_reg !== 8'd0) begin
            $display("[FAIL] prescale mismatch");
            $finish;
        end
        if (dut.u_reg_bank.period_reg !== 16'd9) begin
            $display("[FAIL] period mismatch");
            $finish;
        end
        if (dut.u_reg_bank.duty0_reg !== 16'd5) begin
            $display("[FAIL] duty0 mismatch");
            $finish;
        end
        if (dut.u_reg_bank.duty1_reg !== 16'd2) begin
            $display("[FAIL] duty1 mismatch");
            $finish;
        end
        if (dut.u_reg_bank.ch_enable_reg[1:0] !== 2'b11) begin
            $display("[FAIL] channel enable mismatch");
            $finish;
        end
        if (dut.u_reg_bank.ctrl_reg[0] !== 1'b1) begin
            $display("[FAIL] global enable mismatch");
            $finish;
        end

        // Measure PWM0 for 10 PWM clocks.
        // With period=9, one PWM cycle has 10 ticks. Expected high_count around 5.
        high_count  = 0;
        total_count = 10;
        for (i = 0; i < total_count; i = i + 1) begin
            @(posedge clk);
            if (pwm_out[0]) begin
                high_count = high_count + 1;
            end
        end

        $display("PWM0 high_count over %0d clk cycles = %0d", total_count, high_count);

        if (high_count < 4 || high_count > 6) begin
            $display("[FAIL] PWM0 duty check failed");
            $finish;
        end

        // Read back DUTY0_L. UART TX waveform appears on uart_tx_o.
        uart_read_reg(8'h04);
        #(BIT_PERIOD * 20);

        $display("[PASS] UART-controlled PWM basic test passed");
        $finish;
    end

endmodule
