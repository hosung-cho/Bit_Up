# ==========================================
# Vivado Tcl Postroute Simulation Script
# ==========================================

set script_dir [file normalize [file dirname [info script]]]
set project_root [file normalize "$script_dir/../../.."]
set repo_root [file normalize "$project_root/../../.."]
set tb_dir [file normalize "$script_dir/.."]
set generated_dir [file normalize "$script_dir/generated"]
set xsim_generated_dir [file normalize "$script_dir/sim_workspace_postroute/sim_project_postroute.sim/sim_1/behav/xsim/generated"]
set top_module tb_fpga_host_riscv_tests

set stdcell_verilog "$repo_root/ETRI-0.5um-CMOS-MPW-Std-Cell-DK/digital_ETRI/khu_etri05_stdcells.v"
set postroute_verilog "$project_root/ETRI050_Ho/synthesis/serv_exec_unit_postroute.v"

file mkdir $generated_dir
file mkdir $xsim_generated_dir
set canonical_program_hex [file join $generated_dir "program.hex"]
set program_init_vh [file join $generated_dir "program_init.vh"]
set run_only_tcl [file join $generated_dir "run_only_postroute.tcl"]
if {[info exists ::env(PROGRAM_HEX)]} {
    file copy -force $::env(PROGRAM_HEX) $canonical_program_hex
} elseif {![file exists $canonical_program_hex]} {
    set fd [open $canonical_program_hex "w"]
    for {set i 0} {$i < 512} {incr i} {
        puts $fd "00000013"
    }
    close $fd
}

set in_fd [open $canonical_program_hex "r"]
set out_fd [open $program_init_vh "w"]
set idx 0
while {[gets $in_fd line] >= 0 && $idx < 512} {
    set word [string trim $line]
    if {$word ne ""} {
        puts $out_fd "      program_mem\[$idx\] = 32'h$word;"
        incr idx
    }
}
close $in_fd
close $out_fd
set run_fd [open $run_only_tcl "w"]
puts $run_fd "run all"
close $run_fd

puts "\[Tcl\] 1. postroute simulation project..."
create_project -force -part xc7a35tcpg236-1 sim_project_postroute "$script_dir/sim_workspace_postroute"

puts "\[Tcl\] 2. adding stdcells, postroute netlist, FPGA RTL, and testbench..."
set_property include_dirs $generated_dir [get_filesets sim_1]
read_verilog "$stdcell_verilog"
read_verilog "$postroute_verilog"
read_verilog "$project_root/src/rtl/fpga/serv_exec_fpga_bridge.v"
read_verilog "$project_root/src/rtl/fpga/serv_fpga_host.v"
read_verilog "$project_root/src/rtl/fpga/serv_fpga_top.v"
read_verilog "$tb_dir/tb_fpga_host_riscv_tests.v"

puts "\[Tcl\] 3. top module..."
set_property top $top_module [get_filesets sim_1]

puts "\[Tcl\] 4. simulation settings..."
set_property -name {xsim.simulate.runtime} -value {all} -objects [get_filesets sim_1]
set_property -name {xsim.elaborate.load_glbl} -value {false} -objects [get_filesets sim_1]
set_property -name {xsim.elaborate.debug_level} -value {off} -objects [get_filesets sim_1]
set_property -name {xsim.simulate.log_all_signals} -value {false} -objects [get_filesets sim_1]
set_property -name {xsim.simulate.custom_tcl} -value $run_only_tcl -objects [get_filesets sim_1]

puts "\[Tcl\] 5. run..."
launch_simulation

puts "\[Tcl\] postroute simulation complete."
