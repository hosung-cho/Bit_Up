*SPICE netlist created from verilog structural netlist module serv_exec_unit by vlog2Spice (qflow)
*This file may contain array delimiters, not for use in simulation.

** Start of included library /usr/local/share/qflow/tech/etri050/etri050_stdcells.sp
* NGSPICE file created from khu_etri050_stdcells.ext - technology: scmos

.subckt AOI22X1 A B C D Y vdd gnd
M1000 gnd C a_56_14# gnd nfet w=6u l=0.6u
+  ad=12.6p pd=16.2u as=1.8p ps=6.6u
M1001 vdd A a_7_146# vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=25.2p ps=28.2u
M1002 Y D a_7_146# vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=14.4p ps=14.4u
M1003 a_28_14# A gnd gnd nfet w=6u l=0.6u
+  ad=1.8p pd=6.6u as=12.6p ps=16.2u
M1004 Y B a_28_14# gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=1.8p ps=6.6u
M1005 a_7_146# C Y vdd pfet w=12u l=0.6u
+  ad=25.2p pd=28.2u as=14.4p ps=14.4u
M1006 a_7_146# B vdd vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=14.4p ps=14.4u
M1007 a_56_14# D Y gnd nfet w=6u l=0.6u
+  ad=1.8p pd=6.6u as=7.2p ps=8.4u
.ends

.subckt CLKBUF3 A Y vdd gnd
M1000 a_145_14# a_105_14# vdd vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=14.4p ps=14.4u
M1001 a_65_14# a_25_14# gnd gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=7.2p ps=8.4u
M1002 a_105_14# a_65_14# vdd vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=14.4p ps=14.4u
M1003 a_145_14# a_105_14# gnd gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=7.2p ps=8.4u
M1004 gnd a_145_14# a_185_14# gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=7.2p ps=8.4u
M1005 a_25_14# A vdd vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=25.2p ps=28.2u
M1006 a_65_14# a_25_14# vdd vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=14.4p ps=14.4u
M1007 a_265_14# a_225_14# vdd vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=14.4p ps=14.4u
M1008 a_265_14# a_225_14# gnd gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=7.2p ps=8.4u
M1009 a_225_14# a_185_14# vdd vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=14.4p ps=14.4u
M1010 gnd a_265_14# Y gnd nfet w=6u l=0.6u
+  ad=12.6p pd=16.2u as=7.2p ps=8.4u
M1011 a_25_14# A gnd gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=12.6p ps=16.2u
M1012 gnd a_25_14# a_65_14# gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=7.2p ps=8.4u
M1013 a_105_14# a_65_14# gnd gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=7.2p ps=8.4u
M1014 Y a_265_14# vdd vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=14.4p ps=14.4u
M1015 gnd a_105_14# a_145_14# gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=7.2p ps=8.4u
M1016 vdd a_65_14# a_105_14# vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=14.4p ps=14.4u
M1017 vdd a_105_14# a_145_14# vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=14.4p ps=14.4u
M1018 a_225_14# a_185_14# gnd gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=7.2p ps=8.4u
M1019 gnd a_225_14# a_265_14# gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=7.2p ps=8.4u
M1020 vdd a_25_14# a_65_14# vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=14.4p ps=14.4u
M1021 gnd A a_25_14# gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=7.2p ps=8.4u
M1022 vdd A a_25_14# vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=14.4p ps=14.4u
M1023 vdd a_185_14# a_225_14# vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=14.4p ps=14.4u
M1024 vdd a_225_14# a_265_14# vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=14.4p ps=14.4u
M1025 vdd a_145_14# a_185_14# vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=14.4p ps=14.4u
M1026 gnd a_65_14# a_105_14# gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=7.2p ps=8.4u
M1027 a_185_14# a_145_14# gnd gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=7.2p ps=8.4u
M1028 gnd a_185_14# a_225_14# gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=7.2p ps=8.4u
M1029 Y a_265_14# gnd gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=7.2p ps=8.4u
M1030 vdd a_265_14# Y vdd pfet w=12u l=0.6u
+  ad=25.2p pd=28.2u as=14.4p ps=14.4u
M1031 a_185_14# a_145_14# vdd vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=14.4p ps=14.4u
.ends

.subckt INVX8 A Y vdd gnd
M1000 Y A gnd gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=7.2p ps=8.4u
M1001 Y A vdd vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=25.2p ps=28.2u
M1002 Y A vdd vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=14.4p ps=14.4u
M1003 Y A gnd gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=12.6p ps=16.2u
M1004 gnd A Y gnd nfet w=6u l=0.6u
+  ad=12.6p pd=16.2u as=7.2p ps=8.4u
M1005 vdd A Y vdd pfet w=12u l=0.6u
+  ad=25.2p pd=28.2u as=14.4p ps=14.4u
M1006 gnd A Y gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=7.2p ps=8.4u
M1007 vdd A Y vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=14.4p ps=14.4u
.ends

.subckt NOR3X1 A B C Y vdd gnd
M1000 gnd B Y gnd nfet w=3u l=0.6u
+  ad=3.6p pd=5.4u as=3.6p ps=5.4u
M1001 a_7_166# A vdd vdd pfet w=9u l=0.6u
+  ad=10.8p pd=11.4u as=10.8p ps=11.4u
M1002 a_7_166# B a_65_166# vdd pfet w=9u l=0.6u
+  ad=18.9p pd=22.2u as=10.8p ps=11.4u
M1003 a_65_166# C Y vdd pfet w=9u l=0.6u
+  ad=18.9p pd=22.2u as=10.8p ps=11.4u
M1004 Y C gnd gnd nfet w=3u l=0.6u
+  ad=6.3p pd=10.2u as=3.6p ps=5.4u
M1005 a_65_166# B a_7_166# vdd pfet w=9u l=0.6u
+  ad=10.8p pd=11.4u as=10.8p ps=11.4u
M1006 vdd A a_7_166# vdd pfet w=9u l=0.6u
+  ad=10.8p pd=11.4u as=18.9p ps=22.2u
M1007 Y C a_65_166# vdd pfet w=9u l=0.6u
+  ad=10.8p pd=11.4u as=18.9p ps=22.2u
M1008 Y A gnd gnd nfet w=3u l=0.6u
+  ad=3.6p pd=5.4u as=7.2p ps=10.8u
.ends

.subckt CLKBUF1 A Y vdd gnd
M1000 Y a_105_14# vdd vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=14.4p ps=14.4u
M1001 a_65_14# a_25_14# gnd gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=7.2p ps=8.4u
M1002 a_105_14# a_65_14# vdd vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=14.4p ps=14.4u
M1003 Y a_105_14# gnd gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=7.2p ps=8.4u
M1004 a_25_14# A vdd vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=25.2p ps=28.2u
M1005 a_65_14# a_25_14# vdd vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=14.4p ps=14.4u
M1006 a_25_14# A gnd gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=12.6p ps=16.2u
M1007 gnd a_25_14# a_65_14# gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=7.2p ps=8.4u
M1008 a_105_14# a_65_14# gnd gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=7.2p ps=8.4u
M1009 gnd a_105_14# Y gnd nfet w=6u l=0.6u
+  ad=12.6p pd=16.2u as=7.2p ps=8.4u
M1010 vdd a_65_14# a_105_14# vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=14.4p ps=14.4u
M1011 vdd a_105_14# Y vdd pfet w=12u l=0.6u
+  ad=25.2p pd=28.2u as=14.4p ps=14.4u
M1012 vdd a_25_14# a_65_14# vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=14.4p ps=14.4u
M1013 gnd A a_25_14# gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=7.2p ps=8.4u
M1014 vdd A a_25_14# vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=14.4p ps=14.4u
M1015 gnd a_65_14# a_105_14# gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=7.2p ps=8.4u
.ends

.subckt MUX2X1 A B S Y vdd gnd
M1000 a_75_22# S Y gnd nfet w=6u l=0.6u
+  ad=2.7p pd=6.9u as=7.2p ps=8.4u
M1001 gnd S a_7_22# gnd nfet w=3u l=0.6u
+  ad=6.3p pd=8.4u as=6.3p ps=10.2u
M1002 Y S a_45_138# vdd pfet w=12u l=0.6u
+  ad=14.49p pd=15.6u as=5.4p ps=12.9u
M1003 gnd A a_75_22# gnd nfet w=6u l=0.6u
+  ad=12.6p pd=16.2u as=2.7p ps=6.9u
M1004 vdd A a_75_146# vdd pfet w=12u l=0.6u
+  ad=25.2p pd=28.2u as=5.4p ps=12.9u
M1005 a_45_138# B vdd vdd pfet w=12u l=0.6u
+  ad=5.4p pd=12.9u as=11.7p ps=14.4u
M1006 a_45_22# B gnd gnd nfet w=6u l=0.6u
+  ad=2.7p pd=6.9u as=6.3p ps=8.4u
M1007 Y a_7_22# a_45_22# gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=2.7p ps=6.9u
M1008 a_75_146# a_7_22# Y vdd pfet w=12u l=0.6u
+  ad=5.4p pd=12.9u as=14.49p ps=15.6u
M1009 vdd S a_7_22# vdd pfet w=6u l=0.6u
+  ad=11.7p pd=14.4u as=12.6p ps=16.2u
.ends

.subckt NAND3X1 A B C Y vdd gnd
M1000 Y C a_34_14# gnd nfet w=9u l=0.6u
+  ad=18.9p pd=22.2u as=2.7p ps=9.6u
M1001 a_26_14# A gnd gnd nfet w=9u l=0.6u
+  ad=2.7p pd=9.6u as=18.9p ps=22.2u
M1002 vdd B Y vdd pfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=7.2p ps=8.4u
M1003 a_34_14# B a_26_14# gnd nfet w=9u l=0.6u
+  ad=2.7p pd=9.6u as=2.7p ps=9.6u
M1004 Y C vdd vdd pfet w=6u l=0.6u
+  ad=12.6p pd=16.2u as=7.2p ps=8.4u
M1005 Y A vdd vdd pfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=12.6p ps=16.2u
.ends

.subckt XOR2X1 A B Y vdd gnd
M1000 a_74_166# a_6_14# Y vdd pfet w=12u l=0.6u
+  ad=5.4p pd=12.9u as=14.4p ps=14.4u
M1001 a_28_58# B vdd vdd pfet w=12u l=0.6u
+  ad=25.2p pd=28.2u as=14.4p ps=14.4u
M1002 a_74_14# A Y gnd nfet w=6u l=0.6u
+  ad=2.7p pd=6.9u as=7.2p ps=8.4u
M1003 gnd A a_6_14# gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=12.6p ps=16.2u
M1004 vdd A a_6_14# vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=25.2p ps=28.2u
M1005 gnd B a_74_14# gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=2.7p ps=6.9u
M1006 a_28_58# B gnd gnd nfet w=6u l=0.6u
+  ad=12.6p pd=16.2u as=7.2p ps=8.4u
M1007 Y A a_44_166# vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=5.4p ps=12.9u
M1008 a_44_14# a_28_58# gnd gnd nfet w=6u l=0.6u
+  ad=2.7p pd=6.9u as=7.2p ps=8.4u
M1009 vdd B a_74_166# vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=5.4p ps=12.9u
M1010 Y a_6_14# a_44_14# gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=2.7p ps=6.9u
M1011 a_44_166# a_28_58# vdd vdd pfet w=12u l=0.6u
+  ad=5.4p pd=12.9u as=14.4p ps=14.4u
.ends

.subckt BUFX4 A Y vdd gnd
M1000 Y a_7_14# vdd vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=15.3p ps=14.7u
M1001 gnd A a_7_14# gnd nfet w=4.5u l=0.6u
+  ad=7.65p pd=8.7u as=9.45p ps=13.2u
M1002 vdd a_7_14# Y vdd pfet w=12u l=0.6u
+  ad=25.2p pd=28.2u as=14.4p ps=14.4u
M1003 vdd A a_7_14# vdd pfet w=9u l=0.6u
+  ad=15.3p pd=14.7u as=18.9p ps=22.2u
M1004 Y a_7_14# gnd gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=7.65p ps=8.7u
M1005 gnd a_7_14# Y gnd nfet w=6u l=0.6u
+  ad=12.6p pd=16.2u as=7.2p ps=8.4u
.ends

.subckt INVX4 A Y vdd gnd
M1000 Y A vdd vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=25.2p ps=28.2u
M1001 Y A gnd gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=12.6p ps=16.2u
M1002 gnd A Y gnd nfet w=6u l=0.6u
+  ad=12.6p pd=16.2u as=7.2p ps=8.4u
M1003 vdd A Y vdd pfet w=12u l=0.6u
+  ad=25.2p pd=28.2u as=14.4p ps=14.4u
.ends

.subckt OAI21X1 A B C Y vdd gnd
M1000 Y C a_7_14# gnd nfet w=6u l=0.6u
+  ad=12.6p pd=16.2u as=7.2p ps=8.4u
M1001 a_30_146# A vdd vdd pfet w=12u l=0.6u
+  ad=3.6p pd=12.6u as=25.2p ps=28.2u
M1002 vdd C Y vdd pfet w=6u l=0.6u
+  ad=12.6p pd=16.2u as=14.4p ps=14.7u
M1003 gnd A a_7_14# gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=12.6p ps=16.2u
M1004 Y B a_30_146# vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.7u as=3.6p ps=12.6u
M1005 a_7_14# B gnd gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=7.2p ps=8.4u
.ends

.subckt TBUFX2 A EN Y vdd gnd
M1000 vdd A a_44_166# vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=14.4p ps=14.4u
M1001 Y a_22_14# a_44_166# vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=25.2p ps=28.2u
M1002 a_22_14# EN vdd vdd pfet w=12u l=0.6u
+  ad=25.2p pd=28.2u as=25.2p ps=28.2u
M1003 gnd A a_44_14# gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=7.2p ps=8.4u
M1004 a_44_14# A gnd gnd nfet w=6u l=0.6u
+  ad=12.6p pd=16.2u as=7.2p ps=8.4u
M1005 a_44_166# A vdd vdd pfet w=12u l=0.6u
+  ad=25.2p pd=28.2u as=14.4p ps=14.4u
M1006 a_44_166# a_22_14# Y vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=14.4p ps=14.4u
M1007 Y EN a_44_14# gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=12.6p ps=16.2u
M1008 a_22_14# EN gnd gnd nfet w=6u l=0.6u
+  ad=12.6p pd=16.2u as=12.6p ps=16.2u
M1009 a_44_14# EN Y gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=7.2p ps=8.4u
.ends

.subckt DFFNEGX1 D CLK Q vdd gnd
M1000 a_163_14# a_7_14# a_153_14# gnd nfet w=3u l=0.6u
+  ad=3.6p pd=5.4u as=1.35p ps=3.9u
M1001 a_77_186# CLK a_57_14# vdd pfet w=6u l=0.6u
+  ad=3.6p pd=7.2u as=7.2p ps=8.4u
M1002 a_77_14# a_7_14# a_57_14# gnd nfet w=3u l=0.6u
+  ad=1.35p pd=3.9u as=3.6p ps=5.4u
M1003 vdd a_83_10# a_77_186# vdd pfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=3.6p ps=7.2u
M1004 vdd CLK a_7_14# vdd pfet w=12u l=0.6u
+  ad=12.15p pd=14.4u as=25.2p ps=28.2u
M1005 Q a_163_14# vdd vdd pfet w=12u l=0.6u
+  ad=25.2p pd=28.2u as=11.025p ps=14.4u
M1006 a_83_10# a_57_14# gnd gnd nfet w=3u l=0.6u
+  ad=6.3p pd=10.2u as=4.05p ps=5.7u
M1007 gnd CLK a_7_14# gnd nfet w=6u l=0.6u
+  ad=6.075p pd=8.4u as=12.6p ps=16.2u
M1008 gnd a_83_10# a_77_14# gnd nfet w=3u l=0.6u
+  ad=4.05p pd=5.7u as=1.35p ps=3.9u
M1009 vdd Q a_183_206# vdd pfet w=3u l=0.6u
+  ad=11.025p pd=14.4u as=1.35p ps=3.9u
M1010 a_154_186# a_83_10# vdd vdd pfet w=6u l=0.6u
+  ad=2.25p pd=6.75u as=12.6p ps=16.2u
M1011 a_183_14# CLK a_163_14# gnd nfet w=3u l=0.6u
+  ad=1.35p pd=3.9u as=3.6p ps=5.4u
M1012 a_45_186# D vdd vdd pfet w=6u l=0.6u
+  ad=3.6p pd=7.2u as=12.15p ps=14.4u
M1013 a_83_10# a_57_14# vdd vdd pfet w=6u l=0.6u
+  ad=12.6p pd=16.2u as=7.2p ps=8.4u
M1014 a_57_14# a_7_14# a_45_186# vdd pfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=3.6p ps=7.2u
M1015 gnd Q a_183_14# gnd nfet w=3u l=0.6u
+  ad=6.075p pd=8.4u as=1.35p ps=3.9u
M1016 a_183_206# a_7_14# a_163_14# vdd pfet w=3u l=0.6u
+  ad=1.35p pd=3.9u as=5.85p ps=8.4u
M1017 a_45_14# D gnd gnd nfet w=3u l=0.6u
+  ad=1.8p pd=4.2u as=6.075p ps=8.4u
M1018 a_57_14# CLK a_45_14# gnd nfet w=3u l=0.6u
+  ad=3.6p pd=5.4u as=1.8p ps=4.2u
M1019 a_153_14# a_83_10# gnd gnd nfet w=3u l=0.6u
+  ad=1.35p pd=3.9u as=6.3p ps=10.2u
M1020 Q a_163_14# gnd gnd nfet w=6u l=0.6u
+  ad=12.6p pd=16.2u as=6.075p ps=8.4u
M1021 a_163_14# CLK a_154_186# vdd pfet w=6u l=0.6u
+  ad=5.85p pd=8.4u as=2.25p ps=6.75u
.ends

.subckt AOI21X1 A B C Y vdd gnd
M1000 vdd A a_7_146# vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=25.2p ps=28.2u
M1001 Y C a_7_146# vdd pfet w=12u l=0.6u
+  ad=25.2p pd=28.2u as=14.4p ps=14.4u
M1002 a_28_14# A gnd gnd nfet w=6u l=0.6u
+  ad=1.8p pd=6.6u as=12.6p ps=16.2u
M1003 Y B a_28_14# gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.7u as=1.8p ps=6.6u
M1004 a_7_146# B vdd vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=14.4p ps=14.4u
M1005 gnd C Y gnd nfet w=3u l=0.6u
+  ad=6.3p pd=10.2u as=7.2p ps=8.7u
.ends

.subckt BUFX2 A Y vdd gnd
M1000 Y a_7_14# vdd vdd pfet w=12u l=0.6u
+  ad=25.2p pd=28.2u as=14.4p ps=14.7u
M1001 gnd A a_7_14# gnd nfet w=3u l=0.6u
+  ad=7.2p pd=8.7u as=6.3p ps=10.2u
M1002 Y a_7_14# gnd gnd nfet w=6u l=0.6u
+  ad=12.6p pd=16.2u as=7.2p ps=8.7u
M1003 vdd A a_7_14# vdd pfet w=6u l=0.6u
+  ad=14.4p pd=14.7u as=12.6p ps=16.2u
.ends

.subckt INVX2 A Y vdd gnd
M1000 Y A vdd vdd pfet w=12u l=0.6u
+  ad=25.2p pd=28.2u as=25.2p ps=28.2u
M1001 Y A gnd gnd nfet w=6u l=0.6u
+  ad=12.6p pd=16.2u as=12.6p ps=16.2u
.ends

.subckt FAX1 A B C YS YC vdd gnd
M1000 a_64_14# C a_6_14# gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=7.2p ps=8.4u
M1001 YS a_174_14# vdd vdd pfet w=6u l=0.6u
+  ad=12.6p pd=16.2u as=14.13p ps=16.8u
M1002 a_206_14# B a_196_14# gnd nfet w=6u l=0.6u
+  ad=2.7p pd=6.9u as=2.7p ps=6.9u
M1003 gnd a_64_14# YC gnd nfet w=3u l=0.6u
+  ad=6.3p pd=10.2u as=6.3p ps=10.2u
M1004 gnd A a_206_14# gnd nfet w=6u l=0.6u
+  ad=5.85p pd=8.4u as=2.7p ps=6.9u
M1005 vdd A a_206_150# vdd pfet w=14.4u l=0.6u
+  ad=14.13p pd=16.8u as=6.48p ps=15.3u
M1006 gnd A a_6_14# gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=12.6p ps=16.2u
M1007 a_114_14# C gnd gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=7.2p ps=8.4u
M1008 a_64_14# C a_6_166# vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=14.4p ps=14.4u
M1009 vdd A a_6_166# vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=25.2p ps=28.2u
M1010 a_84_14# B a_64_14# gnd nfet w=6u l=0.6u
+  ad=2.7p pd=6.9u as=7.2p ps=8.4u
M1011 a_174_14# a_64_14# a_114_166# vdd pfet w=10.8u l=0.6u
+  ad=17.82p pd=17.1u as=12.96p ps=13.2u
M1012 vdd B a_114_166# vdd pfet w=10.8u l=0.6u
+  ad=12.96p pd=13.2u as=13.86p ps=14.4u
M1013 a_196_150# C a_174_14# vdd pfet w=14.4u l=0.6u
+  ad=6.48p pd=15.3u as=17.82p ps=17.1u
M1014 a_206_150# B a_196_150# vdd pfet w=14.4u l=0.6u
+  ad=6.48p pd=15.3u as=6.48p ps=15.3u
M1015 gnd A a_84_14# gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=2.7p ps=6.9u
M1016 vdd A a_84_166# vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=5.4p ps=12.9u
M1017 a_114_14# A gnd gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=7.2p ps=8.4u
M1018 YS a_174_14# gnd gnd nfet w=3u l=0.6u
+  ad=6.3p pd=10.2u as=5.85p ps=8.4u
M1019 a_174_14# a_64_14# a_114_14# gnd nfet w=6u l=0.6u
+  ad=8.1p pd=8.7u as=7.2p ps=8.4u
M1020 a_6_14# B gnd gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=7.2p ps=8.4u
M1021 YC a_64_14# vdd vdd pfet w=6u l=0.6u
+  ad=12.6p pd=16.2u as=12.6p ps=16.2u
M1022 a_84_166# B a_64_14# vdd pfet w=12u l=0.6u
+  ad=5.4p pd=12.9u as=14.4p ps=14.4u
M1023 a_6_166# B vdd vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=14.4p ps=14.4u
M1024 a_114_166# A vdd vdd pfet w=12u l=0.6u
+  ad=13.86p pd=14.4u as=14.4p ps=14.4u
M1025 a_114_166# C vdd vdd pfet w=10.8u l=0.6u
+  ad=12.96p pd=13.2u as=12.96p ps=13.2u
M1026 gnd B a_114_14# gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=7.2p ps=8.4u
M1027 a_196_14# C a_174_14# gnd nfet w=6u l=0.6u
+  ad=2.7p pd=6.9u as=8.1p ps=8.7u
.ends

.subckt NOR2X1 A B Y vdd gnd
M1000 a_25_146# A vdd vdd pfet w=12u l=0.6u
+  ad=3.6p pd=12.6u as=25.2p ps=28.2u
M1001 Y A gnd gnd nfet w=3u l=0.6u
+  ad=3.6p pd=5.4u as=6.3p ps=10.2u
M1002 Y B a_25_146# vdd pfet w=12u l=0.6u
+  ad=25.2p pd=28.2u as=3.6p ps=12.6u
M1003 gnd B Y gnd nfet w=3u l=0.6u
+  ad=6.3p pd=10.2u as=3.6p ps=5.4u
.ends

.subckt AND2X1 A B Y vdd gnd
M1000 gnd B a_25_14# gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.7u as=1.8p ps=6.6u
M1001 a_25_14# A a_7_14# gnd nfet w=6u l=0.6u
+  ad=1.8p pd=6.6u as=12.6p ps=16.2u
M1002 vdd B a_7_14# vdd pfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=7.2p ps=8.4u
M1003 Y a_7_14# gnd gnd nfet w=3u l=0.6u
+  ad=6.3p pd=10.2u as=7.2p ps=8.7u
M1004 Y a_7_14# vdd vdd pfet w=6u l=0.6u
+  ad=12.6p pd=16.2u as=7.2p ps=8.4u
M1005 a_7_14# A vdd vdd pfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=12.6p ps=16.2u
.ends

.subckt DFFPOSX1 D CLK Q vdd gnd
M1000 vdd Q a_189_206# vdd pfet w=3u l=0.6u
+  ad=10.125p pd=14.7u as=0.9p ps=3.6u
M1001 a_83_186# a_11_14# a_59_14# vdd pfet w=6u l=0.6u
+  ad=3.6p pd=7.2u as=7.2p ps=8.4u
M1002 a_87_10# a_59_14# gnd gnd nfet w=3u l=0.6u
+  ad=6.3p pd=10.2u as=4.05p ps=5.7u
M1003 gnd CLK a_11_14# gnd nfet w=6u l=0.6u
+  ad=5.85p pd=8.4u as=12.6p ps=16.2u
M1004 gnd a_87_10# a_81_14# gnd nfet w=3u l=0.6u
+  ad=4.05p pd=5.7u as=1.35p ps=3.9u
M1005 a_159_14# a_87_10# gnd gnd nfet w=3u l=0.6u
+  ad=0.9p pd=3.6u as=6.3p ps=10.2u
M1006 a_49_186# D vdd vdd pfet w=6u l=0.6u
+  ad=4.5p pd=7.5u as=11.25p ps=14.4u
M1007 vdd a_87_10# a_83_186# vdd pfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=3.6p ps=7.2u
M1008 Q a_167_14# gnd gnd nfet w=6u l=0.6u
+  ad=12.6p pd=16.2u as=6.975p ps=8.7u
M1009 Q a_167_14# vdd vdd pfet w=12u l=0.6u
+  ad=25.2p pd=28.2u as=10.125p ps=14.7u
M1010 a_167_14# CLK a_159_14# gnd nfet w=3u l=0.6u
+  ad=3.6p pd=5.4u as=0.9p ps=3.6u
M1011 a_49_14# D gnd gnd nfet w=3u l=0.6u
+  ad=1.35p pd=3.9u as=5.85p ps=8.4u
M1012 a_87_10# a_59_14# vdd vdd pfet w=6u l=0.6u
+  ad=12.6p pd=16.2u as=7.2p ps=8.4u
M1013 a_59_14# CLK a_49_186# vdd pfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=4.5p ps=7.5u
M1014 a_161_186# a_87_10# vdd vdd pfet w=6u l=0.6u
+  ad=1.8p pd=6.6u as=12.6p ps=16.2u
M1015 a_189_206# CLK a_167_14# vdd pfet w=3u l=0.6u
+  ad=0.9p pd=3.6u as=6.075p ps=8.4u
M1016 a_59_14# a_11_14# a_49_14# gnd nfet w=3u l=0.6u
+  ad=4.05p pd=5.7u as=1.35p ps=3.9u
M1017 a_187_14# a_11_14# a_167_14# gnd nfet w=3u l=0.6u
+  ad=1.35p pd=3.9u as=3.6p ps=5.4u
M1018 vdd CLK a_11_14# vdd pfet w=12u l=0.6u
+  ad=11.25p pd=14.4u as=25.2p ps=28.2u
M1019 gnd Q a_187_14# gnd nfet w=3u l=0.6u
+  ad=6.975p pd=8.7u as=1.35p ps=3.9u
M1020 a_167_14# a_11_14# a_161_186# vdd pfet w=6u l=0.6u
+  ad=6.075p pd=8.4u as=1.8p ps=6.6u
M1021 a_81_14# CLK a_59_14# gnd nfet w=3u l=0.6u
+  ad=1.35p pd=3.9u as=4.05p ps=5.7u
.ends

.subckt NAND2X1 A B Y vdd gnd
M1000 a_27_14# A gnd gnd nfet w=6u l=0.6u
+  ad=2.7p pd=6.9u as=12.6p ps=16.2u
M1001 Y B a_27_14# gnd nfet w=6u l=0.6u
+  ad=12.6p pd=16.2u as=2.7p ps=6.9u
M1002 vdd B Y vdd pfet w=6u l=0.6u
+  ad=12.6p pd=16.2u as=7.2p ps=8.4u
M1003 Y A vdd vdd pfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=12.6p ps=16.2u
.ends

