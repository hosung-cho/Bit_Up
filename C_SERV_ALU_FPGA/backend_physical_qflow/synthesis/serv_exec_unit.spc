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
+ cmd_op[1] cmd_op[2] cmd_op[3] cmd_a[0] cmd_a[1] cmd_a[2] cmd_a[3] cmd_b[0]
+ cmd_b[1] cmd_b[2] cmd_b[3] cmd_last rsp_valid rsp_ready rsp_result[0] rsp_result[1]
+ rsp_result[2] rsp_result[3] rsp_flags[0] rsp_flags[1] rsp_flags[2] rsp_flags[3] rsp_flags[4] rsp_flags[5]
+ rsp_last busy debug_state[0] debug_state[1] debug_state[2] 

X_1257_ _316_ clk_bF$buf7 exec_cnt[4] vdd gnd DFFPOSX1
XFILL_0__585_ gnd vdd FILL
X_588_ _577_[5] rsp_flags[5] vdd gnd BUFX2
XFILL_0__1050_ gnd vdd FILL
X_800_ exec_cnt[3] _159_ _93_ vdd gnd NAND2X1
X_1066_ _360_ _359_ _578_[1] _365_ vdd gnd OAI21X1
XFILL_0__1106_ gnd vdd FILL
XFILL77850x3750 gnd vdd FILL
X_1295_ _224_ clk_bF$buf6 b_r[20] vdd gnd DFFPOSX1
XFILL_1__657_ gnd vdd FILL
XFILL_0__679_ gnd vdd FILL
XFILL_1__886_ gnd vdd FILL
XFILL_0__1144_ gnd vdd FILL
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
XFILL_1__695_ gnd vdd FILL
XFILL79050x64950 gnd vdd FILL
XFILL_0__700_ gnd vdd FILL
X_703_ _578_[1] _175_ _187__bF$buf0 _174_ vdd gnd OAI21X1
XFILL_1__1114_ gnd vdd FILL
XFILL_0__1009_ gnd vdd FILL
XFILL78750x46950 gnd vdd FILL
XFILL_0__1182_ gnd vdd FILL
X_932_ _142_ _85_ _569_ vdd gnd NAND2X1
X_1198_ _234_ clk_bF$buf8 a_r[21] vdd gnd DFFPOSX1
X_741_ _141_ _174_ _140_ vdd gnd AND2X2
XFILL_1__1152_ gnd vdd FILL
XBUFX2_insert30 \u_serv_alu.i_en\ \u_serv_alu.i_en_bF$buf5\ vdd gnd BUFX2
XBUFX2_insert31 \u_serv_alu.i_en\ \u_serv_alu.i_en_bF$buf4\ vdd gnd BUFX2
XBUFX2_insert32 \u_serv_alu.i_en\ \u_serv_alu.i_en_bF$buf3\ vdd gnd BUFX2
XBUFX2_insert33 \u_serv_alu.i_en\ \u_serv_alu.i_en_bF$buf2\ vdd gnd BUFX2
XBUFX2_insert34 \u_serv_alu.i_en\ \u_serv_alu.i_en_bF$buf1\ vdd gnd BUFX2
XBUFX2_insert35 \u_serv_alu.i_en\ \u_serv_alu.i_en_bF$buf0\ vdd gnd BUFX2
XBUFX2_insert36 _187_ _187__bF$buf4 vdd gnd BUFX2
XBUFX2_insert37 _187_ _187__bF$buf3 vdd gnd BUFX2
XBUFX2_insert38 _187_ _187__bF$buf2 vdd gnd BUFX2
XBUFX2_insert39 _187_ _187__bF$buf1 vdd gnd BUFX2
XFILL_1__789_ gnd vdd FILL
XFILL_0__1047_ gnd vdd FILL
X_970_ _502_ _72__bF$buf4 _501_ _276_ vdd gnd AOI21X1
XFILL_0__603_ gnd vdd FILL
X_606_ _528_ _537_ _534_ _532_ _538_ vdd 
+ gnd
+ AOI22X1
XFILL_1__810_ gnd vdd FILL
XFILL_1__1190_ gnd vdd FILL
XFILL_0__1085_ gnd vdd FILL
XFILL_0__832_ gnd vdd FILL
X_835_ _66_ _70_ _182__bF$buf2 _309_ vdd gnd AOI21X1
XFILL_0__641_ gnd vdd FILL
X_644_ op_r[2] _217_ _216_ vdd gnd NAND2X1
XFILL_1__1055_ gnd vdd FILL
X_1122_ _406_ _407_ _182__bF$buf4 _240_ vdd gnd AOI21X1
XFILL_0__870_ gnd vdd FILL
X_873_ _39_ _72__bF$buf5 _38_ _299_ vdd gnd AOI21X1
XFILL_0__1179_ gnd vdd FILL
XFILL_0__926_ gnd vdd FILL
X_929_ _573_ _72__bF$buf1 _572_ _285_ vdd gnd AOI21X1
XFILL_1__713_ gnd vdd FILL
X_682_ _192_ _194_ _197_ alu_sub vdd gnd OAI21X1
XFILL_0__735_ gnd vdd FILL
X_738_ _149_ _143_ _182__bF$buf1 _329_ vdd gnd AOI21X1
XFILL_1__1149_ gnd vdd FILL
X_1160_ b_r[24] _351_ rst_n_bF$buf4 _435_ vdd gnd OAI21X1
XFILL_1__942_ gnd vdd FILL
XFILL77850x36150 gnd vdd FILL
X_1216_ _256_ clk_bF$buf8 a_r[25] vdd gnd DFFPOSX1
XFILL_0__964_ gnd vdd FILL
X_967_ _154__bF$buf1 result_r[3] _503_ vdd gnd AND2X2
XFILL_1__751_ gnd vdd FILL
X_1025_ _570_ _459_ _566_ _334_ vdd gnd NAND3X1
XFILL_0__773_ gnd vdd FILL
XFILL_1__807_ gnd vdd FILL
X_776_ b_r[14] \u_serv_alu.i_en_bF$buf5\ _112_ _111_ vdd gnd AOI21X1
XFILL_1__1187_ gnd vdd FILL
XFILL_0__829_ gnd vdd FILL
X_1254_ _241_ clk_bF$buf2 b_r[30] vdd gnd DFFPOSX1
XFILL_0__582_ gnd vdd FILL
X_585_ result_r[2] rsp_result[2] vdd gnd BUFX2
XFILL_0__638_ gnd vdd FILL
X_1063_ _175_ _206_ _363_ vdd gnd NAND2X1
XFILL_0__1103_ gnd vdd FILL
X_1119_ _404_ _187__bF$buf3 _113_ _405_ vdd gnd OAI21X1
XFILL_0__867_ gnd vdd FILL
X_1292_ _275_ clk_bF$buf4 result_r[1] vdd gnd DFFPOSX1
XFILL_1__654_ gnd vdd FILL
XFILL_0__676_ gnd vdd FILL
X_679_ _212_ _192_ vdd gnd INVX1
XFILL_1__883_ gnd vdd FILL
XFILL_0__1141_ gnd vdd FILL
X_1157_ b_r[7] _83_ rst_n_bF$buf6 _433_ vdd gnd OAI21X1
XFILL_1__939_ gnd vdd FILL
X_700_ load_cnt[2] _179_ _178_ _177_ vdd gnd NAND3X1
XFILL_1__1111_ gnd vdd FILL
XFILL78150x36150 gnd vdd FILL
XFILL_1__748_ gnd vdd FILL
XFILL_0__1006_ gnd vdd FILL
X_1195_ _182__bF$buf0 _458_ _218_ vdd gnd NOR2X1
XFILL_0__999_ gnd vdd FILL
XFILL_1__786_ gnd vdd FILL
XFILL_0__1044_ gnd vdd FILL
XFILL_0__600_ gnd vdd FILL
X_603_ alu_sub _539_ _540_ vdd gnd NAND2X1
X_1289_ _274_ clk_bF$buf4 result_r[0] vdd gnd DFFPOSX1
XFILL_1_BUFX2_insert60 gnd vdd FILL
XFILL_1_BUFX2_insert61 gnd vdd FILL
XFILL_0__1082_ gnd vdd FILL
X_832_ _69_ _160_ _68_ vdd gnd NOR2X1
X_1098_ b_r[12] \u_serv_alu.i_en_bF$buf5\ _101_ _388_ vdd gnd AOI21X1
XFILL79050x50550 gnd vdd FILL
XFILL_0__1138_ gnd vdd FILL
X_1310_ _284_ clk_bF$buf2 b_r[31] vdd gnd DFFPOSX1
X_641_ _578_[1] _580_ vdd gnd INVX2
XFILL_1__1052_ gnd vdd FILL
XFILL78750x32550 gnd vdd FILL
XFILL_1__1108_ gnd vdd FILL
X_870_ _154__bF$buf3 result_r[24] _40_ vdd gnd AND2X2
XFILL_0__1176_ gnd vdd FILL
XFILL_0__923_ gnd vdd FILL
X_926_ _154__bF$buf2 result_r[10] _574_ vdd gnd AND2X2
XFILL_1__710_ gnd vdd FILL
XFILL_0__732_ gnd vdd FILL
X_735_ send_cnt[1] _147_ _145_ vdd gnd NAND2X1
X_1213_ _294_ clk_bF$buf3 result_r[18] vdd gnd DFFPOSX1
XFILL_0__961_ gnd vdd FILL
X_964_ result_r[7] _53__bF$buf0 _67__bF$buf2 _544_ _543_ vdd 
+ gnd
+ AOI22X1
X_1022_ _140_ _462_ _461_ _264_ vdd gnd AOI21X1
XFILL_0__770_ gnd vdd FILL
XFILL_1__804_ gnd vdd FILL
X_773_ _131_ _115_ _114_ _323_ vdd gnd AOI21X1
XFILL_1__1184_ gnd vdd FILL
XFILL_0__1079_ gnd vdd FILL
XFILL_0__826_ gnd vdd FILL
X_829_ _72__bF$buf1 _71_ vdd gnd INVX1
X_1251_ _313_ clk_bF$buf5 b_r[5] vdd gnd DFFPOSX1
X_582_ _580_ cmd_ready vdd gnd BUFX2
X_1307_ _233_ clk_bF$buf1 load_cnt[2] vdd gnd DFFPOSX1
XFILL_0__635_ gnd vdd FILL
X_638_ _506_ _507_ vdd gnd INVX1
XFILL_1__1049_ gnd vdd FILL
X_1060_ cmd_valid _575_ _465_ _360_ vdd gnd OAI21X1
XFILL_1__842_ gnd vdd FILL
XFILL_0__1100_ gnd vdd FILL
X_1116_ _567_ _564_ b_r[30] _403_ vdd gnd OAI21X1
XFILL_0__864_ gnd vdd FILL
X_867_ result_r[28] _53__bF$buf2 _67__bF$buf4 _43_ _42_ vdd 
+ gnd
+ AOI22X1
XFILL_1__651_ gnd vdd FILL
XFILL_0__673_ gnd vdd FILL
XFILL_1__707_ gnd vdd FILL
X_676_ _195_ _194_ bool_op[1] vdd gnd NOR2X1
XFILL_1__880_ gnd vdd FILL
XFILL_0__729_ gnd vdd FILL
X_1154_ b_r[25] _351_ rst_n_bF$buf4 _431_ vdd gnd OAI21X1
XFILL_1__936_ gnd vdd FILL
XFILL_0__958_ gnd vdd FILL
XFILL_0__1003_ gnd vdd FILL
X_1019_ _466_ _464_ _463_ _265_ vdd gnd AOI21X1
XFILL_0__767_ gnd vdd FILL
X_1192_ b_r[18] _456_ vdd gnd INVX1
X_1248_ _264_ clk_bF$buf6 a_r[8] vdd gnd DFFPOSX1
XFILL_0__996_ gnd vdd FILL
X_999_ _95_ _96_ exec_cnt[3] _476_ vdd gnd OAI21X1
XFILL_1__783_ gnd vdd FILL
XFILL_0__1041_ gnd vdd FILL
X_1057_ _351_ _356_ _357_ _255_ vdd gnd AOI21X1
XFILL_1__839_ gnd vdd FILL
XFILL78450x7350 gnd vdd FILL
X_600_ _539_ _538_ _541_ _504_ vdd gnd OAI21X1
XFILL_1__1011_ gnd vdd FILL
XFILL78450x10950 gnd vdd FILL
X_1286_ _330_ clk_bF$buf1 a_r[16] vdd gnd DFFPOSX1
XFILL_1__648_ gnd vdd FILL
XFILL_1_BUFX2_insert30 gnd vdd FILL
XFILL_1_BUFX2_insert31 gnd vdd FILL
XFILL_1_BUFX2_insert33 gnd vdd FILL
XFILL_1_BUFX2_insert34 gnd vdd FILL
XFILL_1_BUFX2_insert36 gnd vdd FILL
XFILL_1_BUFX2_insert37 gnd vdd FILL
XFILL_1_BUFX2_insert39 gnd vdd FILL
XFILL_0_CLKBUF1_insert10 gnd vdd FILL
XFILL_0_CLKBUF1_insert11 gnd vdd FILL
XFILL_0_CLKBUF1_insert12 gnd vdd FILL
XFILL_0_CLKBUF1_insert13 gnd vdd FILL
XFILL_0_CLKBUF1_insert14 gnd vdd FILL
XFILL_0_CLKBUF1_insert15 gnd vdd FILL
XFILL_0_CLKBUF1_insert16 gnd vdd FILL
XFILL_0_CLKBUF1_insert17 gnd vdd FILL
XFILL_0_CLKBUF1_insert18 gnd vdd FILL
X_1095_ _185_ _385_ _386_ _246_ vdd gnd AOI21X1
XFILL_1__877_ gnd vdd FILL
XFILL_0__1135_ gnd vdd FILL
XFILL_0__899_ gnd vdd FILL
XFILL_1__1105_ gnd vdd FILL
XFILL_0__1173_ gnd vdd FILL
XFILL_0__920_ gnd vdd FILL
X_923_ result_r[14] _53__bF$buf0 _67__bF$buf2 _1_ _0_ vdd 
+ gnd
+ AOI22X1
X_1189_ _138_ _570_ _566_ _454_ vdd gnd NAND3X1
X_732_ _156_ \u_serv_alu.i_en_bF$buf2\ _153_ _148_ vdd gnd AOI21X1
XFILL_0__1038_ gnd vdd FILL
X_1210_ _226_ clk_bF$buf6 b_r[22] vdd gnd DFFPOSX1
X_961_ result_r[4] _72__bF$buf3 rst_n_bF$buf0 _545_ vdd gnd OAI21X1
XFILL_1__1008_ gnd vdd FILL
XFILL_1__801_ gnd vdd FILL
X_770_ _117_ _116_ vdd gnd INVX1
XFILL_1__1181_ gnd vdd FILL
XFILL_0__1076_ gnd vdd FILL
XFILL_0__823_ gnd vdd FILL
XFILL_1_BUFX2_insert0 gnd vdd FILL
XFILL_1_BUFX2_insert1 gnd vdd FILL
XFILL_1_BUFX2_insert3 gnd vdd FILL
XFILL_1_BUFX2_insert4 gnd vdd FILL
XFILL_1_BUFX2_insert6 gnd vdd FILL
XFILL_1_BUFX2_insert7 gnd vdd FILL
X_826_ b_r[1] _185_ rst_n_bF$buf2 _73_ vdd gnd OAI21X1
XFILL_1__610_ gnd vdd FILL
X_1304_ _281_ clk_bF$buf8 b_r[3] vdd gnd DFFPOSX1
XFILL_0__632_ gnd vdd FILL
X_635_ alu_sub _510_ vdd gnd INVX1
XFILL_1__1046_ gnd vdd FILL
X_1113_ b_r[31] _400_ vdd gnd INVX1
XFILL_0__861_ gnd vdd FILL
X_864_ result_r[25] _72__bF$buf3 rst_n_bF$buf8 _44_ vdd gnd OAI21X1
XFILL_0__917_ gnd vdd FILL
XFILL_0__670_ gnd vdd FILL
XFILL_1__704_ gnd vdd FILL
X_673_ _196_ _579_ vdd gnd INVX1
XFILL_1__1084_ gnd vdd FILL
XFILL77850x43350 gnd vdd FILL
XFILL_0__726_ gnd vdd FILL
X_729_ _580_ _576_ _578_[0] _151_ vdd gnd OAI21X1
X_1151_ b_r[26] _351_ rst_n_bF$buf4 _429_ vdd gnd OAI21X1
XFILL_1__933_ gnd vdd FILL
XFILL79050x3750 gnd vdd FILL
X_1207_ _291_ clk_bF$buf4 result_r[15] vdd gnd DFFPOSX1
XFILL_0__955_ gnd vdd FILL
X_958_ _549_ _72__bF$buf3 _548_ _279_ vdd gnd AOI21X1
XFILL_0__1000_ gnd vdd FILL
X_1016_ _53__bF$buf4 _205_ _153_ _465_ vdd gnd AOI21X1
XFILL_0__764_ gnd vdd FILL
X_767_ load_cnt[0] _121_ rst_n_bF$buf1 _118_ vdd gnd OAI21X1
XFILL_1__1178_ gnd vdd FILL
X_1245_ _310_ clk_bF$buf8 b_r[1] vdd gnd DFFPOSX1
XFILL_0__993_ gnd vdd FILL
XFILL_1__607_ gnd vdd FILL
X_996_ a_r[13] \u_serv_alu.i_en_bF$buf6\ _479_ _478_ vdd gnd AOI21X1
XFILL_1__780_ gnd vdd FILL
XFILL_0__629_ gnd vdd FILL
X_1054_ _351_ _354_ _355_ _256_ vdd gnd AOI21X1
XFILL_1__836_ gnd vdd FILL
XFILL_0__858_ gnd vdd FILL
X_1283_ _220_ clk_bF$buf2 b_r[18] vdd gnd DFFPOSX1
XFILL_1__645_ gnd vdd FILL
XFILL_0__667_ gnd vdd FILL
X_1092_ _83_ _383_ _384_ _247_ vdd gnd AOI21X1
XFILL_0__1132_ gnd vdd FILL
X_1148_ _578_[1] _578_[0] rst_n_bF$buf0 _427_ vdd gnd OAI21X1
XFILL_0__896_ gnd vdd FILL
X_899_ result_r[20] _53__bF$buf3 _67__bF$buf0 _19_ _18_ vdd 
+ gnd
+ AOI22X1
XFILL78150x43350 gnd vdd FILL
XFILL_1__683_ gnd vdd FILL
XFILL_1__1102_ gnd vdd FILL
XFILL_0__1170_ gnd vdd FILL
X_920_ result_r[11] _72__bF$buf6 rst_n_bF$buf5 _2_ vdd gnd OAI21X1
X_1186_ _451_ _187__bF$buf0 _117_ _452_ vdd gnd OAI21X1
XFILL_1__968_ gnd vdd FILL
XFILL_1__777_ gnd vdd FILL
XFILL_0__1035_ gnd vdd FILL
XFILL_0__799_ gnd vdd FILL
XFILL_1__586_ gnd vdd FILL
XFILL_1__1005_ gnd vdd FILL
XFILL_0__1073_ gnd vdd FILL
XFILL_0__820_ gnd vdd FILL
X_823_ b_r[2] _185_ rst_n_bF$buf2 _75_ vdd gnd OAI21X1
X_1089_ _351_ _381_ _382_ _248_ vdd gnd AOI21X1
XFILL_0__1129_ gnd vdd FILL
X_1301_ _248_ clk_bF$buf0 b_r[27] vdd gnd DFFPOSX1
X_632_ _505_ _507_ _512_ _513_ vdd gnd NAND3X1
XFILL_1__1043_ gnd vdd FILL
X_1110_ _397_ _53__bF$buf4 _398_ vdd gnd AND2X2
X_861_ _48_ _72__bF$buf5 _47_ _302_ vdd gnd AOI21X1
XFILL78450x18150 gnd vdd FILL
XFILL_0__1167_ gnd vdd FILL
XFILL_0__914_ gnd vdd FILL
X_917_ _6_ _72__bF$buf2 _5_ _288_ vdd gnd AOI21X1
XFILL_1__701_ gnd vdd FILL
X_670_ _577_[5] _197_ _577_[3] vdd gnd NOR2X1
XFILL_1__1081_ gnd vdd FILL
XFILL_0__723_ gnd vdd FILL
X_726_ _578_[1] _578_[0] _154_ vdd gnd NAND2X1
XFILL_1__1137_ gnd vdd FILL
XFILL_1__930_ gnd vdd FILL
XFILL77850x64950 gnd vdd FILL
X_1204_ _253_ clk_bF$buf2 _578_[1] vdd gnd DFFPOSX1
XFILL_0__952_ gnd vdd FILL
X_955_ _154__bF$buf4 result_r[6] _550_ vdd gnd AND2X2
X_1013_ a_r[9] _140_ rst_n_bF$buf3 _467_ vdd gnd OAI21X1
XFILL_0__761_ gnd vdd FILL
X_764_ _186_ _122_ _575_ _121_ vdd gnd OAI21X1
XFILL_1__1175_ gnd vdd FILL
XFILL_0__817_ gnd vdd FILL
X_1242_ _228_ clk_bF$buf8 a_r[20] vdd gnd DFFPOSX1
XFILL_0__990_ gnd vdd FILL
XFILL_1__604_ gnd vdd FILL
X_993_ a_r[13] _131_ rst_n_bF$buf7 _480_ vdd gnd OAI21X1
XFILL_0__626_ gnd vdd FILL
X_629_ alu_sub \u_serv_alu.i_op_b\ _516_ vdd gnd NAND2X1
X_1051_ _351_ _352_ _353_ _257_ vdd gnd AOI21X1
XFILL_1__833_ gnd vdd FILL
X_1107_ send_cnt[2] _150_ _395_ vdd gnd NAND2X1
XFILL_0__855_ gnd vdd FILL
X_858_ _154__bF$buf0 result_r[27] _49_ vdd gnd AND2X2
X_1280_ _327_ clk_bF$buf9 op_r[3] vdd gnd DFFPOSX1
XFILL_1__642_ gnd vdd FILL
XFILL_0__664_ gnd vdd FILL
X_667_ op_r[3] _200_ _199_ vdd gnd NAND2X1
XFILL_1__1078_ gnd vdd FILL
X_1145_ a_r[21] _373_ rst_n_bF$buf2 _425_ vdd gnd OAI21X1
XFILL_0__893_ gnd vdd FILL
X_896_ result_r[17] _72__bF$buf1 rst_n_bF$buf5 _20_ vdd gnd OAI21X1
XFILL_1__680_ gnd vdd FILL
XFILL_0__949_ gnd vdd FILL
XFILL78150x64950 gnd vdd FILL
XFILL_1__736_ gnd vdd FILL
XFILL_0__758_ gnd vdd FILL
X_1183_ b_r[23] _373_ rst_n_bF$buf4 _450_ vdd gnd OAI21X1
XFILL_1__965_ gnd vdd FILL
X_1239_ _307_ clk_bF$buf4 result_r[30] vdd gnd DFFPOSX1
XFILL_0__987_ gnd vdd FILL
XFILL_1__774_ gnd vdd FILL
XFILL_0__1032_ gnd vdd FILL
X_1048_ _350_ _174_ _351_ vdd gnd AND2X2
XFILL_0__796_ gnd vdd FILL
X_799_ _95_ _96_ _94_ vdd gnd NOR2X1
XFILL_1__583_ gnd vdd FILL
XFILL_1__1002_ gnd vdd FILL
X_1277_ _271_ clk_bF$buf0 exec_cnt[3] vdd gnd DFFPOSX1
XFILL_0__1070_ gnd vdd FILL
X_820_ b_r[4] _83_ rst_n_bF$buf6 _77_ vdd gnd OAI21X1
X_1086_ _182__bF$buf3 _380_ _249_ vdd gnd NOR2X1
XFILL_0__1126_ gnd vdd FILL
XFILL_1__677_ gnd vdd FILL
XFILL_0__699_ gnd vdd FILL
XFILL_0__1164_ gnd vdd FILL
XFILL_0__911_ gnd vdd FILL
X_914_ _154__bF$buf2 result_r[13] _7_ vdd gnd AND2X2
XFILL_0__720_ gnd vdd FILL
X_723_ exec_cnt[5] _158_ _157_ vdd gnd NOR2X1
XFILL_1__1134_ gnd vdd FILL
XFILL_0__1029_ gnd vdd FILL
X_1201_ _288_ clk_bF$buf3 result_r[12] vdd gnd DFFPOSX1
X_952_ result_r[10] _53__bF$buf0 _67__bF$buf2 _554_ _552_ vdd 
+ gnd
+ AOI22X1
XFILL79050x10950 gnd vdd FILL
X_1010_ a_r[10] _140_ rst_n_bF$buf7 _469_ vdd gnd OAI21X1
X_761_ load_cnt[2] _124_ vdd gnd INVX1
XFILL_1__1172_ gnd vdd FILL
XFILL_0__1067_ gnd vdd FILL
XFILL_0__814_ gnd vdd FILL
X_817_ b_r[5] _83_ rst_n_bF$buf6 _79_ vdd gnd OAI21X1
XFILL_1__601_ gnd vdd FILL
X_990_ _486_ _483_ _182__bF$buf1 _274_ vdd gnd AOI21X1
XFILL_0__623_ gnd vdd FILL
X_626_ rd_sel[0] _518_ _513_ _519_ vdd gnd NAND3X1
XFILL_1__830_ gnd vdd FILL
X_1104_ _187__bF$buf4 _490_ _155_ _393_ vdd gnd OAI21X1
XFILL_0__852_ gnd vdd FILL
X_855_ result_r[31] _53__bF$buf4 _67__bF$buf0 _52_ _51_ vdd 
+ gnd
+ AOI22X1
XFILL_0__908_ gnd vdd FILL
XFILL_0__661_ gnd vdd FILL
X_664_ _201_ \u_serv_alu.i_cnt0\ vdd gnd INVX1
XFILL_1__1075_ gnd vdd FILL
XFILL_0__717_ gnd vdd FILL
X_1142_ a_r[22] _373_ rst_n_bF$buf3 _423_ vdd gnd OAI21X1
XFILL_0__890_ gnd vdd FILL
X_893_ _24_ _72__bF$buf0 _23_ _294_ vdd gnd AOI21X1
XFILL_0__946_ gnd vdd FILL
X_949_ b_r[3] _185_ rst_n_bF$buf2 _555_ vdd gnd OAI21X1
XFILL_1__733_ gnd vdd FILL
X_1007_ cmd_op[0] _135_ rst_n_bF$buf4 _471_ vdd gnd OAI21X1
XFILL_0__755_ gnd vdd FILL
X_758_ _127_ _196_ _126_ vdd gnd NOR2X1
X_1180_ a_r[18] _447_ _173_ _448_ vdd gnd MUX2X1
XFILL_1__962_ gnd vdd FILL
X_1236_ _261_ clk_bF$buf6 a_r[6] vdd gnd DFFPOSX1
XFILL_0__984_ gnd vdd FILL
X_987_ result_r[4] _53__bF$buf4 _485_ vdd gnd NAND2X1
XFILL_1__771_ gnd vdd FILL
X_1045_ _567_ _564_ a_r[28] _349_ vdd gnd OAI21X1
XFILL_0__793_ gnd vdd FILL
XFILL_1__827_ gnd vdd FILL
X_796_ _140_ _98_ _97_ _317_ vdd gnd AOI21X1
XFILL_0__849_ gnd vdd FILL
X_1274_ _324_ clk_bF$buf7 load_cnt[0] vdd gnd DFFPOSX1
XFILL_0__658_ gnd vdd FILL
X_1083_ b_r[20] _378_ vdd gnd INVX1
XFILL_1__865_ gnd vdd FILL
XFILL_0__1123_ gnd vdd FILL
X_1139_ _414_ _420_ _421_ vdd gnd NAND2X1
XFILL_0__887_ gnd vdd FILL
XFILL_1__674_ gnd vdd FILL
XFILL_0__696_ gnd vdd FILL
X_699_ load_cnt[0] _178_ vdd gnd INVX1
XFILL_0__1161_ gnd vdd FILL
X_911_ result_r[17] _53__bF$buf3 _67__bF$buf2 _10_ _9_ vdd 
+ gnd
+ AOI22X1
X_1177_ _121_ _568_ _445_ _223_ vdd gnd AOI21X1
XFILL_1__959_ gnd vdd FILL
X_720_ exec_cnt[0] exec_cnt[1] exec_cnt[2] _160_ vdd gnd NAND3X1
XFILL_1__1131_ gnd vdd FILL
XFILL_0__1026_ gnd vdd FILL
XFILL_0__1064_ gnd vdd FILL
XFILL_0__811_ gnd vdd FILL
X_814_ b_r[6] _83_ rst_n_bF$buf6 _81_ vdd gnd OAI21X1
XFILL_0__620_ gnd vdd FILL
X_623_ \u_serv_alu.i_rs1\ \u_serv_alu.i_op_b\ _522_ vdd gnd NAND2X1
X_1101_ _578_[0] _580_ cmp_r _390_ vdd gnd OAI21X1
XFILL78450x25350 gnd vdd FILL
X_852_ _54_ rst_n_bF$buf1 _304_ vdd gnd AND2X2
XFILL_0__1158_ gnd vdd FILL
XFILL_0__905_ gnd vdd FILL
X_908_ result_r[14] _72__bF$buf2 rst_n_bF$buf5 _11_ vdd gnd OAI21X1
X_661_ exec_cnt[2] exec_cnt[5] _203_ vdd gnd NOR2X1
XFILL_1__1072_ gnd vdd FILL
XFILL_0__714_ gnd vdd FILL
X_717_ _164_ _187__bF$buf1 _163_ _162_ vdd gnd OAI21X1
XFILL_1__1128_ gnd vdd FILL
X_890_ _154__bF$buf3 result_r[19] _25_ vdd gnd AND2X2
XFILL_0__943_ gnd vdd FILL
XFILL78750x68550 gnd vdd FILL
X_946_ result_r[7] _72__bF$buf6 rst_n_bF$buf5 _557_ vdd gnd OAI21X1
XFILL_1__730_ gnd vdd FILL
X_1004_ _497_ _135_ _473_ _270_ vdd gnd AOI21X1
XFILL_0__752_ gnd vdd FILL
X_755_ _131_ _130_ _129_ _326_ vdd gnd AOI21X1
XFILL_0__808_ gnd vdd FILL
X_1233_ _304_ clk_bF$buf7 result_r[28] vdd gnd DFFPOSX1
XFILL_0__981_ gnd vdd FILL
X_984_ result_r[1] _488_ vdd gnd INVX1
XFILL_0__617_ gnd vdd FILL
X_1042_ a_r[29] _346_ vdd gnd INVX1
XFILL_0__790_ gnd vdd FILL
XFILL_1__824_ gnd vdd FILL
X_793_ _131_ _100_ _99_ _318_ vdd gnd AOI21X1
XFILL_0__1099_ gnd vdd FILL
XFILL_0__846_ gnd vdd FILL
X_849_ result_r[28] _56_ vdd gnd INVX1
X_1271_ _243_ clk_bF$buf9 cmp_r vdd gnd DFFPOSX1
XFILL79050x18150 gnd vdd FILL
XFILL_0__655_ gnd vdd FILL
X_658_ send_cnt[2] send_cnt[0] send_cnt[1] _205_ vdd gnd NAND3X1
XFILL_1__1069_ gnd vdd FILL
X_1080_ cmd_a[1] a_r[2] _187__bF$buf2 _376_ vdd gnd MUX2X1
XFILL_1__862_ gnd vdd FILL
XFILL_0__1120_ gnd vdd FILL
X_1136_ _351_ _417_ _418_ _237_ vdd gnd AOI21X1
XFILL_0__884_ gnd vdd FILL
X_887_ result_r[23] _53__bF$buf2 _67__bF$buf3 _28_ _27_ vdd 
+ gnd
+ AOI22X1
XFILL_1__671_ gnd vdd FILL
XFILL_0__693_ gnd vdd FILL
XFILL_1__727_ gnd vdd FILL
X_696_ _578_[0] _580_ _181_ vdd gnd NAND2X1
XFILL_0__749_ gnd vdd FILL
X_1174_ b_r[20] _373_ rst_n_bF$buf7 _444_ vdd gnd OAI21X1
XFILL_1__956_ gnd vdd FILL
XFILL_0__978_ gnd vdd FILL
XFILL_0__1023_ gnd vdd FILL
X_1039_ a_r[5] \u_serv_alu.i_en_bF$buf6\ _479_ _344_ vdd gnd AOI21X1
XFILL_0__787_ gnd vdd FILL
X_1268_ _321_ clk_bF$buf5 b_r[12] vdd gnd DFFPOSX1
XFILL_0__596_ gnd vdd FILL
X_599_ _504_ clk_bF$buf9 \u_serv_alu.cmp_r\ vdd gnd DFFPOSX1
XFILL_0__1061_ gnd vdd FILL
X_811_ load_cnt[2] _85_ _180__bF$buf3 _84_ vdd gnd OAI21X1
X_1077_ a_r[24] \u_serv_alu.i_en_bF$buf6\ _138_ _374_ vdd gnd AOI21X1
XFILL_1__859_ gnd vdd FILL
XFILL_0__1117_ gnd vdd FILL
X_620_ _522_ _524_ _525_ vdd gnd NAND2X1
XFILL_1__1031_ gnd vdd FILL
XFILL_1__668_ gnd vdd FILL
XFILL_1__897_ gnd vdd FILL
XFILL_0__1155_ gnd vdd FILL
XFILL78450x46950 gnd vdd FILL
XFILL_0__902_ gnd vdd FILL
X_905_ _15_ _72__bF$buf0 _14_ _291_ vdd gnd AOI21X1
XFILL_0__711_ gnd vdd FILL
X_714_ _182__bF$buf3 _165_ _331_ vdd gnd NOR2X1
XFILL_1__1125_ gnd vdd FILL
XFILL_0__1193_ gnd vdd FILL
XFILL_0__940_ gnd vdd FILL
X_943_ _561_ _72__bF$buf2 _560_ _283_ vdd gnd AOI21X1
X_1001_ exec_cnt[3] _159_ rst_n_bF$buf1 _474_ vdd gnd OAI21X1
X_752_ _132_ _174_ _131_ vdd gnd AND2X2
XFILL_0__1058_ gnd vdd FILL
XFILL_0__805_ gnd vdd FILL
X_808_ a_r[14] _131_ rst_n_bF$buf6 _86_ vdd gnd OAI21X1
X_1230_ _238_ clk_bF$buf9 exec_cnt[2] vdd gnd DFFPOSX1
X_981_ op_r[3] _208_ _491_ vdd gnd NAND2X1
XFILL_0__614_ gnd vdd FILL
X_617_ _519_ _520_ _527_ \u_serv_alu.o_rd\ vdd gnd NAND3X1
XFILL_1__1028_ gnd vdd FILL
X_790_ _102_ _101_ vdd gnd INVX2
XFILL_0__1096_ gnd vdd FILL
XFILL_0__843_ gnd vdd FILL
X_846_ result_r[29] _71_ _58_ vdd gnd NAND2X1
XFILL_1__630_ gnd vdd FILL
XFILL79050x72150 gnd vdd FILL
XFILL_0__652_ gnd vdd FILL
X_655_ _209_ _207_ _213_ _208_ bool_op[0] vdd 
+ gnd
+ AOI22X1
XFILL_1__1066_ gnd vdd FILL
XFILL_0__708_ gnd vdd FILL
X_1133_ _412_ _413_ _416_ _238_ vdd gnd AOI21X1
XFILL_0__881_ gnd vdd FILL
XFILL_1__915_ gnd vdd FILL
X_884_ result_r[20] _72__bF$buf5 rst_n_bF$buf8 _29_ vdd gnd OAI21X1
XFILL77550x36150 gnd vdd FILL
XFILL_1_CLKBUF1_insert9 gnd vdd FILL
XFILL_0__937_ gnd vdd FILL
XFILL_0__690_ gnd vdd FILL
XFILL_1__724_ gnd vdd FILL
X_693_ a_r[3] _185_ rst_n_bF$buf2 _183_ vdd gnd OAI21X1
XFILL_0__746_ gnd vdd FILL
X_749_ _217_ _135_ _134_ _327_ vdd gnd AOI21X1
X_1171_ b_r[21] _373_ rst_n_bF$buf4 _442_ vdd gnd OAI21X1
XFILL_1__953_ gnd vdd FILL
X_1227_ _301_ clk_bF$buf4 result_r[25] vdd gnd DFFPOSX1
XFILL_0__975_ gnd vdd FILL
X_978_ _495_ alu_cmp _156_ _494_ vdd gnd AOI21X1
XFILL_0__1020_ gnd vdd FILL
X_1036_ a_r[6] \u_serv_alu.i_en_bF$buf1\ _482_ _342_ vdd gnd AOI21X1
XFILL_0__784_ gnd vdd FILL
X_787_ b_r[9] _140_ rst_n_bF$buf6 _103_ vdd gnd OAI21X1
XFILL_1__991_ gnd vdd FILL
X_1265_ _320_ clk_bF$buf6 b_r[10] vdd gnd DFFPOSX1
XFILL_0__593_ gnd vdd FILL
XFILL_1__627_ gnd vdd FILL
X_596_ gnd debug_state[2] vdd gnd BUFX2
XFILL_0__649_ gnd vdd FILL
X_1074_ _185_ _370_ _371_ _252_ vdd gnd AOI21X1
XFILL_1__856_ gnd vdd FILL
XFILL_0__1114_ gnd vdd FILL
XFILL_0__878_ gnd vdd FILL
XBUFX2_insert0 rst_n rst_n_bF$buf8 vdd gnd BUFX2
XBUFX2_insert1 rst_n rst_n_bF$buf7 vdd gnd BUFX2
XBUFX2_insert2 rst_n rst_n_bF$buf6 vdd gnd BUFX2
XBUFX2_insert3 rst_n rst_n_bF$buf5 vdd gnd BUFX2
XBUFX2_insert4 rst_n rst_n_bF$buf4 vdd gnd BUFX2
XBUFX2_insert5 rst_n rst_n_bF$buf3 vdd gnd BUFX2
XBUFX2_insert6 rst_n rst_n_bF$buf2 vdd gnd BUFX2
XBUFX2_insert7 rst_n rst_n_bF$buf1 vdd gnd BUFX2
XBUFX2_insert8 rst_n rst_n_bF$buf0 vdd gnd BUFX2
XFILL_1__665_ gnd vdd FILL
XFILL_0__687_ gnd vdd FILL
XFILL_0__1152_ gnd vdd FILL
X_902_ _154__bF$buf4 result_r[16] _16_ vdd gnd AND2X2
X_1168_ b_r[22] _373_ rst_n_bF$buf4 _440_ vdd gnd OAI21X1
X_711_ cmd_a[1] _180__bF$buf1 _167_ vdd gnd NAND2X1
XFILL_1__1122_ gnd vdd FILL
XFILL_1__759_ gnd vdd FILL
XFILL_0__1017_ gnd vdd FILL
XFILL_0__1190_ gnd vdd FILL
X_940_ _154__bF$buf2 result_r[9] _562_ vdd gnd AND2X2
XFILL_1__988_ gnd vdd FILL
XFILL_1__1160_ gnd vdd FILL
XFILL_1__797_ gnd vdd FILL
XFILL_0__1055_ gnd vdd FILL
XFILL_0__802_ gnd vdd FILL
X_805_ cmd_a[2] _180__bF$buf1 _89_ vdd gnd NAND2X1
XFILL_0__611_ gnd vdd FILL
X_614_ cmp_sig _522_ _524_ _530_ vdd gnd NAND3X1
XFILL_1__1025_ gnd vdd FILL
XFILL78450x150 gnd vdd FILL
XFILL78450x32550 gnd vdd FILL
XFILL_0__1093_ gnd vdd FILL
XFILL_0__840_ gnd vdd FILL
X_843_ _61_ _187__bF$buf3 _139_ _60_ vdd gnd OAI21X1
XFILL_0__1149_ gnd vdd FILL
X_652_ _210_ _209_ vdd gnd INVX1
XFILL_0__705_ gnd vdd FILL
X_708_ b_r[16] _170_ _173_ _169_ vdd gnd MUX2X1
XFILL_1__1119_ gnd vdd FILL
X_1130_ exec_cnt[0] exec_cnt[1] _414_ vdd gnd NAND2X1
XFILL_1__912_ gnd vdd FILL
X_881_ _33_ _72__bF$buf4 _32_ _297_ vdd gnd AOI21X1
XFILL78750x75750 gnd vdd FILL
XFILL_0__1187_ gnd vdd FILL
XFILL_0__934_ gnd vdd FILL
X_937_ _570_ _564_ vdd gnd INVX2
XFILL_1__721_ gnd vdd FILL
X_690_ cmd_valid _580_ _186_ vdd gnd NAND2X1
XFILL_0__743_ gnd vdd FILL
X_746_ _140_ _137_ _136_ _328_ vdd gnd AOI21X1
XFILL_1__1157_ gnd vdd FILL
XFILL_1__950_ gnd vdd FILL
X_1224_ _258_ clk_bF$buf2 a_r[28] vdd gnd DFFPOSX1
XFILL_0__972_ gnd vdd FILL
X_975_ op_r[2] _497_ vdd gnd INVX1
XFILL_0__608_ gnd vdd FILL
X_1033_ a_r[7] \u_serv_alu.i_en_bF$buf5\ _88_ _340_ vdd gnd AOI21X1
XFILL_0__781_ gnd vdd FILL
X_784_ b_r[10] _140_ rst_n_bF$buf7 _105_ vdd gnd OAI21X1
XFILL_1__1195_ gnd vdd FILL
XFILL79050x25350 gnd vdd FILL
XFILL_0__837_ gnd vdd FILL
X_1262_ _242_ clk_bF$buf2 send_cnt[2] vdd gnd DFFPOSX1
XFILL_0__590_ gnd vdd FILL
XFILL_1__624_ gnd vdd FILL
X_593_ vdd rsp_flags[0] vdd gnd BUFX2
XFILL_0__646_ gnd vdd FILL
X_649_ _212_ _213_ _211_ vdd gnd NAND2X1
X_1071_ _369_ _365_ _182__bF$buf1 _253_ vdd gnd AOI21X1
XFILL_1__853_ gnd vdd FILL
XFILL_0__1111_ gnd vdd FILL
X_1127_ _410_ _411_ _182__bF$buf4 _239_ vdd gnd AOI21X1
XFILL_0__875_ gnd vdd FILL
XFILL_1__909_ gnd vdd FILL
X_878_ _154__bF$buf1 result_r[22] _34_ vdd gnd AND2X2
XFILL_0__684_ gnd vdd FILL
XFILL_1__718_ gnd vdd FILL
X_687_ _210_ _216_ _189_ cmp_eq vdd gnd OAI21X1
XFILL_1__1098_ gnd vdd FILL
X_1165_ exec_cnt[0] \u_serv_alu.i_en_bF$buf0\ rst_n_bF$buf1 _438_ vdd gnd OAI21X1
XFILL_0__969_ gnd vdd FILL
XFILL_1__756_ gnd vdd FILL
XFILL_0__1014_ gnd vdd FILL
XFILL_0__778_ gnd vdd FILL
XFILL_1__985_ gnd vdd FILL
X_1259_ _317_ clk_bF$buf5 b_r[8] vdd gnd DFFPOSX1
XFILL_0__587_ gnd vdd FILL
XFILL_1__794_ gnd vdd FILL
XFILL_0__1052_ gnd vdd FILL
X_802_ _187__bF$buf4 _93_ _158_ _91_ vdd gnd OAI21X1
X_1068_ _360_ _367_ vdd gnd INVX1
XFILL_0__1108_ gnd vdd FILL
X_611_ _506_ _517_ _505_ _533_ vdd gnd OAI21X1
XFILL_1__1022_ gnd vdd FILL
X_1297_ _247_ clk_bF$buf6 a_r[7] vdd gnd DFFPOSX1
XFILL_0__1090_ gnd vdd FILL
X_840_ result_r[31] \u_serv_alu.i_en_bF$buf2\ _67__bF$buf0 _62_ vdd gnd NAND3X1
XFILL_0__1146_ gnd vdd FILL
XFILL_0_BUFX2_insert40 gnd vdd FILL
XFILL_0_BUFX2_insert41 gnd vdd FILL
XFILL_0_BUFX2_insert42 gnd vdd FILL
XFILL_0_BUFX2_insert43 gnd vdd FILL
XFILL_0_BUFX2_insert44 gnd vdd FILL
XFILL_0_BUFX2_insert45 gnd vdd FILL
XFILL_0_BUFX2_insert46 gnd vdd FILL
XFILL_0_BUFX2_insert47 gnd vdd FILL
XFILL_0_BUFX2_insert48 gnd vdd FILL
XFILL_0_BUFX2_insert49 gnd vdd FILL
XFILL_1__697_ gnd vdd FILL
XFILL_0__702_ gnd vdd FILL
X_705_ b_r[17] _172_ vdd gnd INVX1
XFILL_0__1184_ gnd vdd FILL
XFILL_0__931_ gnd vdd FILL
X_934_ _174_ _568_ _567_ vdd gnd NAND2X1
XFILL_0__740_ gnd vdd FILL
X_743_ _139_ _138_ vdd gnd INVX2
XFILL_1__1154_ gnd vdd FILL
XBUFX2_insert50 _154_ _154__bF$buf0 vdd gnd BUFX2
XBUFX2_insert51 _72_ _72__bF$buf6 vdd gnd BUFX2
XBUFX2_insert52 _72_ _72__bF$buf5 vdd gnd BUFX2
XBUFX2_insert53 _72_ _72__bF$buf4 vdd gnd BUFX2
XBUFX2_insert54 _72_ _72__bF$buf3 vdd gnd BUFX2
XBUFX2_insert55 _72_ _72__bF$buf2 vdd gnd BUFX2
XBUFX2_insert56 _72_ _72__bF$buf1 vdd gnd BUFX2
XBUFX2_insert57 _72_ _72__bF$buf0 vdd gnd BUFX2
XBUFX2_insert58 _180_ _180__bF$buf3 vdd gnd BUFX2
XBUFX2_insert59 _180_ _180__bF$buf2 vdd gnd BUFX2
XFILL_0__1049_ gnd vdd FILL
X_1221_ _298_ clk_bF$buf4 result_r[22] vdd gnd DFFPOSX1
X_972_ result_r[5] _53__bF$buf1 _67__bF$buf1 _500_ _499_ vdd 
+ gnd
+ AOI22X1
XFILL_0__605_ gnd vdd FILL
X_608_ \u_serv_alu.i_cnt0\ \u_serv_alu.cmp_r\ _536_ vdd gnd NOR2X1
XFILL_1__1019_ gnd vdd FILL
X_1030_ _570_ _337_ _566_ _338_ vdd gnd NAND3X1
XFILL_1__812_ gnd vdd FILL
X_781_ b_r[12] _131_ rst_n_bF$buf6 _107_ vdd gnd OAI21X1
XFILL_1__1192_ gnd vdd FILL
XFILL_0__1087_ gnd vdd FILL
XFILL_0__834_ gnd vdd FILL
X_837_ \u_serv_alu.i_op_b\ _185_ rst_n_bF$buf7 _64_ vdd gnd OAI21X1
XFILL_1__621_ gnd vdd FILL
X_590_ _577_[3] rsp_flags[3] vdd gnd BUFX2
XFILL79050x46950 gnd vdd FILL
XFILL_0__643_ gnd vdd FILL
XFILL78750x61350 gnd vdd FILL
X_646_ op_r[1] _215_ _214_ vdd gnd NAND2X1
XFILL78750x28950 gnd vdd FILL
XFILL_1__850_ gnd vdd FILL
XFILL77550x43350 gnd vdd FILL
X_1124_ _408_ _187__bF$buf3 _171_ _409_ vdd gnd OAI21X1
XFILL_0__872_ gnd vdd FILL
XFILL_1__906_ gnd vdd FILL
X_875_ result_r[26] _53__bF$buf2 _67__bF$buf3 _37_ _36_ vdd 
+ gnd
+ AOI22X1
XFILL_0__928_ gnd vdd FILL
XFILL_0__681_ gnd vdd FILL
X_684_ _191_ _190_ vdd gnd INVX1
XFILL_1__1095_ gnd vdd FILL
XFILL_0__737_ gnd vdd FILL
X_1162_ a_r[21] \u_serv_alu.i_en_bF$buf4\ _479_ _436_ vdd gnd AOI21X1
X_1218_ _219_ clk_bF$buf1 a_r[31] vdd gnd DFFPOSX1
XFILL_0__966_ gnd vdd FILL
X_969_ result_r[2] _72__bF$buf4 rst_n_bF$buf8 _501_ vdd gnd OAI21X1
XFILL_1__753_ gnd vdd FILL
XFILL_0__1011_ gnd vdd FILL
X_1027_ _334_ _335_ _182__bF$buf3 _263_ vdd gnd AOI21X1
XFILL_0__775_ gnd vdd FILL
XFILL_1__809_ gnd vdd FILL
X_778_ _131_ _111_ _110_ _322_ vdd gnd AOI21X1
XFILL_1__982_ gnd vdd FILL
X_1256_ _266_ clk_bF$buf0 a_r[9] vdd gnd DFFPOSX1
XFILL_0__584_ gnd vdd FILL
XFILL_1__618_ gnd vdd FILL
X_587_ result_r[0] rsp_result[0] vdd gnd BUFX2
XFILL_1__791_ gnd vdd FILL
X_1065_ _361_ _362_ _364_ _254_ vdd gnd AOI21X1
XFILL_1__847_ gnd vdd FILL
XFILL_0__1105_ gnd vdd FILL
XFILL_0__869_ gnd vdd FILL
X_1294_ _276_ clk_bF$buf4 result_r[2] vdd gnd DFFPOSX1
XFILL_0__678_ gnd vdd FILL
XFILL_1__885_ gnd vdd FILL
XFILL_0__1143_ gnd vdd FILL
X_1159_ b_r[25] \u_serv_alu.i_en_bF$buf3\ _109_ _434_ vdd gnd AOI21X1
XFILL_0_BUFX2_insert19 gnd vdd FILL
XFILL_1__694_ gnd vdd FILL
X_702_ cmd_valid _175_ vdd gnd INVX1
XFILL_0__1008_ gnd vdd FILL
XFILL_0__1181_ gnd vdd FILL
X_931_ _180__bF$buf0 _571_ _570_ vdd gnd NAND2X1
X_1197_ _286_ clk_bF$buf3 result_r[10] vdd gnd DFFPOSX1
XFILL_1__979_ gnd vdd FILL
X_740_ load_cnt[2] _142_ _180__bF$buf3 _141_ vdd gnd OAI21X1
XFILL_1__1151_ gnd vdd FILL
XBUFX2_insert20 _182_ _182__bF$buf3 vdd gnd BUFX2
XBUFX2_insert21 _182_ _182__bF$buf2 vdd gnd BUFX2
XBUFX2_insert22 _182_ _182__bF$buf1 vdd gnd BUFX2
XBUFX2_insert23 _182_ _182__bF$buf0 vdd gnd BUFX2
XBUFX2_insert24 _53_ _53__bF$buf4 vdd gnd BUFX2
XBUFX2_insert25 _53_ _53__bF$buf3 vdd gnd BUFX2
XBUFX2_insert26 _53_ _53__bF$buf2 vdd gnd BUFX2
XBUFX2_insert27 _53_ _53__bF$buf1 vdd gnd BUFX2
XBUFX2_insert28 _53_ _53__bF$buf0 vdd gnd BUFX2
XBUFX2_insert29 \u_serv_alu.i_en\ \u_serv_alu.i_en_bF$buf6\ vdd gnd BUFX2
XFILL_0__1046_ gnd vdd FILL
XFILL_1__597_ gnd vdd FILL
XFILL_0__602_ gnd vdd FILL
X_605_ _538_ alu_cmp vdd gnd INVX1
XFILL_1__1016_ gnd vdd FILL
XFILL_0__1084_ gnd vdd FILL
XFILL_0__831_ gnd vdd FILL
X_834_ \u_serv_alu.o_rd\ \u_serv_alu.i_en_bF$buf0\ _67__bF$buf0 _66_ vdd gnd NAND3X1
XFILL78150x18150 gnd vdd FILL
X_1312_ _285_ clk_bF$buf3 result_r[9] vdd gnd DFFPOSX1
XFILL_0__640_ gnd vdd FILL
X_643_ op_r[3] _217_ vdd gnd INVX1
XFILL_1__1054_ gnd vdd FILL
X_1121_ _567_ _564_ b_r[29] _407_ vdd gnd OAI21X1
XFILL_1__903_ gnd vdd FILL
X_872_ result_r[23] _72__bF$buf5 rst_n_bF$buf8 _38_ vdd gnd OAI21X1
XFILL77550x64950 gnd vdd FILL
XFILL_0__1178_ gnd vdd FILL
XFILL_0__925_ gnd vdd FILL
X_928_ result_r[9] _72__bF$buf1 rst_n_bF$buf1 _572_ vdd gnd OAI21X1
X_681_ op_r[1] _194_ rd_sel[0] vdd gnd NOR2X1
XFILL_1__1092_ gnd vdd FILL
XFILL_0__734_ gnd vdd FILL
X_737_ _151_ _144_ _148_ _143_ vdd gnd NAND3X1
XFILL_1__1148_ gnd vdd FILL
X_1215_ _295_ clk_bF$buf4 result_r[19] vdd gnd DFFPOSX1
XFILL_0__963_ gnd vdd FILL
X_966_ _543_ _72__bF$buf0 _542_ _277_ vdd gnd AOI21X1
XFILL_1__750_ gnd vdd FILL
XFILL79050x32550 gnd vdd FILL
X_1024_ _460_ _187__bF$buf1 _89_ _459_ vdd gnd OAI21X1
XFILL_0__772_ gnd vdd FILL
XFILL_1__806_ gnd vdd FILL
X_775_ _113_ _112_ vdd gnd INVX1
XFILL_0__828_ gnd vdd FILL
XFILL78750x14550 gnd vdd FILL
X_1253_ _314_ clk_bF$buf5 b_r[6] vdd gnd DFFPOSX1
XFILL_1__615_ gnd vdd FILL
X_584_ result_r[3] rsp_result[3] vdd gnd BUFX2
X_1309_ _250_ clk_bF$buf8 a_r[1] vdd gnd DFFPOSX1
XFILL_0__637_ gnd vdd FILL
X_1062_ _578_[1] _123_ _188_ _362_ vdd gnd OAI21X1
XFILL_1__844_ gnd vdd FILL
XFILL_0__1102_ gnd vdd FILL
XFILL78750x7350 gnd vdd FILL
X_1118_ b_r[30] _404_ vdd gnd INVX1
XFILL_0__866_ gnd vdd FILL
X_869_ _42_ _72__bF$buf5 _41_ _300_ vdd gnd AOI21X1
X_1291_ _231_ clk_bF$buf9 b_r[25] vdd gnd DFFPOSX1
XFILL_1__653_ gnd vdd FILL
XFILL_0__675_ gnd vdd FILL
X_678_ _195_ _194_ _193_ rd_sel[2] vdd gnd OAI21X1
XFILL_1__1089_ gnd vdd FILL
XFILL_1__882_ gnd vdd FILL
XFILL_0__1140_ gnd vdd FILL
XFILL78750x150 gnd vdd FILL
X_1156_ b_r[8] \u_serv_alu.i_en_bF$buf1\ _101_ _432_ vdd gnd AOI21X1
XFILL_1__938_ gnd vdd FILL
XFILL_1__691_ gnd vdd FILL
XFILL_1__747_ gnd vdd FILL
XFILL_0__1005_ gnd vdd FILL
XFILL_0__769_ gnd vdd FILL
X_1194_ b_r[17] _457_ _173_ _458_ vdd gnd MUX2X1
XFILL_1__976_ gnd vdd FILL
XFILL_0__998_ gnd vdd FILL
XFILL_0__1043_ gnd vdd FILL
X_1059_ _181_ _358_ _155_ _359_ vdd gnd OAI21X1
XFILL_1__594_ gnd vdd FILL
X_602_ _539_ _529_ _540_ _553_ vdd gnd OAI21X1
XFILL_1__1013_ gnd vdd FILL
X_1288_ _331_ clk_bF$buf1 a_r[17] vdd gnd DFFPOSX1
XFILL_1_BUFX2_insert50 gnd vdd FILL
XFILL_1_BUFX2_insert51 gnd vdd FILL
XFILL_1_BUFX2_insert53 gnd vdd FILL
XFILL_1_BUFX2_insert54 gnd vdd FILL
XFILL_1_BUFX2_insert56 gnd vdd FILL
XFILL_1_BUFX2_insert57 gnd vdd FILL
XFILL_1_BUFX2_insert59 gnd vdd FILL
XFILL_0__1081_ gnd vdd FILL
X_831_ exec_cnt[3] _69_ vdd gnd INVX1
X_1097_ _94_ _92_ _387_ _245_ vdd gnd AOI21X1
XFILL_1__879_ gnd vdd FILL
XFILL_0__1137_ gnd vdd FILL
X_640_ \u_serv_alu.add_cy_r\ \u_serv_alu.i_rs1\ _505_ vdd gnd NAND2X1
XFILL_1__1051_ gnd vdd FILL
XFILL77550x3750 gnd vdd FILL
XFILL_1__688_ gnd vdd FILL
XFILL_1__1107_ gnd vdd FILL
XFILL_1__900_ gnd vdd FILL
XFILL_0__1175_ gnd vdd FILL
XFILL_0__922_ gnd vdd FILL
X_925_ _0_ _72__bF$buf6 _581_ _286_ vdd gnd AOI21X1
XFILL_0__731_ gnd vdd FILL
X_734_ _147_ send_cnt[1] _146_ vdd gnd OR2X2
XFILL_1__1145_ gnd vdd FILL
X_1212_ _255_ clk_bF$buf5 a_r[24] vdd gnd DFFPOSX1
XFILL_0__960_ gnd vdd FILL
X_963_ _154__bF$buf2 result_r[4] _544_ vdd gnd AND2X2
X_1021_ a_r[8] _140_ rst_n_bF$buf7 _461_ vdd gnd OAI21X1
XFILL_1__803_ gnd vdd FILL
X_772_ b_r[14] _131_ rst_n_bF$buf3 _114_ vdd gnd OAI21X1
XFILL_0__1078_ gnd vdd FILL
XFILL_0__825_ gnd vdd FILL
X_828_ _127_ _196_ _187__bF$buf0 _72_ vdd gnd OAI21X1
X_1250_ _218_ clk_bF$buf1 b_r[17] vdd gnd DFFPOSX1
XFILL_1__612_ gnd vdd FILL
X_1306_ _282_ clk_bF$buf3 result_r[7] vdd gnd DFFPOSX1
XFILL_0__634_ gnd vdd FILL
X_637_ \u_serv_alu.i_op_b\ _508_ vdd gnd INVX1
XFILL_1__1048_ gnd vdd FILL
X_1115_ _570_ _401_ _566_ _402_ vdd gnd NAND3X1
XFILL_0__863_ gnd vdd FILL
X_866_ _154__bF$buf0 result_r[25] _43_ vdd gnd AND2X2
XFILL_1__650_ gnd vdd FILL
XFILL_0__919_ gnd vdd FILL
XFILL_0__672_ gnd vdd FILL
XFILL_1__706_ gnd vdd FILL
X_675_ _207_ _194_ vdd gnd INVX2
XFILL_1__1086_ gnd vdd FILL
XFILL_0__728_ gnd vdd FILL
X_1153_ b_r[26] \u_serv_alu.i_en_bF$buf3\ _112_ _430_ vdd gnd AOI21X1
XFILL_1__935_ gnd vdd FILL
X_1209_ _292_ clk_bF$buf3 result_r[16] vdd gnd DFFPOSX1
XFILL_0__957_ gnd vdd FILL
XFILL_1__744_ gnd vdd FILL
XFILL_0__1002_ gnd vdd FILL
XFILL77850x150 gnd vdd FILL
X_1018_ \u_serv_alu.i_en_bF$buf2\ _464_ rst_n_bF$buf0 _463_ vdd gnd OAI21X1
XFILL_0__766_ gnd vdd FILL
X_769_ cmd_b[2] _180__bF$buf2 _117_ vdd gnd NAND2X1
X_1191_ _454_ _455_ _182__bF$buf4 _219_ vdd gnd AOI21X1
XFILL_1__973_ gnd vdd FILL
X_1247_ _311_ clk_bF$buf8 b_r[2] vdd gnd DFFPOSX1
XFILL_0__995_ gnd vdd FILL
X_998_ _131_ _478_ _477_ _272_ vdd gnd AOI21X1
XFILL_0__1040_ gnd vdd FILL
X_1056_ a_r[24] _351_ rst_n_bF$buf3 _357_ vdd gnd OAI21X1
XFILL_1__591_ gnd vdd FILL
X_1285_ _273_ clk_bF$buf6 a_r[13] vdd gnd DFFPOSX1
XFILL_1__647_ gnd vdd FILL
XFILL77850x25350 gnd vdd FILL
XFILL_1_BUFX2_insert20 gnd vdd FILL
XFILL_1_BUFX2_insert21 gnd vdd FILL
XFILL_1_BUFX2_insert23 gnd vdd FILL
XFILL_1_BUFX2_insert24 gnd vdd FILL
XFILL_1_BUFX2_insert26 gnd vdd FILL
XFILL_1_BUFX2_insert27 gnd vdd FILL
XFILL_1_BUFX2_insert29 gnd vdd FILL
XFILL_0__669_ gnd vdd FILL
X_1094_ \u_serv_alu.i_rs1\ _185_ rst_n_bF$buf1 _386_ vdd gnd OAI21X1
XFILL_1__876_ gnd vdd FILL
XFILL_0__1134_ gnd vdd FILL
XFILL_0__898_ gnd vdd FILL
XFILL_1__685_ gnd vdd FILL
XFILL_1__1104_ gnd vdd FILL
XFILL_0__1172_ gnd vdd FILL
X_922_ _154__bF$buf4 result_r[11] _1_ vdd gnd AND2X2
X_1188_ _182__bF$buf3 _453_ _220_ vdd gnd NOR2X1
X_731_ send_cnt[1] _150_ _149_ vdd gnd NAND2X1
XFILL_1__1142_ gnd vdd FILL
XFILL_1__779_ gnd vdd FILL
XFILL_0__1037_ gnd vdd FILL
X_960_ result_r[8] _53__bF$buf3 _67__bF$buf1 _547_ _546_ vdd 
+ gnd
+ AOI22X1
XFILL_1__588_ gnd vdd FILL
XFILL_1__800_ gnd vdd FILL
XFILL_1__1180_ gnd vdd FILL
XFILL_0__1075_ gnd vdd FILL
XFILL_0__822_ gnd vdd FILL
XFILL78150x25350 gnd vdd FILL
X_825_ cmd_b[1] b_r[2] _187__bF$buf2 _74_ vdd gnd MUX2X1
X_1303_ _333_ clk_bF$buf8 a_r[3] vdd gnd DFFPOSX1
XFILL_0__631_ gnd vdd FILL
X_634_ \u_serv_alu.i_op_b\ _510_ _511_ vdd gnd NAND2X1
XFILL_1__1045_ gnd vdd FILL
X_1112_ _395_ _399_ _182__bF$buf1 _242_ vdd gnd AOI21X1
XFILL_0__860_ gnd vdd FILL
X_863_ result_r[29] _53__bF$buf4 _67__bF$buf4 _46_ _45_ vdd 
+ gnd
+ AOI22X1
XFILL_0__1169_ gnd vdd FILL
XFILL_0__916_ gnd vdd FILL
X_919_ result_r[15] _53__bF$buf0 _67__bF$buf1 _4_ _3_ vdd 
+ gnd
+ AOI22X1
XFILL_1__703_ gnd vdd FILL
X_672_ _578_[1] _578_[0] valid_r _196_ vdd gnd NAND3X1
XFILL_0__725_ gnd vdd FILL
X_728_ _153_ _152_ vdd gnd INVX1
XFILL_1__1139_ gnd vdd FILL
X_1150_ b_r[27] \u_serv_alu.i_en_bF$buf0\ _116_ _428_ vdd gnd AOI21X1
XFILL_1__932_ gnd vdd FILL
X_1206_ _235_ clk_bF$buf0 a_r[22] vdd gnd DFFPOSX1
XFILL_0__954_ gnd vdd FILL
X_957_ result_r[5] _72__bF$buf3 rst_n_bF$buf0 _548_ vdd gnd OAI21X1
XFILL_1__741_ gnd vdd FILL
X_1015_ valid_r _466_ vdd gnd INVX1
XFILL_0__763_ gnd vdd FILL
X_766_ _178_ _180__bF$buf3 _120_ _119_ vdd gnd AOI21X1
XFILL_1__1177_ gnd vdd FILL
XFILL78750x21750 gnd vdd FILL
XFILL_1__970_ gnd vdd FILL
XFILL_0__819_ gnd vdd FILL
X_1244_ _263_ clk_bF$buf1 a_r[30] vdd gnd DFFPOSX1
XFILL_0__992_ gnd vdd FILL
X_995_ _163_ _479_ vdd gnd INVX1
XFILL_0__628_ gnd vdd FILL
X_1053_ a_r[25] _351_ rst_n_bF$buf3 _355_ vdd gnd OAI21X1
XFILL79050x150 gnd vdd FILL
X_1109_ _396_ _576_ _397_ vdd gnd NOR2X1
XFILL_0__857_ gnd vdd FILL
X_1282_ _328_ clk_bF$buf0 a_r[11] vdd gnd DFFPOSX1
XFILL_1__644_ gnd vdd FILL
XFILL77850x46950 gnd vdd FILL
XFILL_0__666_ gnd vdd FILL
X_669_ _198_ _197_ vdd gnd INVX1
X_1091_ a_r[7] _83_ rst_n_bF$buf7 _384_ vdd gnd OAI21X1
XFILL_1__873_ gnd vdd FILL
XFILL_0__1131_ gnd vdd FILL
X_1147_ load_cnt[1] load_cnt[0] _121_ _426_ vdd gnd NAND3X1
XFILL_0__895_ gnd vdd FILL
XFILL_1__929_ gnd vdd FILL
X_898_ _154__bF$buf2 result_r[17] _19_ vdd gnd AND2X2
XFILL_1__1101_ gnd vdd FILL
XFILL_1__738_ gnd vdd FILL
X_1185_ b_r[19] _451_ vdd gnd INVX1
XFILL_0__989_ gnd vdd FILL
XFILL_1__776_ gnd vdd FILL
XFILL_0__1034_ gnd vdd FILL
XFILL_0__798_ gnd vdd FILL
X_1279_ _244_ clk_bF$buf6 b_r[11] vdd gnd DFFPOSX1
XFILL_0__1072_ gnd vdd FILL
X_822_ cmd_b[2] b_r[3] _187__bF$buf2 _76_ vdd gnd MUX2X1
X_1088_ b_r[27] _351_ rst_n_bF$buf7 _382_ vdd gnd OAI21X1
XFILL_0__1128_ gnd vdd FILL
XFILL78150x46950 gnd vdd FILL
XFILL78150x7350 gnd vdd FILL
X_1300_ _279_ clk_bF$buf7 result_r[5] vdd gnd DFFPOSX1
X_631_ _505_ _514_ vdd gnd INVX1
XFILL_1__1042_ gnd vdd FILL
X_860_ result_r[26] _72__bF$buf5 rst_n_bF$buf0 _47_ vdd gnd OAI21X1
XFILL_0__1166_ gnd vdd FILL
XFILL_0__913_ gnd vdd FILL
X_916_ result_r[12] _72__bF$buf2 rst_n_bF$buf5 _5_ vdd gnd OAI21X1
XFILL_1__700_ gnd vdd FILL
XFILL_0__722_ gnd vdd FILL
X_725_ \u_serv_alu.i_en_bF$buf2\ _156_ _155_ vdd gnd NAND2X1
X_1203_ _289_ clk_bF$buf9 result_r[13] vdd gnd DFFPOSX1
XFILL_0__951_ gnd vdd FILL
X_954_ _552_ _72__bF$buf0 _551_ _280_ vdd gnd AOI21X1
X_1012_ a_r[10] \u_serv_alu.i_en_bF$buf6\ _482_ _468_ vdd gnd AOI21X1
XFILL_0__760_ gnd vdd FILL
X_763_ _124_ _133_ _123_ _122_ vdd gnd OAI21X1
XFILL_1__1174_ gnd vdd FILL
XFILL_0__1069_ gnd vdd FILL
XFILL_0__816_ gnd vdd FILL
X_819_ b_r[5] \u_serv_alu.i_en_bF$buf1\ _109_ _78_ vdd gnd AOI21X1
X_1241_ _308_ clk_bF$buf0 \u_serv_alu.i_op_b\ vdd gnd DFFPOSX1
X_992_ a_r[14] \u_serv_alu.i_en_bF$buf1\ _482_ _481_ vdd gnd AOI21X1
XFILL_0__625_ gnd vdd FILL
X_628_ _516_ _515_ _517_ vdd gnd NAND2X1
XFILL_1__1039_ gnd vdd FILL
X_1050_ a_r[26] _351_ rst_n_bF$buf3 _353_ vdd gnd OAI21X1
XFILL_1__832_ gnd vdd FILL
X_1106_ _394_ _390_ _182__bF$buf2 _243_ vdd gnd AOI21X1
XFILL_0__854_ gnd vdd FILL
X_857_ _51_ _72__bF$buf1 _50_ _303_ vdd gnd AOI21X1
XFILL_1__641_ gnd vdd FILL
XFILL_0__663_ gnd vdd FILL
X_666_ op_r[0] op_r[1] op_r[2] _200_ vdd gnd OAI21X1
XFILL78150x150 gnd vdd FILL
XFILL_1__870_ gnd vdd FILL
XFILL_0__719_ gnd vdd FILL
X_1144_ a_r[22] \u_serv_alu.i_en_bF$buf4\ _482_ _424_ vdd gnd AOI21X1
XFILL_0__892_ gnd vdd FILL
XFILL_1__926_ gnd vdd FILL
X_895_ result_r[21] _53__bF$buf1 _67__bF$buf1 _22_ _21_ vdd 
+ gnd
+ AOI22X1
XFILL_0__948_ gnd vdd FILL
X_1009_ a_r[11] \u_serv_alu.i_en_bF$buf0\ _88_ _470_ vdd gnd AOI21X1
XFILL_0__757_ gnd vdd FILL
X_1182_ b_r[24] \u_serv_alu.i_en_bF$buf3\ _101_ _449_ vdd gnd AOI21X1
X_1238_ _239_ clk_bF$buf1 b_r[28] vdd gnd DFFPOSX1
XFILL_0__986_ gnd vdd FILL
X_989_ result_r[0] _71_ _484_ _483_ vdd gnd AOI21X1
XFILL_1__773_ gnd vdd FILL
XFILL_0__1031_ gnd vdd FILL
X_1047_ _124_ _142_ _180__bF$buf0 _350_ vdd gnd OAI21X1
XFILL_0__795_ gnd vdd FILL
XFILL_1__829_ gnd vdd FILL
X_798_ _122_ cmd_valid _181_ _95_ vdd gnd AOI21X1
XFILL_1__1001_ gnd vdd FILL
X_1276_ _325_ clk_bF$buf2 send_cnt[0] vdd gnd DFFPOSX1
XFILL_1__638_ gnd vdd FILL
X_1085_ b_r[19] _379_ _173_ _380_ vdd gnd MUX2X1
XFILL_1__867_ gnd vdd FILL
XFILL_0__1125_ gnd vdd FILL
XFILL_0__889_ gnd vdd FILL
XFILL_0__698_ gnd vdd FILL
XFILL_0__1163_ gnd vdd FILL
XFILL_0__910_ gnd vdd FILL
X_913_ _9_ _72__bF$buf2 _8_ _289_ vdd gnd AOI21X1
X_1179_ _446_ _187__bF$buf1 _89_ _447_ vdd gnd OAI21X1
X_722_ exec_cnt[4] _158_ vdd gnd INVX1
XFILL_0__1028_ gnd vdd FILL
X_1200_ _252_ clk_bF$buf8 a_r[2] vdd gnd DFFPOSX1
X_951_ _154__bF$buf4 result_r[7] _554_ vdd gnd AND2X2
XFILL_1__999_ gnd vdd FILL
X_760_ _125_ _128_ _325_ vdd gnd NOR2X1
XFILL_1__1171_ gnd vdd FILL
XFILL78150x32550 gnd vdd FILL
XFILL_0__1066_ gnd vdd FILL
XFILL_0__813_ gnd vdd FILL
X_816_ b_r[6] \u_serv_alu.i_en_bF$buf1\ _112_ _80_ vdd gnd AOI21X1
XFILL_1__600_ gnd vdd FILL
XFILL_0__622_ gnd vdd FILL
X_625_ \u_serv_alu.i_cnt0\ \u_serv_alu.cmp_r\ rd_sel[1] _520_ vdd gnd NAND3X1
XFILL_1__1036_ gnd vdd FILL
X_1103_ _156_ _391_ _493_ _392_ vdd gnd OAI21X1
XFILL_0__851_ gnd vdd FILL
X_854_ _56_ _53__bF$buf4 _52_ vdd gnd NOR2X1
XFILL_0__907_ gnd vdd FILL
XFILL_0__660_ gnd vdd FILL
X_663_ _204_ _203_ _202_ _201_ vdd gnd NAND3X1
XFILL_1__1074_ gnd vdd FILL
XFILL_0__716_ gnd vdd FILL
X_719_ _182__bF$buf0 _161_ _330_ vdd gnd NOR2X1
X_1141_ a_r[23] \u_serv_alu.i_en_bF$buf6\ _88_ _422_ vdd gnd AOI21X1
XFILL_1__923_ gnd vdd FILL
X_892_ result_r[18] _72__bF$buf0 rst_n_bF$buf8 _23_ vdd gnd OAI21X1
XFILL_0__945_ gnd vdd FILL
X_948_ cmd_b[3] b_r[4] _187__bF$buf2 _556_ vdd gnd MUX2X1
X_1006_ _195_ _135_ _472_ _269_ vdd gnd AOI21X1
XFILL_0__754_ gnd vdd FILL
X_757_ rsp_ready _127_ vdd gnd INVX1
XFILL_1__1168_ gnd vdd FILL
X_1235_ _305_ clk_bF$buf7 result_r[29] vdd gnd DFFPOSX1
XFILL_0__983_ gnd vdd FILL
X_986_ _489_ _487_ _486_ vdd gnd NAND2X1
XFILL_1__770_ gnd vdd FILL
XFILL_0__619_ gnd vdd FILL
X_1044_ _570_ _347_ _566_ _348_ vdd gnd NAND3X1
XFILL_0__792_ gnd vdd FILL
XFILL_1__826_ gnd vdd FILL
X_795_ b_r[8] _140_ rst_n_bF$buf6 _97_ vdd gnd OAI21X1
XFILL_0__848_ gnd vdd FILL
X_1273_ _270_ clk_bF$buf9 op_r[2] vdd gnd DFFPOSX1
XFILL_1__635_ gnd vdd FILL
XFILL79050x68550 gnd vdd FILL
XFILL_0__657_ gnd vdd FILL
X_1082_ _185_ _376_ _377_ _250_ vdd gnd AOI21X1
XFILL_0__1122_ gnd vdd FILL
X_1138_ _204_ _187__bF$buf4 _420_ vdd gnd NOR2X1
XFILL_0__886_ gnd vdd FILL
X_889_ _27_ _72__bF$buf4 _26_ _295_ vdd gnd AOI21X1
XFILL_1__673_ gnd vdd FILL
XFILL_0__695_ gnd vdd FILL
X_698_ load_cnt[1] _179_ vdd gnd INVX1
XFILL_0__1160_ gnd vdd FILL
X_910_ _154__bF$buf4 result_r[14] _10_ vdd gnd AND2X2
X_1176_ load_cnt[1] _121_ rst_n_bF$buf1 _445_ vdd gnd OAI21X1
XFILL_1__958_ gnd vdd FILL
XFILL_1__767_ gnd vdd FILL
XFILL_0__1025_ gnd vdd FILL
XFILL_0__789_ gnd vdd FILL
XFILL_1__996_ gnd vdd FILL
XFILL_0__598_ gnd vdd FILL
XFILL_0__1063_ gnd vdd FILL
XFILL_0__810_ gnd vdd FILL
X_813_ b_r[7] \u_serv_alu.i_en_bF$buf1\ _116_ _82_ vdd gnd AOI21X1
X_1079_ _373_ _374_ _375_ _251_ vdd gnd AOI21X1
XFILL_0__1119_ gnd vdd FILL
X_622_ \u_serv_alu.i_rs1\ _523_ vdd gnd INVX1
XFILL_1__1033_ gnd vdd FILL
X_1100_ _140_ _388_ _389_ _244_ vdd gnd AOI21X1
X_851_ _56_ _72__bF$buf1 _55_ _54_ vdd gnd OAI21X1
XFILL_1__899_ gnd vdd FILL
XFILL78450x3750 gnd vdd FILL
XFILL_0__1157_ gnd vdd FILL
XFILL_0__904_ gnd vdd FILL
X_907_ result_r[18] _53__bF$buf1 _67__bF$buf1 _13_ _12_ vdd 
+ gnd
+ AOI22X1
X_660_ exec_cnt[0] exec_cnt[1] _204_ vdd gnd NOR2X1
XFILL_1__1071_ gnd vdd FILL
XFILL_0__713_ gnd vdd FILL
X_716_ cmd_a[0] _180__bF$buf1 _163_ vdd gnd NAND2X1
XFILL_1__1127_ gnd vdd FILL
XFILL_1__920_ gnd vdd FILL
XFILL_0__1195_ gnd vdd FILL
XFILL_0__942_ gnd vdd FILL
X_945_ result_r[11] _53__bF$buf0 _67__bF$buf2 _559_ _558_ vdd 
+ gnd
+ AOI22X1
X_1003_ cmd_op[2] _135_ rst_n_bF$buf4 _473_ vdd gnd OAI21X1
XFILL_0__751_ gnd vdd FILL
X_754_ a_r[15] _131_ rst_n_bF$buf6 _129_ vdd gnd OAI21X1
XFILL_1__1165_ gnd vdd FILL
XFILL_0__807_ gnd vdd FILL
X_1232_ _260_ clk_bF$buf5 a_r[5] vdd gnd DFFPOSX1
XFILL_0__980_ gnd vdd FILL
X_983_ _495_ _490_ _494_ _489_ vdd gnd OAI21X1
XFILL_0__616_ gnd vdd FILL
XFILL78450x61350 gnd vdd FILL
X_619_ _521_ _522_ bool_op[0] _525_ _526_ vdd 
+ gnd
+ OAI22X1
X_1041_ _83_ _344_ _345_ _259_ vdd gnd AOI21X1
XFILL78450x28950 gnd vdd FILL
XFILL_1__823_ gnd vdd FILL
X_792_ b_r[15] _131_ rst_n_bF$buf3 _99_ vdd gnd OAI21X1
XFILL_0__1098_ gnd vdd FILL
XFILL_0__845_ gnd vdd FILL
X_848_ _57_ _58_ _182__bF$buf2 _305_ vdd gnd AOI21X1
X_1270_ _322_ clk_bF$buf6 b_r[13] vdd gnd DFFPOSX1
XFILL_1__632_ gnd vdd FILL
XFILL_0__654_ gnd vdd FILL
X_657_ _206_ _575_ vdd gnd INVX1
XFILL_1__1068_ gnd vdd FILL
X_1135_ a_r[27] _351_ rst_n_bF$buf2 _418_ vdd gnd OAI21X1
XFILL_0__883_ gnd vdd FILL
XFILL_1__917_ gnd vdd FILL
X_886_ _154__bF$buf3 result_r[20] _28_ vdd gnd AND2X2
XFILL_1__670_ gnd vdd FILL
XFILL_0__939_ gnd vdd FILL
XFILL_0__692_ gnd vdd FILL
XFILL_1__726_ gnd vdd FILL
X_695_ rst_n_bF$buf0 _182_ vdd gnd INVX8
XFILL_0__748_ gnd vdd FILL
X_1173_ b_r[21] \u_serv_alu.i_en_bF$buf3\ _109_ _443_ vdd gnd AOI21X1
XFILL_1__955_ gnd vdd FILL
X_1229_ _302_ clk_bF$buf4 result_r[26] vdd gnd DFFPOSX1
XFILL_0__977_ gnd vdd FILL
XFILL_1__764_ gnd vdd FILL
XFILL_0__1022_ gnd vdd FILL
X_1038_ _83_ _342_ _343_ _260_ vdd gnd AOI21X1
XFILL_0__786_ gnd vdd FILL
X_789_ cmd_b[3] _180__bF$buf1 _102_ vdd gnd NAND2X1
XFILL79050x54150 gnd vdd FILL
XFILL_1__993_ gnd vdd FILL
X_1267_ _553_ clk_bF$buf9 \u_serv_alu.add_cy_r\ vdd gnd DFFPOSX1
XFILL_0__595_ gnd vdd FILL
XFILL78750x36150 gnd vdd FILL
X_598_ _578_[0] debug_state[0] vdd gnd BUFX2
XFILL_0__1060_ gnd vdd FILL
X_810_ load_cnt[0] _179_ _85_ vdd gnd NAND2X1
X_1076_ _372_ _174_ _373_ vdd gnd AND2X2
XFILL_0__1116_ gnd vdd FILL
XFILL_1__667_ gnd vdd FILL
XFILL_0__689_ gnd vdd FILL
XFILL_1__896_ gnd vdd FILL
XFILL_0__1154_ gnd vdd FILL
XFILL_0__901_ gnd vdd FILL
X_904_ result_r[15] _72__bF$buf0 rst_n_bF$buf8 _14_ vdd gnd OAI21X1
XFILL_0__710_ gnd vdd FILL
X_713_ a_r[17] _166_ _173_ _165_ vdd gnd MUX2X1
XFILL_1__1124_ gnd vdd FILL
XFILL_0__1019_ gnd vdd FILL
XFILL_0__1192_ gnd vdd FILL
X_942_ result_r[8] _72__bF$buf2 rst_n_bF$buf5 _560_ vdd gnd OAI21X1
XCLKBUF1_insert10 clk clk_bF$buf8 vdd gnd CLKBUF1
XCLKBUF1_insert11 clk clk_bF$buf7 vdd gnd CLKBUF1
XCLKBUF1_insert12 clk clk_bF$buf6 vdd gnd CLKBUF1
XCLKBUF1_insert13 clk clk_bF$buf5 vdd gnd CLKBUF1
XCLKBUF1_insert14 clk clk_bF$buf4 vdd gnd CLKBUF1
XCLKBUF1_insert15 clk clk_bF$buf3 vdd gnd CLKBUF1
XCLKBUF1_insert16 clk clk_bF$buf2 vdd gnd CLKBUF1
XCLKBUF1_insert17 clk clk_bF$buf1 vdd gnd CLKBUF1
XCLKBUF1_insert18 clk clk_bF$buf0 vdd gnd CLKBUF1
X_1000_ _69_ _160_ \u_serv_alu.i_en_bF$buf0\ _475_ vdd gnd OAI21X1
X_751_ load_cnt[2] _133_ _180__bF$buf3 _132_ vdd gnd OAI21X1
XFILL_1__1162_ gnd vdd FILL
XFILL_1__799_ gnd vdd FILL
XFILL_0__1057_ gnd vdd FILL
XFILL_0__804_ gnd vdd FILL
X_807_ a_r[15] \u_serv_alu.i_en_bF$buf1\ _88_ _87_ vdd gnd AOI21X1
X_980_ _497_ op_r[3] _209_ _492_ vdd gnd NAND3X1
XFILL_0__613_ gnd vdd FILL
X_616_ _518_ _513_ _528_ vdd gnd NAND2X1
XFILL_1__820_ gnd vdd FILL
XFILL_0__1095_ gnd vdd FILL
XFILL_0__842_ gnd vdd FILL
X_845_ _182__bF$buf0 _59_ _306_ vdd gnd NOR2X1
XFILL_0__651_ gnd vdd FILL
X_654_ op_r[2] op_r[3] _207_ vdd gnd NOR2X1
XFILL_1__1065_ gnd vdd FILL
XFILL_0__707_ gnd vdd FILL
X_1132_ exec_cnt[2] _415_ rst_n_bF$buf1 _416_ vdd gnd OAI21X1
XFILL_0__880_ gnd vdd FILL
X_883_ result_r[24] _53__bF$buf2 _67__bF$buf3 _31_ _30_ vdd 
+ gnd
+ AOI22X1
XFILL_0__1189_ gnd vdd FILL
XFILL_0__936_ gnd vdd FILL
X_939_ _565_ _563_ _182__bF$buf4 _284_ vdd gnd AOI21X1
XFILL_1__723_ gnd vdd FILL
X_692_ cmd_a[3] a_r[4] _187__bF$buf2 _184_ vdd gnd MUX2X1
XFILL_0__745_ gnd vdd FILL
X_748_ cmd_op[3] _135_ rst_n_bF$buf4 _134_ vdd gnd OAI21X1
X_1170_ b_r[22] \u_serv_alu.i_en_bF$buf3\ _112_ _441_ vdd gnd AOI21X1
XFILL_1__952_ gnd vdd FILL
X_1226_ _227_ clk_bF$buf9 exec_cnt[0] vdd gnd DFFPOSX1
XFILL_0__974_ gnd vdd FILL
X_977_ _215_ _195_ _496_ _216_ _495_ vdd 
+ gnd
+ AOI22X1
XFILL_1__761_ gnd vdd FILL
X_1035_ _83_ _340_ _341_ _261_ vdd gnd AOI21X1
XFILL_0__783_ gnd vdd FILL
XFILL_1__817_ gnd vdd FILL
X_786_ b_r[10] \u_serv_alu.i_en_bF$buf5\ _112_ _104_ vdd gnd AOI21X1
XFILL_0__839_ gnd vdd FILL
XFILL79050x75750 gnd vdd FILL
X_1264_ _268_ clk_bF$buf9 op_r[0] vdd gnd DFFPOSX1
XFILL_0__592_ gnd vdd FILL
X_595_ _575_ busy vdd gnd BUFX2
XFILL_0__648_ gnd vdd FILL
X_1073_ a_r[2] _185_ rst_n_bF$buf2 _371_ vdd gnd OAI21X1
XFILL_0__1113_ gnd vdd FILL
X_1129_ _160_ \u_serv_alu.i_en_bF$buf0\ _413_ vdd gnd NAND2X1
XFILL_0__877_ gnd vdd FILL
XFILL_1__664_ gnd vdd FILL
XFILL_0__686_ gnd vdd FILL
X_689_ _578_[1] _188_ _187_ vdd gnd NAND2X1
XFILL_1__893_ gnd vdd FILL
XFILL_0__1151_ gnd vdd FILL
X_901_ _18_ _72__bF$buf6 _17_ _292_ vdd gnd AOI21X1
X_1167_ b_r[23] \u_serv_alu.i_en_bF$buf3\ _116_ _439_ vdd gnd AOI21X1
XFILL_1__949_ gnd vdd FILL
X_710_ a_r[18] _168_ vdd gnd INVX1
XFILL_1__1121_ gnd vdd FILL
XFILL_0__1016_ gnd vdd FILL
XFILL_0__589_ gnd vdd FILL
XFILL_1__796_ gnd vdd FILL
XFILL_0__1054_ gnd vdd FILL
XFILL_0__801_ gnd vdd FILL
X_804_ _94_ _92_ _90_ _316_ vdd gnd AOI21X1
XFILL_0__610_ gnd vdd FILL
X_613_ _530_ _531_ vdd gnd INVX1
X_1299_ _232_ clk_bF$buf9 b_r[26] vdd gnd DFFPOSX1
XFILL_0__1092_ gnd vdd FILL
X_842_ a_r[20] _61_ vdd gnd INVX1
XFILL79050x7350 gnd vdd FILL
XFILL_0__1148_ gnd vdd FILL
XFILL_0_BUFX2_insert60 gnd vdd FILL
XFILL_0_BUFX2_insert61 gnd vdd FILL
X_651_ op_r[0] op_r[1] _210_ vdd gnd NAND2X1
XFILL_1__1062_ gnd vdd FILL
XFILL_0__704_ gnd vdd FILL
X_707_ _172_ _187__bF$buf3 _171_ _170_ vdd gnd OAI21X1
XFILL_1__1118_ gnd vdd FILL
X_880_ result_r[21] _72__bF$buf4 rst_n_bF$buf8 _32_ vdd gnd OAI21X1
XFILL_0__1186_ gnd vdd FILL
XFILL_0__933_ gnd vdd FILL
X_936_ _101_ _570_ _566_ _565_ vdd gnd NAND3X1
XFILL_1__720_ gnd vdd FILL
XFILL_0__742_ gnd vdd FILL
X_745_ a_r[11] _140_ rst_n_bF$buf7 _136_ vdd gnd OAI21X1
X_1223_ _299_ clk_bF$buf4 result_r[23] vdd gnd DFFPOSX1
XFILL_0__971_ gnd vdd FILL
X_974_ _499_ _72__bF$buf3 _498_ _275_ vdd gnd AOI21X1
XFILL_0__607_ gnd vdd FILL
X_1032_ _338_ _339_ _182__bF$buf3 _262_ vdd gnd AOI21X1
XFILL_0__780_ gnd vdd FILL
XFILL_1__814_ gnd vdd FILL
XFILL_0_CLKBUF1_insert9 gnd vdd FILL
X_783_ b_r[11] \u_serv_alu.i_en_bF$buf3\ _116_ _106_ vdd gnd AOI21X1
XFILL_1__1194_ gnd vdd FILL
XFILL_0__1089_ gnd vdd FILL
XFILL_0__836_ gnd vdd FILL
X_839_ result_r[30] _71_ _63_ vdd gnd NAND2X1
X_1261_ _318_ clk_bF$buf8 b_r[15] vdd gnd DFFPOSX1
X_592_ is_sub rsp_flags[1] vdd gnd BUFX2
XFILL_0__645_ gnd vdd FILL
X_648_ op_r[1] _215_ _212_ vdd gnd NOR2X1
XFILL_1__1059_ gnd vdd FILL
X_1070_ _366_ _368_ _367_ _369_ vdd gnd NAND3X1
XFILL_1__852_ gnd vdd FILL
XFILL_0__1110_ gnd vdd FILL
X_1126_ _567_ _564_ b_r[28] _411_ vdd gnd OAI21X1
XFILL_0__874_ gnd vdd FILL
X_877_ _36_ _72__bF$buf4 _35_ _298_ vdd gnd AOI21X1
XFILL_1__661_ gnd vdd FILL
XFILL_0__683_ gnd vdd FILL
XFILL_1__717_ gnd vdd FILL
X_686_ _208_ _191_ _189_ vdd gnd NAND2X1
XFILL_1__890_ gnd vdd FILL
XFILL_0__739_ gnd vdd FILL
X_1164_ _373_ _436_ _437_ _228_ vdd gnd AOI21X1
XFILL_1__946_ gnd vdd FILL
XFILL_0__968_ gnd vdd FILL
XFILL_0__1013_ gnd vdd FILL
XFILL79050x61350 gnd vdd FILL
XFILL79050x28950 gnd vdd FILL
X_1029_ _336_ _187__bF$buf1 _167_ _337_ vdd gnd OAI21X1
XFILL_0__777_ gnd vdd FILL
XFILL78750x43350 gnd vdd FILL
X_1258_ _229_ clk_bF$buf6 b_r[24] vdd gnd DFFPOSX1
XFILL_0__586_ gnd vdd FILL
X_589_ cmp_r rsp_flags[4] vdd gnd BUFX2
XFILL77550x25350 gnd vdd FILL
XFILL_1__793_ gnd vdd FILL
XFILL_0__1051_ gnd vdd FILL
X_801_ _158_ _93_ \u_serv_alu.i_en_bF$buf0\ _92_ vdd gnd OAI21X1
X_1067_ \u_serv_alu.i_en_bF$buf2\ _156_ _95_ _366_ vdd gnd AOI21X1
XFILL_1__849_ gnd vdd FILL
XFILL_0__1107_ gnd vdd FILL
X_610_ _533_ _530_ cmp_eq _534_ vdd gnd AOI21X1
XFILL_1__1021_ gnd vdd FILL
X_1296_ _277_ clk_bF$buf3 result_r[3] vdd gnd DFFPOSX1
XFILL_1__658_ gnd vdd FILL
XFILL_1__887_ gnd vdd FILL
XFILL_0__1145_ gnd vdd FILL
XFILL_0_BUFX2_insert30 gnd vdd FILL
XFILL_0_BUFX2_insert31 gnd vdd FILL
XFILL_0_BUFX2_insert32 gnd vdd FILL
XFILL_0_BUFX2_insert33 gnd vdd FILL
XFILL_0_BUFX2_insert34 gnd vdd FILL
XFILL_0_BUFX2_insert35 gnd vdd FILL
XFILL_0_BUFX2_insert36 gnd vdd FILL
XFILL_0_BUFX2_insert37 gnd vdd FILL
XFILL_0_BUFX2_insert38 gnd vdd FILL
XFILL_0_BUFX2_insert39 gnd vdd FILL
XFILL_0__701_ gnd vdd FILL
X_704_ _174_ _176_ _173_ vdd gnd NAND2X1
XFILL_1__1115_ gnd vdd FILL
XFILL_0__1183_ gnd vdd FILL
XFILL_0__930_ gnd vdd FILL
X_933_ _180__bF$buf0 _569_ _568_ vdd gnd NAND2X1
X_1199_ _287_ clk_bF$buf3 result_r[11] vdd gnd DFFPOSX1
X_742_ cmd_a[3] _180__bF$buf2 _139_ vdd gnd NAND2X1
XBUFX2_insert40 _187_ _187__bF$buf0 vdd gnd BUFX2
XBUFX2_insert41 _67_ _67__bF$buf4 vdd gnd BUFX2
XBUFX2_insert42 _67_ _67__bF$buf3 vdd gnd BUFX2
XBUFX2_insert43 _67_ _67__bF$buf2 vdd gnd BUFX2
XBUFX2_insert44 _67_ _67__bF$buf1 vdd gnd BUFX2
XBUFX2_insert45 _67_ _67__bF$buf0 vdd gnd BUFX2
XBUFX2_insert46 _154_ _154__bF$buf4 vdd gnd BUFX2
XBUFX2_insert47 _154_ _154__bF$buf3 vdd gnd BUFX2
XBUFX2_insert48 _154_ _154__bF$buf2 vdd gnd BUFX2
XBUFX2_insert49 _154_ _154__bF$buf1 vdd gnd BUFX2
XFILL_0__1048_ gnd vdd FILL
X_1220_ _257_ clk_bF$buf0 a_r[26] vdd gnd DFFPOSX1
X_971_ _154__bF$buf1 result_r[2] _500_ vdd gnd AND2X2
XFILL_0__604_ gnd vdd FILL
X_607_ _535_ _536_ _537_ vdd gnd NOR2X1
XFILL_1__1018_ gnd vdd FILL
X_780_ b_r[13] \u_serv_alu.i_en_bF$buf5\ _109_ _108_ vdd gnd AOI21X1
XFILL_1__1191_ gnd vdd FILL
XFILL_0__1086_ gnd vdd FILL
XFILL_0__833_ gnd vdd FILL
X_836_ cmd_b[0] b_r[1] _187__bF$buf4 _65_ vdd gnd MUX2X1
XFILL_1__620_ gnd vdd FILL
XFILL_0__642_ gnd vdd FILL
X_645_ op_r[0] _215_ vdd gnd INVX1
XFILL_1__1056_ gnd vdd FILL
X_1123_ b_r[29] _408_ vdd gnd INVX1
XFILL_0__871_ gnd vdd FILL
XFILL_1__905_ gnd vdd FILL
X_874_ _154__bF$buf3 result_r[23] _37_ vdd gnd AND2X2
XFILL_0__927_ gnd vdd FILL
XFILL_0__680_ gnd vdd FILL
XFILL_1__714_ gnd vdd FILL
X_683_ op_r[2] _217_ _191_ vdd gnd NOR2X1
XFILL_1__1094_ gnd vdd FILL
XFILL_0__736_ gnd vdd FILL
X_739_ load_cnt[1] _178_ _142_ vdd gnd NAND2X1
X_1161_ _351_ _434_ _435_ _229_ vdd gnd AOI21X1
XFILL_1__943_ gnd vdd FILL
X_1217_ _296_ clk_bF$buf4 result_r[20] vdd gnd DFFPOSX1
XFILL_0__965_ gnd vdd FILL
X_968_ result_r[6] _53__bF$buf0 _67__bF$buf3 _503_ _502_ vdd 
+ gnd
+ AOI22X1
XFILL_0__1010_ gnd vdd FILL
X_1026_ _567_ _564_ a_r[30] _335_ vdd gnd OAI21X1
XFILL_0__774_ gnd vdd FILL
X_777_ b_r[13] _131_ rst_n_bF$buf6 _110_ vdd gnd OAI21X1
XFILL_1__1188_ gnd vdd FILL
XFILL_1__981_ gnd vdd FILL
X_1255_ _315_ clk_bF$buf5 a_r[14] vdd gnd DFFPOSX1
XFILL_0__583_ gnd vdd FILL
XFILL_1__617_ gnd vdd FILL
XFILL78750x64950 gnd vdd FILL
X_586_ result_r[1] rsp_result[1] vdd gnd BUFX2
XFILL_1__790_ gnd vdd FILL
XFILL_0__639_ gnd vdd FILL
X_1064_ rst_n_bF$buf0 _363_ _155_ _364_ vdd gnd NAND3X1
XFILL_1__846_ gnd vdd FILL
XFILL_0__1104_ gnd vdd FILL
XFILL_0__868_ gnd vdd FILL
X_1293_ _246_ clk_bF$buf0 \u_serv_alu.i_rs1\ vdd gnd DFFPOSX1
XFILL_1__655_ gnd vdd FILL
XFILL_0__677_ gnd vdd FILL
XFILL_0__1142_ gnd vdd FILL
X_1158_ _83_ _432_ _433_ _230_ vdd gnd AOI21X1
XFILL_1__693_ gnd vdd FILL
XFILL79050x14550 gnd vdd FILL
X_701_ _177_ _180__bF$buf0 _176_ vdd gnd NAND2X1
XFILL_1__1112_ gnd vdd FILL
XFILL_0__1007_ gnd vdd FILL
XFILL_0__1180_ gnd vdd FILL
X_930_ load_cnt[2] _133_ _177_ _571_ vdd gnd OAI21X1
X_1196_ _251_ clk_bF$buf8 a_r[23] vdd gnd DFFPOSX1
XFILL_1__978_ gnd vdd FILL
XBUFX2_insert19 _182_ _182__bF$buf4 vdd gnd BUFX2
XFILL_1__787_ gnd vdd FILL
XFILL_0__1045_ gnd vdd FILL
XFILL_1__596_ gnd vdd FILL
XFILL_0__601_ gnd vdd FILL
X_604_ \u_serv_alu.i_en_bF$buf3\ _539_ vdd gnd INVX1
XFILL_1__1015_ gnd vdd FILL
XFILL_0__1083_ gnd vdd FILL
XFILL_0__830_ gnd vdd FILL
X_833_ _68_ _157_ _198_ _67_ vdd gnd NAND3X1
X_1099_ b_r[11] _140_ rst_n_bF$buf7 _389_ vdd gnd OAI21X1
XFILL_0__1139_ gnd vdd FILL
X_1311_ _225_ clk_bF$buf6 b_r[21] vdd gnd DFFPOSX1
X_642_ _578_[0] _580_ \u_serv_alu.i_en\ vdd gnd NOR2X1
XFILL_1__1109_ gnd vdd FILL
X_1120_ _570_ _405_ _566_ _406_ vdd gnd NAND3X1
XFILL_1__902_ gnd vdd FILL
X_871_ result_r[27] _53__bF$buf2 _67__bF$buf4 _40_ _39_ vdd 
+ gnd
+ AOI22X1
XFILL_0__1177_ gnd vdd FILL
XFILL_0__924_ gnd vdd FILL
X_927_ result_r[13] _53__bF$buf3 _67__bF$buf0 _574_ _573_ vdd 
+ gnd
+ AOI22X1
XFILL_1__711_ gnd vdd FILL
X_680_ _194_ _192_ is_sub vdd gnd NOR2X1
XFILL_1__1091_ gnd vdd FILL
XFILL_0__733_ gnd vdd FILL
X_736_ _146_ _145_ _154__bF$buf0 _144_ vdd gnd AOI21X1
XFILL_1__1147_ gnd vdd FILL
XFILL_1__940_ gnd vdd FILL
X_1214_ _236_ clk_bF$buf7 exec_cnt[1] vdd gnd DFFPOSX1
XFILL_0__962_ gnd vdd FILL
X_965_ result_r[3] _72__bF$buf6 rst_n_bF$buf5 _542_ vdd gnd OAI21X1
X_1023_ a_r[31] _460_ vdd gnd INVX1
XFILL_0__771_ gnd vdd FILL
X_774_ cmd_b[1] _180__bF$buf2 _113_ vdd gnd NAND2X1
XFILL_1__1185_ gnd vdd FILL
XFILL_0__827_ gnd vdd FILL
X_1252_ _265_ clk_bF$buf2 valid_r vdd gnd DFFPOSX1
XFILL_1__614_ gnd vdd FILL
X_583_ _579_ rsp_valid vdd gnd BUFX2
X_1308_ _283_ clk_bF$buf3 result_r[8] vdd gnd DFFPOSX1
XFILL_0__636_ gnd vdd FILL
X_639_ \u_serv_alu.add_cy_r\ \u_serv_alu.i_rs1\ _506_ vdd gnd NOR2X1
X_1061_ _360_ _359_ _361_ vdd gnd NOR2X1
XFILL_1__843_ gnd vdd FILL
XFILL_0__1101_ gnd vdd FILL
X_1117_ _402_ _403_ _182__bF$buf1 _241_ vdd gnd AOI21X1
XFILL_0__865_ gnd vdd FILL
X_868_ result_r[24] _72__bF$buf5 rst_n_bF$buf8 _41_ vdd gnd OAI21X1
X_1290_ _332_ clk_bF$buf1 b_r[16] vdd gnd DFFPOSX1
XFILL_0__674_ gnd vdd FILL
XFILL_1__708_ gnd vdd FILL
X_677_ _208_ _213_ _193_ vdd gnd NAND2X1
XFILL_1__1088_ gnd vdd FILL
XFILL_1_CLKBUF1_insert10 gnd vdd FILL
XFILL_1_CLKBUF1_insert11 gnd vdd FILL
XFILL_1_CLKBUF1_insert13 gnd vdd FILL
XFILL_1_CLKBUF1_insert14 gnd vdd FILL
XFILL_1_CLKBUF1_insert16 gnd vdd FILL
XFILL_1_CLKBUF1_insert17 gnd vdd FILL
X_1155_ _351_ _430_ _431_ _231_ vdd gnd AOI21X1
XFILL_1__690_ gnd vdd FILL
XFILL_0__959_ gnd vdd FILL
XFILL_1__746_ gnd vdd FILL
XFILL_0__1004_ gnd vdd FILL
XFILL78750x50550 gnd vdd FILL
XFILL_0__768_ gnd vdd FILL
X_1193_ _456_ _187__bF$buf3 _113_ _457_ vdd gnd OAI21X1
XFILL_1__975_ gnd vdd FILL
X_1249_ _312_ clk_bF$buf5 b_r[4] vdd gnd DFFPOSX1
XFILL_0__997_ gnd vdd FILL
XFILL_1__784_ gnd vdd FILL
XFILL_0__1042_ gnd vdd FILL
X_1058_ _122_ cmd_valid _358_ vdd gnd AND2X2
XFILL_1__593_ gnd vdd FILL
X_601_ \u_serv_alu.cmp_r\ _539_ _541_ vdd gnd NAND2X1
XFILL_1__1012_ gnd vdd FILL
X_1287_ _245_ clk_bF$buf7 exec_cnt[5] vdd gnd DFFPOSX1
XFILL_1_BUFX2_insert40 gnd vdd FILL
XFILL_1_BUFX2_insert41 gnd vdd FILL
XFILL_1_BUFX2_insert43 gnd vdd FILL
XFILL_1_BUFX2_insert44 gnd vdd FILL
XFILL_1_BUFX2_insert46 gnd vdd FILL
XFILL_1_BUFX2_insert47 gnd vdd FILL
XFILL_1_BUFX2_insert49 gnd vdd FILL
XFILL_0__1080_ gnd vdd FILL
X_830_ result_r[31] _71_ _70_ vdd gnd NAND2X1
X_1096_ exec_cnt[5] rst_n_bF$buf1 _387_ vdd gnd NAND2X1
XFILL_0__1136_ gnd vdd FILL
XFILL_1__687_ gnd vdd FILL
XFILL_0__1174_ gnd vdd FILL
XFILL_0__921_ gnd vdd FILL
X_924_ result_r[10] _72__bF$buf6 rst_n_bF$buf5 _581_ vdd gnd OAI21X1
XFILL_0__730_ gnd vdd FILL
X_733_ send_cnt[0] _147_ vdd gnd INVX1
XFILL_1__1144_ gnd vdd FILL
XFILL_0__1039_ gnd vdd FILL
X_1211_ _293_ clk_bF$buf7 result_r[17] vdd gnd DFFPOSX1
X_962_ _546_ _72__bF$buf3 _545_ _278_ vdd gnd AOI21X1
XFILL_1__1009_ gnd vdd FILL
X_1020_ a_r[9] \u_serv_alu.i_en_bF$buf5\ _479_ _462_ vdd gnd AOI21X1
X_771_ b_r[15] \u_serv_alu.i_en_bF$buf6\ _116_ _115_ vdd gnd AOI21X1
XFILL_1__1182_ gnd vdd FILL
XFILL_0__1077_ gnd vdd FILL
XFILL_0__824_ gnd vdd FILL
X_827_ _185_ _74_ _73_ _310_ vdd gnd AOI21X1
XFILL_1__611_ gnd vdd FILL
X_1305_ _249_ clk_bF$buf2 b_r[19] vdd gnd DFFPOSX1
XFILL_0__633_ gnd vdd FILL
X_636_ alu_sub _508_ _509_ vdd gnd NAND2X1
XFILL_1__840_ gnd vdd FILL
X_1114_ _400_ _187__bF$buf0 _117_ _401_ vdd gnd OAI21X1
XFILL_0__862_ gnd vdd FILL
X_865_ _45_ _72__bF$buf3 _44_ _301_ vdd gnd AOI21X1
XFILL_0__918_ gnd vdd FILL
XFILL_0__671_ gnd vdd FILL
X_674_ op_r[1] _195_ vdd gnd INVX1
XFILL_1__1085_ gnd vdd FILL
XFILL_0__727_ gnd vdd FILL
X_1152_ _351_ _428_ _429_ _232_ vdd gnd AOI21X1
X_1208_ _254_ clk_bF$buf2 _578_[0] vdd gnd DFFPOSX1
XFILL_0__956_ gnd vdd FILL
X_959_ _154__bF$buf1 result_r[5] _547_ vdd gnd AND2X2
XFILL_1__743_ gnd vdd FILL
XFILL_0__1001_ gnd vdd FILL
X_1017_ _181_ _465_ _155_ _464_ vdd gnd NAND3X1
XFILL_0__765_ gnd vdd FILL
X_768_ _119_ _121_ _118_ _324_ vdd gnd AOI21X1
X_1190_ _567_ _564_ a_r[31] _455_ vdd gnd OAI21X1
XFILL_1__972_ gnd vdd FILL
X_1246_ _240_ clk_bF$buf2 b_r[29] vdd gnd DFFPOSX1
XFILL_0__994_ gnd vdd FILL
XFILL_1__608_ gnd vdd FILL
X_997_ a_r[12] _131_ rst_n_bF$buf3 _477_ vdd gnd OAI21X1
XFILL_1__781_ gnd vdd FILL
X_1055_ a_r[25] \u_serv_alu.i_en_bF$buf6\ _479_ _356_ vdd gnd AOI21X1
XFILL_1__837_ gnd vdd FILL
XFILL_1__590_ gnd vdd FILL
XFILL_0__859_ gnd vdd FILL
X_1284_ _329_ clk_bF$buf2 send_cnt[1] vdd gnd DFFPOSX1
XFILL_1_BUFX2_insert19 gnd vdd FILL
XFILL_0__668_ gnd vdd FILL
X_1093_ cmd_a[0] a_r[1] _187__bF$buf4 _385_ vdd gnd MUX2X1
XFILL_1__875_ gnd vdd FILL
XFILL_0__1133_ gnd vdd FILL
XFILL79050x21750 gnd vdd FILL
X_1149_ _426_ _124_ _427_ _233_ vdd gnd AOI21X1
XFILL_0__897_ gnd vdd FILL
XFILL_1__684_ gnd vdd FILL
XFILL_0__1171_ gnd vdd FILL
X_921_ _3_ _72__bF$buf0 _2_ _287_ vdd gnd AOI21X1
X_1187_ b_r[18] _452_ _173_ _453_ vdd gnd MUX2X1
XFILL_1__969_ gnd vdd FILL
X_730_ _152_ _151_ _155_ _150_ vdd gnd NAND3X1
XFILL_1__1141_ gnd vdd FILL
XFILL_0__1036_ gnd vdd FILL
XFILL_1__587_ gnd vdd FILL
XFILL_1__1006_ gnd vdd FILL
XFILL_0__1074_ gnd vdd FILL
XFILL_0__821_ gnd vdd FILL
X_824_ _185_ _76_ _75_ _311_ vdd gnd AOI21X1
X_1302_ _280_ clk_bF$buf3 result_r[6] vdd gnd DFFPOSX1
XFILL_0__630_ gnd vdd FILL
X_633_ _509_ _511_ _512_ vdd gnd NAND2X1
X_1111_ _151_ _148_ _398_ _399_ vdd gnd NAND3X1
X_862_ _154__bF$buf0 result_r[26] _46_ vdd gnd AND2X2
XFILL_0__1168_ gnd vdd FILL
XFILL_0__915_ gnd vdd FILL
X_918_ _154__bF$buf2 result_r[12] _4_ vdd gnd AND2X2
X_671_ cmp_r _197_ _577_[2] vdd gnd NOR2X1
XFILL_1__1082_ gnd vdd FILL
XFILL_0__724_ gnd vdd FILL
X_727_ valid_r rsp_ready _154__bF$buf0 _153_ vdd gnd AOI21X1
XFILL_1__1138_ gnd vdd FILL
X_1205_ _290_ clk_bF$buf3 result_r[14] vdd gnd DFFPOSX1
XFILL_0__953_ gnd vdd FILL
X_956_ result_r[9] _53__bF$buf3 _67__bF$buf1 _550_ _549_ vdd 
+ gnd
+ AOI22X1
XFILL_1__740_ gnd vdd FILL
X_1014_ _140_ _468_ _467_ _266_ vdd gnd AOI21X1
XFILL_0__762_ gnd vdd FILL
XFILL78150x28950 gnd vdd FILL
X_765_ cmd_last _135_ _120_ vdd gnd NOR2X1
XFILL_0__818_ gnd vdd FILL
X_1243_ _309_ clk_bF$buf7 result_r[31] vdd gnd DFFPOSX1
XFILL_0__991_ gnd vdd FILL
XFILL_1__605_ gnd vdd FILL
X_994_ _131_ _481_ _480_ _273_ vdd gnd AOI21X1
XFILL_0__627_ gnd vdd FILL
X_1052_ a_r[26] \u_serv_alu.i_en_bF$buf4\ _482_ _354_ vdd gnd AOI21X1
XFILL_1__834_ gnd vdd FILL
X_1108_ send_cnt[0] send_cnt[1] send_cnt[2] _396_ vdd gnd AOI21X1
XFILL_0__856_ gnd vdd FILL
X_859_ result_r[30] _53__bF$buf2 _67__bF$buf4 _49_ _48_ vdd 
+ gnd
+ AOI22X1
X_1281_ _272_ clk_bF$buf0 a_r[12] vdd gnd DFFPOSX1
XFILL_0__665_ gnd vdd FILL
X_668_ _216_ _208_ _199_ _198_ vdd gnd OAI21X1
XFILL_1__1079_ gnd vdd FILL
X_1090_ a_r[8] \u_serv_alu.i_en_bF$buf5\ _138_ _383_ vdd gnd AOI21X1
XFILL_1__872_ gnd vdd FILL
XFILL_0__1130_ gnd vdd FILL
X_1146_ _373_ _424_ _425_ _234_ vdd gnd AOI21X1
XFILL_0__894_ gnd vdd FILL
XFILL_1__928_ gnd vdd FILL
X_897_ _21_ _72__bF$buf1 _20_ _293_ vdd gnd AOI21X1
XFILL_1__681_ gnd vdd FILL
XFILL_1__737_ gnd vdd FILL
XFILL_0__759_ gnd vdd FILL
X_1184_ _373_ _449_ _450_ _221_ vdd gnd AOI21X1
XFILL_1__966_ gnd vdd FILL
XFILL_0__988_ gnd vdd FILL
XFILL78450x36150 gnd vdd FILL
XFILL_0__1033_ gnd vdd FILL
X_1049_ a_r[27] \u_serv_alu.i_en_bF$buf4\ _88_ _352_ vdd gnd AOI21X1
XFILL_0__797_ gnd vdd FILL
XFILL_1__584_ gnd vdd FILL
XFILL_1__1003_ gnd vdd FILL
X_1278_ _326_ clk_bF$buf5 a_r[15] vdd gnd DFFPOSX1
XFILL_0__1071_ gnd vdd FILL
X_821_ _83_ _78_ _77_ _312_ vdd gnd AOI21X1
X_1087_ b_r[28] \u_serv_alu.i_en_bF$buf4\ _101_ _381_ vdd gnd AOI21X1
XFILL_1__869_ gnd vdd FILL
XFILL_0__1127_ gnd vdd FILL
X_630_ alu_sub \u_serv_alu.i_op_b\ _515_ vdd gnd OR2X2
XFILL_1__1041_ gnd vdd FILL
XFILL_1__678_ gnd vdd FILL
XFILL_0__1165_ gnd vdd FILL
XFILL_0__912_ gnd vdd FILL
X_915_ result_r[16] _53__bF$buf3 _67__bF$buf0 _7_ _6_ vdd 
+ gnd
+ AOI22X1
XFILL_0__721_ gnd vdd FILL
X_724_ exec_cnt[3] _159_ _157_ _156_ vdd gnd NAND3X1
XFILL_1__1135_ gnd vdd FILL
X_1202_ _221_ clk_bF$buf6 b_r[23] vdd gnd DFFPOSX1
XFILL_0__950_ gnd vdd FILL
X_953_ result_r[6] _72__bF$buf0 rst_n_bF$buf8 _551_ vdd gnd OAI21X1
X_1011_ _140_ _470_ _469_ _267_ vdd gnd AOI21X1
X_762_ cmd_last _123_ vdd gnd INVX1
XFILL_0__1068_ gnd vdd FILL
XFILL_0__815_ gnd vdd FILL
X_818_ _83_ _80_ _79_ _313_ vdd gnd AOI21X1
X_1240_ _262_ clk_bF$buf1 a_r[29] vdd gnd DFFPOSX1
XFILL_1__602_ gnd vdd FILL
X_991_ _167_ _482_ vdd gnd INVX1
XFILL_0__624_ gnd vdd FILL
X_627_ _514_ _506_ _517_ _518_ vdd gnd OAI21X1
XFILL_1__1038_ gnd vdd FILL
X_1105_ _393_ _392_ _394_ vdd gnd NAND2X1
XFILL_0__853_ gnd vdd FILL
X_856_ result_r[27] _72__bF$buf1 rst_n_bF$buf0 _50_ vdd gnd OAI21X1
XFILL_1__640_ gnd vdd FILL
XFILL_0__909_ gnd vdd FILL
XFILL_0__662_ gnd vdd FILL
X_665_ cmp_r _577_[5] vdd gnd INVX1
XFILL_1__1076_ gnd vdd FILL
XFILL_0__718_ gnd vdd FILL
X_1143_ _373_ _422_ _423_ _235_ vdd gnd AOI21X1
XFILL_0__891_ gnd vdd FILL
XFILL_1__925_ gnd vdd FILL
X_894_ _154__bF$buf1 result_r[18] _22_ vdd gnd AND2X2
XFILL_0__947_ gnd vdd FILL
XFILL_1__734_ gnd vdd FILL
X_1008_ _215_ _135_ _471_ _268_ vdd gnd AOI21X1
XFILL_0__756_ gnd vdd FILL
X_759_ send_cnt[0] _126_ rst_n_bF$buf0 _125_ vdd gnd OAI21X1
X_1181_ _182__bF$buf0 _448_ _222_ vdd gnd NOR2X1
XFILL_1__963_ gnd vdd FILL
X_1237_ _306_ clk_bF$buf1 a_r[19] vdd gnd DFFPOSX1
XFILL_0__985_ gnd vdd FILL
X_988_ _485_ _71_ _484_ vdd gnd NOR2X1
XFILL_0__1030_ gnd vdd FILL
X_1046_ _348_ _349_ _182__bF$buf4 _258_ vdd gnd AOI21X1
XFILL_0__794_ gnd vdd FILL
X_797_ _156_ _188_ _580_ _96_ vdd gnd AOI21X1
X_1275_ _230_ clk_bF$buf5 b_r[7] vdd gnd DFFPOSX1
XFILL_1__637_ gnd vdd FILL
XFILL_0__659_ gnd vdd FILL
X_1084_ _378_ _187__bF$buf3 _102_ _379_ vdd gnd OAI21X1
XFILL_1__866_ gnd vdd FILL
XFILL_0__1124_ gnd vdd FILL
XFILL_0__888_ gnd vdd FILL
XFILL78750x10950 gnd vdd FILL
XFILL_1__675_ gnd vdd FILL
XFILL_0__697_ gnd vdd FILL
XFILL_0__1162_ gnd vdd FILL
X_912_ result_r[13] _72__bF$buf2 rst_n_bF$buf5 _8_ vdd gnd OAI21X1
XFILL78750x3750 gnd vdd FILL
X_1178_ a_r[19] _446_ vdd gnd INVX1
X_721_ _160_ _159_ vdd gnd INVX1
XFILL_1__1132_ gnd vdd FILL
XFILL_1__769_ gnd vdd FILL
XFILL_0__1027_ gnd vdd FILL
X_950_ _185_ _556_ _555_ _281_ vdd gnd AOI21X1
XFILL_1__998_ gnd vdd FILL
XFILL_1__1170_ gnd vdd FILL
XFILL_0__1065_ gnd vdd FILL
XFILL_0__812_ gnd vdd FILL
X_815_ _83_ _82_ _81_ _314_ vdd gnd AOI21X1
XFILL_0__621_ gnd vdd FILL
X_624_ bool_op[1] _521_ vdd gnd INVX1
XFILL_1__1035_ gnd vdd FILL
X_1102_ _492_ _491_ _391_ vdd gnd AND2X2
XFILL_0__850_ gnd vdd FILL
X_853_ _154__bF$buf3 _53_ vdd gnd INVX8
XFILL_0__1159_ gnd vdd FILL
XFILL_0__906_ gnd vdd FILL
X_909_ _12_ _72__bF$buf2 _11_ _290_ vdd gnd AOI21X1
X_662_ exec_cnt[3] exec_cnt[4] _202_ vdd gnd NOR2X1
XFILL_0__715_ gnd vdd FILL
X_718_ a_r[16] _162_ _173_ _161_ vdd gnd MUX2X1
XFILL_1__1129_ gnd vdd FILL
X_1140_ _419_ _421_ _182__bF$buf2 _236_ vdd gnd AOI21X1
XFILL_1__922_ gnd vdd FILL
X_891_ result_r[22] _53__bF$buf1 _67__bF$buf3 _25_ _24_ vdd 
+ gnd
+ AOI22X1
XFILL_0__944_ gnd vdd FILL
X_947_ _558_ _72__bF$buf6 _557_ _282_ vdd gnd AOI21X1
XFILL_1__731_ gnd vdd FILL
X_1005_ cmd_op[1] _135_ rst_n_bF$buf4 _472_ vdd gnd OAI21X1
XFILL_0__753_ gnd vdd FILL
X_756_ _147_ _150_ _128_ vdd gnd NOR2X1
XFILL_1__1167_ gnd vdd FILL
XFILL_1__960_ gnd vdd FILL
XFILL_0__809_ gnd vdd FILL
X_1234_ _222_ clk_bF$buf1 a_r[18] vdd gnd DFFPOSX1
XFILL_0__982_ gnd vdd FILL
X_985_ _67__bF$buf4 _488_ _187__bF$buf0 _487_ vdd gnd AOI21X1
XFILL_0__618_ gnd vdd FILL
X_1043_ _346_ _187__bF$buf1 _163_ _347_ vdd gnd OAI21X1
XFILL_0__791_ gnd vdd FILL
X_794_ b_r[9] \u_serv_alu.i_en_bF$buf5\ _109_ _98_ vdd gnd AOI21X1
XFILL_0__847_ gnd vdd FILL
X_1272_ _323_ clk_bF$buf0 b_r[14] vdd gnd DFFPOSX1
XFILL_1__634_ gnd vdd FILL
XFILL_0__656_ gnd vdd FILL
X_659_ _205_ _576_ vdd gnd INVX1
X_1081_ a_r[1] _185_ rst_n_bF$buf2 _377_ vdd gnd OAI21X1
XFILL_1__863_ gnd vdd FILL
XFILL_0__1121_ gnd vdd FILL
X_1137_ _95_ _96_ exec_cnt[1] _419_ vdd gnd OAI21X1
XFILL_0__885_ gnd vdd FILL
XFILL_1__919_ gnd vdd FILL
X_888_ result_r[19] _72__bF$buf4 rst_n_bF$buf8 _26_ vdd gnd OAI21X1
XFILL_0__694_ gnd vdd FILL
XFILL_1__728_ gnd vdd FILL
X_697_ _181_ _180_ vdd gnd INVX4
X_1175_ _373_ _443_ _444_ _224_ vdd gnd AOI21X1
XFILL78450x43350 gnd vdd FILL
XFILL_0__979_ gnd vdd FILL
XFILL_1__766_ gnd vdd FILL
XFILL_0__1024_ gnd vdd FILL
XFILL_0__788_ gnd vdd FILL
XFILL_1__995_ gnd vdd FILL
X_1269_ _269_ clk_bF$buf9 op_r[1] vdd gnd DFFPOSX1
XFILL_0__597_ gnd vdd FILL
XFILL_0__1062_ gnd vdd FILL
X_812_ _84_ _174_ _83_ vdd gnd AND2X2
X_1078_ a_r[23] _373_ rst_n_bF$buf3 _375_ vdd gnd OAI21X1
XFILL_0__1118_ gnd vdd FILL
X_621_ _523_ _508_ _524_ vdd gnd NAND2X1
XFILL_1__1032_ gnd vdd FILL
X_850_ result_r[29] \u_serv_alu.i_en_bF$buf2\ _67__bF$buf4 _55_ vdd gnd NAND3X1
XFILL_0__1156_ gnd vdd FILL
XFILL_0__903_ gnd vdd FILL
X_906_ _154__bF$buf1 result_r[15] _13_ vdd gnd AND2X2
XFILL79050x36150 gnd vdd FILL
XFILL_0__712_ gnd vdd FILL
X_715_ a_r[17] _164_ vdd gnd INVX1
XFILL78750x18150 gnd vdd FILL
XFILL_0__1194_ gnd vdd FILL
XFILL_0__941_ gnd vdd FILL
X_944_ _154__bF$buf4 result_r[8] _559_ vdd gnd AND2X2
X_1002_ _476_ _475_ _474_ _271_ vdd gnd AOI21X1
XFILL_0__750_ gnd vdd FILL
X_753_ a_r[16] \u_serv_alu.i_en_bF$buf6\ _138_ _130_ vdd gnd AOI21X1
XFILL_1__1164_ gnd vdd FILL
XFILL_0__1059_ gnd vdd FILL
XFILL_0__806_ gnd vdd FILL
X_809_ _131_ _87_ _86_ _315_ vdd gnd AOI21X1
X_1231_ _303_ clk_bF$buf7 result_r[27] vdd gnd DFFPOSX1
X_982_ _492_ _491_ _493_ _490_ vdd gnd AOI21X1
XFILL_0__615_ gnd vdd FILL
X_618_ _526_ rd_sel[2] gnd _527_ vdd gnd AOI21X1
XFILL_1__1029_ gnd vdd FILL
X_1040_ a_r[4] _83_ rst_n_bF$buf2 _345_ vdd gnd OAI21X1
XFILL_1__822_ gnd vdd FILL
X_791_ b_r[16] \u_serv_alu.i_en_bF$buf4\ _101_ _100_ vdd gnd AOI21X1
XFILL_0__1097_ gnd vdd FILL
XFILL_0__844_ gnd vdd FILL
X_847_ result_r[30] \u_serv_alu.i_en_bF$buf2\ _67__bF$buf4 _57_ vdd gnd NAND3X1
XFILL_1__631_ gnd vdd FILL
XFILL_0__653_ gnd vdd FILL
X_656_ _578_[1] _578_[0] _206_ vdd gnd NOR2X1
XFILL_1__860_ gnd vdd FILL
XFILL_0__709_ gnd vdd FILL
X_1134_ a_r[28] \u_serv_alu.i_en_bF$buf4\ _138_ _417_ vdd gnd AOI21X1
XFILL_0__882_ gnd vdd FILL
XFILL_1__916_ gnd vdd FILL
X_885_ _30_ _72__bF$buf5 _29_ _296_ vdd gnd AOI21X1
XFILL_0__938_ gnd vdd FILL
XFILL_0__691_ gnd vdd FILL
X_694_ _185_ _184_ _183_ _333_ vdd gnd AOI21X1
XFILL_0__747_ gnd vdd FILL
X_1172_ _373_ _441_ _442_ _225_ vdd gnd AOI21X1
X_1228_ _259_ clk_bF$buf5 a_r[4] vdd gnd DFFPOSX1
XFILL_0__976_ gnd vdd FILL
XFILL78450x64950 gnd vdd FILL
X_979_ alu_cmp _493_ vdd gnd INVX1
XFILL_1__763_ gnd vdd FILL
XFILL_0__1021_ gnd vdd FILL
X_1037_ a_r[5] _83_ rst_n_bF$buf3 _343_ vdd gnd OAI21X1
XFILL_0__785_ gnd vdd FILL
XFILL_1__819_ gnd vdd FILL
X_788_ _140_ _104_ _103_ _319_ vdd gnd AOI21X1
XFILL_1__992_ gnd vdd FILL
X_1266_ _223_ clk_bF$buf7 load_cnt[1] vdd gnd DFFPOSX1
XFILL_0__594_ gnd vdd FILL
XFILL_1__628_ gnd vdd FILL
X_597_ _578_[1] debug_state[1] vdd gnd BUFX2
X_1075_ _124_ _85_ _180__bF$buf3 _372_ vdd gnd OAI21X1
XFILL_1__857_ gnd vdd FILL
XFILL_0__1115_ gnd vdd FILL
XFILL_0__879_ gnd vdd FILL
XFILL_0__688_ gnd vdd FILL
XFILL_1__895_ gnd vdd FILL
XFILL_0__1153_ gnd vdd FILL
XFILL_0__900_ gnd vdd FILL
X_903_ result_r[19] _53__bF$buf1 _67__bF$buf3 _16_ _15_ vdd 
+ gnd
+ AOI22X1
X_1169_ _373_ _439_ _440_ _226_ vdd gnd AOI21X1
X_712_ _168_ _187__bF$buf1 _167_ _166_ vdd gnd OAI21X1
XFILL79050x57750 gnd vdd FILL
XFILL_0__1018_ gnd vdd FILL
XFILL_0__1191_ gnd vdd FILL
X_941_ result_r[12] _53__bF$buf3 _67__bF$buf2 _562_ _561_ vdd 
+ gnd
+ AOI22X1
XFILL78750x72150 gnd vdd FILL
XFILL_1__989_ gnd vdd FILL
X_750_ load_cnt[1] load_cnt[0] _133_ vdd gnd NAND2X1
XFILL_1__1161_ gnd vdd FILL
XFILL_0__1056_ gnd vdd FILL
XFILL_0__803_ gnd vdd FILL
X_806_ _89_ _88_ vdd gnd INVX1
XFILL_0_BUFX2_insert0 gnd vdd FILL
XFILL_0_BUFX2_insert1 gnd vdd FILL
XFILL_0_BUFX2_insert2 gnd vdd FILL
XFILL_0_BUFX2_insert3 gnd vdd FILL
XFILL_0_BUFX2_insert4 gnd vdd FILL
XFILL_0_BUFX2_insert5 gnd vdd FILL
XFILL_0_BUFX2_insert6 gnd vdd FILL
XFILL_0_BUFX2_insert7 gnd vdd FILL
XFILL_0_BUFX2_insert8 gnd vdd FILL
XFILL_0__612_ gnd vdd FILL
X_615_ _512_ _507_ _514_ _529_ vdd gnd AOI21X1
XFILL_1__1026_ gnd vdd FILL
XFILL_0__1094_ gnd vdd FILL
XFILL_0__841_ gnd vdd FILL
X_844_ a_r[19] _60_ _173_ _59_ vdd gnd MUX2X1
XFILL_0__650_ gnd vdd FILL
X_653_ op_r[0] op_r[1] _208_ vdd gnd NOR2X1
XFILL_1__1064_ gnd vdd FILL
XFILL_0__706_ gnd vdd FILL
X_709_ _182__bF$buf0 _169_ _332_ vdd gnd NOR2X1
X_1131_ _414_ _415_ vdd gnd INVX1
XFILL_1__913_ gnd vdd FILL
X_882_ _154__bF$buf3 result_r[21] _31_ vdd gnd AND2X2
XFILL_0__1188_ gnd vdd FILL
XFILL_0__935_ gnd vdd FILL
X_938_ _567_ _564_ b_r[31] _563_ vdd gnd OAI21X1
XFILL78150x3750 gnd vdd FILL
X_691_ _578_[0] _186_ _187__bF$buf4 _185_ vdd gnd OAI21X1
XFILL_0__744_ gnd vdd FILL
X_747_ cmd_valid _206_ _135_ vdd gnd NAND2X1
XFILL_1__1158_ gnd vdd FILL
X_1225_ _300_ clk_bF$buf4 result_r[24] vdd gnd DFFPOSX1
XFILL_0__973_ gnd vdd FILL
X_976_ op_r[3] _497_ _210_ _496_ vdd gnd NAND3X1
XFILL_1__760_ gnd vdd FILL
XFILL_0__609_ gnd vdd FILL
X_1034_ a_r[6] _83_ rst_n_bF$buf7 _341_ vdd gnd OAI21X1
XFILL_0__782_ gnd vdd FILL
XFILL_1__816_ gnd vdd FILL
X_785_ _140_ _106_ _105_ _320_ vdd gnd AOI21X1
XFILL_0__838_ gnd vdd FILL
X_1263_ _319_ clk_bF$buf5 b_r[9] vdd gnd DFFPOSX1
XFILL_0__591_ gnd vdd FILL
XFILL_1__625_ gnd vdd FILL
X_594_ _576_ rsp_last vdd gnd BUFX2
XFILL_0__647_ gnd vdd FILL
X_1072_ cmd_a[2] a_r[3] _187__bF$buf2 _370_ vdd gnd MUX2X1
XFILL_1__854_ gnd vdd FILL
XFILL_0__1112_ gnd vdd FILL
X_1128_ _95_ _96_ exec_cnt[2] _412_ vdd gnd OAI21X1
XFILL_0__876_ gnd vdd FILL
X_879_ result_r[25] _53__bF$buf1 _67__bF$buf3 _34_ _33_ vdd 
+ gnd
+ AOI22X1
XFILL_1__663_ gnd vdd FILL
XFILL_0__685_ gnd vdd FILL
X_688_ _578_[0] _188_ vdd gnd INVX1
XFILL_1__1099_ gnd vdd FILL
XFILL_1__892_ gnd vdd FILL
XFILL_0__1150_ gnd vdd FILL
X_900_ result_r[16] _72__bF$buf6 rst_n_bF$buf5 _17_ vdd gnd OAI21X1
X_1166_ _94_ exec_cnt[0] _438_ _227_ vdd gnd AOI21X1
XFILL_1__948_ gnd vdd FILL
XCLKBUF1_insert9 clk clk_bF$buf9 vdd gnd CLKBUF1
XFILL_1__757_ gnd vdd FILL
XFILL_0__1015_ gnd vdd FILL
XFILL_0__779_ gnd vdd FILL
XFILL_1__986_ gnd vdd FILL
XFILL_0__588_ gnd vdd FILL
XFILL_0__1053_ gnd vdd FILL
XFILL_0__800_ gnd vdd FILL
X_803_ rst_n_bF$buf1 _91_ _90_ vdd gnd NAND2X1
X_1069_ _206_ _123_ _53__bF$buf4 _368_ vdd gnd AOI21X1
XFILL_0__1109_ gnd vdd FILL
X_612_ _531_ _529_ _532_ vdd gnd NAND2X1
XFILL_1__1023_ gnd vdd FILL
X_1298_ _278_ clk_bF$buf7 result_r[4] vdd gnd DFFPOSX1
XFILL_0__1091_ gnd vdd FILL
X_841_ _62_ _63_ _182__bF$buf2 _307_ vdd gnd AOI21X1
XFILL_1__889_ gnd vdd FILL
XFILL_0__1147_ gnd vdd FILL
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
X_650_ _216_ _214_ _211_ rd_sel[1] vdd gnd OAI21X1
XFILL79050x43350 gnd vdd FILL
XFILL_1__1061_ gnd vdd FILL
XFILL_1__698_ gnd vdd FILL
XFILL_0__703_ gnd vdd FILL
X_706_ cmd_b[0] _180__bF$buf2 _171_ vdd gnd NAND2X1
XFILL_1__1117_ gnd vdd FILL
XFILL78750x25350 gnd vdd FILL
XFILL_1__910_ gnd vdd FILL
XFILL_0__1185_ gnd vdd FILL
XFILL_0__932_ gnd vdd FILL
X_935_ _567_ _566_ vdd gnd INVX2
XFILL_0__741_ gnd vdd FILL
X_744_ a_r[12] \u_serv_alu.i_en_bF$buf4\ _138_ _137_ vdd gnd AOI21X1
XFILL_1__1155_ gnd vdd FILL
XBUFX2_insert60 _180_ _180__bF$buf1 vdd gnd BUFX2
XBUFX2_insert61 _180_ _180__bF$buf0 vdd gnd BUFX2
X_1222_ _237_ clk_bF$buf8 a_r[27] vdd gnd DFFPOSX1
XFILL_0__970_ gnd vdd FILL
X_973_ result_r[1] _72__bF$buf3 rst_n_bF$buf0 _498_ vdd gnd OAI21X1
XFILL_0__606_ gnd vdd FILL
X_609_ cmp_eq _535_ vdd gnd INVX1
X_1031_ _567_ _564_ a_r[29] _339_ vdd gnd OAI21X1
XFILL_1__813_ gnd vdd FILL
X_782_ _131_ _108_ _107_ _321_ vdd gnd AOI21X1
XFILL_0__1088_ gnd vdd FILL
XFILL_0__835_ gnd vdd FILL
X_838_ _185_ _65_ _64_ _308_ vdd gnd AOI21X1
X_1260_ _267_ clk_bF$buf0 a_r[10] vdd gnd DFFPOSX1
XFILL_1__622_ gnd vdd FILL
X_591_ _577_[2] rsp_flags[2] vdd gnd BUFX2
XFILL_0__644_ gnd vdd FILL
X_647_ _216_ _213_ vdd gnd INVX1
XFILL_1__1058_ gnd vdd FILL
X_1125_ _570_ _409_ _566_ _410_ vdd gnd NAND3X1
XFILL_0__873_ gnd vdd FILL
XFILL_1__907_ gnd vdd FILL
X_876_ result_r[22] _72__bF$buf4 rst_n_bF$buf8 _35_ vdd gnd OAI21X1
XFILL_1__660_ gnd vdd FILL
XFILL_0__929_ gnd vdd FILL
XFILL_0__682_ gnd vdd FILL
XFILL_1__716_ gnd vdd FILL
X_685_ _215_ _190_ _211_ cmp_sig vdd gnd OAI21X1
XFILL_1__1096_ gnd vdd FILL
XFILL_0__738_ gnd vdd FILL
X_1163_ a_r[20] _373_ rst_n_bF$buf2 _437_ vdd gnd OAI21X1
XFILL_1__945_ gnd vdd FILL
X_1219_ _297_ clk_bF$buf3 result_r[21] vdd gnd DFFPOSX1
XFILL_0__967_ gnd vdd FILL
XFILL_1__754_ gnd vdd FILL
XFILL_0__1012_ gnd vdd FILL
X_1028_ a_r[30] _336_ vdd gnd INVX1
XFILL_0__776_ gnd vdd FILL
X_779_ _171_ _109_ vdd gnd INVX1
XFILL_1__983_ gnd vdd FILL

.ends
.end
