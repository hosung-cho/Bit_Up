gds readonly true
gds rescale false
gds read /usr/local/share/qflow/tech/etri050/etri05_stdcells.gds2
load my_mcu_top
drc on
select top cell
expand
drc check
drc catchup
set dcount [drc list count total]
puts stdout "drc = $dcount"
quit