.subckt OR2X1 A B Y vdd gnd
M1000 Y a_7_146# gnd gnd nfet w=3u l=0.6u
+  ad=6.3p pd=10.2u as=3.6p ps=5.4u
M1001 a_25_146# A a_7_146# vdd pfet w=12u l=0.6u
+  ad=5.4p pd=12.9u as=25.2p ps=28.2u
M1002 a_7_146# A gnd gnd nfet w=3u l=0.6u
+  ad=3.6p pd=5.4u as=6.3p ps=10.2u
M1003 Y a_7_146# vdd vdd pfet w=6u l=0.6u
+  ad=12.6p pd=16.2u as=14.4p ps=14.7u
M1004 gnd B a_7_146# gnd nfet w=3u l=0.6u
+  ad=3.6p pd=5.4u as=3.6p ps=5.4u
M1005 vdd B a_25_146# vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.7u as=5.4p ps=12.9u
.ends

.subckt CLKBUF2 A Y vdd gnd
M1000 a_145_14# a_105_14# vdd vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=14.4p ps=14.4u
M1001 a_65_14# a_25_14# gnd gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=7.2p ps=8.4u
M1002 a_105_14# a_65_14# vdd vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=14.4p ps=14.4u
M1003 a_145_14# a_105_14# gnd gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=7.2p ps=8.4u
M1004 gnd a_145_14# a_185_14# gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=7.2p ps=8.4u
M1005 a_25_14# A vdd vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=25.2p ps=28.2u
M1006 a_65_14# a_25_14# vdd vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=14.4p ps=14.4u
M1007 Y a_185_14# vdd vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=14.4p ps=14.4u
M1008 a_25_14# A gnd gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=12.6p ps=16.2u
M1009 gnd a_25_14# a_65_14# gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=7.2p ps=8.4u
M1010 a_105_14# a_65_14# gnd gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=7.2p ps=8.4u
M1011 gnd a_105_14# a_145_14# gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=7.2p ps=8.4u
M1012 vdd a_65_14# a_105_14# vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=14.4p ps=14.4u
M1013 vdd a_105_14# a_145_14# vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=14.4p ps=14.4u
M1014 Y a_185_14# gnd gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=7.2p ps=8.4u
M1015 vdd a_25_14# a_65_14# vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=14.4p ps=14.4u
M1016 gnd A a_25_14# gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=7.2p ps=8.4u
M1017 vdd A a_25_14# vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=14.4p ps=14.4u
M1018 vdd a_185_14# Y vdd pfet w=12u l=0.6u
+  ad=25.2p pd=28.2u as=14.4p ps=14.4u
M1019 vdd a_145_14# a_185_14# vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=14.4p ps=14.4u
M1020 gnd a_65_14# a_105_14# gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=7.2p ps=8.4u
M1021 a_185_14# a_145_14# gnd gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=7.2p ps=8.4u
M1022 gnd a_185_14# Y gnd nfet w=6u l=0.6u
+  ad=12.6p pd=16.2u as=7.2p ps=8.4u
M1023 a_185_14# a_145_14# vdd vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=14.4p ps=14.4u
.ends

.subckt LATCH D CLK Q vdd gnd
M1000 a_48_206# D vdd vdd pfet w=6u l=0.6u
+  ad=2.7p pd=6.9u as=14.4p ps=14.7u
M1001 a_86_226# CLK a_58_14# vdd pfet w=3u l=0.6u
+  ad=1.35p pd=3.9u as=9.225p ps=9.6u
M1002 gnd CLK a_8_14# gnd nfet w=6u l=0.6u
+  ad=6.3p pd=8.4u as=12.6p ps=16.2u
M1003 a_86_14# a_8_14# a_58_14# gnd nfet w=3u l=0.6u
+  ad=1.35p pd=3.9u as=5.4p ps=6.6u
M1004 Q a_58_14# gnd gnd nfet w=6u l=0.6u
+  ad=12.6p pd=16.2u as=7.2p ps=8.7u
M1005 gnd Q a_86_14# gnd nfet w=3u l=0.6u
+  ad=7.2p pd=8.7u as=1.35p ps=3.9u
M1006 a_46_14# D gnd gnd nfet w=3u l=0.6u
+  ad=1.8p pd=4.2u as=6.3p ps=8.4u
M1007 Q a_58_14# vdd vdd pfet w=12u l=0.6u
+  ad=25.2p pd=28.2u as=13.5p ps=14.7u
M1008 a_58_14# CLK a_46_14# gnd nfet w=3u l=0.6u
+  ad=5.4p pd=6.6u as=1.8p ps=4.2u
M1009 vdd CLK a_8_14# vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.7u as=25.2p ps=28.2u
M1010 a_58_14# a_8_14# a_48_206# vdd pfet w=6u l=0.6u
+  ad=9.225p pd=9.6u as=2.7p ps=6.9u
M1011 vdd Q a_86_226# vdd pfet w=3u l=0.6u
+  ad=13.5p pd=14.7u as=1.35p ps=3.9u
.ends

.subckt HAX1 A B YS YC vdd gnd
M1000 a_6_206# B a_24_14# gnd nfet w=6u l=0.6u
+  ad=12.6p pd=16.2u as=1.8p ps=6.6u
M1001 vdd a_6_206# YC vdd pfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=12.6p ps=16.2u
M1002 gnd a_6_206# YC gnd nfet w=3u l=0.6u
+  ad=6.075p pd=8.4u as=6.21p ps=10.2u
M1003 a_24_14# A gnd gnd nfet w=6u l=0.6u
+  ad=1.8p pd=6.6u as=12.6p ps=16.2u
M1004 a_6_206# B vdd vdd pfet w=6u l=0.6u
+  ad=12.6p pd=16.2u as=7.2p ps=8.4u
M1005 a_128_166# B a_108_206# vdd pfet w=12u l=0.6u
+  ad=3.6p pd=12.6u as=13.5p ps=14.4u
M1006 a_108_206# a_6_206# vdd vdd pfet w=6u l=0.6u
+  ad=13.5p pd=14.4u as=7.2p ps=8.4u
M1007 YS a_108_206# gnd gnd nfet w=3u l=0.6u
+  ad=6.3p pd=10.2u as=6.3p ps=10.2u
M1008 a_96_14# a_6_206# gnd gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=6.075p ps=8.4u
M1009 a_108_206# B a_96_14# gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=7.2p ps=8.4u
M1010 vdd A a_128_166# vdd pfet w=12u l=0.6u
+  ad=11.25p pd=14.4u as=3.6p ps=12.6u
M1011 YS a_108_206# vdd vdd pfet w=6u l=0.6u
+  ad=12.6p pd=16.2u as=11.25p ps=14.4u
M1012 a_96_14# A a_108_206# gnd nfet w=6u l=0.6u
+  ad=12.6p pd=16.2u as=7.2p ps=8.4u
M1013 vdd A a_6_206# vdd pfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=12.6p ps=16.2u
.ends

.subckt DFFSR R S D CLK Q vdd gnd
M1000 a_146_14# a_122_10# a_60_10# vdd pfet w=3u l=0.6u
+  ad=6.3p pd=8.4u as=3.6p ps=5.4u
M1001 a_64_14# a_60_10# gnd gnd nfet w=6u l=0.6u
+  ad=3.6p pd=7.2u as=9p ps=9u
M1002 vdd S a_301_14# vdd pfet w=6u l=0.6u
+  ad=12.6p pd=16.2u as=7.2p ps=8.4u
M1003 a_146_14# a_115_95# a_60_10# gnd nfet w=3u l=0.6u
+  ad=3.6p pd=5.4u as=3.6p ps=5.4u
M1004 a_36_10# a_60_10# vdd vdd pfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=7.2p ps=8.4u
M1005 a_391_14# a_334_14# gnd gnd nfet w=6u l=0.6u
+  ad=3.6p pd=7.2u as=9.45p ps=9.15u
M1006 a_8_14# R vdd vdd pfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=12.6p ps=16.2u
M1007 a_36_10# S a_64_14# gnd nfet w=6u l=0.6u
+  ad=14.4p pd=16.8u as=3.6p ps=7.2u
M1008 gnd a_334_14# Q gnd nfet w=3u l=0.6u
+  ad=6.3p pd=10.2u as=6.3p ps=10.2u
M1009 a_281_14# a_122_10# a_36_10# gnd nfet w=3u l=0.6u
+  ad=3.6p pd=5.4u as=6.3p ps=10.2u
M1010 a_28_14# R a_8_14# gnd nfet w=6u l=0.6u
+  ad=3.6p pd=7.2u as=14.4p ps=16.8u
M1011 a_301_14# S a_391_14# gnd nfet w=6u l=0.6u
+  ad=14.4p pd=16.8u as=3.6p ps=7.2u
M1012 gnd a_36_10# a_28_14# gnd nfet w=6u l=0.6u
+  ad=9p pd=9u as=3.6p ps=7.2u
M1013 gnd a_115_95# a_122_10# gnd nfet w=3u l=0.6u
+  ad=3.6p pd=5.4u as=6.3p ps=10.2u
M1014 a_301_14# a_334_14# vdd vdd pfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=7.2p ps=8.4u
M1015 vdd D a_146_14# vdd pfet w=6u l=0.6u
+  ad=12.6p pd=16.2u as=6.3p ps=8.4u
M1016 a_334_14# a_281_14# vdd vdd pfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=12.6p ps=16.2u
M1017 vdd a_115_95# a_122_10# vdd pfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=12.6p ps=16.2u
M1018 a_301_14# a_122_10# a_281_14# vdd pfet w=3u l=0.6u
+  ad=6.3p pd=10.2u as=3.6p ps=5.4u
M1019 gnd D a_146_14# gnd nfet w=3u l=0.6u
+  ad=6.3p pd=10.2u as=3.6p ps=5.4u
M1020 a_60_10# a_115_95# a_8_14# vdd pfet w=3u l=0.6u
+  ad=3.6p pd=5.4u as=6.3p ps=10.2u
M1021 a_301_14# a_115_95# a_281_14# gnd nfet w=3u l=0.6u
+  ad=6.3p pd=10.2u as=3.6p ps=5.4u
M1022 vdd S a_36_10# vdd pfet w=6u l=0.6u
+  ad=12.6p pd=16.2u as=7.2p ps=8.4u
M1023 vdd a_36_10# a_8_14# vdd pfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=7.2p ps=8.4u
M1024 a_115_95# CLK gnd gnd nfet w=3u l=0.6u
+  ad=6.3p pd=10.2u as=3.6p ps=5.4u
M1025 a_60_10# a_122_10# a_8_14# gnd nfet w=3u l=0.6u
+  ad=3.6p pd=5.4u as=6.3p ps=10.2u
M1026 a_354_14# a_281_14# a_334_14# gnd nfet w=6u l=0.6u
+  ad=3.6p pd=7.2u as=14.4p ps=16.8u
M1027 vdd R a_334_14# vdd pfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=7.2p ps=8.4u
M1028 a_115_95# CLK vdd vdd pfet w=6u l=0.6u
+  ad=12.6p pd=16.2u as=7.2p ps=8.4u
M1029 a_281_14# a_115_95# a_36_10# vdd pfet w=3u l=0.6u
+  ad=3.6p pd=5.4u as=6.3p ps=10.2u
M1030 gnd R a_354_14# gnd nfet w=6u l=0.6u
+  ad=9.45p pd=9.15u as=3.6p ps=7.2u
M1031 vdd a_334_14# Q vdd pfet w=6u l=0.6u
+  ad=12.6p pd=16.2u as=12.6p ps=16.2u
.ends

.subckt TBUFX1 A EN Y vdd gnd
M1000 a_68_166# a_26_14# Y vdd pfet w=12u l=0.6u
+  ad=5.4p pd=12.9u as=25.2p ps=28.2u
M1001 gnd A a_68_14# gnd nfet w=6u l=0.6u
+  ad=12.6p pd=16.2u as=2.7p ps=6.9u
M1002 a_26_14# EN gnd gnd nfet w=3u l=0.6u
+  ad=6.3p pd=10.2u as=6.3p ps=10.2u
M1003 a_26_14# EN vdd vdd pfet w=6u l=0.6u
+  ad=12.6p pd=16.2u as=12.6p ps=16.2u
M1004 vdd A a_68_166# vdd pfet w=12u l=0.6u
+  ad=25.2p pd=28.2u as=5.4p ps=12.9u
M1005 a_68_14# EN Y gnd nfet w=6u l=0.6u
+  ad=2.7p pd=6.9u as=12.6p ps=16.2u
.ends

.subckt XNOR2X1 A B Y vdd gnd
M1000 a_74_166# A Y vdd pfet w=12u l=0.6u
+  ad=3.6p pd=12.6u as=14.4p ps=14.4u
M1001 a_29_58# B vdd vdd pfet w=12u l=0.6u
+  ad=25.2p pd=28.2u as=16.2p ps=14.7u
M1002 gnd A a_6_14# gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=12.6p ps=16.2u
M1003 vdd A a_6_14# vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=25.2p ps=28.2u
M1004 Y A a_44_14# gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=1.8p ps=6.6u
M1005 a_29_58# B gnd gnd nfet w=6u l=0.6u
+  ad=12.6p pd=16.2u as=8.1p ps=8.7u
M1006 vdd B a_74_166# vdd pfet w=12u l=0.6u
+  ad=16.2p pd=14.7u as=3.6p ps=12.6u
M1007 Y a_6_14# a_44_166# vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=5.4p ps=12.9u
M1008 a_44_14# a_29_58# gnd gnd nfet w=6u l=0.6u
+  ad=1.8p pd=6.6u as=7.2p ps=8.4u
M1009 a_72_14# a_6_14# Y gnd nfet w=6u l=0.6u
+  ad=2.7p pd=6.9u as=7.2p ps=8.4u
M1010 a_44_166# a_29_58# vdd vdd pfet w=12u l=0.6u
+  ad=5.4p pd=12.9u as=14.4p ps=14.4u
M1011 gnd B a_72_14# gnd nfet w=6u l=0.6u
+  ad=8.1p pd=8.7u as=2.7p ps=6.9u
.ends

.subckt AND2X2 A B Y vdd gnd
M1000 a_25_14# A a_7_14# gnd nfet w=6u l=0.6u
+  ad=2.7p pd=6.9u as=12.6p ps=16.2u
M1001 gnd B a_25_14# gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=2.7p ps=6.9u
M1002 vdd B a_7_14# vdd pfet w=6u l=0.6u
+  ad=14.4p pd=14.7u as=8.1p ps=8.7u
M1003 Y a_7_14# gnd gnd nfet w=6u l=0.6u
+  ad=12.6p pd=16.2u as=7.2p ps=8.4u
M1004 Y a_7_14# vdd vdd pfet w=12u l=0.6u
+  ad=25.2p pd=28.2u as=14.4p ps=14.7u
M1005 a_7_14# A vdd vdd pfet w=6u l=0.6u
+  ad=8.1p pd=8.7u as=12.6p ps=16.2u
.ends

.subckt INVX1 A Y vdd gnd
M1000 Y A gnd gnd nfet w=3u l=0.6u
+  ad=6.3p pd=10.2u as=6.3p ps=10.2u
M1001 Y A vdd vdd pfet w=6u l=0.6u
+  ad=12.6p pd=16.2u as=12.6p ps=16.2u
.ends

.subckt OAI22X1 A B C D Y vdd gnd
M1000 Y D a_7_14# gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=7.2p ps=8.4u
M1001 a_25_146# A vdd vdd pfet w=12u l=0.6u
+  ad=5.4p pd=12.9u as=25.2p ps=28.2u
M1002 a_65_146# D Y vdd pfet w=12u l=0.6u
+  ad=5.4p pd=12.9u as=23.4p ps=15.9u
M1003 gnd A a_7_14# gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=12.6p ps=16.2u
M1004 a_7_14# C Y gnd nfet w=6u l=0.6u
+  ad=12.6p pd=16.2u as=7.2p ps=8.4u
M1005 a_7_14# B gnd gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=7.2p ps=8.4u
M1006 Y B a_25_146# vdd pfet w=12u l=0.6u
+  ad=23.4p pd=15.9u as=5.4p ps=12.9u
M1007 vdd C a_65_146# vdd pfet w=12u l=0.6u
+  ad=25.2p pd=28.2u as=5.4p ps=12.9u
.ends

.subckt OR2X2 A B Y vdd gnd
M1000 Y a_7_146# gnd gnd nfet w=6u l=0.6u
+  ad=12.6p pd=16.2u as=6.3p ps=8.4u
M1001 a_25_146# A a_7_146# vdd pfet w=12u l=0.6u
+  ad=5.4p pd=12.9u as=25.2p ps=28.2u
M1002 a_7_146# A gnd gnd nfet w=3u l=0.6u
+  ad=3.6p pd=5.4u as=6.3p ps=10.2u
M1003 Y a_7_146# vdd vdd pfet w=12u l=0.6u
+  ad=25.2p pd=28.2u as=14.4p ps=14.4u
M1004 gnd B a_7_146# gnd nfet w=3u l=0.6u
+  ad=6.3p pd=8.4u as=3.6p ps=5.4u
M1005 vdd B a_25_146# vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=5.4p ps=12.9u
.ends

.subckt khu_etri050_stdcells vdd gnd
XAOI22X1_0 AOI22X1_0/A AOI22X1_0/B AOI22X1_0/C AOI22X1_0/D AOI22X1_0/Y vdd gnd AOI22X1
XCLKBUF3_0 CLKBUF3_0/A CLKBUF3_0/Y vdd gnd CLKBUF3
XINVX8_0 INVX8_0/A INVX8_0/Y vdd gnd INVX8
XNOR3X1_0 NOR3X1_0/A NOR3X1_0/B NOR3X1_0/C NOR3X1_0/Y vdd gnd NOR3X1
XCLKBUF1_0 CLKBUF1_0/A CLKBUF1_0/Y vdd gnd CLKBUF1
XMUX2X1_0 MUX2X1_0/A MUX2X1_0/B MUX2X1_0/S MUX2X1_0/Y vdd gnd MUX2X1
XNAND3X1_0 NAND3X1_0/A NAND3X1_0/B NAND3X1_0/C NAND3X1_0/Y vdd gnd NAND3X1
XXOR2X1_0 XOR2X1_0/A XOR2X1_0/B XOR2X1_0/Y vdd gnd XOR2X1
XBUFX4_0 BUFX4_0/A BUFX4_0/Y vdd gnd BUFX4
XINVX4_0 INVX4_0/A INVX4_0/Y vdd gnd INVX4
XOAI21X1_0 OAI21X1_0/A OAI21X1_0/B OAI21X1_0/C OAI21X1_0/Y vdd gnd OAI21X1
XTBUFX2_0 TBUFX2_0/A TBUFX2_0/EN TBUFX2_0/Y vdd gnd TBUFX2
XDFFNEGX1_0 DFFNEGX1_0/D DFFNEGX1_0/CLK DFFNEGX1_0/Q vdd gnd DFFNEGX1
XAOI21X1_0 AOI21X1_0/A AOI21X1_0/B AOI21X1_0/C AOI21X1_0/Y vdd gnd AOI21X1
XBUFX2_0 BUFX2_0/A BUFX2_0/Y vdd gnd BUFX2
XINVX2_0 INVX2_0/A INVX2_0/Y vdd gnd INVX2
XFAX1_0 FAX1_0/A FAX1_0/B FAX1_0/C FAX1_0/YS FAX1_0/YC vdd gnd FAX1
XNOR2X1_0 NOR2X1_0/A NOR2X1_0/B NOR2X1_0/Y vdd gnd NOR2X1
XAND2X1_0 AND2X1_0/A AND2X1_0/B AND2X1_0/Y vdd gnd AND2X1
XDFFPOSX1_0 DFFPOSX1_0/D DFFPOSX1_0/CLK DFFPOSX1_0/Q vdd gnd DFFPOSX1
XNAND2X1_0 NAND2X1_0/A NAND2X1_0/B NAND2X1_0/Y vdd gnd NAND2X1
XOR2X1_0 OR2X1_0/A OR2X1_0/B OR2X1_0/Y vdd gnd OR2X1
XCLKBUF2_0 CLKBUF2_0/A CLKBUF2_0/Y vdd gnd CLKBUF2
XLATCH_0 LATCH_0/D LATCH_0/CLK LATCH_0/Q vdd gnd LATCH
XHAX1_0 HAX1_0/A HAX1_0/B HAX1_0/YS HAX1_0/YC vdd gnd HAX1
XDFFSR_0 DFFSR_0/R DFFSR_0/S DFFSR_0/D DFFSR_0/CLK DFFSR_0/Q vdd gnd DFFSR
XTBUFX1_0 TBUFX1_0/A TBUFX1_0/EN TBUFX1_0/Y vdd gnd TBUFX1
XXNOR2X1_0 XNOR2X1_0/A XNOR2X1_0/B XNOR2X1_0/Y vdd gnd XNOR2X1
XAND2X2_0 AND2X2_0/A AND2X2_0/B AND2X2_0/Y vdd gnd AND2X2
XINVX1_0 INVX1_0/A INVX1_0/Y vdd gnd INVX1
XOAI22X1_0 OAI22X1_0/A OAI22X1_0/B OAI22X1_0/C OAI22X1_0/D OAI22X1_0/Y vdd gnd OAI22X1
XOR2X2_0 OR2X2_0/A OR2X2_0/B OR2X2_0/Y vdd gnd OR2X2
.ends

** End of included library /usr/local/share/qflow/tech/etri050/etri050_stdcells.sp

.subckt serv_exec_unit vdd gnd clk rst_n cmd_valid cmd_ready cmd_op[0]
+ cmd_op[1] cmd_op[2] cmd_op[3] cmd_a cmd_b cmd_last rsp_valid rsp_ready
+ rsp_result rsp_flags[0] rsp_flags[1] rsp_flags[2] rsp_flags[3] rsp_flags[4] rsp_flags[5] rsp_last
+ busy debug_state[0] debug_state[1] debug_state[2] 

