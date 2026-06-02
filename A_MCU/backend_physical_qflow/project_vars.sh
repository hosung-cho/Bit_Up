#!/bin/tcsh -f
# QFlow project variables for my_mcu_top on ETRI 0.5um CMOS.

# Area-first MPW target. DRC cleanup is handled after the core is under 1mm x 1mm.
set initial_density = 1.00
set graywolf_options = "-n"
set yosys_options = "-s /home/hosung/Ho/MPW/MPW_workspace/Bit_Up/A_MCU/backend_physical_qflow/source/my_mcu_top_custom.ys"

# The ETRI examples disallow stacked vias for this process setup.
set via_stacks = "none"

# Keep qrouter visible in logs; use non-GUI batch execution.
set route_show = 0
