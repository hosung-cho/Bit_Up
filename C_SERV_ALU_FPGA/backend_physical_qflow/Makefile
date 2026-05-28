TOP_MODULE = serv_exec_unit

VERILOG_SRCS = \
	../src/rtl/asic/serv_exec_unit.v \
	../src/rtl/serv/serv_alu.v

all:
	@echo ''
	@echo 'QFlow physical implementation for $(TOP_MODULE) using ETRI 0.5um CMOS'
	@echo 'Targets: synthesize place sta route migrate lvs size clean'
	@echo ''

synthesize: log/synth.log

source/$(TOP_MODULE).v: ../src/rtl/asic/$(TOP_MODULE).v
	cp ../src/rtl/asic/$(TOP_MODULE).v source/$(TOP_MODULE).v

log/synth.log: $(VERILOG_SRCS) source/$(TOP_MODULE).v source/$(TOP_MODULE).ys project_vars.sh qflow_vars.sh
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
	qflow lvs -T etri050 $(TOP_MODULE)

size: layout/$(TOP_MODULE).mag log/magic_db.log
	qflow display $(TOP_MODULE)

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
