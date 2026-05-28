# ==========================================
# Vivado Tcl Simulation Script
# ==========================================

set script_dir [file normalize [file dirname [info script]]]
set project_root [file normalize "$script_dir/../../.."]
set tb_dir [file normalize "$script_dir/.."]
set top_module tb_fpga_host_rv32i_directed

puts "\[Tcl\] 1. 임시 시뮬레이션 프로젝트 생성 중..."
create_project -force -part xc7a35tcpg236-1 sim_project "$script_dir/sim_workspace"

puts "\[Tcl\] 2. 소스 파일 및 테스트벤치 추가 중..."
read_verilog "$project_root/src/rtl/serv/serv_alu.v"
read_verilog "$project_root/src/rtl/asic/serv_exec_unit.v"
read_verilog "$project_root/src/rtl/fpga/serv_exec_fpga_bridge.v"
read_verilog "$project_root/src/rtl/fpga/serv_fpga_host.v"
read_verilog "$project_root/src/rtl/fpga/serv_fpga_top.v"
read_verilog "$tb_dir/tb_fpga_host_rv32i_directed.v"

puts "\[Tcl\] 3. Top 모듈 지정..."
set_property top $top_module [get_filesets sim_1]

puts "\[Tcl\] 4. 시뮬레이션 설정..."
set_property -name {xsim.simulate.runtime} -value {all} -objects [get_filesets sim_1]
set_property -name {xsim.elaborate.load_glbl} -value {false} -objects [get_filesets sim_1]
set_property -name {xsim.simulate.log_all_signals} -value {false} -objects [get_filesets sim_1]

puts "\[Tcl\] 5. 컴파일 및 시뮬레이션 실행!"
launch_simulation

puts "\[Tcl\] 시뮬레이션 완료!"