XFILL_0__1241_ gnd vdd FILL
XFILL_1__1402_ gnd vdd FILL
X_1257_ a_r[9] \u_serv_alu.i_en_bF$buf5\ _122_ _211_ _7_ vdd 
+ gnd
+ AOI22X1
XFILL_0__1470_ gnd vdd FILL
XFILL_0__1050_ gnd vdd FILL
X_800_ _676_ _678_ _683_ _684_ vdd gnd NAND3X1
XFILL_1__1211_ gnd vdd FILL
X_1486_ _261_ load_cnt_4_bF$buf2 _547_ _546_ vdd gnd AOI21X1
X_1066_ b_r[2] \u_serv_alu.i_en_bF$buf4\ _325__bF$buf6 b_r[1] _166_ vdd 
+ gnd
+ AOI22X1
XFILL89550x43350 gnd vdd FILL
XFILL_0__1526_ gnd vdd FILL
XFILL_0__1106_ gnd vdd FILL
XFILL_1__1020_ gnd vdd FILL
X_1295_ _315_ _342__bF$buf3 _723_ _722_ vdd gnd AOI21X1
XFILL_0__1335_ gnd vdd FILL
XFILL90150x32550 gnd vdd FILL
XFILL_0__1144_ gnd vdd FILL
XFILL_1__1305_ gnd vdd FILL
XFILL_0_BUFX2_insert20 gnd vdd FILL
XFILL_0_BUFX2_insert21 gnd vdd FILL
XFILL_0_BUFX2_insert22 gnd vdd FILL
XFILL_0_BUFX2_insert23 gnd vdd FILL
XFILL_0_BUFX2_insert24 gnd vdd FILL
XFILL_0_BUFX2_insert25 gnd vdd FILL
XFILL_0_BUFX2_insert26 gnd vdd FILL
XFILL_0_BUFX2_insert27 gnd vdd FILL
XFILL_0_BUFX2_insert28 gnd vdd FILL
XFILL_0_BUFX2_insert29 gnd vdd FILL
XFILL_0__1373_ gnd vdd FILL
XFILL_1__1114_ gnd vdd FILL
X_1389_ _619_ _66__bF$buf1 _618_ _421_ vdd gnd AOI21X1
XFILL_0__1429_ gnd vdd FILL
XFILL_0__1009_ gnd vdd FILL
XFILL_0__1182_ gnd vdd FILL
X_1601_ _499_ clk_bF$buf4 b_r[11] vdd gnd DFFPOSX1
X_932_ _288_ _285_ vdd gnd INVX1
X_1198_ cmp_r \u_serv_alu.i_en_bF$buf0\ rst_n_bF$buf3 _55_ vdd gnd OAI21X1
XFILL_0__1238_ gnd vdd FILL
X_1410_ _605_ _66__bF$buf3 _604_ _414_ vdd gnd AOI21X1
XBUFX2_insert30 _344_ _344__bF$buf3 vdd gnd BUFX2
XBUFX2_insert31 _344_ _344__bF$buf2 vdd gnd BUFX2
XBUFX2_insert32 _344_ _344__bF$buf1 vdd gnd BUFX2
XBUFX2_insert33 _344_ _344__bF$buf0 vdd gnd BUFX2
XFILL_0__1467_ gnd vdd FILL
XFILL_0__1047_ gnd vdd FILL
XFILL_1__1208_ gnd vdd FILL
X_970_ _252_ _254_ \u_serv_alu.i_en_bF$buf7\ _251_ vdd gnd OAI21X1
XFILL_1__1381_ gnd vdd FILL
XFILL_0__1276_ gnd vdd FILL
XFILL_1__1017_ gnd vdd FILL
XFILL_1__810_ gnd vdd FILL
XFILL89850x18150 gnd vdd FILL
XFILL_1_BUFX2_insert90 gnd vdd FILL
XFILL_1_BUFX2_insert91 gnd vdd FILL
XFILL_0__1085_ gnd vdd FILL
X_1504_ b_r[25] \u_serv_alu.i_en_bF$buf1\ _305_ _125_ _531_ vdd 
+ gnd
+ AOI22X1
XFILL_0__832_ gnd vdd FILL
X_835_ _370_ _369_ _368_ _367_ vdd gnd NAND3X1
X_1313_ cmd_op[2] _95_ rst_n_bF$buf5 _671_ vdd gnd OAI21X1
XFILL_1__1475_ gnd vdd FILL
X_1542_ _396_ clk_bF$buf4 b_r[28] vdd gnd DFFPOSX1
X_1122_ _295__bF$buf0 _206_ _120_ _119_ vdd gnd AOI21X1
XFILL_0__870_ gnd vdd FILL
XFILL_1__904_ gnd vdd FILL
X_873_ cmd_b _341_ _343_ _340_ vdd gnd NAND3X1
XFILL_1__1284_ gnd vdd FILL
XFILL_0__1179_ gnd vdd FILL
XFILL_0__926_ gnd vdd FILL
X_929_ load_cnt[1] load_cnt[2] _349_ _288_ vdd gnd NAND3X1
X_1351_ _647_ _66__bF$buf7 _646_ _431_ vdd gnd AOI21X1
X_1407_ _607_ _66__bF$buf3 _606_ _415_ vdd gnd AOI21X1
X_1580_ _437_ clk_bF$buf10 exec_cnt[1] vdd gnd DFFPOSX1
X_1160_ _295__bF$buf2 _194_ _88_ _87_ vdd gnd AOI21X1
XFILL_0__1200_ gnd vdd FILL
X_1636_ _456_ clk_bF$buf6 a_r[9] vdd gnd DFFPOSX1
X_1216_ _301_ _342__bF$buf0 _42_ _41_ vdd gnd AOI21X1
XFILL_0__964_ gnd vdd FILL
X_967_ exec_cnt[2] exec_cnt[3] _255_ _254_ vdd gnd NAND3X1
XFILL_1__1378_ gnd vdd FILL
X_1445_ _580_ _66__bF$buf7 _579_ _404_ vdd gnd AOI21X1
X_1025_ _203_ _202_ _353__bF$buf2 _493_ vdd gnd AOI21X1
XFILL_0__773_ gnd vdd FILL
XFILL_1__807_ gnd vdd FILL
X_776_ \u_serv_alu.i_cnt0\ \u_serv_alu.cmp_r\ _707_ vdd gnd NOR2X1
XFILL_1__1187_ gnd vdd FILL
XFILL_1__980_ gnd vdd FILL
XFILL_0__829_ gnd vdd FILL
X_1254_ a_r[10] \u_serv_alu.i_en_bF$buf5\ _325__bF$buf4 a_r[9] _9_ vdd 
+ gnd
+ AOI22X1
X_1483_ b_r[29] \u_serv_alu.i_en_bF$buf2\ _325__bF$buf0 b_r[28] _548_ vdd 
+ gnd
+ AOI22X1
X_1063_ _315_ _342__bF$buf3 _170_ _169_ vdd gnd AOI21X1
XFILL_0__1523_ gnd vdd FILL
XFILL_0__1103_ gnd vdd FILL
X_1539_ _468_ clk_bF$buf0 b_r[31] vdd gnd DFFPOSX1
X_1119_ a_r[25] \u_serv_alu.i_en_bF$buf5\ _122_ _125_ _121_ vdd 
+ gnd
+ AOI22X1
XFILL_0__867_ gnd vdd FILL
X_1292_ a_r[3] \u_serv_alu.i_en_bF$buf4\ _325__bF$buf6 a_r[2] _725_ vdd 
+ gnd
+ AOI22X1
XFILL_0__1332_ gnd vdd FILL
X_1348_ _649_ _66__bF$buf1 _648_ _432_ vdd gnd AOI21X1
XFILL_1__883_ gnd vdd FILL
XFILL_0__1141_ gnd vdd FILL
XFILL_1__1302_ gnd vdd FILL
XFILL_1_CLKBUF1_insert34 gnd vdd FILL
XFILL_1_CLKBUF1_insert35 gnd vdd FILL
XFILL_1_CLKBUF1_insert37 gnd vdd FILL
XFILL_1_CLKBUF1_insert38 gnd vdd FILL
X_1577_ _487_ clk_bF$buf7 b_r[1] vdd gnd DFFPOSX1
X_1157_ a_r[23] \u_serv_alu.i_en_bF$buf3\ _325__bF$buf1 a_r[22] _89_ vdd 
+ gnd
+ AOI22X1
XFILL_0__1370_ gnd vdd FILL
XFILL_1__1531_ gnd vdd FILL
XFILL_1__1111_ gnd vdd FILL
X_1386_ _106_ send_cnt[0] _620_ _422_ vdd gnd AOI21X1
XFILL_0__1426_ gnd vdd FILL
XFILL_0__1006_ gnd vdd FILL
X_1195_ _60_ _59_ _104_ _58_ vdd gnd OAI21X1
XFILL_1__977_ gnd vdd FILL
XFILL_0__1235_ gnd vdd FILL
XFILL_0__999_ gnd vdd FILL
XFILL_1__786_ gnd vdd FILL
XFILL_0__1464_ gnd vdd FILL
XFILL_0__1044_ gnd vdd FILL
XFILL_1__1205_ gnd vdd FILL
XFILL_0__1273_ gnd vdd FILL
XFILL_1__1014_ gnd vdd FILL
X_1289_ _175_ _342__bF$buf3 _729_ _728_ vdd gnd AOI21X1
XFILL_0__1329_ gnd vdd FILL
XFILL_1_BUFX2_insert60 gnd vdd FILL
XFILL_1_BUFX2_insert62 gnd vdd FILL
XFILL_1_BUFX2_insert63 gnd vdd FILL
XFILL_1_BUFX2_insert65 gnd vdd FILL
XFILL_1_BUFX2_insert66 gnd vdd FILL
XFILL_1_BUFX2_insert68 gnd vdd FILL
XFILL_0_CLKBUF1_insert40 gnd vdd FILL
XFILL_0_CLKBUF1_insert41 gnd vdd FILL
XFILL_0_CLKBUF1_insert42 gnd vdd FILL
XFILL_0_CLKBUF1_insert43 gnd vdd FILL
XFILL_0_CLKBUF1_insert44 gnd vdd FILL
XFILL_0__1082_ gnd vdd FILL
X_1501_ b_r[26] \u_serv_alu.i_en_bF$buf1\ _325__bF$buf5 b_r[25] _533_ vdd 
+ gnd
+ AOI22X1
X_832_ exec_cnt[0] exec_cnt[1] _370_ vdd gnd NOR2X1
X_1098_ _142_ _140_ _318__bF$buf1 _139_ vdd gnd OAI21X1
XFILL_0__1138_ gnd vdd FILL
X_1310_ _716__bF$buf3 _356__bF$buf1 result_r[29] _673_ vdd gnd OAI21X1
XFILL_1__1472_ gnd vdd FILL
XFILL_0__1367_ gnd vdd FILL
XFILL_1__1528_ gnd vdd FILL
XFILL_1__1108_ gnd vdd FILL
XFILL_1__901_ gnd vdd FILL
X_870_ load_cnt[0] load_cnt[2] _348_ _343_ vdd gnd NOR3X1
XFILL_1__1281_ gnd vdd FILL
XFILL_0__1176_ gnd vdd FILL
XFILL_0__923_ gnd vdd FILL
X_926_ b_r[16] \u_serv_alu.i_en_bF$buf1\ _325__bF$buf5 b_r[15] _290_ vdd 
+ gnd
+ AOI22X1
XFILL_1__1090_ gnd vdd FILL
X_1404_ _609_ _66__bF$buf0 _608_ _416_ vdd gnd AOI21X1
X_1633_ _420_ clk_bF$buf2 result_r[17] vdd gnd DFFPOSX1
X_1213_ a_r[17] \u_serv_alu.i_en_bF$buf5\ _122_ _308_ _43_ vdd 
+ gnd
+ AOI22X1
XFILL_0__961_ gnd vdd FILL
X_964_ b_r[12] \u_serv_alu.i_en_bF$buf2\ _325__bF$buf3 b_r[11] _256_ vdd 
+ gnd
+ AOI22X1
XFILL_1__1375_ gnd vdd FILL
X_1442_ _582_ _66__bF$buf6 _581_ _405_ vdd gnd AOI21X1
X_1022_ _293_ _344__bF$buf2 _295__bF$buf0 _204_ vdd gnd NOR3X1
XFILL_0__770_ gnd vdd FILL
XFILL_1__804_ gnd vdd FILL
X_773_ _709_ alu_cmp vdd gnd INVX1
XFILL_1__1184_ gnd vdd FILL
XFILL_0__1499_ gnd vdd FILL
XFILL_0__1079_ gnd vdd FILL
XFILL_0__826_ gnd vdd FILL
X_829_ send_cnt[2] send_cnt[3] _372_ vdd gnd AND2X2
X_1251_ _216_ _342__bF$buf2 _13_ _12_ vdd gnd AOI21X1
X_1307_ _716__bF$buf0 _356__bF$buf1 result_r[30] _713_ vdd gnd OAI21X1
XFILL_1__1469_ gnd vdd FILL
X_1480_ _342__bF$buf4 _271_ b_r[28] _551_ vdd gnd OAI21X1
X_1060_ b_r[3] \u_serv_alu.i_en_bF$buf4\ _325__bF$buf6 b_r[2] _171_ vdd 
+ gnd
+ AOI22X1
XFILL_0__1520_ gnd vdd FILL
XFILL_0__1100_ gnd vdd FILL
X_1536_ _426_ clk_bF$buf4 result_r[19] vdd gnd DFFPOSX1
X_1116_ _330_ _125_ _324_ _124_ vdd gnd OAI21X1
XFILL_0__864_ gnd vdd FILL
X_867_ _349_ _348_ _347_ _346_ vdd gnd NAND3X1
XFILL_1__1278_ gnd vdd FILL
X_1345_ _651_ _66__bF$buf2 _650_ _433_ vdd gnd AOI21X1
XFILL_1__1087_ gnd vdd FILL
XFILL_1__880_ gnd vdd FILL
X_1574_ _398_ clk_bF$buf0 b_r[30] vdd gnd DFFPOSX1
X_1154_ _295__bF$buf4 _200_ _93_ _92_ vdd gnd AOI21X1
XFILL_0__958_ gnd vdd FILL
XFILL88950x79350 gnd vdd FILL
X_1383_ _622_ _625_ _353__bF$buf4 _423_ vdd gnd AOI21X1
XFILL_0__1423_ gnd vdd FILL
XFILL_0__1003_ gnd vdd FILL
X_1439_ _584_ _66__bF$buf3 _583_ _406_ vdd gnd AOI21X1
X_1019_ b_r[7] _207_ vdd gnd INVX1
X_1192_ alu_cmp _61_ vdd gnd INVX1
XFILL_1__974_ gnd vdd FILL
XFILL_0__1232_ gnd vdd FILL
X_1248_ a_r[11] \u_serv_alu.i_en_bF$buf1\ _325__bF$buf5 a_r[10] _14_ vdd 
+ gnd
+ AOI22X1
XFILL_0__996_ gnd vdd FILL
X_999_ _224_ _236_ _353__bF$buf5 _497_ vdd gnd AOI21X1
XFILL_1__783_ gnd vdd FILL
XFILL_0__1461_ gnd vdd FILL
XFILL_0__1041_ gnd vdd FILL
X_1477_ _555_ _554_ _318__bF$buf0 _553_ vdd gnd OAI21X1
X_1057_ _175_ _342__bF$buf3 _176_ _174_ vdd gnd AOI21X1
XFILL_0__1517_ gnd vdd FILL
XFILL_0__1270_ gnd vdd FILL
XFILL_1__1431_ gnd vdd FILL
XFILL_1__1011_ gnd vdd FILL
X_1286_ a_r[4] \u_serv_alu.i_en_bF$buf0\ _325__bF$buf3 a_r[3] _730_ vdd 
+ gnd
+ AOI22X1
XFILL_0__1326_ gnd vdd FILL
XFILL_1_BUFX2_insert31 gnd vdd FILL
XFILL_1_BUFX2_insert32 gnd vdd FILL
X_1095_ _261_ load_cnt_4_bF$buf2 _143_ _142_ vdd gnd AOI21X1
XFILL_1__877_ gnd vdd FILL
XFILL_0__1135_ gnd vdd FILL
XFILL_0__899_ gnd vdd FILL
XFILL_0__1364_ gnd vdd FILL
XFILL_1__1525_ gnd vdd FILL
XFILL_1__1105_ gnd vdd FILL
XFILL_0__1173_ gnd vdd FILL
XFILL_0__920_ gnd vdd FILL
X_923_ cmd_b _294_ _341_ _293_ vdd gnd NAND3X1
XFILL_1__1334_ gnd vdd FILL
X_1189_ result_r[31] _66__bF$buf5 rst_n_bF$buf5 _63_ vdd gnd OAI21X1
XFILL_0__1229_ gnd vdd FILL
X_1401_ _611_ _66__bF$buf0 _610_ _417_ vdd gnd AOI21X1
XFILL_0__1458_ gnd vdd FILL
XFILL_0__1038_ gnd vdd FILL
X_1630_ _453_ clk_bF$buf1 a_r[6] vdd gnd DFFPOSX1
X_1210_ a_r[18] \u_serv_alu.i_en_bF$buf5\ _325__bF$buf4 a_r[17] _45_ vdd 
+ gnd
+ AOI22X1
X_961_ cmd_b _262_ _341_ _259_ vdd gnd NAND3X1
XFILL_1__1372_ gnd vdd FILL
XFILL_0__1267_ gnd vdd FILL
XFILL89850x25350 gnd vdd FILL
XFILL_1__1428_ gnd vdd FILL
XFILL_1__1008_ gnd vdd FILL
XFILL_1__801_ gnd vdd FILL
X_770_ _710_ _700_ _711_ _724_ vdd gnd OAI21X1
XFILL_1__1181_ gnd vdd FILL
XFILL_0__1496_ gnd vdd FILL
XFILL_0__1076_ gnd vdd FILL
XFILL_0__823_ gnd vdd FILL
XFILL_1_BUFX2_insert1 gnd vdd FILL
XFILL_1_BUFX2_insert2 gnd vdd FILL
XFILL_1_BUFX2_insert4 gnd vdd FILL
XFILL_1_BUFX2_insert5 gnd vdd FILL
XFILL_1_BUFX2_insert7 gnd vdd FILL
XFILL_1_BUFX2_insert9 gnd vdd FILL
X_826_ valid_r _749_[1] _749_[0] _374_ vdd gnd NAND3X1
XFILL_1__1237_ gnd vdd FILL
X_1304_ _716__bF$buf4 _356__bF$buf2 result_r[31] _715_ vdd gnd OAI21X1
XFILL_1__1466_ gnd vdd FILL
X_1533_ b_r[20] \u_serv_alu.i_en_bF$buf4\ _325__bF$buf6 b_r[19] _507_ vdd 
+ gnd
+ AOI22X1
X_1113_ a_r[26] \u_serv_alu.i_en_bF$buf5\ _325__bF$buf4 a_r[25] _126_ vdd 
+ gnd
+ AOI22X1
XFILL_0__861_ gnd vdd FILL
X_864_ load_cnt[0] _349_ vdd gnd INVX2
XFILL_1__1275_ gnd vdd FILL
XFILL_0__917_ gnd vdd FILL
X_1342_ _652_ _101_ _353__bF$buf4 _434_ vdd gnd AOI21X1
XFILL_1__1084_ gnd vdd FILL
XFILL_0__1399_ gnd vdd FILL
X_1571_ _484_ clk_bF$buf0 a_r[29] vdd gnd DFFPOSX1
X_1151_ cmd_op[3] _95_ rst_n_bF$buf5 _94_ vdd gnd OAI21X1
XFILL_1__933_ gnd vdd FILL
X_1627_ _402_ clk_bF$buf5 result_r[3] vdd gnd DFFPOSX1
X_1207_ _315_ load_cnt_4_bF$buf3 _49_ _48_ vdd gnd AOI21X1
XFILL_0__955_ gnd vdd FILL
X_958_ load_cnt[2] _263_ _262_ vdd gnd NOR2X1
XFILL_1__1369_ gnd vdd FILL
X_1380_ send_cnt[0] send_cnt[1] _624_ vdd gnd NOR2X1
XFILL_0__1420_ gnd vdd FILL
XFILL_0__1000_ gnd vdd FILL
X_1436_ _586_ _66__bF$buf7 _585_ _407_ vdd gnd AOI21X1
X_1016_ b_r[8] _210_ _209_ vdd gnd NAND2X1
XFILL_0__764_ gnd vdd FILL
X_767_ _675_ clk_bF$buf9 \u_serv_alu.cmp_r\ vdd gnd DFFPOSX1
XFILL_1__1178_ gnd vdd FILL
XFILL_1__971_ gnd vdd FILL
X_1245_ _222_ _342__bF$buf2 _18_ _17_ vdd gnd AOI21X1
XFILL_0__993_ gnd vdd FILL
X_996_ cmd_last _226_ vdd gnd INVX1
XFILL_1__780_ gnd vdd FILL
X_1474_ b_r[29] _556_ vdd gnd INVX1
X_1054_ _178_ _177_ _353__bF$buf7 _489_ vdd gnd AOI21X1
XFILL_1__836_ gnd vdd FILL
XFILL_0__1514_ gnd vdd FILL
XFILL_0__858_ gnd vdd FILL
X_1283_ _181_ _342__bF$buf1 _734_ _733_ vdd gnd AOI21X1
XFILL_0__1323_ gnd vdd FILL
X_1339_ result_r[27] _66__bF$buf2 rst_n_bF$buf1 _653_ vdd gnd OAI21X1
X_1092_ a_r[29] \u_serv_alu.i_en_bF$buf6\ _325__bF$buf0 a_r[28] _144_ vdd 
+ gnd
+ AOI22X1
XFILL_1__874_ gnd vdd FILL
XFILL_0__1132_ gnd vdd FILL
X_1568_ _434_ clk_bF$buf9 valid_r vdd gnd DFFPOSX1
X_1148_ exec_cnt[5] rst_n_bF$buf0 _96_ vdd gnd NAND2X1
XFILL_0__896_ gnd vdd FILL
X_899_ load_cnt[3] _316_ _315_ vdd gnd NOR2X1
XFILL_0__1361_ gnd vdd FILL
XFILL_1__1522_ gnd vdd FILL
X_1377_ _246_ _627_ _106_ _626_ vdd gnd NAND3X1
XFILL_0__1417_ gnd vdd FILL
XFILL_0__1170_ gnd vdd FILL
X_920_ _337_ _335_ load_cnt_4_bF$buf3 _296_ vdd gnd OAI21X1
XFILL_1__1331_ gnd vdd FILL
X_1186_ _239_ _374_ _165_ _66_ vdd gnd OAI21X1
XFILL_1__968_ gnd vdd FILL
XFILL_0__1226_ gnd vdd FILL
XFILL_1__777_ gnd vdd FILL
XFILL_0__1455_ gnd vdd FILL
XFILL_0__1035_ gnd vdd FILL
XFILL_0__799_ gnd vdd FILL
XFILL_0__1264_ gnd vdd FILL
XFILL_1__1425_ gnd vdd FILL
XFILL90150x3750 gnd vdd FILL
XFILL89850x46950 gnd vdd FILL
XFILL_0__1493_ gnd vdd FILL
XFILL_0__1073_ gnd vdd FILL
XFILL_0__820_ gnd vdd FILL
X_823_ op_r[0] op_r[1] _376_ vdd gnd NOR2X1
XFILL_1__1234_ gnd vdd FILL
X_1089_ cmd_a _269_ _147_ vdd gnd NAND2X1
XFILL_0__1129_ gnd vdd FILL
X_1301_ a_r[1] \u_serv_alu.i_en_bF$buf7\ _162_ \u_serv_alu.i_rs1\ _717_ vdd 
+ gnd
+ AOI22X1
XFILL_1__1463_ gnd vdd FILL
XFILL_0__1358_ gnd vdd FILL
XFILL_1__1519_ gnd vdd FILL
X_1530_ _181_ load_cnt_4_bF$buf1 _511_ _510_ vdd gnd AOI21X1
X_1110_ cmd_a _341_ _313_ _129_ vdd gnd NAND3X1
X_861_ load_cnt[0] load_cnt[1] _352_ vdd gnd NOR2X1
XFILL_1__1272_ gnd vdd FILL
XFILL_0__1167_ gnd vdd FILL
XFILL_0__914_ gnd vdd FILL
X_917_ _347_ load_cnt[3] _352_ _299_ vdd gnd NAND3X1
XFILL_1__1328_ gnd vdd FILL
XFILL_1__1081_ gnd vdd FILL
XFILL_0__1396_ gnd vdd FILL
XFILL_1__1137_ gnd vdd FILL
XFILL_1__930_ gnd vdd FILL
X_1624_ _450_ clk_bF$buf3 a_r[3] vdd gnd DFFPOSX1
X_1204_ a_r[19] \u_serv_alu.i_en_bF$buf5\ _325__bF$buf4 a_r[18] _50_ vdd 
+ gnd
+ AOI22X1
XFILL_0__952_ gnd vdd FILL
X_955_ _266_ _265_ _353__bF$buf1 _500_ vdd gnd AOI21X1
XFILL_1__1366_ gnd vdd FILL
X_1433_ _588_ _66__bF$buf3 _587_ _408_ vdd gnd AOI21X1
X_1013_ _213_ _212_ _353__bF$buf2 _495_ vdd gnd AOI21X1
XFILL_0__761_ gnd vdd FILL
X_764_ gnd debug_state[2] vdd gnd BUFX2
XFILL_1__1175_ gnd vdd FILL
XFILL_0__817_ gnd vdd FILL
X_1242_ a_r[12] \u_serv_alu.i_en_bF$buf2\ _325__bF$buf0 a_r[11] _19_ vdd 
+ gnd
+ AOI22X1
XFILL_0__990_ gnd vdd FILL
X_993_ _239_ _374_ _246_ _229_ vdd gnd OAI21X1
XFILL_0__1299_ gnd vdd FILL
X_1471_ _560_ _559_ _318__bF$buf0 _558_ vdd gnd OAI21X1
X_1051_ _259_ _344__bF$buf3 _295__bF$buf1 _179_ vdd gnd NOR3X1
XFILL_1__833_ gnd vdd FILL
XFILL_0__1511_ gnd vdd FILL
X_1527_ b_r[21] \u_serv_alu.i_en_bF$buf4\ _513_ _295__bF$buf1 _512_ vdd 
+ gnd
+ AOI22X1
X_1107_ _133_ _132_ _353__bF$buf7 _481_ vdd gnd AOI21X1
XFILL_0__855_ gnd vdd FILL
X_858_ _382_ _359_ _379_ cmp_sig vdd gnd OAI21X1
XFILL_1__1269_ gnd vdd FILL
X_1280_ a_r[5] \u_serv_alu.i_en_bF$buf0\ _325__bF$buf3 a_r[4] _735_ vdd 
+ gnd
+ AOI22X1
XFILL_0__1320_ gnd vdd FILL
X_1336_ exec_cnt[0] \u_serv_alu.i_en_bF$buf0\ rst_n_bF$buf3 _655_ vdd gnd OAI21X1
XFILL_1__1078_ gnd vdd FILL
XFILL_1__871_ gnd vdd FILL
X_1565_ _481_ clk_bF$buf3 a_r[26] vdd gnd DFFPOSX1
X_1145_ _100_ _99_ vdd gnd INVX1
XFILL_0__893_ gnd vdd FILL
XFILL_1__927_ gnd vdd FILL
X_896_ _330_ _318_ vdd gnd INVX8
XFILL_0__949_ gnd vdd FILL
X_1374_ _108_ _107_ send_cnt[2] _629_ vdd gnd OAI21X1
XFILL_0__1414_ gnd vdd FILL
XFILL_0__758_ gnd vdd FILL
X_1183_ _293_ _297__bF$buf2 _68_ vdd gnd NOR2X1
XFILL_1__965_ gnd vdd FILL
XFILL_0__1223_ gnd vdd FILL
X_1239_ _261_ _342__bF$buf4 _23_ _22_ vdd gnd AOI21X1
XFILL_0__987_ gnd vdd FILL
XFILL_1__774_ gnd vdd FILL
XFILL_0__1452_ gnd vdd FILL
XFILL_0__1032_ gnd vdd FILL
X_1468_ b_r[30] _561_ vdd gnd INVX1
X_1048_ b_r[3] _182_ vdd gnd INVX1
XFILL_0__796_ gnd vdd FILL
X_799_ _676_ _685_ vdd gnd INVX1
XFILL_0__1508_ gnd vdd FILL
XFILL_0__1261_ gnd vdd FILL
XFILL_1__1422_ gnd vdd FILL
X_1277_ load_cnt_4_bF$buf2 _189_ a_r[4] _738_ vdd gnd OAI21X1
XFILL_0__1317_ gnd vdd FILL
XFILL_0__1490_ gnd vdd FILL
XFILL_0__1070_ gnd vdd FILL
X_820_ _381_ _383_ _379_ rd_sel[1] vdd gnd OAI21X1
XFILL_1__1231_ gnd vdd FILL
X_1086_ a_r[30] \u_serv_alu.i_en_bF$buf6\ _325__bF$buf2 a_r[29] _149_ vdd 
+ gnd
+ AOI22X1
XFILL_1__868_ gnd vdd FILL
XFILL_0__1126_ gnd vdd FILL
XFILL_1__1460_ gnd vdd FILL
XFILL_1__1040_ gnd vdd FILL
XFILL_0__1355_ gnd vdd FILL
XFILL89550x79350 gnd vdd FILL
XFILL_1__1516_ gnd vdd FILL
XFILL_0__1164_ gnd vdd FILL
XFILL_0__911_ gnd vdd FILL
X_914_ load_cnt[0] load_cnt[1] load_cnt[2] _302_ vdd gnd NAND3X1
XFILL_1__1325_ gnd vdd FILL
XFILL90150x68550 gnd vdd FILL
XFILL_0__1393_ gnd vdd FILL
XFILL_1__1134_ gnd vdd FILL
XFILL_0__1449_ gnd vdd FILL
XFILL_0__1029_ gnd vdd FILL
X_1621_ _417_ clk_bF$buf2 result_r[14] vdd gnd DFFPOSX1
X_1201_ _54_ _321_ _53_ vdd gnd NOR2X1
X_952_ _295__bF$buf2 _268_ _270_ _267_ vdd gnd OAI21X1
XFILL_1__1363_ gnd vdd FILL
XFILL89850x32550 gnd vdd FILL
XFILL_0__1258_ gnd vdd FILL
XFILL_1__1419_ gnd vdd FILL
X_1430_ _590_ _66__bF$buf3 _589_ _409_ vdd gnd AOI21X1
X_1010_ _312_ _297__bF$buf1 _295__bF$buf3 _214_ vdd gnd NOR3X1
X_761_ vdd rsp_flags[0] vdd gnd BUFX2
XFILL_1__1172_ gnd vdd FILL
XFILL_0__1487_ gnd vdd FILL
XFILL_0__1067_ gnd vdd FILL
XFILL_0__814_ gnd vdd FILL
X_817_ op_r[1] _382_ _381_ vdd gnd NAND2X1
XFILL_1__1228_ gnd vdd FILL
X_990_ _336_ _342__bF$buf1 _302_ _232_ vdd gnd NOR3X1
XFILL_0__1296_ gnd vdd FILL
XFILL_1__1037_ gnd vdd FILL
XFILL_1__830_ gnd vdd FILL
X_1524_ _187_ load_cnt_4_bF$buf1 _330_ _515_ vdd gnd AOI21X1
X_1104_ _135_ _297__bF$buf1 _333__bF$buf3 _134_ vdd gnd NOR3X1
XFILL_0__852_ gnd vdd FILL
X_855_ _354_ _355_ is_sub vdd gnd NOR2X1
XFILL_1__1266_ gnd vdd FILL
XFILL_0__908_ gnd vdd FILL
X_1333_ _370_ _255_ _657_ vdd gnd NOR2X1
XFILL_1__1495_ gnd vdd FILL
XFILL_1__1075_ gnd vdd FILL
X_1562_ _409_ clk_bF$buf2 result_r[10] vdd gnd DFFPOSX1
X_1142_ _105_ _110_ _102_ _476_ vdd gnd AOI21X1
XFILL_0__890_ gnd vdd FILL
XFILL_1__924_ gnd vdd FILL
X_893_ _330_ _321_ _324_ _320_ vdd gnd OAI21X1
XFILL_0__1199_ gnd vdd FILL
X_1618_ _447_ clk_bF$buf7 \u_serv_alu.i_rs1\ vdd gnd DFFPOSX1
XFILL_0__946_ gnd vdd FILL
X_949_ load_cnt_4_bF$buf2 _271_ b_r[12] _270_ vdd gnd OAI21X1
X_1371_ _240_ _632_ _631_ vdd gnd NOR2X1
XFILL_0__1411_ gnd vdd FILL
X_1427_ _113_ _592_ _591_ _410_ vdd gnd AOI21X1
X_1007_ b_r[9] _217_ vdd gnd INVX1
XFILL_0__755_ gnd vdd FILL
X_758_ _748_[3] rsp_flags[3] vdd gnd BUFX2
XFILL_1__1169_ gnd vdd FILL
X_1180_ _71_ _329_ _70_ vdd gnd NAND2X1
XFILL_1__962_ gnd vdd FILL
XFILL_0__1220_ gnd vdd FILL
X_1236_ a_r[13] \u_serv_alu.i_en_bF$buf2\ _325__bF$buf0 a_r[12] _24_ vdd 
+ gnd
+ AOI22X1
XFILL_0__984_ gnd vdd FILL
X_987_ _386_ cmd_last _353__bF$buf5 _234_ vdd gnd AOI21X1
XFILL_1__771_ gnd vdd FILL
X_1465_ result_r[1] _716__bF$buf4 _564_ _565_ _563_ vdd 
+ gnd
+ AOI22X1
X_1045_ _318__bF$buf4 _185_ _184_ vdd gnd NAND2X1
XFILL_0__793_ gnd vdd FILL
XFILL_1__827_ gnd vdd FILL
X_796_ _687_ _686_ _688_ vdd gnd NAND2X1
XFILL_0__1505_ gnd vdd FILL
XFILL_0__849_ gnd vdd FILL
X_1274_ _742_ _741_ _318__bF$buf1 _740_ vdd gnd OAI21X1
XFILL_0__1314_ gnd vdd FILL
XFILL89250x57750 gnd vdd FILL
X_1083_ cmd_a _341_ _276_ _152_ vdd gnd NAND3X1
XFILL_1__865_ gnd vdd FILL
XFILL_0__1123_ gnd vdd FILL
X_1559_ _478_ clk_bF$buf1 a_r[23] vdd gnd DFFPOSX1
X_1139_ _252_ _254_ _104_ vdd gnd NOR2X1
XFILL_0__887_ gnd vdd FILL
XFILL_0__1352_ gnd vdd FILL
XFILL_1__1513_ gnd vdd FILL
X_1368_ send_cnt[2] _373_ _634_ vdd gnd NAND2X1
XFILL_0__1408_ gnd vdd FILL
XFILL_0__1161_ gnd vdd FILL
XFILL89550x10950 gnd vdd FILL
X_911_ b_r[17] \u_serv_alu.i_en_bF$buf5\ _305_ _308_ _304_ vdd 
+ gnd
+ AOI22X1
XFILL_1__1322_ gnd vdd FILL
X_1597_ _497_ clk_bF$buf9 _749_[1] vdd gnd DFFPOSX1
X_1177_ _232_ _330_ _324_ _73_ vdd gnd OAI21X1
XFILL_0__1217_ gnd vdd FILL
XFILL_0__1390_ gnd vdd FILL
XFILL_1__1131_ gnd vdd FILL
XFILL_1__768_ gnd vdd FILL
XFILL_0__1446_ gnd vdd FILL
XFILL_0__1026_ gnd vdd FILL
XFILL_0__1255_ gnd vdd FILL
XFILL_1__1416_ gnd vdd FILL
XFILL_0__1484_ gnd vdd FILL
XFILL_0__1064_ gnd vdd FILL
XFILL_0__811_ gnd vdd FILL
X_814_ op_r[3] _385_ _384_ vdd gnd NOR2X1
XFILL_1__1225_ gnd vdd FILL
XFILL_0__1293_ gnd vdd FILL
XFILL_1__1034_ gnd vdd FILL
XFILL_0__1349_ gnd vdd FILL
X_1521_ _519_ _518_ _318__bF$buf2 _517_ vdd gnd OAI21X1
X_1101_ a_r[26] _137_ vdd gnd INVX1
X_852_ _366_ _355_ bool_op[1] vdd gnd NOR2X1
XFILL90150x54150 gnd vdd FILL
XFILL_0__1158_ gnd vdd FILL
XFILL_0__905_ gnd vdd FILL
X_908_ _330_ _308_ _324_ _307_ vdd gnd OAI21X1
XFILL_1__1319_ gnd vdd FILL
X_1330_ exec_cnt[2] _255_ rst_n_bF$buf3 _659_ vdd gnd OAI21X1
XFILL_1__1492_ gnd vdd FILL
XFILL_1__1072_ gnd vdd FILL
XFILL_0__1387_ gnd vdd FILL
XFILL_1__1128_ gnd vdd FILL
XFILL_1__921_ gnd vdd FILL
X_890_ load_cnt[0] _348_ _323_ vdd gnd NOR2X1
XFILL_0__1196_ gnd vdd FILL
X_1615_ _393_ clk_bF$buf3 b_r[25] vdd gnd DFFPOSX1
XFILL_0__943_ gnd vdd FILL
X_946_ b_r[14] \u_serv_alu.i_en_bF$buf6\ _325__bF$buf2 b_r[13] _272_ vdd 
+ gnd
+ AOI22X1
X_1424_ _95_ _593_ vdd gnd INVX1
X_1004_ _221_ _220_ _318__bF$buf4 _219_ vdd gnd OAI21X1
X_755_ result_r[0] rsp_result vdd gnd BUFX2
XFILL_1__1166_ gnd vdd FILL
XFILL_0__808_ gnd vdd FILL
X_1653_ _425_ clk_bF$buf9 send_cnt[3] vdd gnd DFFPOSX1
X_1233_ load_cnt_4_bF$buf2 _271_ a_r[12] _27_ vdd gnd OAI21X1
XFILL_0__981_ gnd vdd FILL
X_984_ send_cnt[4] _238_ _240_ _237_ vdd gnd NAND3X1
XFILL_1__1395_ gnd vdd FILL
X_1462_ result_r[1] _361_ _567_ _566_ vdd gnd NAND3X1
X_1042_ _189_ _187_ vdd gnd INVX1
XFILL_0__790_ gnd vdd FILL
XFILL_1__824_ gnd vdd FILL
X_793_ \u_serv_alu.i_cnt0\ \u_serv_alu.cmp_r\ rd_sel[1] _691_ vdd gnd NAND3X1
XFILL_0__1502_ gnd vdd FILL
XFILL_0__1099_ gnd vdd FILL
X_1518_ b_r[21] _520_ vdd gnd INVX1
XFILL_0__846_ gnd vdd FILL
X_849_ _748_[5] _356__bF$buf3 _748_[3] vdd gnd NOR2X1
X_1271_ a_r[5] _743_ vdd gnd INVX1
XFILL_0__1311_ gnd vdd FILL
X_1327_ _666_ _662_ _353__bF$buf5 _439_ vdd gnd AOI21X1
XFILL_1__1489_ gnd vdd FILL
XFILL_1__1069_ gnd vdd FILL
X_1080_ _156_ _155_ _353__bF$buf6 _485_ vdd gnd AOI21X1
XFILL_0__1120_ gnd vdd FILL
X_1556_ _431_ clk_bF$buf8 result_r[24] vdd gnd DFFPOSX1
X_1136_ _749_[1] _332_ _251_ _107_ vdd gnd OAI21X1
XFILL_0__884_ gnd vdd FILL
XFILL_1__918_ gnd vdd FILL
X_887_ _749_[1] _327_ _326_ vdd gnd NOR2X1
XFILL_1__1298_ gnd vdd FILL
XFILL_1__1510_ gnd vdd FILL
X_1365_ result_r[19] _66__bF$buf1 rst_n_bF$buf1 _636_ vdd gnd OAI21X1
XFILL_0__1405_ gnd vdd FILL
X_1594_ _413_ clk_bF$buf7 load_cnt[3] vdd gnd DFFPOSX1
X_1174_ _77_ _76_ _318__bF$buf4 _75_ vdd gnd OAI21X1
XFILL_0__1214_ gnd vdd FILL
XFILL_0__978_ gnd vdd FILL
XFILL_1__765_ gnd vdd FILL
XFILL_0__1443_ gnd vdd FILL
XFILL_0__1023_ gnd vdd FILL
X_1459_ _384_ _365_ _570_ _362_ _569_ vdd 
+ gnd
+ AOI22X1
X_1039_ _191_ _190_ _353__bF$buf0 _491_ vdd gnd AOI21X1
XFILL_0__787_ gnd vdd FILL
XFILL89250x43350 gnd vdd FILL
XFILL_1__994_ gnd vdd FILL
XFILL_0__1252_ gnd vdd FILL
XFILL_1__1413_ gnd vdd FILL
X_1268_ _0_ _752_ _318__bF$buf0 _745_ vdd gnd OAI21X1
XFILL_0__1308_ gnd vdd FILL
XFILL_0__1481_ gnd vdd FILL
XFILL_0__1061_ gnd vdd FILL
X_811_ _749_[1] _749_[0] _386_ vdd gnd NOR2X1
XFILL_1__1222_ gnd vdd FILL
X_1497_ b_r[25] _537_ vdd gnd INVX1
X_1077_ _158_ _297__bF$buf2 _333__bF$buf4 _157_ vdd gnd NOR3X1
XFILL_0__1117_ gnd vdd FILL
XFILL_0__1290_ gnd vdd FILL
XFILL_1__1031_ gnd vdd FILL
XFILL_0__1346_ gnd vdd FILL
XFILL_1__897_ gnd vdd FILL
XFILL_0__1155_ gnd vdd FILL
XFILL_0__902_ gnd vdd FILL
X_905_ b_r[18] \u_serv_alu.i_en_bF$buf5\ _325__bF$buf4 b_r[17] _309_ vdd 
+ gnd
+ AOI22X1
XFILL_1__1316_ gnd vdd FILL
XFILL90150x75750 gnd vdd FILL
XFILL_0__1384_ gnd vdd FILL
XFILL_1__1125_ gnd vdd FILL
XFILL_0__1193_ gnd vdd FILL
X_1612_ _504_ clk_bF$buf6 b_r[16] vdd gnd DFFPOSX1
XFILL_0__940_ gnd vdd FILL
X_943_ cmd_b _341_ _276_ _275_ vdd gnd NAND3X1
XFILL_0__1249_ gnd vdd FILL
X_1421_ _337_ _263_ _331_ _595_ vdd gnd NAND3X1
X_1001_ _343_ load_cnt[3] _222_ vdd gnd AND2X2
XFILL_0__1478_ gnd vdd FILL
XFILL_0__1058_ gnd vdd FILL
XFILL_0__805_ gnd vdd FILL
X_808_ \u_serv_alu.add_cy_r\ \u_serv_alu.i_rs1\ _676_ vdd gnd NAND2X1
XFILL_1__1219_ gnd vdd FILL
X_1650_ _463_ clk_bF$buf6 a_r[16] vdd gnd DFFPOSX1
X_1230_ _31_ _30_ _318__bF$buf6 _29_ vdd gnd OAI21X1
X_981_ _373_ _372_ _240_ vdd gnd AND2X2
XFILL_1__1392_ gnd vdd FILL
XFILL_0__1287_ gnd vdd FILL
XFILL_1__1028_ gnd vdd FILL
XFILL_1__821_ gnd vdd FILL
X_790_ \u_serv_alu.i_rs1\ _694_ vdd gnd INVX1
XFILL_0__1096_ gnd vdd FILL
X_1515_ _524_ _523_ _318__bF$buf0 _522_ vdd gnd OAI21X1
XFILL_0__843_ gnd vdd FILL
X_846_ _384_ _365_ _380_ _362_ _358_ vdd 
+ gnd
+ AOI22X1
X_1324_ exec_cnt[3] _664_ vdd gnd INVX1
XFILL_1__1486_ gnd vdd FILL
X_1553_ _475_ clk_bF$buf10 exec_cnt[5] vdd gnd DFFPOSX1
X_1133_ send_cnt[4] _110_ vdd gnd INVX1
XFILL_0__881_ gnd vdd FILL
XFILL_1__915_ gnd vdd FILL
X_884_ _330_ _333__bF$buf0 _329_ vdd gnd NOR2X1
XFILL_1__1295_ gnd vdd FILL
X_1609_ _503_ clk_bF$buf1 b_r[15] vdd gnd DFFPOSX1
XFILL_0__937_ gnd vdd FILL
X_1362_ result_r[20] _66__bF$buf2 rst_n_bF$buf1 _638_ vdd gnd OAI21X1
XFILL_0__1402_ gnd vdd FILL
X_1418_ _598_ _302_ _597_ vdd gnd AND2X2
X_1591_ _494_ clk_bF$buf6 b_r[8] vdd gnd DFFPOSX1
X_1171_ a_r[19] _78_ vdd gnd INVX1
XFILL_0__1211_ gnd vdd FILL
X_1647_ _395_ clk_bF$buf3 b_r[27] vdd gnd DFFPOSX1
X_1227_ a_r[13] _32_ vdd gnd INVX1
XFILL_0__975_ gnd vdd FILL
X_978_ _245_ _244_ _243_ vdd gnd NOR2X1
XFILL_1__1389_ gnd vdd FILL
XFILL_1__762_ gnd vdd FILL
XFILL_0__1440_ gnd vdd FILL
XFILL_0__1020_ gnd vdd FILL
X_1456_ result_r[1] _66__bF$buf5 rst_n_bF$buf5 _571_ vdd gnd OAI21X1
X_1036_ _275_ _344__bF$buf0 _295__bF$buf4 _192_ vdd gnd NOR3X1
XFILL_0__784_ gnd vdd FILL
XFILL_1__818_ gnd vdd FILL
X_787_ _692_ _693_ bool_op[0] _696_ _697_ vdd 
+ gnd
+ OAI22X1
XFILL_1__1198_ gnd vdd FILL
XFILL_1__991_ gnd vdd FILL
X_1265_ a_r[6] _1_ vdd gnd INVX1
XFILL_0__1305_ gnd vdd FILL
X_1494_ _541_ _540_ _318__bF$buf4 _539_ vdd gnd OAI21X1
X_1074_ a_r[30] _160_ vdd gnd INVX1
XFILL_0__1534_ gnd vdd FILL
XFILL_0__1114_ gnd vdd FILL
XFILL_0__878_ gnd vdd FILL
XBUFX2_insert0 _318_ _318__bF$buf6 vdd gnd BUFX2
XBUFX2_insert1 _318_ _318__bF$buf5 vdd gnd BUFX2
XBUFX2_insert2 _318_ _318__bF$buf4 vdd gnd BUFX2
XBUFX2_insert3 _318_ _318__bF$buf3 vdd gnd BUFX2
XBUFX2_insert4 _318_ _318__bF$buf2 vdd gnd BUFX2
XBUFX2_insert5 _318_ _318__bF$buf1 vdd gnd BUFX2
XBUFX2_insert6 _318_ _318__bF$buf0 vdd gnd BUFX2
XBUFX2_insert7 _356_ _356__bF$buf4 vdd gnd BUFX2
XBUFX2_insert8 _356_ _356__bF$buf3 vdd gnd BUFX2
XBUFX2_insert9 _356_ _356__bF$buf2 vdd gnd BUFX2
XFILL_0__1343_ gnd vdd FILL
X_1359_ result_r[21] _66__bF$buf4 rst_n_bF$buf3 _640_ vdd gnd OAI21X1
XFILL_1__894_ gnd vdd FILL
XFILL_0__1152_ gnd vdd FILL
X_902_ cmd_b _341_ _313_ _312_ vdd gnd NAND3X1
XFILL_1__1313_ gnd vdd FILL
X_1588_ _439_ clk_bF$buf5 exec_cnt[3] vdd gnd DFFPOSX1
X_1168_ _318__bF$buf1 _81_ _80_ vdd gnd NAND2X1
XFILL_0__1208_ gnd vdd FILL
XFILL_0__1381_ gnd vdd FILL
XFILL_1__1122_ gnd vdd FILL
X_1397_ result_r[15] _66__bF$buf1 rst_n_bF$buf1 _612_ vdd gnd OAI21X1
XFILL_1__759_ gnd vdd FILL
XFILL_0__1437_ gnd vdd FILL
XFILL_0__1017_ gnd vdd FILL
XFILL_0__1190_ gnd vdd FILL
X_940_ _336_ _279_ _278_ vdd gnd NOR2X1
XFILL_1__988_ gnd vdd FILL
XFILL_0__1246_ gnd vdd FILL
XFILL_1__797_ gnd vdd FILL
XFILL_0__1475_ gnd vdd FILL
XFILL_0__1055_ gnd vdd FILL
XFILL_0__802_ gnd vdd FILL
X_805_ \u_serv_alu.i_op_b\ _679_ vdd gnd INVX1
XFILL_1__1216_ gnd vdd FILL
XFILL_0__1284_ gnd vdd FILL
XFILL_1__1445_ gnd vdd FILL
XFILL_1__1025_ gnd vdd FILL
XFILL90150x61350 gnd vdd FILL
XFILL_0__1093_ gnd vdd FILL
XFILL90150x28950 gnd vdd FILL
X_1512_ b_r[22] _525_ vdd gnd INVX1
XFILL_0__840_ gnd vdd FILL
X_843_ _376_ _377_ _362_ _361_ vdd gnd OAI21X1
XFILL_0__1149_ gnd vdd FILL
X_1321_ _99_ _97_ _667_ _440_ vdd gnd AOI21X1
XFILL_0_BUFX2_insert70 gnd vdd FILL
XFILL_0_BUFX2_insert71 gnd vdd FILL
XFILL_0_BUFX2_insert72 gnd vdd FILL
XFILL_0_BUFX2_insert73 gnd vdd FILL
XFILL_0_BUFX2_insert74 gnd vdd FILL
XFILL_0_BUFX2_insert75 gnd vdd FILL
XFILL_0_BUFX2_insert76 gnd vdd FILL
XFILL_0_BUFX2_insert77 gnd vdd FILL
XFILL_0_BUFX2_insert78 gnd vdd FILL
XFILL_0_BUFX2_insert79 gnd vdd FILL
XFILL_1__1483_ gnd vdd FILL
XFILL_0__1378_ gnd vdd FILL
XFILL_1__1119_ gnd vdd FILL
X_1550_ _391_ clk_bF$buf0 b_r[23] vdd gnd DFFPOSX1
X_1130_ _301_ _113_ _112_ vdd gnd NAND2X1
XFILL_1__912_ gnd vdd FILL
X_881_ _749_[0] _332_ vdd gnd INVX1
XFILL_1__1292_ gnd vdd FILL
XFILL_0__1187_ gnd vdd FILL
X_1606_ _400_ clk_bF$buf10 result_r[1] vdd gnd DFFPOSX1
XFILL_0__934_ gnd vdd FILL
X_937_ _282_ _281_ _353__bF$buf6 _502_ vdd gnd AOI21X1
XFILL_1__1348_ gnd vdd FILL
X_1415_ _600_ _603_ _353__bF$buf7 _413_ vdd gnd AOI21X1
XBUFX2_insert80 _333_ _333__bF$buf3 vdd gnd BUFX2
XBUFX2_insert81 _333_ _333__bF$buf2 vdd gnd BUFX2
XBUFX2_insert82 _333_ _333__bF$buf1 vdd gnd BUFX2
XBUFX2_insert83 _333_ _333__bF$buf0 vdd gnd BUFX2
XBUFX2_insert84 _66_ _66__bF$buf7 vdd gnd BUFX2
XBUFX2_insert85 _66_ _66__bF$buf6 vdd gnd BUFX2
XBUFX2_insert86 _66_ _66__bF$buf5 vdd gnd BUFX2
XBUFX2_insert87 _66_ _66__bF$buf4 vdd gnd BUFX2
XBUFX2_insert88 _66_ _66__bF$buf3 vdd gnd BUFX2
XBUFX2_insert89 _66_ _66__bF$buf2 vdd gnd BUFX2
X_1644_ _460_ clk_bF$buf4 a_r[13] vdd gnd DFFPOSX1
X_1224_ _36_ _35_ _318__bF$buf0 _34_ vdd gnd OAI21X1
XFILL_0__972_ gnd vdd FILL
X_975_ _751_ _332_ _246_ vdd gnd NOR2X1
XFILL_1__1386_ gnd vdd FILL
X_1453_ result_r[2] _66__bF$buf6 rst_n_bF$buf4 _573_ vdd gnd OAI21X1
X_1033_ b_r[5] _195_ vdd gnd INVX1
XFILL_0__781_ gnd vdd FILL
XFILL_1__815_ gnd vdd FILL
X_784_ _689_ _684_ _699_ vdd gnd NAND2X1
XFILL_1__1195_ gnd vdd FILL
X_1509_ _528_ _530_ _318__bF$buf2 _527_ vdd gnd OAI21X1
XFILL_0__837_ gnd vdd FILL
X_1262_ _5_ _4_ _318__bF$buf2 _3_ vdd gnd OAI21X1
XFILL_0__1302_ gnd vdd FILL
X_1318_ _382_ _95_ _669_ _441_ vdd gnd AOI21X1
X_1491_ b_r[26] _542_ vdd gnd INVX1
X_1071_ _164_ _162_ vdd gnd INVX1
XFILL_0__1531_ gnd vdd FILL
XFILL_0__1111_ gnd vdd FILL
X_1547_ _472_ clk_bF$buf8 a_r[21] vdd gnd DFFPOSX1
X_1127_ _116_ _115_ _353__bF$buf0 _478_ vdd gnd AOI21X1
XFILL_0__875_ gnd vdd FILL
X_878_ _347_ _336_ _335_ vdd gnd NAND2X1
XFILL_1__1289_ gnd vdd FILL
XFILL_0__1340_ gnd vdd FILL
X_1356_ result_r[22] _66__bF$buf4 rst_n_bF$buf3 _642_ vdd gnd OAI21X1
XFILL_1__1098_ gnd vdd FILL
XFILL_1__891_ gnd vdd FILL
X_1585_ _491_ clk_bF$buf1 b_r[5] vdd gnd DFFPOSX1
X_1165_ _342__bF$buf4 _189_ a_r[20] _83_ vdd gnd OAI21X1
XFILL_0__1205_ gnd vdd FILL
XFILL_0__969_ gnd vdd FILL
X_1394_ result_r[16] _66__bF$buf0 rst_n_bF$buf2 _614_ vdd gnd OAI21X1
XFILL_1__756_ gnd vdd FILL
XFILL_0__1434_ gnd vdd FILL
XFILL_0__1014_ gnd vdd FILL
XFILL_0__778_ gnd vdd FILL
XFILL_1__985_ gnd vdd FILL
XFILL88950x32550 gnd vdd FILL
XFILL_0__1243_ gnd vdd FILL
X_1259_ a_r[7] _6_ vdd gnd INVX1
XFILL_1__794_ gnd vdd FILL
XFILL_0__1472_ gnd vdd FILL
XFILL_0__1052_ gnd vdd FILL
X_802_ \u_serv_alu.i_op_b\ _681_ _682_ vdd gnd NAND2X1
X_1488_ _546_ _545_ _318__bF$buf1 _544_ vdd gnd OAI21X1
X_1068_ \u_serv_alu.i_en_bF$buf7\ _165_ vdd gnd INVX1
XFILL_0__1528_ gnd vdd FILL
XFILL_0__1108_ gnd vdd FILL
XFILL_0__1281_ gnd vdd FILL
XFILL_1__1442_ gnd vdd FILL
XFILL_1__1022_ gnd vdd FILL
X_1297_ _722_ _721_ _318__bF$buf3 _720_ vdd gnd OAI21X1
XFILL_0__1337_ gnd vdd FILL
XFILL_0__1090_ gnd vdd FILL
X_840_ op_r[2] op_r[3] _364_ vdd gnd NAND2X1
XFILL90150x82950 gnd vdd FILL
XFILL_1__888_ gnd vdd FILL
XFILL_0__1146_ gnd vdd FILL
XFILL_0_BUFX2_insert45 gnd vdd FILL
XFILL_0_BUFX2_insert46 gnd vdd FILL
XFILL_0_BUFX2_insert47 gnd vdd FILL
XFILL_0_BUFX2_insert48 gnd vdd FILL
XFILL_0_BUFX2_insert49 gnd vdd FILL
XFILL_1__1480_ gnd vdd FILL
XFILL_0__1375_ gnd vdd FILL
XFILL_0__1184_ gnd vdd FILL
X_1603_ _500_ clk_bF$buf4 b_r[12] vdd gnd DFFPOSX1
XFILL_0__931_ gnd vdd FILL
X_934_ _284_ _297__bF$buf3 _295__bF$buf4 _283_ vdd gnd NOR3X1
XFILL_1__1345_ gnd vdd FILL
XFILL89550x25350 gnd vdd FILL
X_1412_ load_cnt[3] _294_ _602_ vdd gnd NOR2X1
XBUFX2_insert50 \u_serv_alu.i_en\ \u_serv_alu.i_en_bF$buf2\ vdd gnd BUFX2
XBUFX2_insert51 \u_serv_alu.i_en\ \u_serv_alu.i_en_bF$buf1\ vdd gnd BUFX2
XBUFX2_insert52 \u_serv_alu.i_en\ \u_serv_alu.i_en_bF$buf0\ vdd gnd BUFX2
XBUFX2_insert53 load_cnt[4] load_cnt_4_bF$buf3 vdd gnd BUFX2
XBUFX2_insert54 load_cnt[4] load_cnt_4_bF$buf2 vdd gnd BUFX2
XBUFX2_insert55 load_cnt[4] load_cnt_4_bF$buf1 vdd gnd BUFX2
XBUFX2_insert56 load_cnt[4] load_cnt_4_bF$buf0 vdd gnd BUFX2
XBUFX2_insert57 _716_ _716__bF$buf4 vdd gnd BUFX2
XBUFX2_insert58 _716_ _716__bF$buf3 vdd gnd BUFX2
XBUFX2_insert59 _716_ _716__bF$buf2 vdd gnd BUFX2
XFILL_0__1469_ gnd vdd FILL
XFILL_0__1049_ gnd vdd FILL
X_1641_ _422_ clk_bF$buf9 send_cnt[0] vdd gnd DFFPOSX1
X_1221_ a_r[14] _37_ vdd gnd INVX1
X_972_ _251_ _250_ _249_ vdd gnd AND2X2
XFILL_1__1383_ gnd vdd FILL
XFILL_0__1278_ gnd vdd FILL
XFILL_1__1439_ gnd vdd FILL
XFILL_1__1019_ gnd vdd FILL
X_1450_ result_r[3] _66__bF$buf5 rst_n_bF$buf5 _575_ vdd gnd OAI21X1
X_1030_ _199_ _198_ _318__bF$buf5 _197_ vdd gnd OAI21X1
X_781_ _701_ _702_ vdd gnd INVX1
XFILL_1__1192_ gnd vdd FILL
XFILL_0__1087_ gnd vdd FILL
XFILL89850x68550 gnd vdd FILL
X_1506_ _293_ _344__bF$buf2 _333__bF$buf4 _530_ vdd gnd NOR3X1
XFILL_0__834_ gnd vdd FILL
X_837_ cmp_r _748_[5] vdd gnd INVX1
XFILL_1__1248_ gnd vdd FILL
X_1315_ cmd_op[1] _95_ rst_n_bF$buf5 _670_ vdd gnd OAI21X1
XFILL_1__1477_ gnd vdd FILL
X_1544_ _428_ clk_bF$buf8 result_r[21] vdd gnd DFFPOSX1
X_1124_ _118_ _344__bF$buf2 _333__bF$buf0 _117_ vdd gnd NOR3X1
XFILL_0__872_ gnd vdd FILL
X_875_ load_cnt_4_bF$buf3 _352_ _351_ _338_ vdd gnd NAND3X1
XFILL_1__1286_ gnd vdd FILL
XFILL_0__928_ gnd vdd FILL
X_1353_ result_r[23] _66__bF$buf7 rst_n_bF$buf4 _644_ vdd gnd OAI21X1
XFILL_1__1095_ gnd vdd FILL
X_1409_ result_r[11] _66__bF$buf3 rst_n_bF$buf2 _604_ vdd gnd OAI21X1
X_1582_ _392_ clk_bF$buf1 b_r[24] vdd gnd DFFPOSX1
X_1162_ _87_ _86_ _318__bF$buf6 _85_ vdd gnd OAI21X1
XFILL_1__944_ gnd vdd FILL
XFILL_0__1202_ gnd vdd FILL
X_1638_ _457_ clk_bF$buf3 a_r[10] vdd gnd DFFPOSX1
X_1218_ _41_ _40_ _318__bF$buf2 _39_ vdd gnd OAI21X1
XFILL_0__966_ gnd vdd FILL
X_969_ exec_cnt[4] _253_ _252_ vdd gnd NAND2X1
X_1391_ result_r[17] _66__bF$buf0 rst_n_bF$buf2 _616_ vdd gnd OAI21X1
XFILL_1__753_ gnd vdd FILL
XFILL_0__1431_ gnd vdd FILL
XFILL_0__1011_ gnd vdd FILL
X_1447_ result_r[4] _66__bF$buf6 rst_n_bF$buf4 _577_ vdd gnd OAI21X1
X_1027_ load_cnt[3] _288_ _200_ vdd gnd NOR2X1
XFILL_0__775_ gnd vdd FILL
X_778_ _704_ _701_ cmp_eq _705_ vdd gnd AOI21X1
XFILL_1__1189_ gnd vdd FILL
XFILL_1__982_ gnd vdd FILL
XFILL_0__1240_ gnd vdd FILL
X_1256_ a_r[8] _210_ _8_ vdd gnd NAND2X1
XFILL_1__791_ gnd vdd FILL
X_1485_ b_r[27] _547_ vdd gnd INVX1
X_1065_ _169_ _168_ _318__bF$buf3 _167_ vdd gnd OAI21X1
XFILL_1__847_ gnd vdd FILL
XFILL_0__1525_ gnd vdd FILL
XFILL_0__1105_ gnd vdd FILL
XFILL_0__869_ gnd vdd FILL
X_1294_ a_r[1] _723_ vdd gnd INVX1
XFILL_0__1334_ gnd vdd FILL
XFILL_1__885_ gnd vdd FILL
XFILL_0__1143_ gnd vdd FILL
XFILL_0_BUFX2_insert10 gnd vdd FILL
XFILL_0_BUFX2_insert11 gnd vdd FILL
XFILL_0_BUFX2_insert12 gnd vdd FILL
XFILL_0_BUFX2_insert13 gnd vdd FILL
XFILL_0_BUFX2_insert14 gnd vdd FILL
X_1579_ _488_ clk_bF$buf7 b_r[2] vdd gnd DFFPOSX1
XFILL_0_BUFX2_insert15 gnd vdd FILL
X_1159_ a_r[21] _88_ vdd gnd INVX1
XFILL_0_BUFX2_insert16 gnd vdd FILL
XFILL_0_BUFX2_insert17 gnd vdd FILL
XFILL_0_BUFX2_insert18 gnd vdd FILL
XFILL_0_BUFX2_insert19 gnd vdd FILL
XFILL_0__1372_ gnd vdd FILL
XFILL_1__1533_ gnd vdd FILL
X_1388_ result_r[18] _66__bF$buf1 rst_n_bF$buf1 _618_ vdd gnd OAI21X1
XFILL_0__1428_ gnd vdd FILL
XFILL_0__1008_ gnd vdd FILL
XFILL_0__1181_ gnd vdd FILL
X_1600_ _442_ clk_bF$buf10 op_r[1] vdd gnd DFFPOSX1
X_931_ _287_ _342__bF$buf0 _289_ _286_ vdd gnd AOI21X1
XFILL_1__1342_ gnd vdd FILL
X_1197_ _62_ _57_ _56_ vdd gnd NAND2X1
XFILL_1__979_ gnd vdd FILL
XFILL_0__1237_ gnd vdd FILL
XFILL_1__1151_ gnd vdd FILL
XBUFX2_insert20 _353_ _353__bF$buf3 vdd gnd BUFX2
XBUFX2_insert21 _353_ _353__bF$buf2 vdd gnd BUFX2
XBUFX2_insert22 _353_ _353__bF$buf1 vdd gnd BUFX2
XBUFX2_insert23 _353_ _353__bF$buf0 vdd gnd BUFX2
XBUFX2_insert24 rst_n rst_n_bF$buf5 vdd gnd BUFX2
XBUFX2_insert25 rst_n rst_n_bF$buf4 vdd gnd BUFX2
XBUFX2_insert26 rst_n rst_n_bF$buf3 vdd gnd BUFX2
XBUFX2_insert27 rst_n rst_n_bF$buf2 vdd gnd BUFX2
XBUFX2_insert28 rst_n rst_n_bF$buf1 vdd gnd BUFX2
XBUFX2_insert29 rst_n rst_n_bF$buf0 vdd gnd BUFX2
XFILL_1__788_ gnd vdd FILL
XFILL89550x46950 gnd vdd FILL
XFILL_0__1466_ gnd vdd FILL
XFILL_0__1046_ gnd vdd FILL
XFILL_1__1380_ gnd vdd FILL
XFILL_0__1275_ gnd vdd FILL
XFILL_1__1436_ gnd vdd FILL
XFILL_1_BUFX2_insert81 gnd vdd FILL
XFILL_1_BUFX2_insert82 gnd vdd FILL
XFILL_1_BUFX2_insert84 gnd vdd FILL
XFILL_1_BUFX2_insert85 gnd vdd FILL
XFILL_1_BUFX2_insert87 gnd vdd FILL
XFILL_1_BUFX2_insert88 gnd vdd FILL
XFILL_0__1084_ gnd vdd FILL
X_1503_ b_r[24] _124_ _532_ vdd gnd NAND2X1
XFILL_0__831_ gnd vdd FILL
X_834_ exec_cnt[2] exec_cnt[3] _368_ vdd gnd NOR2X1
XFILL_1__1245_ gnd vdd FILL
X_1312_ _673_ _66__bF$buf2 _672_ _444_ vdd gnd AOI21X1
XFILL_1__1474_ gnd vdd FILL
XFILL_1__1054_ gnd vdd FILL
XFILL_0__1369_ gnd vdd FILL
X_1541_ _469_ clk_bF$buf0 a_r[31] vdd gnd DFFPOSX1
X_1121_ a_r[23] _120_ vdd gnd INVX1
X_872_ _342__bF$buf3 _352_ _351_ _341_ vdd gnd NAND3X1
XFILL_1__1283_ gnd vdd FILL
XFILL_0__1178_ gnd vdd FILL
XFILL_0__925_ gnd vdd FILL
X_928_ b_r[14] _289_ vdd gnd INVX1
XFILL_1__1339_ gnd vdd FILL
X_1350_ result_r[24] _66__bF$buf7 rst_n_bF$buf2 _646_ vdd gnd OAI21X1
XFILL_1__1092_ gnd vdd FILL
X_1406_ result_r[12] _66__bF$buf3 rst_n_bF$buf2 _606_ vdd gnd OAI21X1
XFILL_1__1148_ gnd vdd FILL
XFILL_1__941_ gnd vdd FILL
X_1635_ _403_ clk_bF$buf5 result_r[4] vdd gnd DFFPOSX1
X_1215_ a_r[15] _42_ vdd gnd INVX1
XFILL_0__963_ gnd vdd FILL
X_966_ exec_cnt[0] exec_cnt[1] _255_ vdd gnd AND2X2
XFILL_1__1377_ gnd vdd FILL
XFILL89850x54150 gnd vdd FILL
X_1444_ result_r[5] _66__bF$buf6 rst_n_bF$buf4 _579_ vdd gnd OAI21X1
X_1024_ b_r[8] \u_serv_alu.i_en_bF$buf1\ _325__bF$buf4 b_r[7] _202_ vdd 
+ gnd
+ AOI22X1
XFILL_0__772_ gnd vdd FILL
X_775_ _706_ _707_ _708_ vdd gnd NOR2X1
XFILL_1__1186_ gnd vdd FILL
XFILL_0__828_ gnd vdd FILL
X_1253_ _12_ _11_ _318__bF$buf5 _10_ vdd gnd OAI21X1
X_1309_ _713_ _66__bF$buf4 _674_ _445_ vdd gnd AOI21X1
X_1482_ _318__bF$buf6 _550_ _549_ vdd gnd NAND2X1
X_1062_ b_r[1] _170_ vdd gnd INVX1
XFILL_1__844_ gnd vdd FILL
XFILL_0__1522_ gnd vdd FILL
XFILL_0__1102_ gnd vdd FILL
X_1538_ _406_ clk_bF$buf5 result_r[7] vdd gnd DFFPOSX1
X_1118_ _318__bF$buf5 cmd_a _122_ vdd gnd AND2X2
XFILL_0__866_ gnd vdd FILL
X_869_ _350_ _345_ _344_ vdd gnd NAND2X1
X_1291_ _728_ _727_ _318__bF$buf3 _726_ vdd gnd OAI21X1
XFILL_0__1331_ gnd vdd FILL
X_1347_ result_r[25] _66__bF$buf1 rst_n_bF$buf1 _648_ vdd gnd OAI21X1
XFILL_1__1089_ gnd vdd FILL
XFILL_1__882_ gnd vdd FILL
XFILL_0__1140_ gnd vdd FILL
X_1576_ _436_ clk_bF$buf10 exec_cnt[0] vdd gnd DFFPOSX1
X_1156_ _92_ _91_ _318__bF$buf2 _90_ vdd gnd OAI21X1
XFILL_1__938_ gnd vdd FILL
XFILL_1__1530_ gnd vdd FILL
X_1385_ send_cnt[0] _621_ rst_n_bF$buf0 _620_ vdd gnd OAI21X1
XFILL_0__1425_ gnd vdd FILL
XFILL_0__1005_ gnd vdd FILL
XFILL_0__769_ gnd vdd FILL
X_1194_ _365_ _378_ _359_ _59_ vdd gnd AOI21X1
XFILL_1__976_ gnd vdd FILL
XFILL_0__1234_ gnd vdd FILL
XFILL_0__998_ gnd vdd FILL
XFILL_1__785_ gnd vdd FILL
XFILL_0__1463_ gnd vdd FILL
XFILL_0__1043_ gnd vdd FILL
X_1479_ _553_ _552_ _353__bF$buf6 _397_ vdd gnd AOI21X1
X_1059_ _174_ _173_ _318__bF$buf3 _172_ vdd gnd OAI21X1
XFILL_0__1519_ gnd vdd FILL
XFILL_0__1272_ gnd vdd FILL
XFILL_1__1433_ gnd vdd FILL
X_1288_ a_r[2] _729_ vdd gnd INVX1
XFILL_0__1328_ gnd vdd FILL
XFILL_1_BUFX2_insert51 gnd vdd FILL
XFILL_1_BUFX2_insert52 gnd vdd FILL
XFILL_1_BUFX2_insert54 gnd vdd FILL
XFILL_1_BUFX2_insert56 gnd vdd FILL
XFILL_1_BUFX2_insert57 gnd vdd FILL
XFILL_1_BUFX2_insert59 gnd vdd FILL
XFILL_0_CLKBUF1_insert34 gnd vdd FILL
XFILL_0_CLKBUF1_insert35 gnd vdd FILL
XFILL_0_CLKBUF1_insert36 gnd vdd FILL
XFILL_0_CLKBUF1_insert37 gnd vdd FILL
XFILL_0_CLKBUF1_insert38 gnd vdd FILL
XFILL89250x79350 gnd vdd FILL
XFILL_0_CLKBUF1_insert39 gnd vdd FILL
XFILL_0__1081_ gnd vdd FILL
X_1500_ _536_ _535_ _318__bF$buf5 _534_ vdd gnd OAI21X1
X_831_ _371_ _747_ vdd gnd INVX1
XFILL_1__1242_ gnd vdd FILL
X_1097_ _141_ _297__bF$buf0 _333__bF$buf1 _140_ vdd gnd NOR3X1
XFILL_1__879_ gnd vdd FILL
XFILL_0__1137_ gnd vdd FILL
XFILL_1__1051_ gnd vdd FILL
XFILL_0__1366_ gnd vdd FILL
XFILL_1__1527_ gnd vdd FILL
XFILL_1__1280_ gnd vdd FILL
XFILL_0__1175_ gnd vdd FILL
XFILL_0__922_ gnd vdd FILL
X_925_ _300_ _292_ _318__bF$buf2 _291_ vdd gnd OAI21X1
XFILL_1__1336_ gnd vdd FILL
XFILL89550x32550 gnd vdd FILL
X_1403_ result_r[13] _66__bF$buf0 rst_n_bF$buf2 _608_ vdd gnd OAI21X1
XFILL_1__1145_ gnd vdd FILL
XFILL90150x21750 gnd vdd FILL
X_1632_ _454_ clk_bF$buf1 a_r[7] vdd gnd DFFPOSX1
X_1212_ a_r[16] _307_ _44_ vdd gnd NAND2X1
XFILL_0__960_ gnd vdd FILL
X_963_ _260_ _258_ _318__bF$buf1 _257_ vdd gnd OAI21X1
XFILL_1__1374_ gnd vdd FILL
XFILL_0__1269_ gnd vdd FILL
X_1441_ result_r[6] _66__bF$buf6 rst_n_bF$buf4 _581_ vdd gnd OAI21X1
X_1021_ _333__bF$buf0 _206_ _207_ _205_ vdd gnd AOI21X1
XFILL89850x75750 gnd vdd FILL
X_772_ \u_serv_alu.i_en_bF$buf7\ _710_ vdd gnd INVX1
XFILL_1__1183_ gnd vdd FILL
XFILL_0__1498_ gnd vdd FILL
XFILL_0__1078_ gnd vdd FILL
XFILL_0__825_ gnd vdd FILL
X_828_ send_cnt[0] send_cnt[1] _373_ vdd gnd AND2X2
XFILL_1__1239_ gnd vdd FILL
X_1250_ a_r[9] _13_ vdd gnd INVX1
X_1306_ _715_ _66__bF$buf4 _714_ _446_ vdd gnd AOI21X1
XFILL_1__1048_ gnd vdd FILL
XFILL_1__841_ gnd vdd FILL
X_1535_ _466_ clk_bF$buf8 cmp_r vdd gnd DFFPOSX1
X_1115_ _342__bF$buf2 _299_ _125_ vdd gnd NOR2X1
XFILL_0__863_ gnd vdd FILL
X_866_ load_cnt[2] _347_ vdd gnd INVX1
XFILL_1__1277_ gnd vdd FILL
XFILL_0__919_ gnd vdd FILL
X_1344_ result_r[26] _66__bF$buf2 rst_n_bF$buf1 _650_ vdd gnd OAI21X1
XFILL_1__1086_ gnd vdd FILL
X_1573_ _485_ clk_bF$buf0 a_r[30] vdd gnd DFFPOSX1
X_1153_ a_r[22] _93_ vdd gnd INVX1
XFILL_1__935_ gnd vdd FILL
X_1629_ _419_ clk_bF$buf2 result_r[16] vdd gnd DFFPOSX1
X_1209_ _48_ _47_ _318__bF$buf3 _46_ vdd gnd OAI21X1
XFILL_0__957_ gnd vdd FILL
X_1382_ _246_ _623_ _106_ _622_ vdd gnd NAND3X1
XFILL_0__1422_ gnd vdd FILL
XFILL_0__1002_ gnd vdd FILL
X_1438_ result_r[7] _66__bF$buf6 rst_n_bF$buf4 _583_ vdd gnd OAI21X1
X_1018_ _208_ _209_ _353__bF$buf3 _494_ vdd gnd AOI21X1
XFILL_0__766_ gnd vdd FILL
X_769_ \u_serv_alu.cmp_r\ _710_ _712_ vdd gnd NAND2X1
X_1191_ alu_cmp _104_ _360_ _62_ vdd gnd NAND3X1
XFILL_1__973_ gnd vdd FILL
XFILL_0__1231_ gnd vdd FILL
X_1247_ _17_ _16_ _318__bF$buf5 _15_ vdd gnd OAI21X1
XFILL_0__995_ gnd vdd FILL
X_998_ _250_ _225_ _227_ _224_ vdd gnd NAND3X1
XFILL_1__782_ gnd vdd FILL
XFILL_0__1460_ gnd vdd FILL
XFILL_0__1040_ gnd vdd FILL
XFILL_1__1201_ gnd vdd FILL
X_1476_ _275_ _297__bF$buf3 _333__bF$buf4 _554_ vdd gnd NOR3X1
X_1056_ _322_ _175_ vdd gnd INVX1
XFILL_1__838_ gnd vdd FILL
XFILL_0__1516_ gnd vdd FILL
XFILL_1__1430_ gnd vdd FILL
X_1285_ _733_ _732_ _318__bF$buf4 _731_ vdd gnd OAI21X1
XFILL_0__1325_ gnd vdd FILL
XFILL_1_BUFX2_insert20 gnd vdd FILL
XFILL_1_BUFX2_insert21 gnd vdd FILL
XFILL_1_BUFX2_insert23 gnd vdd FILL
XFILL_1_BUFX2_insert24 gnd vdd FILL
XFILL_1_BUFX2_insert26 gnd vdd FILL
XFILL_1_BUFX2_insert27 gnd vdd FILL
XFILL_1_BUFX2_insert29 gnd vdd FILL
X_1094_ a_r[27] _143_ vdd gnd INVX1
XFILL_1__876_ gnd vdd FILL
XFILL_0__1134_ gnd vdd FILL
XFILL89250x10950 gnd vdd FILL
XFILL_0__898_ gnd vdd FILL
XFILL_0__1363_ gnd vdd FILL
XFILL_1__1524_ gnd vdd FILL
X_1379_ _108_ _107_ send_cnt[1] _625_ vdd gnd OAI21X1
XFILL_0__1419_ gnd vdd FILL
XFILL_0__1172_ gnd vdd FILL
X_922_ _302_ _294_ vdd gnd INVX1
XFILL_1__1333_ gnd vdd FILL
X_1188_ _241_ _356__bF$buf2 _65_ _64_ vdd gnd OAI21X1
XFILL_0__1228_ gnd vdd FILL
X_1400_ result_r[14] _66__bF$buf0 rst_n_bF$buf2 _610_ vdd gnd OAI21X1
XFILL_1__1142_ gnd vdd FILL
XFILL_1__779_ gnd vdd FILL
XFILL_0__1457_ gnd vdd FILL
XFILL_0__1037_ gnd vdd FILL
X_960_ _261_ _342__bF$buf4 _264_ _260_ vdd gnd AOI21X1
XFILL_0__1266_ gnd vdd FILL
XFILL_1__1427_ gnd vdd FILL
XFILL_1__1180_ gnd vdd FILL
XFILL_0__1495_ gnd vdd FILL
XFILL_0__1075_ gnd vdd FILL
XFILL_0__822_ gnd vdd FILL
X_825_ _377_ _375_ _384_ _376_ bool_op[0] vdd 
+ gnd
+ AOI22X1
XFILL_1__1236_ gnd vdd FILL
X_1303_ _243_ _242_ _109_ _716_ vdd gnd NAND3X1
XFILL_1__1045_ gnd vdd FILL
X_1532_ _510_ _509_ _318__bF$buf4 _508_ vdd gnd OAI21X1
X_1112_ _130_ _128_ _318__bF$buf5 _127_ vdd gnd OAI21X1
XFILL_0__860_ gnd vdd FILL
X_863_ _352_ _351_ _350_ vdd gnd NAND2X1
XFILL_0__1169_ gnd vdd FILL
XFILL_0__916_ gnd vdd FILL
X_919_ _299_ _298_ _297_ vdd gnd NAND2X1
X_1341_ _331_ _228_ valid_r _652_ vdd gnd OAI21X1
XFILL_1__1083_ gnd vdd FILL
XFILL_0__1398_ gnd vdd FILL
XFILL_1__1139_ gnd vdd FILL
X_1570_ _410_ clk_bF$buf7 load_cnt[0] vdd gnd DFFPOSX1
X_1150_ cmd_valid _386_ _95_ vdd gnd NAND2X1
XFILL_1__932_ gnd vdd FILL
XFILL89850x61350 gnd vdd FILL
X_1626_ _451_ clk_bF$buf5 a_r[4] vdd gnd DFFPOSX1
X_1206_ a_r[17] _49_ vdd gnd INVX1
XFILL_0__954_ gnd vdd FILL
XFILL89850x28950 gnd vdd FILL
X_957_ load_cnt[0] load_cnt[1] _263_ vdd gnd NAND2X1
X_1435_ result_r[8] _66__bF$buf7 rst_n_bF$buf2 _585_ vdd gnd OAI21X1
X_1015_ _330_ _211_ _324_ _210_ vdd gnd OAI21X1
XFILL_0__763_ gnd vdd FILL
X_766_ _749_[0] debug_state[0] vdd gnd BUFX2
XFILL_0__819_ gnd vdd FILL
X_1244_ a_r[10] _18_ vdd gnd INVX1
XFILL_0__992_ gnd vdd FILL
X_995_ _331_ _231_ _228_ _227_ vdd gnd AOI21X1
X_1473_ _558_ _557_ _353__bF$buf6 _398_ vdd gnd AOI21X1
X_1053_ b_r[4] \u_serv_alu.i_en_bF$buf4\ _325__bF$buf6 b_r[3] _177_ vdd 
+ gnd
+ AOI22X1
XFILL_1__835_ gnd vdd FILL
XFILL_0__1513_ gnd vdd FILL
X_1529_ b_r[19] _511_ vdd gnd INVX1
X_1109_ _216_ load_cnt_4_bF$buf3 _131_ _130_ vdd gnd AOI21X1
XFILL_0__857_ gnd vdd FILL
X_1282_ a_r[3] _734_ vdd gnd INVX1
XFILL_0__1322_ gnd vdd FILL
X_1338_ _716__bF$buf0 _356__bF$buf1 result_r[28] _654_ vdd gnd OAI21X1
X_1091_ _318__bF$buf6 _146_ _145_ vdd gnd NAND2X1
XFILL_0__1131_ gnd vdd FILL
X_1567_ _482_ clk_bF$buf4 a_r[27] vdd gnd DFFPOSX1
X_1147_ _98_ _254_ \u_serv_alu.i_en_bF$buf7\ _97_ vdd gnd OAI21X1
XFILL_0__895_ gnd vdd FILL
XFILL_1__929_ gnd vdd FILL
X_898_ load_cnt[0] _348_ _347_ _316_ vdd gnd NAND3X1
XFILL_0__1360_ gnd vdd FILL
XFILL_1__1521_ gnd vdd FILL
XFILL_1__1101_ gnd vdd FILL
X_1376_ _628_ _633_ _627_ vdd gnd NOR2X1
XFILL_0__1416_ gnd vdd FILL
XFILL_1__1330_ gnd vdd FILL
X_1185_ _69_ _67_ _353__bF$buf6 _468_ vdd gnd AOI21X1
XFILL_0__1225_ gnd vdd FILL
XFILL_0__989_ gnd vdd FILL
XFILL_0__1454_ gnd vdd FILL
XFILL_0__1034_ gnd vdd FILL
XFILL_0__798_ gnd vdd FILL
XFILL_0__1263_ gnd vdd FILL
XFILL_1__1424_ gnd vdd FILL
XFILL_1__1004_ gnd vdd FILL
X_1279_ _318__bF$buf1 _737_ _736_ vdd gnd NAND2X1
XFILL_0__1319_ gnd vdd FILL
XFILL_0__1492_ gnd vdd FILL
XFILL_0__1072_ gnd vdd FILL
X_822_ _378_ _377_ vdd gnd INVX1
XFILL_1__1233_ gnd vdd FILL
X_1088_ _342__bF$buf4 _271_ a_r[28] _148_ vdd gnd OAI21X1
XFILL_0__1128_ gnd vdd FILL
X_1300_ cmd_a _165_ _164_ _718_ vdd gnd NAND3X1
XFILL_1__1042_ gnd vdd FILL
XFILL_0__1357_ gnd vdd FILL
X_860_ rst_n_bF$buf3 _353_ vdd gnd INVX8
XFILL_0__1166_ gnd vdd FILL
XFILL_0__913_ gnd vdd FILL
X_916_ _301_ _342__bF$buf0 _303_ _300_ vdd gnd AOI21X1
XFILL_1__1327_ gnd vdd FILL
XFILL_1__1080_ gnd vdd FILL
XFILL_0__1395_ gnd vdd FILL
XFILL_1__1136_ gnd vdd FILL
X_1623_ _506_ clk_bF$buf6 b_r[18] vdd gnd DFFPOSX1
X_1203_ _53_ _52_ _318__bF$buf3 _51_ vdd gnd OAI21X1
XFILL_0__951_ gnd vdd FILL
X_954_ b_r[13] \u_serv_alu.i_en_bF$buf2\ _325__bF$buf0 b_r[12] _265_ vdd 
+ gnd
+ AOI22X1
XFILL89850x82950 gnd vdd FILL
X_1432_ result_r[9] _66__bF$buf7 rst_n_bF$buf4 _587_ vdd gnd OAI21X1
X_1012_ b_r[10] \u_serv_alu.i_en_bF$buf1\ _325__bF$buf4 b_r[9] _212_ vdd 
+ gnd
+ AOI22X1
XFILL_0__760_ gnd vdd FILL
X_763_ _746_ busy vdd gnd BUFX2
XFILL_0__1489_ gnd vdd FILL
XFILL_0__1069_ gnd vdd FILL
XFILL_0__816_ gnd vdd FILL
X_819_ _384_ _380_ _379_ vdd gnd NAND2X1
X_1241_ _22_ _21_ _318__bF$buf1 _20_ vdd gnd OAI21X1
X_992_ _246_ _371_ _230_ vdd gnd NAND2X1
XFILL_0__1298_ gnd vdd FILL
XFILL_1__1039_ gnd vdd FILL
X_1470_ _284_ _297__bF$buf2 _333__bF$buf4 _559_ vdd gnd NOR3X1
X_1050_ _181_ _342__bF$buf1 _182_ _180_ vdd gnd AOI21X1
XFILL_1__832_ gnd vdd FILL
XFILL_0__1510_ gnd vdd FILL
X_1526_ _330_ _186_ _513_ vdd gnd NOR2X1
X_1106_ a_r[27] \u_serv_alu.i_en_bF$buf4\ _325__bF$buf5 a_r[26] _132_ vdd 
+ gnd
+ AOI22X1
XFILL_0__854_ gnd vdd FILL
X_857_ _354_ _355_ _356__bF$buf2 alu_sub vdd gnd OAI21X1
X_1335_ _658_ _656_ _353__bF$buf5 _437_ vdd gnd AOI21X1
XFILL_1__1497_ gnd vdd FILL
X_1564_ _433_ clk_bF$buf8 result_r[26] vdd gnd DFFPOSX1
X_1144_ _109_ _101_ _247_ _100_ vdd gnd NAND3X1
XFILL_0__892_ gnd vdd FILL
XFILL_1__926_ gnd vdd FILL
X_895_ _319_ _328_ _353__bF$buf3 _506_ vdd gnd AOI21X1
XFILL_0__948_ gnd vdd FILL
X_1373_ _630_ _635_ _353__bF$buf4 _425_ vdd gnd AOI21X1
XFILL_0__1413_ gnd vdd FILL
X_1429_ result_r[10] _66__bF$buf3 rst_n_bF$buf4 _589_ vdd gnd OAI21X1
X_1009_ _216_ _342__bF$buf2 _217_ _215_ vdd gnd AOI21X1
XFILL_0__757_ gnd vdd FILL
X_1182_ b_r[31] _73_ _69_ vdd gnd NAND2X1
XFILL_0__1222_ gnd vdd FILL
X_1238_ a_r[11] _23_ vdd gnd INVX1
XFILL_0__986_ gnd vdd FILL
X_989_ _233_ _498_ vdd gnd INVX1
XFILL_0__1451_ gnd vdd FILL
XFILL_0__1031_ gnd vdd FILL
X_1467_ _563_ _66__bF$buf5 _562_ _399_ vdd gnd AOI21X1
X_1047_ _184_ _183_ _353__bF$buf5 _490_ vdd gnd AOI21X1
XFILL_0__795_ gnd vdd FILL
XFILL_1__829_ gnd vdd FILL
X_798_ alu_sub \u_serv_alu.i_op_b\ _686_ vdd gnd OR2X2
XFILL_0__1507_ gnd vdd FILL
XFILL_0__1260_ gnd vdd FILL
XFILL_1__1001_ gnd vdd FILL
X_1276_ _740_ _739_ _353__bF$buf1 _452_ vdd gnd AOI21X1
XFILL_0__1316_ gnd vdd FILL
XFILL_1__1230_ gnd vdd FILL
X_1085_ _153_ _151_ _318__bF$buf6 _150_ vdd gnd OAI21X1
XFILL_0__1125_ gnd vdd FILL
XFILL_0__889_ gnd vdd FILL
XFILL_0__1354_ gnd vdd FILL
XFILL_0__1163_ gnd vdd FILL
XFILL_0__910_ gnd vdd FILL
X_913_ b_r[15] _303_ vdd gnd INVX1
X_1599_ _498_ clk_bF$buf9 _749_[0] vdd gnd DFFPOSX1
X_1179_ _118_ _297__bF$buf2 _71_ vdd gnd NOR2X1
XFILL_0__1219_ gnd vdd FILL
XFILL_0__1392_ gnd vdd FILL
XFILL_1__1133_ gnd vdd FILL
XFILL_0__1448_ gnd vdd FILL
XFILL_0__1028_ gnd vdd FILL
X_1620_ _448_ clk_bF$buf7 a_r[1] vdd gnd DFFPOSX1
X_1200_ a_r[18] _54_ vdd gnd INVX1
X_951_ cmd_b _269_ _268_ vdd gnd NAND2X1
XFILL_1__999_ gnd vdd FILL
XFILL_0__1257_ gnd vdd FILL
X_760_ is_sub rsp_flags[1] vdd gnd BUFX2
XFILL_0__1486_ gnd vdd FILL
XFILL_0__1066_ gnd vdd FILL
XFILL_0__813_ gnd vdd FILL
X_816_ op_r[0] _382_ vdd gnd INVX1
XFILL_1__1227_ gnd vdd FILL
XFILL_0__1295_ gnd vdd FILL
XFILL_1__1456_ gnd vdd FILL
XFILL_1__1036_ gnd vdd FILL
X_1523_ _517_ _516_ _353__bF$buf0 _389_ vdd gnd AOI21X1
X_1103_ cmd_a _341_ _343_ _135_ vdd gnd NAND3X1
XFILL_0__851_ gnd vdd FILL
X_854_ op_r[0] _366_ _354_ vdd gnd NAND2X1
XFILL_0__907_ gnd vdd FILL
X_1332_ exec_cnt[1] _100_ _658_ vdd gnd NAND2X1
XFILL_1__1494_ gnd vdd FILL
XFILL_0__1389_ gnd vdd FILL
X_1561_ _479_ clk_bF$buf1 a_r[24] vdd gnd DFFPOSX1
X_1141_ rst_n_bF$buf0 _103_ _102_ vdd gnd NAND2X1
X_892_ _342__bF$buf3 _322_ _321_ vdd gnd NOR2X1
XFILL_0__1198_ gnd vdd FILL
X_1617_ _416_ clk_bF$buf2 result_r[13] vdd gnd DFFPOSX1
XFILL_0__945_ gnd vdd FILL
X_948_ load_cnt[2] load_cnt[3] _352_ _271_ vdd gnd NAND3X1
XFILL_1__1359_ gnd vdd FILL
X_1370_ send_cnt[3] _633_ _632_ vdd gnd NOR2X1
XFILL_0__1410_ gnd vdd FILL
X_1426_ load_cnt[0] _113_ rst_n_bF$buf0 _591_ vdd gnd OAI21X1
X_1006_ _219_ _218_ _353__bF$buf0 _496_ vdd gnd AOI21X1
XFILL_0__754_ gnd vdd FILL
X_757_ cmp_r rsp_flags[4] vdd gnd BUFX2
X_1655_ _388_ clk_bF$buf3 b_r[20] vdd gnd DFFPOSX1
X_1235_ _318__bF$buf6 _26_ _25_ vdd gnd NAND2X1
XFILL_0__983_ gnd vdd FILL
X_986_ _749_[0] _247_ _236_ _235_ vdd gnd NAND3X1
XFILL_1__1397_ gnd vdd FILL
X_1464_ _357_ _61_ _716__bF$buf4 _564_ vdd gnd AOI21X1
X_1044_ _295__bF$buf1 _186_ _188_ _185_ vdd gnd OAI21X1
XFILL_0__792_ gnd vdd FILL
XFILL_1__826_ gnd vdd FILL
X_795_ _685_ _677_ _688_ _689_ vdd gnd OAI21X1
XFILL_0__1504_ gnd vdd FILL
XFILL_0__848_ gnd vdd FILL
X_1273_ _152_ _344__bF$buf0 _295__bF$buf2 _741_ vdd gnd NOR3X1
XFILL_0__1313_ gnd vdd FILL
X_1329_ _665_ _245_ \u_serv_alu.i_en_bF$buf0\ _660_ vdd gnd OAI21X1
X_1082_ _278_ load_cnt_4_bF$buf0 _154_ _153_ vdd gnd AOI21X1
XFILL_0__1122_ gnd vdd FILL
X_1558_ _397_ clk_bF$buf0 b_r[29] vdd gnd DFFPOSX1
X_1138_ _240_ _106_ _105_ vdd gnd NAND2X1
XFILL_0__886_ gnd vdd FILL
X_889_ _325__bF$buf4 _324_ vdd gnd INVX1
XFILL_0__1351_ gnd vdd FILL
X_1367_ _108_ _107_ send_cnt[3] _635_ vdd gnd OAI21X1
XFILL_0__1407_ gnd vdd FILL
XFILL_0__1160_ gnd vdd FILL
X_910_ _318__bF$buf3 cmd_b _305_ vdd gnd AND2X2
X_1596_ _441_ clk_bF$buf9 op_r[0] vdd gnd DFFPOSX1
X_1176_ _75_ _74_ _353__bF$buf5 _470_ vdd gnd AOI21X1
XFILL_1__958_ gnd vdd FILL
XFILL_0__1216_ gnd vdd FILL
XFILL_1__1130_ gnd vdd FILL
XFILL_0__1445_ gnd vdd FILL
XFILL_0__1025_ gnd vdd FILL
XFILL_0__789_ gnd vdd FILL
XFILL_1__996_ gnd vdd FILL
XFILL_0__1254_ gnd vdd FILL
XFILL_0__1483_ gnd vdd FILL
XFILL_0__1063_ gnd vdd FILL
XFILL_0__810_ gnd vdd FILL
X_813_ op_r[2] _385_ vdd gnd INVX1
X_1499_ _312_ _297__bF$buf1 _333__bF$buf3 _535_ vdd gnd NOR3X1
X_1079_ a_r[31] \u_serv_alu.i_en_bF$buf3\ _325__bF$buf1 a_r[30] _155_ vdd 
+ gnd
+ AOI22X1
XFILL_0__1119_ gnd vdd FILL
XFILL_0__1292_ gnd vdd FILL
XFILL89550x7350 gnd vdd FILL
XFILL_1__1453_ gnd vdd FILL
XFILL_1__1033_ gnd vdd FILL
XFILL_0__1348_ gnd vdd FILL
X_1520_ _275_ _344__bF$buf0 _333__bF$buf2 _518_ vdd gnd NOR3X1
X_1100_ _139_ _138_ _353__bF$buf1 _482_ vdd gnd AOI21X1
X_851_ _375_ _355_ vdd gnd INVX2
XFILL_1__1262_ gnd vdd FILL
XFILL_1__899_ gnd vdd FILL
XFILL_0__1157_ gnd vdd FILL
XFILL_0__904_ gnd vdd FILL
X_907_ _338_ _308_ vdd gnd INVX1
XFILL_1__1491_ gnd vdd FILL
XFILL_0__1386_ gnd vdd FILL
XFILL89250x25350 gnd vdd FILL
XFILL_0__1195_ gnd vdd FILL
X_1614_ _505_ clk_bF$buf6 b_r[17] vdd gnd DFFPOSX1
XFILL_0__942_ gnd vdd FILL
X_945_ _277_ _274_ _318__bF$buf6 _273_ vdd gnd OAI21X1
XFILL_1__1356_ gnd vdd FILL
XCLKBUF1_insert40 clk clk_bF$buf4 vdd gnd CLKBUF1
XCLKBUF1_insert41 clk clk_bF$buf3 vdd gnd CLKBUF1
XCLKBUF1_insert42 clk clk_bF$buf2 vdd gnd CLKBUF1
XCLKBUF1_insert43 clk clk_bF$buf1 vdd gnd CLKBUF1
XCLKBUF1_insert44 clk clk_bF$buf0 vdd gnd CLKBUF1
X_1423_ _113_ _595_ _594_ _411_ vdd gnd AOI21X1
X_1003_ _340_ _297__bF$buf0 _295__bF$buf0 _220_ vdd gnd NOR3X1
X_754_ _750_ rsp_valid vdd gnd BUFX2
XFILL_0__807_ gnd vdd FILL
X_1652_ _464_ clk_bF$buf6 a_r[17] vdd gnd DFFPOSX1
X_1232_ _29_ _28_ _353__bF$buf6 _460_ vdd gnd AOI21X1
XFILL_0__980_ gnd vdd FILL
X_983_ _239_ _374_ _238_ vdd gnd NOR2X1
XFILL_1__1394_ gnd vdd FILL
XFILL_0__1289_ gnd vdd FILL
X_1461_ _365_ _364_ _567_ vdd gnd OR2X2
X_1041_ load_cnt_4_bF$buf2 _189_ b_r[4] _188_ vdd gnd OAI21X1
X_792_ bool_op[1] _692_ vdd gnd INVX1
XFILL_0__1501_ gnd vdd FILL
XFILL90150x57750 gnd vdd FILL
XFILL_0__1098_ gnd vdd FILL
X_1517_ _522_ _521_ _353__bF$buf6 _390_ vdd gnd AOI21X1
XFILL_0__845_ gnd vdd FILL
X_848_ _360_ _357_ _356_ vdd gnd NOR2X1
XFILL_1__1259_ gnd vdd FILL
X_1270_ _745_ _744_ _353__bF$buf0 _453_ vdd gnd AOI21X1
XFILL_0__1310_ gnd vdd FILL
X_1326_ \u_serv_alu.i_en_bF$buf0\ _663_ _254_ _662_ vdd gnd NAND3X1
XFILL_1__1488_ gnd vdd FILL
XFILL_1__861_ gnd vdd FILL
X_1555_ _476_ clk_bF$buf9 send_cnt[4] vdd gnd DFFPOSX1
X_1135_ _371_ _109_ _229_ _108_ vdd gnd OAI21X1
XFILL_0__883_ gnd vdd FILL
X_886_ cmd_valid _327_ vdd gnd INVX1
XFILL_1__1297_ gnd vdd FILL
XFILL_0__939_ gnd vdd FILL
X_1364_ _716__bF$buf3 _356__bF$buf0 result_r[20] _637_ vdd gnd OAI21X1
XFILL_0__1404_ gnd vdd FILL
X_1593_ _495_ clk_bF$buf6 b_r[9] vdd gnd DFFPOSX1
X_1173_ _141_ _344__bF$buf3 _333__bF$buf1 _76_ vdd gnd NOR3X1
XFILL_1__955_ gnd vdd FILL
XFILL_0__1213_ gnd vdd FILL
X_1649_ _424_ clk_bF$buf9 send_cnt[2] vdd gnd DFFPOSX1
X_1229_ _152_ _297__bF$buf3 _295__bF$buf2 _30_ vdd gnd NOR3X1
XFILL_0__977_ gnd vdd FILL
XFILL_1__764_ gnd vdd FILL
XFILL_0__1442_ gnd vdd FILL
XFILL_0__1022_ gnd vdd FILL
X_1458_ _381_ _354_ _570_ vdd gnd NAND2X1
X_1038_ b_r[6] \u_serv_alu.i_en_bF$buf6\ _325__bF$buf5 b_r[5] _190_ vdd 
+ gnd
+ AOI22X1
XFILL_0__786_ gnd vdd FILL
X_789_ _694_ _679_ _695_ vdd gnd NAND2X1
XFILL_1__993_ gnd vdd FILL
XFILL_0__1251_ gnd vdd FILL
X_1267_ _158_ _344__bF$buf0 _295__bF$buf4 _752_ vdd gnd NOR3X1
XFILL_0__1307_ gnd vdd FILL
XFILL_0__1480_ gnd vdd FILL
XFILL_0__1060_ gnd vdd FILL
X_810_ _749_[0] _751_ \u_serv_alu.i_en\ vdd gnd NOR2X1
X_1496_ _539_ _538_ _353__bF$buf7 _394_ vdd gnd AOI21X1
X_1076_ cmd_a _341_ _285_ _158_ vdd gnd NAND3X1
XFILL_1__858_ gnd vdd FILL
XFILL_0__1116_ gnd vdd FILL
XFILL_1__1450_ gnd vdd FILL
XFILL_0__1345_ gnd vdd FILL
XFILL_1__1506_ gnd vdd FILL
XFILL_1__896_ gnd vdd FILL
XFILL_0__1154_ gnd vdd FILL
XFILL_0__901_ gnd vdd FILL
X_904_ _314_ _311_ _318__bF$buf3 _310_ vdd gnd OAI21X1
XFILL_0__1383_ gnd vdd FILL
X_1399_ _716__bF$buf1 _356__bF$buf3 result_r[15] _611_ vdd gnd OAI21X1
XFILL_0__1439_ gnd vdd FILL
XFILL_0__1019_ gnd vdd FILL
XFILL_0__1192_ gnd vdd FILL
X_1611_ _415_ clk_bF$buf2 result_r[12] vdd gnd DFFPOSX1
X_942_ _279_ _276_ vdd gnd INVX1
XFILL_1__1353_ gnd vdd FILL
XFILL88950x28950 gnd vdd FILL
XFILL_0__1248_ gnd vdd FILL
XFILL90150x150 gnd vdd FILL
XFILL_1__1409_ gnd vdd FILL
X_1420_ _596_ _599_ _353__bF$buf4 _412_ vdd gnd AOI21X1
X_1000_ b_r[10] _223_ vdd gnd INVX1
XFILL_1__1162_ gnd vdd FILL
XFILL_1__799_ gnd vdd FILL
XFILL_0__1477_ gnd vdd FILL
XFILL_0__1057_ gnd vdd FILL
XFILL_0__804_ gnd vdd FILL
X_807_ \u_serv_alu.add_cy_r\ \u_serv_alu.i_rs1\ _677_ vdd gnd NOR2X1
X_980_ _243_ _242_ _241_ vdd gnd NAND2X1
XFILL_1__1391_ gnd vdd FILL
XFILL_0__1286_ gnd vdd FILL
XFILL_1__1447_ gnd vdd FILL
XFILL_0__1095_ gnd vdd FILL
X_1514_ _284_ _344__bF$buf2 _333__bF$buf4 _523_ vdd gnd NOR3X1
XFILL_0__842_ gnd vdd FILL
X_845_ op_r[3] _385_ _359_ vdd gnd NAND2X1
XFILL_1__1256_ gnd vdd FILL
X_1323_ exec_cnt[2] _665_ vdd gnd INVX1
XFILL_0_BUFX2_insert90 gnd vdd FILL
XFILL_0_BUFX2_insert91 gnd vdd FILL
XFILL_1__1485_ gnd vdd FILL
XFILL_1__1065_ gnd vdd FILL
X_1552_ _430_ clk_bF$buf5 result_r[23] vdd gnd DFFPOSX1
X_1132_ _112_ _342__bF$buf1 _111_ _477_ vdd gnd AOI21X1
XFILL_0__880_ gnd vdd FILL
X_883_ cmd_valid _331_ _330_ vdd gnd NAND2X1
XFILL_1__1294_ gnd vdd FILL
XFILL_0__1189_ gnd vdd FILL
X_1608_ _444_ clk_bF$buf8 result_r[28] vdd gnd DFFPOSX1
XFILL_0__936_ gnd vdd FILL
X_939_ load_cnt[0] load_cnt[2] _348_ _279_ vdd gnd NAND3X1
X_1361_ _716__bF$buf0 _356__bF$buf1 result_r[21] _639_ vdd gnd OAI21X1
XFILL_0__1401_ gnd vdd FILL
XFILL89550x54150 gnd vdd FILL
X_1417_ _349_ _348_ _347_ _598_ vdd gnd OAI21X1
XFILL_1__1159_ gnd vdd FILL
X_1590_ _399_ clk_bF$buf10 result_r[0] vdd gnd DFFPOSX1
X_1170_ _80_ _79_ _353__bF$buf5 _471_ vdd gnd AOI21X1
XFILL_1__952_ gnd vdd FILL
XFILL_0__1210_ gnd vdd FILL
X_1646_ _461_ clk_bF$buf0 a_r[14] vdd gnd DFFPOSX1
X_1226_ _34_ _33_ _353__bF$buf6 _461_ vdd gnd AOI21X1
XFILL_0__974_ gnd vdd FILL
X_977_ exec_cnt[2] exec_cnt[3] _244_ vdd gnd NAND2X1
XFILL90150x43350 gnd vdd FILL
XFILL_1__1388_ gnd vdd FILL
X_1455_ _716__bF$buf4 _356__bF$buf2 result_r[2] _572_ vdd gnd OAI21X1
X_1035_ _333__bF$buf1 _194_ _195_ _193_ vdd gnd AOI21X1
XFILL_0__783_ gnd vdd FILL
X_786_ _697_ rd_sel[2] gnd _698_ vdd gnd AOI21X1
XFILL_1__1197_ gnd vdd FILL
XFILL_1__990_ gnd vdd FILL
XFILL_0__839_ gnd vdd FILL
X_1264_ _3_ _2_ _353__bF$buf2 _454_ vdd gnd AOI21X1
XFILL_0__1304_ gnd vdd FILL
X_1493_ _340_ _297__bF$buf0 _333__bF$buf0 _540_ vdd gnd NOR3X1
X_1073_ _161_ _163_ _353__bF$buf4 _486_ vdd gnd AOI21X1
XFILL_1__855_ gnd vdd FILL
XFILL_0__1533_ gnd vdd FILL
XFILL_0__1113_ gnd vdd FILL
X_1549_ _473_ clk_bF$buf0 a_r[22] vdd gnd DFFPOSX1
X_1129_ _749_[1] _749_[0] _114_ _113_ vdd gnd OAI21X1
XFILL_0__877_ gnd vdd FILL
XFILL_0__1342_ gnd vdd FILL
XFILL_1__1503_ gnd vdd FILL
X_1358_ _716__bF$buf0 _356__bF$buf1 result_r[22] _641_ vdd gnd OAI21X1
XFILL_1__893_ gnd vdd FILL
XFILL_0__1151_ gnd vdd FILL
X_901_ load_cnt[1] load_cnt[2] _349_ _313_ vdd gnd NOR3X1
X_1587_ _492_ clk_bF$buf3 b_r[6] vdd gnd DFFPOSX1
X_1167_ _333__bF$buf1 _82_ _83_ _81_ vdd gnd OAI21X1
XFILL_1__949_ gnd vdd FILL
XFILL_0__1207_ gnd vdd FILL
XFILL_0__1380_ gnd vdd FILL
X_1396_ _716__bF$buf1 _356__bF$buf3 result_r[16] _613_ vdd gnd OAI21X1
XFILL_0__1436_ gnd vdd FILL
XFILL_0__1016_ gnd vdd FILL
XFILL_1__1350_ gnd vdd FILL
XFILL_1__987_ gnd vdd FILL
XFILL_0__1245_ gnd vdd FILL
XFILL88950x82950 gnd vdd FILL
XFILL_1__1406_ gnd vdd FILL
XFILL_1__796_ gnd vdd FILL
XFILL_0__1474_ gnd vdd FILL
XFILL_0__1054_ gnd vdd FILL
XFILL_0__801_ gnd vdd FILL
X_804_ alu_sub _679_ _680_ vdd gnd NAND2X1
XFILL_0__1283_ gnd vdd FILL
XFILL_1__1444_ gnd vdd FILL
X_1299_ _720_ _719_ _353__bF$buf4 _448_ vdd gnd AOI21X1
XFILL_0__1339_ gnd vdd FILL
XFILL_0__1092_ gnd vdd FILL
X_1511_ _527_ _526_ _353__bF$buf0 _391_ vdd gnd AOI21X1
X_842_ op_r[2] _363_ _362_ vdd gnd NOR2X1
XFILL_1__1253_ gnd vdd FILL
XFILL_0__1148_ gnd vdd FILL
XFILL_1__1309_ gnd vdd FILL
X_1320_ rst_n_bF$buf0 _668_ _667_ vdd gnd NAND2X1
XFILL89250x32550 gnd vdd FILL
XFILL_0_BUFX2_insert60 gnd vdd FILL
XFILL_0_BUFX2_insert61 gnd vdd FILL
XFILL_0_BUFX2_insert62 gnd vdd FILL
XFILL_0_BUFX2_insert63 gnd vdd FILL
XFILL_0_BUFX2_insert64 gnd vdd FILL
XFILL_0_BUFX2_insert65 gnd vdd FILL
XFILL_0_BUFX2_insert66 gnd vdd FILL
XFILL_0_BUFX2_insert67 gnd vdd FILL
XFILL_0_BUFX2_insert68 gnd vdd FILL
XFILL_0_BUFX2_insert69 gnd vdd FILL
XFILL_1__1062_ gnd vdd FILL
XFILL_0__1377_ gnd vdd FILL
X_880_ _338_ _334_ _333_ vdd gnd NAND2X1
XFILL_1__1291_ gnd vdd FILL
XFILL_0__1186_ gnd vdd FILL
X_1605_ _501_ clk_bF$buf4 b_r[13] vdd gnd DFFPOSX1
XFILL_0__933_ gnd vdd FILL
X_936_ b_r[15] \u_serv_alu.i_en_bF$buf3\ _325__bF$buf1 b_r[14] _281_ vdd 
+ gnd
+ AOI22X1
XFILL_1__1347_ gnd vdd FILL
X_1414_ _331_ _601_ _113_ _600_ vdd gnd NAND3X1
XFILL89550x75750 gnd vdd FILL
XFILL_1__1156_ gnd vdd FILL
XBUFX2_insert70 _295_ _295__bF$buf3 vdd gnd BUFX2
XBUFX2_insert71 _295_ _295__bF$buf2 vdd gnd BUFX2
XBUFX2_insert72 _295_ _295__bF$buf1 vdd gnd BUFX2
XBUFX2_insert73 _295_ _295__bF$buf0 vdd gnd BUFX2
XBUFX2_insert74 _342_ _342__bF$buf4 vdd gnd BUFX2
XBUFX2_insert75 _342_ _342__bF$buf3 vdd gnd BUFX2
XBUFX2_insert76 _342_ _342__bF$buf2 vdd gnd BUFX2
XBUFX2_insert77 _342_ _342__bF$buf1 vdd gnd BUFX2
XBUFX2_insert78 _342_ _342__bF$buf0 vdd gnd BUFX2
XBUFX2_insert79 _333_ _333__bF$buf4 vdd gnd BUFX2
X_1643_ _404_ clk_bF$buf5 result_r[5] vdd gnd DFFPOSX1
X_1223_ _158_ _297__bF$buf3 _295__bF$buf4 _35_ vdd gnd NOR3X1
XFILL_0__971_ gnd vdd FILL
X_974_ _327_ _248_ _331_ _247_ vdd gnd OAI21X1
XFILL90150x64950 gnd vdd FILL
X_1452_ _716__bF$buf4 _356__bF$buf2 result_r[3] _574_ vdd gnd OAI21X1
X_1032_ _197_ _196_ _353__bF$buf2 _492_ vdd gnd AOI21X1
XFILL_0__780_ gnd vdd FILL
X_783_ _683_ _678_ _685_ _700_ vdd gnd AOI21X1
XFILL_1__1194_ gnd vdd FILL
XFILL_0__1089_ gnd vdd FILL
X_1508_ _295__bF$buf0 _206_ _529_ _528_ vdd gnd AOI21X1
XFILL_0__836_ gnd vdd FILL
X_839_ _382_ _366_ _365_ vdd gnd NAND2X1
X_1261_ _118_ _344__bF$buf2 _295__bF$buf0 _4_ vdd gnd NOR3X1
XFILL_0__1301_ gnd vdd FILL
X_1317_ cmd_op[0] _95_ rst_n_bF$buf5 _669_ vdd gnd OAI21X1
XFILL_1__1059_ gnd vdd FILL
X_1490_ _544_ _543_ _353__bF$buf7 _395_ vdd gnd AOI21X1
X_1070_ cmd_b _165_ _164_ _163_ vdd gnd NAND3X1
XFILL_1__852_ gnd vdd FILL
XFILL_0__1530_ gnd vdd FILL
XFILL_0__1110_ gnd vdd FILL
X_1546_ _407_ clk_bF$buf2 result_r[8] vdd gnd DFFPOSX1
X_1126_ a_r[24] \u_serv_alu.i_en_bF$buf3\ _325__bF$buf1 a_r[23] _115_ vdd 
+ gnd
+ AOI22X1
XFILL_0__874_ gnd vdd FILL
XFILL_1__908_ gnd vdd FILL
X_877_ load_cnt[3] _336_ vdd gnd INVX2
XFILL_1__1288_ gnd vdd FILL
XFILL_1__1500_ gnd vdd FILL
X_1355_ _716__bF$buf4 _356__bF$buf2 result_r[23] _643_ vdd gnd OAI21X1
XFILL_1__1097_ gnd vdd FILL
XFILL_1__890_ gnd vdd FILL
X_1584_ _438_ clk_bF$buf10 exec_cnt[2] vdd gnd DFFPOSX1
X_1164_ _85_ _84_ _353__bF$buf1 _472_ vdd gnd AOI21X1
XFILL_1__946_ gnd vdd FILL
XFILL_0__1204_ gnd vdd FILL
XFILL_0__968_ gnd vdd FILL
XFILL90150x7350 gnd vdd FILL
X_1393_ _716__bF$buf1 _356__bF$buf3 result_r[17] _615_ vdd gnd OAI21X1
XFILL_0__1433_ gnd vdd FILL
XFILL_0__1013_ gnd vdd FILL
X_1449_ _716__bF$buf4 _356__bF$buf2 result_r[4] _576_ vdd gnd OAI21X1
X_1029_ _284_ _344__bF$buf0 _295__bF$buf0 _198_ vdd gnd NOR3X1
XFILL_0__777_ gnd vdd FILL
XFILL_0__1242_ gnd vdd FILL
XFILL_1__1403_ gnd vdd FILL
X_1258_ _7_ _8_ _353__bF$buf2 _455_ vdd gnd AOI21X1
XFILL_1__793_ gnd vdd FILL
XFILL_0__1471_ gnd vdd FILL
XFILL_0__1051_ gnd vdd FILL
X_801_ _680_ _682_ _683_ vdd gnd NAND2X1
XFILL_1__1212_ gnd vdd FILL
X_1487_ _259_ _297__bF$buf0 _333__bF$buf1 _545_ vdd gnd NOR3X1
X_1067_ _167_ _166_ _353__bF$buf4 _487_ vdd gnd AOI21X1
XFILL_1__849_ gnd vdd FILL
XFILL_0__1527_ gnd vdd FILL
XFILL_0__1107_ gnd vdd FILL
XFILL_0__1280_ gnd vdd FILL
XFILL_1__1441_ gnd vdd FILL
X_1296_ _129_ _344__bF$buf1 _295__bF$buf3 _721_ vdd gnd NOR3X1
XFILL_0__1336_ gnd vdd FILL
XFILL_1__1250_ gnd vdd FILL
XFILL_1__887_ gnd vdd FILL
XFILL_0__1145_ gnd vdd FILL
XFILL_1__1306_ gnd vdd FILL
XFILL_0_BUFX2_insert30 gnd vdd FILL
XFILL_0_BUFX2_insert31 gnd vdd FILL
XFILL_0_BUFX2_insert32 gnd vdd FILL
XFILL_0_BUFX2_insert33 gnd vdd FILL
XFILL_0__1374_ gnd vdd FILL
XFILL_1__1115_ gnd vdd FILL
XFILL_0__1183_ gnd vdd FILL
X_1602_ _414_ clk_bF$buf2 result_r[11] vdd gnd DFFPOSX1
XFILL_0__930_ gnd vdd FILL
X_933_ cmd_b _341_ _285_ _284_ vdd gnd NAND3X1
XFILL_1__1344_ gnd vdd FILL
X_1199_ _56_ \u_serv_alu.i_en_bF$buf0\ _55_ _466_ vdd gnd AOI21X1
XFILL_0__1239_ gnd vdd FILL
X_1411_ load_cnt[3] _746_ _114_ _603_ vdd gnd NAND3X1
XFILL_1__1153_ gnd vdd FILL
XBUFX2_insert45 \u_serv_alu.i_en\ \u_serv_alu.i_en_bF$buf7\ vdd gnd BUFX2
XBUFX2_insert46 \u_serv_alu.i_en\ \u_serv_alu.i_en_bF$buf6\ vdd gnd BUFX2
XBUFX2_insert47 \u_serv_alu.i_en\ \u_serv_alu.i_en_bF$buf5\ vdd gnd BUFX2
XBUFX2_insert48 \u_serv_alu.i_en\ \u_serv_alu.i_en_bF$buf4\ vdd gnd BUFX2
XBUFX2_insert49 \u_serv_alu.i_en\ \u_serv_alu.i_en_bF$buf3\ vdd gnd BUFX2
XFILL_0__1468_ gnd vdd FILL
XFILL_0__1048_ gnd vdd FILL
XFILL_1__1209_ gnd vdd FILL
X_1640_ _458_ clk_bF$buf4 a_r[11] vdd gnd DFFPOSX1
X_1220_ _39_ _38_ _353__bF$buf0 _462_ vdd gnd AOI21X1
X_971_ _327_ _386_ _250_ vdd gnd NAND2X1
XFILL_0__1277_ gnd vdd FILL
XFILL_1__1438_ gnd vdd FILL
XFILL_1__811_ gnd vdd FILL
X_780_ _702_ _700_ _703_ vdd gnd NAND2X1
XFILL_1__1191_ gnd vdd FILL
XFILL_0__1086_ gnd vdd FILL
X_1505_ _531_ _532_ _353__bF$buf2 _392_ vdd gnd AOI21X1
XFILL_0__833_ gnd vdd FILL
X_836_ _367_ \u_serv_alu.i_cnt0\ vdd gnd INVX1
XFILL_1__1247_ gnd vdd FILL
X_1314_ _385_ _95_ _671_ _443_ vdd gnd AOI21X1
XFILL_1__1056_ gnd vdd FILL
X_1543_ _470_ clk_bF$buf10 a_r[19] vdd gnd DFFPOSX1
X_1123_ cmd_a _294_ _341_ _118_ vdd gnd NAND3X1
XFILL_0__871_ gnd vdd FILL
XFILL_1__905_ gnd vdd FILL
X_874_ _340_ _344__bF$buf3 _339_ vdd gnd NOR2X1
XFILL89550x61350 gnd vdd FILL
XFILL_0__927_ gnd vdd FILL
XFILL89550x28950 gnd vdd FILL
X_1352_ _716__bF$buf3 _356__bF$buf0 result_r[24] _645_ vdd gnd OAI21X1
XFILL_1__1094_ gnd vdd FILL
X_1408_ _716__bF$buf2 _356__bF$buf4 result_r[12] _605_ vdd gnd OAI21X1
X_1581_ _489_ clk_bF$buf7 b_r[3] vdd gnd DFFPOSX1
X_1161_ _152_ _344__bF$buf0 _333__bF$buf2 _86_ vdd gnd NOR3X1
XFILL_1__943_ gnd vdd FILL
XFILL_0__1201_ gnd vdd FILL
XFILL90150x50550 gnd vdd FILL
X_1637_ _421_ clk_bF$buf2 result_r[18] vdd gnd DFFPOSX1
X_1217_ _118_ _297__bF$buf2 _295__bF$buf4 _40_ vdd gnd NOR3X1
XFILL_0__965_ gnd vdd FILL
X_968_ exec_cnt[5] _253_ vdd gnd INVX1
X_1390_ _716__bF$buf1 _356__bF$buf3 result_r[18] _617_ vdd gnd OAI21X1
XFILL_0__1430_ gnd vdd FILL
XFILL_0__1010_ gnd vdd FILL
X_1446_ _716__bF$buf0 _356__bF$buf1 result_r[5] _578_ vdd gnd OAI21X1
X_1026_ b_r[6] _201_ vdd gnd INVX1
XFILL_0__774_ gnd vdd FILL
XFILL_1__808_ gnd vdd FILL
X_777_ cmp_eq _706_ vdd gnd INVX1
XFILL_1__1400_ gnd vdd FILL
X_1255_ _10_ _9_ _353__bF$buf3 _456_ vdd gnd AOI21X1
XFILL_1__790_ gnd vdd FILL
X_1484_ _549_ _548_ _353__bF$buf1 _396_ vdd gnd AOI21X1
X_1064_ _312_ _344__bF$buf1 _295__bF$buf3 _168_ vdd gnd NOR3X1
XFILL_1__846_ gnd vdd FILL
XFILL_0__1524_ gnd vdd FILL
XFILL_0__1104_ gnd vdd FILL
XFILL_0__868_ gnd vdd FILL
X_1293_ _726_ _725_ _353__bF$buf7 _449_ vdd gnd AOI21X1
XFILL_0__1333_ gnd vdd FILL
X_1349_ _716__bF$buf3 _356__bF$buf0 result_r[25] _647_ vdd gnd OAI21X1
XFILL_0__1142_ gnd vdd FILL
XFILL_1_CLKBUF1_insert40 gnd vdd FILL
XFILL_1_CLKBUF1_insert41 gnd vdd FILL
XFILL_1__1303_ gnd vdd FILL
XFILL_1_CLKBUF1_insert43 gnd vdd FILL
X_1578_ _411_ clk_bF$buf7 load_cnt[1] vdd gnd DFFPOSX1
X_1158_ _90_ _89_ _353__bF$buf0 _473_ vdd gnd AOI21X1
XFILL_0__1371_ gnd vdd FILL
XFILL_1__1112_ gnd vdd FILL
X_1387_ _716__bF$buf3 _356__bF$buf3 result_r[19] _619_ vdd gnd OAI21X1
XFILL_0__1427_ gnd vdd FILL
XFILL_0__1007_ gnd vdd FILL
XFILL_0__1180_ gnd vdd FILL
X_930_ _336_ _288_ _287_ vdd gnd NOR2X1
XFILL_1__1341_ gnd vdd FILL
X_1196_ _61_ _58_ _57_ vdd gnd NAND2X1
XFILL_0__1236_ gnd vdd FILL
XFILL_1__1150_ gnd vdd FILL
XBUFX2_insert10 _356_ _356__bF$buf1 vdd gnd BUFX2
XBUFX2_insert11 _356_ _356__bF$buf0 vdd gnd BUFX2
XBUFX2_insert12 _297_ _297__bF$buf3 vdd gnd BUFX2
XBUFX2_insert13 _297_ _297__bF$buf2 vdd gnd BUFX2
XBUFX2_insert14 _297_ _297__bF$buf1 vdd gnd BUFX2
XBUFX2_insert15 _297_ _297__bF$buf0 vdd gnd BUFX2
XBUFX2_insert16 _353_ _353__bF$buf7 vdd gnd BUFX2
XBUFX2_insert17 _353_ _353__bF$buf6 vdd gnd BUFX2
XBUFX2_insert18 _353_ _353__bF$buf5 vdd gnd BUFX2
XBUFX2_insert19 _353_ _353__bF$buf4 vdd gnd BUFX2
XFILL_0__1465_ gnd vdd FILL
XFILL_0__1045_ gnd vdd FILL
XFILL_1__1206_ gnd vdd FILL
XFILL_0__1274_ gnd vdd FILL
XFILL_1__1435_ gnd vdd FILL
XFILL_1__1015_ gnd vdd FILL
XFILL_1_BUFX2_insert70 gnd vdd FILL
XFILL_1_BUFX2_insert71 gnd vdd FILL
XFILL_1_BUFX2_insert73 gnd vdd FILL
XFILL_1_BUFX2_insert74 gnd vdd FILL
XFILL_1_BUFX2_insert76 gnd vdd FILL
XFILL_1_BUFX2_insert77 gnd vdd FILL
XFILL_1_BUFX2_insert79 gnd vdd FILL
XFILL_0__1083_ gnd vdd FILL
X_1502_ _534_ _533_ _353__bF$buf2 _393_ vdd gnd AOI21X1
XFILL_0__830_ gnd vdd FILL
X_833_ exec_cnt[4] exec_cnt[5] _369_ vdd gnd NOR2X1
XFILL_1__1244_ gnd vdd FILL
X_1099_ a_r[28] \u_serv_alu.i_en_bF$buf2\ _325__bF$buf0 a_r[27] _138_ vdd 
+ gnd
+ AOI22X1
XFILL_0__1139_ gnd vdd FILL
X_1311_ result_r[28] _66__bF$buf2 rst_n_bF$buf1 _672_ vdd gnd OAI21X1
XFILL_1__1053_ gnd vdd FILL
XFILL_0__1368_ gnd vdd FILL
XFILL_1__1109_ gnd vdd FILL
X_1540_ _427_ clk_bF$buf8 result_r[20] vdd gnd DFFPOSX1
X_1120_ _121_ _123_ _353__bF$buf0 _479_ vdd gnd AOI21X1
XFILL_1__902_ gnd vdd FILL
X_871_ load_cnt_4_bF$buf1 _342_ vdd gnd INVX8
XFILL_0__1177_ gnd vdd FILL
XFILL_0__924_ gnd vdd FILL
X_927_ _291_ _290_ _353__bF$buf2 _503_ vdd gnd AOI21X1
XFILL_1__1338_ gnd vdd FILL
XFILL89550x82950 gnd vdd FILL
X_1405_ _716__bF$buf2 _356__bF$buf4 result_r[13] _607_ vdd gnd OAI21X1
XFILL_1__1147_ gnd vdd FILL
XFILL_1__940_ gnd vdd FILL
X_1634_ _455_ clk_bF$buf1 a_r[8] vdd gnd DFFPOSX1
X_1214_ _43_ _44_ _353__bF$buf3 _463_ vdd gnd AOI21X1
XFILL_0__962_ gnd vdd FILL
X_965_ _257_ _256_ _353__bF$buf7 _499_ vdd gnd AOI21X1
X_1443_ _716__bF$buf0 _356__bF$buf1 result_r[6] _580_ vdd gnd OAI21X1
X_1023_ _205_ _204_ _318__bF$buf5 _203_ vdd gnd OAI21X1
XFILL_0__771_ gnd vdd FILL
XFILL_1__805_ gnd vdd FILL
X_774_ _699_ _708_ _705_ _703_ _709_ vdd 
+ gnd
+ AOI22X1
XFILL_0__827_ gnd vdd FILL
X_1252_ _129_ _297__bF$buf1 _295__bF$buf3 _11_ vdd gnd NOR3X1
X_1308_ result_r[29] _66__bF$buf2 rst_n_bF$buf3 _674_ vdd gnd OAI21X1
X_1481_ _333__bF$buf2 _268_ _551_ _550_ vdd gnd OAI21X1
X_1061_ _172_ _171_ _353__bF$buf7 _488_ vdd gnd AOI21X1
XFILL_1__843_ gnd vdd FILL
XFILL_0__1521_ gnd vdd FILL
XFILL_0__1101_ gnd vdd FILL
X_1537_ _467_ clk_bF$buf5 result_r[31] vdd gnd DFFPOSX1
X_1117_ a_r[24] _124_ _123_ vdd gnd NAND2X1
XFILL_0__865_ gnd vdd FILL
X_868_ load_cnt[3] _346_ _345_ vdd gnd NAND2X1
X_1290_ _135_ _344__bF$buf1 _295__bF$buf3 _727_ vdd gnd NOR3X1
XFILL_0__1330_ gnd vdd FILL
X_1346_ _716__bF$buf3 _356__bF$buf0 result_r[26] _649_ vdd gnd OAI21X1
XFILL_1__1300_ gnd vdd FILL
X_1575_ _486_ clk_bF$buf7 \u_serv_alu.i_op_b\ vdd gnd DFFPOSX1
X_1155_ _158_ _344__bF$buf2 _333__bF$buf4 _91_ vdd gnd NOR3X1
XFILL_1__937_ gnd vdd FILL
XFILL89850x57750 gnd vdd FILL
XFILL_0__959_ gnd vdd FILL
X_1384_ _371_ _238_ _621_ vdd gnd AND2X2
XFILL_0__1424_ gnd vdd FILL
XFILL_0__1004_ gnd vdd FILL
XFILL_0__768_ gnd vdd FILL
X_1193_ _364_ _365_ _60_ vdd gnd NOR2X1
XFILL_0__1233_ gnd vdd FILL
X_1249_ _15_ _14_ _353__bF$buf2 _457_ vdd gnd AOI21X1
XFILL_0__997_ gnd vdd FILL
XFILL_0__1462_ gnd vdd FILL
XFILL_0__1042_ gnd vdd FILL
XFILL_1__1203_ gnd vdd FILL
X_1478_ b_r[30] \u_serv_alu.i_en_bF$buf6\ _325__bF$buf2 b_r[29] _552_ vdd 
+ gnd
+ AOI22X1
X_1058_ _340_ _344__bF$buf3 _295__bF$buf3 _173_ vdd gnd NOR3X1
XFILL_0__1518_ gnd vdd FILL
XFILL_0__1271_ gnd vdd FILL
XFILL_1__1012_ gnd vdd FILL
X_1287_ _731_ _730_ _353__bF$buf5 _450_ vdd gnd AOI21X1
XFILL_0__1327_ gnd vdd FILL
XFILL_1_BUFX2_insert45 gnd vdd FILL
XFILL_1_BUFX2_insert46 gnd vdd FILL
XFILL_1_BUFX2_insert48 gnd vdd FILL
XFILL_1_BUFX2_insert49 gnd vdd FILL
XFILL_0__1080_ gnd vdd FILL
X_830_ send_cnt[4] _373_ _372_ _371_ vdd gnd NAND3X1
XFILL_1__1241_ gnd vdd FILL
X_1096_ cmd_a _262_ _341_ _141_ vdd gnd NAND3X1
XFILL_0__1136_ gnd vdd FILL
XFILL_1__1470_ gnd vdd FILL
XFILL_1__1050_ gnd vdd FILL
XFILL_0__1365_ gnd vdd FILL
XFILL_1__1106_ gnd vdd FILL
XFILL_0__1174_ gnd vdd FILL
XFILL_0__921_ gnd vdd FILL
X_924_ _293_ _297__bF$buf2 _295__bF$buf0 _292_ vdd gnd NOR3X1
X_1402_ _716__bF$buf1 _356__bF$buf4 result_r[14] _609_ vdd gnd OAI21X1
XFILL_1__1144_ gnd vdd FILL
XFILL_0__1459_ gnd vdd FILL
XFILL_0__1039_ gnd vdd FILL
X_1631_ _394_ clk_bF$buf3 b_r[26] vdd gnd DFFPOSX1
X_1211_ _46_ _45_ _353__bF$buf3 _464_ vdd gnd AOI21X1
X_962_ _259_ _297__bF$buf0 _295__bF$buf1 _258_ vdd gnd NOR3X1
XFILL_0__1268_ gnd vdd FILL
XFILL_1__1009_ gnd vdd FILL
X_1440_ _716__bF$buf2 _356__bF$buf4 result_r[7] _582_ vdd gnd OAI21X1
X_1020_ load_cnt[3] _302_ _206_ vdd gnd NOR2X1
XFILL_1__802_ gnd vdd FILL
X_771_ alu_sub _710_ _711_ vdd gnd NAND2X1
XFILL_0__1497_ gnd vdd FILL
XFILL_0__1077_ gnd vdd FILL
XFILL_0__824_ gnd vdd FILL
X_827_ _374_ _750_ vdd gnd INVX1
X_1305_ result_r[30] _66__bF$buf4 rst_n_bF$buf3 _714_ vdd gnd OAI21X1
XFILL_1__1467_ gnd vdd FILL
XFILL_1__1047_ gnd vdd FILL
XFILL_1__840_ gnd vdd FILL
X_1534_ _508_ _507_ _353__bF$buf7 _387_ vdd gnd AOI21X1
X_1114_ _127_ _126_ _353__bF$buf3 _480_ vdd gnd AOI21X1
XFILL_0__862_ gnd vdd FILL
X_865_ load_cnt[1] _348_ vdd gnd INVX2
XFILL_0__918_ gnd vdd FILL
X_1343_ _716__bF$buf3 _356__bF$buf0 result_r[27] _651_ vdd gnd OAI21X1
X_1572_ _435_ clk_bF$buf8 result_r[27] vdd gnd DFFPOSX1
X_1152_ _363_ _95_ _94_ _474_ vdd gnd AOI21X1
X_1628_ _452_ clk_bF$buf4 a_r[5] vdd gnd DFFPOSX1
X_1208_ _129_ _344__bF$buf1 _333__bF$buf3 _47_ vdd gnd NOR3X1
XFILL_0__956_ gnd vdd FILL
X_959_ _262_ load_cnt[3] _261_ vdd gnd AND2X2
X_1381_ _624_ _373_ _623_ vdd gnd NOR2X1
XFILL_0__1421_ gnd vdd FILL
XFILL_0__1001_ gnd vdd FILL
X_1437_ _716__bF$buf1 _356__bF$buf0 result_r[8] _584_ vdd gnd OAI21X1
X_1017_ b_r[9] \u_serv_alu.i_en_bF$buf1\ _305_ _211_ _208_ vdd 
+ gnd
+ AOI22X1
XFILL_0__765_ gnd vdd FILL
X_768_ _710_ _709_ _712_ _675_ vdd gnd OAI21X1
X_1190_ _64_ _66__bF$buf5 _63_ _467_ vdd gnd AOI21X1
XFILL_0__1230_ gnd vdd FILL
X_1246_ _135_ _297__bF$buf1 _295__bF$buf3 _16_ vdd gnd NOR3X1
XFILL_0__994_ gnd vdd FILL
X_997_ _226_ _386_ _246_ _225_ vdd gnd AOI21X1
XFILL_1__1200_ gnd vdd FILL
X_1475_ _278_ load_cnt_4_bF$buf0 _556_ _555_ vdd gnd AOI21X1
X_1055_ b_r[2] _176_ vdd gnd INVX1
XFILL_0__1515_ gnd vdd FILL
XFILL90150x79350 gnd vdd FILL
XFILL_0__859_ gnd vdd FILL
X_1284_ _141_ _344__bF$buf3 _295__bF$buf1 _732_ vdd gnd NOR3X1
XFILL_0__1324_ gnd vdd FILL
XFILL_1_BUFX2_insert10 gnd vdd FILL
XFILL_1_BUFX2_insert12 gnd vdd FILL
XFILL_1_BUFX2_insert13 gnd vdd FILL
XFILL_1_BUFX2_insert15 gnd vdd FILL
XFILL_1_BUFX2_insert16 gnd vdd FILL
XFILL_1_BUFX2_insert18 gnd vdd FILL
X_1093_ _145_ _144_ _353__bF$buf1 _483_ vdd gnd AOI21X1
XFILL89850x43350 gnd vdd FILL
XFILL_0__1133_ gnd vdd FILL
X_1569_ _483_ clk_bF$buf4 a_r[28] vdd gnd DFFPOSX1
X_1149_ _99_ _97_ _96_ _475_ vdd gnd AOI21X1
XFILL_0__897_ gnd vdd FILL
XFILL_0__1362_ gnd vdd FILL
XFILL_1__1103_ gnd vdd FILL
X_1378_ _626_ _629_ _353__bF$buf4 _424_ vdd gnd AOI21X1
XFILL_0__1418_ gnd vdd FILL
XFILL89550x150 gnd vdd FILL
XFILL_0__1171_ gnd vdd FILL
X_921_ _341_ _296_ _295_ vdd gnd NAND2X1
X_1187_ _109_ \u_serv_alu.o_rd\ _65_ vdd gnd AND2X2
XFILL_1__969_ gnd vdd FILL
XFILL_0__1227_ gnd vdd FILL
XFILL_1__1141_ gnd vdd FILL
XFILL_0__1456_ gnd vdd FILL
XFILL_0__1036_ gnd vdd FILL
XFILL_1__1370_ gnd vdd FILL
XFILL_0__1265_ gnd vdd FILL
XFILL_1__1006_ gnd vdd FILL
XFILL_0__1494_ gnd vdd FILL
XFILL_0__1074_ gnd vdd FILL
XFILL_0__821_ gnd vdd FILL
X_824_ op_r[2] op_r[3] _375_ vdd gnd NOR2X1
X_1302_ _717_ _718_ _353__bF$buf4 _447_ vdd gnd AOI21X1
XFILL_1__1464_ gnd vdd FILL
XFILL_1__1044_ gnd vdd FILL
XFILL_0__1359_ gnd vdd FILL
X_1531_ _259_ _344__bF$buf3 _333__bF$buf1 _509_ vdd gnd NOR3X1
X_1111_ _129_ _297__bF$buf1 _333__bF$buf3 _128_ vdd gnd NOR3X1
X_862_ load_cnt[2] load_cnt[3] _351_ vdd gnd NOR2X1
XFILL_1__1273_ gnd vdd FILL
XFILL_0__1168_ gnd vdd FILL
XFILL_0__915_ gnd vdd FILL
X_918_ _336_ _346_ _298_ vdd gnd NAND2X1
X_1340_ _654_ _66__bF$buf2 _653_ _435_ vdd gnd AOI21X1
XFILL_0__1397_ gnd vdd FILL
X_1625_ _418_ clk_bF$buf2 result_r[15] vdd gnd DFFPOSX1
X_1205_ _51_ _50_ _353__bF$buf3 _465_ vdd gnd AOI21X1
XFILL_0__953_ gnd vdd FILL
X_956_ b_r[11] _264_ vdd gnd INVX1
XFILL_1__1367_ gnd vdd FILL
X_1434_ _716__bF$buf2 _356__bF$buf4 result_r[9] _586_ vdd gnd OAI21X1
X_1014_ load_cnt_4_bF$buf3 _299_ _211_ vdd gnd NOR2X1
XFILL_0__762_ gnd vdd FILL
X_765_ _749_[1] debug_state[1] vdd gnd BUFX2
XFILL_1__1176_ gnd vdd FILL
XFILL_0__818_ gnd vdd FILL
X_1243_ _20_ _19_ _353__bF$buf1 _458_ vdd gnd AOI21X1
XFILL_0__991_ gnd vdd FILL
X_994_ _230_ _229_ _251_ _228_ vdd gnd NAND3X1
X_1472_ b_r[31] \u_serv_alu.i_en_bF$buf3\ _325__bF$buf2 b_r[30] _557_ vdd 
+ gnd
+ AOI22X1
X_1052_ _180_ _179_ _318__bF$buf4 _178_ vdd gnd OAI21X1
XFILL_0__1512_ gnd vdd FILL
X_1528_ _512_ _514_ _353__bF$buf7 _388_ vdd gnd AOI21X1
X_1108_ a_r[25] _131_ vdd gnd INVX1
XFILL_0__856_ gnd vdd FILL
X_859_ _365_ _359_ _378_ _383_ cmp_eq vdd 
+ gnd
+ OAI22X1
X_1281_ _736_ _735_ _353__bF$buf5 _451_ vdd gnd AOI21X1
XFILL_0__1321_ gnd vdd FILL
XFILL90150x10950 gnd vdd FILL
X_1337_ _99_ exec_cnt[0] _655_ _436_ vdd gnd AOI21X1
XFILL_1__1499_ gnd vdd FILL
X_1090_ _333__bF$buf2 _147_ _148_ _146_ vdd gnd OAI21X1
XFILL_1__872_ gnd vdd FILL
XFILL_0__1130_ gnd vdd FILL
X_1566_ _387_ clk_bF$buf3 b_r[19] vdd gnd DFFPOSX1
X_1146_ exec_cnt[4] _98_ vdd gnd INVX1
XFILL_0__894_ gnd vdd FILL
X_897_ b_r[17] _317_ vdd gnd INVX1
XFILL_1__1100_ gnd vdd FILL
X_1375_ send_cnt[2] _373_ _628_ vdd gnd NOR2X1
XFILL_0__1415_ gnd vdd FILL
XFILL_0__759_ gnd vdd FILL
X_1184_ _68_ _329_ _67_ vdd gnd NAND2X1
XFILL_1__966_ gnd vdd FILL
XFILL_0__1224_ gnd vdd FILL
XFILL_0__988_ gnd vdd FILL
XFILL_1__775_ gnd vdd FILL
XFILL_0__1453_ gnd vdd FILL
XFILL_0__1033_ gnd vdd FILL
X_1469_ _287_ load_cnt_4_bF$buf0 _561_ _560_ vdd gnd AOI21X1
X_1049_ _263_ _335_ _181_ vdd gnd NOR2X1
XFILL_0__797_ gnd vdd FILL
XFILL_0__1509_ gnd vdd FILL
XFILL_0__1262_ gnd vdd FILL
XFILL_1__1003_ gnd vdd FILL
X_1278_ _295__bF$buf1 _82_ _738_ _737_ vdd gnd OAI21X1
XFILL_0__1318_ gnd vdd FILL
XFILL_0__1491_ gnd vdd FILL
XFILL_0__1071_ gnd vdd FILL
X_821_ op_r[0] op_r[1] _378_ vdd gnd NAND2X1
X_1087_ _150_ _149_ _353__bF$buf6 _484_ vdd gnd AOI21X1
XFILL_1__869_ gnd vdd FILL
XFILL_0__1127_ gnd vdd FILL
XFILL_1__1461_ gnd vdd FILL
XFILL_0__1356_ gnd vdd FILL
XFILL_1__1517_ gnd vdd FILL
XFILL_1__1270_ gnd vdd FILL
XFILL_0__1165_ gnd vdd FILL
XFILL_0__912_ gnd vdd FILL
X_915_ _336_ _302_ _301_ vdd gnd NOR2X1
XFILL_0__1394_ gnd vdd FILL
X_1622_ _449_ clk_bF$buf7 a_r[2] vdd gnd DFFPOSX1
X_1202_ _135_ _344__bF$buf1 _333__bF$buf3 _52_ vdd gnd NOR3X1
XFILL_0__950_ gnd vdd FILL
X_953_ _318__bF$buf6 _267_ _266_ vdd gnd NAND2X1
XFILL_1__1364_ gnd vdd FILL
XFILL_0__1259_ gnd vdd FILL
X_1431_ _716__bF$buf2 _356__bF$buf4 result_r[10] _588_ vdd gnd OAI21X1
X_1011_ _215_ _214_ _318__bF$buf5 _213_ vdd gnd OAI21X1
X_762_ _747_ rsp_last vdd gnd BUFX2
XFILL_1__1173_ gnd vdd FILL
XFILL_0__1488_ gnd vdd FILL
XFILL_0__1068_ gnd vdd FILL
XFILL_0__815_ gnd vdd FILL
X_818_ op_r[1] _382_ _380_ vdd gnd NOR2X1
X_1240_ _141_ _297__bF$buf0 _295__bF$buf1 _21_ vdd gnd NOR3X1
X_991_ cmd_last _232_ cmd_valid _231_ vdd gnd OAI21X1
XFILL_0__1297_ gnd vdd FILL
XFILL_1__1458_ gnd vdd FILL
X_1525_ _325__bF$buf6 _515_ b_r[20] _514_ vdd gnd OAI21X1
X_1105_ _136_ _134_ _318__bF$buf4 _133_ vdd gnd OAI21X1
XFILL_0__853_ gnd vdd FILL
X_856_ op_r[1] _355_ rd_sel[0] vdd gnd NOR2X1
XFILL_1__1267_ gnd vdd FILL
XFILL_0__909_ gnd vdd FILL
X_1334_ \u_serv_alu.i_en_bF$buf7\ _657_ _656_ vdd gnd NAND2X1
XFILL_1__1076_ gnd vdd FILL
XFILL89250x54150 gnd vdd FILL
X_1563_ _480_ clk_bF$buf6 a_r[25] vdd gnd DFFPOSX1
X_1143_ \u_serv_alu.i_en_bF$buf7\ _104_ _101_ vdd gnd NAND2X1
XFILL_0__891_ gnd vdd FILL
X_894_ b_r[19] \u_serv_alu.i_en_bF$buf5\ _320_ b_r[18] _319_ vdd 
+ gnd
+ AOI22X1
X_1619_ _401_ clk_bF$buf5 result_r[2] vdd gnd DFFPOSX1
XFILL_0__947_ gnd vdd FILL
X_1372_ _246_ _631_ _106_ _630_ vdd gnd NAND3X1
XFILL_0__1412_ gnd vdd FILL
X_1428_ _716__bF$buf2 _356__bF$buf4 result_r[11] _590_ vdd gnd OAI21X1
X_1008_ _336_ _316_ _216_ vdd gnd NOR2X1
XFILL_0__756_ gnd vdd FILL
X_759_ _748_[2] rsp_flags[2] vdd gnd BUFX2
X_1181_ _72_ _70_ _353__bF$buf6 _469_ vdd gnd AOI21X1
XFILL_1__963_ gnd vdd FILL
XFILL_0__1221_ gnd vdd FILL
X_1237_ _25_ _24_ _353__bF$buf1 _459_ vdd gnd AOI21X1
XFILL_0__985_ gnd vdd FILL
X_988_ _249_ _234_ _235_ _233_ vdd gnd NAND3X1
XFILL_1__1399_ gnd vdd FILL
XFILL_1__772_ gnd vdd FILL
XFILL_0__1450_ gnd vdd FILL
XFILL_0__1030_ gnd vdd FILL
X_1466_ result_r[0] _66__bF$buf5 rst_n_bF$buf5 _562_ vdd gnd OAI21X1
X_1046_ b_r[5] \u_serv_alu.i_en_bF$buf0\ _325__bF$buf3 b_r[4] _183_ vdd 
+ gnd
+ AOI22X1
XFILL_0__794_ gnd vdd FILL
X_797_ alu_sub \u_serv_alu.i_op_b\ _687_ vdd gnd NAND2X1
XFILL_0__1506_ gnd vdd FILL
XFILL_1__1420_ gnd vdd FILL
XFILL_1__1000_ gnd vdd FILL
X_1275_ a_r[6] \u_serv_alu.i_en_bF$buf2\ _325__bF$buf3 a_r[5] _739_ vdd 
+ gnd
+ AOI22X1
XFILL_0__1315_ gnd vdd FILL
XFILL89850x50550 gnd vdd FILL
X_1084_ _152_ _297__bF$buf3 _333__bF$buf2 _151_ vdd gnd NOR3X1
XFILL_1__866_ gnd vdd FILL
XFILL_0__1124_ gnd vdd FILL
XFILL_0__888_ gnd vdd FILL
XFILL89850x7350 gnd vdd FILL
XFILL_0__1353_ gnd vdd FILL
XFILL_1__1514_ gnd vdd FILL
X_1369_ _634_ _633_ vdd gnd INVX1
XFILL_0__1409_ gnd vdd FILL
XFILL_0__1162_ gnd vdd FILL
X_912_ _304_ _306_ _353__bF$buf3 _504_ vdd gnd AOI21X1
XFILL_1__1323_ gnd vdd FILL
X_1598_ _389_ clk_bF$buf1 b_r[21] vdd gnd DFFPOSX1
X_1178_ a_r[31] _73_ _72_ vdd gnd NAND2X1
XFILL90150x18150 gnd vdd FILL
XFILL_0__1218_ gnd vdd FILL
XFILL_0__1391_ gnd vdd FILL
XFILL_1__769_ gnd vdd FILL
XFILL_0__1447_ gnd vdd FILL
XFILL_0__1027_ gnd vdd FILL
X_950_ _271_ _269_ vdd gnd INVX1
XFILL_1__1361_ gnd vdd FILL
XFILL_1__998_ gnd vdd FILL
XFILL_0__1256_ gnd vdd FILL
XFILL_1__1417_ gnd vdd FILL
XFILL_1__1170_ gnd vdd FILL
XFILL_0__1485_ gnd vdd FILL
XFILL_0__1065_ gnd vdd FILL
XFILL_0__812_ gnd vdd FILL
X_815_ _384_ _383_ vdd gnd INVX1
XFILL_0__1294_ gnd vdd FILL
XFILL_1__1455_ gnd vdd FILL
X_1522_ b_r[22] \u_serv_alu.i_en_bF$buf6\ _325__bF$buf2 b_r[21] _516_ vdd 
+ gnd
+ AOI22X1
X_1102_ _222_ load_cnt_4_bF$buf0 _137_ _136_ vdd gnd AOI21X1
XFILL_0__850_ gnd vdd FILL
X_853_ _366_ _355_ _365_ _383_ rd_sel[2] vdd 
+ gnd
+ OAI22X1
XFILL_1__1264_ gnd vdd FILL
XFILL_0__1159_ gnd vdd FILL
XFILL_0__906_ gnd vdd FILL
X_909_ b_r[16] _307_ _306_ vdd gnd NAND2X1
X_1331_ _661_ _660_ _659_ _438_ vdd gnd AOI21X1
XFILL_1__1073_ gnd vdd FILL
XFILL_0__1388_ gnd vdd FILL
XFILL89250x75750 gnd vdd FILL
X_1560_ _432_ clk_bF$buf8 result_r[25] vdd gnd DFFPOSX1
X_1140_ _751_ _104_ _332_ _103_ vdd gnd OAI21X1
XFILL_1__922_ gnd vdd FILL
X_891_ _351_ _323_ _322_ vdd gnd NAND2X1
XFILL_0__1197_ gnd vdd FILL
X_1616_ _446_ clk_bF$buf8 result_r[30] vdd gnd DFFPOSX1
XFILL_0__944_ gnd vdd FILL
X_947_ _273_ _272_ _353__bF$buf1 _501_ vdd gnd AOI21X1
XFILL_1__1358_ gnd vdd FILL
X_1425_ _349_ _331_ _593_ _226_ _592_ vdd 
+ gnd
+ AOI22X1
X_1005_ b_r[11] \u_serv_alu.i_en_bF$buf6\ _325__bF$buf5 b_r[10] _218_ vdd 
+ gnd
+ AOI22X1
XFILL_0__753_ gnd vdd FILL
X_756_ _748_[5] rsp_flags[5] vdd gnd BUFX2
XFILL_1__1167_ gnd vdd FILL
XFILL_1__960_ gnd vdd FILL
XFILL_0__809_ gnd vdd FILL
X_1654_ _465_ clk_bF$buf6 a_r[18] vdd gnd DFFPOSX1
X_1234_ _295__bF$buf2 _147_ _27_ _26_ vdd gnd OAI21X1
XFILL_0__982_ gnd vdd FILL
X_985_ _241_ \u_serv_alu.i_en_bF$buf7\ _237_ _246_ _236_ vdd 
+ gnd
+ AOI22X1
XFILL89850x150 gnd vdd FILL
X_1463_ _569_ _568_ _566_ _565_ vdd gnd NAND3X1
X_1043_ cmd_b _187_ _186_ vdd gnd NAND2X1
XFILL_0__791_ gnd vdd FILL
X_794_ rd_sel[0] _689_ _684_ _690_ vdd gnd NAND3X1
XFILL_0__1503_ gnd vdd FILL
X_1519_ _295__bF$buf2 _194_ _520_ _519_ vdd gnd AOI21X1
XFILL_0__847_ gnd vdd FILL
X_1272_ _333__bF$buf2 _194_ _743_ _742_ vdd gnd AOI21X1
XFILL_0__1312_ gnd vdd FILL
X_1328_ exec_cnt[2] _100_ _661_ vdd gnd NAND2X1
X_1081_ a_r[29] _154_ vdd gnd INVX1
XFILL_1__863_ gnd vdd FILL
XFILL_0__1121_ gnd vdd FILL
X_1557_ _477_ clk_bF$buf3 load_cnt[4] vdd gnd DFFPOSX1
X_1137_ _108_ _107_ _106_ vdd gnd NOR2X1
XFILL_0__885_ gnd vdd FILL
XFILL_1__919_ gnd vdd FILL
X_888_ \u_serv_alu.i_en_bF$buf7\ _326_ _325_ vdd gnd NOR2X1
XFILL_0__1350_ gnd vdd FILL
XFILL_1__1511_ gnd vdd FILL
X_1366_ _637_ _66__bF$buf1 _636_ _426_ vdd gnd AOI21X1
XFILL_0__1406_ gnd vdd FILL
XFILL_1__1320_ gnd vdd FILL
X_1595_ _496_ clk_bF$buf1 b_r[10] vdd gnd DFFPOSX1
X_1175_ a_r[20] \u_serv_alu.i_en_bF$buf0\ _325__bF$buf3 a_r[19] _74_ vdd 
+ gnd
+ AOI22X1
XFILL_1__957_ gnd vdd FILL
XFILL_0__1215_ gnd vdd FILL
XFILL_0__979_ gnd vdd FILL
XFILL_0__1444_ gnd vdd FILL
XFILL_0__1024_ gnd vdd FILL
XFILL_0__788_ gnd vdd FILL
XFILL_0__1253_ gnd vdd FILL
XFILL_1__1414_ gnd vdd FILL
X_1269_ a_r[7] \u_serv_alu.i_en_bF$buf6\ _325__bF$buf2 a_r[6] _744_ vdd 
+ gnd
+ AOI22X1
XFILL_0__1309_ gnd vdd FILL
XFILL_0__1482_ gnd vdd FILL
XFILL_0__1062_ gnd vdd FILL
X_812_ _386_ _746_ vdd gnd INVX1
XFILL_1__1223_ gnd vdd FILL
X_1498_ _216_ load_cnt_4_bF$buf0 _537_ _536_ vdd gnd AOI21X1
X_1078_ _159_ _157_ _318__bF$buf0 _156_ vdd gnd OAI21X1
XFILL_0__1118_ gnd vdd FILL
XFILL_0__1291_ gnd vdd FILL
XFILL_1__1452_ gnd vdd FILL
XFILL_0__1347_ gnd vdd FILL
XFILL_1__1508_ gnd vdd FILL
X_850_ cmp_r _356__bF$buf3 _748_[2] vdd gnd NOR2X1
XFILL_1__1261_ gnd vdd FILL
XFILL_0__1156_ gnd vdd FILL
XFILL_0__903_ gnd vdd FILL
X_906_ _310_ _309_ _353__bF$buf3 _505_ vdd gnd AOI21X1
XFILL_1__1317_ gnd vdd FILL
XFILL_1__1070_ gnd vdd FILL
XFILL_0__1385_ gnd vdd FILL
XFILL_1__1126_ gnd vdd FILL
XFILL_0__1194_ gnd vdd FILL
X_1613_ _445_ clk_bF$buf5 result_r[29] vdd gnd DFFPOSX1
XFILL_0__941_ gnd vdd FILL
X_944_ _275_ _297__bF$buf3 _295__bF$buf2 _274_ vdd gnd NOR3X1
XFILL_1__1355_ gnd vdd FILL
XCLKBUF1_insert34 clk clk_bF$buf10 vdd gnd CLKBUF1
XCLKBUF1_insert35 clk clk_bF$buf9 vdd gnd CLKBUF1
XCLKBUF1_insert36 clk clk_bF$buf8 vdd gnd CLKBUF1
XCLKBUF1_insert37 clk clk_bF$buf7 vdd gnd CLKBUF1
XCLKBUF1_insert38 clk clk_bF$buf6 vdd gnd CLKBUF1
XCLKBUF1_insert39 clk clk_bF$buf5 vdd gnd CLKBUF1
X_1422_ load_cnt[1] _113_ rst_n_bF$buf0 _594_ vdd gnd OAI21X1
X_1002_ _222_ _342__bF$buf2 _223_ _221_ vdd gnd AOI21X1
X_753_ _751_ cmd_ready vdd gnd BUFX2
XFILL_1__1164_ gnd vdd FILL
XFILL_0__1479_ gnd vdd FILL
XFILL_0__1059_ gnd vdd FILL
XFILL_0__806_ gnd vdd FILL
X_809_ _749_[1] _751_ vdd gnd INVX1
X_1651_ _405_ clk_bF$buf5 result_r[6] vdd gnd DFFPOSX1
X_1231_ a_r[14] \u_serv_alu.i_en_bF$buf6\ _325__bF$buf2 a_r[13] _28_ vdd 
+ gnd
+ AOI22X1
X_982_ rsp_ready _239_ vdd gnd INVX1
XFILL_0__1288_ gnd vdd FILL
XFILL_1__1449_ gnd vdd FILL
XFILL_1__1029_ gnd vdd FILL
X_1460_ _60_ _59_ _61_ _568_ vdd gnd OAI21X1
X_1040_ load_cnt[2] _336_ _352_ _189_ vdd gnd NAND3X1
XFILL_1__822_ gnd vdd FILL
X_791_ \u_serv_alu.i_rs1\ \u_serv_alu.i_op_b\ _693_ vdd gnd NAND2X1
XFILL_0__1500_ gnd vdd FILL
XFILL_0__1097_ gnd vdd FILL
X_1516_ b_r[23] \u_serv_alu.i_en_bF$buf3\ _325__bF$buf1 b_r[22] _521_ vdd 
+ gnd
+ AOI22X1
XFILL_0__844_ gnd vdd FILL
X_847_ _381_ _359_ _358_ _357_ vdd gnd OAI21X1
XFILL_1__1258_ gnd vdd FILL
XFILL89250x28950 gnd vdd FILL
X_1325_ _665_ _245_ _664_ _663_ vdd gnd OAI21X1
XFILL_1__1067_ gnd vdd FILL
XFILL_1__860_ gnd vdd FILL
XFILL88950x43350 gnd vdd FILL
X_1554_ _408_ clk_bF$buf2 result_r[9] vdd gnd DFFPOSX1
X_1134_ _246_ _109_ vdd gnd INVX1
XFILL_0__882_ gnd vdd FILL
XFILL_1__916_ gnd vdd FILL
X_885_ _339_ _329_ _328_ vdd gnd NAND2X1
XFILL_0__938_ gnd vdd FILL
X_1363_ _639_ _66__bF$buf4 _638_ _427_ vdd gnd AOI21X1
XFILL_0__1403_ gnd vdd FILL
X_1419_ _331_ _597_ _113_ _596_ vdd gnd NAND3X1
X_1592_ _440_ clk_bF$buf10 exec_cnt[4] vdd gnd DFFPOSX1
X_1172_ _181_ load_cnt_4_bF$buf1 _78_ _77_ vdd gnd AOI21X1
XFILL_1__954_ gnd vdd FILL
XFILL_0__1212_ gnd vdd FILL
X_1648_ _462_ clk_bF$buf1 a_r[15] vdd gnd DFFPOSX1
X_1228_ _278_ _342__bF$buf4 _32_ _31_ vdd gnd AOI21X1
XFILL_0__976_ gnd vdd FILL
X_979_ _252_ _242_ vdd gnd INVX1
XFILL_0__1441_ gnd vdd FILL
XFILL_0__1021_ gnd vdd FILL
X_1457_ _572_ _66__bF$buf5 _571_ _400_ vdd gnd AOI21X1
X_1037_ _193_ _192_ _318__bF$buf2 _191_ vdd gnd OAI21X1
XFILL_0__785_ gnd vdd FILL
XFILL_1__819_ gnd vdd FILL
X_788_ _693_ _695_ _696_ vdd gnd NAND2X1
XFILL_0__1250_ gnd vdd FILL
XFILL_1__1411_ gnd vdd FILL
X_1266_ _333__bF$buf4 _200_ _1_ _0_ vdd gnd AOI21X1
XFILL_0__1306_ gnd vdd FILL
XFILL_1__1220_ gnd vdd FILL
X_1495_ b_r[27] \u_serv_alu.i_en_bF$buf4\ _325__bF$buf5 b_r[26] _538_ vdd 
+ gnd
+ AOI22X1
X_1075_ _287_ load_cnt_4_bF$buf0 _160_ _159_ vdd gnd AOI21X1
XFILL_1__857_ gnd vdd FILL
XFILL_0__1115_ gnd vdd FILL
XFILL_0__879_ gnd vdd FILL
XFILL_0__1344_ gnd vdd FILL
XFILL_1__1505_ gnd vdd FILL
XFILL_0__1153_ gnd vdd FILL
XFILL90150x25350 gnd vdd FILL
XFILL_0__900_ gnd vdd FILL
X_903_ _312_ _344__bF$buf1 _333__bF$buf3 _311_ vdd gnd NOR3X1
XFILL_1__1314_ gnd vdd FILL
X_1589_ _493_ clk_bF$buf6 b_r[7] vdd gnd DFFPOSX1
X_1169_ a_r[21] \u_serv_alu.i_en_bF$buf2\ _325__bF$buf3 a_r[20] _79_ vdd 
+ gnd
+ AOI22X1
XFILL_0__1209_ gnd vdd FILL
XFILL_0__1382_ gnd vdd FILL
XFILL89850x79350 gnd vdd FILL
XFILL_1__1123_ gnd vdd FILL
X_1398_ _613_ _66__bF$buf1 _612_ _418_ vdd gnd AOI21X1
XFILL_0__1438_ gnd vdd FILL
XFILL_0__1018_ gnd vdd FILL
XFILL_0__1191_ gnd vdd FILL
X_1610_ _724_ clk_bF$buf9 \u_serv_alu.add_cy_r\ vdd gnd DFFPOSX1
X_941_ _278_ _342__bF$buf0 _280_ _277_ vdd gnd AOI21X1
XFILL_1__1352_ gnd vdd FILL
XFILL_0__1247_ gnd vdd FILL
XFILL_1__1408_ gnd vdd FILL
XFILL_1__1161_ gnd vdd FILL
XFILL_0__1476_ gnd vdd FILL
XFILL_0__1056_ gnd vdd FILL
XFILL_0__803_ gnd vdd FILL
X_806_ _677_ _678_ vdd gnd INVX1
XFILL_1__1217_ gnd vdd FILL
XFILL_0_BUFX2_insert0 gnd vdd FILL
XFILL_0_BUFX2_insert1 gnd vdd FILL
XFILL_0_BUFX2_insert2 gnd vdd FILL
XFILL_0_BUFX2_insert3 gnd vdd FILL
XFILL_0_BUFX2_insert4 gnd vdd FILL
XFILL_0_BUFX2_insert5 gnd vdd FILL
XFILL_0_BUFX2_insert6 gnd vdd FILL
XFILL_0_BUFX2_insert7 gnd vdd FILL
XFILL_0_BUFX2_insert8 gnd vdd FILL
XFILL_0_BUFX2_insert9 gnd vdd FILL
XFILL_0__1285_ gnd vdd FILL
XFILL_1__1026_ gnd vdd FILL
XFILL_0__1094_ gnd vdd FILL
X_1513_ _295__bF$buf4 _200_ _525_ _524_ vdd gnd AOI21X1
XFILL_0__841_ gnd vdd FILL
X_844_ _365_ _364_ _361_ _360_ vdd gnd OAI21X1
XFILL_1__1255_ gnd vdd FILL
X_1322_ exec_cnt[3] _100_ _666_ vdd gnd NAND2X1
XFILL_0_BUFX2_insert80 gnd vdd FILL
XFILL_0_BUFX2_insert81 gnd vdd FILL
XFILL_0_BUFX2_insert82 gnd vdd FILL
XFILL_0_BUFX2_insert83 gnd vdd FILL
XFILL_0_BUFX2_insert84 gnd vdd FILL
XFILL_0_BUFX2_insert85 gnd vdd FILL
XFILL_0_BUFX2_insert86 gnd vdd FILL
XFILL_0_BUFX2_insert87 gnd vdd FILL
XFILL_0_BUFX2_insert88 gnd vdd FILL
XFILL_0_BUFX2_insert89 gnd vdd FILL
XFILL_1__1064_ gnd vdd FILL
XFILL89250x82950 gnd vdd FILL
XFILL89250x7350 gnd vdd FILL
XFILL_0__1379_ gnd vdd FILL
X_1551_ _474_ clk_bF$buf10 op_r[3] vdd gnd DFFPOSX1
X_1131_ _749_[1] _749_[0] rst_n_bF$buf0 _111_ vdd gnd OAI21X1
XFILL_1__913_ gnd vdd FILL
X_882_ _749_[1] _332_ _331_ vdd gnd NOR2X1
XFILL_0__1188_ gnd vdd FILL
X_1607_ _502_ clk_bF$buf0 b_r[14] vdd gnd DFFPOSX1
XFILL_0__935_ gnd vdd FILL
X_938_ b_r[13] _280_ vdd gnd INVX1
X_1360_ _641_ _66__bF$buf4 _640_ _428_ vdd gnd AOI21X1
XFILL_0__1400_ gnd vdd FILL
X_1416_ load_cnt[2] _746_ _114_ _599_ vdd gnd NAND3X1
XFILL_1__1158_ gnd vdd FILL
XFILL_1__951_ gnd vdd FILL
XBUFX2_insert90 _66_ _66__bF$buf1 vdd gnd BUFX2
XBUFX2_insert91 _66_ _66__bF$buf0 vdd gnd BUFX2
X_1645_ _423_ clk_bF$buf9 send_cnt[1] vdd gnd DFFPOSX1
X_1225_ a_r[15] \u_serv_alu.i_en_bF$buf3\ _325__bF$buf2 a_r[14] _33_ vdd 
+ gnd
+ AOI22X1
XFILL_0__973_ gnd vdd FILL
X_976_ exec_cnt[0] exec_cnt[1] _245_ vdd gnd NAND2X1
XFILL_1__760_ gnd vdd FILL
X_1454_ _574_ _66__bF$buf6 _573_ _401_ vdd gnd AOI21X1
X_1034_ load_cnt[3] _279_ _194_ vdd gnd NOR2X1
XFILL_0__782_ gnd vdd FILL
XFILL_1__816_ gnd vdd FILL
X_785_ _690_ _691_ _698_ \u_serv_alu.o_rd\ vdd gnd NAND3X1
XFILL_0__838_ gnd vdd FILL
X_1263_ a_r[8] \u_serv_alu.i_en_bF$buf1\ _325__bF$buf1 a_r[7] _2_ vdd 
+ gnd
+ AOI22X1
XFILL_0__1303_ gnd vdd FILL
X_1319_ _254_ _165_ _98_ _668_ vdd gnd OAI21X1
X_1492_ _222_ load_cnt_4_bF$buf1 _542_ _541_ vdd gnd AOI21X1
X_1072_ b_r[1] \u_serv_alu.i_en_bF$buf7\ _162_ \u_serv_alu.i_op_b\ _161_ vdd 
+ gnd
+ AOI22X1
XFILL_1__854_ gnd vdd FILL
XFILL_0__1532_ gnd vdd FILL
XFILL_0__1112_ gnd vdd FILL
X_1548_ _429_ clk_bF$buf10 result_r[22] vdd gnd DFFPOSX1
X_1128_ _326_ _248_ _114_ vdd gnd NAND2X1
XFILL_0__876_ gnd vdd FILL
X_879_ _337_ _335_ _342__bF$buf1 _334_ vdd gnd OAI21X1
XFILL_0__1341_ gnd vdd FILL
XFILL89550x57750 gnd vdd FILL
XFILL_1__1502_ gnd vdd FILL
X_1357_ _643_ _66__bF$buf4 _642_ _429_ vdd gnd AOI21X1
XFILL_0__1150_ gnd vdd FILL
X_900_ _315_ load_cnt_4_bF$buf3 _317_ _314_ vdd gnd AOI21X1
XFILL_1__1311_ gnd vdd FILL
X_1586_ _412_ clk_bF$buf7 load_cnt[2] vdd gnd DFFPOSX1
X_1166_ cmd_a _187_ _82_ vdd gnd NAND2X1
XFILL_1__948_ gnd vdd FILL
XFILL90150x46950 gnd vdd FILL
XFILL_0__1206_ gnd vdd FILL
XFILL_1__1120_ gnd vdd FILL
X_1395_ _615_ _66__bF$buf0 _614_ _419_ vdd gnd AOI21X1
XFILL_1__757_ gnd vdd FILL
XFILL_0__1435_ gnd vdd FILL
XFILL_0__1015_ gnd vdd FILL
XFILL89850x10950 gnd vdd FILL
XFILL_0__779_ gnd vdd FILL
XFILL_0__1244_ gnd vdd FILL
XFILL_1__1405_ gnd vdd FILL
XFILL_0__1473_ gnd vdd FILL
XFILL_0__1053_ gnd vdd FILL
XFILL_0__800_ gnd vdd FILL
X_803_ alu_sub _681_ vdd gnd INVX1
XFILL_1__1214_ gnd vdd FILL
X_1489_ b_r[28] \u_serv_alu.i_en_bF$buf6\ _325__bF$buf3 b_r[27] _543_ vdd 
+ gnd
+ AOI22X1
X_1069_ _341_ _331_ _325__bF$buf6 _164_ vdd gnd AOI21X1
XFILL_0__1529_ gnd vdd FILL
XFILL_0__1109_ gnd vdd FILL
XFILL_0__1282_ gnd vdd FILL
XFILL_1__1023_ gnd vdd FILL
X_1298_ a_r[2] \u_serv_alu.i_en_bF$buf4\ _325__bF$buf6 a_r[1] _719_ vdd 
+ gnd
+ AOI22X1
XFILL_0__1338_ gnd vdd FILL
XFILL_0__1091_ gnd vdd FILL
X_1510_ b_r[24] \u_serv_alu.i_en_bF$buf3\ _325__bF$buf1 b_r[23] _526_ vdd 
+ gnd
+ AOI22X1
X_841_ op_r[3] _363_ vdd gnd INVX1
XFILL_1__1252_ gnd vdd FILL
XFILL_0__1147_ gnd vdd FILL
XFILL_1__1308_ gnd vdd FILL
XFILL_0_BUFX2_insert50 gnd vdd FILL
XFILL_0_BUFX2_insert51 gnd vdd FILL
XFILL_0_BUFX2_insert52 gnd vdd FILL
XFILL_0_BUFX2_insert53 gnd vdd FILL
XFILL_0_BUFX2_insert54 gnd vdd FILL
XFILL_0_BUFX2_insert55 gnd vdd FILL
XFILL_0_BUFX2_insert56 gnd vdd FILL
XFILL_0_BUFX2_insert57 gnd vdd FILL
XFILL_0_BUFX2_insert58 gnd vdd FILL
XFILL_0_BUFX2_insert59 gnd vdd FILL
XFILL_1__1481_ gnd vdd FILL
XFILL_1__1061_ gnd vdd FILL
XFILL_0__1376_ gnd vdd FILL
XFILL_1__1117_ gnd vdd FILL
XFILL_1__910_ gnd vdd FILL
XFILL_0__1185_ gnd vdd FILL
X_1604_ _443_ clk_bF$buf10 op_r[2] vdd gnd DFFPOSX1
XFILL_0__932_ gnd vdd FILL
X_935_ _286_ _283_ _318__bF$buf0 _282_ vdd gnd OAI21X1
X_1413_ _301_ _602_ _601_ vdd gnd NOR2X1
XFILL_1__1155_ gnd vdd FILL
XBUFX2_insert60 _716_ _716__bF$buf1 vdd gnd BUFX2
XBUFX2_insert61 _716_ _716__bF$buf0 vdd gnd BUFX2
XBUFX2_insert62 _325_ _325__bF$buf6 vdd gnd BUFX2
XBUFX2_insert63 _325_ _325__bF$buf5 vdd gnd BUFX2
XBUFX2_insert64 _325_ _325__bF$buf4 vdd gnd BUFX2
XBUFX2_insert65 _325_ _325__bF$buf3 vdd gnd BUFX2
XBUFX2_insert66 _325_ _325__bF$buf2 vdd gnd BUFX2
XBUFX2_insert67 _325_ _325__bF$buf1 vdd gnd BUFX2
XBUFX2_insert68 _325_ _325__bF$buf0 vdd gnd BUFX2
XBUFX2_insert69 _295_ _295__bF$buf4 vdd gnd BUFX2
X_1642_ _459_ clk_bF$buf4 a_r[12] vdd gnd DFFPOSX1
X_1222_ _287_ _342__bF$buf0 _37_ _36_ vdd gnd AOI21X1
XFILL_0__970_ gnd vdd FILL
X_973_ _301_ load_cnt_4_bF$buf1 cmd_last _248_ vdd gnd AOI21X1
XFILL_1__1384_ gnd vdd FILL
XFILL_0__1279_ gnd vdd FILL
X_1451_ _576_ _66__bF$buf5 _575_ _402_ vdd gnd AOI21X1
X_1031_ b_r[7] \u_serv_alu.i_en_bF$buf1\ _325__bF$buf5 b_r[6] _196_ vdd 
+ gnd
+ AOI22X1
XFILL_1__813_ gnd vdd FILL
X_782_ cmp_sig _693_ _695_ _701_ vdd gnd NAND3X1
XFILL_0__1088_ gnd vdd FILL
X_1507_ b_r[23] _529_ vdd gnd INVX1
XFILL_0__835_ gnd vdd FILL
X_838_ op_r[1] _366_ vdd gnd INVX1
X_1260_ _333__bF$buf0 _206_ _6_ _5_ vdd gnd AOI21X1
XFILL_0__1300_ gnd vdd FILL
X_1316_ _366_ _95_ _670_ _442_ vdd gnd AOI21X1
XFILL_1__1478_ gnd vdd FILL
XFILL_1__1058_ gnd vdd FILL
XFILL_1__851_ gnd vdd FILL
X_1545_ _471_ clk_bF$buf8 a_r[20] vdd gnd DFFPOSX1
X_1125_ _119_ _117_ _318__bF$buf2 _116_ vdd gnd OAI21X1
XFILL_0__873_ gnd vdd FILL
XFILL_1__907_ gnd vdd FILL
X_876_ _349_ _348_ _337_ vdd gnd NAND2X1
XFILL_0__929_ gnd vdd FILL
X_1354_ _645_ _66__bF$buf7 _644_ _430_ vdd gnd AOI21X1
X_1583_ _490_ clk_bF$buf3 b_r[4] vdd gnd DFFPOSX1
X_1163_ a_r[22] \u_serv_alu.i_en_bF$buf2\ _325__bF$buf0 a_r[21] _84_ vdd 
+ gnd
+ AOI22X1
XFILL_0__1203_ gnd vdd FILL
X_1639_ _390_ clk_bF$buf0 b_r[22] vdd gnd DFFPOSX1
X_1219_ a_r[16] \u_serv_alu.i_en_bF$buf3\ _325__bF$buf1 a_r[15] _38_ vdd 
+ gnd
+ AOI22X1
XFILL_0__967_ gnd vdd FILL
X_1392_ _617_ _66__bF$buf0 _616_ _420_ vdd gnd AOI21X1
XFILL_1__754_ gnd vdd FILL
XFILL_0__1432_ gnd vdd FILL
XFILL_0__1012_ gnd vdd FILL
X_1448_ _578_ _66__bF$buf6 _577_ _403_ vdd gnd AOI21X1
X_1028_ _333__bF$buf0 _200_ _201_ _199_ vdd gnd AOI21X1
XFILL_0__776_ gnd vdd FILL
X_779_ _677_ _688_ _676_ _704_ vdd gnd OAI21X1
XFILL_1__983_ gnd vdd FILL

.ends
.end
