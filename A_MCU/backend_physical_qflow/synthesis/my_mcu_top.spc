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

X_1677_ _1020_ _1021_ _777_ vdd gnd NOR2X1
X_1257_ \u_cpu.decode.opcode\[0] _472_ _452_ vdd gnd NOR2X1
XFILL99150x72150 gnd vdd FILL
XFILL99150x39750 gnd vdd FILL
X_1486_ _859_ _867_ _722_ _874_ vdd gnd OAI21X1
X_1295_ _438_ \u_cpu.decode.opcode\[2] _493_ _417_ vdd gnd OAI21X1
X_2521_ _614_ i_clk_fast_bF$buf5 \u_mem_serial.shift_reg\[15] vdd gnd DFFPOSX1
X_2101_ \u_cpu.decode.opcode\[1] _437_ \u_cpu.branch_op\ _154_ vdd gnd OAI21X1
X_1389_ \u_rf_if.last_req_key\[3] _327_ _325_ vdd gnd NOR2X1
X_2330_ _664_ i_clk_sys_ext_bF$buf8 \u_cpu.bufreg.data\[28] vdd gnd DFFPOSX1
X_1601_ \u_rf_if.rreg0_latched\[3] _970_ _969_ _971_ vdd gnd NAND3X1
X_1198_ \u_mem_serial.shift_reg\[0] _510_ _509_ vdd gnd NAND2X1
X_1830_ _552__bF$buf0 _1127_ _1128_ _725_ vdd gnd OAI21X1
X_1410_ _305_ _315_ _304_ vdd gnd AND2X2
XBUFX2_insert37 _440_ _440__bF$buf5 vdd gnd BUFX2
XBUFX2_insert38 _440_ _440__bF$buf4 vdd gnd BUFX2
XBUFX2_insert39 _440_ _440__bF$buf3 vdd gnd BUFX2
X_2424_ _601_ i_clk_sys_ext_bF$buf13 \u_cpu.ctrl.o_ibus_adr\[21] vdd gnd DFFPOSX1
X_2004_ _93_ _95_ _96_ _674_ vdd gnd OAI21X1
X_2233_ \u_cpu.ctrl.o_ibus_adr\[19] _253_ vdd gnd INVX1
X_1924_ \u_cpu.bufreg.data\[6] _41_ vdd gnd INVX1
X_1504_ _889_ _446_ _834_ vdd gnd NAND2X1
X_2462_ _768_ i_clk_sys_ext_bF$buf11 \u_rf_if.read_buf0\[28] vdd gnd DFFPOSX1
X_2042_ _122_ _93_ _125_ _665_ vdd gnd OAI21X1
X_1733_ rf_read_reg1_to_if[0] _1059_ vdd gnd INVX1
X_1313_ _491_ _489_ _492_ _399_ vdd gnd OAI21X1
X_2518_ _813_ i_clk_sys_ext_bF$buf5 \u_rf_if.stream_cnt\[3] vdd gnd DFFPOSX1
X_2271_ _267_ _264_ _440__bF$buf2 _576_ vdd gnd MUX2X1
X_1962_ _64_ _56_ _66_ _686_ vdd gnd AOI21X1
X_1542_ _922_ _923_ vdd gnd INVX1
X_2327_ _817_ i_clk_fast_bF$buf2 \u_rf_if.shift_rx\[1] vdd gnd DFFPOSX1
X_2080_ \u_cpu.bufreg.data\[10] _145_ vdd gnd INVX1
X_1771_ \u_rf_if.last_req_key\[3] _704__bF$buf3 i_rst_n_bF$buf3 _1081_ vdd gnd OAI21X1
X_1351_ _377_ _363_ _361_ vdd gnd NAND2X1
X_2556_ _841_ i_clk_fast_bF$buf1 \u_rf_if.last_req_key\[9] vdd gnd DFFPOSX1
X_2136_ i_mem_miso _178_ _179_ _180_ vdd gnd NAND3X1
X_1827_ _505__bF$buf0 _1119_ _1126_ _726_ vdd gnd AOI21X1
X_1407_ \u_rf_if.last_req_key\[2] _309_ _307_ vdd gnd NAND2X1
X_1580_ _941_ _955_ _954_ _956_ vdd gnd OAI21X1
X_1160_ _0_ o_mem_mosi vdd gnd BUFX2
X_2365_ _696_ i_clk_sys_ext_bF$buf6 \u_cpu.branch_op\ vdd gnd DFFPOSX1
X_1636_ _994_ _995_ _792_ vdd gnd NOR2X1
X_1216_ _500_ _494_ _493_ vdd gnd NAND2X1
X_2174_ \u_cpu.bufreg.i_shamt\[1] _212_ vdd gnd INVX1
X_1865_ \u_cpu.ctrl.o_ibus_adr\[5] _1154_ vdd gnd INVX1
X_1445_ _724_ i_rf_miso _797_ vdd gnd OR2X2
XFILL98550x32550 gnd vdd FILL
XFILL98850x150 gnd vdd FILL
X_1674_ \u_rf_if.stream_active_bF$buf0\ _1017_ _1019_ _778_ vdd gnd AOI21X1
X_1254_ _458_ _456_ _465_ _455_ vdd gnd NAND3X1
X_2459_ _611_ i_clk_fast_bF$buf5 \u_mem_serial.shift_reg\[25] vdd gnd DFFPOSX1
X_2039_ _123_ _86_ _124_ vdd gnd NOR2X1
X_1483_ _809_ _870_ _871_ vdd gnd NAND2X1
X_2268_ _266_ _265_ _440__bF$buf5 _578_ vdd gnd MUX2X1
XFILL99150x93750 gnd vdd FILL
X_1959_ \u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20\[2] _64_ vdd gnd INVX1
X_1539_ _918_ _919_ _920_ vdd gnd NOR2X1
X_1292_ \u_cpu.state.o_cnt\[2] _421_ _420_ vdd gnd NOR2X1
XFILL98850x75750 gnd vdd FILL
X_2497_ _795_ i_clk_sys_ext_bF$buf3 \u_rf_if.read_buf0\[1] vdd gnd DFFPOSX1
X_2077_ _142_ _143_ _413__bF$buf0 _648_ vdd gnd MUX2X1
X_1768_ _323_ _704__bF$buf2 _1079_ _744_ vdd gnd AOI21X1
X_1348_ \u_cpu.branch_op\ _373_ _367_ _364_ vdd gnd OAI21X1
X_1997_ _1059_ _90_ _86_ _675_ vdd gnd MUX2X1
X_1577_ mem_ibus_ack_bF$buf0 _952_ _953_ _825_ vdd gnd AOI21X1
X_1157_ _1122_ o_rf_mosi vdd gnd BUFX2
X_1386_ ren_bF$buf3 \u_rf_if.o_waddr\[3] _329_ _328_ vdd gnd OAI21X1
X_1195_ \u_mem_serial.shift_reg\[3] _512_ vdd gnd INVX1
X_2421_ _745_ i_clk_fast_bF$buf2 \u_rf_if.last_req_key\[0] vdd gnd DFFPOSX1
X_2001_ mem_ibus_ack_bF$buf3 _429_ _94_ vdd gnd NOR2X1
X_1289_ _437_ _424_ _423_ vdd gnd NOR2X1
X_2230_ _250_ _251_ _440__bF$buf2 _601_ vdd gnd MUX2X1
X_1921_ \u_mem_serial.bit_count\[4] _31_ \u_mem_serial.bit_count\[5] _39_ vdd gnd OAI21X1
X_1501_ \u_mem_serial.shift_reg\[27] _505__bF$buf4 _888_ vdd gnd NOR2X1
X_1730_ rf_read_reg0_to_if[2] _1057_ vdd gnd INVX1
X_1310_ _403_ _402_ vdd gnd INVX1
X_2515_ _554_ _553_ vdd gnd INVX1
X_2324_ _659_ i_clk_sys_ext_bF$buf8 \u_cpu.bufreg.data\[23] vdd gnd DFFPOSX1
X_2553_ _625_ i_clk_fast_bF$buf6 \u_mem_serial.shift_reg\[5] vdd gnd DFFPOSX1
X_2133_ _514_ _505__bF$buf2 _177_ _625_ vdd gnd OAI21X1
X_1824_ _567_ _551__bF$buf0 _1118_ vdd gnd NOR2X1
X_1404_ _337_ _311_ _310_ vdd gnd NAND2X1
X_2362_ _693_ i_clk_fast_bF$buf6 \u_mem_serial.shift_reg\[3] vdd gnd DFFPOSX1
X_1633_ _992_ _993_ _793_ vdd gnd NOR2X1
X_1213_ \u_cpu.branch_op\ \u_cpu.decode.opcode\[0] _496_ vdd gnd NOR2X1
X_2418_ _598_ i_clk_sys_ext_bF$buf3 \u_cpu.ctrl.o_ibus_adr\[18] vdd gnd DFFPOSX1
X_2171_ _187_ _208_ _209_ _210_ vdd gnd OAI21X1
X_1862_ \u_mem_serial.shift_reg\[20] _1151_ vdd gnd INVX1
X_1442_ \u_rf_if.tx_state\[0] _722_ vdd gnd INVX1
X_2227_ \u_cpu.ctrl.o_ibus_adr\[22] _250_ vdd gnd INVX1
X_1918_ _35_ _33_ _36_ vdd gnd NAND2X1
X_1671_ _383__bF$buf0 \u_rf_if.read_buf0\[18] \u_rf_if.read_buf0\[17] _990__bF$buf4 _1018_ vdd 
+ gnd
+ OAI22X1
X_1251_ \u_cpu.bufreg2.dhi\[5] _459_ _458_ vdd gnd NAND2X1
X_2456_ _764_ i_clk_sys_ext_bF$buf5 \u_rf_if.issue_idx\[2] vdd gnd DFFPOSX1
X_2036_ \u_mem_serial.shift_reg\[24] _121_ vdd gnd INVX1
X_1727_ rf_read_reg0_to_if[1] _1055_ vdd gnd INVX1
X_1307_ _438_ _472_ _405_ vdd gnd NOR2X1
X_1480_ _867_ _868_ vdd gnd INVX1
X_2265_ _264_ _246_ _440__bF$buf5 _579_ vdd gnd MUX2X1
X_1956_ mem_ibus_ack_bF$buf6 _1053_ _48_ _62_ vdd gnd OAI21X1
X_1536_ \u_rf_if.stream_cnt\[3] _917_ vdd gnd INVX1
X_2494_ _792_ i_clk_sys_ext_bF$buf7 \u_rf_if.read_buf0\[4] vdd gnd DFFPOSX1
X_2074_ \u_cpu.bufreg.data\[13] _142_ vdd gnd INVX1
X_1765_ \u_rf_if.last_req_key\[0] _704__bF$buf1 i_rst_n_bF$buf3 _1078_ vdd gnd OAI21X1
X_1345_ _371_ _369_ _368_ _367_ vdd gnd OAI21X1
X_1994_ \u_mem_serial.shift_reg\[21] rf_read_reg1_to_if[2] mem_ibus_ack_bF$buf2 _89_ vdd gnd MUX2X1
X_1574_ _947__bF$buf0 _951_ _950_ _826_ vdd gnd OAI21X1
X_2359_ _691_ i_clk_sys_ext_bF$buf12 rf_read_reg0_to_if[3] vdd gnd DFFPOSX1
X_1383_ \u_rf_if.last_req_key\[7] _333_ _331_ vdd gnd NAND2X1
X_2588_ _726_ i_clk_fast_bF$buf5 \u_mem_serial.shift_reg\[30] vdd gnd DFFPOSX1
X_2168_ _201_ _206_ _465_ _207_ vdd gnd OAI21X1
X_1859_ mem_ibus_ack_bF$buf0 _484_ _1149_ vdd gnd NOR2X1
X_1439_ _276_ _704_ vdd gnd INVX4
X_1192_ \u_mem_serial.shift_reg\[6] _515_ vdd gnd INVX1
X_2397_ _589_ i_clk_sys_ext_bF$buf10 \u_cpu.ctrl.o_ibus_adr\[9] vdd gnd DFFPOSX1
X_1668_ \u_rf_if.read_buf0\[18] _947__bF$buf4 \u_rf_if.read_buf0\[16] _990__bF$buf4 _1016_ vdd 
+ gnd
+ OAI22X1
X_1248_ \u_cpu.bufreg2.dhi\[3] _462_ _461_ vdd gnd NOR2X1
X_1897_ \u_mem_serial.shift_reg\[31] _20_ vdd gnd INVX1
X_1477_ _863_ _864_ _865_ vdd gnd AND2X2
X_1286_ _426_ _440__bF$buf1 _425_ vdd gnd NAND2X1
X_2512_ \u_mem_serial.shift_reg\[9] _551__bF$buf2 _550_ vdd gnd NAND2X1
X_2321_ _656_ i_clk_sys_ext_bF$buf2 \u_cpu.bufreg.data\[20] vdd gnd DFFPOSX1
X_1189_ mem_ibus_ack_bF$buf0 _518_ vdd gnd INVX4
X_2550_ _838_ i_clk_fast_bF$buf7 _1124_ vdd gnd DFFPOSX1
X_2130_ \u_mem_serial.shift_reg\[30] _551__bF$buf1 _505__bF$buf0 _176_ vdd gnd NAND3X1
X_1821_ \u_mem_serial.shift_reg\[28] _504_ _1116_ vdd gnd NOR2X1
X_1401_ _323_ _313_ vdd gnd INVX1
X_1630_ \u_rf_if.stream_active_bF$buf0\ _988_ _991_ _794_ vdd gnd AOI21X1
X_1210_ \u_cpu.bufreg.i_right_shift_op\ _499_ vdd gnd INVX2
X_2415_ _742_ i_clk_fast_bF$buf2 \u_rf_if.last_req_key\[3] vdd gnd DFFPOSX1
X_2224_ _247_ _248_ _440__bF$buf5 _604_ vdd gnd MUX2X1
X_1915_ _504_ _33_ _562_ _34_ vdd gnd OAI21X1
X_2453_ _609_ i_clk_sys_ext_bF$buf1 \u_cpu.bufreg2.cnt_next\[6] vdd gnd DFFPOSX1
X_2033_ \u_mem_serial.shift_reg\[30] mem_ibus_ack_bF$buf6 _75_ _119_ vdd gnd AOI21X1
X_1724_ \u_cpu.csr_imm\ _1053_ vdd gnd INVX1
X_1304_ \u_cpu.decode.opcode\[0] _409_ _408_ vdd gnd NOR2X1
X_2509_ \u_mem_serial.shift_reg\[6] _551__bF$buf1 _548_ vdd gnd NAND2X1
X_2262_ \u_cpu.ctrl.pc\ _440__bF$buf0 _263_ vdd gnd NOR2X1
X_1953_ \u_mem_serial.shift_reg\[15] rf_read_reg0_to_if[1] mem_ibus_ack_bF$buf2 _60_ vdd gnd MUX2X1
X_1533_ _913_ _370_ _914_ vdd gnd NOR2X1
X_2318_ _653_ i_clk_sys_ext_bF$buf2 \u_cpu.bufreg.data\[17] vdd gnd DFFPOSX1
X_2491_ _789_ i_clk_sys_ext_bF$buf11 \u_rf_if.read_buf0\[7] vdd gnd DFFPOSX1
X_2071_ _139_ _140_ _413__bF$buf3 _651_ vdd gnd MUX2X1
X_1762_ _799_ _442_ _1076_ _1077_ vdd gnd OAI21X1
X_1342_ \u_rf_if.i_stream_rs2_en\ _370_ vdd gnd INVX1
X_2547_ _571_ i_clk_sys_ext_bF$buf1 \u_cpu.alu.add_cy_r\ vdd gnd DFFPOSX1
X_2127_ \u_mem_serial.state\[1] _174_ vdd gnd INVX1
X_1818_ _1112_ _1113_ _567_ _1114_ vdd gnd MUX2X1
XFILL99150x150 gnd vdd FILL
X_1991_ _906_ _87_ _86_ _678_ vdd gnd MUX2X1
X_1571_ _947__bF$buf0 _938_ _949_ _827_ vdd gnd OAI21X1
X_2356_ _688_ i_clk_sys_ext_bF$buf4 \u_cpu.csr_imm\ vdd gnd DFFPOSX1
X_1627_ _988_ _947__bF$buf1 _989_ _795_ vdd gnd OAI21X1
X_1207_ _505__bF$buf3 _503_ _502_ _847_ vdd gnd AOI21X1
X_1380_ ren_bF$buf0 raddr[7] _336_ _335_ _334_ vdd 
+ gnd
+ AOI22X1
X_2585_ _637_ i_clk_sys_ext_bF$buf12 \u_cpu.bufreg.data\[2] vdd gnd DFFPOSX1
X_2165_ _188_ _197_ _204_ _205_ vdd gnd OAI21X1
X_1856_ _473_ _1147_ _1136_ _718_ vdd gnd OAI21X1
X_1436_ _279_ _296_ _278_ vdd gnd AND2X2
X_2394_ _588_ i_clk_sys_ext_bF$buf10 \u_cpu.ctrl.o_ibus_adr\[8] vdd gnd DFFPOSX1
X_1665_ \u_rf_if.read_buf0\[17] _1014_ vdd gnd INVX1
X_1245_ \u_cpu.bufreg.i_shamt\[2] _464_ vdd gnd INVX1
X_1894_ mem_ibus_ack_bF$buf1 _437_ _18_ _706_ vdd gnd OAI21X1
X_1474_ _861_ _862_ vdd gnd INVX1
X_2259_ _532_ _242_ _440__bF$buf1 _582_ vdd gnd MUX2X1
X_1283_ _430_ _429_ _428_ vdd gnd NAND2X1
X_2488_ _786_ i_clk_sys_ext_bF$buf7 \u_rf_if.read_buf0\[10] vdd gnd DFFPOSX1
X_2068_ \u_cpu.bufreg.data\[16] _139_ vdd gnd INVX1
X_1759_ _520_ _522_ i_rst_n_bF$buf2 _1075_ vdd gnd OAI21X1
X_1339_ _376_ _375_ _374_ _373_ vdd gnd OAI21X1
X_2297_ \u_mem_serial.bit_count\[3] _559_ vdd gnd INVX1
X_1988_ \u_cpu.bufreg2.i_op_b_sel\ _437_ _404_ _85_ vdd gnd NAND3X1
X_1568_ _383__bF$buf4 _946_ _947_ vdd gnd NAND2X1
X_1797_ _1096_ _1097_ _927_ _733_ vdd gnd MUX2X1
X_1377_ ren_bF$buf2 _337_ vdd gnd INVX2
XFILL99150x32550 gnd vdd FILL
X_1186_ _521_ _520_ vdd gnd INVX1
X_2412_ _595_ i_clk_sys_ext_bF$buf3 \u_cpu.ctrl.o_ibus_adr\[15] vdd gnd DFFPOSX1
X_2221_ \u_cpu.ctrl.o_ibus_adr\[25] _247_ vdd gnd INVX1
X_1912_ _562_ _28_ _31_ vdd gnd NAND2X1
X_2450_ _761_ i_clk_sys_ext_bF$buf9 \u_rf_if.rreg0_latched\[0] vdd gnd DFFPOSX1
X_2030_ \u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20\[0] _114_ _115_ _116_ vdd gnd OAI21X1
X_1721_ _1051_ _1050_ _763_ vdd gnd NOR2X1
X_1301_ _418_ _412_ _411_ vdd gnd NOR2X1
X_2506_ \u_mem_serial.shift_reg\[10] _551__bF$buf2 _546_ vdd gnd NAND2X1
X_1950_ _1057_ _58_ _56_ _690_ vdd gnd MUX2X1
X_1530_ \u_rf_if.issue_idx\[1] \u_rf_if.issue_idx\[0] _911_ vdd gnd NOR2X1
X_2315_ \u_cpu.state.cnt_r\[0] i_clk_sys_ext_bF$buf2 \u_cpu.state.cnt_r\[1] vdd gnd DFFPOSX1
X_2544_ _576_ i_clk_sys_ext_bF$buf13 \u_cpu.ctrl.o_ibus_adr\[28] vdd gnd DFFPOSX1
X_2124_ \u_mem_serial.bit_count\[0] _551__bF$buf2 _172_ vdd gnd NAND2X1
X_1815_ _536_ _551__bF$buf5 _1111_ vdd gnd NAND2X1
X_2353_ _685_ i_clk_sys_ext_bF$buf4 \u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20\[1] vdd gnd DFFPOSX1
X_1624_ _986_ _947__bF$buf1 _987_ _796_ vdd gnd OAI21X1
X_1204_ _551__bF$buf2 _504_ vdd gnd INVX2
X_2409_ _739_ i_clk_fast_bF$buf1 \u_rf_if.last_req_key\[6] vdd gnd DFFPOSX1
X_2582_ _635_ i_clk_sys_ext_bF$buf2 \u_cpu.bufreg.data\[30] vdd gnd DFFPOSX1
X_2162_ _200_ _201_ _202_ vdd gnd NOR2X1
X_1853_ _1137_ _1139_ _1144_ _1145_ vdd gnd OAI21X1
X_1433_ \u_rf_if.last_req_key\[5] _283_ _281_ vdd gnd NAND2X1
X_2218_ \u_cpu.ctrl.o_ibus_adr\[26] _245_ vdd gnd INVX1
X_2391_ _716_ i_clk_sys_ext_bF$buf12 \u_cpu.state.ibus_cyc\ vdd gnd DFFPOSX1
X_1909_ _559_ _24_ _29_ vdd gnd NOR2X1
X_1662_ \u_rf_if.read_buf0\[15] _383__bF$buf1 _1012_ vdd gnd NOR2X1
X_1242_ _499_ _483_ _468_ _467_ vdd gnd OAI21X1
X_2447_ _758_ i_clk_sys_ext_bF$buf12 \u_rf_if.rreg1_latched\[0] vdd gnd DFFPOSX1
X_2027_ \u_cpu.branch_op\ _437_ _113_ vdd gnd NAND2X1
X_1718_ _1049_ _1048_ _764_ vdd gnd NOR2X1
X_1891_ _516_ mem_ibus_ack_bF$buf1 _17_ _708_ vdd gnd AOI21X1
X_1471_ \u_rf_if.wdata0_next\[0] _859_ vdd gnd INVX1
X_2256_ _42_ _1154_ _440__bF$buf1 _585_ vdd gnd MUX2X1
X_1947_ \u_mem_serial.shift_reg\[18] rf_read_reg0_to_if[4] mem_ibus_ack_bF$buf0 _57_ vdd gnd MUX2X1
X_1527_ \u_rf_if.prefetch_active\ _908_ vdd gnd INVX2
X_1280_ _433_ _432_ _431_ vdd gnd NAND2X1
X_2485_ _784_ i_clk_sys_ext_bF$buf7 \u_rf_if.read_buf0\[12] vdd gnd DFFPOSX1
X_2065_ _136_ _137_ _413__bF$buf2 _654_ vdd gnd MUX2X1
X_1756_ \u_rf_if.write_wait\[0] _1073_ _750_ vdd gnd NOR2X1
X_1336_ \u_cpu.bufreg2.i_op_b_sel\ _376_ vdd gnd INVX1
X_2294_ _563_ _568_ \u_mem_serial.state\[1] _562_ vdd gnd AOI21X1
X_1985_ \u_cpu.immdec.gen_immdec_w_eq_1.imm30_25\[0] _83_ vdd gnd INVX1
X_1565_ \u_rf_if.issue_idx\[4] _943_ _912_ _944_ vdd gnd NAND3X1
X_1794_ _908_ _915_ _330_ _1095_ vdd gnd OAI21X1
X_1374_ \u_mem_serial.shift_reg\[5] _551__bF$buf1 _505__bF$buf0 _339_ vdd gnd NAND3X1
X_2579_ _631_ i_clk_sys_ext_bF$buf2 \u_cpu.bufreg.data\[31] vdd gnd DFFPOSX1
X_2159_ _196_ _199_ _621_ vdd gnd NAND2X1
X_1183_ \u_rf_if.tx_state\[2] _524_ _523_ vdd gnd NOR2X1
X_2388_ _587_ i_clk_sys_ext_bF$buf4 \u_cpu.ctrl.o_ibus_adr\[7] vdd gnd DFFPOSX1
X_1659_ _1009_ _997_ _1010_ _784_ vdd gnd AOI21X1
X_1239_ \u_cpu.bufreg2.dhi\[6] _470_ vdd gnd INVX1
X_2197_ _551__bF$buf0 _229_ _227_ _230_ vdd gnd OAI21X1
X_1888_ _513_ _16_ vdd gnd INVX1
X_1468_ _806_ _837_ _846_ _848_ vdd gnd OAI21X1
X_1697_ \u_rf_if.read_buf0\[29] _947__bF$buf0 \u_rf_if.read_buf0\[27] _990__bF$buf1 _1034_ vdd 
+ gnd
+ OAI22X1
X_1277_ _435_ _436_ _434_ vdd gnd NOR2X1
X_2503_ _552__bF$buf3 _546_ _545_ _854_ vdd gnd OAI21X1
X_2312_ _649_ i_clk_sys_ext_bF$buf8 \u_cpu.bufreg.data\[13] vdd gnd DFFPOSX1
X_2541_ _823_ i_clk_sys_ext_bF$buf11 \u_rf_if.stream_active\ vdd gnd DFFPOSX1
X_2121_ _552__bF$buf1 _169_ _170_ _630_ vdd gnd OAI21X1
X_1812_ \u_rf_if.rs2_stream_buf\[0] _956_ _925_ _1109_ vdd gnd OAI21X1
X_2350_ _683_ i_clk_sys_ext_bF$buf4 \u_cpu.immdec.gen_immdec_w_eq_1.imm30_25\[4] vdd gnd DFFPOSX1
X_1621_ _917_ _985_ _984_ _978_ _813_ vdd 
+ gnd
+ AOI22X1
X_1201_ _516_ _515_ _507_ _506_ vdd gnd OAI21X1
X_2406_ _592_ i_clk_sys_ext_bF$buf10 \u_cpu.ctrl.o_ibus_adr\[12] vdd gnd DFFPOSX1
X_1850_ _1140_ _1141_ _1142_ vdd gnd NOR2X1
X_1430_ ren_bF$buf1 _439_ _284_ vdd gnd NOR2X1
X_2215_ _148_ _242_ _567_ _243_ vdd gnd MUX2X1
X_1906_ _560_ _562_ _26_ _702_ vdd gnd OAI21X1
X_2444_ _755_ i_clk_sys_ext_bF$buf12 \u_rf_if.rcnt\[0] vdd gnd DFFPOSX1
X_2024_ _476_ _105_ _110_ _668_ vdd gnd OAI21X1
X_1715_ \u_rf_if.issue_idx\[2] _1046_ _1047_ vdd gnd NAND2X1
X_2253_ _228_ _224_ _440__bF$buf0 _588_ vdd gnd MUX2X1
XFILL98250x93750 gnd vdd FILL
X_1944_ \u_cpu.decode.opcode\[0] _472_ _409_ _54_ vdd gnd OAI21X1
X_1524_ rf_read_reg1_to_if[3] _906_ vdd gnd INVX1
X_2309_ _646_ i_clk_sys_ext_bF$buf13 \u_cpu.bufreg.data\[10] vdd gnd DFFPOSX1
X_2482_ _781_ i_clk_sys_ext_bF$buf7 \u_rf_if.read_buf0\[15] vdd gnd DFFPOSX1
X_2062_ \u_cpu.bufreg.data\[19] _136_ vdd gnd INVX1
X_1753_ _894_ _1071_ _1072_ vdd gnd NOR2X1
X_1333_ \u_cpu.alu.add_cy_r\ _379_ vdd gnd INVX1
X_2538_ _828_ i_clk_sys_ext_bF$buf5 \u_rf_if.stream_cnt\[4] vdd gnd DFFPOSX1
X_2118_ _168_ _153_ _413__bF$buf3 _631_ vdd gnd MUX2X1
X_2291_ i_clk_sys_ext_bF$buf4 _565_ vdd gnd INVX1
X_1809_ \u_rf_if.rs2_stream_buf\[0] _1106_ vdd gnd INVX1
X_1982_ \u_cpu.immdec.gen_immdec_w_eq_1.imm30_25\[1] _81_ vdd gnd INVX1
X_1562_ _940_ _941_ vdd gnd INVX1
X_2347_ _681_ i_clk_sys_ext_bF$buf4 \u_cpu.immdec.gen_immdec_w_eq_1.imm30_25\[2] vdd gnd DFFPOSX1
X_1618_ _981_ _983_ _980_ _814_ vdd gnd OAI21X1
X_1791_ \u_rf_if.issue_idx\[2] _1043_ _927_ _1093_ vdd gnd OAI21X1
X_1371_ _342_ _343_ _341_ vdd gnd NOR2X1
X_2576_ _579_ i_clk_sys_ext_bF$buf13 \u_cpu.ctrl.o_ibus_adr\[27] vdd gnd DFFPOSX1
XFILL98850x3750 gnd vdd FILL
X_2156_ _194_ _465_ _197_ vdd gnd NOR2X1
X_1847_ _1138_ _419_ _362_ _361_ _1139_ vdd 
+ gnd
+ AOI22X1
X_1427_ _288_ \u_rf_if.last_req_key\[0] _287_ vdd gnd AND2X2
X_1180_ ren_bF$buf2 _527_ i_rst_n_bF$buf2 _526_ vdd gnd OAI21X1
X_2385_ _711_ i_clk_sys_ext_bF$buf6 \u_cpu.decode.co_mem_word\ vdd gnd DFFPOSX1
X_1656_ _1007_ _1008_ _785_ vdd gnd NOR2X1
X_1236_ \u_cpu.branch_op\ _482_ _473_ vdd gnd NAND2X1
X_2194_ _222_ _551__bF$buf0 _227_ vdd gnd NAND2X1
X_1885_ mem_ibus_ack_bF$buf1 _498_ _14_ _711_ vdd gnd OAI21X1
X_1465_ _810_ _836_ _808_ _837_ vdd gnd OAI21X1
X_1694_ \u_rf_if.read_buf0\[28] _1032_ vdd gnd INVX1
X_1274_ \u_cpu.decode.opcode\[0] _437_ vdd gnd INVX2
X_2479_ _778_ i_clk_sys_ext_bF$buf7 \u_rf_if.read_buf0\[18] vdd gnd DFFPOSX1
X_2059_ _133_ _134_ _413__bF$buf0 _657_ vdd gnd MUX2X1
XFILL98550x68550 gnd vdd FILL
X_2288_ \u_mem_serial.state\[0] _568_ vdd gnd INVX1
X_1979_ \u_cpu.immdec.gen_immdec_w_eq_1.imm30_25\[2] _79_ vdd gnd INVX1
X_1559_ _935_ _937_ \u_rf_if.shift_rx\[0] _938_ vdd gnd OAI21X1
X_2500_ _544_ _543_ vdd gnd INVX1
X_2097_ \u_cpu.bufreg.data\[30] _152_ vdd gnd INVX1
X_1788_ _921_ _1090_ _968_ _1091_ vdd gnd NAND3X1
X_1368_ _345_ _344_ vdd gnd INVX1
X_1597_ _908_ _915_ _966_ _819_ vdd gnd OAI21X1
X_1177_ \u_rf_if.wen0_r\ _529_ vdd gnd INVX1
X_2403_ _620_[2] i_clk_sys_ext_bF$buf2 \u_cpu.bufreg2.i_bytecnt\[1] vdd gnd DFFPOSX1
X_2212_ _239_ _240_ _552__bF$buf4 _608_ vdd gnd MUX2X1
X_1903_ \u_mem_serial.bit_count\[2] _22_ _24_ vdd gnd NOR2X1
X_2441_ _753_ i_clk_sys_ext_bF$buf0 \u_rf_if.o_waddr\[0] vdd gnd DFFPOSX1
X_2021_ _56_ _108_ _109_ vdd gnd NOR2X1
X_1712_ _943_ _1043_ _1044_ vdd gnd NOR2X1
X_2250_ _260_ _261_ _440__bF$buf3 _591_ vdd gnd MUX2X1
X_1941_ mem_ibus_ack_bF$buf1 _375_ _51_ _692_ vdd gnd OAI21X1
X_1521_ _501_ _903_ _904_ vdd gnd NOR2X1
X_2306_ _643_ i_clk_sys_ext_bF$buf10 \u_cpu.bufreg.data\[7] vdd gnd DFFPOSX1
X_1750_ \u_rf_if.o_waddr\[1] _892_ _446_ _1070_ vdd gnd OAI21X1
X_1330_ \u_rf_if.read_buf0\[0] _382_ vdd gnd INVX1
X_2535_ _826_ i_clk_sys_ext_bF$buf11 \u_rf_if.read_buf0\[31] vdd gnd DFFPOSX1
X_2115_ _160_ _163_ _412_ _632_ vdd gnd AOI21X1
X_1806_ _968_ _1102_ _1103_ _730_ vdd gnd OAI21X1
X_2344_ _678_ i_clk_sys_ext_bF$buf4 rf_read_reg1_to_if[3] vdd gnd DFFPOSX1
X_1615_ \u_rf_if.stream_cnt\[2] \u_rf_if.stream_cnt\[0] _981_ vdd gnd NOR2X1
X_2573_ _629_ i_clk_fast_bF$buf6 \u_mem_serial.shift_reg\[4] vdd gnd DFFPOSX1
X_2153_ \u_cpu.bufreg2.dhi\[4] _194_ vdd gnd INVX1
XCLKBUF1_insert50 i_clk_fast i_clk_fast_bF$buf0 vdd gnd CLKBUF1
X_1844_ _492_ _485_ \u_cpu.ctrl.i_jump\ _1136_ vdd gnd OAI21X1
X_1424_ _337_ raddr[0] _290_ vdd gnd OR2X2
X_2209_ _366_ _189_ _238_ _609_ vdd gnd AOI21X1
X_2382_ _708_ i_clk_sys_ext_bF$buf6 \u_cpu.decode.opcode\[2] vdd gnd DFFPOSX1
X_1653_ _1005_ _1006_ _786_ vdd gnd NOR2X1
X_1233_ _477_ _476_ vdd gnd INVX2
X_2438_ _606_ i_clk_sys_ext_bF$buf13 \u_cpu.ctrl.o_ibus_adr\[26] vdd gnd DFFPOSX1
X_2018_ mem_ibus_ack_bF$buf7 \u_cpu.branch_op\ _105_ _106_ vdd gnd OAI21X1
X_2191_ _147_ _224_ _567_ _225_ vdd gnd MUX2X1
X_1709_ \u_rf_if.issue_idx\[1] _969_ _966_ _1042_ vdd gnd OAI21X1
X_1882_ _551__bF$buf4 _12_ _9_ _13_ vdd gnd OAI21X1
X_1462_ _809_ _810_ vdd gnd INVX1
X_2247_ \u_cpu.ctrl.o_ibus_adr\[12] _260_ vdd gnd INVX1
X_1938_ \u_mem_serial.shift_reg\[2] _551__bF$buf3 _505__bF$buf2 _50_ vdd gnd NAND3X1
X_1518_ _445_ _901_ _832_ vdd gnd NOR2X1
X_1691_ _1029_ _997_ _1030_ _772_ vdd gnd AOI21X1
X_1271_ _476_ _468_ _440_ vdd gnd NOR2X1
X_2476_ _777_ i_clk_sys_ext_bF$buf7 \u_rf_if.read_buf0\[19] vdd gnd DFFPOSX1
X_2056_ \u_cpu.bufreg.data\[22] _133_ vdd gnd INVX1
X_1747_ _890_ _891_ _446_ _1068_ vdd gnd OAI21X1
X_1327_ \u_cpu.bufreg.i_right_shift_op\ \u_cpu.bne_or_bge\ _385_ vdd gnd NOR2X1
X_2285_ \u_mem_serial.shift_reg\[1] _551__bF$buf3 _505__bF$buf4 _275_ vdd gnd NAND3X1
X_1976_ \u_cpu.immdec.gen_immdec_w_eq_1.imm30_25\[3] _77_ vdd gnd INVX1
X_1556_ _294_ _283_ _935_ vdd gnd NAND2X1
X_2094_ _479_ _420_ _468_ _150_ vdd gnd NAND3X1
X_1785_ _1088_ _1087_ _736_ vdd gnd NOR2X1
X_1365_ \u_cpu.ctrl.pc\ \u_cpu.ctrl.pc_plus_4_cy_r_w\ _347_ vdd gnd AND2X2
X_1594_ _966_ _967_ vdd gnd INVX1
X_1174_ _533_ _532_ _567_ _531_ vdd gnd MUX2X1
X_2379_ _706_ i_clk_sys_ext_bF$buf6 \u_cpu.decode.opcode\[0] vdd gnd DFFPOSX1
X_2188_ \u_mem_serial.shift_reg\[23] _222_ vdd gnd INVX1
X_1879_ \u_cpu.bufreg.data\[7] _10_ vdd gnd INVX1
X_1459_ _802_ _722_ _807_ vdd gnd NOR2X1
X_2400_ _590_ i_clk_sys_ext_bF$buf10 \u_cpu.ctrl.o_ibus_adr\[10] vdd gnd DFFPOSX1
X_1688_ _1027_ _1028_ _773_ vdd gnd NOR2X1
X_1268_ _520_ _522_ _442_ vdd gnd NOR2X1
X_1900_ _21_ _22_ vdd gnd INVX1
X_1497_ _884_ _880_ _879_ _885_ vdd gnd AOI21X1
X_2303_ \u_cpu.state.cnt_r\[1] i_clk_sys_ext_bF$buf2 \u_cpu.state.cnt_r\[2] vdd gnd DFFPOSX1
X_2532_ _822_ i_clk_sys_ext_bF$buf5 \u_rf_if.ready_pulse\ vdd gnd DFFPOSX1
X_2112_ _163_ _164_ _165_ vdd gnd AND2X2
X_1803_ _968_ _1100_ _1101_ _731_ vdd gnd OAI21X1
X_2341_ _675_ i_clk_sys_ext_bF$buf10 rf_read_reg1_to_if[0] vdd gnd DFFPOSX1
X_1612_ \u_rf_if.stream_cnt\[1] _933_ _979_ vdd gnd NOR2X1
X_2570_ _853_ i_clk_fast_bF$buf4 \u_mem_serial.state\[0] vdd gnd DFFPOSX1
X_2150_ _189_ _191_ _454_ _192_ vdd gnd NAND3X1
XCLKBUF1_insert23 i_clk_sys_ext i_clk_sys_ext_bF$buf13 vdd gnd CLKBUF1
XCLKBUF1_insert24 i_clk_sys_ext i_clk_sys_ext_bF$buf12 vdd gnd CLKBUF1
XCLKBUF1_insert25 i_clk_sys_ext i_clk_sys_ext_bF$buf11 vdd gnd CLKBUF1
XCLKBUF1_insert26 i_clk_sys_ext i_clk_sys_ext_bF$buf10 vdd gnd CLKBUF1
XCLKBUF1_insert27 i_clk_sys_ext i_clk_sys_ext_bF$buf9 vdd gnd CLKBUF1
XCLKBUF1_insert28 i_clk_sys_ext i_clk_sys_ext_bF$buf8 vdd gnd CLKBUF1
XCLKBUF1_insert29 i_clk_sys_ext i_clk_sys_ext_bF$buf7 vdd gnd CLKBUF1
X_1841_ \u_mem_serial.shift_reg\[27] _504_ _1134_ vdd gnd NOR2X1
X_1421_ _294_ _293_ vdd gnd INVX1
X_2206_ \u_mem_serial.shift_reg\[9] _552__bF$buf2 _237_ vdd gnd NAND2X1
X_1650_ \u_rf_if.stream_active_bF$buf2\ _1002_ _1004_ _787_ vdd gnd AOI21X1
X_1230_ \u_cpu.state.cnt_r\[0] \u_cpu.state.cnt_r\[1] _479_ vdd gnd OR2X2
X_2435_ _832_ i_clk_sys_ext_bF$buf12 \u_rf_if.wdata0_next_phase\ vdd gnd DFFPOSX1
X_2015_ mem_ibus_ack_bF$buf4 _20_ _103_ _670_ vdd gnd AOI21X1
X_1706_ _942_ _819_ _1039_ _766_ vdd gnd OAI21X1
X_2244_ _257_ _258_ _440__bF$buf2 _594_ vdd gnd MUX2X1
X_1935_ mem_ibus_ack_bF$buf7 _499_ _48_ _695_ vdd gnd OAI21X1
X_1515_ \u_rf_if.rcnt\[2] _899_ vdd gnd INVX1
X_2473_ \u_cpu.o_wdata0\ i_clk_sys_ext_bF$buf0 \u_rf_if.wdata0_next\[0] vdd gnd DFFPOSX1
X_2053_ _130_ _131_ _413__bF$buf1 _660_ vdd gnd MUX2X1
X_1744_ _501_ _903_ _899_ _1066_ vdd gnd OAI21X1
X_1324_ _390_ _397_ _388_ vdd gnd NAND2X1
X_2529_ _818_ i_clk_sys_ext_bF$buf0 raddr[7] vdd gnd DFFPOSX1
X_2109_ _161_ _160_ _162_ vdd gnd NAND2X1
X_2282_ _477_ _372_ _273_ _571_ vdd gnd OAI21X1
X_1973_ _437_ _74_ _53_ _75_ vdd gnd OAI21X1
X_1553_ _383__bF$buf3 _932_ _933_ vdd gnd NOR2X1
X_2338_ _672_ i_clk_sys_ext_bF$buf9 rf_wreg0_to_if[1] vdd gnd DFFPOSX1
X_2091_ \u_cpu.bufreg.data\[2] _148_ vdd gnd INVX1
X_1609_ _975_ _976_ _977_ _817_ vdd gnd AOI21X1
X_1782_ _321_ _276_ _1086_ _737_ vdd gnd AOI21X1
X_1362_ _384_ _360_ _351_ _350_ vdd gnd OAI21X1
X_2567_ _577_ i_clk_sys_ext_bF$buf3 \u_cpu.ctrl.o_ibus_adr\[29] vdd gnd DFFPOSX1
X_2147_ _187_ _465_ \u_cpu.bufreg2.cnt_next\[6] _190_ vdd gnd OAI21X1
X_1838_ _543_ _563_ _1132_ _721_ vdd gnd OAI21X1
X_1418_ \u_rf_if.launch_pending\ _297_ _296_ vdd gnd NOR2X1
X_1591_ \u_rf_if.pending_read\ _964_ vdd gnd INVX1
X_1171_ _535_ _551__bF$buf5 _534_ vdd gnd NAND2X1
XFILL98250x32550 gnd vdd FILL
X_2376_ _702_ i_clk_fast_bF$buf0 \u_mem_serial.bit_count\[2] vdd gnd DFFPOSX1
X_1647_ _383__bF$buf3 \u_rf_if.read_buf0\[9] \u_rf_if.read_buf0\[8] _990__bF$buf3 _1003_ vdd 
+ gnd
+ OAI22X1
X_1227_ _493_ _483_ _482_ vdd gnd NOR2X1
X_2185_ \u_mem_serial.shift_reg\[14] _551__bF$buf1 _1118_ \u_cpu.ctrl.pc\ _220_ vdd 
+ gnd
+ AOI22X1
X_1876_ \u_mem_serial.shift_reg\[22] _7_ vdd gnd INVX1
X_1456_ _1124_ _805_ vdd gnd INVX1
X_1685_ \u_rf_if.stream_active_bF$buf0\ _1024_ _1026_ _774_ vdd gnd AOI21X1
X_1265_ mem_ibus_ack_bF$buf0 _445_ _444_ vdd gnd NOR2X1
XFILL98550x75750 gnd vdd FILL
X_1494_ \u_rf_if.tx_state\[0] _327_ _809_ _882_ vdd gnd OAI21X1
X_2279_ \u_cpu.ctrl.i_jump\ _341_ _440__bF$buf3 _272_ vdd gnd OAI21X1
XBUFX2_insert0 _990_ _990__bF$buf4 vdd gnd BUFX2
XBUFX2_insert1 _990_ _990__bF$buf3 vdd gnd BUFX2
XBUFX2_insert2 _990_ _990__bF$buf2 vdd gnd BUFX2
XBUFX2_insert3 _990_ _990__bF$buf1 vdd gnd BUFX2
XBUFX2_insert4 _990_ _990__bF$buf0 vdd gnd BUFX2
XBUFX2_insert5 ren ren_bF$buf3 vdd gnd BUFX2
XBUFX2_insert6 ren ren_bF$buf2 vdd gnd BUFX2
XBUFX2_insert7 ren ren_bF$buf1 vdd gnd BUFX2
XBUFX2_insert8 ren ren_bF$buf0 vdd gnd BUFX2
XBUFX2_insert9 _552_ _552__bF$buf4 vdd gnd BUFX2
X_2088_ _41_ _1153_ _413__bF$buf4 _640_ vdd gnd MUX2X1
X_1779_ \u_rf_if.last_req_key\[7] _704__bF$buf2 i_rst_n_bF$buf1 _1085_ vdd gnd OAI21X1
X_1359_ _359_ _358_ _354_ _353_ vdd gnd OAI21X1
X_2300_ _557_ _556_ vdd gnd INVX1
X_1588_ \u_rf_if.stream_active_bF$buf1\ _962_ _954_ _823_ vdd gnd OAI21X1
X_1168_ _552__bF$buf2 _538_ _537_ _851_ vdd gnd OAI21X1
X_1800_ _968_ _1098_ _1099_ _732_ vdd gnd OAI21X1
X_1397_ \u_rf_if.last_req_key\[9] _527_ _317_ vdd gnd NAND2X1
X_2203_ _551__bF$buf0 _234_ _232_ _235_ vdd gnd OAI21X1
XFILL99150x68550 gnd vdd FILL
X_2432_ _604_ i_clk_sys_ext_bF$buf13 \u_cpu.ctrl.o_ibus_adr\[24] vdd gnd DFFPOSX1
X_2012_ mem_ibus_ack_bF$buf3 \u_mem_serial.shift_reg\[7] _93_ rf_wreg0_to_if[0] _102_ vdd 
+ gnd
+ AOI22X1
X_1703_ \u_rf_if.read_buf0\[31] _947__bF$buf0 \u_rf_if.read_buf0\[29] _990__bF$buf1 _1038_ vdd 
+ gnd
+ OAI22X1
X_2241_ \u_cpu.ctrl.o_ibus_adr\[15] _257_ vdd gnd INVX1
X_1932_ _45_ _46_ _47_ _697_ vdd gnd AOI21X1
X_1512_ _895_ _896_ _897_ vdd gnd NOR2X1
X_2470_ _775_ i_clk_sys_ext_bF$buf7 \u_rf_if.read_buf0\[21] vdd gnd DFFPOSX1
X_2050_ \u_cpu.bufreg.data\[25] _130_ vdd gnd INVX1
X_1741_ mem_ibus_ack_bF$buf7 _1063_ _1064_ _756_ vdd gnd AOI21X1
X_1321_ _396_ _393_ _391_ vdd gnd NAND2X1
X_2526_ _734_ i_clk_sys_ext_bF$buf5 raddr[2] vdd gnd DFFPOSX1
X_2106_ _154_ _381_ _159_ vdd gnd NAND2X1
X_1970_ _70_ _72_ _56_ _684_ vdd gnd MUX2X1
X_1550_ _383__bF$buf4 _929_ _925_ _930_ vdd gnd OAI21X1
X_2335_ _669_ i_clk_sys_ext_bF$buf10 rf_read_reg0_to_if[4] vdd gnd DFFPOSX1
X_1606_ i_rf_miso _975_ vdd gnd INVX1
X_2564_ _850_ i_clk_fast_bF$buf3 \u_mem_serial.shift_reg\[18] vdd gnd DFFPOSX1
X_2144_ _476_ _186_ _187_ vdd gnd NOR2X1
X_1835_ \u_cpu.bufreg2.i_bytecnt\[1] _486_ _1131_ vdd gnd NOR2X1
X_1415_ \u_rf_if.last_req_key\[6] _300_ _299_ vdd gnd NAND2X1
XBUFX2_insert80 mem_ibus_ack mem_ibus_ack_bF$buf7 vdd gnd BUFX2
XBUFX2_insert81 mem_ibus_ack mem_ibus_ack_bF$buf6 vdd gnd BUFX2
XBUFX2_insert82 mem_ibus_ack mem_ibus_ack_bF$buf5 vdd gnd BUFX2
XBUFX2_insert83 mem_ibus_ack mem_ibus_ack_bF$buf4 vdd gnd BUFX2
XBUFX2_insert84 mem_ibus_ack mem_ibus_ack_bF$buf3 vdd gnd BUFX2
XBUFX2_insert85 mem_ibus_ack mem_ibus_ack_bF$buf2 vdd gnd BUFX2
XBUFX2_insert86 mem_ibus_ack mem_ibus_ack_bF$buf1 vdd gnd BUFX2
XBUFX2_insert87 mem_ibus_ack mem_ibus_ack_bF$buf0 vdd gnd BUFX2
X_2373_ _584_ i_clk_sys_ext_bF$buf9 \u_cpu.ctrl.o_ibus_adr\[4] vdd gnd DFFPOSX1
X_1644_ \u_rf_if.read_buf0\[9] _947__bF$buf3 \u_rf_if.read_buf0\[7] _990__bF$buf3 _1001_ vdd 
+ gnd
+ OAI22X1
X_1224_ _486_ _485_ vdd gnd INVX1
X_2429_ _856_ i_clk_fast_bF$buf1 \u_mem_serial.shift_reg\[10] vdd gnd DFFPOSX1
X_2009_ rf_wreg0_to_if[1] _93_ _100_ vdd gnd NAND2X1
X_2182_ \u_mem_serial.shift_reg\[12] _551__bF$buf3 _218_ vdd gnd NAND2X1
X_1873_ _564_ _5_ vdd gnd INVX1
X_1453_ _802_ _723_ _803_ vdd gnd NAND2X1
X_2238_ _254_ _255_ _440__bF$buf4 _597_ vdd gnd MUX2X1
X_1929_ \u_mem_serial.req_pending\ _45_ vdd gnd INVX1
X_1509_ _311_ _893_ _894_ vdd gnd NOR2X1
X_1682_ _383__bF$buf2 \u_rf_if.read_buf0\[22] \u_rf_if.read_buf0\[21] _990__bF$buf0 _1025_ vdd 
+ gnd
+ OAI22X1
X_1262_ _473_ _448_ _453_ _447_ vdd gnd NAND3X1
X_2467_ _773_ i_clk_sys_ext_bF$buf3 \u_rf_if.read_buf0\[23] vdd gnd DFFPOSX1
X_2047_ _126_ _128_ _413__bF$buf1 _663_ vdd gnd MUX2X1
X_1738_ mem_ibus_ack_bF$buf5 _1061_ _1062_ _757_ vdd gnd AOI21X1
X_1318_ \u_cpu.branch_op\ \u_cpu.bufreg2.i_op_b_sel\ _395_ _394_ vdd gnd OAI21X1
X_1491_ _843_ _878_ _879_ vdd gnd NAND2X1
X_2276_ _347_ _343_ _270_ vdd gnd NOR2X1
X_1967_ \u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20\[0] _70_ vdd gnd INVX1
X_1547_ _908_ _915_ _927_ _829_ vdd gnd OAI21X1
X_2085_ _146_ _147_ _413__bF$buf4 _644_ vdd gnd MUX2X1
X_1776_ _283_ _704__bF$buf0 _1083_ _740_ vdd gnd AOI21X1
X_1356_ _383__bF$buf2 _382_ _366_ _356_ vdd gnd OAI21X1
X_1585_ _383__bF$buf4 \u_rf_if.stream_cnt\[0] _960_ _961_ vdd gnd OAI21X1
X_1165_ _552__bF$buf0 _540_ _539_ _852_ vdd gnd OAI21X1
X_1394_ ren_bF$buf2 _321_ _320_ vdd gnd NAND2X1
X_2179_ _214_ _216_ _617_ vdd gnd NAND2X1
X_1679_ _383__bF$buf0 \u_rf_if.read_buf0\[21] \u_rf_if.read_buf0\[20] _990__bF$buf4 _1023_ vdd 
+ gnd
+ OAI22X1
X_1259_ \u_cpu.decode.co_mem_word\ _499_ _450_ vdd gnd NAND2X1
X_2200_ _121_ _551__bF$buf0 _232_ vdd gnd NAND2X1
X_1488_ _313_ _525_ _288_ _807_ _876_ vdd 
+ gnd
+ AOI22X1
X_1700_ \u_rf_if.read_buf0\[30] _947__bF$buf0 \u_rf_if.read_buf0\[28] _990__bF$buf1 _1036_ vdd 
+ gnd
+ OAI22X1
X_1297_ _500_ _469_ _415_ vdd gnd NOR2X1
X_2523_ _570_ i_clk_sys_ext_bF$buf1 \u_cpu.alu.cmp_r\ vdd gnd DFFPOSX1
X_2103_ \u_cpu.decode.opcode\[0] _410_ _155_ _156_ vdd gnd OAI21X1
X_2332_ _666_ i_clk_sys_ext_bF$buf4 rf_read_reg1_to_if[4] vdd gnd DFFPOSX1
X_1603_ _908_ _970_ _927_ _973_ vdd gnd OAI21X1
X_2561_ _574_ i_clk_sys_ext_bF$buf2 \u_cpu.ctrl.pc_plus_offset_cy_r_w\ vdd gnd DFFPOSX1
X_2141_ \u_cpu.bufreg2.i_bytecnt\[1] \u_cpu.state.i_ctrl_misalign\ _471_ _184_ vdd gnd AOI21X1
X_1832_ _1129_ _488_ _641_[0] vdd gnd NOR2X1
X_1412_ _332_ _331_ _303_ _302_ vdd gnd AOI21X1
XBUFX2_insert51 \u_rf_if.stream_active\ \u_rf_if.stream_active_bF$buf3\ vdd gnd BUFX2
XBUFX2_insert52 \u_rf_if.stream_active\ \u_rf_if.stream_active_bF$buf2\ vdd gnd BUFX2
XBUFX2_insert53 \u_rf_if.stream_active\ \u_rf_if.stream_active_bF$buf1\ vdd gnd BUFX2
XBUFX2_insert54 \u_rf_if.stream_active\ \u_rf_if.stream_active_bF$buf0\ vdd gnd BUFX2
XBUFX2_insert55 _704_ _704__bF$buf3 vdd gnd BUFX2
XBUFX2_insert56 _704_ _704__bF$buf2 vdd gnd BUFX2
XBUFX2_insert57 _704_ _704__bF$buf1 vdd gnd BUFX2
XBUFX2_insert58 _704_ _704__bF$buf0 vdd gnd BUFX2
XBUFX2_insert59 _551_ _551__bF$buf5 vdd gnd BUFX2
X_2370_ _699_ i_clk_fast_bF$buf0 \u_mem_serial.bit_count\[5] vdd gnd DFFPOSX1
X_1641_ \u_rf_if.read_buf0\[8] _947__bF$buf1 \u_rf_if.read_buf0\[6] _990__bF$buf3 _999_ vdd 
+ gnd
+ OAI22X1
X_1221_ _490_ _489_ _488_ vdd gnd NOR2X1
X_2426_ _750_ i_clk_sys_ext_bF$buf5 \u_rf_if.write_wait\[0] vdd gnd DFFPOSX1
X_2006_ rf_wreg0_to_if[2] _93_ _98_ vdd gnd NAND2X1
X_1870_ _542_ _562_ _2_ _714_ vdd gnd OAI21X1
X_1450_ \u_rf_if.tx_state\[3] _522_ \u_rf_if.tx_state\[4] _801_ vdd gnd OAI21X1
X_2235_ \u_cpu.ctrl.o_ibus_adr\[18] _254_ vdd gnd INVX1
X_1926_ _41_ _42_ _567_ _43_ vdd gnd MUX2X1
X_1506_ \u_rf_if.wen0_r\ \u_rf_if.rtrig0\ _891_ vdd gnd NAND2X1
X_2464_ _770_ i_clk_sys_ext_bF$buf11 \u_rf_if.read_buf0\[26] vdd gnd DFFPOSX1
X_2044_ \u_cpu.bufreg.data\[29] _127_ vdd gnd INVX1
X_1735_ mem_ibus_ack_bF$buf0 _1059_ _1060_ _758_ vdd gnd AOI21X1
X_1315_ _400_ _398_ _411_ _422_ _397_ vdd 
+ gnd
+ AOI22X1
X_2273_ \u_mem_serial.bit_count\[6] _38_ _269_ vdd gnd NAND2X1
X_1964_ mem_ibus_ack_bF$buf4 _64_ _15_ _68_ vdd gnd OAI21X1
X_1544_ _924_ _925_ vdd gnd INVX1
X_2329_ _663_ i_clk_sys_ext_bF$buf8 \u_cpu.bufreg.data\[27] vdd gnd DFFPOSX1
X_2082_ \u_cpu.bufreg.data\[9] _146_ vdd gnd INVX1
X_1773_ \u_rf_if.last_req_key\[4] _704__bF$buf3 i_rst_n_bF$buf0 _1082_ vdd gnd OAI21X1
X_1353_ _497_ _359_ vdd gnd INVX1
X_2558_ _842_ i_clk_fast_bF$buf5 \u_mem_serial.shift_reg\[6] vdd gnd DFFPOSX1
X_2138_ _505__bF$buf4 _180_ _181_ _624_ vdd gnd AOI21X1
X_1829_ \u_mem_serial.shift_reg\[1] _552__bF$buf0 _1128_ vdd gnd NAND2X1
X_1409_ _306_ _312_ _305_ vdd gnd NOR2X1
X_1582_ \u_rf_if.i_stream_rs2_en\ _956_ _958_ vdd gnd NAND2X1
X_1162_ _543_ _563_ _541_ _853_ vdd gnd OAI21X1
X_2367_ _697_ i_clk_fast_bF$buf1 \u_mem_serial.req_pending\ vdd gnd DFFPOSX1
X_1638_ _947__bF$buf1 _997_ vdd gnd INVX2
X_1218_ \u_cpu.bufreg2.i_bytecnt\[0] _491_ vdd gnd INVX1
X_1391_ ren_bF$buf3 \u_rf_if.o_waddr\[1] _324_ _323_ vdd gnd OAI21X1
X_2176_ _463_ _213_ _465_ _214_ vdd gnd OAI21X1
X_1867_ _551__bF$buf4 _1125_ _1152_ _1_ vdd gnd OAI21X1
X_1447_ i_rst_n_bF$buf2 _799_ vdd gnd INVX1
X_1676_ _383__bF$buf0 \u_rf_if.read_buf0\[20] \u_rf_if.read_buf0\[19] _990__bF$buf4 _1021_ vdd 
+ gnd
+ OAI22X1
X_1256_ _499_ _454_ _471_ _453_ vdd gnd OAI21X1
X_1485_ \u_cpu.o_wdata0\ _867_ _873_ vdd gnd AND2X2
X_1294_ \u_cpu.bufreg.data\[0] _418_ vdd gnd INVX1
X_2499_ _736_ i_clk_sys_ext_bF$buf0 raddr[0] vdd gnd DFFPOSX1
X_2079_ _143_ _144_ _413__bF$buf2 _647_ vdd gnd MUX2X1
X_1999_ _518_ _91_ _92_ vdd gnd NAND2X1
X_1579_ _945_ \u_rf_if.i_stream_rs2_en\ _955_ vdd gnd NAND2X1
X_1159_ _1120_ o_mem_sck vdd gnd BUFX2
X_2520_ _814_ i_clk_sys_ext_bF$buf5 \u_rf_if.stream_cnt\[2] vdd gnd DFFPOSX1
X_2100_ _152_ _127_ _413__bF$buf0 _634_ vdd gnd MUX2X1
X_1388_ _327_ \u_rf_if.last_req_key\[3] _326_ vdd gnd AND2X2
X_1600_ \u_rf_if.issue_idx\[4] _910_ _914_ _970_ vdd gnd NAND3X1
X_1197_ \u_mem_serial.shift_reg\[2] _510_ vdd gnd INVX1
XFILL99150x75750 gnd vdd FILL
XBUFX2_insert20 _505_ _505__bF$buf2 vdd gnd BUFX2
XBUFX2_insert21 _505_ _505__bF$buf1 vdd gnd BUFX2
XBUFX2_insert22 _505_ _505__bF$buf0 vdd gnd BUFX2
XFILL98850x57750 gnd vdd FILL
X_2423_ _746_ i_clk_fast_bF$buf7 \u_rf_if.tx_state\[3] vdd gnd DFFPOSX1
X_2003_ rf_wreg0_to_if[3] _93_ _96_ vdd gnd NAND2X1
X_2232_ _251_ _252_ _440__bF$buf4 _600_ vdd gnd MUX2X1
X_1923_ _1151_ _551__bF$buf4 _40_ vdd gnd NAND2X1
X_1503_ \u_rf_if.write_wait\[0] \u_rf_if.write_wait\[1] _889_ vdd gnd NAND2X1
X_2461_ _767_ i_clk_sys_ext_bF$buf11 \u_rf_if.read_buf0\[29] vdd gnd DFFPOSX1
X_2041_ mem_ibus_ack_bF$buf3 \u_mem_serial.shift_reg\[11] _91_ _94_ _125_ vdd 
+ gnd
+ AOI22X1
X_1732_ mem_ibus_ack_bF$buf5 _1057_ _1058_ _759_ vdd gnd AOI21X1
X_1312_ _484_ _406_ _401_ _400_ vdd gnd OAI21X1
X_2517_ _612_ i_clk_fast_bF$buf4 \u_mem_serial.shift_reg\[24] vdd gnd DFFPOSX1
X_2270_ _265_ _267_ _440__bF$buf2 _577_ vdd gnd MUX2X1
X_1961_ _65_ _56_ _66_ vdd gnd NOR2X1
X_1541_ _917_ _921_ _922_ vdd gnd NOR2X1
X_2326_ _661_ i_clk_sys_ext_bF$buf8 \u_cpu.bufreg.data\[25] vdd gnd DFFPOSX1
X_1770_ _309_ _704__bF$buf1 _1080_ _743_ vdd gnd AOI21X1
X_1350_ _363_ _377_ _362_ vdd gnd OR2X2
X_2555_ _575_ i_clk_fast_bF$buf0 \u_mem_serial.bit_count\[6] vdd gnd DFFPOSX1
X_2135_ \u_mem_serial.bit_count\[6] _504_ _179_ vdd gnd NOR2X1
X_1826_ \u_mem_serial.shift_reg\[30] _505__bF$buf0 _1126_ vdd gnd NOR2X1
X_1406_ _309_ \u_rf_if.last_req_key\[2] _308_ vdd gnd OR2X2
X_2364_ _695_ i_clk_sys_ext_bF$buf6 \u_cpu.bufreg.i_right_shift_op\ vdd gnd DFFPOSX1
X_1635_ _383__bF$buf0 \u_rf_if.read_buf0\[5] \u_rf_if.read_buf0\[4] _990__bF$buf2 _995_ vdd 
+ gnd
+ OAI22X1
X_1215_ _497_ _495_ \u_cpu.decode.opcode\[2] _494_ vdd gnd OAI21X1
X_2173_ \u_cpu.bufreg.i_shamt\[0] _211_ vdd gnd INVX1
X_1864_ \u_cpu.bufreg.data\[5] _1153_ vdd gnd INVX1
X_1444_ \u_rf_if.tx_state\[1] _722_ _723_ _724_ vdd gnd NAND3X1
X_2229_ \u_cpu.ctrl.o_ibus_adr\[21] _251_ vdd gnd INVX1
X_1673_ \u_rf_if.read_buf0\[20] _947__bF$buf4 \u_rf_if.read_buf0\[18] _990__bF$buf4 _1019_ vdd 
+ gnd
+ OAI22X1
X_1253_ \u_cpu.bufreg2.dhi\[4] _460_ _457_ _456_ vdd gnd OAI21X1
X_2458_ _765_ i_clk_sys_ext_bF$buf5 \u_rf_if.issue_idx\[1] vdd gnd DFFPOSX1
X_2038_ _518_ _121_ _122_ _123_ vdd gnd OAI21X1
X_1729_ mem_ibus_ack_bF$buf5 _1055_ _1056_ _760_ vdd gnd AOI21X1
X_1309_ _499_ _404_ \u_cpu.immdec.gen_immdec_w_eq_1.imm31\ _403_ vdd gnd OAI21X1
X_1482_ _859_ _868_ _869_ _870_ vdd gnd OAI21X1
X_2267_ \u_cpu.ctrl.o_ibus_adr\[31] _266_ vdd gnd INVX1
X_1958_ _61_ _56_ _63_ _687_ vdd gnd AOI21X1
X_1538_ \u_rf_if.stream_cnt\[1] _919_ vdd gnd INVX1
X_1291_ _491_ _492_ _421_ vdd gnd NAND2X1
X_2496_ _794_ i_clk_sys_ext_bF$buf3 \u_rf_if.read_buf0\[2] vdd gnd DFFPOSX1
X_2076_ \u_cpu.bufreg.data\[12] _143_ vdd gnd INVX1
X_1767_ \u_rf_if.last_req_key\[1] _704__bF$buf2 i_rst_n_bF$buf1 _1079_ vdd gnd OAI21X1
X_1347_ _372_ _366_ _365_ vdd gnd NAND2X1
X_1996_ _518_ rf_read_reg1_to_if[1] _71_ _90_ vdd gnd AOI21X1
X_1576_ mem_ibus_ack_bF$buf5 \u_rf_if.rreg0_latched\[3] _953_ vdd gnd NOR2X1
X_1156_ _1123_ o_rf_sck vdd gnd BUFX2
X_1385_ ren_bF$buf3 _330_ _329_ vdd gnd NAND2X1
X_1194_ _518_ _514_ _513_ vdd gnd NOR2X1
X_2399_ _720_ i_clk_sys_ext_bF$buf2 \u_cpu.state.cnt_r\[0] vdd gnd DFFPOSX1
X_1899_ \u_mem_serial.bit_count\[0] \u_mem_serial.bit_count\[1] _21_ vdd gnd NOR2X1
X_1479_ _866_ _862_ _867_ vdd gnd NOR2X1
X_2420_ _599_ i_clk_sys_ext_bF$buf3 \u_cpu.ctrl.o_ibus_adr\[19] vdd gnd DFFPOSX1
X_2000_ _92_ _93_ vdd gnd INVX2
X_1288_ \u_cpu.decode.opcode\[2] _438_ _424_ vdd gnd NAND2X1
X_1920_ _504_ _37_ _562_ _38_ vdd gnd OAI21X1
X_1500_ \u_mem_serial.shift_reg\[26] _504_ _887_ vdd gnd NOR2X1
X_2514_ _568_ _553_ _562_ _552_ vdd gnd OAI21X1
X_2323_ _658_ i_clk_sys_ext_bF$buf8 \u_cpu.bufreg.data\[22] vdd gnd DFFPOSX1
X_2552_ _839_ i_clk_fast_bF$buf7 \u_rf_if.tx_state\[4] vdd gnd DFFPOSX1
X_2132_ \u_mem_serial.shift_reg\[4] _551__bF$buf3 _505__bF$buf2 _177_ vdd gnd NAND3X1
XFILL98850x43350 gnd vdd FILL
X_1823_ _505__bF$buf1 _1116_ _1117_ _727_ vdd gnd AOI21X1
X_1403_ \u_rf_if.o_waddr\[2] _311_ vdd gnd INVX1
X_2361_ _580_ i_clk_sys_ext_bF$buf10 \u_cpu.ctrl.pc\ vdd gnd DFFPOSX1
X_1632_ _383__bF$buf0 \u_rf_if.read_buf0\[4] \u_rf_if.read_buf0\[3] _990__bF$buf4 _993_ vdd 
+ gnd
+ OAI22X1
X_1212_ _499_ _498_ _497_ vdd gnd NOR2X1
X_2417_ _743_ i_clk_fast_bF$buf2 \u_rf_if.last_req_key\[2] vdd gnd DFFPOSX1
X_2170_ _200_ _465_ _187_ _209_ vdd gnd OAI21X1
X_1861_ _1148_ _1149_ _1150_ _716_ vdd gnd OAI21X1
X_1441_ _338_ _704__bF$buf2 _705_ _841_ vdd gnd AOI21X1
X_2226_ _248_ _249_ _440__bF$buf2 _603_ vdd gnd MUX2X1
X_1917_ \u_mem_serial.bit_count\[5] _35_ vdd gnd INVX1
X_1670_ \u_rf_if.read_buf0\[19] _1017_ vdd gnd INVX1
X_1250_ \u_cpu.bufreg2.dhi\[4] _460_ _459_ vdd gnd NOR2X1
X_2455_ \u_rf_if.i_stream_rs2_en\ i_clk_sys_ext_bF$buf6 current_stream_rs2_hint vdd gnd DFFPOSX1
X_2035_ rf_read_reg1_to_if[4] _120_ vdd gnd INVX1
X_1726_ mem_ibus_ack_bF$buf2 _1053_ _1054_ _761_ vdd gnd AOI21X1
X_1306_ rf_read_reg1_to_if[0] rf_wreg0_to_if[0] _407_ _406_ vdd gnd MUX2X1
X_2264_ \u_cpu.ctrl.o_ibus_adr\[28] _264_ vdd gnd INVX1
X_1955_ \u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20\[3] _61_ vdd gnd INVX1
X_1535_ \u_rf_if.stream_cnt\[4] _916_ vdd gnd INVX1
X_2493_ _791_ i_clk_sys_ext_bF$buf7 \u_rf_if.read_buf0\[5] vdd gnd DFFPOSX1
X_2073_ _140_ _141_ _413__bF$buf0 _650_ vdd gnd MUX2X1
X_1764_ _1077_ _879_ _746_ vdd gnd AND2X2
X_1344_ _376_ _400_ _368_ vdd gnd NAND2X1
X_2549_ _624_ i_clk_fast_bF$buf6 \u_mem_serial.shift_reg\[0] vdd gnd DFFPOSX1
X_2129_ _543_ _563_ _19_ _175_ _627_ vdd 
+ gnd
+ OAI22X1
X_1993_ _1063_ _88_ _86_ _677_ vdd gnd MUX2X1
X_1573_ _935_ _937_ \u_rf_if.shift_rx\[1] _951_ vdd gnd OAI21X1
X_2358_ _690_ i_clk_sys_ext_bF$buf12 rf_read_reg0_to_if[2] vdd gnd DFFPOSX1
X_1629_ \u_rf_if.read_buf0\[4] _947__bF$buf2 \u_rf_if.read_buf0\[2] _990__bF$buf0 _991_ vdd 
+ gnd
+ OAI22X1
X_1209_ \u_cpu.state.init_done\ _500_ vdd gnd INVX1
X_1382_ _333_ \u_rf_if.last_req_key\[7] _332_ vdd gnd OR2X2
X_2587_ _572_ i_clk_sys_ext_bF$buf2 \u_cpu.ctrl.o_ibus_adr\[31] vdd gnd DFFPOSX1
X_2167_ _464_ _463_ _206_ vdd gnd NOR2X1
X_1858_ _440__bF$buf3 _1148_ vdd gnd INVX1
X_1438_ _442_ _277_ _276_ vdd gnd NAND2X1
X_1191_ \u_mem_serial.shift_reg\[4] _516_ vdd gnd INVX1
X_2396_ _721_ i_clk_fast_bF$buf4 \u_mem_serial.active_ibus\ vdd gnd DFFPOSX1
X_1667_ _1014_ _997_ _1015_ _781_ vdd gnd AOI21X1
X_1247_ _464_ _463_ _462_ vdd gnd NAND2X1
X_1896_ i_clk_fast_bF$buf0 _19_ _1120_ vdd gnd NOR2X1
X_1476_ \u_rf_if.o_waddr\[2] \u_rf_if.o_waddr\[1] _864_ vdd gnd NOR2X1
X_1285_ _439_ _427_ _434_ _426_ vdd gnd AOI21X1
X_2299_ \u_mem_serial.bit_count\[1] _558_ _557_ vdd gnd NOR2X1
X_2511_ \u_mem_serial.shift_reg\[10] _552__bF$buf2 _549_ vdd gnd NAND2X1
X_1799_ \u_rf_if.rreg1_latched\[0] _973_ _972_ raddr[4] _1099_ vdd 
+ gnd
+ AOI22X1
X_1379_ ren_bF$buf0 _433_ _335_ vdd gnd NOR2X1
X_2320_ _655_ i_clk_sys_ext_bF$buf2 \u_cpu.bufreg.data\[19] vdd gnd DFFPOSX1
X_1188_ _526_ _519_ _849_ vdd gnd NOR2X1
XFILL99150x82950 gnd vdd FILL
XFILL99150x3750 gnd vdd FILL
X_1820_ _1110_ _1115_ _552__bF$buf4 _728_ vdd gnd MUX2X1
X_1400_ \u_rf_if.last_req_key\[1] _314_ vdd gnd INVX1
XFILL98850x64950 gnd vdd FILL
X_2414_ _596_ i_clk_sys_ext_bF$buf3 \u_cpu.ctrl.o_ibus_adr\[16] vdd gnd DFFPOSX1
X_2223_ \u_cpu.ctrl.o_ibus_adr\[24] _248_ vdd gnd INVX1
X_1914_ _558_ _22_ _33_ vdd gnd NOR2X1
X_2452_ _762_ i_clk_sys_ext_bF$buf5 \u_rf_if.issue_idx\[4] vdd gnd DFFPOSX1
X_2032_ _518_ _117_ _118_ vdd gnd NAND2X1
X_1723_ \u_rf_if.issue_idx\[4] _1050_ _1052_ _762_ vdd gnd AOI21X1
X_1303_ _472_ _410_ _409_ vdd gnd NAND2X1
X_2508_ \u_mem_serial.shift_reg\[7] _552__bF$buf3 _547_ vdd gnd NAND2X1
X_2261_ _242_ _262_ _440__bF$buf1 _581_ vdd gnd MUX2X1
X_1952_ _1055_ _59_ _56_ _689_ vdd gnd MUX2X1
X_1532_ _911_ _912_ _913_ vdd gnd NAND2X1
X_2317_ _652_ i_clk_sys_ext_bF$buf8 \u_cpu.bufreg.data\[16] vdd gnd DFFPOSX1
X_2490_ _788_ i_clk_sys_ext_bF$buf11 \u_rf_if.read_buf0\[8] vdd gnd DFFPOSX1
X_2070_ \u_cpu.bufreg.data\[15] _140_ vdd gnd INVX1
X_1761_ i_rst_n_bF$buf2 _277_ _1076_ vdd gnd NAND2X1
X_1341_ \u_rf_if.read_buf1\[0] \u_rf_if.i_stream_rs2_en\ \u_rf_if.stream_active_bF$buf1\ _371_ vdd gnd OAI21X1
X_2546_ _834_ i_clk_sys_ext_bF$buf0 \u_rf_if.write_wait\[1] vdd gnd DFFPOSX1
X_2126_ \u_mem_serial.state\[0] _173_ _172_ _553_ _628_ vdd 
+ gnd
+ OAI22X1
X_1817_ \u_cpu.ctrl.o_ibus_adr\[4] _1113_ vdd gnd INVX1
X_1990_ \u_mem_serial.shift_reg\[23] rf_read_reg1_to_if[4] mem_ibus_ack_bF$buf3 _87_ vdd gnd MUX2X1
X_1570_ \u_rf_if.stream_active_bF$buf1\ \u_rf_if.read_buf0\[31] _948_ \u_rf_if.read_buf0\[30] _949_ vdd 
+ gnd
+ AOI22X1
X_2355_ _687_ i_clk_sys_ext_bF$buf6 \u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20\[3] vdd gnd DFFPOSX1
X_1626_ \u_rf_if.stream_active_bF$buf3\ \u_rf_if.read_buf0\[2] _948_ \u_rf_if.read_buf0\[1] _989_ vdd 
+ gnd
+ AOI22X1
X_1206_ \u_mem_serial.shift_reg\[26] _505__bF$buf3 _502_ vdd gnd NOR2X1
X_2584_ _728_ i_clk_fast_bF$buf3 \u_mem_serial.shift_reg\[19] vdd gnd DFFPOSX1
X_2164_ _200_ _465_ _188_ _204_ vdd gnd OAI21X1
X_1855_ \u_cpu.bne_or_bge\ _1145_ _1146_ _1147_ vdd gnd AOI21X1
X_1435_ _280_ _285_ _279_ vdd gnd NOR2X1
X_2393_ _718_ i_clk_sys_ext_bF$buf1 \u_cpu.ctrl.i_jump\ vdd gnd DFFPOSX1
X_1664_ _1012_ _1013_ _782_ vdd gnd NOR2X1
X_1244_ _469_ _466_ _465_ vdd gnd NOR2X1
X_2449_ _760_ i_clk_sys_ext_bF$buf12 \u_rf_if.rreg0_latched\[1] vdd gnd DFFPOSX1
X_2029_ \u_cpu.branch_op\ _437_ _403_ _114_ _115_ vdd 
+ gnd
+ AOI22X1
X_1893_ \u_mem_serial.shift_reg\[2] mem_ibus_ack_bF$buf4 _18_ vdd gnd NAND2X1
X_1473_ _860_ _372_ _861_ vdd gnd AND2X2
X_2258_ _1113_ _532_ _440__bF$buf1 _583_ vdd gnd MUX2X1
X_1949_ \u_mem_serial.shift_reg\[17] rf_read_reg0_to_if[3] mem_ibus_ack_bF$buf5 _58_ vdd gnd MUX2X1
X_1529_ \u_rf_if.issue_idx\[5] _910_ vdd gnd INVX1
X_1282_ \u_cpu.immdec.gen_immdec_w_eq_1.imm11_7\[4] _429_ vdd gnd INVX1
X_2487_ _829_ i_clk_sys_ext_bF$buf0 ren vdd gnd DFFPOSX1
X_2067_ _137_ _138_ _413__bF$buf3 _653_ vdd gnd MUX2X1
X_1758_ _723_ _802_ _1074_ _749_ vdd gnd AOI21X1
X_1338_ \u_cpu.bne_or_bge\ \u_cpu.decode.co_mem_word\ _374_ vdd gnd NOR2X1
X_2296_ \u_mem_serial.bit_count\[2] _560_ vdd gnd INVX1
X_1987_ _83_ _84_ _75_ _679_ vdd gnd MUX2X1
X_1567_ \u_rf_if.i_stream_rs2_en\ _945_ _941_ _946_ vdd gnd AOI21X1
X_1796_ \u_rf_if.stream_cnt\[4] _922_ _1097_ vdd gnd NOR2X1
X_1376_ _527_ _338_ vdd gnd INVX1
X_1185_ \u_rf_if.tx_state\[3] \u_rf_if.tx_state\[4] _521_ vdd gnd NOR2X1
X_2199_ \u_mem_serial.shift_reg\[25] _505__bF$buf3 _231_ vdd gnd NOR2X1
X_2411_ _740_ i_clk_fast_bF$buf2 \u_rf_if.last_req_key\[5] vdd gnd DFFPOSX1
X_1699_ \u_rf_if.read_buf0\[29] _383__bF$buf4 _1035_ vdd gnd NOR2X1
X_1279_ rf_wreg0_to_if[2] _432_ vdd gnd INVX1
X_2220_ _246_ _245_ _440__bF$buf5 _606_ vdd gnd MUX2X1
X_1911_ _559_ _562_ _30_ _701_ vdd gnd OAI21X1
X_1720_ \u_rf_if.issue_idx\[3] _1048_ _966_ _1051_ vdd gnd OAI21X1
X_1300_ _413__bF$buf3 _412_ vdd gnd INVX1
X_2505_ _633_ i_clk_sys_ext_bF$buf1 \u_cpu.state.i_ctrl_misalign\ vdd gnd DFFPOSX1
X_2314_ _650_ i_clk_sys_ext_bF$buf8 \u_cpu.bufreg.data\[14] vdd gnd DFFPOSX1
X_2543_ _833_ i_clk_sys_ext_bF$buf5 \u_rf_if.o_waddr\[3] vdd gnd DFFPOSX1
X_2123_ _516_ _505__bF$buf2 _171_ _629_ vdd gnd OAI21X1
X_1814_ \u_mem_serial.shift_reg\[19] _1110_ vdd gnd INVX1
X_2352_ _719_ i_clk_fast_bF$buf6 \u_mem_serial.shift_reg\[28] vdd gnd DFFPOSX1
X_1623_ \u_rf_if.stream_active_bF$buf3\ \u_rf_if.read_buf0\[1] _948_ \u_rf_if.read_buf0\[0] _987_ vdd 
+ gnd
+ AOI22X1
X_1203_ _552__bF$buf0 _505_ vdd gnd INVX8
X_2408_ _593_ i_clk_sys_ext_bF$buf2 \u_cpu.ctrl.o_ibus_adr\[13] vdd gnd DFFPOSX1
X_2581_ _634_ i_clk_sys_ext_bF$buf8 \u_cpu.bufreg.data\[29] vdd gnd DFFPOSX1
X_2161_ _462_ _201_ vdd gnd INVX1
X_1852_ _1142_ _1143_ _1137_ _1144_ vdd gnd OAI21X1
X_1432_ _283_ \u_rf_if.last_req_key\[5] _282_ vdd gnd OR2X2
X_2217_ _535_ _244_ _552__bF$buf4 _607_ vdd gnd MUX2X1
X_2390_ _715_ i_clk_fast_bF$buf3 \u_mem_serial.shift_reg\[20] vdd gnd DFFPOSX1
X_1908_ _27_ _28_ vdd gnd INVX1
X_1661_ \u_rf_if.stream_active_bF$buf2\ _1009_ _1011_ _783_ vdd gnd AOI21X1
X_1241_ _493_ _468_ vdd gnd INVX1
X_2446_ _757_ i_clk_sys_ext_bF$buf12 \u_rf_if.rreg1_latched\[1] vdd gnd DFFPOSX1
X_2026_ \u_cpu.immdec.gen_immdec_w_eq_1.imm7\ _112_ vdd gnd INVX1
X_1717_ \u_rf_if.issue_idx\[2] _1046_ _966_ _1049_ vdd gnd OAI21X1
X_1890_ mem_ibus_ack_bF$buf1 \u_cpu.decode.opcode\[2] _17_ vdd gnd NOR2X1
X_1470_ _857_ _522_ _858_ vdd gnd NAND2X1
X_2255_ _11_ _42_ _440__bF$buf0 _586_ vdd gnd MUX2X1
X_1946_ mem_ibus_ack_bF$buf1 _55_ _53_ _56_ vdd gnd OAI21X1
X_1526_ mem_ibus_ack_bF$buf2 _906_ _907_ _830_ vdd gnd AOI21X1
X_2484_ _783_ i_clk_sys_ext_bF$buf11 \u_rf_if.read_buf0\[13] vdd gnd DFFPOSX1
X_2064_ \u_cpu.bufreg.data\[18] _137_ vdd gnd INVX1
X_1755_ \u_rf_if.write_wait\[1] _446_ _1073_ vdd gnd NAND2X1
X_1335_ _378_ _380_ _377_ vdd gnd NAND2X1
X_2293_ \u_mem_serial.req_pending\ _566_ _564_ _563_ vdd gnd NAND3X1
X_1984_ _81_ _82_ _75_ _680_ vdd gnd MUX2X1
X_1564_ \u_rf_if.issue_idx\[1] _943_ vdd gnd INVX1
X_2349_ _725_ i_clk_fast_bF$buf6 \u_mem_serial.shift_reg\[1] vdd gnd DFFPOSX1
X_1793_ _922_ _1094_ _1092_ _1093_ _734_ vdd 
+ gnd
+ OAI22X1
X_1373_ _422_ _387_ _340_ \u_cpu.o_wdata0\ vdd gnd OAI21X1
X_2578_ _729_ i_clk_sys_ext_bF$buf13 \u_rf_if.rs2_stream_buf\[0] vdd gnd DFFPOSX1
X_2158_ _187_ _197_ _198_ _199_ vdd gnd OAI21X1
X_1849_ _498_ _385_ _355_ _1141_ vdd gnd OAI21X1
X_1429_ _287_ _286_ _292_ _291_ _285_ vdd 
+ gnd
+ OAI22X1
X_1182_ _525_ _524_ vdd gnd INVX2
X_2387_ _713_ i_clk_fast_bF$buf4 mem_ibus_ack vdd gnd DFFPOSX1
X_1658_ _383__bF$buf1 \u_rf_if.read_buf0\[13] \u_rf_if.read_buf0\[12] _990__bF$buf2 _1010_ vdd 
+ gnd
+ OAI22X1
X_1238_ \u_cpu.decode.co_mem_word\ _472_ _471_ vdd gnd NOR2X1
XFILL98250x75750 gnd vdd FILL
X_2196_ _146_ _228_ _567_ _229_ vdd gnd MUX2X1
X_1887_ mem_ibus_ack_bF$buf1 _357_ _15_ _710_ vdd gnd OAI21X1
X_1467_ \u_rf_if.tx_state\[2] _524_ _843_ _846_ vdd gnd AOI21X1
X_1696_ _1032_ _997_ _1033_ _770_ vdd gnd AOI21X1
X_1276_ \u_cpu.decode.opcode\[0] \u_cpu.bufreg2.i_op_b_sel\ _472_ _435_ vdd gnd OAI21X1
X_2502_ \u_mem_serial.state\[0] \u_mem_serial.state\[1] _544_ vdd gnd NOR2X1
X_2099_ _153_ _152_ _413__bF$buf3 _635_ vdd gnd MUX2X1
X_2311_ _648_ i_clk_sys_ext_bF$buf3 \u_cpu.bufreg.data\[12] vdd gnd DFFPOSX1
X_1599_ _908_ _915_ _969_ vdd gnd NOR2X1
X_1179_ _529_ _528_ _527_ vdd gnd NOR2X1
X_2540_ _621_ i_clk_sys_ext_bF$buf1 \u_cpu.bufreg2.dhi\[4] vdd gnd DFFPOSX1
X_2120_ \u_mem_serial.shift_reg\[14] _552__bF$buf1 _170_ vdd gnd NAND2X1
X_1811_ _1105_ \u_rf_if.i_stream_rs2_en\ _1107_ _1108_ vdd gnd AOI21X1
X_1620_ _920_ _933_ _985_ vdd gnd NAND2X1
X_1200_ _508_ _513_ _507_ vdd gnd AND2X2
X_2405_ _573_ i_clk_sys_ext_bF$buf10 \u_cpu.ctrl.pc_plus_4_cy_r_w\ vdd gnd DFFPOSX1
X_2214_ \u_cpu.ctrl.o_ibus_adr\[2] _242_ vdd gnd INVX1
X_1905_ _25_ _24_ _551__bF$buf1 _26_ vdd gnd OAI21X1
X_2443_ _754_ i_clk_sys_ext_bF$buf12 \u_rf_if.rcnt\[2] vdd gnd DFFPOSX1
X_2023_ mem_ibus_ack_bF$buf7 \u_mem_serial.shift_reg\[7] _52_ \u_cpu.immdec.gen_immdec_w_eq_1.imm7\ _110_ vdd 
+ gnd
+ AOI22X1
X_1714_ _1045_ _1046_ vdd gnd INVX1
X_2252_ _233_ _228_ _440__bF$buf0 _589_ vdd gnd MUX2X1
X_1943_ _52_ _53_ vdd gnd INVX1
X_1523_ mem_ibus_ack_bF$buf0 _905_ _446_ _831_ vdd gnd OAI21X1
X_2308_ _645_ i_clk_sys_ext_bF$buf10 \u_cpu.bufreg.data\[9] vdd gnd DFFPOSX1
X_2481_ _780_ i_clk_sys_ext_bF$buf7 \u_rf_if.read_buf0\[16] vdd gnd DFFPOSX1
X_2061_ _134_ _135_ _413__bF$buf2 _656_ vdd gnd MUX2X1
X_1752_ \u_rf_if.o_waddr\[2] _1069_ _1071_ vdd gnd NOR2X1
X_1332_ \u_cpu.alu.add_cy_r\ _381_ _380_ vdd gnd NAND2X1
X_2537_ _619_ i_clk_sys_ext_bF$buf8 \u_cpu.bufreg2.dhi\[3] vdd gnd DFFPOSX1
X_2117_ _493_ _167_ _165_ _168_ vdd gnd AOI21X1
X_2290_ _567_ _566_ vdd gnd INVX1
X_1808_ _938_ _1105_ vdd gnd INVX1
X_1981_ _79_ _80_ _75_ _681_ vdd gnd MUX2X1
X_1561_ _939_ _910_ _908_ _940_ vdd gnd AOI21X1
X_2346_ _680_ i_clk_sys_ext_bF$buf4 \u_cpu.immdec.gen_immdec_w_eq_1.imm30_25\[1] vdd gnd DFFPOSX1
X_1617_ \u_rf_if.stream_cnt\[2] \u_rf_if.stream_cnt\[1] _982_ _983_ vdd gnd OAI21X1
X_1790_ raddr[2] _969_ _1092_ vdd gnd NOR2X1
X_1370_ _420_ \u_cpu.state.cnt_r\[2] _345_ _342_ vdd gnd AOI21X1
X_2575_ _855_ i_clk_fast_bF$buf3 \u_mem_serial.shift_reg\[7] vdd gnd DFFPOSX1
X_2155_ _459_ _195_ _465_ _196_ vdd gnd OAI21X1
X_1846_ \u_cpu.alu.cmp_r\ _1138_ vdd gnd INVX1
X_1426_ _289_ _288_ vdd gnd INVX1
X_2384_ _710_ i_clk_sys_ext_bF$buf6 \u_cpu.bne_or_bge\ vdd gnd DFFPOSX1
X_1655_ _383__bF$buf1 \u_rf_if.read_buf0\[12] \u_rf_if.read_buf0\[11] _990__bF$buf2 _1008_ vdd 
+ gnd
+ OAI22X1
X_1235_ _500_ _475_ _481_ _474_ vdd gnd OAI21X1
X_2193_ _222_ _226_ _552__bF$buf3 _613_ vdd gnd MUX2X1
X_1884_ \u_mem_serial.shift_reg\[13] mem_ibus_ack_bF$buf4 _14_ vdd gnd NAND2X1
X_1464_ _811_ _333_ \u_rf_if.tx_state\[0] _836_ vdd gnd MUX2X1
X_2249_ \u_cpu.ctrl.o_ibus_adr\[11] _261_ vdd gnd INVX1
X_1693_ \u_rf_if.stream_active_bF$buf3\ _1029_ _1031_ _771_ vdd gnd AOI21X1
X_1273_ \u_cpu.branch_op\ _438_ vdd gnd INVX2
X_2478_ _731_ i_clk_sys_ext_bF$buf0 raddr[5] vdd gnd DFFPOSX1
X_2058_ \u_cpu.bufreg.data\[21] _134_ vdd gnd INVX1
X_1749_ _893_ _1069_ vdd gnd INVX1
X_1329_ \u_rf_if.stream_active_bF$buf2\ _383_ vdd gnd INVX8
X_2287_ \u_rf_if.read_buf1\[0] _812_ vdd gnd BUFX2
X_1978_ _77_ _78_ _75_ _682_ vdd gnd MUX2X1
X_1558_ _936_ _937_ vdd gnd INVX1
X_2096_ _149_ _418_ _151_ _636_ vdd gnd MUX2X1
X_1787_ _918_ _919_ _1090_ vdd gnd NAND2X1
X_1367_ _346_ _347_ _345_ vdd gnd NOR2X1
X_1596_ _964_ _518_ _967_ _820_ vdd gnd AOI21X1
X_1176_ _536_ _530_ _552__bF$buf4 _850_ vdd gnd MUX2X1
X_2402_ _641_[0] i_clk_sys_ext_bF$buf2 \u_cpu.state.o_cnt\[2] vdd gnd DFFPOSX1
X_2211_ \u_mem_serial.shift_reg\[15] _551__bF$buf4 _1118_ \u_cpu.ctrl.o_ibus_adr\[1] _240_ vdd 
+ gnd
+ AOI22X1
X_1902_ _504_ _22_ _23_ _703_ vdd gnd OAI21X1
X_1499_ _886_ _848_ _805_ _1122_ vdd gnd AOI21X1
X_2440_ _607_ i_clk_fast_bF$buf3 \u_mem_serial.shift_reg\[17] vdd gnd DFFPOSX1
X_2020_ _518_ _1110_ _107_ _108_ vdd gnd OAI21X1
X_1711_ _969_ _1043_ vdd gnd INVX1
X_1940_ \u_mem_serial.shift_reg\[30] mem_ibus_ack_bF$buf7 _51_ vdd gnd NAND2X1
X_1520_ \u_rf_if.rcnt\[1] _903_ vdd gnd INVX1
X_2305_ _642_ i_clk_sys_ext_bF$buf9 \u_cpu.bufreg.data\[6] vdd gnd DFFPOSX1
X_2534_ _618_ i_clk_sys_ext_bF$buf8 \u_cpu.bufreg.i_shamt\[2] vdd gnd DFFPOSX1
X_2114_ _166_ _149_ _151_ _633_ vdd gnd MUX2X1
X_1805_ \u_rf_if.rreg1_latched\[2] _973_ _972_ raddr[6] _1103_ vdd 
+ gnd
+ AOI22X1
X_2343_ _677_ i_clk_sys_ext_bF$buf10 rf_read_reg1_to_if[2] vdd gnd DFFPOSX1
X_1614_ \u_rf_if.stream_cnt\[2] _928_ _980_ vdd gnd NAND2X1
X_2572_ _854_ i_clk_fast_bF$buf3 \u_mem_serial.shift_reg\[11] vdd gnd DFFPOSX1
X_2152_ _187_ _193_ _192_ _622_ vdd gnd OAI21X1
XCLKBUF1_insert43 i_clk_fast i_clk_fast_bF$buf7 vdd gnd CLKBUF1
XCLKBUF1_insert44 i_clk_fast i_clk_fast_bF$buf6 vdd gnd CLKBUF1
XCLKBUF1_insert45 i_clk_fast i_clk_fast_bF$buf5 vdd gnd CLKBUF1
XCLKBUF1_insert46 i_clk_fast i_clk_fast_bF$buf4 vdd gnd CLKBUF1
XCLKBUF1_insert47 i_clk_fast i_clk_fast_bF$buf3 vdd gnd CLKBUF1
XCLKBUF1_insert48 i_clk_fast i_clk_fast_bF$buf2 vdd gnd CLKBUF1
XCLKBUF1_insert49 i_clk_fast i_clk_fast_bF$buf1 vdd gnd CLKBUF1
X_1843_ _505__bF$buf1 _1134_ _1135_ _719_ vdd gnd AOI21X1
X_1423_ _293_ \u_rf_if.last_req_key\[4] _291_ vdd gnd AND2X2
X_2208_ \u_cpu.bufreg2.cnt_next\[6] _189_ _238_ vdd gnd NOR2X1
X_2381_ _707_ i_clk_sys_ext_bF$buf6 \u_cpu.decode.opcode\[1] vdd gnd DFFPOSX1
X_1652_ _383__bF$buf1 \u_rf_if.read_buf0\[11] \u_rf_if.read_buf0\[10] _990__bF$buf2 _1006_ vdd 
+ gnd
+ OAI22X1
X_1232_ _480_ _478_ _477_ vdd gnd NAND2X1
X_2437_ _751_ i_clk_sys_ext_bF$buf0 \u_rf_if.o_waddr\[2] vdd gnd DFFPOSX1
X_2017_ _518_ _402_ _105_ vdd gnd NAND2X1
X_2190_ \u_cpu.ctrl.o_ibus_adr\[8] _224_ vdd gnd INVX1
X_1708_ _1040_ _911_ _1041_ vdd gnd OR2X2
X_1881_ _10_ _11_ _567_ _12_ vdd gnd MUX2X1
X_1461_ _525_ _807_ _809_ vdd gnd NOR2X1
X_2246_ _258_ _259_ _440__bF$buf5 _593_ vdd gnd MUX2X1
X_1937_ _518_ _1151_ _49_ _694_ vdd gnd OAI21X1
X_1517_ \u_rf_if.wdata0_next_phase\ _900_ _898_ _901_ vdd gnd MUX2X1
X_1690_ _383__bF$buf2 \u_rf_if.read_buf0\[25] \u_rf_if.read_buf0\[24] _990__bF$buf0 _1030_ vdd 
+ gnd
+ OAI22X1
X_1270_ _526_ _441_ _845_ vdd gnd NOR2X1
X_2475_ _732_ i_clk_sys_ext_bF$buf0 raddr[4] vdd gnd DFFPOSX1
X_2055_ _131_ _132_ _413__bF$buf1 _659_ vdd gnd MUX2X1
X_1746_ _1067_ _443_ _754_ vdd gnd NOR2X1
X_1326_ \u_cpu.decode.opcode\[0] _424_ _386_ vdd gnd NOR2X1
X_2284_ _476_ _1145_ _274_ _570_ vdd gnd OAI21X1
X_1975_ _73_ _76_ _75_ _683_ vdd gnd MUX2X1
X_1555_ \u_rf_if.stream_cnt\[4] _934_ _931_ _828_ vdd gnd OAI21X1
X_2093_ \u_cpu.state.i_ctrl_misalign\ _149_ vdd gnd INVX1
X_1784_ _919_ _927_ raddr[0] _829_ _1088_ vdd 
+ gnd
+ OAI22X1
X_1364_ \u_cpu.state.cnt_r\[2] _420_ _348_ vdd gnd NAND2X1
X_2569_ _628_ i_clk_fast_bF$buf4 \u_mem_serial.state\[1] vdd gnd DFFPOSX1
X_2149_ _488_ _185_ _466_ _191_ vdd gnd NAND3X1
X_1593_ _963_ _965_ _966_ vdd gnd NAND2X1
X_1173_ \u_cpu.ctrl.o_ibus_adr\[3] _532_ vdd gnd INVX1
X_2378_ _703_ i_clk_fast_bF$buf0 \u_mem_serial.bit_count\[1] vdd gnd DFFPOSX1
X_1649_ \u_rf_if.read_buf0\[11] _947__bF$buf3 \u_rf_if.read_buf0\[9] _990__bF$buf3 _1004_ vdd 
+ gnd
+ OAI22X1
X_1229_ \u_cpu.state.cnt_r\[2] _480_ vdd gnd INVX1
X_2187_ _505__bF$buf3 _220_ _221_ _614_ vdd gnd AOI21X1
XFILL98550x3750 gnd vdd FILL
X_1878_ _8_ _551__bF$buf4 _9_ vdd gnd NAND2X1
X_1458_ _524_ _338_ _806_ vdd gnd NOR2X1
X_1687_ _383__bF$buf2 \u_rf_if.read_buf0\[24] \u_rf_if.read_buf0\[23] _990__bF$buf0 _1028_ vdd 
+ gnd
+ OAI22X1
X_1267_ _501_ _443_ \u_rf_if.rtrig0\ vdd gnd NOR2X1
X_1496_ _293_ _807_ _883_ _884_ vdd gnd AOI21X1
X_2302_ _555_ _556_ _554_ vdd gnd NOR2X1
X_2531_ _821_ i_clk_sys_ext_bF$buf13 \u_rf_if.issue_idx\[5] vdd gnd DFFPOSX1
X_2111_ _157_ _162_ _493_ _164_ vdd gnd AOI21X1
X_1802_ \u_rf_if.rreg1_latched\[1] _973_ _972_ raddr[5] _1101_ vdd 
+ gnd
+ AOI22X1
X_1399_ _317_ _316_ _318_ _315_ vdd gnd AOI21X1
X_2340_ _674_ i_clk_sys_ext_bF$buf9 rf_wreg0_to_if[3] vdd gnd DFFPOSX1
XFILL98550x57750 gnd vdd FILL
X_1611_ _383__bF$buf3 _932_ _978_ _816_ vdd gnd AOI21X1
X_1840_ _445_ _1133_ _720_ vdd gnd OR2X2
X_1420_ ren_bF$buf1 raddr[4] _336_ _295_ _294_ vdd 
+ gnd
+ AOI22X1
X_2205_ \u_mem_serial.shift_reg\[8] _551__bF$buf2 _236_ vdd gnd NAND2X1
X_2434_ _605_ i_clk_sys_ext_bF$buf13 \u_cpu.ctrl.o_ibus_adr\[25] vdd gnd DFFPOSX1
X_2014_ mem_ibus_ack_bF$buf4 \u_cpu.immdec.gen_immdec_w_eq_1.imm31\ _103_ vdd gnd NOR2X1
X_1705_ _942_ _969_ _1039_ vdd gnd NAND2X1
XFILL98850x10950 gnd vdd FILL
X_2243_ \u_cpu.ctrl.o_ibus_adr\[14] _258_ vdd gnd INVX1
X_1934_ mem_ibus_ack_bF$buf6 \u_mem_serial.shift_reg\[14] _48_ vdd gnd NAND2X1
X_1514_ _527_ _865_ _336_ _898_ vdd gnd NAND3X1
X_2472_ _825_ i_clk_sys_ext_bF$buf12 \u_rf_if.rreg0_latched\[3] vdd gnd DFFPOSX1
X_2052_ \u_cpu.bufreg.data\[24] _131_ vdd gnd INVX1
X_1743_ \u_rf_if.rcnt\[2] _904_ _1065_ vdd gnd NAND2X1
X_1323_ _397_ _390_ _389_ vdd gnd OR2X2
X_2528_ _616_ i_clk_sys_ext_bF$buf1 \u_cpu.bufreg.i_shamt\[0] vdd gnd DFFPOSX1
X_2108_ _158_ _159_ _161_ vdd gnd NAND2X1
X_2281_ _477_ _1140_ _273_ vdd gnd NAND2X1
X_1972_ _438_ _376_ _17_ _74_ vdd gnd NAND3X1
X_1552_ \u_rf_if.stream_cnt\[0] _932_ vdd gnd INVX1
X_2337_ _671_ i_clk_sys_ext_bF$buf9 rf_wreg0_to_if[0] vdd gnd DFFPOSX1
X_2090_ _1112_ _533_ _413__bF$buf4 _638_ vdd gnd MUX2X1
X_1608_ \u_rf_if.shift_rx\[1] _976_ i_rst_n_bF$buf3 _977_ vdd gnd OAI21X1
X_1781_ ren_bF$buf2 _276_ i_rst_n_bF$buf1 _1086_ vdd gnd OAI21X1
X_1361_ \u_cpu.alu.cmp_r\ _352_ _353_ _351_ vdd gnd AOI21X1
X_2566_ _851_ i_clk_fast_bF$buf1 \u_mem_serial.shift_reg\[8] vdd gnd DFFPOSX1
X_2146_ _469_ _466_ _188_ _189_ vdd gnd OAI21X1
X_1837_ \u_mem_serial.active_ibus\ _1132_ vdd gnd INVX1
X_1417_ _299_ _298_ _297_ vdd gnd NAND2X1
X_1590_ \u_rf_if.write_wait\[0] \u_rf_if.write_wait\[1] _963_ vdd gnd NOR2X1
X_1170_ \u_mem_serial.shift_reg\[17] _535_ vdd gnd INVX1
X_2375_ _585_ i_clk_sys_ext_bF$buf9 \u_cpu.ctrl.o_ibus_adr\[5] vdd gnd DFFPOSX1
X_1646_ \u_rf_if.read_buf0\[10] _1002_ vdd gnd INVX1
X_1226_ _484_ _483_ vdd gnd INVX1
X_2184_ _552__bF$buf1 _218_ _219_ _615_ vdd gnd OAI21X1
X_1875_ _504_ _4_ _518_ _6_ _713_ vdd 
+ gnd
+ OAI22X1
X_1455_ _276_ _804_ _799_ _838_ vdd gnd AOI21X1
X_1684_ \u_rf_if.read_buf0\[24] _947__bF$buf2 \u_rf_if.read_buf0\[22] _990__bF$buf0 _1026_ vdd 
+ gnd
+ OAI22X1
X_1264_ _446_ _445_ vdd gnd INVX1
X_2469_ _774_ i_clk_sys_ext_bF$buf7 \u_rf_if.read_buf0\[22] vdd gnd DFFPOSX1
X_2049_ _128_ _129_ _413__bF$buf1 _662_ vdd gnd MUX2X1
X_1493_ _309_ \u_rf_if.tx_state\[0] _881_ vdd gnd AND2X2
X_2278_ _387_ \u_cpu.ctrl.i_jump\ _271_ vdd gnd AND2X2
X_1969_ _518_ \u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20\[1] _71_ _72_ vdd gnd AOI21X1
X_1549_ _916_ _923_ _929_ vdd gnd NOR2X1
X_2087_ _10_ _41_ _413__bF$buf4 _642_ vdd gnd MUX2X1
X_1778_ _300_ _704__bF$buf0 _1084_ _739_ vdd gnd AOI21X1
X_1358_ \u_cpu.bufreg.i_right_shift_op\ _357_ _355_ _354_ vdd gnd NAND3X1
X_1587_ \u_rf_if.ready_pulse\ _962_ vdd gnd INVX1
X_1167_ \u_mem_serial.shift_reg\[8] _552__bF$buf2 _537_ vdd gnd NAND2X1
X_1396_ \u_rf_if.last_req_key\[1] _323_ _319_ _318_ vdd gnd OAI21X1
X_2202_ _145_ _233_ _567_ _234_ vdd gnd MUX2X1
X_2431_ _749_ i_clk_fast_bF$buf7 \u_rf_if.tx_state\[0] vdd gnd DFFPOSX1
X_2011_ rf_wreg0_to_if[1] _518_ _101_ vdd gnd NAND2X1
X_1702_ \u_rf_if.read_buf0\[30] _383__bF$buf3 _1037_ vdd gnd NOR2X1
X_1299_ _416_ _414_ _413_ vdd gnd NAND2X1
X_2240_ _255_ _256_ _440__bF$buf4 _596_ vdd gnd MUX2X1
X_1931_ _45_ _566_ _46_ _47_ vdd gnd AOI21X1
X_1511_ _894_ \u_rf_if.o_waddr\[3] _896_ vdd gnd AND2X2
X_1740_ mem_ibus_ack_bF$buf7 \u_rf_if.rreg1_latched\[2] _1064_ vdd gnd NOR2X1
X_1320_ _393_ _396_ _392_ vdd gnd OR2X2
X_2525_ _615_ i_clk_fast_bF$buf6 \u_mem_serial.shift_reg\[13] vdd gnd DFFPOSX1
X_2105_ \u_cpu.bufreg.c_r\ _158_ vdd gnd INVX1
XFILL98550x43350 gnd vdd FILL
X_2334_ _668_ i_clk_sys_ext_bF$buf6 \u_cpu.immdec.gen_immdec_w_eq_1.imm7\ vdd gnd DFFPOSX1
X_1605_ _968_ _971_ _974_ _818_ vdd gnd OAI21X1
X_2563_ _849_ i_clk_fast_bF$buf2 \u_rf_if.launch_pending\ vdd gnd DFFPOSX1
X_2143_ _183_ _184_ _468_ _185_ _186_ vdd 
+ gnd
+ AOI22X1
X_1834_ _1130_ _486_ _620_[1] vdd gnd NOR2X1
X_1414_ ren_bF$buf0 raddr[6] _336_ _301_ _300_ vdd 
+ gnd
+ AOI22X1
XBUFX2_insert70 _383_ _383__bF$buf4 vdd gnd BUFX2
XBUFX2_insert71 _383_ _383__bF$buf3 vdd gnd BUFX2
XBUFX2_insert72 _383_ _383__bF$buf2 vdd gnd BUFX2
XBUFX2_insert73 _383_ _383__bF$buf1 vdd gnd BUFX2
XBUFX2_insert74 _383_ _383__bF$buf0 vdd gnd BUFX2
XBUFX2_insert75 _947_ _947__bF$buf4 vdd gnd BUFX2
XBUFX2_insert76 _947_ _947__bF$buf3 vdd gnd BUFX2
XBUFX2_insert77 _947_ _947__bF$buf2 vdd gnd BUFX2
XBUFX2_insert78 _947_ _947__bF$buf1 vdd gnd BUFX2
XBUFX2_insert79 _947_ _947__bF$buf0 vdd gnd BUFX2
X_2372_ _700_ i_clk_fast_bF$buf0 \u_mem_serial.bit_count\[4] vdd gnd DFFPOSX1
X_1643_ \u_rf_if.read_buf0\[8] _383__bF$buf3 _1000_ vdd gnd NOR2X1
X_1223_ _491_ _487_ _486_ vdd gnd NOR2X1
X_2428_ _748_ i_clk_fast_bF$buf7 \u_rf_if.tx_state\[1] vdd gnd DFFPOSX1
X_2008_ \u_mem_serial.shift_reg\[8] rf_wreg0_to_if[2] mem_ibus_ack_bF$buf3 _99_ vdd gnd MUX2X1
X_2181_ _217_ _211_ _189_ _616_ vdd gnd MUX2X1
X_1872_ \u_mem_serial.bit_count\[0] _3_ _554_ _4_ vdd gnd NAND3X1
X_1452_ \u_rf_if.tx_state\[1] _802_ vdd gnd INVX1
X_2237_ \u_cpu.ctrl.o_ibus_adr\[17] _255_ vdd gnd INVX1
X_1928_ _8_ _44_ _552__bF$buf1 _698_ vdd gnd MUX2X1
X_1508_ \u_rf_if.o_waddr\[1] _892_ _893_ vdd gnd NAND2X1
X_1681_ \u_rf_if.read_buf0\[23] _1024_ vdd gnd INVX1
X_1261_ _449_ _482_ _448_ vdd gnd NAND2X1
X_2466_ _772_ i_clk_sys_ext_bF$buf3 \u_rf_if.read_buf0\[24] vdd gnd DFFPOSX1
X_2046_ \u_cpu.bufreg.data\[27] _128_ vdd gnd INVX1
X_1737_ mem_ibus_ack_bF$buf5 \u_rf_if.rreg1_latched\[1] _1062_ vdd gnd NOR2X1
X_1317_ \u_cpu.decode.opcode\[0] \u_cpu.decode.opcode\[1] _405_ \u_cpu.decode.co_ebreak\ _395_ vdd 
+ gnd
+ AOI22X1
X_1490_ _522_ \u_rf_if.tx_state\[3] _878_ vdd gnd OR2X2
X_2275_ _389_ _392_ _1148_ _574_ vdd gnd AOI21X1
XFILL99150x36150 gnd vdd FILL
X_1966_ _67_ _56_ _69_ _685_ vdd gnd AOI21X1
X_1546_ _916_ _923_ _926_ _927_ vdd gnd OAI21X1
X_2084_ \u_cpu.bufreg.data\[8] _147_ vdd gnd INVX1
XFILL98850x18150 gnd vdd FILL
X_1775_ \u_rf_if.last_req_key\[5] _704__bF$buf3 i_rst_n_bF$buf0 _1083_ vdd gnd OAI21X1
X_1355_ \u_cpu.bne_or_bge\ _357_ vdd gnd INVX1
X_1584_ _370_ _951_ _959_ _960_ vdd gnd OAI21X1
X_1164_ \u_mem_serial.shift_reg\[12] _552__bF$buf0 _539_ vdd gnd NAND2X1
X_2369_ _582_ i_clk_sys_ext_bF$buf9 \u_cpu.ctrl.o_ibus_adr\[2] vdd gnd DFFPOSX1
X_1393_ \u_rf_if.last_req_key\[8] _321_ vdd gnd INVX1
X_2178_ _188_ _208_ _215_ _216_ vdd gnd OAI21X1
X_1869_ _542_ _504_ _562_ _2_ vdd gnd OAI21X1
X_1449_ _797_ _800_ _840_ vdd gnd AND2X2
X_1678_ \u_rf_if.read_buf0\[22] _947__bF$buf2 _1022_ vdd gnd NOR2X1
X_1258_ _452_ _451_ vdd gnd INVX1
X_1487_ _874_ _873_ _872_ _875_ vdd gnd OAI21X1
X_1296_ _477_ _417_ _416_ vdd gnd NAND2X1
X_2522_ _815_ i_clk_sys_ext_bF$buf11 \u_rf_if.stream_cnt\[1] vdd gnd DFFPOSX1
X_2102_ _154_ _419_ _155_ vdd gnd NOR2X1
XFILL98550x64950 gnd vdd FILL
X_2331_ _665_ i_clk_sys_ext_bF$buf9 \u_cpu.immdec.gen_immdec_w_eq_1.imm11_7\[4] vdd gnd DFFPOSX1
X_1602_ _829_ _972_ vdd gnd INVX1
X_1199_ _511_ _509_ _508_ vdd gnd NOR2X1
X_2560_ _845_ i_clk_fast_bF$buf7 \u_rf_if.req_seen\ vdd gnd DFFPOSX1
X_2140_ \u_cpu.bufreg2.i_bytecnt\[1] \u_cpu.state.i_ctrl_misalign\ _182_ _183_ vdd gnd OAI21X1
X_1831_ \u_cpu.state.cnt_r\[3] \u_cpu.state.o_cnt\[2] _1129_ vdd gnd NOR2X1
X_1411_ _326_ _325_ _304_ _303_ vdd gnd OAI21X1
XBUFX2_insert40 _440_ _440__bF$buf2 vdd gnd BUFX2
XBUFX2_insert41 _440_ _440__bF$buf1 vdd gnd BUFX2
XBUFX2_insert42 _440_ _440__bF$buf0 vdd gnd BUFX2
X_1640_ _996_ _997_ _998_ _791_ vdd gnd AOI21X1
X_1220_ \u_cpu.state.o_cnt\[2] _489_ vdd gnd INVX1
X_2425_ _747_ i_clk_fast_bF$buf7 \u_rf_if.tx_state\[2] vdd gnd DFFPOSX1
X_2005_ \u_mem_serial.shift_reg\[9] rf_wreg0_to_if[3] mem_ibus_ack_bF$buf3 _97_ vdd gnd MUX2X1
X_2234_ _252_ _253_ _440__bF$buf4 _599_ vdd gnd MUX2X1
X_1925_ \u_cpu.ctrl.o_ibus_adr\[6] _42_ vdd gnd INVX1
X_1505_ \u_rf_if.o_waddr\[0] _890_ vdd gnd INVX1
X_2463_ _769_ i_clk_sys_ext_bF$buf11 \u_rf_if.read_buf0\[27] vdd gnd DFFPOSX1
X_2043_ \u_cpu.bufreg.data\[28] _126_ vdd gnd INVX1
X_1734_ mem_ibus_ack_bF$buf0 \u_rf_if.rreg1_latched\[0] _1060_ vdd gnd NOR2X1
X_1314_ _423_ _399_ _398_ vdd gnd AND2X2
X_2519_ _613_ i_clk_fast_bF$buf4 \u_mem_serial.shift_reg\[23] vdd gnd DFFPOSX1
X_2272_ _179_ _268_ vdd gnd INVX1
X_1963_ \u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20\[1] _67_ vdd gnd INVX1
X_1543_ \u_rf_if.stream_cnt\[0] _383__bF$buf4 _924_ vdd gnd NOR2X1
X_2328_ _662_ i_clk_sys_ext_bF$buf8 \u_cpu.bufreg.data\[26] vdd gnd DFFPOSX1
XFILL99150x90150 gnd vdd FILL
XFILL99150x57750 gnd vdd FILL
X_2081_ _144_ _145_ _413__bF$buf2 _646_ vdd gnd MUX2X1
X_1772_ _328_ _704__bF$buf3 _1081_ _742_ vdd gnd AOI21X1
X_1352_ _361_ _362_ _360_ vdd gnd NAND2X1
XFILL98850x72150 gnd vdd FILL
X_2557_ _626_ i_clk_fast_bF$buf6 \u_mem_serial.shift_reg\[31] vdd gnd DFFPOSX1
X_2137_ \u_mem_serial.shift_reg\[0] _505__bF$buf4 _181_ vdd gnd NOR2X1
XFILL98850x39750 gnd vdd FILL
X_1828_ \u_mem_serial.shift_reg\[0] _551__bF$buf3 _1127_ vdd gnd NAND2X1
X_1408_ _307_ _308_ _306_ vdd gnd NAND2X1
X_1581_ \u_rf_if.rs2_stream_buf\[1] _956_ _957_ vdd gnd NOR2X1
X_1161_ _542_ _553_ _551__bF$buf2 _541_ vdd gnd OAI21X1
X_2366_ _581_ i_clk_sys_ext_bF$buf9 \u_cpu.ctrl.o_ibus_adr\[1] vdd gnd DFFPOSX1
X_1637_ \u_rf_if.read_buf0\[7] _996_ vdd gnd INVX1
X_1217_ \u_cpu.bufreg2.i_bytecnt\[1] _492_ vdd gnd INVX1
X_1390_ _337_ raddr[1] _324_ vdd gnd OR2X2
X_2175_ _211_ _212_ _213_ vdd gnd NOR2X1
X_1866_ _1153_ _1154_ _567_ _1125_ vdd gnd MUX2X1
X_1446_ \u_rf_if.shift_rx\[0] _798_ vdd gnd INVX1
X_1675_ \u_rf_if.read_buf0\[21] _947__bF$buf4 _1020_ vdd gnd NOR2X1
X_1255_ _470_ _465_ _455_ _454_ vdd gnd OAI21X1
X_1484_ _871_ \u_rf_if.rtrig0\ _872_ vdd gnd NOR2X1
X_2269_ \u_cpu.ctrl.o_ibus_adr\[29] _267_ vdd gnd INVX1
X_1293_ \u_cpu.state.cnt_r\[0] _420_ _419_ vdd gnd NAND2X1
X_2498_ _796_ i_clk_sys_ext_bF$buf3 \u_rf_if.read_buf0\[0] vdd gnd DFFPOSX1
X_2078_ \u_cpu.bufreg.data\[11] _144_ vdd gnd INVX1
X_1769_ \u_rf_if.last_req_key\[2] _704__bF$buf1 i_rst_n_bF$buf3 _1080_ vdd gnd OAI21X1
X_1349_ _364_ _365_ _363_ vdd gnd NAND2X1
X_1998_ _434_ _477_ _91_ vdd gnd NAND2X1
X_1578_ _930_ _954_ vdd gnd INVX1
X_1158_ _1121_ o_mem_sync vdd gnd BUFX2
X_1387_ _328_ _327_ vdd gnd INVX1
X_1196_ \u_mem_serial.shift_reg\[1] _512_ _511_ vdd gnd NAND2X1
XBUFX2_insert10 _552_ _552__bF$buf3 vdd gnd BUFX2
XBUFX2_insert11 _552_ _552__bF$buf2 vdd gnd BUFX2
XBUFX2_insert12 _552_ _552__bF$buf1 vdd gnd BUFX2
XBUFX2_insert13 _552_ _552__bF$buf0 vdd gnd BUFX2
XBUFX2_insert14 i_rst_n i_rst_n_bF$buf3 vdd gnd BUFX2
XBUFX2_insert15 i_rst_n i_rst_n_bF$buf2 vdd gnd BUFX2
XBUFX2_insert16 i_rst_n i_rst_n_bF$buf1 vdd gnd BUFX2
XBUFX2_insert17 i_rst_n i_rst_n_bF$buf0 vdd gnd BUFX2
XBUFX2_insert18 _505_ _505__bF$buf4 vdd gnd BUFX2
XBUFX2_insert19 _505_ _505__bF$buf3 vdd gnd BUFX2
X_2422_ _600_ i_clk_sys_ext_bF$buf3 \u_cpu.ctrl.o_ibus_adr\[20] vdd gnd DFFPOSX1
X_2002_ mem_ibus_ack_bF$buf3 \u_mem_serial.shift_reg\[10] _94_ _95_ vdd gnd AOI21X1
X_2231_ \u_cpu.ctrl.o_ibus_adr\[20] _252_ vdd gnd INVX1
X_1922_ _38_ _39_ _699_ vdd gnd NAND2X1
X_1502_ _505__bF$buf4 _887_ _888_ _835_ vdd gnd AOI21X1
X_2460_ _766_ i_clk_sys_ext_bF$buf5 \u_rf_if.issue_idx\[0] vdd gnd DFFPOSX1
X_2040_ _120_ _86_ _124_ _666_ vdd gnd AOI21X1
X_1731_ mem_ibus_ack_bF$buf5 \u_rf_if.rreg0_latched\[2] _1058_ vdd gnd NOR2X1
X_1311_ _402_ _484_ _401_ vdd gnd NAND2X1
XFILL98850x7350 gnd vdd FILL
X_2516_ _812_ i_clk_sys_ext_bF$buf13 \u_rf_if.read_buf1\[0] vdd gnd DFFPOSX1
X_1960_ mem_ibus_ack_bF$buf4 _61_ _14_ _65_ vdd gnd OAI21X1
X_1540_ _920_ _921_ vdd gnd INVX1
X_2325_ _660_ i_clk_sys_ext_bF$buf8 \u_cpu.bufreg.data\[24] vdd gnd DFFPOSX1
X_2554_ _840_ i_clk_fast_bF$buf7 \u_rf_if.shift_rx\[0] vdd gnd DFFPOSX1
X_2134_ \u_mem_serial.bit_count\[1] _558_ \u_mem_serial.bit_count\[5] _178_ vdd gnd OAI21X1
XFILL98850x93750 gnd vdd FILL
X_1825_ \u_mem_serial.shift_reg\[29] _551__bF$buf1 _1118_ _1119_ vdd gnd AOI21X1
X_1405_ _337_ raddr[2] _310_ _309_ vdd gnd OAI21X1
X_2363_ _694_ i_clk_sys_ext_bF$buf6 \u_cpu.decode.co_ebreak\ vdd gnd DFFPOSX1
X_1634_ \u_rf_if.read_buf0\[6] _947__bF$buf2 _994_ vdd gnd NOR2X1
X_1214_ \u_cpu.bne_or_bge\ \u_cpu.decode.co_mem_word\ _496_ _495_ vdd gnd OAI21X1
X_2419_ _744_ i_clk_fast_bF$buf2 \u_rf_if.last_req_key\[1] vdd gnd DFFPOSX1
X_2172_ _207_ _210_ _618_ vdd gnd NAND2X1
X_1863_ _1110_ _551__bF$buf5 _1152_ vdd gnd NAND2X1
X_1443_ \u_rf_if.tx_state\[2] _520_ _723_ vdd gnd NOR2X1
X_2228_ _249_ _250_ _440__bF$buf2 _602_ vdd gnd MUX2X1
X_1919_ _36_ _37_ vdd gnd INVX1
X_1672_ _1017_ _997_ _1018_ _779_ vdd gnd AOI21X1
X_1252_ \u_cpu.bufreg2.dhi\[5] _457_ vdd gnd INVX1
X_2457_ _610_ i_clk_fast_bF$buf1 \u_mem_serial.shift_reg\[9] vdd gnd DFFPOSX1
X_2037_ \u_cpu.immdec.gen_immdec_w_eq_1.imm30_25\[0] _518_ _122_ vdd gnd NAND2X1
X_1728_ mem_ibus_ack_bF$buf5 \u_rf_if.rreg0_latched\[1] _1056_ vdd gnd NOR2X1
X_1308_ _405_ _404_ vdd gnd INVX1
XFILL99150x43350 gnd vdd FILL
X_1481_ _868_ \u_rf_if.wdata0_r\[0] _722_ _869_ vdd gnd AOI21X1
X_2266_ \u_cpu.ctrl.o_ibus_adr\[30] _265_ vdd gnd INVX1
X_1957_ _62_ _56_ _63_ vdd gnd NOR2X1
X_1537_ \u_rf_if.stream_cnt\[2] _918_ vdd gnd INVX1
X_1290_ _423_ _422_ vdd gnd INVX1
X_2495_ _793_ i_clk_sys_ext_bF$buf7 \u_rf_if.read_buf0\[3] vdd gnd DFFPOSX1
X_2075_ _141_ _142_ _413__bF$buf0 _649_ vdd gnd MUX2X1
X_1766_ _289_ _704__bF$buf1 _1078_ _745_ vdd gnd AOI21X1
X_1346_ _367_ _366_ vdd gnd INVX1
X_1995_ _1061_ _89_ _86_ _676_ vdd gnd MUX2X1
X_1575_ rf_read_reg0_to_if[3] _952_ vdd gnd INVX1
X_1155_ _1124_ o_rf_sync vdd gnd BUFX2
X_1384_ raddr[3] _330_ vdd gnd INVX1
X_2589_ _639_ i_clk_sys_ext_bF$buf9 \u_cpu.bufreg.data\[4] vdd gnd DFFPOSX1
X_2169_ _464_ _465_ _208_ vdd gnd NOR2X1
X_1193_ \u_mem_serial.shift_reg\[5] _514_ vdd gnd INVX1
X_2398_ _620_[1] i_clk_sys_ext_bF$buf1 \u_cpu.bufreg2.i_bytecnt\[0] vdd gnd DFFPOSX1
X_1669_ \u_rf_if.stream_active_bF$buf0\ _1014_ _1016_ _780_ vdd gnd AOI21X1
X_1249_ _461_ _460_ vdd gnd INVX1
X_1898_ _19_ _20_ _0_ vdd gnd NOR2X1
X_1478_ \u_rf_if.rcnt\[2] \u_rf_if.wdata0_next_phase\ _865_ _866_ vdd gnd MUX2X1
X_1287_ _425_ _529_ \u_rf_if.rtrig0\ _844_ vdd gnd MUX2X1
X_2513_ \u_mem_serial.state\[1] _568_ _551_ vdd gnd NOR2X1
X_2322_ _657_ i_clk_sys_ext_bF$buf8 \u_cpu.bufreg.data\[21] vdd gnd DFFPOSX1
X_2551_ _569_ i_clk_fast_bF$buf6 \u_mem_serial.shift_reg\[2] vdd gnd DFFPOSX1
X_2131_ _20_ _505__bF$buf1 _176_ _626_ vdd gnd OAI21X1
X_1822_ \u_mem_serial.shift_reg\[29] _505__bF$buf1 _1117_ vdd gnd NOR2X1
X_1402_ _314_ _313_ \u_rf_if.req_seen\ _312_ vdd gnd OAI21X1
X_2360_ _692_ i_clk_sys_ext_bF$buf6 \u_cpu.bufreg.i_sh_signed\ vdd gnd DFFPOSX1
X_1631_ \u_rf_if.read_buf0\[5] _947__bF$buf4 _992_ vdd gnd NOR2X1
X_1211_ \u_cpu.decode.co_mem_word\ _498_ vdd gnd INVX1
X_2416_ _597_ i_clk_sys_ext_bF$buf3 \u_cpu.ctrl.o_ibus_adr\[17] vdd gnd DFFPOSX1
X_1860_ _1149_ \u_cpu.state.ibus_cyc\ _799_ _1150_ vdd gnd AOI21X1
X_1440_ \u_rf_if.last_req_key\[9] _704__bF$buf2 i_rst_n_bF$buf1 _705_ vdd gnd OAI21X1
X_2225_ \u_cpu.ctrl.o_ibus_adr\[23] _249_ vdd gnd INVX1
X_1916_ _561_ _32_ _34_ _700_ vdd gnd OAI21X1
X_2454_ _763_ i_clk_sys_ext_bF$buf5 \u_rf_if.issue_idx\[3] vdd gnd DFFPOSX1
X_2034_ _111_ _75_ _118_ _119_ _667_ vdd 
+ gnd
+ AOI22X1
X_1725_ mem_ibus_ack_bF$buf2 \u_rf_if.rreg0_latched\[0] _1054_ vdd gnd NOR2X1
X_1305_ \u_cpu.bufreg2.i_op_b_sel\ _408_ _407_ vdd gnd NAND2X1
X_2263_ _262_ _440__bF$buf0 _263_ _580_ vdd gnd AOI21X1
XFILL99150x64950 gnd vdd FILL
X_1954_ _1053_ _60_ _56_ _688_ vdd gnd MUX2X1
X_1534_ _909_ _914_ _910_ _915_ vdd gnd OAI21X1
X_2319_ _654_ i_clk_sys_ext_bF$buf2 \u_cpu.bufreg.data\[18] vdd gnd DFFPOSX1
X_2492_ _790_ i_clk_sys_ext_bF$buf11 \u_rf_if.read_buf0\[6] vdd gnd DFFPOSX1
X_2072_ \u_cpu.bufreg.data\[14] _141_ vdd gnd INVX1
X_1763_ _1077_ _858_ _747_ vdd gnd AND2X2
X_1343_ \u_rf_if.rs2_stream_buf\[0] _370_ \u_cpu.bufreg2.i_op_b_sel\ _369_ vdd gnd OAI21X1
X_2548_ _835_ i_clk_fast_bF$buf0 \u_mem_serial.shift_reg\[27] vdd gnd DFFPOSX1
X_2128_ _541_ _174_ _175_ vdd gnd AND2X2
X_1819_ _551__bF$buf5 _1114_ _1111_ _1115_ vdd gnd OAI21X1
X_1992_ \u_mem_serial.shift_reg\[22] rf_read_reg1_to_if[3] mem_ibus_ack_bF$buf2 _88_ vdd gnd MUX2X1
X_1572_ \u_rf_if.read_buf0\[31] _948_ _950_ vdd gnd NAND2X1
X_2357_ _689_ i_clk_sys_ext_bF$buf10 rf_read_reg0_to_if[1] vdd gnd DFFPOSX1
X_1628_ _948_ _990_ vdd gnd INVX8
X_1208_ \u_rf_if.rcnt\[0] _501_ vdd gnd INVX1
X_1381_ _334_ _333_ vdd gnd INVX1
X_2586_ _638_ i_clk_sys_ext_bF$buf9 \u_cpu.bufreg.data\[3] vdd gnd DFFPOSX1
X_2166_ _203_ _205_ _619_ vdd gnd NAND2X1
X_1857_ _500_ _484_ _481_ _717_ vdd gnd OAI21X1
X_1437_ _337_ _338_ _278_ _302_ _277_ vdd 
+ gnd
+ AOI22X1
X_1190_ current_stream_rs2_hint _518_ _517_ vdd gnd NAND2X1
X_2395_ \u_cpu.state.cnt_r\[2] i_clk_sys_ext_bF$buf2 \u_cpu.state.cnt_r\[3] vdd gnd DFFPOSX1
X_1666_ _383__bF$buf1 \u_rf_if.read_buf0\[16] \u_rf_if.read_buf0\[15] _990__bF$buf2 _1015_ vdd 
+ gnd
+ OAI22X1
X_1246_ \u_cpu.bufreg.i_shamt\[0] \u_cpu.bufreg.i_shamt\[1] _463_ vdd gnd NOR2X1
X_1895_ _1121_ _19_ vdd gnd INVX1
X_1475_ \u_rf_if.o_waddr\[0] \u_rf_if.o_waddr\[3] _863_ vdd gnd NOR2X1
X_1284_ _431_ _428_ _427_ vdd gnd NOR2X1
X_2489_ _787_ i_clk_sys_ext_bF$buf11 \u_rf_if.read_buf0\[9] vdd gnd DFFPOSX1
X_2069_ _138_ _139_ _413__bF$buf3 _652_ vdd gnd MUX2X1
X_2298_ _561_ _560_ _559_ _558_ vdd gnd NAND3X1
X_1989_ mem_ibus_ack_bF$buf7 _85_ _53_ _86_ vdd gnd OAI21X1
X_1569_ \u_rf_if.stream_active_bF$buf3\ _946_ _948_ vdd gnd NOR2X1
X_2510_ _552__bF$buf2 _550_ _549_ _856_ vdd gnd OAI21X1
X_1798_ \u_rf_if.rreg0_latched\[0] _970_ _969_ _1098_ vdd gnd NAND3X1
X_1378_ \u_rf_if.rtrig0\ _336_ vdd gnd INVX2
X_1187_ _520_ _522_ \u_rf_if.launch_pending\ _519_ vdd gnd OAI21X1
X_2413_ _741_ i_clk_fast_bF$buf2 \u_rf_if.last_req_key\[4] vdd gnd DFFPOSX1
X_2222_ _245_ _247_ _440__bF$buf5 _605_ vdd gnd MUX2X1
X_1913_ _31_ _32_ vdd gnd INVX1
X_2451_ _608_ i_clk_fast_bF$buf3 \u_mem_serial.shift_reg\[16] vdd gnd DFFPOSX1
X_2031_ _112_ _113_ _116_ _117_ vdd gnd OAI21X1
X_1722_ \u_rf_if.issue_idx\[4] _1050_ _966_ _1052_ vdd gnd OAI21X1
X_1302_ \u_cpu.decode.opcode\[1] _410_ vdd gnd INVX1
X_2507_ _552__bF$buf3 _548_ _547_ _855_ vdd gnd OAI21X1
X_2260_ \u_cpu.ctrl.o_ibus_adr\[1] _262_ vdd gnd INVX1
X_1951_ \u_mem_serial.shift_reg\[16] rf_read_reg0_to_if[2] mem_ibus_ack_bF$buf2 _59_ vdd gnd MUX2X1
X_1531_ \u_rf_if.issue_idx\[3] \u_rf_if.issue_idx\[2] _912_ vdd gnd NOR2X1
X_2316_ _651_ i_clk_sys_ext_bF$buf8 \u_cpu.bufreg.data\[15] vdd gnd DFFPOSX1
X_1760_ _809_ _1075_ _748_ vdd gnd NOR2X1
X_1340_ \u_cpu.branch_op\ _373_ _372_ vdd gnd NOR2X1
X_2545_ _623_ i_clk_sys_ext_bF$buf1 \u_cpu.bufreg2.dhi\[6] vdd gnd DFFPOSX1
X_2125_ \u_mem_serial.clk_sys_prev\ _565_ \u_mem_serial.state\[1] _173_ vdd gnd OAI21X1
X_1816_ \u_cpu.bufreg.data\[4] _1112_ vdd gnd INVX1
X_2354_ _686_ i_clk_sys_ext_bF$buf4 \u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20\[2] vdd gnd DFFPOSX1
X_1625_ \u_rf_if.read_buf0\[3] _988_ vdd gnd INVX1
X_1205_ \u_mem_serial.shift_reg\[25] _504_ _503_ vdd gnd NOR2X1
X_2583_ _636_ i_clk_sys_ext_bF$buf1 \u_cpu.bufreg.data\[0] vdd gnd DFFPOSX1
X_2163_ _461_ _202_ _465_ _203_ vdd gnd OAI21X1
X_1854_ \u_cpu.bne_or_bge\ _1145_ _437_ _1146_ vdd gnd OAI21X1
X_1434_ _281_ _282_ _280_ vdd gnd NAND2X1
X_2219_ \u_cpu.ctrl.o_ibus_adr\[27] _246_ vdd gnd INVX1
X_2392_ _717_ i_clk_sys_ext_bF$buf1 \u_cpu.state.init_done\ vdd gnd DFFPOSX1
X_1663_ \u_rf_if.read_buf0\[16] _947__bF$buf3 \u_rf_if.read_buf0\[14] _990__bF$buf3 _1013_ vdd 
+ gnd
+ OAI22X1
X_1243_ _467_ _466_ vdd gnd INVX1
X_2448_ _759_ i_clk_sys_ext_bF$buf12 \u_rf_if.rreg0_latched\[2] vdd gnd DFFPOSX1
X_2028_ \u_cpu.decode.opcode\[0] \u_cpu.decode.opcode\[2] \u_cpu.decode.opcode\[1] _114_ vdd gnd AOI21X1
XFILL99150x50550 gnd vdd FILL
X_1719_ _1048_ \u_rf_if.issue_idx\[3] _1050_ vdd gnd AND2X2
X_1892_ _512_ _410_ mem_ibus_ack_bF$buf1 _707_ vdd gnd MUX2X1
X_1472_ _384_ _451_ _860_ vdd gnd NOR2X1
X_2257_ _1154_ _1113_ _440__bF$buf1 _584_ vdd gnd MUX2X1
XFILL98850x32550 gnd vdd FILL
X_1948_ _952_ _57_ _56_ _691_ vdd gnd MUX2X1
X_1528_ \u_rf_if.issue_idx\[4] _909_ vdd gnd INVX1
X_1281_ rf_wreg0_to_if[0] _430_ vdd gnd INVX1
X_2486_ _785_ i_clk_sys_ext_bF$buf7 \u_rf_if.read_buf0\[11] vdd gnd DFFPOSX1
X_2066_ \u_cpu.bufreg.data\[17] _138_ vdd gnd INVX1
X_1757_ i_rst_n_bF$buf3 _722_ _1074_ vdd gnd NAND2X1
X_1337_ \u_cpu.bufreg.i_sh_signed\ _375_ vdd gnd INVX1
X_2295_ \u_mem_serial.bit_count\[4] _561_ vdd gnd INVX1
X_1986_ \u_mem_serial.shift_reg\[25] \u_cpu.immdec.gen_immdec_w_eq_1.imm30_25\[1] mem_ibus_ack_bF$buf3 _84_ vdd gnd MUX2X1
X_1566_ _942_ _944_ _945_ vdd gnd NOR2X1
X_1795_ \u_rf_if.issue_idx\[3] _1043_ _1095_ _1096_ vdd gnd OAI21X1
X_1375_ _515_ _505__bF$buf0 _339_ _842_ vdd gnd OAI21X1
X_1184_ _523_ _522_ vdd gnd INVX2
X_2389_ _714_ i_clk_fast_bF$buf4 \u_mem_serial.bit_count\[0] vdd gnd DFFPOSX1
X_2198_ _121_ _230_ _552__bF$buf3 _612_ vdd gnd MUX2X1
X_1889_ mem_ibus_ack_bF$buf4 _376_ _16_ _709_ vdd gnd OAI21X1
X_1469_ \u_rf_if.tx_state\[1] \u_rf_if.tx_state\[0] \u_rf_if.tx_state\[2] _857_ vdd gnd OAI21X1
X_2410_ _594_ i_clk_sys_ext_bF$buf3 \u_cpu.ctrl.o_ibus_adr\[14] vdd gnd DFFPOSX1
X_1698_ \u_rf_if.stream_active_bF$buf3\ _1032_ _1034_ _769_ vdd gnd AOI21X1
X_1278_ rf_wreg0_to_if[3] _433_ vdd gnd INVX1
X_1910_ _29_ _28_ _551__bF$buf1 _30_ vdd gnd OAI21X1
X_2504_ \u_mem_serial.shift_reg\[11] _552__bF$buf3 _545_ vdd gnd NAND2X1
X_2313_ _701_ i_clk_fast_bF$buf4 \u_mem_serial.bit_count\[3] vdd gnd DFFPOSX1
X_2542_ _622_ i_clk_sys_ext_bF$buf1 \u_cpu.bufreg2.dhi\[5] vdd gnd DFFPOSX1
X_2122_ \u_mem_serial.shift_reg\[3] _551__bF$buf3 _505__bF$buf2 _171_ vdd gnd NAND3X1
X_1813_ _1109_ _1108_ _1104_ _729_ vdd gnd OAI21X1
X_2351_ _684_ i_clk_sys_ext_bF$buf6 \u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20\[0] vdd gnd DFFPOSX1
X_1622_ \u_rf_if.read_buf0\[2] _986_ vdd gnd INVX1
X_1202_ _517_ _506_ \u_rf_if.i_stream_rs2_en\ vdd gnd NAND2X1
X_2407_ _738_ i_clk_fast_bF$buf1 \u_rf_if.last_req_key\[7] vdd gnd DFFPOSX1
X_2580_ _632_ i_clk_sys_ext_bF$buf1 \u_cpu.bufreg.c_r\ vdd gnd DFFPOSX1
X_2160_ \u_cpu.bufreg2.dhi\[3] _200_ vdd gnd INVX1
X_1851_ _1141_ _1140_ _1143_ vdd gnd AND2X2
X_1431_ ren_bF$buf1 raddr[5] _336_ _284_ _283_ vdd 
+ gnd
+ AOI22X1
X_2216_ _551__bF$buf5 _243_ _241_ _244_ vdd gnd OAI21X1
X_1907_ _559_ _24_ _27_ vdd gnd NAND2X1
X_1660_ \u_rf_if.read_buf0\[15] _947__bF$buf3 \u_rf_if.read_buf0\[13] _990__bF$buf3 _1011_ vdd 
+ gnd
+ OAI22X1
X_1240_ _471_ _469_ vdd gnd INVX2
X_2445_ _756_ i_clk_sys_ext_bF$buf10 \u_rf_if.rreg1_latched\[2] vdd gnd DFFPOSX1
X_2025_ \u_cpu.immdec.gen_immdec_w_eq_1.imm30_25\[5] _111_ vdd gnd INVX1
X_1716_ _1047_ _1048_ vdd gnd INVX1
X_2254_ _224_ _11_ _440__bF$buf0 _587_ vdd gnd MUX2X1
X_1945_ _499_ _404_ _54_ _55_ vdd gnd OAI21X1
X_1525_ mem_ibus_ack_bF$buf2 \u_rf_if.rreg1_latched\[3] _907_ vdd gnd NOR2X1
X_2483_ _782_ i_clk_sys_ext_bF$buf11 \u_rf_if.read_buf0\[14] vdd gnd DFFPOSX1
X_2063_ _135_ _136_ _413__bF$buf2 _655_ vdd gnd MUX2X1
X_1754_ _1072_ _446_ _751_ vdd gnd AND2X2
X_1334_ _383__bF$buf2 _382_ _379_ _378_ vdd gnd OAI21X1
X_2539_ _824_ i_clk_sys_ext_bF$buf11 \u_rf_if.rs2_stream_buf\[1] vdd gnd DFFPOSX1
X_2119_ \u_mem_serial.shift_reg\[13] _551__bF$buf3 _169_ vdd gnd NAND2X1
X_2292_ \u_mem_serial.clk_sys_prev\ _565_ _564_ vdd gnd NOR2X1
X_1983_ \u_mem_serial.shift_reg\[26] \u_cpu.immdec.gen_immdec_w_eq_1.imm30_25\[2] mem_ibus_ack_bF$buf6 _82_ vdd gnd MUX2X1
X_1563_ \u_rf_if.issue_idx\[0] _942_ vdd gnd INVX1
X_2348_ _682_ i_clk_sys_ext_bF$buf4 \u_cpu.immdec.gen_immdec_w_eq_1.imm30_25\[3] vdd gnd DFFPOSX1
X_1619_ _921_ \u_rf_if.stream_active_bF$buf2\ _917_ _984_ vdd gnd AOI21X1
X_1792_ \u_rf_if.stream_cnt\[3] _920_ _926_ _1094_ vdd gnd OAI21X1
X_1372_ _436_ _341_ _349_ _386_ _340_ vdd 
+ gnd
+ AOI22X1
X_2577_ _630_ i_clk_fast_bF$buf5 \u_mem_serial.shift_reg\[14] vdd gnd DFFPOSX1
X_2157_ _457_ _465_ _187_ _198_ vdd gnd OAI21X1
X_1848_ _377_ _363_ _380_ _1140_ vdd gnd OAI21X1
X_1428_ \u_rf_if.last_req_key\[0] _288_ _286_ vdd gnd NOR2X1
X_1181_ \u_rf_if.tx_state\[1] \u_rf_if.tx_state\[0] _525_ vdd gnd NOR2X1
X_2386_ _712_ i_clk_fast_bF$buf3 \u_mem_serial.shift_reg\[22] vdd gnd DFFPOSX1
X_1657_ \u_rf_if.read_buf0\[14] _1009_ vdd gnd INVX1
X_1237_ \u_cpu.decode.opcode\[2] _472_ vdd gnd INVX2
X_2195_ \u_cpu.ctrl.o_ibus_adr\[9] _228_ vdd gnd INVX1
X_1886_ \u_mem_serial.shift_reg\[12] mem_ibus_ack_bF$buf6 _15_ vdd gnd NAND2X1
X_1466_ \u_rf_if.tx_state\[2] _524_ \u_rf_if.tx_state\[3] _843_ vdd gnd OAI21X1
X_1695_ _383__bF$buf4 \u_rf_if.read_buf0\[27] \u_rf_if.read_buf0\[26] _990__bF$buf1 _1033_ vdd 
+ gnd
+ OAI22X1
X_1275_ _438_ _437_ _436_ vdd gnd NOR2X1
X_2289_ i_rst_n_bF$buf0 \u_cpu.state.ibus_cyc\ _567_ vdd gnd NAND2X1
X_2501_ _820_ i_clk_sys_ext_bF$buf12 \u_rf_if.pending_read\ vdd gnd DFFPOSX1
X_2098_ \u_cpu.bufreg.data\[31] _153_ vdd gnd INVX1
X_1789_ _968_ _1089_ _1091_ _735_ vdd gnd OAI21X1
X_1369_ _344_ _348_ _343_ vdd gnd NOR2X1
X_2310_ _647_ i_clk_sys_ext_bF$buf3 \u_cpu.bufreg.data\[11] vdd gnd DFFPOSX1
X_1598_ _927_ _968_ vdd gnd INVX2
X_1178_ \u_rf_if.rtrig1\ _528_ vdd gnd INVX1
X_1810_ _1106_ \u_rf_if.i_stream_rs2_en\ _956_ _1107_ vdd gnd OAI21X1
X_2404_ _591_ i_clk_sys_ext_bF$buf13 \u_cpu.ctrl.o_ibus_adr\[11] vdd gnd DFFPOSX1
X_2213_ _239_ _551__bF$buf5 _241_ vdd gnd NAND2X1
X_1904_ _560_ _21_ _25_ vdd gnd NOR2X1
X_2442_ _737_ i_clk_fast_bF$buf1 \u_rf_if.last_req_key\[8] vdd gnd DFFPOSX1
X_2022_ _104_ _56_ _109_ _669_ vdd gnd AOI21X1
X_1713_ \u_rf_if.issue_idx\[0] _1044_ _1045_ vdd gnd NAND2X1
X_2251_ _261_ _233_ _440__bF$buf3 _590_ vdd gnd MUX2X1
X_1942_ mem_ibus_ack_bF$buf7 _477_ _52_ vdd gnd NOR2X1
X_1522_ _904_ _902_ _905_ vdd gnd OR2X2
X_2307_ _644_ i_clk_sys_ext_bF$buf10 \u_cpu.bufreg.data\[8] vdd gnd DFFPOSX1
X_2480_ _779_ i_clk_sys_ext_bF$buf7 \u_rf_if.read_buf0\[17] vdd gnd DFFPOSX1
X_2060_ \u_cpu.bufreg.data\[20] _135_ vdd gnd INVX1
X_1751_ _1070_ _1069_ _752_ vdd gnd NOR2X1
X_1331_ _383__bF$buf2 _382_ _381_ vdd gnd NOR2X1
X_2536_ _827_ i_clk_sys_ext_bF$buf13 \u_rf_if.read_buf0\[30] vdd gnd DFFPOSX1
X_2116_ _375_ _153_ _167_ vdd gnd NOR2X1
X_1807_ \u_rf_if.rs2_stream_buf\[1] _924_ _1104_ vdd gnd NAND2X1
X_1980_ \u_mem_serial.shift_reg\[27] \u_cpu.immdec.gen_immdec_w_eq_1.imm30_25\[3] mem_ibus_ack_bF$buf6 _80_ vdd gnd MUX2X1
X_1560_ \u_rf_if.issue_idx\[4] _913_ _939_ vdd gnd NOR2X1
X_2345_ _679_ i_clk_sys_ext_bF$buf4 \u_cpu.immdec.gen_immdec_w_eq_1.imm30_25\[0] vdd gnd DFFPOSX1
X_1616_ _383__bF$buf3 _920_ _925_ _982_ vdd gnd OAI21X1
X_2574_ _730_ i_clk_sys_ext_bF$buf12 raddr[6] vdd gnd DFFPOSX1
X_2154_ _194_ _461_ _195_ vdd gnd NOR2X1
X_1845_ _499_ _498_ _1137_ vdd gnd NAND2X1
X_1425_ ren_bF$buf3 \u_rf_if.o_waddr\[0] _290_ _289_ vdd gnd OAI21X1
X_2383_ _709_ i_clk_sys_ext_bF$buf6 \u_cpu.bufreg2.i_op_b_sel\ vdd gnd DFFPOSX1
X_1654_ \u_rf_if.read_buf0\[13] _947__bF$buf3 _1007_ vdd gnd NOR2X1
X_1234_ \u_cpu.bufreg.i_right_shift_op\ _476_ _475_ vdd gnd NAND2X1
X_2439_ _752_ i_clk_sys_ext_bF$buf0 \u_rf_if.o_waddr\[1] vdd gnd DFFPOSX1
X_2019_ rf_read_reg1_to_if[0] \u_cpu.branch_op\ _106_ _107_ vdd gnd OAI21X1
X_2192_ _551__bF$buf4 _225_ _223_ _226_ vdd gnd OAI21X1
X_1883_ _7_ _13_ _552__bF$buf4 _712_ vdd gnd MUX2X1
X_1463_ _300_ _811_ vdd gnd INVX1
X_2248_ _259_ _260_ _440__bF$buf3 _592_ vdd gnd MUX2X1
X_1939_ _512_ _505__bF$buf2 _50_ _693_ vdd gnd OAI21X1
X_1519_ \u_rf_if.rcnt\[0] \u_rf_if.rcnt\[1] _902_ vdd gnd NOR2X1
X_1692_ \u_rf_if.read_buf0\[27] _947__bF$buf1 \u_rf_if.read_buf0\[25] _990__bF$buf1 _1031_ vdd 
+ gnd
+ OAI22X1
X_1272_ rf_wreg0_to_if[1] _439_ vdd gnd INVX1
X_2477_ _733_ i_clk_sys_ext_bF$buf0 raddr[3] vdd gnd DFFPOSX1
X_2057_ _132_ _133_ _413__bF$buf0 _658_ vdd gnd MUX2X1
X_1748_ _890_ _891_ _1068_ _753_ vdd gnd AOI21X1
X_1328_ _498_ _385_ _384_ vdd gnd NAND2X1
X_2286_ _510_ _505__bF$buf4 _275_ _569_ vdd gnd OAI21X1
X_1977_ \u_mem_serial.shift_reg\[28] \u_cpu.immdec.gen_immdec_w_eq_1.imm30_25\[4] mem_ibus_ack_bF$buf6 _78_ vdd gnd MUX2X1
X_1557_ _333_ _811_ _936_ vdd gnd NOR2X1
X_2095_ _468_ _412_ _150_ _151_ vdd gnd OAI21X1
X_1786_ raddr[1] _1043_ _1044_ _1089_ vdd gnd AOI21X1
X_1366_ \u_cpu.ctrl.pc\ \u_cpu.ctrl.pc_plus_4_cy_r_w\ _346_ vdd gnd NOR2X1
X_1595_ _910_ _967_ _821_ vdd gnd NOR2X1
X_1175_ _551__bF$buf5 _531_ _534_ _530_ vdd gnd OAI21X1
X_2189_ _7_ _551__bF$buf0 _223_ vdd gnd NAND2X1
X_2401_ _727_ i_clk_fast_bF$buf5 \u_mem_serial.shift_reg\[29] vdd gnd DFFPOSX1
X_1689_ \u_rf_if.read_buf0\[26] _1029_ vdd gnd INVX1
X_1269_ \u_rf_if.req_seen\ _442_ _441_ vdd gnd NOR2X1
X_2210_ \u_mem_serial.shift_reg\[16] _239_ vdd gnd INVX1
X_1901_ \u_mem_serial.bit_count\[1] _2_ _23_ vdd gnd NAND2X1
X_1498_ _858_ _877_ _885_ _886_ vdd gnd OAI21X1
X_1710_ _969_ _1041_ _1042_ _765_ vdd gnd AOI21X1
X_2304_ _640_ i_clk_sys_ext_bF$buf9 \u_cpu.bufreg.data\[5] vdd gnd DFFPOSX1
X_2533_ _831_ i_clk_sys_ext_bF$buf12 \u_rf_if.rcnt\[1] vdd gnd DFFPOSX1
X_2113_ \u_cpu.bufreg.data\[2] _493_ _165_ _166_ vdd gnd AOI21X1
X_1804_ \u_rf_if.rreg0_latched\[2] _970_ _969_ _1102_ vdd gnd NAND3X1
X_2342_ _676_ i_clk_sys_ext_bF$buf4 rf_read_reg1_to_if[1] vdd gnd DFFPOSX1
X_1613_ \u_rf_if.stream_cnt\[1] _978_ _979_ _815_ vdd gnd AOI21X1
X_2571_ _578_ i_clk_sys_ext_bF$buf13 \u_cpu.ctrl.o_ibus_adr\[30] vdd gnd DFFPOSX1
X_2151_ _469_ _466_ \u_cpu.bufreg2.dhi\[5] _193_ vdd gnd OAI21X1
XCLKBUF1_insert30 i_clk_sys_ext i_clk_sys_ext_bF$buf6 vdd gnd CLKBUF1
XCLKBUF1_insert31 i_clk_sys_ext i_clk_sys_ext_bF$buf5 vdd gnd CLKBUF1
XCLKBUF1_insert32 i_clk_sys_ext i_clk_sys_ext_bF$buf4 vdd gnd CLKBUF1
XCLKBUF1_insert33 i_clk_sys_ext i_clk_sys_ext_bF$buf3 vdd gnd CLKBUF1
XCLKBUF1_insert34 i_clk_sys_ext i_clk_sys_ext_bF$buf2 vdd gnd CLKBUF1
XCLKBUF1_insert35 i_clk_sys_ext i_clk_sys_ext_bF$buf1 vdd gnd CLKBUF1
XCLKBUF1_insert36 i_clk_sys_ext i_clk_sys_ext_bF$buf0 vdd gnd CLKBUF1
X_1842_ \u_mem_serial.shift_reg\[28] _505__bF$buf1 _1135_ vdd gnd NOR2X1
X_1422_ \u_rf_if.last_req_key\[4] _293_ _292_ vdd gnd NOR2X1
X_2207_ _552__bF$buf2 _236_ _237_ _610_ vdd gnd OAI21X1
X_2380_ \u_mem_serial.bit_count\[0] _542_ vdd gnd INVX1
X_1651_ \u_rf_if.read_buf0\[12] _947__bF$buf4 _1005_ vdd gnd NOR2X1
X_1231_ \u_cpu.state.cnt_r\[3] _479_ _478_ vdd gnd NOR2X1
X_2436_ _830_ i_clk_sys_ext_bF$buf10 \u_rf_if.rreg1_latched\[3] vdd gnd DFFPOSX1
X_2016_ rf_read_reg0_to_if[4] _104_ vdd gnd INVX1
X_1707_ _943_ _942_ _1040_ vdd gnd NOR2X1
X_1880_ \u_cpu.ctrl.o_ibus_adr\[7] _11_ vdd gnd INVX1
X_1460_ ren_bF$buf3 _807_ _808_ vdd gnd NAND2X1
X_2245_ \u_cpu.ctrl.o_ibus_adr\[13] _259_ vdd gnd INVX1
X_1936_ \u_cpu.decode.co_ebreak\ _518_ _49_ vdd gnd NAND2X1
X_1516_ _899_ _862_ _900_ vdd gnd NOR2X1
X_2474_ _776_ i_clk_sys_ext_bF$buf7 \u_rf_if.read_buf0\[20] vdd gnd DFFPOSX1
X_2054_ \u_cpu.bufreg.data\[23] _132_ vdd gnd INVX1
X_1745_ _1066_ _1065_ _1067_ vdd gnd NAND2X1
X_1325_ _419_ _388_ _389_ _387_ vdd gnd NAND3X1
XFILL98550x39750 gnd vdd FILL
X_2283_ \u_cpu.alu.cmp_r\ _476_ _274_ vdd gnd NAND2X1
X_1974_ \u_mem_serial.shift_reg\[29] \u_cpu.immdec.gen_immdec_w_eq_1.imm30_25\[5] mem_ibus_ack_bF$buf6 _76_ vdd gnd MUX2X1
X_1554_ _933_ _922_ _934_ vdd gnd NAND2X1
X_2339_ _673_ i_clk_sys_ext_bF$buf9 rf_wreg0_to_if[2] vdd gnd DFFPOSX1
X_2092_ _533_ _148_ _413__bF$buf4 _637_ vdd gnd MUX2X1
X_1783_ _968_ _1039_ _1087_ vdd gnd NOR2X1
X_1363_ _350_ _411_ _349_ vdd gnd OR2X2
X_2568_ _852_ i_clk_fast_bF$buf5 \u_mem_serial.shift_reg\[12] vdd gnd DFFPOSX1
X_2148_ _470_ _189_ _190_ _623_ vdd gnd OAI21X1
XFILL99150x10950 gnd vdd FILL
X_1839_ _490_ _484_ _962_ _1133_ vdd gnd OAI21X1
X_1419_ ren_bF$buf1 _430_ _295_ vdd gnd NOR2X1
X_1592_ \u_rf_if.prefetch_active\ _964_ _965_ vdd gnd NOR2X1
X_1172_ \u_cpu.bufreg.data\[3] _533_ vdd gnd INVX1
X_2377_ _586_ i_clk_sys_ext_bF$buf4 \u_cpu.ctrl.o_ibus_adr\[6] vdd gnd DFFPOSX1
X_1648_ _1002_ _997_ _1003_ _788_ vdd gnd AOI21X1
X_1228_ _482_ _481_ vdd gnd INVX1
X_2186_ \u_mem_serial.shift_reg\[15] _505__bF$buf3 _221_ vdd gnd NOR2X1
X_1877_ \u_mem_serial.shift_reg\[21] _8_ vdd gnd INVX1
X_1457_ i_clk_fast_bF$buf7 _805_ _1123_ vdd gnd NOR2X1
X_1686_ \u_rf_if.read_buf0\[25] _947__bF$buf2 _1027_ vdd gnd NOR2X1
X_1266_ _444_ _443_ vdd gnd INVX1
X_1495_ _881_ _882_ _858_ _883_ vdd gnd OAI21X1
X_2089_ _1153_ _1112_ _413__bF$buf4 _639_ vdd gnd MUX2X1
X_2301_ \u_mem_serial.bit_count\[6] \u_mem_serial.bit_count\[5] _555_ vdd gnd OR2X2
X_1589_ _915_ \u_rf_if.prefetch_active\ _822_ vdd gnd AND2X2
X_1169_ \u_mem_serial.shift_reg\[18] _536_ vdd gnd INVX1
X_2530_ _617_ i_clk_sys_ext_bF$buf1 \u_cpu.bufreg.i_shamt\[1] vdd gnd DFFPOSX1
X_2110_ _157_ _162_ _163_ vdd gnd OR2X2
X_1801_ \u_rf_if.rreg0_latched\[1] _970_ _969_ _1100_ vdd gnd NAND3X1
X_1398_ _527_ \u_rf_if.last_req_key\[9] _316_ vdd gnd OR2X2
X_1610_ _928_ _924_ _978_ vdd gnd NOR2X1
X_2204_ _505__bF$buf3 _235_ _231_ _611_ vdd gnd AOI21X1
X_2433_ _735_ i_clk_sys_ext_bF$buf5 raddr[1] vdd gnd DFFPOSX1
X_2013_ _91_ _101_ _102_ _671_ vdd gnd OAI21X1
X_1704_ _1037_ _1038_ _767_ vdd gnd NOR2X1
X_2242_ _256_ _257_ _440__bF$buf4 _595_ vdd gnd MUX2X1
X_1933_ _515_ _438_ mem_ibus_ack_bF$buf4 _696_ vdd gnd MUX2X1
X_1513_ _897_ _446_ _833_ vdd gnd AND2X2
X_2471_ \u_rf_if.rtrig0\ i_clk_sys_ext_bF$buf5 \u_rf_if.rtrig1\ vdd gnd DFFPOSX1
X_2051_ _129_ _130_ _413__bF$buf1 _661_ vdd gnd MUX2X1
X_1742_ \u_rf_if.rcnt\[0] _443_ _755_ vdd gnd NOR2X1
X_1322_ _391_ _392_ _390_ vdd gnd NAND2X1
X_2527_ _819_ i_clk_sys_ext_bF$buf5 \u_rf_if.prefetch_active\ vdd gnd DFFPOSX1
X_2107_ _159_ _158_ _160_ vdd gnd OR2X2
X_2280_ _266_ _440__bF$buf3 _272_ _271_ _572_ vdd 
+ gnd
+ OAI22X1
XFILL98550x93750 gnd vdd FILL
X_1971_ \u_cpu.immdec.gen_immdec_w_eq_1.imm30_25\[4] _73_ vdd gnd INVX1
X_1551_ _928_ _930_ \u_rf_if.stream_cnt\[4] _931_ vdd gnd OAI21X1
X_2336_ _670_ i_clk_sys_ext_bF$buf6 \u_cpu.immdec.gen_immdec_w_eq_1.imm31\ vdd gnd DFFPOSX1
X_1607_ _723_ _807_ _976_ vdd gnd AND2X2
X_1780_ _334_ _704__bF$buf0 _1085_ _738_ vdd gnd AOI21X1
X_1360_ _450_ _419_ _352_ vdd gnd NOR2X1
X_2565_ _627_ i_clk_fast_bF$buf0 _1121_ vdd gnd DFFPOSX1
X_2145_ _187_ _188_ vdd gnd INVX1
X_1836_ _1131_ _484_ _620_[2] vdd gnd NOR2X1
X_1416_ _300_ \u_rf_if.last_req_key\[6] _298_ vdd gnd OR2X2
X_2374_ i_clk_sys_ext_bF$buf9 i_clk_fast_bF$buf4 \u_mem_serial.clk_sys_prev\ vdd gnd DFFPOSX1
X_1645_ _1000_ _1001_ _789_ vdd gnd NOR2X1
X_1225_ _492_ _485_ _484_ vdd gnd NOR2X1
X_2183_ \u_mem_serial.shift_reg\[13] _552__bF$buf1 _219_ vdd gnd NAND2X1
X_1874_ \u_mem_serial.state\[1] _5_ _4_ \u_mem_serial.state\[0] _6_ vdd 
+ gnd
+ AOI22X1
X_1454_ _803_ _442_ _1124_ _804_ vdd gnd OAI21X1
X_2239_ \u_cpu.ctrl.o_ibus_adr\[16] _256_ vdd gnd INVX1
X_1683_ _1024_ _997_ _1025_ _775_ vdd gnd AOI21X1
X_1263_ _474_ _447_ _446_ vdd gnd NAND2X1
X_2468_ \u_rf_if.wdata0_next\[0] i_clk_sys_ext_bF$buf0 \u_rf_if.wdata0_r\[0] vdd gnd DFFPOSX1
X_2048_ \u_cpu.bufreg.data\[26] _129_ vdd gnd INVX1
X_1739_ rf_read_reg1_to_if[2] _1063_ vdd gnd INVX1
X_1319_ _408_ _394_ \u_cpu.ctrl.pc\ _393_ vdd gnd OAI21X1
X_1492_ _283_ _524_ _880_ vdd gnd OR2X2
X_2277_ _270_ _1148_ _573_ vdd gnd NOR2X1
X_1968_ _518_ _1151_ _71_ vdd gnd NOR2X1
X_1548_ \u_rf_if.stream_active_bF$buf1\ \u_rf_if.ready_pulse\ _928_ vdd gnd NOR2X1
XFILL99150x7350 gnd vdd FILL
X_2086_ _147_ _10_ _413__bF$buf4 _643_ vdd gnd MUX2X1
XFILL98850x68550 gnd vdd FILL
X_1777_ \u_rf_if.last_req_key\[6] _704__bF$buf0 i_rst_n_bF$buf0 _1084_ vdd gnd OAI21X1
X_1357_ _356_ _358_ _355_ vdd gnd AND2X2
X_1586_ _957_ _961_ _824_ vdd gnd NOR2X1
X_1166_ \u_mem_serial.shift_reg\[7] _551__bF$buf2 _538_ vdd gnd NAND2X1
X_1395_ _322_ _320_ _319_ vdd gnd AND2X2
X_2201_ \u_cpu.ctrl.o_ibus_adr\[10] _233_ vdd gnd INVX1
XFILL99150x18150 gnd vdd FILL
X_1489_ _876_ _875_ _877_ vdd gnd NAND2X1
X_2430_ _603_ i_clk_sys_ext_bF$buf13 \u_cpu.ctrl.o_ibus_adr\[23] vdd gnd DFFPOSX1
X_2010_ _93_ _99_ _100_ _672_ vdd gnd OAI21X1
X_1701_ _1035_ _1036_ _768_ vdd gnd NOR2X1
X_1298_ \u_cpu.bufreg.i_right_shift_op\ _454_ _415_ _414_ vdd gnd OAI21X1
X_1930_ _544_ _564_ _46_ vdd gnd NAND2X1
X_1510_ \u_rf_if.o_waddr\[3] _894_ _895_ vdd gnd NOR2X1
X_2524_ _816_ i_clk_sys_ext_bF$buf11 \u_rf_if.stream_cnt\[0] vdd gnd DFFPOSX1
X_2104_ _472_ _156_ _400_ _157_ vdd gnd NAND3X1
X_2333_ _667_ i_clk_sys_ext_bF$buf4 \u_cpu.immdec.gen_immdec_w_eq_1.imm30_25\[5] vdd gnd DFFPOSX1
X_1604_ \u_rf_if.rreg1_latched\[3] _973_ _972_ raddr[7] _974_ vdd 
+ gnd
+ AOI22X1
X_2562_ _847_ i_clk_fast_bF$buf5 \u_mem_serial.shift_reg\[26] vdd gnd DFFPOSX1
X_2142_ _421_ _469_ _185_ vdd gnd NOR2X1
X_1833_ \u_cpu.bufreg2.i_bytecnt\[0] _488_ _1130_ vdd gnd NOR2X1
X_1413_ ren_bF$buf0 _432_ _301_ vdd gnd NOR2X1
XBUFX2_insert60 _551_ _551__bF$buf4 vdd gnd BUFX2
XBUFX2_insert61 _551_ _551__bF$buf3 vdd gnd BUFX2
XBUFX2_insert62 _551_ _551__bF$buf2 vdd gnd BUFX2
XBUFX2_insert63 _551_ _551__bF$buf1 vdd gnd BUFX2
XBUFX2_insert64 _551_ _551__bF$buf0 vdd gnd BUFX2
XBUFX2_insert65 _413_ _413__bF$buf4 vdd gnd BUFX2
XBUFX2_insert66 _413_ _413__bF$buf3 vdd gnd BUFX2
XBUFX2_insert67 _413_ _413__bF$buf2 vdd gnd BUFX2
XBUFX2_insert68 _413_ _413__bF$buf1 vdd gnd BUFX2
XBUFX2_insert69 _413_ _413__bF$buf0 vdd gnd BUFX2
X_2371_ _583_ i_clk_sys_ext_bF$buf0 \u_cpu.ctrl.o_ibus_adr\[3] vdd gnd DFFPOSX1
X_1642_ \u_rf_if.stream_active_bF$buf2\ _996_ _999_ _790_ vdd gnd AOI21X1
X_1222_ _488_ _487_ vdd gnd INVX1
X_2427_ _602_ i_clk_sys_ext_bF$buf13 \u_cpu.ctrl.o_ibus_adr\[22] vdd gnd DFFPOSX1
X_2007_ _93_ _97_ _98_ _673_ vdd gnd OAI21X1
X_2180_ _211_ \u_cpu.bufreg.i_shamt\[1] _465_ _217_ vdd gnd MUX2X1
X_1871_ \u_mem_serial.state\[1] _1132_ _3_ vdd gnd NOR2X1
X_1451_ _799_ _801_ _839_ vdd gnd NOR2X1
X_2236_ _253_ _254_ _440__bF$buf4 _598_ vdd gnd MUX2X1
X_1927_ _551__bF$buf4 _43_ _40_ _44_ vdd gnd OAI21X1
X_1507_ _890_ _891_ _892_ vdd gnd NOR2X1
X_1680_ _1022_ _1023_ _776_ vdd gnd NOR2X1
X_1260_ _450_ _451_ _449_ vdd gnd NOR2X1
X_2465_ _771_ i_clk_sys_ext_bF$buf7 \u_rf_if.read_buf0\[25] vdd gnd DFFPOSX1
X_2045_ _127_ _126_ _413__bF$buf1 _664_ vdd gnd MUX2X1
X_1736_ rf_read_reg1_to_if[1] _1061_ vdd gnd INVX1
X_1316_ \u_cpu.ctrl.pc_plus_offset_cy_r_w\ _396_ vdd gnd INVX1
X_2274_ _36_ _268_ _269_ _575_ vdd gnd OAI21X1
X_1965_ _68_ _56_ _69_ vdd gnd NOR2X1
X_1545_ _925_ _370_ _926_ vdd gnd NOR2X1
X_2083_ _145_ _146_ _413__bF$buf2 _645_ vdd gnd MUX2X1
X_1774_ _294_ _704__bF$buf3 _1082_ _741_ vdd gnd AOI21X1
X_1354_ _381_ _367_ _358_ vdd gnd NAND2X1
X_2559_ _844_ i_clk_sys_ext_bF$buf0 \u_rf_if.wen0_r\ vdd gnd DFFPOSX1
X_2139_ _491_ _418_ _182_ vdd gnd NOR2X1
X_1583_ \u_rf_if.rs2_stream_buf\[1] _958_ _959_ vdd gnd NAND2X1
X_1163_ \u_mem_serial.shift_reg\[11] _551__bF$buf0 _540_ vdd gnd NAND2X1
X_2368_ _698_ i_clk_fast_bF$buf5 \u_mem_serial.shift_reg\[21] vdd gnd DFFPOSX1
X_1639_ _383__bF$buf1 \u_rf_if.read_buf0\[6] \u_rf_if.read_buf0\[5] _990__bF$buf2 _998_ vdd 
+ gnd
+ OAI22X1
X_1219_ \u_cpu.state.cnt_r\[3] _490_ vdd gnd INVX1
X_1392_ \u_rf_if.last_req_key\[8] _337_ _322_ vdd gnd NAND2X1
X_2177_ _212_ _465_ _188_ _215_ vdd gnd OAI21X1
X_1868_ _1151_ _1_ _552__bF$buf4 _715_ vdd gnd MUX2X1
X_1448_ _724_ _798_ _799_ _800_ vdd gnd AOI21X1

.ends
.end
