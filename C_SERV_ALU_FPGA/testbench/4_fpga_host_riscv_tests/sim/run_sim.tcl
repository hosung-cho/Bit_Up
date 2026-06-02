# ==========================================
# Vivado Tcl Simulation Script
# ==========================================

set script_dir [file normalize [file dirname [info script]]]
set project_root [file normalize "$script_dir/../../.."]
set tb_dir [file normalize "$script_dir/.."]
set generated_dir [file normalize "$script_dir/generated"]
set xsim_generated_dir [file normalize "$script_dir/sim_workspace/sim_project.sim/sim_1/behav/xsim/generated"]
set top_module tb_fpga_host_riscv_tests

file mkdir $generated_dir
file mkdir $xsim_generated_dir
set canonical_program_hex [file join $generated_dir "program.hex"]
set program_init_vh [file join $generated_dir "program_init.vh"]
set run_only_tcl [file join $generated_dir "run_only.tcl"]
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

puts "\[Tcl\] 1. 임시 시뮬레이션 프로젝트 생성 중..."
create_project -force -part xc7a35tcpg236-1 sim_project "$script_dir/sim_workspace"

puts "\[Tcl\] 2. 소스 파일 및 테스트벤치 추가 중..."
set_property include_dirs $generated_dir [get_filesets sim_1]
read_verilog "$project_root/src/rtl/serv/serv_alu.v"
read_verilog "$project_root/src/rtl/asic/serv_exec_unit.v"
read_verilog "$project_root/src/rtl/fpga/serv_exec_fpga_bridge.v"
read_verilog "$project_root/src/rtl/fpga/serv_fpga_host.v"
read_verilog "$project_root/src/rtl/fpga/serv_fpga_top.v"
read_verilog "$tb_dir/tb_fpga_host_riscv_tests.v"

puts "\[Tcl\] 3. Top 모듈 지정..."
set_property top $top_module [get_filesets sim_1]

puts "\[Tcl\] 4. 시뮬레이션 설정..."
set_property -name {xsim.simulate.runtime} -value {all} -objects [get_filesets sim_1]
set_property -name {xsim.elaborate.load_glbl} -value {false} -objects [get_filesets sim_1]
set_property -name {xsim.elaborate.debug_level} -value {off} -objects [get_filesets sim_1]
set_property -name {xsim.simulate.log_all_signals} -value {false} -objects [get_filesets sim_1]
set_property -name {xsim.simulate.custom_tcl} -value $run_only_tcl -objects [get_filesets sim_1]

puts "\[Tcl\] 5. 컴파일 및 시뮬레이션 실행!"
launch_simulation

puts "\[Tcl\] 시뮬레이션 완료!"
