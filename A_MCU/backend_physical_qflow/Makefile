TOP_MODULE = my_mcu_top

VERILOG_SRCS = \
	../src/rtl/my_mcu_top.v \
	../src/rtl/offchip_mem_bridge.v \
	../src/rtl/serv/serv_top.v \
	../src/rtl/serv/serv_state.v \
	../src/rtl/serv/serv_decode.v \
	../src/rtl/serv/serv_immdec.v \
	../src/rtl/serv/serv_bufreg.v \
	../src/rtl/serv/serv_bufreg2.v \
	../src/rtl/serv/serv_ctrl.v \
	../src/rtl/serv/serv_alu.v \
	../src/rtl/serv/serv_rf_if.v \
	../src/rtl/serv/serv_mem_if.v \
	../src/rtl/serv/serv_rf_ram_if.v \
	../src/rtl/serv/serv_rf_ram.v

all:
	@echo ''
	@echo 'QFlow physical implementation for $(TOP_MODULE) using ETRI 0.5um CMOS'
	@echo 'Targets: synthesize place sta route migrate lvs size clean'
	@echo ''

synthesize: log/synth.log

log/synth.log: $(VERILOG_SRCS) source/$(TOP_MODULE).ys
	qflow synthesize -T etri050 $(TOP_MODULE)

place: log/place.log

log/place.log: log/synth.log layout/$(TOP_MODULE).par layout/$(TOP_MODULE).cel2 project_vars.sh
	qflow place -T etri050 $(TOP_MODULE)

sta: log/sta.log

log/sta.log: log/place.log synthesis/$(TOP_MODULE).rtlnopwr.v project_vars.sh
	qflow sta -T etri050 $(TOP_MODULE)

route: log/route.log

log/route.log: log/place.log layout/$(TOP_MODULE).def layout/$(TOP_MODULE)_unroute.def project_vars.sh
	qflow route -T etri050 $(TOP_MODULE)

migrate: log/magic_db.log

log/magic_db.log: log/route.log project_vars.sh
	qflow migrate -T etri050 $(TOP_MODULE)

lvs: log/lvs.log

log/lvs.log: synthesis/$(TOP_MODULE).spc layout/$(TOP_MODULE).mag log/magic_db.log project_vars.sh
	~/ETRI050_DesignKit/scripts/fix_net_name.sh ./synthesis/$(TOP_MODULE).spc
	qflow lvs -T etri050 $(TOP_MODULE)

size: layout/$(TOP_MODULE).mag log/magic_db.log
	~/ETRI050_DesignKit/scripts/size_core.sh $(TOP_MODULE)

clean:
	rm -f log/*
	rm -f synthesis/*
	rm -f layout/$(TOP_MODULE).cel layout/$(TOP_MODULE).cel.bak
	rm -f layout/$(TOP_MODULE).cfg layout/$(TOP_MODULE).def
	rm -f layout/$(TOP_MODULE).gds layout/$(TOP_MODULE).info
	rm -f layout/$(TOP_MODULE).lef layout/$(TOP_MODULE).mag
	rm -f layout/$(TOP_MODULE).obs layout/$(TOP_MODULE).pin
	rm -f layout/$(TOP_MODULE).pl1 layout/$(TOP_MODULE).pl2
	rm -f layout/$(TOP_MODULE).rc layout/$(TOP_MODULE)_unroute.def
	rm -f layout/migrate_$(TOP_MODULE).tcl
