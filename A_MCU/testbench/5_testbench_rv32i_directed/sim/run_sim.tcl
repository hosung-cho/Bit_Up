# ==========================================
# Vivado Tcl Simulation Script
# ==========================================

set script_dir [file normalize [file dirname [info script]]]
set project_root [file normalize "$script_dir/../../.."]
set tb_dir [file normalize "$script_dir/.."]
set generated_dir [file normalize "$script_dir/generated"]
set top_module tb_rv32i_directed

proc write_mem_assignments {fd file_name mem_name width default_value} {
    set in_fd [open $file_name "r"]
    set idx 0
    while {[gets $in_fd line] >= 0} {
        set line [string trim $line]
        if {$line eq ""} {
            continue
        }
        if {[string match "#*" $line] || [string match "//*" $line]} {
            continue
        }
        set normalized [string toupper $line]
        if {$normalized ne [string toupper $default_value]} {
            puts $fd "         $mem_name\[$idx\] = $width'h$line;"
        }
        incr idx
    }
    close $in_fd
}

file mkdir $generated_dir
set hex_config [file join $generated_dir "external_hex_config.vh"]
set hex_init [file join $generated_dir "external_hex_init.vh"]
set hex_config_fd [open $hex_config "w"]
if {[info exists ::env(PROGRAM_HEX)]} {
    if {![info exists ::env(EXPECTED_HEX)] || ![info exists ::env(EXPECTED_VALID_HEX)]} {
        error "PROGRAM_HEX requires EXPECTED_HEX and EXPECTED_VALID_HEX"
    }
    puts $hex_config_fd "`define USE_EXTERNAL_HEX 1"

    set hex_init_fd [open $hex_init "w"]
    write_mem_assignments $hex_init_fd $::env(PROGRAM_HEX) "ext_mem" 32 "00000013"
    write_mem_assignments $hex_init_fd $::env(EXPECTED_HEX) "expected_mem" 32 "00000000"
    write_mem_assignments $hex_init_fd $::env(EXPECTED_VALID_HEX) "expected_valid_words" 32 "00000000"
    puts $hex_init_fd "         for (i = 0; i < 512; i = i + 1)"
    puts $hex_init_fd {            expected_valid[i] = expected_valid_words[i][0];}
    close $hex_init_fd
} else {
    set hex_init_fd [open $hex_init "w"]
    puts $hex_init_fd "         // No external hex selected."
    close $hex_init_fd
}
close $hex_config_fd

puts "\[Tcl\] 1. 임시 시뮬레이션 프로젝트 생성 중..."
create_project -force -part xc7a35tcpg236-1 sim_project "$script_dir/sim_workspace"

puts "\[Tcl\] 2. 소스 파일 및 테스트벤치 추가 중..."
read_verilog [glob "$project_root/src/rtl/serv/*.v"]
read_verilog [glob "$project_root/src/rtl/*.v"]
read_verilog [glob "$tb_dir/*.v"]
set_property include_dirs [list $generated_dir] [get_filesets sim_1]

puts "\[Tcl\] 3. Top 모듈 지정..."
set_property top $top_module [get_filesets sim_1]

puts "\[Tcl\] 4. 시뮬레이션 설정..."
set_property -name {xsim.simulate.runtime} -value {all} -objects [get_filesets sim_1]
set_property -name {xsim.elaborate.load_glbl} -value {false} -objects [get_filesets sim_1]
set_property -name {xsim.simulate.log_all_signals} -value {false} -objects [get_filesets sim_1]

puts "\[Tcl\] 5. 컴파일 및 시뮬레이션 실행!"
launch_simulation

puts "\[Tcl\] 시뮬레이션 완료!"
