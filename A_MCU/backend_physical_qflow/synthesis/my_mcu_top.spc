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

X_1677_ _1037_ _810_ _1038_ _769_ vdd gnd AOI21X1
X_1257_ _499_ _486_ _485_ vdd gnd NOR2X1
X_1486_ \u_rf_if.last_req_key\[4] _884_ _886_ vdd gnd NAND2X1
X_1295_ \u_rf_if.stream_cnt\[1] _454_ vdd gnd INVX1
X_2521_ _788_ i_clk_sys_ext_bF$buf12 \u_rf_if.read_buf0\[15] vdd gnd DFFPOSX1
X_2101_ \u_cpu.bufreg.data\[22] _241_ vdd gnd INVX1
X_1389_ _459__bF$buf2 _380_ _379_ _832_ vdd gnd AOI21X1
X_2330_ _831_ i_clk_fast_bF$buf3 \u_mem_serial.shift_reg\[29] vdd gnd DFFPOSX1
X_1601_ \u_rf_if.stream_active_bF$buf0\ _983_ _984_ vdd gnd NAND2X1
X_1198_ _543_ _542_ vdd gnd INVX1
X_1830_ _554_ _26_ _27_ vdd gnd NAND2X1
X_1410_ _366_ _459__bF$buf6 _365_ _825_ vdd gnd OAI21X1
XBUFX2_insert31 \u_rf_if.stream_active\ \u_rf_if.stream_active_bF$buf6\ vdd gnd BUFX2
XBUFX2_insert32 \u_rf_if.stream_active\ \u_rf_if.stream_active_bF$buf5\ vdd gnd BUFX2
XBUFX2_insert33 \u_rf_if.stream_active\ \u_rf_if.stream_active_bF$buf4\ vdd gnd BUFX2
XBUFX2_insert34 \u_rf_if.stream_active\ \u_rf_if.stream_active_bF$buf3\ vdd gnd BUFX2
XBUFX2_insert35 \u_rf_if.stream_active\ \u_rf_if.stream_active_bF$buf2\ vdd gnd BUFX2
XBUFX2_insert36 \u_rf_if.stream_active\ \u_rf_if.stream_active_bF$buf1\ vdd gnd BUFX2
XBUFX2_insert37 \u_rf_if.stream_active\ \u_rf_if.stream_active_bF$buf0\ vdd gnd BUFX2
XBUFX2_insert38 _23_ _23__bF$buf4 vdd gnd BUFX2
XBUFX2_insert39 _23_ _23__bF$buf3 vdd gnd BUFX2
X_2424_ _718_ i_clk_sys_ext_bF$buf0 \u_rf_if.read_buf0\[30] vdd gnd DFFPOSX1
X_2004_ _171_ _161_ _172_ vdd gnd NOR2X1
X_2233_ _322_ _323_ _124__bF$buf3 _626_ vdd gnd MUX2X1
X_1924_ _117_ _109_ _108_ _110_ _118_ vdd 
+ gnd
+ AOI22X1
X_1504_ \u_rf_if.last_req_key\[9] _877_ _904_ vdd gnd NAND2X1
X_2462_ _750_ i_clk_sys_ext_bF$buf7 \u_rf_if.o_waddr\[0] vdd gnd DFFPOSX1
X_2042_ rf_read_reg1_to_if[0] _199_ vdd gnd INVX1
X_1733_ _526_ _1076_ _1077_ vdd gnd NAND2X1
X_1313_ \u_mem_serial.shift_reg\[15] _459__bF$buf5 _441_ vdd gnd NOR2X1
X_2518_ _738_ i_clk_sys_ext_bF$buf6 \u_rf_if.prefetch_active\ vdd gnd DFFPOSX1
X_2271_ _49_ _46_ _125_ _602_ vdd gnd AOI21X1
X_1962_ _457_ _144_ vdd gnd INVX1
X_1542_ \u_rf_if.shift_rx\[0] _939_ i_rst_n_bF$buf0 _940_ vdd gnd OAI21X1
X_2327_ _829_ i_clk_fast_bF$buf3 \u_mem_serial.shift_reg\[1] vdd gnd DFFPOSX1
X_2080_ _220_ _181_ _227_ _228_ _684_ vdd 
+ gnd
+ AOI22X1
X_1771_ _1105_ _935_ _941_ _739_ vdd gnd AOI21X1
X_1351_ _489__bF$buf4 _410_ _413_ _409_ vdd gnd OAI21X1
X_2136_ _550_ _24_ _254_ _255_ vdd gnd OAI21X1
X_1827_ _23__bF$buf1 _24_ vdd gnd INVX1
X_1407_ _368_ _459__bF$buf1 _367_ _826_ vdd gnd OAI21X1
X_1580_ \u_rf_if.read_buf0\[9] _968_ vdd gnd INVX1
X_1160_ \u_cpu.bufreg.i_right_shift_op\ _580_ vdd gnd INVX2
X_2365_ i_clk_sys_ext_bF$buf2 i_clk_fast_bF$buf6 \u_mem_serial.clk_sys_prev\ vdd gnd DFFPOSX1
X_1636_ \u_rf_if.read_buf0\[23] _1010_ vdd gnd INVX1
X_1216_ _583_ _525_ \u_rf_if.rtrig0\ vdd gnd NOR2X1
X_2174_ _557_ _281_ _282_ vdd gnd NOR2X1
X_1865_ _594_ _945_ _62_ vdd gnd NOR2X1
X_1445_ _344_ _348_ _597_ _814_ vdd gnd OAI21X1
X_1674_ _591_ _1034_ _1036_ _770_ vdd gnd OAI21X1
X_1254_ _489__bF$buf3 _488_ vdd gnd INVX2
X_2459_ _617_ i_clk_sys_ext_bF$buf13 \u_cpu.ctrl.o_ibus_adr\[10] vdd gnd DFFPOSX1
X_2039_ rf_read_reg1_to_if[1] _197_ vdd gnd INVX1
XFILL95250x7350 gnd vdd FILL
X_1483_ _882_ _881_ _883_ vdd gnd NOR2X1
X_2268_ \u_cpu.ctrl.o_ibus_adr\[29] _337_ vdd gnd INVX1
X_1959_ \u_rf_if.stream_active_bF$buf1\ _587_ _142_ vdd gnd NOR2X1
X_1539_ _494_ _488_ _465_ _806_ vdd gnd OAI21X1
X_1292_ \u_rf_if.stream_active_bF$buf6\ \u_rf_if.ready_pulse\ _457_ vdd gnd NOR2X1
X_2497_ _770_ i_clk_sys_ext_bF$buf6 raddr[3] vdd gnd DFFPOSX1
X_2077_ _221_ _222_ _225_ _226_ vdd gnd OAI21X1
X_1768_ _1102_ _1103_ _740_ vdd gnd NOR2X1
X_1348_ \u_cpu.bufreg.data\[6] _412_ vdd gnd INVX1
X_1997_ _1101_ _166_ _161_ _705_ vdd gnd MUX2X1
X_1577_ \u_rf_if.stream_active_bF$buf3\ _965_ _966_ vdd gnd NAND2X1
X_1157_ \u_rf_if.rcnt\[0] _583_ vdd gnd INVX1
X_1386_ _459__bF$buf2 _382_ _381_ _833_ vdd gnd AOI21X1
X_1195_ \u_cpu.bufreg.i_shamt\[0] \u_cpu.bufreg.i_shamt\[1] _545_ vdd gnd NOR2X1
X_2421_ _716_ i_clk_sys_ext_bF$buf5 \u_rf_if.stream_cnt\[1] vdd gnd DFFPOSX1
X_2001_ _167_ _161_ _169_ _704_ vdd gnd AOI21X1
X_1289_ _485_ _460_ _463_ _459_ vdd gnd AOI21X1
X_2230_ \u_cpu.ctrl.o_ibus_adr\[20] _322_ vdd gnd INVX1
X_1921_ _112_ _114_ _115_ vdd gnd OR2X2
X_1501_ \u_rf_if.last_req_key\[8] _520_ _901_ vdd gnd NOR2X1
X_1730_ _875_ _524_ _1074_ vdd gnd NOR2X1
X_1310_ _459__bF$buf4 _444_ _446_ _846_ vdd gnd AOI21X1
X_2515_ _740_ i_clk_fast_bF$buf1 \u_rf_if.launch_pending\ vdd gnd DFFPOSX1
X_2324_ _654_ i_clk_sys_ext_bF$buf9 \u_cpu.bufreg.data\[0] vdd gnd DFFPOSX1
X_2133_ _430_ _436_ _23__bF$buf4 _655_ vdd gnd MUX2X1
X_1824_ _581_ _552_ _21_ vdd gnd NOR2X1
X_1404_ _370_ _459__bF$buf6 _369_ _827_ vdd gnd OAI21X1
X_2362_ _853_ i_clk_fast_bF$buf6 \u_mem_serial.active_ibus\ vdd gnd DFFPOSX1
X_1633_ \u_rf_if.stream_active_bF$buf4\ _1007_ _1008_ vdd gnd NAND2X1
X_1213_ _528_ _533_ _527_ vdd gnd NAND2X1
X_2418_ _604_ i_clk_sys_ext_bF$buf5 \u_cpu.ctrl.o_ibus_adr\[29] vdd gnd DFFPOSX1
X_2171_ \u_cpu.bufreg2.i_bytecnt\[1] \u_cpu.state.i_ctrl_misalign\ _553_ _279_ vdd gnd AOI21X1
XFILL95250x86550 gnd vdd FILL
X_1862_ _58_ _57_ _59_ vdd gnd NOR2X1
X_1442_ \u_mem_serial.bit_count\[2] _469_ _343_ vdd gnd NOR2X1
X_2227_ _319_ _320_ _124__bF$buf4 _629_ vdd gnd MUX2X1
X_1918_ _111_ _112_ vdd gnd INVX1
X_1671_ _1033_ _1034_ _1035_ _772_ vdd gnd OAI21X1
X_1251_ _492_ _504_ _491_ vdd gnd AND2X2
X_2456_ _747_ i_clk_sys_ext_bF$buf11 \u_rf_if.issue_chunk\[0] vdd gnd DFFPOSX1
X_2036_ rf_read_reg1_to_if[2] _195_ vdd gnd INVX1
X_1727_ _1067_ _583_ _1071_ _1072_ vdd gnd OAI21X1
X_1307_ \u_mem_serial.shift_reg\[0] _459__bF$buf4 _446_ vdd gnd NOR2X1
X_1480_ \u_rf_if.tx_state\[0] _879_ _880_ vdd gnd NOR2X1
X_2265_ \u_cpu.ctrl.o_ibus_adr\[30] _335_ vdd gnd INVX1
X_1956_ mem_ibus_ack_bF$buf6 _532_ _139_ _720_ vdd gnd OAI21X1
X_1536_ _935_ _936_ vdd gnd INVX4
X_2494_ _767_ i_clk_sys_ext_bF$buf6 raddr[6] vdd gnd DFFPOSX1
X_2074_ \u_cpu.decode.opcode\[0] \u_cpu.decode.opcode\[2] \u_cpu.decode.opcode\[1] _223_ vdd gnd AOI21X1
X_1765_ _1101_ _1037_ mem_ibus_ack_bF$buf1 _742_ vdd gnd MUX2X1
X_1345_ _415_ _420_ _459__bF$buf0 _840_ vdd gnd MUX2X1
X_1994_ \u_mem_serial.shift_reg\[16] rf_read_reg0_to_if[2] mem_ibus_ack_bF$buf3 _165_ vdd gnd MUX2X1
X_1574_ \u_rf_if.stream_active_bF$buf3\ \u_rf_if.read_buf0\[8] _963_ _964_ vdd gnd OAI21X1
X_1154_ _594_ _587_ _586_ vdd gnd NAND2X1
XFILL95250x18150 gnd vdd FILL
X_2359_ _851_ i_clk_fast_bF$buf2 \u_mem_serial.shift_reg\[14] vdd gnd DFFPOSX1
X_1383_ _459__bF$buf2 _384_ _383_ _834_ vdd gnd AOI21X1
X_2168_ _1086_ _582_ _1089_ _644_ vdd gnd AOI21X1
X_1859_ _55_ _56_ vdd gnd INVX1
X_1439_ _346_ _347_ _345_ vdd gnd NAND2X1
X_1192_ _549_ _548_ vdd gnd INVX1
X_2397_ _695_ i_clk_sys_ext_bF$buf3 rf_read_reg1_to_if[3] vdd gnd DFFPOSX1
X_1668_ \u_rf_if.issue_chunk\[1] _1033_ vdd gnd INVX1
X_1248_ _495_ _499_ _494_ vdd gnd NOR2X1
X_1897_ _868_ _922_ _93_ vdd gnd NAND2X1
X_1477_ _875_ _876_ _877_ vdd gnd NOR2X1
X_1286_ _486_ _467_ _498_ _462_ _852_ vdd 
+ gnd
+ OAI22X1
X_2512_ _783_ i_clk_sys_ext_bF$buf0 \u_rf_if.read_buf0\[20] vdd gnd DFFPOSX1
X_2321_ _826_ i_clk_fast_bF$buf3 \u_mem_serial.shift_reg\[4] vdd gnd DFFPOSX1
X_1189_ \u_cpu.bufreg2.dhi\[6] _551_ vdd gnd INVX1
X_2130_ _412_ _418_ _23__bF$buf1 _658_ vdd gnd MUX2X1
X_1821_ \u_cpu.bufreg.data\[0] _18_ vdd gnd INVX1
X_1401_ _372_ _459__bF$buf5 _371_ _828_ vdd gnd OAI21X1
XFILL94950x72150 gnd vdd FILL
X_1630_ \u_rf_if.stream_active_bF$buf4\ \u_rf_if.read_buf0\[22] _1005_ _1006_ vdd gnd OAI21X1
X_1210_ \u_cpu.decode.co_mem_word\ _580_ _530_ vdd gnd NAND2X1
X_2415_ _713_ i_clk_sys_ext_bF$buf10 \u_cpu.branch_op\ vdd gnd DFFPOSX1
X_2224_ \u_cpu.ctrl.o_ibus_adr\[23] _319_ vdd gnd INVX1
X_1915_ _580_ _579_ _109_ vdd gnd NAND2X1
X_2453_ _614_ i_clk_sys_ext_bF$buf4 \u_cpu.ctrl.o_ibus_adr\[7] vdd gnd DFFPOSX1
X_2033_ mem_ibus_ack_bF$buf5 _192_ _158_ _193_ vdd gnd OAI21X1
X_1724_ _1067_ _583_ _1068_ vdd gnd NOR2X1
X_1304_ _483_ _448_ _465_ _848_ vdd gnd OAI21X1
X_2509_ _742_ i_clk_sys_ext_bF$buf7 \u_rf_if.issue_reg\[0] vdd gnd DFFPOSX1
X_2262_ _332_ _124__bF$buf1 _333_ _607_ vdd gnd AOI21X1
X_1953_ mem_ibus_ack_bF$buf0 _368_ _138_ _722_ vdd gnd AOI21X1
X_1533_ _890_ _932_ _933_ vdd gnd AND2X2
X_2318_ _650_ i_clk_sys_ext_bF$buf10 \u_cpu.bufreg.c_r\ vdd gnd DFFPOSX1
X_2491_ _765_ i_clk_fast_bF$buf5 \u_rf_if.tx_state\[1] vdd gnd DFFPOSX1
X_2071_ \u_cpu.immdec.gen_immdec_w_eq_1.imm30_25\[5] _220_ vdd gnd INVX1
X_1762_ _1095_ \u_rf_if.issue_chunk\[3] \u_rf_if.issue_idx\[4] _1100_ vdd gnd AOI21X1
X_1342_ \u_cpu.ctrl.o_ibus_adr\[5] _417_ vdd gnd INVX1
X_2127_ _394_ _400_ _23__bF$buf4 _661_ vdd gnd MUX2X1
X_1818_ _572_ _573_ _15_ vdd gnd NAND2X1
X_1991_ rf_read_reg0_to_if[2] _163_ vdd gnd INVX1
X_1571_ _961_ _956_ _586__bF$buf2 _798_ vdd gnd MUX2X1
X_1151_ \u_rf_if.issue_chunk\[1] \u_rf_if.issue_chunk\[0] _589_ vdd gnd NOR2X1
X_2356_ _663_ i_clk_sys_ext_bF$buf8 \u_cpu.bufreg.data\[10] vdd gnd DFFPOSX1
XFILL95250x72150 gnd vdd FILL
X_1627_ _1003_ _998_ _586__bF$buf4 _784_ vdd gnd MUX2X1
X_1207_ _555_ _534_ _533_ vdd gnd NAND2X1
X_1380_ _459__bF$buf4 _385_ _390_ _835_ vdd gnd AOI21X1
X_2165_ _275_ _526_ _646_ vdd gnd NAND2X1
X_1856_ \u_cpu.ctrl.pc\ \u_cpu.ctrl.pc_plus_4_cy_r_w\ _53_ vdd gnd AND2X2
X_1436_ _348_ _497_ _466_ _347_ vdd gnd AOI21X1
X_2394_ _692_ i_clk_sys_ext_bF$buf3 rf_read_reg1_to_if[0] vdd gnd DFFPOSX1
X_1665_ _586__bF$buf3 _1030_ _1031_ _774_ vdd gnd AOI21X1
X_1245_ \u_mem_serial.bit_count\[0] _497_ vdd gnd INVX1
X_1894_ _7_ \u_cpu.o_wdata0\ _90_ vdd gnd NAND2X1
X_1474_ _865_ _873_ _874_ _808_ vdd gnd AOI21X1
X_2259_ \u_cpu.ctrl.o_ibus_adr\[1] _332_ vdd gnd INVX1
X_1283_ _476_ _490_ \u_mem_serial.state\[1] _464_ vdd gnd AOI21X1
X_2488_ _630_ i_clk_sys_ext_bF$buf5 \u_cpu.ctrl.o_ibus_adr\[23] vdd gnd DFFPOSX1
X_2068_ _214_ _161_ _218_ _217_ _686_ vdd 
+ gnd
+ AOI22X1
X_1759_ _1095_ _1098_ _745_ vdd gnd NOR2X1
X_1339_ \u_mem_serial.shift_reg\[20] _420_ vdd gnd INVX1
X_2297_ _815_ i_clk_fast_bF$buf6 \u_mem_serial.bit_count\[1] vdd gnd DFFPOSX1
X_1988_ mem_ibus_ack_bF$buf6 _160_ _158_ _161_ vdd gnd OAI21X1
X_1568_ \u_rf_if.read_buf0\[6] _959_ vdd gnd INVX1
X_1148_ _593_ _592_ vdd gnd INVX2
X_1797_ _1113_ _1131_ vdd gnd INVX1
X_1377_ \u_cpu.ctrl.o_ibus_adr\[10] _387_ vdd gnd INVX1
X_1186_ \u_cpu.decode.opcode\[2] _554_ vdd gnd INVX2
XFILL94950x93750 gnd vdd FILL
X_2412_ _710_ i_clk_sys_ext_bF$buf6 \u_cpu.bufreg.i_sh_signed\ vdd gnd DFFPOSX1
X_2221_ _315_ _317_ _124__bF$buf2 _632_ vdd gnd MUX2X1
X_1912_ _11_ _562_ _106_ vdd gnd NOR2X1
X_2450_ _613_ i_clk_sys_ext_bF$buf13 \u_cpu.ctrl.o_ibus_adr\[6] vdd gnd DFFPOSX1
X_2030_ _189_ _190_ _181_ _696_ vdd gnd MUX2X1
X_1721_ \u_rf_if.write_wait\[0] _1066_ _753_ vdd gnd NOR2X1
X_1301_ _449_ \u_rf_if.stream_cnt\[4] _457_ _850_ vdd gnd AOI21X1
X_2506_ _778_ i_clk_sys_ext_bF$buf12 \u_rf_if.read_buf0\[25] vdd gnd DFFPOSX1
X_1950_ mem_ibus_ack_bF$buf5 _81_ _137_ _724_ vdd gnd OAI21X1
X_1530_ \u_rf_if.last_req_key\[7] _513_ _930_ vdd gnd NAND2X1
X_2315_ _823_ i_clk_fast_bF$buf2 \u_mem_serial.shift_reg\[7] vdd gnd DFFPOSX1
X_2544_ _806_ i_clk_fast_bF$buf6 \u_mem_serial.state\[0] vdd gnd DFFPOSX1
X_2124_ _251_ _252_ _23__bF$buf2 _664_ vdd gnd MUX2X1
X_1815_ \u_cpu.decode.opcode\[0] _11_ _12_ vdd gnd NAND2X1
X_2353_ \u_cpu.o_wdata0\ i_clk_sys_ext_bF$buf6 \u_rf_if.wdata0_next\[0] vdd gnd DFFPOSX1
X_1624_ \u_rf_if.read_buf0\[20] _1001_ vdd gnd INVX1
X_1204_ _551_ _547_ _537_ _536_ vdd gnd OAI21X1
X_2409_ _707_ i_clk_sys_ext_bF$buf3 rf_read_reg0_to_if[2] vdd gnd DFFPOSX1
XFILL95250x93750 gnd vdd FILL
X_2162_ _1068_ _273_ _274_ vdd gnd OR2X2
X_1853_ _48_ _39_ _50_ vdd gnd NAND2X1
X_1433_ \u_mem_serial.shift_reg\[12] _489__bF$buf2 _459__bF$buf3 _349_ vdd gnd NAND3X1
X_2218_ \u_cpu.ctrl.o_ibus_adr\[27] _316_ vdd gnd INVX1
X_2391_ _689_ i_clk_sys_ext_bF$buf1 rf_wreg0_to_if[1] vdd gnd DFFPOSX1
X_1909_ _564_ \u_cpu.state.cnt_r\[3] \u_rf_if.ready_pulse\ _104_ vdd gnd AOI21X1
X_1662_ _1025_ _585_ _1029_ _1028_ _775_ vdd 
+ gnd
+ AOI22X1
X_1242_ \u_mem_serial.bit_count\[5] _501_ _500_ vdd gnd NOR2X1
X_2447_ _743_ i_clk_sys_ext_bF$buf10 \u_rf_if.issue_idx\[4] vdd gnd DFFPOSX1
X_2027_ _187_ _188_ _181_ _697_ vdd gnd MUX2X1
X_1718_ ren _935_ i_rst_n_bF$buf3 _1065_ vdd gnd OAI21X1
X_1891_ _80_ _87_ _61_ _88_ vdd gnd NAND3X1
X_1471_ _871_ _872_ vdd gnd INVX1
X_2256_ _417_ _423_ _124__bF$buf1 _611_ vdd gnd MUX2X1
X_1947_ mem_ibus_ack_bF$buf0 \u_mem_serial.shift_reg\[13] _136_ vdd gnd NAND2X1
X_1527_ _926_ _906_ _927_ vdd gnd AND2X2
X_1280_ _468_ _467_ vdd gnd INVX1
X_2485_ _762_ i_clk_fast_bF$buf1 \u_rf_if.last_req_key\[0] vdd gnd DFFPOSX1
X_2065_ mem_ibus_ack_bF$buf5 \u_cpu.branch_op\ _215_ _216_ vdd gnd OAI21X1
X_1756_ _590_ _1094_ _1095_ vdd gnd NOR2X1
X_1336_ _424_ _423_ _474_ _422_ vdd gnd MUX2X1
X_2294_ _641_ i_clk_sys_ext_bF$buf11 \u_cpu.bufreg2.dhi\[4] vdd gnd DFFPOSX1
X_1985_ _157_ _158_ vdd gnd INVX1
X_1565_ \u_rf_if.stream_active_bF$buf3\ _956_ _957_ vdd gnd NAND2X1
X_1145_ _595_ _596_ mem_ibus_ack_bF$buf1 _859_ vdd gnd MUX2X1
X_1794_ \u_cpu.bufreg2.i_bytecnt\[1] _567_ _1130_ vdd gnd NOR2X1
X_1374_ \u_mem_serial.shift_reg\[25] _459__bF$buf4 _390_ vdd gnd NOR2X1
X_2159_ _272_ _257_ _23__bF$buf1 _649_ vdd gnd MUX2X1
X_1183_ _558_ _557_ vdd gnd INVX2
X_2388_ _686_ i_clk_sys_ext_bF$buf3 rf_read_reg0_to_if[4] vdd gnd DFFPOSX1
XFILL95550x68550 gnd vdd FILL
X_1659_ _1027_ _1022_ _586__bF$buf3 _776_ vdd gnd MUX2X1
X_1239_ \u_mem_serial.bit_count\[3] _503_ vdd gnd INVX1
X_2197_ _546_ _545_ _301_ vdd gnd NOR2X1
X_1888_ _84_ _81_ _85_ vdd gnd AND2X2
X_1468_ \u_rf_if.tx_state\[4] _869_ vdd gnd INVX1
X_1697_ _1045_ _1053_ vdd gnd INVX1
X_1277_ \u_mem_serial.bit_count\[0] \u_mem_serial.bit_count\[1] _470_ vdd gnd NOR2X1
X_2503_ _776_ i_clk_sys_ext_bF$buf0 \u_rf_if.read_buf0\[27] vdd gnd DFFPOSX1
X_2312_ _850_ i_clk_sys_ext_bF$buf12 \u_rf_if.stream_active\ vdd gnd DFFPOSX1
X_2541_ _634_ i_clk_sys_ext_bF$buf11 \u_cpu.bufreg2.cnt_next\[6] vdd gnd DFFPOSX1
X_2121_ \u_cpu.bufreg.data\[12] _251_ vdd gnd INVX1
X_1812_ _3_ _7_ _8_ _9_ vdd gnd OAI21X1
X_2350_ _660_ i_clk_sys_ext_bF$buf4 \u_cpu.bufreg.data\[7] vdd gnd DFFPOSX1
X_1621_ \u_rf_if.stream_active_bF$buf6\ _998_ _999_ vdd gnd NAND2X1
X_1201_ \u_cpu.bufreg2.dhi\[5] _539_ vdd gnd INVX1
X_2406_ _704_ i_clk_sys_ext_bF$buf1 \u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20\[3] vdd gnd DFFPOSX1
X_1850_ _40_ _45_ _47_ vdd gnd NAND2X1
X_1430_ \u_mem_serial.shift_reg\[11] _489__bF$buf2 _459__bF$buf3 _351_ vdd gnd NAND3X1
X_2215_ \u_cpu.bufreg2.cnt_next\[6] _284_ _314_ vdd gnd NOR2X1
X_1906_ _101_ _96_ _1054_ _102_ vdd gnd AOI21X1
X_2444_ _1070_[0] i_clk_sys_ext_bF$buf9 \u_cpu.state.o_cnt\[2] vdd gnd DFFPOSX1
X_2024_ _185_ _186_ _181_ _698_ vdd gnd MUX2X1
X_1715_ _521_ _936_ _1063_ _756_ vdd gnd AOI21X1
X_2253_ _399_ _405_ _124__bF$buf0 _614_ vdd gnd MUX2X1
X_1944_ _523_ _133_ _130_ _134_ vdd gnd AOI21X1
X_1524_ \u_rf_if.last_req_key\[0] _921_ _924_ vdd gnd NAND2X1
X_2309_ _820_ i_clk_fast_bF$buf0 \u_mem_serial.shift_reg\[10] vdd gnd DFFPOSX1
X_2482_ _761_ i_clk_fast_bF$buf1 \u_rf_if.last_req_key\[1] vdd gnd DFFPOSX1
X_2062_ mem_ibus_ack_bF$buf5 _482_ _213_ _687_ vdd gnd AOI21X1
X_1753_ \u_rf_if.issue_chunk\[1] _810_ _1088_ _1093_ vdd gnd OAI21X1
X_1333_ _432_ _489__bF$buf3 _425_ vdd gnd NAND2X1
X_2538_ _803_ i_clk_sys_ext_bF$buf9 \u_rf_if.read_buf0\[0] vdd gnd DFFPOSX1
X_2118_ _248_ _249_ _23__bF$buf2 _667_ vdd gnd MUX2X1
X_2291_ _720_ i_clk_sys_ext_bF$buf3 \u_cpu.decode.opcode\[0] vdd gnd DFFPOSX1
X_1809_ _1124_ _5_ _1120_ _6_ vdd gnd OAI21X1
X_1982_ _1049_ _907_ _1102_ _709_ vdd gnd AOI21X1
X_1562_ \u_rf_if.stream_active_bF$buf4\ \u_rf_if.read_buf0\[5] _954_ _955_ vdd gnd OAI21X1
X_1142_ _0_ o_mem_mosi vdd gnd BUFX2
X_2347_ _843_ i_clk_fast_bF$buf7 \u_mem_serial.shift_reg\[17] vdd gnd DFFPOSX1
X_1618_ \u_rf_if.stream_active_bF$buf6\ \u_rf_if.read_buf0\[19] _996_ _997_ vdd gnd OAI21X1
X_1791_ _1128_ _569_ _1070_[0] vdd gnd NOR2X1
X_1371_ _394_ _393_ _474_ _392_ vdd gnd MUX2X1
X_2156_ _262_ _267_ _24_ _650_ vdd gnd AOI21X1
X_1847_ _28_ _43_ _44_ vdd gnd OR2X2
X_1427_ \u_mem_serial.shift_reg\[10] _489__bF$buf2 _459__bF$buf3 _353_ vdd gnd NAND3X1
X_1180_ \u_cpu.state.cnt_r\[0] \u_cpu.state.cnt_r\[1] _560_ vdd gnd OR2X2
X_2385_ _683_ i_clk_sys_ext_bF$buf3 rf_read_reg1_to_if[4] vdd gnd DFFPOSX1
X_1656_ \u_rf_if.read_buf0\[28] _1025_ vdd gnd INVX1
X_1236_ _507_ _506_ vdd gnd INVX1
X_2194_ _295_ _547_ _283_ _299_ vdd gnd OAI21X1
X_1885_ _594_ _945_ _67_ _82_ vdd gnd OAI21X1
X_1465_ \u_rf_if.tx_state\[1] _866_ vdd gnd INVX1
X_1694_ _1048_ _1050_ _764_ vdd gnd NOR2X1
X_1274_ _475_ _472_ _477_ _854_ vdd gnd OAI21X1
X_2479_ _626_ i_clk_sys_ext_bF$buf5 \u_cpu.ctrl.o_ibus_adr\[19] vdd gnd DFFPOSX1
X_2059_ mem_ibus_ack_bF$buf1 \u_mem_serial.shift_reg\[7] _204_ rf_wreg0_to_if[0] _212_ vdd 
+ gnd
+ AOI22X1
X_2288_ _811_ i_clk_fast_bF$buf4 \u_mem_serial.bit_count\[5] vdd gnd DFFPOSX1
X_1979_ mem_ibus_ack_bF$buf5 _41_ _154_ _711_ vdd gnd OAI21X1
X_1559_ _585_ _952_ _949_ _801_ vdd gnd OAI21X1
X_1139_ _1111_ o_rf_mosi vdd gnd BUFX2
X_2500_ _773_ i_clk_sys_ext_bF$buf11 raddr[0] vdd gnd DFFPOSX1
X_2097_ \u_cpu.bufreg.data\[24] _239_ vdd gnd INVX1
X_1788_ _1123_ _1126_ \u_rf_if.wdata0_next_phase\ _1127_ vdd gnd OAI21X1
X_1368_ _402_ _489__bF$buf4 _395_ vdd gnd NAND2X1
XFILL95550x54150 gnd vdd FILL
X_1597_ \u_rf_if.stream_active_bF$buf5\ _980_ _981_ vdd gnd NAND2X1
X_1177_ _574_ _564_ _563_ vdd gnd NOR2X1
X_2403_ _701_ i_clk_sys_ext_bF$buf7 \u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20\[0] vdd gnd DFFPOSX1
X_2212_ _313_ _306_ _284_ _637_ vdd gnd MUX2X1
X_1903_ \u_rf_if.tx_state\[0] _895_ _1043_ _99_ vdd gnd OAI21X1
X_2441_ _731_ i_clk_sys_ext_bF$buf10 \u_cpu.state.cnt_r\[0] vdd gnd DFFPOSX1
X_2021_ _183_ _184_ _181_ _699_ vdd gnd MUX2X1
X_1712_ \u_rf_if.last_req_key\[5] _936_ i_rst_n_bF$buf3 _1062_ vdd gnd OAI21X1
X_2250_ _331_ _387_ _124__bF$buf0 _617_ vdd gnd MUX2X1
X_1941_ \u_cpu.immdec.gen_immdec_w_eq_1.imm11_7\[4] rf_wreg0_to_if[1] _131_ vdd gnd NOR2X1
X_1521_ \u_rf_if.o_waddr\[0] ren _920_ _921_ vdd gnd OAI21X1
X_2306_ _733_ i_clk_sys_ext_bF$buf10 \u_rf_if.issue_idx\[5] vdd gnd DFFPOSX1
X_1750_ _1084_ _1090_ _1089_ _747_ vdd gnd AOI21X1
X_1330_ _489__bF$buf3 _428_ _431_ _427_ vdd gnd OAI21X1
X_2535_ _800_ i_clk_sys_ext_bF$buf11 \u_rf_if.read_buf0\[3] vdd gnd DFFPOSX1
X_2115_ \u_cpu.bufreg.data\[15] _248_ vdd gnd INVX1
X_1806_ \u_rf_if.wdata0_r\[0] _3_ vdd gnd INVX1
X_2344_ _840_ i_clk_fast_bF$buf7 \u_mem_serial.shift_reg\[20] vdd gnd DFFPOSX1
X_1615_ _994_ _989_ _586__bF$buf1 _787_ vdd gnd MUX2X1
X_2153_ _267_ _268_ _269_ vdd gnd AND2X2
X_1844_ \u_cpu.decode.co_ebreak\ _41_ vdd gnd INVX1
X_1424_ \u_mem_serial.shift_reg\[9] _489__bF$buf2 _459__bF$buf1 _355_ vdd gnd NAND3X1
X_2209_ _557_ _281_ _311_ _312_ vdd gnd OAI21X1
X_2382_ _680_ i_clk_sys_ext_bF$buf2 \u_cpu.bufreg.data\[27] vdd gnd DFFPOSX1
X_1653_ \u_rf_if.stream_active_bF$buf1\ _1022_ _1023_ vdd gnd NAND2X1
X_1233_ \u_rf_if.stream_active_bF$buf1\ _509_ _584_ _858_ vdd gnd OAI21X1
X_2438_ \u_cpu.state.cnt_r\[2] i_clk_sys_ext_bF$buf9 \u_cpu.state.cnt_r\[3] vdd gnd DFFPOSX1
X_2018_ _179_ _182_ _181_ _700_ vdd gnd MUX2X1
X_2191_ _544_ _296_ vdd gnd INVX1
X_1709_ _891_ _935_ _1060_ _759_ vdd gnd AOI21X1
X_1882_ _78_ _67_ _79_ vdd gnd NOR2X1
X_1462_ raddr[7] _810_ _864_ vdd gnd NOR2X1
X_2247_ _329_ _330_ _124__bF$buf2 _619_ vdd gnd MUX2X1
X_1938_ \u_cpu.decode.opcode\[0] _1108_ _128_ vdd gnd NOR2X1
X_1518_ \u_rf_if.last_req_key\[0] _918_ vdd gnd INVX1
X_1691_ _1047_ _1048_ vdd gnd INVX1
X_1271_ i_rst_n_bF$buf0 \u_cpu.state.ibus_cyc\ _474_ vdd gnd NAND2X1
X_2476_ _758_ i_clk_fast_bF$buf0 \u_rf_if.last_req_key\[4] vdd gnd DFFPOSX1
X_2056_ rf_wreg0_to_if[1] _204_ _210_ vdd gnd NAND2X1
XFILL95250x32550 gnd vdd FILL
X_1747_ _1085_ _1087_ _1088_ vdd gnd NAND2X1
X_1327_ \u_cpu.bufreg.data\[3] _430_ vdd gnd INVX1
X_2285_ _809_ i_clk_sys_ext_bF$buf7 raddr[7] vdd gnd DFFPOSX1
X_1976_ mem_ibus_ack_bF$buf5 _580_ _152_ _712_ vdd gnd OAI21X1
X_1556_ \u_rf_if.read_buf0\[4] _950_ vdd gnd INVX1
X_2094_ _236_ _237_ _23__bF$buf0 _679_ vdd gnd MUX2X1
X_1785_ _1071_ _1123_ _1124_ vdd gnd NOR2X1
X_1365_ _489__bF$buf4 _398_ _401_ _397_ vdd gnd OAI21X1
XFILL95550x75750 gnd vdd FILL
X_1594_ \u_rf_if.stream_active_bF$buf0\ \u_rf_if.read_buf0\[13] _978_ _979_ vdd gnd OAI21X1
X_1174_ _567_ _566_ vdd gnd INVX1
X_2379_ _677_ i_clk_sys_ext_bF$buf2 \u_cpu.bufreg.data\[24] vdd gnd DFFPOSX1
X_2188_ _282_ _292_ _293_ _294_ vdd gnd OAI21X1
X_1879_ _75_ _76_ vdd gnd INVX1
X_1459_ \u_rf_if.prefetch_active\ _862_ vdd gnd INVX2
X_2400_ _698_ i_clk_sys_ext_bF$buf1 \u_cpu.immdec.gen_immdec_w_eq_1.imm30_25\[2] vdd gnd DFFPOSX1
X_1688_ _1044_ _942_ _1045_ vdd gnd NAND2X1
X_1268_ _478_ _480_ \u_mem_serial.req_pending\ _477_ vdd gnd OAI21X1
X_1900_ _868_ _884_ _96_ vdd gnd NAND2X1
X_1497_ _520_ raddr[1] _897_ vdd gnd OR2X2
X_2303_ _737_ i_clk_sys_ext_bF$buf6 \u_rf_if.wdata0_next_phase\ vdd gnd DFFPOSX1
X_2532_ \u_cpu.state.cnt_r\[0] i_clk_sys_ext_bF$buf9 \u_cpu.state.cnt_r\[1] vdd gnd DFFPOSX1
X_2112_ _245_ _246_ _23__bF$buf2 _670_ vdd gnd MUX2X1
X_1803_ _1043_ _1135_ _1136_ _1114_ vdd gnd NAND3X1
X_2341_ _837_ i_clk_fast_bF$buf7 \u_mem_serial.shift_reg\[23] vdd gnd DFFPOSX1
X_1612_ \u_rf_if.read_buf0\[17] _992_ vdd gnd INVX1
X_2150_ _262_ _265_ _266_ vdd gnd NAND2X1
XCLKBUF1_insert20 i_clk_sys_ext i_clk_sys_ext_bF$buf2 vdd gnd CLKBUF1
XCLKBUF1_insert21 i_clk_sys_ext i_clk_sys_ext_bF$buf1 vdd gnd CLKBUF1
XCLKBUF1_insert22 i_clk_sys_ext i_clk_sys_ext_bF$buf0 vdd gnd CLKBUF1
XCLKBUF1_insert23 i_clk_fast i_clk_fast_bF$buf7 vdd gnd CLKBUF1
XCLKBUF1_insert24 i_clk_fast i_clk_fast_bF$buf6 vdd gnd CLKBUF1
XCLKBUF1_insert25 i_clk_fast i_clk_fast_bF$buf5 vdd gnd CLKBUF1
XCLKBUF1_insert26 i_clk_fast i_clk_fast_bF$buf4 vdd gnd CLKBUF1
XCLKBUF1_insert27 i_clk_fast i_clk_fast_bF$buf3 vdd gnd CLKBUF1
XCLKBUF1_insert28 i_clk_fast i_clk_fast_bF$buf2 vdd gnd CLKBUF1
XCLKBUF1_insert29 i_clk_fast i_clk_fast_bF$buf1 vdd gnd CLKBUF1
X_1841_ _13_ _37_ _38_ vdd gnd AND2X2
X_1421_ \u_mem_serial.shift_reg\[8] _489__bF$buf2 _459__bF$buf1 _357_ vdd gnd NAND3X1
X_2206_ _545_ _308_ _547_ _309_ vdd gnd OAI21X1
X_1650_ \u_rf_if.stream_active_bF$buf2\ \u_rf_if.read_buf0\[27] _1020_ _1021_ vdd gnd OAI21X1
X_1230_ \u_rf_if.shift_rx\[1] _511_ vdd gnd INVX1
X_2435_ _729_ i_clk_sys_ext_bF$buf10 \u_cpu.state.init_done\ vdd gnd DFFPOSX1
X_2015_ _43_ _138_ _180_ vdd gnd NAND2X1
X_1706_ _913_ _935_ i_rst_n_bF$buf1 _1059_ vdd gnd OAI21X1
X_2244_ \u_cpu.ctrl.o_ibus_adr\[13] _329_ vdd gnd INVX1
X_1935_ _123_ _125_ _126_ _728_ vdd gnd OAI21X1
X_1515_ \u_rf_if.last_req_key\[2] _912_ _915_ vdd gnd NAND2X1
X_2473_ _623_ i_clk_sys_ext_bF$buf13 \u_cpu.ctrl.o_ibus_adr\[16] vdd gnd DFFPOSX1
X_2053_ rf_wreg0_to_if[2] _204_ _208_ vdd gnd NAND2X1
X_1744_ \u_rf_if.write_wait\[1] \u_rf_if.write_wait\[0] _1085_ vdd gnd NOR2X1
X_1324_ _433_ _438_ _459__bF$buf4 _843_ vdd gnd MUX2X1
X_2529_ _795_ i_clk_sys_ext_bF$buf12 \u_rf_if.read_buf0\[8] vdd gnd DFFPOSX1
X_2109_ \u_cpu.bufreg.data\[18] _245_ vdd gnd INVX1
X_2282_ _807_ i_clk_fast_bF$buf1 \u_rf_if.last_req_key\[9] vdd gnd DFFPOSX1
X_1973_ _151_ _150_ _714_ vdd gnd NOR2X1
XFILL94950x3750 gnd vdd FILL
X_1553_ \u_rf_if.read_buf0\[1] _586__bF$buf4 _948_ vdd gnd NOR2X1
X_2338_ _651_ i_clk_sys_ext_bF$buf9 \u_cpu.state.i_ctrl_misalign\ vdd gnd DFFPOSX1
X_2091_ \u_cpu.bufreg.data\[27] _236_ vdd gnd INVX1
X_1609_ \u_rf_if.stream_active_bF$buf6\ _989_ _990_ vdd gnd NAND2X1
X_1782_ \u_rf_if.o_waddr\[1] \u_rf_if.o_waddr\[0] _1121_ vdd gnd NOR2X1
X_1362_ \u_cpu.bufreg.data\[8] _400_ vdd gnd INVX1
X_2147_ \u_cpu.bufreg.c_r\ _263_ vdd gnd INVX1
X_1838_ _34_ _565_ _35_ vdd gnd NAND2X1
X_1418_ \u_mem_serial.shift_reg\[7] _489__bF$buf2 _459__bF$buf1 _359_ vdd gnd NAND3X1
X_1591_ _976_ _971_ _586__bF$buf1 _793_ vdd gnd MUX2X1
X_1171_ _571_ _570_ _569_ vdd gnd NOR2X1
X_2376_ _674_ i_clk_sys_ext_bF$buf2 \u_cpu.bufreg.data\[21] vdd gnd DFFPOSX1
X_1647_ _1018_ _1013_ _586__bF$buf0 _779_ vdd gnd MUX2X1
X_1227_ _520_ rf_wreg0_to_if[3] _514_ vdd gnd AND2X2
X_2185_ _541_ _290_ _547_ _291_ vdd gnd OAI21X1
X_1876_ _72_ _66_ _73_ vdd gnd OR2X2
X_1456_ \u_mem_serial.bit_count\[5] _860_ vdd gnd INVX1
X_1685_ _942_ _868_ _1043_ vdd gnd NOR2X1
X_1265_ _481_ _480_ vdd gnd INVX1
X_1494_ _891_ _893_ _894_ vdd gnd NOR2X1
X_2279_ _557_ _118_ _341_ _598_ vdd gnd OAI21X1
XBUFX2_insert0 _124_ _124__bF$buf4 vdd gnd BUFX2
XBUFX2_insert1 _124_ _124__bF$buf3 vdd gnd BUFX2
XBUFX2_insert2 _124_ _124__bF$buf2 vdd gnd BUFX2
XBUFX2_insert3 _124_ _124__bF$buf1 vdd gnd BUFX2
XBUFX2_insert4 _124_ _124__bF$buf0 vdd gnd BUFX2
XBUFX2_insert5 i_rst_n i_rst_n_bF$buf3 vdd gnd BUFX2
XBUFX2_insert6 i_rst_n i_rst_n_bF$buf2 vdd gnd BUFX2
XBUFX2_insert7 i_rst_n i_rst_n_bF$buf1 vdd gnd BUFX2
XBUFX2_insert8 i_rst_n i_rst_n_bF$buf0 vdd gnd BUFX2
X_2088_ \u_cpu.bufreg.data\[28] _234_ vdd gnd INVX1
XFILL95550x61350 gnd vdd FILL
XFILL95550x28950 gnd vdd FILL
X_1779_ _577_ \u_cpu.decode.opcode\[2] _1118_ vdd gnd AND2X2
X_1359_ _403_ _408_ _459__bF$buf0 _838_ vdd gnd MUX2X1
X_2300_ _600_ i_clk_sys_ext_bF$buf13 \u_cpu.ctrl.o_ibus_adr\[31] vdd gnd DFFPOSX1
X_1588_ \u_rf_if.read_buf0\[11] _974_ vdd gnd INVX1
X_1168_ \u_cpu.bufreg2.i_bytecnt\[0] _572_ vdd gnd INVX1
X_1800_ ren _868_ _1134_ vdd gnd NAND2X1
X_1397_ \u_mem_serial.shift_reg\[0] _489__bF$buf5 _459__bF$buf4 _373_ vdd gnd NAND3X1
X_2203_ \u_cpu.bufreg.i_shamt\[0] _306_ vdd gnd INVX1
X_2432_ _607_ i_clk_sys_ext_bF$buf10 \u_cpu.ctrl.pc\ vdd gnd DFFPOSX1
X_2012_ _177_ _161_ _178_ vdd gnd NOR2X1
X_1703_ _898_ _1057_ vdd gnd INVX1
X_2241_ _326_ _327_ _124__bF$buf2 _622_ vdd gnd MUX2X1
X_1932_ _557_ _550_ _124_ vdd gnd NOR2X1
X_1512_ \u_rf_if.o_waddr\[2] ren _911_ _912_ vdd gnd OAI21X1
X_2470_ _755_ i_clk_fast_bF$buf0 \u_rf_if.last_req_key\[7] vdd gnd DFFPOSX1
X_2050_ rf_wreg0_to_if[3] _204_ _206_ vdd gnd NAND2X1
X_1741_ \u_rf_if.o_waddr\[2] _1079_ _526_ _1083_ vdd gnd OAI21X1
X_1321_ \u_cpu.ctrl.o_ibus_adr\[2] _435_ vdd gnd INVX1
X_2526_ _792_ i_clk_sys_ext_bF$buf5 \u_rf_if.read_buf0\[11] vdd gnd DFFPOSX1
X_2106_ _242_ _243_ _23__bF$buf3 _673_ vdd gnd MUX2X1
X_1970_ _456_ _144_ _149_ _715_ vdd gnd OAI21X1
X_1550_ \u_rf_if.read_buf0\[1] \u_rf_if.read_buf0\[2] \u_rf_if.stream_active_bF$buf6\ _946_ vdd gnd MUX2X1
X_2335_ _659_ i_clk_sys_ext_bF$buf2 \u_cpu.bufreg.data\[6] vdd gnd DFFPOSX1
X_1606_ \u_rf_if.stream_active_bF$buf5\ \u_rf_if.read_buf0\[16] _987_ _988_ vdd gnd OAI21X1
X_2144_ \u_cpu.decode.opcode\[0] _26_ _259_ _260_ vdd gnd OAI21X1
X_1835_ _31_ _32_ vdd gnd INVX1
X_1415_ \u_mem_serial.shift_reg\[6] _489__bF$buf5 _459__bF$buf6 _361_ vdd gnd NAND3X1
X_2373_ _1097_[2] i_clk_sys_ext_bF$buf9 \u_cpu.bufreg2.i_bytecnt\[1] vdd gnd DFFPOSX1
X_1644_ \u_rf_if.read_buf0\[25] _1016_ vdd gnd INVX1
X_1224_ _521_ _518_ _517_ vdd gnd AND2X2
X_2429_ _724_ i_clk_sys_ext_bF$buf10 \u_cpu.bne_or_bge\ vdd gnd DFFPOSX1
X_2009_ _173_ _161_ _175_ _702_ vdd gnd AOI21X1
X_2182_ _282_ _288_ _287_ _642_ vdd gnd OAI21X1
X_1873_ \u_cpu.branch_op\ _1117_ _70_ vdd gnd NOR2X1
X_1453_ \u_mem_serial.bit_count\[4] _741_ _855_ vdd gnd NOR2X1
X_2238_ \u_cpu.ctrl.o_ibus_adr\[16] _326_ vdd gnd INVX1
X_1929_ _105_ _565_ _122_ _730_ vdd gnd OAI21X1
X_1509_ \u_rf_if.last_req_key\[2] _909_ vdd gnd INVX1
X_1682_ _1040_ _810_ _1041_ _767_ vdd gnd AOI21X1
X_1262_ \u_mem_serial.shift_reg\[31] _482_ vdd gnd INVX1
X_2467_ _620_ i_clk_sys_ext_bF$buf8 \u_cpu.ctrl.o_ibus_adr\[13] vdd gnd DFFPOSX1
X_2047_ _202_ _203_ vdd gnd INVX1
X_1738_ \u_rf_if.o_waddr\[1] _1080_ _526_ _1081_ vdd gnd OAI21X1
X_1318_ \u_mem_serial.shift_reg\[17] _438_ vdd gnd INVX1
X_1491_ \u_rf_if.last_req_key\[3] _891_ vdd gnd INVX1
X_2276_ _336_ _124__bF$buf3 _340_ _339_ _600_ vdd 
+ gnd
+ OAI22X1
X_1967_ _451_ _147_ vdd gnd INVX1
X_1547_ \u_rf_if.tx_state\[4] _943_ _944_ vdd gnd NAND2X1
X_2085_ mem_ibus_ack_bF$buf2 \u_mem_serial.shift_reg\[11] _203_ _230_ _232_ vdd 
+ gnd
+ AOI22X1
X_1776_ \u_cpu.bufreg.i_sh_signed\ _1115_ vdd gnd INVX1
X_1356_ \u_cpu.ctrl.o_ibus_adr\[7] _405_ vdd gnd INVX1
XFILL95550x82950 gnd vdd FILL
X_1585_ \u_rf_if.stream_active_bF$buf5\ _971_ _972_ vdd gnd NAND2X1
X_1165_ _578_ _576_ \u_cpu.decode.opcode\[2] _575_ vdd gnd OAI21X1
X_1394_ \u_mem_serial.shift_reg\[30] _459__bF$buf3 _375_ vdd gnd NOR2X1
X_2179_ _569_ _280_ _548_ _286_ vdd gnd NAND3X1
X_1679_ _596_ _810_ _1039_ _768_ vdd gnd AOI21X1
X_1259_ _506_ _484_ _582_ _491_ _857_ vdd 
+ gnd
+ OAI22X1
X_2200_ _295_ _547_ _282_ _304_ vdd gnd OAI21X1
X_1488_ _515_ \u_rf_if.last_req_key\[5] _888_ vdd gnd OR2X2
XFILL95550x14550 gnd vdd FILL
X_1700_ _922_ _935_ i_rst_n_bF$buf2 _1055_ vdd gnd OAI21X1
X_1297_ _453_ _452_ vdd gnd INVX1
X_2523_ _789_ i_clk_sys_ext_bF$buf12 \u_rf_if.read_buf0\[14] vdd gnd DFFPOSX1
X_2103_ \u_cpu.bufreg.data\[21] _242_ vdd gnd INVX1
X_2332_ _832_ i_clk_fast_bF$buf3 \u_mem_serial.shift_reg\[28] vdd gnd DFFPOSX1
X_1603_ _985_ _980_ _586__bF$buf1 _790_ vdd gnd MUX2X1
X_2141_ _256_ _235_ _23__bF$buf1 _652_ vdd gnd MUX2X1
X_1832_ \u_cpu.bufreg2.i_op_b_sel\ _28_ _29_ vdd gnd NAND2X1
X_1412_ \u_mem_serial.shift_reg\[5] _489__bF$buf5 _459__bF$buf6 _363_ vdd gnd NAND3X1
XBUFX2_insert50 _489_ _489__bF$buf3 vdd gnd BUFX2
XBUFX2_insert51 _489_ _489__bF$buf2 vdd gnd BUFX2
XBUFX2_insert52 _489_ _489__bF$buf1 vdd gnd BUFX2
XBUFX2_insert53 _489_ _489__bF$buf0 vdd gnd BUFX2
XBUFX2_insert54 _459_ _459__bF$buf6 vdd gnd BUFX2
XBUFX2_insert55 _459_ _459__bF$buf5 vdd gnd BUFX2
XBUFX2_insert56 _459_ _459__bF$buf4 vdd gnd BUFX2
XBUFX2_insert57 _459_ _459__bF$buf3 vdd gnd BUFX2
XBUFX2_insert58 _459_ _459__bF$buf2 vdd gnd BUFX2
XBUFX2_insert59 _459_ _459__bF$buf1 vdd gnd BUFX2
X_2370_ _669_ i_clk_sys_ext_bF$buf13 \u_cpu.bufreg.data\[16] vdd gnd DFFPOSX1
X_1641_ \u_rf_if.stream_active_bF$buf2\ _1013_ _1014_ vdd gnd NAND2X1
X_1221_ ren _520_ vdd gnd INVX2
X_2426_ _721_ i_clk_sys_ext_bF$buf3 \u_cpu.decode.opcode\[1] vdd gnd DFFPOSX1
X_2006_ \u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20\[1] _173_ vdd gnd INVX1
X_1870_ _1108_ _36_ _67_ vdd gnd NAND2X1
X_1450_ _503_ _348_ _735_ _813_ vdd gnd OAI21X1
X_2235_ _323_ _324_ _124__bF$buf3 _625_ vdd gnd MUX2X1
X_1926_ _118_ \u_cpu.bne_or_bge\ _120_ vdd gnd OR2X2
X_1506_ _904_ _905_ _903_ _906_ vdd gnd AOI21X1
X_2464_ _752_ i_clk_sys_ext_bF$buf7 \u_rf_if.rcnt\[0] vdd gnd DFFPOSX1
X_2044_ _200_ _193_ _201_ vdd gnd NOR2X1
X_1735_ \u_rf_if.o_waddr\[1] _1078_ vdd gnd INVX1
X_1315_ \u_mem_serial.shift_reg\[16] _440_ vdd gnd INVX1
X_2273_ _338_ _125_ _601_ vdd gnd NOR2X1
XFILL95550x7350 gnd vdd FILL
X_1964_ _455_ _454_ _145_ vdd gnd NAND2X1
X_1544_ i_rst_n_bF$buf0 _941_ vdd gnd INVX1
X_2329_ _656_ i_clk_sys_ext_bF$buf4 \u_cpu.bufreg.data\[3] vdd gnd DFFPOSX1
X_2082_ mem_ibus_ack_bF$buf2 _189_ _230_ vdd gnd NOR2X1
X_1773_ _583_ _525_ \u_rf_if.wen0_r\ _1106_ vdd gnd OAI21X1
X_1353_ \u_mem_serial.shift_reg\[22] _408_ vdd gnd INVX1
X_2138_ \u_cpu.bufreg.data\[30] _256_ vdd gnd INVX1
X_1829_ \u_cpu.decode.opcode\[1] _26_ vdd gnd INVX1
X_1409_ \u_mem_serial.shift_reg\[4] _489__bF$buf5 _459__bF$buf6 _365_ vdd gnd NAND3X1
X_1582_ \u_rf_if.stream_active_bF$buf3\ \u_rf_if.read_buf0\[10] _969_ _970_ vdd gnd OAI21X1
X_1162_ _580_ _579_ _578_ vdd gnd NOR2X1
X_2367_ _858_ i_clk_sys_ext_bF$buf0 \u_rf_if.read_buf0\[31] vdd gnd DFFPOSX1
X_1638_ \u_rf_if.stream_active_bF$buf2\ \u_rf_if.read_buf0\[24] _1011_ _1012_ vdd gnd OAI21X1
X_1218_ rf_wreg0_to_if[2] _523_ vdd gnd INVX1
X_1391_ \u_mem_serial.shift_reg\[29] _459__bF$buf2 _377_ vdd gnd NOR2X1
X_2176_ _552_ _548_ _283_ _284_ vdd gnd OAI21X1
X_1867_ \u_cpu.alu.add_cy_r\ _64_ vdd gnd INVX1
X_1447_ _719_ _732_ vdd gnd INVX1
X_1676_ raddr[4] _810_ _1038_ vdd gnd NOR2X1
X_1256_ _487_ _486_ vdd gnd INVX1
X_1485_ _884_ \u_rf_if.last_req_key\[4] _885_ vdd gnd OR2X2
X_1294_ \u_rf_if.stream_cnt\[0] _455_ vdd gnd INVX1
X_2499_ _772_ i_clk_sys_ext_bF$buf11 raddr[1] vdd gnd DFFPOSX1
X_2079_ mem_ibus_ack_bF$buf0 \u_mem_serial.shift_reg\[30] _181_ _228_ vdd gnd AOI21X1
X_1999_ mem_ibus_ack_bF$buf1 _1101_ _152_ _168_ vdd gnd OAI21X1
X_1579_ _967_ _962_ _586__bF$buf0 _796_ vdd gnd MUX2X1
X_1159_ \u_cpu.state.init_done\ _581_ vdd gnd INVX1
X_2520_ \u_cpu.state.cnt_r\[1] i_clk_sys_ext_bF$buf9 \u_cpu.state.cnt_r\[2] vdd gnd DFFPOSX1
X_2100_ _239_ _240_ _23__bF$buf3 _676_ vdd gnd MUX2X1
X_1388_ \u_mem_serial.shift_reg\[28] _459__bF$buf2 _379_ vdd gnd NOR2X1
XFILL94650x93750 gnd vdd FILL
X_1600_ \u_rf_if.read_buf0\[14] _983_ vdd gnd INVX1
X_1197_ \u_cpu.bufreg2.dhi\[3] _544_ _543_ vdd gnd NOR2X1
X_2423_ _717_ i_clk_sys_ext_bF$buf5 \u_rf_if.stream_cnt\[0] vdd gnd DFFPOSX1
X_2003_ mem_ibus_ack_bF$buf1 _167_ _136_ _171_ vdd gnd OAI21X1
X_2232_ \u_cpu.ctrl.o_ibus_adr\[19] _323_ vdd gnd INVX1
X_1923_ _116_ _115_ _117_ vdd gnd NAND2X1
X_1503_ \u_rf_if.last_req_key\[1] _898_ _902_ _903_ vdd gnd OAI21X1
X_2461_ _618_ i_clk_sys_ext_bF$buf8 \u_cpu.ctrl.o_ibus_adr\[11] vdd gnd DFFPOSX1
X_2041_ _197_ _198_ _193_ _693_ vdd gnd MUX2X1
X_1732_ \u_rf_if.o_waddr\[0] _1074_ _1076_ vdd gnd NAND2X1
X_1312_ \u_mem_serial.shift_reg\[14] _489__bF$buf1 _443_ \u_cpu.ctrl.pc\ _442_ vdd 
+ gnd
+ AOI22X1
X_2517_ _786_ i_clk_sys_ext_bF$buf9 \u_rf_if.read_buf0\[17] vdd gnd DFFPOSX1
X_2270_ _337_ _334_ _124__bF$buf4 _603_ vdd gnd MUX2X1
X_1961_ _140_ _141_ _143_ _718_ vdd gnd NAND3X1
X_1541_ _938_ _939_ vdd gnd INVX1
X_2326_ _655_ i_clk_sys_ext_bF$buf4 \u_cpu.bufreg.data\[2] vdd gnd DFFPOSX1
X_1770_ _879_ _1104_ _1113_ _1105_ vdd gnd OAI21X1
X_1350_ _412_ _411_ _474_ _410_ vdd gnd MUX2X1
X_2135_ _560_ _16_ _550_ _254_ vdd gnd NAND3X1
X_1826_ _20_ _22_ _23_ vdd gnd NAND2X1
X_1406_ \u_mem_serial.shift_reg\[3] _489__bF$buf5 _459__bF$buf6 _367_ vdd gnd NAND3X1
X_2364_ _854_ i_clk_fast_bF$buf6 \u_mem_serial.req_pending\ vdd gnd DFFPOSX1
X_1635_ _1009_ _1004_ _586__bF$buf3 _782_ vdd gnd MUX2X1
X_1215_ _582_ _526_ _525_ vdd gnd NAND2X1
X_2173_ _278_ _279_ _550_ _280_ _281_ vdd 
+ gnd
+ AOI22X1
X_1864_ _25_ _61_ vdd gnd INVX1
X_1444_ _342_ _343_ _489__bF$buf3 _597_ vdd gnd OAI21X1
X_2229_ _320_ _321_ _124__bF$buf4 _628_ vdd gnd MUX2X1
X_1673_ _862_ _592_ raddr[3] _1036_ vdd gnd OAI21X1
X_1253_ \u_mem_serial.state\[1] _490_ _489_ vdd gnd NOR2X1
X_2458_ _748_ i_clk_sys_ext_bF$buf6 \u_rf_if.o_waddr\[2] vdd gnd DFFPOSX1
X_2038_ _195_ _196_ _193_ _694_ vdd gnd MUX2X1
X_1729_ _1073_ _525_ _751_ vdd gnd NOR2X1
X_1309_ i_mem_miso _445_ _487_ _444_ vdd gnd NAND3X1
X_1482_ \u_rf_if.last_req_key\[6] _521_ _882_ vdd gnd NOR2X1
X_2267_ _336_ _335_ _124__bF$buf3 _605_ vdd gnd MUX2X1
X_1958_ \u_rf_if.stream_active_bF$buf1\ \u_rf_if.read_buf0\[31] _141_ vdd gnd NAND2X1
X_1538_ _878_ _936_ _937_ _807_ vdd gnd AOI21X1
X_1291_ _461_ _459__bF$buf5 _458_ _851_ vdd gnd OAI21X1
X_2496_ _769_ i_clk_sys_ext_bF$buf7 raddr[4] vdd gnd DFFPOSX1
X_2076_ \u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20\[0] _223_ _224_ _225_ vdd gnd OAI21X1
X_1767_ \u_rf_if.tx_state\[0] _879_ \u_rf_if.launch_pending\ _1103_ vdd gnd OAI21X1
X_1347_ _420_ _489__bF$buf4 _413_ vdd gnd NAND2X1
X_1996_ \u_mem_serial.shift_reg\[15] rf_read_reg0_to_if[1] mem_ibus_ack_bF$buf2 _166_ vdd gnd MUX2X1
X_1576_ \u_rf_if.read_buf0\[8] _965_ vdd gnd INVX1
X_1156_ \u_rf_if.read_buf0\[31] _585_ _584_ vdd gnd NAND2X1
X_1385_ \u_mem_serial.shift_reg\[27] _459__bF$buf2 _381_ vdd gnd NOR2X1
X_1194_ \u_cpu.bufreg.i_shamt\[2] _546_ vdd gnd INVX1
X_2399_ _697_ i_clk_sys_ext_bF$buf1 \u_cpu.immdec.gen_immdec_w_eq_1.imm30_25\[1] vdd gnd DFFPOSX1
X_1899_ _1048_ _93_ _94_ _95_ vdd gnd NAND3X1
X_1479_ _866_ _872_ _879_ vdd gnd NAND2X1
X_2420_ _605_ i_clk_sys_ext_bF$buf13 \u_cpu.ctrl.o_ibus_adr\[30] vdd gnd DFFPOSX1
X_2000_ _168_ _161_ _169_ vdd gnd NOR2X1
X_1288_ \u_mem_serial.bit_count\[1] _460_ vdd gnd INVX1
X_1920_ _113_ _84_ _114_ vdd gnd NAND2X1
X_1500_ ren _899_ _900_ vdd gnd NOR2X1
X_2514_ _857_ i_clk_fast_bF$buf7 mem_ibus_ack vdd gnd DFFPOSX1
X_2323_ _827_ i_clk_fast_bF$buf3 \u_mem_serial.shift_reg\[3] vdd gnd DFFPOSX1
X_2132_ _424_ _430_ _23__bF$buf4 _656_ vdd gnd MUX2X1
X_1823_ _575_ _19_ _20_ vdd gnd NAND2X1
X_1403_ \u_mem_serial.shift_reg\[2] _489__bF$buf5 _459__bF$buf6 _369_ vdd gnd NAND3X1
X_2361_ _852_ i_clk_fast_bF$buf4 \u_mem_serial.bit_count\[6] vdd gnd DFFPOSX1
X_1632_ \u_rf_if.read_buf0\[22] _1007_ vdd gnd INVX1
X_1212_ \u_cpu.branch_op\ _529_ _563_ _528_ vdd gnd OAI21X1
X_2417_ _714_ i_clk_sys_ext_bF$buf12 \u_rf_if.stream_cnt\[3] vdd gnd DFFPOSX1
X_2170_ \u_cpu.bufreg2.i_bytecnt\[1] \u_cpu.state.i_ctrl_misalign\ _277_ _278_ vdd gnd OAI21X1
X_1861_ _16_ \u_cpu.state.cnt_r\[2] _55_ _58_ vdd gnd AOI21X1
X_1441_ \u_mem_serial.bit_count\[2] _344_ vdd gnd INVX1
X_2226_ \u_cpu.ctrl.o_ibus_adr\[22] _320_ vdd gnd INVX1
X_1917_ _66_ _72_ _63_ _111_ vdd gnd OAI21X1
X_1670_ _862_ _592_ raddr[1] _1035_ vdd gnd OAI21X1
X_1250_ _506_ _493_ \u_mem_serial.state\[0] _492_ vdd gnd OAI21X1
X_2455_ _615_ i_clk_sys_ext_bF$buf13 \u_cpu.ctrl.o_ibus_adr\[8] vdd gnd DFFPOSX1
X_2035_ _191_ _194_ _193_ _695_ vdd gnd MUX2X1
X_1726_ \u_rf_if.rcnt\[2] _1071_ vdd gnd INVX1
X_1306_ _482_ _459__bF$buf5 _447_ _847_ vdd gnd OAI21X1
X_2264_ _334_ _316_ _124__bF$buf4 _606_ vdd gnd MUX2X1
X_1955_ mem_ibus_ack_bF$buf6 \u_mem_serial.shift_reg\[2] _139_ vdd gnd NAND2X1
X_1535_ _880_ _934_ _935_ vdd gnd NAND2X1
X_2493_ _766_ i_clk_fast_bF$buf5 \u_rf_if.tx_state\[0] vdd gnd DFFPOSX1
X_2073_ \u_cpu.branch_op\ _532_ _222_ vdd gnd NAND2X1
X_1764_ \u_cpu.csr_imm\ _1101_ vdd gnd INVX1
X_1344_ _489__bF$buf4 _416_ _419_ _415_ vdd gnd OAI21X1
X_2129_ _406_ _412_ _23__bF$buf4 _659_ vdd gnd MUX2X1
X_1993_ _163_ _164_ _161_ _707_ vdd gnd MUX2X1
X_1573_ \u_rf_if.stream_active_bF$buf3\ _962_ _963_ vdd gnd NAND2X1
X_1153_ _592_ _588_ \u_rf_if.prefetch_active\ _587_ vdd gnd OAI21X1
X_2358_ _664_ i_clk_sys_ext_bF$buf8 \u_cpu.bufreg.data\[11] vdd gnd DFFPOSX1
X_1629_ \u_rf_if.stream_active_bF$buf4\ _1004_ _1005_ vdd gnd NAND2X1
X_1209_ \u_cpu.decode.opcode\[2] _532_ _531_ vdd gnd NAND2X1
X_1382_ \u_mem_serial.shift_reg\[26] _459__bF$buf2 _383_ vdd gnd NOR2X1
X_2167_ \u_rf_if.stream_cnt\[4] _150_ _276_ _645_ vdd gnd AOI21X1
X_1858_ _54_ _53_ _55_ vdd gnd NOR2X1
X_1438_ _460_ _496_ _346_ vdd gnd NOR2X1
X_1191_ _580_ _564_ _550_ _549_ vdd gnd OAI21X1
X_2396_ _694_ i_clk_sys_ext_bF$buf3 rf_read_reg1_to_if[2] vdd gnd DFFPOSX1
X_1667_ _1032_ _919_ _810_ _773_ vdd gnd MUX2X1
X_1247_ _498_ _496_ _495_ vdd gnd NAND2X1
X_1896_ _90_ _91_ _10_ _92_ vdd gnd AOI21X1
X_1476_ \u_rf_if.rtrig1\ _876_ vdd gnd INVX1
X_1285_ _467_ _463_ _465_ _462_ vdd gnd OAI21X1
XFILL95250x54150 gnd vdd FILL
X_2299_ _816_ i_clk_fast_bF$buf6 \u_mem_serial.bit_count\[0] vdd gnd DFFPOSX1
X_2511_ _782_ i_clk_sys_ext_bF$buf0 \u_rf_if.read_buf0\[21] vdd gnd DFFPOSX1
X_1799_ _942_ _877_ _1133_ vdd gnd NAND2X1
X_1379_ _489__bF$buf0 _386_ _389_ _385_ vdd gnd OAI21X1
X_2320_ _652_ i_clk_sys_ext_bF$buf13 \u_cpu.bufreg.data\[29] vdd gnd DFFPOSX1
X_1188_ _553_ _552_ vdd gnd INVX2
X_1820_ \u_cpu.state.cnt_r\[0] _16_ _17_ vdd gnd NAND2X1
X_1400_ \u_mem_serial.shift_reg\[1] _489__bF$buf5 _459__bF$buf6 _371_ vdd gnd NAND3X1
X_2414_ _712_ i_clk_sys_ext_bF$buf10 \u_cpu.bufreg.i_right_shift_op\ vdd gnd DFFPOSX1
X_2223_ _317_ _318_ _124__bF$buf2 _631_ vdd gnd MUX2X1
X_1914_ _107_ _17_ _108_ vdd gnd NAND2X1
X_2452_ \u_rf_if.wdata0_next\[0] i_clk_sys_ext_bF$buf6 \u_rf_if.wdata0_r\[0] vdd gnd DFFPOSX1
X_2032_ _11_ _554_ _128_ _192_ vdd gnd OAI21X1
X_1723_ \u_rf_if.rcnt\[1] _1067_ vdd gnd INVX1
X_1303_ _493_ \u_mem_serial.state\[0] \u_mem_serial.state\[1] _448_ vdd gnd AOI21X1
X_2508_ _780_ i_clk_sys_ext_bF$buf0 \u_rf_if.read_buf0\[23] vdd gnd DFFPOSX1
X_2261_ \u_cpu.ctrl.pc\ _124__bF$buf1 _333_ vdd gnd NOR2X1
X_1952_ mem_ibus_ack_bF$buf3 \u_cpu.decode.opcode\[2] _138_ vdd gnd NOR2X1
X_1532_ _928_ _931_ _932_ vdd gnd NOR2X1
X_2317_ _824_ i_clk_fast_bF$buf7 \u_mem_serial.shift_reg\[6] vdd gnd DFFPOSX1
X_2490_ _631_ i_clk_sys_ext_bF$buf8 \u_cpu.ctrl.o_ibus_adr\[24] vdd gnd DFFPOSX1
X_2070_ _557_ _215_ _219_ _685_ vdd gnd OAI21X1
X_1761_ \u_rf_if.issue_chunk\[3] _1095_ _1099_ _744_ vdd gnd AOI21X1
X_1341_ \u_cpu.bufreg.data\[5] _418_ vdd gnd INVX1
X_2126_ _388_ _394_ _23__bF$buf1 _662_ vdd gnd MUX2X1
X_1817_ _13_ _14_ vdd gnd INVX1
X_1990_ _156_ _162_ _161_ _708_ vdd gnd MUX2X1
X_1570_ \u_rf_if.stream_active_bF$buf2\ \u_rf_if.read_buf0\[7] _960_ _961_ vdd gnd OAI21X1
X_1150_ \u_rf_if.issue_chunk\[2] _590_ vdd gnd INVX1
X_2355_ _848_ i_clk_fast_bF$buf4 _1110_ vdd gnd DFFPOSX1
X_1626_ \u_rf_if.stream_active_bF$buf4\ \u_rf_if.read_buf0\[21] _1002_ _1003_ vdd gnd OAI21X1
X_1206_ _535_ \u_cpu.bufreg.i_right_shift_op\ _552_ _534_ vdd gnd AOI21X1
X_2164_ \u_rf_if.write_wait\[1] \u_rf_if.write_wait\[0] _275_ vdd gnd NAND2X1
X_1855_ \u_cpu.state.cnt_r\[2] _16_ _52_ vdd gnd NAND2X1
X_1435_ _463_ _348_ vdd gnd INVX2
X_2393_ _691_ i_clk_sys_ext_bF$buf7 rf_wreg0_to_if[3] vdd gnd DFFPOSX1
X_1664_ \u_rf_if.read_buf0\[29] _586__bF$buf3 _1031_ vdd gnd NOR2X1
X_1244_ \u_mem_serial.bit_count\[6] _498_ vdd gnd INVX1
X_2449_ _744_ i_clk_sys_ext_bF$buf11 \u_rf_if.issue_chunk\[3] vdd gnd DFFPOSX1
X_2029_ \u_mem_serial.shift_reg\[25] \u_cpu.immdec.gen_immdec_w_eq_1.imm30_25\[1] mem_ibus_ack_bF$buf2 _190_ vdd gnd MUX2X1
X_1893_ _14_ _51_ _89_ \u_cpu.o_wdata0\ vdd gnd OAI21X1
X_1473_ \u_rf_if.shift_rx\[1] _873_ i_rst_n_bF$buf0 _874_ vdd gnd OAI21X1
X_2258_ _429_ _435_ _124__bF$buf1 _609_ vdd gnd MUX2X1
X_1949_ mem_ibus_ack_bF$buf0 \u_mem_serial.shift_reg\[12] _137_ vdd gnd NAND2X1
X_1529_ _513_ \u_rf_if.last_req_key\[7] _929_ vdd gnd OR2X2
X_1282_ _466_ _465_ vdd gnd INVX1
X_2487_ _763_ i_clk_fast_bF$buf5 \u_rf_if.tx_state\[3] vdd gnd DFFPOSX1
X_2067_ mem_ibus_ack_bF$buf4 \u_mem_serial.shift_reg\[19] _161_ _218_ vdd gnd AOI21X1
X_1758_ \u_rf_if.issue_chunk\[2] _1096_ _1088_ _1098_ vdd gnd OAI21X1
X_1338_ _421_ _426_ _459__bF$buf0 _841_ vdd gnd MUX2X1
X_2296_ _642_ i_clk_sys_ext_bF$buf11 \u_cpu.bufreg2.dhi\[5] vdd gnd DFFPOSX1
X_1987_ _580_ _32_ _159_ _160_ vdd gnd OAI21X1
X_1567_ _958_ _950_ _586__bF$buf2 _799_ vdd gnd MUX2X1
X_1147_ \u_rf_if.issue_idx\[5] \u_rf_if.issue_idx\[4] _593_ vdd gnd NOR2X1
XFILL94950x150 gnd vdd FILL
X_1796_ _1088_ \u_rf_if.issue_idx\[5] _733_ vdd gnd AND2X2
X_1376_ \u_cpu.bufreg.data\[10] _388_ vdd gnd INVX1
X_1185_ _581_ _556_ _562_ _555_ vdd gnd OAI21X1
X_2199_ _546_ _547_ _303_ vdd gnd NOR2X1
X_2411_ _709_ i_clk_fast_bF$buf1 \u_rf_if.req_seen\ vdd gnd DFFPOSX1
X_1699_ _1051_ _1054_ _763_ vdd gnd AND2X2
X_1279_ _469_ _499_ _468_ vdd gnd NOR2X1
X_2220_ \u_cpu.ctrl.o_ibus_adr\[25] _317_ vdd gnd INVX1
X_1911_ \u_cpu.ctrl.i_jump\ _105_ vdd gnd INVX1
X_1720_ \u_rf_if.write_wait\[1] _526_ _1066_ vdd gnd NAND2X1
X_1300_ _594_ _450_ _449_ vdd gnd NOR2X1
X_2505_ _847_ i_clk_fast_bF$buf2 \u_mem_serial.shift_reg\[31] vdd gnd DFFPOSX1
X_2314_ _648_ i_clk_sys_ext_bF$buf9 \u_rf_if.ready_pulse\ vdd gnd DFFPOSX1
X_2543_ _635_ i_clk_sys_ext_bF$buf6 \u_rf_if.issue_reg\[3] vdd gnd DFFPOSX1
X_2123_ \u_cpu.bufreg.data\[11] _252_ vdd gnd INVX1
X_1814_ \u_cpu.branch_op\ _11_ vdd gnd INVX2
X_2352_ _661_ i_clk_sys_ext_bF$buf4 \u_cpu.bufreg.data\[8] vdd gnd DFFPOSX1
X_1623_ _1000_ _995_ _586__bF$buf4 _785_ vdd gnd MUX2X1
X_1203_ _540_ _538_ _547_ _537_ vdd gnd NAND3X1
X_2408_ _706_ i_clk_sys_ext_bF$buf1 rf_read_reg0_to_if[1] vdd gnd DFFPOSX1
X_2161_ \u_rf_if.rcnt\[1] \u_rf_if.rcnt\[0] _273_ vdd gnd NOR2X1
X_1852_ _39_ _48_ _49_ vdd gnd OR2X2
X_1432_ \u_mem_serial.shift_reg\[13] _350_ vdd gnd INVX1
X_2217_ \u_cpu.ctrl.o_ibus_adr\[26] _315_ vdd gnd INVX1
X_2390_ _688_ i_clk_sys_ext_bF$buf7 rf_wreg0_to_if[0] vdd gnd DFFPOSX1
X_1908_ _103_ _2_ _1131_ _1111_ vdd gnd AOI21X1
X_1661_ \u_rf_if.stream_active_bF$buf1\ \u_rf_if.read_buf0\[29] _585_ _1029_ vdd gnd AOI21X1
X_1241_ _503_ _502_ _501_ vdd gnd NAND2X1
X_2446_ _611_ i_clk_sys_ext_bF$buf4 \u_cpu.ctrl.o_ibus_adr\[4] vdd gnd DFFPOSX1
X_2026_ \u_mem_serial.shift_reg\[26] \u_cpu.immdec.gen_immdec_w_eq_1.imm30_25\[2] mem_ibus_ack_bF$buf2 _188_ vdd gnd MUX2X1
X_1717_ _513_ _936_ _1064_ _755_ vdd gnd AOI21X1
X_1890_ \u_cpu.alu.cmp_r\ _86_ _85_ \u_cpu.bufreg.i_right_shift_op\ _87_ vdd 
+ gnd
+ AOI22X1
X_1470_ _869_ _870_ _871_ vdd gnd NAND2X1
X_2255_ _411_ _417_ _124__bF$buf0 _612_ vdd gnd MUX2X1
X_1946_ _125_ _135_ _1106_ _726_ vdd gnd OAI21X1
X_1526_ _925_ _916_ _926_ vdd gnd NOR2X1
XFILL94950x61350 gnd vdd FILL
X_2484_ _628_ i_clk_sys_ext_bF$buf5 \u_cpu.ctrl.o_ibus_adr\[21] vdd gnd DFFPOSX1
X_2064_ _582_ _34_ _215_ vdd gnd NAND2X1
X_1755_ _1091_ _810_ _1094_ vdd gnd NAND2X1
X_1335_ \u_cpu.ctrl.o_ibus_adr\[4] _423_ vdd gnd INVX1
X_2293_ _813_ i_clk_fast_bF$buf6 \u_mem_serial.bit_count\[3] vdd gnd DFFPOSX1
X_1984_ mem_ibus_ack_bF$buf6 _558_ _157_ vdd gnd NOR2X1
X_1564_ \u_rf_if.read_buf0\[5] _956_ vdd gnd INVX1
X_1144_ rf_read_reg0_to_if[1] _595_ vdd gnd INVX1
X_2349_ _845_ i_clk_fast_bF$buf2 \u_mem_serial.shift_reg\[15] vdd gnd DFFPOSX1
X_1793_ _1129_ _567_ _1097_[1] vdd gnd NOR2X1
X_1373_ _391_ _396_ _459__bF$buf0 _836_ vdd gnd MUX2X1
X_2158_ _574_ _271_ _269_ _272_ vdd gnd AOI21X1
X_1849_ _45_ _40_ _46_ vdd gnd OR2X2
X_1429_ \u_mem_serial.shift_reg\[12] _352_ vdd gnd INVX1
X_1182_ _561_ _559_ _558_ vdd gnd NAND2X1
X_2387_ _685_ i_clk_sys_ext_bF$buf3 \u_cpu.immdec.gen_immdec_w_eq_1.imm7\ vdd gnd DFFPOSX1
X_1658_ \u_rf_if.stream_active_bF$buf1\ \u_rf_if.read_buf0\[29] _1026_ _1027_ vdd gnd OAI21X1
X_1238_ \u_mem_serial.clk_sys_prev\ _505_ \u_mem_serial.state\[1] _504_ vdd gnd OAI21X1
X_2196_ _298_ _300_ _640_ vdd gnd NAND2X1
X_1887_ _79_ _83_ _84_ vdd gnd NOR2X1
X_1467_ _866_ _867_ _868_ vdd gnd NOR2X1
X_1696_ \u_rf_if.tx_state\[3] _1052_ vdd gnd INVX1
X_1276_ _471_ _472_ _508_ _853_ vdd gnd OAI21X1
XFILL95250x61350 gnd vdd FILL
X_2502_ _775_ i_clk_sys_ext_bF$buf0 \u_rf_if.read_buf0\[28] vdd gnd DFFPOSX1
X_2099_ \u_cpu.bufreg.data\[23] _240_ vdd gnd INVX1
X_2311_ _821_ i_clk_fast_bF$buf3 \u_mem_serial.shift_reg\[9] vdd gnd DFFPOSX1
XFILL95250x3750 gnd vdd FILL
X_1599_ _982_ _977_ _586__bF$buf1 _791_ vdd gnd MUX2X1
X_1179_ \u_cpu.state.cnt_r\[2] _561_ vdd gnd INVX1
X_2540_ _804_ i_clk_fast_bF$buf5 \u_rf_if.tx_state\[4] vdd gnd DFFPOSX1
X_2120_ _249_ _250_ _23__bF$buf2 _666_ vdd gnd MUX2X1
X_1811_ _7_ \u_rf_if.wdata0_next\[0] _867_ _8_ vdd gnd AOI21X1
X_1620_ \u_rf_if.read_buf0\[19] _998_ vdd gnd INVX1
X_1200_ \u_cpu.bufreg2.dhi\[5] _541_ _540_ vdd gnd NAND2X1
X_2405_ _703_ i_clk_sys_ext_bF$buf1 \u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20\[2] vdd gnd DFFPOSX1
X_2214_ _156_ _863_ mem_ibus_ack_bF$buf6 _635_ vdd gnd MUX2X1
X_1905_ _97_ _942_ _100_ _101_ vdd gnd AOI21X1
X_2443_ _739_ i_clk_fast_bF$buf1 _1113_ vdd gnd DFFPOSX1
X_2023_ \u_mem_serial.shift_reg\[27] \u_cpu.immdec.gen_immdec_w_eq_1.imm30_25\[3] mem_ibus_ack_bF$buf2 _186_ vdd gnd MUX2X1
X_1714_ \u_rf_if.last_req_key\[6] _936_ i_rst_n_bF$buf1 _1063_ vdd gnd OAI21X1
X_2252_ _393_ _399_ _124__bF$buf0 _615_ vdd gnd MUX2X1
X_1943_ _131_ _132_ _133_ vdd gnd AND2X2
X_1523_ _918_ _922_ _923_ vdd gnd NAND2X1
X_2308_ _645_ i_clk_sys_ext_bF$buf12 \u_rf_if.stream_cnt\[4] vdd gnd DFFPOSX1
X_2481_ _627_ i_clk_sys_ext_bF$buf5 \u_cpu.ctrl.o_ibus_adr\[20] vdd gnd DFFPOSX1
X_2061_ mem_ibus_ack_bF$buf5 \u_cpu.immdec.gen_immdec_w_eq_1.imm31\ _213_ vdd gnd NOR2X1
XFILL94950x82950 gnd vdd FILL
X_1752_ _1091_ _589_ _1092_ vdd gnd OR2X2
X_1332_ \u_mem_serial.shift_reg\[19] _426_ vdd gnd INVX1
X_2537_ _802_ i_clk_sys_ext_bF$buf0 \u_rf_if.read_buf0\[1] vdd gnd DFFPOSX1
X_2117_ \u_cpu.bufreg.data\[14] _249_ vdd gnd INVX1
X_2290_ _812_ i_clk_fast_bF$buf6 \u_mem_serial.bit_count\[4] vdd gnd DFFPOSX1
X_1808_ _4_ _5_ vdd gnd INVX1
X_1981_ mem_ibus_ack_bF$buf6 _1115_ _155_ _710_ vdd gnd OAI21X1
X_1561_ \u_rf_if.stream_active_bF$buf4\ _950_ _954_ vdd gnd NAND2X1
X_1141_ _1109_ o_mem_sck vdd gnd BUFX2
X_2346_ _842_ i_clk_fast_bF$buf4 \u_mem_serial.shift_reg\[18] vdd gnd DFFPOSX1
X_1617_ \u_rf_if.stream_active_bF$buf6\ _995_ _996_ vdd gnd NAND2X1
X_1790_ \u_cpu.state.cnt_r\[3] \u_cpu.state.o_cnt\[2] _1128_ vdd gnd NOR2X1
X_1370_ \u_cpu.ctrl.o_ibus_adr\[9] _393_ vdd gnd INVX1
X_2155_ _270_ _253_ _255_ _651_ vdd gnd MUX2X1
X_1846_ \u_cpu.branch_op\ \u_cpu.bufreg2.i_op_b_sel\ _43_ vdd gnd NOR2X1
X_1426_ \u_mem_serial.shift_reg\[11] _354_ vdd gnd INVX1
X_2384_ _682_ i_clk_sys_ext_bF$buf1 \u_cpu.immdec.gen_immdec_w_eq_1.imm11_7\[4] vdd gnd DFFPOSX1
X_1655_ _1024_ _1019_ _586__bF$buf0 _777_ vdd gnd MUX2X1
X_1235_ \u_mem_serial.state\[1] _508_ _507_ vdd gnd NOR2X1
X_2193_ _543_ _297_ _547_ _298_ vdd gnd OAI21X1
XFILL94950x14550 gnd vdd FILL
X_1884_ \u_cpu.bne_or_bge\ _81_ vdd gnd INVX1
X_1464_ i_rf_miso _865_ vdd gnd INVX1
X_2249_ _330_ _331_ _124__bF$buf2 _618_ vdd gnd MUX2X1
XFILL95250x150 gnd vdd FILL
X_1693_ _1049_ _934_ i_rst_n_bF$buf2 _1050_ vdd gnd OAI21X1
X_1273_ _473_ _472_ vdd gnd INVX1
X_2478_ _759_ i_clk_fast_bF$buf1 \u_rf_if.last_req_key\[3] vdd gnd DFFPOSX1
X_2058_ rf_wreg0_to_if[1] _582_ _211_ vdd gnd NAND2X1
X_1749_ _862_ _592_ \u_rf_if.issue_chunk\[0] _1090_ vdd gnd OAI21X1
X_1329_ _430_ _429_ _474_ _428_ vdd gnd MUX2X1
XFILL95250x82950 gnd vdd FILL
X_2287_ _638_ i_clk_sys_ext_bF$buf0 \u_cpu.bufreg.i_shamt\[1] vdd gnd DFFPOSX1
X_1978_ _153_ _154_ vdd gnd INVX1
X_1558_ _594_ \u_rf_if.read_buf0\[3] _951_ _952_ vdd gnd OAI21X1
X_1138_ _1112_ o_rf_sck vdd gnd BUFX2
X_2096_ _237_ _238_ _23__bF$buf4 _678_ vdd gnd MUX2X1
X_1787_ _1107_ _1126_ vdd gnd INVX1
X_1367_ \u_mem_serial.shift_reg\[24] _396_ vdd gnd INVX1
X_1596_ \u_rf_if.read_buf0\[13] _980_ vdd gnd INVX1
X_1176_ _565_ _564_ vdd gnd INVX1
X_2402_ _700_ i_clk_sys_ext_bF$buf1 \u_cpu.immdec.gen_immdec_w_eq_1.imm30_25\[4] vdd gnd DFFPOSX1
XFILL95250x14550 gnd vdd FILL
X_2211_ _306_ _547_ _311_ _313_ vdd gnd AOI21X1
X_1902_ _867_ _913_ _98_ vdd gnd NOR2X1
X_1499_ \u_rf_if.last_req_key\[8] _899_ vdd gnd INVX1
X_2440_ _1097_[1] i_clk_sys_ext_bF$buf9 \u_cpu.bufreg2.i_bytecnt\[0] vdd gnd DFFPOSX1
X_2020_ \u_mem_serial.shift_reg\[28] \u_cpu.immdec.gen_immdec_w_eq_1.imm30_25\[4] mem_ibus_ack_bF$buf2 _184_ vdd gnd MUX2X1
X_1711_ _518_ _936_ _1061_ _758_ vdd gnd AOI21X1
XFILL95550x90150 gnd vdd FILL
XFILL95550x57750 gnd vdd FILL
X_1940_ _129_ _12_ \u_cpu.decode.opcode\[2] _130_ vdd gnd AOI21X1
X_1520_ ren _919_ _920_ vdd gnd NAND2X1
X_2305_ _598_ i_clk_sys_ext_bF$buf10 \u_cpu.alu.cmp_r\ vdd gnd DFFPOSX1
X_2534_ _799_ i_clk_sys_ext_bF$buf12 \u_rf_if.read_buf0\[4] vdd gnd DFFPOSX1
X_2114_ _246_ _247_ _23__bF$buf0 _669_ vdd gnd MUX2X1
X_1805_ _1046_ _1132_ _1_ _2_ vdd gnd NAND3X1
X_2343_ _839_ i_clk_fast_bF$buf7 \u_mem_serial.shift_reg\[21] vdd gnd DFFPOSX1
X_1614_ \u_rf_if.stream_active_bF$buf6\ \u_rf_if.read_buf0\[18] _993_ _994_ vdd gnd OAI21X1
X_2152_ _261_ _266_ _574_ _268_ vdd gnd AOI21X1
X_1843_ \u_cpu.ctrl.pc_plus_offset_cy_r_w\ _40_ vdd gnd INVX1
X_1423_ \u_mem_serial.shift_reg\[10] _356_ vdd gnd INVX1
X_2208_ _307_ _547_ _311_ vdd gnd NOR2X1
X_2381_ _679_ i_clk_sys_ext_bF$buf2 \u_cpu.bufreg.data\[26] vdd gnd DFFPOSX1
X_1652_ \u_rf_if.read_buf0\[27] _1022_ vdd gnd INVX1
X_1232_ _510_ _512_ _509_ vdd gnd NAND2X1
X_2437_ _608_ i_clk_sys_ext_bF$buf4 \u_cpu.ctrl.o_ibus_adr\[1] vdd gnd DFFPOSX1
X_2017_ \u_mem_serial.shift_reg\[29] \u_cpu.immdec.gen_immdec_w_eq_1.imm30_25\[5] mem_ibus_ack_bF$buf2 _182_ vdd gnd MUX2X1
X_2190_ \u_cpu.bufreg2.dhi\[3] _295_ vdd gnd INVX1
X_1708_ _895_ _935_ i_rst_n_bF$buf2 _1060_ vdd gnd OAI21X1
X_1881_ _62_ _78_ vdd gnd INVX1
X_1461_ \u_rf_if.issue_reg\[3] _863_ vdd gnd INVX1
X_2246_ \u_cpu.ctrl.o_ibus_adr\[12] _330_ vdd gnd INVX1
X_1937_ \u_rf_if.o_waddr\[3] _1082_ _127_ _727_ vdd gnd AOI21X1
X_1517_ \u_rf_if.launch_pending\ _917_ vdd gnd INVX1
X_1690_ _1046_ _1045_ _1047_ vdd gnd NAND2X1
X_1270_ _476_ _479_ _475_ vdd gnd NAND2X1
X_2475_ _624_ i_clk_sys_ext_bF$buf13 \u_cpu.ctrl.o_ibus_adr\[17] vdd gnd DFFPOSX1
X_2055_ \u_mem_serial.shift_reg\[8] rf_wreg0_to_if[2] mem_ibus_ack_bF$buf0 _209_ vdd gnd MUX2X1
X_1746_ \u_rf_if.prefetch_active\ _1086_ _1087_ vdd gnd NOR2X1
X_1326_ _438_ _489__bF$buf3 _431_ vdd gnd NAND2X1
X_2284_ _808_ i_clk_fast_bF$buf5 \u_rf_if.shift_rx\[1] vdd gnd DFFPOSX1
X_1975_ mem_ibus_ack_bF$buf3 \u_mem_serial.shift_reg\[14] _152_ vdd gnd NAND2X1
X_1555_ \u_rf_if.read_buf0\[2] _585_ _949_ vdd gnd NAND2X1
X_2093_ \u_cpu.bufreg.data\[26] _237_ vdd gnd INVX1
X_1784_ _1121_ _1122_ _1123_ vdd gnd NAND2X1
X_1364_ _400_ _399_ _474_ _398_ vdd gnd MUX2X1
X_2149_ _264_ _78_ _263_ _265_ vdd gnd OAI21X1
X_1593_ \u_rf_if.stream_active_bF$buf5\ _977_ _978_ vdd gnd NAND2X1
X_1173_ _572_ _568_ _567_ vdd gnd NOR2X1
X_2378_ _676_ i_clk_sys_ext_bF$buf2 \u_cpu.bufreg.data\[23] vdd gnd DFFPOSX1
X_1649_ \u_rf_if.stream_active_bF$buf2\ _1019_ _1020_ vdd gnd NAND2X1
X_1229_ _515_ _513_ _517_ _512_ vdd gnd NAND3X1
X_2187_ _539_ _547_ _282_ _293_ vdd gnd OAI21X1
X_1878_ _74_ _73_ _75_ vdd gnd NAND2X1
X_1458_ _860_ _855_ _861_ _811_ vdd gnd OAI21X1
X_1687_ \u_rf_if.tx_state\[2] _1044_ vdd gnd INVX1
X_1267_ _479_ _478_ vdd gnd INVX1
X_1496_ \u_rf_if.last_req_key\[3] _895_ _896_ vdd gnd NOR2X1
X_2302_ _644_ i_clk_sys_ext_bF$buf10 \u_rf_if.pending_read\ vdd gnd DFFPOSX1
X_2531_ _797_ i_clk_sys_ext_bF$buf12 \u_rf_if.read_buf0\[6] vdd gnd DFFPOSX1
X_2111_ \u_cpu.bufreg.data\[17] _246_ vdd gnd INVX1
X_1802_ _866_ _521_ _1136_ vdd gnd NAND2X1
X_1399_ \u_mem_serial.shift_reg\[2] _372_ vdd gnd INVX1
X_2340_ _836_ i_clk_fast_bF$buf7 \u_mem_serial.shift_reg\[24] vdd gnd DFFPOSX1
X_1611_ _991_ _986_ _586__bF$buf2 _788_ vdd gnd MUX2X1
XCLKBUF1_insert10 i_clk_sys_ext i_clk_sys_ext_bF$buf12 vdd gnd CLKBUF1
XCLKBUF1_insert11 i_clk_sys_ext i_clk_sys_ext_bF$buf11 vdd gnd CLKBUF1
XCLKBUF1_insert12 i_clk_sys_ext i_clk_sys_ext_bF$buf10 vdd gnd CLKBUF1
XCLKBUF1_insert13 i_clk_sys_ext i_clk_sys_ext_bF$buf9 vdd gnd CLKBUF1
XCLKBUF1_insert14 i_clk_sys_ext i_clk_sys_ext_bF$buf8 vdd gnd CLKBUF1
XCLKBUF1_insert15 i_clk_sys_ext i_clk_sys_ext_bF$buf7 vdd gnd CLKBUF1
XCLKBUF1_insert16 i_clk_sys_ext i_clk_sys_ext_bF$buf6 vdd gnd CLKBUF1
XCLKBUF1_insert17 i_clk_sys_ext i_clk_sys_ext_bF$buf5 vdd gnd CLKBUF1
XCLKBUF1_insert18 i_clk_sys_ext i_clk_sys_ext_bF$buf4 vdd gnd CLKBUF1
XCLKBUF1_insert19 i_clk_sys_ext i_clk_sys_ext_bF$buf3 vdd gnd CLKBUF1
X_1840_ _572_ _570_ _573_ _37_ vdd gnd OAI21X1
X_1420_ \u_mem_serial.shift_reg\[9] _358_ vdd gnd INVX1
X_2205_ _306_ _307_ _308_ vdd gnd NOR2X1
XFILL95550x43350 gnd vdd FILL
X_2434_ _728_ i_clk_sys_ext_bF$buf6 \u_cpu.state.ibus_cyc\ vdd gnd DFFPOSX1
X_2014_ \u_cpu.immdec.gen_immdec_w_eq_1.imm30_25\[4] _179_ vdd gnd INVX1
X_1705_ _1056_ _935_ _1058_ _761_ vdd gnd AOI21X1
X_2243_ _327_ _328_ _124__bF$buf2 _621_ vdd gnd MUX2X1
X_1934_ _123_ \u_cpu.state.ibus_cyc\ _941_ _126_ vdd gnd AOI21X1
X_1514_ _909_ _913_ _914_ vdd gnd NAND2X1
X_2472_ _756_ i_clk_fast_bF$buf5 \u_rf_if.last_req_key\[6] vdd gnd DFFPOSX1
X_2052_ \u_mem_serial.shift_reg\[9] rf_wreg0_to_if[3] mem_ibus_ack_bF$buf0 _207_ vdd gnd MUX2X1
X_1743_ _1032_ _810_ _1084_ vdd gnd NAND2X1
X_1323_ _489__bF$buf3 _434_ _437_ _433_ vdd gnd OAI21X1
X_2528_ _794_ i_clk_sys_ext_bF$buf12 \u_rf_if.read_buf0\[9] vdd gnd DFFPOSX1
X_2108_ _243_ _244_ _23__bF$buf3 _672_ vdd gnd MUX2X1
X_2281_ _636_ i_clk_sys_ext_bF$buf6 \u_rf_if.issue_reg\[2] vdd gnd DFFPOSX1
X_1972_ _451_ \u_rf_if.stream_active_bF$buf0\ \u_rf_if.stream_cnt\[3] _151_ vdd gnd AOI21X1
X_1552_ \u_rf_if.read_buf0\[2] \u_rf_if.read_buf0\[3] \u_rf_if.stream_active_bF$buf4\ _947_ vdd gnd MUX2X1
X_2337_ _835_ i_clk_fast_bF$buf4 \u_mem_serial.shift_reg\[25] vdd gnd DFFPOSX1
X_2090_ _235_ _234_ _23__bF$buf0 _681_ vdd gnd MUX2X1
X_1608_ \u_rf_if.read_buf0\[16] _989_ vdd gnd INVX1
X_1781_ _1117_ _1119_ _1120_ vdd gnd NOR2X1
X_1361_ _408_ _489__bF$buf0 _401_ vdd gnd NAND2X1
X_2146_ \u_cpu.bufreg.c_r\ _258_ _62_ _262_ vdd gnd NAND3X1
X_1837_ _33_ _34_ vdd gnd INVX1
X_1417_ \u_mem_serial.shift_reg\[8] _360_ vdd gnd INVX1
X_1590_ \u_rf_if.stream_active_bF$buf5\ \u_rf_if.read_buf0\[12] _975_ _976_ vdd gnd OAI21X1
X_1170_ \u_cpu.state.o_cnt\[2] _570_ vdd gnd INVX1
X_2375_ _673_ i_clk_sys_ext_bF$buf2 \u_cpu.bufreg.data\[20] vdd gnd DFFPOSX1
X_1646_ \u_rf_if.stream_active_bF$buf2\ \u_rf_if.read_buf0\[26] _1017_ _1018_ vdd gnd OAI21X1
X_1226_ ren raddr[5] _524_ _516_ _515_ vdd 
+ gnd
+ AOI22X1
X_2184_ _289_ _543_ _290_ vdd gnd NOR2X1
X_1875_ _71_ _69_ _72_ vdd gnd NAND2X1
X_1455_ _736_ _856_ _812_ vdd gnd NAND2X1
X_1684_ \u_rf_if.tx_state\[0] _1042_ _766_ vdd gnd NOR2X1
X_1264_ \u_mem_serial.clk_sys_prev\ _505_ _481_ vdd gnd NOR2X1
X_2469_ _621_ i_clk_sys_ext_bF$buf8 \u_cpu.ctrl.o_ibus_adr\[14] vdd gnd DFFPOSX1
X_2049_ \u_mem_serial.shift_reg\[10] \u_cpu.immdec.gen_immdec_w_eq_1.imm11_7\[4] mem_ibus_ack_bF$buf0 _205_ vdd gnd MUX2X1
X_1493_ \u_rf_if.o_waddr\[3] ren _892_ _893_ vdd gnd OAI21X1
X_2278_ \u_cpu.alu.cmp_r\ _557_ _341_ vdd gnd NAND2X1
X_1969_ \u_rf_if.stream_active_bF$buf0\ _148_ _147_ _149_ vdd gnd NAND3X1
X_1549_ \u_rf_if.read_buf0\[0] _945_ vdd gnd INVX1
X_2087_ _232_ _233_ _682_ vdd gnd NAND2X1
X_1778_ _1108_ _1115_ _1116_ _1117_ vdd gnd OAI21X1
X_1358_ _489__bF$buf0 _404_ _407_ _403_ vdd gnd OAI21X1
X_1587_ _973_ _968_ _586__bF$buf2 _794_ vdd gnd MUX2X1
X_1167_ \u_cpu.bufreg2.i_bytecnt\[1] _573_ vdd gnd INVX1
X_1396_ \u_mem_serial.shift_reg\[1] _374_ vdd gnd INVX1
X_2202_ _302_ _305_ _639_ vdd gnd NAND2X1
X_2431_ _726_ i_clk_sys_ext_bF$buf7 \u_rf_if.wen0_r\ vdd gnd DFFPOSX1
X_2011_ mem_ibus_ack_bF$buf0 _173_ _154_ _177_ vdd gnd OAI21X1
XFILL95550x64950 gnd vdd FILL
X_1702_ \u_rf_if.last_req_key\[1] _1056_ vdd gnd INVX1
X_1299_ \u_rf_if.stream_cnt\[3] _451_ _450_ vdd gnd NAND2X1
X_2240_ \u_cpu.ctrl.o_ibus_adr\[15] _327_ vdd gnd INVX1
X_1931_ mem_ibus_ack_bF$buf6 _565_ _123_ vdd gnd NOR2X1
X_1511_ ren _910_ _911_ vdd gnd NAND2X1
X_1740_ _1079_ \u_rf_if.o_waddr\[2] _1082_ vdd gnd AND2X2
X_1320_ \u_cpu.bufreg.data\[2] _436_ vdd gnd INVX1
X_2525_ _791_ i_clk_sys_ext_bF$buf5 \u_rf_if.read_buf0\[12] vdd gnd DFFPOSX1
X_2105_ \u_cpu.bufreg.data\[20] _243_ vdd gnd INVX1
XFILL95550x150 gnd vdd FILL
X_2334_ _833_ i_clk_fast_bF$buf0 \u_mem_serial.shift_reg\[27] vdd gnd DFFPOSX1
X_1605_ \u_rf_if.stream_active_bF$buf5\ _986_ _987_ vdd gnd NAND2X1
X_2143_ _258_ _17_ _259_ vdd gnd NOR2X1
X_1834_ _11_ _554_ _31_ vdd gnd NOR2X1
X_1414_ \u_mem_serial.shift_reg\[7] _362_ vdd gnd INVX1
X_2372_ _671_ i_clk_sys_ext_bF$buf2 \u_cpu.bufreg.data\[18] vdd gnd DFFPOSX1
X_1643_ _1015_ _1010_ _586__bF$buf0 _780_ vdd gnd MUX2X1
X_1223_ ren raddr[4] _524_ _519_ _518_ vdd 
+ gnd
+ AOI22X1
X_2428_ _723_ i_clk_sys_ext_bF$buf3 \u_cpu.bufreg2.i_op_b_sel\ vdd gnd DFFPOSX1
X_2008_ _174_ _161_ _175_ vdd gnd NOR2X1
X_2181_ _552_ _548_ \u_cpu.bufreg2.dhi\[5] _288_ vdd gnd OAI21X1
X_1872_ \u_cpu.branch_op\ _1117_ _68_ _69_ vdd gnd OAI21X1
X_1452_ _732_ _348_ _741_ vdd gnd NAND2X1
X_2237_ _324_ _325_ _124__bF$buf3 _624_ vdd gnd MUX2X1
X_1928_ \u_cpu.decode.opcode\[0] _121_ _106_ _122_ vdd gnd OAI21X1
X_1508_ _898_ \u_rf_if.last_req_key\[1] _907_ _908_ vdd gnd AOI21X1
X_1681_ raddr[6] _810_ _1041_ vdd gnd NOR2X1
X_1261_ i_clk_fast_bF$buf4 _483_ _1109_ vdd gnd NOR2X1
X_2466_ _753_ i_clk_sys_ext_bF$buf11 \u_rf_if.write_wait\[0] vdd gnd DFFPOSX1
X_2046_ _558_ _130_ _202_ vdd gnd NAND2X1
X_1737_ _1076_ _1080_ vdd gnd INVX1
X_1317_ _439_ _440_ _459__bF$buf5 _844_ vdd gnd MUX2X1
X_1490_ _885_ _886_ _889_ _890_ vdd gnd AOI21X1
X_2275_ \u_cpu.ctrl.i_jump\ _59_ _124__bF$buf0 _340_ vdd gnd OAI21X1
X_1966_ _454_ _144_ _146_ _716_ vdd gnd OAI21X1
X_1546_ _870_ _942_ _943_ vdd gnd NAND2X1
X_2084_ _229_ _231_ _193_ _683_ vdd gnd MUX2X1
X_1775_ \u_cpu.bufreg2.i_op_b_sel\ _1108_ vdd gnd INVX1
X_1355_ \u_cpu.bufreg.data\[7] _406_ vdd gnd INVX1
X_1584_ \u_rf_if.read_buf0\[10] _971_ vdd gnd INVX1
X_1164_ \u_cpu.bne_or_bge\ \u_cpu.decode.co_mem_word\ _577_ _576_ vdd gnd OAI21X1
X_2369_ _668_ i_clk_sys_ext_bF$buf13 \u_cpu.bufreg.data\[15] vdd gnd DFFPOSX1
X_1393_ \u_mem_serial.shift_reg\[29] _489__bF$buf2 _443_ _376_ vdd gnd AOI21X1
X_2178_ _551_ _284_ _285_ _643_ vdd gnd OAI21X1
X_1869_ _65_ _63_ _66_ vdd gnd NAND2X1
X_1449_ _734_ _732_ _489__bF$buf3 _735_ vdd gnd OAI21X1
X_1678_ raddr[5] _810_ _1039_ vdd gnd NOR2X1
X_1258_ _496_ _485_ _484_ vdd gnd NAND2X1
X_1487_ \u_rf_if.last_req_key\[5] _515_ _887_ vdd gnd NAND2X1
X_1296_ _455_ _454_ _453_ vdd gnd NOR2X1
X_2522_ _603_ i_clk_sys_ext_bF$buf8 \u_cpu.ctrl.o_ibus_adr\[28] vdd gnd DFFPOSX1
X_2102_ _240_ _241_ _23__bF$buf3 _675_ vdd gnd MUX2X1
X_2331_ _657_ i_clk_sys_ext_bF$buf4 \u_cpu.bufreg.data\[4] vdd gnd DFFPOSX1
X_1602_ \u_rf_if.stream_active_bF$buf0\ \u_rf_if.read_buf0\[15] _984_ _985_ vdd gnd OAI21X1
X_1199_ \u_cpu.bufreg2.dhi\[4] _542_ _541_ vdd gnd NOR2X1
X_2140_ _257_ _256_ _23__bF$buf1 _653_ vdd gnd MUX2X1
X_1831_ \u_cpu.decode.opcode\[0] _27_ _28_ vdd gnd NOR2X1
X_1411_ \u_mem_serial.shift_reg\[6] _364_ vdd gnd INVX1
XBUFX2_insert40 _23_ _23__bF$buf2 vdd gnd BUFX2
XBUFX2_insert41 _23_ _23__bF$buf1 vdd gnd BUFX2
XBUFX2_insert42 _23_ _23__bF$buf0 vdd gnd BUFX2
XBUFX2_insert43 _586_ _586__bF$buf4 vdd gnd BUFX2
XBUFX2_insert44 _586_ _586__bF$buf3 vdd gnd BUFX2
XBUFX2_insert45 _586_ _586__bF$buf2 vdd gnd BUFX2
XBUFX2_insert46 _586_ _586__bF$buf1 vdd gnd BUFX2
XBUFX2_insert47 _586_ _586__bF$buf0 vdd gnd BUFX2
XBUFX2_insert48 _489_ _489__bF$buf5 vdd gnd BUFX2
XBUFX2_insert49 _489_ _489__bF$buf4 vdd gnd BUFX2
XFILL95550x50550 gnd vdd FILL
X_1640_ \u_rf_if.read_buf0\[24] _1013_ vdd gnd INVX1
X_1220_ ren raddr[6] _524_ _522_ _521_ vdd 
+ gnd
+ AOI22X1
X_2425_ _647_ i_clk_sys_ext_bF$buf7 \u_rf_if.rcnt\[1] vdd gnd DFFPOSX1
X_2005_ _170_ _161_ _172_ _703_ vdd gnd AOI21X1
X_2234_ \u_cpu.ctrl.o_ibus_adr\[18] _324_ vdd gnd INVX1
X_1925_ \u_cpu.bne_or_bge\ _118_ _119_ vdd gnd NAND2X1
X_1505_ _877_ \u_rf_if.last_req_key\[9] _905_ vdd gnd OR2X2
X_2463_ _751_ i_clk_sys_ext_bF$buf7 \u_rf_if.rcnt\[2] vdd gnd DFFPOSX1
X_2043_ mem_ibus_ack_bF$buf3 _197_ _154_ _200_ vdd gnd OAI21X1
X_1734_ _1075_ _1077_ _750_ vdd gnd NOR2X1
X_1314_ _459__bF$buf5 _442_ _441_ _845_ vdd gnd AOI21X1
X_2519_ _787_ i_clk_sys_ext_bF$buf12 \u_rf_if.read_buf0\[16] vdd gnd DFFPOSX1
X_2272_ _53_ _57_ _338_ vdd gnd NOR2X1
X_1963_ _144_ _594_ \u_rf_if.stream_cnt\[0] _717_ vdd gnd MUX2X1
X_1543_ _865_ _939_ _940_ _805_ vdd gnd AOI21X1
X_2328_ _830_ i_clk_fast_bF$buf0 \u_mem_serial.shift_reg\[30] vdd gnd DFFPOSX1
X_2081_ rf_read_reg1_to_if[4] _229_ vdd gnd INVX1
X_1772_ _862_ _592_ _1088_ _738_ vdd gnd OAI21X1
X_1352_ _409_ _414_ _459__bF$buf0 _839_ vdd gnd MUX2X1
X_2137_ _253_ _18_ _255_ _654_ vdd gnd MUX2X1
X_1828_ _18_ _24_ _25_ vdd gnd NOR2X1
X_1408_ \u_mem_serial.shift_reg\[5] _366_ vdd gnd INVX1
X_1581_ \u_rf_if.stream_active_bF$buf3\ _968_ _969_ vdd gnd NAND2X1
X_1161_ \u_cpu.decode.co_mem_word\ _579_ vdd gnd INVX1
X_2366_ _667_ i_clk_sys_ext_bF$buf8 \u_cpu.bufreg.data\[14] vdd gnd DFFPOSX1
X_1637_ \u_rf_if.stream_active_bF$buf2\ _1010_ _1011_ vdd gnd NAND2X1
X_1217_ \u_rf_if.rtrig0\ _524_ vdd gnd INVX2
X_1390_ \u_mem_serial.shift_reg\[28] _488_ _378_ vdd gnd NOR2X1
X_2175_ _282_ _283_ vdd gnd INVX1
X_1866_ \u_cpu.alu.add_cy_r\ _62_ _63_ vdd gnd NAND2X1
X_1446_ _503_ _343_ _719_ vdd gnd NAND2X1
X_1675_ \u_rf_if.issue_reg\[0] _1037_ vdd gnd INVX1
X_1255_ \u_mem_serial.bit_count\[6] _488_ _487_ vdd gnd NOR2X1
X_1484_ _518_ _884_ vdd gnd INVX1
X_2269_ _335_ _337_ _124__bF$buf3 _604_ vdd gnd MUX2X1
X_1293_ \u_rf_if.stream_cnt\[2] _456_ vdd gnd INVX1
X_2498_ _771_ i_clk_sys_ext_bF$buf6 raddr[2] vdd gnd DFFPOSX1
X_2078_ _582_ _226_ _227_ vdd gnd NAND2X1
X_1769_ _1049_ _934_ _1104_ vdd gnd NOR2X1
X_1349_ \u_cpu.ctrl.o_ibus_adr\[6] _411_ vdd gnd INVX1
X_1998_ \u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20\[3] _167_ vdd gnd INVX1
X_1578_ \u_rf_if.stream_active_bF$buf3\ \u_rf_if.read_buf0\[9] _966_ _967_ vdd gnd OAI21X1
X_1158_ mem_ibus_ack_bF$buf4 _582_ vdd gnd INVX2
X_1387_ \u_mem_serial.shift_reg\[27] _488_ _380_ vdd gnd NOR2X1
X_1196_ _546_ _545_ _544_ vdd gnd NAND2X1
X_2422_ _606_ i_clk_sys_ext_bF$buf5 \u_cpu.ctrl.o_ibus_adr\[27] vdd gnd DFFPOSX1
X_2002_ \u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20\[2] _170_ vdd gnd INVX1
X_2231_ _321_ _322_ _124__bF$buf4 _627_ vdd gnd MUX2X1
X_1922_ _114_ _112_ _116_ vdd gnd NAND2X1
X_1502_ _900_ _901_ _902_ vdd gnd NOR2X1
X_2460_ _749_ i_clk_sys_ext_bF$buf7 \u_rf_if.o_waddr\[1] vdd gnd DFFPOSX1
X_2040_ \u_mem_serial.shift_reg\[21] rf_read_reg1_to_if[2] mem_ibus_ack_bF$buf4 _198_ vdd gnd MUX2X1
X_1731_ \u_rf_if.o_waddr\[0] _1074_ _1075_ vdd gnd NOR2X1
X_1311_ _474_ _489__bF$buf1 _443_ vdd gnd NOR2X1
X_2516_ _785_ i_clk_sys_ext_bF$buf9 \u_rf_if.read_buf0\[18] vdd gnd DFFPOSX1
X_1960_ \u_rf_if.shift_rx\[0] _142_ _512_ _143_ vdd gnd NAND3X1
X_1540_ \u_rf_if.tx_state\[1] _867_ _872_ _938_ vdd gnd NAND3X1
X_2325_ _828_ i_clk_fast_bF$buf2 \u_mem_serial.shift_reg\[2] vdd gnd DFFPOSX1
X_2134_ \u_cpu.state.i_ctrl_misalign\ _253_ vdd gnd INVX1
X_1825_ \u_cpu.bufreg.i_right_shift_op\ _536_ _21_ _22_ vdd gnd OAI21X1
X_1405_ \u_mem_serial.shift_reg\[4] _368_ vdd gnd INVX1
X_2363_ _666_ i_clk_sys_ext_bF$buf8 \u_cpu.bufreg.data\[13] vdd gnd DFFPOSX1
X_1634_ \u_rf_if.stream_active_bF$buf4\ \u_rf_if.read_buf0\[23] _1008_ _1009_ vdd gnd OAI21X1
X_1214_ _527_ _526_ vdd gnd INVX2
X_2419_ _715_ i_clk_sys_ext_bF$buf5 \u_rf_if.stream_cnt\[2] vdd gnd DFFPOSX1
X_2172_ _15_ _552_ _280_ vdd gnd NOR2X1
X_1863_ _11_ _532_ _60_ vdd gnd NOR2X1
X_1443_ _344_ _470_ _342_ vdd gnd NOR2X1
X_2228_ \u_cpu.ctrl.o_ibus_adr\[21] _321_ vdd gnd INVX1
X_1919_ \u_cpu.bufreg.i_right_shift_op\ \u_cpu.bne_or_bge\ \u_cpu.decode.co_mem_word\ _113_ vdd gnd OAI21X1
X_1672_ _590_ _910_ _810_ _771_ vdd gnd MUX2X1
X_1252_ \u_mem_serial.state\[0] _490_ vdd gnd INVX1
X_2457_ _616_ i_clk_sys_ext_bF$buf13 \u_cpu.ctrl.o_ibus_adr\[9] vdd gnd DFFPOSX1
X_2037_ \u_mem_serial.shift_reg\[22] rf_read_reg1_to_if[3] mem_ibus_ack_bF$buf4 _196_ vdd gnd MUX2X1
X_1728_ _1072_ _1069_ _1073_ vdd gnd NAND2X1
X_1308_ \u_mem_serial.bit_count\[1] _501_ \u_mem_serial.bit_count\[5] _445_ vdd gnd OAI21X1
X_1481_ _521_ \u_rf_if.last_req_key\[6] _881_ vdd gnd AND2X2
X_2266_ \u_cpu.ctrl.o_ibus_adr\[31] _336_ vdd gnd INVX1
X_1957_ _594_ \u_rf_if.read_buf0\[30] _587_ _140_ vdd gnd NAND3X1
X_1537_ \u_rf_if.last_req_key\[9] _936_ i_rst_n_bF$buf1 _937_ vdd gnd OAI21X1
X_1290_ \u_mem_serial.shift_reg\[13] _489__bF$buf1 _459__bF$buf5 _458_ vdd gnd NAND3X1
X_2495_ _768_ i_clk_sys_ext_bF$buf7 raddr[5] vdd gnd DFFPOSX1
X_2075_ \u_cpu.branch_op\ _532_ _33_ _223_ _224_ vdd 
+ gnd
+ AOI22X1
X_1766_ ren _877_ i_rst_n_bF$buf3 _1102_ vdd gnd OAI21X1
X_1346_ \u_mem_serial.shift_reg\[21] _414_ vdd gnd INVX1
X_1995_ _595_ _165_ _161_ _706_ vdd gnd MUX2X1
X_1575_ _964_ _959_ _586__bF$buf2 _797_ vdd gnd MUX2X1
X_1155_ _586__bF$buf3 _585_ vdd gnd INVX2
X_1384_ \u_mem_serial.shift_reg\[26] _488_ _382_ vdd gnd NOR2X1
X_2169_ _572_ _18_ _277_ vdd gnd NOR2X1
X_1193_ _552_ _548_ _547_ vdd gnd NOR2X1
X_2398_ _696_ i_clk_sys_ext_bF$buf1 \u_cpu.immdec.gen_immdec_w_eq_1.imm30_25\[0] vdd gnd DFFPOSX1
X_1669_ _810_ _1034_ vdd gnd INVX1
X_1249_ _494_ _493_ vdd gnd INVX1
X_1898_ _942_ _1057_ _94_ vdd gnd NAND2X1
X_1478_ _877_ _878_ vdd gnd INVX1
X_1287_ \u_mem_serial.shift_reg\[14] _461_ vdd gnd INVX1
X_2513_ _784_ i_clk_sys_ext_bF$buf0 \u_rf_if.read_buf0\[19] vdd gnd DFFPOSX1
X_2322_ _653_ i_clk_sys_ext_bF$buf13 \u_cpu.bufreg.data\[30] vdd gnd DFFPOSX1
X_2131_ _418_ _424_ _23__bF$buf4 _657_ vdd gnd MUX2X1
X_1822_ \u_cpu.state.init_done\ _11_ _557_ _19_ vdd gnd AOI21X1
X_1402_ \u_mem_serial.shift_reg\[3] _370_ vdd gnd INVX1
X_2360_ _665_ i_clk_sys_ext_bF$buf8 \u_cpu.bufreg.data\[12] vdd gnd DFFPOSX1
X_1631_ _1006_ _1001_ _586__bF$buf4 _783_ vdd gnd MUX2X1
X_1211_ _531_ _530_ _529_ vdd gnd NOR2X1
X_2416_ _602_ i_clk_sys_ext_bF$buf4 \u_cpu.ctrl.pc_plus_offset_cy_r_w\ vdd gnd DFFPOSX1
X_1860_ _56_ _52_ _57_ vdd gnd NOR2X1
X_1440_ _488_ _469_ _345_ _815_ vdd gnd OAI21X1
X_2225_ _318_ _319_ _124__bF$buf4 _630_ vdd gnd MUX2X1
X_1916_ _109_ _76_ _110_ vdd gnd NOR2X1
X_2454_ _746_ i_clk_sys_ext_bF$buf11 \u_rf_if.issue_chunk\[1] vdd gnd DFFPOSX1
X_2034_ \u_mem_serial.shift_reg\[23] rf_read_reg1_to_if[4] mem_ibus_ack_bF$buf4 _194_ vdd gnd MUX2X1
XFILL94650x82950 gnd vdd FILL
X_1725_ \u_rf_if.rcnt\[2] _1068_ _1069_ vdd gnd NAND2X1
X_1305_ \u_mem_serial.shift_reg\[30] _489__bF$buf1 _459__bF$buf5 _447_ vdd gnd NAND3X1
X_2263_ \u_cpu.ctrl.o_ibus_adr\[28] _334_ vdd gnd INVX1
XFILL95550x79350 gnd vdd FILL
X_1954_ _370_ _26_ mem_ibus_ack_bF$buf3 _721_ vdd gnd MUX2X1
X_1534_ _520_ _878_ _933_ _883_ _934_ vdd 
+ gnd
+ AOI22X1
X_2319_ _825_ i_clk_fast_bF$buf4 \u_mem_serial.shift_reg\[5] vdd gnd DFFPOSX1
X_2492_ _632_ i_clk_sys_ext_bF$buf8 \u_cpu.ctrl.o_ibus_adr\[25] vdd gnd DFFPOSX1
X_2072_ \u_cpu.immdec.gen_immdec_w_eq_1.imm7\ _221_ vdd gnd INVX1
X_1763_ _1089_ _1100_ _743_ vdd gnd NOR2X1
X_1343_ _418_ _417_ _474_ _416_ vdd gnd MUX2X1
X_2128_ _400_ _406_ _23__bF$buf4 _660_ vdd gnd MUX2X1
X_1819_ \u_cpu.state.o_cnt\[2] _15_ _16_ vdd gnd NOR2X1
X_1992_ \u_mem_serial.shift_reg\[17] rf_read_reg0_to_if[3] mem_ibus_ack_bF$buf4 _164_ vdd gnd MUX2X1
X_1572_ \u_rf_if.read_buf0\[7] _962_ vdd gnd INVX1
X_1152_ _591_ _590_ _589_ _588_ vdd gnd NAND3X1
X_2357_ _849_ i_clk_fast_bF$buf4 \u_mem_serial.state\[1] vdd gnd DFFPOSX1
X_1628_ \u_rf_if.read_buf0\[21] _1004_ vdd gnd INVX1
X_1208_ \u_cpu.decode.opcode\[0] _532_ vdd gnd INVX2
X_1381_ \u_mem_serial.shift_reg\[25] _488_ _384_ vdd gnd NOR2X1
X_2166_ \u_rf_if.stream_cnt\[4] _449_ _276_ vdd gnd NOR2X1
X_1857_ \u_cpu.ctrl.pc\ \u_cpu.ctrl.pc_plus_4_cy_r_w\ _54_ vdd gnd NOR2X1
X_1437_ _497_ _348_ _347_ _816_ vdd gnd OAI21X1
X_1190_ _574_ _550_ vdd gnd INVX1
X_2395_ _693_ i_clk_sys_ext_bF$buf3 rf_read_reg1_to_if[1] vdd gnd DFFPOSX1
X_1666_ \u_rf_if.issue_chunk\[0] _1032_ vdd gnd INVX1
X_1246_ \u_mem_serial.bit_count\[1] _497_ _496_ vdd gnd NOR2X1
X_1895_ _6_ \u_rf_if.wdata0_next\[0] \u_rf_if.tx_state\[0] _91_ vdd gnd AOI21X1
X_1475_ \u_rf_if.wen0_r\ _875_ vdd gnd INVX1
XFILL94950x57750 gnd vdd FILL
X_1284_ \u_mem_serial.state\[0] _473_ _464_ _463_ vdd gnd OAI21X1
X_2489_ _764_ i_clk_fast_bF$buf5 \u_rf_if.tx_state\[2] vdd gnd DFFPOSX1
X_2069_ mem_ibus_ack_bF$buf6 \u_mem_serial.shift_reg\[7] _157_ \u_cpu.immdec.gen_immdec_w_eq_1.imm7\ _219_ vdd 
+ gnd
+ AOI22X1
X_2298_ _643_ i_clk_sys_ext_bF$buf11 \u_cpu.bufreg2.dhi\[6] vdd gnd DFFPOSX1
X_1989_ \u_mem_serial.shift_reg\[18] rf_read_reg0_to_if[4] mem_ibus_ack_bF$buf4 _162_ vdd gnd MUX2X1
X_1569_ \u_rf_if.stream_active_bF$buf3\ _959_ _960_ vdd gnd NAND2X1
X_1149_ \u_rf_if.issue_chunk\[3] _591_ vdd gnd INVX1
X_2510_ _781_ i_clk_sys_ext_bF$buf0 \u_rf_if.read_buf0\[22] vdd gnd DFFPOSX1
X_1798_ _1052_ _1053_ _1132_ vdd gnd NOR2X1
X_1378_ _388_ _387_ _474_ _386_ vdd gnd MUX2X1
X_1187_ \u_cpu.decode.co_mem_word\ _554_ _553_ vdd gnd NOR2X1
X_2413_ _711_ i_clk_sys_ext_bF$buf10 \u_cpu.decode.co_ebreak\ vdd gnd DFFPOSX1
X_2222_ \u_cpu.ctrl.o_ibus_adr\[24] _318_ vdd gnd INVX1
XFILL95250x57750 gnd vdd FILL
X_1913_ \u_cpu.alu.cmp_r\ _107_ vdd gnd INVX1
X_2451_ _745_ i_clk_sys_ext_bF$buf11 \u_rf_if.issue_chunk\[2] vdd gnd DFFPOSX1
X_2031_ rf_read_reg1_to_if[3] _191_ vdd gnd INVX1
X_1722_ \u_rf_if.rcnt\[0] _525_ _752_ vdd gnd NOR2X1
X_1302_ \u_mem_serial.state\[0] _504_ _484_ _849_ vdd gnd OAI21X1
X_2507_ _779_ i_clk_sys_ext_bF$buf12 \u_rf_if.read_buf0\[24] vdd gnd DFFPOSX1
X_2260_ _435_ _332_ _124__bF$buf1 _608_ vdd gnd MUX2X1
X_1951_ _366_ _1108_ mem_ibus_ack_bF$buf3 _723_ vdd gnd MUX2X1
X_1531_ _930_ _929_ _931_ vdd gnd NAND2X1
X_2316_ _649_ i_clk_sys_ext_bF$buf4 \u_cpu.bufreg.data\[31] vdd gnd DFFPOSX1
X_1760_ \u_rf_if.issue_chunk\[3] _1095_ _1088_ _1099_ vdd gnd OAI21X1
X_1340_ _426_ _489__bF$buf4 _419_ vdd gnd NAND2X1
X_2125_ _252_ _388_ _23__bF$buf2 _663_ vdd gnd MUX2X1
X_1816_ _554_ _12_ _13_ vdd gnd NOR2X1
X_2354_ _662_ i_clk_sys_ext_bF$buf13 \u_cpu.bufreg.data\[9] vdd gnd DFFPOSX1
X_1625_ \u_rf_if.stream_active_bF$buf4\ _1001_ _1002_ vdd gnd NAND2X1
X_1205_ _536_ _535_ vdd gnd INVX1
X_2163_ mem_ibus_ack_bF$buf1 _274_ _526_ _647_ vdd gnd OAI21X1
X_1854_ _17_ _50_ _49_ _51_ vdd gnd NAND3X1
X_1434_ _350_ _459__bF$buf3 _349_ _817_ vdd gnd OAI21X1
X_2219_ _316_ _315_ _124__bF$buf4 _633_ vdd gnd MUX2X1
X_2392_ _690_ i_clk_sys_ext_bF$buf3 rf_wreg0_to_if[2] vdd gnd DFFPOSX1
X_1663_ \u_rf_if.read_buf0\[30] \u_rf_if.read_buf0\[31] \u_rf_if.stream_active_bF$buf1\ _1030_ vdd gnd MUX2X1
X_1243_ _500_ _499_ vdd gnd INVX1
X_2448_ _612_ i_clk_sys_ext_bF$buf4 \u_cpu.ctrl.o_ibus_adr\[5] vdd gnd DFFPOSX1
X_2028_ \u_cpu.immdec.gen_immdec_w_eq_1.imm30_25\[0] _189_ vdd gnd INVX1
X_1719_ _899_ _935_ _1065_ _754_ vdd gnd AOI21X1
X_1892_ _59_ _60_ _88_ _1118_ _89_ vdd 
+ gnd
+ AOI22X1
X_1472_ _872_ _868_ _873_ vdd gnd AND2X2
X_2257_ _423_ _429_ _124__bF$buf1 _610_ vdd gnd MUX2X1
X_1948_ mem_ibus_ack_bF$buf5 _579_ _136_ _725_ vdd gnd OAI21X1
X_1528_ _894_ _896_ _927_ _928_ vdd gnd OAI21X1
X_1281_ _471_ _472_ _466_ vdd gnd NOR2X1
X_2486_ _629_ i_clk_sys_ext_bF$buf5 \u_cpu.ctrl.o_ibus_adr\[22] vdd gnd DFFPOSX1
X_2066_ \u_cpu.branch_op\ rf_read_reg1_to_if[0] _216_ _217_ vdd gnd OAI21X1
X_1757_ _1094_ _1096_ vdd gnd INVX1
X_1337_ _489__bF$buf0 _422_ _425_ _421_ vdd gnd OAI21X1
X_2295_ _814_ i_clk_fast_bF$buf6 \u_mem_serial.bit_count\[2] vdd gnd DFFPOSX1
X_1986_ \u_cpu.decode.opcode\[2] \u_cpu.decode.opcode\[1] _531_ _159_ vdd gnd OAI21X1
X_1566_ \u_rf_if.stream_active_bF$buf3\ \u_rf_if.read_buf0\[6] _957_ _958_ vdd gnd OAI21X1
X_1146_ \u_rf_if.stream_active_bF$buf0\ _594_ vdd gnd INVX2
X_1795_ _1130_ _565_ _1097_[2] vdd gnd NOR2X1
X_1375_ _396_ _489__bF$buf0 _389_ vdd gnd NAND2X1
XFILL95550x3750 gnd vdd FILL
X_1184_ \u_cpu.bufreg.i_right_shift_op\ _557_ _556_ vdd gnd NAND2X1
X_2389_ _687_ i_clk_sys_ext_bF$buf10 \u_cpu.immdec.gen_immdec_w_eq_1.imm31\ vdd gnd DFFPOSX1
XFILL94950x43350 gnd vdd FILL
X_2198_ _296_ _301_ _547_ _302_ vdd gnd OAI21X1
X_1889_ _530_ _17_ _86_ vdd gnd NOR2X1
X_1469_ \u_rf_if.tx_state\[3] \u_rf_if.tx_state\[2] _870_ vdd gnd NOR2X1
X_2410_ _708_ i_clk_sys_ext_bF$buf3 rf_read_reg0_to_if[3] vdd gnd DFFPOSX1
X_1698_ _1052_ _1053_ _943_ _1054_ vdd gnd OAI21X1
X_1278_ _470_ _469_ vdd gnd INVX1
X_1910_ _104_ _526_ _731_ vdd gnd NAND2X1
X_2504_ _777_ i_clk_sys_ext_bF$buf12 \u_rf_if.read_buf0\[26] vdd gnd DFFPOSX1
X_2313_ _822_ i_clk_fast_bF$buf3 \u_mem_serial.shift_reg\[8] vdd gnd DFFPOSX1
X_2542_ _805_ i_clk_fast_bF$buf5 \u_rf_if.shift_rx\[0] vdd gnd DFFPOSX1
X_2122_ _250_ _251_ _23__bF$buf2 _665_ vdd gnd MUX2X1
X_1813_ _1043_ _9_ _524_ _10_ vdd gnd NAND3X1
X_2351_ _846_ i_clk_fast_bF$buf4 \u_mem_serial.shift_reg\[0] vdd gnd DFFPOSX1
X_1622_ \u_rf_if.stream_active_bF$buf6\ \u_rf_if.read_buf0\[20] _999_ _1000_ vdd gnd OAI21X1
X_1202_ \u_cpu.bufreg2.dhi\[4] _542_ _539_ _538_ vdd gnd OAI21X1
XFILL95250x43350 gnd vdd FILL
X_2407_ _705_ i_clk_sys_ext_bF$buf1 \u_cpu.csr_imm\ vdd gnd DFFPOSX1
X_2160_ _862_ _593_ _648_ vdd gnd NOR2X1
X_1851_ _47_ _46_ _48_ vdd gnd NAND2X1
X_1431_ _352_ _459__bF$buf3 _351_ _818_ vdd gnd OAI21X1
X_2216_ _67_ _284_ _314_ _634_ vdd gnd AOI21X1
X_1907_ _95_ _92_ _102_ _103_ vdd gnd OAI21X1
X_1660_ \u_rf_if.read_buf0\[30] _594_ _1028_ vdd gnd NAND2X1
X_1240_ \u_mem_serial.bit_count\[4] \u_mem_serial.bit_count\[2] _502_ vdd gnd NOR2X1
X_2445_ _601_ i_clk_sys_ext_bF$buf9 \u_cpu.ctrl.pc_plus_4_cy_r_w\ vdd gnd DFFPOSX1
X_2025_ \u_cpu.immdec.gen_immdec_w_eq_1.imm30_25\[1] _187_ vdd gnd INVX1
X_1716_ \u_rf_if.last_req_key\[7] _936_ i_rst_n_bF$buf3 _1064_ vdd gnd OAI21X1
XFILL95550x86550 gnd vdd FILL
X_2254_ _405_ _411_ _124__bF$buf0 _613_ vdd gnd MUX2X1
X_1945_ _134_ \u_rf_if.rtrig0\ _135_ vdd gnd NAND2X1
X_1525_ _917_ _924_ _923_ _925_ vdd gnd NAND3X1
X_2483_ \u_rf_if.rtrig0\ i_clk_sys_ext_bF$buf7 \u_rf_if.rtrig1\ vdd gnd DFFPOSX1
X_2063_ rf_read_reg0_to_if[4] _214_ vdd gnd INVX1
X_1754_ _810_ _1092_ _1093_ _746_ vdd gnd AOI21X1
X_1334_ \u_cpu.bufreg.data\[4] _424_ vdd gnd INVX1
X_2539_ _633_ i_clk_sys_ext_bF$buf8 \u_cpu.ctrl.o_ibus_adr\[26] vdd gnd DFFPOSX1
X_2119_ \u_cpu.bufreg.data\[13] _250_ vdd gnd INVX1
X_2292_ _640_ i_clk_sys_ext_bF$buf11 \u_cpu.bufreg2.dhi\[3] vdd gnd DFFPOSX1
X_1983_ rf_read_reg0_to_if[3] _156_ vdd gnd INVX1
X_1563_ _585_ _955_ _953_ _800_ vdd gnd OAI21X1
X_1143_ \u_rf_if.issue_reg\[1] _596_ vdd gnd INVX1
X_2348_ _844_ i_clk_fast_bF$buf2 \u_mem_serial.shift_reg\[16] vdd gnd DFFPOSX1
X_1619_ _997_ _992_ _586__bF$buf1 _786_ vdd gnd MUX2X1
X_1792_ \u_cpu.bufreg2.i_bytecnt\[0] _569_ _1129_ vdd gnd NOR2X1
X_1372_ _489__bF$buf4 _392_ _395_ _391_ vdd gnd OAI21X1
X_2157_ _1115_ _257_ _271_ vdd gnd NOR2X1
X_1848_ _42_ _44_ \u_cpu.ctrl.pc\ _45_ vdd gnd OAI21X1
X_1428_ _354_ _459__bF$buf3 _353_ _819_ vdd gnd OAI21X1
X_1181_ \u_cpu.state.cnt_r\[3] _560_ _559_ vdd gnd NOR2X1
XFILL95550x18150 gnd vdd FILL
X_2386_ _684_ i_clk_sys_ext_bF$buf1 \u_cpu.immdec.gen_immdec_w_eq_1.imm30_25\[5] vdd gnd DFFPOSX1
X_1657_ \u_rf_if.stream_active_bF$buf1\ _1025_ _1026_ vdd gnd NAND2X1
X_1237_ i_clk_sys_ext_bF$buf4 _505_ vdd gnd INVX1
X_2195_ _283_ _292_ _299_ _300_ vdd gnd OAI21X1
X_1886_ _82_ _83_ vdd gnd INVX1
X_1466_ \u_rf_if.tx_state\[0] _867_ vdd gnd INVX1
XFILL94950x64950 gnd vdd FILL
X_1695_ _1050_ _1051_ vdd gnd INVX1
X_1275_ \u_mem_serial.req_pending\ _479_ _471_ vdd gnd NAND2X1
X_2289_ _639_ i_clk_sys_ext_bF$buf0 \u_cpu.bufreg.i_shamt\[2] vdd gnd DFFPOSX1
X_2501_ _774_ i_clk_sys_ext_bF$buf0 \u_rf_if.read_buf0\[29] vdd gnd DFFPOSX1
X_2098_ _238_ _239_ _23__bF$buf0 _677_ vdd gnd MUX2X1
X_1789_ _1127_ _1125_ _527_ _737_ vdd gnd AOI21X1
X_1369_ \u_cpu.bufreg.data\[9] _394_ vdd gnd INVX1
X_2310_ _599_ i_clk_sys_ext_bF$buf10 \u_cpu.alu.add_cy_r\ vdd gnd DFFPOSX1
X_1598_ \u_rf_if.stream_active_bF$buf5\ \u_rf_if.read_buf0\[14] _981_ _982_ vdd gnd OAI21X1
X_1178_ _563_ _562_ vdd gnd INVX1
X_1810_ _6_ _7_ vdd gnd INVX1
X_2404_ _702_ i_clk_sys_ext_bF$buf1 \u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20\[1] vdd gnd DFFPOSX1
XFILL95250x64950 gnd vdd FILL
X_2213_ _163_ _1040_ mem_ibus_ack_bF$buf6 _636_ vdd gnd MUX2X1
X_1904_ _98_ _99_ _1047_ _100_ vdd gnd OAI21X1
X_2442_ _610_ i_clk_sys_ext_bF$buf4 \u_cpu.ctrl.o_ibus_adr\[3] vdd gnd DFFPOSX1
X_2022_ \u_cpu.immdec.gen_immdec_w_eq_1.imm30_25\[2] _185_ vdd gnd INVX1
X_1713_ _515_ _936_ _1062_ _757_ vdd gnd AOI21X1
X_2251_ _387_ _393_ _124__bF$buf0 _616_ vdd gnd MUX2X1
X_1942_ rf_wreg0_to_if[3] rf_wreg0_to_if[0] _132_ vdd gnd NOR2X1
X_1522_ _921_ _922_ vdd gnd INVX1
X_2307_ _819_ i_clk_fast_bF$buf2 \u_mem_serial.shift_reg\[11] vdd gnd DFFPOSX1
X_2480_ _760_ i_clk_fast_bF$buf1 \u_rf_if.last_req_key\[2] vdd gnd DFFPOSX1
X_2060_ _202_ _211_ _212_ _688_ vdd gnd OAI21X1
X_1751_ _1033_ _1032_ _1091_ vdd gnd NOR2X1
X_1331_ _427_ _432_ _459__bF$buf0 _842_ vdd gnd MUX2X1
X_2536_ _801_ i_clk_sys_ext_bF$buf0 \u_rf_if.read_buf0\[2] vdd gnd DFFPOSX1
X_2116_ _247_ _248_ _23__bF$buf0 _668_ vdd gnd MUX2X1
X_1807_ \u_rf_if.wdata0_next_phase\ _1123_ _4_ vdd gnd NAND2X1
X_1980_ mem_ibus_ack_bF$buf3 \u_mem_serial.shift_reg\[30] _155_ vdd gnd NAND2X1
X_1560_ \u_rf_if.read_buf0\[3] _585_ _953_ vdd gnd NAND2X1
X_1140_ _1110_ o_mem_sync vdd gnd BUFX2
X_2345_ _841_ i_clk_fast_bF$buf7 \u_mem_serial.shift_reg\[19] vdd gnd DFFPOSX1
X_1616_ \u_rf_if.read_buf0\[18] _995_ vdd gnd INVX1
X_2154_ \u_cpu.bufreg.data\[2] _574_ _269_ _270_ vdd gnd AOI21X1
X_1845_ _532_ _26_ _41_ _32_ _42_ vdd 
+ gnd
+ OAI22X1
X_1425_ _356_ _459__bF$buf1 _355_ _820_ vdd gnd OAI21X1
X_2383_ _681_ i_clk_sys_ext_bF$buf8 \u_cpu.bufreg.data\[28] vdd gnd DFFPOSX1
XFILL95550x72150 gnd vdd FILL
X_1654_ \u_rf_if.stream_active_bF$buf1\ \u_rf_if.read_buf0\[28] _1023_ _1024_ vdd gnd OAI21X1
X_1234_ \u_mem_serial.active_ibus\ _508_ vdd gnd INVX1
X_2439_ _609_ i_clk_sys_ext_bF$buf4 \u_cpu.ctrl.o_ibus_adr\[2] vdd gnd DFFPOSX1
X_2019_ \u_cpu.immdec.gen_immdec_w_eq_1.imm30_25\[3] _183_ vdd gnd INVX1
X_2192_ _295_ _296_ _297_ vdd gnd NOR2X1
X_1883_ _578_ _79_ _76_ _77_ _80_ vdd 
+ gnd
+ AOI22X1
X_1463_ _863_ _810_ _864_ _809_ vdd gnd AOI21X1
X_2248_ \u_cpu.ctrl.o_ibus_adr\[11] _331_ vdd gnd INVX1
X_1939_ _128_ _129_ vdd gnd INVX1
X_1519_ raddr[0] _919_ vdd gnd INVX1
X_1692_ _880_ _1049_ vdd gnd INVX1
X_1272_ _474_ _480_ _473_ vdd gnd NOR2X1
X_2477_ _625_ i_clk_sys_ext_bF$buf13 \u_cpu.ctrl.o_ibus_adr\[18] vdd gnd DFFPOSX1
X_2057_ _204_ _209_ _210_ _689_ vdd gnd OAI21X1
X_1748_ _1088_ _1089_ vdd gnd INVX1
X_1328_ \u_cpu.ctrl.o_ibus_adr\[3] _429_ vdd gnd INVX1
X_2286_ _810_ i_clk_sys_ext_bF$buf6 ren vdd gnd DFFPOSX1
X_1977_ _582_ _420_ _153_ vdd gnd NOR2X1
X_1557_ _594_ _950_ _951_ vdd gnd NAND2X1
X_1137_ _1113_ o_rf_sync vdd gnd BUFX2
X_2095_ \u_cpu.bufreg.data\[25] _238_ vdd gnd INVX1
X_1786_ _1120_ _1124_ _1107_ _1125_ vdd gnd NAND3X1
X_1366_ _397_ _402_ _459__bF$buf0 _837_ vdd gnd MUX2X1
X_1595_ _979_ _974_ _586__bF$buf1 _792_ vdd gnd MUX2X1
X_1175_ _573_ _566_ _565_ vdd gnd NOR2X1
X_2189_ _291_ _294_ _641_ vdd gnd NAND2X1
X_2401_ _699_ i_clk_sys_ext_bF$buf1 \u_cpu.immdec.gen_immdec_w_eq_1.imm30_25\[3] vdd gnd DFFPOSX1
X_1689_ \u_rf_if.tx_state\[1] \u_rf_if.tx_state\[0] \u_rf_if.tx_state\[2] _1046_ vdd gnd OAI21X1
X_1269_ \u_mem_serial.req_pending\ _476_ vdd gnd INVX1
X_2210_ _309_ _310_ _312_ _638_ vdd gnd NAND3X1
X_1901_ _515_ _97_ vdd gnd INVX1
X_1498_ \u_rf_if.o_waddr\[1] ren _897_ _898_ vdd gnd OAI21X1
X_1710_ \u_rf_if.last_req_key\[4] _936_ i_rst_n_bF$buf3 _1061_ vdd gnd OAI21X1
X_2304_ _818_ i_clk_fast_bF$buf0 \u_mem_serial.shift_reg\[12] vdd gnd DFFPOSX1
X_2533_ _798_ i_clk_sys_ext_bF$buf12 \u_rf_if.read_buf0\[5] vdd gnd DFFPOSX1
X_2113_ \u_cpu.bufreg.data\[16] _247_ vdd gnd INVX1
X_1804_ _1133_ _1134_ _1114_ _1_ vdd gnd NAND3X1
X_2342_ _838_ i_clk_fast_bF$buf7 \u_mem_serial.shift_reg\[22] vdd gnd DFFPOSX1
X_1613_ \u_rf_if.stream_active_bF$buf6\ _992_ _993_ vdd gnd NAND2X1
X_2151_ _261_ _266_ _267_ vdd gnd OR2X2
XCLKBUF1_insert30 i_clk_fast i_clk_fast_bF$buf0 vdd gnd CLKBUF1
X_1842_ _36_ _38_ _25_ _14_ _39_ vdd 
+ gnd
+ AOI22X1
X_1422_ _358_ _459__bF$buf1 _357_ _821_ vdd gnd OAI21X1
X_2207_ _282_ _303_ _310_ vdd gnd NAND2X1
X_2380_ _678_ i_clk_sys_ext_bF$buf2 \u_cpu.bufreg.data\[25] vdd gnd DFFPOSX1
X_1651_ _1021_ _1016_ _586__bF$buf0 _778_ vdd gnd MUX2X1
X_1231_ _511_ _587_ _510_ vdd gnd NOR2X1
X_2436_ _730_ i_clk_sys_ext_bF$buf9 \u_cpu.ctrl.i_jump\ vdd gnd DFFPOSX1
X_2016_ _532_ _180_ _158_ _181_ vdd gnd OAI21X1
XFILL95550x93750 gnd vdd FILL
X_1707_ _909_ _935_ _1059_ _760_ vdd gnd AOI21X1
X_1880_ _1116_ _580_ _77_ vdd gnd AND2X2
X_1460_ _862_ _592_ _810_ vdd gnd NOR2X1
X_2245_ _328_ _329_ _124__bF$buf2 _620_ vdd gnd MUX2X1
X_1936_ \u_rf_if.o_waddr\[3] _1082_ _526_ _127_ vdd gnd OAI21X1
X_1516_ _914_ _915_ _908_ _916_ vdd gnd NAND3X1
X_2474_ _757_ i_clk_fast_bF$buf0 \u_rf_if.last_req_key\[5] vdd gnd DFFPOSX1
X_2054_ _204_ _207_ _208_ _690_ vdd gnd OAI21X1
X_1745_ \u_rf_if.pending_read\ _1086_ vdd gnd INVX1
X_1325_ \u_mem_serial.shift_reg\[18] _432_ vdd gnd INVX1
X_2283_ _637_ i_clk_sys_ext_bF$buf11 \u_cpu.bufreg.i_shamt\[0] vdd gnd DFFPOSX1
X_1974_ _364_ _11_ mem_ibus_ack_bF$buf3 _713_ vdd gnd MUX2X1
X_1554_ _586__bF$buf4 _947_ _948_ _802_ vdd gnd AOI21X1
X_2339_ _646_ i_clk_sys_ext_bF$buf11 \u_rf_if.write_wait\[1] vdd gnd DFFPOSX1
X_2092_ _234_ _236_ _23__bF$buf0 _680_ vdd gnd MUX2X1
X_1783_ \u_rf_if.o_waddr\[3] \u_rf_if.o_waddr\[2] _1122_ vdd gnd NOR2X1
X_1363_ \u_cpu.ctrl.o_ibus_adr\[8] _399_ vdd gnd INVX1
X_2148_ _258_ _264_ vdd gnd INVX1
XFILL95550x25350 gnd vdd FILL
X_1839_ _565_ _30_ _35_ _36_ vdd gnd OAI21X1
X_1419_ _360_ _459__bF$buf1 _359_ _822_ vdd gnd OAI21X1
X_1592_ \u_rf_if.read_buf0\[12] _977_ vdd gnd INVX1
X_1172_ _569_ _568_ vdd gnd INVX1
X_2377_ _675_ i_clk_sys_ext_bF$buf2 \u_cpu.bufreg.data\[22] vdd gnd DFFPOSX1
X_1648_ \u_rf_if.read_buf0\[26] _1019_ vdd gnd INVX1
X_1228_ ren raddr[7] _524_ _514_ _513_ vdd 
+ gnd
+ AOI22X1
X_2186_ _289_ _547_ _292_ vdd gnd NOR2X1
X_1877_ _66_ _72_ _74_ vdd gnd NAND2X1
X_1457_ _462_ _861_ vdd gnd INVX1
X_1686_ _1043_ _1042_ _765_ vdd gnd NOR2X1
X_1266_ \u_mem_serial.state\[1] \u_mem_serial.state\[0] _479_ vdd gnd NOR2X1
X_1495_ _893_ _895_ vdd gnd INVX1
X_2089_ \u_cpu.bufreg.data\[29] _235_ vdd gnd INVX1
X_2301_ _817_ i_clk_fast_bF$buf2 \u_mem_serial.shift_reg\[13] vdd gnd DFFPOSX1
X_1589_ \u_rf_if.stream_active_bF$buf5\ _974_ _975_ vdd gnd NAND2X1
X_1169_ \u_cpu.state.cnt_r\[3] _571_ vdd gnd INVX1
X_2530_ _796_ i_clk_sys_ext_bF$buf12 \u_rf_if.read_buf0\[7] vdd gnd DFFPOSX1
X_2110_ _244_ _245_ _23__bF$buf3 _671_ vdd gnd MUX2X1
X_1801_ _867_ _513_ _1135_ vdd gnd NAND2X1
X_1398_ _374_ _459__bF$buf4 _373_ _829_ vdd gnd OAI21X1
X_1610_ \u_rf_if.stream_active_bF$buf5\ \u_rf_if.read_buf0\[17] _990_ _991_ vdd gnd OAI21X1
X_2204_ \u_cpu.bufreg.i_shamt\[1] _307_ vdd gnd INVX1
X_2433_ _727_ i_clk_sys_ext_bF$buf6 \u_rf_if.o_waddr\[3] vdd gnd DFFPOSX1
X_2013_ _176_ _161_ _178_ _701_ vdd gnd AOI21X1
X_1704_ _1057_ _935_ i_rst_n_bF$buf2 _1058_ vdd gnd OAI21X1
X_2242_ \u_cpu.ctrl.o_ibus_adr\[14] _328_ vdd gnd INVX1
X_1933_ _124__bF$buf1 _125_ vdd gnd INVX1
X_1513_ _912_ _913_ vdd gnd INVX1
X_2471_ _622_ i_clk_sys_ext_bF$buf13 \u_cpu.ctrl.o_ibus_adr\[15] vdd gnd DFFPOSX1
X_2051_ _204_ _205_ _206_ _691_ vdd gnd OAI21X1
X_1742_ _1083_ _1082_ _748_ vdd gnd NOR2X1
X_1322_ _436_ _435_ _474_ _434_ vdd gnd MUX2X1
X_2527_ _793_ i_clk_sys_ext_bF$buf5 \u_rf_if.read_buf0\[10] vdd gnd DFFPOSX1
X_2107_ \u_cpu.bufreg.data\[19] _244_ vdd gnd INVX1
X_2280_ i_clk_fast_bF$buf5 _1131_ _1112_ vdd gnd NOR2X1
X_1971_ _450_ \u_rf_if.stream_active_bF$buf0\ _457_ _150_ vdd gnd AOI21X1
X_1551_ _946_ _945_ _586__bF$buf4 _803_ vdd gnd MUX2X1
X_2336_ _834_ i_clk_fast_bF$buf3 \u_mem_serial.shift_reg\[26] vdd gnd DFFPOSX1
X_1607_ _988_ _983_ _586__bF$buf2 _789_ vdd gnd MUX2X1
X_1780_ _580_ _1118_ _1119_ vdd gnd NAND2X1
X_1360_ \u_mem_serial.shift_reg\[23] _402_ vdd gnd INVX1
X_2145_ _554_ _260_ _36_ _261_ vdd gnd NAND3X1
X_1836_ _580_ _32_ \u_cpu.immdec.gen_immdec_w_eq_1.imm31\ _33_ vdd gnd OAI21X1
X_1416_ _362_ _459__bF$buf1 _361_ _823_ vdd gnd OAI21X1
XFILL95550x46950 gnd vdd FILL
X_2374_ _672_ i_clk_sys_ext_bF$buf2 \u_cpu.bufreg.data\[19] vdd gnd DFFPOSX1
X_1645_ \u_rf_if.stream_active_bF$buf2\ _1016_ _1017_ vdd gnd NAND2X1
X_1225_ _520_ rf_wreg0_to_if[1] _516_ vdd gnd AND2X2
X_2183_ \u_cpu.bufreg2.dhi\[4] _289_ vdd gnd INVX1
X_1874_ _70_ _67_ _71_ vdd gnd NAND2X1
X_1454_ _466_ _855_ _856_ vdd gnd NOR2X1
X_2239_ _325_ _326_ _124__bF$buf3 _623_ vdd gnd MUX2X1
X_1683_ \u_rf_if.tx_state\[0] _879_ i_rst_n_bF$buf1 _1042_ vdd gnd OAI21X1
X_1263_ _483_ _482_ _0_ vdd gnd NOR2X1
X_2468_ _754_ i_clk_fast_bF$buf0 \u_rf_if.last_req_key\[8] vdd gnd DFFPOSX1
X_2048_ mem_ibus_ack_bF$buf1 _203_ _204_ vdd gnd NOR2X1
X_1739_ _1079_ _1081_ _749_ vdd gnd NOR2X1
X_1319_ _440_ _489__bF$buf1 _437_ vdd gnd NAND2X1
X_1492_ _520_ raddr[3] _892_ vdd gnd OR2X2
X_2277_ _112_ _70_ _558_ _599_ vdd gnd MUX2X1
XFILL94650x3750 gnd vdd FILL
X_1968_ _455_ _454_ _456_ _148_ vdd gnd OAI21X1
X_1548_ _941_ _944_ _804_ vdd gnd NOR2X1
X_2086_ \u_cpu.immdec.gen_immdec_w_eq_1.imm11_7\[4] _204_ _233_ vdd gnd NAND2X1
X_1777_ \u_cpu.bne_or_bge\ \u_cpu.decode.co_mem_word\ _1116_ vdd gnd NOR2X1
X_1357_ _406_ _405_ _474_ _404_ vdd gnd MUX2X1
X_1586_ \u_rf_if.stream_active_bF$buf0\ \u_rf_if.read_buf0\[11] _972_ _973_ vdd gnd OAI21X1
X_1166_ _581_ _575_ _574_ vdd gnd NAND2X1
XCLKBUF1_insert9 i_clk_sys_ext i_clk_sys_ext_bF$buf13 vdd gnd CLKBUF1
X_1395_ _459__bF$buf3 _376_ _375_ _830_ vdd gnd AOI21X1
X_2201_ _282_ _303_ _304_ _305_ vdd gnd OAI21X1
X_1489_ _887_ _888_ _889_ vdd gnd NAND2X1
X_2430_ _725_ i_clk_sys_ext_bF$buf10 \u_cpu.decode.co_mem_word\ vdd gnd DFFPOSX1
X_2010_ \u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20\[0] _176_ vdd gnd INVX1
X_1701_ _918_ _935_ _1055_ _762_ vdd gnd AOI21X1
X_1298_ _456_ _452_ _451_ vdd gnd NOR2X1
X_1930_ _581_ _565_ _562_ _729_ vdd gnd OAI21X1
X_1510_ raddr[2] _910_ vdd gnd INVX1
X_2524_ _790_ i_clk_sys_ext_bF$buf5 \u_rf_if.read_buf0\[13] vdd gnd DFFPOSX1
X_2104_ _241_ _242_ _23__bF$buf3 _674_ vdd gnd MUX2X1
X_2333_ _658_ i_clk_sys_ext_bF$buf2 \u_cpu.bufreg.data\[5] vdd gnd DFFPOSX1
X_1604_ \u_rf_if.read_buf0\[15] _986_ vdd gnd INVX1
X_2142_ \u_cpu.decode.opcode\[1] _532_ \u_cpu.branch_op\ _258_ vdd gnd OAI21X1
X_1833_ rf_read_reg1_to_if[0] rf_wreg0_to_if[0] _29_ _30_ vdd gnd MUX2X1
X_1413_ _364_ _459__bF$buf4 _363_ _824_ vdd gnd OAI21X1
XBUFX2_insert60 _459_ _459__bF$buf0 vdd gnd BUFX2
XBUFX2_insert61 mem_ibus_ack mem_ibus_ack_bF$buf6 vdd gnd BUFX2
XBUFX2_insert62 mem_ibus_ack mem_ibus_ack_bF$buf5 vdd gnd BUFX2
XBUFX2_insert63 mem_ibus_ack mem_ibus_ack_bF$buf4 vdd gnd BUFX2
XBUFX2_insert64 mem_ibus_ack mem_ibus_ack_bF$buf3 vdd gnd BUFX2
XBUFX2_insert65 mem_ibus_ack mem_ibus_ack_bF$buf2 vdd gnd BUFX2
XBUFX2_insert66 mem_ibus_ack mem_ibus_ack_bF$buf1 vdd gnd BUFX2
XBUFX2_insert67 mem_ibus_ack mem_ibus_ack_bF$buf0 vdd gnd BUFX2
X_2371_ _670_ i_clk_sys_ext_bF$buf2 \u_cpu.bufreg.data\[17] vdd gnd DFFPOSX1
X_1642_ \u_rf_if.stream_active_bF$buf2\ \u_rf_if.read_buf0\[25] _1014_ _1015_ vdd gnd OAI21X1
X_1222_ _520_ rf_wreg0_to_if[0] _519_ vdd gnd AND2X2
X_2427_ _722_ i_clk_sys_ext_bF$buf3 \u_cpu.decode.opcode\[2] vdd gnd DFFPOSX1
X_2007_ mem_ibus_ack_bF$buf1 _170_ _137_ _174_ vdd gnd OAI21X1
X_2180_ _284_ _286_ _536_ _287_ vdd gnd NAND3X1
X_1871_ _67_ _68_ vdd gnd INVX1
X_1451_ _719_ _463_ \u_mem_serial.bit_count\[4] _736_ vdd gnd OAI21X1
X_2236_ \u_cpu.ctrl.o_ibus_adr\[17] _325_ vdd gnd INVX1
X_1927_ _119_ _120_ _121_ vdd gnd NAND2X1
X_1507_ \u_rf_if.req_seen\ _907_ vdd gnd INVX1
X_1680_ \u_rf_if.issue_reg\[2] _1040_ vdd gnd INVX1
X_1260_ _1110_ _483_ vdd gnd INVX1
X_2465_ _619_ i_clk_sys_ext_bF$buf8 \u_cpu.ctrl.o_ibus_adr\[12] vdd gnd DFFPOSX1
X_2045_ _199_ _193_ _201_ _692_ vdd gnd AOI21X1
X_1736_ _1078_ _1076_ _1079_ vdd gnd NOR2X1
X_1316_ \u_mem_serial.shift_reg\[15] _489__bF$buf1 _443_ \u_cpu.ctrl.o_ibus_adr\[1] _439_ vdd 
+ gnd
+ AOI22X1
X_2274_ _51_ \u_cpu.ctrl.i_jump\ _339_ vdd gnd AND2X2
X_1965_ \u_rf_if.stream_active_bF$buf0\ _145_ _452_ _146_ vdd gnd NAND3X1
X_1545_ \u_rf_if.tx_state\[1] \u_rf_if.tx_state\[0] _942_ vdd gnd NOR2X1
X_2083_ mem_ibus_ack_bF$buf4 \u_mem_serial.shift_reg\[24] _230_ _231_ vdd gnd AOI21X1
XFILL95550x32550 gnd vdd FILL
X_1774_ _876_ _1106_ _1107_ vdd gnd NOR2X1
X_1354_ _414_ _489__bF$buf0 _407_ vdd gnd NAND2X1
X_2139_ \u_cpu.bufreg.data\[31] _257_ vdd gnd INVX1
X_1583_ _970_ _965_ _586__bF$buf0 _795_ vdd gnd MUX2X1
X_1163_ \u_cpu.branch_op\ \u_cpu.decode.opcode\[0] _577_ vdd gnd NOR2X1
X_2368_ _859_ i_clk_sys_ext_bF$buf1 \u_rf_if.issue_reg\[1] vdd gnd DFFPOSX1
X_1639_ _1012_ _1007_ _586__bF$buf3 _781_ vdd gnd MUX2X1
X_1219_ ren _523_ _522_ vdd gnd NOR2X1
X_1392_ _459__bF$buf2 _378_ _377_ _831_ vdd gnd AOI21X1
X_2177_ _282_ _547_ \u_cpu.bufreg2.cnt_next\[6] _285_ vdd gnd OAI21X1
X_1868_ _594_ _945_ _64_ _65_ vdd gnd OAI21X1
X_1448_ _503_ _343_ _734_ vdd gnd NOR2X1

.ends
.end
