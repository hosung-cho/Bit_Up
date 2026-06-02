#!/bin/tcsh -f
# QFlow project variables for serv_exec_unit on ETRI 0.5um CMOS.

set initial_density = 0.80
set graywolf_options = "-n"
set yosys_options = "-s /home/hosung/Ho/MPW/MPW_workspace/Bit_Up/C_SERV_ALU_FPGA/backend_physical_qflow/source/serv_exec_unit.ys"

# The ETRI examples disallow stacked vias for this process setup.
set via_stacks = "none"

# Keep qrouter in non-GUI batch mode.
set route_show = 0
