@echo off
iverilog -g2005-sv -o sim_uart_pwm.vvp -f filelist.f
vvp sim_uart_pwm.vvp
pause
