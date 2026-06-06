# ==========================================
# Vivado Tcl Postroute Simulation Script
# ==========================================

set script_dir [file normalize [file dirname [info script]]]
set project_root [file normalize "$script_dir/../../.."]
set repo_root [file normalize "$project_root/../../.."]
set tb_dir [file normalize "$script_dir/.."]
set top_module tb_fpga_host_rv32i

set stdcell_verilog "$repo_root/ETRI-0.5um-CMOS-MPW-Std-Cell-DK/digital_ETRI/khu_etri05_stdcells.v"
set postroute_verilog "$project_root/ETRI050_Ho/synthesis/serv_exec_unit_postroute.v"

puts "\[Tcl\] 1. postroute simulation project..."
create_project -force -part xc7a35tcpg236-1 sim_project_postroute "$script_dir/sim_workspace_postroute"

puts "\[Tcl\] 2. adding stdcells, postroute netlist, FPGA RTL, and testbench..."
read_verilog "$stdcell_verilog"
read_verilog "$postroute_verilog"
read_verilog "$project_root/src/rtl/fpga/serv_exec_fpga_bridge.v"
read_verilog "$project_root/src/rtl/fpga/serv_fpga_host.v"
read_verilog "$project_root/src/rtl/fpga/serv_fpga_top.v"
read_verilog "$tb_dir/tb_fpga_host_rv32i.v"

puts "\[Tcl\] 3. top module..."
set_property top $top_module [get_filesets sim_1]

puts "\[Tcl\] 4. simulation settings..."
set_property -name {xsim.simulate.runtime} -value {all} -objects [get_filesets sim_1]
set_property -name {xsim.elaborate.load_glbl} -value {false} -objects [get_filesets sim_1]
set_property -name {xsim.simulate.log_all_signals} -value {false} -objects [get_filesets sim_1]

puts "\[Tcl\] 5. run..."
launch_simulation

puts "\[Tcl\] postroute simulation complete."
