# ==========================================
# Vivado Tcl Simulation Script (RV32E)
# ==========================================

set script_dir [file normalize [file dirname [info script]]]
set project_root [file normalize "$script_dir/../../.."]
set tb_dir [file normalize "$script_dir/.."]
set generated_dir [file normalize "$script_dir/generated"]
set top_module tb_rv32e_compliance

proc normalize_hex {value width} {
    set value [string trim $value]
    regsub -all {_} $value "" value
    set value [string toupper $value]
    set value [string trimleft $value "0"]
    if {$value eq ""} {
        set value "0"
    }

    set digits [expr {($width + 3) / 4}]
    if {[string length $value] > $digits} {
        set value [string range $value end-[expr {$digits - 1}] end]
    }

    return [format "%0${digits}s" $value]
}

proc write_mem_assignments {fd file_name mem_name width default_value {bit_value ""}} {
    set in_fd [open $file_name "r"]
    set idx 0
    set default_norm [normalize_hex $default_value $width]

    while {[gets $in_fd line] >= 0} {
         set line [string trim $line]
         if {$line eq ""} {
             continue
        }
         if {[string match "#*" $line] || [string match "//*" $line]} {
             continue
         }
        set normalized [normalize_hex $line $width]
        if {$normalized ne $default_norm} {
            if {$bit_value eq ""} {
                puts $fd "         $mem_name\[$idx\] = $width'h$normalized;"
            } else {
                puts $fd "         $mem_name\[$idx\] = 1'b$bit_value;"
            }
        }
        incr idx
    }
    close $in_fd
}

file mkdir $generated_dir
set hex_config [file join $generated_dir "external_hex_config.vh"]
set hex_init [file join $generated_dir "external_hex_init.vh"]
set canonical_program_hex [file join $generated_dir "program.hex"]
set canonical_expected_hex [file join $generated_dir "expected_mem.hex"]
set canonical_expected_valid_hex [file join $generated_dir "expected_valid.hex"]
set external_flag [file join $generated_dir "use_external.flag"]
set hex_config_fd [open $hex_config "w"]
set xsim_more_options ""
if {[info exists ::env(PROGRAM_HEX)]} {
    if {![info exists ::env(EXPECTED_HEX)] || ![info exists ::env(EXPECTED_VALID_HEX)]} {
        error "PROGRAM_HEX requires EXPECTED_HEX and EXPECTED_VALID_HEX"
    }
    file copy -force $::env(PROGRAM_HEX) $canonical_program_hex
    file copy -force $::env(EXPECTED_HEX) $canonical_expected_hex
    file copy -force $::env(EXPECTED_VALID_HEX) $canonical_expected_valid_hex
    set flag_fd [open $external_flag "w"]
    puts $flag_fd "1"
    close $flag_fd
} else {
    if {[file exists $external_flag]} {
        file delete -force $external_flag
    }
}
set hex_init_fd [open $hex_init "w"]
puts $hex_init_fd "         // No generated Verilog init selected; hex mode uses plusargs and readmemh."
close $hex_init_fd
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
if {[info exists ::env(TB_TRACE_RF_X11_X14)] && ($::env(TB_TRACE_RF_X11_X14) ne "0")} {
    set_property verilog_define {TB_TRACE_RF_X11_X14} [get_filesets sim_1]
}

puts "\[Tcl\] 5. 컴파일 및 시뮬레이션 실행!"
launch_simulation

puts "\[Tcl\] 시뮬레이션 완료!"
