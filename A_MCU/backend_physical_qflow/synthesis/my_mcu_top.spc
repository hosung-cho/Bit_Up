*SPICE netlist created from verilog structural netlist module my_mcu_top by vlog2Spice (qflow)
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

.subckt my_mcu_top vdd gnd i_clk_fast i_clk_sys_ext i_rst_n o_rf_sync o_rf_sck
+ o_rf_mosi i_rf_miso o_mem_sync o_mem_sck o_mem_mosi i_mem_miso 

XFILL132750x46950 gnd vdd FILL
XFILL_0__2026_ gnd vdd FILL
X_4132_ _1495_ i_clk_fast_bF$buf4 \u_mem_serial.shift_reg\[14] vdd gnd DFFPOSX1
X_3823_ _1335_ \gen_int_sys_clk.clk_sys_r_bF$buf6\ \u_cpu.ctrl.o_ibus_adr\[31] vdd gnd DFFPOSX1
X_3403_ \u_cpu.bufreg.data\[24] _391_ vdd gnd INVX1
XFILL_1__3145_ gnd vdd FILL
XFILL_0__2255_ gnd vdd FILL
XFILL_0_CLKBUF1_insert131 gnd vdd FILL
XFILL_0_CLKBUF1_insert133 gnd vdd FILL
XFILL_0_CLKBUF1_insert135 gnd vdd FILL
XFILL_0_CLKBUF1_insert137 gnd vdd FILL
XFILL_0_CLKBUF1_insert138 gnd vdd FILL
X_3632_ _557_ _190__bF$buf0 _554_ _556__bF$buf3 _1214_ vdd 
+ gnd
+ OAI22X1
X_3212_ _733__bF$buf2 _241_ _238_ _1318_ vdd gnd OAI21X1
XFILL_1__3374_ gnd vdd FILL
XBUFX2_insert120 _1052_ _1052__bF$buf1 vdd gnd BUFX2
XBUFX2_insert121 _1052_ _1052__bF$buf0 vdd gnd BUFX2
XBUFX2_insert122 _1040_ _1040__bF$buf4 vdd gnd BUFX2
XBUFX2_insert123 _1040_ _1040__bF$buf3 vdd gnd BUFX2
XBUFX2_insert124 _1040_ _1040__bF$buf2 vdd gnd BUFX2
XBUFX2_insert125 _1040_ _1040__bF$buf1 vdd gnd BUFX2
XBUFX2_insert126 _1040_ _1040__bF$buf0 vdd gnd BUFX2
XFILL_0__2484_ gnd vdd FILL
XFILL_0__2064_ gnd vdd FILL
X_4170_ _1305_ \gen_int_sys_clk.clk_sys_r_bF$buf32\ rreg0[1] vdd gnd DFFPOSX1
X_2903_ _1824__bF$buf5 _9_ _10_ _11_ vdd gnd OAI21X1
XFILL_0__3689_ gnd vdd FILL
XFILL_1__2225_ gnd vdd FILL
X_3861_ _1354_ \gen_int_sys_clk.clk_sys_r_bF$buf10\ \u_rf_if.write_wait\[2] vdd gnd DFFPOSX1
X_3441_ \u_cpu.bufreg.data\[5] _410_ vdd gnd INVX1
X_3021_ _100_ _99_ _1126__bF$buf6 _1368_ vdd gnd AOI21X1
XFILL_0__3901_ gnd vdd FILL
XFILL_1__1916_ gnd vdd FILL
XFILL_1_CLKBUF1_insert162 gnd vdd FILL
XFILL_0__2293_ gnd vdd FILL
XFILL_1_CLKBUF1_insert166 gnd vdd FILL
X_2712_ _1702_ _1697_ _1769_ vdd gnd NAND2X1
X_3917_ \u_cpu.state.cnt_r\[2] \u_cpu.state.cnt_r\[3] _1122_ vdd gnd NOR2X1
XFILL_1__2454_ gnd vdd FILL
XFILL_0__1984_ gnd vdd FILL
X_3670_ _576_ _190__bF$buf1 _575_ _556__bF$buf3 _1195_ vdd 
+ gnd
+ OAI22X1
X_3250_ rreg0[4] _268_ _733__bF$buf4 _269_ vdd gnd OAI21X1
XFILL_0__2769_ gnd vdd FILL
X_4035_ _1444_ \gen_int_sys_clk.clk_sys_r_bF$buf2\ \u_rf_if.write_wait\[5] vdd gnd DFFPOSX1
XFILL_0__3710_ gnd vdd FILL
XFILL_1_CLKBUF1_insert65 gnd vdd FILL
XFILL_1_CLKBUF1_insert69 gnd vdd FILL
XFILL_0_BUFX2_insert21 gnd vdd FILL
XFILL_0_BUFX2_insert23 gnd vdd FILL
XFILL_0_BUFX2_insert25 gnd vdd FILL
XFILL_0_BUFX2_insert27 gnd vdd FILL
XFILL_0_BUFX2_insert28 gnd vdd FILL
X_2941_ _39_ i_rst_n_bF$buf5 _1387_ vdd gnd AND2X2
X_2521_ _722_ _732_ _1613_ vdd gnd NAND2X1
X_2101_ _933_ _935_ _1058__bF$buf3 _932_ vdd gnd OAI21X1
X_3726_ ibus_pending_ack_bF$buf2 _614_ mem_ibus_ack _615_ vdd gnd OAI21X1
X_3306_ ibus_pending_rdt[25] _313_ vdd gnd INVX1
XFILL_1__2683_ gnd vdd FILL
XFILL_1__3048_ gnd vdd FILL
XFILL_0__2998_ gnd vdd FILL
X_2750_ _1803_ _1804_ vdd gnd INVX1
X_2330_ raddr[6] ren_bF$buf1 _732_ _722_ _721_ vdd 
+ gnd
+ AOI22X1
X_3955_ i_rst_n_bF$buf1 vdd _1153_ \gen_int_sys_clk.clk_sys_r_bF$buf33\ ibus_pending_rdt[6] vdd 
+ gnd
+ DFFSR
X_3535_ _440__bF$buf1 _484_ _485_ _1239_ vdd gnd AOI21X1
X_3115_ _1701_ _166_ _168_ vdd gnd NOR2X1
XFILL_1__3277_ gnd vdd FILL
X_4073_ _1259_ \gen_int_sys_clk.clk_sys_r_bF$buf21\ \u_cpu.bufreg.data\[7] vdd gnd DFFPOSX1
X_2806_ \u_rf_if.read_buf1\[7] \u_rf_if.read_buf1\[8] \u_rf_if.stream_active_bF$buf2\ _1843_ vdd gnd MUX2X1
XFILL_1__2128_ gnd vdd FILL
X_3764_ _1102_ _1100_ _1098_ vdd gnd OR2X2
X_3344_ _746_ _331_ _733__bF$buf1 _345_ vdd gnd NAND3X1
X_4129_ _1285_ \gen_int_sys_clk.clk_sys_r_bF$buf9\ rreg0[4] vdd gnd DFFPOSX1
XFILL_0__2196_ gnd vdd FILL
X_2615_ _1685_ _1686_ _1687_ vdd gnd AND2X2
XFILL_1__2357_ gnd vdd FILL
XBUFX2_insert30 i_rst_n i_rst_n_bF$buf1 vdd gnd BUFX2
XBUFX2_insert31 i_rst_n i_rst_n_bF$buf0 vdd gnd BUFX2
XBUFX2_insert32 _1062_ _1062__bF$buf4 vdd gnd BUFX2
XBUFX2_insert33 _1062_ _1062__bF$buf3 vdd gnd BUFX2
XBUFX2_insert34 _1062_ _1062__bF$buf2 vdd gnd BUFX2
XBUFX2_insert35 _1062_ _1062__bF$buf1 vdd gnd BUFX2
XBUFX2_insert36 _1062_ _1062__bF$buf0 vdd gnd BUFX2
XBUFX2_insert37 _12_ _12__bF$buf6 vdd gnd BUFX2
XBUFX2_insert38 _12_ _12__bF$buf5 vdd gnd BUFX2
XBUFX2_insert39 _12_ _12__bF$buf4 vdd gnd BUFX2
X_3993_ _1419_ \gen_int_sys_clk.clk_sys_r_bF$buf18\ \u_rf_if.read_buf1\[6] vdd gnd DFFPOSX1
X_3573_ mem_dbus_ack_bF$buf1 \u_cpu.bufreg2.dlo\[12] _513_ _514_ vdd gnd OAI21X1
X_3153_ \u_cpu.state.cnt_r\[3] _196_ vdd gnd INVX1
X_2844_ _1824__bF$buf1 _1870_ _1871_ _1872_ vdd gnd OAI21X1
X_2424_ \u_cpu.bufreg2.i_op_b_sel\ _672_ _1143_ _1518_ vdd gnd OAI21X1
X_2004_ _1058__bF$buf3 _1019_ _1020_ _1018_ vdd gnd OAI21X1
X_3629_ _193_ _556_ vdd gnd INVX8
X_3209_ ibus_pending_rdt[2] _239_ vdd gnd INVX1
XFILL_1__2586_ gnd vdd FILL
X_3382_ _376_ _733__bF$buf2 _377_ vdd gnd NAND2X1
X_4167_ _1512_ i_clk_fast_bF$buf0 \u_mem_serial.bit_count\[3] vdd gnd DFFPOSX1
XFILL_0__3422_ gnd vdd FILL
XFILL_0__3002_ gnd vdd FILL
X_2653_ _1058__bF$buf0 _1720_ _1719_ _1721_ vdd gnd OAI21X1
X_2233_ _816_ _1040__bF$buf1 _815_ vdd gnd NOR2X1
X_3858_ _1186_ \gen_int_sys_clk.clk_sys_r_bF$buf6\ \u_cpu.ctrl.o_ibus_adr\[29] vdd gnd DFFPOSX1
X_3438_ _408_ _407_ _661__bF$buf1 _1259_ vdd gnd MUX2X1
X_3018_ \u_rf_if.stream_active_bF$buf5\ _96_ _97_ _98_ vdd gnd OAI21X1
XFILL_1_BUFX2_insert91 gnd vdd FILL
XFILL_1_BUFX2_insert96 gnd vdd FILL
X_3191_ _733__bF$buf2 _225_ _226_ vdd gnd OR2X2
X_1924_ \u_mem_serial.bit_count\[2] _1092_ _1091_ _1090_ vdd gnd AOI21X1
XFILL_0__3651_ gnd vdd FILL
XFILL_0__3231_ gnd vdd FILL
X_2709_ i_rst_n_bF$buf0 _619_ _1766_ vdd gnd NAND2X1
X_2882_ \u_rf_if.read_buf1\[26] \u_rf_if.read_buf1\[27] \u_rf_if.stream_active_bF$buf2\ _1900_ vdd gnd MUX2X1
X_2462_ _1528_ _705_ _1555_ _1556_ vdd gnd AOI21X1
X_2042_ _1126__bF$buf3 _985_ _1501_ vdd gnd NOR2X1
X_3667_ \u_cpu.ctrl.o_ibus_adr\[7] _575_ vdd gnd INVX1
X_3247_ \u_cpu.decode.opcode\[2] \u_cpu.decode.opcode\[1] _266_ vdd gnd NOR2X1
XFILL_0__2922_ gnd vdd FILL
XFILL_0__2502_ gnd vdd FILL
XFILL_0__2099_ gnd vdd FILL
XFILL_0__3460_ gnd vdd FILL
X_2938_ \u_rf_if.read_buf0\[9] \u_rf_if.read_buf0\[10] \u_rf_if.stream_active_bF$buf3\ _37_ vdd gnd MUX2X1
X_2518_ \u_rf_serial.last_req_key\[8] _1608_ _1609_ _1610_ vdd gnd NAND3X1
X_2691_ \u_rf_if.stream_cnt\[1] _1751_ vdd gnd INVX1
X_2271_ \u_cpu.bufreg.i_right_shift_op\ _780_ vdd gnd INVX1
XFILL131850x86550 gnd vdd FILL
X_3896_ _1372_ \gen_int_sys_clk.clk_sys_r_bF$buf20\ \u_rf_if.read_buf0\[23] vdd gnd DFFPOSX1
X_3476_ \u_cpu.bufreg2.i_bytecnt\[1] \u_cpu.state.i_ctrl_misalign\ _435_ vdd gnd NOR2X1
X_3056_ \u_rf_if.write_wait\[5] _1688_ _123_ _124_ vdd gnd OAI21X1
XFILL_0__2731_ gnd vdd FILL
XFILL_0__2311_ gnd vdd FILL
X_1962_ \u_mem_serial.bit_count\[6] _1057_ _1056_ vdd gnd NOR2X1
X_2747_ _1801_ _1799_ _1766_ _1437_ vdd gnd AOI21X1
X_2327_ \u_rf_serial.tx_state\[1] _725_ _724_ vdd gnd NOR2X1
XFILL_1__2489_ gnd vdd FILL
X_2080_ _952_ _1040__bF$buf2 _951_ vdd gnd NOR2X1
X_3285_ ibus_pending_rdt[28] _295_ vdd gnd INVX1
XFILL_0__2960_ gnd vdd FILL
XFILL_0__2540_ gnd vdd FILL
XFILL_0_BUFX2_insert111 gnd vdd FILL
XFILL_0_BUFX2_insert113 gnd vdd FILL
XFILL_0_BUFX2_insert115 gnd vdd FILL
XFILL_0_BUFX2_insert116 gnd vdd FILL
XFILL_0_BUFX2_insert118 gnd vdd FILL
XFILL_0__3325_ gnd vdd FILL
X_2976_ _12__bF$buf2 _64_ _65_ _66_ vdd gnd OAI21X1
X_2556_ ren_bF$buf3 _712_ \u_rf_serial.req_seen\ _1647_ vdd gnd OAI21X1
X_2136_ _902_ _1062__bF$buf0 _901_ vdd gnd NOR2X1
X_3094_ _151_ _912_ ibus_pending_ack_bF$buf3 _152_ vdd gnd MUX2X1
XFILL_0__3554_ gnd vdd FILL
XFILL_0__3134_ gnd vdd FILL
X_2785_ _1827_ i_rst_n_bF$buf7 _1425_ vdd gnd AND2X2
X_2365_ \u_cpu.branch_op\ \u_cpu.bufreg2.i_op_b_sel\ _686_ vdd gnd NOR2X1
XFILL_0__2825_ gnd vdd FILL
XFILL_0__2405_ gnd vdd FILL
XFILL_0__3783_ gnd vdd FILL
XFILL_0__3363_ gnd vdd FILL
X_2594_ _1586_ _1596_ _1673_ vdd gnd NAND2X1
X_2174_ \u_cpu.bufreg.data\[23] \u_cpu.ctrl.o_ibus_adr\[23] _1052__bF$buf1 _867_ vdd gnd MUX2X1
X_3799_ _255_ _644_ _641_ _645_ vdd gnd NAND3X1
X_3379_ \u_cpu.branch_op\ _744_ _374_ vdd gnd NAND2X1
XFILL_0__2634_ gnd vdd FILL
XFILL_0__2214_ gnd vdd FILL
XFILL132150x36150 gnd vdd FILL
XFILL_0__3592_ gnd vdd FILL
X_3188_ ibus_pending_rdt[13] _223_ vdd gnd INVX1
XFILL_0__2863_ gnd vdd FILL
XFILL_0__2443_ gnd vdd FILL
XFILL_0__3228_ gnd vdd FILL
X_2879_ \u_rf_if.read_buf1\[24] _1824__bF$buf0 _1898_ vdd gnd NAND2X1
X_2459_ _1552_ _1551_ _1553_ vdd gnd NAND2X1
X_2039_ \u_cpu.bufreg.data\[8] \u_cpu.ctrl.o_ibus_adr\[8] _1052__bF$buf4 _987_ vdd gnd MUX2X1
X_3820_ _1333_ \gen_int_sys_clk.clk_sys_r_bF$buf0\ \u_cpu.state.cnt_r\[1] vdd gnd DFFPOSX1
X_3400_ _389_ _388_ _661__bF$buf4 _1278_ vdd gnd MUX2X1
XFILL_0__2672_ gnd vdd FILL
XFILL_0__3457_ gnd vdd FILL
XFILL_0__3037_ gnd vdd FILL
X_2688_ _756_ _1749_ _1126__bF$buf0 _1444_ vdd gnd AOI21X1
X_2268_ _785_ _784_ _783_ vdd gnd NOR2X1
XFILL_0__1943_ gnd vdd FILL
XFILL_0__2308_ gnd vdd FILL
XFILL132450x79350 gnd vdd FILL
X_1959_ \u_mem_serial.state\[0] _1059_ vdd gnd INVX1
X_2900_ _1903_ _1824__bF$buf3 _8_ _1397_ vdd gnd AOI21X1
XFILL_0__3686_ gnd vdd FILL
XFILL_0__3266_ gnd vdd FILL
XFILL_1__3427_ gnd vdd FILL
X_2497_ _1590_ _1573_ _1591_ vdd gnd NAND2X1
X_2077_ _954_ \u_mem_serial.shift_reg\[12] _1067__bF$buf1 _953_ vdd gnd MUX2X1
XFILL_0__2537_ gnd vdd FILL
XFILL_0__2117_ gnd vdd FILL
XFILL_1__3180_ gnd vdd FILL
XFILL_1_CLKBUF1_insert131 gnd vdd FILL
XFILL_1_CLKBUF1_insert135 gnd vdd FILL
XFILL_0__3495_ gnd vdd FILL
X_3914_ _1381_ \gen_int_sys_clk.clk_sys_r_bF$buf22\ \u_rf_if.read_buf0\[14] vdd gnd DFFPOSX1
XFILL_1__2031_ gnd vdd FILL
XFILL_1__3656_ gnd vdd FILL
XFILL_0__2766_ gnd vdd FILL
XFILL_0__2346_ gnd vdd FILL
X_4032_ _1442_ \gen_int_sys_clk.clk_sys_r_bF$buf22\ \u_rf_if.stream_active\ vdd gnd DFFPOSX1
X_1997_ _1126__bF$buf3 _1025_ _1506_ vdd gnd NOR2X1
X_3723_ _611_ _612_ _1126__bF$buf5 _1178_ vdd gnd AOI21X1
X_3303_ \u_cpu.immdec.gen_immdec_w_eq_1.imm30_25\[2] _1693__bF$buf1 _310_ _311_ vdd gnd OAI21X1
XFILL_1__2260_ gnd vdd FILL
XFILL_0__2995_ gnd vdd FILL
XFILL_0__2575_ gnd vdd FILL
XFILL132750x32550 gnd vdd FILL
X_3952_ _1399_ \gen_int_sys_clk.clk_sys_r_bF$buf42\ \u_rf_if.read_buf1\[26] vdd gnd DFFPOSX1
X_3532_ mem_dbus_ack_bF$buf1 _880_ _483_ vdd gnd NAND2X1
X_3112_ _165_ _166_ vdd gnd INVX1
X_4070_ _1462_ i_clk_fast_bF$buf3 \u_rf_serial.last_req_key\[2] vdd gnd DFFPOSX1
X_2803_ \u_rf_if.read_buf1\[5] _1824__bF$buf5 _1841_ vdd gnd NAND2X1
XFILL_0__3169_ gnd vdd FILL
X_3761_ _1096_ _1099_ _1104_ _1515_ vdd gnd AOI21X1
X_3341_ ibus_pending_ack_bF$buf2 _341_ _342_ vdd gnd NAND2X1
X_4126_ _1492_ i_clk_fast_bF$buf4 \u_mem_serial.shift_reg\[17] vdd gnd DFFPOSX1
XFILL_1__3083_ gnd vdd FILL
XFILL_0__3801_ gnd vdd FILL
X_2612_ \u_rf_if.write_wait\[4] _1684_ vdd gnd INVX1
XFILL_0__3398_ gnd vdd FILL
X_3817_ _1330_ \gen_int_sys_clk.clk_sys_r_bF$buf0\ \u_cpu.state.o_cnt\[2] vdd gnd DFFPOSX1
XFILL_1__3559_ gnd vdd FILL
X_3990_ _1221_ \gen_int_sys_clk.clk_sys_r_bF$buf29\ \u_cpu.bufreg2.dlo\[3] vdd gnd DFFPOSX1
X_3570_ \u_cpu.bufreg2.dlo\[12] _440__bF$buf5 _512_ vdd gnd NOR2X1
X_3150_ i_rst_n_bF$buf10 \u_cpu.state.cnt_r\[0] _1333_ vdd gnd AND2X2
XFILL_0__2669_ gnd vdd FILL
XFILL_0__2249_ gnd vdd FILL
XFILL_0__3610_ gnd vdd FILL
X_2841_ _1869_ i_rst_n_bF$buf9 _1411_ vdd gnd AND2X2
X_2421_ _1145_ _1180_ _1139_ _1477_ vdd gnd OAI21X1
X_2001_ _1022_ _1062__bF$buf1 _1021_ vdd gnd NOR2X1
X_3626_ _551_ _441_ _553_ _552_ _1216_ vdd 
+ gnd
+ AOI22X1
X_3206_ _691_ _236_ _733__bF$buf0 _1319_ vdd gnd MUX2X1
XFILL_1__2163_ gnd vdd FILL
XFILL_1__3788_ gnd vdd FILL
XFILL_0__2898_ gnd vdd FILL
XFILL_0__2478_ gnd vdd FILL
X_4164_ _1302_ \gen_int_sys_clk.clk_sys_r_bF$buf25\ \u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20\[2] vdd gnd DFFPOSX1
XFILL131550x64950 gnd vdd FILL
X_2650_ _1717_ _1062__bF$buf3 _1718_ vdd gnd NOR2X1
X_2230_ _818_ \u_mem_serial.shift_reg\[29] _1067__bF$buf4 _817_ vdd gnd MUX2X1
X_3855_ _1351_ \gen_int_sys_clk.clk_sys_r_bF$buf24\ \u_rf_if.o_waddr\[0] vdd gnd DFFPOSX1
X_3435_ \u_cpu.bufreg.data\[8] _407_ vdd gnd INVX1
X_3015_ _95_ _94_ _1126__bF$buf6 _1369_ vdd gnd AOI21X1
XFILL_1__2392_ gnd vdd FILL
XFILL_1_BUFX2_insert61 gnd vdd FILL
X_1921_ _1093_ _1095_ _1126__bF$buf5 _1514_ vdd gnd AOI21X1
X_2706_ _1763_ _1764_ vdd gnd INVX1
XFILL_0__1978_ gnd vdd FILL
X_3664_ _573_ _190__bF$buf0 _572_ _556__bF$buf2 _1198_ vdd 
+ gnd
+ OAI22X1
X_3244_ _263_ _1693__bF$buf0 _264_ vdd gnd NAND2X1
X_4029_ _1238_ \gen_int_sys_clk.clk_sys_r_bF$buf36\ \u_cpu.bufreg2.dlo\[20] vdd gnd DFFPOSX1
XFILL_0__3704_ gnd vdd FILL
X_2935_ \u_rf_if.read_buf0\[7] _12__bF$buf1 _35_ vdd gnd NAND2X1
X_2515_ _1602_ _1606_ _1607_ vdd gnd NOR2X1
X_3893_ _1138_ i_clk_fast_bF$buf2 \gen_int_sys_clk.clk_div\[2] vdd gnd DFFPOSX1
X_3473_ _753_ _432_ _429_ _433_ vdd gnd AOI21X1
X_3053_ _1704__bF$buf0 _121_ _122_ _1358_ vdd gnd AOI21X1
XFILL_0__3513_ gnd vdd FILL
X_2744_ \u_rf_if.read_buf0\[31] _1798_ _1799_ vdd gnd NAND2X1
X_2324_ _728_ _727_ vdd gnd INVX1
X_3949_ _1208_ \gen_int_sys_clk.clk_sys_r_bF$buf34\ \u_cpu.ctrl.o_ibus_adr\[19] vdd gnd DFFPOSX1
X_3529_ mem_dbus_ack_bF$buf5 \u_cpu.bufreg2.dlo\[23] _480_ _481_ vdd gnd OAI21X1
X_3109_ _163_ _1691_ _1343_ vdd gnd NOR2X1
XFILL_1__2066_ gnd vdd FILL
X_3282_ \u_cpu.immdec.gen_immdec_w_eq_1.imm30_25\[5] _1693__bF$buf2 _292_ _293_ vdd gnd OAI21X1
X_4067_ _1256_ \gen_int_sys_clk.clk_sys_r_bF$buf1\ \u_cpu.bufreg.data\[4] vdd gnd DFFPOSX1
XFILL_0__3742_ gnd vdd FILL
X_2973_ _63_ i_rst_n_bF$buf4 _1379_ vdd gnd AND2X2
X_2553_ _1595_ _1645_ vdd gnd INVX1
X_2133_ \u_mem_serial.shift_reg\[18] _904_ vdd gnd INVX1
X_3758_ _617_ _1041_ _615__bF$buf4 _1148_ vdd gnd MUX2X1
X_3338_ _339_ _1290_ vdd gnd INVX1
XFILL_1__2295_ gnd vdd FILL
X_3091_ _149_ _146_ _1126__bF$buf1 _1347_ vdd gnd AOI21X1
X_2609_ _1680_ _1681_ _1126__bF$buf7 _1455_ vdd gnd AOI21X1
X_2782_ \u_rf_if.read_buf1\[1] \u_rf_if.read_buf1\[2] \u_rf_if.stream_active_bF$buf6\ _1825_ vdd gnd MUX2X1
X_2362_ _690_ _689_ vdd gnd INVX1
X_3987_ _1416_ \gen_int_sys_clk.clk_sys_r_bF$buf42\ \u_rf_if.read_buf1\[9] vdd gnd DFFPOSX1
X_3567_ _440__bF$buf3 _508_ _509_ _1231_ vdd gnd AOI21X1
X_3147_ \u_cpu.ctrl.i_jump\ _192_ _193_ _194_ vdd gnd OAI21X1
XFILL_0__3607_ gnd vdd FILL
X_2838_ \u_rf_if.read_buf1\[15] \u_rf_if.read_buf1\[16] \u_rf_if.stream_active_bF$buf7\ _1867_ vdd gnd MUX2X1
X_2418_ _1146_ _1180_ vdd gnd INVX1
XFILL_1__3101_ gnd vdd FILL
X_2591_ _1595_ _1594_ \u_rf_serial.last_req_key\[2] _1671_ vdd gnd OAI21X1
X_2171_ \u_mem_serial.active_we_bF$buf0\ \u_cpu.bufreg2.dlo\[23] _870_ vdd gnd NAND2X1
X_3796_ \u_mem_serial.shift_reg\[1] \u_mem_serial.shift_reg\[0] _642_ vdd gnd NAND2X1
X_3376_ \u_cpu.decode.opcode\[2] \u_cpu.decode.opcode\[1] _370_ _371_ vdd gnd OAI21X1
XFILL_0__2211_ gnd vdd FILL
XFILL_0__3416_ gnd vdd FILL
X_2647_ \u_mem_serial.shift_reg\[30] _1715_ vdd gnd INVX1
X_2227_ _821_ _823_ _1058__bF$buf6 _820_ vdd gnd OAI21X1
XFILL132150x90150 gnd vdd FILL
XFILL_1__3330_ gnd vdd FILL
X_3185_ _1693__bF$buf0 _203_ _221_ vdd gnd OR2X2
XFILL_0__2440_ gnd vdd FILL
XFILL_0__2020_ gnd vdd FILL
X_1918_ \u_mem_serial.bit_count\[0] _1098_ \u_mem_serial.bit_count\[1] _1095_ vdd gnd OAI21X1
XFILL_0__3645_ gnd vdd FILL
X_2876_ _1824__bF$buf0 _1894_ _1895_ _1896_ vdd gnd OAI21X1
X_2456_ _1549_ _1543_ _1550_ vdd gnd NOR2X1
X_2036_ \u_mem_serial.active_we_bF$buf1\ \u_cpu.bufreg2.dlo\[8] _990_ vdd gnd NAND2X1
XFILL132450x111750 gnd vdd FILL
XFILL_1__2198_ gnd vdd FILL
XFILL_0__2916_ gnd vdd FILL
X_4199_ _1327_ \gen_int_sys_clk.clk_sys_r_bF$buf0\ \u_cpu.state.cnt_r\[3] vdd gnd DFFPOSX1
XFILL_1__2410_ gnd vdd FILL
X_2685_ \u_rf_if.wen0_r\ _738_ _732_ _1748_ vdd gnd MUX2X1
X_2265_ _787_ \u_cpu.decode.opcode\[2] \u_cpu.state.init_done\ _786_ vdd gnd AOI21X1
XFILL_0__1940_ gnd vdd FILL
XFILL_0__2725_ gnd vdd FILL
X_1956_ _1065_ _1063_ _1072_ _1062_ vdd gnd NAND3X1
XFILL_1__3004_ gnd vdd FILL
X_2494_ _723_ _1582_ _1587_ _1588_ vdd gnd OAI21X1
X_2074_ _957_ _959_ _1058__bF$buf3 _956_ vdd gnd OAI21X1
X_3699_ _590_ _1069_ _591_ vdd gnd NOR2X1
X_3279_ ibus_pending_ack_bF$buf0 _289_ _290_ vdd gnd NAND2X1
XFILL_0__2954_ gnd vdd FILL
XFILL_0__3739_ gnd vdd FILL
XFILL_0__3319_ gnd vdd FILL
XFILL132450x10950 gnd vdd FILL
XFILL_0__3072_ gnd vdd FILL
X_3911_ _1199_ \gen_int_sys_clk.clk_sys_r_bF$buf21\ \u_cpu.ctrl.o_ibus_adr\[10] vdd gnd DFFPOSX1
XFILL_1__3233_ gnd vdd FILL
X_3088_ ibus_pending_rdt[16] _147_ vdd gnd INVX1
XFILL_0__3548_ gnd vdd FILL
X_1994_ \u_cpu.bufreg.data\[3] \u_cpu.ctrl.o_ibus_adr\[3] _1052__bF$buf2 _1027_ vdd gnd MUX2X1
X_2779_ i_rst_n_bF$buf2 _1822_ _1823_ vdd gnd NAND2X1
X_2359_ \u_cpu.ctrl.pc_plus_offset_cy_r_w\ _692_ vdd gnd INVX1
X_3720_ _1540_ _1539_ _1179_ vdd gnd NAND2X1
X_3300_ ibus_pending_ack_bF$buf3 _307_ _308_ vdd gnd NAND2X1
XFILL_0__2819_ gnd vdd FILL
XFILL_1__3462_ gnd vdd FILL
XFILL_0__2572_ gnd vdd FILL
XFILL_0__2152_ gnd vdd FILL
XFILL_0__3777_ gnd vdd FILL
XFILL_1__2313_ gnd vdd FILL
X_2588_ _1595_ _1594_ \u_rf_serial.last_req_key\[1] _1669_ vdd gnd OAI21X1
X_2168_ _1126__bF$buf4 _873_ _1487_ vdd gnd NOR2X1
XFILL131850x122550 gnd vdd FILL
XFILL_0__2628_ gnd vdd FILL
XFILL_1__3691_ gnd vdd FILL
XFILL_0__2381_ gnd vdd FILL
X_2800_ _1824__bF$buf5 _1837_ _1838_ _1839_ vdd gnd OAI21X1
XFILL_1__2542_ gnd vdd FILL
X_2397_ _754_ _665_ _649_ vdd gnd NAND2X1
XFILL_0__2857_ gnd vdd FILL
X_4123_ _1282_ \gen_int_sys_clk.clk_sys_r_bF$buf9\ rreg1[4] vdd gnd DFFPOSX1
X_3814_ _634_ _653_ _1128_ vdd gnd NOR2X1
XFILL_1__2771_ gnd vdd FILL
XFILL_1__3136_ gnd vdd FILL
X_3623_ \u_cpu.bufreg2.cnt_next\[6] _551_ vdd gnd INVX1
X_3203_ \u_mem_serial.shift_reg\[4] ibus_pending_ack_bF$buf4 _234_ _235_ vdd gnd OAI21X1
XFILL_1__3365_ gnd vdd FILL
XFILL_0__2055_ gnd vdd FILL
X_4161_ _1509_ i_clk_fast_bF$buf6 \u_mem_serial.shift_reg\[0] vdd gnd DFFPOSX1
XFILL_1__2216_ gnd vdd FILL
X_3852_ _1128_ i_clk_fast_bF$buf2 \gen_int_sys_clk.clk_div\[3] vdd gnd DFFPOSX1
X_3432_ _405_ _404_ _661__bF$buf1 _1262_ vdd gnd MUX2X1
X_3012_ \u_rf_if.stream_active_bF$buf6\ _91_ _92_ _93_ vdd gnd OAI21X1
XFILL_1_BUFX2_insert30 gnd vdd FILL
XFILL_1_BUFX2_insert34 gnd vdd FILL
XFILL_1_BUFX2_insert39 gnd vdd FILL
XFILL_1__3594_ gnd vdd FILL
XFILL_0__2284_ gnd vdd FILL
X_2703_ \u_rf_if.stream_active_bF$buf1\ \u_rf_if.ready_pulse\ _1761_ vdd gnd NOR2X1
X_3908_ _1378_ \gen_int_sys_clk.clk_sys_r_bF$buf44\ \u_rf_if.read_buf0\[17] vdd gnd DFFPOSX1
XFILL_1__2445_ gnd vdd FILL
X_3661_ \u_cpu.ctrl.o_ibus_adr\[10] _572_ vdd gnd INVX1
X_3241_ \u_cpu.bufreg.i_sh_signed\ _261_ vdd gnd INVX1
X_4026_ _1438_ \gen_int_sys_clk.clk_sys_r_bF$buf38\ \u_rf_if.read_buf1\[30] vdd gnd DFFPOSX1
XFILL_0__2093_ gnd vdd FILL
X_2932_ _12__bF$buf1 _31_ _32_ _33_ vdd gnd OAI21X1
X_2512_ _1577_ _732_ _1604_ vdd gnd NAND2X1
X_3717_ _607_ _593_ _609_ vdd gnd NAND2X1
XFILL_1__2674_ gnd vdd FILL
XFILL_1__3039_ gnd vdd FILL
X_3890_ _1369_ \gen_int_sys_clk.clk_sys_r_bF$buf18\ \u_rf_if.read_buf0\[26] vdd gnd DFFPOSX1
X_3470_ _427_ _423_ _431_ vdd gnd NAND2X1
X_3050_ _119_ _1704__bF$buf0 _120_ _1359_ vdd gnd AOI21X1
XFILL_0__2989_ gnd vdd FILL
XFILL_0__3510_ gnd vdd FILL
X_2741_ \u_rf_if.read_buf1\[31] \u_rf_if.stream_active_bF$buf5\ _1772_ _1796_ _1797_ vdd 
+ gnd
+ AOI22X1
X_2321_ raddr[7] ren_bF$buf0 _732_ _731_ _730_ vdd 
+ gnd
+ AOI22X1
X_3946_ _1396_ \gen_int_sys_clk.clk_sys_r_bF$buf42\ \u_rf_if.read_buf1\[29] vdd gnd DFFPOSX1
X_3526_ _478_ \u_mem_serial.shift_reg\[24] _761_ _479_ vdd gnd MUX2X1
X_3106_ _1699_ _158_ _161_ vdd gnd NOR2X1
XFILL_1__3268_ gnd vdd FILL
X_4064_ _1459_ i_clk_fast_bF$buf3 \u_rf_serial.last_req_key\[5] vdd gnd DFFPOSX1
XFILL_1__2119_ gnd vdd FILL
X_2970_ \u_rf_if.read_buf0\[17] \u_rf_if.read_buf0\[18] \u_rf_if.stream_active_bF$buf3\ _61_ vdd gnd MUX2X1
X_2550_ _1634_ _1641_ _1642_ vdd gnd NOR2X1
X_2130_ _1058__bF$buf1 _907_ _908_ _906_ vdd gnd OAI21X1
X_3755_ _616_ _1024_ _615__bF$buf0 _1150_ vdd gnd MUX2X1
X_3335_ _336_ _1693__bF$buf3 _337_ vdd gnd NAND2X1
XFILL_1__3497_ gnd vdd FILL
XFILL_0__2187_ gnd vdd FILL
X_2606_ _717_ _1596_ _1679_ _1456_ vdd gnd AOI21X1
XFILL_1__2348_ gnd vdd FILL
X_3984_ _1218_ \gen_int_sys_clk.clk_sys_r_bF$buf33\ \u_cpu.bufreg2.dlo\[0] vdd gnd DFFPOSX1
X_3564_ mem_dbus_ack_bF$buf4 _944_ _507_ vdd gnd NAND2X1
X_3144_ _621_ \u_cpu.ctrl.i_jump\ _191_ vdd gnd AND2X2
X_2835_ \u_rf_if.read_buf1\[13] _1824__bF$buf4 _1865_ vdd gnd NAND2X1
X_2415_ _742_ _673_ _675_ _1144_ vdd gnd NAND3X1
XFILL_1__2577_ gnd vdd FILL
X_3793_ _225_ _263_ _638_ _639_ vdd gnd NAND3X1
X_3373_ _367_ _286_ _368_ _363_ _1284_ vdd 
+ gnd
+ AOI22X1
X_4158_ _1299_ \gen_int_sys_clk.clk_sys_r_bF$buf9\ \u_cpu.immdec.gen_immdec_w_eq_1.imm30_25\[4] vdd gnd DFFPOSX1
XFILL_0__3413_ gnd vdd FILL
X_2644_ _1112_ _1111_ _1712_ _1713_ vdd gnd AOI21X1
X_2224_ _824_ _1040__bF$buf1 _823_ vdd gnd NOR2X1
X_3849_ _1348_ \gen_int_sys_clk.clk_sys_r_bF$buf32\ \u_rf_if.rreg0_latched\[0] vdd gnd DFFPOSX1
X_3429_ \u_cpu.bufreg.data\[11] _404_ vdd gnd INVX1
X_3009_ _90_ i_rst_n_bF$buf0 _1370_ vdd gnd AND2X2
X_3182_ _204_ _203_ _219_ _1326_ vdd gnd OAI21X1
X_1915_ _1907_ o_mem_sync vdd gnd BUFX2
XFILL_1_BUFX2_insert3 gnd vdd FILL
XFILL_1_BUFX2_insert8 gnd vdd FILL
XFILL_0__3642_ gnd vdd FILL
XFILL_0__3222_ gnd vdd FILL
X_2873_ _1893_ i_rst_n_bF$buf9 _1403_ vdd gnd AND2X2
X_2453_ \u_cpu.ctrl.pc\ \u_cpu.ctrl.pc_plus_4_cy_r_w\ _1547_ vdd gnd NOR2X1
X_2033_ _1126__bF$buf2 _993_ _1502_ vdd gnd NOR2X1
X_3658_ _570_ _190__bF$buf3 _569_ _556__bF$buf0 _1201_ vdd 
+ gnd
+ OAI22X1
X_3238_ _688_ _1693__bF$buf5 _176_ _1310_ vdd gnd OAI21X1
XFILL_0__2913_ gnd vdd FILL
XFILL131850x93750 gnd vdd FILL
X_4196_ _1325_ \gen_int_sys_clk.clk_sys_r_bF$buf43\ \u_cpu.state.init_done\ vdd gnd DFFPOSX1
XFILL_0__3451_ gnd vdd FILL
X_2929_ _30_ i_rst_n_bF$buf8 _1390_ vdd gnd AND2X2
X_2509_ _711_ _795_ \u_rf_serial.launch_pending\ _1601_ vdd gnd AOI21X1
XFILL_1__3612_ gnd vdd FILL
X_2682_ _701_ _1745_ _1742_ _1746_ vdd gnd OAI21X1
X_2262_ \u_cpu.decode.co_mem_word\ _789_ vdd gnd INVX2
X_3887_ _1193_ \gen_int_sys_clk.clk_sys_r_bF$buf23\ \u_cpu.ctrl.o_ibus_adr\[4] vdd gnd DFFPOSX1
X_3467_ _423_ _427_ _428_ _429_ vdd gnd AOI21X1
X_3047_ _116_ \u_rf_if.issue_sel\ _117_ _118_ vdd gnd AOI21X1
XFILL_0__2722_ gnd vdd FILL
XFILL_0__2302_ gnd vdd FILL
X_1953_ \u_mem_serial.bit_count\[6] _1079_ _1065_ vdd gnd NOR2X1
XFILL_0__3680_ gnd vdd FILL
X_2738_ \u_rf_if.stream_active_bF$buf5\ _1774_ _1793_ _1794_ vdd gnd OAI21X1
X_2318_ _755_ _734_ _737_ _733_ vdd gnd NAND3X1
X_2491_ raddr[3] _795_ _1584_ _1585_ vdd gnd OAI21X1
X_2071_ _960_ _1040__bF$buf3 _959_ vdd gnd NOR2X1
X_3696_ _1086_ _1077_ _588_ vdd gnd NAND2X1
X_3276_ _686_ _1118_ _287_ vdd gnd AND2X2
XFILL_0__2951_ gnd vdd FILL
XFILL_0__2531_ gnd vdd FILL
X_2967_ \u_rf_if.read_buf0\[15] _12__bF$buf3 _59_ vdd gnd NAND2X1
X_2547_ _731_ _732_ _1639_ vdd gnd NAND2X1
X_2127_ _910_ _1062__bF$buf0 _909_ vdd gnd NOR2X1
XFILL132750x111750 gnd vdd FILL
X_3085_ _144_ _1693__bF$buf1 _145_ vdd gnd NAND2X1
XFILL_0__2760_ gnd vdd FILL
XFILL_0__3545_ gnd vdd FILL
XFILL_0__3125_ gnd vdd FILL
X_1991_ \u_mem_serial.active_we_bF$buf4\ \u_cpu.bufreg2.dlo\[3] _1030_ vdd gnd NAND2X1
X_2776_ \u_rf_if.stream_cnt\[2] _1753_ i_rst_n_bF$buf2 _1821_ vdd gnd OAI21X1
X_2356_ _696_ _702_ _695_ vdd gnd NAND2X1
X_4099_ _1479_ i_clk_fast_bF$buf5 \u_mem_serial.shift_reg\[30] vdd gnd DFFPOSX1
XFILL_0__3774_ gnd vdd FILL
XFILL_0__3354_ gnd vdd FILL
XFILL132150x43350 gnd vdd FILL
XFILL_1__3515_ gnd vdd FILL
X_2585_ _1595_ _1594_ \u_rf_serial.last_req_key\[0] _1667_ vdd gnd OAI21X1
X_2165_ \u_cpu.bufreg.data\[22] \u_cpu.ctrl.o_ibus_adr\[22] _1052__bF$buf3 _875_ vdd gnd MUX2X1
XFILL_0__2625_ gnd vdd FILL
XFILL_0__2205_ gnd vdd FILL
XFILL_0__3583_ gnd vdd FILL
XFILL_1__3744_ gnd vdd FILL
X_2394_ _658_ _657_ vdd gnd INVX1
X_3599_ _440__bF$buf0 _532_ _533_ _1223_ vdd gnd AOI21X1
X_3179_ i_rst_n_bF$buf6 \u_cpu.branch_op\ _217_ vdd gnd NAND2X1
XFILL_0__2854_ gnd vdd FILL
XFILL_0__2434_ gnd vdd FILL
X_4120_ _1489_ i_clk_fast_bF$buf4 \u_mem_serial.shift_reg\[20] vdd gnd DFFPOSX1
X_3811_ _1116_ _1115_ vdd gnd INVX1
XFILL_0__2663_ gnd vdd FILL
XFILL_0__3028_ gnd vdd FILL
XFILL132450x86550 gnd vdd FILL
X_2679_ \u_rf_if.wdata0_next_phase\ _1742_ _1743_ vdd gnd NOR2X1
X_2259_ \u_cpu.bufreg.i_right_shift_op\ \u_cpu.decode.co_mem_word\ _792_ vdd gnd NAND2X1
XFILL_0__1934_ gnd vdd FILL
X_3620_ mem_dbus_ack_bF$buf6 \u_cpu.bufreg.i_shamt\[0] _548_ _549_ vdd gnd OAI21X1
X_3200_ _742_ _232_ _733__bF$buf5 _1321_ vdd gnd MUX2X1
XFILL_0__2892_ gnd vdd FILL
XFILL_0__3257_ gnd vdd FILL
XFILL_1__3418_ gnd vdd FILL
X_2488_ raddr[2] _795_ _1581_ _1582_ vdd gnd OAI21X1
X_2068_ _962_ \u_mem_serial.shift_reg\[11] _1067__bF$buf0 _961_ vdd gnd MUX2X1
XFILL_0__2528_ gnd vdd FILL
XFILL_0__2108_ gnd vdd FILL
XFILL_1__3171_ gnd vdd FILL
X_2700_ i_rst_n_bF$buf7 \u_rf_if.issue_idx\[5] \u_rf_if.prefetch_active\ _1759_ vdd gnd NAND3X1
XFILL_0__3486_ gnd vdd FILL
XFILL_0__3066_ gnd vdd FILL
X_3905_ \u_cpu.decode.opcode\[2] _1118_ vdd gnd INVX2
XFILL_1__2022_ gnd vdd FILL
XFILL_1__3647_ gnd vdd FILL
X_2297_ _1121_ _754_ vdd gnd INVX2
XFILL_0__1972_ gnd vdd FILL
XFILL_0__2757_ gnd vdd FILL
XFILL_0__2337_ gnd vdd FILL
X_4023_ _1235_ \gen_int_sys_clk.clk_sys_r_bF$buf36\ \u_cpu.bufreg2.dlo\[17] vdd gnd DFFPOSX1
XFILL_0__2090_ gnd vdd FILL
X_1988_ _1126__bF$buf3 _1033_ _1507_ vdd gnd NOR2X1
XFILL_0__3295_ gnd vdd FILL
X_3714_ \u_mem_serial.shift_reg\[31] _591_ _605_ _606_ vdd gnd OAI21X1
XFILL_1__2251_ gnd vdd FILL
XFILL_0__2986_ gnd vdd FILL
XFILL_0__2566_ gnd vdd FILL
XFILL_1__2727_ gnd vdd FILL
X_3943_ i_rst_n_bF$buf6 vdd _1150_ \gen_int_sys_clk.clk_sys_r_bF$buf33\ ibus_pending_rdt[3] vdd 
+ gnd
+ DFFSR
X_3523_ \u_cpu.bufreg.i_shamt\[0] _441_ _476_ vdd gnd NAND2X1
X_3103_ \u_rf_if.issue_idx\[5] _1683_ _1702_ _159_ vdd gnd OAI21X1
XFILL_1__2480_ gnd vdd FILL
XFILL_0__2795_ gnd vdd FILL
X_4061_ _1253_ \gen_int_sys_clk.clk_sys_r_bF$buf43\ \u_cpu.bufreg.data\[0] vdd gnd DFFPOSX1
XFILL_1__2956_ gnd vdd FILL
X_3752_ _230_ _1008_ _615__bF$buf4 _1152_ vdd gnd MUX2X1
X_3332_ ibus_pending_rdt[10] _334_ vdd gnd INVX1
XFILL132450x18150 gnd vdd FILL
X_4117_ _1279_ \gen_int_sys_clk.clk_sys_r_bF$buf43\ \u_cpu.bufreg.data\[27] vdd gnd DFFPOSX1
XFILL_1__3074_ gnd vdd FILL
X_2603_ \u_rf_serial.last_req_key\[7] _1596_ i_rst_n_bF$buf10 _1678_ vdd gnd OAI21X1
XFILL_0__3389_ gnd vdd FILL
X_3808_ \u_rf_if.o_waddr\[2] \u_rf_if.o_waddr\[1] _650_ _651_ vdd gnd NAND3X1
X_3981_ _1413_ \gen_int_sys_clk.clk_sys_r_bF$buf30\ \u_rf_if.read_buf1\[12] vdd gnd DFFPOSX1
X_3561_ mem_dbus_ack_bF$buf0 \u_cpu.bufreg2.dlo\[15] _504_ _505_ vdd gnd OAI21X1
X_3141_ _188_ _185_ _1126__bF$buf1 _1336_ vdd gnd AOI21X1
XFILL_0__3601_ gnd vdd FILL
X_2832_ _1824__bF$buf4 _1861_ _1862_ _1863_ vdd gnd OAI21X1
X_2412_ _1119_ _704_ _1141_ vdd gnd NAND2X1
XFILL_0__3198_ gnd vdd FILL
X_3617_ mem_dbus_ack_bF$buf5 \u_cpu.bufreg2.dlo\[1] _546_ _547_ vdd gnd OAI21X1
XFILL_1__2154_ gnd vdd FILL
XFILL_1__3779_ gnd vdd FILL
X_3790_ _236_ _1693__bF$buf3 _636_ vdd gnd NAND2X1
X_3370_ _362_ _270_ _365_ _366_ _1285_ vdd 
+ gnd
+ AOI22X1
XFILL_0__2889_ gnd vdd FILL
XFILL_0__2469_ gnd vdd FILL
XFILL_0__2049_ gnd vdd FILL
X_4155_ _1506_ i_clk_fast_bF$buf1 \u_mem_serial.shift_reg\[3] vdd gnd DFFPOSX1
X_2641_ _1709_ _1710_ vdd gnd INVX1
X_2221_ _826_ \u_mem_serial.shift_reg\[28] _1067__bF$buf4 _825_ vdd gnd MUX2X1
X_3846_ _1178_ i_clk_fast_bF$buf0 \u_mem_serial.bit_count\[6] vdd gnd DFFPOSX1
X_3426_ _402_ _401_ _661__bF$buf3 _1265_ vdd gnd MUX2X1
X_3006_ \u_rf_if.read_buf0\[26] \u_rf_if.read_buf0\[27] \u_rf_if.stream_active_bF$buf4\ _88_ vdd gnd MUX2X1
XFILL_1__2383_ gnd vdd FILL
X_1912_ _1910_ o_rf_sync vdd gnd BUFX2
XFILL_0__2698_ gnd vdd FILL
XFILL_1__2859_ gnd vdd FILL
X_2870_ \u_rf_if.read_buf1\[23] \u_rf_if.read_buf1\[24] \u_rf_if.stream_active_bF$buf7\ _1891_ vdd gnd MUX2X1
X_2450_ \u_cpu.ctrl.pc\ _1544_ vdd gnd INVX1
X_2030_ \u_cpu.bufreg.data\[7] \u_cpu.ctrl.o_ibus_adr\[7] _1052__bF$buf4 _995_ vdd gnd MUX2X1
XFILL_0__1969_ gnd vdd FILL
X_3655_ \u_cpu.ctrl.o_ibus_adr\[13] _569_ vdd gnd INVX1
X_3235_ \u_mem_serial.shift_reg\[14] ibus_pending_ack_bF$buf4 _257_ _258_ vdd gnd OAI21X1
X_4193_ _1323_ \gen_int_sys_clk.clk_sys_r_bF$buf11\ \u_cpu.decode.co_mem_word\ vdd gnd DFFPOSX1
X_2926_ \u_rf_if.read_buf0\[6] \u_rf_if.read_buf0\[7] \u_rf_if.stream_active_bF$buf4\ _28_ vdd gnd MUX2X1
X_2506_ _711_ _1597_ _1598_ _1599_ vdd gnd OAI21X1
X_3884_ _1366_ \gen_int_sys_clk.clk_sys_r_bF$buf8\ \u_rf_if.read_buf0\[29] vdd gnd DFFPOSX1
X_3464_ _420_ _1517_ _425_ _426_ vdd gnd OAI21X1
X_3044_ _1704__bF$buf2 _114_ _115_ _1360_ vdd gnd AOI21X1
XFILL_0__3504_ gnd vdd FILL
X_1950_ _1071_ _1069_ _1068_ vdd gnd NAND2X1
X_2735_ \u_rf_if.stream_active_bF$buf5\ _1659_ _1791_ vdd gnd NOR2X1
X_2315_ mem_ibus_ack _736_ vdd gnd INVX1
XFILL_1__2057_ gnd vdd FILL
X_3693_ _1121_ _208_ _586_ _1182_ vdd gnd OAI21X1
X_3273_ _283_ _270_ _176_ _284_ _1300_ vdd 
+ gnd
+ AOI22X1
X_4058_ _1456_ i_clk_fast_bF$buf3 \u_rf_serial.last_req_key\[8] vdd gnd DFFPOSX1
XFILL_0__3733_ gnd vdd FILL
X_2964_ _12__bF$buf3 _55_ _56_ _57_ vdd gnd OAI21X1
X_2544_ _1574_ _732_ _1636_ vdd gnd NAND2X1
X_2124_ \u_mem_serial.shift_reg\[17] _912_ vdd gnd INVX1
X_3749_ _348_ _984_ _615__bF$buf1 _1155_ vdd gnd MUX2X1
X_3329_ _330_ _331_ vdd gnd INVX1
XFILL_1__2286_ gnd vdd FILL
X_3082_ \u_rf_if.rreg0_latched\[0] _733__bF$buf1 _142_ vdd gnd NAND2X1
X_2773_ _1816_ _1817_ _1818_ _1428_ vdd gnd AOI21X1
X_2353_ _700_ _699_ _698_ vdd gnd NAND2X1
X_3978_ _1215_ \gen_int_sys_clk.clk_sys_r_bF$buf13\ \u_cpu.ctrl.o_ibus_adr\[26] vdd gnd DFFPOSX1
X_3558_ \u_cpu.bufreg2.dlo\[15] _440__bF$buf2 _503_ vdd gnd NOR2X1
X_3138_ ibus_pending_rdt[23] _186_ vdd gnd INVX1
XFILL_0__2813_ gnd vdd FILL
X_4096_ _1269_ \gen_int_sys_clk.clk_sys_r_bF$buf34\ \u_cpu.bufreg.data\[17] vdd gnd DFFPOSX1
X_2829_ _1860_ i_rst_n_bF$buf4 _1414_ vdd gnd AND2X2
X_2409_ _1130_ \u_cpu.alu.add_cy_r\ _1133_ vdd gnd OR2X2
X_2582_ _1126__bF$buf7 _1665_ _1466_ vdd gnd NOR2X1
X_2162_ \u_mem_serial.active_we_bF$buf0\ \u_cpu.bufreg2.dlo\[22] _878_ vdd gnd NAND2X1
X_3787_ _632_ _628_ _634_ vdd gnd NOR2X1
X_3367_ \u_cpu.branch_op\ _1693__bF$buf3 _363_ _364_ vdd gnd OAI21X1
XFILL_0__3407_ gnd vdd FILL
XFILL132150x64950 gnd vdd FILL
XFILL_0__3160_ gnd vdd FILL
X_2638_ _1697_ _1707_ _1691_ _1452_ vdd gnd AOI21X1
X_2218_ _829_ _831_ _1058__bF$buf6 _828_ vdd gnd OAI21X1
XFILL_1__3321_ gnd vdd FILL
X_2391_ _666_ _661__bF$buf0 _693_ _660_ vdd gnd OAI21X1
X_3596_ mem_dbus_ack_bF$buf1 _1008_ _531_ vdd gnd NAND2X1
X_3176_ _207_ _213_ _214_ vdd gnd NOR2X1
XFILL_0__2011_ gnd vdd FILL
XFILL_0__3636_ gnd vdd FILL
X_2867_ \u_rf_if.read_buf1\[21] _1824__bF$buf0 _1889_ vdd gnd NAND2X1
X_2447_ \u_cpu.bufreg.i_right_shift_op\ _1540_ _1539_ _1541_ vdd gnd OAI21X1
X_2027_ \u_mem_serial.active_we_bF$buf1\ \u_cpu.bufreg2.dlo\[7] _998_ vdd gnd NAND2X1
XFILL_1__2189_ gnd vdd FILL
XFILL_0__2907_ gnd vdd FILL
XFILL_1__3550_ gnd vdd FILL
XFILL_0__2240_ gnd vdd FILL
XFILL_1__2401_ gnd vdd FILL
X_2676_ _1740_ _756_ _1126__bF$buf0 _1447_ vdd gnd AOI21X1
X_2256_ ren_bF$buf2 _795_ vdd gnd INVX2
XFILL_0__2716_ gnd vdd FILL
X_1947_ _1094_ _1074_ _1072_ _1071_ vdd gnd NAND3X1
XFILL_1__2630_ gnd vdd FILL
X_2485_ _719_ _1578_ _1579_ vdd gnd NOR2X1
X_2065_ _965_ _967_ _1058__bF$buf2 _964_ vdd gnd OAI21X1
XFILL_0__2945_ gnd vdd FILL
XFILL_0__3063_ gnd vdd FILL
X_3902_ _1375_ \gen_int_sys_clk.clk_sys_r_bF$buf44\ \u_rf_if.read_buf0\[20] vdd gnd DFFPOSX1
XFILL_1__3224_ gnd vdd FILL
X_2294_ _758_ _765_ _761_ _757_ vdd gnd OAI21X1
X_3499_ mem_dbus_ack_bF$buf3 _832_ _455_ vdd gnd NAND2X1
X_3079_ _140_ _1350_ vdd gnd INVX1
X_4020_ _1435_ \gen_int_sys_clk.clk_sys_r_bF$buf24\ \u_rf_if.rtrig1\ vdd gnd DFFPOSX1
XFILL_0__3539_ gnd vdd FILL
X_1985_ \u_cpu.bufreg.data\[2] \u_cpu.ctrl.o_ibus_adr\[2] _1052__bF$buf2 _1035_ vdd gnd MUX2X1
XFILL_0__3292_ gnd vdd FILL
X_3711_ _601_ _598_ _602_ _603_ vdd gnd OAI21X1
XFILL_1__3453_ gnd vdd FILL
XFILL_0__2143_ gnd vdd FILL
XFILL_0__3768_ gnd vdd FILL
XFILL_1__2304_ gnd vdd FILL
X_2999_ \u_rf_if.read_buf0\[23] _12__bF$buf6 _83_ vdd gnd NAND2X1
X_2579_ _805_ _720_ i_rst_n_bF$buf10 _1664_ vdd gnd OAI21X1
X_2159_ _1126__bF$buf2 _881_ _1488_ vdd gnd NOR2X1
X_3940_ _1393_ \gen_int_sys_clk.clk_sys_r_bF$buf18\ \u_rf_if.read_buf0\[2] vdd gnd DFFPOSX1
X_3520_ _781_ _472_ _473_ _474_ vdd gnd AOI21X1
X_3100_ _156_ _1693__bF$buf1 _157_ vdd gnd NAND2X1
XFILL_0__2619_ gnd vdd FILL
XFILL_1__3682_ gnd vdd FILL
XFILL_0__2372_ gnd vdd FILL
XFILL_1__2533_ gnd vdd FILL
X_2388_ \u_cpu.state.init_done\ _794_ _663_ vdd gnd NAND2X1
XFILL_0__2848_ gnd vdd FILL
X_4114_ _1278_ \gen_int_sys_clk.clk_sys_r_bF$buf17\ \u_cpu.bufreg.data\[26] vdd gnd DFFPOSX1
XFILL_0__2181_ gnd vdd FILL
XFILL132450x72150 gnd vdd FILL
X_2600_ _1575_ _1596_ _1676_ _1459_ vdd gnd AOI21X1
X_3805_ \u_mem_serial.clk_sys_prev\ _1114_ _1113_ vdd gnd NOR2X1
XFILL_1__2762_ gnd vdd FILL
XFILL_1__3127_ gnd vdd FILL
X_2197_ _848_ _1040__bF$buf1 _847_ vdd gnd NOR2X1
XFILL_0__3195_ gnd vdd FILL
XFILL_0__1928_ gnd vdd FILL
X_3614_ _544_ _1047_ _440__bF$buf5 _1219_ vdd gnd MUX2X1
XFILL_1__2991_ gnd vdd FILL
XFILL_1__3356_ gnd vdd FILL
XFILL_0__2046_ gnd vdd FILL
X_4152_ _1505_ i_clk_fast_bF$buf1 \u_mem_serial.shift_reg\[4] vdd gnd DFFPOSX1
XFILL_1__2207_ gnd vdd FILL
X_3843_ _1345_ \gen_int_sys_clk.clk_sys_r_bF$buf26\ \u_rf_if.rreg0_latched\[3] vdd gnd DFFPOSX1
X_3423_ \u_cpu.bufreg.data\[14] _401_ vdd gnd INVX1
X_3003_ \u_rf_if.read_buf0\[24] _12__bF$buf6 _86_ vdd gnd NAND2X1
XFILL_1__3585_ gnd vdd FILL
XFILL_0__2275_ gnd vdd FILL
XFILL_1__2436_ gnd vdd FILL
X_3652_ _567_ _190__bF$buf3 _566_ _556__bF$buf0 _1204_ vdd 
+ gnd
+ OAI22X1
X_3232_ _1119_ _255_ _733__bF$buf2 _1312_ vdd gnd MUX2X1
X_4017_ _1433_ \gen_int_sys_clk.clk_sys_r_bF$buf38\ \u_rf_if.prefetch_active\ vdd gnd DFFPOSX1
XFILL_0__2084_ gnd vdd FILL
X_4190_ _1320_ \gen_int_sys_clk.clk_sys_r_bF$buf4\ \u_cpu.decode.opcode\[2] vdd gnd DFFPOSX1
X_2923_ \u_rf_if.read_buf0\[4] _12__bF$buf4 _26_ vdd gnd NAND2X1
X_2503_ _1595_ _1594_ _1596_ vdd gnd NOR2X1
X_3708_ _789_ _599_ _600_ vdd gnd NAND2X1
XFILL_1__2665_ gnd vdd FILL
X_3881_ _1135_ i_clk_fast_bF$buf2 \gen_int_sys_clk.clk_sys_r\ vdd gnd DFFPOSX1
X_3461_ _675_ _673_ _422_ _423_ vdd gnd AOI21X1
X_3041_ _1704__bF$buf2 _112_ _113_ _1361_ vdd gnd AOI21X1
XFILL_0__3501_ gnd vdd FILL
X_2732_ _1783_ _1788_ _1789_ vdd gnd AND2X2
X_2312_ _749_ _745_ _740_ _739_ vdd gnd OAI21X1
XFILL_0__3098_ gnd vdd FILL
X_3937_ _1205_ \gen_int_sys_clk.clk_sys_r_bF$buf23\ \u_cpu.ctrl.o_ibus_adr\[16] vdd gnd DFFPOSX1
X_3517_ \u_cpu.bufreg.i_shamt\[0] _468_ _471_ vdd gnd NOR2X1
XFILL_1__2894_ gnd vdd FILL
XFILL_1__3259_ gnd vdd FILL
X_3690_ _1546_ _585_ vdd gnd INVX1
X_3270_ _281_ _270_ _229_ _282_ _1301_ vdd 
+ gnd
+ AOI22X1
X_4055_ _1249_ \gen_int_sys_clk.clk_sys_r_bF$buf4\ \u_cpu.bufreg.c_r\ vdd gnd DFFPOSX1
XFILL_0__3730_ gnd vdd FILL
XFILL_0__3310_ gnd vdd FILL
X_2961_ _54_ i_rst_n_bF$buf5 _1382_ vdd gnd AND2X2
X_2541_ _1621_ _1632_ _1633_ vdd gnd NOR2X1
X_2121_ _1058__bF$buf2 _915_ _916_ _914_ vdd gnd OAI21X1
X_3746_ _382_ _960_ _615__bF$buf3 _1158_ vdd gnd MUX2X1
X_3326_ _678_ _323_ _176_ _328_ _1291_ vdd 
+ gnd
+ AOI22X1
XFILL_1__3488_ gnd vdd FILL
XFILL_0__2178_ gnd vdd FILL
XFILL_1__1974_ gnd vdd FILL
XFILL_1__2339_ gnd vdd FILL
XFILL_1__3700_ gnd vdd FILL
X_2770_ \u_rf_if.stream_cnt\[1] _1761_ _1816_ vdd gnd NAND2X1
X_2350_ \u_rf_if.rcnt\[2] _701_ vdd gnd INVX1
X_3975_ _1410_ \gen_int_sys_clk.clk_sys_r_bF$buf30\ \u_rf_if.read_buf1\[15] vdd gnd DFFPOSX1
X_3555_ _440__bF$buf1 _499_ _500_ _1234_ vdd gnd AOI21X1
X_3135_ _116_ _1693__bF$buf4 _183_ _184_ vdd gnd OAI21X1
XFILL_0__2810_ gnd vdd FILL
X_4093_ _1474_ i_clk_fast_bF$buf2 \u_rf_serial.launch_pending\ vdd gnd DFFPOSX1
X_2826_ \u_rf_if.read_buf1\[12] \u_rf_if.read_buf1\[13] \u_rf_if.stream_active_bF$buf0\ _1858_ vdd gnd MUX2X1
X_2406_ \u_rf_if.stream_active_bF$buf2\ _619_ vdd gnd INVX2
XFILL_1__2568_ gnd vdd FILL
X_3784_ \gen_int_sys_clk.clk_div\[0] _1136_ vdd gnd INVX1
X_3364_ _733__bF$buf5 _361_ _358_ _1286_ vdd gnd OAI21X1
X_4149_ _1295_ \gen_int_sys_clk.clk_sys_r_bF$buf9\ \u_cpu.immdec.gen_immdec_w_eq_1.imm30_25\[0] vdd gnd DFFPOSX1
X_2635_ \u_rf_if.issue_chunk\[3] _1704__bF$buf1 _1705_ vdd gnd NAND2X1
X_2215_ _832_ _1040__bF$buf1 _831_ vdd gnd NOR2X1
XFILL_1__2797_ gnd vdd FILL
X_3593_ mem_dbus_ack_bF$buf4 \u_cpu.bufreg2.dlo\[7] _528_ _529_ vdd gnd OAI21X1
X_3173_ _208_ _210_ _211_ vdd gnd OR2X2
XFILL_0__3213_ gnd vdd FILL
X_2864_ _1824__bF$buf1 _1885_ _1886_ _1887_ vdd gnd OAI21X1
X_2444_ _1535_ _1537_ _1536_ _1538_ vdd gnd OAI21X1
X_2024_ _1126__bF$buf2 _1001_ _1503_ vdd gnd NOR2X1
X_3649_ \u_cpu.ctrl.o_ibus_adr\[16] _566_ vdd gnd INVX1
X_3229_ ibus_pending_rdt[6] _253_ vdd gnd INVX1
X_4187_ _1316_ i_clk_fast_bF$buf6 \u_mem_serial.active_we\ vdd gnd DFFPOSX1
XFILL_0__3442_ gnd vdd FILL
XFILL_0__3022_ gnd vdd FILL
XFILL_1__3603_ gnd vdd FILL
X_2673_ _1737_ _1738_ vdd gnd INVX1
X_2253_ \u_rf_serial.tx_state\[1] \u_rf_serial.tx_state\[0] \u_rf_serial.tx_state\[2] _798_ vdd gnd OAI21X1
X_3878_ _1363_ \gen_int_sys_clk.clk_sys_r_bF$buf5\ raddr[2] vdd gnd DFFPOSX1
X_3458_ _419_ _420_ vdd gnd INVX1
X_3038_ _1705_ _111_ _1126__bF$buf6 _1362_ vdd gnd AOI21X1
XFILL_0__2713_ gnd vdd FILL
X_1944_ \u_mem_serial.bit_count\[6] \u_mem_serial.bit_count\[5] _1074_ vdd gnd NOR2X1
XFILL_0__3671_ gnd vdd FILL
X_2729_ raddr[5] raddr[4] _1786_ vdd gnd NOR2X1
X_2309_ \u_cpu.bufreg2.i_op_b_sel\ _742_ vdd gnd INVX1
X_2482_ _1575_ _804_ _1576_ vdd gnd OR2X2
X_2062_ _968_ _1040__bF$buf2 _967_ vdd gnd NOR2X1
X_3687_ _584_ _190__bF$buf4 _583_ _556__bF$buf2 _1186_ vdd 
+ gnd
+ OAI22X1
X_3267_ _279_ _270_ _226_ _280_ _1302_ vdd 
+ gnd
+ AOI22X1
XFILL_0__2942_ gnd vdd FILL
XFILL_0__2522_ gnd vdd FILL
X_2958_ \u_rf_if.read_buf0\[14] \u_rf_if.read_buf0\[15] \u_rf_if.stream_active_bF$buf3\ _52_ vdd gnd MUX2X1
X_2538_ \u_rf_serial.last_req_key\[1] _1566_ _1619_ _1586_ _1630_ vdd 
+ gnd
+ OAI22X1
X_2118_ _918_ _1062__bF$buf0 _917_ vdd gnd NOR2X1
X_2291_ \u_cpu.bufreg.i_right_shift_op\ _789_ _760_ vdd gnd NOR2X1
X_3496_ _452_ _777_ _781_ _453_ vdd gnd MUX2X1
X_3076_ _1568_ _1729_ _138_ _1351_ vdd gnd AOI21X1
XFILL_0__2751_ gnd vdd FILL
XFILL_0__3116_ gnd vdd FILL
X_1982_ \u_mem_serial.active_we_bF$buf4\ \u_cpu.bufreg2.dlo\[2] _1038_ vdd gnd NAND2X1
X_2767_ _1814_ _1430_ vdd gnd INVX1
X_2347_ \u_cpu.bufreg2.i_op_b_sel\ \u_cpu.bufreg.i_sh_signed\ _788_ _704_ vdd gnd AOI21X1
XFILL_1__3030_ gnd vdd FILL
XFILL132150x50550 gnd vdd FILL
XFILL_0__2980_ gnd vdd FILL
XFILL_0__3345_ gnd vdd FILL
XFILL_1__3926_ gnd vdd FILL
XFILL_1__3506_ gnd vdd FILL
X_2996_ _12__bF$buf6 _79_ _80_ _81_ vdd gnd OAI21X1
X_2576_ \u_rf_serial.tx_state\[0] _1126__bF$buf7 _1662_ vdd gnd NOR2X1
X_2156_ \u_cpu.bufreg.data\[21] \u_cpu.ctrl.o_ibus_adr\[21] _1052__bF$buf3 _883_ vdd gnd MUX2X1
XFILL_0__2616_ gnd vdd FILL
XFILL_0__3574_ gnd vdd FILL
XFILL_0__3154_ gnd vdd FILL
XFILL_1__2110_ gnd vdd FILL
XFILL_1__3735_ gnd vdd FILL
X_2385_ \u_cpu.bufreg.data\[0] _666_ vdd gnd INVX1
XFILL_0__2845_ gnd vdd FILL
XFILL_0__2425_ gnd vdd FILL
X_4111_ _1485_ i_clk_fast_bF$buf4 \u_mem_serial.shift_reg\[24] vdd gnd DFFPOSX1
XFILL_0__3383_ gnd vdd FILL
X_3802_ _707_ _1693__bF$buf3 _647_ _636_ _1134_ vdd 
+ gnd
+ OAI22X1
X_2194_ _850_ \u_mem_serial.shift_reg\[25] _1067__bF$buf4 _849_ vdd gnd MUX2X1
XFILL132450x93750 gnd vdd FILL
X_3399_ \u_cpu.bufreg.data\[26] _389_ vdd gnd INVX1
XFILL_0__2654_ gnd vdd FILL
XFILL_0__3019_ gnd vdd FILL
XFILL_1__2815_ gnd vdd FILL
XFILL_0__1925_ gnd vdd FILL
X_3611_ _440__bF$buf2 _541_ _542_ _1220_ vdd gnd AOI21X1
XFILL_0__2883_ gnd vdd FILL
XFILL_0__3248_ gnd vdd FILL
XFILL_1__3409_ gnd vdd FILL
X_2899_ _7_ _1824__bF$buf5 i_rst_n_bF$buf0 _8_ vdd gnd OAI21X1
X_2479_ _1564_ _1560_ _1572_ _1573_ vdd gnd OAI21X1
X_2059_ _970_ \u_mem_serial.shift_reg\[10] _1067__bF$buf1 _969_ vdd gnd MUX2X1
X_3840_ i_rst_n_bF$buf6 vdd _1176_ \gen_int_sys_clk.clk_sys_r_bF$buf11\ ibus_pending_rdt[29] vdd 
+ gnd
+ DFFSR
X_3420_ _399_ _398_ _661__bF$buf3 _1268_ vdd gnd MUX2X1
X_3000_ _12__bF$buf6 _82_ _83_ _84_ vdd gnd OAI21X1
XFILL_1__3162_ gnd vdd FILL
XFILL_0__3897_ gnd vdd FILL
XFILL_0__3477_ gnd vdd FILL
XFILL_0__3057_ gnd vdd FILL
XFILL_1__2013_ gnd vdd FILL
XFILL_1__3638_ gnd vdd FILL
X_2288_ _794_ _764_ _763_ vdd gnd NAND2X1
XFILL_0__1963_ gnd vdd FILL
XFILL_0__2328_ gnd vdd FILL
X_4014_ _1430_ \gen_int_sys_clk.clk_sys_r_bF$buf2\ \u_rf_if.rcnt\[2] vdd gnd DFFPOSX1
XFILL_1__3391_ gnd vdd FILL
XFILL_0__2081_ gnd vdd FILL
X_1979_ \u_mem_serial.shift_reg\[1] _1041_ vdd gnd INVX1
X_2920_ _12__bF$buf4 _22_ _23_ _24_ vdd gnd OAI21X1
X_2500_ _801_ _1593_ vdd gnd INVX1
XFILL_0__3286_ gnd vdd FILL
X_3705_ \u_cpu.state.i_ctrl_misalign\ _1094_ _597_ vdd gnd NAND2X1
XFILL_1__2242_ gnd vdd FILL
X_2097_ \u_mem_serial.shift_reg\[14] _936_ vdd gnd INVX1
XFILL_0__2557_ gnd vdd FILL
XFILL_0__2137_ gnd vdd FILL
XFILL_1__2718_ gnd vdd FILL
X_3934_ _1390_ \gen_int_sys_clk.clk_sys_r_bF$buf28\ \u_rf_if.read_buf0\[5] vdd gnd DFFPOSX1
X_3514_ \u_cpu.bufreg.i_shamt\[1] _468_ vdd gnd INVX1
XFILL_1__2471_ gnd vdd FILL
XFILL_0__2786_ gnd vdd FILL
XFILL_0__2366_ gnd vdd FILL
X_4052_ _1453_ \gen_int_sys_clk.clk_sys_r_bF$buf8\ \u_rf_if.rreg1_latched\[4] vdd gnd DFFPOSX1
XFILL132450x25350 gnd vdd FILL
XFILL_1__2947_ gnd vdd FILL
X_3743_ _256_ _936_ _615__bF$buf4 _1161_ vdd gnd MUX2X1
X_3323_ rreg1[2] _321_ _733__bF$buf3 _327_ vdd gnd OAI21X1
X_4108_ _1275_ \gen_int_sys_clk.clk_sys_r_bF$buf17\ \u_cpu.bufreg.data\[23] vdd gnd DFFPOSX1
X_3972_ i_rst_n_bF$buf6 vdd _1157_ \gen_int_sys_clk.clk_sys_r_bF$buf40\ ibus_pending_rdt[10] vdd 
+ gnd
+ DFFSR
X_3552_ mem_dbus_ack_bF$buf4 _920_ _498_ vdd gnd NAND2X1
X_3132_ ibus_pending_rdt[22] _181_ vdd gnd INVX1
X_4090_ _1267_ \gen_int_sys_clk.clk_sys_r_bF$buf35\ \u_cpu.bufreg.data\[15] vdd gnd DFFPOSX1
XFILL132750x7350 gnd vdd FILL
X_2823_ \u_rf_if.read_buf1\[10] _1824__bF$buf6 _1856_ vdd gnd NAND2X1
X_2403_ _668_ _623_ _680_ _622_ vdd gnd OAI21X1
XFILL_0__3189_ gnd vdd FILL
X_3608_ mem_dbus_ack_bF$buf0 _1032_ _540_ vdd gnd NAND2X1
XFILL_1__2145_ gnd vdd FILL
X_3781_ _630_ _629_ _1138_ vdd gnd NOR2X1
X_3361_ ibus_pending_rdt[31] _359_ vdd gnd INVX1
X_4146_ _1502_ i_clk_fast_bF$buf4 \u_mem_serial.shift_reg\[7] vdd gnd DFFPOSX1
XFILL132750x68550 gnd vdd FILL
X_2632_ \u_rf_if.issue_sel\ _1702_ vdd gnd INVX1
X_2212_ _834_ \u_mem_serial.shift_reg\[27] _1067__bF$buf4 _833_ vdd gnd MUX2X1
X_3837_ _1342_ \gen_int_sys_clk.clk_sys_r_bF$buf27\ \u_rf_if.issue_chunk\[1] vdd gnd DFFPOSX1
X_3417_ \u_cpu.bufreg.data\[17] _398_ vdd gnd INVX1
XFILL_1__2374_ gnd vdd FILL
X_3590_ \u_cpu.bufreg2.dlo\[7] _440__bF$buf3 _527_ vdd gnd NOR2X1
X_3170_ _1476_ _1132_ _208_ vdd gnd AND2X2
XFILL_0__2689_ gnd vdd FILL
XFILL_0__2269_ gnd vdd FILL
X_2861_ _1884_ i_rst_n_bF$buf0 _1406_ vdd gnd AND2X2
X_2441_ \u_cpu.state.i_ctrl_misalign\ _1535_ vdd gnd INVX1
X_2021_ \u_cpu.bufreg.data\[6] \u_cpu.ctrl.o_ibus_adr\[6] _1052__bF$buf4 _1003_ vdd gnd MUX2X1
X_3646_ _564_ _190__bF$buf2 _563_ _556__bF$buf4 _1207_ vdd 
+ gnd
+ OAI22X1
X_3226_ \u_mem_serial.active_ibus\ _250_ _251_ vdd gnd NAND2X1
XFILL_0__2901_ gnd vdd FILL
XFILL_0__2498_ gnd vdd FILL
X_4184_ i_rst_n_bF$buf5 vdd _1162_ \gen_int_sys_clk.clk_sys_r_bF$buf28\ ibus_pending_rdt[15] vdd 
+ gnd
+ DFFSR
X_2917_ _21_ i_rst_n_bF$buf8 _1393_ vdd gnd AND2X2
X_2670_ \u_rf_if.rcnt\[0] _1735_ vdd gnd INVX1
X_2250_ _805_ _802_ _801_ vdd gnd NAND2X1
X_3875_ _1190_ \gen_int_sys_clk.clk_sys_r_bF$buf17\ \u_cpu.ctrl.o_ibus_adr\[1] vdd gnd DFFPOSX1
X_3455_ _416_ _417_ _661__bF$buf0 _1251_ vdd gnd MUX2X1
X_3035_ \u_rf_if.issue_chunk\[2] _1704__bF$buf1 _110_ vdd gnd NAND2X1
X_1941_ _1077_ _1082_ _1076_ vdd gnd NAND2X1
X_2726_ _1778_ _1775_ _1779_ _1782_ _1783_ vdd 
+ gnd
+ AOI22X1
X_2306_ _748_ _747_ _746_ _745_ vdd gnd NAND3X1
XFILL_0__1998_ gnd vdd FILL
X_3684_ \u_cpu.ctrl.o_ibus_adr\[30] _583_ vdd gnd INVX1
X_3264_ _277_ _270_ _259_ _278_ _1303_ vdd 
+ gnd
+ AOI22X1
X_4049_ _1246_ \gen_int_sys_clk.clk_sys_r_bF$buf14\ \u_cpu.bufreg2.dhi\[5] vdd gnd DFFPOSX1
XFILL_0__3724_ gnd vdd FILL
X_2955_ \u_rf_if.read_buf0\[12] _12__bF$buf0 _50_ vdd gnd NAND2X1
X_2535_ _1625_ ren_bF$buf3 _1626_ _1627_ vdd gnd AOI21X1
X_2115_ \u_mem_serial.shift_reg\[16] _920_ vdd gnd INVX1
XFILL_1__2277_ gnd vdd FILL
X_3493_ \u_cpu.bufreg2.dhi\[4] _773_ _450_ vdd gnd NOR2X1
X_3073_ _136_ \u_rf_if.write_wait\[5] _1688_ _137_ vdd gnd MUX2X1
X_2764_ _1735_ _1736_ _701_ _1812_ vdd gnd OAI21X1
X_2344_ current_wdata0_next_hint _707_ vdd gnd INVX1
X_3969_ _1407_ \gen_int_sys_clk.clk_sys_r_bF$buf39\ \u_rf_if.read_buf1\[18] vdd gnd DFFPOSX1
X_3549_ mem_dbus_ack_bF$buf4 \u_cpu.bufreg2.dlo\[18] _495_ _496_ vdd gnd OAI21X1
X_3129_ _178_ _880_ ibus_pending_ack_bF$buf2 _179_ vdd gnd MUX2X1
XFILL_0__2804_ gnd vdd FILL
X_4087_ _1470_ i_clk_fast_bF$buf7 _1910_ vdd gnd DFFPOSX1
XCLKBUF1_insert186 \gen_int_sys_clk.clk_sys_r\ \gen_int_sys_clk.clk_sys_r_hier0_bF$buf5\ vdd gnd CLKBUF1
XCLKBUF1_insert187 \gen_int_sys_clk.clk_sys_r\ \gen_int_sys_clk.clk_sys_r_hier0_bF$buf4\ vdd gnd CLKBUF1
XCLKBUF1_insert188 \gen_int_sys_clk.clk_sys_r\ \gen_int_sys_clk.clk_sys_r_hier0_bF$buf3\ vdd gnd CLKBUF1
XCLKBUF1_insert189 \gen_int_sys_clk.clk_sys_r\ \gen_int_sys_clk.clk_sys_r_hier0_bF$buf2\ vdd gnd CLKBUF1
X_2993_ _78_ i_rst_n_bF$buf4 _1374_ vdd gnd AND2X2
X_2573_ _1651_ _727_ _1659_ _1660_ vdd gnd OAI21X1
X_2153_ \u_mem_serial.active_we_bF$buf3\ \u_cpu.bufreg2.dlo\[21] _886_ vdd gnd NAND2X1
X_3778_ \gen_int_sys_clk.clk_div\[2] _627_ _628_ vdd gnd NAND2X1
X_3358_ \u_cpu.immdec.gen_immdec_w_eq_1.imm11_7\[1] _330_ _733__bF$buf0 _357_ vdd gnd OAI21X1
XFILL_0__3151_ gnd vdd FILL
X_2629_ \u_rf_if.issue_chunk\[0] _1699_ vdd gnd INVX1
X_2209_ _837_ _839_ _1058__bF$buf0 _836_ vdd gnd OAI21X1
XFILL_1__3312_ gnd vdd FILL
X_2382_ _671_ _670_ _785_ _669_ vdd gnd OAI21X1
X_3587_ _440__bF$buf5 _523_ _524_ _1226_ vdd gnd AOI21X1
X_3167_ \u_cpu.bufreg.i_right_shift_op\ \u_cpu.decode.co_mem_word\ _205_ vdd gnd NOR2X1
XFILL_0__2002_ gnd vdd FILL
XFILL_0__3627_ gnd vdd FILL
XFILL_0__3380_ gnd vdd FILL
X_2858_ \u_rf_if.read_buf1\[20] \u_rf_if.read_buf1\[21] \u_rf_if.stream_active_bF$buf7\ _1882_ vdd gnd MUX2X1
X_2438_ \u_cpu.bufreg2.dlo\[8] \u_cpu.bufreg.data\[0] _1532_ vdd gnd NAND2X1
X_2018_ \u_mem_serial.active_we_bF$buf0\ \u_cpu.bufreg2.dlo\[6] _1006_ vdd gnd NAND2X1
XFILL_1__3541_ gnd vdd FILL
X_2191_ _853_ _855_ _1058__bF$buf6 _852_ vdd gnd OAI21X1
X_3396_ _386_ _387_ _661__bF$buf1 _1280_ vdd gnd MUX2X1
XFILL_0__2231_ gnd vdd FILL
X_2667_ _1580_ _1731_ _1733_ vdd gnd NOR2X1
X_2247_ _805_ _804_ vdd gnd INVX1
XFILL_0__2707_ gnd vdd FILL
XFILL_1__3770_ gnd vdd FILL
XFILL_0__2460_ gnd vdd FILL
XFILL_0__2040_ gnd vdd FILL
X_1938_ \u_mem_serial.bit_count\[5] _1079_ vdd gnd INVX1
XFILL_1__2621_ gnd vdd FILL
X_2896_ \u_rf_if.read_buf1\[27] _1824__bF$buf3 _6_ vdd gnd NAND2X1
X_2476_ raddr[0] _795_ _1569_ _1570_ vdd gnd OAI21X1
X_2056_ _973_ _975_ _1058__bF$buf4 _972_ vdd gnd OAI21X1
XFILL_0__2936_ gnd vdd FILL
X_4202_ _1329_ i_clk_fast_bF$buf6 \u_mem_serial.req_pending\ vdd gnd DFFPOSX1
XFILL_0__3054_ gnd vdd FILL
XFILL_1__2850_ gnd vdd FILL
XFILL_1__3215_ gnd vdd FILL
X_2285_ \u_cpu.bufreg2.dhi\[6] _781_ _767_ _766_ vdd gnd OAI21X1
XFILL_0__1960_ gnd vdd FILL
X_4011_ _1428_ \gen_int_sys_clk.clk_sys_r_bF$buf7\ \u_rf_if.stream_cnt\[1] vdd gnd DFFPOSX1
X_1976_ _1052__bF$buf2 _1044_ _1057_ _1045_ _1043_ vdd 
+ gnd
+ OAI22X1
XFILL_0__3283_ gnd vdd FILL
X_3702_ _1063_ _593_ _594_ vdd gnd NAND2X1
XFILL_1__3444_ gnd vdd FILL
X_2094_ _1058__bF$buf1 _939_ _940_ _938_ vdd gnd OAI21X1
X_3299_ ibus_pending_rdt[26] _307_ vdd gnd INVX1
XFILL_0__2134_ gnd vdd FILL
XFILL_1__1930_ gnd vdd FILL
XFILL_0__3759_ gnd vdd FILL
XFILL_0__3339_ gnd vdd FILL
XFILL_0__3092_ gnd vdd FILL
X_3931_ _1185_ \gen_int_sys_clk.clk_sys_r_bF$buf13\ \u_cpu.ctrl.o_ibus_adr\[28] vdd gnd DFFPOSX1
X_3511_ _462_ _465_ _466_ vdd gnd NOR2X1
XFILL_1__3673_ gnd vdd FILL
XFILL_0__2363_ gnd vdd FILL
XFILL_1__2524_ gnd vdd FILL
X_2799_ \u_rf_if.read_buf1\[4] _1824__bF$buf5 _1838_ vdd gnd NAND2X1
X_2379_ _673_ _675_ _672_ vdd gnd NAND2X1
X_3740_ _151_ _912_ _615__bF$buf3 _1164_ vdd gnd MUX2X1
X_3320_ rreg1[3] _321_ _733__bF$buf3 _325_ vdd gnd OAI21X1
XFILL132750x126150 gnd vdd FILL
XFILL_0__2839_ gnd vdd FILL
X_4105_ _1482_ i_clk_fast_bF$buf5 \u_mem_serial.shift_reg\[27] vdd gnd DFFPOSX1
XFILL_0__2592_ gnd vdd FILL
XFILL_0__2172_ gnd vdd FILL
XFILL_1__2753_ gnd vdd FILL
XFILL_1__3118_ gnd vdd FILL
X_2188_ _856_ _1040__bF$buf2 _855_ vdd gnd NOR2X1
X_2820_ _1824__bF$buf6 _1852_ _1853_ _1854_ vdd gnd OAI21X1
X_2400_ \u_cpu.bufreg.i_right_shift_op\ _626_ _662_ _625_ vdd gnd OAI21X1
XFILL_0__3186_ gnd vdd FILL
XFILL_0__1919_ gnd vdd FILL
X_3605_ mem_dbus_ack_bF$buf2 \u_cpu.bufreg2.dlo\[4] _537_ _538_ vdd gnd OAI21X1
XFILL_1__2982_ gnd vdd FILL
XFILL_1_BUFX2_insert184 gnd vdd FILL
XFILL_1__3347_ gnd vdd FILL
XFILL_0__2037_ gnd vdd FILL
X_4143_ _1292_ \gen_int_sys_clk.clk_sys_r_bF$buf26\ rreg1[1] vdd gnd DFFPOSX1
X_3834_ i_rst_n_bF$buf6 vdd _1173_ \gen_int_sys_clk.clk_sys_r_bF$buf40\ ibus_pending_rdt[26] vdd 
+ gnd
+ DFFSR
X_3414_ _396_ _395_ _661__bF$buf2 _1271_ vdd gnd MUX2X1
XFILL_1__3576_ gnd vdd FILL
XFILL_0__2266_ gnd vdd FILL
XFILL_1__2427_ gnd vdd FILL
X_3643_ \u_cpu.ctrl.o_ibus_adr\[19] _563_ vdd gnd INVX1
X_3223_ _1064_ _1071_ _248_ vdd gnd NOR2X1
X_4008_ _1230_ \gen_int_sys_clk.clk_sys_r_bF$buf19\ \u_cpu.bufreg2.dlo\[12] vdd gnd DFFPOSX1
XFILL_0__2495_ gnd vdd FILL
XFILL_0__2075_ gnd vdd FILL
X_4181_ _1313_ i_clk_fast_bF$buf6 mem_ibus_ack vdd gnd DFFPOSX1
X_2914_ \u_rf_if.read_buf0\[3] \u_rf_if.read_buf0\[4] \u_rf_if.stream_active_bF$buf4\ _19_ vdd gnd MUX2X1
XFILL_1__2656_ gnd vdd FILL
X_3872_ _1360_ \gen_int_sys_clk.clk_sys_r_bF$buf16\ raddr[5] vdd gnd DFFPOSX1
X_3452_ \u_cpu.bufreg.data\[30] _416_ vdd gnd INVX1
X_3032_ raddr[1] _1704__bF$buf3 i_rst_n_bF$buf7 _108_ vdd gnd OAI21X1
X_2723_ \u_rf_if.rreg1_latched\[1] \u_rf_if.rreg1_latched\[0] _1780_ vdd gnd NOR2X1
X_2303_ \u_cpu.immdec.gen_immdec_w_eq_1.imm11_7\[1] _748_ vdd gnd INVX1
X_3928_ _1203_ \gen_int_sys_clk.clk_sys_r_bF$buf35\ \u_cpu.ctrl.o_ibus_adr\[14] vdd gnd DFFPOSX1
X_3508_ _776_ _774_ _463_ vdd gnd NOR2X1
XFILL_1__2885_ gnd vdd FILL
X_3681_ _1544_ _190__bF$buf4 _581_ _556__bF$buf2 _1189_ vdd 
+ gnd
+ OAI22X1
X_3261_ _275_ _270_ _145_ _276_ _1304_ vdd 
+ gnd
+ AOI22X1
X_4046_ _1450_ i_clk_fast_bF$buf5 \u_mem_serial.shift_reg\[31] vdd gnd DFFPOSX1
XFILL_0__3301_ gnd vdd FILL
X_2952_ _12__bF$buf0 _46_ _47_ _48_ vdd gnd OAI21X1
X_2532_ _1623_ _1622_ _1624_ vdd gnd AND2X2
X_2112_ _1058__bF$buf2 _923_ _924_ _922_ vdd gnd OAI21X1
X_3737_ _174_ _888_ _615__bF$buf2 _1167_ vdd gnd MUX2X1
X_3317_ _733__bF$buf3 _321_ _323_ vdd gnd AND2X2
XFILL_1__3479_ gnd vdd FILL
X_3490_ _761_ \u_mem_serial.shift_reg\[29] _444_ _448_ vdd gnd OAI21X1
X_3070_ _134_ _132_ _135_ vdd gnd AND2X2
XFILL_0__2169_ gnd vdd FILL
XFILL_0__3530_ gnd vdd FILL
XFILL_0__3110_ gnd vdd FILL
XFILL_1__1965_ gnd vdd FILL
X_2761_ _1727_ _1693__bF$buf0 _1810_ vdd gnd NOR2X1
X_2341_ \u_rf_serial.tx_state\[2] _724_ _710_ vdd gnd NAND2X1
X_3966_ _1212_ \gen_int_sys_clk.clk_sys_r_bF$buf41\ \u_cpu.ctrl.o_ibus_adr\[23] vdd gnd DFFPOSX1
X_3546_ \u_cpu.bufreg2.dlo\[18] _440__bF$buf4 _494_ vdd gnd NOR2X1
X_3126_ _176_ _173_ _1126__bF$buf1 _1339_ vdd gnd AOI21X1
XFILL_0__2801_ gnd vdd FILL
XFILL132750x54150 gnd vdd FILL
XFILL_0__2398_ gnd vdd FILL
X_4084_ _1264_ \gen_int_sys_clk.clk_sys_r_bF$buf21\ \u_cpu.bufreg.data\[12] vdd gnd DFFPOSX1
X_2817_ _1851_ i_rst_n_bF$buf0 _1417_ vdd gnd AND2X2
XCLKBUF1_insert150 \gen_int_sys_clk.clk_sys_r_hier0_bF$buf5\ \gen_int_sys_clk.clk_sys_r_bF$buf21\ vdd gnd CLKBUF1
XCLKBUF1_insert151 \gen_int_sys_clk.clk_sys_r_hier0_bF$buf2\ \gen_int_sys_clk.clk_sys_r_bF$buf20\ vdd gnd CLKBUF1
XCLKBUF1_insert152 \gen_int_sys_clk.clk_sys_r_hier0_bF$buf3\ \gen_int_sys_clk.clk_sys_r_bF$buf19\ vdd gnd CLKBUF1
XCLKBUF1_insert153 \gen_int_sys_clk.clk_sys_r_hier0_bF$buf2\ \gen_int_sys_clk.clk_sys_r_bF$buf18\ vdd gnd CLKBUF1
XCLKBUF1_insert154 \gen_int_sys_clk.clk_sys_r_hier0_bF$buf5\ \gen_int_sys_clk.clk_sys_r_bF$buf17\ vdd gnd CLKBUF1
XCLKBUF1_insert155 \gen_int_sys_clk.clk_sys_r_hier0_bF$buf4\ \gen_int_sys_clk.clk_sys_r_bF$buf16\ vdd gnd CLKBUF1
XCLKBUF1_insert156 \gen_int_sys_clk.clk_sys_r_hier0_bF$buf1\ \gen_int_sys_clk.clk_sys_r_bF$buf15\ vdd gnd CLKBUF1
XCLKBUF1_insert157 \gen_int_sys_clk.clk_sys_r_hier0_bF$buf3\ \gen_int_sys_clk.clk_sys_r_bF$buf14\ vdd gnd CLKBUF1
XCLKBUF1_insert158 \gen_int_sys_clk.clk_sys_r_hier0_bF$buf5\ \gen_int_sys_clk.clk_sys_r_bF$buf13\ vdd gnd CLKBUF1
XCLKBUF1_insert159 \gen_int_sys_clk.clk_sys_r_hier0_bF$buf0\ \gen_int_sys_clk.clk_sys_r_bF$buf12\ vdd gnd CLKBUF1
XFILL_1__2559_ gnd vdd FILL
X_2990_ \u_rf_if.read_buf0\[22] \u_rf_if.read_buf0\[23] \u_rf_if.stream_active_bF$buf0\ _76_ vdd gnd MUX2X1
X_2570_ _1651_ _727_ _1657_ vdd gnd NOR2X1
X_2150_ _1126__bF$buf2 _889_ _1489_ vdd gnd NOR2X1
X_3775_ _1112_ _1110_ _1109_ vdd gnd NOR2X1
X_3355_ ibus_pending_rdt[7] _354_ vdd gnd INVX1
XFILL_0__2610_ gnd vdd FILL
X_2626_ _1696_ _1692_ _1126__bF$buf1 _1453_ vdd gnd AOI21X1
X_2206_ _840_ _1040__bF$buf1 _839_ vdd gnd NOR2X1
XFILL_1__2788_ gnd vdd FILL
X_3584_ mem_dbus_ack_bF$buf5 _984_ _522_ vdd gnd NAND2X1
X_3164_ _785_ _784_ _203_ _1328_ vdd gnd AOI21X1
XFILL_0__3204_ gnd vdd FILL
X_2855_ \u_rf_if.read_buf1\[18] _1824__bF$buf1 _1880_ vdd gnd NAND2X1
X_2435_ \u_cpu.bufreg2.i_bytecnt\[0] \u_cpu.bufreg2.i_bytecnt\[1] _789_ _1529_ vdd gnd OAI21X1
X_2015_ _1126__bF$buf3 _1009_ _1504_ vdd gnd NOR2X1
X_3393_ _332_ _384_ _385_ _1281_ vdd gnd OAI21X1
X_4178_ _1311_ \gen_int_sys_clk.clk_sys_r_bF$buf4\ \u_cpu.bufreg.i_right_shift_op\ vdd gnd DFFPOSX1
XFILL_0__3433_ gnd vdd FILL
XFILL_0__3013_ gnd vdd FILL
X_2664_ _1568_ _1729_ _1730_ vdd gnd NOR2X1
X_2244_ i_clk_fast_bF$buf7 _807_ _1909_ vdd gnd NOR2X1
X_3869_ \u_cpu.state.ibus_cyc\ _1125_ vdd gnd INVX1
X_3449_ \u_cpu.state.cnt_r\[0] \u_cpu.state.cnt_r\[1] _656_ _414_ vdd gnd OAI21X1
X_3029_ \u_rf_if.issue_idx\[5] _1683_ raddr[0] _106_ vdd gnd OAI21X1
XFILL_0__3909_ gnd vdd FILL
X_1935_ _1087_ _1082_ _1081_ vdd gnd NAND2X1
XFILL_0__3662_ gnd vdd FILL
XFILL_0__3242_ gnd vdd FILL
X_2893_ \u_rf_if.read_buf1\[28] \u_rf_if.stream_active_bF$buf2\ _3_ vdd gnd NAND2X1
X_2473_ _1566_ _1567_ vdd gnd INVX1
X_2053_ _976_ _1040__bF$buf0 _975_ vdd gnd NOR2X1
X_3678_ _580_ _190__bF$buf1 _579_ _556__bF$buf1 _1191_ vdd 
+ gnd
+ OAI22X1
X_3258_ _273_ _270_ _149_ _274_ _1305_ vdd 
+ gnd
+ AOI22X1
XFILL_0__2933_ gnd vdd FILL
XFILL_0__2513_ gnd vdd FILL
XFILL_0__3471_ gnd vdd FILL
X_2949_ _45_ i_rst_n_bF$buf5 _1385_ vdd gnd AND2X2
X_2529_ _1617_ _1618_ _1620_ _1621_ vdd gnd NAND3X1
X_2109_ _926_ _1062__bF$buf2 _925_ vdd gnd NOR2X1
X_2282_ _771_ \u_cpu.bufreg2.dhi\[5] _770_ _769_ vdd gnd NAND3X1
X_3487_ _658_ _794_ _197_ _445_ vdd gnd NAND3X1
X_3067_ \u_rf_if.write_wait\[2] _126_ \u_rf_if.write_wait\[3] _132_ vdd gnd OAI21X1
XFILL_0__2742_ gnd vdd FILL
XFILL_0__3107_ gnd vdd FILL
XFILL_1__2903_ gnd vdd FILL
X_1973_ _1048_ _1047_ _1046_ vdd gnd NOR2X1
X_2758_ i_rst_n_bF$buf3 _1704__bF$buf1 _1809_ vdd gnd NAND2X1
X_2338_ \u_rf_if.rtrig1\ _713_ vdd gnd INVX1
X_2091_ _942_ _1062__bF$buf0 _941_ vdd gnd NOR2X1
X_3296_ \u_cpu.immdec.gen_immdec_w_eq_1.imm30_25\[3] _1693__bF$buf2 _304_ _305_ vdd gnd OAI21X1
XFILL_0__2971_ gnd vdd FILL
XFILL_0__3336_ gnd vdd FILL
X_2987_ \u_rf_if.read_buf0\[20] _12__bF$buf1 _74_ vdd gnd NAND2X1
X_2567_ _1651_ \u_rf_serial.tx_state\[1] _1655_ vdd gnd OR2X2
X_2147_ \u_cpu.bufreg.data\[20] \u_cpu.ctrl.o_ibus_adr\[20] _1052__bF$buf3 _891_ vdd gnd MUX2X1
XFILL_1__3250_ gnd vdd FILL
XFILL_0__3565_ gnd vdd FILL
XFILL_0__3145_ gnd vdd FILL
XFILL_1__2101_ gnd vdd FILL
XFILL_1__3726_ gnd vdd FILL
X_2796_ _1824__bF$buf2 _1834_ _1835_ _1836_ vdd gnd OAI21X1
X_2376_ _779_ _677_ _676_ _675_ vdd gnd NAND3X1
XFILL_0__2416_ gnd vdd FILL
X_4102_ _1272_ \gen_int_sys_clk.clk_sys_r_bF$buf1\ \u_cpu.bufreg.data\[20] vdd gnd DFFPOSX1
XFILL_0__3794_ gnd vdd FILL
XFILL_0__3374_ gnd vdd FILL
XFILL_1__2330_ gnd vdd FILL
X_2185_ _858_ \u_mem_serial.shift_reg\[24] _1067__bF$buf0 _857_ vdd gnd MUX2X1
XFILL_0__2645_ gnd vdd FILL
XFILL_0__2225_ gnd vdd FILL
XFILL_1__2806_ gnd vdd FILL
XFILL_0__1916_ gnd vdd FILL
X_3602_ \u_cpu.bufreg2.dlo\[4] _440__bF$buf1 _536_ vdd gnd NOR2X1
X_3199_ \u_mem_serial.shift_reg\[5] ibus_pending_ack_bF$buf6 _231_ _232_ vdd gnd OAI21X1
XFILL_0__2874_ gnd vdd FILL
XFILL_0__2454_ gnd vdd FILL
X_4140_ _1499_ i_clk_fast_bF$buf1 \u_mem_serial.shift_reg\[10] vdd gnd DFFPOSX1
XFILL132150x79350 gnd vdd FILL
XFILL_0__3239_ gnd vdd FILL
X_3831_ _1339_ \gen_int_sys_clk.clk_sys_r_bF$buf32\ \u_rf_if.rreg1_latched\[0] vdd gnd DFFPOSX1
X_3411_ \u_cpu.bufreg.data\[20] _395_ vdd gnd INVX1
XFILL_0__2683_ gnd vdd FILL
XFILL_0__3468_ gnd vdd FILL
XFILL_0__3048_ gnd vdd FILL
XFILL_1__2004_ gnd vdd FILL
XFILL_1__3629_ gnd vdd FILL
X_2699_ _1755_ _1757_ _1758_ _1442_ vdd gnd AOI21X1
X_2279_ \u_cpu.bufreg2.dhi\[4] _773_ _777_ _772_ vdd gnd OAI21X1
XFILL_0__1954_ gnd vdd FILL
X_3640_ _561_ _190__bF$buf2 _560_ _556__bF$buf4 _1210_ vdd 
+ gnd
+ OAI22X1
X_3220_ \u_mem_serial.active_ibus\ _246_ vdd gnd INVX1
XFILL_0__2319_ gnd vdd FILL
X_4005_ _1425_ \gen_int_sys_clk.clk_sys_r_bF$buf26\ \u_rf_if.read_buf1\[0] vdd gnd DFFPOSX1
X_2911_ \u_rf_if.read_buf0\[1] _12__bF$buf5 _17_ vdd gnd NAND2X1
XFILL_0__3697_ gnd vdd FILL
XFILL_0__3277_ gnd vdd FILL
XFILL_1__2233_ gnd vdd FILL
XBUFX2_insert0 _1824_ _1824__bF$buf6 vdd gnd BUFX2
XBUFX2_insert1 _1824_ _1824__bF$buf5 vdd gnd BUFX2
XBUFX2_insert2 _1824_ _1824__bF$buf4 vdd gnd BUFX2
XBUFX2_insert3 _1824_ _1824__bF$buf3 vdd gnd BUFX2
XBUFX2_insert4 _1824_ _1824__bF$buf2 vdd gnd BUFX2
XBUFX2_insert5 _1824_ _1824__bF$buf1 vdd gnd BUFX2
XBUFX2_insert6 _1824_ _1824__bF$buf0 vdd gnd BUFX2
XBUFX2_insert7 _661_ _661__bF$buf4 vdd gnd BUFX2
XBUFX2_insert8 _661_ _661__bF$buf3 vdd gnd BUFX2
XBUFX2_insert9 _661_ _661__bF$buf2 vdd gnd BUFX2
X_2088_ \u_mem_serial.shift_reg\[13] _944_ vdd gnd INVX1
XFILL_0__2548_ gnd vdd FILL
XFILL_0__2128_ gnd vdd FILL
XFILL_1__2709_ gnd vdd FILL
X_2720_ \u_rf_if.rreg0_latched\[0] \u_rf_if.rreg0_latched\[4] _1777_ vdd gnd NOR2X1
X_2300_ \u_cpu.immdec.gen_immdec_w_eq_1.imm11_7\[4] _751_ vdd gnd INVX1
XFILL_0__3086_ gnd vdd FILL
X_3925_ _1386_ \gen_int_sys_clk.clk_sys_r_bF$buf22\ \u_rf_if.read_buf0\[9] vdd gnd DFFPOSX1
X_3505_ mem_dbus_ack_bF$buf3 _460_ _455_ _461_ vdd gnd OAI21X1
XFILL_1__2462_ gnd vdd FILL
XFILL_0__2777_ gnd vdd FILL
XFILL_0__2357_ gnd vdd FILL
X_4043_ _1243_ \gen_int_sys_clk.clk_sys_r_bF$buf14\ \u_cpu.bufreg.i_shamt\[2] vdd gnd DFFPOSX1
XFILL_1__2938_ gnd vdd FILL
X_3734_ _186_ _864_ _615__bF$buf0 _1170_ vdd gnd MUX2X1
X_3314_ _1119_ _1118_ _741_ _320_ vdd gnd OAI21X1
XFILL_1__2691_ gnd vdd FILL
XFILL_0__2586_ gnd vdd FILL
X_3963_ _1404_ \gen_int_sys_clk.clk_sys_r_bF$buf39\ \u_rf_if.read_buf1\[21] vdd gnd DFFPOSX1
X_3543_ _440__bF$buf4 _490_ _491_ _1237_ vdd gnd AOI21X1
X_3123_ ibus_pending_rdt[20] _174_ vdd gnd INVX1
X_4081_ _1467_ i_clk_fast_bF$buf7 \u_rf_serial.tx_state\[1] vdd gnd DFFPOSX1
X_2814_ \u_rf_if.read_buf1\[9] \u_rf_if.read_buf1\[10] \u_rf_if.stream_active_bF$buf0\ _1849_ vdd gnd MUX2X1
XCLKBUF1_insert127 \gen_int_sys_clk.clk_sys_r_hier0_bF$buf2\ \gen_int_sys_clk.clk_sys_r_bF$buf44\ vdd gnd CLKBUF1
XCLKBUF1_insert128 \gen_int_sys_clk.clk_sys_r_hier0_bF$buf3\ \gen_int_sys_clk.clk_sys_r_bF$buf43\ vdd gnd CLKBUF1
XCLKBUF1_insert129 \gen_int_sys_clk.clk_sys_r_hier0_bF$buf2\ \gen_int_sys_clk.clk_sys_r_bF$buf42\ vdd gnd CLKBUF1
XFILL132750x75750 gnd vdd FILL
X_3772_ _1107_ _1106_ vdd gnd INVX1
X_3352_ _747_ _331_ _733__bF$buf0 _352_ vdd gnd NAND3X1
X_4137_ _1289_ \gen_int_sys_clk.clk_sys_r_bF$buf16\ \u_cpu.immdec.gen_immdec_w_eq_1.imm11_7\[2] vdd gnd DFFPOSX1
XFILL_0__3812_ gnd vdd FILL
X_2623_ ibus_pending_rdt[24] _1694_ vdd gnd INVX1
X_2203_ _842_ \u_mem_serial.shift_reg\[26] _1067__bF$buf4 _841_ vdd gnd MUX2X1
X_3828_ i_rst_n_bF$buf1 vdd _1170_ \gen_int_sys_clk.clk_sys_r_bF$buf33\ ibus_pending_rdt[23] vdd 
+ gnd
+ DFFSR
X_3408_ _393_ _392_ _661__bF$buf4 _1274_ vdd gnd MUX2X1
X_3581_ mem_dbus_ack_bF$buf6 \u_cpu.bufreg2.dlo\[10] _519_ _520_ vdd gnd OAI21X1
X_3161_ _1126__bF$buf5 _1108_ _202_ vdd gnd NOR2X1
XFILL_0_CLKBUF1_insert186 gnd vdd FILL
XFILL_0_CLKBUF1_insert188 gnd vdd FILL
X_2852_ _1824__bF$buf1 _1876_ _1877_ _1878_ vdd gnd OAI21X1
X_2432_ _1525_ _1526_ vdd gnd INVX1
X_2012_ \u_cpu.bufreg.data\[5] \u_cpu.ctrl.o_ibus_adr\[5] _1052__bF$buf3 _1011_ vdd gnd MUX2X1
X_3637_ \u_cpu.ctrl.o_ibus_adr\[22] _560_ vdd gnd INVX1
X_3217_ _244_ i_rst_n_bF$buf2 _1316_ vdd gnd AND2X2
XFILL_1__2594_ gnd vdd FILL
X_3390_ _382_ _960_ ibus_pending_ack_bF$buf1 _383_ vdd gnd MUX2X1
XBUFX2_insert172 _1704_ _1704__bF$buf3 vdd gnd BUFX2
XBUFX2_insert173 _1704_ _1704__bF$buf2 vdd gnd BUFX2
XBUFX2_insert174 _1704_ _1704__bF$buf1 vdd gnd BUFX2
XBUFX2_insert175 _1704_ _1704__bF$buf0 vdd gnd BUFX2
XBUFX2_insert176 _615_ _615__bF$buf4 vdd gnd BUFX2
XBUFX2_insert177 _615_ _615__bF$buf3 vdd gnd BUFX2
XBUFX2_insert178 _615_ _615__bF$buf2 vdd gnd BUFX2
XBUFX2_insert179 _615_ _615__bF$buf1 vdd gnd BUFX2
XFILL_0__2489_ gnd vdd FILL
XFILL_0__2069_ gnd vdd FILL
X_4175_ i_rst_n_bF$buf1 vdd _1159_ \gen_int_sys_clk.clk_sys_r_bF$buf31\ ibus_pending_rdt[12] vdd 
+ gnd
+ DFFSR
XFILL_0__3010_ gnd vdd FILL
X_2908_ _12__bF$buf4 _13_ _14_ _15_ vdd gnd OAI21X1
X_2661_ i_rst_n_bF$buf10 _756_ _1727_ vdd gnd NAND2X1
X_2241_ _1064_ _1071_ _1058__bF$buf4 _808_ vdd gnd OAI21X1
X_3866_ _1357_ \gen_int_sys_clk.clk_sys_r_bF$buf10\ \u_rf_if.wdata0_r\[0] vdd gnd DFFPOSX1
X_3446_ _412_ _411_ _661__bF$buf2 _1255_ vdd gnd MUX2X1
X_3026_ \u_rf_if.read_buf0\[29] _12__bF$buf5 _104_ vdd gnd NAND2X1
X_1932_ \u_mem_serial.bit_count\[1] \u_mem_serial.bit_count\[0] _1084_ vdd gnd NOR2X1
X_2717_ _1772_ _1774_ vdd gnd INVX2
XFILL_1__3400_ gnd vdd FILL
X_2890_ \u_rf_if.read_buf1\[26] _1824__bF$buf3 _1_ vdd gnd NAND2X1
X_2470_ _1561_ _1563_ _732_ _1564_ vdd gnd NAND3X1
X_2050_ _978_ \u_mem_serial.shift_reg\[9] _1067__bF$buf2 _977_ vdd gnd MUX2X1
XFILL_0__1989_ gnd vdd FILL
X_3675_ \u_cpu.ctrl.o_ibus_adr\[3] _579_ vdd gnd INVX1
X_3255_ _271_ _270_ _153_ _272_ _1306_ vdd 
+ gnd
+ AOI22X1
XFILL_0__3715_ gnd vdd FILL
XFILL_0_BUFX2_insert71 gnd vdd FILL
XFILL_0_BUFX2_insert72 gnd vdd FILL
XFILL_0_BUFX2_insert74 gnd vdd FILL
XFILL_0_BUFX2_insert76 gnd vdd FILL
XFILL_0_BUFX2_insert78 gnd vdd FILL
X_2946_ \u_rf_if.read_buf0\[11] \u_rf_if.read_buf0\[12] \u_rf_if.stream_active_bF$buf1\ _43_ vdd gnd MUX2X1
X_2526_ _1582_ \u_rf_serial.last_req_key\[2] _1618_ vdd gnd OR2X2
X_2106_ \u_mem_serial.shift_reg\[15] _928_ vdd gnd INVX1
X_3484_ mem_dbus_ack_bF$buf3 \u_cpu.bufreg2.cnt_next\[6] _442_ _443_ vdd gnd OAI21X1
X_3064_ \u_rf_if.write_wait\[2] _126_ _130_ vdd gnd NOR2X1
X_1970_ _1126__bF$buf5 _1049_ _1509_ vdd gnd NOR2X1
X_2755_ \u_rf_if.rreg1_latched\[4] \u_rf_if.rreg0_latched\[4] \u_rf_if.issue_sel\ _1807_ vdd gnd MUX2X1
X_2335_ _723_ _721_ _719_ _717_ _716_ vdd 
+ gnd
+ OAI22X1
X_3293_ ibus_pending_ack_bF$buf6 _301_ _302_ vdd gnd NAND2X1
X_4078_ _1515_ i_clk_fast_bF$buf0 \u_mem_serial.bit_count\[0] vdd gnd DFFPOSX1
X_2984_ _12__bF$buf2 _70_ _71_ _72_ vdd gnd OAI21X1
X_2564_ \u_rf_serial.shift_rx\[1] _1652_ i_rst_n_bF$buf3 _1653_ vdd gnd OAI21X1
X_2144_ \u_mem_serial.active_we_bF$buf3\ \u_cpu.bufreg2.dlo\[20] _894_ vdd gnd NAND2X1
X_3769_ _1124_ _1115_ _1113_ _1103_ vdd gnd OAI21X1
X_3349_ ibus_pending_ack_bF$buf3 _348_ _349_ vdd gnd NAND2X1
XFILL_0__3142_ gnd vdd FILL
XBUFX2_insert80 _1693_ _1693__bF$buf2 vdd gnd BUFX2
XBUFX2_insert81 _1693_ _1693__bF$buf1 vdd gnd BUFX2
XBUFX2_insert82 _1693_ _1693__bF$buf0 vdd gnd BUFX2
XBUFX2_insert83 \u_rf_if.stream_active\ \u_rf_if.stream_active_bF$buf7\ vdd gnd BUFX2
XBUFX2_insert84 \u_rf_if.stream_active\ \u_rf_if.stream_active_bF$buf6\ vdd gnd BUFX2
XBUFX2_insert85 \u_rf_if.stream_active\ \u_rf_if.stream_active_bF$buf5\ vdd gnd BUFX2
XFILL_1__3303_ gnd vdd FILL
XBUFX2_insert86 \u_rf_if.stream_active\ \u_rf_if.stream_active_bF$buf4\ vdd gnd BUFX2
XBUFX2_insert87 \u_rf_if.stream_active\ \u_rf_if.stream_active_bF$buf3\ vdd gnd BUFX2
XBUFX2_insert88 \u_rf_if.stream_active\ \u_rf_if.stream_active_bF$buf2\ vdd gnd BUFX2
XBUFX2_insert89 \u_rf_if.stream_active\ \u_rf_if.stream_active_bF$buf1\ vdd gnd BUFX2
X_2793_ _1833_ i_rst_n_bF$buf0 _1423_ vdd gnd AND2X2
X_2373_ rreg1[0] _678_ vdd gnd INVX1
X_3998_ _1225_ \gen_int_sys_clk.clk_sys_r_bF$buf14\ \u_cpu.bufreg2.dlo\[7] vdd gnd DFFPOSX1
X_3578_ \u_cpu.bufreg2.dlo\[10] _440__bF$buf0 _518_ vdd gnd NOR2X1
X_3158_ _196_ _670_ i_rst_n_bF$buf10 _200_ vdd gnd OAI21X1
XFILL_0__3618_ gnd vdd FILL
XFILL_0__3371_ gnd vdd FILL
X_2849_ _1875_ i_rst_n_bF$buf9 _1409_ vdd gnd AND2X2
X_2429_ \u_cpu.bufreg.i_right_shift_op\ _1522_ _1521_ _1523_ vdd gnd NAND3X1
X_2009_ \u_mem_serial.active_we_bF$buf3\ \u_cpu.bufreg2.dlo\[5] _1014_ vdd gnd NAND2X1
XFILL_1__3532_ gnd vdd FILL
X_2182_ _861_ _863_ _1058__bF$buf5 _860_ vdd gnd OAI21X1
X_3387_ rreg1[4] _323_ _381_ vdd gnd NAND2X1
XFILL_0__2222_ gnd vdd FILL
XFILL_0__3427_ gnd vdd FILL
XFILL_0__3180_ gnd vdd FILL
X_2658_ _1724_ _896_ ibus_pending_ack_bF$buf3 _1725_ vdd gnd MUX2X1
X_2238_ _1058__bF$buf0 _811_ _812_ _810_ vdd gnd OAI21X1
XFILL_1_BUFX2_insert122 gnd vdd FILL
XFILL_1__3761_ gnd vdd FILL
X_3196_ _790_ _1693__bF$buf5 _229_ _1322_ vdd gnd OAI21X1
XFILL_0__2451_ gnd vdd FILL
XFILL_0__2031_ gnd vdd FILL
X_1929_ \u_mem_serial.bit_count\[4] _1087_ vdd gnd INVX1
XFILL_0__3656_ gnd vdd FILL
XFILL_1__2612_ gnd vdd FILL
X_2887_ \u_rf_if.read_buf1\[27] \u_rf_if.stream_active_bF$buf2\ _1904_ vdd gnd NAND2X1
X_2467_ _805_ _720_ _1561_ vdd gnd NOR2X1
X_2047_ _981_ _983_ _1058__bF$buf4 _980_ vdd gnd OAI21X1
XFILL_0__2927_ gnd vdd FILL
XFILL_0__2680_ gnd vdd FILL
XFILL_0__2260_ gnd vdd FILL
XFILL132150x10950 gnd vdd FILL
XFILL_1__2841_ gnd vdd FILL
XFILL_1__3206_ gnd vdd FILL
X_2696_ \u_rf_if.stream_cnt\[4] _1756_ vdd gnd INVX1
X_2276_ \u_cpu.bufreg2.dhi\[3] _775_ vdd gnd INVX1
X_4002_ _1227_ \gen_int_sys_clk.clk_sys_r_bF$buf19\ \u_cpu.bufreg2.dlo\[9] vdd gnd DFFPOSX1
X_1967_ \u_mem_serial.state\[1] _1059_ \u_cpu.ctrl.pc\ _1051_ vdd gnd OAI21X1
XFILL_1__3435_ gnd vdd FILL
X_2085_ _1058__bF$buf6 _947_ _948_ _946_ vdd gnd OAI21X1
XFILL_0__2125_ gnd vdd FILL
XFILL_1__1921_ gnd vdd FILL
XFILL_0__3083_ gnd vdd FILL
X_3922_ _1385_ \gen_int_sys_clk.clk_sys_r_bF$buf7\ \u_rf_if.read_buf0\[10] vdd gnd DFFPOSX1
X_3502_ _775_ _457_ _458_ vdd gnd NOR2X1
XFILL_1__3664_ gnd vdd FILL
X_3099_ _155_ _904_ ibus_pending_ack_bF$buf1 _156_ vdd gnd MUX2X1
XFILL_0__2354_ gnd vdd FILL
X_4040_ _1447_ \gen_int_sys_clk.clk_sys_r_bF$buf2\ \u_rf_if.rcnt\[1] vdd gnd DFFPOSX1
XFILL_0__3559_ gnd vdd FILL
XFILL_1__2515_ gnd vdd FILL
X_3731_ _307_ _840_ _615__bF$buf2 _1173_ vdd gnd MUX2X1
X_3311_ \u_cpu.immdec.gen_immdec_w_eq_1.imm30_25\[0] _288_ _318_ vdd gnd NOR2X1
XFILL_0__2583_ gnd vdd FILL
XFILL_0__2163_ gnd vdd FILL
XFILL_0__3788_ gnd vdd FILL
XFILL_1__2744_ gnd vdd FILL
X_2599_ \u_rf_serial.last_req_key\[5] _1596_ i_rst_n_bF$buf3 _1676_ vdd gnd OAI21X1
X_2179_ _864_ _1040__bF$buf3 _863_ vdd gnd NOR2X1
X_3960_ _1403_ \gen_int_sys_clk.clk_sys_r_bF$buf39\ \u_rf_if.read_buf1\[22] vdd gnd DFFPOSX1
X_3540_ mem_dbus_ack_bF$buf2 _896_ _489_ vdd gnd NAND2X1
X_3120_ \u_rf_if.issue_chunk\[3] _168_ _1707_ _172_ vdd gnd OAI21X1
XFILL_0__2392_ gnd vdd FILL
X_2811_ \u_rf_if.read_buf1\[7] _1824__bF$buf6 _1847_ vdd gnd NAND2X1
XFILL_1__2973_ gnd vdd FILL
XFILL_0__2028_ gnd vdd FILL
X_4134_ _1496_ i_clk_fast_bF$buf5 \u_mem_serial.shift_reg\[13] vdd gnd DFFPOSX1
X_2620_ _733__bF$buf1 _1682_ _1691_ _1454_ vdd gnd AOI21X1
X_2200_ _845_ _847_ _1058__bF$buf0 _844_ vdd gnd OAI21X1
X_3825_ _1336_ \gen_int_sys_clk.clk_sys_r_bF$buf26\ \u_rf_if.rreg1_latched\[3] vdd gnd DFFPOSX1
X_3405_ \u_cpu.bufreg.data\[23] _392_ vdd gnd INVX1
XFILL_1__3567_ gnd vdd FILL
XFILL_0__2257_ gnd vdd FILL
XFILL_0_CLKBUF1_insert151 gnd vdd FILL
XFILL_0_CLKBUF1_insert153 gnd vdd FILL
XFILL_1__2418_ gnd vdd FILL
XFILL_0_CLKBUF1_insert155 gnd vdd FILL
XFILL_0_CLKBUF1_insert157 gnd vdd FILL
XFILL_0_CLKBUF1_insert159 gnd vdd FILL
X_3634_ _558_ _190__bF$buf0 _557_ _556__bF$buf3 _1213_ vdd 
+ gnd
+ OAI22X1
X_3214_ i_clk_fast_bF$buf6 _242_ _1906_ vdd gnd NOR2X1
XFILL_1__3796_ gnd vdd FILL
XFILL_0__2486_ gnd vdd FILL
XFILL_0__2066_ gnd vdd FILL
X_4172_ _1306_ \gen_int_sys_clk.clk_sys_r_bF$buf32\ rreg0[2] vdd gnd DFFPOSX1
X_2905_ \u_rf_if.stream_active_bF$buf4\ _1800_ _12_ vdd gnd NOR2X1
XFILL131550x118950 gnd vdd FILL
XFILL_1__2647_ gnd vdd FILL
X_3863_ _1355_ \gen_int_sys_clk.clk_sys_r_bF$buf10\ \u_rf_if.write_wait\[1] vdd gnd DFFPOSX1
X_3443_ \u_cpu.bufreg.data\[4] _411_ vdd gnd INVX1
X_3023_ _101_ _12__bF$buf5 i_rst_n_bF$buf7 _102_ vdd gnd OAI21X1
XFILL_0__2295_ gnd vdd FILL
XFILL_1_CLKBUF1_insert188 gnd vdd FILL
X_2714_ _1770_ _1767_ _1683_ _1771_ vdd gnd AOI21X1
X_3919_ _1201_ \gen_int_sys_clk.clk_sys_r_bF$buf41\ \u_cpu.ctrl.o_ibus_adr\[12] vdd gnd DFFPOSX1
XFILL_1__2876_ gnd vdd FILL
X_3672_ _577_ _190__bF$buf2 _576_ _556__bF$buf4 _1194_ vdd 
+ gnd
+ OAI22X1
X_3252_ _265_ _270_ _157_ _269_ _1307_ vdd 
+ gnd
+ AOI22X1
X_4037_ _1445_ \gen_int_sys_clk.clk_sys_r_bF$buf3\ \u_rf_if.wen0_r\ vdd gnd DFFPOSX1
XFILL_0_BUFX2_insert41 gnd vdd FILL
XFILL_0_BUFX2_insert43 gnd vdd FILL
XFILL_0_BUFX2_insert45 gnd vdd FILL
XFILL_0_BUFX2_insert47 gnd vdd FILL
XFILL_0_BUFX2_insert49 gnd vdd FILL
X_2943_ \u_rf_if.read_buf0\[9] _12__bF$buf3 _41_ vdd gnd NAND2X1
X_2523_ \u_rf_serial.last_req_key\[4] _1578_ _1614_ _1615_ vdd gnd OAI21X1
X_2103_ _1058__bF$buf2 _931_ _932_ _930_ vdd gnd OAI21X1
X_3728_ _289_ _816_ _615__bF$buf0 _1176_ vdd gnd MUX2X1
X_3308_ \u_mem_serial.shift_reg\[25] ibus_pending_ack_bF$buf5 _314_ _315_ vdd gnd OAI21X1
X_3481_ _437_ _439_ _761_ _440_ vdd gnd OAI21X1
X_3061_ _756_ _127_ _1126__bF$buf0 _1355_ vdd gnd AOI21X1
XFILL_0__3521_ gnd vdd FILL
XFILL_0__3101_ gnd vdd FILL
XFILL132750x61350 gnd vdd FILL
XFILL_1__1956_ gnd vdd FILL
XFILL132750x28950 gnd vdd FILL
X_2752_ _1802_ _1805_ _1126__bF$buf6 _1436_ vdd gnd AOI21X1
X_2332_ _720_ _719_ vdd gnd INVX1
X_3957_ _1210_ \gen_int_sys_clk.clk_sys_r_bF$buf23\ \u_cpu.ctrl.o_ibus_adr\[21] vdd gnd DFFPOSX1
X_3537_ mem_dbus_ack_bF$buf4 \u_cpu.bufreg2.dlo\[21] _486_ _487_ vdd gnd OAI21X1
X_3117_ _158_ _164_ _1701_ _170_ vdd gnd OAI21X1
X_3290_ \u_cpu.immdec.gen_immdec_w_eq_1.imm30_25\[3] _288_ _300_ vdd gnd NOR2X1
X_4075_ _1260_ \gen_int_sys_clk.clk_sys_r_bF$buf21\ \u_cpu.bufreg.data\[8] vdd gnd DFFPOSX1
XFILL_0__3750_ gnd vdd FILL
XFILL_0__3330_ gnd vdd FILL
X_2808_ _1824__bF$buf5 _1843_ _1844_ _1845_ vdd gnd OAI21X1
X_2981_ _69_ i_rst_n_bF$buf4 _1377_ vdd gnd AND2X2
X_2561_ \u_rf_serial.tx_state\[2] _1650_ vdd gnd INVX1
X_2141_ _1126__bF$buf2 _897_ _1490_ vdd gnd NOR2X1
X_3766_ \u_mem_serial.req_pending\ \u_mem_serial.state\[0] _1101_ _1100_ vdd gnd OAI21X1
X_3346_ _346_ _1289_ vdd gnd INVX1
XFILL_0__2601_ gnd vdd FILL
XFILL_1__3088_ gnd vdd FILL
XFILL_0__2198_ gnd vdd FILL
X_2617_ \u_rf_if.write_wait\[5] _1688_ _1689_ vdd gnd NOR2X1
XFILL_1__2779_ gnd vdd FILL
XBUFX2_insert50 ibus_pending_ack ibus_pending_ack_bF$buf6 vdd gnd BUFX2
XBUFX2_insert51 ibus_pending_ack ibus_pending_ack_bF$buf5 vdd gnd BUFX2
XBUFX2_insert52 ibus_pending_ack ibus_pending_ack_bF$buf4 vdd gnd BUFX2
XBUFX2_insert53 ibus_pending_ack ibus_pending_ack_bF$buf3 vdd gnd BUFX2
XBUFX2_insert54 ibus_pending_ack ibus_pending_ack_bF$buf2 vdd gnd BUFX2
XBUFX2_insert55 ibus_pending_ack ibus_pending_ack_bF$buf1 vdd gnd BUFX2
XBUFX2_insert56 ibus_pending_ack ibus_pending_ack_bF$buf0 vdd gnd BUFX2
XBUFX2_insert57 _190_ _190__bF$buf4 vdd gnd BUFX2
XBUFX2_insert58 _190_ _190__bF$buf3 vdd gnd BUFX2
XBUFX2_insert59 _190_ _190__bF$buf2 vdd gnd BUFX2
X_2790_ \u_rf_if.read_buf1\[3] \u_rf_if.read_buf1\[4] \u_rf_if.stream_active_bF$buf6\ _1831_ vdd gnd MUX2X1
X_2370_ _692_ _683_ _681_ vdd gnd NAND2X1
X_3995_ _1420_ \gen_int_sys_clk.clk_sys_r_bF$buf20\ \u_rf_if.read_buf1\[5] vdd gnd DFFPOSX1
X_3575_ _440__bF$buf0 _514_ _515_ _1229_ vdd gnd AOI21X1
X_3155_ _197_ _198_ vdd gnd INVX1
XFILL_0__2830_ gnd vdd FILL
XFILL_0__2410_ gnd vdd FILL
X_2846_ \u_rf_if.read_buf1\[17] \u_rf_if.read_buf1\[18] \u_rf_if.stream_active_bF$buf0\ _1873_ vdd gnd MUX2X1
X_2426_ _1517_ _1518_ _790_ _1520_ vdd gnd OAI21X1
X_2006_ _1126__bF$buf3 _1017_ _1505_ vdd gnd NOR2X1
X_3384_ _378_ _288_ _379_ vdd gnd NAND2X1
X_4169_ _1513_ i_clk_fast_bF$buf0 \u_mem_serial.bit_count\[2] vdd gnd DFFPOSX1
XFILL_0__3424_ gnd vdd FILL
XFILL_0__3004_ gnd vdd FILL
X_2655_ _1126__bF$buf4 _1722_ _1450_ vdd gnd NOR2X1
X_2235_ _814_ _1062__bF$buf3 _813_ vdd gnd NOR2X1
X_3193_ ibus_pending_rdt[12] _227_ vdd gnd INVX1
X_1926_ \u_mem_serial.bit_count\[2] _1092_ _1089_ vdd gnd NOR2X1
XFILL_0__3653_ gnd vdd FILL
XFILL_0__3233_ gnd vdd FILL
XFILL_1__3814_ gnd vdd FILL
X_2884_ _1824__bF$buf3 _1900_ _1901_ _1902_ vdd gnd OAI21X1
X_2464_ \u_rf_if.wdata0_next\[0] _1558_ vdd gnd INVX1
X_2044_ _984_ _1040__bF$buf0 _983_ vdd gnd NOR2X1
X_3669_ \u_cpu.ctrl.o_ibus_adr\[6] _576_ vdd gnd INVX1
X_3249_ _267_ _754_ _268_ vdd gnd NAND2X1
XFILL_0__2504_ gnd vdd FILL
XFILL_0__3462_ gnd vdd FILL
XFILL_0__3042_ gnd vdd FILL
X_2693_ _1751_ _1752_ _1753_ vdd gnd NOR2X1
X_2273_ _780_ _779_ _786_ _778_ vdd gnd OAI21X1
X_3898_ _1373_ \gen_int_sys_clk.clk_sys_r_bF$buf44\ \u_rf_if.read_buf0\[22] vdd gnd DFFPOSX1
X_3478_ _435_ _436_ _754_ _437_ vdd gnd OAI21X1
X_3058_ \u_rf_if.write_wait\[0] _1689_ \u_rf_if.write_wait\[1] _125_ vdd gnd OAI21X1
XFILL_0__2733_ gnd vdd FILL
XFILL_0__2313_ gnd vdd FILL
X_1964_ _1060_ _1055_ _1054_ vdd gnd NOR2X1
XFILL_0__3691_ gnd vdd FILL
XFILL_0__3271_ gnd vdd FILL
X_2749_ \u_rf_if.read_buf0\[30] _619_ _1803_ vdd gnd NAND2X1
X_2329_ ren_bF$buf1 _747_ _722_ vdd gnd NOR2X1
X_2082_ _950_ _1062__bF$buf2 _949_ vdd gnd NOR2X1
X_3287_ \u_mem_serial.shift_reg\[28] ibus_pending_ack_bF$buf5 _296_ _297_ vdd gnd OAI21X1
XFILL_0__2962_ gnd vdd FILL
XFILL_0__2542_ gnd vdd FILL
XFILL_0__3327_ gnd vdd FILL
X_2978_ \u_rf_if.read_buf0\[19] \u_rf_if.read_buf0\[20] \u_rf_if.stream_active_bF$buf3\ _67_ vdd gnd MUX2X1
X_2558_ i_rst_n_bF$buf3 \u_rf_serial.tx_state\[4] _1648_ vdd gnd NAND2X1
X_2138_ \u_cpu.bufreg.data\[19] \u_cpu.ctrl.o_ibus_adr\[19] _1052__bF$buf3 _899_ vdd gnd MUX2X1
X_3096_ _153_ _150_ _1126__bF$buf1 _1346_ vdd gnd AOI21X1
XFILL_0__2771_ gnd vdd FILL
XFILL_0__3556_ gnd vdd FILL
XFILL_0__3136_ gnd vdd FILL
XFILL_1__3717_ gnd vdd FILL
X_2787_ \u_rf_if.read_buf1\[1] _1824__bF$buf2 _1829_ vdd gnd NAND2X1
X_2367_ _688_ _687_ _685_ _684_ vdd gnd OAI21X1
XFILL_0__2407_ gnd vdd FILL
XFILL_0__3785_ gnd vdd FILL
XFILL_0__3365_ gnd vdd FILL
XFILL_1__2321_ gnd vdd FILL
X_2596_ _1673_ _1674_ _1126__bF$buf7 _1461_ vdd gnd AOI21X1
X_2176_ _866_ \u_mem_serial.shift_reg\[23] _1067__bF$buf2 _865_ vdd gnd MUX2X1
XFILL_0__2636_ gnd vdd FILL
XFILL_0__2216_ gnd vdd FILL
XFILL_0__3594_ gnd vdd FILL
XFILL_0__3174_ gnd vdd FILL
XFILL132150x86550 gnd vdd FILL
XFILL_1__2550_ gnd vdd FILL
XFILL_0__2865_ gnd vdd FILL
XFILL_0__2445_ gnd vdd FILL
X_4131_ _1286_ \gen_int_sys_clk.clk_sys_r_bF$buf25\ \u_cpu.immdec.gen_immdec_w_eq_1.imm31\ vdd gnd DFFPOSX1
XFILL131850x68550 gnd vdd FILL
X_3822_ i_rst_n_bF$buf1 vdd _1167_ \gen_int_sys_clk.clk_sys_r_bF$buf33\ ibus_pending_rdt[20] vdd 
+ gnd
+ DFFSR
X_3402_ _390_ _389_ _661__bF$buf4 _1277_ vdd gnd MUX2X1
XFILL_0__2674_ gnd vdd FILL
XFILL_0__3459_ gnd vdd FILL
XFILL_0__3039_ gnd vdd FILL
XFILL_0_CLKBUF1_insert127 gnd vdd FILL
XFILL_0_CLKBUF1_insert129 gnd vdd FILL
XFILL_0__1945_ gnd vdd FILL
X_3631_ \u_cpu.ctrl.o_ibus_adr\[25] _557_ vdd gnd INVX1
X_3211_ \u_mem_serial.shift_reg\[2] ibus_pending_ack_bF$buf4 _240_ _241_ vdd gnd OAI21X1
XBUFX2_insert110 _1058_ _1058__bF$buf0 vdd gnd BUFX2
XBUFX2_insert111 _733_ _733__bF$buf5 vdd gnd BUFX2
XBUFX2_insert112 _733_ _733__bF$buf4 vdd gnd BUFX2
XBUFX2_insert113 _733_ _733__bF$buf3 vdd gnd BUFX2
XBUFX2_insert114 _733_ _733__bF$buf2 vdd gnd BUFX2
XBUFX2_insert115 _733_ _733__bF$buf1 vdd gnd BUFX2
XBUFX2_insert116 _733_ _733__bF$buf0 vdd gnd BUFX2
XBUFX2_insert117 _1052_ _1052__bF$buf4 vdd gnd BUFX2
XBUFX2_insert118 _1052_ _1052__bF$buf3 vdd gnd BUFX2
XBUFX2_insert119 _1052_ _1052__bF$buf2 vdd gnd BUFX2
X_2902_ \u_rf_if.read_buf1\[29] _1824__bF$buf5 _10_ vdd gnd NAND2X1
XFILL_0__3688_ gnd vdd FILL
XFILL_0__3268_ gnd vdd FILL
X_2499_ \u_rf_serial.tx_state\[4] _1592_ vdd gnd INVX1
X_2079_ \u_mem_serial.shift_reg\[12] _952_ vdd gnd INVX1
X_3860_ i_rst_n_bF$buf8 _1126_ vdd gnd INVX8
X_3440_ _409_ _408_ _661__bF$buf1 _1258_ vdd gnd MUX2X1
X_3020_ \u_rf_if.read_buf0\[27] _12__bF$buf5 _100_ vdd gnd NAND2X1
XFILL_0__2539_ gnd vdd FILL
XFILL_0__2119_ gnd vdd FILL
XFILL_1_CLKBUF1_insert153 gnd vdd FILL
XFILL_1_CLKBUF1_insert157 gnd vdd FILL
X_2711_ _1698_ _1699_ _1768_ vdd gnd NAND2X1
XFILL_0__3497_ gnd vdd FILL
XFILL_0__3077_ gnd vdd FILL
X_3916_ _1382_ \gen_int_sys_clk.clk_sys_r_bF$buf22\ \u_rf_if.read_buf0\[13] vdd gnd DFFPOSX1
XFILL_0__2768_ gnd vdd FILL
XFILL_0__2348_ gnd vdd FILL
X_4034_ _1239_ \gen_int_sys_clk.clk_sys_r_bF$buf36\ \u_cpu.bufreg2.dlo\[21] vdd gnd DFFPOSX1
XFILL_1__2929_ gnd vdd FILL
XFILL_0_BUFX2_insert10 gnd vdd FILL
XFILL_0_BUFX2_insert12 gnd vdd FILL
X_1999_ _1024_ _1040__bF$buf3 _1023_ vdd gnd NOR2X1
XFILL_0_BUFX2_insert14 gnd vdd FILL
XFILL_0_BUFX2_insert15 gnd vdd FILL
XFILL_0_BUFX2_insert17 gnd vdd FILL
XFILL_0_BUFX2_insert19 gnd vdd FILL
X_2940_ _12__bF$buf1 _37_ _38_ _39_ vdd gnd OAI21X1
X_2520_ raddr[6] ren_bF$buf1 _1612_ vdd gnd NAND2X1
X_2100_ _934_ _1062__bF$buf1 _933_ vdd gnd NOR2X1
X_3725_ _613_ _614_ vdd gnd INVX1
X_3305_ _288_ _311_ _312_ _1296_ vdd gnd AOI21X1
XFILL_0__2997_ gnd vdd FILL
XFILL_0__2577_ gnd vdd FILL
XFILL_0__2157_ gnd vdd FILL
XFILL131850x118950 gnd vdd FILL
X_3954_ _1400_ \gen_int_sys_clk.clk_sys_r_bF$buf39\ \u_rf_if.read_buf1\[25] vdd gnd DFFPOSX1
X_3534_ \u_cpu.bufreg2.dlo\[21] _440__bF$buf1 _485_ vdd gnd NOR2X1
X_3114_ _167_ _1691_ _1342_ vdd gnd NOR2X1
XFILL_1__2071_ gnd vdd FILL
XFILL132750x82950 gnd vdd FILL
XFILL_0__2386_ gnd vdd FILL
X_4072_ _1463_ i_clk_fast_bF$buf7 \u_rf_serial.last_req_key\[1] vdd gnd DFFPOSX1
X_2805_ _1842_ i_rst_n_bF$buf0 _1420_ vdd gnd AND2X2
X_3763_ \u_mem_serial.bit_count\[0] _1098_ _1097_ vdd gnd NOR2X1
X_3343_ _343_ _1693__bF$buf4 _344_ vdd gnd NAND2X1
X_4128_ _1493_ i_clk_fast_bF$buf4 \u_mem_serial.shift_reg\[16] vdd gnd DFFPOSX1
XFILL_0__3803_ gnd vdd FILL
X_2614_ \u_rf_if.write_wait\[1] \u_rf_if.write_wait\[0] _1686_ vdd gnd NOR2X1
XFILL_1__1991_ gnd vdd FILL
X_3819_ _1332_ \gen_int_sys_clk.clk_sys_r_bF$buf2\ \u_cpu.state.cnt_r\[0] vdd gnd DFFPOSX1
XBUFX2_insert20 ren ren_bF$buf0 vdd gnd BUFX2
XBUFX2_insert21 i_rst_n i_rst_n_bF$buf10 vdd gnd BUFX2
XBUFX2_insert22 i_rst_n i_rst_n_bF$buf9 vdd gnd BUFX2
XBUFX2_insert23 i_rst_n i_rst_n_bF$buf8 vdd gnd BUFX2
XBUFX2_insert24 i_rst_n i_rst_n_bF$buf7 vdd gnd BUFX2
XBUFX2_insert25 i_rst_n i_rst_n_bF$buf6 vdd gnd BUFX2
XBUFX2_insert26 i_rst_n i_rst_n_bF$buf5 vdd gnd BUFX2
XBUFX2_insert27 i_rst_n i_rst_n_bF$buf4 vdd gnd BUFX2
XBUFX2_insert28 i_rst_n i_rst_n_bF$buf3 vdd gnd BUFX2
XBUFX2_insert29 i_rst_n i_rst_n_bF$buf2 vdd gnd BUFX2
X_3992_ _1222_ \gen_int_sys_clk.clk_sys_r_bF$buf29\ \u_cpu.bufreg2.dlo\[4] vdd gnd DFFPOSX1
X_3572_ mem_dbus_ack_bF$buf1 _960_ _513_ vdd gnd NAND2X1
X_3152_ _756_ _195_ _1126__bF$buf0 _1332_ vdd gnd AOI21X1
XFILL_0__3612_ gnd vdd FILL
X_2843_ \u_rf_if.read_buf1\[15] _1824__bF$buf4 _1871_ vdd gnd NAND2X1
X_2423_ _1130_ _1517_ vdd gnd INVX1
X_2003_ \u_cpu.bufreg.data\[4] \u_cpu.ctrl.o_ibus_adr\[4] _1052__bF$buf3 _1019_ vdd gnd MUX2X1
X_3628_ \u_cpu.ctrl.o_ibus_adr\[27] _555_ vdd gnd INVX1
X_3208_ _237_ _238_ vdd gnd INVX1
X_3381_ _367_ _374_ _375_ _373_ _376_ vdd 
+ gnd
+ OAI22X1
X_4166_ _1303_ \gen_int_sys_clk.clk_sys_r_bF$buf40\ \u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20\[3] vdd gnd DFFPOSX1
X_2652_ \u_cpu.bufreg.data\[31] \u_cpu.ctrl.o_ibus_adr\[31] _1052__bF$buf1 _1720_ vdd gnd MUX2X1
X_2232_ \u_mem_serial.shift_reg\[29] _816_ vdd gnd INVX1
X_3857_ _1352_ \gen_int_sys_clk.clk_sys_r_bF$buf0\ \u_rf_if.write_wait\[4] vdd gnd DFFPOSX1
X_3437_ \u_cpu.bufreg.data\[7] _408_ vdd gnd INVX1
X_3017_ \u_rf_if.read_buf0\[28] \u_rf_if.stream_active_bF$buf6\ _97_ vdd gnd NAND2X1
XFILL_1_BUFX2_insert83 gnd vdd FILL
XFILL_1_BUFX2_insert87 gnd vdd FILL
XFILL_0_CLKBUF1_insert63 gnd vdd FILL
XFILL_0_CLKBUF1_insert65 gnd vdd FILL
XFILL_0_CLKBUF1_insert67 gnd vdd FILL
XFILL_0_CLKBUF1_insert69 gnd vdd FILL
X_3190_ \u_mem_serial.shift_reg\[13] ibus_pending_ack_bF$buf0 _224_ _225_ vdd gnd OAI21X1
X_1923_ \u_mem_serial.bit_count\[2] _1092_ _1107_ _1091_ vdd gnd OAI21X1
XFILL_0__2289_ gnd vdd FILL
XFILL_0__3230_ gnd vdd FILL
X_2708_ _1765_ i_rst_n_bF$buf5 _1440_ vdd gnd AND2X2
X_2881_ _1899_ i_rst_n_bF$buf9 _1401_ vdd gnd AND2X2
X_2461_ _1554_ _1553_ _1542_ _1555_ vdd gnd OAI21X1
X_2041_ _986_ \u_mem_serial.shift_reg\[8] _1067__bF$buf1 _985_ vdd gnd MUX2X1
X_3666_ _574_ _190__bF$buf4 _573_ _556__bF$buf2 _1197_ vdd 
+ gnd
+ OAI22X1
X_3246_ rreg0[3] _265_ vdd gnd INVX1
XFILL_0__3706_ gnd vdd FILL
XFILL132750x14550 gnd vdd FILL
X_2937_ _36_ i_rst_n_bF$buf8 _1388_ vdd gnd AND2X2
X_2517_ _718_ _732_ _1609_ vdd gnd NAND2X1
XFILL_1__3620_ gnd vdd FILL
X_2690_ \u_rf_if.stream_cnt\[3] _1750_ vdd gnd INVX1
X_2270_ _786_ _782_ _793_ _781_ vdd gnd AOI21X1
X_3895_ _1195_ \gen_int_sys_clk.clk_sys_r_bF$buf41\ \u_cpu.ctrl.o_ibus_adr\[6] vdd gnd DFFPOSX1
X_3475_ _661__bF$buf0 _433_ _434_ _1248_ vdd gnd OAI21X1
X_3055_ \u_rf_if.write_wait\[0] _123_ vdd gnd INVX1
XFILL_0__2310_ gnd vdd FILL
XFILL_0__3515_ gnd vdd FILL
X_1961_ _1058__bF$buf4 _1057_ vdd gnd INVX1
X_2746_ _1789_ _1800_ _1801_ vdd gnd NAND2X1
X_2326_ \u_rf_serial.tx_state\[0] _725_ vdd gnd INVX1
X_3284_ _288_ _293_ _294_ _1299_ vdd gnd AOI21X1
XFILL_0_BUFX2_insert100 gnd vdd FILL
XFILL_0_BUFX2_insert102 gnd vdd FILL
XFILL_0_BUFX2_insert103 gnd vdd FILL
XFILL_0_BUFX2_insert105 gnd vdd FILL
XFILL_0_BUFX2_insert107 gnd vdd FILL
XFILL_0_BUFX2_insert109 gnd vdd FILL
X_4069_ _1257_ \gen_int_sys_clk.clk_sys_r_bF$buf34\ \u_cpu.bufreg.data\[5] vdd gnd DFFPOSX1
XFILL_0__3744_ gnd vdd FILL
XFILL_1__2700_ gnd vdd FILL
X_2975_ \u_rf_if.read_buf0\[17] _12__bF$buf2 _65_ vdd gnd NAND2X1
X_2555_ _1644_ _1600_ _1646_ _1474_ vdd gnd AOI21X1
X_2135_ \u_mem_serial.active_we_bF$buf3\ \u_cpu.bufreg2.dlo\[19] _902_ vdd gnd NAND2X1
X_3093_ ibus_pending_rdt[17] _151_ vdd gnd INVX1
X_2784_ _1824__bF$buf2 _1825_ _1826_ _1827_ vdd gnd OAI21X1
X_2364_ \u_cpu.branch_op\ \u_cpu.decode.opcode\[2] _687_ vdd gnd NAND2X1
X_3989_ _1417_ \gen_int_sys_clk.clk_sys_r_bF$buf20\ \u_rf_if.read_buf1\[8] vdd gnd DFFPOSX1
X_3569_ mem_dbus_ack_bF$buf6 \u_cpu.bufreg2.dlo\[13] _510_ _511_ vdd gnd OAI21X1
X_3149_ i_rst_n_bF$buf10 \u_cpu.state.cnt_r\[1] _1334_ vdd gnd AND2X2
XFILL_0__3609_ gnd vdd FILL
XFILL_1__3523_ gnd vdd FILL
X_2593_ _1672_ i_rst_n_bF$buf3 _1462_ vdd gnd AND2X2
X_2173_ _869_ _871_ _1058__bF$buf3 _868_ vdd gnd OAI21X1
X_3798_ ibus_pending_ack_bF$buf2 _642_ _643_ _644_ vdd gnd OAI21X1
X_3378_ \u_cpu.immdec.gen_immdec_w_eq_1.imm31\ _674_ _372_ _373_ vdd gnd AOI21X1
XFILL_0__2213_ gnd vdd FILL
XFILL_0__3418_ gnd vdd FILL
XFILL_0__3171_ gnd vdd FILL
X_2649_ \u_mem_serial.active_we_bF$buf2\ \u_cpu.bufreg2.cnt_next\[6] _1717_ vdd gnd NAND2X1
X_2229_ _1058__bF$buf0 _819_ _820_ _818_ vdd gnd OAI21X1
XFILL_1__3752_ gnd vdd FILL
X_3187_ _1125_ _221_ _222_ _1324_ vdd gnd OAI21X1
XFILL_0__2442_ gnd vdd FILL
XFILL_0__2022_ gnd vdd FILL
XFILL132450x3750 gnd vdd FILL
XFILL_0__3647_ gnd vdd FILL
XFILL_1__2603_ gnd vdd FILL
X_2878_ \u_rf_if.read_buf1\[25] \u_rf_if.read_buf1\[26] \u_rf_if.stream_active_bF$buf7\ _1897_ vdd gnd MUX2X1
X_2458_ _1546_ _1547_ _1543_ _1552_ vdd gnd OAI21X1
X_2038_ _989_ _991_ _1058__bF$buf5 _988_ vdd gnd OAI21X1
XFILL_0__2918_ gnd vdd FILL
XFILL_0__2671_ gnd vdd FILL
XFILL_0__2251_ gnd vdd FILL
XFILL_1__2832_ gnd vdd FILL
X_2687_ \u_rf_if.write_wait\[5] _1688_ _1749_ vdd gnd NAND2X1
X_2267_ \u_cpu.state.cnt_r\[3] \u_cpu.bufreg2.i_bytecnt\[0] \u_cpu.state.o_cnt\[2] _784_ vdd gnd NAND3X1
XFILL_0__2727_ gnd vdd FILL
XFILL_0__2480_ gnd vdd FILL
XFILL_0__2060_ gnd vdd FILL
X_1958_ _1072_ _1094_ _1079_ _1060_ vdd gnd AOI21X1
X_2496_ _1589_ _1576_ _800_ _1590_ vdd gnd AOI21X1
X_2076_ _1058__bF$buf5 _955_ _956_ _954_ vdd gnd OAI21X1
XFILL_0__2956_ gnd vdd FILL
XFILL_1__1912_ gnd vdd FILL
XFILL_1_CLKBUF1_insert127 gnd vdd FILL
XFILL_0__3074_ gnd vdd FILL
X_3913_ _1123_ _1122_ _1121_ vdd gnd AND2X2
XFILL_0__1980_ gnd vdd FILL
X_4031_ _1441_ \gen_int_sys_clk.clk_sys_r_bF$buf8\ \u_rf_if.ready_pulse\ vdd gnd DFFPOSX1
XFILL_1__2506_ gnd vdd FILL
X_1996_ _1026_ \u_mem_serial.shift_reg\[3] _1067__bF$buf1 _1025_ vdd gnd MUX2X1
X_3722_ _1076_ \u_mem_serial.bit_count\[6] _1106_ _612_ vdd gnd AOI21X1
X_3302_ _309_ _1693__bF$buf1 _310_ vdd gnd NAND2X1
XFILL_1__3044_ gnd vdd FILL
XFILL_0__2574_ gnd vdd FILL
XFILL_0__2154_ gnd vdd FILL
XFILL_0__3779_ gnd vdd FILL
XFILL_0__3359_ gnd vdd FILL
XFILL_1__2735_ gnd vdd FILL
X_3951_ i_rst_n_bF$buf1 vdd _1152_ \gen_int_sys_clk.clk_sys_r_bF$buf33\ ibus_pending_rdt[5] vdd 
+ gnd
+ DFFSR
X_3531_ _440__bF$buf2 _481_ _482_ _1240_ vdd gnd AOI21X1
X_3111_ _158_ _164_ _165_ vdd gnd NOR2X1
XFILL_1__3273_ gnd vdd FILL
XFILL_0__2383_ gnd vdd FILL
X_2802_ \u_rf_if.read_buf1\[6] \u_rf_if.read_buf1\[7] \u_rf_if.stream_active_bF$buf6\ _1840_ vdd gnd MUX2X1
XFILL_0__3588_ gnd vdd FILL
XFILL_1__2964_ gnd vdd FILL
X_2399_ _768_ _648_ _781_ _626_ vdd gnd MUX2X1
X_3760_ _618_ _545_ _615__bF$buf4 _1147_ vdd gnd MUX2X1
X_3340_ ibus_pending_rdt[9] _341_ vdd gnd INVX1
XFILL_0__2859_ gnd vdd FILL
X_4125_ _1283_ \gen_int_sys_clk.clk_sys_r_bF$buf32\ \u_cpu.immdec.gen_immdec_w_eq_1.imm30_25\[5] vdd gnd DFFPOSX1
XFILL_0__2192_ gnd vdd FILL
X_2611_ \u_rf_if.prefetch_active\ _1683_ vdd gnd INVX2
X_3816_ _359_ _654_ _615__bF$buf1 _1127_ vdd gnd MUX2X1
X_2840_ _1824__bF$buf4 _1867_ _1868_ _1869_ vdd gnd OAI21X1
X_2420_ _1140_ _1317_ _1476_ vdd gnd NAND2X1
X_2000_ \u_mem_serial.active_we_bF$buf3\ \u_cpu.bufreg2.dlo\[4] _1022_ vdd gnd NAND2X1
X_3625_ mem_dbus_ack_bF$buf3 \u_mem_serial.shift_reg\[31] _441_ _553_ vdd gnd AOI21X1
X_3205_ ibus_pending_rdt[3] \u_mem_serial.shift_reg\[3] ibus_pending_ack_bF$buf0 _236_ vdd gnd MUX2X1
XFILL_0__2057_ gnd vdd FILL
X_4163_ _1510_ i_clk_fast_bF$buf0 \u_mem_serial.bit_count\[5] vdd gnd DFFPOSX1
XFILL_1__2638_ gnd vdd FILL
X_3854_ _1182_ \gen_int_sys_clk.clk_sys_r_bF$buf2\ \u_cpu.alu.add_cy_r\ vdd gnd DFFPOSX1
X_3434_ _406_ _405_ _661__bF$buf1 _1261_ vdd gnd MUX2X1
X_3014_ \u_rf_if.read_buf0\[26] _12__bF$buf5 _95_ vdd gnd NAND2X1
XFILL_1_BUFX2_insert52 gnd vdd FILL
XFILL_1_BUFX2_insert56 gnd vdd FILL
XFILL_1__3176_ gnd vdd FILL
X_1920_ _1097_ _1094_ _1106_ _1093_ vdd gnd AOI21X1
XFILL_0__2286_ gnd vdd FILL
X_2705_ _619_ _1755_ _1762_ _1763_ vdd gnd OAI21X1
XFILL_1__2867_ gnd vdd FILL
X_3663_ \u_cpu.ctrl.o_ibus_adr\[9] _573_ vdd gnd INVX1
X_3243_ _262_ _1715_ ibus_pending_ack_bF$buf5 _263_ vdd gnd MUX2X1
X_4028_ _1439_ \gen_int_sys_clk.clk_sys_r_bF$buf38\ \u_rf_if.read_buf1\[31] vdd gnd DFFPOSX1
XFILL_0__2095_ gnd vdd FILL
X_2934_ \u_rf_if.read_buf0\[8] \u_rf_if.read_buf0\[9] \u_rf_if.stream_active_bF$buf3\ _34_ vdd gnd MUX2X1
X_2514_ \u_rf_serial.last_req_key\[5] _1575_ _1605_ _1606_ vdd gnd OAI21X1
X_3719_ _606_ _608_ _610_ _0_ vdd gnd AOI21X1
X_3892_ _1370_ \gen_int_sys_clk.clk_sys_r_bF$buf20\ \u_rf_if.read_buf0\[25] vdd gnd DFFPOSX1
X_3472_ _417_ _261_ _432_ vdd gnd NOR2X1
X_3052_ raddr[7] _1704__bF$buf0 i_rst_n_bF$buf7 _122_ vdd gnd OAI21X1
XFILL_0__3512_ gnd vdd FILL
XFILL_1__1947_ gnd vdd FILL
X_2743_ \u_rf_if.issue_sel\ _1771_ _1798_ vdd gnd NAND2X1
X_2323_ \u_rf_serial.tx_state\[0] _729_ _728_ vdd gnd NOR2X1
X_3948_ _1397_ \gen_int_sys_clk.clk_sys_r_bF$buf42\ \u_rf_if.read_buf1\[28] vdd gnd DFFPOSX1
X_3528_ mem_dbus_ack_bF$buf5 _872_ _480_ vdd gnd NAND2X1
X_3108_ _161_ _162_ _163_ vdd gnd OR2X2
X_3281_ _291_ _1693__bF$buf5 _292_ vdd gnd NAND2X1
X_4066_ _1460_ i_clk_fast_bF$buf3 \u_rf_serial.last_req_key\[4] vdd gnd DFFPOSX1
XFILL_0__3741_ gnd vdd FILL
XFILL_0__3321_ gnd vdd FILL
X_2972_ _12__bF$buf3 _61_ _62_ _63_ vdd gnd OAI21X1
X_2552_ _1601_ _1643_ _1644_ vdd gnd NAND2X1
X_2132_ _1126__bF$buf3 _905_ _1491_ vdd gnd NOR2X1
X_3757_ ibus_pending_rdt[1] _617_ vdd gnd INVX1
X_3337_ _337_ _338_ _333_ _339_ vdd gnd NAND3X1
XFILL_1__3079_ gnd vdd FILL
X_3090_ _148_ _1693__bF$buf1 _149_ vdd gnd NAND2X1
XFILL_0__2189_ gnd vdd FILL
XFILL_0__3550_ gnd vdd FILL
XFILL_0__3130_ gnd vdd FILL
X_2608_ _1595_ _1594_ \u_rf_serial.last_req_key\[9] _1681_ vdd gnd OAI21X1
X_2781_ \u_rf_if.stream_active_bF$buf5\ _1774_ _1824_ vdd gnd NOR2X1
X_2361_ _744_ _1118_ _691_ _690_ vdd gnd NAND3X1
X_3986_ _1219_ \gen_int_sys_clk.clk_sys_r_bF$buf37\ \u_cpu.bufreg2.dlo\[1] vdd gnd DFFPOSX1
X_3566_ \u_cpu.bufreg2.dlo\[13] _440__bF$buf0 _509_ vdd gnd NOR2X1
X_3146_ _1126__bF$buf0 _752_ _193_ vdd gnd NOR2X1
XFILL_0__2821_ gnd vdd FILL
XFILL_0__2401_ gnd vdd FILL
X_2837_ _1866_ i_rst_n_bF$buf9 _1412_ vdd gnd AND2X2
X_2417_ _1141_ _1143_ _1144_ _1146_ vdd gnd NAND3X1
XFILL_1__2159_ gnd vdd FILL
X_2590_ _1670_ i_rst_n_bF$buf3 _1463_ vdd gnd AND2X2
X_2170_ _872_ _1040__bF$buf0 _871_ vdd gnd NOR2X1
X_3795_ _235_ _641_ vdd gnd INVX1
X_3375_ _744_ _691_ _370_ vdd gnd NAND2X1
XFILL_0__2630_ gnd vdd FILL
XFILL_0__3415_ gnd vdd FILL
X_2646_ _1714_ _1710_ _1126__bF$buf5 _1451_ vdd gnd AOI21X1
X_2226_ _822_ _1062__bF$buf3 _821_ vdd gnd NOR2X1
XFILL_1__2388_ gnd vdd FILL
X_3184_ _765_ _220_ _1126__bF$buf0 _1325_ vdd gnd AOI21X1
X_1917_ _0_ o_mem_mosi vdd gnd BUFX2
XFILL_0__3644_ gnd vdd FILL
XFILL_0__3224_ gnd vdd FILL
XFILL_1__3805_ gnd vdd FILL
X_2875_ \u_rf_if.read_buf1\[23] _1824__bF$buf0 _1895_ vdd gnd NAND2X1
X_2455_ _1548_ _1549_ vdd gnd INVX1
X_2035_ _992_ _1040__bF$buf2 _991_ vdd gnd NOR2X1
X_4198_ _1326_ \gen_int_sys_clk.clk_sys_r_bF$buf12\ \u_cpu.ctrl.i_jump\ vdd gnd DFFPOSX1
XFILL_0__3453_ gnd vdd FILL
XFILL_0__3033_ gnd vdd FILL
X_2684_ _1743_ _1747_ _1446_ vdd gnd NOR2X1
X_2264_ _792_ _791_ _788_ _787_ vdd gnd NAND3X1
X_3889_ _1137_ i_clk_fast_bF$buf2 \gen_int_sys_clk.clk_div\[1] vdd gnd DFFPOSX1
X_3469_ _1535_ _415_ _430_ _1250_ vdd gnd OAI21X1
X_3049_ raddr[6] _1704__bF$buf2 i_rst_n_bF$buf7 _120_ vdd gnd OAI21X1
XFILL_0__2724_ gnd vdd FILL
XFILL_0__2304_ gnd vdd FILL
X_1955_ \u_mem_serial.bit_count\[1] _1064_ _1063_ vdd gnd NOR2X1
XFILL_0__3682_ gnd vdd FILL
XFILL_0__3262_ gnd vdd FILL
X_2493_ _728_ _1586_ _796_ _1587_ vdd gnd AOI21X1
X_2073_ _958_ _1062__bF$buf1 _957_ vdd gnd NOR2X1
X_3698_ _1085_ _1084_ _589_ _590_ vdd gnd OAI21X1
X_3278_ ibus_pending_rdt[29] _289_ vdd gnd INVX1
XFILL_0__2953_ gnd vdd FILL
XFILL_0__2533_ gnd vdd FILL
XFILL_0__2113_ gnd vdd FILL
XFILL_0__3491_ gnd vdd FILL
X_2969_ _60_ i_rst_n_bF$buf4 _1380_ vdd gnd AND2X2
X_2549_ _1637_ _1640_ _1641_ vdd gnd NAND2X1
X_2129_ \u_cpu.bufreg.data\[18] \u_cpu.ctrl.o_ibus_adr\[18] _1052__bF$buf3 _907_ vdd gnd MUX2X1
X_3910_ _1379_ \gen_int_sys_clk.clk_sys_r_bF$buf22\ \u_rf_if.read_buf0\[16] vdd gnd DFFPOSX1
X_3087_ \u_rf_if.rreg0_latched\[1] _733__bF$buf1 _146_ vdd gnd NAND2X1
XFILL_0__2762_ gnd vdd FILL
XFILL_0__2342_ gnd vdd FILL
XFILL_0__3547_ gnd vdd FILL
XFILL_0__3127_ gnd vdd FILL
X_1993_ _1029_ _1031_ _1058__bF$buf4 _1028_ vdd gnd OAI21X1
XFILL_1__3708_ gnd vdd FILL
X_2778_ _619_ _1754_ _1750_ _1822_ vdd gnd OAI21X1
X_2358_ \u_cpu.decode.opcode\[2] _743_ _693_ vdd gnd NAND2X1
XFILL_0__2991_ gnd vdd FILL
XFILL_0__3776_ gnd vdd FILL
XFILL_0__3356_ gnd vdd FILL
X_2587_ _1668_ i_rst_n_bF$buf3 _1464_ vdd gnd AND2X2
X_2167_ _874_ \u_mem_serial.shift_reg\[22] _1067__bF$buf0 _873_ vdd gnd MUX2X1
XFILL132150x93750 gnd vdd FILL
XFILL_0__2627_ gnd vdd FILL
XFILL_0__2207_ gnd vdd FILL
XFILL_0__3585_ gnd vdd FILL
XFILL_0__3165_ gnd vdd FILL
X_2396_ \u_cpu.state.cnt_r\[0] _656_ _655_ vdd gnd NAND2X1
XFILL_0__2856_ gnd vdd FILL
XFILL_0__2436_ gnd vdd FILL
XFILL_0__2016_ gnd vdd FILL
X_4122_ _1490_ i_clk_fast_bF$buf4 \u_mem_serial.shift_reg\[19] vdd gnd DFFPOSX1
XFILL_0__3394_ gnd vdd FILL
X_3813_ \gen_int_sys_clk.clk_div\[3] _629_ _653_ vdd gnd NOR2X1
XFILL_0__2665_ gnd vdd FILL
XFILL_0__2245_ gnd vdd FILL
XFILL_0__1936_ gnd vdd FILL
X_3622_ _440__bF$buf5 _549_ _550_ _1217_ vdd gnd AOI21X1
X_3202_ ibus_pending_ack_bF$buf4 _233_ _234_ vdd gnd NAND2X1
XFILL_0__2894_ gnd vdd FILL
XFILL_0__2474_ gnd vdd FILL
X_4160_ _1300_ \gen_int_sys_clk.clk_sys_r_bF$buf25\ \u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20\[0] vdd gnd DFFPOSX1
XFILL132150x100950 gnd vdd FILL
XFILL_0__3259_ gnd vdd FILL
X_3851_ _1349_ \gen_int_sys_clk.clk_sys_r_bF$buf24\ \u_rf_if.o_waddr\[2] vdd gnd DFFPOSX1
X_3431_ \u_cpu.bufreg.data\[10] _405_ vdd gnd INVX1
X_3011_ \u_rf_if.read_buf0\[27] \u_rf_if.stream_active_bF$buf6\ _92_ vdd gnd NAND2X1
XFILL_1_BUFX2_insert21 gnd vdd FILL
XFILL_1_BUFX2_insert25 gnd vdd FILL
X_2702_ _1756_ \u_rf_if.stream_active_bF$buf1\ _1755_ _1760_ vdd gnd NAND3X1
XFILL_0__3488_ gnd vdd FILL
XFILL_0__3068_ gnd vdd FILL
X_3907_ _1198_ \gen_int_sys_clk.clk_sys_r_bF$buf13\ \u_cpu.ctrl.o_ibus_adr\[9] vdd gnd DFFPOSX1
X_2299_ _754_ _753_ _752_ vdd gnd NAND2X1
XFILL_0__1974_ gnd vdd FILL
X_3660_ _571_ _190__bF$buf3 _570_ _556__bF$buf0 _1200_ vdd 
+ gnd
+ OAI22X1
X_3240_ _260_ _761_ _252_ _1309_ vdd gnd AOI21X1
XFILL_0__2759_ gnd vdd FILL
XFILL_0__2339_ gnd vdd FILL
X_4025_ _1236_ \gen_int_sys_clk.clk_sys_r_bF$buf29\ \u_cpu.bufreg2.dlo\[18] vdd gnd DFFPOSX1
XFILL_0__3700_ gnd vdd FILL
X_2931_ \u_rf_if.read_buf0\[6] _12__bF$buf1 _32_ vdd gnd NAND2X1
X_2511_ raddr[4] ren_bF$buf2 _1603_ vdd gnd NAND2X1
XFILL_0__3297_ gnd vdd FILL
X_3716_ _593_ _607_ _595_ \u_mem_serial.active_ibus\ _608_ vdd 
+ gnd
+ AOI22X1
XFILL_0__2988_ gnd vdd FILL
XFILL_0__2568_ gnd vdd FILL
XFILL_0__2148_ gnd vdd FILL
X_2740_ _1795_ _1796_ vdd gnd INVX1
X_2320_ ren_bF$buf0 _746_ _731_ vdd gnd NOR2X1
X_3945_ _1207_ \gen_int_sys_clk.clk_sys_r_bF$buf23\ \u_cpu.ctrl.o_ibus_adr\[18] vdd gnd DFFPOSX1
X_3525_ _468_ _781_ _477_ _478_ vdd gnd OAI21X1
X_3105_ _160_ _1691_ _1344_ vdd gnd NOR2X1
XFILL_1__2062_ gnd vdd FILL
XFILL_0__2797_ gnd vdd FILL
XFILL_0__2377_ gnd vdd FILL
X_4063_ _1254_ \gen_int_sys_clk.clk_sys_r_bF$buf17\ \u_cpu.bufreg.data\[2] vdd gnd DFFPOSX1
X_3754_ ibus_pending_rdt[3] _616_ vdd gnd INVX1
X_3334_ \u_mem_serial.shift_reg\[10] ibus_pending_ack_bF$buf6 _335_ _336_ vdd gnd OAI21X1
XFILL_1__2291_ gnd vdd FILL
X_4119_ _1280_ \gen_int_sys_clk.clk_sys_r_bF$buf13\ \u_cpu.bufreg.data\[28] vdd gnd DFFPOSX1
XFILL132450x68550 gnd vdd FILL
X_2605_ \u_rf_serial.last_req_key\[8] _1596_ i_rst_n_bF$buf3 _1679_ vdd gnd OAI21X1
XFILL_1__1982_ gnd vdd FILL
X_3983_ _1414_ \gen_int_sys_clk.clk_sys_r_bF$buf30\ \u_rf_if.read_buf1\[11] vdd gnd DFFPOSX1
X_3563_ _440__bF$buf4 _505_ _506_ _1232_ vdd gnd AOI21X1
X_3143_ _1121_ _786_ i_rst_n_bF$buf6 _190_ vdd gnd OAI21X1
XFILL_0__3603_ gnd vdd FILL
X_2834_ \u_rf_if.read_buf1\[14] \u_rf_if.read_buf1\[15] \u_rf_if.stream_active_bF$buf0\ _1864_ vdd gnd MUX2X1
X_2414_ _1142_ _619_ \u_cpu.bufreg2.i_op_b_sel\ _1143_ vdd gnd OAI21X1
X_3619_ mem_dbus_ack_bF$buf6 _864_ _548_ vdd gnd NAND2X1
X_3792_ _232_ _638_ vdd gnd INVX1
X_3372_ _1693__bF$buf3 _355_ _286_ _368_ vdd gnd AOI21X1
X_4157_ _1507_ i_clk_fast_bF$buf1 \u_mem_serial.shift_reg\[2] vdd gnd DFFPOSX1
X_2643_ _808_ _1712_ vdd gnd INVX1
X_2223_ \u_mem_serial.shift_reg\[28] _824_ vdd gnd INVX1
X_3848_ _1179_ \gen_int_sys_clk.clk_sys_r_bF$buf11\ \u_cpu.mem_if.signbit\ vdd gnd DFFPOSX1
X_3428_ _403_ _402_ _661__bF$buf3 _1264_ vdd gnd MUX2X1
X_3008_ _12__bF$buf6 _88_ _89_ _90_ vdd gnd OAI21X1
X_3181_ _216_ _215_ _218_ _219_ vdd gnd OAI21X1
X_1914_ _1908_ o_rf_mosi vdd gnd BUFX2
XFILL132750x21750 gnd vdd FILL
X_2872_ _1824__bF$buf0 _1891_ _1892_ _1893_ vdd gnd OAI21X1
X_2452_ _1544_ _1545_ _1546_ vdd gnd NOR2X1
X_2032_ _994_ \u_mem_serial.shift_reg\[7] _1067__bF$buf0 _993_ vdd gnd MUX2X1
X_3657_ \u_cpu.ctrl.o_ibus_adr\[12] _570_ vdd gnd INVX1
X_3237_ _780_ _1693__bF$buf0 _259_ _1311_ vdd gnd OAI21X1
XFILL_1__2194_ gnd vdd FILL
X_4195_ i_rst_n_bF$buf1 vdd _1164_ \gen_int_sys_clk.clk_sys_r_bF$buf31\ ibus_pending_rdt[17] vdd 
+ gnd
+ DFFSR
XFILL_0__3030_ gnd vdd FILL
X_2928_ _12__bF$buf4 _28_ _29_ _30_ vdd gnd OAI21X1
X_2508_ _1594_ _1600_ vdd gnd INVX1
X_2681_ _702_ _1745_ vdd gnd INVX1
X_2261_ \u_cpu.bne_or_bge\ _790_ vdd gnd INVX1
X_3886_ _1367_ \gen_int_sys_clk.clk_sys_r_bF$buf38\ \u_rf_if.read_buf0\[28] vdd gnd DFFPOSX1
X_3466_ _427_ _423_ _786_ _428_ vdd gnd OAI21X1
X_3046_ \u_rf_if.issue_sel\ \u_rf_if.rreg0_latched\[2] _117_ vdd gnd NOR2X1
XFILL_0__2301_ gnd vdd FILL
XFILL_0__3926_ gnd vdd FILL
XFILL_0__3506_ gnd vdd FILL
X_1952_ \u_cpu.bufreg2.dlo\[0] _1066_ vdd gnd INVX1
X_2737_ _1783_ _1792_ _1793_ vdd gnd AND2X2
X_2317_ _736_ _735_ _734_ vdd gnd NAND2X1
XFILL_1__3000_ gnd vdd FILL
X_2490_ _1583_ _795_ _1584_ vdd gnd NAND2X1
X_2070_ \u_mem_serial.shift_reg\[11] _960_ vdd gnd INVX1
X_3695_ _1121_ _214_ _587_ _1181_ vdd gnd OAI21X1
X_3275_ _285_ _286_ vdd gnd INVX1
XFILL_0__2530_ gnd vdd FILL
XFILL_0__2110_ gnd vdd FILL
XFILL_0__3735_ gnd vdd FILL
XFILL_0__3315_ gnd vdd FILL
X_2966_ \u_rf_if.read_buf0\[16] \u_rf_if.read_buf0\[17] \u_rf_if.stream_active_bF$buf3\ _58_ vdd gnd MUX2X1
X_2546_ raddr[7] ren_bF$buf0 _1638_ vdd gnd NAND2X1
X_2126_ \u_mem_serial.active_we_bF$buf3\ \u_cpu.bufreg2.dlo\[18] _910_ vdd gnd NAND2X1
X_3084_ _143_ _928_ ibus_pending_ack_bF$buf1 _144_ vdd gnd MUX2X1
XFILL_1__2920_ gnd vdd FILL
X_1990_ _1032_ _1040__bF$buf0 _1031_ vdd gnd NOR2X1
X_2775_ \u_rf_if.stream_active_bF$buf1\ _1754_ _1820_ vdd gnd NAND2X1
X_2355_ _701_ _698_ _697_ _696_ vdd gnd OAI21X1
XFILL_1__2097_ gnd vdd FILL
XFILL_0__2815_ gnd vdd FILL
X_4098_ _1270_ \gen_int_sys_clk.clk_sys_r_bF$buf34\ \u_cpu.bufreg.data\[18] vdd gnd DFFPOSX1
X_2584_ _1654_ _1666_ _1465_ vdd gnd NOR2X1
X_2164_ _877_ _879_ _1058__bF$buf5 _876_ vdd gnd OAI21X1
X_3789_ _635_ _633_ _1135_ vdd gnd AND2X2
X_3369_ _1693__bF$buf4 _1725_ _270_ _366_ vdd gnd AOI21X1
XFILL_0__3409_ gnd vdd FILL
XFILL_0__3162_ gnd vdd FILL
X_2393_ \u_cpu.bufreg2.i_bytecnt\[0] \u_cpu.bufreg2.i_bytecnt\[1] _658_ vdd gnd NOR2X1
X_3598_ \u_cpu.bufreg2.dlo\[5] _440__bF$buf0 _533_ vdd gnd NOR2X1
X_3178_ \u_cpu.bne_or_bge\ _214_ _744_ _216_ vdd gnd OAI21X1
XFILL_0__2013_ gnd vdd FILL
XFILL_0__3638_ gnd vdd FILL
XFILL_0__3218_ gnd vdd FILL
XFILL_0__3391_ gnd vdd FILL
X_2869_ _1890_ i_rst_n_bF$buf9 _1404_ vdd gnd AND2X2
X_2449_ \u_cpu.state.cnt_r\[2] _656_ _1543_ vdd gnd NAND2X1
X_2029_ _997_ _999_ _1058__bF$buf5 _996_ vdd gnd OAI21X1
X_3810_ _652_ _737_ _1131_ vdd gnd NAND2X1
XFILL_0__2909_ gnd vdd FILL
XFILL_1__3132_ gnd vdd FILL
XFILL_0__2242_ gnd vdd FILL
XFILL_0__3447_ gnd vdd FILL
XFILL_1__2823_ gnd vdd FILL
X_2678_ _1741_ _1728_ _1742_ vdd gnd NOR2X1
X_2258_ _794_ _793_ vdd gnd INVX1
XFILL_0__2718_ gnd vdd FILL
XFILL_1__3361_ gnd vdd FILL
XFILL_0__2891_ gnd vdd FILL
XFILL_0__2471_ gnd vdd FILL
XFILL_0__2051_ gnd vdd FILL
X_1949_ \u_mem_serial.bit_count\[5] _1070_ \u_mem_serial.bit_count\[6] _1069_ vdd gnd OAI21X1
XFILL_0__3676_ gnd vdd FILL
X_2487_ _1580_ _795_ _1581_ vdd gnd NAND2X1
X_2067_ _1058__bF$buf6 _963_ _964_ _962_ vdd gnd OAI21X1
XFILL_0__2947_ gnd vdd FILL
XFILL_1__3590_ gnd vdd FILL
XFILL_0__2280_ gnd vdd FILL
X_3904_ _1376_ \gen_int_sys_clk.clk_sys_r_bF$buf44\ \u_rf_if.read_buf0\[19] vdd gnd DFFPOSX1
X_2296_ rf_write_drain_busy _755_ vdd gnd INVX1
XFILL_0__1971_ gnd vdd FILL
X_4022_ _1436_ \gen_int_sys_clk.clk_sys_r_bF$buf38\ \u_rf_if.read_buf0\[30] vdd gnd DFFPOSX1
X_1987_ _1034_ \u_mem_serial.shift_reg\[2] _1067__bF$buf2 _1033_ vdd gnd MUX2X1
X_3713_ _591_ _604_ _595_ _605_ vdd gnd AOI21X1
XFILL_1__3035_ gnd vdd FILL
XFILL_0__2145_ gnd vdd FILL
XFILL131850x61350 gnd vdd FILL
XFILL132450x100950 gnd vdd FILL
XFILL131850x28950 gnd vdd FILL
X_3942_ _1394_ \gen_int_sys_clk.clk_sys_r_bF$buf18\ \u_rf_if.read_buf0\[1] vdd gnd DFFPOSX1
X_3522_ _468_ _444_ _474_ _475_ _1242_ vdd 
+ gnd
+ OAI22X1
X_3102_ \u_rf_if.issue_sel\ _1704__bF$buf3 _158_ vdd gnd NAND2X1
XFILL_1__3264_ gnd vdd FILL
XFILL_0__2374_ gnd vdd FILL
X_4060_ _1457_ i_clk_fast_bF$buf2 \u_rf_serial.last_req_key\[7] vdd gnd DFFPOSX1
XFILL_0__3579_ gnd vdd FILL
XFILL_1__2115_ gnd vdd FILL
X_3751_ _253_ _1000_ _615__bF$buf0 _1153_ vdd gnd MUX2X1
X_3331_ _746_ _332_ _333_ vdd gnd NAND2X1
X_4116_ _1487_ i_clk_fast_bF$buf5 \u_mem_serial.shift_reg\[22] vdd gnd DFFPOSX1
XFILL_1__3493_ gnd vdd FILL
XFILL_0__2183_ gnd vdd FILL
X_2602_ _721_ _1596_ _1677_ _1458_ vdd gnd AOI21X1
X_3807_ _1568_ _1583_ _650_ vdd gnd NOR2X1
XFILL_1__2344_ gnd vdd FILL
X_2199_ _846_ _1062__bF$buf3 _845_ vdd gnd NOR2X1
X_3980_ _1216_ \gen_int_sys_clk.clk_sys_r_bF$buf11\ \u_cpu.bufreg2.cnt_next\[6] vdd gnd DFFPOSX1
X_3560_ mem_dbus_ack_bF$buf0 _936_ _504_ vdd gnd NAND2X1
X_3140_ _187_ _1693__bF$buf1 _188_ vdd gnd NAND2X1
XFILL_0__2659_ gnd vdd FILL
XFILL_0__3600_ gnd vdd FILL
X_2831_ \u_rf_if.read_buf1\[12] _1824__bF$buf4 _1862_ vdd gnd NAND2X1
X_2411_ _1139_ _1140_ vdd gnd INVX1
X_3616_ mem_dbus_ack_bF$buf5 _545_ _546_ vdd gnd NAND2X1
X_4154_ _1183_ \gen_int_sys_clk.clk_sys_r_bF$buf6\ \u_cpu.ctrl.pc_plus_4_cy_r_w\ vdd gnd DFFPOSX1
X_2640_ \u_mem_serial.state\[0] _1708_ _1709_ vdd gnd NOR2X1
X_2220_ _1058__bF$buf6 _827_ _828_ _826_ vdd gnd OAI21X1
X_3845_ _1346_ \gen_int_sys_clk.clk_sys_r_bF$buf26\ \u_rf_if.rreg0_latched\[2] vdd gnd DFFPOSX1
X_3425_ \u_cpu.bufreg.data\[13] _402_ vdd gnd INVX1
X_3005_ _87_ i_rst_n_bF$buf8 _1371_ vdd gnd AND2X2
XFILL_1__3167_ gnd vdd FILL
XFILL_0__2277_ gnd vdd FILL
XFILL_1__2018_ gnd vdd FILL
X_3654_ _568_ _190__bF$buf3 _567_ _556__bF$buf0 _1203_ vdd 
+ gnd
+ OAI22X1
X_3234_ ibus_pending_ack_bF$buf4 _256_ _257_ vdd gnd NAND2X1
X_4019_ _1434_ \gen_int_sys_clk.clk_sys_r_bF$buf5\ raddr[8] vdd gnd DFFPOSX1
XFILL_1__3396_ gnd vdd FILL
XFILL_0__2086_ gnd vdd FILL
X_4192_ _1322_ \gen_int_sys_clk.clk_sys_r_bF$buf4\ \u_cpu.bne_or_bge\ vdd gnd DFFPOSX1
X_2925_ _27_ i_rst_n_bF$buf8 _1391_ vdd gnd AND2X2
X_2505_ _1595_ _1594_ \u_rf_serial.last_req_key\[10] _1598_ vdd gnd OAI21X1
XFILL_1__2247_ gnd vdd FILL
X_3883_ _1192_ \gen_int_sys_clk.clk_sys_r_bF$buf23\ \u_cpu.ctrl.o_ibus_adr\[3] vdd gnd DFFPOSX1
X_3463_ \u_cpu.bufreg.c_r\ _425_ vdd gnd INVX1
X_3043_ raddr[5] _1704__bF$buf2 i_rst_n_bF$buf7 _115_ vdd gnd OAI21X1
XFILL_0__3503_ gnd vdd FILL
XFILL_1__1938_ gnd vdd FILL
X_2734_ _1790_ _1773_ _1766_ _1439_ vdd gnd AOI21X1
X_2314_ _757_ _762_ _738_ _737_ vdd gnd OAI21X1
X_3939_ i_rst_n_bF$buf2 vdd _1149_ \gen_int_sys_clk.clk_sys_r_bF$buf37\ ibus_pending_rdt[2] vdd 
+ gnd
+ DFFSR
X_3519_ _776_ _781_ _761_ _473_ vdd gnd OAI21X1
XFILL_1__2476_ gnd vdd FILL
XFILL132450x54150 gnd vdd FILL
X_3692_ _1121_ _1141_ _586_ vdd gnd NAND2X1
X_3272_ \u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20\[1] _268_ _733__bF$buf5 _284_ vdd gnd OAI21X1
X_4057_ _1251_ \gen_int_sys_clk.clk_sys_r_bF$buf43\ \u_cpu.bufreg.data\[30] vdd gnd DFFPOSX1
XFILL_0__3732_ gnd vdd FILL
XFILL_0__3312_ gnd vdd FILL
X_2963_ \u_rf_if.read_buf0\[14] _12__bF$buf3 _56_ vdd gnd NAND2X1
X_2543_ raddr[5] ren_bF$buf1 _1635_ vdd gnd NAND2X1
X_2123_ _1126__bF$buf2 _913_ _1492_ vdd gnd NOR2X1
X_3748_ _341_ _976_ _615__bF$buf4 _1156_ vdd gnd MUX2X1
X_3328_ _754_ _329_ _330_ vdd gnd NAND2X1
X_3081_ _1580_ _1731_ _141_ _1349_ vdd gnd AOI21X1
XFILL_0__3541_ gnd vdd FILL
XFILL_0__3121_ gnd vdd FILL
X_2772_ \u_rf_if.stream_cnt\[1] \u_rf_if.stream_cnt\[0] i_rst_n_bF$buf5 _1818_ vdd gnd OAI21X1
X_2352_ \u_rf_if.o_waddr\[0] \u_rf_if.o_waddr\[3] _699_ vdd gnd NOR2X1
X_3977_ _1411_ \gen_int_sys_clk.clk_sys_r_bF$buf39\ \u_rf_if.read_buf1\[14] vdd gnd DFFPOSX1
X_3557_ mem_dbus_ack_bF$buf0 \u_cpu.bufreg2.dlo\[16] _501_ _502_ vdd gnd OAI21X1
X_3137_ \u_rf_if.rreg1_latched\[3] _733__bF$buf3 _185_ vdd gnd NAND2X1
XFILL_0__2812_ gnd vdd FILL
XFILL_1__3299_ gnd vdd FILL
X_4095_ _1475_ i_clk_fast_bF$buf7 \u_rf_serial.last_req_key\[10] vdd gnd DFFPOSX1
XFILL_0__3770_ gnd vdd FILL
XFILL_0__3350_ gnd vdd FILL
X_2828_ _1824__bF$buf4 _1858_ _1859_ _1860_ vdd gnd OAI21X1
X_2408_ \u_cpu.alu.add_cy_r\ _1130_ _1132_ vdd gnd NAND2X1
X_2581_ _1594_ _1645_ _797_ _1665_ vdd gnd OAI21X1
X_2161_ _880_ _1040__bF$buf3 _879_ vdd gnd NOR2X1
XFILL132750x97350 gnd vdd FILL
X_3786_ _632_ _628_ _1114_ _633_ vdd gnd OAI21X1
X_3366_ \u_cpu.immdec.gen_immdec_w_eq_1.imm31\ _674_ _733__bF$buf2 _363_ vdd gnd NAND3X1
XFILL_0__2621_ gnd vdd FILL
XFILL_0__2201_ gnd vdd FILL
X_2637_ _1700_ _1703_ _1706_ _1707_ vdd gnd NAND3X1
X_2217_ _830_ _1062__bF$buf3 _829_ vdd gnd NOR2X1
XFILL_1__2379_ gnd vdd FILL
X_2390_ _754_ _665_ _664_ _662_ _661_ vdd 
+ gnd
+ AOI22X1
X_3595_ _440__bF$buf3 _529_ _530_ _1224_ vdd gnd AOI21X1
X_3175_ _211_ _212_ _205_ _213_ vdd gnd AOI21X1
XFILL_0__2850_ gnd vdd FILL
XFILL_0__2430_ gnd vdd FILL
XFILL_0__3215_ gnd vdd FILL
X_2866_ \u_rf_if.read_buf1\[22] \u_rf_if.read_buf1\[23] \u_rf_if.stream_active_bF$buf7\ _1888_ vdd gnd MUX2X1
X_2446_ \u_cpu.mem_if.signbit\ _1530_ _1540_ vdd gnd NAND2X1
X_2026_ _1000_ _1040__bF$buf2 _999_ vdd gnd NOR2X1
X_4189_ _1319_ \gen_int_sys_clk.clk_sys_r_bF$buf3\ \u_cpu.decode.opcode\[1] vdd gnd DFFPOSX1
XFILL_0__3444_ gnd vdd FILL
XFILL_0__3024_ gnd vdd FILL
X_2675_ _1738_ _1739_ _733__bF$buf0 _1740_ vdd gnd NAND3X1
X_2255_ _797_ _796_ vdd gnd INVX1
XFILL_0__1930_ gnd vdd FILL
XFILL_0__2715_ gnd vdd FILL
X_1946_ _1073_ _1072_ vdd gnd INVX1
XFILL_0__3673_ gnd vdd FILL
XFILL_0__3253_ gnd vdd FILL
X_2484_ raddr[4] ren_bF$buf2 _732_ _1577_ _1578_ vdd 
+ gnd
+ AOI22X1
X_2064_ _966_ _1062__bF$buf2 _965_ vdd gnd NOR2X1
X_3689_ _659_ _682_ _752_ _1184_ vdd gnd AOI21X1
X_3269_ \u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20\[2] _268_ _733__bF$buf5 _282_ vdd gnd OAI21X1
XFILL_0__2944_ gnd vdd FILL
XFILL_0__2524_ gnd vdd FILL
XFILL_0__2104_ gnd vdd FILL
XFILL_0__3482_ gnd vdd FILL
X_3901_ i_rst_n_bF$buf10 _1119_ _1118_ _1117_ vdd gnd NAND3X1
X_2293_ _760_ _759_ \u_cpu.branch_op\ _758_ vdd gnd AOI21X1
X_3498_ _771_ _454_ _441_ _1245_ vdd gnd MUX2X1
X_3078_ \u_rf_if.o_waddr\[1] _1730_ _139_ _140_ vdd gnd OAI21X1
XFILL_0__2753_ gnd vdd FILL
XFILL_0__2333_ gnd vdd FILL
XFILL_0__3118_ gnd vdd FILL
X_1984_ _1037_ _1039_ _1058__bF$buf4 _1036_ vdd gnd OAI21X1
X_2769_ _1762_ \u_rf_if.stream_cnt\[0] _1815_ _1429_ vdd gnd AOI21X1
X_2349_ _707_ _703_ _702_ vdd gnd NAND2X1
X_3710_ \u_mem_serial.bit_count\[1] \u_cpu.decode.co_mem_word\ _1048_ _602_ vdd gnd AOI21X1
XFILL_0__2982_ gnd vdd FILL
XFILL_0__2562_ gnd vdd FILL
XFILL_0__3347_ gnd vdd FILL
X_2998_ \u_rf_if.read_buf0\[24] \u_rf_if.read_buf0\[25] \u_rf_if.stream_active_bF$buf4\ _82_ vdd gnd MUX2X1
X_2578_ _1663_ _1468_ vdd gnd INVX1
X_2158_ _882_ \u_mem_serial.shift_reg\[21] _1067__bF$buf3 _881_ vdd gnd MUX2X1
XFILL_0__2618_ gnd vdd FILL
XFILL131850x82950 gnd vdd FILL
XFILL_0__2791_ gnd vdd FILL
XFILL_0__3576_ gnd vdd FILL
XFILL_0__3156_ gnd vdd FILL
XFILL_1__3317_ gnd vdd FILL
X_2387_ _780_ _766_ _664_ vdd gnd NAND2X1
XFILL_0__2847_ gnd vdd FILL
XFILL_0__2427_ gnd vdd FILL
XFILL_0__2007_ gnd vdd FILL
X_4113_ _1486_ i_clk_fast_bF$buf1 \u_mem_serial.shift_reg\[23] vdd gnd DFFPOSX1
XFILL_1__3070_ gnd vdd FILL
XFILL_0__3385_ gnd vdd FILL
X_3804_ \u_mem_serial.req_pending\ _1112_ vdd gnd INVX1
X_2196_ \u_mem_serial.shift_reg\[25] _848_ vdd gnd INVX1
XFILL_0__2656_ gnd vdd FILL
XFILL_0__2236_ gnd vdd FILL
XFILL_0__1927_ gnd vdd FILL
X_3613_ mem_dbus_ack_bF$buf5 \u_cpu.bufreg2.dlo\[2] _543_ _544_ vdd gnd OAI21X1
XFILL_1__2150_ gnd vdd FILL
XFILL132750x100950 gnd vdd FILL
XFILL_0__2885_ gnd vdd FILL
XFILL_0__2465_ gnd vdd FILL
X_4151_ _1296_ \gen_int_sys_clk.clk_sys_r_bF$buf15\ \u_cpu.immdec.gen_immdec_w_eq_1.imm30_25\[1] vdd gnd DFFPOSX1
X_3842_ i_rst_n_bF$buf6 vdd _1177_ \gen_int_sys_clk.clk_sys_r_bF$buf40\ ibus_pending_rdt[30] vdd 
+ gnd
+ DFFSR
X_3422_ _400_ _399_ _661__bF$buf3 _1267_ vdd gnd MUX2X1
X_3002_ \u_rf_if.read_buf0\[25] \u_rf_if.read_buf0\[26] \u_rf_if.stream_active_bF$buf4\ _85_ vdd gnd MUX2X1
XFILL_0__2694_ gnd vdd FILL
XFILL_0__3479_ gnd vdd FILL
XFILL_0__3059_ gnd vdd FILL
XFILL_0__1965_ gnd vdd FILL
X_3651_ \u_cpu.ctrl.o_ibus_adr\[15] _567_ vdd gnd INVX1
X_3231_ \u_mem_serial.shift_reg\[6] ibus_pending_ack_bF$buf0 _254_ _255_ vdd gnd OAI21X1
X_4016_ _1432_ \gen_int_sys_clk.clk_sys_r_bF$buf5\ ren vdd gnd DFFPOSX1
X_2922_ \u_rf_if.read_buf0\[5] \u_rf_if.read_buf0\[6] \u_rf_if.stream_active_bF$buf4\ _25_ vdd gnd MUX2X1
X_2502_ ren_bF$buf3 _712_ \u_rf_serial.launch_pending\ _1595_ vdd gnd OAI21X1
XFILL_0__3288_ gnd vdd FILL
X_3707_ \u_cpu.bne_or_bge\ \u_cpu.bufreg.data\[0] _598_ _599_ vdd gnd OAI21X1
XFILL_1__3869_ gnd vdd FILL
XFILL_1__3449_ gnd vdd FILL
X_2099_ \u_mem_serial.active_we_bF$buf4\ \u_cpu.bufreg2.dlo\[15] _934_ vdd gnd NAND2X1
X_3880_ _1364_ \gen_int_sys_clk.clk_sys_r_bF$buf27\ raddr[1] vdd gnd DFFPOSX1
X_3460_ _421_ _655_ _1118_ _422_ vdd gnd OAI21X1
X_3040_ raddr[4] _1704__bF$buf2 i_rst_n_bF$buf7 _113_ vdd gnd OAI21X1
XFILL_0__2559_ gnd vdd FILL
XFILL_0__2139_ gnd vdd FILL
X_2731_ _1787_ \u_rf_serial.shift_rx\[1] _1788_ vdd gnd AND2X2
X_2311_ _743_ _741_ _1118_ _740_ vdd gnd OAI21X1
X_3936_ _1391_ \gen_int_sys_clk.clk_sys_r_bF$buf28\ \u_rf_if.read_buf0\[4] vdd gnd DFFPOSX1
X_3516_ \u_cpu.bufreg.i_shamt\[1] _469_ _470_ vdd gnd NOR2X1
XFILL_1__2053_ gnd vdd FILL
XFILL_1__3678_ gnd vdd FILL
XFILL_0__2788_ gnd vdd FILL
XFILL_0__2368_ gnd vdd FILL
X_4054_ _1454_ \gen_int_sys_clk.clk_sys_r_bF$buf27\ \u_rf_if.pending_read\ vdd gnd DFFPOSX1
XFILL132450x75750 gnd vdd FILL
X_2960_ _12__bF$buf0 _52_ _53_ _54_ vdd gnd OAI21X1
X_2540_ _1624_ _1627_ _1631_ _1632_ vdd gnd NAND3X1
X_2120_ \u_cpu.bufreg.data\[17] \u_cpu.ctrl.o_ibus_adr\[17] _1052__bF$buf0 _915_ vdd gnd MUX2X1
X_3745_ _227_ _952_ _615__bF$buf2 _1159_ vdd gnd MUX2X1
X_3325_ rreg1[1] _321_ _733__bF$buf1 _328_ vdd gnd OAI21X1
XFILL_1__2282_ gnd vdd FILL
XFILL_0__2597_ gnd vdd FILL
X_3974_ _1214_ \gen_int_sys_clk.clk_sys_r_bF$buf41\ \u_cpu.ctrl.o_ibus_adr\[25] vdd gnd DFFPOSX1
X_3554_ \u_cpu.bufreg2.dlo\[16] _440__bF$buf1 _500_ vdd gnd NOR2X1
X_3134_ _182_ _1693__bF$buf4 _183_ vdd gnd NAND2X1
X_4092_ _1473_ i_clk_fast_bF$buf7 \u_rf_serial.req_seen\ vdd gnd DFFPOSX1
X_2825_ _1857_ i_rst_n_bF$buf4 _1415_ vdd gnd AND2X2
X_2405_ \u_rf_if.read_buf0\[0] _620_ vdd gnd INVX1
X_3783_ _631_ _627_ _1137_ vdd gnd NOR2X1
X_3363_ \u_mem_serial.shift_reg\[31] ibus_pending_ack_bF$buf6 _360_ _361_ vdd gnd OAI21X1
X_4148_ _1503_ i_clk_fast_bF$buf5 \u_mem_serial.shift_reg\[6] vdd gnd DFFPOSX1
XFILL132450x108150 gnd vdd FILL
XFILL_0__3403_ gnd vdd FILL
X_2634_ \u_rf_if.issue_idx\[5] _1683_ _1704_ vdd gnd NOR2X1
X_2214_ \u_mem_serial.shift_reg\[27] _832_ vdd gnd INVX1
X_3839_ _1343_ \gen_int_sys_clk.clk_sys_r_bF$buf27\ \u_rf_if.issue_chunk\[0] vdd gnd DFFPOSX1
X_3419_ \u_cpu.bufreg.data\[16] _399_ vdd gnd INVX1
X_3592_ mem_dbus_ack_bF$buf6 _1000_ _528_ vdd gnd NAND2X1
X_3172_ _1522_ _209_ _1519_ _210_ vdd gnd NAND3X1
XFILL_0__3632_ gnd vdd FILL
X_2863_ \u_rf_if.read_buf1\[20] _1824__bF$buf3 _1886_ vdd gnd NAND2X1
X_2443_ \u_cpu.bufreg.i_shamt\[0] \u_cpu.bufreg.data\[0] _1537_ vdd gnd NAND2X1
X_2023_ _1002_ \u_mem_serial.shift_reg\[6] _1067__bF$buf0 _1001_ vdd gnd MUX2X1
X_3648_ _565_ _190__bF$buf2 _564_ _556__bF$buf4 _1206_ vdd 
+ gnd
+ OAI22X1
X_3228_ _251_ _736_ _252_ _1313_ vdd gnd AOI21X1
XFILL_1__2185_ gnd vdd FILL
XFILL_0__2903_ gnd vdd FILL
X_4186_ i_rst_n_bF$buf1 vdd _1163_ \gen_int_sys_clk.clk_sys_r_bF$buf15\ ibus_pending_rdt[16] vdd 
+ gnd
+ DFFSR
X_2919_ \u_rf_if.read_buf0\[3] _12__bF$buf6 _23_ vdd gnd NAND2X1
X_2672_ _1735_ _1736_ _1737_ vdd gnd NOR2X1
X_2252_ _803_ _799_ vdd gnd INVX1
X_3877_ i_rst_n_bF$buf10 vdd _1134_ \gen_int_sys_clk.clk_sys_r_bF$buf3\ current_wdata0_next_hint vdd 
+ gnd
+ DFFSR
X_3457_ \u_cpu.decode.opcode\[1] _744_ \u_cpu.branch_op\ _419_ vdd gnd OAI21X1
X_3037_ \u_rf_if.issue_idx\[5] _1683_ raddr[3] _111_ vdd gnd OAI21X1
XFILL_0__3917_ gnd vdd FILL
X_1943_ _1075_ _1105_ _1510_ vdd gnd AND2X2
XFILL_0__3250_ gnd vdd FILL
X_2728_ raddr[7] raddr[6] _1785_ vdd gnd NOR2X1
X_2308_ \u_cpu.branch_op\ _744_ _743_ vdd gnd NOR2X1
X_2481_ raddr[5] ren_bF$buf2 _732_ _1574_ _1575_ vdd 
+ gnd
+ AOI22X1
X_2061_ \u_mem_serial.shift_reg\[10] _968_ vdd gnd INVX1
X_3686_ \u_cpu.ctrl.o_ibus_adr\[29] _584_ vdd gnd INVX1
X_3266_ \u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20\[3] _268_ _733__bF$buf5 _280_ vdd gnd OAI21X1
XFILL_0__2101_ gnd vdd FILL
XFILL_0__3726_ gnd vdd FILL
XFILL_0__3306_ gnd vdd FILL
X_2957_ _51_ i_rst_n_bF$buf5 _1383_ vdd gnd AND2X2
X_2537_ \u_rf_serial.last_req_key\[0] _1570_ _1628_ _1629_ vdd gnd OAI21X1
X_2117_ \u_mem_serial.active_we_bF$buf3\ \u_cpu.bufreg2.dlo\[17] _918_ vdd gnd NAND2X1
XFILL_1__3220_ gnd vdd FILL
X_2290_ mem_dbus_ack_bF$buf0 _761_ vdd gnd INVX2
X_3495_ _450_ _451_ _452_ vdd gnd NOR2X1
X_3075_ _1568_ _1729_ _1744_ _138_ vdd gnd OAI21X1
XFILL_0__2330_ gnd vdd FILL
XFILL_0__3535_ gnd vdd FILL
XFILL_1__2911_ gnd vdd FILL
X_1981_ _1041_ _1040__bF$buf0 _1039_ vdd gnd NOR2X1
X_2766_ _1812_ _1813_ _1810_ _1814_ vdd gnd NAND3X1
X_2346_ _791_ \u_cpu.decode.opcode\[2] _705_ vdd gnd AND2X2
XFILL_1__2088_ gnd vdd FILL
XFILL_0__2806_ gnd vdd FILL
X_4089_ _1471_ i_clk_fast_bF$buf3 \u_rf_serial.shift_rx\[1] vdd gnd DFFPOSX1
XFILL_0__3764_ gnd vdd FILL
X_2995_ \u_rf_if.read_buf0\[22] _12__bF$buf6 _80_ vdd gnd NAND2X1
X_2575_ _1661_ _1469_ vdd gnd INVX1
X_2155_ _885_ _887_ _1058__bF$buf1 _884_ vdd gnd OAI21X1
X_2384_ _668_ _667_ vdd gnd INVX1
X_3589_ mem_dbus_ack_bF$buf6 \u_cpu.bufreg2.dlo\[8] _525_ _526_ vdd gnd OAI21X1
X_3169_ _1476_ _1477_ _206_ _207_ vdd gnd AOI21X1
XFILL_0__2004_ gnd vdd FILL
X_4110_ _1276_ \gen_int_sys_clk.clk_sys_r_bF$buf17\ \u_cpu.bufreg.data\[24] vdd gnd DFFPOSX1
XFILL_0__3629_ gnd vdd FILL
XFILL_0__3209_ gnd vdd FILL
X_3801_ _637_ _640_ _646_ _647_ vdd gnd OAI21X1
XFILL_1__3123_ gnd vdd FILL
X_2193_ _1058__bF$buf6 _851_ _852_ _850_ vdd gnd OAI21X1
X_3398_ _388_ _386_ _661__bF$buf4 _1279_ vdd gnd MUX2X1
XFILL_0__2233_ gnd vdd FILL
XFILL_0__3438_ gnd vdd FILL
XFILL_0__3191_ gnd vdd FILL
X_2669_ _1734_ _1732_ _1727_ _1448_ vdd gnd AOI21X1
X_2249_ \u_rf_serial.tx_state\[3] \u_rf_serial.tx_state\[2] _802_ vdd gnd NOR2X1
X_3610_ \u_cpu.bufreg2.dlo\[2] _440__bF$buf2 _542_ vdd gnd NOR2X1
XFILL_0__2709_ gnd vdd FILL
XFILL_1__3352_ gnd vdd FILL
XFILL_0__2462_ gnd vdd FILL
XFILL_0__2042_ gnd vdd FILL
XFILL_0__3667_ gnd vdd FILL
XFILL_1__2203_ gnd vdd FILL
X_2898_ _2_ _619_ _1795_ _7_ vdd gnd OAI21X1
X_2478_ _805_ _1567_ _1571_ _1572_ vdd gnd AOI21X1
X_2058_ _1058__bF$buf5 _971_ _972_ _970_ vdd gnd OAI21X1
XFILL_0__2938_ gnd vdd FILL
XFILL_0__2518_ gnd vdd FILL
XFILL_1__3581_ gnd vdd FILL
XFILL_0__2691_ gnd vdd FILL
XFILL_0__2271_ gnd vdd FILL
XFILL_1__2432_ gnd vdd FILL
X_2287_ _780_ _1120_ _765_ _764_ vdd gnd OAI21X1
XFILL_0__1962_ gnd vdd FILL
XFILL_0__2747_ gnd vdd FILL
X_4013_ _1429_ \gen_int_sys_clk.clk_sys_r_bF$buf7\ \u_rf_if.stream_cnt\[0] vdd gnd DFFPOSX1
X_1978_ _1126__bF$buf5 _1042_ _1508_ vdd gnd NOR2X1
X_3704_ \u_mem_serial.bit_count\[1] _1535_ _596_ vdd gnd NAND2X1
XFILL_1__2661_ gnd vdd FILL
XFILL_1__3026_ gnd vdd FILL
X_2096_ _1126__bF$buf2 _937_ _1495_ vdd gnd NOR2X1
XFILL_0__2976_ gnd vdd FILL
XFILL_0__3094_ gnd vdd FILL
X_3933_ _1204_ \gen_int_sys_clk.clk_sys_r_bF$buf35\ \u_cpu.ctrl.o_ibus_adr\[15] vdd gnd DFFPOSX1
X_3513_ _776_ _444_ _466_ _467_ _1243_ vdd 
+ gnd
+ OAI22X1
XFILL_1__3255_ gnd vdd FILL
X_4051_ _1247_ \gen_int_sys_clk.clk_sys_r_bF$buf43\ \u_cpu.bufreg2.dhi\[6] vdd gnd DFFPOSX1
XFILL_1__2106_ gnd vdd FILL
X_3742_ _143_ _928_ _615__bF$buf3 _1162_ vdd gnd MUX2X1
X_3322_ rreg1[1] _326_ vdd gnd INVX1
X_4107_ _1483_ i_clk_fast_bF$buf5 \u_mem_serial.shift_reg\[26] vdd gnd DFFPOSX1
XFILL_1__3484_ gnd vdd FILL
XFILL_0__2594_ gnd vdd FILL
XFILL_0__2174_ gnd vdd FILL
XFILL_0__3799_ gnd vdd FILL
XFILL_1__2335_ gnd vdd FILL
X_3971_ _1408_ \gen_int_sys_clk.clk_sys_r_bF$buf30\ \u_rf_if.read_buf1\[17] vdd gnd DFFPOSX1
X_3551_ _440__bF$buf3 _496_ _497_ _1235_ vdd gnd AOI21X1
X_3131_ _180_ _177_ _1126__bF$buf1 _1338_ vdd gnd AOI21X1
X_2822_ \u_rf_if.read_buf1\[11] \u_rf_if.read_buf1\[12] \u_rf_if.stream_active_bF$buf0\ _1855_ vdd gnd MUX2X1
X_2402_ \u_cpu.decode.opcode\[2] _743_ _624_ \u_cpu.bufreg.data\[0] _623_ vdd 
+ gnd
+ AOI22X1
X_3607_ _440__bF$buf4 _538_ _539_ _1221_ vdd gnd AOI21X1
XFILL_1__2564_ gnd vdd FILL
X_3780_ \gen_int_sys_clk.clk_div\[2] _627_ _630_ vdd gnd NOR2X1
X_3360_ \u_cpu.immdec.gen_immdec_w_eq_1.imm31\ _733__bF$buf5 _358_ vdd gnd NAND2X1
XFILL_0__2879_ gnd vdd FILL
X_4145_ _1293_ \gen_int_sys_clk.clk_sys_r_bF$buf26\ rreg1[2] vdd gnd DFFPOSX1
XFILL_0__3400_ gnd vdd FILL
X_2631_ \u_rf_if.issue_chunk\[2] _1701_ vdd gnd INVX1
X_2211_ _1058__bF$buf0 _835_ _836_ _834_ vdd gnd OAI21X1
X_3836_ i_rst_n_bF$buf6 vdd _1174_ \gen_int_sys_clk.clk_sys_r_bF$buf40\ ibus_pending_rdt[27] vdd 
+ gnd
+ DFFSR
X_3416_ _397_ _396_ _661__bF$buf2 _1270_ vdd gnd MUX2X1
XFILL_1__2793_ gnd vdd FILL
XFILL132450x129750 gnd vdd FILL
XFILL_1__3158_ gnd vdd FILL
XFILL_1__2009_ gnd vdd FILL
X_2860_ _1824__bF$buf3 _1882_ _1883_ _1884_ vdd gnd OAI21X1
X_2440_ \u_cpu.state.i_ctrl_misalign\ _1532_ _1533_ _1534_ vdd gnd OAI21X1
X_2020_ _1005_ _1007_ _1058__bF$buf3 _1004_ vdd gnd OAI21X1
X_3645_ \u_cpu.ctrl.o_ibus_adr\[18] _564_ vdd gnd INVX1
X_3225_ \u_mem_serial.state\[0] _247_ _249_ _250_ vdd gnd OAI21X1
XFILL_0__2900_ gnd vdd FILL
XFILL_1__3387_ gnd vdd FILL
XFILL_0__2077_ gnd vdd FILL
X_4183_ _1314_ i_clk_fast_bF$buf0 \u_mem_serial.active_ibus\ vdd gnd DFFPOSX1
X_2916_ _12__bF$buf4 _19_ _20_ _21_ vdd gnd OAI21X1
XFILL_1__2238_ gnd vdd FILL
X_3874_ _1361_ \gen_int_sys_clk.clk_sys_r_bF$buf16\ raddr[4] vdd gnd DFFPOSX1
X_3454_ \u_cpu.bufreg.data\[31] _417_ vdd gnd INVX1
X_3034_ \u_rf_if.issue_idx\[5] _1683_ raddr[2] _109_ vdd gnd OAI21X1
XFILL132450x61350 gnd vdd FILL
X_1940_ \u_mem_serial.bit_count\[5] \u_mem_serial.bit_count\[4] _1077_ vdd gnd NOR2X1
XFILL132450x28950 gnd vdd FILL
XFILL132750x108150 gnd vdd FILL
X_2725_ _1780_ _1781_ _1782_ vdd gnd AND2X2
X_2305_ \u_cpu.immdec.gen_immdec_w_eq_1.imm11_7\[3] _746_ vdd gnd INVX1
XFILL_1__2467_ gnd vdd FILL
X_3683_ _555_ _190__bF$buf0 _582_ _556__bF$buf3 _1188_ vdd 
+ gnd
+ OAI22X1
X_3263_ \u_cpu.csr_imm\ _268_ _733__bF$buf5 _278_ vdd gnd OAI21X1
X_4048_ _1451_ i_clk_fast_bF$buf6 \u_mem_serial.state\[1] vdd gnd DFFPOSX1
XFILL_0__3303_ gnd vdd FILL
X_2954_ \u_rf_if.read_buf0\[13] \u_rf_if.read_buf0\[14] \u_rf_if.stream_active_bF$buf3\ _49_ vdd gnd MUX2X1
X_2534_ ren_bF$buf3 _1625_ \u_rf_serial.req_seen\ _1626_ vdd gnd OAI21X1
X_2114_ _1126__bF$buf2 _921_ _1493_ vdd gnd NOR2X1
X_3739_ _155_ _904_ _615__bF$buf1 _1165_ vdd gnd MUX2X1
X_3319_ rreg1[2] _324_ vdd gnd INVX1
XFILL_1__2696_ gnd vdd FILL
X_3492_ mem_dbus_ack_bF$buf3 _824_ _449_ vdd gnd NAND2X1
X_3072_ _1684_ _1687_ _136_ vdd gnd NOR2X1
XFILL_0__3532_ gnd vdd FILL
XFILL_0__3112_ gnd vdd FILL
X_2763_ _1811_ _1431_ vdd gnd INVX1
X_2343_ _800_ _709_ _708_ vdd gnd NAND2X1
X_3968_ i_rst_n_bF$buf1 vdd _1156_ \gen_int_sys_clk.clk_sys_r_bF$buf37\ ibus_pending_rdt[9] vdd 
+ gnd
+ DFFSR
X_3548_ mem_dbus_ack_bF$buf4 _912_ _495_ vdd gnd NAND2X1
X_3128_ ibus_pending_rdt[21] _178_ vdd gnd INVX1
XFILL_0__2803_ gnd vdd FILL
X_4086_ _1265_ \gen_int_sys_clk.clk_sys_r_bF$buf35\ \u_cpu.bufreg.data\[13] vdd gnd DFFPOSX1
XFILL_0__3761_ gnd vdd FILL
XFILL_0__3341_ gnd vdd FILL
X_2819_ \u_rf_if.read_buf1\[9] _1824__bF$buf6 _1853_ vdd gnd NAND2X1
XCLKBUF1_insert170 \gen_int_sys_clk.clk_sys_r_hier0_bF$buf3\ \gen_int_sys_clk.clk_sys_r_bF$buf1\ vdd gnd CLKBUF1
XCLKBUF1_insert171 \gen_int_sys_clk.clk_sys_r_hier0_bF$buf0\ \gen_int_sys_clk.clk_sys_r_bF$buf0\ vdd gnd CLKBUF1
X_2992_ _12__bF$buf2 _76_ _77_ _78_ vdd gnd OAI21X1
X_2572_ \u_rf_serial.shift_rx\[0] _1659_ vdd gnd INVX1
X_2152_ _888_ _1040__bF$buf4 _887_ vdd gnd NOR2X1
X_3777_ \gen_int_sys_clk.clk_div\[1] \gen_int_sys_clk.clk_div\[0] _627_ vdd gnd AND2X2
X_3357_ _355_ _1693__bF$buf3 _356_ vdd gnd NAND2X1
XFILL_0__2612_ gnd vdd FILL
XFILL_0__3570_ gnd vdd FILL
X_2628_ \u_rf_if.issue_chunk\[1] _1698_ vdd gnd INVX1
X_2208_ _838_ _1062__bF$buf3 _837_ vdd gnd NOR2X1
X_2381_ \u_cpu.state.o_cnt\[2] _670_ vdd gnd INVX1
X_3586_ \u_cpu.bufreg2.dlo\[8] _440__bF$buf5 _524_ vdd gnd NOR2X1
X_3166_ \u_cpu.ctrl.i_jump\ _204_ vdd gnd INVX1
XFILL_0__2841_ gnd vdd FILL
XFILL_0__2421_ gnd vdd FILL
XFILL_0__3206_ gnd vdd FILL
X_2857_ _1881_ i_rst_n_bF$buf9 _1407_ vdd gnd AND2X2
X_2437_ _1530_ _1531_ vdd gnd INVX1
X_2017_ _1008_ _1040__bF$buf0 _1007_ vdd gnd NOR2X1
XFILL_1__2599_ gnd vdd FILL
X_2190_ _854_ _1062__bF$buf3 _853_ vdd gnd NOR2X1
X_3395_ \u_cpu.bufreg.data\[29] _387_ vdd gnd INVX1
XFILL_0__2650_ gnd vdd FILL
XFILL_0__3435_ gnd vdd FILL
XFILL_0__3015_ gnd vdd FILL
X_2666_ _1580_ _1731_ \u_rf_if.o_waddr\[3] _1732_ vdd gnd OAI21X1
X_2246_ \u_rf_serial.tx_state\[1] \u_rf_serial.tx_state\[0] _805_ vdd gnd NOR2X1
XFILL_0__1921_ gnd vdd FILL
X_1937_ _1081_ _1080_ _1104_ _1511_ vdd gnd AOI21X1
XFILL_0__3664_ gnd vdd FILL
XFILL_0__3244_ gnd vdd FILL
XFILL_1__3405_ gnd vdd FILL
X_2895_ \u_rf_if.stream_active_bF$buf2\ _1774_ _4_ _5_ vdd gnd OAI21X1
X_2475_ _1568_ _795_ _1569_ vdd gnd NAND2X1
X_2055_ _974_ _1062__bF$buf4 _973_ vdd gnd NOR2X1
XFILL_0__2935_ gnd vdd FILL
XFILL_0__2515_ gnd vdd FILL
X_4201_ i_rst_n_bF$buf1 vdd _1166_ \gen_int_sys_clk.clk_sys_r_bF$buf31\ ibus_pending_rdt[19] vdd 
+ gnd
+ DFFSR
XFILL132750x36150 gnd vdd FILL
XFILL_0__3473_ gnd vdd FILL
XFILL_1__3634_ gnd vdd FILL
X_2284_ _794_ _778_ _768_ _767_ vdd gnd NAND3X1
X_3489_ _446_ _761_ _447_ vdd gnd AND2X2
X_3069_ _133_ _130_ _134_ vdd gnd NAND2X1
XFILL_0__2744_ gnd vdd FILL
XFILL_0__2324_ gnd vdd FILL
X_4010_ _1231_ \gen_int_sys_clk.clk_sys_r_bF$buf36\ \u_cpu.bufreg2.dlo\[13] vdd gnd DFFPOSX1
X_1975_ \u_mem_serial.state\[1] _1059_ \u_cpu.ctrl.o_ibus_adr\[1] _1044_ vdd gnd OAI21X1
X_3701_ _592_ _588_ _593_ vdd gnd NOR2X1
X_2093_ \u_cpu.bufreg.data\[14] \u_cpu.ctrl.o_ibus_adr\[14] _1052__bF$buf0 _939_ vdd gnd MUX2X1
X_3298_ _288_ _305_ _306_ _1297_ vdd gnd AOI21X1
XFILL_0__2973_ gnd vdd FILL
XFILL_0__2553_ gnd vdd FILL
X_2989_ _75_ i_rst_n_bF$buf4 _1375_ vdd gnd AND2X2
X_2569_ _1656_ _1597_ _1126__bF$buf7 _1470_ vdd gnd AOI21X1
X_2149_ _890_ \u_mem_serial.shift_reg\[20] _1067__bF$buf3 _889_ vdd gnd MUX2X1
X_3930_ vdd i_rst_n_bF$buf2 _1147_ \gen_int_sys_clk.clk_sys_r_bF$buf37\ ibus_pending_rdt[0] vdd 
+ gnd
+ DFFSR
X_3510_ _761_ _464_ _465_ vdd gnd NAND2X1
XFILL_0__2782_ gnd vdd FILL
XFILL_0__3567_ gnd vdd FILL
XFILL_0__3147_ gnd vdd FILL
XFILL_1__3308_ gnd vdd FILL
X_2798_ \u_rf_if.read_buf1\[5] \u_rf_if.read_buf1\[6] \u_rf_if.stream_active_bF$buf2\ _1837_ vdd gnd MUX2X1
X_2378_ \u_cpu.immdec.gen_immdec_w_eq_1.imm31\ _783_ _674_ _673_ vdd gnd NAND3X1
XFILL_0__2418_ gnd vdd FILL
X_4104_ _1273_ \gen_int_sys_clk.clk_sys_r_bF$buf1\ \u_cpu.bufreg.data\[21] vdd gnd DFFPOSX1
XFILL_1__3061_ gnd vdd FILL
XFILL_0__3796_ gnd vdd FILL
XFILL_0__3376_ gnd vdd FILL
XFILL_1__3537_ gnd vdd FILL
X_2187_ \u_mem_serial.shift_reg\[24] _856_ vdd gnd INVX1
XFILL_0__2647_ gnd vdd FILL
XFILL_0__2227_ gnd vdd FILL
XFILL_1__3290_ gnd vdd FILL
XFILL_0__1918_ gnd vdd FILL
X_3604_ mem_dbus_ack_bF$buf2 _1024_ _537_ vdd gnd NAND2X1
XFILL_1__2141_ gnd vdd FILL
XFILL_1_BUFX2_insert175 gnd vdd FILL
XFILL_1_BUFX2_insert179 gnd vdd FILL
XFILL_1__3766_ gnd vdd FILL
XFILL_0__2876_ gnd vdd FILL
XFILL_0__2456_ gnd vdd FILL
X_4142_ _1500_ i_clk_fast_bF$buf1 \u_mem_serial.shift_reg\[9] vdd gnd DFFPOSX1
X_3833_ _1340_ \gen_int_sys_clk.clk_sys_r_bF$buf5\ \u_rf_if.issue_chunk\[3] vdd gnd DFFPOSX1
X_3413_ \u_cpu.bufreg.data\[19] _396_ vdd gnd INVX1
XFILL_1__2370_ gnd vdd FILL
XFILL_0__2685_ gnd vdd FILL
XFILL_0__1956_ gnd vdd FILL
X_3642_ _562_ _190__bF$buf2 _561_ _556__bF$buf4 _1209_ vdd 
+ gnd
+ OAI22X1
X_3222_ _1708_ _247_ vdd gnd INVX1
X_4007_ _1426_ \gen_int_sys_clk.clk_sys_r_bF$buf7\ \u_rf_if.stream_cnt\[3] vdd gnd DFFPOSX1
X_4180_ i_rst_n_bF$buf6 vdd _1160_ \gen_int_sys_clk.clk_sys_r_bF$buf11\ ibus_pending_rdt[13] vdd 
+ gnd
+ DFFSR
X_2913_ _18_ i_rst_n_bF$buf8 _1394_ vdd gnd AND2X2
XFILL_0__3279_ gnd vdd FILL
X_3871_ _1189_ \gen_int_sys_clk.clk_sys_r_bF$buf6\ \u_cpu.ctrl.pc\ vdd gnd DFFPOSX1
X_3451_ _1535_ _666_ _415_ _1253_ vdd gnd MUX2X1
X_3031_ _107_ _106_ _1126__bF$buf6 _1365_ vdd gnd AOI21X1
XFILL_1__3193_ gnd vdd FILL
X_2722_ \u_rf_if.rreg1_latched\[3] \u_rf_if.rreg1_latched\[2] _1779_ vdd gnd NOR2X1
X_2302_ _751_ _750_ _749_ vdd gnd NAND2X1
XFILL_0__3088_ gnd vdd FILL
X_3927_ _1387_ \gen_int_sys_clk.clk_sys_r_bF$buf28\ \u_rf_if.read_buf0\[8] vdd gnd DFFPOSX1
X_3507_ _775_ _781_ _462_ vdd gnd NOR2X1
XFILL_1__2044_ gnd vdd FILL
XFILL_1__3669_ gnd vdd FILL
XFILL132450x82950 gnd vdd FILL
XFILL_0__1994_ gnd vdd FILL
X_3680_ _581_ _190__bF$buf1 _580_ _556__bF$buf1 _1190_ vdd 
+ gnd
+ OAI22X1
X_3260_ rreg0[1] _268_ _733__bF$buf4 _276_ vdd gnd OAI21X1
XFILL132750x129750 gnd vdd FILL
XFILL_0__2779_ gnd vdd FILL
XFILL_0__2359_ gnd vdd FILL
X_4045_ _1244_ \gen_int_sys_clk.clk_sys_r_bF$buf14\ \u_cpu.bufreg2.dhi\[3] vdd gnd DFFPOSX1
XFILL_0__3720_ gnd vdd FILL
X_2951_ \u_rf_if.read_buf0\[11] _12__bF$buf0 _47_ vdd gnd NAND2X1
X_2531_ _711_ \u_rf_serial.last_req_key\[10] _1623_ vdd gnd OR2X2
X_2111_ \u_cpu.bufreg.data\[16] \u_cpu.ctrl.o_ibus_adr\[16] _1052__bF$buf0 _923_ vdd gnd MUX2X1
X_3736_ _178_ _880_ _615__bF$buf1 _1168_ vdd gnd MUX2X1
X_3316_ rreg1[4] _321_ _733__bF$buf4 _322_ vdd gnd OAI21X1
XFILL_1__2273_ gnd vdd FILL
XFILL_0__2588_ gnd vdd FILL
XFILL_1__2749_ gnd vdd FILL
X_2760_ _1809_ _1432_ vdd gnd INVX1
X_2340_ _712_ _711_ vdd gnd INVX2
X_3965_ _1405_ \gen_int_sys_clk.clk_sys_r_bF$buf42\ \u_rf_if.read_buf1\[20] vdd gnd DFFPOSX1
X_3545_ mem_dbus_ack_bF$buf2 \u_cpu.bufreg2.dlo\[19] _492_ _493_ vdd gnd OAI21X1
X_3125_ _175_ _1693__bF$buf5 _176_ vdd gnd NAND2X1
X_4083_ _1468_ i_clk_fast_bF$buf2 \u_rf_serial.tx_state\[0] vdd gnd DFFPOSX1
X_2816_ _1824__bF$buf6 _1849_ _1850_ _1851_ vdd gnd OAI21X1
XCLKBUF1_insert140 \gen_int_sys_clk.clk_sys_r_hier0_bF$buf1\ \gen_int_sys_clk.clk_sys_r_bF$buf31\ vdd gnd CLKBUF1
XCLKBUF1_insert141 \gen_int_sys_clk.clk_sys_r_hier0_bF$buf2\ \gen_int_sys_clk.clk_sys_r_bF$buf30\ vdd gnd CLKBUF1
XCLKBUF1_insert142 \gen_int_sys_clk.clk_sys_r_hier0_bF$buf3\ \gen_int_sys_clk.clk_sys_r_bF$buf29\ vdd gnd CLKBUF1
XCLKBUF1_insert143 \gen_int_sys_clk.clk_sys_r_hier0_bF$buf1\ \gen_int_sys_clk.clk_sys_r_bF$buf28\ vdd gnd CLKBUF1
XCLKBUF1_insert144 \gen_int_sys_clk.clk_sys_r_hier0_bF$buf4\ \gen_int_sys_clk.clk_sys_r_bF$buf27\ vdd gnd CLKBUF1
XCLKBUF1_insert145 \gen_int_sys_clk.clk_sys_r_hier0_bF$buf4\ \gen_int_sys_clk.clk_sys_r_bF$buf26\ vdd gnd CLKBUF1
XCLKBUF1_insert146 \gen_int_sys_clk.clk_sys_r_hier0_bF$buf4\ \gen_int_sys_clk.clk_sys_r_bF$buf25\ vdd gnd CLKBUF1
XCLKBUF1_insert147 \gen_int_sys_clk.clk_sys_r_hier0_bF$buf0\ \gen_int_sys_clk.clk_sys_r_bF$buf24\ vdd gnd CLKBUF1
XCLKBUF1_insert148 \gen_int_sys_clk.clk_sys_r_hier0_bF$buf5\ \gen_int_sys_clk.clk_sys_r_bF$buf23\ vdd gnd CLKBUF1
XCLKBUF1_insert149 \gen_int_sys_clk.clk_sys_r_hier0_bF$buf1\ \gen_int_sys_clk.clk_sys_r_bF$buf22\ vdd gnd CLKBUF1
XFILL_1__2978_ gnd vdd FILL
X_3774_ _1109_ _1113_ _1108_ vdd gnd AND2X2
X_3354_ _353_ _1288_ vdd gnd INVX1
X_4139_ _1290_ \gen_int_sys_clk.clk_sys_r_bF$buf16\ \u_cpu.immdec.gen_immdec_w_eq_1.imm11_7\[3] vdd gnd DFFPOSX1
XFILL_1__3096_ gnd vdd FILL
XFILL_0__3814_ gnd vdd FILL
X_2625_ _1695_ _1693__bF$buf4 _1696_ vdd gnd NAND2X1
X_2205_ \u_mem_serial.shift_reg\[26] _840_ vdd gnd INVX1
X_3583_ _440__bF$buf2 _520_ _521_ _1227_ vdd gnd AOI21X1
X_3163_ _785_ _784_ i_rst_n_bF$buf6 _203_ vdd gnd OAI21X1
XFILL_0__3623_ gnd vdd FILL
X_2854_ \u_rf_if.read_buf1\[19] \u_rf_if.read_buf1\[20] \u_rf_if.stream_active_bF$buf7\ _1879_ vdd gnd MUX2X1
X_2434_ _1527_ _1523_ _1516_ _1528_ vdd gnd NAND3X1
X_2014_ _1010_ \u_mem_serial.shift_reg\[5] _1067__bF$buf2 _1009_ vdd gnd MUX2X1
X_3639_ \u_cpu.ctrl.o_ibus_adr\[21] _561_ vdd gnd INVX1
X_3219_ _1107_ _245_ _1126__bF$buf5 _1315_ vdd gnd AOI21X1
XFILL_1__2176_ gnd vdd FILL
X_3392_ \u_cpu.immdec.gen_immdec_w_eq_1.imm11_7\[4] _332_ _385_ vdd gnd NAND2X1
X_4177_ _1310_ \gen_int_sys_clk.clk_sys_r_bF$buf25\ \u_cpu.decode.co_ebreak\ vdd gnd DFFPOSX1
X_2663_ \u_rf_if.wen0_r\ _1728_ _1729_ vdd gnd NAND2X1
X_2243_ _1910_ _807_ vdd gnd INVX1
X_3868_ _1358_ \gen_int_sys_clk.clk_sys_r_bF$buf16\ raddr[7] vdd gnd DFFPOSX1
X_3448_ _413_ _412_ _661__bF$buf4 _1254_ vdd gnd MUX2X1
X_3028_ _105_ i_rst_n_bF$buf7 _1366_ vdd gnd AND2X2
XFILL_0__2703_ gnd vdd FILL
X_1934_ _1083_ _1098_ _1082_ vdd gnd NOR2X1
X_2719_ \u_rf_if.rreg0_latched\[2] \u_rf_if.rreg0_latched\[1] _1776_ vdd gnd NOR2X1
X_2892_ \u_rf_if.read_buf1\[29] _2_ vdd gnd INVX1
X_2472_ \u_rf_if.o_waddr\[1] ren_bF$buf3 _1565_ _1566_ vdd gnd OAI21X1
X_2052_ \u_mem_serial.shift_reg\[9] _976_ vdd gnd INVX1
X_3677_ \u_cpu.ctrl.o_ibus_adr\[2] _580_ vdd gnd INVX1
X_3257_ rreg0[2] _268_ _733__bF$buf4 _274_ vdd gnd OAI21X1
XFILL_0__3717_ gnd vdd FILL
XFILL_0_BUFX2_insert91 gnd vdd FILL
XFILL_0__3050_ gnd vdd FILL
XFILL_0_BUFX2_insert93 gnd vdd FILL
XFILL_0_BUFX2_insert94 gnd vdd FILL
XFILL_0_BUFX2_insert96 gnd vdd FILL
XFILL_0_BUFX2_insert98 gnd vdd FILL
X_2948_ _12__bF$buf0 _43_ _44_ _45_ vdd gnd OAI21X1
X_2528_ \u_rf_serial.last_req_key\[0] _1570_ _1586_ _1619_ _1620_ vdd 
+ gnd
+ AOI22X1
X_2108_ \u_mem_serial.active_we_bF$buf1\ \u_cpu.bufreg2.dlo\[16] _926_ vdd gnd NAND2X1
XFILL_1__3211_ gnd vdd FILL
X_2281_ _773_ _770_ vdd gnd INVX1
XFILL132750x90150 gnd vdd FILL
X_3486_ _441_ _444_ vdd gnd INVX2
X_3066_ _756_ _131_ _1126__bF$buf7 _1354_ vdd gnd AOI21X1
XFILL_0__2321_ gnd vdd FILL
XFILL132750x57750 gnd vdd FILL
XFILL_0__3526_ gnd vdd FILL
X_1972_ \u_cpu.bufreg2.dlo\[1] _1047_ vdd gnd INVX1
X_2757_ _1704__bF$buf3 _1807_ _1808_ _1434_ vdd gnd AOI21X1
X_2337_ \u_rf_if.wen0_r\ _714_ vdd gnd INVX1
XFILL_1__2079_ gnd vdd FILL
XFILL_1__3440_ gnd vdd FILL
X_2090_ \u_mem_serial.active_we_bF$buf1\ \u_cpu.bufreg2.dlo\[14] _942_ vdd gnd NAND2X1
X_3295_ _303_ _1693__bF$buf2 _304_ vdd gnd NAND2X1
XFILL_0__2550_ gnd vdd FILL
XFILL_0__2130_ gnd vdd FILL
XFILL_0__3755_ gnd vdd FILL
X_2986_ \u_rf_if.read_buf0\[21] \u_rf_if.read_buf0\[22] \u_rf_if.stream_active_bF$buf3\ _73_ vdd gnd MUX2X1
X_2566_ _1594_ _1645_ _1654_ vdd gnd NOR2X1
X_2146_ _893_ _895_ _1058__bF$buf1 _892_ vdd gnd OAI21X1
XFILL_0__2606_ gnd vdd FILL
XFILL_1__2520_ gnd vdd FILL
X_2795_ \u_rf_if.read_buf1\[3] _1824__bF$buf2 _1835_ vdd gnd NAND2X1
X_2375_ _750_ \u_cpu.bufreg2.i_op_b_sel\ _689_ _676_ vdd gnd NAND3X1
XFILL_0__2835_ gnd vdd FILL
X_4101_ _1480_ i_clk_fast_bF$buf2 \u_mem_serial.shift_reg\[29] vdd gnd DFFPOSX1
XFILL_1__3114_ gnd vdd FILL
X_2184_ _1058__bF$buf6 _859_ _860_ _858_ vdd gnd OAI21X1
X_3389_ ibus_pending_rdt[11] _382_ vdd gnd INVX1
XFILL_0__3429_ gnd vdd FILL
XFILL_0__3182_ gnd vdd FILL
X_3601_ mem_dbus_ack_bF$buf2 \u_cpu.bufreg2.dlo\[5] _534_ _535_ vdd gnd OAI21X1
XFILL_1__3343_ gnd vdd FILL
X_3198_ ibus_pending_ack_bF$buf2 _230_ _231_ vdd gnd NAND2X1
XFILL_0__2033_ gnd vdd FILL
XFILL_0__3658_ gnd vdd FILL
X_2889_ \u_rf_if.stream_active_bF$buf5\ _1774_ _1905_ _1911_ vdd gnd OAI21X1
X_2469_ _1558_ _695_ _1562_ _1563_ vdd gnd OAI21X1
X_2049_ _1058__bF$buf4 _979_ _980_ _978_ vdd gnd OAI21X1
X_3830_ i_rst_n_bF$buf1 vdd _1171_ \gen_int_sys_clk.clk_sys_r_bF$buf40\ ibus_pending_rdt[24] vdd 
+ gnd
+ DFFSR
X_3410_ _394_ _393_ _661__bF$buf2 _1273_ vdd gnd MUX2X1
XFILL_0__2929_ gnd vdd FILL
XFILL_0__2509_ gnd vdd FILL
XFILL_1__3572_ gnd vdd FILL
XFILL_0__2262_ gnd vdd FILL
XFILL_1__2423_ gnd vdd FILL
X_2698_ \u_rf_if.stream_active_bF$buf1\ \u_rf_if.ready_pulse\ i_rst_n_bF$buf2 _1758_ vdd gnd OAI21X1
X_2278_ _776_ _775_ _774_ _773_ vdd gnd NAND3X1
XFILL_0__2738_ gnd vdd FILL
X_4004_ _1228_ \gen_int_sys_clk.clk_sys_r_bF$buf29\ \u_cpu.bufreg2.dlo\[10] vdd gnd DFFPOSX1
XFILL_0__2491_ gnd vdd FILL
XFILL_0__2071_ gnd vdd FILL
X_1969_ _1050_ \u_mem_serial.shift_reg\[0] _1067__bF$buf2 _1049_ vdd gnd MUX2X1
X_2910_ \u_rf_if.read_buf0\[2] \u_rf_if.read_buf0\[3] \u_rf_if.stream_active_bF$buf4\ _16_ vdd gnd MUX2X1
XFILL_1__2652_ gnd vdd FILL
XFILL_1__3017_ gnd vdd FILL
X_2087_ _1126__bF$buf4 _945_ _1496_ vdd gnd NOR2X1
XFILL_0__2967_ gnd vdd FILL
XFILL_0_BUFX2_insert181 gnd vdd FILL
XFILL_0_BUFX2_insert182 gnd vdd FILL
XFILL_0_BUFX2_insert184 gnd vdd FILL
XFILL_0__3085_ gnd vdd FILL
X_3924_ _1250_ \gen_int_sys_clk.clk_sys_r_bF$buf43\ \u_cpu.state.i_ctrl_misalign\ vdd gnd DFFPOSX1
X_3504_ _459_ _771_ _781_ _460_ vdd gnd MUX2X1
XFILL_1__2881_ gnd vdd FILL
XFILL_1__3246_ gnd vdd FILL
XFILL_0__1991_ gnd vdd FILL
X_4042_ _1448_ \gen_int_sys_clk.clk_sys_r_bF$buf24\ \u_rf_if.o_waddr\[3] vdd gnd DFFPOSX1
X_3733_ _1694_ _856_ _615__bF$buf3 _1171_ vdd gnd MUX2X1
X_3313_ rreg1[3] _319_ vdd gnd INVX1
XFILL_1__3475_ gnd vdd FILL
XFILL_0__2165_ gnd vdd FILL
XFILL_1__2326_ gnd vdd FILL
X_3962_ _1184_ \gen_int_sys_clk.clk_sys_r_bF$buf2\ \u_cpu.ctrl.pc_plus_offset_cy_r_w\ vdd gnd DFFPOSX1
X_3542_ \u_cpu.bufreg2.dlo\[19] _440__bF$buf4 _491_ vdd gnd NOR2X1
X_3122_ \u_rf_if.rreg1_latched\[0] _733__bF$buf1 _173_ vdd gnd NAND2X1
XFILL_0__2394_ gnd vdd FILL
X_4080_ _1262_ \gen_int_sys_clk.clk_sys_r_bF$buf21\ \u_cpu.bufreg.data\[10] vdd gnd DFFPOSX1
X_2813_ _1848_ i_rst_n_bF$buf0 _1418_ vdd gnd AND2X2
XFILL_1__2555_ gnd vdd FILL
X_3771_ _1126__bF$buf5 _1106_ _1105_ vdd gnd NOR2X1
X_3351_ _350_ _1693__bF$buf5 _351_ vdd gnd NAND2X1
X_4136_ _1497_ i_clk_fast_bF$buf4 \u_mem_serial.shift_reg\[12] vdd gnd DFFPOSX1
X_2622_ _733__bF$buf4 _1693_ vdd gnd INVX8
X_2202_ _1058__bF$buf0 _843_ _844_ _842_ vdd gnd OAI21X1
X_3827_ _1337_ \gen_int_sys_clk.clk_sys_r_bF$buf8\ \u_rf_if.rreg1_latched\[2] vdd gnd DFFPOSX1
X_3407_ \u_cpu.bufreg.data\[22] _393_ vdd gnd INVX1
XFILL_1__2784_ gnd vdd FILL
XFILL_1__3149_ gnd vdd FILL
X_3580_ mem_dbus_ack_bF$buf5 _976_ _519_ vdd gnd NAND2X1
X_3160_ _1110_ _1103_ _1112_ _201_ vdd gnd OAI21X1
XFILL_0__3620_ gnd vdd FILL
XFILL_0__3200_ gnd vdd FILL
XFILL_0_CLKBUF1_insert171 gnd vdd FILL
X_2851_ \u_rf_if.read_buf1\[17] _1824__bF$buf1 _1877_ vdd gnd NAND2X1
X_2431_ \u_cpu.alu.cmp_r\ _760_ _1525_ vdd gnd NAND2X1
X_2011_ _1013_ _1015_ _1058__bF$buf3 _1012_ vdd gnd OAI21X1
X_3636_ _559_ _190__bF$buf1 _558_ _556__bF$buf1 _1212_ vdd 
+ gnd
+ OAI22X1
X_3216_ _1048_ _1106_ _243_ _244_ vdd gnd OAI21X1
XFILL_1__3378_ gnd vdd FILL
XFILL_0__2068_ gnd vdd FILL
X_4174_ _1308_ \gen_int_sys_clk.clk_sys_r_bF$buf43\ \u_cpu.bufreg.i_sh_signed\ vdd gnd DFFPOSX1
X_2907_ \u_rf_if.read_buf0\[0] _12__bF$buf5 _14_ vdd gnd NAND2X1
XFILL132150x122550 gnd vdd FILL
XFILL_1__2229_ gnd vdd FILL
X_2660_ _1726_ _1723_ _1126__bF$buf1 _1449_ vdd gnd AOI21X1
X_2240_ _1126__bF$buf4 _809_ _1479_ vdd gnd NOR2X1
X_3865_ _1356_ \gen_int_sys_clk.clk_sys_r_bF$buf0\ \u_rf_if.write_wait\[0] vdd gnd DFFPOSX1
X_3445_ \u_cpu.bufreg.data\[3] _412_ vdd gnd INVX1
X_3025_ \u_rf_if.read_buf0\[30] \u_rf_if.read_buf0\[31] \u_rf_if.stream_active_bF$buf5\ _103_ vdd gnd MUX2X1
XFILL_0__2700_ gnd vdd FILL
X_1931_ \u_mem_serial.bit_count\[2] _1085_ vdd gnd INVX1
XFILL_0__2297_ gnd vdd FILL
X_2716_ \u_rf_if.read_buf1\[31] _1772_ _1773_ vdd gnd NAND2X1
XFILL_1__2458_ gnd vdd FILL
X_3674_ _578_ _190__bF$buf1 _577_ _556__bF$buf1 _1193_ vdd 
+ gnd
+ OAI22X1
X_3254_ rreg0[3] _268_ _733__bF$buf4 _272_ vdd gnd OAI21X1
X_4039_ _1446_ \gen_int_sys_clk.clk_sys_r_bF$buf10\ \u_rf_if.wdata0_next_phase\ vdd gnd DFFPOSX1
XFILL_0_BUFX2_insert61 gnd vdd FILL
X_2945_ _42_ i_rst_n_bF$buf5 _1386_ vdd gnd AND2X2
X_2525_ \u_rf_serial.last_req_key\[2] _1582_ _1617_ vdd gnd NAND2X1
X_2105_ _1126__bF$buf2 _929_ _1494_ vdd gnd NOR2X1
XFILL_1__2687_ gnd vdd FILL
X_3483_ mem_dbus_ack_bF$buf3 _1715_ _442_ vdd gnd NAND2X1
X_3063_ _128_ _129_ vdd gnd INVX1
XFILL_0__3523_ gnd vdd FILL
XFILL_0__3103_ gnd vdd FILL
X_2754_ _1806_ _1435_ vdd gnd INVX1
X_2334_ raddr[8] ren_bF$buf2 _732_ _718_ _717_ vdd 
+ gnd
+ AOI22X1
X_3959_ i_rst_n_bF$buf8 vdd _1154_ \gen_int_sys_clk.clk_sys_r_bF$buf15\ ibus_pending_rdt[7] vdd 
+ gnd
+ DFFSR
X_3539_ _440__bF$buf1 _487_ _488_ _1238_ vdd gnd AOI21X1
X_3119_ _1691_ _171_ _1341_ vdd gnd NOR2X1
X_3292_ ibus_pending_rdt[27] _301_ vdd gnd INVX1
X_4077_ _1261_ \gen_int_sys_clk.clk_sys_r_bF$buf21\ \u_cpu.bufreg.data\[9] vdd gnd DFFPOSX1
XFILL_0__3752_ gnd vdd FILL
XFILL_0__3332_ gnd vdd FILL
X_2983_ \u_rf_if.read_buf0\[19] _12__bF$buf2 _71_ vdd gnd NAND2X1
X_2563_ _1651_ _719_ _1652_ vdd gnd NOR2X1
X_2143_ _896_ _1040__bF$buf4 _895_ vdd gnd NOR2X1
X_3768_ _1103_ _1111_ _1102_ vdd gnd AND2X2
X_3348_ ibus_pending_rdt[8] _348_ vdd gnd INVX1
XFILL_0__2603_ gnd vdd FILL
XFILL_0__3808_ gnd vdd FILL
XFILL_0__3561_ gnd vdd FILL
X_2619_ i_rst_n_bF$buf7 _1690_ _1691_ vdd gnd NAND2X1
XFILL_1__1996_ gnd vdd FILL
XBUFX2_insert70 mem_dbus_ack mem_dbus_ack_bF$buf6 vdd gnd BUFX2
XBUFX2_insert71 mem_dbus_ack mem_dbus_ack_bF$buf5 vdd gnd BUFX2
XBUFX2_insert72 mem_dbus_ack mem_dbus_ack_bF$buf4 vdd gnd BUFX2
XBUFX2_insert73 mem_dbus_ack mem_dbus_ack_bF$buf3 vdd gnd BUFX2
XFILL_1__3722_ gnd vdd FILL
XBUFX2_insert74 mem_dbus_ack mem_dbus_ack_bF$buf2 vdd gnd BUFX2
XBUFX2_insert75 mem_dbus_ack mem_dbus_ack_bF$buf1 vdd gnd BUFX2
XBUFX2_insert76 mem_dbus_ack mem_dbus_ack_bF$buf0 vdd gnd BUFX2
XBUFX2_insert77 _1693_ _1693__bF$buf5 vdd gnd BUFX2
XBUFX2_insert78 _1693_ _1693__bF$buf4 vdd gnd BUFX2
XBUFX2_insert79 _1693_ _1693__bF$buf3 vdd gnd BUFX2
X_2792_ _1824__bF$buf2 _1831_ _1832_ _1833_ vdd gnd OAI21X1
X_2372_ _680_ _679_ vdd gnd INVX1
X_3997_ _1421_ \gen_int_sys_clk.clk_sys_r_bF$buf20\ \u_rf_if.read_buf1\[4] vdd gnd DFFPOSX1
X_3577_ mem_dbus_ack_bF$buf1 \u_cpu.bufreg2.dlo\[11] _516_ _517_ vdd gnd OAI21X1
X_3157_ _671_ _198_ _199_ _1331_ vdd gnd AOI21X1
XFILL_0__2832_ gnd vdd FILL
XFILL_0__2412_ gnd vdd FILL
XFILL_0__3790_ gnd vdd FILL
X_2848_ _1824__bF$buf1 _1873_ _1874_ _1875_ vdd gnd OAI21X1
X_2428_ _620_ _619_ _1518_ _1522_ vdd gnd OAI21X1
X_2008_ _1016_ _1040__bF$buf3 _1015_ vdd gnd NOR2X1
X_2181_ _862_ _1062__bF$buf2 _861_ vdd gnd NOR2X1
X_3386_ \u_cpu.immdec.gen_immdec_w_eq_1.imm30_25\[0] _1695_ _733__bF$buf4 _380_ vdd gnd MUX2X1
XFILL_0__2641_ gnd vdd FILL
XFILL_0__3006_ gnd vdd FILL
X_2657_ ibus_pending_rdt[19] _1724_ vdd gnd INVX1
X_2237_ \u_cpu.bufreg.data\[30] \u_cpu.ctrl.o_ibus_adr\[30] _1052__bF$buf1 _811_ vdd gnd MUX2X1
XFILL_0__1912_ gnd vdd FILL
XFILL_1_BUFX2_insert113 gnd vdd FILL
XFILL_1_BUFX2_insert118 gnd vdd FILL
X_3195_ _228_ _1693__bF$buf5 _229_ vdd gnd NAND2X1
XFILL_0__2870_ gnd vdd FILL
X_1928_ \u_mem_serial.bit_count\[3] _1089_ _1088_ _1512_ vdd gnd AOI21X1
XFILL_0__3235_ gnd vdd FILL
X_2886_ \u_rf_if.read_buf1\[28] _1903_ vdd gnd INVX1
X_2466_ _1557_ _694_ _1559_ _1560_ vdd gnd AOI21X1
X_2046_ _982_ _1062__bF$buf4 _981_ vdd gnd NOR2X1
XFILL132750x43350 gnd vdd FILL
XFILL_0__2506_ gnd vdd FILL
XFILL_0__3464_ gnd vdd FILL
XFILL_0__3044_ gnd vdd FILL
XFILL_1__2000_ gnd vdd FILL
XFILL_1__3625_ gnd vdd FILL
X_2695_ _1750_ _1754_ _1755_ vdd gnd NOR2X1
X_2275_ \u_cpu.bufreg.i_shamt\[2] _776_ vdd gnd INVX1
XFILL_0__1950_ gnd vdd FILL
XFILL_0__2735_ gnd vdd FILL
XFILL_0__2315_ gnd vdd FILL
X_4001_ _1423_ \gen_int_sys_clk.clk_sys_r_bF$buf18\ \u_rf_if.read_buf1\[2] vdd gnd DFFPOSX1
X_1966_ _1117_ _1120_ _1124_ _1052_ vdd gnd OAI21X1
XFILL_0__3693_ gnd vdd FILL
XFILL_0__3273_ gnd vdd FILL
X_2084_ \u_cpu.bufreg.data\[13] \u_cpu.ctrl.o_ibus_adr\[13] _1052__bF$buf0 _947_ vdd gnd MUX2X1
X_3289_ \u_cpu.immdec.gen_immdec_w_eq_1.imm30_25\[4] _1693__bF$buf2 _298_ _299_ vdd gnd OAI21X1
XFILL_0__2964_ gnd vdd FILL
XFILL_0__2544_ gnd vdd FILL
XFILL_1__2705_ gnd vdd FILL
X_3921_ \u_cpu.state.cnt_r\[0] \u_cpu.state.cnt_r\[1] _1123_ vdd gnd NOR2X1
X_3501_ _456_ _457_ vdd gnd INVX1
X_3098_ ibus_pending_rdt[18] _155_ vdd gnd INVX1
XFILL_0__2773_ gnd vdd FILL
XFILL_0__3138_ gnd vdd FILL
X_2789_ _1830_ i_rst_n_bF$buf8 _1424_ vdd gnd AND2X2
X_2369_ _683_ _692_ _682_ vdd gnd OR2X2
X_3730_ _301_ _832_ _615__bF$buf2 _1174_ vdd gnd MUX2X1
X_3310_ \u_cpu.immdec.gen_immdec_w_eq_1.imm30_25\[1] _1693__bF$buf1 _316_ _317_ vdd gnd OAI21X1
XFILL_1__3052_ gnd vdd FILL
XFILL_0__3367_ gnd vdd FILL
XFILL_1__3528_ gnd vdd FILL
X_2598_ _1578_ _1596_ _1675_ _1460_ vdd gnd AOI21X1
X_2178_ \u_mem_serial.shift_reg\[23] _864_ vdd gnd INVX1
XFILL_0__2638_ gnd vdd FILL
XFILL_0__2218_ gnd vdd FILL
XFILL_1__3281_ gnd vdd FILL
X_2810_ \u_rf_if.read_buf1\[8] \u_rf_if.read_buf1\[9] \u_rf_if.stream_active_bF$buf2\ _1846_ vdd gnd MUX2X1
XFILL_0__3596_ gnd vdd FILL
XFILL_0__3176_ gnd vdd FILL
XFILL_1__2132_ gnd vdd FILL
XFILL_1__3757_ gnd vdd FILL
XFILL_0__2867_ gnd vdd FILL
XFILL_0__2447_ gnd vdd FILL
X_4133_ _1287_ \gen_int_sys_clk.clk_sys_r_bF$buf24\ \u_cpu.immdec.gen_immdec_w_eq_1.imm11_7\[0] vdd gnd DFFPOSX1
XFILL_1__2608_ gnd vdd FILL
X_3824_ i_rst_n_bF$buf2 vdd _1168_ \gen_int_sys_clk.clk_sys_r_bF$buf31\ ibus_pending_rdt[21] vdd 
+ gnd
+ DFFSR
X_3404_ _391_ _390_ _661__bF$buf4 _1276_ vdd gnd MUX2X1
XFILL_1__2361_ gnd vdd FILL
XFILL_0__2676_ gnd vdd FILL
XFILL_0_CLKBUF1_insert140 gnd vdd FILL
XFILL_1__2837_ gnd vdd FILL
XFILL_0_CLKBUF1_insert142 gnd vdd FILL
XFILL_0_CLKBUF1_insert144 gnd vdd FILL
XFILL_0_CLKBUF1_insert146 gnd vdd FILL
XFILL_0_CLKBUF1_insert147 gnd vdd FILL
XFILL_0_CLKBUF1_insert149 gnd vdd FILL
XFILL_0__1947_ gnd vdd FILL
X_3633_ \u_cpu.ctrl.o_ibus_adr\[24] _558_ vdd gnd INVX1
X_3213_ _1907_ _242_ vdd gnd INVX1
XFILL_1__2590_ gnd vdd FILL
X_4171_ _1514_ i_clk_fast_bF$buf0 \u_mem_serial.bit_count\[1] vdd gnd DFFPOSX1
X_2904_ _11_ i_rst_n_bF$buf0 _1396_ vdd gnd AND2X2
X_3862_ _1187_ \gen_int_sys_clk.clk_sys_r_bF$buf13\ \u_cpu.ctrl.o_ibus_adr\[30] vdd gnd DFFPOSX1
X_3442_ _410_ _409_ _661__bF$buf2 _1257_ vdd gnd MUX2X1
X_3022_ _96_ _619_ _1803_ _101_ vdd gnd OAI21X1
XFILL_1__3184_ gnd vdd FILL
XFILL_1_CLKBUF1_insert171 gnd vdd FILL
X_2713_ _1768_ _1769_ _1770_ vdd gnd NOR2X1
XFILL_0__3499_ gnd vdd FILL
XFILL_0__3079_ gnd vdd FILL
X_3918_ _1383_ \gen_int_sys_clk.clk_sys_r_bF$buf7\ \u_rf_if.read_buf0\[12] vdd gnd DFFPOSX1
XFILL_1__2035_ gnd vdd FILL
XFILL_0__1985_ gnd vdd FILL
X_3671_ \u_cpu.ctrl.o_ibus_adr\[5] _577_ vdd gnd INVX1
X_3251_ _733__bF$buf5 _268_ _270_ vdd gnd AND2X2
X_4036_ _1240_ \gen_int_sys_clk.clk_sys_r_bF$buf19\ \u_cpu.bufreg2.dlo\[22] vdd gnd DFFPOSX1
XFILL_0__3711_ gnd vdd FILL
XFILL_0_BUFX2_insert30 gnd vdd FILL
XFILL_0_BUFX2_insert32 gnd vdd FILL
XFILL_0_BUFX2_insert34 gnd vdd FILL
XFILL_0_BUFX2_insert36 gnd vdd FILL
XFILL_0_BUFX2_insert37 gnd vdd FILL
XFILL_0_BUFX2_insert39 gnd vdd FILL
X_2942_ \u_rf_if.read_buf0\[10] \u_rf_if.read_buf0\[11] \u_rf_if.stream_active_bF$buf1\ _40_ vdd gnd MUX2X1
X_2522_ \u_rf_serial.last_req_key\[6] _1612_ _1613_ _1614_ vdd gnd NAND3X1
X_2102_ \u_cpu.bufreg.data\[15] \u_cpu.ctrl.o_ibus_adr\[15] _1052__bF$buf0 _931_ vdd gnd MUX2X1
X_3727_ _262_ _1715_ _615__bF$buf2 _1177_ vdd gnd MUX2X1
X_3307_ ibus_pending_ack_bF$buf5 _313_ _314_ vdd gnd NAND2X1
XFILL_1__2264_ gnd vdd FILL
X_3480_ _438_ _439_ vdd gnd INVX1
X_3060_ _126_ _125_ _127_ vdd gnd AND2X2
XFILL132150x68550 gnd vdd FILL
XFILL_0__2579_ gnd vdd FILL
XFILL_0__2159_ gnd vdd FILL
X_2751_ \u_rf_if.read_buf0\[31] \u_rf_if.stream_active_bF$buf5\ _1798_ _1804_ _1805_ vdd 
+ gnd
+ AOI22X1
X_2331_ _729_ _725_ _720_ vdd gnd NOR2X1
X_3956_ _1401_ \gen_int_sys_clk.clk_sys_r_bF$buf39\ \u_rf_if.read_buf1\[24] vdd gnd DFFPOSX1
X_3536_ mem_dbus_ack_bF$buf4 _888_ _486_ vdd gnd NAND2X1
X_3116_ _168_ _169_ vdd gnd INVX1
XFILL_1__2493_ gnd vdd FILL
XFILL132450x122550 gnd vdd FILL
XFILL_0__2388_ gnd vdd FILL
X_4074_ _1464_ i_clk_fast_bF$buf3 \u_rf_serial.last_req_key\[0] vdd gnd DFFPOSX1
X_2807_ \u_rf_if.read_buf1\[6] _1824__bF$buf5 _1844_ vdd gnd NAND2X1
XFILL_1__2969_ gnd vdd FILL
X_2980_ _12__bF$buf2 _67_ _68_ _69_ vdd gnd OAI21X1
X_2560_ i_rf_miso _1649_ vdd gnd INVX1
X_2140_ _898_ \u_mem_serial.shift_reg\[19] _1067__bF$buf3 _897_ vdd gnd MUX2X1
X_3765_ _1100_ _1102_ \u_mem_serial.bit_count\[0] _1099_ vdd gnd OAI21X1
X_3345_ _344_ _345_ _340_ _346_ vdd gnd NAND3X1
XFILL_0__3805_ gnd vdd FILL
X_2616_ _1684_ _1687_ _1688_ vdd gnd NAND2X1
XBUFX2_insert40 _12_ _12__bF$buf3 vdd gnd BUFX2
XBUFX2_insert41 _12_ _12__bF$buf2 vdd gnd BUFX2
XBUFX2_insert42 _12_ _12__bF$buf1 vdd gnd BUFX2
XBUFX2_insert43 _12_ _12__bF$buf0 vdd gnd BUFX2
XBUFX2_insert44 _440_ _440__bF$buf5 vdd gnd BUFX2
XBUFX2_insert45 _440_ _440__bF$buf4 vdd gnd BUFX2
XBUFX2_insert46 _440_ _440__bF$buf3 vdd gnd BUFX2
XBUFX2_insert47 _440_ _440__bF$buf2 vdd gnd BUFX2
XBUFX2_insert48 _440_ _440__bF$buf1 vdd gnd BUFX2
XBUFX2_insert49 _440_ _440__bF$buf0 vdd gnd BUFX2
X_3994_ _1223_ \gen_int_sys_clk.clk_sys_r_bF$buf36\ \u_cpu.bufreg2.dlo\[5] vdd gnd DFFPOSX1
X_3574_ \u_cpu.bufreg2.dlo\[11] _440__bF$buf0 _515_ vdd gnd NOR2X1
X_3154_ _196_ _670_ _197_ vdd gnd NOR2X1
XFILL_0__3614_ gnd vdd FILL
XFILL132450x21750 gnd vdd FILL
X_2845_ _1872_ i_rst_n_bF$buf9 _1410_ vdd gnd AND2X2
X_2425_ _1518_ _1517_ _1519_ vdd gnd OR2X2
X_2005_ _1018_ \u_mem_serial.shift_reg\[4] _1067__bF$buf1 _1017_ vdd gnd MUX2X1
XFILL_1__2167_ gnd vdd FILL
X_3383_ _377_ _264_ _378_ vdd gnd NAND2X1
X_4168_ _1304_ \gen_int_sys_clk.clk_sys_r_bF$buf32\ \u_cpu.csr_imm\ vdd gnd DFFPOSX1
X_2654_ _1721_ \u_mem_serial.shift_reg\[31] _1067__bF$buf4 _1722_ vdd gnd MUX2X1
X_2234_ \u_mem_serial.active_we_bF$buf2\ \u_cpu.bufreg2.dhi\[6] _814_ vdd gnd NAND2X1
X_3859_ _1353_ \gen_int_sys_clk.clk_sys_r_bF$buf10\ \u_rf_if.write_wait\[3] vdd gnd DFFPOSX1
X_3439_ \u_cpu.bufreg.data\[6] _409_ vdd gnd INVX1
X_3019_ \u_rf_if.stream_active_bF$buf6\ _1800_ _98_ _99_ vdd gnd OAI21X1
XFILL_1__2396_ gnd vdd FILL
X_3192_ _789_ _1693__bF$buf0 _226_ _1323_ vdd gnd OAI21X1
X_1925_ _1126__bF$buf5 _1090_ _1513_ vdd gnd NOR2X1
XFILL132750x3750 gnd vdd FILL
X_2883_ \u_rf_if.read_buf1\[25] _1824__bF$buf3 _1901_ vdd gnd NAND2X1
X_2463_ _693_ _621_ _1556_ _1557_ vdd gnd OAI21X1
X_2043_ \u_mem_serial.shift_reg\[8] _984_ vdd gnd INVX1
X_3668_ _575_ _190__bF$buf0 _574_ _556__bF$buf3 _1196_ vdd 
+ gnd
+ OAI22X1
X_3248_ _759_ _266_ _674_ _267_ vdd gnd OAI21X1
XFILL_0__2923_ gnd vdd FILL
XFILL_0__3708_ gnd vdd FILL
XFILL_0__3041_ gnd vdd FILL
XFILL132750x64950 gnd vdd FILL
X_2939_ \u_rf_if.read_buf0\[8] _12__bF$buf1 _38_ vdd gnd NAND2X1
X_2519_ \u_rf_serial.last_req_key\[7] _730_ _1610_ _1611_ vdd gnd OAI21X1
XFILL_1__3202_ gnd vdd FILL
X_2692_ \u_rf_if.stream_cnt\[0] _1752_ vdd gnd INVX1
X_2272_ _783_ _779_ vdd gnd INVX1
X_3897_ _1120_ _1117_ _1116_ vdd gnd OR2X2
X_3477_ \u_cpu.bufreg2.i_bytecnt\[0] \u_cpu.bufreg.data\[0] \u_cpu.bufreg2.i_bytecnt\[1] \u_cpu.state.i_ctrl_misalign\ _436_ vdd 
+ gnd
+ AOI22X1
X_3057_ _756_ _124_ _1126__bF$buf0 _1356_ vdd gnd AOI21X1
XFILL_0__3517_ gnd vdd FILL
X_1963_ \u_mem_serial.active_we_bF$buf4\ i_mem_miso _1056_ _1055_ vdd gnd OAI21X1
XFILL_0__3270_ gnd vdd FILL
X_2748_ \u_rf_if.stream_active_bF$buf5\ _1800_ _1793_ _1802_ vdd gnd OAI21X1
X_2328_ _724_ _723_ vdd gnd INVX1
XFILL_1__3431_ gnd vdd FILL
X_2081_ \u_mem_serial.active_we_bF$buf1\ \u_cpu.bufreg2.dlo\[13] _950_ vdd gnd NAND2X1
X_3286_ ibus_pending_ack_bF$buf0 _295_ _296_ vdd gnd NAND2X1
XFILL_0__2121_ gnd vdd FILL
XFILL_0_BUFX2_insert120 gnd vdd FILL
XFILL_0_BUFX2_insert122 gnd vdd FILL
XFILL_0_BUFX2_insert124 gnd vdd FILL
XFILL_0_BUFX2_insert125 gnd vdd FILL
XFILL_0__3746_ gnd vdd FILL
X_2977_ _66_ i_rst_n_bF$buf4 _1378_ vdd gnd AND2X2
X_2557_ _1597_ _1647_ _1126__bF$buf7 _1473_ vdd gnd AOI21X1
X_2137_ _901_ _903_ _1058__bF$buf1 _900_ vdd gnd OAI21X1
XFILL_1__2299_ gnd vdd FILL
XFILL_1__3660_ gnd vdd FILL
X_3095_ _152_ _1693__bF$buf2 _153_ vdd gnd NAND2X1
XFILL_0__2350_ gnd vdd FILL
XFILL_1__2511_ gnd vdd FILL
X_2786_ \u_rf_if.read_buf1\[2] \u_rf_if.read_buf1\[3] \u_rf_if.stream_active_bF$buf6\ _1828_ vdd gnd MUX2X1
X_2366_ \u_cpu.decode.opcode\[0] \u_cpu.decode.opcode\[1] _686_ _685_ vdd gnd AOI21X1
XFILL_0__2826_ gnd vdd FILL
XFILL_1__2740_ gnd vdd FILL
XFILL_1__3105_ gnd vdd FILL
X_2595_ _1595_ _1594_ \u_rf_serial.last_req_key\[3] _1674_ vdd gnd OAI21X1
X_2175_ _1058__bF$buf3 _867_ _868_ _866_ vdd gnd OAI21X1
XFILL_0__3173_ gnd vdd FILL
XFILL_1__3334_ gnd vdd FILL
X_3189_ ibus_pending_ack_bF$buf0 _223_ _224_ vdd gnd NAND2X1
XFILL_0__2024_ gnd vdd FILL
X_4130_ _1494_ i_clk_fast_bF$buf4 \u_mem_serial.shift_reg\[15] vdd gnd DFFPOSX1
XFILL_0__3649_ gnd vdd FILL
X_3821_ _1334_ \gen_int_sys_clk.clk_sys_r_bF$buf0\ \u_cpu.state.cnt_r\[2] vdd gnd DFFPOSX1
X_3401_ \u_cpu.bufreg.data\[25] _390_ vdd gnd INVX1
XFILL_1__3563_ gnd vdd FILL
XFILL_0__2253_ gnd vdd FILL
XFILL_1__2414_ gnd vdd FILL
X_2689_ _1557_ i_rst_n_bF$buf10 _1443_ vdd gnd AND2X2
X_2269_ \u_cpu.bufreg.i_right_shift_op\ _783_ _782_ vdd gnd NAND2X1
X_3630_ _554_ _190__bF$buf0 _555_ _556__bF$buf3 _1215_ vdd 
+ gnd
+ OAI22X1
X_3210_ ibus_pending_ack_bF$buf4 _239_ _240_ vdd gnd NAND2X1
XFILL_0__2729_ gnd vdd FILL
XFILL_1__3792_ gnd vdd FILL
XBUFX2_insert100 _1067_ _1067__bF$buf3 vdd gnd BUFX2
XBUFX2_insert101 _1067_ _1067__bF$buf2 vdd gnd BUFX2
XBUFX2_insert102 _1067_ _1067__bF$buf1 vdd gnd BUFX2
XBUFX2_insert103 _1067_ _1067__bF$buf0 vdd gnd BUFX2
XBUFX2_insert104 _1058_ _1058__bF$buf6 vdd gnd BUFX2
XBUFX2_insert105 _1058_ _1058__bF$buf5 vdd gnd BUFX2
XBUFX2_insert106 _1058_ _1058__bF$buf4 vdd gnd BUFX2
XBUFX2_insert107 _1058_ _1058__bF$buf3 vdd gnd BUFX2
XBUFX2_insert108 _1058_ _1058__bF$buf2 vdd gnd BUFX2
XBUFX2_insert109 _1058_ _1058__bF$buf1 vdd gnd BUFX2
XFILL_0__2482_ gnd vdd FILL
XFILL_0__2062_ gnd vdd FILL
X_2901_ \u_rf_if.read_buf1\[30] \u_rf_if.read_buf1\[31] \u_rf_if.stream_active_bF$buf5\ _9_ vdd gnd MUX2X1
XFILL_1__2643_ gnd vdd FILL
XFILL_1__3008_ gnd vdd FILL
X_2498_ _1591_ _708_ _807_ _1908_ vdd gnd AOI21X1
X_2078_ _1126__bF$buf3 _953_ _1497_ vdd gnd NOR2X1
XFILL_0__2958_ gnd vdd FILL
XFILL_1_CLKBUF1_insert140 gnd vdd FILL
XFILL_0__2291_ gnd vdd FILL
XFILL_1_CLKBUF1_insert144 gnd vdd FILL
XFILL_1_CLKBUF1_insert149 gnd vdd FILL
X_2710_ \u_rf_if.issue_chunk\[3] \u_rf_if.issue_chunk\[2] _1767_ vdd gnd NOR2X1
XFILL_0__3076_ gnd vdd FILL
XFILL131550x28950 gnd vdd FILL
X_3915_ _1200_ \gen_int_sys_clk.clk_sys_r_bF$buf41\ \u_cpu.ctrl.o_ibus_adr\[11] vdd gnd DFFPOSX1
XFILL_1__2872_ gnd vdd FILL
XFILL_1__3237_ gnd vdd FILL
XFILL_0__1982_ gnd vdd FILL
X_4033_ _1443_ \gen_int_sys_clk.clk_sys_r_bF$buf10\ \u_rf_if.wdata0_next\[0] vdd gnd DFFPOSX1
X_1998_ \u_mem_serial.shift_reg\[3] _1024_ vdd gnd INVX1
X_3724_ _737_ _755_ _613_ vdd gnd AND2X2
X_3304_ \u_cpu.immdec.gen_immdec_w_eq_1.imm30_25\[1] _288_ _312_ vdd gnd NOR2X1
XFILL_1__3466_ gnd vdd FILL
XFILL_0__2156_ gnd vdd FILL
XFILL_1__1952_ gnd vdd FILL
XFILL_1__2317_ gnd vdd FILL
X_3953_ _1209_ \gen_int_sys_clk.clk_sys_r_bF$buf34\ \u_cpu.ctrl.o_ibus_adr\[20] vdd gnd DFFPOSX1
X_3533_ mem_dbus_ack_bF$buf0 \u_cpu.bufreg2.dlo\[22] _483_ _484_ vdd gnd OAI21X1
X_3113_ \u_rf_if.issue_chunk\[1] _161_ _166_ _167_ vdd gnd OAI21X1
XFILL_1__3695_ gnd vdd FILL
XFILL_0__2385_ gnd vdd FILL
X_4071_ _1258_ \gen_int_sys_clk.clk_sys_r_bF$buf41\ \u_cpu.bufreg.data\[6] vdd gnd DFFPOSX1
X_2804_ _1824__bF$buf5 _1840_ _1841_ _1842_ vdd gnd OAI21X1
XFILL_1__2546_ gnd vdd FILL
X_3762_ _1097_ _1096_ vdd gnd INVX1
X_3342_ \u_mem_serial.shift_reg\[9] ibus_pending_ack_bF$buf6 _342_ _343_ vdd gnd OAI21X1
X_4127_ _1284_ \gen_int_sys_clk.clk_sys_r_bF$buf3\ \u_cpu.immdec.gen_immdec_w_eq_1.imm7\ vdd gnd DFFPOSX1
XFILL_0__2194_ gnd vdd FILL
X_2613_ \u_rf_if.write_wait\[3] \u_rf_if.write_wait\[2] _1685_ vdd gnd NOR2X1
X_3818_ _1331_ \gen_int_sys_clk.clk_sys_r_bF$buf12\ \u_cpu.bufreg2.i_bytecnt\[0] vdd gnd DFFPOSX1
XFILL_1__2775_ gnd vdd FILL
XBUFX2_insert10 _661_ _661__bF$buf1 vdd gnd BUFX2
XBUFX2_insert11 _661_ _661__bF$buf0 vdd gnd BUFX2
XBUFX2_insert12 \u_mem_serial.active_we\ \u_mem_serial.active_we_bF$buf4\ vdd gnd BUFX2
XBUFX2_insert13 \u_mem_serial.active_we\ \u_mem_serial.active_we_bF$buf3\ vdd gnd BUFX2
XBUFX2_insert14 \u_mem_serial.active_we\ \u_mem_serial.active_we_bF$buf2\ vdd gnd BUFX2
XBUFX2_insert15 \u_mem_serial.active_we\ \u_mem_serial.active_we_bF$buf1\ vdd gnd BUFX2
XBUFX2_insert16 \u_mem_serial.active_we\ \u_mem_serial.active_we_bF$buf0\ vdd gnd BUFX2
XBUFX2_insert17 ren ren_bF$buf3 vdd gnd BUFX2
XBUFX2_insert18 ren ren_bF$buf2 vdd gnd BUFX2
XBUFX2_insert19 ren ren_bF$buf1 vdd gnd BUFX2
X_3991_ _1418_ \gen_int_sys_clk.clk_sys_r_bF$buf20\ \u_rf_if.read_buf1\[7] vdd gnd DFFPOSX1
X_3571_ _440__bF$buf5 _511_ _512_ _1230_ vdd gnd AOI21X1
X_3151_ _779_ \u_cpu.state.cnt_r\[3] \u_rf_if.ready_pulse\ _195_ vdd gnd AOI21X1
X_2842_ \u_rf_if.read_buf1\[16] \u_rf_if.read_buf1\[17] \u_rf_if.stream_active_bF$buf7\ _1870_ vdd gnd MUX2X1
X_2422_ _706_ _1477_ _1476_ _1516_ vdd gnd NAND3X1
X_2002_ _1021_ _1023_ _1058__bF$buf3 _1020_ vdd gnd OAI21X1
X_3627_ \u_cpu.ctrl.o_ibus_adr\[26] _554_ vdd gnd INVX1
X_3207_ _744_ _1693__bF$buf5 _237_ vdd gnd NOR2X1
XFILL_1__3369_ gnd vdd FILL
X_3380_ \u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20\[0] _371_ _374_ _375_ vdd gnd OAI21X1
XFILL132750x122550 gnd vdd FILL
XFILL_0__2059_ gnd vdd FILL
X_4165_ _1511_ i_clk_fast_bF$buf0 \u_mem_serial.bit_count\[4] vdd gnd DFFPOSX1
XFILL_0__3420_ gnd vdd FILL
XFILL_0__3000_ gnd vdd FILL
X_2651_ _1718_ _1716_ _1058__bF$buf0 _1719_ vdd gnd OAI21X1
X_2231_ _1126__bF$buf4 _817_ _1480_ vdd gnd NOR2X1
X_3856_ i_rst_n_bF$buf2 vdd _1129_ \gen_int_sys_clk.clk_sys_r_bF$buf15\ ibus_pending_ack vdd 
+ gnd
+ DFFSR
X_3436_ _407_ _406_ _661__bF$buf1 _1260_ vdd gnd MUX2X1
X_3016_ \u_rf_if.read_buf0\[29] _96_ vdd gnd INVX1
XFILL_1_BUFX2_insert74 gnd vdd FILL
XFILL_1_BUFX2_insert78 gnd vdd FILL
XFILL_1__3598_ gnd vdd FILL
X_1922_ _1094_ _1097_ _1092_ vdd gnd NAND2X1
XFILL_0__2288_ gnd vdd FILL
X_2707_ _1756_ _1764_ _1760_ _1765_ vdd gnd OAI21X1
XFILL_1__2449_ gnd vdd FILL
XFILL_1__3810_ gnd vdd FILL
X_2880_ _1824__bF$buf0 _1897_ _1898_ _1899_ vdd gnd OAI21X1
X_2460_ \u_cpu.branch_op\ \u_cpu.decode.opcode\[0] _1554_ vdd gnd NAND2X1
X_2040_ _1058__bF$buf5 _987_ _988_ _986_ vdd gnd OAI21X1
XFILL132150x54150 gnd vdd FILL
X_3665_ \u_cpu.ctrl.o_ibus_adr\[8] _574_ vdd gnd INVX1
X_3245_ _261_ _1693__bF$buf0 _264_ _1308_ vdd gnd OAI21X1
XFILL_0__2920_ gnd vdd FILL
XFILL_0__2500_ gnd vdd FILL
XFILL_0__2097_ gnd vdd FILL
X_2936_ _12__bF$buf1 _34_ _35_ _36_ vdd gnd OAI21X1
X_2516_ raddr[8] ren_bF$buf2 _1608_ vdd gnd NAND2X1
XFILL_1__2678_ gnd vdd FILL
XFILL131850x36150 gnd vdd FILL
X_3894_ _1371_ \gen_int_sys_clk.clk_sys_r_bF$buf44\ \u_rf_if.read_buf0\[24] vdd gnd DFFPOSX1
X_3474_ \u_cpu.bufreg.data\[31] _661__bF$buf0 _434_ vdd gnd NAND2X1
X_3054_ _1126__bF$buf7 _1558_ _1357_ vdd gnd NOR2X1
X_1960_ \u_mem_serial.state\[1] _1059_ _1058_ vdd gnd NOR2X1
X_2745_ _1798_ _1800_ vdd gnd INVX2
X_2325_ _795_ _804_ _727_ _730_ _726_ vdd 
+ gnd
+ OAI22X1
X_3283_ \u_cpu.immdec.gen_immdec_w_eq_1.imm30_25\[4] _288_ _294_ vdd gnd NOR2X1
X_4068_ _1461_ i_clk_fast_bF$buf3 \u_rf_serial.last_req_key\[3] vdd gnd DFFPOSX1
XFILL_0__3323_ gnd vdd FILL
X_2974_ \u_rf_if.read_buf0\[18] \u_rf_if.read_buf0\[19] \u_rf_if.stream_active_bF$buf3\ _64_ vdd gnd MUX2X1
X_2554_ _1645_ _1600_ i_rst_n_bF$buf10 _1646_ vdd gnd OAI21X1
X_2134_ _904_ _1040__bF$buf4 _903_ vdd gnd NOR2X1
XFILL132450x97350 gnd vdd FILL
X_3759_ ibus_pending_rdt[0] _618_ vdd gnd INVX1
X_3339_ _747_ _332_ _340_ vdd gnd NAND2X1
X_3092_ \u_rf_if.rreg0_latched\[2] _733__bF$buf3 _150_ vdd gnd NAND2X1
XFILL_0__3552_ gnd vdd FILL
XFILL_0__3132_ gnd vdd FILL
XFILL_1__1987_ gnd vdd FILL
XFILL_1__3713_ gnd vdd FILL
X_2783_ \u_rf_if.read_buf1\[0] _1824__bF$buf2 _1826_ vdd gnd NAND2X1
X_2363_ \u_cpu.decode.co_ebreak\ _688_ vdd gnd INVX1
X_3988_ _1220_ \gen_int_sys_clk.clk_sys_r_bF$buf19\ \u_cpu.bufreg2.dlo\[2] vdd gnd DFFPOSX1
X_3568_ mem_dbus_ack_bF$buf6 _952_ _510_ vdd gnd NAND2X1
X_3148_ _189_ _190__bF$buf4 _194_ _191_ _1335_ vdd 
+ gnd
+ OAI22X1
XFILL_0__2823_ gnd vdd FILL
XFILL_0__2403_ gnd vdd FILL
XFILL_0__3781_ gnd vdd FILL
XFILL_0__3361_ gnd vdd FILL
X_2839_ \u_rf_if.read_buf1\[14] _1824__bF$buf4 _1868_ vdd gnd NAND2X1
X_2419_ _1145_ _1180_ _1317_ vdd gnd NOR2X1
X_2592_ _1582_ _1597_ _1671_ _1672_ vdd gnd OAI21X1
X_2172_ _870_ _1062__bF$buf4 _869_ vdd gnd NOR2X1
X_3797_ ibus_pending_ack_bF$buf2 ibus_pending_rdt[1] ibus_pending_rdt[0] _643_ vdd gnd NAND3X1
X_3377_ _371_ _372_ vdd gnd INVX1
XFILL_0__2632_ gnd vdd FILL
XFILL_0__3590_ gnd vdd FILL
X_2648_ _1715_ _1040__bF$buf1 _1716_ vdd gnd NOR2X1
X_2228_ \u_cpu.bufreg.data\[29] \u_cpu.ctrl.o_ibus_adr\[29] _1052__bF$buf4 _819_ vdd gnd MUX2X1
X_3186_ _203_ _1693__bF$buf0 _190__bF$buf4 _222_ vdd gnd OAI21X1
XFILL_0__2861_ gnd vdd FILL
XFILL132750x50550 gnd vdd FILL
X_1919_ \u_mem_serial.bit_count\[1] _1094_ vdd gnd INVX2
XFILL_0__3226_ gnd vdd FILL
X_2877_ _1896_ i_rst_n_bF$buf9 _1402_ vdd gnd AND2X2
X_2457_ _1550_ _1551_ vdd gnd INVX1
X_2037_ _990_ _1062__bF$buf2 _989_ vdd gnd NOR2X1
XFILL_1__3140_ gnd vdd FILL
XFILL_0__3455_ gnd vdd FILL
XFILL_0__3035_ gnd vdd FILL
XFILL_1__3616_ gnd vdd FILL
X_2686_ _1126__bF$buf7 _1748_ _1445_ vdd gnd NOR2X1
X_2266_ \u_cpu.bufreg2.i_bytecnt\[1] _785_ vdd gnd INVX2
XFILL_0__1941_ gnd vdd FILL
XFILL_0__2306_ gnd vdd FILL
X_1957_ _1066_ _1062__bF$buf4 \u_mem_serial.active_we_bF$buf4\ _1061_ vdd gnd OAI21X1
XFILL_0__3684_ gnd vdd FILL
XFILL_0__3264_ gnd vdd FILL
XFILL_1__2220_ gnd vdd FILL
X_2495_ _1588_ _1579_ _1589_ vdd gnd NOR2X1
X_2075_ \u_cpu.bufreg.data\[12] \u_cpu.ctrl.o_ibus_adr\[12] _1052__bF$buf0 _955_ vdd gnd MUX2X1
XFILL_0__2535_ gnd vdd FILL
XFILL_0__2115_ gnd vdd FILL
XFILL_0__3493_ gnd vdd FILL
X_3912_ _1380_ \gen_int_sys_clk.clk_sys_r_bF$buf22\ \u_rf_if.read_buf0\[15] vdd gnd DFFPOSX1
X_3089_ _147_ _920_ ibus_pending_ack_bF$buf1 _148_ vdd gnd MUX2X1
XFILL_0__2764_ gnd vdd FILL
XFILL_0__2344_ gnd vdd FILL
X_4030_ _1440_ \gen_int_sys_clk.clk_sys_r_bF$buf7\ \u_rf_if.stream_cnt\[4] vdd gnd DFFPOSX1
XFILL_0__3129_ gnd vdd FILL
XFILL_1__2925_ gnd vdd FILL
X_1995_ _1058__bF$buf5 _1027_ _1028_ _1026_ vdd gnd OAI21X1
X_3721_ _1074_ _1078_ _611_ vdd gnd NAND2X1
X_3301_ \u_mem_serial.shift_reg\[26] ibus_pending_ack_bF$buf3 _308_ _309_ vdd gnd OAI21X1
XFILL_0__2993_ gnd vdd FILL
XFILL_0__3358_ gnd vdd FILL
XFILL_1__3519_ gnd vdd FILL
X_2589_ _1566_ _1597_ _1669_ _1670_ vdd gnd OAI21X1
X_2169_ \u_mem_serial.shift_reg\[22] _872_ vdd gnd INVX1
X_3950_ _1398_ \gen_int_sys_clk.clk_sys_r_bF$buf42\ \u_rf_if.read_buf1\[27] vdd gnd DFFPOSX1
X_3530_ \u_cpu.bufreg2.dlo\[22] _440__bF$buf2 _482_ vdd gnd NOR2X1
X_3110_ _1700_ _164_ vdd gnd INVX1
XFILL_0__2209_ gnd vdd FILL
X_2801_ _1839_ i_rst_n_bF$buf0 _1421_ vdd gnd AND2X2
XFILL_0__3587_ gnd vdd FILL
XFILL_0__3167_ gnd vdd FILL
XFILL_1__2123_ gnd vdd FILL
XFILL_1__3748_ gnd vdd FILL
X_2398_ \u_cpu.bufreg2.dhi\[6] _648_ vdd gnd INVX1
XFILL_0__2438_ gnd vdd FILL
XFILL_0__2018_ gnd vdd FILL
X_4124_ _1491_ i_clk_fast_bF$buf1 \u_mem_serial.shift_reg\[18] vdd gnd DFFPOSX1
XFILL_0__2191_ gnd vdd FILL
X_2610_ \u_rf_if.pending_read\ _1682_ vdd gnd INVX1
XFILL_0__3396_ gnd vdd FILL
X_3815_ \u_mem_serial.shift_reg\[31] _654_ vdd gnd INVX1
XFILL_1__2352_ gnd vdd FILL
XFILL_0__2667_ gnd vdd FILL
XFILL_0__2247_ gnd vdd FILL
XFILL_1__2828_ gnd vdd FILL
XFILL_0__1938_ gnd vdd FILL
X_3624_ _1518_ mem_dbus_ack_bF$buf3 _552_ vdd gnd OR2X2
X_3204_ _1118_ _235_ _733__bF$buf2 _1320_ vdd gnd MUX2X1
XFILL_1__2581_ gnd vdd FILL
XFILL_0__2896_ gnd vdd FILL
XFILL_0__2476_ gnd vdd FILL
X_4162_ _1301_ \gen_int_sys_clk.clk_sys_r_bF$buf25\ \u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20\[1] vdd gnd DFFPOSX1
X_3853_ _1350_ \gen_int_sys_clk.clk_sys_r_bF$buf24\ \u_rf_if.o_waddr\[1] vdd gnd DFFPOSX1
X_3433_ \u_cpu.bufreg.data\[9] _406_ vdd gnd INVX1
X_3013_ \u_rf_if.stream_active_bF$buf6\ _1800_ _93_ _94_ vdd gnd OAI21X1
XFILL_1_BUFX2_insert43 gnd vdd FILL
XFILL_1_BUFX2_insert47 gnd vdd FILL
X_2704_ _1761_ _1762_ vdd gnd INVX1
X_3909_ \u_cpu.branch_op\ _1119_ vdd gnd INVX1
XFILL_1__2026_ gnd vdd FILL
XFILL_0__1976_ gnd vdd FILL
X_3662_ _572_ _190__bF$buf3 _571_ _556__bF$buf0 _1199_ vdd 
+ gnd
+ OAI22X1
X_3242_ ibus_pending_rdt[30] _262_ vdd gnd INVX1
X_4027_ _1237_ \gen_int_sys_clk.clk_sys_r_bF$buf29\ \u_cpu.bufreg2.dlo\[19] vdd gnd DFFPOSX1
XFILL_0__3702_ gnd vdd FILL
XFILL132150x75750 gnd vdd FILL
X_2933_ _33_ i_rst_n_bF$buf8 _1389_ vdd gnd AND2X2
X_2513_ \u_rf_serial.last_req_key\[4] _1603_ _1604_ _1605_ vdd gnd NAND3X1
XFILL_0__3299_ gnd vdd FILL
X_3718_ \u_mem_serial.active_we_bF$buf4\ _609_ _1907_ _610_ vdd gnd OAI21X1
XFILL_1__2255_ gnd vdd FILL
X_3891_ _1194_ \gen_int_sys_clk.clk_sys_r_bF$buf23\ \u_cpu.ctrl.o_ibus_adr\[5] vdd gnd DFFPOSX1
X_3471_ _424_ _431_ _661__bF$buf0 _1249_ vdd gnd AOI21X1
X_3051_ \u_rf_if.rreg1_latched\[3] \u_rf_if.rreg0_latched\[3] \u_rf_if.issue_sel\ _121_ vdd gnd MUX2X1
X_2742_ _1794_ _1797_ _1126__bF$buf6 _1438_ vdd gnd AOI21X1
X_2322_ \u_rf_serial.tx_state\[1] _729_ vdd gnd INVX1
X_3947_ vdd i_rst_n_bF$buf2 _1151_ \gen_int_sys_clk.clk_sys_r_bF$buf37\ ibus_pending_rdt[4] vdd 
+ gnd
+ DFFSR
X_3527_ _441_ _479_ _476_ _1241_ vdd gnd OAI21X1
X_3107_ _1704__bF$buf3 \u_rf_if.issue_sel\ \u_rf_if.issue_chunk\[0] _162_ vdd gnd AOI21X1
XFILL_1__2484_ gnd vdd FILL
X_3280_ \u_mem_serial.shift_reg\[29] ibus_pending_ack_bF$buf0 _290_ _291_ vdd gnd OAI21X1
XFILL_0__2799_ gnd vdd FILL
XFILL_0__2379_ gnd vdd FILL
X_4065_ _1255_ \gen_int_sys_clk.clk_sys_r_bF$buf1\ \u_cpu.bufreg.data\[3] vdd gnd DFFPOSX1
X_2971_ \u_rf_if.read_buf0\[16] _12__bF$buf3 _62_ vdd gnd NAND2X1
X_2551_ _1642_ _1607_ _1616_ _1643_ vdd gnd NAND3X1
X_2131_ _906_ \u_mem_serial.shift_reg\[18] _1067__bF$buf1 _905_ vdd gnd MUX2X1
X_3756_ _239_ _1032_ _615__bF$buf4 _1149_ vdd gnd MUX2X1
X_3336_ _751_ _331_ _733__bF$buf0 _338_ vdd gnd NAND3X1
X_2607_ ren_bF$buf3 _1596_ _1680_ vdd gnd NAND2X1
X_2780_ _1823_ _1764_ _1426_ vdd gnd NOR2X1
X_2360_ \u_cpu.decode.opcode\[1] _691_ vdd gnd INVX1
X_3985_ _1415_ \gen_int_sys_clk.clk_sys_r_bF$buf30\ \u_rf_if.read_buf1\[10] vdd gnd DFFPOSX1
X_3565_ mem_dbus_ack_bF$buf4 \u_cpu.bufreg2.dlo\[14] _507_ _508_ vdd gnd OAI21X1
X_3145_ _1553_ _192_ vdd gnd INVX1
XFILL_0__3605_ gnd vdd FILL
X_2836_ _1824__bF$buf4 _1864_ _1865_ _1866_ vdd gnd OAI21X1
X_2416_ _1144_ _1143_ _1141_ _1145_ vdd gnd AOI21X1
X_3794_ _225_ _228_ _639_ _258_ _640_ vdd 
+ gnd
+ AOI22X1
X_3374_ \u_cpu.immdec.gen_immdec_w_eq_1.imm30_25\[5] _369_ vdd gnd INVX1
X_4159_ _1508_ i_clk_fast_bF$buf6 \u_mem_serial.shift_reg\[1] vdd gnd DFFPOSX1
X_2645_ _1058__bF$buf4 _1713_ _1711_ _1714_ vdd gnd NAND3X1
X_2225_ \u_mem_serial.active_we_bF$buf2\ \u_cpu.bufreg2.dhi\[5] _822_ vdd gnd NAND2X1
X_3183_ _785_ _784_ \u_cpu.state.init_done\ _220_ vdd gnd OAI21X1
X_1916_ _1906_ o_mem_sck vdd gnd BUFX2
X_2874_ \u_rf_if.read_buf1\[24] \u_rf_if.read_buf1\[25] \u_rf_if.stream_active_bF$buf7\ _1894_ vdd gnd MUX2X1
X_2454_ _1547_ _1546_ _1548_ vdd gnd NOR2X1
X_2034_ \u_mem_serial.shift_reg\[7] _992_ vdd gnd INVX1
X_3659_ \u_cpu.ctrl.o_ibus_adr\[11] _571_ vdd gnd INVX1
X_3239_ _246_ _250_ _260_ vdd gnd NAND2X1
XFILL_0__2914_ gnd vdd FILL
X_4197_ i_rst_n_bF$buf5 vdd _1165_ \gen_int_sys_clk.clk_sys_r_bF$buf15\ ibus_pending_rdt[18] vdd 
+ gnd
+ DFFSR
XFILL_0__3032_ gnd vdd FILL
X_2683_ _1744_ _1746_ _1747_ vdd gnd NAND2X1
X_2263_ _790_ _789_ _788_ vdd gnd NAND2X1
X_3888_ _1368_ \gen_int_sys_clk.clk_sys_r_bF$buf20\ \u_rf_if.read_buf0\[27] vdd gnd DFFPOSX1
X_3468_ _418_ _429_ _415_ _430_ vdd gnd OAI21X1
X_3048_ _118_ _1690_ _119_ vdd gnd NAND2X1
XFILL_0__3508_ gnd vdd FILL
X_1954_ \u_mem_serial.bit_count\[0] _1064_ vdd gnd INVX1
XFILL_0__3261_ gnd vdd FILL
X_2739_ \u_rf_if.read_buf1\[30] _619_ _1795_ vdd gnd NAND2X1
X_2319_ \u_rf_if.rcnt\[0] _756_ _733__bF$buf0 _732_ vdd gnd NAND3X1
XFILL_1__3422_ gnd vdd FILL
X_2492_ _1585_ _1586_ vdd gnd INVX1
X_2072_ \u_mem_serial.active_we_bF$buf0\ \u_cpu.bufreg2.dlo\[12] _958_ vdd gnd NAND2X1
X_3697_ _588_ _589_ vdd gnd INVX1
X_3277_ _237_ _287_ _286_ _288_ vdd gnd AOI21X1
XFILL_0__2112_ gnd vdd FILL
XFILL_0__3737_ gnd vdd FILL
XFILL_0__3317_ gnd vdd FILL
XFILL_0__3490_ gnd vdd FILL
XFILL_0__3070_ gnd vdd FILL
X_2968_ _12__bF$buf3 _58_ _59_ _60_ vdd gnd OAI21X1
X_2548_ \u_rf_serial.last_req_key\[7] _1638_ _1639_ _1640_ vdd gnd NAND3X1
X_2128_ _909_ _911_ _1058__bF$buf2 _908_ vdd gnd OAI21X1
XFILL_1__3651_ gnd vdd FILL
X_3086_ _145_ _142_ _1126__bF$buf1 _1348_ vdd gnd AOI21X1
XFILL_0__2341_ gnd vdd FILL
XFILL_1__2502_ gnd vdd FILL
X_1992_ _1030_ _1062__bF$buf4 _1029_ vdd gnd NOR2X1
X_2777_ _1820_ _1819_ _1821_ _1427_ vdd gnd AOI21X1
X_2357_ _695_ _694_ vdd gnd INVX1
XFILL_0__2817_ gnd vdd FILL
XFILL_0__2570_ gnd vdd FILL
XFILL_0__2150_ gnd vdd FILL
XFILL_1__2731_ gnd vdd FILL
X_2586_ _1570_ _1597_ _1667_ _1668_ vdd gnd OAI21X1
X_2166_ _1058__bF$buf6 _875_ _876_ _874_ vdd gnd OAI21X1
XFILL_0__3164_ gnd vdd FILL
XFILL_1__2960_ gnd vdd FILL
XFILL_1__3325_ gnd vdd FILL
X_2395_ \u_cpu.state.o_cnt\[2] _657_ _656_ vdd gnd NOR2X1
XFILL_0__2015_ gnd vdd FILL
X_4121_ \gen_int_sys_clk.clk_sys_r_bF$buf37\ i_clk_fast_bF$buf6 \u_mem_serial.clk_sys_prev\ vdd gnd DFFPOSX1
XFILL_0__3393_ gnd vdd FILL
X_3812_ _735_ _613_ _615__bF$buf1 _1129_ vdd gnd OAI21X1
XFILL_1__3554_ gnd vdd FILL
XFILL_0__2244_ gnd vdd FILL
XFILL_0__3869_ gnd vdd FILL
XFILL_0__3449_ gnd vdd FILL
XFILL_1__2405_ gnd vdd FILL
X_3621_ \u_cpu.bufreg2.dlo\[23] _440__bF$buf5 _550_ vdd gnd NOR2X1
X_3201_ ibus_pending_rdt[4] _233_ vdd gnd INVX1
XFILL_1__3783_ gnd vdd FILL
XFILL_0__2473_ gnd vdd FILL
XFILL_0__2053_ gnd vdd FILL
XFILL_0__3678_ gnd vdd FILL
XFILL_1__2634_ gnd vdd FILL
X_2489_ \u_rf_if.o_waddr\[3] _1583_ vdd gnd INVX1
X_2069_ _1126__bF$buf4 _961_ _1498_ vdd gnd NOR2X1
X_3850_ _1181_ \gen_int_sys_clk.clk_sys_r_bF$buf12\ \u_cpu.alu.cmp_r\ vdd gnd DFFPOSX1
X_3430_ _404_ _403_ _661__bF$buf3 _1263_ vdd gnd MUX2X1
X_3010_ \u_rf_if.read_buf0\[28] _91_ vdd gnd INVX1
XFILL_1_BUFX2_insert12 gnd vdd FILL
XFILL_1_BUFX2_insert17 gnd vdd FILL
XFILL_0__2949_ gnd vdd FILL
XFILL_0__2282_ gnd vdd FILL
X_2701_ _1759_ _1441_ vdd gnd INVX1
X_3906_ _1377_ \gen_int_sys_clk.clk_sys_r_bF$buf44\ \u_rf_if.read_buf0\[18] vdd gnd DFFPOSX1
XFILL_1__2863_ gnd vdd FILL
XFILL_1__3228_ gnd vdd FILL
X_2298_ _786_ _753_ vdd gnd INVX1
X_4024_ _1437_ \gen_int_sys_clk.clk_sys_r_bF$buf38\ \u_rf_if.read_buf0\[31] vdd gnd DFFPOSX1
XFILL_0__2091_ gnd vdd FILL
X_1989_ \u_mem_serial.shift_reg\[2] _1032_ vdd gnd INVX1
X_2930_ \u_rf_if.read_buf0\[7] \u_rf_if.read_buf0\[8] \u_rf_if.stream_active_bF$buf1\ _31_ vdd gnd MUX2X1
X_2510_ \u_rf_serial.last_req_key\[6] _721_ _1602_ vdd gnd NOR2X1
X_3715_ \u_mem_serial.bit_count\[0] _1094_ _607_ vdd gnd NOR2X1
XFILL_1__3457_ gnd vdd FILL
XFILL_0__2147_ gnd vdd FILL
XFILL_1__1943_ gnd vdd FILL
XFILL_1__2308_ gnd vdd FILL
X_3944_ _1395_ \gen_int_sys_clk.clk_sys_r_bF$buf28\ \u_rf_if.read_buf0\[0] vdd gnd DFFPOSX1
X_3524_ _469_ _781_ _477_ vdd gnd NAND2X1
X_3104_ _159_ _158_ _160_ vdd gnd NAND2X1
XFILL_1__3686_ gnd vdd FILL
XFILL_0__2376_ gnd vdd FILL
X_4062_ _1458_ i_clk_fast_bF$buf3 \u_rf_serial.last_req_key\[6] vdd gnd DFFPOSX1
XFILL_1__2537_ gnd vdd FILL
X_3753_ _233_ _1016_ _615__bF$buf4 _1151_ vdd gnd MUX2X1
X_3333_ ibus_pending_ack_bF$buf5 _334_ _335_ vdd gnd NAND2X1
X_4118_ _1488_ i_clk_fast_bF$buf4 \u_mem_serial.shift_reg\[21] vdd gnd DFFPOSX1
XFILL_0__2185_ gnd vdd FILL
X_2604_ _730_ _1596_ _1678_ _1457_ vdd gnd AOI21X1
X_3809_ _711_ _651_ rf_write_drain_busy _652_ vdd gnd OAI21X1
XFILL_1__2766_ gnd vdd FILL
X_3982_ _1217_ \gen_int_sys_clk.clk_sys_r_bF$buf19\ \u_cpu.bufreg2.dlo\[23] vdd gnd DFFPOSX1
X_3562_ \u_cpu.bufreg2.dlo\[14] _440__bF$buf4 _506_ vdd gnd NOR2X1
X_3142_ \u_cpu.ctrl.o_ibus_adr\[31] _189_ vdd gnd INVX1
X_2833_ _1863_ i_rst_n_bF$buf4 _1413_ vdd gnd AND2X2
X_2413_ \u_rf_if.read_buf1\[0] _1142_ vdd gnd INVX1
X_3618_ _547_ _1066_ _440__bF$buf5 _1218_ vdd gnd MUX2X1
XFILL_1__2995_ gnd vdd FILL
X_3791_ _241_ _637_ vdd gnd INVX1
X_3371_ \u_cpu.immdec.gen_immdec_w_eq_1.imm7\ _367_ vdd gnd INVX1
X_4156_ _1298_ \gen_int_sys_clk.clk_sys_r_bF$buf9\ \u_cpu.immdec.gen_immdec_w_eq_1.imm30_25\[3] vdd gnd DFFPOSX1
XFILL_0__3411_ gnd vdd FILL
X_2642_ _1709_ _1102_ _1711_ vdd gnd NOR2X1
X_2222_ _1126__bF$buf4 _825_ _1481_ vdd gnd NOR2X1
X_3847_ _1347_ \gen_int_sys_clk.clk_sys_r_bF$buf32\ \u_rf_if.rreg0_latched\[1] vdd gnd DFFPOSX1
X_3427_ \u_cpu.bufreg.data\[12] _403_ vdd gnd INVX1
X_3007_ \u_rf_if.read_buf0\[25] _12__bF$buf6 _89_ vdd gnd NAND2X1
X_3180_ _217_ _765_ _218_ vdd gnd NOR2X1
XFILL132150x61350 gnd vdd FILL
X_1913_ _1909_ o_rf_sck vdd gnd BUFX2
XFILL_0__2279_ gnd vdd FILL
XFILL_0__3640_ gnd vdd FILL
XFILL_0__3220_ gnd vdd FILL
XFILL132150x28950 gnd vdd FILL
XFILL_1__3801_ gnd vdd FILL
X_2871_ \u_rf_if.read_buf1\[22] _1824__bF$buf0 _1892_ vdd gnd NAND2X1
X_2451_ \u_cpu.ctrl.pc_plus_4_cy_r_w\ _1545_ vdd gnd INVX1
X_2031_ _1058__bF$buf2 _995_ _996_ _994_ vdd gnd OAI21X1
X_3656_ _569_ _190__bF$buf3 _568_ _556__bF$buf0 _1202_ vdd 
+ gnd
+ OAI22X1
X_3236_ _733__bF$buf2 _258_ _259_ vdd gnd OR2X2
XFILL_0__2911_ gnd vdd FILL
XFILL_0__2088_ gnd vdd FILL
X_4194_ _1324_ \gen_int_sys_clk.clk_sys_r_bF$buf12\ \u_cpu.state.ibus_cyc\ vdd gnd DFFPOSX1
X_2927_ \u_rf_if.read_buf0\[5] _12__bF$buf4 _29_ vdd gnd NAND2X1
X_2507_ _1599_ i_rst_n_bF$buf10 _1475_ vdd gnd AND2X2
XFILL_1__2669_ gnd vdd FILL
X_2680_ _1727_ _1744_ vdd gnd INVX1
X_2260_ \u_cpu.branch_op\ \u_cpu.decode.opcode\[0] _791_ vdd gnd NOR2X1
X_3885_ _1136_ i_clk_fast_bF$buf2 \gen_int_sys_clk.clk_div\[0] vdd gnd DFFPOSX1
X_3465_ _426_ _424_ _427_ vdd gnd AND2X2
X_3045_ \u_rf_if.rreg1_latched\[2] _116_ vdd gnd INVX1
XFILL_0__2720_ gnd vdd FILL
X_1951_ _1068_ _1098_ _1107_ _1067_ vdd gnd OAI21X1
X_2736_ _1787_ _1791_ _1792_ vdd gnd AND2X2
X_2316_ ibus_pending_ack_bF$buf1 _735_ vdd gnd INVX1
XFILL_1__2898_ gnd vdd FILL
X_3694_ \u_cpu.alu.cmp_r\ _1121_ _587_ vdd gnd NAND2X1
X_3274_ _1121_ _733__bF$buf2 _285_ vdd gnd NAND2X1
X_4059_ _1252_ \gen_int_sys_clk.clk_sys_r_bF$buf12\ \u_cpu.bufreg.data\[29] vdd gnd DFFPOSX1
XFILL_0__3314_ gnd vdd FILL
X_2965_ _57_ i_rst_n_bF$buf4 _1381_ vdd gnd AND2X2
X_2545_ \u_rf_serial.last_req_key\[5] _1635_ _1636_ _1637_ vdd gnd NAND3X1
X_2125_ _912_ _1040__bF$buf4 _911_ vdd gnd NOR2X1
X_3083_ ibus_pending_rdt[15] _143_ vdd gnd INVX1
XFILL_0__3543_ gnd vdd FILL
XFILL_0__3123_ gnd vdd FILL
XFILL_1__1978_ gnd vdd FILL
XFILL_1__3704_ gnd vdd FILL
X_2774_ \u_rf_if.stream_cnt\[2] _1761_ _1819_ vdd gnd NAND2X1
X_2354_ \u_rf_if.wdata0_next_phase\ _698_ _697_ vdd gnd NAND2X1
X_3979_ _1412_ \gen_int_sys_clk.clk_sys_r_bF$buf30\ \u_rf_if.read_buf1\[13] vdd gnd DFFPOSX1
X_3559_ _440__bF$buf2 _502_ _503_ _1233_ vdd gnd AOI21X1
X_3139_ _186_ _864_ ibus_pending_ack_bF$buf4 _187_ vdd gnd MUX2X1
X_4097_ _1478_ i_clk_fast_bF$buf6 \u_mem_serial.state\[0] vdd gnd DFFPOSX1
XFILL_0__3772_ gnd vdd FILL
XFILL_0__3352_ gnd vdd FILL
X_2583_ i_rst_n_bF$buf3 _800_ _1666_ vdd gnd NAND2X1
X_2163_ _878_ _1062__bF$buf1 _877_ vdd gnd NOR2X1
X_3788_ \gen_int_sys_clk.clk_sys_r_bF$buf6\ _634_ _635_ vdd gnd NAND2X1
X_3368_ \u_cpu.branch_op\ rreg1[0] _364_ _365_ vdd gnd OAI21X1
XFILL_0__2623_ gnd vdd FILL
XFILL_0__2203_ gnd vdd FILL
XFILL_0__3581_ gnd vdd FILL
X_2639_ \u_mem_serial.clk_sys_prev\ _1114_ \u_mem_serial.state\[1] _1708_ vdd gnd OAI21X1
X_2219_ \u_cpu.bufreg.data\[28] \u_cpu.ctrl.o_ibus_adr\[28] _1052__bF$buf1 _827_ vdd gnd MUX2X1
X_2392_ _679_ _667_ _660_ _659_ vdd gnd NAND3X1
X_3597_ mem_dbus_ack_bF$buf1 \u_cpu.bufreg2.dlo\[6] _531_ _532_ vdd gnd OAI21X1
X_3177_ _214_ \u_cpu.bne_or_bge\ _215_ vdd gnd AND2X2
XFILL_0__2852_ gnd vdd FILL
XFILL_0__2432_ gnd vdd FILL
XFILL_0__3217_ gnd vdd FILL
X_2868_ _1824__bF$buf0 _1888_ _1889_ _1890_ vdd gnd OAI21X1
X_2448_ _744_ _1118_ _1541_ _1542_ vdd gnd NAND3X1
X_2028_ _998_ _1062__bF$buf2 _997_ vdd gnd NOR2X1
XFILL_0__2661_ gnd vdd FILL
XFILL_0__3446_ gnd vdd FILL
XFILL_0__3026_ gnd vdd FILL
XFILL132450x36150 gnd vdd FILL
XFILL_1__3607_ gnd vdd FILL
X_2677_ _711_ _698_ _1741_ vdd gnd OR2X2
X_2257_ \u_cpu.decode.co_mem_word\ _1118_ _794_ vdd gnd NOR2X1
XFILL_0__1932_ gnd vdd FILL
X_1948_ _1083_ \u_mem_serial.bit_count\[4] _1070_ vdd gnd OR2X2
XFILL_0__3675_ gnd vdd FILL
XFILL_0__3255_ gnd vdd FILL
XFILL_1__2211_ gnd vdd FILL
X_2486_ \u_rf_if.o_waddr\[2] _1580_ vdd gnd INVX1
X_2066_ \u_cpu.bufreg.data\[11] \u_cpu.ctrl.o_ibus_adr\[11] _1052__bF$buf4 _963_ vdd gnd MUX2X1
XFILL_0__2526_ gnd vdd FILL
XFILL_0__2106_ gnd vdd FILL
XFILL_0__3484_ gnd vdd FILL
XFILL_0__3064_ gnd vdd FILL
X_3903_ _1197_ \gen_int_sys_clk.clk_sys_r_bF$buf13\ \u_cpu.ctrl.o_ibus_adr\[8] vdd gnd DFFPOSX1
XFILL_1__2440_ gnd vdd FILL
X_2295_ _757_ _762_ _756_ vdd gnd NOR2X1
XFILL_0__2755_ gnd vdd FILL
XFILL_0__2335_ gnd vdd FILL
X_4021_ _1234_ \gen_int_sys_clk.clk_sys_r_bF$buf36\ \u_cpu.bufreg2.dlo\[16] vdd gnd DFFPOSX1
XFILL132750x79350 gnd vdd FILL
XFILL_1__2916_ gnd vdd FILL
X_1986_ _1058__bF$buf4 _1035_ _1036_ _1034_ vdd gnd OAI21X1
XFILL_0__3293_ gnd vdd FILL
X_3712_ _600_ _1064_ _603_ _604_ vdd gnd AOI21X1
XFILL_0__2984_ gnd vdd FILL
XFILL_0__2564_ gnd vdd FILL
XFILL_0__3349_ gnd vdd FILL
X_3941_ _1206_ \gen_int_sys_clk.clk_sys_r_bF$buf34\ \u_cpu.ctrl.o_ibus_adr\[17] vdd gnd DFFPOSX1
X_3521_ _761_ \u_mem_serial.shift_reg\[25] _444_ _475_ vdd gnd OAI21X1
X_3101_ _157_ _154_ _1126__bF$buf1 _1345_ vdd gnd AOI21X1
XFILL_0__2793_ gnd vdd FILL
XFILL_0__3578_ gnd vdd FILL
XFILL_0__3158_ gnd vdd FILL
XFILL_1__3739_ gnd vdd FILL
X_2389_ _663_ _662_ vdd gnd INVX1
X_3750_ _354_ _992_ _615__bF$buf3 _1154_ vdd gnd MUX2X1
X_3330_ _331_ _1693__bF$buf3 _332_ vdd gnd NOR2X1
XFILL_0__2429_ gnd vdd FILL
XFILL_0__2009_ gnd vdd FILL
X_4115_ _1281_ \gen_int_sys_clk.clk_sys_r_bF$buf16\ \u_cpu.immdec.gen_immdec_w_eq_1.imm11_7\[4] vdd gnd DFFPOSX1
X_2601_ \u_rf_serial.last_req_key\[6] _1596_ i_rst_n_bF$buf3 _1677_ vdd gnd OAI21X1
XFILL_0__3387_ gnd vdd FILL
X_3806_ \gen_int_sys_clk.clk_sys_r_bF$buf6\ _1114_ vdd gnd INVX1
X_2198_ \u_mem_serial.active_we_bF$buf2\ \u_cpu.bufreg.i_shamt\[2] _846_ vdd gnd NAND2X1
XFILL_0__2658_ gnd vdd FILL
XFILL_0__2238_ gnd vdd FILL
XFILL_1__2819_ gnd vdd FILL
X_2830_ \u_rf_if.read_buf1\[13] \u_rf_if.read_buf1\[14] \u_rf_if.stream_active_bF$buf0\ _1861_ vdd gnd MUX2X1
X_2410_ _1132_ _1133_ _1139_ vdd gnd NAND2X1
XFILL_0__3196_ gnd vdd FILL
X_3615_ \u_mem_serial.shift_reg\[0] _545_ vdd gnd INVX1
XFILL_1__2572_ gnd vdd FILL
XFILL_0__2887_ gnd vdd FILL
XFILL_0__2467_ gnd vdd FILL
XFILL_0__2047_ gnd vdd FILL
X_4153_ _1297_ \gen_int_sys_clk.clk_sys_r_bF$buf40\ \u_cpu.immdec.gen_immdec_w_eq_1.imm30_25\[2] vdd gnd DFFPOSX1
X_3844_ i_rst_n_bF$buf2 vdd _1127_ \gen_int_sys_clk.clk_sys_r_bF$buf31\ ibus_pending_rdt[31] vdd 
+ gnd
+ DFFSR
X_3424_ _401_ _400_ _661__bF$buf3 _1266_ vdd gnd MUX2X1
X_3004_ _12__bF$buf6 _85_ _86_ _87_ vdd gnd OAI21X1
XFILL_0__2696_ gnd vdd FILL
XFILL132150x82950 gnd vdd FILL
XFILL_0__1967_ gnd vdd FILL
X_3653_ \u_cpu.ctrl.o_ibus_adr\[14] _568_ vdd gnd INVX1
X_3233_ ibus_pending_rdt[14] _256_ vdd gnd INVX1
X_4018_ _1233_ \gen_int_sys_clk.clk_sys_r_bF$buf29\ \u_cpu.bufreg2.dlo\[15] vdd gnd DFFPOSX1
X_4191_ _1321_ \gen_int_sys_clk.clk_sys_r_bF$buf25\ \u_cpu.bufreg2.i_op_b_sel\ vdd gnd DFFPOSX1
X_2924_ _12__bF$buf4 _25_ _26_ _27_ vdd gnd OAI21X1
X_2504_ _1596_ _1597_ vdd gnd INVX2
X_3709_ \u_mem_serial.bit_count\[0] _666_ _601_ vdd gnd NAND2X1
XFILL131850x64950 gnd vdd FILL
X_3882_ _1365_ \gen_int_sys_clk.clk_sys_r_bF$buf5\ raddr[0] vdd gnd DFFPOSX1
X_3462_ \u_cpu.bufreg.c_r\ _419_ _1130_ _424_ vdd gnd NAND3X1
X_3042_ \u_rf_if.rreg1_latched\[1] \u_rf_if.rreg0_latched\[1] \u_rf_if.issue_sel\ _114_ vdd gnd MUX2X1
X_2733_ _1789_ _1774_ _1790_ vdd gnd NAND2X1
X_2313_ _739_ _752_ _738_ vdd gnd NOR2X1
XFILL_0__3099_ gnd vdd FILL
X_3938_ _1392_ \gen_int_sys_clk.clk_sys_r_bF$buf18\ \u_rf_if.read_buf0\[3] vdd gnd DFFPOSX1
X_3518_ _470_ _471_ _472_ vdd gnd NOR2X1
X_3691_ _1551_ _585_ _752_ _1183_ vdd gnd AOI21X1
X_3271_ \u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20\[0] _283_ vdd gnd INVX1
X_4056_ _1455_ i_clk_fast_bF$buf7 \u_rf_serial.last_req_key\[9] vdd gnd DFFPOSX1
X_2962_ \u_rf_if.read_buf0\[15] \u_rf_if.read_buf0\[16] \u_rf_if.stream_active_bF$buf3\ _55_ vdd gnd MUX2X1
X_2542_ \u_rf_serial.last_req_key\[8] _717_ _1633_ _1634_ vdd gnd OAI21X1
X_2122_ _914_ \u_mem_serial.shift_reg\[17] _1067__bF$buf3 _913_ vdd gnd MUX2X1
X_3747_ _334_ _968_ _615__bF$buf2 _1157_ vdd gnd MUX2X1
X_3327_ _740_ _329_ vdd gnd INVX1
X_3080_ _1580_ _1731_ _1744_ _141_ vdd gnd OAI21X1
XFILL_0__2599_ gnd vdd FILL
XFILL_0__2179_ gnd vdd FILL
XFILL_0__3120_ gnd vdd FILL
X_2771_ _1751_ _1752_ \u_rf_if.stream_active_bF$buf1\ _1817_ vdd gnd OAI21X1
X_2351_ \u_rf_if.o_waddr\[2] \u_rf_if.o_waddr\[1] _700_ vdd gnd NOR2X1
X_3976_ i_rst_n_bF$buf8 vdd _1158_ \gen_int_sys_clk.clk_sys_r_bF$buf15\ ibus_pending_rdt[11] vdd 
+ gnd
+ DFFSR
X_3556_ mem_dbus_ack_bF$buf1 _928_ _501_ vdd gnd NAND2X1
X_3136_ _184_ i_rst_n_bF$buf7 _1337_ vdd gnd AND2X2
XFILL_1__2093_ gnd vdd FILL
X_4094_ _1268_ \gen_int_sys_clk.clk_sys_r_bF$buf35\ \u_cpu.bufreg.data\[16] vdd gnd DFFPOSX1
X_2827_ \u_rf_if.read_buf1\[11] _1824__bF$buf6 _1859_ vdd gnd NAND2X1
X_2407_ _620_ _619_ _1130_ vdd gnd NOR2X1
XFILL_1__3510_ gnd vdd FILL
X_2580_ _1664_ _1600_ _1467_ vdd gnd NOR2X1
X_2160_ \u_mem_serial.shift_reg\[21] _880_ vdd gnd INVX1
X_3785_ \gen_int_sys_clk.clk_div\[3] _632_ vdd gnd INVX1
X_3365_ rreg0[4] _362_ vdd gnd INVX1
XFILL_0__2200_ gnd vdd FILL
XFILL_0__3405_ gnd vdd FILL
X_2636_ _1705_ _1706_ vdd gnd INVX1
X_2216_ \u_mem_serial.active_we_bF$buf2\ \u_cpu.bufreg2.dhi\[4] _830_ vdd gnd NAND2X1
X_3594_ \u_cpu.bufreg2.dlo\[6] _440__bF$buf3 _530_ vdd gnd NOR2X1
X_3174_ _210_ _208_ _212_ vdd gnd NAND2X1
XFILL_0__3634_ gnd vdd FILL
X_2865_ _1887_ i_rst_n_bF$buf9 _1405_ vdd gnd AND2X2
X_2445_ _1534_ _1538_ _1531_ _1539_ vdd gnd OAI21X1
X_2025_ \u_mem_serial.shift_reg\[6] _1000_ vdd gnd INVX1
XFILL_0__2905_ gnd vdd FILL
X_4188_ _1318_ \gen_int_sys_clk.clk_sys_r_bF$buf4\ \u_cpu.decode.opcode\[0] vdd gnd DFFPOSX1
X_2674_ _1735_ _1736_ _1739_ vdd gnd NAND2X1
X_2254_ _798_ _799_ _797_ vdd gnd NAND2X1
XFILL132450x90150 gnd vdd FILL
X_3879_ _1191_ \gen_int_sys_clk.clk_sys_r_bF$buf1\ \u_cpu.ctrl.o_ibus_adr\[2] vdd gnd DFFPOSX1
X_3459_ \u_cpu.decode.opcode\[0] _691_ _420_ _421_ vdd gnd OAI21X1
X_3039_ \u_rf_if.rreg1_latched\[0] \u_rf_if.rreg0_latched\[0] \u_rf_if.issue_sel\ _112_ vdd gnd MUX2X1
XFILL132450x57750 gnd vdd FILL
X_1945_ _1087_ _1086_ _1085_ _1073_ vdd gnd NAND3X1
XFILL_0__3252_ gnd vdd FILL
XFILL_1__3413_ gnd vdd FILL
X_2483_ ren_bF$buf0 _750_ _1577_ vdd gnd NOR2X1
X_2063_ \u_mem_serial.active_we_bF$buf1\ \u_cpu.bufreg2.dlo\[11] _966_ vdd gnd NAND2X1
X_3688_ _582_ _190__bF$buf4 _584_ _556__bF$buf2 _1185_ vdd 
+ gnd
+ OAI22X1
X_3268_ \u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20\[1] _281_ vdd gnd INVX1
XFILL_0__2103_ gnd vdd FILL
XFILL_0__3728_ gnd vdd FILL
XFILL_0__3308_ gnd vdd FILL
XFILL_0__3481_ gnd vdd FILL
XFILL_0__3061_ gnd vdd FILL
X_2959_ \u_rf_if.read_buf0\[13] _12__bF$buf3 _53_ vdd gnd NAND2X1
X_2539_ _1630_ _1629_ _1631_ vdd gnd NOR2X1
X_2119_ _917_ _919_ _1058__bF$buf1 _916_ vdd gnd OAI21X1
X_3900_ _1374_ \gen_int_sys_clk.clk_sys_r_bF$buf44\ \u_rf_if.read_buf0\[21] vdd gnd DFFPOSX1
XFILL_1__3642_ gnd vdd FILL
X_2292_ \u_cpu.decode.opcode\[0] _1118_ _759_ vdd gnd NOR2X1
X_3497_ mem_dbus_ack_bF$buf3 _453_ _449_ _454_ vdd gnd OAI21X1
X_3077_ _1730_ \u_rf_if.o_waddr\[1] _1727_ _139_ vdd gnd AOI21X1
XFILL_0__2332_ gnd vdd FILL
XFILL_0__3537_ gnd vdd FILL
X_1983_ _1038_ _1062__bF$buf4 _1037_ vdd gnd NOR2X1
XFILL_0__3290_ gnd vdd FILL
X_2768_ \u_rf_if.stream_cnt\[0] \u_rf_if.stream_active_bF$buf1\ i_rst_n_bF$buf5 _1815_ vdd gnd OAI21X1
X_2348_ _705_ _706_ _704_ _703_ vdd gnd NAND3X1
XFILL_0__2808_ gnd vdd FILL
XFILL_0__2561_ gnd vdd FILL
XFILL_0__2141_ gnd vdd FILL
XFILL_0__3766_ gnd vdd FILL
XFILL132750x10950 gnd vdd FILL
XFILL_1__2722_ gnd vdd FILL
X_2997_ _81_ i_rst_n_bF$buf4 _1373_ vdd gnd AND2X2
X_2577_ _1594_ _1645_ _1662_ _1663_ vdd gnd OAI21X1
X_2157_ _1058__bF$buf2 _883_ _884_ _882_ vdd gnd OAI21X1
XFILL_0__2790_ gnd vdd FILL
XFILL_0__2370_ gnd vdd FILL
XFILL_1__2951_ gnd vdd FILL
X_2386_ _1119_ \u_cpu.decode.opcode\[2] _753_ _665_ vdd gnd OAI21X1
XFILL_0__2006_ gnd vdd FILL
X_4112_ _1277_ \gen_int_sys_clk.clk_sys_r_bF$buf17\ \u_cpu.bufreg.data\[25] vdd gnd DFFPOSX1
X_3803_ \u_mem_serial.state\[1] \u_mem_serial.state\[0] _1111_ vdd gnd NOR2X1
XFILL_1__3545_ gnd vdd FILL
X_2195_ _1126__bF$buf4 _849_ _1484_ vdd gnd NOR2X1
XFILL_0__2235_ gnd vdd FILL
XFILL_0__3193_ gnd vdd FILL
X_3612_ mem_dbus_ack_bF$buf5 _1041_ _543_ vdd gnd NAND2X1
XFILL_1__3774_ gnd vdd FILL
XFILL_0__2464_ gnd vdd FILL
XFILL_0__2044_ gnd vdd FILL
X_4150_ _1504_ i_clk_fast_bF$buf1 \u_mem_serial.shift_reg\[5] vdd gnd DFFPOSX1
XFILL_0__3669_ gnd vdd FILL
XFILL_1__2625_ gnd vdd FILL
X_3841_ _1344_ \gen_int_sys_clk.clk_sys_r_bF$buf27\ \u_rf_if.issue_sel\ vdd gnd DFFPOSX1
X_3421_ \u_cpu.bufreg.data\[15] _400_ vdd gnd INVX1
X_3001_ _84_ i_rst_n_bF$buf0 _1372_ vdd gnd AND2X2
XFILL_0__2693_ gnd vdd FILL
XFILL_0__2273_ gnd vdd FILL
XFILL_1__2854_ gnd vdd FILL
X_2289_ _766_ \u_cpu.bufreg.i_right_shift_op\ _763_ _762_ vdd gnd AOI21X1
X_3650_ _566_ _190__bF$buf3 _565_ _556__bF$buf4 _1205_ vdd 
+ gnd
+ OAI22X1
X_3230_ ibus_pending_ack_bF$buf5 _253_ _254_ vdd gnd NAND2X1
XFILL_0__2749_ gnd vdd FILL
X_4015_ _1431_ \gen_int_sys_clk.clk_sys_r_bF$buf3\ \u_rf_if.rcnt\[0] vdd gnd DFFPOSX1
XFILL_0__2082_ gnd vdd FILL
X_2921_ _24_ i_rst_n_bF$buf8 _1392_ vdd gnd AND2X2
X_2501_ _1592_ _1593_ _1594_ vdd gnd NAND2X1
X_3706_ _596_ _597_ _598_ vdd gnd NAND2X1
X_2098_ _936_ _1040__bF$buf3 _935_ vdd gnd NOR2X1
XFILL_0__2978_ gnd vdd FILL
XFILL_1__1934_ gnd vdd FILL
X_2730_ _1784_ _1785_ _1786_ _1787_ vdd gnd NAND3X1
X_2310_ \u_cpu.decode.opcode\[0] _742_ _741_ vdd gnd NOR2X1
XFILL_0__3096_ gnd vdd FILL
X_3935_ vdd i_rst_n_bF$buf2 _1148_ \gen_int_sys_clk.clk_sys_r_bF$buf37\ ibus_pending_rdt[1] vdd 
+ gnd
+ DFFSR
X_3515_ \u_cpu.bufreg.i_shamt\[0] _469_ vdd gnd INVX1
X_4053_ _1248_ \gen_int_sys_clk.clk_sys_r_bF$buf12\ \u_cpu.bufreg.data\[31] vdd gnd DFFPOSX1
XFILL_1__2528_ gnd vdd FILL
X_3744_ _223_ _944_ _615__bF$buf0 _1160_ vdd gnd MUX2X1
X_3324_ _326_ _323_ _180_ _327_ _1292_ vdd 
+ gnd
+ AOI22X1
X_4109_ _1484_ i_clk_fast_bF$buf5 \u_mem_serial.shift_reg\[25] vdd gnd DFFPOSX1
XFILL_1__3066_ gnd vdd FILL
XFILL_0__2596_ gnd vdd FILL
XFILL_0__2176_ gnd vdd FILL
XFILL_1__2757_ gnd vdd FILL
X_3973_ _1409_ \gen_int_sys_clk.clk_sys_r_bF$buf30\ \u_rf_if.read_buf1\[16] vdd gnd DFFPOSX1
X_3553_ mem_dbus_ack_bF$buf2 \u_cpu.bufreg2.dlo\[17] _498_ _499_ vdd gnd OAI21X1
X_3133_ _181_ _872_ ibus_pending_ack_bF$buf1 _182_ vdd gnd MUX2X1
XFILL_1__3295_ gnd vdd FILL
X_4091_ _1472_ i_clk_fast_bF$buf7 \u_rf_serial.tx_state\[4] vdd gnd DFFPOSX1
X_2824_ _1824__bF$buf6 _1855_ _1856_ _1857_ vdd gnd OAI21X1
X_2404_ _659_ _655_ _622_ _621_ vdd gnd NAND3X1
X_3609_ mem_dbus_ack_bF$buf0 \u_cpu.bufreg2.dlo\[3] _540_ _541_ vdd gnd OAI21X1
XFILL_1__2986_ gnd vdd FILL
X_3782_ \gen_int_sys_clk.clk_div\[1] \gen_int_sys_clk.clk_div\[0] _631_ vdd gnd NOR2X1
X_3362_ ibus_pending_ack_bF$buf2 _359_ _360_ vdd gnd NAND2X1
X_4147_ _1294_ \gen_int_sys_clk.clk_sys_r_bF$buf26\ rreg1[3] vdd gnd DFFPOSX1
XFILL_0__3402_ gnd vdd FILL
X_2633_ _1701_ _1702_ _1703_ vdd gnd NOR2X1
X_2213_ _1126__bF$buf4 _833_ _1482_ vdd gnd NOR2X1
X_3838_ i_rst_n_bF$buf6 vdd _1175_ \gen_int_sys_clk.clk_sys_r_bF$buf11\ ibus_pending_rdt[28] vdd 
+ gnd
+ DFFSR
X_3418_ _398_ _397_ _661__bF$buf3 _1269_ vdd gnd MUX2X1
X_3591_ _440__bF$buf3 _526_ _527_ _1225_ vdd gnd AOI21X1
X_3171_ \u_cpu.bufreg.i_right_shift_op\ \u_cpu.bne_or_bge\ \u_cpu.decode.co_mem_word\ _209_ vdd gnd OAI21X1
XFILL_0__3631_ gnd vdd FILL
XFILL_0__3211_ gnd vdd FILL
XFILL131850x50550 gnd vdd FILL
X_2862_ \u_rf_if.read_buf1\[21] \u_rf_if.read_buf1\[22] \u_rf_if.stream_active_bF$buf7\ _1885_ vdd gnd MUX2X1
X_2442_ \u_cpu.bufreg2.dlo\[0] _666_ _1535_ _1536_ vdd gnd NAND3X1
X_2022_ _1058__bF$buf2 _1003_ _1004_ _1002_ vdd gnd OAI21X1
X_3647_ \u_cpu.ctrl.o_ibus_adr\[17] _565_ vdd gnd INVX1
X_3227_ \u_mem_serial.state\[0] _247_ i_rst_n_bF$buf2 _252_ vdd gnd OAI21X1
XFILL_0__2079_ gnd vdd FILL
X_4185_ _1315_ i_clk_fast_bF$buf6 _1907_ vdd gnd DFFPOSX1
XFILL_0__3440_ gnd vdd FILL
XFILL_0__3020_ gnd vdd FILL
X_2918_ \u_rf_if.read_buf0\[4] \u_rf_if.read_buf0\[5] \u_rf_if.stream_active_bF$buf4\ _22_ vdd gnd MUX2X1
X_2671_ \u_rf_if.rcnt\[1] _1736_ vdd gnd INVX1
X_2251_ _806_ _803_ _801_ _800_ vdd gnd OAI21X1
X_3876_ _1362_ \gen_int_sys_clk.clk_sys_r_bF$buf5\ raddr[3] vdd gnd DFFPOSX1
X_3456_ _413_ _786_ _418_ vdd gnd NOR2X1
X_3036_ _110_ _109_ _1126__bF$buf6 _1363_ vdd gnd AOI21X1
XFILL_0__2711_ gnd vdd FILL
XFILL_1__3198_ gnd vdd FILL
X_1942_ _1079_ _1078_ _1076_ _1075_ vdd gnd OAI21X1
X_2727_ raddr[8] _1784_ vdd gnd INVX1
X_2307_ \u_cpu.decode.opcode\[0] _744_ vdd gnd INVX2
XFILL_1__2889_ gnd vdd FILL
XFILL_1__2049_ gnd vdd FILL
X_2480_ ren_bF$buf1 _748_ _1574_ vdd gnd NOR2X1
X_2060_ _1126__bF$buf3 _969_ _1499_ vdd gnd NOR2X1
X_3685_ _583_ _190__bF$buf4 _189_ _556__bF$buf2 _1187_ vdd 
+ gnd
+ OAI22X1
X_3265_ \u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20\[2] _279_ vdd gnd INVX1
XFILL_0__2940_ gnd vdd FILL
XFILL_0__2520_ gnd vdd FILL
XFILL_0__3305_ gnd vdd FILL
X_2956_ _12__bF$buf0 _49_ _50_ _51_ vdd gnd OAI21X1
X_2536_ \u_rf_serial.last_req_key\[1] _1566_ _1628_ vdd gnd NAND2X1
X_2116_ _920_ _1040__bF$buf4 _919_ vdd gnd NOR2X1
X_3494_ _771_ _770_ _451_ vdd gnd NOR2X1
X_3074_ _756_ _137_ _1126__bF$buf0 _1352_ vdd gnd AOI21X1
XFILL_0__3534_ gnd vdd FILL
XFILL_0__3114_ gnd vdd FILL
XFILL_1__1969_ gnd vdd FILL
X_1980_ _1062__bF$buf2 _1040_ vdd gnd INVX8
X_2765_ \u_rf_if.rcnt\[2] _1737_ _1813_ vdd gnd NAND2X1
X_2345_ \u_cpu.bufreg.i_right_shift_op\ _788_ _706_ vdd gnd NOR2X1
X_4088_ _1266_ \gen_int_sys_clk.clk_sys_r_bF$buf35\ \u_cpu.bufreg.data\[14] vdd gnd DFFPOSX1
XFILL_0__3763_ gnd vdd FILL
XFILL_0__3343_ gnd vdd FILL
XCLKBUF1_insert190 \gen_int_sys_clk.clk_sys_r\ \gen_int_sys_clk.clk_sys_r_hier0_bF$buf1\ vdd gnd CLKBUF1
XCLKBUF1_insert191 \gen_int_sys_clk.clk_sys_r\ \gen_int_sys_clk.clk_sys_r_hier0_bF$buf0\ vdd gnd CLKBUF1
XFILL131850x100950 gnd vdd FILL
X_2994_ \u_rf_if.read_buf0\[23] \u_rf_if.read_buf0\[24] \u_rf_if.stream_active_bF$buf0\ _79_ vdd gnd MUX2X1
X_2574_ i_rst_n_bF$buf3 _1660_ _1658_ _1661_ vdd gnd NAND3X1
X_2154_ _886_ _1062__bF$buf0 _885_ vdd gnd NOR2X1
X_3779_ _628_ _629_ vdd gnd INVX1
X_3359_ _356_ _357_ _332_ _750_ _1287_ vdd 
+ gnd
+ AOI22X1
XFILL_0__2614_ gnd vdd FILL
XCLKBUF1_insert62 i_clk_fast i_clk_fast_bF$buf7 vdd gnd CLKBUF1
XCLKBUF1_insert63 i_clk_fast i_clk_fast_bF$buf6 vdd gnd CLKBUF1
XCLKBUF1_insert64 i_clk_fast i_clk_fast_bF$buf5 vdd gnd CLKBUF1
XCLKBUF1_insert65 i_clk_fast i_clk_fast_bF$buf4 vdd gnd CLKBUF1
XCLKBUF1_insert66 i_clk_fast i_clk_fast_bF$buf3 vdd gnd CLKBUF1
XCLKBUF1_insert67 i_clk_fast i_clk_fast_bF$buf2 vdd gnd CLKBUF1
XCLKBUF1_insert68 i_clk_fast i_clk_fast_bF$buf1 vdd gnd CLKBUF1
XCLKBUF1_insert69 i_clk_fast i_clk_fast_bF$buf0 vdd gnd CLKBUF1
XFILL_0__3572_ gnd vdd FILL
XFILL_0__3152_ gnd vdd FILL
X_2383_ _672_ _669_ _693_ _668_ vdd gnd AOI21X1
X_3588_ mem_dbus_ack_bF$buf6 _992_ _525_ vdd gnd NAND2X1
X_3168_ \u_cpu.alu.cmp_r\ _1524_ _205_ _206_ vdd gnd OAI21X1
XFILL_0__2843_ gnd vdd FILL
XFILL_0__2423_ gnd vdd FILL
XFILL_0__3208_ gnd vdd FILL
XFILL_0__3381_ gnd vdd FILL
X_2859_ \u_rf_if.read_buf1\[19] _1824__bF$buf3 _1883_ vdd gnd NAND2X1
X_2439_ \u_cpu.bufreg2.dlo\[16] \u_cpu.state.i_ctrl_misalign\ _666_ _1533_ vdd gnd NAND3X1
X_2019_ _1006_ _1062__bF$buf1 _1005_ vdd gnd NOR2X1
X_3800_ _645_ _646_ vdd gnd INVX1
XFILL132450x43350 gnd vdd FILL
X_2192_ \u_cpu.bufreg.data\[25] \u_cpu.ctrl.o_ibus_adr\[25] _1052__bF$buf1 _851_ vdd gnd MUX2X1
X_3397_ \u_cpu.bufreg.data\[27] _388_ vdd gnd INVX1
XFILL_0__2652_ gnd vdd FILL
XFILL_0__3437_ gnd vdd FILL
XFILL_0__3017_ gnd vdd FILL
X_2668_ _1583_ _1733_ _1734_ vdd gnd NAND2X1
X_2248_ \u_rf_serial.tx_state\[2] _804_ _803_ vdd gnd NOR2X1
XFILL_0__1923_ gnd vdd FILL
XFILL_0__2881_ gnd vdd FILL
X_1939_ _1081_ _1078_ vdd gnd INVX1
XFILL_0__3666_ gnd vdd FILL
XFILL_0__3246_ gnd vdd FILL
X_2897_ _6_ _5_ _1126__bF$buf6 _1398_ vdd gnd AOI21X1
X_2477_ _719_ _1570_ _796_ _1571_ vdd gnd OAI21X1
X_2057_ \u_cpu.bufreg.data\[10] \u_cpu.ctrl.o_ibus_adr\[10] _1052__bF$buf4 _971_ vdd gnd MUX2X1
XFILL_0__2517_ gnd vdd FILL
XFILL_0__3475_ gnd vdd FILL
XFILL_0__3055_ gnd vdd FILL
XFILL132750x86550 gnd vdd FILL
X_2286_ _783_ _786_ _765_ vdd gnd NAND2X1
XFILL_0__2746_ gnd vdd FILL
XFILL_0__2326_ gnd vdd FILL
X_4012_ _1232_ \gen_int_sys_clk.clk_sys_r_bF$buf29\ \u_cpu.bufreg2.dlo\[14] vdd gnd DFFPOSX1
XFILL_1__2907_ gnd vdd FILL
X_1977_ _1043_ \u_mem_serial.shift_reg\[1] _1067__bF$buf2 _1042_ vdd gnd MUX2X1
XFILL_0__3284_ gnd vdd FILL
X_3703_ _594_ _595_ vdd gnd INVX1
X_2095_ _938_ \u_mem_serial.shift_reg\[14] _1067__bF$buf3 _937_ vdd gnd MUX2X1
XFILL_0__2975_ gnd vdd FILL
XFILL_0__2555_ gnd vdd FILL
XFILL_0__2135_ gnd vdd FILL
X_3932_ _1389_ \gen_int_sys_clk.clk_sys_r_bF$buf28\ \u_rf_if.read_buf0\[6] vdd gnd DFFPOSX1
X_3512_ _761_ \u_mem_serial.shift_reg\[26] _444_ _467_ vdd gnd OAI21X1
XFILL_0__2784_ gnd vdd FILL
XFILL_0__2364_ gnd vdd FILL
X_4050_ _1452_ \gen_int_sys_clk.clk_sys_r_bF$buf38\ \u_rf_if.issue_idx\[5] vdd gnd DFFPOSX1
XFILL_0__3569_ gnd vdd FILL
XFILL_0__3149_ gnd vdd FILL
X_3741_ _147_ _920_ _615__bF$buf3 _1163_ vdd gnd MUX2X1
X_3321_ _324_ _323_ _183_ _325_ _1293_ vdd 
+ gnd
+ AOI22X1
X_4106_ _1274_ \gen_int_sys_clk.clk_sys_r_bF$buf1\ \u_cpu.bufreg.data\[22] vdd gnd DFFPOSX1
XFILL_0__3798_ gnd vdd FILL
XFILL_0__3378_ gnd vdd FILL
X_2189_ \u_mem_serial.active_we_bF$buf2\ \u_cpu.bufreg.i_shamt\[1] _854_ vdd gnd NAND2X1
X_3970_ _1213_ \gen_int_sys_clk.clk_sys_r_bF$buf41\ \u_cpu.ctrl.o_ibus_adr\[24] vdd gnd DFFPOSX1
X_3550_ \u_cpu.bufreg2.dlo\[17] _440__bF$buf3 _497_ vdd gnd NOR2X1
X_3130_ _179_ _1693__bF$buf4 _180_ vdd gnd NAND2X1
XFILL_0__2649_ gnd vdd FILL
XFILL_0__2229_ gnd vdd FILL
X_2821_ _1854_ i_rst_n_bF$buf9 _1416_ vdd gnd AND2X2
X_2401_ _649_ _625_ _624_ vdd gnd NAND2X1
XFILL_0__3187_ gnd vdd FILL
X_3606_ \u_cpu.bufreg2.dlo\[3] _440__bF$buf4 _539_ vdd gnd NOR2X1
XFILL132750x18150 gnd vdd FILL
XFILL_0__2878_ gnd vdd FILL
XFILL_0__2458_ gnd vdd FILL
XFILL_0__2038_ gnd vdd FILL
X_4144_ _1501_ i_clk_fast_bF$buf1 \u_mem_serial.shift_reg\[8] vdd gnd DFFPOSX1
X_2630_ _1698_ _1699_ _1700_ vdd gnd NOR2X1
X_2210_ \u_cpu.bufreg.data\[27] \u_cpu.ctrl.o_ibus_adr\[27] _1052__bF$buf2 _835_ vdd gnd MUX2X1
X_3835_ _1341_ \gen_int_sys_clk.clk_sys_r_bF$buf27\ \u_rf_if.issue_chunk\[2] vdd gnd DFFPOSX1
X_3415_ \u_cpu.bufreg.data\[18] _397_ vdd gnd INVX1
XFILL_0__2687_ gnd vdd FILL
XFILL_0__2267_ gnd vdd FILL
XFILL_0__1958_ gnd vdd FILL
X_3644_ _563_ _190__bF$buf2 _562_ _556__bF$buf4 _1208_ vdd 
+ gnd
+ OAI22X1
X_3224_ _1101_ _248_ _249_ vdd gnd NAND2X1
XFILL_1__2181_ gnd vdd FILL
X_4009_ _1427_ \gen_int_sys_clk.clk_sys_r_bF$buf31\ \u_rf_if.stream_cnt\[2] vdd gnd DFFPOSX1
XFILL_0__2496_ gnd vdd FILL
X_4182_ i_rst_n_bF$buf1 vdd _1161_ \gen_int_sys_clk.clk_sys_r_bF$buf33\ ibus_pending_rdt[14] vdd 
+ gnd
+ DFFSR
X_2915_ \u_rf_if.read_buf0\[2] _12__bF$buf4 _20_ vdd gnd NAND2X1
X_3873_ \u_cpu.state.init_done\ _1121_ _1120_ vdd gnd NAND2X1
X_3453_ _387_ _416_ _661__bF$buf1 _1252_ vdd gnd MUX2X1
X_3033_ _1698_ _1704__bF$buf0 _108_ _1364_ vdd gnd AOI21X1
X_2724_ \u_rf_if.issue_sel\ \u_rf_if.rreg1_latched\[4] _1781_ vdd gnd NOR2X1
X_2304_ \u_cpu.immdec.gen_immdec_w_eq_1.imm11_7\[2] _747_ vdd gnd INVX1
X_3929_ _1388_ \gen_int_sys_clk.clk_sys_r_bF$buf28\ \u_rf_if.read_buf0\[7] vdd gnd DFFPOSX1
X_3509_ _457_ _463_ _781_ _464_ vdd gnd OAI21X1
XFILL_0__1996_ gnd vdd FILL
X_3682_ \u_cpu.ctrl.o_ibus_adr\[28] _582_ vdd gnd INVX1
X_3262_ \u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20\[3] _277_ vdd gnd INVX1
X_4047_ _1245_ \gen_int_sys_clk.clk_sys_r_bF$buf14\ \u_cpu.bufreg2.dhi\[4] vdd gnd DFFPOSX1
XFILL_0__3722_ gnd vdd FILL
X_2953_ _48_ i_rst_n_bF$buf5 _1384_ vdd gnd AND2X2
X_2533_ \u_rf_serial.last_req_key\[9] _1625_ vdd gnd INVX1
X_2113_ _922_ \u_mem_serial.shift_reg\[16] _1067__bF$buf3 _921_ vdd gnd MUX2X1
X_3738_ _1724_ _896_ _615__bF$buf3 _1166_ vdd gnd MUX2X1
X_3318_ _319_ _323_ _188_ _322_ _1294_ vdd 
+ gnd
+ AOI22X1
X_3491_ _777_ _444_ _447_ _448_ _1246_ vdd 
+ gnd
+ OAI22X1
X_3071_ _135_ _756_ _1126__bF$buf7 _1353_ vdd gnd AOI21X1
X_2762_ _1735_ _1810_ _1811_ vdd gnd NAND2X1
X_2342_ _711_ _710_ _715_ _709_ vdd gnd OAI21X1
X_3967_ _1406_ \gen_int_sys_clk.clk_sys_r_bF$buf42\ \u_rf_if.read_buf1\[19] vdd gnd DFFPOSX1
X_3547_ _440__bF$buf4 _493_ _494_ _1236_ vdd gnd AOI21X1
X_3127_ \u_rf_if.rreg1_latched\[1] _733__bF$buf1 _177_ vdd gnd NAND2X1
XFILL_1__2084_ gnd vdd FILL
XFILL_0__2399_ gnd vdd FILL
X_4085_ _1469_ i_clk_fast_bF$buf3 \u_rf_serial.shift_rx\[0] vdd gnd DFFPOSX1
XFILL132150x21750 gnd vdd FILL
X_2818_ \u_rf_if.read_buf1\[10] \u_rf_if.read_buf1\[11] \u_rf_if.stream_active_bF$buf0\ _1852_ vdd gnd MUX2X1
XCLKBUF1_insert160 \gen_int_sys_clk.clk_sys_r_hier0_bF$buf3\ \gen_int_sys_clk.clk_sys_r_bF$buf11\ vdd gnd CLKBUF1
XCLKBUF1_insert161 \gen_int_sys_clk.clk_sys_r_hier0_bF$buf0\ \gen_int_sys_clk.clk_sys_r_bF$buf10\ vdd gnd CLKBUF1
XCLKBUF1_insert162 \gen_int_sys_clk.clk_sys_r_hier0_bF$buf2\ \gen_int_sys_clk.clk_sys_r_bF$buf9\ vdd gnd CLKBUF1
XCLKBUF1_insert163 \gen_int_sys_clk.clk_sys_r_hier0_bF$buf4\ \gen_int_sys_clk.clk_sys_r_bF$buf8\ vdd gnd CLKBUF1
XCLKBUF1_insert164 \gen_int_sys_clk.clk_sys_r_hier0_bF$buf1\ \gen_int_sys_clk.clk_sys_r_bF$buf7\ vdd gnd CLKBUF1
XCLKBUF1_insert165 \gen_int_sys_clk.clk_sys_r_hier0_bF$buf5\ \gen_int_sys_clk.clk_sys_r_bF$buf6\ vdd gnd CLKBUF1
XCLKBUF1_insert166 \gen_int_sys_clk.clk_sys_r_hier0_bF$buf4\ \gen_int_sys_clk.clk_sys_r_bF$buf5\ vdd gnd CLKBUF1
XCLKBUF1_insert167 \gen_int_sys_clk.clk_sys_r_hier0_bF$buf0\ \gen_int_sys_clk.clk_sys_r_bF$buf4\ vdd gnd CLKBUF1
XCLKBUF1_insert168 \gen_int_sys_clk.clk_sys_r_hier0_bF$buf0\ \gen_int_sys_clk.clk_sys_r_bF$buf3\ vdd gnd CLKBUF1
XCLKBUF1_insert169 \gen_int_sys_clk.clk_sys_r_hier0_bF$buf0\ \gen_int_sys_clk.clk_sys_r_bF$buf2\ vdd gnd CLKBUF1
XFILL_1__3501_ gnd vdd FILL
X_2991_ \u_rf_if.read_buf0\[21] _12__bF$buf2 _77_ vdd gnd NAND2X1
X_2571_ _1649_ _1657_ _1658_ vdd gnd NAND2X1
X_2151_ \u_mem_serial.shift_reg\[20] _888_ vdd gnd INVX1
X_3776_ _1111_ _1110_ vdd gnd INVX1
X_3356_ _354_ _992_ ibus_pending_ack_bF$buf1 _355_ vdd gnd MUX2X1
XFILL_0__3816_ gnd vdd FILL
X_2627_ \u_rf_if.issue_idx\[5] _1697_ vdd gnd INVX1
X_2207_ \u_mem_serial.active_we_bF$buf2\ \u_cpu.bufreg2.dhi\[3] _838_ vdd gnd NAND2X1
XFILL_1__3730_ gnd vdd FILL
X_2380_ \u_cpu.bufreg2.i_bytecnt\[0] _671_ vdd gnd INVX1
X_3585_ mem_dbus_ack_bF$buf6 \u_cpu.bufreg2.dlo\[9] _522_ _523_ vdd gnd OAI21X1
X_3165_ i_rst_n_bF$buf10 \u_cpu.state.cnt_r\[2] _1327_ vdd gnd AND2X2
XFILL_0__2420_ gnd vdd FILL
XFILL_0__2000_ gnd vdd FILL
XFILL_0__3625_ gnd vdd FILL
X_2856_ _1824__bF$buf1 _1879_ _1880_ _1881_ vdd gnd OAI21X1
X_2436_ _785_ \u_cpu.bne_or_bge\ _1529_ _1530_ vdd gnd AOI21X1
X_2016_ \u_mem_serial.shift_reg\[5] _1008_ vdd gnd INVX1
X_3394_ \u_cpu.bufreg.data\[28] _386_ vdd gnd INVX1
X_4179_ _1312_ \gen_int_sys_clk.clk_sys_r_bF$buf4\ \u_cpu.branch_op\ vdd gnd DFFPOSX1
XFILL132150x118950 gnd vdd FILL
XFILL132450x64950 gnd vdd FILL
XFILL_1__2810_ gnd vdd FILL
X_2665_ \u_rf_if.o_waddr\[1] _1730_ _1731_ vdd gnd NAND2X1
X_2245_ \u_rf_serial.tx_state\[3] _806_ vdd gnd INVX1
XFILL_0__2705_ gnd vdd FILL
X_1936_ _1083_ _1098_ \u_mem_serial.bit_count\[4] _1080_ vdd gnd OAI21X1
X_2894_ \u_rf_if.stream_active_bF$buf2\ _2_ _3_ _4_ vdd gnd OAI21X1
X_2474_ \u_rf_if.o_waddr\[0] _1568_ vdd gnd INVX1
X_2054_ \u_mem_serial.active_we_bF$buf0\ \u_cpu.bufreg2.dlo\[10] _974_ vdd gnd NAND2X1
X_3679_ \u_cpu.ctrl.o_ibus_adr\[1] _581_ vdd gnd INVX1
X_3259_ \u_cpu.csr_imm\ _275_ vdd gnd INVX1
X_4200_ _1328_ \gen_int_sys_clk.clk_sys_r_bF$buf12\ \u_cpu.bufreg2.i_bytecnt\[1] vdd gnd DFFPOSX1
XFILL_0__3719_ gnd vdd FILL
XFILL_0__3052_ gnd vdd FILL
X_2283_ _772_ _769_ _768_ vdd gnd NAND2X1
X_3488_ _778_ _445_ _626_ _446_ vdd gnd OAI21X1
X_3068_ \u_rf_if.write_wait\[3] _133_ vdd gnd INVX1
XFILL_0__2323_ gnd vdd FILL
XFILL_0__3528_ gnd vdd FILL
XFILL_0__3108_ gnd vdd FILL
X_1974_ \u_mem_serial.shift_reg\[0] _1046_ _1062__bF$buf4 _1045_ vdd gnd MUX2X1
XFILL_0__3281_ gnd vdd FILL
X_2759_ _1126__bF$buf6 _1690_ _1809_ _1433_ vdd gnd OAI21X1
X_2339_ _714_ _713_ _712_ vdd gnd NOR2X1
X_3700_ \u_mem_serial.bit_count\[6] \u_mem_serial.bit_count\[2] _592_ vdd gnd NAND2X1
XFILL_1__3022_ gnd vdd FILL
XFILL132750x150 gnd vdd FILL
X_2092_ _941_ _943_ _1058__bF$buf1 _940_ vdd gnd OAI21X1
X_3297_ \u_cpu.immdec.gen_immdec_w_eq_1.imm30_25\[2] _288_ _306_ vdd gnd NOR2X1
XFILL_0__2552_ gnd vdd FILL
XFILL_0__2132_ gnd vdd FILL
XFILL_0__3757_ gnd vdd FILL
XFILL_0__3337_ gnd vdd FILL
XFILL_1__2713_ gnd vdd FILL
XFILL_0__3090_ gnd vdd FILL
X_2988_ _12__bF$buf1 _73_ _74_ _75_ vdd gnd OAI21X1
X_2568_ _1655_ _1654_ _1910_ _1656_ vdd gnd OAI21X1
X_2148_ _1058__bF$buf1 _891_ _892_ _890_ vdd gnd OAI21X1
XFILL_0__2608_ gnd vdd FILL
XFILL_0__2781_ gnd vdd FILL
XFILL_0__2361_ gnd vdd FILL
XFILL_1__2942_ gnd vdd FILL
X_2797_ _1836_ i_rst_n_bF$buf7 _1422_ vdd gnd AND2X2
X_2377_ _687_ _780_ _674_ vdd gnd OR2X2
XFILL_0__2837_ gnd vdd FILL
X_4103_ _1481_ i_clk_fast_bF$buf5 \u_mem_serial.shift_reg\[28] vdd gnd DFFPOSX1
XFILL_0__2590_ gnd vdd FILL
XFILL_0__2170_ gnd vdd FILL
X_2186_ _1126__bF$buf2 _857_ _1485_ vdd gnd NOR2X1
XFILL_0__3184_ gnd vdd FILL
X_3603_ _440__bF$buf1 _535_ _536_ _1222_ vdd gnd AOI21X1
XFILL_0__2035_ gnd vdd FILL
X_4141_ _1291_ \gen_int_sys_clk.clk_sys_r_bF$buf25\ rreg1[0] vdd gnd DFFPOSX1
XFILL132750x72150 gnd vdd FILL
XFILL_1__2616_ gnd vdd FILL
XFILL132750x39750 gnd vdd FILL
X_3832_ i_rst_n_bF$buf6 vdd _1172_ \gen_int_sys_clk.clk_sys_r_bF$buf11\ ibus_pending_rdt[25] vdd 
+ gnd
+ DFFSR
X_3412_ _395_ _394_ _661__bF$buf2 _1272_ vdd gnd MUX2X1
XFILL_1__3154_ gnd vdd FILL
XFILL_0__2264_ gnd vdd FILL
XFILL_0__3469_ gnd vdd FILL
XFILL_1__2845_ gnd vdd FILL
X_3641_ \u_cpu.ctrl.o_ibus_adr\[20] _562_ vdd gnd INVX1
X_3221_ _246_ _1107_ _1104_ _1052__bF$buf2 _1314_ vdd 
+ gnd
+ AOI22X1
X_4006_ _1229_ \gen_int_sys_clk.clk_sys_r_bF$buf19\ \u_cpu.bufreg2.dlo\[11] vdd gnd DFFPOSX1
XFILL_1__3383_ gnd vdd FILL
XFILL_0__2493_ gnd vdd FILL
XFILL_0__2073_ gnd vdd FILL
X_2912_ _12__bF$buf5 _16_ _17_ _18_ vdd gnd OAI21X1
XFILL_0__3698_ gnd vdd FILL
X_2089_ _944_ _1040__bF$buf4 _943_ vdd gnd NOR2X1
X_3870_ _1359_ \gen_int_sys_clk.clk_sys_r_bF$buf16\ raddr[6] vdd gnd DFFPOSX1
X_3450_ _661__bF$buf0 _414_ _753_ _415_ vdd gnd MUX2X1
X_3030_ \u_rf_if.issue_chunk\[0] _1704__bF$buf1 _107_ vdd gnd NAND2X1
XFILL_0__2969_ gnd vdd FILL
XFILL_1__1925_ gnd vdd FILL
X_2721_ _1776_ _1777_ _1778_ vdd gnd AND2X2
X_2301_ \u_cpu.immdec.gen_immdec_w_eq_1.imm11_7\[0] _750_ vdd gnd INVX1
X_3926_ _1126__bF$buf0 _1125_ _1124_ vdd gnd NOR2X1
X_3506_ _775_ _461_ _441_ _1244_ vdd gnd MUX2X1
XFILL_0__1993_ gnd vdd FILL
X_4044_ _1449_ \gen_int_sys_clk.clk_sys_r_bF$buf8\ \u_rf_if.rreg0_latched\[4] vdd gnd DFFPOSX1
X_2950_ \u_rf_if.read_buf0\[12] \u_rf_if.read_buf0\[13] \u_rf_if.stream_active_bF$buf1\ _46_ vdd gnd MUX2X1
X_2530_ _714_ _713_ \u_rf_serial.last_req_key\[10] _1622_ vdd gnd OAI21X1
X_2110_ _925_ _927_ _1058__bF$buf2 _924_ vdd gnd OAI21X1
X_3735_ _181_ _872_ _615__bF$buf1 _1169_ vdd gnd MUX2X1
X_3315_ _320_ _754_ _321_ vdd gnd NAND2X1
XFILL_1__3057_ gnd vdd FILL
XFILL_0__2167_ gnd vdd FILL
X_3964_ i_rst_n_bF$buf1 vdd _1155_ \gen_int_sys_clk.clk_sys_r_bF$buf31\ ibus_pending_rdt[8] vdd 
+ gnd
+ DFFSR
X_3544_ mem_dbus_ack_bF$buf2 _904_ _492_ vdd gnd NAND2X1
X_3124_ _174_ _888_ ibus_pending_ack_bF$buf6 _175_ vdd gnd MUX2X1
XFILL_1__3286_ gnd vdd FILL
XFILL_0__2396_ gnd vdd FILL
X_4082_ _1263_ \gen_int_sys_clk.clk_sys_r_bF$buf21\ \u_cpu.bufreg.data\[11] vdd gnd DFFPOSX1
X_2815_ \u_rf_if.read_buf1\[8] _1824__bF$buf6 _1850_ vdd gnd NAND2X1
XCLKBUF1_insert130 \gen_int_sys_clk.clk_sys_r_hier0_bF$buf5\ \gen_int_sys_clk.clk_sys_r_bF$buf41\ vdd gnd CLKBUF1
XCLKBUF1_insert131 \gen_int_sys_clk.clk_sys_r_hier0_bF$buf1\ \gen_int_sys_clk.clk_sys_r_bF$buf40\ vdd gnd CLKBUF1
XCLKBUF1_insert132 \gen_int_sys_clk.clk_sys_r_hier0_bF$buf2\ \gen_int_sys_clk.clk_sys_r_bF$buf39\ vdd gnd CLKBUF1
XCLKBUF1_insert133 \gen_int_sys_clk.clk_sys_r_hier0_bF$buf4\ \gen_int_sys_clk.clk_sys_r_bF$buf38\ vdd gnd CLKBUF1
XCLKBUF1_insert134 \gen_int_sys_clk.clk_sys_r_hier0_bF$buf1\ \gen_int_sys_clk.clk_sys_r_bF$buf37\ vdd gnd CLKBUF1
XCLKBUF1_insert135 \gen_int_sys_clk.clk_sys_r_hier0_bF$buf3\ \gen_int_sys_clk.clk_sys_r_bF$buf36\ vdd gnd CLKBUF1
XCLKBUF1_insert136 \gen_int_sys_clk.clk_sys_r_hier0_bF$buf5\ \gen_int_sys_clk.clk_sys_r_bF$buf35\ vdd gnd CLKBUF1
XCLKBUF1_insert137 \gen_int_sys_clk.clk_sys_r_hier0_bF$buf5\ \gen_int_sys_clk.clk_sys_r_bF$buf34\ vdd gnd CLKBUF1
XCLKBUF1_insert138 \gen_int_sys_clk.clk_sys_r_hier0_bF$buf3\ \gen_int_sys_clk.clk_sys_r_bF$buf33\ vdd gnd CLKBUF1
XCLKBUF1_insert139 \gen_int_sys_clk.clk_sys_r_hier0_bF$buf4\ \gen_int_sys_clk.clk_sys_r_bF$buf32\ vdd gnd CLKBUF1
XFILL_1__2137_ gnd vdd FILL
X_3773_ _1124_ _1115_ _1108_ _1107_ vdd gnd OAI21X1
X_3353_ _351_ _352_ _347_ _353_ vdd gnd NAND3X1
X_4138_ _1498_ i_clk_fast_bF$buf5 \u_mem_serial.shift_reg\[11] vdd gnd DFFPOSX1
X_2624_ _1694_ _856_ ibus_pending_ack_bF$buf3 _1695_ vdd gnd MUX2X1
X_2204_ _1126__bF$buf4 _841_ _1483_ vdd gnd NOR2X1
X_3829_ _1338_ \gen_int_sys_clk.clk_sys_r_bF$buf27\ \u_rf_if.rreg1_latched\[1] vdd gnd DFFPOSX1
X_3409_ \u_cpu.bufreg.data\[21] _394_ vdd gnd INVX1
XFILL_1__2366_ gnd vdd FILL
X_3582_ \u_cpu.bufreg2.dlo\[9] _440__bF$buf2 _521_ vdd gnd NOR2X1
X_3162_ _201_ _202_ _1329_ vdd gnd AND2X2
XFILL_0__3622_ gnd vdd FILL
XFILL_0__3202_ gnd vdd FILL
XFILL_0_CLKBUF1_insert190 gnd vdd FILL
XFILL_0_CLKBUF1_insert191 gnd vdd FILL
X_2853_ _1878_ i_rst_n_bF$buf9 _1408_ vdd gnd AND2X2
X_2433_ _1524_ _1526_ _624_ \u_cpu.bufreg.data\[0] _1527_ vdd 
+ gnd
+ AOI22X1
X_2013_ _1058__bF$buf3 _1011_ _1012_ _1010_ vdd gnd OAI21X1
XFILL_0_BUFX2_insert1 gnd vdd FILL
XFILL_0_BUFX2_insert3 gnd vdd FILL
XFILL_0_BUFX2_insert5 gnd vdd FILL
XFILL_0_BUFX2_insert6 gnd vdd FILL
XFILL_0_BUFX2_insert8 gnd vdd FILL
X_3638_ _560_ _190__bF$buf2 _559_ _556__bF$buf1 _1211_ vdd 
+ gnd
+ OAI22X1
X_3218_ \u_mem_serial.state\[1] _1712_ _1907_ _245_ vdd gnd OAI21X1
X_3391_ \u_cpu.immdec.gen_immdec_w_eq_1.imm30_25\[0] _383_ _733__bF$buf4 _384_ vdd gnd MUX2X1
XBUFX2_insert180 _615_ _615__bF$buf0 vdd gnd BUFX2
XBUFX2_insert181 _556_ _556__bF$buf4 vdd gnd BUFX2
XBUFX2_insert182 _556_ _556__bF$buf3 vdd gnd BUFX2
XBUFX2_insert183 _556_ _556__bF$buf2 vdd gnd BUFX2
XBUFX2_insert184 _556_ _556__bF$buf1 vdd gnd BUFX2
XBUFX2_insert185 _556_ _556__bF$buf0 vdd gnd BUFX2
X_4176_ _1309_ i_clk_fast_bF$buf0 mem_dbus_ack vdd gnd DFFPOSX1
XFILL_0__3431_ gnd vdd FILL
XFILL_0__3011_ gnd vdd FILL
X_2909_ _15_ i_rst_n_bF$buf8 _1395_ vdd gnd AND2X2
XFILL131550x36150 gnd vdd FILL
X_2662_ _732_ _1728_ vdd gnd INVX1
X_2242_ _1107_ _808_ _1126__bF$buf5 _1478_ vdd gnd AOI21X1
X_3867_ _1188_ \gen_int_sys_clk.clk_sys_r_bF$buf17\ \u_cpu.ctrl.o_ibus_adr\[27] vdd gnd DFFPOSX1
X_3447_ \u_cpu.bufreg.data\[2] _413_ vdd gnd INVX1
X_3027_ _12__bF$buf5 _103_ _104_ _105_ vdd gnd OAI21X1
XFILL_0__2702_ gnd vdd FILL
XFILL_1__3189_ gnd vdd FILL
X_1933_ _1086_ _1085_ _1084_ _1083_ vdd gnd NAND3X1
XFILL_0__2299_ gnd vdd FILL
XFILL_0__3660_ gnd vdd FILL
XFILL_0__3240_ gnd vdd FILL
X_2718_ \u_rf_if.rreg0_latched\[3] _1702_ _1775_ vdd gnd NOR2X1
X_2891_ _1_ _1911_ _1126__bF$buf6 _1399_ vdd gnd AOI21X1
X_2471_ _795_ raddr[1] _1565_ vdd gnd OR2X2
X_2051_ _1126__bF$buf3 _977_ _1500_ vdd gnd NOR2X1
X_3676_ _579_ _190__bF$buf1 _578_ _556__bF$buf1 _1192_ vdd 
+ gnd
+ OAI22X1
X_3256_ rreg0[1] _273_ vdd gnd INVX1
XFILL_0__2931_ gnd vdd FILL
XFILL_0__2511_ gnd vdd FILL
XFILL_0_BUFX2_insert80 gnd vdd FILL
XFILL_0_BUFX2_insert81 gnd vdd FILL
XFILL_0_BUFX2_insert83 gnd vdd FILL
XFILL_0_BUFX2_insert85 gnd vdd FILL
XFILL_0_BUFX2_insert87 gnd vdd FILL
XFILL_0_BUFX2_insert89 gnd vdd FILL
X_2947_ \u_rf_if.read_buf0\[10] _12__bF$buf0 _44_ vdd gnd NAND2X1
X_2527_ \u_rf_serial.last_req_key\[3] _1619_ vdd gnd INVX1
X_2107_ _928_ _1040__bF$buf2 _927_ vdd gnd NOR2X1
XFILL_1__2269_ gnd vdd FILL
X_2280_ \u_cpu.bufreg2.dhi\[4] _771_ vdd gnd INVX1
X_3485_ _648_ _443_ _441_ _1247_ vdd gnd MUX2X1
X_3065_ _129_ _130_ _131_ vdd gnd NOR2X1
XFILL_0__2740_ gnd vdd FILL
XFILL_0__3525_ gnd vdd FILL
XFILL_0__3105_ gnd vdd FILL
X_1971_ \u_mem_serial.active_we_bF$buf4\ _1048_ vdd gnd INVX1
X_2756_ raddr[8] _1704__bF$buf3 i_rst_n_bF$buf7 _1808_ vdd gnd OAI21X1
X_2336_ _726_ _716_ _796_ _715_ vdd gnd OAI21X1
XFILL132450x118950 gnd vdd FILL
XFILL_1__2498_ gnd vdd FILL
X_3294_ \u_mem_serial.shift_reg\[27] ibus_pending_ack_bF$buf5 _302_ _303_ vdd gnd OAI21X1
X_4079_ _1466_ i_clk_fast_bF$buf7 \u_rf_serial.tx_state\[2] vdd gnd DFFPOSX1
XFILL_0__3754_ gnd vdd FILL
XFILL_0__3334_ gnd vdd FILL
X_2985_ _72_ i_rst_n_bF$buf4 _1376_ vdd gnd AND2X2
X_2565_ _1649_ _1652_ _1653_ _1471_ vdd gnd AOI21X1
X_2145_ _894_ _1062__bF$buf0 _893_ vdd gnd NOR2X1
XFILL_0__2605_ gnd vdd FILL
XFILL_0__3563_ gnd vdd FILL
XFILL_0__3143_ gnd vdd FILL
XBUFX2_insert90 \u_rf_if.stream_active\ \u_rf_if.stream_active_bF$buf0\ vdd gnd BUFX2
XBUFX2_insert91 _1126_ _1126__bF$buf7 vdd gnd BUFX2
XBUFX2_insert92 _1126_ _1126__bF$buf6 vdd gnd BUFX2
XBUFX2_insert93 _1126_ _1126__bF$buf5 vdd gnd BUFX2
XBUFX2_insert94 _1126_ _1126__bF$buf4 vdd gnd BUFX2
XBUFX2_insert95 _1126_ _1126__bF$buf3 vdd gnd BUFX2
XBUFX2_insert96 _1126_ _1126__bF$buf2 vdd gnd BUFX2
XBUFX2_insert97 _1126_ _1126__bF$buf1 vdd gnd BUFX2
XBUFX2_insert98 _1126_ _1126__bF$buf0 vdd gnd BUFX2
XBUFX2_insert99 _1067_ _1067__bF$buf4 vdd gnd BUFX2
X_2794_ \u_rf_if.read_buf1\[4] \u_rf_if.read_buf1\[5] \u_rf_if.stream_active_bF$buf6\ _1834_ vdd gnd MUX2X1
X_2374_ _742_ _690_ _678_ _677_ vdd gnd OAI21X1
X_3999_ _1422_ \gen_int_sys_clk.clk_sys_r_bF$buf8\ \u_rf_if.read_buf1\[3] vdd gnd DFFPOSX1
X_3579_ _440__bF$buf0 _517_ _518_ _1228_ vdd gnd AOI21X1
X_3159_ _196_ _670_ _200_ _1330_ vdd gnd AOI21X1
XFILL_0__2834_ gnd vdd FILL
XFILL_0__2414_ gnd vdd FILL
X_4100_ _1271_ \gen_int_sys_clk.clk_sys_r_bF$buf34\ \u_cpu.bufreg.data\[19] vdd gnd DFFPOSX1
XFILL132450x50550 gnd vdd FILL
XFILL_0__3792_ gnd vdd FILL
XFILL_0__3372_ gnd vdd FILL
X_2183_ \u_cpu.bufreg.data\[24] \u_cpu.ctrl.o_ibus_adr\[24] _1052__bF$buf1 _859_ vdd gnd MUX2X1
X_3388_ _323_ _380_ _381_ _1282_ vdd gnd OAI21X1
XFILL_0__2643_ gnd vdd FILL
XFILL_0__2223_ gnd vdd FILL
XFILL_0__3008_ gnd vdd FILL
X_2659_ _1725_ _1693__bF$buf4 _1726_ vdd gnd NAND2X1
X_2239_ _810_ \u_mem_serial.shift_reg\[30] _1067__bF$buf4 _809_ vdd gnd MUX2X1
XFILL_0__1914_ gnd vdd FILL
X_3600_ mem_dbus_ack_bF$buf0 _1016_ _534_ vdd gnd NAND2X1
X_3197_ ibus_pending_rdt[5] _230_ vdd gnd INVX1
XFILL_0__2872_ gnd vdd FILL
XFILL_0__2452_ gnd vdd FILL
XFILL_0__3237_ gnd vdd FILL
X_2888_ \u_rf_if.stream_active_bF$buf2\ _1903_ _1904_ _1905_ vdd gnd OAI21X1
X_2468_ _695_ \u_rf_if.wdata0_r\[0] _725_ _1562_ vdd gnd AOI21X1
X_2048_ \u_cpu.bufreg.data\[9] \u_cpu.ctrl.o_ibus_adr\[9] _1052__bF$buf4 _979_ vdd gnd MUX2X1
XFILL_0__2508_ gnd vdd FILL
XFILL132750x93750 gnd vdd FILL
XFILL_0__2681_ gnd vdd FILL
XFILL_0__3466_ gnd vdd FILL
XFILL_0__3046_ gnd vdd FILL
X_2697_ _1756_ _619_ _1757_ vdd gnd NOR2X1
X_2277_ \u_cpu.bufreg.i_shamt\[0] \u_cpu.bufreg.i_shamt\[1] _774_ vdd gnd NOR2X1
XFILL_0__1952_ gnd vdd FILL
XFILL_0__2737_ gnd vdd FILL
XFILL_0__2317_ gnd vdd FILL
X_4003_ _1424_ \gen_int_sys_clk.clk_sys_r_bF$buf18\ \u_rf_if.read_buf1\[1] vdd gnd DFFPOSX1
X_1968_ _1051_ _1052__bF$buf2 _1053_ _1050_ vdd gnd OAI21X1
XFILL_0__3695_ gnd vdd FILL
XFILL_0__3275_ gnd vdd FILL
X_2086_ _946_ \u_mem_serial.shift_reg\[13] _1067__bF$buf0 _945_ vdd gnd MUX2X1
XFILL_0__2966_ gnd vdd FILL
XFILL_0__2546_ gnd vdd FILL
XFILL_0__2126_ gnd vdd FILL
XFILL_0_BUFX2_insert173 gnd vdd FILL
XFILL_0_BUFX2_insert175 gnd vdd FILL
XFILL_0_BUFX2_insert177 gnd vdd FILL
XFILL_0_BUFX2_insert179 gnd vdd FILL
X_3923_ _1202_ \gen_int_sys_clk.clk_sys_r_bF$buf35\ \u_cpu.ctrl.o_ibus_adr\[13] vdd gnd DFFPOSX1
X_3503_ _770_ _458_ _459_ vdd gnd NOR2X1
XFILL_1__2040_ gnd vdd FILL
XFILL_0__2775_ gnd vdd FILL
XFILL_0__2355_ gnd vdd FILL
X_4041_ _1242_ \gen_int_sys_clk.clk_sys_r_bF$buf14\ \u_cpu.bufreg.i_shamt\[1] vdd gnd DFFPOSX1
X_3732_ _313_ _848_ _615__bF$buf0 _1172_ vdd gnd MUX2X1
X_3312_ _288_ _317_ _318_ _1295_ vdd gnd AOI21X1
XFILL_0__2584_ gnd vdd FILL
XFILL_1__1960_ gnd vdd FILL
XFILL_0__3369_ gnd vdd FILL
X_3961_ _1211_ \gen_int_sys_clk.clk_sys_r_bF$buf23\ \u_cpu.ctrl.o_ibus_adr\[22] vdd gnd DFFPOSX1
X_3541_ mem_dbus_ack_bF$buf2 \u_cpu.bufreg2.dlo\[20] _489_ _490_ vdd gnd OAI21X1
X_3121_ _1691_ _172_ _1340_ vdd gnd NOR2X1
XFILL132750x25350 gnd vdd FILL
X_2812_ _1824__bF$buf6 _1846_ _1847_ _1848_ vdd gnd OAI21X1
XFILL_0__3598_ gnd vdd FILL
XFILL_0__3178_ gnd vdd FILL
XFILL_1__3339_ gnd vdd FILL
X_3770_ _1105_ _1104_ vdd gnd INVX1
X_3350_ \u_mem_serial.shift_reg\[8] ibus_pending_ack_bF$buf3 _349_ _350_ vdd gnd OAI21X1
XFILL_0__2869_ gnd vdd FILL
XFILL_0__2449_ gnd vdd FILL
XFILL_0__2029_ gnd vdd FILL
X_4135_ _1288_ \gen_int_sys_clk.clk_sys_r_bF$buf24\ \u_cpu.immdec.gen_immdec_w_eq_1.imm11_7\[1] vdd gnd DFFPOSX1
XFILL_1__3092_ gnd vdd FILL
XFILL_0__3810_ gnd vdd FILL
X_2621_ \u_rf_if.rreg1_latched\[4] _733__bF$buf3 _1692_ vdd gnd NAND2X1
X_2201_ \u_cpu.bufreg.data\[26] \u_cpu.ctrl.o_ibus_adr\[26] _1052__bF$buf2 _843_ vdd gnd MUX2X1
X_3826_ i_rst_n_bF$buf5 vdd _1169_ \gen_int_sys_clk.clk_sys_r_bF$buf15\ ibus_pending_rdt[22] vdd 
+ gnd
+ DFFSR
X_3406_ _392_ _391_ _661__bF$buf4 _1275_ vdd gnd MUX2X1
XFILL_0__2678_ gnd vdd FILL
XFILL_0__2258_ gnd vdd FILL
XFILL_0_CLKBUF1_insert160 gnd vdd FILL
XFILL_0_CLKBUF1_insert162 gnd vdd FILL
XFILL_0_CLKBUF1_insert164 gnd vdd FILL
XFILL_0_CLKBUF1_insert166 gnd vdd FILL
XFILL_0_CLKBUF1_insert168 gnd vdd FILL
XFILL_0_CLKBUF1_insert169 gnd vdd FILL
X_2850_ \u_rf_if.read_buf1\[18] \u_rf_if.read_buf1\[19] \u_rf_if.stream_active_bF$buf7\ _1876_ vdd gnd MUX2X1
X_2430_ _655_ _1524_ vdd gnd INVX1
X_2010_ _1014_ _1062__bF$buf1 _1013_ vdd gnd NOR2X1
XFILL_0__1949_ gnd vdd FILL
X_3635_ \u_cpu.ctrl.o_ibus_adr\[23] _559_ vdd gnd INVX1
X_3215_ \u_cpu.bufreg2.i_op_b_sel\ _1115_ _1106_ _243_ vdd gnd NAND3X1
XFILL_1__2172_ gnd vdd FILL
XFILL_0__2487_ gnd vdd FILL
X_4173_ _1307_ \gen_int_sys_clk.clk_sys_r_bF$buf9\ rreg0[3] vdd gnd DFFPOSX1
X_2906_ \u_rf_if.read_buf0\[1] \u_rf_if.read_buf0\[2] \u_rf_if.stream_active_bF$buf4\ _13_ vdd gnd MUX2X1
X_3864_ i_rst_n_bF$buf10 vdd _1131_ \gen_int_sys_clk.clk_sys_r_bF$buf3\ rf_write_drain_busy vdd 
+ gnd
+ DFFSR
X_3444_ _411_ _410_ _661__bF$buf2 _1256_ vdd gnd MUX2X1
X_3024_ _91_ _12__bF$buf5 _102_ _1367_ vdd gnd AOI21X1
X_1930_ \u_mem_serial.bit_count\[3] _1086_ vdd gnd INVX1
X_2715_ _1702_ _1771_ _1772_ vdd gnd NAND2X1
XFILL_0__1987_ gnd vdd FILL
X_3673_ \u_cpu.ctrl.o_ibus_adr\[4] _578_ vdd gnd INVX1
X_3253_ rreg0[2] _271_ vdd gnd INVX1
X_4038_ _1241_ \gen_int_sys_clk.clk_sys_r_bF$buf14\ \u_cpu.bufreg.i_shamt\[0] vdd gnd DFFPOSX1
XFILL_0__3713_ gnd vdd FILL
XFILL_0_BUFX2_insert50 gnd vdd FILL
XFILL_0_BUFX2_insert52 gnd vdd FILL
XFILL_0_BUFX2_insert54 gnd vdd FILL
XFILL_0_BUFX2_insert56 gnd vdd FILL
XFILL_0_BUFX2_insert58 gnd vdd FILL
XFILL_0_BUFX2_insert59 gnd vdd FILL
X_2944_ _12__bF$buf0 _40_ _41_ _42_ vdd gnd OAI21X1
X_2524_ _1611_ _1615_ _1616_ vdd gnd NOR2X1
X_2104_ _930_ \u_mem_serial.shift_reg\[15] _1067__bF$buf3 _929_ vdd gnd MUX2X1
X_3729_ _295_ _824_ _615__bF$buf2 _1175_ vdd gnd MUX2X1
X_3309_ _315_ _1693__bF$buf2 _316_ vdd gnd NAND2X1
X_3482_ _781_ _440__bF$buf3 _441_ vdd gnd NOR2X1
X_3062_ \u_rf_if.write_wait\[1] _124_ \u_rf_if.write_wait\[2] _128_ vdd gnd OAI21X1
X_2753_ \u_rf_if.rcnt\[0] _733__bF$buf0 _1744_ _1806_ vdd gnd NAND3X1
X_2333_ ren_bF$buf0 _751_ _718_ vdd gnd NOR2X1
X_3958_ _1402_ \gen_int_sys_clk.clk_sys_r_bF$buf39\ \u_rf_if.read_buf1\[23] vdd gnd DFFPOSX1
X_3538_ \u_cpu.bufreg2.dlo\[20] _440__bF$buf1 _488_ vdd gnd NOR2X1
X_3118_ _170_ _169_ _171_ vdd gnd NAND2X1
XFILL_1__2075_ gnd vdd FILL
X_3291_ _288_ _299_ _300_ _1298_ vdd gnd AOI21X1
X_4076_ _1465_ i_clk_fast_bF$buf7 \u_rf_serial.tx_state\[3] vdd gnd DFFPOSX1
X_2809_ _1845_ i_rst_n_bF$buf0 _1419_ vdd gnd AND2X2
X_2982_ \u_rf_if.read_buf0\[20] \u_rf_if.read_buf0\[21] \u_rf_if.stream_active_bF$buf0\ _70_ vdd gnd MUX2X1
X_2562_ _806_ _1650_ _1592_ _1651_ vdd gnd NAND3X1
X_2142_ \u_mem_serial.shift_reg\[19] _896_ vdd gnd INVX1
X_3767_ \u_mem_serial.state\[1] _1101_ vdd gnd INVX1
X_3347_ _748_ _332_ _347_ vdd gnd NAND2X1
XFILL_0__3807_ gnd vdd FILL
XFILL_0__3140_ gnd vdd FILL
X_2618_ \u_rf_if.pending_read\ _1683_ _1689_ _1690_ vdd gnd NAND3X1
XBUFX2_insert60 _190_ _190__bF$buf1 vdd gnd BUFX2
XBUFX2_insert61 _190_ _190__bF$buf0 vdd gnd BUFX2
X_2791_ \u_rf_if.read_buf1\[2] _1824__bF$buf2 _1832_ vdd gnd NAND2X1
X_2371_ _681_ _682_ _680_ vdd gnd NAND2X1
X_3996_ _1224_ \gen_int_sys_clk.clk_sys_r_bF$buf36\ \u_cpu.bufreg2.dlo\[6] vdd gnd DFFPOSX1
X_3576_ mem_dbus_ack_bF$buf1 _968_ _516_ vdd gnd NAND2X1
X_3156_ _671_ _198_ i_rst_n_bF$buf6 _199_ vdd gnd OAI21X1
XFILL_0__3616_ gnd vdd FILL
X_2847_ \u_rf_if.read_buf1\[16] _1824__bF$buf1 _1874_ vdd gnd NAND2X1
X_2427_ _789_ _1519_ _1520_ _1521_ vdd gnd OAI21X1
X_2007_ \u_mem_serial.shift_reg\[4] _1016_ vdd gnd INVX1
XFILL_1__3110_ gnd vdd FILL
X_2180_ \u_mem_serial.active_we_bF$buf1\ \u_cpu.bufreg.i_shamt\[0] _862_ vdd gnd NAND2X1
XFILL132750x118950 gnd vdd FILL
X_3385_ _369_ _288_ _379_ _1283_ vdd gnd OAI21X1
XFILL_0__2640_ gnd vdd FILL
XFILL_0__2220_ gnd vdd FILL
XFILL_0__3425_ gnd vdd FILL
XFILL_1__2801_ gnd vdd FILL
X_2656_ \u_rf_if.rreg0_latched\[4] _733__bF$buf3 _1723_ vdd gnd NAND2X1
X_2236_ _813_ _815_ _1058__bF$buf0 _812_ vdd gnd OAI21X1
XFILL_1_BUFX2_insert100 gnd vdd FILL
XFILL_1_BUFX2_insert105 gnd vdd FILL
XFILL_1_BUFX2_insert109 gnd vdd FILL
X_3194_ _227_ _952_ ibus_pending_ack_bF$buf6 _228_ vdd gnd MUX2X1
X_1927_ \u_mem_serial.bit_count\[3] _1089_ _1105_ _1088_ vdd gnd OAI21X1
XFILL_0__3654_ gnd vdd FILL
X_2885_ _1902_ i_rst_n_bF$buf9 _1400_ vdd gnd AND2X2
X_2465_ _1558_ _694_ _725_ _1559_ vdd gnd OAI21X1
X_2045_ \u_mem_serial.active_we_bF$buf0\ \u_cpu.bufreg2.dlo\[9] _982_ vdd gnd NAND2X1
XFILL_0__2925_ gnd vdd FILL
X_2694_ \u_rf_if.stream_cnt\[2] _1753_ _1754_ vdd gnd NAND2X1
X_2274_ \u_cpu.bufreg2.dhi\[5] _777_ vdd gnd INVX1
X_3899_ _1196_ \gen_int_sys_clk.clk_sys_r_bF$buf13\ \u_cpu.ctrl.o_ibus_adr\[7] vdd gnd DFFPOSX1
X_3479_ _657_ _753_ _794_ _438_ vdd gnd OAI21X1
X_3059_ _124_ \u_rf_if.write_wait\[1] _126_ vdd gnd OR2X2
X_4000_ _1226_ \gen_int_sys_clk.clk_sys_r_bF$buf19\ \u_cpu.bufreg2.dlo\[8] vdd gnd DFFPOSX1
XFILL_0__3519_ gnd vdd FILL
X_1965_ _1061_ _1054_ _1053_ vdd gnd NAND2X1
XFILL_1__3013_ gnd vdd FILL
X_2083_ _949_ _951_ _1058__bF$buf5 _948_ vdd gnd OAI21X1
X_3288_ _297_ _1693__bF$buf2 _298_ vdd gnd NAND2X1
XFILL_0__2123_ gnd vdd FILL
XFILL_0__3748_ gnd vdd FILL
XFILL_0__3328_ gnd vdd FILL
XFILL_0__3081_ gnd vdd FILL
XFILL_1__3909_ gnd vdd FILL
X_2979_ \u_rf_if.read_buf0\[18] _12__bF$buf2 _68_ vdd gnd NAND2X1
X_2559_ _1648_ _1593_ _1472_ vdd gnd NOR2X1
X_2139_ _1058__bF$buf1 _899_ _900_ _898_ vdd gnd OAI21X1
X_3920_ _1384_ \gen_int_sys_clk.clk_sys_r_bF$buf22\ \u_rf_if.read_buf0\[11] vdd gnd DFFPOSX1
X_3500_ _776_ _774_ _456_ vdd gnd NAND2X1
XFILL_1__3242_ gnd vdd FILL
X_3097_ \u_rf_if.rreg0_latched\[3] _733__bF$buf3 _154_ vdd gnd NAND2X1
XFILL_0__2352_ gnd vdd FILL
XFILL_0__3557_ gnd vdd FILL
XFILL_1__2933_ gnd vdd FILL
X_2788_ _1824__bF$buf2 _1828_ _1829_ _1830_ vdd gnd OAI21X1
X_2368_ _689_ _684_ \u_cpu.ctrl.pc\ _683_ vdd gnd OAI21X1
XFILL_0__2828_ gnd vdd FILL
XFILL_0__2408_ gnd vdd FILL
XFILL_1__3471_ gnd vdd FILL
XFILL_0__2581_ gnd vdd FILL
XFILL_0__2161_ gnd vdd FILL
XFILL_0__3786_ gnd vdd FILL
X_2597_ \u_rf_serial.last_req_key\[4] _1596_ i_rst_n_bF$buf3 _1675_ vdd gnd OAI21X1
X_2177_ _1126__bF$buf3 _865_ _1486_ vdd gnd NOR2X1
XFILL_0__2390_ gnd vdd FILL

.ends
.end
