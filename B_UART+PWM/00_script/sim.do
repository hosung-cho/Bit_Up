

vlib work
vmap work work
vlog -novopt tb_uart_pwm_top.v pwm_core.v reg_bank.v uart_cmd_parser.v uart_rx.v uart_tx.v uart_pwm_top.v
vsim -novopt -wlf uart_pwm_top.wlf tb_uart_pwm_top
add wave *
add wave -group dut /tb_uart_pwm_top/dut/*

run 5000 ns
#quit -sim
