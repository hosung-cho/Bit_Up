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
+ o_rf_mosi i_rf_miso o_mem_sync o_mem_sck o_mem_mosi i_mem_miso o_uart_tx i_uart_rx
+ i_gpio[0] i_gpio[1] i_gpio[2] i_gpio[3] i_gpio[4] i_gpio[5] i_gpio[6] i_gpio[7]
+ o_gpio[0] o_gpio[1] o_gpio[2] o_gpio[3] o_gpio[4] o_gpio[5] o_gpio[6] o_gpio[7]
+ o_gpio_oe[0] o_gpio_oe[1] o_gpio_oe[2] o_gpio_oe[3] o_gpio_oe[4] o_gpio_oe[5] o_gpio_oe[6] o_gpio_oe[7]
+ 

X_4552_ ibus_pending_rdt[28] _1926_ vdd gnd INVX1
X_4132_ _1171_ _1159__bF$buf3 _1173_ _1094_ vdd gnd OAI21X1
X_3823_ _659_ _660_ vdd gnd INVX4
X_3403_ \u_rf_if.stream_cnt_0_bF$buf0\ _321_ _320_ _319_ vdd gnd OAI21X1
X_4608_ _1926_ _1959__bF$buf4 _1962_ _1816_ vdd gnd OAI21X1
XFILL_1__3985_ gnd vdd FILL
XFILL_1__3565_ gnd vdd FILL
X_4361_ \u_cpu.ctrl.o_ibus_adr\[23] _1539_ vdd gnd INVX1
XFILL_0__4401_ gnd vdd FILL
XFILL_0_CLKBUF1_insert132 gnd vdd FILL
XFILL_0_CLKBUF1_insert134 gnd vdd FILL
XFILL_0_CLKBUF1_insert136 gnd vdd FILL
XFILL_0_CLKBUF1_insert138 gnd vdd FILL
X_3632_ _149_ \u_cpu.bufreg.i_right_shift_op\ _148_ _150_ vdd gnd AOI21X1
X_3212_ _0_ _2051_ _2108__bF$buf0 _1746_ vdd gnd NAND3X1
X_4417_ \u_cpu.ctrl.o_ibus_adr\[4] _1525__bF$buf0 _1573_ vdd gnd NAND2X1
XFILL_1__3794_ gnd vdd FILL
XFILL_1__4159_ gnd vdd FILL
XFILL_0__2484_ gnd vdd FILL
X_4590_ _1871_ \u_cpu.decode.i_wb_rdt\[24] _1874_ _1951_ vdd gnd NAND3X1
X_4170_ _1129_ _1203_ _1140_ _1204_ vdd gnd NAND3X1
X_2903_ _1693_ _1607_ _611_ _489_ vdd gnd AOI21X1
XFILL_0__3689_ gnd vdd FILL
XFILL_0__4630_ gnd vdd FILL
XFILL_1__2225_ gnd vdd FILL
X_3861_ rreg0[1] _660__bF$buf3 _691_ vdd gnd NAND2X1
X_3441_ _376_ _375_ _374_ _372_ _369_ vdd 
+ gnd
+ OAI22X1
X_3021_ _1608_ _1609_ rst_bF$buf0 _527_ vdd gnd AOI21X1
X_4646_ _1876_ _1959__bF$buf1 _1982_ _1834_ vdd gnd OAI21X1
X_4226_ mem_dbus_ack_bF$buf4 \u_mem_serial.shift_rx\[19] _1167__bF$buf3 _1250_ _1251_ vdd 
+ gnd
+ AOI22X1
XFILL_1_CLKBUF1_insert163 gnd vdd FILL
XFILL_1_CLKBUF1_insert167 gnd vdd FILL
X_2712_ _85_ _159_ _120_ _162_ vdd gnd OAI21X1
XFILL_0__3498_ gnd vdd FILL
XFILL_0__3078_ gnd vdd FILL
X_3917_ _683_ _727_ _728_ _647_ vdd gnd OAI21X1
XFILL_1__3239_ gnd vdd FILL
X_3670_ _173_ \u_cpu.alu.o_cmp\ _174_ vdd gnd AND2X2
X_3250_ _2110__bF$buf4 _1778_ _2055_ _1775_ vdd gnd NAND3X1
X_4455_ _1469_ i_clk_sys_ext_bF$buf5 \u_cpu.ctrl.o_ibus_adr\[28] vdd gnd DFFPOSX1
X_4035_ \u_cpu.bufreg.data\[16] _949_ vdd gnd INVX1
XFILL_0__3710_ gnd vdd FILL
XFILL_0_BUFX2_insert21 gnd vdd FILL
XFILL_0_BUFX2_insert23 gnd vdd FILL
XFILL_0_BUFX2_insert25 gnd vdd FILL
XFILL_0_BUFX2_insert27 gnd vdd FILL
XFILL_0_BUFX2_insert29 gnd vdd FILL
X_2941_ _1668_ _1793_ _743_ vdd gnd NAND2X1
X_2521_ _797_ _832_ vdd gnd INVX1
X_3726_ _381_ _366_ _382_ vdd gnd NAND2X1
X_3306_ _2060_ _2059_ _2058_ vdd gnd AND2X2
XFILL_1__2263_ gnd vdd FILL
XFILL_0__2998_ gnd vdd FILL
X_4684_ rf_read_reg1[3] _1948_ _1872__bF$buf3 _2005_ vdd gnd NAND3X1
X_4264_ _1276_ _1159__bF$buf1 _1278_ _1121_ vdd gnd OAI21X1
X_2750_ \u_rf_if.o_wen\ \u_rf_serial.tx_state\[2] _86_ vdd gnd NAND2X1
X_2330_ \u_mem_serial.shift_rx\[11] _1297__bF$buf3 _1317_ vdd gnd NAND2X1
X_3955_ \u_cpu.bufreg.data\[11] _887__bF$buf3 _896_ vdd gnd NAND2X1
X_3535_ _1107_ i_clk_sys_ext_bF$buf17 \u_cpu.bufreg.i_shamt\[0] vdd gnd DFFPOSX1
X_3115_ \u_rf_if.write_wait\[0] \u_rf_if.write_wait\[1] _1675_ vdd gnd NOR2X1
XFILL_1__3277_ gnd vdd FILL
X_4493_ \u_mem_serial.shift_rx\[16] _1861__bF$buf5 _1887_ vdd gnd NAND2X1
X_4073_ _877_ i_clk_sys_ext_bF$buf26 \u_cpu.bufreg.data\[20] vdd gnd DFFPOSX1
X_2806_ _484_ i_clk_sys_ext_bF$buf7 \u_rf_if.rreg1_latched\[3] vdd gnd DFFPOSX1
XFILL_0__4113_ gnd vdd FILL
X_3764_ \u_cpu.decode.co_mem_word\ \u_cpu.bufreg.i_imm_en\ \u_cpu.bufreg.i_shift_op\ vdd gnd NOR2X1
X_3344_ \u_rf_if.issue_chunk\[3] _17_ vdd gnd INVX1
X_4549_ ibus_pending_rdt[29] _1924_ vdd gnd INVX1
X_4129_ \u_cpu.bufreg2.dlo\[6] _1171_ vdd gnd INVX1
XFILL_1__3086_ gnd vdd FILL
XFILL_0__2196_ gnd vdd FILL
X_2615_ ren_bF$buf4 _102_ _268_ vdd gnd NAND2X1
XFILL_0__4342_ gnd vdd FILL
XBUFX2_insert30 _441_ _441__bF$buf0 vdd gnd BUFX2
XBUFX2_insert31 \u_rf_if.stream_cnt\[0] \u_rf_if.stream_cnt_0_bF$buf5\ vdd gnd BUFX2
XBUFX2_insert32 \u_rf_if.stream_cnt\[0] \u_rf_if.stream_cnt_0_bF$buf4\ vdd gnd BUFX2
XBUFX2_insert33 \u_rf_if.stream_cnt\[0] \u_rf_if.stream_cnt_0_bF$buf3\ vdd gnd BUFX2
XBUFX2_insert34 \u_rf_if.stream_cnt\[0] \u_rf_if.stream_cnt_0_bF$buf2\ vdd gnd BUFX2
XBUFX2_insert35 \u_rf_if.stream_cnt\[0] \u_rf_if.stream_cnt_0_bF$buf1\ vdd gnd BUFX2
XBUFX2_insert36 \u_rf_if.stream_cnt\[0] \u_rf_if.stream_cnt_0_bF$buf0\ vdd gnd BUFX2
XBUFX2_insert37 _887_ _887__bF$buf4 vdd gnd BUFX2
XBUFX2_insert38 _887_ _887__bF$buf3 vdd gnd BUFX2
XBUFX2_insert39 _887_ _887__bF$buf2 vdd gnd BUFX2
XFILL_1__4503_ gnd vdd FILL
X_3993_ \u_cpu.bufreg.i_en_bF$buf2\ \u_cpu.bufreg.data\[29] _921_ vdd gnd NAND2X1
X_3573_ _2079_ _2078_ _2080_ vdd gnd NAND2X1
X_3153_ \u_rf_if.wen0_r\ _1705_ vdd gnd INVX1
X_4358_ _1537_ _1526_ _1533_ _1530_ _1470_ vdd 
+ gnd
+ OAI22X1
X_2844_ _564_ i_clk_sys_ext_bF$buf24 \u_rf_if.wdata1_phase\[1] vdd gnd DFFPOSX1
X_2424_ _1026_ _1030_ _808_ _1031_ vdd gnd AOI21X1
X_3629_ _134_ _136_ _145_ _146_ _147_ vdd 
+ gnd
+ OAI22X1
X_3209_ _1744_ _1745_ rst_bF$buf3 _581_ vdd gnd AOI21X1
XFILL_1__2586_ gnd vdd FILL
X_3382_ _443_ _299_ \u_rf_if.stream_cnt\[3] _298_ vdd gnd OAI21X1
X_4587_ has_fetched_first_insn _1949_ vdd gnd INVX1
X_4167_ mem_dbus_ack_bF$buf0 _1131_ _1167__bF$buf1 _1201_ vdd gnd NOR3X1
XFILL_0__4207_ gnd vdd FILL
X_2653_ _227_ _215__bF$buf2 _230_ _63_ vdd gnd AOI21X1
X_2233_ rst_bF$buf9 _1391_ _769_ vdd gnd NOR2X1
XFILL_0__4380_ gnd vdd FILL
X_3858_ rreg0[2] _660__bF$buf3 _689_ vdd gnd NAND2X1
X_3438_ \u_rf_if.read_buf1\[16] _355_ vdd gnd INVX1
X_3018_ \u_rf_if.issue_sel_bF$buf0\ \u_rf_if.rreg0_latched\[4] _1606_ _1605_ vdd gnd OAI21X1
XFILL_1_BUFX2_insert90 gnd vdd FILL
XFILL_1_BUFX2_insert94 gnd vdd FILL
XFILL_1_BUFX2_insert98 gnd vdd FILL
XFILL_1__4121_ gnd vdd FILL
X_3191_ _1731_ _1732_ rst_bF$buf0 _576_ vdd gnd AOI21X1
X_4396_ \u_cpu.ctrl.o_ibus_adr\[12] _1548_ _1559_ vdd gnd NAND2X1
XFILL_0__3651_ gnd vdd FILL
XFILL_0__3231_ gnd vdd FILL
X_2709_ \u_rf_if.o_waddr\[1] _188_ vdd gnd INVX1
XFILL_0__4016_ gnd vdd FILL
X_2882_ _543_ i_clk_sys_ext_bF$buf33 \u_rf_if.read_buf0\[23] vdd gnd DFFPOSX1
X_2462_ \u_cpu.ctrl.o_ibus_adr\[30] _992_ vdd gnd INVX1
X_3667_ \u_cpu.state.o_cnt\[2] \u_cpu.state.cnt_r\[3] \u_cpu.bufreg2.i_bytecnt\[0] _171_ vdd gnd NAND3X1
X_3247_ _13__bF$buf0 _1774_ \u_rf_if.read_buf1\[21] _1773_ vdd gnd OAI21X1
XFILL_0__3707_ gnd vdd FILL
XFILL_0__3040_ gnd vdd FILL
X_2938_ _20_ _1668_ _741_ vdd gnd NAND2X1
X_2518_ \u_cpu.ctrl.o_ibus_adr\[14] _810_ _835_ vdd gnd NOR2X1
XFILL_1__3201_ gnd vdd FILL
X_2691_ \u_rf_serial.tx_state\[4] _203_ vdd gnd INVX1
X_2271_ _1315__bF$buf3 _1304__bF$buf0 \u_mem_serial.shift_rx\[0] _1364_ vdd gnd OAI21X1
X_3896_ _680_ _713_ _714_ _640_ vdd gnd OAI21X1
X_3476_ _442_ _439_ _438_ _437_ _436_ vdd 
+ gnd
+ OAI22X1
X_3056_ _1631_ _1632_ rst_bF$buf6 _539_ vdd gnd AOI21X1
XFILL_0__2311_ gnd vdd FILL
X_2747_ \u_rf_serial.tx_state\[0] \u_rf_serial.tx_state\[1] \u_rf_serial.tx_state\[2] _89_ vdd gnd OAI21X1
X_2327_ _1316_ _1319_ rst_bF$buf5 _747_ vdd gnd AOI21X1
XFILL_0__4474_ gnd vdd FILL
XFILL_1__2489_ gnd vdd FILL
X_3285_ _2110__bF$buf0 _5__bF$buf2 _1806_ _1805_ vdd gnd NAND3X1
XFILL_0__3325_ gnd vdd FILL
XFILL_1__2701_ gnd vdd FILL
XFILL_1__3906_ gnd vdd FILL
X_2976_ _9_ _1597_ _4_ _1463_ vdd gnd OAI21X1
X_2556_ _795_ _796_ _797_ vdd gnd NAND2X1
X_2136_ gnd o_gpio[2] vdd gnd BUFX2
XFILL_1__2298_ gnd vdd FILL
X_4702_ rf_read_reg0[1] _1948_ _1872__bF$buf2 _2017_ vdd gnd NAND3X1
XFILL_1__4024_ gnd vdd FILL
X_3094_ _1688__bF$buf3 _2050_ \u_rf_if.read_buf0\[28] _1658_ vdd gnd OAI21X1
X_4299_ _1115_ i_clk_sys_ext_bF$buf43 \u_cpu.bufreg2.dlo\[15] vdd gnd DFFPOSX1
XFILL_0__3974_ gnd vdd FILL
XFILL_0__3554_ gnd vdd FILL
XFILL_0__3134_ gnd vdd FILL
XFILL143250x118950 gnd vdd FILL
X_2785_ _595_ i_clk_sys_ext_bF$buf15 \u_rf_if.read_buf1\[27] vdd gnd DFFPOSX1
X_2365_ _1083_ _853_ _1090_ vdd gnd NOR2X1
XFILL_0__4092_ gnd vdd FILL
XFILL_0__2405_ gnd vdd FILL
X_4511_ _1871_ \u_cpu.decode.i_wb_rdt\[18] _1874_ _1899_ vdd gnd NAND3X1
XFILL_0__4568_ gnd vdd FILL
XFILL_0__4148_ gnd vdd FILL
X_2594_ \u_rf_serial.shift_rx\[1] _286_ vdd gnd INVX1
X_2174_ _1430_ _1431_ rst_bF$buf10 _788_ vdd gnd AOI21X1
XFILL_1__4309_ gnd vdd FILL
X_3799_ _360_ i_clk_sys_ext_bF$buf30 \u_cpu.bufreg2.i_op_b_sel\ vdd gnd DFFPOSX1
X_3379_ \u_rf_if.read_buf0\[17] _441__bF$buf1 _440_ _295_ vdd gnd OAI21X1
XFILL_0__2634_ gnd vdd FILL
X_4740_ i_rst_n_bF$buf2 vdd _1834_ i_clk_sys_ext_bF$buf29 ibus_pending_rdt[14] vdd 
+ gnd
+ DFFSR
X_4320_ _1507_ \u_cpu.ctrl.i_utype\ _1508_ _1509_ vdd gnd OAI21X1
XFILL_0__3839_ gnd vdd FILL
XFILL_0__3419_ gnd vdd FILL
XFILL_0__3592_ gnd vdd FILL
XFILL_0__3172_ gnd vdd FILL
XFILL_1__4538_ gnd vdd FILL
X_3188_ _1782_ _5__bF$buf1 _1728_ vdd gnd NOR2X1
XFILL_0__2443_ gnd vdd FILL
XFILL_0__3228_ gnd vdd FILL
X_2879_ _481_ i_clk_sys_ext_bF$buf36 \u_rf_if.stream_cnt\[3] vdd gnd DFFPOSX1
X_2459_ \u_mem_serial.bit_count_0_bF$buf0\ _995_ _994_ _996_ vdd gnd NAND3X1
X_3820_ \u_cpu.alu.i_en\ _657_ vdd gnd INVX1
X_3400_ \u_rf_if.read_buf0\[13] _441__bF$buf1 _440_ _316_ vdd gnd OAI21X1
XFILL_0__4186_ gnd vdd FILL
XFILL_0__2919_ gnd vdd FILL
X_4605_ mem_ibus_ack_bF$buf4 \u_mem_serial.shift_rx\[29] _1960__bF$buf1 _1961_ vdd gnd NAND3X1
XFILL_1__3982_ gnd vdd FILL
XFILL_1__4347_ gnd vdd FILL
XFILL_0__2672_ gnd vdd FILL
XFILL_0__2252_ gnd vdd FILL
XFILL_0__3877_ gnd vdd FILL
XFILL_1__2413_ gnd vdd FILL
X_2688_ ren_bF$buf3 \u_rf_if.o_wen\ \u_rf_serial.launch_pending\ _206_ vdd gnd OAI21X1
X_2268_ _1314_ _1366_ _1303_ _1367_ vdd gnd NAND3X1
XFILL_0__2728_ gnd vdd FILL
X_4414_ \u_cpu.ctrl.o_ibus_adr\[5] _1525__bF$buf0 _1571_ vdd gnd NAND2X1
XFILL_1__4576_ gnd vdd FILL
X_2900_ _27__bF$buf4 \u_rf_if.wdata1_phase\[1] _487_ vdd gnd AND2X2
XFILL_0__3266_ gnd vdd FILL
XFILL_1__3427_ gnd vdd FILL
X_2497_ \u_mem_serial.active_ibus_bF$buf6\ \u_cpu.bufreg.data\[10] _957_ vdd gnd OR2X2
XFILL_0__2957_ gnd vdd FILL
XFILL_0__2537_ gnd vdd FILL
X_4643_ mem_ibus_ack_bF$buf2 \u_mem_serial.shift_rx\[15] _1960__bF$buf4 _1981_ vdd gnd NAND3X1
X_4223_ _1246_ _1159__bF$buf4 _1248_ _1110_ vdd gnd OAI21X1
XFILL_1_CLKBUF1_insert132 gnd vdd FILL
XFILL_0__2290_ gnd vdd FILL
XFILL_1_CLKBUF1_insert136 gnd vdd FILL
X_3914_ _683_ _725_ _726_ _646_ vdd gnd OAI21X1
XFILL_1__2451_ gnd vdd FILL
XFILL_0__2346_ gnd vdd FILL
X_4452_ _1490_ i_clk_sys_ext_bF$buf16 \u_cpu.ctrl.o_ibus_adr\[8] vdd gnd DFFPOSX1
X_4032_ \u_cpu.bufreg.i_init\ _946_ \u_cpu.bufreg.i_en_bF$buf3\ _947_ vdd gnd OAI21X1
XFILL_1__4194_ gnd vdd FILL
X_3723_ \u_cpu.bufreg.i_sh_signed\ _379_ vdd gnd INVX1
X_3303_ _2105_ _2056_ _2055_ vdd gnd NOR2X1
X_4508_ \u_mem_serial.shift_rx\[15] _1861__bF$buf1 _1897_ vdd gnd NAND2X1
XFILL_1__3465_ gnd vdd FILL
X_4681_ ibus_pending_rdt[0] _2003_ vdd gnd INVX1
X_4261_ \u_cpu.bufreg2.dlo\[11] _1276_ vdd gnd INVX1
XFILL_1__2736_ gnd vdd FILL
X_3952_ _888_ _893_ _890_ _894_ vdd gnd NAND3X1
X_3532_ _363_ i_clk_sys_ext_bF$buf30 \u_cpu.branch_op\ vdd gnd DFFPOSX1
X_3112_ _1677_ _1673_ _1672_ vdd gnd NAND2X1
X_4737_ i_rst_n_bF$buf4 vdd _1837_ i_clk_sys_ext_bF$buf28 ibus_pending_rdt[11] vdd 
+ gnd
+ DFFSR
X_4317_ \u_cpu.ctrl.i_pc_en\ _1506_ vdd gnd INVX2
XFILL_0__2384_ gnd vdd FILL
X_4490_ ibus_pending_rdt[3] \u_mem_serial.shift_rx\[3] ibus_pending_ack_bF$buf0 _1885_ vdd gnd MUX2X1
X_4070_ _880_ i_clk_sys_ext_bF$buf8 \u_cpu.bufreg.data\[17] vdd gnd DFFPOSX1
X_2803_ _586_ i_clk_sys_ext_bF$buf10 \u_rf_if.read_buf1\[18] vdd gnd DFFPOSX1
XFILL_0__4530_ gnd vdd FILL
XFILL_1__2125_ gnd vdd FILL
X_3761_ \u_cpu.cond_branch\ _381_ _398_ vdd gnd NAND2X1
X_3341_ _19_ _18_ _15_ _14_ vdd gnd NAND3X1
X_4546_ \u_mem_serial.shift_rx\[30] _1922_ vdd gnd INVX1
X_4126_ mem_dbus_ack_bF$buf5 _1168_ _1169_ vdd gnd NOR2X1
X_2612_ \u_rf_serial.last_req_key\[7] _270_ _103_ _271_ vdd gnd NAND3X1
XFILL_0__3398_ gnd vdd FILL
X_3817_ \u_cpu.csr_imm_en\ _649_ \u_cpu.branch_op\ _654_ vdd gnd OAI21X1
XFILL_1__3139_ gnd vdd FILL
X_3990_ \u_cpu.bufreg.i_en_bF$buf3\ \u_cpu.bufreg.data\[31] _919_ vdd gnd NAND2X1
X_3570_ _2068_ _2077_ vdd gnd INVX1
X_3150_ gnd _479__bF$buf2 _27__bF$buf4 _1703_ vdd gnd OAI21X1
XFILL_0__2669_ gnd vdd FILL
X_4355_ \u_cpu.ctrl.o_ibus_adr\[29] _1536_ vdd gnd INVX1
XFILL_0__3610_ gnd vdd FILL
X_2841_ _520_ i_clk_sys_ext_bF$buf10 \u_rf_if.read_buf0\[5] vdd gnd DFFPOSX1
X_2421_ \u_mem_serial.active_ibus_bF$buf4\ _1032_ _1033_ _1034_ vdd gnd OAI21X1
X_3626_ mem_dbus_ack_bF$buf3 _144_ vdd gnd INVX1
X_3206_ _1742_ _1743_ rst_bF$buf3 _580_ vdd gnd AOI21X1
XFILL_0__2898_ gnd vdd FILL
XFILL_0__2478_ gnd vdd FILL
X_4584_ _1861__bF$buf3 _1946_ _1947_ \u_cpu.decode.i_wb_rdt\[7] vdd gnd OAI21X1
X_4164_ mem_dbus_ack_bF$buf3 _1197_ _1198_ _1199_ vdd gnd OAI21X1
XFILL_0__4624_ gnd vdd FILL
X_2650_ \u_rf_serial.launch_pending\ _232_ _205_ _233_ vdd gnd NOR3X1
X_2230_ _1376_ _809_ _1308_ _1393_ vdd gnd OAI21X1
X_3855_ rreg0[3] _660__bF$buf1 _687_ vdd gnd NAND2X1
X_3435_ \u_rf_if.read_buf1\[18] _350_ vdd gnd INVX1
X_3015_ _1688__bF$buf4 _1735_ \u_rf_if.read_buf0\[8] _1603_ vdd gnd OAI21X1
XFILL_1_BUFX2_insert60 gnd vdd FILL
XFILL_1_BUFX2_insert63 gnd vdd FILL
XFILL_1_BUFX2_insert67 gnd vdd FILL
X_4393_ \u_cpu.ctrl.o_ibus_adr\[13] _1548_ _1557_ vdd gnd NAND2X1
X_2706_ _78_ _190_ _191_ vdd gnd NAND2X1
X_3664_ _156_ \u_cpu.state.cnt_r\[0] _124_ vdd gnd AND2X2
X_3244_ _1771_ _1773_ rst_bF$buf6 _589_ vdd gnd AOI21X1
X_4449_ _1481_ i_clk_sys_ext_bF$buf11 \u_cpu.ctrl.o_ibus_adr\[17] vdd gnd DFFPOSX1
X_4029_ \u_cpu.bufreg.data\[17] _887__bF$buf3 _945_ vdd gnd NAND2X1
XFILL_0__3704_ gnd vdd FILL
X_2935_ rf_read_reg0_to_if[3] _1693_ _27__bF$buf1 _739_ vdd gnd OAI21X1
X_2515_ \u_cpu.ctrl.o_ibus_adr\[15] _810_ _798_ _838_ vdd gnd OAI21X1
XFILL_0__4662_ gnd vdd FILL
XFILL_0__4242_ gnd vdd FILL
X_3893_ _678_ _711_ _712_ _639_ vdd gnd OAI21X1
X_3473_ \u_rf_if.read_buf1\[9] _441__bF$buf2 _440_ _433_ vdd gnd OAI21X1
X_3053_ _1629_ _1630_ rst_bF$buf4 _538_ vdd gnd AOI21X1
X_4678_ _2000_ _1959__bF$buf3 _2001_ _1847_ vdd gnd OAI21X1
X_4258_ mem_dbus_ack_bF$buf3 _1270_ _1274_ vdd gnd NOR2X1
XFILL_0__3513_ gnd vdd FILL
XFILL_0__4718_ gnd vdd FILL
X_2744_ \u_rf_if.o_waddr\[6] _91_ _92_ vdd gnd NAND2X1
X_2324_ _1321_ _1322_ vdd gnd INVX1
XFILL_0__4471_ gnd vdd FILL
X_3949_ \u_cpu.bufreg.c_r\ _891_ vdd gnd INVX1
X_3529_ _2115_ i_clk_sys_ext_bF$buf30 \u_cpu.alu.add_cy_r\ vdd gnd DFFPOSX1
X_3109_ _1670_ _27__bF$buf4 _555_ vdd gnd AND2X2
XFILL_1__2486_ gnd vdd FILL
X_3282_ _2048_ _1804_ _1803_ vdd gnd NOR2X1
X_4487_ ibus_pending_rdt[2] _1883_ vdd gnd INVX1
X_4067_ _883_ i_clk_sys_ext_bF$buf8 \u_cpu.bufreg.data\[15] vdd gnd DFFPOSX1
XFILL_0__3742_ gnd vdd FILL
XFILL142650x36150 gnd vdd FILL
X_2973_ \u_rf_if.rreg1_latched\[3] _1461_ vdd gnd INVX1
X_2553_ \u_mem_serial.bit_count\[2] _800_ vdd gnd INVX1
X_2133_ gnd o_gpio[5] vdd gnd BUFX2
X_3758_ \u_cpu.decode.opcode\[0] _381_ \u_cpu.decode.co_immdec_ctrl\[2] vdd gnd NOR2X1
X_3338_ \u_rf_if.issue_chunk\[0] _11_ vdd gnd INVX1
X_3091_ _1688__bF$buf2 _1802_ \u_rf_if.read_buf0\[27] _1656_ vdd gnd OAI21X1
X_4296_ _1118_ i_clk_sys_ext_bF$buf44 \u_cpu.bufreg2.dlo\[14] vdd gnd DFFPOSX1
X_2609_ _197_ \u_rf_serial.last_req_key\[0] _274_ vdd gnd OR2X2
XFILL_0__4336_ gnd vdd FILL
X_2782_ _493_ i_clk_sys_ext_bF$buf0 \u_rf_if.write_wait\[1] vdd gnd DFFPOSX1
X_2362_ _845_ _1091_ _1092_ _840_ _1287_ vdd 
+ gnd
+ AOI22X1
X_3987_ \u_cpu.bufreg.data\[30] _917_ vdd gnd INVX1
X_3567_ \u_cpu.alu.i_op_b\ _2073_ _2074_ vdd gnd NAND2X1
X_3147_ _1702_ _1701_ vdd gnd INVX1
XFILL_0__3360_ gnd vdd FILL
X_2838_ _567_ i_clk_sys_ext_bF$buf6 \u_rf_if.read_buf1\[2] vdd gnd DFFPOSX1
X_2418_ \u_mem_serial.active_ibus_bF$buf4\ \u_cpu.ctrl.o_ibus_adr\[21] _1037_ vdd gnd NAND2X1
XFILL_0__4565_ gnd vdd FILL
XFILL_1__3101_ gnd vdd FILL
X_2591_ _286_ _287_ _288_ _67_ vdd gnd AOI21X1
X_2171_ _1432_ _1433_ rst_bF$buf10 _789_ vdd gnd AOI21X1
X_3796_ rf_rreq_bF$buf6 \u_cpu.cond_branch\ _413_ _365_ vdd gnd OAI21X1
X_3376_ _296_ _295_ _51_ _50_ _49_ vdd 
+ gnd
+ OAI22X1
X_2647_ _234_ _235_ _236_ vdd gnd NAND2X1
X_2227_ _1314_ \u_mem_serial.bit_count_0_bF$buf3\ _1394_ _772_ vdd gnd AOI21X1
XFILL_0__4374_ gnd vdd FILL
X_3185_ _34_ _1726_ vdd gnd INVX1
XFILL_0__2440_ gnd vdd FILL
XFILL_0__3645_ gnd vdd FILL
XFILL_1__2601_ gnd vdd FILL
X_2876_ _546_ i_clk_sys_ext_bF$buf38 \u_rf_if.read_buf0\[25] vdd gnd DFFPOSX1
X_2456_ \u_mem_serial.active_ibus_bF$buf2\ _998_ _999_ vdd gnd NAND2X1
XFILL_1__2198_ gnd vdd FILL
X_4602_ ibus_pending_ack_bF$buf3 mem_ibus_ack_bF$buf4 _1958_ vdd gnd NAND2X1
XFILL_1__4344_ gnd vdd FILL
X_4199_ _1201_ _1228_ _1229_ _1105_ vdd gnd OAI21X1
XFILL_0__3454_ gnd vdd FILL
XFILL_0__3034_ gnd vdd FILL
X_2685_ _90_ _208_ _53_ vdd gnd NOR2X1
X_2265_ _1297__bF$buf2 _1368_ _1369_ vdd gnd NAND2X1
XFILL_0__2305_ gnd vdd FILL
X_4411_ _1548_ \u_cpu.ctrl.o_ibus_adr\[7] _1506_ _1569_ vdd gnd AOI21X1
XFILL_0__3683_ gnd vdd FILL
XFILL_1__3844_ gnd vdd FILL
X_2494_ \u_cpu.ctrl.o_ibus_adr\[11] _960_ vdd gnd INVX1
XFILL_1__4209_ gnd vdd FILL
X_3699_ _130_ i_clk_sys_ext_bF$buf3 \u_cpu.bufreg2.i_bytecnt\[1] vdd gnd DFFPOSX1
X_3279_ _2057_ rdata[1] _1800_ vdd gnd AND2X2
X_4640_ _1860_ _1959__bF$buf3 _1979_ _1831_ vdd gnd OAI21X1
X_4220_ \u_cpu.bufreg2.dlo\[20] _1246_ vdd gnd INVX1
XFILL143250x104550 gnd vdd FILL
XFILL_1__4382_ gnd vdd FILL
XFILL_0__3492_ gnd vdd FILL
XFILL_0__3072_ gnd vdd FILL
X_3911_ _683_ _723_ _724_ _645_ vdd gnd OAI21X1
XFILL_0__4697_ gnd vdd FILL
X_3088_ \u_rf_if.issue_idx\[5] \u_rf_if.prefetch_active\ _1654_ vdd gnd NAND2X1
XFILL_0__2763_ gnd vdd FILL
XFILL_0__3968_ gnd vdd FILL
XFILL_0__3548_ gnd vdd FILL
XFILL_0__3128_ gnd vdd FILL
X_2779_ _598_ i_clk_sys_ext_bF$buf38 \u_rf_if.read_buf1\[30] vdd gnd DFFPOSX1
X_2359_ _1288_ _796_ _1048_ _1289_ _1290_ vdd 
+ gnd
+ AOI22X1
X_3720_ \u_cpu.bufreg.i_right_shift_op\ \u_cpu.decode.co_mem_word\ \u_cpu.alu.i_cmp_eq\ vdd gnd NOR2X1
X_3300_ \u_rf_if.issue_sel_bF$buf3\ \u_rf_if.issue_chunk\[0] \u_rf_if.issue_chunk\[1] _2053_ vdd gnd OAI21X1
XFILL_0__4086_ gnd vdd FILL
X_4505_ ibus_pending_ack_bF$buf0 ibus_pending_rdt[4] _1895_ vdd gnd NAND2X1
XFILL_1__4247_ gnd vdd FILL
XFILL_0__2992_ gnd vdd FILL
XFILL_1__2313_ gnd vdd FILL
X_2588_ _215__bF$buf0 _290_ rst_bF$buf1 _68_ vdd gnd AOI21X1
X_2168_ _1434_ _1435_ rst_bF$buf10 _790_ vdd gnd AOI21X1
XFILL_0__2628_ gnd vdd FILL
XFILL_0__2208_ gnd vdd FILL
X_4734_ i_rst_n_bF$buf4 vdd _1840_ i_clk_sys_ext_bF$buf4 ibus_pending_rdt[8] vdd 
+ gnd
+ DFFSR
X_4314_ \u_cpu.alu.i_buf\ _1501_ _1502_ \u_cpu.cnt12to31\ _1503_ vdd 
+ gnd
+ AOI22X1
XFILL_1__4476_ gnd vdd FILL
X_2800_ _530_ i_clk_sys_ext_bF$buf20 \u_rf_if.read_buf0\[12] vdd gnd DFFPOSX1
XFILL_0__3586_ gnd vdd FILL
XFILL_0__3166_ gnd vdd FILL
XFILL_1__3327_ gnd vdd FILL
X_2397_ _966_ _1056_ _1057_ _1058_ vdd gnd NAND3X1
X_4543_ rf_read_reg1[2] _1920_ vdd gnd INVX1
X_4123_ \u_cpu.bufreg.i_init\ _1164_ _1165_ _1166_ vdd gnd NAND3X1
XFILL_0__2190_ gnd vdd FILL
X_3814_ rf_rreq_bF$buf4 \u_cpu.decode.i_wb_rdt\[31] _652_ vdd gnd NAND2X1
XFILL_1__2351_ gnd vdd FILL
XFILL_0__2246_ gnd vdd FILL
X_4352_ \u_cpu.ctrl.o_ibus_adr\[27] _1534_ vdd gnd INVX1
XFILL_1__4094_ gnd vdd FILL
X_3623_ _134_ \u_cpu.decode.co_rd_op\ \u_cpu.rd_en\ vdd gnd AND2X2
X_3203_ _5__bF$buf0 _1799_ _1739_ vdd gnd NOR2X1
XFILL_1__2160_ gnd vdd FILL
X_4408_ \u_cpu.ctrl.o_ibus_adr\[8] _1548_ _1567_ vdd gnd NAND2X1
X_4581_ _1861__bF$buf4 _1944_ _1945_ \u_cpu.decode.i_wb_rdt\[8] vdd gnd OAI21X1
X_4161_ _1125_ _1128_ _1193_ _1196_ vdd gnd OAI21X1
XFILL_0__4201_ gnd vdd FILL
XFILL_1__2636_ gnd vdd FILL
X_3852_ \u_cpu.immdec.gen_immdec_w_eq_1.imm11_7\[4] _683_ _685_ vdd gnd NAND2X1
X_3432_ _348_ _351_ \u_rf_if.stream_cnt_1_bF$buf3\ _347_ vdd gnd MUX2X1
X_3012_ _1688__bF$buf0 _1730_ \u_rf_if.read_buf0\[7] _1601_ vdd gnd OAI21X1
XFILL_1_BUFX2_insert33 gnd vdd FILL
XFILL_1_BUFX2_insert37 gnd vdd FILL
X_4637_ mem_ibus_ack_bF$buf1 \u_mem_serial.shift_rx\[18] _1960__bF$buf0 _1978_ vdd gnd NAND3X1
X_4217_ mem_dbus_ack_bF$buf6 _1239_ _1244_ vdd gnd NOR2X1
XFILL_1__3174_ gnd vdd FILL
XFILL_0__2284_ gnd vdd FILL
X_4390_ \u_cpu.ctrl.o_ibus_adr\[14] _1548_ _1555_ vdd gnd NAND2X1
X_2703_ _192_ _85_ _193_ _194_ vdd gnd OAI21X1
XFILL_0__4010_ gnd vdd FILL
X_3908_ _683_ _721_ _722_ _644_ vdd gnd OAI21X1
X_3661_ \u_cpu.bufreg.i_init\ _139_ \u_cpu.ctrl.i_pc_en\ vdd gnd NOR2X1
X_3241_ _2110__bF$buf4 _5__bF$buf3 _1769_ _1768_ vdd gnd NAND3X1
X_4446_ _1473_ i_clk_sys_ext_bF$buf11 \u_cpu.ctrl.o_ibus_adr\[22] vdd gnd DFFPOSX1
X_4026_ \u_cpu.bufreg.data\[18] _943_ vdd gnd INVX1
X_2932_ rf_read_reg0_to_if[2] _1693_ _27__bF$buf1 _737_ vdd gnd OAI21X1
X_2512_ \u_cpu.bufreg.data\[12] _841_ vdd gnd INVX1
XFILL_0__3298_ gnd vdd FILL
X_3717_ _778_ i_clk_fast_bF$buf4 \u_mem_serial.active_we\ vdd gnd DFFPOSX1
XFILL_1__2674_ gnd vdd FILL
XFILL_1__3879_ gnd vdd FILL
X_3890_ _678_ _709_ _710_ _638_ vdd gnd OAI21X1
X_3470_ _434_ _433_ _432_ _431_ _430_ vdd 
+ gnd
+ OAI22X1
X_3050_ _1627_ _1628_ rst_bF$buf4 _537_ vdd gnd AOI21X1
X_4675_ _1883_ _1959__bF$buf2 _1999_ _1846_ vdd gnd OAI21X1
X_4255_ mem_dbus_ack_bF$buf3 \u_mem_serial.shift_rx\[13] _1167__bF$buf1 _1271_ _1272_ vdd 
+ gnd
+ AOI22X1
X_2741_ _94_ _90_ _95_ vdd gnd NAND2X1
X_2321_ _1315__bF$buf4 _1304__bF$buf2 \u_mem_serial.shift_rx\[10] _1324_ vdd gnd OAI21X1
X_3946_ \u_cpu.bufreg.c_r\ \u_cpu.bufreg.i_rs1_en\ rdata0[0] _888_ vdd gnd NAND3X1
X_3526_ _479__bF$buf1 _478_ vdd gnd INVX1
X_3106_ _1668_ _1667_ vdd gnd INVX2
XFILL_0__2378_ gnd vdd FILL
X_4484_ _1881_ \u_cpu.decode.i_wb_rdt\[13] vdd gnd INVX1
X_4064_ _885_ i_clk_sys_ext_bF$buf5 \u_cpu.bufreg.data\[13] vdd gnd DFFPOSX1
XFILL_0__4524_ gnd vdd FILL
XFILL_0__4104_ gnd vdd FILL
XFILL_1__2959_ gnd vdd FILL
XFILL_1__2539_ gnd vdd FILL
X_2970_ raddr[7] _1668_ _27__bF$buf1 _1458_ vdd gnd OAI21X1
X_2550_ _802_ _797_ _803_ vdd gnd AND2X2
X_2130_ vdd o_uart_tx vdd gnd BUFX2
X_3755_ \u_cpu.decode.opcode\[0] \u_cpu.bufreg.i_imm_en\ _396_ \u_cpu.decode.co_immdec_en\[3] vdd gnd NAND3X1
X_3335_ _9_ _10_ _8_ vdd gnd NAND2X1
XFILL_0__2187_ gnd vdd FILL
X_4293_ _1121_ i_clk_sys_ext_bF$buf43 \u_cpu.bufreg2.dlo\[11] vdd gnd DFFPOSX1
X_2606_ _217_ _93_ _92_ _277_ vdd gnd NAND3X1
XFILL_1__2348_ gnd vdd FILL
X_3984_ \u_cpu.bufreg.i_en_bF$buf3\ \u_cpu.bufreg.i_init\ _914_ _915_ vdd gnd OAI21X1
X_3564_ \u_cpu.alu.i_op_b\ _2071_ vdd gnd INVX1
X_3144_ \u_rf_if.o_waddr\[3] _1699_ _1698_ vdd gnd NAND2X1
X_4769_ i_rst_n_bF$buf1 vdd _1851_ i_clk_sys_ext_bF$buf18 rf_read_reg1[2] vdd 
+ gnd
+ DFFSR
X_4349_ \u_cpu.ctrl.pc\ _1525__bF$buf0 _1532_ vdd gnd NAND2X1
X_2835_ _522_ i_clk_sys_ext_bF$buf41 ren vdd gnd DFFPOSX1
X_2415_ _805_ _1035_ _1039_ _1040_ vdd gnd NAND3X1
XFILL_0__4142_ gnd vdd FILL
X_3793_ rf_rreq_bF$buf2 \u_cpu.decode.i_wb_rdt\[30] _412_ vdd gnd NAND2X1
X_3373_ \u_rf_if.read_buf0\[21] _441__bF$buf3 _440_ _46_ vdd gnd OAI21X1
X_4578_ _1861__bF$buf4 _1942_ _1943_ \u_cpu.decode.i_wb_rdt\[9] vdd gnd OAI21X1
X_4158_ \u_cpu.bufreg2.dlo\[0] _1193_ _1194_ vdd gnd NAND2X1
XFILL_0__3833_ gnd vdd FILL
XFILL_0__3413_ gnd vdd FILL
XFILL_0__4618_ gnd vdd FILL
X_2644_ _238_ \u_rf_serial.last_req_key\[10] _239_ vdd gnd OR2X2
X_2224_ _1395_ _1396_ rst_bF$buf8 _773_ vdd gnd AOI21X1
XFILL_0__4371_ gnd vdd FILL
X_3849_ _680_ _681_ _682_ _625_ vdd gnd OAI21X1
X_3429_ \u_rf_if.read_buf1\[23] _441__bF$buf3 _344_ vdd gnd NOR2X1
X_3009_ _1688__bF$buf0 _1730_ \u_rf_if.read_buf0\[6] _1599_ vdd gnd OAI21X1
XFILL_1__2386_ gnd vdd FILL
X_3182_ \u_rf_if.stream_active\ _38_ _1724_ _1723_ vdd gnd OAI21X1
X_4387_ \u_cpu.ctrl.o_ibus_adr\[15] _1548_ _1553_ vdd gnd NAND2X1
XFILL_1_BUFX2_insert2 gnd vdd FILL
XFILL_1_BUFX2_insert6 gnd vdd FILL
XFILL_0__3222_ gnd vdd FILL
XFILL142950x10950 gnd vdd FILL
X_2873_ _513_ i_clk_sys_ext_bF$buf35 \u_rf_if.issue_chunk\[3] vdd gnd DFFPOSX1
X_2453_ \u_cpu.ctrl.o_ibus_adr\[28] \u_cpu.bufreg.data\[28] \u_mem_serial.active_ibus_bF$buf0\ _1002_ vdd gnd MUX2X1
XFILL_0__4180_ gnd vdd FILL
X_3658_ _167_ \u_cpu.bufreg.i_cnt1\ vdd gnd INVX1
X_3238_ _1767_ _1766_ vdd gnd INVX1
XFILL_0__2913_ gnd vdd FILL
X_4196_ _1149_ _1226_ _1225_ _1227_ vdd gnd NAND3X1
XFILL_0__3871_ gnd vdd FILL
X_2929_ rf_read_reg0_to_if[1] _1693_ _27__bF$buf3 _735_ vdd gnd OAI21X1
X_2509_ _843_ _840_ _844_ vdd gnd NAND2X1
XFILL_0__4236_ gnd vdd FILL
XFILL_1__3612_ gnd vdd FILL
X_2682_ _105_ _210_ _211_ vdd gnd NAND2X1
X_2262_ _1370_ _1371_ _1372_ vdd gnd NOR2X1
X_3887_ _678_ _707_ _708_ _637_ vdd gnd OAI21X1
X_3467_ _428_ \u_rf_if.stream_cnt_0_bF$buf3\ \u_rf_if.stream_cnt_1_bF$buf0\ _427_ vdd gnd AOI21X1
X_3047_ _1625_ _1626_ rst_bF$buf7 _536_ vdd gnd AOI21X1
XFILL_0__2722_ gnd vdd FILL
XFILL_0__2302_ gnd vdd FILL
XFILL_0__3507_ gnd vdd FILL
XFILL_0__3680_ gnd vdd FILL
XFILL_0__3260_ gnd vdd FILL
X_2738_ \u_rf_serial.tx_state\[0] \u_rf_serial.tx_state\[1] _98_ vdd gnd AND2X2
X_2318_ _1314_ _1326_ _1303_ _1327_ vdd gnd NAND3X1
XFILL_0__4465_ gnd vdd FILL
XFILL_0__4045_ gnd vdd FILL
XFILL_1__3841_ gnd vdd FILL
XFILL_1__3001_ gnd vdd FILL
X_2491_ _958_ _962_ _808_ _963_ vdd gnd AOI21X1
XFILL_1__4626_ gnd vdd FILL
X_3696_ _125_ i_clk_sys_ext_bF$buf3 \u_cpu.ctrl.i_jump\ vdd gnd DFFPOSX1
X_3276_ _2110__bF$buf3 _1800__bF$buf2 _1798_ _1797_ vdd gnd NAND3X1
XFILL_0__3316_ gnd vdd FILL
X_2967_ \u_rf_if.rreg0_latched\[2] \u_rf_if.issue_sel_bF$buf1\ _1457_ _1456_ vdd gnd OAI21X1
X_2547_ \u_mem_serial.bit_count\[1] _798_ _806_ vdd gnd NAND2X1
X_2127_ _2119_ o_mem_sync vdd gnd BUFX2
XFILL_0__4274_ gnd vdd FILL
X_3085_ _1800__bF$buf3 _1686__bF$buf3 _2106_ _1652_ vdd gnd NAND3X1
XFILL_0__2340_ gnd vdd FILL
XFILL_1__2921_ gnd vdd FILL
XFILL_1__2501_ gnd vdd FILL
X_2776_ _536_ i_clk_sys_ext_bF$buf22 \u_rf_if.read_buf0\[17] vdd gnd DFFPOSX1
X_2356_ _1292_ _1007_ _1293_ vdd gnd NOR2X1
XFILL_0__4083_ gnd vdd FILL
X_4502_ \u_mem_serial.shift_rx\[18] _1861__bF$buf4 _1893_ vdd gnd NAND2X1
XFILL_1__4664_ gnd vdd FILL
XFILL_1__4244_ gnd vdd FILL
X_4099_ _1141_ _1143_ \u_cpu.state.i_ctrl_misalign\ _1144_ vdd gnd OAI21X1
XFILL_0__3354_ gnd vdd FILL
XFILL_0__4559_ gnd vdd FILL
XFILL_1__3515_ gnd vdd FILL
X_2585_ _291_ _215__bF$buf0 _292_ _69_ vdd gnd AOI21X1
X_2165_ _1436_ _1437_ rst_bF$buf5 _791_ vdd gnd AOI21X1
X_4731_ i_rst_n_bF$buf2 vdd _1843_ i_clk_sys_ext_bF$buf1 ibus_pending_rdt[5] vdd 
+ gnd
+ DFFSR
X_4311_ _1496_ _1499_ _1500_ vdd gnd NAND2X1
XFILL_1__3744_ gnd vdd FILL
X_2394_ _805_ _1060_ _1059_ _1061_ vdd gnd NAND3X1
XFILL_1__4109_ gnd vdd FILL
X_3599_ _2102_ _2092_ _2103_ _2115_ vdd gnd OAI21X1
X_3179_ _2110__bF$buf1 _1728_ _2055_ _1721_ vdd gnd NAND3X1
XFILL_0__2434_ gnd vdd FILL
X_4540_ rf_read_reg1[3] _1918_ vdd gnd INVX1
X_4120_ _1161_ _1160_ _1162_ _1163_ vdd gnd OAI21X1
XFILL_0__3639_ gnd vdd FILL
XFILL_0__3392_ gnd vdd FILL
X_3811_ \u_cpu.csr_imm_en\ _649_ _650_ vdd gnd NOR2X1
XFILL_0__4597_ gnd vdd FILL
XFILL143250x10950 gnd vdd FILL
XFILL_0__2663_ gnd vdd FILL
XFILL_0__3448_ gnd vdd FILL
XFILL_0__3028_ gnd vdd FILL
X_2679_ _78_ _98_ _205_ _213_ vdd gnd OAI21X1
X_2259_ \u_mem_serial.bit_count\[6] _1314_ _1308_ _1374_ vdd gnd OAI21X1
X_3620_ \u_cpu.state.init_done\ \u_cpu.bufreg.i_shift_op\ _141_ vdd gnd AND2X2
X_3200_ _13__bF$buf3 _1741_ \u_rf_if.read_buf1\[10] _1737_ vdd gnd OAI21X1
X_4405_ \u_cpu.ctrl.o_ibus_adr\[9] _1548_ _1565_ vdd gnd NAND2X1
XFILL_1__3362_ gnd vdd FILL
XFILL_0__2892_ gnd vdd FILL
XFILL_0__2472_ gnd vdd FILL
XFILL_1__2213_ gnd vdd FILL
X_2488_ _965_ _964_ _966_ vdd gnd NAND2X1
XFILL_0__2948_ gnd vdd FILL
XFILL_0__2528_ gnd vdd FILL
X_4634_ _1914_ _1959__bF$buf3 _1976_ _1828_ vdd gnd OAI21X1
X_4214_ mem_dbus_ack_bF$buf6 \u_mem_serial.shift_rx\[22] _1167__bF$buf3 _1241_ _1242_ vdd 
+ gnd
+ AOI22X1
X_2700_ ren_bF$buf3 _195_ _196_ _197_ vdd gnd OAI21X1
XFILL_0__3486_ gnd vdd FILL
X_3905_ _680_ _719_ _720_ _643_ vdd gnd OAI21X1
X_2297_ _1340_ _1343_ rst_bF$buf8 _753_ vdd gnd AOI21X1
XFILL_0__2757_ gnd vdd FILL
X_4443_ _1491_ i_clk_sys_ext_bF$buf39 \u_cpu.ctrl.o_ibus_adr\[7] vdd gnd DFFPOSX1
X_4023_ \u_cpu.bufreg.i_en_bF$buf4\ _940_ _941_ _877_ vdd gnd OAI21X1
XFILL_0__3295_ gnd vdd FILL
X_3714_ _763_ i_clk_fast_bF$buf7 \u_mem_serial.active_ibus\ vdd gnd DFFPOSX1
XFILL_1__3036_ gnd vdd FILL
XFILL_0__2986_ gnd vdd FILL
X_4672_ mem_ibus_ack_bF$buf0 \u_mem_serial.shift_rx\[3] _1960__bF$buf2 _1998_ vdd gnd NAND3X1
XFILL_0__2146_ gnd vdd FILL
X_4252_ _1267_ _1159__bF$buf3 _1269_ _1118_ vdd gnd OAI21X1
XFILL_0__4712_ gnd vdd FILL
X_3943_ _636_ i_clk_sys_ext_bF$buf34 \u_cpu.immdec.gen_immdec_w_eq_1.imm30_25\[3] vdd gnd DFFPOSX1
X_3523_ \u_rf_if.o_waddr\[1] _475_ vdd gnd INVX1
X_3103_ _1666_ _1665_ _1664_ vdd gnd OR2X2
X_4728_ vdd i_rst_n_bF$buf2 _1844_ i_clk_sys_ext_bF$buf1 ibus_pending_rdt[4] vdd 
+ gnd
+ DFFSR
X_4308_ \u_cpu.ctrl.pc_plus_offset_cy_r_w\ _1497_ vdd gnd INVX1
X_4481_ \u_mem_serial.shift_rx\[12] _1861__bF$buf3 _1880_ vdd gnd NAND2X1
X_4061_ _856_ i_clk_sys_ext_bF$buf14 \u_cpu.bufreg.data\[10] vdd gnd DFFPOSX1
X_3752_ _395_ _397_ \u_cpu.ctrl.i_pc_rel\ vdd gnd NAND2X1
X_3332_ _12_ _8_ _6_ _5_ vdd gnd OAI21X1
X_4537_ rf_read_reg1[0] _1916_ vdd gnd INVX1
X_4117_ \u_cpu.state.i_ctrl_misalign\ \u_cpu.bufreg2.i_bytecnt\[1] _1160_ vdd gnd NOR2X1
XFILL_1__3074_ gnd vdd FILL
XFILL_1__4699_ gnd vdd FILL
X_4290_ _1124_ i_clk_sys_ext_bF$buf43 \u_cpu.bufreg2.dlo\[8] vdd gnd DFFPOSX1
X_2603_ _276_ _277_ _279_ _278_ _280_ vdd 
+ gnd
+ AOI22X1
XFILL_0__3389_ gnd vdd FILL
XFILL_0__4330_ gnd vdd FILL
X_3808_ _364_ i_clk_sys_ext_bF$buf1 \u_cpu.bufreg.i_sh_signed\ vdd gnd DFFPOSX1
X_3981_ \u_cpu.alu.i_cnt0\ _912_ vdd gnd INVX1
X_3561_ \u_cpu.alu.add_cy_r\ rdata0[0] _2068_ vdd gnd NAND2X1
X_3141_ _1697_ \u_rf_if.o_waddr\[3] _1695_ vdd gnd AND2X2
X_4766_ i_rst_n_bF$buf1 vdd _1854_ i_clk_sys_ext_bF$buf25 rf_read_reg0[3] vdd 
+ gnd
+ DFFSR
X_4346_ _1529_ _1526_ _1524_ _1530_ _1465_ vdd 
+ gnd
+ OAI22X1
X_2832_ _570_ i_clk_sys_ext_bF$buf10 \u_rf_if.read_buf1\[5] vdd gnd DFFPOSX1
X_2412_ \u_mem_serial.bit_count\[4] _797_ \u_mem_serial.bit_count\[5] _1043_ vdd gnd OAI21X1
X_3617_ _137_ _138_ \u_cpu.alu.i_en\ vdd gnd NAND2X1
XFILL_1__2994_ gnd vdd FILL
X_3790_ rf_rreq_bF$buf2 _391_ _410_ _362_ vdd gnd OAI21X1
X_3370_ _47_ _46_ _45_ _44_ _43_ vdd 
+ gnd
+ OAI22X1
X_4575_ _1861__bF$buf4 _1940_ _1941_ \u_cpu.decode.i_wb_rdt\[10] vdd gnd OAI21X1
X_4155_ _1162_ _1191_ vdd gnd INVX1
XFILL_0__3410_ gnd vdd FILL
X_2641_ _237_ ren_bF$buf3 _241_ _242_ vdd gnd AOI21X1
X_2221_ _1397_ _1398_ rst_bF$buf5 _774_ vdd gnd AOI21X1
X_3846_ rf_rreq_bF$buf0 \u_cpu.decode.co_immdec_en\[2] _664_ _680_ vdd gnd OAI21X1
X_3426_ _443_ _342_ _421_ _341_ vdd gnd OAI21X1
X_3006_ rst_bF$buf1 _1667_ _522_ vdd gnd NOR2X1
XFILL_1__3588_ gnd vdd FILL
X_4384_ \u_cpu.ctrl.o_ibus_adr\[16] _1548_ _1551_ vdd gnd NAND2X1
X_2870_ _488_ i_clk_sys_ext_bF$buf2 \u_rf_if.o_waddr\[0] vdd gnd DFFPOSX1
X_2450_ _1004_ _1001_ _805_ _1005_ vdd gnd OAI21X1
X_3655_ \u_cpu.state.cnt_r\[2] \u_cpu.cnt0to3\ _166_ vdd gnd NAND2X1
X_3235_ _1767_ _2108__bF$buf3 _1763_ vdd gnd NOR2X1
X_4193_ _1208_ _1133_ _1224_ vdd gnd NOR2X1
X_2926_ rf_read_reg0_to_if[0] _1693_ _27__bF$buf3 _733_ vdd gnd OAI21X1
X_2506_ \u_mem_serial.active_ibus_bF$buf5\ \u_cpu.ctrl.o_ibus_adr\[13] _847_ vdd gnd NAND2X1
XFILL_0__4653_ gnd vdd FILL
XFILL_1__2248_ gnd vdd FILL
X_3884_ _678_ _705_ _706_ _636_ vdd gnd OAI21X1
X_3464_ \u_rf_if.read_buf1\[2] \u_rf_if.stream_cnt_0_bF$buf1\ \u_rf_if.stream_cnt_1_bF$buf1\ _424_ vdd gnd OAI21X1
X_3044_ _1623_ _1624_ rst_bF$buf7 _535_ vdd gnd AOI21X1
X_4669_ mem_ibus_ack_bF$buf0 \u_mem_serial.shift_rx\[4] _1960__bF$buf2 _1996_ vdd gnd NAND3X1
X_4249_ \u_cpu.bufreg2.dlo\[14] _1267_ vdd gnd INVX1
XFILL_0__3504_ gnd vdd FILL
X_2735_ ren_bF$buf3 _78_ _100_ _98_ _101_ vdd 
+ gnd
+ AOI22X1
X_2315_ \u_mem_serial.shift_rx\[8] _1297__bF$buf0 _1329_ vdd gnd NAND2X1
XFILL142650x43350 gnd vdd FILL
X_3693_ _123_ i_clk_sys_ext_bF$buf23 \u_cpu.state.cnt_r\[3] vdd gnd DFFPOSX1
X_3273_ _2110__bF$buf3 _2055_ _1798_ _1795_ vdd gnd NAND3X1
X_4478_ ibus_pending_ack_bF$buf3 \u_mem_serial.shift_rx\[14] _1877_ _1878_ vdd gnd OAI21X1
X_4058_ _859_ i_clk_sys_ext_bF$buf14 \u_cpu.bufreg.data\[7] vdd gnd DFFPOSX1
XFILL_0__3733_ gnd vdd FILL
X_2964_ \u_rf_if.issue_sel_bF$buf2\ _1690_ _1454_ vdd gnd NAND2X1
X_2544_ _808_ _809_ vdd gnd INVX2
X_2124_ _2122_ o_rf_sync vdd gnd BUFX2
XFILL_0__4691_ gnd vdd FILL
X_3749_ \u_cpu.decode.opcode\[0] _391_ _394_ _395_ vdd gnd OAI21X1
X_3329_ _4_ _3_ _2_ vdd gnd NOR2X1
XFILL_1__2286_ gnd vdd FILL
XFILL_1__4012_ gnd vdd FILL
X_3082_ _2055_ _1686__bF$buf3 _1798_ _1648_ vdd gnd NAND3X1
XFILL142950x150 gnd vdd FILL
X_4287_ _1095_ i_clk_sys_ext_bF$buf43 \u_cpu.bufreg2.dlo\[5] vdd gnd DFFPOSX1
XFILL_0__3962_ gnd vdd FILL
XFILL_0__3542_ gnd vdd FILL
XFILL_0__3122_ gnd vdd FILL
X_2773_ _537_ i_clk_sys_ext_bF$buf10 \u_rf_if.read_buf0\[18] vdd gnd DFFPOSX1
X_2353_ _1087_ _1295_ _794_ _2117_ vdd gnd AOI21X1
X_3978_ \u_cpu.bufreg.i_en_bF$buf3\ \u_cpu.bufreg.data\[3] _910_ vdd gnd NAND2X1
X_3558_ _2036_ _2041_ _2046_ \u_cpu.mem_if.o_rd\ vdd gnd OAI21X1
X_3138_ \u_rf_if.i_rreq\ _1693_ vdd gnd INVX4
X_4096_ \u_cpu.bufreg.i_shamt\[0] \u_cpu.bufreg.data\[0] _1141_ vdd gnd AND2X2
XFILL_0__3771_ gnd vdd FILL
X_2829_ _523_ i_clk_sys_ext_bF$buf32 \u_rf_if.read_buf0\[6] vdd gnd DFFPOSX1
X_2409_ _1043_ _1045_ _1046_ vdd gnd NAND2X1
XFILL_0__4136_ gnd vdd FILL
XFILL142950x86550 gnd vdd FILL
X_2582_ _100_ _215__bF$buf3 _202_ _294_ vdd gnd OAI21X1
X_2162_ _1438_ _1439_ rst_bF$buf8 _792_ vdd gnd AOI21X1
X_3787_ rf_rreq_bF$buf2 \u_cpu.decode.i_wb_rdt\[4] _409_ vdd gnd NAND2X1
X_3367_ _41_ _297_ \u_rf_if.stream_cnt\[4] _40_ vdd gnd OAI21X1
XFILL_0__2202_ gnd vdd FILL
XFILL_0__3827_ gnd vdd FILL
XFILL_0__3160_ gnd vdd FILL
X_2638_ _243_ _244_ _99_ _245_ vdd gnd NAND3X1
X_2218_ _1399_ _1400_ rst_bF$buf5 _775_ vdd gnd AOI21X1
XFILL_0__4365_ gnd vdd FILL
X_2391_ \u_cpu.bufreg2.dlo\[3] _796_ _840_ \u_cpu.bufreg2.dlo\[0] _1064_ vdd 
+ gnd
+ AOI22X1
XFILL_1__4526_ gnd vdd FILL
XFILL_1__4106_ gnd vdd FILL
X_3596_ _2101_ \u_cpu.alu.o_cmp\ vdd gnd INVX1
X_3176_ rst_bF$buf7 _452_ _571_ vdd gnd NOR2X1
XFILL_0__3216_ gnd vdd FILL
X_2867_ _551_ i_clk_sys_ext_bF$buf22 \u_rf_if.read_buf0\[28] vdd gnd DFFPOSX1
X_2447_ \u_cpu.ctrl.o_ibus_adr\[18] _810_ _1008_ vdd gnd NOR2X1
XFILL_0__2907_ gnd vdd FILL
XFILL_1__3970_ gnd vdd FILL
XFILL_1__3550_ gnd vdd FILL
XFILL_0__2240_ gnd vdd FILL
XFILL_1__2401_ gnd vdd FILL
X_2676_ \u_rf_serial.last_req_key\[7] _214_ vdd gnd INVX1
X_2256_ _1297__bF$buf0 _1376_ vdd gnd INVX2
X_4402_ \u_cpu.ctrl.o_ibus_adr\[10] _1548_ _1563_ vdd gnd NAND2X1
XFILL_1__4144_ gnd vdd FILL
XFILL_0__3674_ gnd vdd FILL
XFILL_0__3254_ gnd vdd FILL
XFILL_1__2210_ gnd vdd FILL
XFILL143250x111750 gnd vdd FILL
XFILL_0__4459_ gnd vdd FILL
XFILL_0__4039_ gnd vdd FILL
XFILL_1__3415_ gnd vdd FILL
X_2485_ \u_mem_serial.active_ibus_bF$buf6\ _967_ _968_ _969_ vdd gnd OAI21X1
X_4631_ mem_ibus_ack_bF$buf1 \u_mem_serial.shift_rx\[21] _1960__bF$buf0 _1975_ vdd gnd NAND3X1
X_4211_ \u_cpu.bufreg2.dlo\[22] _1239_ vdd gnd INVX1
XFILL_0__3063_ gnd vdd FILL
X_3902_ _680_ _717_ _718_ _642_ vdd gnd OAI21X1
XFILL_1__3224_ gnd vdd FILL
X_2294_ _1345_ _1346_ vdd gnd INVX1
XFILL142950x18150 gnd vdd FILL
X_3499_ \u_cpu.immdec.gen_immdec_w_eq_1.imm11_7\[0] _479__bF$buf3 _455_ vdd gnd NAND2X1
X_3079_ _5__bF$buf1 _1686__bF$buf0 _1787_ _1646_ vdd gnd NAND3X1
XFILL_0__2334_ gnd vdd FILL
X_4440_ _1486_ i_clk_sys_ext_bF$buf0 \u_cpu.ctrl.o_ibus_adr\[12] vdd gnd DFFPOSX1
X_4020_ _887__bF$buf4 _937_ _939_ _876_ vdd gnd OAI21X1
XFILL_0__3959_ gnd vdd FILL
XFILL_1__4182_ gnd vdd FILL
X_3711_ _787_ i_clk_fast_bF$buf2 \u_mem_serial.shift_rx\[19] vdd gnd DFFPOSX1
XFILL_0__4497_ gnd vdd FILL
XFILL_0__3348_ gnd vdd FILL
XFILL_1__2724_ gnd vdd FILL
X_2999_ _1688__bF$buf0 _1720_ \u_rf_if.read_buf0\[5] _1592_ vdd gnd OAI21X1
X_2579_ _70_ i_clk_fast_bF$buf6 \u_rf_serial.last_req_key\[9] vdd gnd DFFPOSX1
X_2159_ _1440_ _1441_ rst_bF$buf8 _793_ vdd gnd AOI21X1
X_3940_ _639_ i_clk_sys_ext_bF$buf28 \u_cpu.immdec.gen_immdec_w_eq_1.imm30_25\[0] vdd gnd DFFPOSX1
X_3520_ \u_rf_if.rcnt\[2] _473_ rf_wdata0_next_to_if _472_ vdd gnd OAI21X1
X_3100_ \u_rf_if.i_rreq\ \u_rf_if.pending_read\ _1662_ vdd gnd NOR2X1
XFILL_0__2619_ gnd vdd FILL
X_4725_ _752_ i_clk_fast_bF$buf3 \u_mem_serial.shift_rx\[7] vdd gnd DFFPOSX1
X_4305_ _1109_ i_clk_sys_ext_bF$buf37 \u_cpu.bufreg2.dlo\[21] vdd gnd DFFPOSX1
XFILL_1__3262_ gnd vdd FILL
XFILL143250x86550 gnd vdd FILL
XFILL_0__3997_ gnd vdd FILL
XFILL_0__3577_ gnd vdd FILL
XFILL_0__3157_ gnd vdd FILL
X_2388_ _840_ \u_cpu.bufreg2.dlo\[4] \u_cpu.bufreg2.dlo\[6] _1048_ _1067_ vdd 
+ gnd
+ AOI22X1
XFILL_0__2428_ gnd vdd FILL
X_4534_ ibus_pending_rdt[20] _1914_ vdd gnd INVX1
X_4114_ _1127_ _1156_ _1157_ vdd gnd NOR2X1
XFILL_0__2181_ gnd vdd FILL
X_2600_ _282_ _231_ rst_bF$buf1 _64_ vdd gnd AOI21X1
X_3805_ _354_ i_clk_sys_ext_bF$buf13 \u_cpu.bne_or_bge\ vdd gnd DFFPOSX1
X_2197_ \u_mem_serial.shift_rx\[22] _1377__bF$buf2 _1416_ vdd gnd NAND2X1
XFILL_0__2657_ gnd vdd FILL
X_4763_ i_rst_n_bF$buf3 vdd _1857_ i_clk_sys_ext_bF$buf21 rf_read_reg0[0] vdd 
+ gnd
+ DFFSR
X_4343_ _1524_ _1526_ _1528_ _1464_ vdd gnd OAI21X1
XFILL_0__3195_ gnd vdd FILL
X_3614_ _136_ \u_cpu.bufreg.i_cnt_done\ vdd gnd INVX2
XFILL_0__2886_ gnd vdd FILL
XFILL_0__2466_ gnd vdd FILL
X_4572_ _1861__bF$buf1 _1938_ _1939_ \u_cpu.decode.i_wb_rdt\[11] vdd gnd OAI21X1
X_4152_ _1186_ _1159__bF$buf2 _1188_ _1099_ vdd gnd OAI21X1
XFILL_0__4612_ gnd vdd FILL
X_3843_ _676_ _678_ vdd gnd INVX2
X_3423_ _407_ _339_ _445_ rdata1[0] vdd gnd AOI21X1
X_3003_ \u_rf_if.issue_chunk\[2] _1596_ _1595_ vdd gnd NAND2X1
X_4628_ _1874_ _1958_ _1973_ _1825_ vdd gnd AOI21X1
X_4208_ \u_cpu.bufreg.i_shamt\[0] _1205_ _1236_ _1237_ vdd gnd OAI21X1
XFILL_0__2695_ gnd vdd FILL
XFILL_0__2275_ gnd vdd FILL
X_4381_ \u_cpu.ctrl.o_ibus_adr\[17] _1548_ _1549_ vdd gnd NAND2X1
XFILL_0__4001_ gnd vdd FILL
XFILL_1__2436_ gnd vdd FILL
X_3652_ \u_cpu.bufreg2.i_bytecnt\[0] _161_ \u_cpu.cnt0to3\ vdd gnd NOR2X1
X_3232_ _13__bF$buf3 _1765_ \u_rf_if.read_buf1\[18] _1761_ vdd gnd OAI21X1
X_4437_ _1477_ i_clk_sys_ext_bF$buf16 \u_cpu.ctrl.o_ibus_adr\[29] vdd gnd DFFPOSX1
X_4017_ \u_cpu.bufreg.i_en_bF$buf4\ \u_cpu.bufreg.data\[23] _938_ vdd gnd NAND2X1
XFILL_1__4599_ gnd vdd FILL
X_4190_ \u_cpu.bufreg2.dhi\[3] _1205_ _1193_ _1222_ vdd gnd NAND3X1
X_2923_ _732_ _1671_ _731_ vdd gnd NOR2X1
X_2503_ _805_ _844_ _849_ _850_ vdd gnd NAND3X1
XFILL_0__3289_ gnd vdd FILL
XFILL_0__4230_ gnd vdd FILL
XFILL143250x18150 gnd vdd FILL
X_3708_ _370_ _371_ vdd gnd INVX1
X_3881_ _678_ _703_ _704_ _635_ vdd gnd OAI21X1
X_3461_ \u_rf_if.stream_cnt\[3] _421_ vdd gnd INVX1
X_3041_ _1622_ _1621_ rst_bF$buf4 _534_ vdd gnd AOI21X1
X_4666_ mem_ibus_ack_bF$buf0 \u_mem_serial.shift_rx\[5] _1960__bF$buf2 _1994_ vdd gnd NAND3X1
X_4246_ \u_cpu.alu.i_op_b\ \u_mem_serial.shift_rx\[31] _1149_ _1265_ vdd gnd MUX2X1
XFILL_0__4706_ gnd vdd FILL
X_2732_ _91_ _102_ _103_ _104_ vdd gnd OAI21X1
X_2312_ _1328_ _1331_ rst_bF$buf9 _750_ vdd gnd AOI21X1
X_3937_ _642_ i_clk_sys_ext_bF$buf34 rreg1[1] vdd gnd DFFPOSX1
X_3517_ _470_ _471_ _469_ vdd gnd NAND2X1
XFILL_1__2894_ gnd vdd FILL
XFILL_1__2474_ gnd vdd FILL
X_3690_ _156_ \u_cpu.state.cnt_r\[1] _132_ vdd gnd AND2X2
X_3270_ _2123_ _1793_ _1792_ vdd gnd NAND2X1
XFILL_0__2369_ gnd vdd FILL
X_4475_ _1873_ rf_rreq_bF$buf5 _1875_ rf_read_reg0_to_if[2] vdd gnd OAI21X1
X_4055_ _862_ i_clk_sys_ext_bF$buf5 \u_cpu.bufreg.data\[4] vdd gnd DFFPOSX1
XFILL_0__3310_ gnd vdd FILL
XFILL_0__4515_ gnd vdd FILL
XFILL142650x64950 gnd vdd FILL
X_2961_ _1668_ _1453_ _1452_ _509_ vdd gnd AOI21X1
X_2541_ \u_mem_serial.active_ibus_bF$buf2\ \u_cpu.bufreg.data\[6] \u_mem_serial.bit_count_0_bF$buf0\ _812_ vdd gnd OAI21X1
X_3746_ \u_cpu.decode.co_mem_signed\ _370_ _393_ \u_cpu.decode.co_immdec_en\[1] vdd gnd OAI21X1
X_3326_ \u_rf_if.issue_chunk\[1] _2123_ vdd gnd INVX2
XFILL_1__3488_ gnd vdd FILL
XFILL_0__2598_ gnd vdd FILL
X_4284_ _1098_ i_clk_sys_ext_bF$buf43 \u_cpu.bufreg2.dlo\[2] vdd gnd DFFPOSX1
XFILL_0__4324_ gnd vdd FILL
XFILL_1__2759_ gnd vdd FILL
XFILL_1__3700_ gnd vdd FILL
X_2770_ _494_ i_clk_sys_ext_bF$buf12 \u_rf_if.write_wait\[2] vdd gnd DFFPOSX1
X_2350_ \u_mem_serial.state\[1] _1296_ _1297_ vdd gnd NOR2X1
X_3975_ \u_cpu.bufreg.data\[3] _887__bF$buf0 _908_ vdd gnd NAND2X1
X_3555_ \u_cpu.bne_or_bge\ _2043_ _2037_ _2044_ vdd gnd OAI21X1
X_3135_ _1693_ _1692_ _1691_ _560_ vdd gnd AOI21X1
X_4093_ _1132_ _1137_ _1138_ _1139_ vdd gnd NAND3X1
X_2826_ _501_ i_clk_sys_ext_bF$buf35 \u_rf_if.issue_sel\ vdd gnd DFFPOSX1
X_2406_ _840_ \u_cpu.bufreg2.dlo\[16] \u_cpu.bufreg2.dlo\[18] _1048_ _1049_ vdd 
+ gnd
+ AOI22X1
XCLKBUF1_insert241 i_clk_sys_ext i_clk_sys_ext_hier0_bF$buf5 vdd gnd CLKBUF1
XCLKBUF1_insert242 i_clk_sys_ext i_clk_sys_ext_hier0_bF$buf4 vdd gnd CLKBUF1
XCLKBUF1_insert243 i_clk_sys_ext i_clk_sys_ext_hier0_bF$buf3 vdd gnd CLKBUF1
XCLKBUF1_insert244 i_clk_sys_ext i_clk_sys_ext_hier0_bF$buf2 vdd gnd CLKBUF1
XCLKBUF1_insert245 i_clk_sys_ext i_clk_sys_ext_hier0_bF$buf1 vdd gnd CLKBUF1
XCLKBUF1_insert246 i_clk_sys_ext i_clk_sys_ext_hier0_bF$buf0 vdd gnd CLKBUF1
XFILL_0__4553_ gnd vdd FILL
XFILL_1__4714_ gnd vdd FILL
X_3784_ _754_ i_clk_fast_bF$buf4 \u_mem_serial.shift_rx\[5] vdd gnd DFFPOSX1
X_3364_ \u_rf_if.ready_pulse\ _38_ vdd gnd INVX1
X_4569_ _1861__bF$buf2 _1936_ _1937_ \u_cpu.decode.i_wb_rdt\[19] vdd gnd OAI21X1
X_4149_ \u_cpu.bufreg2.dlo\[1] _1186_ vdd gnd INVX1
XFILL_0__3404_ gnd vdd FILL
XFILL142650x104550 gnd vdd FILL
XFILL_0__4609_ gnd vdd FILL
X_2635_ \u_rf_serial.last_req_key\[3] _119_ _248_ vdd gnd NAND2X1
X_2215_ _1402_ _1308_ _776_ vdd gnd AND2X2
X_3593_ \u_cpu.alu.i_cnt0\ \u_cpu.alu.cmp_r\ _2099_ vdd gnd NOR2X1
X_3173_ _2110__bF$buf1 _2108__bF$buf2 _1772_ _1718_ vdd gnd NAND3X1
X_4378_ \u_cpu.ctrl.o_ibus_adr\[17] _1525__bF$buf2 _1547_ vdd gnd NAND2X1
XFILL_0__3633_ gnd vdd FILL
XFILL_0__4418_ gnd vdd FILL
X_2864_ _553_ i_clk_sys_ext_bF$buf41 \u_rf_if.pending_read\ vdd gnd DFFPOSX1
X_2444_ \u_cpu.ctrl.o_ibus_adr\[19] _810_ _798_ _1011_ vdd gnd OAI21X1
XFILL_0__4591_ gnd vdd FILL
XFILL_0__4171_ gnd vdd FILL
X_3649_ \u_cpu.bufreg2.i_bytecnt\[0] _163_ vdd gnd INVX1
X_3229_ _2123_ _1812_ _0_ _1759_ vdd gnd NAND3X1
XFILL_0__2904_ gnd vdd FILL
XFILL_1__4332_ gnd vdd FILL
X_4187_ _1218_ _1138_ _1131_ _1219_ vdd gnd OAI21X1
XFILL_0__3862_ gnd vdd FILL
XFILL_0__3442_ gnd vdd FILL
XFILL_0__3022_ gnd vdd FILL
XFILL_0__4647_ gnd vdd FILL
X_2673_ _214_ _215__bF$buf2 _216_ _57_ vdd gnd AOI21X1
X_2253_ _1375_ _1378_ rst_bF$buf8 _762_ vdd gnd AOI21X1
X_3878_ _660__bF$buf2 _701_ _702_ _634_ vdd gnd OAI21X1
X_3458_ \u_rf_if.read_buf1\[5] \u_rf_if.stream_cnt_1_bF$buf3\ _418_ vdd gnd NOR2X1
X_3038_ _1620_ _1619_ rst_bF$buf3 _533_ vdd gnd AOI21X1
XFILL_0__2713_ gnd vdd FILL
XFILL_1__4561_ gnd vdd FILL
XFILL_0__3251_ gnd vdd FILL
X_2729_ _101_ _106_ _97_ _107_ vdd gnd AOI21X1
X_2309_ _1333_ _1334_ vdd gnd INVX1
X_2482_ \u_mem_serial.active_ibus_bF$buf0\ \u_cpu.ctrl.o_ibus_adr\[8] _972_ vdd gnd NAND2X1
X_3687_ _158_ _171_ _172_ _130_ vdd gnd AOI21X1
X_3267_ _13__bF$buf0 _1790_ \u_rf_if.read_buf1\[25] _1789_ vdd gnd OAI21X1
XFILL_0__2942_ gnd vdd FILL
XFILL_0__2522_ gnd vdd FILL
XFILL_0__3727_ gnd vdd FILL
X_2958_ raddr[4] _1668_ _27__bF$buf2 _1449_ vdd gnd OAI21X1
X_2538_ _813_ _814_ _811_ _812_ _815_ vdd 
+ gnd
+ OAI22X1
XFILL_0__4685_ gnd vdd FILL
XFILL_0__4265_ gnd vdd FILL
X_2291_ _1315__bF$buf2 _1304__bF$buf4 \u_mem_serial.shift_rx\[4] _1348_ vdd gnd OAI21X1
X_3496_ \u_rf_if.wen0_r\ \u_rf_if.rtrig1\ _453_ vdd gnd NAND2X1
X_3076_ _2110__bF$buf3 _1800__bF$buf2 _2106_ _1644_ vdd gnd NAND3X1
XFILL_0__2751_ gnd vdd FILL
XFILL_0__3116_ gnd vdd FILL
X_2767_ _540_ i_clk_sys_ext_bF$buf45 \u_rf_if.read_buf0\[21] vdd gnd DFFPOSX1
X_2347_ _1079_ _1083_ _1300_ vdd gnd NAND2X1
XFILL142950x39750 gnd vdd FILL
XFILL_0__4494_ gnd vdd FILL
XFILL_1__3450_ gnd vdd FILL
XFILL_0__2980_ gnd vdd FILL
XFILL_0__2140_ gnd vdd FILL
XFILL_0__3765_ gnd vdd FILL
X_2996_ _1688__bF$buf0 _1720_ \u_rf_if.read_buf0\[4] _1590_ vdd gnd OAI21X1
X_2576_ _56_ i_clk_fast_bF$buf1 \u_rf_serial.tx_state\[0] vdd gnd DFFPOSX1
X_2156_ _789_ i_clk_fast_bF$buf0 \u_mem_serial.shift_rx\[17] vdd gnd DFFPOSX1
X_4722_ i_rst_n_bF$buf2 vdd _1848_ i_clk_sys_ext_bF$buf29 ibus_pending_rdt[31] vdd 
+ gnd
+ DFFSR
X_4302_ _1112_ i_clk_sys_ext_bF$buf31 \u_cpu.bufreg2.dlo\[18] vdd gnd DFFPOSX1
XFILL_0__4359_ gnd vdd FILL
X_2385_ _1066_ _1069_ _853_ _1070_ vdd gnd AOI21X1
X_4531_ rf_read_reg0[0] _1912_ vdd gnd INVX1
X_4111_ _1125_ \u_cpu.alu.i_en\ _1153_ _1154_ vdd gnd NAND3X1
XFILL_0__3383_ gnd vdd FILL
X_3802_ _357_ i_clk_sys_ext_bF$buf30 \u_cpu.bufreg.i_right_shift_op\ vdd gnd DFFPOSX1
XFILL_0__4588_ gnd vdd FILL
XFILL_1__3124_ gnd vdd FILL
X_2194_ \u_mem_serial.shift_rx\[21] _1377__bF$buf2 _1418_ vdd gnd NAND2X1
X_3399_ \u_rf_if.read_buf0\[15] _441__bF$buf0 _315_ vdd gnd NOR2X1
X_4760_ i_rst_n_bF$buf3 vdd _1814_ i_clk_sys_ext_bF$buf18 rf_read_reg0[4] vdd 
+ gnd
+ DFFSR
X_4340_ _1525__bF$buf2 _1526_ vdd gnd INVX4
XFILL_0__3019_ gnd vdd FILL
X_3611_ _134_ \u_cpu.bufreg.i_init\ vdd gnd INVX2
XFILL_0__4397_ gnd vdd FILL
XFILL_1_BUFX2_insert240 gnd vdd FILL
XFILL_1__3773_ gnd vdd FILL
XFILL_0__2463_ gnd vdd FILL
XFILL_0__3668_ gnd vdd FILL
XFILL_1__2624_ gnd vdd FILL
XFILL_1__3829_ gnd vdd FILL
X_2899_ rst_bF$buf1 _467_ _486_ vdd gnd NOR2X1
X_2479_ _966_ _970_ _974_ _975_ vdd gnd NAND3X1
X_3840_ \u_cpu.decode.co_immdec_en\[3] _675_ vdd gnd INVX1
X_3420_ \u_rf_if.stream_cnt_0_bF$buf3\ _338_ _337_ _336_ vdd gnd OAI21X1
X_3000_ _1663_ _1593_ _521_ vdd gnd NOR2X1
X_4625_ mem_ibus_ack_bF$buf1 \u_mem_serial.shift_rx\[23] _1960__bF$buf0 _1972_ vdd gnd NAND3X1
X_4205_ _1233_ _1201_ _1234_ _1106_ vdd gnd OAI21X1
XFILL_1__3162_ gnd vdd FILL
XFILL_1__4367_ gnd vdd FILL
XFILL_0__2692_ gnd vdd FILL
XFILL_0__3477_ gnd vdd FILL
XFILL_0__3057_ gnd vdd FILL
X_2288_ _1314_ _1350_ _1303_ _1351_ vdd gnd NAND3X1
XFILL_0__2328_ gnd vdd FILL
X_4434_ _1492_ i_clk_sys_ext_bF$buf16 \u_cpu.ctrl.o_ibus_adr\[6] vdd gnd DFFPOSX1
X_4014_ \u_cpu.bufreg.data\[23] _887__bF$buf3 _936_ vdd gnd NAND2X1
XFILL_1__2909_ gnd vdd FILL
X_2920_ \u_rf_if.write_wait\[3] _1674_ _39_ _729_ vdd gnd OAI21X1
X_2500_ \u_mem_serial.bit_count_0_bF$buf2\ _852_ _802_ _853_ vdd gnd OAI21X1
X_3705_ _368_ \u_cpu.alu.i_rd_sel\[0] vdd gnd INVX1
XFILL_1__3867_ gnd vdd FILL
XFILL143250x72150 gnd vdd FILL
X_4663_ mem_ibus_ack_bF$buf0 \u_mem_serial.shift_rx\[6] _1960__bF$buf2 _1992_ vdd gnd NAND3X1
X_4243_ _1149_ \u_cpu.bufreg.i_shamt\[0] _1263_ vdd gnd AND2X2
XFILL143250x39750 gnd vdd FILL
XFILL_0__4703_ gnd vdd FILL
XFILL_0__3095_ gnd vdd FILL
X_3934_ _645_ i_clk_sys_ext_bF$buf12 \u_cpu.immdec.gen_immdec_w_eq_1.imm11_7\[2] vdd gnd DFFPOSX1
X_3514_ gnd _466_ vdd gnd INVX1
X_4719_ _1874_ _1871_ _2030_ _2031_ vdd gnd NAND3X1
XFILL_1__3676_ gnd vdd FILL
X_4472_ rf_read_reg0[2] _1873_ vdd gnd INVX1
X_4052_ _865_ i_clk_sys_ext_bF$buf23 \u_cpu.bufreg.data\[0] vdd gnd DFFPOSX1
X_3743_ \u_cpu.decode.opcode\[1] _391_ vdd gnd INVX1
X_3323_ _0_ _2114_ _2113_ vdd gnd AND2X2
X_4528_ \u_mem_serial.shift_rx\[0] _1910_ vdd gnd INVX1
X_4108_ \u_cpu.state.i_ctrl_misalign\ \u_cpu.bufreg2.i_bytecnt\[1] _1151_ vdd gnd AND2X2
XFILL_0__2175_ gnd vdd FILL
X_4281_ _1101_ i_clk_sys_ext_bF$buf44 \u_cpu.bufreg2.dhi\[6] vdd gnd DFFPOSX1
XFILL_0__4321_ gnd vdd FILL
XFILL_1__2336_ gnd vdd FILL
X_3972_ \u_cpu.bufreg.data\[4] _906_ vdd gnd INVX1
X_3552_ _2040_ _2037_ _2038_ _2041_ vdd gnd AOI21X1
X_3132_ _1693_ _1690_ _1689_ _559_ vdd gnd AOI21X1
X_4757_ i_rst_n_bF$buf5 vdd _1817_ i_clk_sys_ext_bF$buf4 ibus_pending_rdt[27] vdd 
+ gnd
+ DFFSR
X_4337_ _1501_ _1505_ _1523_ \u_cpu.ctrl.o_rd\ vdd gnd OAI21X1
XFILL_1__4499_ gnd vdd FILL
XFILL_1__4079_ gnd vdd FILL
X_4090_ \u_cpu.bufreg2.dhi\[5] _1135_ _1136_ vdd gnd NAND2X1
X_2823_ _576_ i_clk_sys_ext_bF$buf45 \u_rf_if.read_buf1\[8] vdd gnd DFFPOSX1
X_2403_ \u_cpu.bufreg2.dlo\[23] _796_ _840_ \u_cpu.bufreg2.dlo\[20] _1052_ vdd 
+ gnd
+ AOI22X1
XFILL_0__3189_ gnd vdd FILL
X_3608_ \u_cpu.decode.co_rd_mem_en\ \u_cpu.mem_if.o_rd\ \u_cpu.ctrl.o_rd\ _32_ vdd gnd AOI21X1
XFILL142350x97350 gnd vdd FILL
X_3781_ rf_rreq_bF$buf0 \u_cpu.decode.i_wb_rdt\[20] _406_ vdd gnd NAND2X1
X_3361_ \u_rf_if.stream_cnt\[2] _37_ _36_ vdd gnd NAND2X1
X_4566_ _1861__bF$buf1 _1934_ _1935_ \u_cpu.decode.i_wb_rdt\[24] vdd gnd OAI21X1
X_4146_ mem_dbus_ack_bF$buf5 _1180_ _1184_ vdd gnd NOR2X1
XFILL_0__3821_ gnd vdd FILL
X_2632_ \u_rf_if.o_waddr\[5] _91_ _251_ vdd gnd NAND2X1
X_2212_ _1403_ _1404_ rst_bF$buf10 _777_ vdd gnd AOI21X1
X_3837_ _667_ _669_ _671_ _672_ vdd gnd NAND3X1
X_3417_ \u_rf_if.stream_cnt_0_bF$buf4\ _335_ _334_ _333_ vdd gnd OAI21X1
XFILL_1__2374_ gnd vdd FILL
X_3590_ _2069_ _2080_ _2068_ _2096_ vdd gnd OAI21X1
X_3170_ _2110__bF$buf1 _2108__bF$buf2 _1769_ _1716_ vdd gnd NAND3X1
XFILL_0__2269_ gnd vdd FILL
X_4375_ _1543_ _1526_ _1545_ _1479_ vdd gnd OAI21X1
XFILL_0__3210_ gnd vdd FILL
XFILL_0__4415_ gnd vdd FILL
X_2861_ _555_ i_clk_sys_ext_bF$buf12 \u_rf_if.write_wait\[5] vdd gnd DFFPOSX1
X_2441_ \u_mem_serial.active_ibus_bF$buf5\ \u_cpu.ctrl.o_ibus_adr\[16] _1014_ vdd gnd NAND2X1
X_3646_ _160_ _158_ _161_ vdd gnd NAND2X1
X_3226_ _2110__bF$buf0 _0_ _1757_ _1756_ vdd gnd NAND3X1
XFILL_1__2183_ gnd vdd FILL
X_4184_ _1125_ _1128_ \u_cpu.bufreg2.dhi\[4] _1216_ vdd gnd OAI21X1
X_2917_ \u_rf_if.write_wait\[0] \u_rf_if.write_wait\[1] \u_rf_if.write_wait\[2] _619_ vdd gnd OAI21X1
XFILL143250x150 gnd vdd FILL
XFILL_0__4224_ gnd vdd FILL
XFILL_1__2659_ gnd vdd FILL
XFILL_1__3600_ gnd vdd FILL
X_2670_ _217_ _215__bF$buf2 _218_ _58_ vdd gnd AOI21X1
X_2250_ _1380_ \u_cpu.o_ibus_cyc\ _1372_ _1381_ vdd gnd NAND3X1
X_3875_ rf_rreq_bF$buf4 \u_cpu.decode.i_wb_rdt\[20] _700_ vdd gnd AND2X2
X_3455_ _443_ _416_ _421_ _415_ vdd gnd OAI21X1
X_3035_ _1617_ _1618_ rst_bF$buf3 _532_ vdd gnd AOI21X1
XFILL_1__3197_ gnd vdd FILL
XFILL_0__3915_ gnd vdd FILL
XFILL142650x50550 gnd vdd FILL
X_2726_ ren_bF$buf0 \u_rf_if.o_waddr\[5] _110_ vdd gnd OR2X2
X_2306_ _1315__bF$buf3 _1304__bF$buf0 \u_mem_serial.shift_rx\[7] _1336_ vdd gnd OAI21X1
XFILL_0__4033_ gnd vdd FILL
XFILL142950x104550 gnd vdd FILL
XFILL_1__4614_ gnd vdd FILL
X_3684_ \u_cpu.state.cnt_r\[3] _184_ vdd gnd INVX1
X_3264_ _2110__bF$buf4 _5__bF$buf3 _1787_ _1786_ vdd gnd NAND3X1
X_4469_ _1861__bF$buf5 _1870_ _1871_ vdd gnd NAND2X1
X_4049_ _868_ i_clk_sys_ext_bF$buf27 \u_cpu.bufreg.data\[28] vdd gnd DFFPOSX1
XFILL_0__3724_ gnd vdd FILL
XFILL_0__3304_ gnd vdd FILL
XFILL_0__4509_ gnd vdd FILL
X_2955_ \u_rf_if.issue_chunk\[3] _1667_ _27__bF$buf2 _1447_ vdd gnd OAI21X1
X_2535_ _806_ _816_ _807_ _817_ _818_ vdd 
+ gnd
+ OAI22X1
XFILL_1__2697_ gnd vdd FILL
X_3493_ _452_ _471_ _451_ vdd gnd NAND2X1
X_3073_ _5__bF$buf1 _1686__bF$buf0 _1784_ _1642_ vdd gnd NAND3X1
X_4698_ _1899_ _2013_ _2014_ _1854_ vdd gnd NAND3X1
X_4278_ _1104_ i_clk_sys_ext_bF$buf17 \u_cpu.bufreg2.dhi\[3] vdd gnd DFFPOSX1
XFILL_0__3953_ gnd vdd FILL
XFILL_0__3113_ gnd vdd FILL
X_2764_ raddr[5] raddr[4] _74_ vdd gnd NOR2X1
X_2344_ _1297__bF$buf0 _1302_ _1303_ vdd gnd NAND2X1
X_3969_ \u_cpu.bufreg.i_en_bF$buf2\ _903_ _904_ _860_ vdd gnd OAI21X1
X_3549_ \u_cpu.decode.co_mem_word\ gnd _2038_ vdd gnd OR2X2
X_3129_ _1688__bF$buf2 _1686_ vdd gnd INVX8
XFILL_1__4232_ gnd vdd FILL
XFILL142950x93750 gnd vdd FILL
X_4087_ \u_cpu.bufreg.i_shamt\[1] \u_cpu.bufreg.i_shamt\[0] _1133_ vdd gnd NOR2X1
XFILL_0__4547_ gnd vdd FILL
XFILL_0__4127_ gnd vdd FILL
X_2993_ _1688__bF$buf0 _1715_ \u_rf_if.read_buf0\[3] _1588_ vdd gnd OAI21X1
X_2573_ _65_ i_clk_fast_bF$buf6 \u_rf_serial.last_req_key\[10] vdd gnd DFFPOSX1
X_2153_ _749_ i_clk_fast_bF$buf7 \u_mem_serial.shift_rx\[10] vdd gnd DFFPOSX1
X_3778_ _755_ i_clk_fast_bF$buf3 \u_mem_serial.shift_rx\[4] vdd gnd DFFPOSX1
X_3358_ \u_rf_if.stream_active\ _34_ _33_ vdd gnd NAND2X1
XFILL_0__2613_ gnd vdd FILL
XFILL_0__3818_ gnd vdd FILL
XFILL_1__4461_ gnd vdd FILL
XFILL_0__3991_ gnd vdd FILL
XFILL_0__3571_ gnd vdd FILL
XFILL142650x7350 gnd vdd FILL
XFILL_0__3151_ gnd vdd FILL
X_2629_ raddr[5] _254_ vdd gnd INVX1
X_2209_ _1372_ _1405_ _1406_ _778_ vdd gnd AOI21X1
XFILL_1__3312_ gnd vdd FILL
X_2382_ _966_ _1072_ _1071_ _1073_ vdd gnd NAND3X1
X_3587_ \u_cpu.alu.i_cmp_sig\ _2085_ _2087_ _2093_ vdd gnd NAND3X1
X_3167_ _13__bF$buf3 _1715_ \u_rf_if.read_buf1\[3] _1714_ vdd gnd OAI21X1
XFILL_0__2422_ gnd vdd FILL
XFILL_1__4270_ gnd vdd FILL
X_2858_ _516_ i_clk_sys_ext_bF$buf21 \u_rf_if.read_buf0\[1] vdd gnd DFFPOSX1
X_2438_ \u_cpu.bufreg.data\[17] _1017_ vdd gnd INVX1
XFILL_0__4165_ gnd vdd FILL
X_2191_ \u_mem_serial.active_ibus_bF$buf3\ _1376_ _1412_ _1420_ vdd gnd OAI21X1
X_3396_ _443_ _313_ \u_rf_if.stream_cnt\[3] _312_ vdd gnd OAI21X1
XFILL_0__2651_ gnd vdd FILL
XFILL_0__2231_ gnd vdd FILL
XFILL_0__3856_ gnd vdd FILL
XFILL_0__3436_ gnd vdd FILL
X_2667_ _220_ _215__bF$buf3 _202_ _221_ vdd gnd OAI21X1
X_2247_ \u_mem_serial.shift_rx\[28] _1377__bF$buf1 _1383_ vdd gnd NAND2X1
XFILL_0__4394_ gnd vdd FILL
XFILL_1_BUFX2_insert213 gnd vdd FILL
XFILL_1_BUFX2_insert217 gnd vdd FILL
XFILL_0__2707_ gnd vdd FILL
XFILL_1__3350_ gnd vdd FILL
XFILL_0__3245_ gnd vdd FILL
XFILL_1__2621_ gnd vdd FILL
X_2896_ _1461_ _1693_ _609_ _484_ vdd gnd AOI21X1
X_2476_ _803_ _829_ _977_ _978_ vdd gnd AOI21X1
XFILL_0__2936_ gnd vdd FILL
XFILL_0__2516_ gnd vdd FILL
X_4622_ _1969_ _1970_ _1869_ _1971_ vdd gnd OAI21X1
X_4202_ _1208_ _1131_ _1231_ _1232_ vdd gnd OAI21X1
XFILL142950x25350 gnd vdd FILL
XFILL_0__3894_ gnd vdd FILL
XFILL_0__4259_ gnd vdd FILL
XFILL_1__3635_ gnd vdd FILL
X_2285_ \u_mem_serial.shift_rx\[2] _1297__bF$buf3 _1353_ vdd gnd NAND2X1
XFILL_0__2745_ gnd vdd FILL
XFILL_0__2325_ gnd vdd FILL
X_4431_ _1480_ i_clk_sys_ext_bF$buf11 \u_cpu.ctrl.o_ibus_adr\[18] vdd gnd DFFPOSX1
X_4011_ \u_cpu.bufreg.i_init\ _909_ _934_ vdd gnd NOR2X1
XFILL_0__3283_ gnd vdd FILL
X_3702_ \u_cpu.bne_or_bge\ _366_ vdd gnd INVX1
XFILL_0__4488_ gnd vdd FILL
XFILL_1__3864_ gnd vdd FILL
XFILL_1__3024_ gnd vdd FILL
XFILL_1__4649_ gnd vdd FILL
X_3299_ _2116_ _2053_ _2052_ vdd gnd AND2X2
X_4660_ mem_ibus_ack_bF$buf4 \u_mem_serial.shift_rx\[7] _1960__bF$buf1 _1990_ vdd gnd NAND3X1
XFILL_0__2134_ gnd vdd FILL
X_4240_ mem_dbus_ack_bF$buf5 _1142_ _1261_ vdd gnd NOR2X1
XFILL_0__3759_ gnd vdd FILL
XFILL_0__3339_ gnd vdd FILL
XFILL143250x93750 gnd vdd FILL
X_3931_ _621_ i_clk_sys_ext_bF$buf19 \u_cpu.immdec.gen_immdec_w_eq_1.imm31\ vdd gnd DFFPOSX1
X_3511_ _464_ _478_ _463_ vdd gnd NAND2X1
X_4716_ \u_cpu.decode.i_wb_rdt\[4] \u_cpu.i_ibus_rdt\[0] _2028_ vdd gnd NAND2X1
XFILL_0__2363_ gnd vdd FILL
XFILL_1__2944_ gnd vdd FILL
XFILL_1__2524_ gnd vdd FILL
X_2799_ _588_ i_clk_sys_ext_bF$buf42 \u_rf_if.read_buf1\[20] vdd gnd DFFPOSX1
X_2379_ _805_ _1074_ _1075_ _1076_ vdd gnd NAND3X1
X_3740_ _758_ i_clk_fast_bF$buf2 \u_mem_serial.shift_rx\[1] vdd gnd DFFPOSX1
X_3320_ _13__bF$buf4 _2110_ vdd gnd INVX8
X_4525_ \u_mem_serial.shift_rx\[5] _1908_ vdd gnd INVX1
X_4105_ \u_cpu.bufreg2.dlo\[7] _1148_ vdd gnd INVX1
XFILL_1__4687_ gnd vdd FILL
XFILL_1__4267_ gnd vdd FILL
XFILL_0__2592_ gnd vdd FILL
XFILL_0__3377_ gnd vdd FILL
X_2188_ _1315__bF$buf4 _1304__bF$buf2 \u_mem_serial.shift_rx\[21] _1422_ vdd gnd OAI21X1
XFILL_0__2648_ gnd vdd FILL
X_4754_ i_rst_n_bF$buf1 vdd _1820_ i_clk_sys_ext_bF$buf24 rf_read_reg1[4] vdd 
+ gnd
+ DFFSR
X_4334_ _1511_ _1520_ _1513_ _1521_ vdd gnd NAND3X1
X_2820_ _525_ i_clk_sys_ext_bF$buf45 \u_rf_if.read_buf0\[8] vdd gnd DFFPOSX1
X_2400_ _1051_ _1054_ _853_ _1055_ vdd gnd AOI21X1
X_3605_ \u_cpu.rd_en\ \u_cpu.alu.i_en\ _30_ vdd gnd NAND2X1
XFILL_1__2982_ gnd vdd FILL
XFILL_1_BUFX2_insert182 gnd vdd FILL
XFILL_1_BUFX2_insert186 gnd vdd FILL
XFILL_1__3767_ gnd vdd FILL
XFILL_0__2457_ gnd vdd FILL
X_4563_ _1861__bF$buf5 _1932_ _1933_ \u_cpu.decode.i_wb_rdt\[25] vdd gnd OAI21X1
X_4143_ mem_dbus_ack_bF$buf5 \u_mem_serial.shift_rx\[3] _1167__bF$buf2 _1181_ _1182_ vdd 
+ gnd
+ AOI22X1
XFILL_0__4603_ gnd vdd FILL
X_3834_ \u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20\[0] _668_ _669_ vdd gnd NAND2X1
X_3414_ \u_rf_if.read_buf0\[5] _441__bF$buf2 _440_ _330_ vdd gnd OAI21X1
XFILL_1__2371_ gnd vdd FILL
X_4619_ _1934_ _1959__bF$buf2 _1968_ _1821_ vdd gnd OAI21X1
XFILL_0__2686_ gnd vdd FILL
X_4372_ \u_cpu.ctrl.o_ibus_adr\[19] _1544_ vdd gnd INVX1
XFILL_0_CLKBUF1_insert242 gnd vdd FILL
XFILL_0_CLKBUF1_insert244 gnd vdd FILL
XFILL_0_CLKBUF1_insert246 gnd vdd FILL
X_3643_ _788_ i_clk_fast_bF$buf0 \u_mem_serial.shift_rx\[18] vdd gnd DFFPOSX1
X_3223_ \u_rf_if.issue_chunk\[1] _1807_ _1754_ vdd gnd NOR2X1
XFILL143250x25350 gnd vdd FILL
X_4428_ _1649_ i_clk_sys_ext_bF$buf13 \u_cpu.ctrl.pc_plus_offset_cy_r_w\ vdd gnd DFFPOSX1
X_4008_ \u_cpu.bufreg.c_r\ _892_ _931_ vdd gnd NAND2X1
XFILL_1__3385_ gnd vdd FILL
XBUFX2_insert230 _1686_ _1686__bF$buf0 vdd gnd BUFX2
XBUFX2_insert231 _2110_ _2110__bF$buf4 vdd gnd BUFX2
XBUFX2_insert232 _2110_ _2110__bF$buf3 vdd gnd BUFX2
XBUFX2_insert233 _2110_ _2110__bF$buf2 vdd gnd BUFX2
XBUFX2_insert234 _2110_ _2110__bF$buf1 vdd gnd BUFX2
XBUFX2_insert235 _2110_ _2110__bF$buf0 vdd gnd BUFX2
XBUFX2_insert236 mem_ibus_ack mem_ibus_ack_bF$buf4 vdd gnd BUFX2
XBUFX2_insert237 mem_ibus_ack mem_ibus_ack_bF$buf3 vdd gnd BUFX2
XBUFX2_insert238 mem_ibus_ack mem_ibus_ack_bF$buf2 vdd gnd BUFX2
XBUFX2_insert239 mem_ibus_ack mem_ibus_ack_bF$buf1 vdd gnd BUFX2
XFILL_0__2495_ gnd vdd FILL
X_4181_ _1149_ \u_mem_serial.shift_rx\[28] _1214_ vdd gnd OR2X2
X_2914_ \u_rf_if.write_wait\[0] \u_rf_if.write_wait\[1] _39_ _617_ vdd gnd OAI21X1
XFILL_0__4641_ gnd vdd FILL
XFILL_0__4221_ gnd vdd FILL
XFILL_1__2236_ gnd vdd FILL
X_3872_ \u_cpu.decode.i_wb_rdt\[12] \u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20\[2] rf_rreq_bF$buf0 _698_ vdd gnd MUX2X1
X_3452_ \u_rf_if.read_buf1\[24] _404_ vdd gnd INVX1
X_3032_ _1688__bF$buf3 _1746_ \u_rf_if.read_buf0\[12] _1615_ vdd gnd OAI21X1
X_4657_ _1942_ _1959__bF$buf4 _1988_ _1839_ vdd gnd OAI21X1
X_4237_ mem_dbus_ack_bF$buf2 \u_mem_serial.shift_rx\[16] _1167__bF$buf2 _1258_ _1259_ vdd 
+ gnd
+ AOI22X1
XFILL143250x3750 gnd vdd FILL
X_2723_ ren_bF$buf1 raddr[4] _113_ vdd gnd NAND2X1
X_2303_ _1314_ _1338_ _1303_ _1339_ vdd gnd NAND3X1
X_3928_ _624_ i_clk_sys_ext_bF$buf19 \u_cpu.immdec.gen_immdec_w_eq_1.imm30_25\[5] vdd gnd DFFPOSX1
X_3508_ \u_cpu.immdec.gen_immdec_w_eq_1.imm11_7\[3] _479__bF$buf0 _461_ vdd gnd NAND2X1
X_3681_ rf_ready _182_ vdd gnd INVX1
X_3261_ \u_rf_if.issue_chunk\[1] _0_ _1807_ _1784_ vdd gnd NOR3X1
X_4466_ \u_cpu.o_wen0\ rf_wreq _1868_ vdd gnd AND2X2
X_4046_ \u_cpu.bufreg.i_en_bF$buf1\ _895_ _955_ _886_ vdd gnd OAI21X1
XFILL_0__3721_ gnd vdd FILL
X_2952_ \u_rf_if.issue_chunk\[2] _1667_ _27__bF$buf2 _1445_ vdd gnd OAI21X1
X_2532_ \u_mem_serial.active_ibus_bF$buf2\ \u_cpu.bufreg.data\[2] \u_mem_serial.bit_count_0_bF$buf0\ _821_ vdd gnd OAI21X1
X_3737_ _388_ _387_ \u_cpu.bufreg.i_imm_en\ \u_cpu.decode.co_rd_op\ vdd gnd OAI21X1
X_3317_ _2114_ _0_ _2107_ vdd gnd NAND2X1
XFILL_1__3059_ gnd vdd FILL
XFILL_1__4420_ gnd vdd FILL
X_3490_ gnd _467_ _449_ _448_ vdd gnd OAI21X1
X_3070_ _1800__bF$buf3 _1686__bF$buf0 _1778_ _1640_ vdd gnd NAND3X1
XFILL_0__2169_ gnd vdd FILL
X_4695_ _1917_ _2011_ _2012_ _1853_ vdd gnd NAND3X1
X_4275_ _1168_ _1159__bF$buf0 _1286_ _1124_ vdd gnd OAI21X1
XFILL_0__4315_ gnd vdd FILL
X_2761_ _76_ \u_rf_serial.shift_rx\[0] rdata[0] vdd gnd AND2X2
X_2341_ i_clk_sys_ext_bF$buf31 _1306_ vdd gnd INVX1
X_3966_ _887__bF$buf2 _900_ _902_ _859_ vdd gnd OAI21X1
X_3546_ _2035_ _2034_ _2033_ \u_cpu.mem_if.o_wb_sel\[3] vdd gnd OAI21X1
X_3126_ _1688__bF$buf3 _2050_ \u_rf_if.read_buf0\[29] _1684_ vdd gnd OAI21X1
X_4084_ \u_cpu.bufreg.i_right_shift_op\ \u_cpu.bufreg.i_cnt_done\ _1130_ vdd gnd NAND2X1
X_2817_ _579_ i_clk_sys_ext_bF$buf6 \u_rf_if.read_buf1\[11] vdd gnd DFFPOSX1
XCLKBUF1_insert150 i_clk_sys_ext_hier0_bF$buf4 i_clk_sys_ext_bF$buf5 vdd gnd CLKBUF1
XCLKBUF1_insert151 i_clk_sys_ext_hier0_bF$buf4 i_clk_sys_ext_bF$buf4 vdd gnd CLKBUF1
XCLKBUF1_insert152 i_clk_sys_ext_hier0_bF$buf3 i_clk_sys_ext_bF$buf3 vdd gnd CLKBUF1
XCLKBUF1_insert153 i_clk_sys_ext_hier0_bF$buf1 i_clk_sys_ext_bF$buf2 vdd gnd CLKBUF1
XCLKBUF1_insert154 i_clk_sys_ext_hier0_bF$buf3 i_clk_sys_ext_bF$buf1 vdd gnd CLKBUF1
XCLKBUF1_insert155 i_clk_sys_ext_hier0_bF$buf4 i_clk_sys_ext_bF$buf0 vdd gnd CLKBUF1
XFILL_1__3500_ gnd vdd FILL
X_2990_ _1688__bF$buf0 _1715_ \u_rf_if.read_buf0\[2] _1586_ vdd gnd OAI21X1
X_2570_ _53_ i_clk_fast_bF$buf1 \u_rf_serial.tx_state\[2] vdd gnd DFFPOSX1
X_2150_ _771_ i_clk_fast_bF$buf5 \u_mem_serial.bit_count\[1] vdd gnd DFFPOSX1
X_3775_ _785_ i_clk_fast_bF$buf2 \u_mem_serial.shift_rx\[20] vdd gnd DFFPOSX1
X_3355_ _33_ _36_ _26_ _601_ vdd gnd AOI21X1
XFILL_1__3097_ gnd vdd FILL
X_2626_ _253_ _256_ _257_ vdd gnd NAND2X1
X_2206_ \u_mem_serial.req_pending\ _1309_ _1409_ vdd gnd NOR2X1
XFILL_0__4353_ gnd vdd FILL
X_3584_ _2082_ _2083_ _2090_ \u_cpu.alu.o_rd\ vdd gnd NAND3X1
X_3164_ _1714_ _1712_ rst_bF$buf2 _568_ vdd gnd AOI21X1
X_4369_ _1534_ _1526_ _1535_ _1530_ _1476_ vdd 
+ gnd
+ OAI22X1
XFILL_0__3624_ gnd vdd FILL
XFILL_0__4409_ gnd vdd FILL
X_2855_ _558_ i_clk_sys_ext_bF$buf15 \u_rf_if.read_buf0\[30] vdd gnd DFFPOSX1
X_2435_ _1019_ _845_ _1020_ vdd gnd NAND2X1
XFILL_0__4582_ gnd vdd FILL
X_3393_ \u_rf_if.read_buf0\[24] \u_rf_if.stream_cnt_0_bF$buf0\ _309_ vdd gnd NOR2X1
X_4598_ _1861__bF$buf3 _1954_ _1955_ \u_cpu.decode.i_wb_rdt\[31] vdd gnd OAI21X1
X_4178_ _1131_ _1135_ _1210_ _1211_ vdd gnd NAND3X1
XFILL_0__3433_ gnd vdd FILL
XFILL_0__3013_ gnd vdd FILL
X_2664_ _114_ _215__bF$buf3 _202_ _223_ vdd gnd OAI21X1
X_2244_ \u_mem_serial.shift_rx\[27] _1377__bF$buf3 _1385_ vdd gnd NAND2X1
X_3869_ \u_cpu.decode.i_wb_rdt\[13] \u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20\[3] rf_rreq_bF$buf0 _696_ vdd gnd MUX2X1
X_3449_ \u_rf_if.read_buf1\[26] _389_ vdd gnd INVX1
X_3029_ _1688__bF$buf2 _1741_ \u_rf_if.read_buf0\[11] _1613_ vdd gnd OAI21X1
XFILL_1__4132_ gnd vdd FILL
XFILL_0__3662_ gnd vdd FILL
X_2893_ \u_rf_if.rcnt\[2] _1661_ _607_ _483_ vdd gnd AOI21X1
X_2473_ \u_mem_serial.active_ibus_bF$buf6\ \u_cpu.bufreg.data\[26] _981_ vdd gnd OR2X2
X_3678_ \u_cpu.state.ibus_cyc\ _179_ _180_ vdd gnd NAND2X1
X_3258_ _2114_ _2048_ _1782_ vdd gnd NAND2X1
XFILL_0__3471_ gnd vdd FILL
XFILL_0__3051_ gnd vdd FILL
X_2949_ _1597_ _1444_ rst_bF$buf1 _505_ vdd gnd AOI21X1
X_2529_ _822_ _823_ _820_ _821_ _824_ vdd 
+ gnd
+ OAI22X1
XFILL_0__4676_ gnd vdd FILL
XFILL_1__3212_ gnd vdd FILL
X_2282_ _1352_ _1355_ rst_bF$buf10 _756_ vdd gnd AOI21X1
X_3487_ \u_cpu.immdec.gen_immdec_w_eq_1.imm11_7\[4] _479__bF$buf0 _446_ vdd gnd NAND2X1
X_3067_ _1778_ _1686__bF$buf0 _2055_ _1638_ vdd gnd NAND3X1
XFILL142950x46950 gnd vdd FILL
XFILL_0__3947_ gnd vdd FILL
XFILL_0__3527_ gnd vdd FILL
XFILL_0__3107_ gnd vdd FILL
X_2758_ \u_rf_serial.tx_state\[0] \u_rf_serial.tx_state\[1] _78_ vdd gnd NOR2X1
X_2338_ \u_cpu.o_dbus_cyc\ \u_cpu.o_ibus_cyc\ _1308_ _1309_ vdd gnd OAI21X1
X_3296_ _13__bF$buf1 _2050_ \u_rf_if.read_buf1\[29] _2049_ vdd gnd OAI21X1
XFILL_0__2971_ gnd vdd FILL
XFILL_0__2551_ gnd vdd FILL
XFILL_0_BUFX2_insert221 gnd vdd FILL
XFILL_0_BUFX2_insert224 gnd vdd FILL
XFILL_0_BUFX2_insert226 gnd vdd FILL
XFILL_0_BUFX2_insert228 gnd vdd FILL
XFILL_1__3917_ gnd vdd FILL
X_2987_ _2109_ _1688__bF$buf3 _1584_ vdd gnd NOR2X1
X_2567_ _62_ i_clk_fast_bF$buf6 \u_rf_serial.req_seen\ vdd gnd DFFPOSX1
X_2147_ _782_ i_clk_fast_bF$buf7 \u_mem_serial.shift_rx\[22] vdd gnd DFFPOSX1
XFILL_0__2607_ gnd vdd FILL
X_4713_ _1881_ \u_cpu.decode.i_wb_rdt\[5] \u_cpu.decode.i_wb_rdt\[30] _2025_ vdd gnd NAND3X1
XFILL_1__4035_ gnd vdd FILL
XFILL_0__3985_ gnd vdd FILL
XFILL_0__3565_ gnd vdd FILL
XFILL_0__3145_ gnd vdd FILL
X_2796_ _531_ i_clk_sys_ext_bF$buf7 \u_rf_if.rreg0_latched\[4] vdd gnd DFFPOSX1
X_2376_ \u_mem_serial.active_we\ _1079_ vdd gnd INVX1
X_4522_ rf_read_reg0[1] _1906_ vdd gnd INVX1
X_4102_ \u_cpu.bufreg.i_imm\ _1146_ vdd gnd INVX1
XFILL_0__3794_ gnd vdd FILL
XFILL_0__4159_ gnd vdd FILL
XFILL_1__3955_ gnd vdd FILL
X_2185_ _1315__bF$buf0 _1304__bF$buf3 \u_mem_serial.shift_rx\[20] _1424_ vdd gnd OAI21X1
XFILL_0__2225_ gnd vdd FILL
X_4751_ i_rst_n_bF$buf0 vdd _1823_ i_clk_sys_ext_bF$buf28 has_fetched_first_insn vdd 
+ gnd
+ DFFSR
X_4331_ gnd _1516_ _1517_ _1518_ vdd gnd OAI21X1
XFILL_0__3183_ gnd vdd FILL
X_3602_ _2067_ i_clk_sys_ext_bF$buf13 \u_cpu.alu.cmp_r\ vdd gnd DFFPOSX1
XFILL_0__4388_ gnd vdd FILL
XFILL_1_BUFX2_insert159 gnd vdd FILL
XFILL_1__4549_ gnd vdd FILL
XFILL_1__4129_ gnd vdd FILL
X_3199_ _2110__bF$buf2 _2055_ _1739_ _1736_ vdd gnd NAND3X1
X_4560_ _1861__bF$buf5 _1930_ _1931_ \u_cpu.decode.i_wb_rdt\[26] vdd gnd OAI21X1
X_4140_ _1177_ _1159__bF$buf0 _1179_ _1096_ vdd gnd OAI21X1
XFILL_0__3239_ gnd vdd FILL
X_3831_ _666_ _663_ _664_ _623_ vdd gnd MUX2X1
X_3411_ _331_ _330_ _329_ _328_ _327_ vdd 
+ gnd
+ OAI22X1
X_4616_ rreg1[4] rf_rreq_bF$buf3 _1872__bF$buf3 _1967_ vdd gnd NAND3X1
XFILL_1__3993_ gnd vdd FILL
XFILL_1__3573_ gnd vdd FILL
XFILL_0__2263_ gnd vdd FILL
XFILL_1__2424_ gnd vdd FILL
X_2699_ _98_ _197_ _194_ _198_ vdd gnd AOI21X1
X_2279_ _1357_ _1358_ vdd gnd INVX1
X_3640_ _156_ \u_cpu.state.ibus_cyc\ \u_cpu.o_ibus_cyc\ vdd gnd AND2X2
X_3220_ _2108__bF$buf1 _2113_ _1752_ vdd gnd NAND2X1
XFILL_0__2319_ gnd vdd FILL
X_4425_ _1467_ i_clk_sys_ext_bF$buf27 \u_cpu.ctrl.pc\ vdd gnd DFFPOSX1
X_4005_ \u_cpu.bufreg.i_clr_lsb\ \u_cpu.alu.i_cnt0\ _928_ vdd gnd NAND2X1
XBUFX2_insert200 rf_rreq rf_rreq_bF$buf2 vdd gnd BUFX2
XBUFX2_insert201 rf_rreq rf_rreq_bF$buf1 vdd gnd BUFX2
XBUFX2_insert202 rf_rreq rf_rreq_bF$buf0 vdd gnd BUFX2
XBUFX2_insert203 \u_cpu.bufreg.i_en\ \u_cpu.bufreg.i_en_bF$buf4\ vdd gnd BUFX2
XBUFX2_insert204 \u_cpu.bufreg.i_en\ \u_cpu.bufreg.i_en_bF$buf3\ vdd gnd BUFX2
XFILL_1__4167_ gnd vdd FILL
XBUFX2_insert205 \u_cpu.bufreg.i_en\ \u_cpu.bufreg.i_en_bF$buf2\ vdd gnd BUFX2
XBUFX2_insert206 \u_cpu.bufreg.i_en\ \u_cpu.bufreg.i_en_bF$buf1\ vdd gnd BUFX2
XBUFX2_insert207 \u_cpu.bufreg.i_en\ \u_cpu.bufreg.i_en_bF$buf0\ vdd gnd BUFX2
XBUFX2_insert208 _1960_ _1960__bF$buf4 vdd gnd BUFX2
XBUFX2_insert209 _1960_ _1960__bF$buf3 vdd gnd BUFX2
X_2911_ \u_rf_if.write_wait\[0] _39_ _730_ _492_ vdd gnd AOI21X1
XFILL_0__3277_ gnd vdd FILL
XFILL143250x46950 gnd vdd FILL
XFILL_1__2233_ gnd vdd FILL
XBUFX2_insert0 _1959_ _1959__bF$buf4 vdd gnd BUFX2
XBUFX2_insert1 _1959_ _1959__bF$buf3 vdd gnd BUFX2
XBUFX2_insert2 _1959_ _1959__bF$buf2 vdd gnd BUFX2
XBUFX2_insert3 _1959_ _1959__bF$buf1 vdd gnd BUFX2
XBUFX2_insert4 _1959_ _1959__bF$buf0 vdd gnd BUFX2
XBUFX2_insert5 _13_ _13__bF$buf4 vdd gnd BUFX2
XBUFX2_insert6 _13_ _13__bF$buf3 vdd gnd BUFX2
XBUFX2_insert7 _13_ _13__bF$buf2 vdd gnd BUFX2
XBUFX2_insert8 _13_ _13__bF$buf1 vdd gnd BUFX2
XBUFX2_insert9 _13_ _13__bF$buf0 vdd gnd BUFX2
XFILL_1__3438_ gnd vdd FILL
X_4654_ mem_ibus_ack_bF$buf1 \u_mem_serial.shift_rx\[10] _1960__bF$buf0 _1987_ vdd gnd NAND3X1
X_4234_ mem_dbus_ack_bF$buf2 \u_mem_serial.shift_rx\[17] _1167__bF$buf2 _1256_ _1257_ vdd 
+ gnd
+ AOI22X1
XFILL_0_BUFX2_insert190 gnd vdd FILL
XFILL_0_BUFX2_insert192 gnd vdd FILL
XFILL_0_BUFX2_insert194 gnd vdd FILL
XFILL_0_BUFX2_insert196 gnd vdd FILL
XFILL_0_BUFX2_insert198 gnd vdd FILL
XFILL_1_CLKBUF1_insert244 gnd vdd FILL
XFILL_1__2709_ gnd vdd FILL
XFILL143250x126150 gnd vdd FILL
X_2720_ _79_ _111_ _115_ _116_ vdd gnd OAI21X1
X_2300_ \u_mem_serial.shift_rx\[5] _1297__bF$buf1 _1341_ vdd gnd NAND2X1
XFILL_0__3086_ gnd vdd FILL
X_3925_ _627_ i_clk_sys_ext_bF$buf21 rreg0[3] vdd gnd DFFPOSX1
X_3505_ \u_cpu.immdec.gen_immdec_w_eq_1.imm11_7\[2] _479__bF$buf2 _459_ vdd gnd NAND2X1
XFILL_1__3247_ gnd vdd FILL
XFILL_0__2357_ gnd vdd FILL
X_4463_ \u_cpu.immdec.gen_immdec_w_eq_1.imm11_7\[1] \u_cpu.immdec.gen_immdec_w_eq_1.imm11_7\[0] _1865_ vdd gnd NOR2X1
X_4043_ \u_cpu.bufreg.data\[13] _887__bF$buf1 _954_ vdd gnd NAND2X1
XFILL_0__4503_ gnd vdd FILL
X_3734_ _386_ \u_cpu.bufreg.i_imm_en\ \u_cpu.decode.co_immdec_en\[0] vdd gnd AND2X2
X_3314_ \u_rf_if.rreg0_latched\[0] \u_rf_if.rreg0_latched\[1] _2066_ vdd gnd NOR2X1
XFILL_1__2271_ gnd vdd FILL
X_4519_ \u_mem_serial.shift_rx\[1] _1904_ vdd gnd INVX1
XFILL_0__2586_ gnd vdd FILL
X_4692_ _1891_ _2009_ _2010_ _1852_ vdd gnd NAND3X1
X_4272_ _1282_ _1159__bF$buf4 _1284_ _1123_ vdd gnd OAI21X1
XFILL_1__2747_ gnd vdd FILL
X_3963_ \u_cpu.bufreg.i_en_bF$buf0\ \u_cpu.bufreg.data\[9] _901_ vdd gnd NAND2X1
X_3543_ \u_cpu.state.i_ctrl_misalign\ _2034_ _2033_ \u_cpu.mem_if.o_wb_sel\[1] vdd gnd OAI21X1
X_3123_ _479__bF$buf1 \u_rf_if.o_wen\ _1682_ vdd gnd NAND2X1
X_4748_ i_rst_n_bF$buf4 vdd _1826_ i_clk_sys_ext_bF$buf28 ibus_pending_rdt[22] vdd 
+ gnd
+ DFFSR
X_4328_ _1511_ _1515_ vdd gnd INVX1
XFILL_1__3285_ gnd vdd FILL
X_4081_ \u_cpu.bufreg.i_init\ _1127_ vdd gnd INVX1
X_2814_ _491_ i_clk_sys_ext_bF$buf2 \u_rf_if.o_waddr\[2] vdd gnd DFFPOSX1
XCLKBUF1_insert120 i_clk_sys_ext_hier0_bF$buf0 i_clk_sys_ext_bF$buf35 vdd gnd CLKBUF1
XCLKBUF1_insert121 i_clk_sys_ext_hier0_bF$buf0 i_clk_sys_ext_bF$buf34 vdd gnd CLKBUF1
XCLKBUF1_insert122 i_clk_sys_ext_hier0_bF$buf5 i_clk_sys_ext_bF$buf33 vdd gnd CLKBUF1
XCLKBUF1_insert123 i_clk_sys_ext_hier0_bF$buf5 i_clk_sys_ext_bF$buf32 vdd gnd CLKBUF1
XCLKBUF1_insert124 i_clk_sys_ext_hier0_bF$buf2 i_clk_sys_ext_bF$buf31 vdd gnd CLKBUF1
XCLKBUF1_insert125 i_clk_sys_ext_hier0_bF$buf3 i_clk_sys_ext_bF$buf30 vdd gnd CLKBUF1
XCLKBUF1_insert126 i_clk_sys_ext_hier0_bF$buf3 i_clk_sys_ext_bF$buf29 vdd gnd CLKBUF1
XCLKBUF1_insert127 i_clk_sys_ext_hier0_bF$buf1 i_clk_sys_ext_bF$buf28 vdd gnd CLKBUF1
XCLKBUF1_insert128 i_clk_sys_ext_hier0_bF$buf4 i_clk_sys_ext_bF$buf27 vdd gnd CLKBUF1
XCLKBUF1_insert129 i_clk_sys_ext_hier0_bF$buf2 i_clk_sys_ext_bF$buf26 vdd gnd CLKBUF1
XFILL_0__4121_ gnd vdd FILL
XFILL_1__2136_ gnd vdd FILL
X_3772_ rf_rreq_bF$buf6 _367_ _401_ _353_ vdd gnd OAI21X1
X_3352_ \u_rf_if.stream_cnt_0_bF$buf1\ \u_rf_if.stream_cnt_1_bF$buf1\ _27__bF$buf0 _23_ vdd gnd OAI21X1
X_4557_ _1861__bF$buf2 _1928_ _1929_ \u_cpu.decode.i_wb_rdt\[27] vdd gnd OAI21X1
X_4137_ \u_cpu.bufreg2.dlo\[4] _1177_ vdd gnd INVX1
XFILL_0__3812_ gnd vdd FILL
X_2623_ \u_rf_serial.last_req_key\[1] _260_ vdd gnd INVX1
X_2203_ _1312_ _1408_ _1296_ _1411_ vdd gnd OAI21X1
X_3828_ _656_ _657_ _664_ vdd gnd NAND2X1
X_3408_ \u_rf_if.read_buf0\[8] _324_ vdd gnd INVX1
XFILL_1__4511_ gnd vdd FILL
X_3581_ _2085_ _2087_ _2088_ vdd gnd NAND2X1
X_3161_ _1711_ _1710_ rst_bF$buf2 _567_ vdd gnd AOI21X1
X_4366_ _1541_ _1526_ _1540_ _1530_ _1474_ vdd 
+ gnd
+ OAI22X1
XFILL_0__3201_ gnd vdd FILL
X_2852_ _489_ i_clk_sys_ext_bF$buf25 \u_rf_if.rreg1_latched\[4] vdd gnd DFFPOSX1
X_2432_ \u_cpu.ctrl.o_ibus_adr\[22] _1023_ vdd gnd INVX1
X_3637_ _154_ \u_cpu.bufreg.i_init\ \u_cpu.bufreg.i_cnt_done\ _155_ vdd gnd NAND3X1
X_3217_ _2110__bF$buf3 _1800__bF$buf2 _1750_ _1749_ vdd gnd NAND3X1
XFILL_1__2594_ gnd vdd FILL
X_3390_ \u_rf_if.read_buf0\[26] \u_rf_if.stream_cnt_0_bF$buf5\ \u_rf_if.stream_cnt_1_bF$buf2\ _306_ vdd gnd OAI21X1
XBUFX2_insert170 mem_dbus_ack mem_dbus_ack_bF$buf4 vdd gnd BUFX2
XBUFX2_insert171 mem_dbus_ack mem_dbus_ack_bF$buf3 vdd gnd BUFX2
XBUFX2_insert172 mem_dbus_ack mem_dbus_ack_bF$buf2 vdd gnd BUFX2
XBUFX2_insert173 mem_dbus_ack mem_dbus_ack_bF$buf1 vdd gnd BUFX2
XBUFX2_insert174 mem_dbus_ack mem_dbus_ack_bF$buf0 vdd gnd BUFX2
XBUFX2_insert175 _660_ _660__bF$buf3 vdd gnd BUFX2
XBUFX2_insert176 _660_ _660__bF$buf2 vdd gnd BUFX2
XBUFX2_insert177 _660_ _660__bF$buf1 vdd gnd BUFX2
XBUFX2_insert178 _660_ _660__bF$buf0 vdd gnd BUFX2
XBUFX2_insert179 _2108_ _2108__bF$buf3 vdd gnd BUFX2
XFILL_0__2489_ gnd vdd FILL
X_4595_ current_wdata0_next_hint rf_wdata0_next rf_wdata0_next_to_if vdd gnd OR2X2
X_4175_ \u_cpu.bufreg.i_shamt\[2] _1208_ vdd gnd INVX1
XFILL_0__3850_ gnd vdd FILL
X_2908_ \u_rf_if.o_waddr\[2] _614_ _1702_ _613_ vdd gnd OAI21X1
XFILL_0__4635_ gnd vdd FILL
XFILL_0__4215_ gnd vdd FILL
X_2661_ _119_ _215__bF$buf2 _202_ _225_ vdd gnd OAI21X1
X_2241_ \u_mem_serial.shift_rx\[26] _1377__bF$buf1 _1387_ vdd gnd NAND2X1
X_3866_ \u_cpu.decode.i_wb_rdt\[14] \u_cpu.csr_imm\ rf_rreq_bF$buf4 _694_ vdd gnd MUX2X1
X_3446_ _378_ _400_ \u_rf_if.stream_cnt_1_bF$buf0\ _377_ vdd gnd MUX2X1
X_3026_ _1688__bF$buf2 _1741_ \u_rf_if.read_buf0\[10] _1611_ vdd gnd OAI21X1
XFILL_0__2701_ gnd vdd FILL
XFILL142950x111750 gnd vdd FILL
XFILL_0__3906_ gnd vdd FILL
XFILL_0__2298_ gnd vdd FILL
X_2717_ ren_bF$buf4 _117_ _118_ _119_ vdd gnd OAI21X1
XFILL_0__4024_ gnd vdd FILL
XFILL_1__2459_ gnd vdd FILL
XFILL_1__3400_ gnd vdd FILL
X_2890_ _605_ _482_ vdd gnd INVX1
X_2470_ \u_cpu.ctrl.o_ibus_adr\[27] _984_ vdd gnd INVX1
X_3675_ _158_ _171_ \u_cpu.state.init_done\ _178_ vdd gnd OAI21X1
X_3255_ _13__bF$buf0 _1780_ \u_rf_if.read_buf1\[23] _1779_ vdd gnd OAI21X1
XFILL_0__2930_ gnd vdd FILL
XFILL142350x36150 gnd vdd FILL
XFILL_0_BUFX2_insert71 gnd vdd FILL
XFILL_0_BUFX2_insert73 gnd vdd FILL
XFILL_0_BUFX2_insert75 gnd vdd FILL
XFILL_0_BUFX2_insert77 gnd vdd FILL
XFILL_0_BUFX2_insert79 gnd vdd FILL
X_2946_ _1443_ _1667_ _1442_ _504_ vdd gnd AOI21X1
X_2526_ _806_ _826_ _807_ _825_ _827_ vdd 
+ gnd
+ OAI22X1
XFILL_0__4253_ gnd vdd FILL
X_3484_ \u_rf_if.stream_cnt\[4] _444_ vdd gnd INVX1
X_3064_ _421_ _34_ _444_ _1636_ vdd gnd OAI21X1
X_4689_ _1921_ _2007_ _2008_ _1851_ vdd gnd NAND3X1
X_4269_ \u_cpu.bufreg2.dlo\[9] _1282_ vdd gnd INVX1
XFILL_0__4309_ gnd vdd FILL
X_2755_ _80_ _81_ vdd gnd INVX1
X_2335_ \u_mem_serial.state\[1] _1312_ vdd gnd INVX1
XFILL_0__4482_ gnd vdd FILL
XFILL_1__2497_ gnd vdd FILL
X_3293_ _8_ _15_ _1812_ vdd gnd NOR2X1
X_4498_ rf_read_reg1[1] _1890_ vdd gnd INVX1
X_4078_ _872_ i_clk_sys_ext_bF$buf14 \u_cpu.bufreg.data\[24] vdd gnd DFFPOSX1
XFILL_0__3333_ gnd vdd FILL
XFILL_0__4538_ gnd vdd FILL
X_2984_ \u_rf_if.read_buf0\[0] _1584_ _27__bF$buf3 _1582_ vdd gnd OAI21X1
X_2564_ _68_ i_clk_fast_bF$buf1 _2122_ vdd gnd DFFPOSX1
X_2144_ gnd o_gpio_oe[2] vdd gnd BUFX2
X_3769_ _776_ i_clk_fast_bF$buf5 \u_mem_serial.state\[1] vdd gnd DFFPOSX1
X_3349_ \u_rf_if.stream_cnt_0_bF$buf1\ \u_rf_if.stream_active\ _27__bF$buf0 _21_ vdd gnd OAI21X1
X_4710_ _2021_ _1959__bF$buf0 _2022_ _1858_ vdd gnd OAI21X1
XFILL_0__3982_ gnd vdd FILL
XFILL_0__4347_ gnd vdd FILL
XBUFX2_insert80 \u_mem_serial.bit_count\[0] \u_mem_serial.bit_count_0_bF$buf1\ vdd gnd BUFX2
XBUFX2_insert81 \u_mem_serial.bit_count\[0] \u_mem_serial.bit_count_0_bF$buf0\ vdd gnd BUFX2
XBUFX2_insert82 _1159_ _1159__bF$buf4 vdd gnd BUFX2
XBUFX2_insert83 _1159_ _1159__bF$buf3 vdd gnd BUFX2
XBUFX2_insert84 _1159_ _1159__bF$buf2 vdd gnd BUFX2
XBUFX2_insert85 _1159_ _1159__bF$buf1 vdd gnd BUFX2
XBUFX2_insert86 _1159_ _1159__bF$buf0 vdd gnd BUFX2
XBUFX2_insert87 i_rst_n i_rst_n_bF$buf5 vdd gnd BUFX2
XBUFX2_insert88 i_rst_n i_rst_n_bF$buf4 vdd gnd BUFX2
XBUFX2_insert89 i_rst_n i_rst_n_bF$buf3 vdd gnd BUFX2
X_2793_ _591_ i_clk_sys_ext_bF$buf33 \u_rf_if.read_buf1\[23] vdd gnd DFFPOSX1
X_2373_ _1047_ _978_ _1081_ _1082_ vdd gnd OAI21X1
X_3998_ \u_cpu.bufreg.i_en_bF$buf0\ \u_cpu.bufreg.data\[27] _924_ vdd gnd NAND2X1
X_3578_ rdata0[0] \u_cpu.alu.i_op_b\ _2085_ vdd gnd NAND2X1
X_3158_ _428_ _1709_ _1708_ _566_ vdd gnd AOI21X1
XFILL_0__2413_ gnd vdd FILL
XFILL_0__3618_ gnd vdd FILL
XFILL_0__3371_ gnd vdd FILL
X_2849_ _561_ i_clk_sys_ext_bF$buf2 \u_rf_if.o_waddr\[3] vdd gnd DFFPOSX1
X_2429_ \u_mem_serial.bit_count_0_bF$buf1\ _1025_ _1024_ _1026_ vdd gnd NAND3X1
XFILL_0__4576_ gnd vdd FILL
X_2182_ _794_ _1305_ _1426_ vdd gnd NOR2X1
XFILL_1__4317_ gnd vdd FILL
X_3387_ \u_rf_if.read_buf0\[28] \u_rf_if.stream_cnt_0_bF$buf5\ _303_ vdd gnd NOR2X1
XFILL_0__2642_ gnd vdd FILL
XFILL_0__3427_ gnd vdd FILL
XFILL_0__3007_ gnd vdd FILL
XFILL_0__3180_ gnd vdd FILL
X_2658_ _215__bF$buf1 _226_ rst_bF$buf1 _62_ vdd gnd AOI21X1
X_2238_ _1297__bF$buf2 _1046_ _1389_ vdd gnd NAND2X1
X_3196_ _13__bF$buf2 _1735_ \u_rf_if.read_buf1\[9] _1734_ vdd gnd OAI21X1
XFILL_0__2451_ gnd vdd FILL
X_2887_ \u_rf_if.stream_cnt\[3] _1726_ _27__bF$buf0 _602_ vdd gnd OAI21X1
X_2467_ _982_ _986_ _808_ _987_ vdd gnd AOI21X1
XFILL142950x32550 gnd vdd FILL
XFILL_0__4194_ gnd vdd FILL
XFILL_0__2927_ gnd vdd FILL
XFILL_0__2507_ gnd vdd FILL
X_4613_ mem_ibus_ack_bF$buf4 \u_mem_serial.shift_rx\[25] _1960__bF$buf1 _1965_ vdd gnd NAND3X1
XFILL_1__4355_ gnd vdd FILL
XFILL_0__2680_ gnd vdd FILL
XFILL_0__3885_ gnd vdd FILL
XFILL_0__3465_ gnd vdd FILL
XFILL_0__3045_ gnd vdd FILL
X_2696_ _200_ _108_ _77_ _2120_ vdd gnd AOI21X1
X_2276_ _1315__bF$buf2 _1304__bF$buf4 \u_mem_serial.shift_rx\[1] _1360_ vdd gnd OAI21X1
XFILL_0__2736_ gnd vdd FILL
X_4422_ \u_cpu.ctrl.i_jump\ _1522_ _1527_ _1577_ vdd gnd OAI21X1
X_4002_ \u_cpu.bufreg.data\[24] _926_ vdd gnd INVX1
XFILL_1__4584_ gnd vdd FILL
XFILL_0__3274_ gnd vdd FILL
XFILL_0__2965_ gnd vdd FILL
XFILL_0__2545_ gnd vdd FILL
X_4651_ _1879_ _1959__bF$buf1 _1985_ _1836_ vdd gnd OAI21X1
XFILL_0__2125_ gnd vdd FILL
X_4231_ _1252_ _1159__bF$buf2 _1254_ _1112_ vdd gnd OAI21X1
XFILL_0_BUFX2_insert169 gnd vdd FILL
X_3922_ _630_ i_clk_sys_ext_bF$buf19 \u_cpu.csr_imm\ vdd gnd DFFPOSX1
X_3502_ \u_cpu.immdec.gen_immdec_w_eq_1.imm11_7\[1] _479__bF$buf3 _457_ vdd gnd NAND2X1
X_4707_ _1913_ _2019_ _2020_ _1857_ vdd gnd NAND3X1
XFILL_1__3664_ gnd vdd FILL
X_3099_ _1662_ _1663_ _553_ vdd gnd NOR2X1
X_4460_ _1860_ _1861__bF$buf2 _1862_ \u_cpu.decode.i_wb_rdt\[17] vdd gnd OAI21X1
X_4040_ \u_cpu.bufreg.data\[14] _952_ vdd gnd INVX1
XFILL_0__3139_ gnd vdd FILL
X_3731_ \u_cpu.decode.opcode\[2] \u_cpu.bufreg.i_imm_en\ vdd gnd INVX2
X_3311_ \u_rf_if.issue_sel_bF$buf0\ _2064_ _2063_ vdd gnd NAND2X1
X_4516_ ibus_pending_rdt[22] _1902_ vdd gnd INVX1
XFILL_1__3473_ gnd vdd FILL
XFILL_0__3788_ gnd vdd FILL
XFILL_1__3109_ gnd vdd FILL
X_2599_ _206_ _205_ _283_ vdd gnd NOR2X1
X_2179_ _1315__bF$buf0 _1304__bF$buf3 \u_mem_serial.shift_rx\[19] _1428_ vdd gnd OAI21X1
X_3960_ \u_cpu.bufreg.data\[9] _887__bF$buf2 _899_ vdd gnd NAND2X1
X_3540_ \u_cpu.bufreg.data\[0] \u_cpu.state.i_ctrl_misalign\ \u_cpu.mem_if.o_wb_sel\[0] vdd gnd NOR2X1
X_3120_ \u_rf_if.rcnt\[2] rf_wdata0_next_to_if _1680_ _1679_ vdd gnd NAND3X1
XFILL_0__2219_ gnd vdd FILL
X_4745_ i_rst_n_bF$buf0 vdd _1829_ i_clk_sys_ext_bF$buf9 ibus_pending_rdt[19] vdd 
+ gnd
+ DFFSR
X_4325_ \u_cpu.bufreg.i_cnt1\ \u_cpu.cnt2\ gnd _1513_ vdd gnd MUX2X1
XFILL_0__2392_ gnd vdd FILL
X_2811_ _582_ i_clk_sys_ext_bF$buf38 \u_rf_if.read_buf1\[14] vdd gnd DFFPOSX1
X_4554_ _1861__bF$buf0 _1926_ _1927_ \u_cpu.decode.i_wb_rdt\[28] vdd gnd OAI21X1
X_4134_ mem_dbus_ack_bF$buf0 _1171_ _1175_ vdd gnd NOR2X1
XFILL_1__2609_ gnd vdd FILL
X_2620_ ren_bF$buf2 _262_ _263_ vdd gnd NAND2X1
X_2200_ mem_dbus_ack_bF$buf6 _1297__bF$buf0 _1413_ _1414_ vdd gnd MUX2X1
X_3825_ _656_ \u_cpu.decode.i_wb_rdt\[19] _659_ _662_ vdd gnd OAI21X1
X_3405_ \u_rf_if.read_buf0\[10] _321_ vdd gnd INVX1
XFILL_1__3147_ gnd vdd FILL
X_4363_ \u_cpu.ctrl.o_ibus_adr\[22] _1540_ vdd gnd INVX1
XFILL143250x32550 gnd vdd FILL
XFILL_0__4403_ gnd vdd FILL
XFILL_0_CLKBUF1_insert150 gnd vdd FILL
XFILL_0_CLKBUF1_insert152 gnd vdd FILL
XFILL_0_CLKBUF1_insert155 gnd vdd FILL
X_3634_ \u_cpu.branch_op\ _152_ vdd gnd INVX1
X_3214_ _2110__bF$buf3 _1750_ _2055_ _1747_ vdd gnd NAND3X1
XFILL_1__2171_ gnd vdd FILL
X_4419_ \u_cpu.ctrl.o_ibus_adr\[31] _1525__bF$buf0 _1574_ vdd gnd NAND2X1
XFILL_0__2486_ gnd vdd FILL
X_4592_ rf_read_reg0[4] _1952_ vdd gnd INVX1
X_4172_ mem_dbus_ack_bF$buf0 \u_mem_serial.shift_rx\[29] _1193_ _1205_ _1206_ vdd 
+ gnd
+ AOI22X1
X_2905_ _475_ _615_ _612_ _490_ vdd gnd AOI21X1
XFILL_0__4632_ gnd vdd FILL
X_3863_ \u_cpu.decode.i_wb_rdt\[15] rreg0[1] rf_rreq_bF$buf1 _692_ vdd gnd MUX2X1
X_3443_ \u_rf_if.read_buf1\[31] _441__bF$buf1 _374_ vdd gnd NOR2X1
X_3023_ _1688__bF$buf4 _1735_ \u_rf_if.read_buf0\[9] _1609_ vdd gnd OAI21X1
X_4648_ mem_ibus_ack_bF$buf0 \u_mem_serial.shift_rx\[13] _1960__bF$buf2 _1984_ vdd gnd NAND3X1
X_4228_ \u_cpu.bufreg2.dlo\[18] _1252_ vdd gnd INVX1
XFILL_1__3185_ gnd vdd FILL
X_2714_ _91_ _121_ _122_ vdd gnd NAND2X1
X_3919_ _633_ i_clk_sys_ext_bF$buf33 \u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20\[1] vdd gnd DFFPOSX1
X_3672_ rst_bF$buf8 _152_ _176_ vdd gnd NOR2X1
X_3252_ _1779_ _1777_ rst_bF$buf6 _591_ vdd gnd AOI21X1
X_4457_ ibus_pending_rdt[17] _1860_ vdd gnd INVX1
X_4037_ \u_cpu.bufreg.i_en_bF$buf1\ _949_ _950_ _882_ vdd gnd OAI21X1
XFILL_0_BUFX2_insert40 gnd vdd FILL
XFILL_0_BUFX2_insert42 gnd vdd FILL
XFILL_0_BUFX2_insert44 gnd vdd FILL
XFILL_0_BUFX2_insert46 gnd vdd FILL
XFILL_0_BUFX2_insert48 gnd vdd FILL
X_2943_ _746_ _745_ _1663_ _503_ vdd gnd AOI21X1
X_2523_ \u_mem_serial.bit_count\[4] _830_ vdd gnd INVX1
XFILL_0__4670_ gnd vdd FILL
X_3728_ _379_ _380_ _383_ \u_cpu.alu.i_sub\ vdd gnd OAI21X1
X_3308_ \u_rf_if.rreg1_latched\[3] \u_rf_if.rreg1_latched\[4] _2060_ vdd gnd NOR2X1
X_3481_ \u_rf_if.stream_cnt_0_bF$buf2\ _441_ vdd gnd INVX8
X_3061_ _1688__bF$buf4 _1774_ \u_rf_if.read_buf0\[21] _1634_ vdd gnd OAI21X1
X_4686_ _1919_ _2005_ _2006_ _1850_ vdd gnd NAND3X1
X_4266_ mem_dbus_ack_bF$buf4 _1276_ _1280_ vdd gnd NOR2X1
XFILL_0__3521_ gnd vdd FILL
XFILL_0__3101_ gnd vdd FILL
X_2752_ \u_rf_serial.tx_state\[1] _84_ vdd gnd INVX1
X_2332_ _1314_ _1315_ vdd gnd INVX8
X_3957_ \u_cpu.bufreg.data\[10] _897_ vdd gnd INVX1
X_3537_ \u_cpu.alu.i_sub\ _1794_ rf_wdata0_next vdd gnd NOR2X1
X_3117_ \u_rf_if.write_wait\[4] _1677_ vdd gnd INVX1
X_3290_ _2110__bF$buf0 _5__bF$buf2 _1810_ _1809_ vdd gnd NAND3X1
X_4495_ ibus_pending_rdt[21] _1888_ vdd gnd INVX1
X_4075_ _875_ i_clk_sys_ext_bF$buf26 \u_cpu.bufreg.data\[22] vdd gnd DFFPOSX1
XFILL_0__3750_ gnd vdd FILL
X_2808_ _528_ i_clk_sys_ext_bF$buf10 \u_rf_if.read_buf0\[10] vdd gnd DFFPOSX1
XFILL_0__4115_ gnd vdd FILL
X_2981_ rf_read_reg1_to_if[0] _1693_ _27__bF$buf1 _1580_ vdd gnd OAI21X1
X_2561_ _59_ i_clk_fast_bF$buf0 \u_rf_serial.last_req_key\[5] vdd gnd DFFPOSX1
X_2141_ gnd o_gpio_oe[5] vdd gnd BUFX2
X_3766_ _398_ _399_ \u_cpu.decode.opcode\[2] \u_cpu.decode.co_two_stage_op\ vdd gnd OAI21X1
X_3346_ \u_rf_if.issue_idx\[5] _19_ vdd gnd INVX1
XFILL_0__2601_ gnd vdd FILL
XFILL_0__2198_ gnd vdd FILL
X_2617_ _257_ _265_ _266_ vdd gnd NOR2X1
XFILL_0__4344_ gnd vdd FILL
XFILL_1__2359_ gnd vdd FILL
XBUFX2_insert50 _1688_ _1688__bF$buf3 vdd gnd BUFX2
XBUFX2_insert51 _1688_ _1688__bF$buf2 vdd gnd BUFX2
XBUFX2_insert52 _1688_ _1688__bF$buf1 vdd gnd BUFX2
XBUFX2_insert53 _1688_ _1688__bF$buf0 vdd gnd BUFX2
XBUFX2_insert54 ren ren_bF$buf4 vdd gnd BUFX2
XBUFX2_insert55 ren ren_bF$buf3 vdd gnd BUFX2
XFILL_1__3300_ gnd vdd FILL
XBUFX2_insert56 ren ren_bF$buf2 vdd gnd BUFX2
XBUFX2_insert57 ren ren_bF$buf1 vdd gnd BUFX2
XBUFX2_insert58 ren ren_bF$buf0 vdd gnd BUFX2
XBUFX2_insert59 _1800_ _1800__bF$buf3 vdd gnd BUFX2
X_2790_ _485_ i_clk_sys_ext_bF$buf2 \u_rf_if.wdata0_r\[0] vdd gnd DFFPOSX1
X_2370_ _1045_ _1083_ _1085_ vdd gnd OR2X2
X_3995_ \u_cpu.bufreg.data\[27] _887__bF$buf2 _922_ vdd gnd NAND2X1
X_3575_ \u_cpu.alu.i_rd_sel\[0] _2081_ _2076_ _2082_ vdd gnd NAND3X1
X_3155_ _1706_ _27__bF$buf3 _565_ vdd gnd AND2X2
XFILL142650x10950 gnd vdd FILL
X_2846_ _519_ i_clk_sys_ext_bF$buf32 \u_rf_if.read_buf0\[4] vdd gnd DFFPOSX1
X_2426_ \u_mem_serial.active_ibus_bF$buf6\ _1028_ _1029_ vdd gnd NAND2X1
X_3384_ \u_rf_if.read_buf0\[30] \u_rf_if.stream_cnt_0_bF$buf5\ \u_rf_if.stream_cnt_1_bF$buf2\ _300_ vdd gnd OAI21X1
X_4589_ rf_read_reg1[4] _1950_ vdd gnd INVX1
X_4169_ _1128_ _1202_ mem_dbus_ack_bF$buf0 _1203_ vdd gnd AOI21X1
XFILL_0__3844_ gnd vdd FILL
XFILL_0__4209_ gnd vdd FILL
X_2655_ ren_bF$buf4 _121_ _228_ _229_ vdd gnd OAI21X1
X_2235_ rst_bF$buf9 _1390_ _768_ vdd gnd NOR2X1
XFILL_0__4382_ gnd vdd FILL
XFILL_1__2397_ gnd vdd FILL
X_3193_ _13__bF$buf2 _1735_ \u_rf_if.read_buf1\[8] _1732_ vdd gnd OAI21X1
X_4398_ _1525__bF$buf3 _1559_ _1560_ _1487_ vdd gnd OAI21X1
XFILL_0__3233_ gnd vdd FILL
XFILL_0__4018_ gnd vdd FILL
XFILL_1__3814_ gnd vdd FILL
X_2884_ _542_ i_clk_sys_ext_bF$buf33 \u_rf_if.read_buf0\[22] vdd gnd DFFPOSX1
X_2464_ _806_ _989_ _807_ _988_ _990_ vdd 
+ gnd
+ OAI22X1
X_3669_ \u_cpu.bne_or_bge\ _173_ vdd gnd INVX1
X_3249_ _1776_ _1775_ rst_bF$buf6 _590_ vdd gnd AOI21X1
X_4610_ _1928_ _1959__bF$buf2 _1963_ _1817_ vdd gnd OAI21X1
XFILL_0__3042_ gnd vdd FILL
XFILL_0__4247_ gnd vdd FILL
X_2693_ rst_bF$buf1 _201_ _52_ vdd gnd NOR2X1
X_2273_ _1314_ _1362_ _1303_ _1363_ vdd gnd NAND3X1
X_3898_ rreg1[2] _680_ _716_ vdd gnd NAND2X1
X_3478_ \u_rf_if.read_buf1\[15] _441__bF$buf0 _438_ vdd gnd NOR2X1
X_3058_ _1688__bF$buf4 _1774_ \u_rf_if.read_buf0\[20] _1632_ vdd gnd OAI21X1
XFILL_0__2313_ gnd vdd FILL
X_2749_ \u_rf_serial.tx_state\[2] _87_ vdd gnd INVX1
X_2329_ _1317_ _1318_ vdd gnd INVX1
XFILL_0__4476_ gnd vdd FILL
XFILL_1__3852_ gnd vdd FILL
XFILL_1__4637_ gnd vdd FILL
XFILL_1__4217_ gnd vdd FILL
X_3287_ rdata[0] _1812_ _2057_ _1807_ vdd gnd NAND3X1
XFILL142350x126150 gnd vdd FILL
XFILL_0__3327_ gnd vdd FILL
XFILL_1__4390_ gnd vdd FILL
XFILL_0__3080_ gnd vdd FILL
X_2978_ _1594_ _1579_ _1578_ vdd gnd OR2X2
X_2558_ \u_mem_serial.bit_count\[2] \u_mem_serial.bit_count\[3] _795_ vdd gnd NOR2X1
X_2138_ gnd o_gpio[0] vdd gnd BUFX2
X_4704_ _1907_ _2017_ _2018_ _1856_ vdd gnd NAND3X1
X_3096_ _1661_ _1660_ _39_ _1659_ vdd gnd OAI21X1
XFILL_0__2351_ gnd vdd FILL
XFILL_0__3976_ gnd vdd FILL
XFILL_0__3556_ gnd vdd FILL
XFILL_0__3136_ gnd vdd FILL
XFILL_1__2932_ gnd vdd FILL
XFILL_1__2512_ gnd vdd FILL
X_2787_ _594_ i_clk_sys_ext_bF$buf15 \u_rf_if.read_buf1\[26] vdd gnd DFFPOSX1
X_2367_ _845_ \u_mem_serial.active_we\ \u_mem_serial.active_ibus_bF$buf3\ _840_ _1088_ vdd 
+ gnd
+ AOI22X1
XFILL_0__4094_ gnd vdd FILL
XFILL_0__2407_ gnd vdd FILL
X_4513_ ibus_pending_rdt[23] _1900_ vdd gnd INVX1
XFILL_1__3890_ gnd vdd FILL
XFILL_1__4255_ gnd vdd FILL
XFILL_0__2580_ gnd vdd FILL
XFILL_0__2160_ gnd vdd FILL
XFILL_1__2321_ gnd vdd FILL
X_2596_ _190_ _215__bF$buf1 _202_ _285_ vdd gnd OAI21X1
X_2176_ _1315__bF$buf4 _1304__bF$buf2 \u_mem_serial.shift_rx\[18] _1430_ vdd gnd OAI21X1
XFILL_0__2636_ gnd vdd FILL
X_4742_ i_rst_n_bF$buf0 vdd _1832_ i_clk_sys_ext_bF$buf9 ibus_pending_rdt[16] vdd 
+ gnd
+ DFFSR
X_4322_ _1510_ _1496_ _1506_ _1649_ vdd gnd AOI21X1
XFILL_1__4484_ gnd vdd FILL
XFILL142650x150 gnd vdd FILL
XFILL_0__3594_ gnd vdd FILL
XFILL_0__3174_ gnd vdd FILL
XFILL_1__3755_ gnd vdd FILL
XFILL_1__3335_ gnd vdd FILL
XFILL_0__2445_ gnd vdd FILL
X_4551_ _1861__bF$buf3 _1924_ _1925_ \u_cpu.decode.i_wb_rdt\[29] vdd gnd OAI21X1
X_4131_ mem_dbus_ack_bF$buf0 \u_mem_serial.shift_rx\[6] _1167__bF$buf1 _1172_ _1173_ vdd 
+ gnd
+ AOI22X1
X_3822_ _657_ _658_ _656_ _659_ vdd gnd OAI21X1
X_3402_ _319_ _322_ \u_rf_if.stream_cnt_1_bF$buf3\ _318_ vdd gnd MUX2X1
XFILL_0__4188_ gnd vdd FILL
X_4607_ mem_ibus_ack_bF$buf1 \u_mem_serial.shift_rx\[28] _1960__bF$buf0 _1962_ vdd gnd NAND3X1
XFILL_0__2674_ gnd vdd FILL
XFILL_0__2254_ gnd vdd FILL
X_4360_ _1538_ _1526_ _1537_ _1530_ _1471_ vdd 
+ gnd
+ OAI22X1
XFILL_0__3879_ gnd vdd FILL
XFILL_0__3459_ gnd vdd FILL
XFILL_0_CLKBUF1_insert121 gnd vdd FILL
XFILL_0_CLKBUF1_insert123 gnd vdd FILL
XFILL_0_CLKBUF1_insert125 gnd vdd FILL
XFILL_0_CLKBUF1_insert127 gnd vdd FILL
XFILL_0_CLKBUF1_insert129 gnd vdd FILL
X_3631_ \u_cpu.bufreg2.o_sh_done\ _149_ vdd gnd INVX1
X_3211_ _13__bF$buf1 _1746_ \u_rf_if.read_buf1\[13] _1745_ vdd gnd OAI21X1
X_4416_ \u_cpu.ctrl.o_ibus_adr\[5] _1548_ _1572_ vdd gnd NAND2X1
XFILL_1__3373_ gnd vdd FILL
X_2902_ \u_rf_if.o_waddr\[0] _1700_ _1702_ _610_ vdd gnd OAI21X1
XFILL_0__3268_ gnd vdd FILL
XFILL_1__2644_ gnd vdd FILL
XFILL_1__3009_ gnd vdd FILL
X_2499_ \u_cpu.ctrl.o_ibus_adr\[10] _854_ vdd gnd INVX1
XFILL143250x133350 gnd vdd FILL
X_3860_ \u_cpu.decode.i_wb_rdt\[16] rreg0[2] rf_rreq_bF$buf7 _690_ vdd gnd MUX2X1
X_3440_ _443_ _369_ \u_rf_if.stream_cnt\[3] _359_ vdd gnd OAI21X1
X_3020_ \u_rf_if.rreg1_latched\[4] _1607_ vdd gnd INVX1
XFILL_0__2959_ gnd vdd FILL
XFILL_0__2539_ gnd vdd FILL
X_4645_ mem_ibus_ack_bF$buf4 \u_mem_serial.shift_rx\[14] _1960__bF$buf1 _1982_ vdd gnd NAND3X1
X_4225_ mem_dbus_ack_bF$buf4 _1246_ _1250_ vdd gnd NOR2X1
XFILL_0__3900_ gnd vdd FILL
XFILL_0__2292_ gnd vdd FILL
XFILL_1_CLKBUF1_insert152 gnd vdd FILL
XFILL_1_CLKBUF1_insert155 gnd vdd FILL
X_2711_ _116_ _162_ _165_ vdd gnd NOR2X1
X_3916_ \u_cpu.immdec.gen_immdec_w_eq_1.imm11_7\[0] _683_ _728_ vdd gnd NAND2X1
XFILL_0__2348_ gnd vdd FILL
X_4454_ _1483_ i_clk_sys_ext_bF$buf40 \u_cpu.ctrl.o_ibus_adr\[15] vdd gnd DFFPOSX1
X_4034_ _887__bF$buf0 _933_ _948_ _881_ vdd gnd OAI21X1
XFILL_1__2509_ gnd vdd FILL
XFILL_0_BUFX2_insert10 gnd vdd FILL
XFILL_0_BUFX2_insert12 gnd vdd FILL
XFILL_0_BUFX2_insert14 gnd vdd FILL
XFILL_0_BUFX2_insert17 gnd vdd FILL
XFILL_0_BUFX2_insert19 gnd vdd FILL
X_2940_ _744_ _743_ _1663_ _502_ vdd gnd AOI21X1
X_2520_ \u_mem_serial.bit_count\[4] _832_ _833_ vdd gnd NAND2X1
X_3725_ \u_cpu.branch_op\ _381_ vdd gnd INVX2
X_3305_ _2061_ _2058_ _2062_ _2066_ _2057_ vdd 
+ gnd
+ AOI22X1
XFILL_1__2682_ gnd vdd FILL
XFILL_1__3887_ gnd vdd FILL
XFILL_1__3047_ gnd vdd FILL
X_4683_ _2003_ _1959__bF$buf3 _2004_ _1849_ vdd gnd OAI21X1
X_4263_ mem_dbus_ack_bF$buf1 \u_mem_serial.shift_rx\[11] _1167__bF$buf0 _1277_ _1278_ vdd 
+ gnd
+ AOI22X1
X_3954_ \u_cpu.bufreg.data\[12] _895_ vdd gnd INVX1
X_3534_ _871_ i_clk_sys_ext_bF$buf26 \u_cpu.bufreg.data\[25] vdd gnd DFFPOSX1
X_3114_ _1676_ _1675_ _1674_ vdd gnd NAND2X1
X_4739_ i_rst_n_bF$buf2 vdd _1835_ i_clk_sys_ext_bF$buf29 ibus_pending_rdt[13] vdd 
+ gnd
+ DFFSR
X_4319_ \u_cpu.ctrl.i_utype\ \u_cpu.cnt12to31\ \u_cpu.bufreg.i_imm\ _1508_ vdd gnd NAND3X1
XFILL_0__2386_ gnd vdd FILL
X_4492_ ibus_pending_rdt[16] _1886_ vdd gnd INVX1
X_4072_ _878_ i_clk_sys_ext_bF$buf26 \u_cpu.bufreg.data\[19] vdd gnd DFFPOSX1
X_2805_ _585_ i_clk_sys_ext_bF$buf20 \u_rf_if.read_buf1\[17] vdd gnd DFFPOSX1
XFILL_0__4532_ gnd vdd FILL
XFILL_1__2967_ gnd vdd FILL
XFILL_1__2547_ gnd vdd FILL
X_3763_ \u_cpu.branch_op\ \u_cpu.decode.opcode\[2] \u_cpu.dbus_en\ vdd gnd NOR2X1
X_3343_ \u_rf_if.issue_chunk\[1] \u_rf_if.issue_chunk\[2] _16_ vdd gnd NOR2X1
X_4548_ ibus_pending_ack_bF$buf1 _1922_ _1923_ \u_cpu.decode.i_wb_rdt\[30] vdd gnd OAI21X1
X_4128_ _1148_ _1159__bF$buf1 _1170_ _1093_ vdd gnd OAI21X1
X_2614_ _214_ _267_ _268_ _269_ vdd gnd NAND3X1
X_3819_ rf_rreq_bF$buf4 _656_ vdd gnd INVX2
XBUFX2_insert20 _479_ _479__bF$buf2 vdd gnd BUFX2
XBUFX2_insert21 _479_ _479__bF$buf1 vdd gnd BUFX2
XBUFX2_insert22 _479_ _479__bF$buf0 vdd gnd BUFX2
XBUFX2_insert23 _1377_ _1377__bF$buf3 vdd gnd BUFX2
XBUFX2_insert24 _1377_ _1377__bF$buf2 vdd gnd BUFX2
XBUFX2_insert25 _1377_ _1377__bF$buf1 vdd gnd BUFX2
XBUFX2_insert26 _1377_ _1377__bF$buf0 vdd gnd BUFX2
XBUFX2_insert27 _441_ _441__bF$buf3 vdd gnd BUFX2
XBUFX2_insert28 _441_ _441__bF$buf2 vdd gnd BUFX2
XBUFX2_insert29 _441_ _441__bF$buf1 vdd gnd BUFX2
X_3992_ \u_cpu.bufreg.data\[28] _920_ vdd gnd INVX1
X_3572_ \u_cpu.alu.i_sub\ \u_cpu.alu.i_op_b\ _2079_ vdd gnd NAND2X1
X_3152_ \u_cpu.o_wen0\ _479__bF$buf2 _27__bF$buf4 _1704_ vdd gnd OAI21X1
X_4357_ \u_cpu.ctrl.o_ibus_adr\[25] _1537_ vdd gnd INVX1
XFILL_0__3612_ gnd vdd FILL
X_2843_ _483_ i_clk_sys_ext_bF$buf0 \u_rf_if.rcnt\[2] vdd gnd DFFPOSX1
X_2423_ \u_cpu.bufreg.data\[20] _1032_ vdd gnd INVX1
XFILL_0__4570_ gnd vdd FILL
XFILL_0__4150_ gnd vdd FILL
X_3628_ \u_cpu.state.init_done\ _137_ _138_ _146_ vdd gnd NAND3X1
X_3208_ _13__bF$buf1 _1746_ \u_rf_if.read_buf1\[12] _1743_ vdd gnd OAI21X1
X_3381_ _298_ _304_ _297_ vdd gnd NOR2X1
X_4586_ rf_rreq_bF$buf5 _1948_ vdd gnd INVX2
X_4166_ _1126_ _1196_ _1200_ _1101_ vdd gnd OAI21X1
XFILL_0__3841_ gnd vdd FILL
XFILL_0__3421_ gnd vdd FILL
XFILL_0__3001_ gnd vdd FILL
XFILL_0__4626_ gnd vdd FILL
X_2652_ _207_ _205_ _231_ vdd gnd NAND2X1
X_2232_ _805_ _1376_ _1308_ _1392_ vdd gnd OAI21X1
X_3857_ \u_cpu.decode.i_wb_rdt\[17] rreg0[3] rf_rreq_bF$buf1 _688_ vdd gnd MUX2X1
X_3437_ \u_rf_if.read_buf1\[17] \u_rf_if.stream_cnt_0_bF$buf2\ _352_ vdd gnd NAND2X1
X_3017_ raddr[8] _1668_ _27__bF$buf2 _1604_ vdd gnd OAI21X1
XFILL_1__2394_ gnd vdd FILL
XFILL_1_BUFX2_insert83 gnd vdd FILL
XFILL_1_BUFX2_insert86 gnd vdd FILL
X_3190_ _1781_ _2108__bF$buf3 _1730_ vdd gnd NAND2X1
X_4395_ _1525__bF$buf4 _1557_ _1558_ _1486_ vdd gnd OAI21X1
X_2708_ ren_bF$buf1 raddr[1] _189_ vdd gnd NAND2X1
XFILL142350x43350 gnd vdd FILL
X_2881_ _511_ i_clk_sys_ext_bF$buf7 raddr[7] vdd gnd DFFPOSX1
X_2461_ \u_mem_serial.active_ibus_bF$buf2\ _992_ _994_ vdd gnd NAND2X1
X_3666_ \u_cpu.bufreg.i_init\ \u_cpu.bufreg.i_cnt_done\ _170_ vdd gnd NAND2X1
X_3246_ _0_ _1813_ _1811_ _1772_ vdd gnd NOR3X1
XFILL_0__2921_ gnd vdd FILL
XFILL_0__2501_ gnd vdd FILL
X_2937_ _742_ _741_ _1663_ _501_ vdd gnd AOI21X1
X_2517_ \u_mem_serial.active_ibus_bF$buf5\ \u_cpu.bufreg.data\[14] \u_mem_serial.bit_count_0_bF$buf0\ _836_ vdd gnd OAI21X1
XFILL_0__4664_ gnd vdd FILL
XFILL_0__4244_ gnd vdd FILL
XFILL_1__2259_ gnd vdd FILL
XFILL_1__3620_ gnd vdd FILL
X_2690_ \u_rf_serial.tx_state\[3] _88_ _204_ vdd gnd NOR2X1
X_2270_ i_mem_miso _1297__bF$buf1 _1365_ vdd gnd NAND2X1
XFILL_1__4405_ gnd vdd FILL
X_3895_ rreg1[3] _680_ _714_ vdd gnd NAND2X1
X_3475_ _443_ _436_ _435_ vdd gnd NOR2X1
X_3055_ _1688__bF$buf2 _1765_ \u_rf_if.read_buf0\[19] _1630_ vdd gnd OAI21X1
XFILL_0__2730_ gnd vdd FILL
XFILL_0__3515_ gnd vdd FILL
X_2746_ _88_ _89_ _90_ vdd gnd AND2X2
X_2326_ _1315__bF$buf5 _1304__bF$buf3 \u_mem_serial.shift_rx\[11] _1320_ vdd gnd OAI21X1
XFILL_0__4473_ gnd vdd FILL
X_3284_ _1805_ _1808_ rst_bF$buf7 _596_ vdd gnd AOI21X1
XFILL_0_BUFX2_insert100 gnd vdd FILL
XFILL_0_BUFX2_insert102 gnd vdd FILL
XFILL_0_BUFX2_insert104 gnd vdd FILL
XFILL_0_BUFX2_insert106 gnd vdd FILL
XFILL_0_BUFX2_insert109 gnd vdd FILL
X_4489_ _1861__bF$buf2 _1883_ _1884_ \u_cpu.decode.i_wb_rdt\[2] vdd gnd OAI21X1
X_4069_ _881_ i_clk_sys_ext_bF$buf13 \u_cpu.bufreg.data\[31] vdd gnd DFFPOSX1
XFILL_0__3744_ gnd vdd FILL
XFILL_0__4109_ gnd vdd FILL
X_2975_ _1463_ _1595_ _1462_ vdd gnd NAND2X1
X_2555_ \u_mem_serial.bit_count_0_bF$buf3\ _798_ vdd gnd INVX4
X_2135_ gnd o_gpio[3] vdd gnd BUFX2
XFILL142650x86550 gnd vdd FILL
X_4701_ _1875_ _2015_ _2016_ _1855_ vdd gnd NAND3X1
X_3093_ _5__bF$buf2 _1686__bF$buf2 _1806_ _1657_ vdd gnd NAND3X1
X_4298_ _1116_ i_clk_sys_ext_bF$buf37 \u_cpu.bufreg2.dlo\[23] vdd gnd DFFPOSX1
XFILL_0__4338_ gnd vdd FILL
X_2784_ _534_ i_clk_sys_ext_bF$buf15 \u_rf_if.read_buf0\[15] vdd gnd DFFPOSX1
X_2364_ \u_cpu.mem_if.o_wb_sel\[1] _1091_ vdd gnd INVX1
X_3989_ _887__bF$buf0 _917_ _918_ _866_ vdd gnd OAI21X1
X_3569_ _2068_ _2070_ _2075_ _2076_ vdd gnd NAND3X1
X_3149_ _454_ _479__bF$buf2 _1703_ _562_ vdd gnd AOI21X1
X_4510_ rf_read_reg0[3] _1898_ vdd gnd INVX1
XFILL_1__4672_ gnd vdd FILL
XFILL_0__3362_ gnd vdd FILL
XFILL_1__3523_ gnd vdd FILL
X_2593_ _98_ _210_ _287_ vdd gnd NAND2X1
X_2173_ _1315__bF$buf0 _1304__bF$buf3 \u_mem_serial.shift_rx\[17] _1432_ vdd gnd OAI21X1
X_3798_ _361_ i_clk_sys_ext_bF$buf13 \u_cpu.decode.opcode\[2] vdd gnd DFFPOSX1
X_3378_ \u_rf_if.read_buf0\[19] _441__bF$buf3 _51_ vdd gnd NOR2X1
XFILL_0__2213_ gnd vdd FILL
XFILL142050x133350 gnd vdd FILL
XFILL142650x126150 gnd vdd FILL
X_2649_ \u_rf_serial.last_req_key\[4] _114_ _234_ vdd gnd NAND2X1
X_2229_ _1315__bF$buf5 _799_ _1393_ _771_ vdd gnd AOI21X1
XFILL_0__4376_ gnd vdd FILL
XFILL_1__3752_ gnd vdd FILL
XFILL_1__4117_ gnd vdd FILL
X_3187_ _2110__bF$buf1 _1800__bF$buf1 _1728_ _1727_ vdd gnd NAND3X1
X_2878_ _545_ i_clk_sys_ext_bF$buf38 \u_rf_if.read_buf1\[31] vdd gnd DFFPOSX1
X_2458_ \u_mem_serial.active_ibus_bF$buf3\ \u_cpu.bufreg.data\[31] _997_ vdd gnd OR2X2
X_4604_ _1861__bF$buf2 _1874_ _1960_ vdd gnd NAND2X1
XFILL_1__3561_ gnd vdd FILL
XFILL_0__2671_ gnd vdd FILL
XFILL_0__3456_ gnd vdd FILL
XFILL_0__3036_ gnd vdd FILL
X_2687_ _206_ _207_ vdd gnd INVX1
X_2267_ _1364_ _1367_ rst_bF$buf5 _759_ vdd gnd AOI21X1
XFILL142650x18150 gnd vdd FILL
XFILL_0__2307_ gnd vdd FILL
X_4413_ _1506_ _1570_ _1569_ _1492_ vdd gnd AOI21X1
XFILL_1__3790_ gnd vdd FILL
XFILL_1__4155_ gnd vdd FILL
XFILL_0__2480_ gnd vdd FILL
XFILL_0__3685_ gnd vdd FILL
XFILL_1__2221_ gnd vdd FILL
X_2496_ \u_mem_serial.bit_count_0_bF$buf1\ _957_ _956_ _958_ vdd gnd NAND3X1
X_4642_ _1886_ _1959__bF$buf3 _1980_ _1832_ vdd gnd OAI21X1
X_4222_ \u_mem_serial.shift_rx\[20] mem_dbus_ack_bF$buf6 _1167__bF$buf3 _1247_ _1248_ vdd 
+ gnd
+ AOI22X1
XFILL_1_CLKBUF1_insert121 gnd vdd FILL
XFILL_1_CLKBUF1_insert125 gnd vdd FILL
XFILL_1_CLKBUF1_insert129 gnd vdd FILL
XFILL_0__3494_ gnd vdd FILL
XFILL_0__3074_ gnd vdd FILL
X_3913_ \u_cpu.immdec.gen_immdec_w_eq_1.imm11_7\[1] _683_ _726_ vdd gnd NAND2X1
XFILL_0__4699_ gnd vdd FILL
XFILL_1__3235_ gnd vdd FILL
X_4451_ _1471_ i_clk_sys_ext_bF$buf40 \u_cpu.ctrl.o_ibus_adr\[24] vdd gnd DFFPOSX1
X_4031_ \u_cpu.bufreg.i_sh_signed\ _946_ vdd gnd INVX1
X_3722_ _760_ i_clk_fast_bF$buf7 \u_mem_serial.state\[0] vdd gnd DFFPOSX1
X_3302_ _2110__bF$buf3 _2055_ _2106_ _2054_ vdd gnd NAND3X1
XFILL_0__4088_ gnd vdd FILL
X_4507_ ibus_pending_rdt[15] _1896_ vdd gnd INVX1
XFILL_0__2994_ gnd vdd FILL
X_4680_ _1954_ _1959__bF$buf1 _2002_ _1848_ vdd gnd OAI21X1
X_4260_ _1273_ _1159__bF$buf1 _1275_ _1120_ vdd gnd OAI21X1
XFILL_0__3779_ gnd vdd FILL
XFILL_0__4720_ gnd vdd FILL
X_3951_ _891_ _892_ _893_ vdd gnd NAND2X1
X_3531_ _129_ i_clk_sys_ext_bF$buf3 \u_cpu.bufreg2.i_bytecnt\[0] vdd gnd DFFPOSX1
X_3111_ _1672_ _1671_ vdd gnd INVX1
X_4736_ i_rst_n_bF$buf4 vdd _1838_ i_clk_sys_ext_bF$buf39 ibus_pending_rdt[10] vdd 
+ gnd
+ DFFSR
X_4316_ _1500_ _1503_ _1504_ _1505_ vdd gnd OAI21X1
X_2802_ _504_ i_clk_sys_ext_bF$buf41 raddr[0] vdd gnd DFFPOSX1
XFILL_0__3588_ gnd vdd FILL
XFILL_0__3168_ gnd vdd FILL
X_2399_ \u_cpu.bufreg2.dhi\[3] _796_ _845_ \u_cpu.bufreg.i_shamt\[1] _1056_ vdd 
+ gnd
+ AOI22X1
X_3760_ \u_cpu.decode.opcode\[0] \u_cpu.decode.opcode\[1] _392_ \u_cpu.decode.co_immdec_ctrl\[1] vdd gnd OAI21X1
X_3340_ _20_ \u_rf_if.prefetch_active\ _14_ _13_ vdd gnd NAND3X1
X_4545_ _1920_ rf_rreq_bF$buf7 _1921_ rf_read_reg1_to_if[2] vdd gnd OAI21X1
X_4125_ \u_cpu.bufreg2.dlo\[8] _1168_ vdd gnd INVX1
XFILL_1__3082_ gnd vdd FILL
XFILL_0__2192_ gnd vdd FILL
X_2611_ _271_ _269_ _272_ vdd gnd NAND2X1
X_3816_ rreg1[0] \u_cpu.branch_op\ _653_ vdd gnd OR2X2
XFILL_1__3978_ gnd vdd FILL
XFILL_1__3558_ gnd vdd FILL
XFILL_0__2248_ gnd vdd FILL
X_4354_ \u_cpu.ctrl.o_ibus_adr\[28] _1535_ vdd gnd INVX1
XFILL_1__2409_ gnd vdd FILL
X_2840_ _566_ i_clk_sys_ext_bF$buf21 \u_rf_if.read_buf1\[1] vdd gnd DFFPOSX1
X_2420_ _1034_ _840_ _1035_ vdd gnd NAND2X1
X_3625_ gnd _143_ \u_cpu.o_dbus_cyc\ vdd gnd NOR2X1
X_3205_ _2108__bF$buf1 _1803_ _1741_ vdd gnd NAND2X1
XFILL_1__2582_ gnd vdd FILL
X_4583_ \u_mem_serial.shift_rx\[7] _1861__bF$buf3 _1947_ vdd gnd NAND2X1
X_4163_ mem_dbus_ack_bF$buf3 \u_mem_serial.shift_rx\[30] _1198_ vdd gnd NAND2X1
XFILL_0__4203_ gnd vdd FILL
X_3854_ \u_cpu.decode.i_wb_rdt\[18] rreg0[4] rf_rreq_bF$buf4 _686_ vdd gnd MUX2X1
X_3434_ \u_rf_if.read_buf1\[19] \u_rf_if.stream_cnt_0_bF$buf0\ _349_ vdd gnd NAND2X1
X_3014_ _2108__bF$buf3 _1686__bF$buf1 _1784_ _1602_ vdd gnd NAND3X1
XFILL_1_BUFX2_insert52 gnd vdd FILL
XFILL_1_BUFX2_insert56 gnd vdd FILL
X_4639_ \u_mem_serial.shift_rx\[17] mem_ibus_ack_bF$buf3 _1960__bF$buf3 _1979_ vdd gnd NAND3X1
X_4219_ _1243_ _1159__bF$buf4 _1245_ _1109_ vdd gnd OAI21X1
XFILL_1__3596_ gnd vdd FILL
XFILL_0__2286_ gnd vdd FILL
X_4392_ _1525__bF$buf4 _1555_ _1556_ _1485_ vdd gnd OAI21X1
X_2705_ \u_rf_if.o_wdata\[0] _192_ vdd gnd INVX1
XFILL_0__4012_ gnd vdd FILL
XFILL_1__2447_ gnd vdd FILL
X_3663_ _156_ \u_cpu.state.cnt_r\[2] _123_ vdd gnd AND2X2
X_3243_ _13__bF$buf0 _1774_ \u_rf_if.read_buf1\[20] _1770_ vdd gnd OAI21X1
X_4448_ _1472_ i_clk_sys_ext_bF$buf11 \u_cpu.ctrl.o_ibus_adr\[23] vdd gnd DFFPOSX1
X_4028_ \u_cpu.bufreg.i_en_bF$buf1\ _943_ _944_ _879_ vdd gnd OAI21X1
X_2934_ _740_ _739_ _500_ vdd gnd NOR2X1
X_2514_ _837_ _838_ _835_ _836_ _839_ vdd 
+ gnd
+ OAI22X1
X_3719_ _786_ i_clk_fast_bF$buf4 _2119_ vdd gnd DFFPOSX1
XFILL_1__2256_ gnd vdd FILL
X_3892_ \u_cpu.immdec.gen_immdec_w_eq_1.imm30_25\[0] _678_ _712_ vdd gnd NAND2X1
X_3472_ \u_rf_if.read_buf1\[11] _441__bF$buf2 _432_ vdd gnd NOR2X1
X_3052_ _1688__bF$buf2 _1765_ \u_rf_if.read_buf0\[18] _1628_ vdd gnd OAI21X1
X_4677_ mem_ibus_ack_bF$buf3 \u_mem_serial.shift_rx\[1] _1960__bF$buf3 _2001_ vdd gnd NAND3X1
X_4257_ \u_cpu.bufreg2.dlo\[12] _1273_ vdd gnd INVX1
X_2743_ ren_bF$buf0 raddr[6] _93_ vdd gnd NAND2X1
X_2323_ _1314_ _1322_ _1303_ _1323_ vdd gnd NAND3X1
X_3948_ \u_cpu.bufreg.i_clr_lsb\ \u_cpu.alu.i_cnt0\ _889_ _890_ vdd gnd AOI21X1
X_3528_ \u_rf_if.i_rreq\ rf_wreq _480_ vdd gnd NOR2X1
X_3108_ \u_rf_if.prefetch_active\ _1669_ vdd gnd INVX2
X_3281_ _5__bF$buf0 _1803_ _1802_ vdd gnd NAND2X1
X_4486_ _1882_ \u_cpu.decode.i_wb_rdt\[6] vdd gnd INVX1
X_4066_ _855_ i_clk_sys_ext_bF$buf8 \u_cpu.bufreg.data\[11] vdd gnd DFFPOSX1
XFILL_0__3321_ gnd vdd FILL
XFILL_0__4526_ gnd vdd FILL
XFILL_0__4106_ gnd vdd FILL
XFILL_1__3902_ gnd vdd FILL
X_2972_ \u_rf_if.issue_sel_bF$buf1\ _1461_ _1460_ vdd gnd NAND2X1
X_2552_ _798_ _799_ _800_ _801_ vdd gnd NAND3X1
X_2132_ gnd o_gpio[6] vdd gnd BUFX2
X_3757_ \u_cpu.cond_branch\ \u_cpu.decode.opcode\[1] \u_cpu.bufreg.i_rs1_en\ \u_cpu.bufreg.i_clr_lsb\ vdd gnd AOI21X1
X_3337_ _20_ _11_ _10_ vdd gnd NAND2X1
XFILL_1__2294_ gnd vdd FILL
XFILL_1__4020_ gnd vdd FILL
X_3090_ _1800__bF$buf2 _1686__bF$buf3 _1798_ _1655_ vdd gnd NAND3X1
X_4295_ _1119_ i_clk_sys_ext_bF$buf44 \u_cpu.bufreg2.dlo\[13] vdd gnd DFFPOSX1
XFILL_0__3970_ gnd vdd FILL
XFILL_0__3550_ gnd vdd FILL
XFILL_0__3130_ gnd vdd FILL
X_2608_ _273_ _274_ _272_ _275_ vdd gnd AOI21X1
X_2781_ _597_ i_clk_sys_ext_bF$buf42 \u_rf_if.read_buf1\[29] vdd gnd DFFPOSX1
X_2361_ \u_cpu.mem_if.o_wb_sel\[3] _1288_ vdd gnd INVX1
X_3986_ _911_ _915_ _916_ _865_ vdd gnd OAI21X1
X_3566_ \u_cpu.alu.i_sub\ _2073_ vdd gnd INVX1
X_3146_ _454_ _1705_ _479__bF$buf1 _1700_ vdd gnd AOI21X1
XFILL_0__2401_ gnd vdd FILL
X_2837_ _521_ i_clk_sys_ext_bF$buf35 \u_rf_if.issue_idx\[5] vdd gnd DFFPOSX1
X_2417_ \u_mem_serial.active_ibus_bF$buf4\ _1036_ _1037_ _1038_ vdd gnd OAI21X1
XFILL_0__4144_ gnd vdd FILL
X_2590_ _210_ _289_ vdd gnd INVX1
X_2170_ _1315__bF$buf0 _1304__bF$buf3 \u_mem_serial.shift_rx\[16] _1434_ vdd gnd OAI21X1
X_3795_ rf_rreq_bF$buf6 \u_cpu.decode.i_wb_rdt\[2] _413_ vdd gnd NAND2X1
X_3375_ _443_ _49_ _48_ vdd gnd NAND2X1
XFILL_0__2630_ gnd vdd FILL
XFILL_0__2210_ gnd vdd FILL
XFILL_0__3835_ gnd vdd FILL
XFILL_0__3415_ gnd vdd FILL
X_2646_ \u_rf_serial.last_req_key\[9] _237_ vdd gnd INVX1
X_2226_ _1315__bF$buf1 _1304__bF$buf1 \u_mem_serial.shift_rx\[31] _1395_ vdd gnd OAI21X1
XFILL_1__4534_ gnd vdd FILL
X_3184_ \u_rf_if.stream_cnt\[3] _1726_ _1725_ vdd gnd NAND2X1
X_4389_ _1525__bF$buf4 _1553_ _1554_ _1484_ vdd gnd OAI21X1
XFILL_0__3224_ gnd vdd FILL
X_2875_ _496_ i_clk_sys_ext_bF$buf39 \u_rf_if.write_wait\[4] vdd gnd DFFPOSX1
X_2455_ _798_ _997_ _999_ _1000_ vdd gnd NAND3X1
XFILL_0__4182_ gnd vdd FILL
XFILL_0__2915_ gnd vdd FILL
X_4601_ _1953_ _1956_ _1957_ _1814_ vdd gnd NAND3X1
X_4198_ \u_cpu.bufreg.i_shamt\[2] _1205_ _1193_ _1229_ vdd gnd NAND3X1
XFILL_0__3873_ gnd vdd FILL
XFILL_0__4658_ gnd vdd FILL
XFILL_0__4238_ gnd vdd FILL
X_2684_ \u_rf_serial.shift_rx\[0] _209_ vdd gnd INVX1
X_2264_ _1305_ _1370_ vdd gnd INVX1
X_3889_ \u_cpu.immdec.gen_immdec_w_eq_1.imm30_25\[1] _678_ _710_ vdd gnd NAND2X1
X_3469_ \u_rf_if.stream_cnt\[2] _430_ \u_rf_if.stream_cnt\[3] _429_ vdd gnd OAI21X1
X_3049_ _1688__bF$buf3 _1759_ \u_rf_if.read_buf0\[17] _1626_ vdd gnd OAI21X1
XFILL_0__2724_ gnd vdd FILL
X_4410_ _1525__bF$buf3 _1567_ _1568_ _1491_ vdd gnd OAI21X1
XFILL_0__3509_ gnd vdd FILL
XFILL_1__4572_ gnd vdd FILL
XFILL_1__4152_ gnd vdd FILL
XFILL_0__3262_ gnd vdd FILL
XFILL142650x39750 gnd vdd FILL
XFILL142350x133350 gnd vdd FILL
XFILL_0__4467_ gnd vdd FILL
XFILL_1__3423_ gnd vdd FILL
X_2493_ \u_mem_serial.active_ibus_bF$buf6\ _960_ _961_ vdd gnd NAND2X1
XFILL142950x126150 gnd vdd FILL
X_3698_ _131_ i_clk_sys_ext_bF$buf23 \u_cpu.state.o_cnt\[2] vdd gnd DFFPOSX1
X_3278_ _8_ _2052_ _0_ _1799_ vdd gnd NAND3X1
XFILL_0__2953_ gnd vdd FILL
XFILL_0__3318_ gnd vdd FILL
X_2969_ _1668_ _1459_ _1458_ _511_ vdd gnd AOI21X1
X_2549_ \u_mem_serial.bit_count_0_bF$buf2\ \u_mem_serial.bit_count\[1] \u_mem_serial.bit_count\[2] _804_ vdd gnd OAI21X1
X_2129_ _2117_ o_mem_mosi vdd gnd BUFX2
X_3910_ \u_cpu.immdec.gen_immdec_w_eq_1.imm11_7\[2] _683_ _724_ vdd gnd NAND2X1
X_3087_ rst_bF$buf4 _1654_ _549_ vdd gnd NOR2X1
XFILL_0__2342_ gnd vdd FILL
XFILL_1__4190_ gnd vdd FILL
X_2778_ _507_ i_clk_sys_ext_bF$buf7 raddr[3] vdd gnd DFFPOSX1
X_2358_ \u_mem_serial.active_we\ _966_ _1291_ vdd gnd NAND2X1
X_4504_ \u_mem_serial.shift_rx\[4] _1894_ vdd gnd INVX1
XFILL_1__3461_ gnd vdd FILL
XFILL_0__3356_ gnd vdd FILL
XFILL_1__2732_ gnd vdd FILL
X_2587_ \u_rf_serial.last_req_key\[0] _291_ vdd gnd INVX1
X_2167_ _1315__bF$buf2 _1304__bF$buf4 \u_mem_serial.shift_rx\[15] _1436_ vdd gnd OAI21X1
X_4733_ i_rst_n_bF$buf3 vdd _1841_ i_clk_sys_ext_bF$buf19 ibus_pending_rdt[7] vdd 
+ gnd
+ DFFSR
X_4313_ \u_cpu.ctrl.i_utype\ \u_cpu.bufreg.i_imm\ _1502_ vdd gnd AND2X2
XFILL_1__3270_ gnd vdd FILL
XFILL_0__2380_ gnd vdd FILL
X_2396_ _845_ \u_cpu.bufreg2.dhi\[5] \u_cpu.bufreg2.dhi\[6] _1048_ _1059_ vdd 
+ gnd
+ AOI22X1
XFILL_0__2436_ gnd vdd FILL
X_4542_ _1918_ rf_rreq_bF$buf5 _1919_ rf_read_reg1_to_if[3] vdd gnd OAI21X1
X_4122_ \u_cpu.bufreg2.i_bytecnt\[0] _1165_ vdd gnd INVX1
XFILL_0__3394_ gnd vdd FILL
X_3813_ \u_cpu.bufreg.i_cnt_done\ _648_ _651_ \u_cpu.bufreg.i_imm\ vdd gnd OAI21X1
XFILL_0__4599_ gnd vdd FILL
XFILL_0__2665_ gnd vdd FILL
X_4351_ \u_cpu.ctrl.o_ibus_adr\[26] _1533_ vdd gnd INVX1
X_3622_ _140_ _139_ _142_ \u_cpu.bufreg.i_en\ vdd gnd OAI21X1
X_3202_ _2110__bF$buf2 _1800__bF$buf0 _1739_ _1738_ vdd gnd NAND3X1
X_4407_ _1525__bF$buf1 _1565_ _1566_ _1490_ vdd gnd OAI21X1
XFILL_0__2894_ gnd vdd FILL
XFILL_0__2474_ gnd vdd FILL
X_4580_ \u_mem_serial.shift_rx\[8] _1861__bF$buf4 _1945_ vdd gnd NAND2X1
X_4160_ _1193_ _1195_ _1194_ _1100_ vdd gnd OAI21X1
XFILL_0__4620_ gnd vdd FILL
X_3851_ \u_cpu.decode.i_wb_rdt\[11] \u_cpu.immdec.gen_immdec_w_eq_1.imm30_25\[0] rf_rreq_bF$buf3 _684_ vdd gnd MUX2X1
X_3431_ \u_rf_if.read_buf1\[20] \u_rf_if.stream_cnt_0_bF$buf2\ _346_ vdd gnd NOR2X1
X_3011_ _1800__bF$buf1 _1686__bF$buf1 _1728_ _1600_ vdd gnd NAND3X1
XFILL_1_BUFX2_insert21 gnd vdd FILL
XFILL_1_BUFX2_insert25 gnd vdd FILL
XFILL_1_BUFX2_insert29 gnd vdd FILL
X_4636_ _1936_ _1959__bF$buf3 _1977_ _1829_ vdd gnd OAI21X1
X_4216_ \u_cpu.bufreg2.dlo\[21] _1243_ vdd gnd INVX1
XFILL_1__4378_ gnd vdd FILL
X_2702_ \u_rf_if.o_waddr\[0] _195_ vdd gnd INVX1
XFILL_0__3488_ gnd vdd FILL
XFILL_0__3068_ gnd vdd FILL
X_3907_ \u_cpu.immdec.gen_immdec_w_eq_1.imm11_7\[3] _683_ _722_ vdd gnd NAND2X1
X_2299_ _1341_ _1342_ vdd gnd INVX1
X_3660_ _168_ \u_cpu.alu.i_cnt0\ vdd gnd INVX2
X_3240_ _1768_ _1770_ rst_bF$buf6 _588_ vdd gnd AOI21X1
XFILL_0__2759_ gnd vdd FILL
X_4445_ _1485_ i_clk_sys_ext_bF$buf39 \u_cpu.ctrl.o_ibus_adr\[13] vdd gnd DFFPOSX1
X_4025_ _887__bF$buf4 _940_ _942_ _878_ vdd gnd OAI21X1
XFILL_0__3700_ gnd vdd FILL
X_2931_ _738_ _737_ _499_ vdd gnd NOR2X1
X_2511_ \u_mem_serial.active_ibus_bF$buf5\ \u_cpu.ctrl.o_ibus_adr\[12] _842_ vdd gnd NAND2X1
XFILL_0__3297_ gnd vdd FILL
X_3716_ _762_ i_clk_fast_bF$buf4 \u_mem_serial.shift_rx\[30] vdd gnd DFFPOSX1
XFILL_0__2988_ gnd vdd FILL
X_4674_ mem_ibus_ack_bF$buf2 \u_mem_serial.shift_rx\[2] _1960__bF$buf4 _1999_ vdd gnd NAND3X1
X_4254_ mem_dbus_ack_bF$buf3 _1267_ _1271_ vdd gnd NOR2X1
XFILL_0__4714_ gnd vdd FILL
XFILL_1__2309_ gnd vdd FILL
X_2740_ _95_ _86_ _85_ _96_ vdd gnd AOI21X1
X_2320_ \u_mem_serial.shift_rx\[9] _1297__bF$buf0 _1325_ vdd gnd NAND2X1
X_3945_ \u_cpu.bufreg.i_en_bF$buf0\ _887_ vdd gnd INVX8
X_3525_ \u_rf_if.wdata0_next_phase\ _477_ vdd gnd INVX1
X_3105_ _1678_ _1671_ _1666_ vdd gnd NAND2X1
XFILL_1__2482_ gnd vdd FILL
XFILL_1__3687_ gnd vdd FILL
X_4483_ ibus_pending_rdt[13] \u_mem_serial.shift_rx\[13] ibus_pending_ack_bF$buf3 _1881_ vdd gnd MUX2X1
X_4063_ _886_ i_clk_sys_ext_bF$buf8 \u_cpu.bufreg.data\[12] vdd gnd DFFPOSX1
X_3754_ _388_ \u_cpu.decode.opcode\[2] \u_cpu.ctrl.i_utype\ vdd gnd AND2X2
X_3334_ _20_ _11_ _16_ _7_ vdd gnd OAI21X1
X_4539_ _1916_ rf_rreq_bF$buf7 _1917_ rf_read_reg1_to_if[0] vdd gnd OAI21X1
X_4119_ \u_cpu.state.i_ctrl_misalign\ \u_cpu.bufreg2.i_bytecnt\[1] \u_cpu.bufreg.i_shift_op\ _1162_ vdd gnd AOI21X1
XFILL_1__3496_ gnd vdd FILL
X_4292_ _1122_ i_clk_sys_ext_bF$buf37 \u_cpu.bufreg2.dlo\[10] vdd gnd DFFPOSX1
X_2605_ \u_rf_serial.last_req_key\[2] _229_ _278_ vdd gnd NAND2X1
XFILL_0__4332_ gnd vdd FILL
X_3983_ \u_cpu.bufreg.i_init\ _912_ _913_ _914_ vdd gnd NAND3X1
X_3563_ _2069_ _2070_ vdd gnd INVX1
X_3143_ \u_rf_if.o_waddr\[0] \u_rf_if.o_waddr\[1] \u_rf_if.o_waddr\[2] _1697_ vdd gnd NAND3X1
X_4768_ i_rst_n_bF$buf3 vdd _1852_ i_clk_sys_ext_bF$buf22 rf_read_reg1[1] vdd 
+ gnd
+ DFFSR
X_4348_ _1531_ _1526_ _1529_ _1530_ _1466_ vdd 
+ gnd
+ OAI22X1
XFILL_0__3603_ gnd vdd FILL
X_2834_ _569_ i_clk_sys_ext_bF$buf45 \u_rf_if.read_buf1\[4] vdd gnd DFFPOSX1
X_2414_ _1031_ _1040_ _803_ _1041_ vdd gnd OAI21X1
XFILL_0__4561_ gnd vdd FILL
X_3619_ \u_cpu.branch_op\ _133_ \u_cpu.decode.co_two_stage_op\ _140_ vdd gnd OAI21X1
X_3792_ rf_rreq_bF$buf2 _381_ _411_ _363_ vdd gnd OAI21X1
X_3372_ \u_rf_if.read_buf0\[23] _441__bF$buf3 _45_ vdd gnd NOR2X1
X_4577_ \u_mem_serial.shift_rx\[9] _1861__bF$buf4 _1943_ vdd gnd NAND2X1
X_4157_ _1192_ \u_cpu.alu.i_en\ mem_dbus_ack_bF$buf0 _1193_ vdd gnd AOI21X1
XFILL_0__3412_ gnd vdd FILL
X_2643_ _91_ \u_rf_serial.last_req_key\[9] \u_rf_serial.last_req_key\[10] _238_ _240_ vdd 
+ gnd
+ AOI22X1
X_2223_ _1315__bF$buf3 _1304__bF$buf0 \u_mem_serial.shift_rx\[26] _1397_ vdd gnd OAI21X1
X_3848_ rreg1[4] _680_ _682_ vdd gnd NAND2X1
X_3428_ \u_rf_if.read_buf1\[22] \u_rf_if.stream_cnt_0_bF$buf3\ \u_rf_if.stream_cnt_1_bF$buf0\ _343_ vdd gnd OAI21X1
X_3008_ _1686__bF$buf1 _1728_ _2055_ _1598_ vdd gnd NAND3X1
X_3181_ _1723_ _27__bF$buf0 _574_ vdd gnd AND2X2
X_4386_ _1525__bF$buf1 _1551_ _1552_ _1483_ vdd gnd OAI21X1
XFILL_0__3641_ gnd vdd FILL
X_2872_ _548_ i_clk_sys_ext_bF$buf38 \u_rf_if.read_buf0\[31] vdd gnd DFFPOSX1
X_2452_ \u_cpu.ctrl.o_ibus_adr\[29] \u_cpu.bufreg.data\[29] \u_mem_serial.active_ibus_bF$buf0\ _1003_ vdd gnd MUX2X1
X_3657_ \u_cpu.state.cnt_r\[1] \u_cpu.cnt0to3\ _167_ vdd gnd NAND2X1
X_3237_ _5__bF$buf1 _1766_ _1765_ vdd gnd NAND2X1
XFILL_1__2194_ gnd vdd FILL
XFILL_1__4340_ gnd vdd FILL
X_4195_ _1125_ _1128_ \u_cpu.bufreg2.dhi\[3] _1226_ vdd gnd OAI21X1
XFILL_0__3450_ gnd vdd FILL
XFILL_0__3030_ gnd vdd FILL
X_2928_ _736_ _735_ _498_ vdd gnd NOR2X1
X_2508_ \u_mem_serial.bit_count_0_bF$buf3\ _799_ _845_ vdd gnd NOR2X1
XFILL_0__4655_ gnd vdd FILL
X_2681_ i_rf_miso _211_ _202_ _212_ vdd gnd OAI21X1
X_2261_ _1372_ _1373_ vdd gnd INVX1
X_3886_ \u_cpu.immdec.gen_immdec_w_eq_1.imm30_25\[2] _678_ _708_ vdd gnd NAND2X1
X_3466_ \u_rf_if.read_buf1\[0] \u_rf_if.stream_cnt_0_bF$buf3\ _427_ _426_ vdd gnd OAI21X1
X_3046_ _1688__bF$buf3 _1759_ \u_rf_if.read_buf0\[16] _1624_ vdd gnd OAI21X1
X_2737_ \u_rf_if.o_waddr\[8] _91_ _99_ vdd gnd NAND2X1
X_2317_ _1324_ _1327_ rst_bF$buf10 _749_ vdd gnd AOI21X1
X_2490_ \u_mem_serial.bit_count\[2] _798_ _799_ _964_ vdd gnd NAND3X1
XFILL_1__4205_ gnd vdd FILL
X_3695_ _132_ i_clk_sys_ext_bF$buf23 \u_cpu.state.cnt_r\[2] vdd gnd DFFPOSX1
X_3275_ _1801_ _1797_ rst_bF$buf4 _595_ vdd gnd AOI21X1
XFILL142650x93750 gnd vdd FILL
XFILL_0__2950_ gnd vdd FILL
XFILL_0__2530_ gnd vdd FILL
XFILL_0__3735_ gnd vdd FILL
X_2966_ raddr[6] _1668_ _27__bF$buf1 _1455_ vdd gnd OAI21X1
X_2546_ \u_mem_serial.bit_count_0_bF$buf3\ _799_ _807_ vdd gnd NAND2X1
X_2126_ _2120_ o_rf_mosi vdd gnd BUFX2
XFILL_0__4693_ gnd vdd FILL
X_3084_ _1652_ _1653_ rst_bF$buf3 _548_ vdd gnd AOI21X1
X_4289_ _1093_ i_clk_sys_ext_bF$buf44 \u_cpu.bufreg2.dlo\[7] vdd gnd DFFPOSX1
XFILL_0__3964_ gnd vdd FILL
XFILL_0__3544_ gnd vdd FILL
XFILL_0__3124_ gnd vdd FILL
X_2775_ _600_ i_clk_sys_ext_bF$buf32 \u_rf_if.stream_cnt\[1] vdd gnd DFFPOSX1
X_2355_ _1089_ _1090_ _1293_ _1294_ vdd gnd NAND3X1
X_4501_ ibus_pending_rdt[18] _1892_ vdd gnd INVX1
X_4098_ \u_cpu.bufreg.data\[0] _1142_ _1143_ vdd gnd NOR2X1
XFILL_0__3773_ gnd vdd FILL
XFILL_0__4138_ gnd vdd FILL
X_2584_ ren_bF$buf2 _215__bF$buf1 _202_ _293_ vdd gnd OAI21X1
X_2164_ _1315__bF$buf1 _1304__bF$buf1 \u_mem_serial.shift_rx\[14] _1438_ vdd gnd OAI21X1
XFILL142650x133350 gnd vdd FILL
X_3789_ rf_rreq_bF$buf2 \u_cpu.decode.i_wb_rdt\[3] _410_ vdd gnd NAND2X1
X_3369_ \u_rf_if.stream_cnt\[2] _43_ _42_ vdd gnd NAND2X1
XFILL_0__2624_ gnd vdd FILL
XFILL_0__2204_ gnd vdd FILL
X_4730_ _2032_ i_clk_sys_ext_bF$buf3 \u_cpu.mem_if.signbit\ vdd gnd DFFPOSX1
X_4310_ _1497_ _1498_ _1499_ vdd gnd NAND2X1
XFILL_0__3829_ gnd vdd FILL
XFILL_0__3162_ gnd vdd FILL
XFILL_0__4367_ gnd vdd FILL
XFILL_1__3323_ gnd vdd FILL
X_2393_ _1058_ _1061_ _803_ _1062_ vdd gnd AOI21X1
X_3598_ \u_cpu.alu.i_sub\ _2102_ _2103_ vdd gnd NAND2X1
X_3178_ _1722_ _1721_ rst_bF$buf0 _573_ vdd gnd AOI21X1
XFILL_0__3218_ gnd vdd FILL
X_2869_ _550_ i_clk_sys_ext_bF$buf15 \u_rf_if.read_buf0\[27] vdd gnd DFFPOSX1
X_2449_ _797_ _802_ _991_ _1005_ _1006_ vdd 
+ gnd
+ AOI22X1
X_3810_ \u_cpu.immdec.gen_immdec_w_eq_1.imm31\ _649_ vdd gnd INVX1
XFILL_0__2909_ gnd vdd FILL
XFILL_1__3132_ gnd vdd FILL
XFILL_0__2242_ gnd vdd FILL
XFILL_0__3867_ gnd vdd FILL
XFILL_1__4090_ gnd vdd FILL
XFILL_1__3608_ gnd vdd FILL
X_2678_ rst_bF$buf1 _213_ _55_ vdd gnd NOR2X1
X_2258_ _1086_ _1297__bF$buf2 _1374_ _761_ vdd gnd AOI21X1
XFILL_0__2718_ gnd vdd FILL
X_4404_ _1525__bF$buf1 _1563_ _1564_ _1489_ vdd gnd OAI21X1
XFILL_1__3781_ gnd vdd FILL
XFILL_0__3676_ gnd vdd FILL
XFILL_0__3256_ gnd vdd FILL
XFILL_1__2632_ gnd vdd FILL
XFILL_1__3837_ gnd vdd FILL
X_2487_ \u_cpu.bufreg.data\[9] _967_ vdd gnd INVX1
X_4633_ mem_ibus_ack_bF$buf3 \u_mem_serial.shift_rx\[20] _1960__bF$buf3 _1976_ vdd gnd NAND3X1
X_4213_ mem_dbus_ack_bF$buf6 _1240_ _1241_ vdd gnd NOR2X1
XFILL_1__3170_ gnd vdd FILL
XFILL_0__3065_ gnd vdd FILL
X_3904_ rreg1[0] _680_ _720_ vdd gnd NAND2X1
X_2296_ _1315__bF$buf1 _1304__bF$buf1 \u_mem_serial.shift_rx\[5] _1344_ vdd gnd OAI21X1
XFILL_0__2336_ gnd vdd FILL
X_4442_ _1464_ i_clk_sys_ext_bF$buf27 \u_cpu.ctrl.o_ibus_adr\[3] vdd gnd DFFPOSX1
X_4022_ \u_cpu.bufreg.i_en_bF$buf4\ \u_cpu.bufreg.data\[21] _941_ vdd gnd NAND2X1
XFILL_1__2917_ gnd vdd FILL
X_3713_ _779_ i_clk_fast_bF$buf5 \u_mem_serial.req_pending\ vdd gnd DFFPOSX1
XFILL_0__4499_ gnd vdd FILL
XFILL_0__4079_ gnd vdd FILL
XFILL_1__3875_ gnd vdd FILL
X_4671_ ibus_pending_rdt[3] _1997_ vdd gnd INVX1
X_4251_ mem_dbus_ack_bF$buf3 \u_mem_serial.shift_rx\[14] _1167__bF$buf1 _1268_ _1269_ vdd 
+ gnd
+ AOI22X1
X_3942_ _637_ i_clk_sys_ext_bF$buf34 \u_cpu.immdec.gen_immdec_w_eq_1.imm30_25\[2] vdd gnd DFFPOSX1
X_3522_ \u_rf_if.o_waddr\[2] \u_rf_if.o_waddr\[3] _474_ vdd gnd NOR2X1
X_3102_ _1664_ _1667_ rst_bF$buf1 _554_ vdd gnd AOI21X1
X_4727_ i_rst_n_bF$buf2 vdd _1845_ i_clk_sys_ext_bF$buf29 ibus_pending_rdt[3] vdd 
+ gnd
+ DFFSR
X_4307_ \u_cpu.ctrl.pc_plus_offset_cy_r_w\ \u_cpu.ctrl.i_pc_rel\ \u_cpu.ctrl.pc\ _1496_ vdd gnd NAND3X1
XFILL_1__4469_ gnd vdd FILL
XFILL_0__2374_ gnd vdd FILL
X_4480_ ibus_pending_rdt[12] _1879_ vdd gnd INVX1
X_4060_ _857_ i_clk_sys_ext_bF$buf14 \u_cpu.bufreg.data\[9] vdd gnd DFFPOSX1
XFILL_0__3999_ gnd vdd FILL
XFILL_0__3579_ gnd vdd FILL
XFILL_0__3159_ gnd vdd FILL
XFILL_0__4520_ gnd vdd FILL
XFILL_0__4100_ gnd vdd FILL
XFILL_1__2955_ gnd vdd FILL
XFILL_1__2535_ gnd vdd FILL
X_3751_ _371_ \u_cpu.decode.co_ebreak\ _396_ _397_ vdd gnd AOI21X1
X_3331_ \u_rf_if.issue_chunk\[2] _4_ vdd gnd INVX1
X_4536_ _1861__bF$buf0 _1914_ _1915_ \u_cpu.decode.i_wb_rdt\[20] vdd gnd OAI21X1
X_4116_ _1149_ _1158_ _1154_ _1159_ vdd gnd NAND3X1
XFILL_0__2183_ gnd vdd FILL
X_2602_ _280_ _275_ _266_ _281_ vdd gnd NAND3X1
X_3807_ _365_ i_clk_sys_ext_bF$buf30 \u_cpu.decode.opcode\[0] vdd gnd DFFPOSX1
XFILL_1__2344_ gnd vdd FILL
X_2199_ rst_bF$buf9 _1414_ _780_ vdd gnd NOR2X1
X_3980_ \u_cpu.state.i_ctrl_misalign\ _911_ vdd gnd INVX1
X_3560_ _2036_ _2041_ _2047_ _2032_ vdd gnd OAI21X1
X_3140_ _1696_ _1695_ _1700_ _1694_ vdd gnd OAI21X1
XFILL_0__2659_ gnd vdd FILL
X_4765_ i_rst_n_bF$buf1 vdd _1855_ i_clk_sys_ext_bF$buf25 rf_read_reg0[2] vdd 
+ gnd
+ DFFSR
X_4345_ _1527_ _1530_ vdd gnd INVX4
XFILL_0__3600_ gnd vdd FILL
X_2831_ _571_ i_clk_sys_ext_bF$buf24 \u_rf_if.wdata0_next\[0] vdd gnd DFFPOSX1
X_2411_ \u_mem_serial.bit_count\[5] _1044_ vdd gnd INVX1
XFILL_0__3197_ gnd vdd FILL
X_3616_ \u_cpu.state.cnt_r\[0] \u_cpu.state.cnt_r\[2] _138_ vdd gnd NOR2X1
XFILL_1__3358_ gnd vdd FILL
XFILL_0__2888_ gnd vdd FILL
XFILL_0__2468_ gnd vdd FILL
X_4574_ \u_mem_serial.shift_rx\[10] _1861__bF$buf4 _1941_ vdd gnd NAND2X1
X_4154_ _1189_ _1164_ _1161_ _1190_ vdd gnd AOI21X1
XFILL_0__4614_ gnd vdd FILL
X_2640_ \u_rf_serial.last_req_key\[8] _243_ vdd gnd INVX1
X_2220_ _1315__bF$buf2 _1304__bF$buf4 \u_mem_serial.shift_rx\[25] _1399_ vdd gnd OAI21X1
X_3845_ _677_ _674_ _679_ _624_ vdd gnd OAI21X1
X_3425_ _443_ _347_ _341_ _340_ vdd gnd AOI21X1
X_3005_ \u_rf_if.issue_chunk\[1] _1668_ _1597_ vdd gnd NAND2X1
XFILL_1__2382_ gnd vdd FILL
XFILL_0__2697_ gnd vdd FILL
XFILL_0__2277_ gnd vdd FILL
X_4383_ _1525__bF$buf2 _1549_ _1550_ _1482_ vdd gnd OAI21X1
XFILL_0__4003_ gnd vdd FILL
X_3654_ _766_ i_clk_fast_bF$buf3 \u_mem_serial.shift_rx\[27] vdd gnd DFFPOSX1
X_3234_ _2110__bF$buf2 _1800__bF$buf0 _1763_ _1762_ vdd gnd NAND3X1
X_4439_ _1476_ i_clk_sys_ext_bF$buf40 \u_cpu.ctrl.o_ibus_adr\[27] vdd gnd DFFPOSX1
X_4019_ \u_cpu.bufreg.data\[21] _887__bF$buf4 _939_ vdd gnd NAND2X1
XFILL_1__3396_ gnd vdd FILL
X_4192_ _1133_ _1208_ _1223_ vdd gnd AND2X2
X_2925_ _734_ _733_ _497_ vdd gnd NOR2X1
X_2505_ \u_mem_serial.active_ibus_bF$buf1\ _846_ _847_ _848_ vdd gnd OAI21X1
XFILL_0__4232_ gnd vdd FILL
XFILL_1__2667_ gnd vdd FILL
XFILL143250x68550 gnd vdd FILL
X_3883_ \u_cpu.immdec.gen_immdec_w_eq_1.imm30_25\[3] _678_ _706_ vdd gnd NAND2X1
X_3463_ _425_ _424_ _426_ _423_ vdd gnd OAI21X1
X_3043_ _1688__bF$buf1 _1752_ \u_rf_if.read_buf0\[15] _1622_ vdd gnd OAI21X1
X_4668_ ibus_pending_rdt[4] _1995_ vdd gnd INVX1
X_4248_ _1265_ _1201_ _1266_ _1117_ vdd gnd OAI21X1
XFILL_0__4708_ gnd vdd FILL
X_2734_ raddr[7] _102_ vdd gnd INVX1
X_2314_ _1329_ _1330_ vdd gnd INVX1
XFILL_0__4461_ gnd vdd FILL
XFILL_0__4041_ gnd vdd FILL
X_3939_ _640_ i_clk_sys_ext_bF$buf18 rreg1[3] vdd gnd DFFPOSX1
X_3519_ _477_ _473_ _472_ _471_ vdd gnd AOI21X1
XFILL_1__4622_ gnd vdd FILL
X_3692_ _127_ i_clk_sys_ext_bF$buf3 \u_cpu.state.ibus_cyc\ vdd gnd DFFPOSX1
X_3272_ _1796_ _1795_ rst_bF$buf4 _594_ vdd gnd AOI21X1
X_4477_ ibus_pending_ack_bF$buf3 _1876_ _1877_ vdd gnd NAND2X1
X_4057_ _860_ i_clk_sys_ext_bF$buf5 \u_cpu.bufreg.data\[6] vdd gnd DFFPOSX1
XFILL_0__3312_ gnd vdd FILL
XFILL_0__4517_ gnd vdd FILL
X_2963_ \u_rf_if.rreg0_latched\[1] \u_rf_if.issue_sel_bF$buf2\ _1454_ _1453_ vdd gnd OAI21X1
X_2543_ \u_mem_serial.active_ibus_bF$buf5\ _810_ vdd gnd INVX2
XFILL_0__4270_ gnd vdd FILL
X_3748_ \u_cpu.decode.opcode\[0] \u_cpu.decode.opcode\[2] _391_ _394_ vdd gnd OAI21X1
X_3328_ _2_ _1_ vdd gnd INVX1
X_3081_ _1650_ _1648_ rst_bF$buf3 _547_ vdd gnd AOI21X1
X_4286_ _1096_ i_clk_sys_ext_bF$buf43 \u_cpu.bufreg2.dlo\[4] vdd gnd DFFPOSX1
XFILL_0__4326_ gnd vdd FILL
X_2772_ _508_ i_clk_sys_ext_bF$buf35 raddr[4] vdd gnd DFFPOSX1
X_2352_ i_clk_fast_bF$buf4 _794_ _2118_ vdd gnd NOR2X1
X_3977_ \u_cpu.bufreg.data\[2] _909_ vdd gnd INVX1
X_3557_ _2042_ _2045_ _2044_ _2046_ vdd gnd NAND3X1
X_3137_ \u_rf_if.rreg1_latched\[2] _1692_ vdd gnd INVX1
XFILL_1__4660_ gnd vdd FILL
XFILL_1__4240_ gnd vdd FILL
X_4095_ _1140_ _1129_ \u_cpu.bufreg2.o_sh_done\ vdd gnd AND2X2
XFILL_0__3350_ gnd vdd FILL
X_2828_ _573_ i_clk_sys_ext_bF$buf32 \u_rf_if.read_buf1\[6] vdd gnd DFFPOSX1
X_2408_ _1006_ _1042_ _1046_ _1047_ vdd gnd OAI21X1
XFILL_0__4555_ gnd vdd FILL
XFILL_1__3511_ gnd vdd FILL
X_2581_ _243_ _215__bF$buf3 _294_ _71_ vdd gnd AOI21X1
X_2161_ _1315__bF$buf1 _1304__bF$buf1 \u_mem_serial.shift_rx\[13] _1440_ vdd gnd OAI21X1
X_3786_ rf_rreq_bF$buf6 _380_ _408_ _360_ vdd gnd OAI21X1
X_3366_ _40_ _310_ _445_ rdata0[0] vdd gnd AOI21X1
XFILL_0__2621_ gnd vdd FILL
XFILL_0__3406_ gnd vdd FILL
X_2637_ \u_rf_serial.last_req_key\[8] _100_ _246_ vdd gnd NAND2X1
X_2217_ \u_mem_serial.state\[1] _1296_ _1307_ _1401_ vdd gnd NAND3X1
X_2390_ _845_ \u_cpu.bufreg2.dlo\[1] \u_cpu.bufreg2.dlo\[2] _1048_ _1065_ vdd 
+ gnd
+ AOI22X1
X_3595_ _2091_ _2100_ _2097_ _2095_ _2101_ vdd 
+ gnd
+ AOI22X1
X_3175_ _2048_ _2051_ _2108__bF$buf1 _1720_ vdd gnd NAND3X1
XFILL_0__2430_ gnd vdd FILL
XFILL_0__3635_ gnd vdd FILL
X_2866_ _552_ i_clk_sys_ext_bF$buf12 \u_rf_if.rcnt\[1] vdd gnd DFFPOSX1
X_2446_ \u_mem_serial.active_ibus_bF$buf4\ \u_cpu.bufreg.data\[18] \u_mem_serial.bit_count_0_bF$buf1\ _1009_ vdd gnd OAI21X1
XFILL_0__4593_ gnd vdd FILL
XFILL_0__4173_ gnd vdd FILL
XFILL_0__2906_ gnd vdd FILL
X_4189_ _1149_ \u_mem_serial.shift_rx\[27] _1220_ _1221_ vdd gnd OAI21X1
XFILL_0__3864_ gnd vdd FILL
XFILL_0__3444_ gnd vdd FILL
XFILL_0__3024_ gnd vdd FILL
XFILL_0__4649_ gnd vdd FILL
XFILL_1__3605_ gnd vdd FILL
X_2675_ _205_ _206_ _215_ vdd gnd OR2X2
X_2255_ _1376_ _1302_ _1377_ vdd gnd NOR2X1
XFILL_0__2715_ gnd vdd FILL
X_4401_ _1525__bF$buf3 _1561_ _1562_ _1488_ vdd gnd OAI21X1
XFILL142950x133350 gnd vdd FILL
X_2484_ _969_ _845_ _970_ vdd gnd NAND2X1
X_3689_ _160_ _184_ _186_ _131_ vdd gnd AOI21X1
X_3269_ _4_ _1792_ _1791_ vdd gnd NOR2X1
XFILL_0__2944_ gnd vdd FILL
XFILL_0__2524_ gnd vdd FILL
X_4630_ _1902_ _1959__bF$buf2 _1974_ _1826_ vdd gnd OAI21X1
X_4210_ _1201_ _1238_ _1235_ _1107_ vdd gnd OAI21X1
XFILL_0__3482_ gnd vdd FILL
X_3901_ rreg1[1] _680_ _718_ vdd gnd NAND2X1
XFILL_0__4687_ gnd vdd FILL
XFILL_0__4267_ gnd vdd FILL
X_2293_ _1314_ _1346_ _1303_ _1347_ vdd gnd NAND3X1
XFILL_1__4008_ gnd vdd FILL
X_3498_ _456_ _479__bF$buf3 _455_ \u_rf_if.o_waddr\[4] vdd gnd OAI21X1
X_3078_ _1646_ _1647_ rst_bF$buf3 _546_ vdd gnd AOI21X1
XFILL_0__2753_ gnd vdd FILL
XFILL_0__3118_ gnd vdd FILL
XFILL_0__3291_ gnd vdd FILL
X_2769_ _539_ i_clk_sys_ext_bF$buf42 \u_rf_if.read_buf0\[20] vdd gnd DFFPOSX1
X_2349_ \u_mem_serial.bit_count\[4] _852_ _1298_ vdd gnd NOR2X1
X_3710_ \u_cpu.decode.co_ebreak\ _373_ vdd gnd INVX1
XFILL_0__4496_ gnd vdd FILL
XFILL_1__3032_ gnd vdd FILL
XFILL_0__2982_ gnd vdd FILL
XFILL_0__2142_ gnd vdd FILL
XFILL_0__3767_ gnd vdd FILL
X_2998_ _2108__bF$buf3 _1686__bF$buf4 _1772_ _1591_ vdd gnd NAND3X1
X_2578_ _57_ i_clk_fast_bF$buf0 \u_rf_serial.last_req_key\[7] vdd gnd DFFPOSX1
X_2158_ _773_ i_clk_fast_bF$buf3 \u_mem_serial.shift_rx\[31] vdd gnd DFFPOSX1
X_4724_ i_rst_n_bF$buf4 vdd _1846_ i_clk_sys_ext_bF$buf4 ibus_pending_rdt[2] vdd 
+ gnd
+ DFFSR
X_4304_ _1110_ i_clk_sys_ext_bF$buf37 \u_cpu.bufreg2.dlo\[20] vdd gnd DFFPOSX1
XFILL_0__2371_ gnd vdd FILL
XFILL_1__2532_ gnd vdd FILL
XFILL_1__3737_ gnd vdd FILL
X_2387_ \u_cpu.bufreg2.dlo\[7] _796_ _845_ \u_cpu.bufreg2.dlo\[5] _1068_ vdd 
+ gnd
+ AOI22X1
X_4533_ _1912_ rf_rreq_bF$buf7 _1913_ rf_read_reg0_to_if[0] vdd gnd OAI21X1
X_4113_ \u_cpu.alu.i_en\ _1156_ vdd gnd INVX1
XFILL_1__3070_ gnd vdd FILL
XFILL_1__4695_ gnd vdd FILL
XFILL_0__3385_ gnd vdd FILL
X_3804_ _784_ i_clk_fast_bF$buf0 \u_mem_serial.shift_rx\[21] vdd gnd DFFPOSX1
XFILL_1__3966_ gnd vdd FILL
XFILL_1__3546_ gnd vdd FILL
X_2196_ _1415_ _1416_ rst_bF$buf10 _781_ vdd gnd AOI21X1
XFILL_0__2236_ gnd vdd FILL
X_4762_ i_rst_n_bF$buf2 vdd _1858_ i_clk_sys_ext_bF$buf29 ibus_pending_rdt[30] vdd 
+ gnd
+ DFFSR
X_4342_ \u_cpu.ctrl.o_ibus_adr\[4] _1527_ _1528_ vdd gnd NAND2X1
X_3613_ \u_cpu.bufreg2.i_bytecnt\[0] \u_cpu.bufreg2.i_bytecnt\[1] _135_ _136_ vdd gnd NAND3X1
XFILL_1__2990_ gnd vdd FILL
XFILL_0__4399_ gnd vdd FILL
X_4571_ \u_mem_serial.shift_rx\[11] _1861__bF$buf1 _1939_ vdd gnd NAND2X1
X_4151_ mem_dbus_ack_bF$buf2 \u_mem_serial.shift_rx\[1] _1167__bF$buf2 _1187_ _1188_ vdd 
+ gnd
+ AOI22X1
XFILL_0__4611_ gnd vdd FILL
XFILL_1__2206_ gnd vdd FILL
X_3842_ _656_ \u_cpu.decode.i_wb_rdt\[30] _676_ _677_ vdd gnd OAI21X1
X_3422_ \u_rf_if.read_buf0\[0] _338_ vdd gnd INVX1
X_3002_ _17_ _1595_ _1594_ vdd gnd NOR2X1
X_4627_ _1871_ _1973_ vdd gnd INVX1
X_4207_ _1125_ _1128_ \u_cpu.bufreg.i_shamt\[1] _1236_ vdd gnd OAI21X1
XFILL_1__3584_ gnd vdd FILL
XFILL142950x54150 gnd vdd FILL
XFILL_0__2694_ gnd vdd FILL
X_4380_ rst_bF$buf7 _1548_ vdd gnd INVX2
XFILL_0__3479_ gnd vdd FILL
XFILL_0__3059_ gnd vdd FILL
XFILL_0__4420_ gnd vdd FILL
X_3651_ \u_cpu.bufreg2.i_bytecnt\[1] _164_ \u_cpu.bufreg2.i_cnt7\ vdd gnd NOR2X1
X_3231_ _2110__bF$buf2 _2055_ _1763_ _1760_ vdd gnd NAND3X1
X_4436_ _1651_ i_clk_sys_ext_bF$buf23 \u_cpu.ctrl.pc_plus_4_cy_r_w\ vdd gnd DFFPOSX1
X_4016_ \u_cpu.bufreg.data\[22] _937_ vdd gnd INVX1
XFILL_1__4178_ gnd vdd FILL
X_2922_ rf_wreq _1666_ _27__bF$buf4 _730_ vdd gnd OAI21X1
X_2502_ _809_ _839_ _850_ _851_ vdd gnd AOI21X1
X_3707_ \u_cpu.branch_op\ \u_cpu.decode.opcode\[2] _370_ vdd gnd NAND2X1
XFILL_1__2244_ gnd vdd FILL
X_3880_ \u_cpu.immdec.gen_immdec_w_eq_1.imm30_25\[4] _678_ _704_ vdd gnd NAND2X1
X_3460_ \u_rf_if.read_buf1\[4] \u_rf_if.stream_cnt_1_bF$buf3\ _420_ vdd gnd NOR2X1
X_3040_ _1688__bF$buf1 _1752_ \u_rf_if.read_buf0\[14] _1620_ vdd gnd OAI21X1
X_4665_ ibus_pending_rdt[5] _1993_ vdd gnd INVX1
X_4245_ _1240_ _1159__bF$buf2 _1264_ _1116_ vdd gnd OAI21X1
XFILL_0__3500_ gnd vdd FILL
X_2731_ \u_rf_serial.tx_state\[0] _84_ _105_ vdd gnd NOR2X1
X_2311_ _1315__bF$buf5 _1304__bF$buf4 \u_mem_serial.shift_rx\[8] _1332_ vdd gnd OAI21X1
XFILL_0__3097_ gnd vdd FILL
X_3936_ _643_ i_clk_sys_ext_bF$buf33 rreg1[0] vdd gnd DFFPOSX1
X_3516_ \u_rf_if.wdata0_r\[0] _471_ _469_ _468_ vdd gnd OAI21X1
XFILL_1__3258_ gnd vdd FILL
X_4474_ \u_cpu.decode.i_wb_rdt\[17] _1871_ _1874_ _1875_ vdd gnd NAND3X1
X_4054_ _863_ i_clk_sys_ext_bF$buf27 \u_cpu.bufreg.data\[3] vdd gnd DFFPOSX1
X_2960_ \u_rf_if.issue_sel_bF$buf2\ _1581_ _1451_ vdd gnd NAND2X1
X_2540_ \u_mem_serial.active_ibus_bF$buf2\ \u_cpu.bufreg.data\[7] _813_ vdd gnd NOR2X1
X_3745_ \u_cpu.decode.opcode\[0] \u_cpu.bufreg.i_imm_en\ _392_ _393_ vdd gnd OAI21X1
X_3325_ _2123_ _18_ _2116_ vdd gnd NAND2X1
XFILL_1__2282_ gnd vdd FILL
XFILL_0__2177_ gnd vdd FILL
X_4283_ _1099_ i_clk_sys_ext_bF$buf31 \u_cpu.bufreg2.dlo\[1] vdd gnd DFFPOSX1
X_3974_ \u_cpu.bufreg.i_en_bF$buf2\ _906_ _907_ _862_ vdd gnd OAI21X1
X_3554_ \u_cpu.bufreg2.i_bytecnt\[0] _2043_ vdd gnd INVX1
X_3134_ \u_rf_if.rreg1_latched\[1] _1690_ vdd gnd INVX1
X_4759_ i_rst_n_bF$buf0 vdd _1815_ i_clk_sys_ext_bF$buf29 ibus_pending_rdt[29] vdd 
+ gnd
+ DFFSR
X_4339_ rst_bF$buf7 \u_cpu.ctrl.i_pc_en\ _1525_ vdd gnd NOR2X1
X_4092_ _1133_ _1134_ _1138_ vdd gnd AND2X2
X_2825_ _575_ i_clk_sys_ext_bF$buf32 \u_rf_if.read_buf1\[7] vdd gnd DFFPOSX1
X_2405_ \u_cpu.bufreg2.dlo\[19] _796_ _845_ \u_cpu.bufreg2.dlo\[17] _1050_ vdd 
+ gnd
+ AOI22X1
XFILL_0__4132_ gnd vdd FILL
X_3783_ _792_ i_clk_fast_bF$buf3 \u_mem_serial.shift_rx\[14] vdd gnd DFFPOSX1
X_3363_ _39_ _38_ rf_ready vdd gnd NAND2X1
X_4568_ \u_mem_serial.shift_rx\[19] _1861__bF$buf2 _1937_ vdd gnd NAND2X1
X_4148_ _1183_ _1159__bF$buf0 _1185_ _1098_ vdd gnd OAI21X1
XFILL_0__3823_ gnd vdd FILL
X_2634_ _246_ _245_ _247_ _248_ _249_ vdd 
+ gnd
+ AOI22X1
X_2214_ _1315__bF$buf0 _1304__bF$buf3 \u_mem_serial.shift_rx\[24] _1403_ vdd gnd OAI21X1
XFILL_0__4361_ gnd vdd FILL
X_3839_ _672_ _673_ rf_rreq_bF$buf0 _674_ vdd gnd AOI21X1
X_3419_ \u_rf_if.read_buf0\[2] _335_ vdd gnd INVX1
XFILL142950x7350 gnd vdd FILL
XFILL_1__4522_ gnd vdd FILL
XFILL_1__4102_ gnd vdd FILL
X_3592_ \u_cpu.alu.i_cmp_eq\ _2098_ vdd gnd INVX1
X_3172_ _1718_ _1719_ rst_bF$buf2 _570_ vdd gnd AOI21X1
X_4377_ _1546_ _1526_ _1544_ _1530_ _1480_ vdd 
+ gnd
+ OAI22X1
XFILL_0__3212_ gnd vdd FILL
XFILL_0__4417_ gnd vdd FILL
XFILL143250x54150 gnd vdd FILL
X_2863_ _554_ i_clk_sys_ext_bF$buf41 \u_rf_if.prefetch_active\ vdd gnd DFFPOSX1
X_2443_ _1010_ _1011_ _1008_ _1009_ _1012_ vdd 
+ gnd
+ OAI22X1
X_3648_ _767_ i_clk_fast_bF$buf5 \u_mem_serial.bit_count\[5] vdd gnd DFFPOSX1
X_3228_ _13__bF$buf1 _1759_ \u_rf_if.read_buf1\[17] _1758_ vdd gnd OAI21X1
X_4186_ _1133_ _1208_ _1217_ _1218_ vdd gnd AOI21X1
XFILL_0__3021_ gnd vdd FILL
X_2919_ \u_rf_if.write_wait\[3] _1674_ _729_ _620_ vdd gnd AOI21X1
XFILL_0__4226_ gnd vdd FILL
X_2672_ \u_rf_serial.last_req_key\[6] _217_ vdd gnd INVX1
X_2252_ _1370_ _1371_ \u_mem_serial.active_ibus_bF$buf3\ _1379_ vdd gnd OAI21X1
X_3877_ \u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20\[0] _660__bF$buf2 _702_ vdd gnd NAND2X1
X_3457_ \u_rf_if.read_buf1\[7] _440_ \u_rf_if.stream_cnt_0_bF$buf1\ _417_ vdd gnd OAI21X1
X_3037_ _1688__bF$buf3 _1746_ \u_rf_if.read_buf0\[13] _1618_ vdd gnd OAI21X1
XFILL_0__3917_ gnd vdd FILL
XFILL_1__4140_ gnd vdd FILL
XFILL_0__3670_ gnd vdd FILL
X_2728_ _107_ _96_ _83_ _108_ vdd gnd OAI21X1
X_2308_ _1314_ _1334_ _1303_ _1335_ vdd gnd NAND3X1
XFILL_0__4035_ gnd vdd FILL
X_2481_ \u_mem_serial.active_ibus_bF$buf3\ _971_ _972_ _973_ vdd gnd OAI21X1
X_3686_ _164_ _185_ rst_bF$buf8 _129_ vdd gnd AOI21X1
X_3266_ _3_ _2114_ _1788_ vdd gnd NOR2X1
XFILL_0__3306_ gnd vdd FILL
X_2957_ _1668_ _1450_ _1449_ _508_ vdd gnd AOI21X1
X_2537_ \u_cpu.ctrl.o_ibus_adr\[5] \u_cpu.bufreg.data\[5] \u_mem_serial.active_ibus_bF$buf0\ _816_ vdd gnd MUX2X1
XFILL_1__2279_ gnd vdd FILL
XFILL_1__3220_ gnd vdd FILL
X_2290_ \u_mem_serial.shift_rx\[3] _1297__bF$buf3 _1349_ vdd gnd NAND2X1
XFILL_1__4005_ gnd vdd FILL
X_3495_ _454_ _479__bF$buf1 _453_ \u_rf_if.o_wen\ vdd gnd OAI21X1
X_3075_ _1644_ _1645_ rst_bF$buf3 _545_ vdd gnd AOI21X1
XFILL_0__2330_ gnd vdd FILL
XFILL_0__3955_ gnd vdd FILL
X_2766_ _487_ i_clk_sys_ext_bF$buf24 \u_rf_if.wdata1_phase\[0] vdd gnd DFFPOSX1
X_2346_ _1300_ _1299_ _1301_ vdd gnd NOR2X1
X_4089_ _1132_ _1133_ _1134_ _1135_ vdd gnd NAND3X1
XFILL_0__3344_ gnd vdd FILL
XFILL_1__2720_ gnd vdd FILL
XFILL_0__4549_ gnd vdd FILL
XFILL_0__4129_ gnd vdd FILL
X_2995_ _2108__bF$buf2 _1686__bF$buf1 _1769_ _1589_ vdd gnd NAND3X1
X_2575_ _52_ i_clk_fast_bF$buf1 \u_rf_serial.tx_state\[4] vdd gnd DFFPOSX1
X_2155_ _750_ i_clk_fast_bF$buf7 \u_mem_serial.shift_rx\[9] vdd gnd DFFPOSX1
XFILL_0__2615_ gnd vdd FILL
X_4721_ vdd i_rst_n_bF$buf5 _1849_ i_clk_sys_ext_bF$buf9 ibus_pending_rdt[0] vdd 
+ gnd
+ DFFSR
X_4301_ _1113_ i_clk_sys_ext_bF$buf31 \u_cpu.bufreg2.dlo\[17] vdd gnd DFFPOSX1
XFILL_1__4043_ gnd vdd FILL
XFILL_0__3993_ gnd vdd FILL
XFILL_0__3573_ gnd vdd FILL
XFILL_0__3153_ gnd vdd FILL
X_2384_ _845_ \u_cpu.bufreg2.dlo\[9] \u_cpu.bufreg2.dlo\[10] _1048_ _1071_ vdd 
+ gnd
+ AOI22X1
X_3589_ _2094_ _2092_ _2095_ vdd gnd NAND2X1
X_3169_ _1716_ _1717_ rst_bF$buf0 _569_ vdd gnd AOI21X1
XFILL_0__2424_ gnd vdd FILL
X_4530_ ibus_pending_ack_bF$buf2 _1910_ _1911_ \u_cpu.i_ibus_rdt\[0] vdd gnd OAI21X1
X_4110_ _1151_ _1152_ _1150_ _1153_ vdd gnd OAI21X1
X_3801_ _358_ i_clk_sys_ext_bF$buf30 \u_cpu.decode.co_ebreak\ vdd gnd DFFPOSX1
XFILL142650x32550 gnd vdd FILL
XFILL_0__4167_ gnd vdd FILL
X_2193_ _1417_ _1418_ rst_bF$buf10 _782_ vdd gnd AOI21X1
XFILL_1__4328_ gnd vdd FILL
X_3398_ \u_rf_if.read_buf0\[14] \u_rf_if.stream_cnt_0_bF$buf5\ \u_rf_if.stream_cnt_1_bF$buf2\ _314_ vdd gnd OAI21X1
XFILL_0__2653_ gnd vdd FILL
XFILL_0__2233_ gnd vdd FILL
XFILL_0__3858_ gnd vdd FILL
XFILL_0__3438_ gnd vdd FILL
XFILL_0__3191_ gnd vdd FILL
X_2669_ \u_rf_serial.last_req_key\[5] _219_ vdd gnd INVX1
X_2249_ _1381_ _1379_ rst_bF$buf9 _763_ vdd gnd AOI21X1
X_3610_ \u_cpu.decode.co_two_stage_op\ _133_ _134_ vdd gnd NAND2X1
XFILL_1_BUFX2_insert232 gnd vdd FILL
XFILL_1_BUFX2_insert236 gnd vdd FILL
XFILL_0__2709_ gnd vdd FILL
XFILL_1__4557_ gnd vdd FILL
XFILL_0__3247_ gnd vdd FILL
XFILL_1__3408_ gnd vdd FILL
X_2898_ rst_bF$buf1 _470_ _485_ vdd gnd NOR2X1
X_2478_ _963_ _975_ _853_ _976_ vdd gnd OAI21X1
XFILL_0__2938_ gnd vdd FILL
XFILL_0__2518_ gnd vdd FILL
X_4624_ _1949_ _1872__bF$buf3 _1823_ vdd gnd NAND2X1
X_4204_ \u_cpu.bufreg.i_shamt\[1] _1205_ _1193_ _1234_ vdd gnd NAND3X1
XFILL_1__3581_ gnd vdd FILL
XFILL_0__2271_ gnd vdd FILL
XFILL_0__3896_ gnd vdd FILL
XFILL_1__2432_ gnd vdd FILL
X_2287_ _1348_ _1351_ rst_bF$buf5 _755_ vdd gnd AOI21X1
XFILL_0__2747_ gnd vdd FILL
X_4433_ _1479_ i_clk_sys_ext_bF$buf16 \u_cpu.ctrl.o_ibus_adr\[30] vdd gnd DFFPOSX1
X_4013_ _911_ _915_ _933_ _935_ _873_ vdd 
+ gnd
+ AOI22X1
XFILL_1__4595_ gnd vdd FILL
XFILL_1__4175_ gnd vdd FILL
XFILL_0__3285_ gnd vdd FILL
X_3704_ \u_cpu.decode.co_mem_signed\ _366_ _367_ _368_ vdd gnd NAND3X1
XFILL_1__3446_ gnd vdd FILL
XFILL_0__2976_ gnd vdd FILL
X_4662_ ibus_pending_rdt[6] _1991_ vdd gnd INVX1
XFILL_0__2136_ gnd vdd FILL
X_4242_ _1260_ _1159__bF$buf1 _1262_ _1115_ vdd gnd OAI21X1
X_3933_ _646_ i_clk_sys_ext_bF$buf28 \u_cpu.immdec.gen_immdec_w_eq_1.imm11_7\[1] vdd gnd DFFPOSX1
X_3513_ \u_rf_if.wdata1_r\[0] _466_ _465_ vdd gnd NAND2X1
XFILL_1__2890_ gnd vdd FILL
XFILL_1__2470_ gnd vdd FILL
X_4718_ _2028_ _2029_ _2030_ vdd gnd NOR2X1
XFILL_0__2365_ gnd vdd FILL
X_4471_ _1872__bF$buf0 rf_rreq vdd gnd INVX8
X_4051_ _866_ i_clk_sys_ext_bF$buf27 \u_cpu.bufreg.data\[29] vdd gnd DFFPOSX1
XFILL_0__4511_ gnd vdd FILL
X_3742_ _390_ \u_cpu.csr_imm_en\ vdd gnd INVX1
X_3322_ _5__bF$buf0 _2113_ _2112_ vdd gnd NAND2X1
X_4527_ ibus_pending_ack_bF$buf1 _1908_ _1909_ \u_cpu.decode.i_wb_rdt\[5] vdd gnd OAI21X1
X_4107_ \u_cpu.state.i_ctrl_misalign\ \u_cpu.bufreg2.i_bytecnt\[1] _1150_ vdd gnd OR2X2
XFILL_1__3484_ gnd vdd FILL
XFILL_0__2594_ gnd vdd FILL
X_4280_ _1102_ i_clk_sys_ext_bF$buf17 \u_cpu.bufreg2.dhi\[5] vdd gnd DFFPOSX1
XFILL143250x100950 gnd vdd FILL
XFILL_0__3379_ gnd vdd FILL
XFILL_1__2755_ gnd vdd FILL
X_3971_ _887__bF$buf1 _903_ _905_ _861_ vdd gnd OAI21X1
X_3551_ \u_cpu.bufreg2.i_bytecnt\[0] _2039_ _2040_ vdd gnd NAND2X1
X_3131_ \u_rf_if.issue_sel_bF$buf3\ \u_rf_if.prefetch_active\ _14_ _1688_ vdd gnd NAND3X1
X_4756_ i_rst_n_bF$buf0 vdd _1818_ i_clk_sys_ext_bF$buf9 ibus_pending_rdt[26] vdd 
+ gnd
+ DFFSR
X_4336_ \u_cpu.ctrl.i_jal_or_jalr\ _1522_ _1523_ vdd gnd NAND2X1
XFILL_1__3293_ gnd vdd FILL
X_2822_ _601_ i_clk_sys_ext_bF$buf32 \u_rf_if.stream_cnt\[2] vdd gnd DFFPOSX1
X_2402_ _845_ \u_cpu.bufreg2.dlo\[21] \u_cpu.bufreg2.dlo\[22] _1048_ _1053_ vdd 
+ gnd
+ AOI22X1
X_3607_ \u_cpu.decode.co_rd_alu_en\ \u_cpu.alu.o_rd\ _31_ vdd gnd NAND2X1
XFILL_1__2144_ gnd vdd FILL
XFILL_1__4710_ gnd vdd FILL
X_3780_ rf_rreq_bF$buf6 \u_cpu.decode.co_mem_signed\ _405_ _357_ vdd gnd OAI21X1
X_3360_ _441__bF$buf3 _440_ _35_ vdd gnd NOR2X1
XFILL_0__2459_ gnd vdd FILL
X_4565_ \u_mem_serial.shift_rx\[24] _1861__bF$buf1 _1935_ vdd gnd NAND2X1
X_4145_ \u_cpu.bufreg2.dlo\[2] _1183_ vdd gnd INVX1
XFILL_0__3400_ gnd vdd FILL
XFILL_0__4605_ gnd vdd FILL
X_2631_ ren_bF$buf0 raddr[5] _252_ vdd gnd NAND2X1
X_2211_ \u_cpu.o_dbus_cyc\ \u_cpu.bufreg2.i_op_b_sel\ _1308_ _1405_ vdd gnd NAND3X1
X_3836_ \u_cpu.immdec.gen_immdec_w_eq_1.imm31\ \u_cpu.decode.co_immdec_ctrl\[1] _670_ _671_ vdd gnd NAND3X1
X_3416_ _336_ _333_ _440_ _332_ vdd gnd MUX2X1
XFILL_0__2688_ gnd vdd FILL
X_4374_ \u_cpu.ctrl.o_ibus_adr\[31] _1527_ _1545_ vdd gnd NAND2X1
X_2860_ _482_ i_clk_sys_ext_bF$buf0 \u_rf_if.rcnt\[0] vdd gnd DFFPOSX1
X_2440_ \u_mem_serial.active_ibus_bF$buf1\ _1013_ _1014_ _1015_ vdd gnd OAI21X1
X_3645_ \u_cpu.state.o_cnt\[2] _160_ vdd gnd INVX2
X_3225_ _1756_ _1758_ rst_bF$buf7 _585_ vdd gnd AOI21X1
XFILL_0__2900_ gnd vdd FILL
XFILL_0__2497_ gnd vdd FILL
X_4183_ _1213_ _1215_ _1207_ _1103_ vdd gnd OAI21X1
X_2916_ _1674_ _619_ _618_ vdd gnd AND2X2
XFILL_0__4643_ gnd vdd FILL
X_3874_ _660__bF$buf0 _698_ _699_ _633_ vdd gnd OAI21X1
X_3454_ _435_ _429_ _415_ _422_ _414_ vdd 
+ gnd
+ OAI22X1
X_3034_ rf_read_reg0_to_if[4] _1693_ _27__bF$buf3 _1616_ vdd gnd OAI21X1
X_4659_ _1944_ _1959__bF$buf4 _1989_ _1840_ vdd gnd OAI21X1
X_4239_ \u_cpu.bufreg2.dlo\[15] _1260_ vdd gnd INVX1
X_2725_ _91_ raddr[5] _110_ _111_ vdd gnd OAI21X1
X_2305_ \u_mem_serial.shift_rx\[6] _1297__bF$buf1 _1337_ vdd gnd NAND2X1
X_3683_ _183_ _182_ rst_bF$buf8 _128_ vdd gnd AOI21X1
X_3263_ _1786_ _1789_ rst_bF$buf6 _593_ vdd gnd AOI21X1
X_4468_ mem_ibus_ack_bF$buf4 _1870_ vdd gnd INVX1
X_4048_ _869_ i_clk_sys_ext_bF$buf14 \u_cpu.bufreg.data\[27] vdd gnd DFFPOSX1
X_2954_ _1448_ _1667_ _1447_ _507_ vdd gnd AOI21X1
X_2534_ _809_ _815_ _818_ _819_ vdd gnd AOI21X1
XFILL_0__4681_ gnd vdd FILL
XFILL_0__4261_ gnd vdd FILL
X_3739_ _790_ i_clk_fast_bF$buf2 \u_mem_serial.shift_rx\[16] vdd gnd DFFPOSX1
X_3319_ _8_ _12_ _2109_ vdd gnd OR2X2
X_3492_ \u_rf_if.wdata0_next\[0] _471_ _451_ _450_ vdd gnd OAI21X1
X_3072_ _1642_ _1643_ rst_bF$buf0 _544_ vdd gnd AOI21X1
X_4697_ rreg0[3] rf_rreq_bF$buf7 _1872__bF$buf1 _2014_ vdd gnd NAND3X1
X_4277_ _1105_ i_clk_sys_ext_bF$buf17 \u_cpu.bufreg.i_shamt\[2] vdd gnd DFFPOSX1
XFILL_0__4317_ gnd vdd FILL
X_2763_ raddr[7] raddr[6] _75_ vdd gnd NOR2X1
X_2343_ _1303_ _1304_ vdd gnd INVX8
XFILL_0__4490_ gnd vdd FILL
X_3968_ \u_cpu.bufreg.i_en_bF$buf2\ \u_cpu.bufreg.data\[7] _904_ vdd gnd NAND2X1
X_3548_ \u_cpu.bufreg2.i_bytecnt\[1] _2037_ vdd gnd INVX1
X_3128_ _1686__bF$buf3 _2055_ _2106_ _1685_ vdd gnd NAND3X1
XFILL142350x10950 gnd vdd FILL
X_4086_ \u_cpu.bufreg2.dhi\[4] _1132_ vdd gnd INVX1
XFILL_0__3761_ gnd vdd FILL
XFILL_0__3341_ gnd vdd FILL
X_2819_ _578_ i_clk_sys_ext_bF$buf6 \u_rf_if.read_buf1\[10] vdd gnd DFFPOSX1
X_2992_ _1800__bF$buf1 _1686__bF$buf1 _1713_ _1587_ vdd gnd NAND3X1
X_2572_ _54_ i_clk_fast_bF$buf0 \u_rf_serial.shift_rx\[0] vdd gnd DFFPOSX1
X_2152_ _783_ i_clk_fast_bF$buf7 mem_ibus_ack vdd gnd DFFPOSX1
X_3777_ _775_ i_clk_fast_bF$buf4 \u_mem_serial.shift_rx\[25] vdd gnd DFFPOSX1
X_3357_ rst_bF$buf7 _27_ vdd gnd INVX8
X_2628_ ren_bF$buf0 _254_ _255_ vdd gnd NAND2X1
X_2208_ _1370_ _1307_ \u_mem_serial.req_pending\ _1407_ vdd gnd OAI21X1
XFILL_0__4355_ gnd vdd FILL
X_2381_ \u_cpu.bufreg2.dlo\[15] _796_ _840_ \u_cpu.bufreg2.dlo\[12] _1074_ vdd 
+ gnd
+ AOI22X1
X_3586_ _2075_ _2070_ _2077_ _2092_ vdd gnd AOI21X1
X_3166_ _1767_ _5__bF$buf1 _1713_ vdd gnd NOR2X1
XFILL_0__3626_ gnd vdd FILL
XFILL_0__3206_ gnd vdd FILL
X_2857_ _557_ i_clk_sys_ext_bF$buf42 \u_rf_if.read_buf0\[29] vdd gnd DFFPOSX1
X_2437_ \u_mem_serial.active_ibus_bF$buf1\ \u_cpu.ctrl.o_ibus_adr\[17] _1018_ vdd gnd NAND2X1
XFILL_0__4584_ gnd vdd FILL
XFILL_1__2179_ gnd vdd FILL
XFILL_1__3120_ gnd vdd FILL
X_2190_ _1308_ _1411_ _1421_ vdd gnd NAND2X1
X_3395_ _443_ _318_ _312_ _311_ vdd gnd AOI21X1
XFILL_0__3435_ gnd vdd FILL
XFILL_0__3015_ gnd vdd FILL
X_2666_ _219_ _215__bF$buf3 _221_ _59_ vdd gnd AOI21X1
X_2246_ _1382_ _1383_ rst_bF$buf5 _764_ vdd gnd AOI21X1
XFILL_1_BUFX2_insert201 gnd vdd FILL
XFILL_1_BUFX2_insert205 gnd vdd FILL
XFILL_1_BUFX2_insert209 gnd vdd FILL
XFILL_0__3664_ gnd vdd FILL
XFILL_1__3825_ gnd vdd FILL
X_2895_ \u_rf_if.i_rreq\ _1701_ _608_ vdd gnd NOR2X1
X_2475_ \u_cpu.ctrl.o_ibus_adr\[26] _979_ vdd gnd INVX1
X_4621_ \u_rf_if.o_waddr\[3] \u_rf_if.o_waddr\[2] \u_rf_if.o_wen\ _1970_ vdd gnd NAND3X1
X_4201_ _1133_ _1230_ _1131_ _1231_ vdd gnd OAI21X1
XFILL_1__4363_ gnd vdd FILL
XFILL_0__3473_ gnd vdd FILL
XFILL_0__3053_ gnd vdd FILL
XFILL_0__4678_ gnd vdd FILL
X_2284_ _1353_ _1354_ vdd gnd INVX1
X_3489_ _448_ _478_ _447_ vdd gnd NAND2X1
X_3069_ _1641_ _1640_ rst_bF$buf6 _543_ vdd gnd AOI21X1
X_4430_ _1487_ i_clk_sys_ext_bF$buf40 \u_cpu.ctrl.o_ibus_adr\[11] vdd gnd DFFPOSX1
X_4010_ \u_cpu.bufreg.i_init\ _932_ _894_ _933_ vdd gnd NAND3X1
XFILL_0__3949_ gnd vdd FILL
XFILL_0__3109_ gnd vdd FILL
X_3701_ \u_cpu.bufreg.i_right_shift_op\ \u_cpu.decode.co_mem_signed\ vdd gnd INVX1
XFILL_1__4228_ gnd vdd FILL
X_3298_ _8_ _2052_ _2051_ vdd gnd NOR2X1
XFILL_0__2973_ gnd vdd FILL
XFILL_0__2553_ gnd vdd FILL
XFILL_0_BUFX2_insert240 gnd vdd FILL
XFILL_0__3091_ gnd vdd FILL
X_2989_ _1713_ _1686__bF$buf1 _2055_ _1585_ vdd gnd NAND3X1
X_2569_ _69_ i_clk_fast_bF$buf1 \u_rf_serial.last_req_key\[0] vdd gnd DFFPOSX1
X_2149_ _793_ i_clk_fast_bF$buf3 \u_mem_serial.shift_rx\[13] vdd gnd DFFPOSX1
X_3930_ _622_ i_clk_sys_ext_bF$buf21 rreg0[4] vdd gnd DFFPOSX1
X_3510_ _478_ _468_ _463_ \u_rf_if.o_wdata\[0] vdd gnd OAI21X1
XFILL_0__2609_ gnd vdd FILL
X_4715_ _2026_ _2024_ \u_cpu.decode.i_wb_rdt\[2] _2027_ vdd gnd AOI21X1
XFILL_1__3672_ gnd vdd FILL
XFILL_1__4457_ gnd vdd FILL
XFILL_0__3987_ gnd vdd FILL
XFILL_0__3567_ gnd vdd FILL
XFILL_0__3147_ gnd vdd FILL
XFILL_1__3308_ gnd vdd FILL
X_2798_ _492_ i_clk_sys_ext_bF$buf0 \u_rf_if.write_wait\[0] vdd gnd DFFPOSX1
X_2378_ _1073_ _1076_ _803_ _1077_ vdd gnd AOI21X1
X_4524_ _1906_ rf_rreq_bF$buf5 _1907_ rf_read_reg0_to_if[1] vdd gnd OAI21X1
X_4104_ \u_cpu.bufreg2.i_op_b_sel\ _1146_ _1147_ \u_cpu.alu.i_op_b\ vdd gnd OAI21X1
XFILL_0__2171_ gnd vdd FILL
XFILL_0__3796_ gnd vdd FILL
XFILL_1__2332_ gnd vdd FILL
XFILL_1__3537_ gnd vdd FILL
X_2187_ \u_mem_serial.shift_rx\[20] _1377__bF$buf2 _1423_ vdd gnd NAND2X1
XFILL_0__2227_ gnd vdd FILL
X_4753_ i_rst_n_bF$buf0 vdd _1821_ i_clk_sys_ext_bF$buf28 ibus_pending_rdt[24] vdd 
+ gnd
+ DFFSR
X_4333_ \u_cpu.ctrl.pc\ \u_cpu.ctrl.pc_plus_4_cy_r_w\ _1520_ vdd gnd OR2X2
XFILL_0__3185_ gnd vdd FILL
X_3604_ \u_cpu.immdec.gen_immdec_w_eq_1.imm11_7\[3] \u_cpu.immdec.gen_immdec_w_eq_1.imm11_7\[2] \u_cpu.immdec.gen_immdec_w_eq_1.imm11_7\[4] _29_ vdd gnd NOR3X1
XFILL_1_BUFX2_insert171 gnd vdd FILL
XFILL_1_BUFX2_insert175 gnd vdd FILL
XFILL_1_BUFX2_insert178 gnd vdd FILL
XFILL_1__3346_ gnd vdd FILL
X_4562_ \u_mem_serial.shift_rx\[25] _1861__bF$buf5 _1933_ vdd gnd NAND2X1
X_4142_ mem_dbus_ack_bF$buf5 _1177_ _1181_ vdd gnd NOR2X1
XFILL_1__2617_ gnd vdd FILL
X_3833_ \u_cpu.decode.co_immdec_ctrl\[1] _668_ vdd gnd INVX1
X_3413_ \u_rf_if.read_buf0\[7] _441__bF$buf2 _329_ vdd gnd NOR2X1
X_4618_ mem_ibus_ack_bF$buf2 \u_mem_serial.shift_rx\[24] _1960__bF$buf4 _1968_ vdd gnd NAND3X1
XFILL_1__3155_ gnd vdd FILL
XFILL_0__2265_ gnd vdd FILL
X_4371_ _1536_ _1526_ _1543_ _1530_ _1477_ vdd 
+ gnd
+ OAI22X1
XFILL_0__4411_ gnd vdd FILL
X_3642_ \u_cpu.bufreg2.i_bytecnt\[1] _158_ vdd gnd INVX2
X_3222_ _2110__bF$buf0 _0_ _1754_ _1753_ vdd gnd NAND3X1
X_4427_ _1466_ i_clk_sys_ext_bF$buf27 \u_cpu.ctrl.o_ibus_adr\[1] vdd gnd DFFPOSX1
X_4007_ \u_cpu.bufreg.i_rs1_en\ rdata0[0] _891_ _930_ vdd gnd NAND3X1
XBUFX2_insert220 \u_rf_if.stream_cnt\[1] \u_rf_if.stream_cnt_1_bF$buf0\ vdd gnd BUFX2
XBUFX2_insert221 _1525_ _1525__bF$buf4 vdd gnd BUFX2
XBUFX2_insert222 _1525_ _1525__bF$buf3 vdd gnd BUFX2
XBUFX2_insert223 _1525_ _1525__bF$buf2 vdd gnd BUFX2
XBUFX2_insert224 _1525_ _1525__bF$buf1 vdd gnd BUFX2
XBUFX2_insert225 _1525_ _1525__bF$buf0 vdd gnd BUFX2
XBUFX2_insert226 _1686_ _1686__bF$buf4 vdd gnd BUFX2
XBUFX2_insert227 _1686_ _1686__bF$buf3 vdd gnd BUFX2
XBUFX2_insert228 _1686_ _1686__bF$buf2 vdd gnd BUFX2
XBUFX2_insert229 _1686_ _1686__bF$buf1 vdd gnd BUFX2
X_4180_ _1211_ _1212_ mem_dbus_ack_bF$buf0 _1213_ vdd gnd AOI21X1
X_2913_ \u_rf_if.write_wait\[0] \u_rf_if.write_wait\[1] _617_ _616_ vdd gnd AOI21X1
XFILL_0__3279_ gnd vdd FILL
XFILL_1__2655_ gnd vdd FILL
X_3871_ _660__bF$buf0 _696_ _697_ _632_ vdd gnd OAI21X1
X_3451_ \u_rf_if.read_buf1\[25] \u_rf_if.stream_cnt_0_bF$buf5\ _403_ vdd gnd NAND2X1
X_3031_ _2108__bF$buf0 _1686__bF$buf2 _1806_ _1614_ vdd gnd NAND3X1
X_4656_ mem_ibus_ack_bF$buf1 \u_mem_serial.shift_rx\[9] _1960__bF$buf0 _1988_ vdd gnd NAND3X1
X_4236_ mem_dbus_ack_bF$buf5 _1255_ _1258_ vdd gnd NOR2X1
XFILL_1__3193_ gnd vdd FILL
X_2722_ ren_bF$buf1 _112_ _113_ _114_ vdd gnd OAI21X1
X_2302_ _1336_ _1339_ rst_bF$buf5 _752_ vdd gnd AOI21X1
XFILL_0__3088_ gnd vdd FILL
X_3927_ _625_ i_clk_sys_ext_bF$buf18 rreg1[4] vdd gnd DFFPOSX1
X_3507_ _462_ _479__bF$buf0 _461_ \u_rf_if.o_waddr\[7] vdd gnd OAI21X1
X_3680_ _179_ _181_ _180_ _127_ vdd gnd OAI21X1
X_3260_ _2110__bF$buf4 _5__bF$buf3 _1784_ _1783_ vdd gnd NAND3X1
XFILL_0__2359_ gnd vdd FILL
X_4465_ _1864_ _1865_ _1866_ _1867_ vdd gnd NAND3X1
X_4045_ \u_cpu.bufreg.i_en_bF$buf1\ \u_cpu.bufreg.data\[13] _955_ vdd gnd NAND2X1
XFILL_0__3300_ gnd vdd FILL
XFILL_0__4505_ gnd vdd FILL
X_2951_ _1446_ _1667_ _1445_ _506_ vdd gnd AOI21X1
X_2531_ \u_mem_serial.active_ibus_bF$buf2\ \u_cpu.bufreg.data\[3] _822_ vdd gnd NOR2X1
X_3736_ \u_cpu.branch_op\ \u_cpu.cond_branch\ _388_ vdd gnd NOR2X1
X_3316_ _2107_ _2108__bF$buf1 _2106_ vdd gnd NOR2X1
XFILL_1__3898_ gnd vdd FILL
XFILL_0__2588_ gnd vdd FILL
X_4694_ rreg1[0] rf_rreq_bF$buf1 _1872__bF$buf0 _2012_ vdd gnd NAND3X1
X_4274_ mem_dbus_ack_bF$buf4 \u_mem_serial.shift_rx\[8] _1167__bF$buf0 _1285_ _1286_ vdd 
+ gnd
+ AOI22X1
X_2760_ _76_ \u_rf_serial.shift_rx\[1] rdata[1] vdd gnd AND2X2
X_2340_ _1306_ \u_mem_serial.clk_sys_prev\ _1307_ vdd gnd OR2X2
X_3965_ \u_cpu.bufreg.data\[7] _887__bF$buf2 _902_ vdd gnd NAND2X1
X_3545_ \u_cpu.bufreg.data\[0] _2035_ _2033_ \u_cpu.mem_if.o_wb_sel\[2] vdd gnd OAI21X1
X_3125_ _5__bF$buf2 _1686__bF$buf2 _1810_ _1683_ vdd gnd NAND3X1
XFILL_0__2397_ gnd vdd FILL
X_4083_ _1125_ _1128_ _1126_ _1129_ vdd gnd OAI21X1
X_2816_ _526_ i_clk_sys_ext_bF$buf7 raddr[8] vdd gnd DFFPOSX1
XCLKBUF1_insert140 i_clk_sys_ext_hier0_bF$buf5 i_clk_sys_ext_bF$buf15 vdd gnd CLKBUF1
XCLKBUF1_insert141 i_clk_sys_ext_hier0_bF$buf2 i_clk_sys_ext_bF$buf14 vdd gnd CLKBUF1
XCLKBUF1_insert142 i_clk_sys_ext_hier0_bF$buf3 i_clk_sys_ext_bF$buf13 vdd gnd CLKBUF1
XCLKBUF1_insert143 i_clk_sys_ext_hier0_bF$buf1 i_clk_sys_ext_bF$buf12 vdd gnd CLKBUF1
XCLKBUF1_insert144 i_clk_sys_ext_hier0_bF$buf4 i_clk_sys_ext_bF$buf11 vdd gnd CLKBUF1
XCLKBUF1_insert145 i_clk_sys_ext_hier0_bF$buf5 i_clk_sys_ext_bF$buf10 vdd gnd CLKBUF1
XCLKBUF1_insert146 i_clk_sys_ext_hier0_bF$buf0 i_clk_sys_ext_bF$buf9 vdd gnd CLKBUF1
XCLKBUF1_insert147 i_clk_sys_ext_hier0_bF$buf2 i_clk_sys_ext_bF$buf8 vdd gnd CLKBUF1
XFILL_0__4543_ gnd vdd FILL
XCLKBUF1_insert148 i_clk_sys_ext_hier0_bF$buf1 i_clk_sys_ext_bF$buf7 vdd gnd CLKBUF1
XFILL_0__4123_ gnd vdd FILL
XCLKBUF1_insert149 i_clk_sys_ext_hier0_bF$buf5 i_clk_sys_ext_bF$buf6 vdd gnd CLKBUF1
XFILL_1__2978_ gnd vdd FILL
XFILL_1__2558_ gnd vdd FILL
X_3774_ rf_rreq_bF$buf6 _366_ _402_ _354_ vdd gnd OAI21X1
X_3354_ \u_rf_if.stream_cnt_1_bF$buf1\ _37_ _25_ vdd gnd NAND2X1
X_4559_ \u_mem_serial.shift_rx\[26] _1861__bF$buf5 _1931_ vdd gnd NAND2X1
X_4139_ mem_dbus_ack_bF$buf1 \u_mem_serial.shift_rx\[4] _1167__bF$buf0 _1178_ _1179_ vdd 
+ gnd
+ AOI22X1
XFILL_0__3814_ gnd vdd FILL
X_2625_ \u_rf_if.o_waddr\[1] _91_ _258_ vdd gnd NAND2X1
X_2205_ _1305_ _1409_ _1408_ _1410_ vdd gnd NAND3X1
XFILL_1__2367_ gnd vdd FILL
X_3583_ _2089_ \u_cpu.bufreg.i_right_shift_op\ \u_cpu.alu.i_buf\ _2090_ vdd gnd AOI21X1
X_3163_ _13__bF$buf3 _1715_ \u_rf_if.read_buf1\[2] _1711_ vdd gnd OAI21X1
XFILL143250x28950 gnd vdd FILL
X_4368_ _1542_ _1526_ _1541_ _1530_ _1475_ vdd 
+ gnd
+ OAI22X1
XFILL_0__3203_ gnd vdd FILL
X_2854_ _517_ i_clk_sys_ext_bF$buf6 \u_rf_if.read_buf0\[2] vdd gnd DFFPOSX1
X_2434_ _966_ _1016_ _1020_ _1021_ vdd gnd NAND3X1
XFILL_0__4161_ gnd vdd FILL
X_3639_ rst_bF$buf8 _156_ vdd gnd INVX1
X_3219_ _13__bF$buf4 _1752_ \u_rf_if.read_buf1\[15] _1751_ vdd gnd OAI21X1
XFILL143250x108150 gnd vdd FILL
X_3392_ \u_rf_if.read_buf0\[25] _441__bF$buf0 _440_ _308_ vdd gnd OAI21X1
XBUFX2_insert190 _1872_ _1872__bF$buf0 vdd gnd BUFX2
XBUFX2_insert191 \u_rf_if.issue_sel\ \u_rf_if.issue_sel_bF$buf3\ vdd gnd BUFX2
XBUFX2_insert192 \u_rf_if.issue_sel\ \u_rf_if.issue_sel_bF$buf2\ vdd gnd BUFX2
XBUFX2_insert193 \u_rf_if.issue_sel\ \u_rf_if.issue_sel_bF$buf1\ vdd gnd BUFX2
XBUFX2_insert194 \u_rf_if.issue_sel\ \u_rf_if.issue_sel_bF$buf0\ vdd gnd BUFX2
XBUFX2_insert195 rf_rreq rf_rreq_bF$buf7 vdd gnd BUFX2
XBUFX2_insert196 rf_rreq rf_rreq_bF$buf6 vdd gnd BUFX2
XBUFX2_insert197 rf_rreq rf_rreq_bF$buf5 vdd gnd BUFX2
XBUFX2_insert198 rf_rreq rf_rreq_bF$buf4 vdd gnd BUFX2
XBUFX2_insert199 rf_rreq rf_rreq_bF$buf3 vdd gnd BUFX2
X_4597_ \u_mem_serial.shift_rx\[31] _1861__bF$buf3 _1955_ vdd gnd NAND2X1
X_4177_ \u_cpu.bufreg2.dhi\[3] _1209_ \u_cpu.bufreg2.dhi\[4] _1210_ vdd gnd OAI21X1
XFILL_0__3852_ gnd vdd FILL
XFILL_0__4637_ gnd vdd FILL
XFILL_0__4217_ gnd vdd FILL
X_2663_ _222_ _215__bF$buf3 _223_ _60_ vdd gnd AOI21X1
X_2243_ _1384_ _1385_ rst_bF$buf5 _765_ vdd gnd AOI21X1
XFILL_0__4390_ gnd vdd FILL
X_3868_ _660__bF$buf2 _694_ _695_ _631_ vdd gnd OAI21X1
X_3448_ \u_rf_if.read_buf1\[27] \u_rf_if.stream_cnt_0_bF$buf0\ _384_ vdd gnd NAND2X1
X_3028_ _1800__bF$buf0 _1686__bF$buf4 _1739_ _1612_ vdd gnd NAND3X1
XFILL_0__2703_ gnd vdd FILL
XFILL_0__3908_ gnd vdd FILL
XFILL_0__3241_ gnd vdd FILL
X_2719_ \u_rf_if.o_waddr\[3] _117_ vdd gnd INVX1
XFILL_0__4026_ gnd vdd FILL
X_2892_ \u_rf_if.rcnt\[0] _606_ vdd gnd INVX1
X_2472_ \u_mem_serial.bit_count_0_bF$buf1\ _981_ _980_ _982_ vdd gnd NAND3X1
XFILL_1__4607_ gnd vdd FILL
X_3677_ rf_rreq_bF$buf6 _172_ _179_ vdd gnd NOR2X1
X_3257_ _1782_ _1781_ vdd gnd INVX1
XFILL_0__2932_ gnd vdd FILL
XFILL_0__2512_ gnd vdd FILL
XFILL_0_BUFX2_insert90 gnd vdd FILL
XFILL_0__3890_ gnd vdd FILL
XFILL_0_BUFX2_insert92 gnd vdd FILL
XFILL_0_BUFX2_insert94 gnd vdd FILL
XFILL_0_BUFX2_insert96 gnd vdd FILL
XFILL_0_BUFX2_insert98 gnd vdd FILL
X_2948_ raddr[0] _1443_ vdd gnd INVX1
X_2528_ \u_cpu.ctrl.pc\ gnd \u_mem_serial.active_ibus_bF$buf3\ _825_ vdd gnd MUX2X1
XFILL142350x86550 gnd vdd FILL
XFILL_0__4255_ gnd vdd FILL
XFILL_1__3631_ gnd vdd FILL
X_2281_ _1315__bF$buf0 _1304__bF$buf3 \u_mem_serial.shift_rx\[2] _1356_ vdd gnd OAI21X1
X_3486_ _466_ _479__bF$buf0 _446_ \u_rf_if.o_waddr\[8] vdd gnd OAI21X1
X_3066_ _1639_ _1638_ rst_bF$buf6 _542_ vdd gnd AOI21X1
XFILL_0__2741_ gnd vdd FILL
XFILL_0__2321_ gnd vdd FILL
XFILL_1__2902_ gnd vdd FILL
X_2757_ _78_ _79_ vdd gnd INVX1
X_2337_ _1309_ _1307_ _1305_ _1310_ vdd gnd OAI21X1
XFILL_0__4484_ gnd vdd FILL
XFILL_1__3860_ gnd vdd FILL
XFILL_1__4645_ gnd vdd FILL
X_3295_ _16_ _9_ _2_ _2048_ vdd gnd AOI21X1
XFILL_0_BUFX2_insert211 gnd vdd FILL
XFILL_0_BUFX2_insert213 gnd vdd FILL
XFILL_0_BUFX2_insert215 gnd vdd FILL
XFILL_0_BUFX2_insert217 gnd vdd FILL
XFILL_0_BUFX2_insert219 gnd vdd FILL
XFILL_0__3755_ gnd vdd FILL
XFILL_0__3335_ gnd vdd FILL
X_2986_ _1800__bF$buf3 \u_rf_if.read_buf0\[1] _1584_ _1583_ vdd gnd MUX2X1
X_2566_ _71_ i_clk_fast_bF$buf0 \u_rf_serial.last_req_key\[8] vdd gnd DFFPOSX1
X_2146_ gnd o_gpio_oe[0] vdd gnd BUFX2
X_4712_ _1881_ \u_cpu.decode.i_wb_rdt\[12] _2024_ vdd gnd NAND2X1
XFILL_1__2940_ gnd vdd FILL
XFILL_1__2520_ gnd vdd FILL
XFILL_0__4349_ gnd vdd FILL
X_2795_ _590_ i_clk_sys_ext_bF$buf33 \u_rf_if.read_buf1\[22] vdd gnd DFFPOSX1
X_2375_ _1079_ _1046_ _1080_ vdd gnd NOR2X1
XFILL_0__2415_ gnd vdd FILL
X_4521_ ibus_pending_ack_bF$buf2 _1904_ _1905_ \u_cpu.i_ibus_rdt\[1] vdd gnd OAI21X1
X_4101_ \u_cpu.state.i_ctrl_misalign\ _1145_ _1144_ \u_cpu.bufreg2.o_q\ vdd gnd OAI21X1
XFILL_1__4683_ gnd vdd FILL
XFILL_1__4263_ gnd vdd FILL
XFILL_0__3373_ gnd vdd FILL
XFILL_0__4578_ gnd vdd FILL
X_2184_ \u_mem_serial.shift_rx\[19] _1377__bF$buf3 _1425_ vdd gnd NAND2X1
X_3389_ _309_ _308_ _307_ _306_ _305_ vdd 
+ gnd
+ OAI22X1
XFILL_0__2644_ gnd vdd FILL
X_4750_ i_rst_n_bF$buf4 vdd _1824_ i_clk_sys_ext_bF$buf16 ibus_pending_rdt[23] vdd 
+ gnd
+ DFFSR
X_4330_ \u_cpu.bufreg.i_cnt1\ gnd _1517_ vdd gnd NAND2X1
XFILL_0__3429_ gnd vdd FILL
XFILL_0__3009_ gnd vdd FILL
XFILL_1__4492_ gnd vdd FILL
XFILL_0__3182_ gnd vdd FILL
X_3601_ _2102_ _2101_ _2104_ _2067_ vdd gnd OAI21X1
XFILL_1__3763_ gnd vdd FILL
X_3198_ _1737_ _1736_ rst_bF$buf2 _578_ vdd gnd AOI21X1
XFILL_0__2453_ gnd vdd FILL
X_2889_ \u_rf_if.stream_cnt\[3] _37_ _604_ vdd gnd NAND2X1
X_2469_ \u_mem_serial.active_ibus_bF$buf0\ _984_ _985_ vdd gnd NAND2X1
X_3830_ _650_ _656_ _665_ _666_ vdd gnd AOI21X1
X_3410_ _443_ _327_ _421_ _326_ vdd gnd OAI21X1
XFILL_0__4196_ gnd vdd FILL
XFILL_0__2929_ gnd vdd FILL
XFILL_0__2509_ gnd vdd FILL
X_4615_ _1948_ rf_read_reg1[4] _1872__bF$buf3 _1966_ vdd gnd NAND3X1
XFILL142950x82950 gnd vdd FILL
XFILL_0__2682_ gnd vdd FILL
XFILL_0__3887_ gnd vdd FILL
XFILL_0__3467_ gnd vdd FILL
XFILL_0__3047_ gnd vdd FILL
XFILL_1__3628_ gnd vdd FILL
XFILL_1__3208_ gnd vdd FILL
X_2698_ _90_ _191_ _198_ _199_ vdd gnd NAND3X1
X_2278_ _1314_ _1358_ _1303_ _1359_ vdd gnd NAND3X1
XFILL_0__2738_ gnd vdd FILL
X_4424_ _1482_ i_clk_sys_ext_bF$buf11 \u_cpu.ctrl.o_ibus_adr\[16] vdd gnd DFFPOSX1
X_4004_ \u_cpu.bufreg.i_en_bF$buf4\ _926_ _927_ _872_ vdd gnd OAI21X1
XFILL_1__3381_ gnd vdd FILL
XFILL_0__2491_ gnd vdd FILL
X_2910_ \u_rf_if.o_waddr\[0] _1700_ _615_ vdd gnd NAND2X1
XFILL_1__3017_ gnd vdd FILL
XFILL_0__2967_ gnd vdd FILL
XFILL_0__2547_ gnd vdd FILL
XFILL_0__2127_ gnd vdd FILL
X_4653_ _1938_ _1959__bF$buf2 _1986_ _1837_ vdd gnd OAI21X1
X_4233_ mem_dbus_ack_bF$buf2 _1252_ _1256_ vdd gnd NOR2X1
XFILL_0_BUFX2_insert180 gnd vdd FILL
XFILL_0_BUFX2_insert182 gnd vdd FILL
XFILL_0_BUFX2_insert184 gnd vdd FILL
XFILL_0_BUFX2_insert186 gnd vdd FILL
XFILL_0_BUFX2_insert188 gnd vdd FILL
X_3924_ _628_ i_clk_sys_ext_bF$buf34 rreg0[2] vdd gnd DFFPOSX1
X_3504_ _460_ _479__bF$buf3 _459_ \u_rf_if.o_waddr\[6] vdd gnd OAI21X1
X_4709_ mem_ibus_ack_bF$buf0 \u_mem_serial.shift_rx\[30] _1960__bF$buf2 _2022_ vdd gnd NAND3X1
X_4462_ \u_cpu.immdec.gen_immdec_w_eq_1.imm11_7\[4] _1864_ vdd gnd INVX1
X_4042_ \u_cpu.bufreg.i_en_bF$buf2\ _952_ _953_ _884_ vdd gnd OAI21X1
X_3733_ \u_cpu.cond_branch\ \u_cpu.branch_op\ _385_ _386_ vdd gnd OAI21X1
X_3313_ \u_rf_if.rreg0_latched\[2] \u_rf_if.rreg0_latched\[3] _2065_ vdd gnd OR2X2
XFILL_1__2690_ gnd vdd FILL
X_4518_ _1861__bF$buf1 _1902_ _1903_ \u_cpu.decode.i_wb_rdt\[22] vdd gnd OAI21X1
XFILL_1__3055_ gnd vdd FILL
X_4691_ rreg1[1] rf_rreq_bF$buf7 _1872__bF$buf1 _2010_ vdd gnd NAND3X1
X_4271_ mem_dbus_ack_bF$buf6 \u_mem_serial.shift_rx\[9] _1167__bF$buf3 _1283_ _1284_ vdd 
+ gnd
+ AOI22X1
XFILL142050x108150 gnd vdd FILL
XFILL_0__4311_ gnd vdd FILL
X_3962_ \u_cpu.bufreg.data\[8] _900_ vdd gnd INVX1
X_3542_ \u_cpu.bufreg.data\[0] \u_cpu.bne_or_bge\ _2034_ vdd gnd NOR2X1
X_3122_ _473_ _1682_ \u_rf_if.wdata0_next_phase\ _1681_ vdd gnd OAI21X1
X_4747_ i_rst_n_bF$buf4 vdd _1827_ i_clk_sys_ext_bF$buf4 ibus_pending_rdt[21] vdd 
+ gnd
+ DFFSR
X_4327_ _1514_ \u_cpu.ctrl.i_pc_en\ _1651_ vdd gnd AND2X2
XFILL_0__2394_ gnd vdd FILL
X_4080_ \u_cpu.bufreg2.dhi\[6] _1126_ vdd gnd INVX1
X_2813_ _581_ i_clk_sys_ext_bF$buf20 \u_rf_if.read_buf1\[13] vdd gnd DFFPOSX1
XCLKBUF1_insert110 i_clk_sys_ext_hier0_bF$buf5 i_clk_sys_ext_bF$buf45 vdd gnd CLKBUF1
XCLKBUF1_insert111 i_clk_sys_ext_hier0_bF$buf2 i_clk_sys_ext_bF$buf44 vdd gnd CLKBUF1
XCLKBUF1_insert112 i_clk_sys_ext_hier0_bF$buf2 i_clk_sys_ext_bF$buf43 vdd gnd CLKBUF1
XCLKBUF1_insert113 i_clk_sys_ext_hier0_bF$buf5 i_clk_sys_ext_bF$buf42 vdd gnd CLKBUF1
XCLKBUF1_insert114 i_clk_sys_ext_hier0_bF$buf0 i_clk_sys_ext_bF$buf41 vdd gnd CLKBUF1
XCLKBUF1_insert115 i_clk_sys_ext_hier0_bF$buf4 i_clk_sys_ext_bF$buf40 vdd gnd CLKBUF1
XCLKBUF1_insert116 i_clk_sys_ext_hier0_bF$buf4 i_clk_sys_ext_bF$buf39 vdd gnd CLKBUF1
XCLKBUF1_insert117 i_clk_sys_ext_hier0_bF$buf5 i_clk_sys_ext_bF$buf38 vdd gnd CLKBUF1
XCLKBUF1_insert118 i_clk_sys_ext_hier0_bF$buf2 i_clk_sys_ext_bF$buf37 vdd gnd CLKBUF1
XFILL_0__4540_ gnd vdd FILL
XCLKBUF1_insert119 i_clk_sys_ext_hier0_bF$buf3 i_clk_sys_ext_bF$buf36 vdd gnd CLKBUF1
XFILL_1__2555_ gnd vdd FILL
X_3771_ \u_cpu.decode.i_wb_rdt\[13] rf_rreq_bF$buf2 _401_ vdd gnd NAND2X1
X_3351_ _25_ _24_ _23_ _600_ vdd gnd AOI21X1
X_4556_ \u_mem_serial.shift_rx\[27] _1861__bF$buf2 _1929_ vdd gnd NAND2X1
X_4136_ _1174_ _1159__bF$buf1 _1176_ _1095_ vdd gnd OAI21X1
XFILL_1__3093_ gnd vdd FILL
X_2622_ _91_ _188_ _261_ vdd gnd NAND2X1
X_2202_ \u_mem_serial.state\[1] _1368_ _1411_ _1412_ vdd gnd OAI21X1
X_3827_ \u_cpu.immdec.gen_immdec_w_eq_1.imm7\ _663_ vdd gnd INVX1
X_3407_ \u_rf_if.read_buf0\[9] \u_rf_if.stream_cnt_0_bF$buf4\ _323_ vdd gnd NAND2X1
XFILL_1__3989_ gnd vdd FILL
XFILL_1__3569_ gnd vdd FILL
X_3580_ _2086_ _2071_ _2087_ vdd gnd NAND2X1
X_3160_ _2105_ _2110__bF$buf4 _1709_ vdd gnd NAND2X1
XFILL_0__2259_ gnd vdd FILL
X_4365_ \u_cpu.ctrl.o_ibus_adr\[21] _1541_ vdd gnd INVX1
XFILL_0__3620_ gnd vdd FILL
XFILL_0__4405_ gnd vdd FILL
XFILL143250x82950 gnd vdd FILL
X_2851_ _560_ i_clk_sys_ext_bF$buf25 \u_rf_if.rreg1_latched\[2] vdd gnd DFFPOSX1
X_2431_ \u_mem_serial.active_ibus_bF$buf1\ _1023_ _1024_ vdd gnd NAND2X1
X_3636_ _152_ _153_ _154_ vdd gnd NAND2X1
X_3216_ _1751_ _1749_ rst_bF$buf4 _583_ vdd gnd AOI21X1
XBUFX2_insert168 mem_dbus_ack mem_dbus_ack_bF$buf6 vdd gnd BUFX2
XBUFX2_insert169 mem_dbus_ack mem_dbus_ack_bF$buf5 vdd gnd BUFX2
X_4594_ _1952_ rf_rreq_bF$buf7 _1953_ rf_read_reg0_to_if[4] vdd gnd OAI21X1
X_4174_ \u_cpu.bufreg2.dhi\[4] _1205_ _1193_ _1207_ vdd gnd NAND3X1
X_2907_ \u_rf_if.o_waddr\[2] _614_ _613_ _491_ vdd gnd AOI21X1
XFILL_0__4634_ gnd vdd FILL
XFILL_1__2229_ gnd vdd FILL
XFILL143250x129750 gnd vdd FILL
X_2660_ _224_ _215__bF$buf2 _225_ _61_ vdd gnd AOI21X1
X_2240_ _1386_ _1387_ rst_bF$buf5 _766_ vdd gnd AOI21X1
X_3865_ _660__bF$buf3 _692_ _693_ _630_ vdd gnd OAI21X1
X_3445_ \u_rf_if.read_buf1\[28] \u_rf_if.stream_cnt_0_bF$buf2\ _376_ vdd gnd NOR2X1
X_3025_ _1686__bF$buf4 _2055_ _1739_ _1610_ vdd gnd NAND3X1
X_2716_ _119_ _105_ _120_ vdd gnd NAND2X1
X_3674_ _169_ _172_ _177_ _170_ _125_ vdd 
+ gnd
+ OAI22X1
X_3254_ _2109_ _6_ _1782_ _1778_ vdd gnd AOI21X1
X_4459_ \u_mem_serial.shift_rx\[17] _1861__bF$buf5 _1862_ vdd gnd NAND2X1
X_4039_ _887__bF$buf1 _949_ _951_ _883_ vdd gnd OAI21X1
XFILL_0_BUFX2_insert60 gnd vdd FILL
XFILL_0_BUFX2_insert63 gnd vdd FILL
XFILL_0_BUFX2_insert65 gnd vdd FILL
XFILL_0_BUFX2_insert67 gnd vdd FILL
XFILL_0_BUFX2_insert69 gnd vdd FILL
X_2945_ \u_rf_if.issue_idx\[5] _1669_ \u_rf_if.issue_chunk\[1] _746_ vdd gnd OAI21X1
X_2525_ _809_ _824_ _827_ _828_ vdd gnd AOI21X1
XFILL_0__4672_ gnd vdd FILL
XFILL_1__2267_ gnd vdd FILL
XFILL_1__4413_ gnd vdd FILL
X_3483_ \u_rf_if.stream_cnt\[2] _443_ vdd gnd INVX4
X_3063_ _27__bF$buf0 _1636_ _1635_ vdd gnd NAND2X1
X_4688_ rreg1[2] rf_rreq_bF$buf7 _1872__bF$buf1 _2008_ vdd gnd NAND3X1
X_4268_ _1279_ _1159__bF$buf4 _1281_ _1122_ vdd gnd OAI21X1
XFILL_0__3523_ gnd vdd FILL
XFILL_0__3103_ gnd vdd FILL
X_2754_ \u_rf_serial.tx_state\[2] _79_ \u_rf_serial.tx_state\[3] _82_ vdd gnd OAI21X1
X_2334_ \u_mem_serial.req_pending\ \u_mem_serial.state\[0] _1312_ _1313_ vdd gnd OAI21X1
X_3959_ \u_cpu.bufreg.i_en_bF$buf0\ _897_ _898_ _856_ vdd gnd OAI21X1
X_3539_ _769_ i_clk_fast_bF$buf5 \u_mem_serial.bit_count\[3] vdd gnd DFFPOSX1
X_3119_ _1679_ _1681_ _1701_ _556_ vdd gnd AOI21X1
X_3292_ rdata[1] _1812_ _2057_ _1811_ vdd gnd NAND3X1
X_4497_ _1861__bF$buf0 _1888_ _1889_ \u_cpu.decode.i_wb_rdt\[21] vdd gnd OAI21X1
X_4077_ _993_ i_clk_sys_ext_bF$buf1 \u_cpu.bufreg.c_r\ vdd gnd DFFPOSX1
XFILL_0__3752_ gnd vdd FILL
XFILL_0__4117_ gnd vdd FILL
XFILL_1__3913_ gnd vdd FILL
X_2983_ _2056_ _1584_ _1582_ _515_ vdd gnd AOI21X1
X_2563_ _60_ i_clk_fast_bF$buf6 \u_rf_serial.last_req_key\[4] vdd gnd DFFPOSX1
X_2143_ gnd o_gpio_oe[3] vdd gnd BUFX2
X_3768_ \u_cpu.bufreg.i_right_shift_op\ \u_cpu.bne_or_bge\ \u_cpu.decode.co_mem_word\ \u_cpu.alu.i_cmp_sig\ vdd gnd OAI21X1
X_3348_ _22_ \u_rf_if.stream_cnt_0_bF$buf1\ _21_ _599_ vdd gnd AOI21X1
XFILL_0__2603_ gnd vdd FILL
XFILL_1__4031_ gnd vdd FILL
XFILL_0__3561_ gnd vdd FILL
XFILL_0__3141_ gnd vdd FILL
X_2619_ _260_ _263_ _261_ _264_ vdd gnd NAND3X1
XBUFX2_insert70 _1297_ _1297__bF$buf1 vdd gnd BUFX2
XBUFX2_insert71 _1297_ _1297__bF$buf0 vdd gnd BUFX2
XBUFX2_insert72 _1315_ _1315__bF$buf5 vdd gnd BUFX2
XBUFX2_insert73 _1315_ _1315__bF$buf4 vdd gnd BUFX2
XBUFX2_insert74 _1315_ _1315__bF$buf3 vdd gnd BUFX2
XBUFX2_insert75 _1315_ _1315__bF$buf2 vdd gnd BUFX2
XBUFX2_insert76 _1315_ _1315__bF$buf1 vdd gnd BUFX2
XBUFX2_insert77 _1315_ _1315__bF$buf0 vdd gnd BUFX2
XBUFX2_insert78 \u_mem_serial.bit_count\[0] \u_mem_serial.bit_count_0_bF$buf3\ vdd gnd BUFX2
XBUFX2_insert79 \u_mem_serial.bit_count\[0] \u_mem_serial.bit_count_0_bF$buf2\ vdd gnd BUFX2
X_2792_ _532_ i_clk_sys_ext_bF$buf20 \u_rf_if.read_buf0\[13] vdd gnd DFFPOSX1
X_2372_ \u_mem_serial.bit_count\[6] _1083_ vdd gnd INVX1
XFILL_1__4507_ gnd vdd FILL
X_3997_ \u_cpu.bufreg.data\[26] _923_ vdd gnd INVX1
X_3577_ \u_cpu.decode.co_mem_word\ _2084_ vdd gnd INVX1
X_3157_ _2109_ _13__bF$buf0 \u_rf_if.read_buf1\[0] _1707_ vdd gnd OAI21X1
XFILL_0__3790_ gnd vdd FILL
X_2848_ _499_ i_clk_sys_ext_bF$buf25 \u_rf_if.rreg0_latched\[2] vdd gnd DFFPOSX1
X_2428_ \u_mem_serial.active_ibus_bF$buf4\ \u_cpu.bufreg.data\[23] _1027_ vdd gnd OR2X2
XFILL_0__4155_ gnd vdd FILL
XFILL_1__3951_ gnd vdd FILL
X_2181_ \u_mem_serial.state\[1] _1368_ _1426_ _1427_ vdd gnd OAI21X1
X_3386_ \u_rf_if.read_buf0\[29] _441__bF$buf1 _440_ _302_ vdd gnd OAI21X1
XFILL_0__2221_ gnd vdd FILL
XFILL_0__3846_ gnd vdd FILL
X_2657_ \u_rf_serial.last_req_key\[2] _227_ vdd gnd INVX1
X_2237_ _1389_ _1388_ rst_bF$buf9 _767_ vdd gnd AOI21X1
XFILL_0__4384_ gnd vdd FILL
XFILL_1__4545_ gnd vdd FILL
XFILL_1__4125_ gnd vdd FILL
X_3195_ _2110__bF$buf1 _2108__bF$buf2 _1787_ _1733_ vdd gnd NAND3X1
XFILL_0__3655_ gnd vdd FILL
XFILL_0__3235_ gnd vdd FILL
XFILL142350x39750 gnd vdd FILL
X_2886_ _604_ _603_ _602_ _481_ vdd gnd AOI21X1
X_2466_ \u_cpu.ctrl.o_ibus_adr\[24] \u_cpu.bufreg.data\[24] \u_mem_serial.active_ibus_bF$buf0\ _988_ vdd gnd MUX2X1
X_4612_ _1930_ _1959__bF$buf3 _1964_ _1818_ vdd gnd OAI21X1
XFILL_0__3044_ gnd vdd FILL
XFILL_1__2420_ gnd vdd FILL
XFILL_0__4249_ gnd vdd FILL
X_2695_ i_clk_fast_bF$buf1 _77_ _2121_ vdd gnd NOR2X1
X_2275_ \u_mem_serial.shift_rx\[0] _1297__bF$buf1 _1361_ vdd gnd NAND2X1
XFILL_0__2315_ gnd vdd FILL
X_4421_ _1504_ _1510_ _1575_ _1576_ vdd gnd AOI21X1
X_4001_ _887__bF$buf4 _923_ _925_ _871_ vdd gnd OAI21X1
XFILL_1__4163_ gnd vdd FILL
XFILL_0__4478_ gnd vdd FILL
X_3289_ _1809_ _2049_ rst_bF$buf6 _597_ vdd gnd AOI21X1
X_4650_ mem_ibus_ack_bF$buf3 \u_mem_serial.shift_rx\[12] _1960__bF$buf3 _1985_ vdd gnd NAND3X1
X_4230_ mem_dbus_ack_bF$buf2 \u_mem_serial.shift_rx\[18] _1167__bF$buf2 _1253_ _1254_ vdd 
+ gnd
+ AOI22X1
XFILL_0_BUFX2_insert157 gnd vdd FILL
XFILL_0_BUFX2_insert159 gnd vdd FILL
XFILL_0__3329_ gnd vdd FILL
XFILL_1__2705_ gnd vdd FILL
XFILL_0__3082_ gnd vdd FILL
X_3921_ _631_ i_clk_sys_ext_bF$buf36 \u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20\[3] vdd gnd DFFPOSX1
X_3501_ _458_ _479__bF$buf3 _457_ \u_rf_if.o_waddr\[5] vdd gnd OAI21X1
X_4706_ \u_cpu.csr_imm\ rf_rreq_bF$buf1 _1872__bF$buf0 _2020_ vdd gnd NAND3X1
XFILL_1__3243_ gnd vdd FILL
XFILL_1__4028_ gnd vdd FILL
X_3098_ \u_rf_if.rcnt\[0] \u_rf_if.rcnt\[1] _1661_ vdd gnd AND2X2
XFILL_0__2353_ gnd vdd FILL
XFILL_0__3978_ gnd vdd FILL
XFILL_0__3558_ gnd vdd FILL
X_2789_ _593_ i_clk_sys_ext_bF$buf42 \u_rf_if.read_buf1\[25] vdd gnd DFFPOSX1
X_2369_ _1084_ _1085_ _1086_ vdd gnd NAND2X1
X_3730_ i_clk_sys_ext_bF$buf31 i_clk_fast_bF$buf5 \u_mem_serial.clk_sys_prev\ vdd gnd DFFPOSX1
X_3310_ _2065_ _2063_ _2062_ vdd gnd NOR2X1
XFILL_0__4096_ gnd vdd FILL
XFILL_0__2409_ gnd vdd FILL
X_4515_ _1861__bF$buf0 _1900_ _1901_ \u_cpu.decode.i_wb_rdt\[23] vdd gnd OAI21X1
XFILL_0__2582_ gnd vdd FILL
XFILL_0__2162_ gnd vdd FILL
XFILL_0__3367_ gnd vdd FILL
XFILL_1__2743_ gnd vdd FILL
X_2598_ \u_rf_serial.last_req_key\[10] _283_ _202_ _284_ vdd gnd OAI21X1
X_2178_ \u_mem_serial.shift_rx\[18] _1377__bF$buf3 _1429_ vdd gnd NAND2X1
XFILL_0__2638_ gnd vdd FILL
X_4744_ i_rst_n_bF$buf4 vdd _1830_ i_clk_sys_ext_bF$buf39 ibus_pending_rdt[18] vdd 
+ gnd
+ DFFSR
X_4324_ \u_cpu.ctrl.pc\ \u_cpu.ctrl.pc_plus_4_cy_r_w\ _1512_ vdd gnd NOR2X1
XFILL_1__3281_ gnd vdd FILL
X_2810_ _503_ i_clk_sys_ext_bF$buf35 \u_rf_if.issue_chunk\[1] vdd gnd DFFPOSX1
XFILL_0__3596_ gnd vdd FILL
XFILL_0__3176_ gnd vdd FILL
XFILL_1__2132_ gnd vdd FILL
XFILL_0__2447_ gnd vdd FILL
X_4553_ \u_mem_serial.shift_rx\[28] _1861__bF$buf0 _1927_ vdd gnd NAND2X1
X_4133_ \u_cpu.bufreg2.dlo\[5] _1174_ vdd gnd INVX1
X_3824_ rreg0[4] _660__bF$buf1 _661_ vdd gnd NAND2X1
X_3404_ \u_rf_if.read_buf0\[11] \u_rf_if.stream_cnt_0_bF$buf0\ _320_ vdd gnd NAND2X1
X_4609_ mem_ibus_ack_bF$buf2 \u_mem_serial.shift_rx\[27] _1960__bF$buf4 _1963_ vdd gnd NAND3X1
XFILL_0__2676_ gnd vdd FILL
XFILL_0__2256_ gnd vdd FILL
X_4362_ _1539_ _1526_ _1538_ _1530_ _1472_ vdd 
+ gnd
+ OAI22X1
XFILL_0_CLKBUF1_insert140 gnd vdd FILL
XFILL_0_CLKBUF1_insert142 gnd vdd FILL
XFILL_1__2417_ gnd vdd FILL
XFILL_0_CLKBUF1_insert144 gnd vdd FILL
XFILL_0_CLKBUF1_insert146 gnd vdd FILL
XFILL_0_CLKBUF1_insert148 gnd vdd FILL
XFILL142350x108150 gnd vdd FILL
X_3633_ _150_ _147_ _151_ vdd gnd NAND2X1
X_3213_ _1748_ _1747_ rst_bF$buf4 _582_ vdd gnd AOI21X1
XFILL_1__2590_ gnd vdd FILL
X_4418_ _1506_ _1572_ _1573_ _1494_ vdd gnd OAI21X1
X_4591_ _1950_ rf_rreq_bF$buf3 _1951_ rf_read_reg1_to_if[4] vdd gnd OAI21X1
X_4171_ _1131_ _1205_ vdd gnd INVX2
X_2904_ rf_read_reg1_to_if[4] _1693_ _27__bF$buf1 _611_ vdd gnd OAI21X1
XFILL_0__4211_ gnd vdd FILL
X_3862_ _660__bF$buf3 _690_ _691_ _629_ vdd gnd OAI21X1
X_3442_ \u_rf_if.read_buf1\[30] \u_rf_if.stream_cnt_0_bF$buf2\ \u_rf_if.stream_cnt_1_bF$buf2\ _372_ vdd gnd OAI21X1
X_3022_ _2108__bF$buf3 _1686__bF$buf4 _1787_ _1608_ vdd gnd NAND3X1
X_4647_ ibus_pending_rdt[13] _1983_ vdd gnd INVX1
X_4227_ _1249_ _1159__bF$buf2 _1251_ _1111_ vdd gnd OAI21X1
XFILL_0__3902_ gnd vdd FILL
XFILL_0__2294_ gnd vdd FILL
X_2713_ _91_ raddr[2] _122_ _159_ vdd gnd OAI21X1
XFILL_0__4020_ gnd vdd FILL
X_3918_ _634_ i_clk_sys_ext_bF$buf19 \u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20\[0] vdd gnd DFFPOSX1
XFILL_1__2455_ gnd vdd FILL
X_3671_ \u_cpu.alu.o_cmp\ _173_ \u_cpu.cond_branch\ _175_ vdd gnd OAI21X1
X_3251_ _13__bF$buf0 _1780_ \u_rf_if.read_buf1\[22] _1776_ vdd gnd OAI21X1
X_4456_ _1493_ i_clk_sys_ext_bF$buf39 \u_cpu.ctrl.o_ibus_adr\[5] vdd gnd DFFPOSX1
X_4036_ \u_cpu.bufreg.i_en_bF$buf1\ \u_cpu.bufreg.data\[17] _950_ vdd gnd NAND2X1
XFILL_1__4198_ gnd vdd FILL
XFILL_0_BUFX2_insert31 gnd vdd FILL
XFILL_0_BUFX2_insert33 gnd vdd FILL
XFILL_0_BUFX2_insert35 gnd vdd FILL
XFILL_0_BUFX2_insert37 gnd vdd FILL
X_2942_ \u_rf_if.issue_idx\[5] _1669_ \u_rf_if.issue_chunk\[0] _744_ vdd gnd OAI21X1
X_2522_ \u_mem_serial.bit_count\[3] _801_ _830_ _831_ vdd gnd OAI21X1
X_3727_ \u_cpu.decode.co_mem_word\ _382_ _383_ vdd gnd NOR2X1
X_3307_ \u_rf_if.issue_sel_bF$buf1\ \u_rf_if.rreg1_latched\[2] _2059_ vdd gnd NOR2X1
XFILL_1__3469_ gnd vdd FILL
X_3480_ \u_rf_if.stream_cnt_1_bF$buf1\ _440_ vdd gnd INVX4
X_3060_ _5__bF$buf3 _1686__bF$buf0 _1772_ _1633_ vdd gnd NAND3X1
XFILL_0__2999_ gnd vdd FILL
X_4685_ rreg1[3] rf_rreq_bF$buf5 _1872__bF$buf3 _2006_ vdd gnd NAND3X1
X_4265_ \u_cpu.bufreg2.dlo\[10] _1279_ vdd gnd INVX1
X_2751_ \u_rf_serial.tx_state\[0] _84_ _85_ vdd gnd NAND2X1
X_2331_ _1315__bF$buf2 _1304__bF$buf4 \u_mem_serial.shift_rx\[12] _1316_ vdd gnd OAI21X1
X_3956_ _887__bF$buf3 _895_ _896_ _855_ vdd gnd OAI21X1
X_3536_ _1468_ i_clk_sys_ext_bF$buf11 \u_cpu.ctrl.o_ibus_adr\[26] vdd gnd DFFPOSX1
X_3116_ \u_rf_if.write_wait\[2] _1676_ vdd gnd INVX1
XFILL_1__2493_ gnd vdd FILL
XFILL_0__2388_ gnd vdd FILL
X_4494_ _1861__bF$buf5 _1886_ _1887_ \u_cpu.decode.i_wb_rdt\[16] vdd gnd OAI21X1
X_4074_ _876_ i_clk_sys_ext_bF$buf26 \u_cpu.bufreg.data\[21] vdd gnd DFFPOSX1
X_2807_ _584_ i_clk_sys_ext_bF$buf22 \u_rf_if.read_buf1\[16] vdd gnd DFFPOSX1
XFILL_0__4534_ gnd vdd FILL
XFILL_1__2129_ gnd vdd FILL
XFILL_1__3910_ gnd vdd FILL
X_2980_ _1693_ _1581_ _1580_ _514_ vdd gnd AOI21X1
X_2560_ _67_ i_clk_fast_bF$buf6 \u_rf_serial.shift_rx\[1] vdd gnd DFFPOSX1
X_2140_ gnd o_gpio_oe[6] vdd gnd BUFX2
X_3765_ \u_cpu.decode.co_mem_signed\ \u_cpu.bne_or_bge\ \u_cpu.decode.co_mem_word\ _399_ vdd gnd MUX2X1
X_3345_ \u_rf_if.issue_sel_bF$buf3\ \u_rf_if.issue_chunk\[0] _18_ vdd gnd NOR2X1
X_2616_ ren_bF$buf4 \u_rf_if.o_waddr\[7] _267_ vdd gnd OR2X2
XBUFX2_insert40 _887_ _887__bF$buf1 vdd gnd BUFX2
XBUFX2_insert41 _887_ _887__bF$buf0 vdd gnd BUFX2
XBUFX2_insert42 \u_mem_serial.active_ibus\ \u_mem_serial.active_ibus_bF$buf6\ vdd gnd BUFX2
XBUFX2_insert43 \u_mem_serial.active_ibus\ \u_mem_serial.active_ibus_bF$buf5\ vdd gnd BUFX2
XBUFX2_insert44 \u_mem_serial.active_ibus\ \u_mem_serial.active_ibus_bF$buf4\ vdd gnd BUFX2
XBUFX2_insert45 \u_mem_serial.active_ibus\ \u_mem_serial.active_ibus_bF$buf3\ vdd gnd BUFX2
XBUFX2_insert46 \u_mem_serial.active_ibus\ \u_mem_serial.active_ibus_bF$buf2\ vdd gnd BUFX2
XBUFX2_insert47 \u_mem_serial.active_ibus\ \u_mem_serial.active_ibus_bF$buf1\ vdd gnd BUFX2
XBUFX2_insert48 \u_mem_serial.active_ibus\ \u_mem_serial.active_ibus_bF$buf0\ vdd gnd BUFX2
XBUFX2_insert49 _1688_ _1688__bF$buf4 vdd gnd BUFX2
X_3994_ \u_cpu.bufreg.i_en_bF$buf2\ _920_ _921_ _868_ vdd gnd OAI21X1
X_3574_ _2077_ _2069_ _2080_ _2081_ vdd gnd OAI21X1
X_3154_ _27__bF$buf4 gnd _564_ vdd gnd AND2X2
X_4359_ \u_cpu.ctrl.o_ibus_adr\[24] _1538_ vdd gnd INVX1
XFILL_0__3614_ gnd vdd FILL
XFILL143250x115350 gnd vdd FILL
X_2845_ _563_ i_clk_sys_ext_bF$buf12 \u_rf_if.wen0_r\ vdd gnd DFFPOSX1
X_2425_ _798_ _1027_ _1029_ _1030_ vdd gnd NAND3X1
XFILL_0__4572_ gnd vdd FILL
XFILL_0__4152_ gnd vdd FILL
XFILL_1__2167_ gnd vdd FILL
XFILL_1__4313_ gnd vdd FILL
X_3383_ _303_ _302_ _301_ _300_ _299_ vdd 
+ gnd
+ OAI22X1
X_4588_ _1872__bF$buf1 _1949_ _1948_ \u_rf_if.i_rreq\ vdd gnd AOI21X1
X_4168_ \u_cpu.bufreg.i_shift_op\ \u_cpu.bufreg2.i_cnt7\ _1202_ vdd gnd AND2X2
XFILL_0__3423_ gnd vdd FILL
XFILL_0__3003_ gnd vdd FILL
XFILL_0__4628_ gnd vdd FILL
X_2654_ _229_ _215__bF$buf0 _202_ _230_ vdd gnd OAI21X1
X_2234_ _853_ _1297__bF$buf2 _1315__bF$buf5 \u_mem_serial.bit_count\[3] _1391_ vdd 
+ gnd
+ AOI22X1
X_3859_ _660__bF$buf3 _688_ _689_ _628_ vdd gnd OAI21X1
X_3439_ _443_ _377_ _359_ _356_ vdd gnd AOI21X1
X_3019_ \u_rf_if.issue_sel_bF$buf0\ _1607_ _1606_ vdd gnd NAND2X1
X_3192_ _2110__bF$buf1 _2108__bF$buf2 _1784_ _1731_ vdd gnd NAND3X1
X_4397_ \u_cpu.ctrl.o_ibus_adr\[11] _1525__bF$buf3 _1560_ vdd gnd NAND2X1
X_2883_ _495_ i_clk_sys_ext_bF$buf39 \u_rf_if.write_wait\[3] vdd gnd DFFPOSX1
X_2463_ _990_ _987_ _966_ _991_ vdd gnd OAI21X1
XFILL_0__4190_ gnd vdd FILL
X_3668_ _158_ _171_ _156_ _172_ vdd gnd OAI21X1
X_3248_ _2048_ _2051_ _5__bF$buf2 _1774_ vdd gnd NAND3X1
XFILL_0__2923_ gnd vdd FILL
XFILL_0__2503_ gnd vdd FILL
XFILL_1__4351_ gnd vdd FILL
XFILL_0__3881_ gnd vdd FILL
XFILL_0__3461_ gnd vdd FILL
X_2939_ \u_rf_if.issue_idx\[5] _1669_ \u_rf_if.issue_sel_bF$buf2\ _742_ vdd gnd OAI21X1
X_2519_ _831_ _833_ _834_ vdd gnd NAND2X1
XFILL_0__4666_ gnd vdd FILL
X_2692_ rst_bF$buf1 _202_ vdd gnd INVX2
X_2272_ _1360_ _1363_ rst_bF$buf5 _758_ vdd gnd AOI21X1
X_3897_ \u_cpu.decode.i_wb_rdt\[22] rreg1[3] rf_rreq_bF$buf5 _715_ vdd gnd MUX2X1
X_3477_ \u_rf_if.read_buf1\[14] \u_rf_if.stream_cnt_0_bF$buf5\ \u_rf_if.stream_cnt_1_bF$buf2\ _437_ vdd gnd OAI21X1
X_3057_ _5__bF$buf3 _1686__bF$buf0 _1769_ _1631_ vdd gnd NAND3X1
XFILL_0__2732_ gnd vdd FILL
XFILL_0__3517_ gnd vdd FILL
XFILL_1__4580_ gnd vdd FILL
XFILL_0__3270_ gnd vdd FILL
X_2748_ _87_ _78_ _88_ vdd gnd NAND2X1
X_2328_ _1314_ _1318_ _1303_ _1319_ vdd gnd NAND3X1
XFILL_1__3431_ gnd vdd FILL
X_3286_ _2123_ _4_ _1807_ _1806_ vdd gnd NOR3X1
XFILL_0__2961_ gnd vdd FILL
XFILL_0__2541_ gnd vdd FILL
XFILL_0__3746_ gnd vdd FILL
X_2977_ _1663_ _1578_ _513_ vdd gnd NOR2X1
X_2557_ \u_mem_serial.bit_count_0_bF$buf2\ \u_mem_serial.bit_count\[1] _796_ vdd gnd NOR2X1
X_2137_ gnd o_gpio[1] vdd gnd BUFX2
X_4703_ rreg0[1] rf_rreq_bF$buf1 _1872__bF$buf0 _2018_ vdd gnd NAND3X1
XFILL_1__3660_ gnd vdd FILL
X_3095_ _1659_ _27__bF$buf4 _552_ vdd gnd AND2X2
X_2786_ _506_ i_clk_sys_ext_bF$buf41 raddr[2] vdd gnd DFFPOSX1
X_2366_ _805_ _1088_ _1089_ vdd gnd NAND2X1
XFILL142950x100950 gnd vdd FILL
X_4512_ _1898_ rf_rreq_bF$buf5 _1899_ rf_read_reg0_to_if[3] vdd gnd OAI21X1
XFILL_0__3364_ gnd vdd FILL
XFILL_1__3105_ gnd vdd FILL
X_2595_ _260_ _215__bF$buf1 _285_ _66_ vdd gnd AOI21X1
X_2175_ \u_mem_serial.shift_rx\[17] _1377__bF$buf2 _1431_ vdd gnd NAND2X1
XFILL_0__2215_ gnd vdd FILL
X_4741_ i_rst_n_bF$buf1 vdd _1833_ i_clk_sys_ext_bF$buf28 ibus_pending_rdt[15] vdd 
+ gnd
+ DFFSR
X_4321_ _1496_ _1499_ _1509_ _1510_ vdd gnd NAND3X1
XFILL_0__4378_ gnd vdd FILL
X_3189_ _13__bF$buf2 _1730_ \u_rf_if.read_buf1\[7] _1729_ vdd gnd OAI21X1
X_4550_ \u_mem_serial.shift_rx\[29] _1861__bF$buf3 _1925_ vdd gnd NAND2X1
X_4130_ mem_dbus_ack_bF$buf0 _1148_ _1172_ vdd gnd NOR2X1
XFILL_0__3649_ gnd vdd FILL
XFILL_0__3229_ gnd vdd FILL
XFILL_1__2605_ gnd vdd FILL
X_3821_ \u_cpu.decode.co_immdec_en\[1] _658_ vdd gnd INVX1
X_3401_ \u_rf_if.read_buf0\[12] \u_rf_if.stream_cnt_0_bF$buf5\ _317_ vdd gnd NOR2X1
X_4606_ _1924_ _1959__bF$buf1 _1961_ _1815_ vdd gnd OAI21X1
XFILL_1__3143_ gnd vdd FILL
XFILL_0__3458_ gnd vdd FILL
XFILL_0__3038_ gnd vdd FILL
XFILL_0_CLKBUF1_insert111 gnd vdd FILL
XFILL_0_CLKBUF1_insert113 gnd vdd FILL
XFILL_0_CLKBUF1_insert115 gnd vdd FILL
XFILL_0_CLKBUF1_insert117 gnd vdd FILL
XFILL_0_CLKBUF1_insert119 gnd vdd FILL
X_2689_ _203_ _204_ _205_ vdd gnd NAND2X1
X_2269_ _1365_ _1366_ vdd gnd INVX1
X_3630_ \u_cpu.bufreg.i_shift_op\ _148_ vdd gnd INVX1
X_3210_ _2110__bF$buf0 _2108__bF$buf0 _1810_ _1744_ vdd gnd NAND3X1
XFILL_0__2309_ gnd vdd FILL
X_4415_ _1525__bF$buf0 _1570_ _1571_ _1493_ vdd gnd OAI21X1
XBUFX2_insert100 rst rst_bF$buf9 vdd gnd BUFX2
XBUFX2_insert101 rst rst_bF$buf8 vdd gnd BUFX2
XBUFX2_insert102 rst rst_bF$buf7 vdd gnd BUFX2
XBUFX2_insert103 rst rst_bF$buf6 vdd gnd BUFX2
XBUFX2_insert104 rst rst_bF$buf5 vdd gnd BUFX2
XBUFX2_insert105 rst rst_bF$buf4 vdd gnd BUFX2
XBUFX2_insert106 rst rst_bF$buf3 vdd gnd BUFX2
XBUFX2_insert107 rst rst_bF$buf2 vdd gnd BUFX2
XBUFX2_insert108 rst rst_bF$buf1 vdd gnd BUFX2
XBUFX2_insert109 rst rst_bF$buf0 vdd gnd BUFX2
XFILL_0__2482_ gnd vdd FILL
X_2901_ \u_rf_if.o_waddr\[0] _1700_ _610_ _488_ vdd gnd AOI21X1
XFILL_0__3687_ gnd vdd FILL
XFILL_1__3848_ gnd vdd FILL
X_2498_ \u_mem_serial.active_ibus_bF$buf5\ _854_ _956_ vdd gnd NAND2X1
X_4644_ _1896_ _1959__bF$buf2 _1981_ _1833_ vdd gnd OAI21X1
X_4224_ \u_cpu.bufreg2.dlo\[19] _1249_ vdd gnd INVX1
XFILL_1__4386_ gnd vdd FILL
XFILL_1_CLKBUF1_insert140 gnd vdd FILL
XFILL_1_CLKBUF1_insert144 gnd vdd FILL
XFILL_1_CLKBUF1_insert148 gnd vdd FILL
X_2710_ _97_ _165_ _187_ vdd gnd NAND2X1
XFILL_0__3496_ gnd vdd FILL
XFILL_0__3076_ gnd vdd FILL
X_3915_ _656_ \u_cpu.immdec.gen_immdec_w_eq_1.imm11_7\[1] _665_ _727_ vdd gnd AOI21X1
XFILL_1__3657_ gnd vdd FILL
X_4453_ _1470_ i_clk_sys_ext_bF$buf40 \u_cpu.ctrl.o_ibus_adr\[25] vdd gnd DFFPOSX1
X_4033_ \u_cpu.bufreg.data\[31] _947_ _948_ vdd gnd NAND2X1
X_3724_ \u_cpu.bufreg2.i_op_b_sel\ _380_ vdd gnd INVX1
X_3304_ rdata[0] _2057_ _2056_ vdd gnd NAND2X1
X_4509_ _1861__bF$buf1 _1896_ _1897_ \u_cpu.decode.i_wb_rdt\[15] vdd gnd OAI21X1
XFILL142650x108150 gnd vdd FILL
XFILL_0__2996_ gnd vdd FILL
X_4682_ mem_ibus_ack_bF$buf3 \u_mem_serial.shift_rx\[0] _1960__bF$buf3 _2004_ vdd gnd NAND3X1
X_4262_ mem_dbus_ack_bF$buf1 _1273_ _1277_ vdd gnd NOR2X1
XFILL_1__2317_ gnd vdd FILL
X_3953_ _894_ _888_ _887__bF$buf0 _993_ vdd gnd AOI21X1
X_3533_ _635_ i_clk_sys_ext_bF$buf34 \u_cpu.immdec.gen_immdec_w_eq_1.imm30_25\[4] vdd gnd DFFPOSX1
X_3113_ \u_rf_if.write_wait\[3] _1674_ _1673_ vdd gnd NOR2X1
X_4738_ i_rst_n_bF$buf0 vdd _1836_ i_clk_sys_ext_bF$buf29 ibus_pending_rdt[12] vdd 
+ gnd
+ DFFSR
X_4318_ \u_cpu.alu.i_buf\ _1507_ vdd gnd INVX1
X_4491_ _1885_ \u_cpu.decode.i_wb_rdt\[3] vdd gnd INVX1
X_4071_ _879_ i_clk_sys_ext_bF$buf26 \u_cpu.bufreg.data\[18] vdd gnd DFFPOSX1
X_2804_ _529_ i_clk_sys_ext_bF$buf15 \u_rf_if.read_buf0\[11] vdd gnd DFFPOSX1
XFILL_0__4111_ gnd vdd FILL
X_3762_ \u_cpu.bufreg.i_imm_en\ _398_ \u_cpu.decode.co_rd_alu_en\ vdd gnd NOR2X1
X_3342_ _16_ _17_ _15_ vdd gnd AND2X2
X_4547_ ibus_pending_ack_bF$buf1 ibus_pending_rdt[30] _1923_ vdd gnd NAND2X1
X_4127_ mem_dbus_ack_bF$buf5 \u_mem_serial.shift_rx\[7] _1167__bF$buf0 _1169_ _1170_ vdd 
+ gnd
+ AOI22X1
XFILL_0__2194_ gnd vdd FILL
X_2613_ ren_bF$buf4 raddr[7] _270_ vdd gnd NAND2X1
XFILL_0__4340_ gnd vdd FILL
X_3818_ _654_ _653_ rf_rreq_bF$buf4 _655_ vdd gnd AOI21X1
XFILL_1__2355_ gnd vdd FILL
XBUFX2_insert10 _1304_ _1304__bF$buf4 vdd gnd BUFX2
XBUFX2_insert11 _1304_ _1304__bF$buf3 vdd gnd BUFX2
XBUFX2_insert12 _1304_ _1304__bF$buf2 vdd gnd BUFX2
XBUFX2_insert13 _1304_ _1304__bF$buf1 vdd gnd BUFX2
XBUFX2_insert14 _1304_ _1304__bF$buf0 vdd gnd BUFX2
XBUFX2_insert15 _215_ _215__bF$buf3 vdd gnd BUFX2
XBUFX2_insert16 _215_ _215__bF$buf2 vdd gnd BUFX2
XBUFX2_insert17 _215_ _215__bF$buf1 vdd gnd BUFX2
XBUFX2_insert18 _215_ _215__bF$buf0 vdd gnd BUFX2
XBUFX2_insert19 _479_ _479__bF$buf3 vdd gnd BUFX2
X_3991_ \u_cpu.bufreg.i_en_bF$buf3\ _917_ _919_ _867_ vdd gnd OAI21X1
X_3571_ \u_cpu.alu.i_sub\ \u_cpu.alu.i_op_b\ _2078_ vdd gnd OR2X2
X_3151_ _1705_ _479__bF$buf2 _1704_ _563_ vdd gnd AOI21X1
X_4356_ _1535_ _1526_ _1536_ _1530_ _1469_ vdd 
+ gnd
+ OAI22X1
XFILL_1__4098_ gnd vdd FILL
X_2842_ _565_ i_clk_sys_ext_bF$buf33 \u_rf_if.read_buf1\[0] vdd gnd DFFPOSX1
X_2422_ \u_mem_serial.active_ibus_bF$buf4\ \u_cpu.ctrl.o_ibus_adr\[20] _1033_ vdd gnd NAND2X1
X_3627_ \u_cpu.bufreg.i_right_shift_op\ _145_ vdd gnd INVX1
X_3207_ _2110__bF$buf0 _2108__bF$buf0 _1806_ _1742_ vdd gnd NAND3X1
XFILL_1__2164_ gnd vdd FILL
XFILL_1__3369_ gnd vdd FILL
XFILL143250x136950 gnd vdd FILL
X_3380_ \u_rf_if.read_buf0\[16] \u_rf_if.stream_cnt_0_bF$buf2\ _296_ vdd gnd NOR2X1
X_4585_ i_rst_n_bF$buf5 rst vdd gnd INVX8
X_4165_ _1131_ _1159__bF$buf3 _1199_ _1200_ vdd gnd OAI21X1
XFILL_0__4205_ gnd vdd FILL
X_2651_ ren_bF$buf3 \u_rf_if.o_wen\ _232_ vdd gnd NOR2X1
X_2231_ _1315__bF$buf5 _800_ _1392_ _770_ vdd gnd AOI21X1
X_3856_ _660__bF$buf1 _686_ _687_ _627_ vdd gnd OAI21X1
X_3436_ \u_rf_if.stream_cnt_0_bF$buf2\ _355_ _352_ _351_ vdd gnd OAI21X1
X_3016_ _1668_ _1605_ _1604_ _526_ vdd gnd AOI21X1
XFILL_1_BUFX2_insert71 gnd vdd FILL
XFILL_1_BUFX2_insert75 gnd vdd FILL
XFILL_1_BUFX2_insert79 gnd vdd FILL
XFILL_1__3178_ gnd vdd FILL
XFILL_0__2288_ gnd vdd FILL
X_4394_ \u_cpu.ctrl.o_ibus_adr\[12] _1525__bF$buf4 _1558_ vdd gnd NAND2X1
X_2707_ ren_bF$buf2 _188_ _189_ _190_ vdd gnd OAI21X1
XFILL_0__4014_ gnd vdd FILL
XFILL_1__3810_ gnd vdd FILL
X_2880_ _544_ i_clk_sys_ext_bF$buf42 \u_rf_if.read_buf0\[24] vdd gnd DFFPOSX1
X_2460_ \u_mem_serial.active_ibus_bF$buf3\ \u_cpu.bufreg.data\[30] _995_ vdd gnd OR2X2
X_3665_ \u_cpu.ctrl.i_jump\ _169_ vdd gnd INVX1
X_3245_ _2110__bF$buf4 _5__bF$buf3 _1772_ _1771_ vdd gnd NAND3X1
X_2936_ \u_rf_if.i_rreq\ \u_rf_if.rreg0_latched\[3] _740_ vdd gnd NOR2X1
X_2516_ \u_mem_serial.active_ibus_bF$buf5\ \u_cpu.bufreg.data\[15] _837_ vdd gnd NOR2X1
XFILL_1__2678_ gnd vdd FILL
X_3894_ \u_cpu.decode.i_wb_rdt\[23] rreg1[4] rf_rreq_bF$buf5 _713_ vdd gnd MUX2X1
X_3474_ \u_rf_if.read_buf1\[8] \u_rf_if.stream_cnt_0_bF$buf4\ _434_ vdd gnd NOR2X1
X_3054_ _1800__bF$buf0 _1686__bF$buf4 _1763_ _1629_ vdd gnd NAND3X1
X_4679_ mem_ibus_ack_bF$buf0 \u_mem_serial.shift_rx\[31] _1960__bF$buf1 _2002_ vdd gnd NAND3X1
X_4259_ mem_dbus_ack_bF$buf1 \u_mem_serial.shift_rx\[12] _1167__bF$buf1 _1274_ _1275_ vdd 
+ gnd
+ AOI22X1
X_2745_ ren_bF$buf1 _91_ vdd gnd INVX2
X_2325_ \u_mem_serial.shift_rx\[10] _1297__bF$buf3 _1321_ vdd gnd NAND2X1
XFILL_1__4213_ gnd vdd FILL
X_3283_ _8_ _2052_ _1804_ vdd gnd NAND2X1
X_4488_ \u_mem_serial.shift_rx\[2] _1861__bF$buf2 _1884_ vdd gnd NAND2X1
X_4068_ _882_ i_clk_sys_ext_bF$buf8 \u_cpu.bufreg.data\[16] vdd gnd DFFPOSX1
XFILL_0__3323_ gnd vdd FILL
XFILL_0__4528_ gnd vdd FILL
X_2974_ _1462_ _1663_ _512_ vdd gnd NOR2X1
X_2554_ \u_mem_serial.bit_count\[1] _799_ vdd gnd INVX2
X_2134_ gnd o_gpio[4] vdd gnd BUFX2
X_3759_ \u_cpu.decode.opcode\[0] \u_cpu.decode.opcode\[2] \u_cpu.decode.co_rd_mem_en\ vdd gnd NOR2X1
X_3339_ _17_ _16_ _12_ vdd gnd NAND2X1
X_4700_ rreg0[2] rf_rreq_bF$buf7 _1872__bF$buf1 _2016_ vdd gnd NAND3X1
X_3092_ _1657_ _1658_ rst_bF$buf7 _551_ vdd gnd AOI21X1
X_4297_ _1117_ i_clk_sys_ext_bF$buf44 \u_cpu.bufreg2.cnt_next\[6] vdd gnd DFFPOSX1
XFILL_0__3972_ gnd vdd FILL
XFILL_0__3552_ gnd vdd FILL
XFILL_0__3132_ gnd vdd FILL
X_2783_ _596_ i_clk_sys_ext_bF$buf22 \u_rf_if.read_buf1\[28] vdd gnd DFFPOSX1
X_2363_ \u_cpu.mem_if.o_wb_sel\[0] _1092_ vdd gnd INVX1
XFILL_0__4090_ gnd vdd FILL
X_3988_ \u_cpu.bufreg.data\[29] _887__bF$buf0 _918_ vdd gnd NAND2X1
X_3568_ _2072_ _2074_ _2075_ vdd gnd NAND2X1
X_3148_ rf_wreq rst_bF$buf7 _1702_ vdd gnd NOR2X1
XFILL_0__2403_ gnd vdd FILL
XFILL_0__3608_ gnd vdd FILL
XFILL_1__4251_ gnd vdd FILL
XFILL_0__3781_ gnd vdd FILL
X_2839_ _500_ i_clk_sys_ext_bF$buf25 \u_rf_if.rreg0_latched\[3] vdd gnd DFFPOSX1
X_2419_ \u_cpu.bufreg.data\[21] _1036_ vdd gnd INVX1
XFILL_0__4566_ gnd vdd FILL
XFILL_0__4146_ gnd vdd FILL
X_2592_ i_rf_miso _287_ _202_ _288_ vdd gnd OAI21X1
X_2172_ \u_mem_serial.shift_rx\[16] _1377__bF$buf3 _1433_ vdd gnd NAND2X1
X_3797_ _362_ i_clk_sys_ext_bF$buf30 \u_cpu.decode.opcode\[1] vdd gnd DFFPOSX1
X_3377_ \u_rf_if.read_buf0\[18] \u_rf_if.stream_cnt_0_bF$buf4\ \u_rf_if.stream_cnt_1_bF$buf0\ _50_ vdd gnd OAI21X1
XFILL_0__2632_ gnd vdd FILL
XFILL_0__3837_ gnd vdd FILL
XFILL_0__3417_ gnd vdd FILL
XFILL_1__4480_ gnd vdd FILL
XFILL_0__3590_ gnd vdd FILL
XFILL_0__3170_ gnd vdd FILL
X_2648_ _114_ \u_rf_serial.last_req_key\[4] _235_ vdd gnd OR2X2
X_2228_ \u_mem_serial.bit_count_0_bF$buf3\ _1297__bF$buf2 _1308_ _1394_ vdd gnd OAI21X1
XFILL_1__3331_ gnd vdd FILL
X_3186_ _1729_ _1727_ rst_bF$buf0 _575_ vdd gnd AOI21X1
XFILL_0__3226_ gnd vdd FILL
X_2877_ _512_ i_clk_sys_ext_bF$buf35 \u_rf_if.issue_chunk\[2] vdd gnd DFFPOSX1
X_2457_ \u_cpu.ctrl.o_ibus_adr\[31] _998_ vdd gnd INVX1
XFILL_0__4184_ gnd vdd FILL
XFILL_0__2917_ gnd vdd FILL
X_4603_ _1870_ _1874_ _1958_ _1959_ vdd gnd OAI21X1
XFILL_0__2250_ gnd vdd FILL
XFILL_0__3875_ gnd vdd FILL
XFILL_1__3616_ gnd vdd FILL
X_2686_ _207_ _205_ _202_ _208_ vdd gnd OAI21X1
X_2266_ \u_mem_serial.bit_count_0_bF$buf2\ _1083_ _1299_ _1368_ vdd gnd NAND3X1
XFILL_0__2726_ gnd vdd FILL
X_4412_ \u_cpu.ctrl.o_ibus_adr\[6] _1548_ _1570_ vdd gnd NAND2X1
XFILL_0__3264_ gnd vdd FILL
XFILL_1__2640_ gnd vdd FILL
XFILL_0__4469_ gnd vdd FILL
XFILL_1__3005_ gnd vdd FILL
X_2495_ \u_mem_serial.active_ibus_bF$buf6\ \u_cpu.bufreg.data\[11] _959_ vdd gnd OR2X2
XFILL_0__2955_ gnd vdd FILL
XFILL_0__2535_ gnd vdd FILL
X_4641_ mem_ibus_ack_bF$buf3 \u_mem_serial.shift_rx\[16] _1960__bF$buf3 _1980_ vdd gnd NAND3X1
X_4221_ mem_dbus_ack_bF$buf6 _1243_ _1247_ vdd gnd NOR2X1
XFILL_1_CLKBUF1_insert113 gnd vdd FILL
XFILL_1_CLKBUF1_insert117 gnd vdd FILL
X_3912_ \u_cpu.decode.i_wb_rdt\[8] \u_cpu.immdec.gen_immdec_w_eq_1.imm11_7\[2] rf_rreq_bF$buf3 _725_ vdd gnd MUX2X1
X_3089_ _1656_ _1655_ rst_bF$buf4 _550_ vdd gnd AOI21X1
XFILL_0__2764_ gnd vdd FILL
XFILL_0__2344_ gnd vdd FILL
X_4450_ _1484_ i_clk_sys_ext_bF$buf40 \u_cpu.ctrl.o_ibus_adr\[14] vdd gnd DFFPOSX1
X_4030_ _887__bF$buf3 _943_ _945_ _880_ vdd gnd OAI21X1
XFILL_1__2925_ gnd vdd FILL
XFILL_1__2505_ gnd vdd FILL
X_3721_ \u_cpu.bufreg.i_right_shift_op\ _367_ \u_cpu.state.i_alu_rd_sel1\ vdd gnd NOR2X1
X_3301_ _2054_ _2111_ rst_bF$buf3 _598_ vdd gnd AOI21X1
X_4506_ ibus_pending_ack_bF$buf0 _1894_ _1895_ \u_cpu.decode.i_wb_rdt\[4] vdd gnd OAI21X1
XFILL_1__3883_ gnd vdd FILL
XFILL_1__4668_ gnd vdd FILL
XFILL_0__3358_ gnd vdd FILL
XFILL_1__3519_ gnd vdd FILL
X_2589_ _85_ _289_ _2122_ _290_ vdd gnd OAI21X1
X_2169_ \u_mem_serial.shift_rx\[15] _1377__bF$buf3 _1435_ vdd gnd NAND2X1
X_3950_ \u_cpu.bufreg.i_rs1_en\ rdata0[0] _892_ vdd gnd NAND2X1
X_3530_ _31_ _32_ \u_cpu.o_wdata0\ vdd gnd NAND2X1
X_3110_ _1678_ _1671_ _39_ _1670_ vdd gnd OAI21X1
X_4735_ i_rst_n_bF$buf5 vdd _1839_ i_clk_sys_ext_bF$buf4 ibus_pending_rdt[9] vdd 
+ gnd
+ DFFSR
X_4315_ _1500_ _1503_ \u_cpu.alu.i_cnt0\ _1504_ vdd gnd AOI21X1
XFILL_0__2382_ gnd vdd FILL
X_2801_ _587_ i_clk_sys_ext_bF$buf10 \u_rf_if.read_buf1\[19] vdd gnd DFFPOSX1
XFILL_1__2963_ gnd vdd FILL
XFILL_1__2543_ gnd vdd FILL
XFILL_1__3748_ gnd vdd FILL
X_2398_ _840_ \u_cpu.bufreg.i_shamt\[0] \u_cpu.bufreg.i_shamt\[2] _1048_ _1057_ vdd 
+ gnd
+ AOI22X1
XFILL_0__2438_ gnd vdd FILL
X_4544_ _1871_ \u_cpu.decode.i_wb_rdt\[22] _1874_ _1921_ vdd gnd NAND3X1
X_4124_ _1163_ _1166_ _1156_ _1167_ vdd gnd AOI21X1
X_2610_ \u_rf_serial.last_req_key\[0] _197_ _273_ vdd gnd NAND2X1
XFILL_0__3396_ gnd vdd FILL
X_3815_ rf_rreq_bF$buf4 _649_ _652_ _621_ vdd gnd OAI21X1
XFILL142650x54150 gnd vdd FILL
XFILL_0__2667_ gnd vdd FILL
X_4353_ _1533_ _1526_ _1534_ _1530_ _1468_ vdd 
+ gnd
+ OAI22X1
XFILL142950x108150 gnd vdd FILL
X_3624_ \u_cpu.state.init_done\ \u_cpu.dbus_en\ _139_ _143_ vdd gnd NAND3X1
X_3204_ _13__bF$buf3 _1741_ \u_rf_if.read_buf1\[11] _1740_ vdd gnd OAI21X1
X_4409_ \u_cpu.ctrl.o_ibus_adr\[7] _1525__bF$buf3 _1568_ vdd gnd NAND2X1
XFILL_1__3786_ gnd vdd FILL
XFILL_0__2896_ gnd vdd FILL
XFILL_0__2476_ gnd vdd FILL
X_4582_ ibus_pending_rdt[7] _1946_ vdd gnd INVX1
X_4162_ \u_cpu.bufreg2.cnt_next\[6] _1197_ vdd gnd INVX1
XFILL_0__4622_ gnd vdd FILL
XFILL_1__2217_ gnd vdd FILL
X_3853_ _683_ _684_ _685_ _626_ vdd gnd OAI21X1
X_3433_ \u_rf_if.stream_cnt_0_bF$buf0\ _350_ _349_ _348_ vdd gnd OAI21X1
X_3013_ _1602_ _1603_ rst_bF$buf0 _525_ vdd gnd AOI21X1
XFILL_1__2390_ gnd vdd FILL
XFILL_1_BUFX2_insert40 gnd vdd FILL
XFILL_1_BUFX2_insert44 gnd vdd FILL
XFILL_1_BUFX2_insert48 gnd vdd FILL
X_4638_ _1892_ _1959__bF$buf4 _1978_ _1830_ vdd gnd OAI21X1
X_4218_ mem_dbus_ack_bF$buf6 \u_mem_serial.shift_rx\[21] _1167__bF$buf3 _1244_ _1245_ vdd 
+ gnd
+ AOI22X1
X_4391_ \u_cpu.ctrl.o_ibus_adr\[13] _1525__bF$buf4 _1556_ vdd gnd NAND2X1
X_2704_ \u_rf_if.o_wdata\[1] _105_ _193_ vdd gnd NAND2X1
X_3909_ \u_cpu.decode.i_wb_rdt\[9] \u_cpu.immdec.gen_immdec_w_eq_1.imm11_7\[3] rf_rreq_bF$buf3 _723_ vdd gnd MUX2X1
XFILL142950x97350 gnd vdd FILL
X_3662_ _160_ _163_ _158_ \u_cpu.cnt12to31\ vdd gnd OAI21X1
X_3242_ _2123_ \u_rf_if.issue_chunk\[2] _1807_ _1769_ vdd gnd NOR3X1
X_4447_ _1495_ i_clk_sys_ext_bF$buf1 \u_cpu.ctrl.o_ibus_adr\[31] vdd gnd DFFPOSX1
X_4027_ \u_cpu.bufreg.i_en_bF$buf1\ \u_cpu.bufreg.data\[19] _944_ vdd gnd NAND2X1
XFILL_0__3702_ gnd vdd FILL
X_2933_ \u_rf_if.i_rreq\ \u_rf_if.rreg0_latched\[2] _738_ vdd gnd NOR2X1
X_2513_ \u_mem_serial.bit_count\[1] _798_ _840_ vdd gnd NOR2X1
XFILL_0__4660_ gnd vdd FILL
XFILL_0__4240_ gnd vdd FILL
X_3718_ _761_ i_clk_fast_bF$buf5 \u_mem_serial.bit_count\[6] vdd gnd DFFPOSX1
XFILL_1__4401_ gnd vdd FILL
X_3891_ \u_cpu.decode.i_wb_rdt\[25] \u_cpu.immdec.gen_immdec_w_eq_1.imm30_25\[1] rf_rreq_bF$buf3 _711_ vdd gnd MUX2X1
X_3471_ \u_rf_if.read_buf1\[10] \u_rf_if.stream_cnt_0_bF$buf4\ \u_rf_if.stream_cnt_1_bF$buf3\ _431_ vdd gnd OAI21X1
X_3051_ _2055_ _1686__bF$buf4 _1763_ _1627_ vdd gnd NAND3X1
X_4676_ ibus_pending_rdt[1] _2000_ vdd gnd INVX1
X_4256_ _1270_ _1159__bF$buf3 _1272_ _1119_ vdd gnd OAI21X1
XFILL_0__3511_ gnd vdd FILL
XFILL_0__4716_ gnd vdd FILL
X_2742_ _93_ _92_ _94_ vdd gnd NAND2X1
X_2322_ _1320_ _1323_ rst_bF$buf9 _748_ vdd gnd AOI21X1
X_3947_ \u_cpu.bufreg.i_imm_en\ \u_cpu.bufreg.i_imm\ _889_ vdd gnd NAND2X1
X_3527_ \u_rf_if.rcnt\[0] _480_ _479_ vdd gnd NAND2X1
X_3107_ \u_rf_if.issue_idx\[5] _1669_ _1668_ vdd gnd NOR2X1
XFILL_1__4630_ gnd vdd FILL
X_3280_ _13__bF$buf4 _1802_ \u_rf_if.read_buf1\[27] _1801_ vdd gnd OAI21X1
X_4485_ ibus_pending_rdt[6] \u_mem_serial.shift_rx\[6] ibus_pending_ack_bF$buf0 _1882_ vdd gnd MUX2X1
X_4065_ _884_ i_clk_sys_ext_bF$buf5 \u_cpu.bufreg.data\[14] vdd gnd DFFPOSX1
XFILL_0__3320_ gnd vdd FILL
X_2971_ \u_rf_if.rreg0_latched\[3] \u_rf_if.issue_sel_bF$buf1\ _1460_ _1459_ vdd gnd OAI21X1
X_2551_ \u_mem_serial.bit_count\[3] _801_ _802_ vdd gnd NAND2X1
X_2131_ gnd o_gpio[7] vdd gnd BUFX2
X_3756_ \u_cpu.decode.opcode\[1] \u_cpu.cond_branch\ \u_cpu.branch_op\ \u_cpu.bufreg.i_rs1_en\ vdd gnd OAI21X1
X_3336_ \u_rf_if.issue_sel_bF$buf2\ \u_rf_if.issue_chunk\[0] _9_ vdd gnd NAND2X1
XFILL_1__3078_ gnd vdd FILL
X_4294_ _1120_ i_clk_sys_ext_bF$buf44 \u_cpu.bufreg2.dlo\[12] vdd gnd DFFPOSX1
X_2607_ \u_rf_serial.last_req_key\[6] _94_ _276_ vdd gnd NAND2X1
XFILL_0__4334_ gnd vdd FILL
XFILL_1__3710_ gnd vdd FILL
XFILL143250x122550 gnd vdd FILL
X_2780_ _535_ i_clk_sys_ext_bF$buf22 \u_rf_if.read_buf0\[16] vdd gnd DFFPOSX1
X_2360_ \u_cpu.mem_if.o_wb_sel\[2] _1289_ vdd gnd INVX1
X_3985_ \u_cpu.bufreg.data\[0] _915_ _916_ vdd gnd NAND2X1
X_3565_ \u_cpu.alu.i_sub\ _2071_ _2072_ vdd gnd NAND2X1
X_3145_ _1700_ _1699_ vdd gnd INVX1
XFILL_0__3605_ gnd vdd FILL
X_2836_ _568_ i_clk_sys_ext_bF$buf6 \u_rf_if.read_buf1\[3] vdd gnd DFFPOSX1
X_2416_ _1038_ _845_ _1039_ vdd gnd NAND2X1
XFILL_0__4563_ gnd vdd FILL
X_3794_ rf_rreq_bF$buf2 _379_ _412_ _364_ vdd gnd OAI21X1
X_3374_ \u_rf_if.read_buf0\[20] \u_rf_if.stream_cnt_0_bF$buf3\ _47_ vdd gnd NOR2X1
X_4579_ ibus_pending_rdt[8] _1944_ vdd gnd INVX1
X_4159_ \u_mem_serial.shift_rx\[0] \u_cpu.bufreg2.dlo\[1] mem_dbus_ack_bF$buf5 _1195_ vdd gnd MUX2X1
X_2645_ \u_rf_if.o_wen\ _238_ vdd gnd INVX1
X_2225_ \u_mem_serial.shift_rx\[30] _1377__bF$buf1 _1396_ vdd gnd NAND2X1
XFILL_0__4372_ gnd vdd FILL
XFILL_1__4113_ gnd vdd FILL
X_3183_ _444_ _1725_ \u_rf_if.stream_active\ _1724_ vdd gnd OAI21X1
X_4388_ \u_cpu.ctrl.o_ibus_adr\[14] _1525__bF$buf4 _1554_ vdd gnd NAND2X1
XFILL_0__4008_ gnd vdd FILL
X_2874_ _547_ i_clk_sys_ext_bF$buf15 \u_rf_if.read_buf0\[26] vdd gnd DFFPOSX1
X_2454_ _996_ _1000_ _808_ _1001_ vdd gnd AOI21X1
X_3659_ \u_cpu.state.cnt_r\[0] \u_cpu.cnt0to3\ _168_ vdd gnd NAND2X1
X_3239_ _8_ _2052_ _2048_ _1767_ vdd gnd NAND3X1
X_4600_ _1948_ rf_read_reg0[4] _1872__bF$buf2 _1957_ vdd gnd NAND3X1
X_4197_ _1149_ \u_mem_serial.shift_rx\[26] _1227_ _1228_ vdd gnd OAI21X1
XFILL_0__3452_ gnd vdd FILL
XFILL_0__3032_ gnd vdd FILL
XFILL143250x97350 gnd vdd FILL
XFILL_0__4657_ gnd vdd FILL
X_2683_ \u_rf_serial.tx_state\[4] _81_ _210_ vdd gnd NOR2X1
X_2263_ \u_mem_serial.req_pending\ _1370_ _1310_ _1371_ vdd gnd OAI21X1
X_3888_ \u_cpu.decode.i_wb_rdt\[26] \u_cpu.immdec.gen_immdec_w_eq_1.imm30_25\[2] rf_rreq_bF$buf1 _709_ vdd gnd MUX2X1
X_3468_ \u_rf_if.read_buf1\[1] _428_ vdd gnd INVX1
X_3048_ _0_ _1686__bF$buf2 _1757_ _1625_ vdd gnd NAND3X1
X_2739_ _90_ _97_ vdd gnd INVX1
X_2319_ _1325_ _1326_ vdd gnd INVX1
X_2492_ _798_ _959_ _961_ _962_ vdd gnd NAND3X1
X_3697_ _124_ i_clk_sys_ext_bF$buf23 \u_cpu.state.cnt_r\[1] vdd gnd DFFPOSX1
X_3277_ _1799_ _2108__bF$buf1 _1798_ vdd gnd NOR2X1
XFILL_0__2952_ gnd vdd FILL
XFILL_0__2532_ gnd vdd FILL
XFILL_0__3737_ gnd vdd FILL
XFILL_0__3490_ gnd vdd FILL
XFILL_0__3070_ gnd vdd FILL
X_2968_ \u_rf_if.issue_sel_bF$buf1\ _1692_ _1457_ vdd gnd NAND2X1
X_2548_ _804_ _801_ _805_ vdd gnd NAND2X1
X_2128_ _2118_ o_mem_sck vdd gnd BUFX2
XFILL_0__4695_ gnd vdd FILL
XFILL_1__3651_ gnd vdd FILL
XFILL_1__3231_ gnd vdd FILL
XFILL_1__4016_ gnd vdd FILL
X_3086_ _1688__bF$buf1 _2112_ \u_rf_if.read_buf0\[31] _1653_ vdd gnd OAI21X1
XFILL_0__2761_ gnd vdd FILL
XFILL_0__3966_ gnd vdd FILL
XFILL_0__3546_ gnd vdd FILL
XFILL_0__3126_ gnd vdd FILL
X_2777_ _599_ i_clk_sys_ext_bF$buf36 \u_rf_if.stream_cnt\[0] vdd gnd DFFPOSX1
X_2357_ _1287_ _1290_ _1291_ _1292_ vdd gnd AOI21X1
X_4503_ _1861__bF$buf4 _1892_ _1893_ \u_cpu.decode.i_wb_rdt\[18] vdd gnd OAI21X1
XFILL_1__3040_ gnd vdd FILL
XFILL_0__2990_ gnd vdd FILL
XFILL142350x32550 gnd vdd FILL
X_2586_ _197_ _215__bF$buf0 _202_ _292_ vdd gnd OAI21X1
X_2166_ \u_mem_serial.shift_rx\[14] _1377__bF$buf0 _1437_ vdd gnd NAND2X1
XFILL_0__2626_ gnd vdd FILL
XFILL_0__2206_ gnd vdd FILL
X_4732_ i_rst_n_bF$buf2 vdd _1842_ i_clk_sys_ext_bF$buf1 ibus_pending_rdt[6] vdd 
+ gnd
+ DFFSR
X_4312_ \u_cpu.ctrl.i_utype\ _1501_ vdd gnd INVX1
XFILL_0__3584_ gnd vdd FILL
XFILL_0__3164_ gnd vdd FILL
XFILL_0__4369_ gnd vdd FILL
X_2395_ \u_cpu.bufreg2.cnt_next\[6] _796_ _840_ \u_cpu.bufreg2.dhi\[4] _1060_ vdd 
+ gnd
+ AOI22X1
X_4541_ _1871_ \u_cpu.decode.i_wb_rdt\[23] _1874_ _1919_ vdd gnd NAND3X1
X_4121_ \u_cpu.bufreg2.i_bytecnt\[1] _1164_ vdd gnd INVX1
X_3812_ \u_cpu.bufreg.i_cnt_done\ _650_ _651_ vdd gnd NAND2X1
XFILL_0__4178_ gnd vdd FILL
XFILL_1__3974_ gnd vdd FILL
XFILL_1__3554_ gnd vdd FILL
XFILL_0__2244_ gnd vdd FILL
X_4770_ i_rst_n_bF$buf1 vdd _1850_ i_clk_sys_ext_bF$buf18 rf_read_reg1[3] vdd 
+ gnd
+ DFFSR
X_4350_ _1531_ _1530_ _1532_ _1467_ vdd gnd OAI21X1
XFILL143250x7350 gnd vdd FILL
XFILL_0__3869_ gnd vdd FILL
XFILL_1__2405_ gnd vdd FILL
X_3621_ \u_cpu.bufreg2.o_sh_done\ \u_cpu.bufreg.i_right_shift_op\ _141_ _142_ vdd gnd OAI21X1
X_3201_ _1740_ _1738_ rst_bF$buf2 _579_ vdd gnd AOI21X1
X_4406_ \u_cpu.ctrl.o_ibus_adr\[8] _1525__bF$buf1 _1566_ vdd gnd NAND2X1
XFILL142950x129750 gnd vdd FILL
XFILL_1__4568_ gnd vdd FILL
XFILL_1__4148_ gnd vdd FILL
XFILL_0__3678_ gnd vdd FILL
XFILL_0__3258_ gnd vdd FILL
XFILL_1__3419_ gnd vdd FILL
X_2489_ \u_mem_serial.bit_count_0_bF$buf2\ \u_mem_serial.bit_count\[1] _800_ _965_ vdd gnd OAI21X1
X_3850_ rf_rreq_bF$buf0 \u_cpu.decode.co_immdec_en\[0] _664_ _683_ vdd gnd OAI21X1
X_3430_ \u_rf_if.read_buf1\[21] _441__bF$buf0 _440_ _345_ vdd gnd OAI21X1
X_3010_ _1601_ _1600_ rst_bF$buf0 _524_ vdd gnd AOI21X1
XFILL_1_BUFX2_insert10 gnd vdd FILL
XFILL_1_BUFX2_insert14 gnd vdd FILL
XFILL_1_BUFX2_insert17 gnd vdd FILL
X_4635_ mem_ibus_ack_bF$buf3 \u_mem_serial.shift_rx\[19] _1960__bF$buf3 _1977_ vdd gnd NAND3X1
X_4215_ _1239_ _1159__bF$buf4 _1242_ _1108_ vdd gnd OAI21X1
XFILL_1__3592_ gnd vdd FILL
XFILL_0__2282_ gnd vdd FILL
X_2701_ ren_bF$buf2 raddr[0] _196_ vdd gnd NAND2X1
XFILL_0__3067_ gnd vdd FILL
X_3906_ \u_cpu.decode.i_wb_rdt\[10] \u_cpu.immdec.gen_immdec_w_eq_1.imm11_7\[4] rf_rreq_bF$buf3 _721_ vdd gnd MUX2X1
XFILL_1__2443_ gnd vdd FILL
X_2298_ _1314_ _1342_ _1303_ _1343_ vdd gnd NAND3X1
XFILL_0__2338_ gnd vdd FILL
X_4444_ _1474_ i_clk_sys_ext_bF$buf8 \u_cpu.ctrl.o_ibus_adr\[21] vdd gnd DFFPOSX1
X_4024_ \u_cpu.bufreg.data\[19] _887__bF$buf4 _942_ vdd gnd NAND2X1
XFILL_1__4186_ gnd vdd FILL
X_2930_ \u_rf_if.i_rreq\ \u_rf_if.rreg0_latched\[1] _736_ vdd gnd NOR2X1
X_2510_ \u_mem_serial.active_ibus_bF$buf1\ _841_ _842_ _843_ vdd gnd OAI21X1
X_3715_ _777_ i_clk_fast_bF$buf2 \u_mem_serial.shift_rx\[24] vdd gnd DFFPOSX1
XFILL_1__2252_ gnd vdd FILL
X_4673_ _1997_ _1959__bF$buf0 _1998_ _1845_ vdd gnd OAI21X1
X_4253_ \u_cpu.bufreg2.dlo\[13] _1270_ vdd gnd INVX1
XFILL_1__2728_ gnd vdd FILL
X_3944_ \u_cpu.bufreg.i_en_bF$buf3\ \u_cpu.bufreg.data\[0] \u_cpu.alu.i_buf\ vdd gnd AND2X2
X_3524_ \u_rf_if.o_waddr\[0] _476_ vdd gnd INVX1
X_3104_ \u_rf_if.pending_read\ _1669_ _1665_ vdd gnd NAND2X1
X_4729_ _541_ i_clk_sys_ext_bF$buf36 \u_rf_if.stream_cnt\[4] vdd gnd DFFPOSX1
X_4309_ \u_cpu.ctrl.i_pc_rel\ \u_cpu.ctrl.pc\ _1498_ vdd gnd NAND2X1
XFILL_1__3266_ gnd vdd FILL
XFILL_0__2376_ gnd vdd FILL
X_4482_ _1861__bF$buf3 _1879_ _1880_ \u_cpu.decode.i_wb_rdt\[12] vdd gnd OAI21X1
X_4062_ _873_ i_clk_sys_ext_bF$buf13 \u_cpu.state.i_ctrl_misalign\ vdd gnd DFFPOSX1
XFILL_0__4522_ gnd vdd FILL
XFILL_0__4102_ gnd vdd FILL
X_3753_ \u_cpu.cond_branch\ _381_ \u_cpu.ctrl.i_jal_or_jalr\ vdd gnd NOR2X1
X_3333_ \u_rf_if.issue_chunk\[3] _7_ _15_ _18_ _6_ vdd 
+ gnd
+ AOI22X1
XFILL_1__2290_ gnd vdd FILL
X_4538_ _1871_ \u_cpu.decode.i_wb_rdt\[20] _1874_ _1917_ vdd gnd NAND3X1
X_4118_ \u_cpu.bufreg.data\[0] \u_cpu.bufreg2.i_bytecnt\[0] _1161_ vdd gnd NAND2X1
XFILL_0__2185_ gnd vdd FILL
X_4291_ _1123_ i_clk_sys_ext_bF$buf37 \u_cpu.bufreg2.dlo\[9] vdd gnd DFFPOSX1
X_2604_ _227_ _159_ _279_ vdd gnd NAND2X1
X_3809_ \u_cpu.immdec.gen_immdec_w_eq_1.imm11_7\[0] rreg1[0] \u_cpu.decode.co_immdec_ctrl\[0] _648_ vdd gnd MUX2X1
X_3982_ \u_cpu.bufreg.i_cnt1\ _913_ vdd gnd INVX1
X_3562_ \u_cpu.alu.add_cy_r\ rdata0[0] _2069_ vdd gnd NOR2X1
X_3142_ \u_rf_if.o_waddr\[3] _1697_ _1696_ vdd gnd NOR2X1
X_4767_ i_rst_n_bF$buf1 vdd _1853_ i_clk_sys_ext_bF$buf18 rf_read_reg1[0] vdd 
+ gnd
+ DFFSR
X_4347_ \u_cpu.ctrl.o_ibus_adr\[1] _1531_ vdd gnd INVX1
X_2833_ _490_ i_clk_sys_ext_bF$buf2 \u_rf_if.o_waddr\[1] vdd gnd DFFPOSX1
X_2413_ _1022_ _1041_ _1007_ _1042_ vdd gnd OAI21X1
XFILL_0__3199_ gnd vdd FILL
XFILL_0__4140_ gnd vdd FILL
X_3618_ \u_cpu.alu.i_en\ _139_ vdd gnd INVX1
X_3791_ rf_rreq_bF$buf2 \u_cpu.decode.i_wb_rdt\[6] _411_ vdd gnd NAND2X1
X_3371_ \u_rf_if.read_buf0\[22] \u_rf_if.stream_cnt_0_bF$buf3\ \u_rf_if.stream_cnt_1_bF$buf0\ _44_ vdd gnd OAI21X1
X_4576_ ibus_pending_rdt[9] _1942_ vdd gnd INVX1
X_4156_ _1191_ _1190_ _1166_ _1192_ vdd gnd OAI21X1
XFILL_0__3831_ gnd vdd FILL
XFILL_0__4616_ gnd vdd FILL
X_2642_ \u_rf_serial.req_seen\ _240_ _239_ _241_ vdd gnd NAND3X1
X_2222_ \u_mem_serial.shift_rx\[25] _1377__bF$buf1 _1398_ vdd gnd NAND2X1
X_3847_ \u_cpu.decode.i_wb_rdt\[24] \u_cpu.immdec.gen_immdec_w_eq_1.imm30_25\[0] rf_rreq_bF$buf3 _681_ vdd gnd MUX2X1
X_3427_ _346_ _345_ _344_ _343_ _342_ vdd 
+ gnd
+ OAI22X1
X_3007_ _1599_ _1598_ rst_bF$buf0 _523_ vdd gnd AOI21X1
XFILL_1__4530_ gnd vdd FILL
X_3180_ _13__bF$buf2 _1730_ \u_rf_if.read_buf1\[6] _1722_ vdd gnd OAI21X1
XFILL_0__2699_ gnd vdd FILL
XFILL_0__2279_ gnd vdd FILL
X_4385_ \u_cpu.ctrl.o_ibus_adr\[15] _1525__bF$buf2 _1552_ vdd gnd NAND2X1
XFILL_0__3220_ gnd vdd FILL
XFILL_0__4005_ gnd vdd FILL
X_2871_ _549_ i_clk_sys_ext_bF$buf6 \u_rf_if.ready_pulse\ vdd gnd DFFPOSX1
X_2451_ _806_ _1003_ _807_ _1002_ _1004_ vdd 
+ gnd
+ OAI22X1
X_3656_ _166_ \u_cpu.cnt2\ vdd gnd INVX1
X_3236_ _13__bF$buf3 _1765_ \u_rf_if.read_buf1\[19] _1764_ vdd gnd OAI21X1
XFILL_0__2911_ gnd vdd FILL
X_4194_ _1224_ _1223_ _1131_ _1225_ vdd gnd OAI21X1
X_2927_ \u_rf_if.i_rreq\ \u_rf_if.rreg0_latched\[0] _734_ vdd gnd NOR2X1
X_2507_ \u_cpu.bufreg.data\[13] _846_ vdd gnd INVX1
XFILL_0__4234_ gnd vdd FILL
X_2680_ _209_ _211_ _212_ _54_ vdd gnd AOI21X1
X_2260_ _1369_ _1373_ rst_bF$buf9 _760_ vdd gnd AOI21X1
X_3885_ \u_cpu.decode.i_wb_rdt\[27] \u_cpu.immdec.gen_immdec_w_eq_1.imm30_25\[3] rf_rreq_bF$buf1 _707_ vdd gnd MUX2X1
X_3465_ \u_rf_if.read_buf1\[3] _441__bF$buf2 _425_ vdd gnd NOR2X1
X_3045_ _0_ _1686__bF$buf2 _1754_ _1623_ vdd gnd NAND3X1
XFILL_0__2720_ gnd vdd FILL
XFILL_0__2300_ gnd vdd FILL
X_2736_ _91_ _73_ _99_ _100_ vdd gnd OAI21X1
X_2316_ _1315__bF$buf4 _1304__bF$buf2 \u_mem_serial.shift_rx\[9] _1328_ vdd gnd OAI21X1
XFILL_0__4463_ gnd vdd FILL
XFILL_0__4043_ gnd vdd FILL
XFILL_1__2898_ gnd vdd FILL
XFILL_1__2478_ gnd vdd FILL
X_3694_ _126_ i_clk_sys_ext_bF$buf3 \u_cpu.state.init_done\ vdd gnd DFFPOSX1
X_3274_ _13__bF$buf4 _1802_ \u_rf_if.read_buf1\[26] _1796_ vdd gnd OAI21X1
X_4479_ _1878_ \u_cpu.decode.i_wb_rdt\[14] vdd gnd INVX1
X_4059_ _858_ i_clk_sys_ext_bF$buf14 \u_cpu.bufreg.data\[8] vdd gnd DFFPOSX1
XFILL_0__3314_ gnd vdd FILL
XFILL_0__4519_ gnd vdd FILL
X_2965_ _1668_ _1456_ _1455_ _510_ vdd gnd AOI21X1
X_2545_ _806_ _807_ _808_ vdd gnd NAND2X1
X_2125_ _2121_ o_rf_sck vdd gnd BUFX2
XFILL_0__4272_ gnd vdd FILL
X_3083_ _1688__bF$buf1 _1802_ \u_rf_if.read_buf0\[26] _1650_ vdd gnd OAI21X1
X_4288_ _1094_ i_clk_sys_ext_bF$buf44 \u_cpu.bufreg2.dlo\[6] vdd gnd DFFPOSX1
XFILL_0__4328_ gnd vdd FILL
XFILL_1__3704_ gnd vdd FILL
X_2774_ _486_ i_clk_sys_ext_bF$buf24 \u_rf_if.wdata1_r\[0] vdd gnd DFFPOSX1
X_2354_ _1294_ _1046_ _1295_ vdd gnd OR2X2
XFILL_0__4081_ gnd vdd FILL
X_3979_ \u_cpu.bufreg.i_en_bF$buf3\ _909_ _910_ _864_ vdd gnd OAI21X1
X_3559_ \u_cpu.mem_if.signbit\ _2042_ _2044_ _2047_ vdd gnd NAND3X1
X_3139_ _1698_ _1694_ _1701_ _561_ vdd gnd AOI21X1
X_4500_ _1890_ rf_rreq_bF$buf5 _1891_ rf_read_reg1_to_if[1] vdd gnd OAI21X1
X_4097_ \u_cpu.bufreg2.dlo\[16] _1142_ vdd gnd INVX1
XFILL_0__3352_ gnd vdd FILL
XFILL_0__4557_ gnd vdd FILL
X_2583_ _237_ _215__bF$buf1 _293_ _70_ vdd gnd AOI21X1
X_2163_ \u_mem_serial.shift_rx\[13] _1377__bF$buf1 _1439_ vdd gnd NAND2X1
XFILL_1__4718_ gnd vdd FILL
X_3788_ rf_rreq_bF$buf2 \u_cpu.bufreg.i_imm_en\ _409_ _361_ vdd gnd OAI21X1
X_3368_ _48_ _42_ \u_rf_if.stream_cnt\[3] _41_ vdd gnd AOI21X1
XFILL_0__3408_ gnd vdd FILL
XFILL_0__3581_ gnd vdd FILL
X_2639_ ren_bF$buf1 raddr[8] _244_ vdd gnd NAND2X1
X_2219_ \u_mem_serial.shift_rx\[24] _1377__bF$buf0 _1400_ vdd gnd NAND2X1
X_2392_ _1055_ _1062_ _1007_ _1063_ vdd gnd OAI21X1
X_3597_ \u_cpu.alu.i_en\ _2102_ vdd gnd INVX1
X_3177_ rst_bF$buf7 _479__bF$buf1 _572_ vdd gnd NOR2X1
XFILL_0__2432_ gnd vdd FILL
XFILL_0__3637_ gnd vdd FILL
XFILL_0__3390_ gnd vdd FILL
X_2868_ _514_ i_clk_sys_ext_bF$buf25 \u_rf_if.rreg1_latched\[0] vdd gnd DFFPOSX1
X_2448_ _833_ _831_ _1007_ vdd gnd AND2X2
XFILL_0__4595_ gnd vdd FILL
XFILL_0__4175_ gnd vdd FILL
XFILL_1__4336_ gnd vdd FILL
XFILL_0__2661_ gnd vdd FILL
XFILL_0__3446_ gnd vdd FILL
XFILL_0__3026_ gnd vdd FILL
X_2677_ \u_rf_serial.tx_state\[0] _208_ _56_ vdd gnd NOR2X1
X_2257_ _1315__bF$buf1 _1304__bF$buf1 \u_mem_serial.shift_rx\[30] _1375_ vdd gnd OAI21X1
XFILL_0__2717_ gnd vdd FILL
X_4403_ \u_cpu.ctrl.o_ibus_adr\[9] _1525__bF$buf1 _1564_ vdd gnd NAND2X1
XFILL_0__2890_ gnd vdd FILL
XFILL_0__2470_ gnd vdd FILL
X_2486_ \u_mem_serial.active_ibus_bF$buf5\ \u_cpu.ctrl.o_ibus_adr\[9] _968_ vdd gnd NAND2X1
XFILL_0__2946_ gnd vdd FILL
XFILL_0__2526_ gnd vdd FILL
X_4632_ _1888_ _1959__bF$buf4 _1975_ _1827_ vdd gnd OAI21X1
X_4212_ \u_cpu.bufreg2.dlo\[23] _1240_ vdd gnd INVX1
XFILL_1__4374_ gnd vdd FILL
XFILL_0__3484_ gnd vdd FILL
X_3903_ _656_ rreg1[1] _700_ _719_ vdd gnd AOI21X1
XFILL_1__2440_ gnd vdd FILL
XFILL_0__4689_ gnd vdd FILL
XFILL_1__3645_ gnd vdd FILL
X_2295_ \u_mem_serial.shift_rx\[4] _1297__bF$buf1 _1345_ vdd gnd NAND2X1
XFILL_0__2755_ gnd vdd FILL
X_4441_ _1475_ i_clk_sys_ext_bF$buf11 \u_cpu.ctrl.o_ibus_adr\[20] vdd gnd DFFPOSX1
X_4021_ \u_cpu.bufreg.data\[20] _940_ vdd gnd INVX1
XFILL_0__3293_ gnd vdd FILL
X_3712_ _764_ i_clk_fast_bF$buf3 \u_mem_serial.shift_rx\[29] vdd gnd DFFPOSX1
XFILL_1__3454_ gnd vdd FILL
XFILL_0__2984_ gnd vdd FILL
X_4670_ _1995_ _1959__bF$buf0 _1996_ _1844_ vdd gnd OAI21X1
XFILL_0__2144_ gnd vdd FILL
X_4250_ mem_dbus_ack_bF$buf1 _1260_ _1268_ vdd gnd NOR2X1
XFILL_0__4710_ gnd vdd FILL
XFILL_1__2305_ gnd vdd FILL
X_3941_ _638_ i_clk_sys_ext_bF$buf34 \u_cpu.immdec.gen_immdec_w_eq_1.imm30_25\[1] vdd gnd DFFPOSX1
X_3521_ _476_ _475_ _474_ _473_ vdd gnd NAND3X1
X_3101_ _1665_ _1666_ _27__bF$buf2 _1663_ vdd gnd OAI21X1
X_4726_ _58_ i_clk_fast_bF$buf6 \u_rf_serial.last_req_key\[6] vdd gnd DFFPOSX1
X_4306_ _1108_ i_clk_sys_ext_bF$buf37 \u_cpu.bufreg2.dlo\[22] vdd gnd DFFPOSX1
XFILL_1__3683_ gnd vdd FILL
X_2389_ _966_ _1064_ _1065_ _1066_ vdd gnd NAND3X1
X_3750_ \u_cpu.branch_op\ \u_cpu.bufreg2.i_op_b_sel\ _396_ vdd gnd NOR2X1
X_3330_ \u_rf_if.issue_sel_bF$buf3\ \u_rf_if.issue_chunk\[0] \u_rf_if.issue_chunk\[1] _3_ vdd gnd AOI21X1
X_4535_ \u_mem_serial.shift_rx\[20] _1861__bF$buf0 _1915_ vdd gnd NAND2X1
X_4115_ \u_cpu.bufreg.i_shift_op\ _1155_ _1157_ _1158_ vdd gnd NAND3X1
XFILL_1__3492_ gnd vdd FILL
X_2601_ _250_ _281_ _233_ _282_ vdd gnd OAI21X1
XFILL142350x122550 gnd vdd FILL
XFILL_0__3387_ gnd vdd FILL
X_3806_ _353_ i_clk_sys_ext_bF$buf13 \u_cpu.decode.co_mem_word\ vdd gnd DFFPOSX1
XFILL142950x115350 gnd vdd FILL
XFILL_1__3128_ gnd vdd FILL
X_2198_ _1315__bF$buf4 _1304__bF$buf2 \u_mem_serial.shift_rx\[23] _1415_ vdd gnd OAI21X1
XFILL_0__2238_ gnd vdd FILL
X_4764_ i_rst_n_bF$buf3 vdd _1856_ i_clk_sys_ext_bF$buf22 rf_read_reg0[1] vdd 
+ gnd
+ DFFSR
X_4344_ \u_cpu.ctrl.o_ibus_adr\[2] _1529_ vdd gnd INVX1
XFILL_1__4086_ gnd vdd FILL
X_2830_ _572_ i_clk_sys_ext_bF$buf2 \u_rf_if.rtrig1\ vdd gnd DFFPOSX1
X_2410_ _830_ _1044_ _832_ _1045_ vdd gnd NAND3X1
X_3615_ \u_cpu.state.cnt_r\[3] \u_cpu.state.cnt_r\[1] _137_ vdd gnd NOR2X1
X_4573_ ibus_pending_rdt[10] _1940_ vdd gnd INVX1
X_4153_ \u_cpu.state.i_ctrl_misalign\ _1189_ vdd gnd INVX1
XFILL_1__2628_ gnd vdd FILL
X_3844_ \u_cpu.immdec.gen_immdec_w_eq_1.imm30_25\[5] _678_ _679_ vdd gnd NAND2X1
X_3424_ _356_ _340_ \u_rf_if.stream_cnt\[4] _339_ vdd gnd OAI21X1
X_3004_ _9_ _1597_ _1596_ vdd gnd NOR2X1
X_4629_ mem_ibus_ack_bF$buf2 \u_mem_serial.shift_rx\[22] _1960__bF$buf4 _1974_ vdd gnd NAND3X1
X_4209_ _1237_ \u_mem_serial.shift_rx\[24] _1149_ _1238_ vdd gnd MUX2X1
XFILL_1__3166_ gnd vdd FILL
X_4382_ \u_cpu.ctrl.o_ibus_adr\[16] _1525__bF$buf2 _1550_ vdd gnd NAND2X1
XFILL_0__4422_ gnd vdd FILL
X_3653_ _791_ i_clk_fast_bF$buf4 \u_mem_serial.shift_rx\[15] vdd gnd DFFPOSX1
X_3233_ _1762_ _1764_ rst_bF$buf2 _587_ vdd gnd AOI21X1
XFILL_1__2190_ gnd vdd FILL
X_4438_ _1494_ i_clk_sys_ext_bF$buf16 \u_cpu.ctrl.o_ibus_adr\[4] vdd gnd DFFPOSX1
X_4018_ \u_cpu.bufreg.i_en_bF$buf4\ _937_ _938_ _875_ vdd gnd OAI21X1
X_4191_ _1201_ _1221_ _1222_ _1104_ vdd gnd OAI21X1
X_2924_ _1677_ _1673_ _39_ _732_ vdd gnd OAI21X1
X_2504_ _848_ _845_ _849_ vdd gnd NAND2X1
XFILL_0__4651_ gnd vdd FILL
X_3709_ _765_ i_clk_fast_bF$buf2 \u_mem_serial.shift_rx\[28] vdd gnd DFFPOSX1
X_3882_ \u_cpu.decode.i_wb_rdt\[28] \u_cpu.immdec.gen_immdec_w_eq_1.imm30_25\[4] rf_rreq_bF$buf1 _705_ vdd gnd MUX2X1
X_3462_ \u_rf_if.stream_cnt\[2] _423_ _422_ vdd gnd NOR2X1
X_3042_ _1800__bF$buf2 _1686__bF$buf3 _1750_ _1621_ vdd gnd NAND3X1
X_4667_ _1993_ _1959__bF$buf0 _1994_ _1843_ vdd gnd OAI21X1
X_4247_ \u_cpu.bufreg2.cnt_next\[6] _1205_ _1193_ _1266_ vdd gnd NAND3X1
XFILL_0__3502_ gnd vdd FILL
X_2733_ \u_rf_if.o_waddr\[7] _91_ _103_ vdd gnd NAND2X1
X_2313_ _1314_ _1330_ _1303_ _1331_ vdd gnd NAND3X1
XFILL_0__3099_ gnd vdd FILL
X_3938_ _641_ i_clk_sys_ext_bF$buf18 rreg1[2] vdd gnd DFFPOSX1
X_3518_ \u_rf_if.wdata0_next\[0] _470_ vdd gnd INVX1
XFILL_1__4201_ gnd vdd FILL
X_3691_ _128_ i_clk_sys_ext_bF$buf23 \u_cpu.state.cnt_r\[0] vdd gnd DFFPOSX1
X_3271_ _8_ _1793_ vdd gnd INVX1
X_4476_ ibus_pending_rdt[14] _1876_ vdd gnd INVX1
X_4056_ _861_ i_clk_sys_ext_bF$buf5 \u_cpu.bufreg.data\[5] vdd gnd DFFPOSX1
XFILL_0__3731_ gnd vdd FILL
X_2962_ raddr[5] _1668_ _27__bF$buf2 _1452_ vdd gnd OAI21X1
X_2542_ \u_cpu.ctrl.o_ibus_adr\[6] _810_ _811_ vdd gnd NOR2X1
X_3747_ _381_ \u_cpu.bufreg.i_imm_en\ _387_ \u_cpu.decode.co_immdec_en\[2] vdd gnd OAI21X1
X_3327_ _7_ _1_ _0_ vdd gnd NAND2X1
X_3080_ _1688__bF$buf1 _1790_ \u_rf_if.read_buf0\[25] _1647_ vdd gnd OAI21X1
XFILL_0__2179_ gnd vdd FILL
X_4285_ _1097_ i_clk_sys_ext_bF$buf43 \u_cpu.bufreg2.dlo\[3] vdd gnd DFFPOSX1
XFILL_0__3540_ gnd vdd FILL
XFILL_0__3120_ gnd vdd FILL
X_2771_ _538_ i_clk_sys_ext_bF$buf10 \u_rf_if.read_buf0\[19] vdd gnd DFFPOSX1
X_2351_ \u_mem_serial.state\[0] _1296_ vdd gnd INVX1
X_3976_ _887__bF$buf0 _906_ _908_ _863_ vdd gnd OAI21X1
X_3556_ \u_cpu.mem_if.signbit\ \u_cpu.decode.co_mem_signed\ _2045_ vdd gnd AND2X2
X_3136_ rf_read_reg1_to_if[2] _1693_ _27__bF$buf3 _1691_ vdd gnd OAI21X1
X_4094_ _1131_ _1136_ _1139_ _1140_ vdd gnd NAND3X1
X_2827_ _574_ i_clk_sys_ext_bF$buf36 \u_rf_if.stream_active\ vdd gnd DFFPOSX1
X_2407_ _798_ _799_ _1048_ vdd gnd NOR2X1
XFILL142950x36150 gnd vdd FILL
XFILL_0__4134_ gnd vdd FILL
X_2580_ _109_ _208_ _72_ vdd gnd NOR2X1
X_2160_ \u_mem_serial.shift_rx\[12] _1377__bF$buf0 _1441_ vdd gnd NAND2X1
X_3785_ rf_rreq_bF$buf6 \u_cpu.decode.i_wb_rdt\[5] _408_ vdd gnd NAND2X1
X_3365_ rf_wreq _39_ vdd gnd INVX2
XFILL_0__2200_ gnd vdd FILL
XFILL_0__3825_ gnd vdd FILL
X_2636_ _119_ \u_rf_serial.last_req_key\[3] _247_ vdd gnd OR2X2
X_2216_ _1376_ _1368_ _1401_ _1402_ vdd gnd OAI21X1
XFILL_0__4363_ gnd vdd FILL
XFILL_1__2378_ gnd vdd FILL
X_3594_ _2098_ _2099_ _2100_ vdd gnd NOR2X1
X_3174_ _13__bF$buf3 _1720_ \u_rf_if.read_buf1\[5] _1719_ vdd gnd OAI21X1
X_4379_ _1546_ _1530_ _1547_ _1481_ vdd gnd OAI21X1
XFILL_0__3214_ gnd vdd FILL
X_2865_ _497_ i_clk_sys_ext_bF$buf35 \u_rf_if.rreg0_latched\[0] vdd gnd DFFPOSX1
X_2445_ \u_mem_serial.active_ibus_bF$buf4\ \u_cpu.bufreg.data\[19] _1010_ vdd gnd NOR2X1
XFILL_1__2187_ gnd vdd FILL
X_4188_ _1149_ _1216_ _1219_ _1220_ vdd gnd NAND3X1
XFILL_0__4228_ gnd vdd FILL
X_2674_ _104_ _215__bF$buf2 _202_ _216_ vdd gnd OAI21X1
X_2254_ \u_mem_serial.shift_rx\[29] _1377__bF$buf0 _1378_ vdd gnd NAND2X1
X_3879_ \u_cpu.decode.i_wb_rdt\[29] \u_cpu.immdec.gen_immdec_w_eq_1.imm30_25\[5] rf_rreq_bF$buf4 _703_ vdd gnd MUX2X1
X_3459_ \u_rf_if.read_buf1\[6] _440_ _441__bF$buf2 _419_ vdd gnd OAI21X1
X_3039_ _1686__bF$buf3 _1750_ _2055_ _1619_ vdd gnd NAND3X1
X_4400_ \u_cpu.ctrl.o_ibus_adr\[10] _1525__bF$buf3 _1562_ vdd gnd NAND2X1
XFILL_0__3672_ gnd vdd FILL
XFILL_0__3252_ gnd vdd FILL
XFILL_0__4457_ gnd vdd FILL
XFILL_0__4037_ gnd vdd FILL
XFILL_1__3833_ gnd vdd FILL
X_2483_ \u_cpu.bufreg.data\[8] _971_ vdd gnd INVX1
XFILL_1__4618_ gnd vdd FILL
X_3688_ _160_ _184_ _156_ _186_ vdd gnd OAI21X1
X_3268_ _5__bF$buf0 _1791_ _1790_ vdd gnd NAND2X1
XFILL_0__3308_ gnd vdd FILL
XFILL_0__3481_ gnd vdd FILL
XFILL_0__3061_ gnd vdd FILL
X_2959_ \u_rf_if.rreg0_latched\[0] \u_rf_if.issue_sel_bF$buf0\ _1451_ _1450_ vdd gnd OAI21X1
X_2539_ \u_cpu.ctrl.o_ibus_adr\[7] _810_ _798_ _814_ vdd gnd OAI21X1
X_3900_ \u_cpu.decode.i_wb_rdt\[21] rreg1[2] rf_rreq_bF$buf3 _717_ vdd gnd MUX2X1
X_2292_ _1344_ _1347_ rst_bF$buf8 _754_ vdd gnd AOI21X1
X_3497_ \u_rf_if.wen1_r\ _454_ vdd gnd INVX1
X_3077_ _13__bF$buf4 _2112_ \u_rf_if.read_buf1\[31] _1645_ vdd gnd OAI21X1
XFILL_0__2332_ gnd vdd FILL
XFILL_0__3957_ gnd vdd FILL
XFILL_0__3537_ gnd vdd FILL
XFILL_1__2913_ gnd vdd FILL
X_2768_ _509_ i_clk_sys_ext_bF$buf7 raddr[5] vdd gnd DFFPOSX1
X_2348_ _1298_ _1044_ _1299_ vdd gnd AND2X2
XFILL_1__3871_ gnd vdd FILL
XFILL_1__4236_ gnd vdd FILL
XFILL_0__3346_ gnd vdd FILL
XFILL_1__2302_ gnd vdd FILL
XFILL_1__3507_ gnd vdd FILL
X_2997_ _1591_ _1592_ rst_bF$buf2 _520_ vdd gnd AOI21X1
X_2577_ _66_ i_clk_fast_bF$buf6 \u_rf_serial.last_req_key\[1] vdd gnd DFFPOSX1
X_2157_ _751_ i_clk_fast_bF$buf7 \u_mem_serial.shift_rx\[8] vdd gnd DFFPOSX1
XFILL_0__2617_ gnd vdd FILL
X_4723_ vdd i_rst_n_bF$buf5 _1847_ i_clk_sys_ext_bF$buf9 ibus_pending_rdt[1] vdd 
+ gnd
+ DFFSR
X_4303_ _1111_ i_clk_sys_ext_bF$buf31 \u_cpu.bufreg2.dlo\[19] vdd gnd DFFPOSX1
XFILL_1__3680_ gnd vdd FILL
XFILL143250x36150 gnd vdd FILL
XFILL_1__4465_ gnd vdd FILL
XFILL_0__3995_ gnd vdd FILL
XFILL_0__3575_ gnd vdd FILL
XFILL_0__3155_ gnd vdd FILL
XFILL_1__3316_ gnd vdd FILL
X_2386_ _805_ _1068_ _1067_ _1069_ vdd gnd NAND3X1
XFILL_0__2426_ gnd vdd FILL
X_4532_ _1871_ \u_cpu.decode.i_wb_rdt\[15] _1874_ _1913_ vdd gnd NAND3X1
X_4112_ \u_cpu.bufreg2.i_bytecnt\[1] \u_cpu.bufreg2.i_bytecnt\[0] _1155_ vdd gnd NOR2X1
XFILL_1__4274_ gnd vdd FILL
X_3803_ _753_ i_clk_fast_bF$buf4 \u_mem_serial.shift_rx\[6] vdd gnd DFFPOSX1
XFILL_1__2340_ gnd vdd FILL
XFILL_0__4589_ gnd vdd FILL
XFILL_0__4169_ gnd vdd FILL
X_2195_ _1315__bF$buf4 _1304__bF$buf2 \u_mem_serial.shift_rx\[22] _1417_ vdd gnd OAI21X1
XFILL142650x82950 gnd vdd FILL
XFILL_0__2655_ gnd vdd FILL
X_4761_ i_rst_n_bF$buf3 vdd _1859_ i_clk_sys_ext_bF$buf19 current_wdata0_next_hint vdd 
+ gnd
+ DFFSR
X_4341_ rst_bF$buf5 _1506_ _1527_ vdd gnd NOR2X1
XFILL_1__4083_ gnd vdd FILL
XFILL142950x136950 gnd vdd FILL
XFILL_0__3193_ gnd vdd FILL
X_3612_ \u_cpu.state.o_cnt\[2] \u_cpu.state.cnt_r\[3] _135_ vdd gnd AND2X2
XFILL_1__3354_ gnd vdd FILL
X_4570_ ibus_pending_rdt[11] _1938_ vdd gnd INVX1
X_4150_ mem_dbus_ack_bF$buf2 _1183_ _1187_ vdd gnd NOR2X1
XFILL_0__3249_ gnd vdd FILL
X_3841_ _657_ _675_ _656_ _676_ vdd gnd OAI21X1
X_3421_ \u_rf_if.read_buf0\[1] \u_rf_if.stream_cnt_0_bF$buf3\ _337_ vdd gnd NAND2X1
X_3001_ \u_rf_if.issue_idx\[5] _1594_ _1593_ vdd gnd NOR2X1
X_4626_ _1900_ _1959__bF$buf4 _1972_ _1824_ vdd gnd OAI21X1
X_4206_ \u_cpu.bufreg.i_shamt\[0] _1205_ _1193_ _1235_ vdd gnd NAND3X1
XFILL_0__2273_ gnd vdd FILL
XFILL_0__3898_ gnd vdd FILL
XFILL_1__3639_ gnd vdd FILL
XFILL142650x122550 gnd vdd FILL
X_2289_ _1349_ _1350_ vdd gnd INVX1
X_3650_ _163_ _135_ _164_ vdd gnd NAND2X1
X_3230_ _1760_ _1761_ rst_bF$buf2 _586_ vdd gnd AOI21X1
XFILL_0__2749_ gnd vdd FILL
X_4435_ _1478_ i_clk_sys_ext_bF$buf8 \u_cpu.ctrl.o_ibus_adr\[19] vdd gnd DFFPOSX1
X_4015_ _887__bF$buf3 _926_ _936_ _874_ vdd gnd OAI21X1
XFILL_1__3392_ gnd vdd FILL
X_2921_ _731_ _730_ _496_ vdd gnd NOR2X1
X_2501_ _799_ _795_ _852_ vdd gnd NAND2X1
XFILL_0__3287_ gnd vdd FILL
X_3706_ _780_ i_clk_fast_bF$buf7 mem_dbus_ack vdd gnd DFFPOSX1
XFILL_1__2663_ gnd vdd FILL
XFILL_1__3028_ gnd vdd FILL
XFILL_0__2978_ gnd vdd FILL
XFILL_0__2558_ gnd vdd FILL
X_4664_ _1991_ _1959__bF$buf0 _1992_ _1842_ vdd gnd OAI21X1
XFILL_0__2138_ gnd vdd FILL
X_4244_ mem_dbus_ack_bF$buf4 \u_mem_serial.shift_rx\[23] _1167__bF$buf3 _1263_ _1264_ vdd 
+ gnd
+ AOI22X1
XFILL_0__4704_ gnd vdd FILL
X_2730_ _105_ _104_ _106_ vdd gnd NAND2X1
X_2310_ \u_mem_serial.shift_rx\[7] _1297__bF$buf3 _1333_ vdd gnd NAND2X1
X_3935_ _644_ i_clk_sys_ext_bF$buf12 \u_cpu.immdec.gen_immdec_w_eq_1.imm11_7\[3] vdd gnd DFFPOSX1
X_3515_ \u_rf_if.wdata1_phase\[0] _467_ vdd gnd INVX1
XFILL_0__2367_ gnd vdd FILL
X_4473_ _1867_ _1868_ rf_write_drain_busy _1874_ vdd gnd AOI21X1
X_4053_ _864_ i_clk_sys_ext_bF$buf27 \u_cpu.bufreg.data\[2] vdd gnd DFFPOSX1
XFILL_0__4513_ gnd vdd FILL
XFILL_1__2948_ gnd vdd FILL
XFILL_1__2528_ gnd vdd FILL
X_3744_ \u_cpu.bufreg.i_imm_en\ _391_ _392_ vdd gnd NAND2X1
X_3324_ _2123_ _9_ _2116_ _2114_ vdd gnd OAI21X1
X_4529_ ibus_pending_ack_bF$buf2 ibus_pending_rdt[0] _1911_ vdd gnd NAND2X1
X_4109_ \u_cpu.bufreg.data\[0] \u_cpu.bufreg2.i_bytecnt\[0] _1152_ vdd gnd AND2X2
XFILL_0__2596_ gnd vdd FILL
X_4282_ _1100_ i_clk_sys_ext_bF$buf17 \u_cpu.bufreg2.dlo\[0] vdd gnd DFFPOSX1
X_3973_ \u_cpu.bufreg.i_en_bF$buf2\ \u_cpu.bufreg.data\[5] _907_ vdd gnd NAND2X1
X_3553_ \u_cpu.decode.co_mem_word\ gnd _2042_ vdd gnd NOR2X1
X_3133_ rf_read_reg1_to_if[1] _1693_ _27__bF$buf3 _1689_ vdd gnd OAI21X1
X_4758_ i_rst_n_bF$buf5 vdd _1816_ i_clk_sys_ext_bF$buf4 ibus_pending_rdt[28] vdd 
+ gnd
+ DFFSR
X_4338_ \u_cpu.ctrl.o_ibus_adr\[3] _1524_ vdd gnd INVX1
X_4091_ \u_cpu.bufreg2.dhi\[5] _1137_ vdd gnd INVX1
X_2824_ _524_ i_clk_sys_ext_bF$buf6 \u_rf_if.read_buf0\[7] vdd gnd DFFPOSX1
X_2404_ _966_ _1050_ _1049_ _1051_ vdd gnd NAND3X1
XFILL_0__4551_ gnd vdd FILL
X_3609_ \u_cpu.state.init_done\ gnd _133_ vdd gnd NOR2X1
XFILL_1__2986_ gnd vdd FILL
X_3782_ rf_rreq_bF$buf0 _373_ _406_ _358_ vdd gnd OAI21X1
X_3362_ \u_rf_if.stream_active\ \u_rf_if.ready_pulse\ _37_ vdd gnd NOR2X1
X_4567_ ibus_pending_rdt[19] _1936_ vdd gnd INVX1
X_4147_ mem_dbus_ack_bF$buf2 \u_mem_serial.shift_rx\[2] _1167__bF$buf2 _1184_ _1185_ vdd 
+ gnd
+ AOI22X1
XFILL142950x57750 gnd vdd FILL
XFILL_0__3402_ gnd vdd FILL
XFILL_0__4607_ gnd vdd FILL
X_2633_ _236_ _242_ _249_ _250_ vdd gnd NAND3X1
X_2213_ \u_mem_serial.shift_rx\[23] _1377__bF$buf2 _1404_ vdd gnd NAND2X1
X_3838_ \u_cpu.decode.co_immdec_ctrl\[2] _663_ _673_ vdd gnd NAND2X1
X_3418_ \u_rf_if.read_buf0\[3] \u_rf_if.stream_cnt_0_bF$buf4\ _334_ vdd gnd NAND2X1
X_3591_ _2096_ _2093_ \u_cpu.alu.i_cmp_eq\ _2097_ vdd gnd AOI21X1
X_3171_ _13__bF$buf2 _1720_ \u_rf_if.read_buf1\[4] _1717_ vdd gnd OAI21X1
X_4376_ \u_cpu.ctrl.o_ibus_adr\[18] _1546_ vdd gnd INVX1
XFILL_0__3631_ gnd vdd FILL
X_2862_ _515_ i_clk_sys_ext_bF$buf21 \u_rf_if.read_buf0\[0] vdd gnd DFFPOSX1
X_2442_ \u_cpu.bufreg.data\[16] _1013_ vdd gnd INVX1
X_3647_ _781_ i_clk_fast_bF$buf0 \u_mem_serial.shift_rx\[23] vdd gnd DFFPOSX1
X_3227_ _1788_ _1811_ _1757_ vdd gnd NOR2X1
XFILL_0__2902_ gnd vdd FILL
XFILL_0__2499_ gnd vdd FILL
X_4185_ \u_cpu.bufreg2.dhi\[3] _1217_ vdd gnd INVX1
XFILL_0__3860_ gnd vdd FILL
XFILL_0__3440_ gnd vdd FILL
X_2918_ _620_ _730_ _495_ vdd gnd NOR2X1
XFILL_0__4645_ gnd vdd FILL
X_2671_ _94_ _215__bF$buf0 _202_ _218_ vdd gnd OAI21X1
X_2251_ \u_cpu.o_dbus_cyc\ _1380_ vdd gnd INVX1
X_3876_ _656_ \u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20\[1] _700_ _701_ vdd gnd AOI21X1
X_3456_ _420_ _419_ _418_ _417_ _416_ vdd 
+ gnd
+ OAI22X1
X_3036_ _2108__bF$buf0 _1686__bF$buf2 _1810_ _1617_ vdd gnd NAND3X1
XFILL_0__2711_ gnd vdd FILL
X_2727_ _83_ _109_ vdd gnd INVX1
X_2307_ _1332_ _1335_ rst_bF$buf9 _751_ vdd gnd AOI21X1
X_2480_ _973_ _840_ _974_ vdd gnd NAND2X1
X_3685_ _160_ _184_ \u_cpu.bufreg2.i_bytecnt\[0] _185_ vdd gnd OAI21X1
X_3265_ _0_ _1788_ _1811_ _1787_ vdd gnd NOR3X1
XFILL_0__2940_ gnd vdd FILL
XFILL_0__2520_ gnd vdd FILL
X_2956_ raddr[3] _1448_ vdd gnd INVX1
X_2536_ \u_cpu.ctrl.o_ibus_adr\[4] \u_cpu.bufreg.data\[4] \u_mem_serial.active_ibus_bF$buf0\ _817_ vdd gnd MUX2X1
XFILL_0__4683_ gnd vdd FILL
XFILL_0__4263_ gnd vdd FILL
X_3494_ \u_cpu.o_wdata0\ _452_ vdd gnd INVX1
X_3074_ _1688__bF$buf4 _1790_ \u_rf_if.read_buf0\[24] _1643_ vdd gnd OAI21X1
X_4699_ rf_read_reg0[2] _1948_ _1872__bF$buf2 _2015_ vdd gnd NAND3X1
X_4279_ _1103_ i_clk_sys_ext_bF$buf17 \u_cpu.bufreg2.dhi\[4] vdd gnd DFFPOSX1
XFILL_0__3114_ gnd vdd FILL
XFILL_0__4319_ gnd vdd FILL
X_2765_ raddr[8] _73_ vdd gnd INVX1
X_2345_ _1044_ _1298_ _1301_ _1302_ vdd gnd OAI21X1
XFILL_0__4492_ gnd vdd FILL
XFILL_1__4653_ gnd vdd FILL
X_4088_ \u_cpu.bufreg2.dhi\[3] \u_cpu.bufreg.i_shamt\[2] _1134_ vdd gnd NOR2X1
XFILL_0__3763_ gnd vdd FILL
XFILL_0__3343_ gnd vdd FILL
XFILL_1__3504_ gnd vdd FILL
X_2994_ _1589_ _1590_ rst_bF$buf2 _519_ vdd gnd AOI21X1
X_2574_ _55_ i_clk_fast_bF$buf1 \u_rf_serial.tx_state\[1] vdd gnd DFFPOSX1
X_2154_ _772_ i_clk_fast_bF$buf7 \u_mem_serial.bit_count\[0] vdd gnd DFFPOSX1
X_3779_ rf_rreq_bF$buf0 \u_cpu.decode.i_wb_rdt\[14] _405_ vdd gnd NAND2X1
X_3359_ \u_rf_if.stream_cnt\[2] _35_ _34_ vdd gnd NAND2X1
X_4720_ _2027_ _2031_ _2023_ _1859_ vdd gnd OAI21X1
X_4300_ _1114_ i_clk_sys_ext_bF$buf31 \u_cpu.bufreg2.dlo\[16] vdd gnd DFFPOSX1
XFILL_0__4357_ gnd vdd FILL
XFILL143250x57750 gnd vdd FILL
XFILL_1__3733_ gnd vdd FILL
X_2383_ \u_cpu.bufreg2.dlo\[11] _796_ _840_ \u_cpu.bufreg2.dlo\[8] _1072_ vdd 
+ gnd
+ AOI22X1
X_3588_ _2093_ _2094_ vdd gnd INVX1
X_3168_ _2108__bF$buf3 _1766_ _1715_ vdd gnd NAND2X1
XFILL_0__3628_ gnd vdd FILL
XFILL_0__3208_ gnd vdd FILL
XFILL_1__4691_ gnd vdd FILL
XFILL_0__3381_ gnd vdd FILL
X_2859_ _556_ i_clk_sys_ext_bF$buf0 \u_rf_if.wdata0_next_phase\ vdd gnd DFFPOSX1
X_2439_ _1015_ _840_ _1016_ vdd gnd NAND2X1
X_3800_ _774_ i_clk_fast_bF$buf3 \u_mem_serial.shift_rx\[26] vdd gnd DFFPOSX1
XFILL_0__4586_ gnd vdd FILL
XFILL_1__3962_ gnd vdd FILL
XFILL_1__3542_ gnd vdd FILL
X_2192_ mem_ibus_ack_bF$buf1 _1419_ vdd gnd INVX1
X_3397_ _317_ _316_ _315_ _314_ _313_ vdd 
+ gnd
+ OAI22X1
XFILL_0__3017_ gnd vdd FILL
X_2668_ _111_ _220_ vdd gnd INVX1
X_2248_ _1315__bF$buf3 _1304__bF$buf0 \u_mem_serial.shift_rx\[29] _1382_ vdd gnd OAI21X1
XFILL_0__4395_ gnd vdd FILL
XFILL_1_BUFX2_insert221 gnd vdd FILL
XFILL_1_BUFX2_insert224 gnd vdd FILL
XFILL_1_BUFX2_insert228 gnd vdd FILL
XFILL_1__4136_ gnd vdd FILL
XFILL_0__2461_ gnd vdd FILL
XFILL_0__3666_ gnd vdd FILL
XFILL_1__2202_ gnd vdd FILL
X_2897_ rf_read_reg1_to_if[3] _1693_ _27__bF$buf1 _609_ vdd gnd OAI21X1
X_2477_ _851_ _976_ _834_ _977_ vdd gnd OAI21X1
X_4623_ _1863_ _1971_ _1869_ _1822_ vdd gnd OAI21X1
X_4203_ _1232_ \u_mem_serial.shift_rx\[25] _1149_ _1233_ vdd gnd MUX2X1
XFILL_0__2690_ gnd vdd FILL
XFILL_0__3475_ gnd vdd FILL
XFILL_0__3055_ gnd vdd FILL
XFILL_1__3216_ gnd vdd FILL
X_2286_ _1315__bF$buf2 _1304__bF$buf4 \u_mem_serial.shift_rx\[3] _1352_ vdd gnd OAI21X1
X_4432_ _1488_ i_clk_sys_ext_bF$buf40 \u_cpu.ctrl.o_ibus_adr\[10] vdd gnd DFFPOSX1
X_4012_ _934_ _915_ _935_ vdd gnd NOR2X1
X_3703_ \u_cpu.decode.co_mem_word\ _367_ vdd gnd INVX1
XFILL_1__2240_ gnd vdd FILL
XFILL_0__2975_ gnd vdd FILL
XFILL_0__2555_ gnd vdd FILL
X_4661_ _1946_ _1959__bF$buf1 _1990_ _1841_ vdd gnd OAI21X1
X_4241_ mem_dbus_ack_bF$buf1 \u_mem_serial.shift_rx\[15] _1167__bF$buf0 _1261_ _1262_ vdd 
+ gnd
+ AOI22X1
XFILL_0__4701_ gnd vdd FILL
XFILL_0__3093_ gnd vdd FILL
X_3932_ _647_ i_clk_sys_ext_bF$buf19 \u_cpu.immdec.gen_immdec_w_eq_1.imm11_7\[0] vdd gnd DFFPOSX1
X_3512_ _467_ _466_ _465_ _464_ vdd gnd OAI21X1
X_4717_ _1882_ _1885_ \u_cpu.i_ibus_rdt\[1] _2029_ vdd gnd NAND3X1
XFILL_1__3254_ gnd vdd FILL
XFILL_1__4039_ gnd vdd FILL
X_4470_ _1863_ _1871_ _1869_ _1872_ vdd gnd NAND3X1
X_4050_ _867_ i_clk_sys_ext_bF$buf37 \u_cpu.bufreg.data\[30] vdd gnd DFFPOSX1
XFILL_0__3989_ gnd vdd FILL
XFILL_0__3569_ gnd vdd FILL
XFILL_0__3149_ gnd vdd FILL
X_3741_ \u_cpu.bufreg.i_right_shift_op\ _371_ _390_ vdd gnd NAND2X1
X_3321_ _13__bF$buf4 _2112_ \u_rf_if.read_buf1\[30] _2111_ vdd gnd OAI21X1
X_4526_ ibus_pending_ack_bF$buf1 ibus_pending_rdt[5] _1909_ vdd gnd NAND2X1
X_4106_ mem_dbus_ack_bF$buf3 _1149_ vdd gnd INVX2
XFILL_1__3063_ gnd vdd FILL
XFILL142950x122550 gnd vdd FILL
XFILL_0__2173_ gnd vdd FILL
XFILL_1__3959_ gnd vdd FILL
X_2189_ _1420_ _1419_ _1421_ _783_ vdd gnd AOI21X1
X_3970_ \u_cpu.bufreg.data\[5] _887__bF$buf1 _905_ vdd gnd NAND2X1
X_3550_ \u_cpu.bne_or_bge\ _2039_ vdd gnd INVX1
X_3130_ _1688__bF$buf1 _2112_ \u_rf_if.read_buf0\[30] _1687_ vdd gnd OAI21X1
XFILL_0__2649_ gnd vdd FILL
XFILL_0__2229_ gnd vdd FILL
X_4755_ i_rst_n_bF$buf3 vdd _1819_ i_clk_sys_ext_bF$buf9 ibus_pending_rdt[25] vdd 
+ gnd
+ DFFSR
X_4335_ _1521_ _1519_ _1522_ vdd gnd NAND2X1
X_2821_ _577_ i_clk_sys_ext_bF$buf32 \u_rf_if.read_buf1\[9] vdd gnd DFFPOSX1
X_2401_ _805_ _1052_ _1053_ _1054_ vdd gnd NAND3X1
XFILL_0__3187_ gnd vdd FILL
X_3606_ _29_ _28_ _30_ \u_cpu.o_wen0\ vdd gnd AOI21X1
XFILL_1_BUFX2_insert190 gnd vdd FILL
XFILL_1_BUFX2_insert194 gnd vdd FILL
XFILL_1_BUFX2_insert198 gnd vdd FILL
X_4564_ ibus_pending_rdt[24] _1934_ vdd gnd INVX1
X_4144_ _1180_ _1159__bF$buf0 _1182_ _1097_ vdd gnd OAI21X1
X_2630_ \u_rf_serial.last_req_key\[5] _252_ _251_ _253_ vdd gnd NAND3X1
X_2210_ \u_mem_serial.active_we\ _1372_ _1308_ _1406_ vdd gnd OAI21X1
X_3835_ \u_cpu.csr_imm_en\ _670_ vdd gnd INVX1
X_3415_ \u_rf_if.read_buf0\[4] \u_rf_if.stream_cnt_0_bF$buf1\ _331_ vdd gnd NOR2X1
XFILL_1__3997_ gnd vdd FILL
XFILL_1__3577_ gnd vdd FILL
XFILL_0__2267_ gnd vdd FILL
X_4373_ _1544_ _1526_ _1542_ _1530_ _1478_ vdd 
+ gnd
+ OAI22X1
XFILL_0__4413_ gnd vdd FILL
XFILL_1__2428_ gnd vdd FILL
X_3644_ _768_ i_clk_fast_bF$buf5 \u_mem_serial.bit_count\[4] vdd gnd DFFPOSX1
X_3224_ _13__bF$buf1 _1759_ \u_rf_if.read_buf1\[16] _1755_ vdd gnd OAI21X1
X_4429_ _1465_ i_clk_sys_ext_bF$buf16 \u_cpu.ctrl.o_ibus_adr\[2] vdd gnd DFFPOSX1
X_4009_ _931_ _930_ _929_ _932_ vdd gnd NAND3X1
XBUFX2_insert240 mem_ibus_ack mem_ibus_ack_bF$buf0 vdd gnd BUFX2
X_4182_ _1131_ _1159__bF$buf3 _1214_ _1215_ vdd gnd OAI21X1
X_2915_ _39_ _618_ _730_ _494_ vdd gnd AOI21X1
X_3873_ \u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20\[1] _660__bF$buf0 _699_ vdd gnd NAND2X1
X_3453_ _444_ _414_ _407_ vdd gnd NAND2X1
X_3033_ _1693_ _2064_ _1616_ _531_ vdd gnd AOI21X1
X_4658_ mem_ibus_ack_bF$buf2 \u_mem_serial.shift_rx\[8] _1960__bF$buf4 _1989_ vdd gnd NAND3X1
X_4238_ _1142_ _1159__bF$buf0 _1259_ _1114_ vdd gnd OAI21X1
XFILL_0__3913_ gnd vdd FILL
X_2724_ \u_rf_if.o_waddr\[4] _112_ vdd gnd INVX1
X_2304_ _1337_ _1338_ vdd gnd INVX1
XFILL_0__4031_ gnd vdd FILL
X_3929_ _623_ i_clk_sys_ext_bF$buf36 \u_cpu.immdec.gen_immdec_w_eq_1.imm7\ vdd gnd DFFPOSX1
X_3509_ gnd _462_ vdd gnd INVX1
XFILL_1__2886_ gnd vdd FILL
XFILL_1__2466_ gnd vdd FILL
X_3682_ _158_ _157_ \u_cpu.state.cnt_r\[3] _183_ vdd gnd OAI21X1
X_3262_ _13__bF$buf2 _1790_ \u_rf_if.read_buf1\[24] _1785_ vdd gnd OAI21X1
X_4467_ _1868_ _1867_ _1869_ vdd gnd NAND2X1
X_4047_ _870_ i_clk_sys_ext_bF$buf14 \u_cpu.bufreg.data\[26] vdd gnd DFFPOSX1
XFILL_0__3302_ gnd vdd FILL
XFILL_0__4507_ gnd vdd FILL
X_2953_ raddr[2] _1446_ vdd gnd INVX1
X_2533_ \u_cpu.ctrl.o_ibus_adr\[2] _810_ _820_ vdd gnd NOR2X1
XFILL_0__4680_ gnd vdd FILL
X_3738_ _759_ i_clk_fast_bF$buf3 \u_mem_serial.shift_rx\[0] vdd gnd DFFPOSX1
X_3318_ _2109_ _6_ _2108_ vdd gnd AND2X2
XFILL_1__2275_ gnd vdd FILL
XFILL_1__4001_ gnd vdd FILL
X_3491_ gnd \u_rf_if.wdata1_phase\[1] _449_ vdd gnd NAND2X1
X_3071_ _1688__bF$buf4 _1780_ \u_rf_if.read_buf0\[23] _1641_ vdd gnd OAI21X1
X_4696_ rf_read_reg0[3] _1948_ _1872__bF$buf3 _2013_ vdd gnd NAND3X1
X_4276_ _1106_ i_clk_sys_ext_bF$buf17 \u_cpu.bufreg.i_shamt\[1] vdd gnd DFFPOSX1
XFILL_0__3951_ gnd vdd FILL
XFILL_0__3111_ gnd vdd FILL
X_2762_ _73_ _74_ _75_ _76_ vdd gnd NAND3X1
X_2342_ \u_mem_serial.state\[1] \u_mem_serial.state\[0] _1305_ vdd gnd NOR2X1
X_3967_ \u_cpu.bufreg.data\[6] _903_ vdd gnd INVX1
X_3547_ \u_cpu.bufreg2.o_q\ _2036_ vdd gnd INVX1
X_3127_ _1685_ _1687_ rst_bF$buf3 _558_ vdd gnd AOI21X1
XFILL142950x43350 gnd vdd FILL
XFILL_1__3289_ gnd vdd FILL
XFILL_0__2399_ gnd vdd FILL
X_4085_ _1130_ \u_cpu.bufreg.i_init\ _1125_ _1131_ vdd gnd AOI21X1
X_2818_ _502_ i_clk_sys_ext_bF$buf41 \u_rf_if.issue_chunk\[0] vdd gnd DFFPOSX1
XCLKBUF1_insert160 i_clk_fast i_clk_fast_bF$buf7 vdd gnd CLKBUF1
XCLKBUF1_insert161 i_clk_fast i_clk_fast_bF$buf6 vdd gnd CLKBUF1
XCLKBUF1_insert162 i_clk_fast i_clk_fast_bF$buf5 vdd gnd CLKBUF1
XCLKBUF1_insert163 i_clk_fast i_clk_fast_bF$buf4 vdd gnd CLKBUF1
XCLKBUF1_insert164 i_clk_fast i_clk_fast_bF$buf3 vdd gnd CLKBUF1
XCLKBUF1_insert165 i_clk_fast i_clk_fast_bF$buf2 vdd gnd CLKBUF1
XCLKBUF1_insert166 i_clk_fast i_clk_fast_bF$buf1 vdd gnd CLKBUF1
XCLKBUF1_insert167 i_clk_fast i_clk_fast_bF$buf0 vdd gnd CLKBUF1
XFILL_0__4545_ gnd vdd FILL
XFILL_0__4125_ gnd vdd FILL
X_2991_ _1588_ _1587_ rst_bF$buf2 _518_ vdd gnd AOI21X1
X_2571_ _64_ i_clk_fast_bF$buf6 \u_rf_serial.launch_pending\ vdd gnd DFFPOSX1
X_2151_ _748_ i_clk_fast_bF$buf2 \u_mem_serial.shift_rx\[11] vdd gnd DFFPOSX1
XFILL_1__4706_ gnd vdd FILL
X_3776_ _756_ i_clk_fast_bF$buf2 \u_mem_serial.shift_rx\[3] vdd gnd DFFPOSX1
X_3356_ \u_rf_if.stream_cnt\[2] _35_ _27__bF$buf0 _26_ vdd gnd OAI21X1
XFILL_0__2611_ gnd vdd FILL
XFILL_0__3816_ gnd vdd FILL
X_2627_ _219_ _110_ _255_ _256_ vdd gnd NAND3X1
X_2207_ _1307_ _1408_ vdd gnd INVX1
X_2380_ _845_ \u_cpu.bufreg2.dlo\[13] \u_cpu.bufreg2.dlo\[14] _1048_ _1075_ vdd 
+ gnd
+ AOI22X1
XFILL_1__4515_ gnd vdd FILL
X_3585_ _2081_ _2076_ _2091_ vdd gnd NAND2X1
X_3165_ _2110__bF$buf2 _1800__bF$buf1 _1713_ _1712_ vdd gnd NAND3X1
XFILL_0__2420_ gnd vdd FILL
XFILL_0__3205_ gnd vdd FILL
X_2856_ _498_ i_clk_sys_ext_bF$buf20 \u_rf_if.rreg0_latched\[1] vdd gnd DFFPOSX1
X_2436_ \u_mem_serial.active_ibus_bF$buf6\ _1017_ _1018_ _1019_ vdd gnd OAI21X1
XFILL_0__4163_ gnd vdd FILL
XFILL_1__2598_ gnd vdd FILL
XFILL_1__4324_ gnd vdd FILL
X_3394_ _325_ _311_ _444_ _310_ vdd gnd OAI21X1
X_4599_ rf_rreq_bF$buf1 rreg0[4] _1872__bF$buf0 _1956_ vdd gnd NAND3X1
X_4179_ _1125_ _1128_ _1137_ _1212_ vdd gnd OAI21X1
XFILL_0__3854_ gnd vdd FILL
XFILL_0__4639_ gnd vdd FILL
XFILL_0__4219_ gnd vdd FILL
X_2665_ \u_rf_serial.last_req_key\[4] _222_ vdd gnd INVX1
X_2245_ _1315__bF$buf3 _1304__bF$buf0 \u_mem_serial.shift_rx\[28] _1384_ vdd gnd OAI21X1
XFILL_0__4392_ gnd vdd FILL
XFILL_0__2705_ gnd vdd FILL
XFILL_1__4553_ gnd vdd FILL
XFILL_0__3243_ gnd vdd FILL
XFILL_0__4028_ gnd vdd FILL
XFILL_1__3404_ gnd vdd FILL
X_2894_ \u_rf_if.rcnt\[2] _1661_ _608_ _607_ vdd gnd OAI21X1
X_2474_ \u_mem_serial.active_ibus_bF$buf1\ _979_ _980_ vdd gnd NAND2X1
X_3679_ \u_cpu.alu.i_en\ _134_ rst_bF$buf8 _181_ vdd gnd AOI21X1
X_3259_ _1783_ _1785_ rst_bF$buf0 _592_ vdd gnd AOI21X1
XFILL_0__2934_ gnd vdd FILL
XFILL_0__2514_ gnd vdd FILL
X_4620_ \u_rf_if.o_waddr\[0] \u_rf_if.o_waddr\[1] _1969_ vdd gnd NAND2X1
X_4200_ \u_cpu.bufreg.i_shamt\[1] \u_cpu.bufreg.i_shamt\[0] _1230_ vdd gnd AND2X2
XFILL_0__3892_ gnd vdd FILL
XFILL_0__4257_ gnd vdd FILL
X_2283_ _1314_ _1354_ _1303_ _1355_ vdd gnd NAND3X1
X_3488_ _478_ _450_ _447_ \u_rf_if.o_wdata\[1] vdd gnd OAI21X1
X_3068_ _1688__bF$buf4 _1780_ \u_rf_if.read_buf0\[22] _1639_ vdd gnd OAI21X1
XFILL_0__2743_ gnd vdd FILL
XFILL_0__2323_ gnd vdd FILL
XFILL_1__4591_ gnd vdd FILL
XFILL_1__4171_ gnd vdd FILL
XFILL_0__3281_ gnd vdd FILL
X_2759_ _2122_ _77_ vdd gnd INVX1
X_2339_ rst_bF$buf9 _1308_ vdd gnd INVX2
X_3700_ \u_cpu.decode.opcode\[0] \u_cpu.cond_branch\ vdd gnd INVX2
XFILL_0__4486_ gnd vdd FILL
XFILL_1__3442_ gnd vdd FILL
X_3297_ _0_ _2051_ _5__bF$buf2 _2050_ vdd gnd NAND3X1
XFILL_0__2132_ gnd vdd FILL
XFILL_0_BUFX2_insert230 gnd vdd FILL
XFILL_0_BUFX2_insert232 gnd vdd FILL
XFILL_0_BUFX2_insert234 gnd vdd FILL
XFILL_0_BUFX2_insert236 gnd vdd FILL
XFILL_0_BUFX2_insert238 gnd vdd FILL
XFILL_0__3757_ gnd vdd FILL
XFILL_0__3337_ gnd vdd FILL
XFILL143250x43350 gnd vdd FILL
XFILL_1__2713_ gnd vdd FILL
XFILL_0__3090_ gnd vdd FILL
X_2988_ _1586_ _1585_ rst_bF$buf2 _517_ vdd gnd AOI21X1
X_2568_ _63_ i_clk_fast_bF$buf1 \u_rf_serial.last_req_key\[2] vdd gnd DFFPOSX1
X_2148_ _770_ i_clk_fast_bF$buf5 \u_mem_serial.bit_count\[2] vdd gnd DFFPOSX1
X_4714_ _1878_ _2025_ _2026_ vdd gnd NAND2X1
XFILL142350x7350 gnd vdd FILL
XFILL_0__2361_ gnd vdd FILL
XFILL_1__3727_ gnd vdd FILL
X_2797_ _589_ i_clk_sys_ext_bF$buf42 \u_rf_if.read_buf1\[21] vdd gnd DFFPOSX1
X_2377_ _1070_ _1077_ _834_ _1078_ vdd gnd OAI21X1
XFILL_0__2417_ gnd vdd FILL
X_4523_ _1871_ \u_cpu.decode.i_wb_rdt\[16] _1874_ _1907_ vdd gnd NAND3X1
X_4103_ rdata1[0] \u_cpu.bufreg2.i_op_b_sel\ _1147_ vdd gnd NAND2X1
XFILL_0__2590_ gnd vdd FILL
XFILL_0__3375_ gnd vdd FILL
XFILL_1__2751_ gnd vdd FILL
XFILL_1__3116_ gnd vdd FILL
X_2186_ _1422_ _1423_ rst_bF$buf10 _784_ vdd gnd AOI21X1
XFILL_0__2646_ gnd vdd FILL
X_4752_ i_rst_n_bF$buf1 vdd _1822_ i_clk_sys_ext_bF$buf24 rf_write_drain_busy vdd 
+ gnd
+ DFFSR
X_4332_ _1515_ _1512_ _1518_ _1519_ vdd gnd OAI21X1
X_3603_ \u_cpu.immdec.gen_immdec_w_eq_1.imm11_7\[1] \u_cpu.immdec.gen_immdec_w_eq_1.imm11_7\[0] _28_ vdd gnd NOR2X1
XFILL_1__2140_ gnd vdd FILL
XFILL_0__2455_ gnd vdd FILL
X_4561_ ibus_pending_rdt[25] _1932_ vdd gnd INVX1
X_4141_ \u_cpu.bufreg2.dlo\[3] _1180_ vdd gnd INVX1
XFILL_0__4601_ gnd vdd FILL
X_3832_ \u_cpu.decode.co_immdec_ctrl\[2] _667_ vdd gnd INVX1
X_3412_ \u_rf_if.read_buf0\[6] \u_rf_if.stream_cnt_0_bF$buf1\ \u_rf_if.stream_cnt_1_bF$buf1\ _328_ vdd gnd OAI21X1
XFILL_0__4198_ gnd vdd FILL
X_4617_ _1951_ _1966_ _1967_ _1820_ vdd gnd NAND3X1
XFILL_1__4359_ gnd vdd FILL
XFILL_0__2684_ gnd vdd FILL
X_4370_ \u_cpu.ctrl.o_ibus_adr\[30] _1543_ vdd gnd INVX1
XFILL_0__3469_ gnd vdd FILL
XFILL_0__3049_ gnd vdd FILL
X_3641_ \u_cpu.state.o_cnt\[2] \u_cpu.bufreg2.i_bytecnt\[0] _157_ vdd gnd NAND2X1
X_3221_ _1753_ _1755_ rst_bF$buf7 _584_ vdd gnd AOI21X1
X_4426_ _1489_ i_clk_sys_ext_bF$buf5 \u_cpu.ctrl.o_ibus_adr\[9] vdd gnd DFFPOSX1
X_4006_ \u_cpu.bufreg.i_imm_en\ \u_cpu.bufreg.i_imm\ _928_ _929_ vdd gnd NAND3X1
XBUFX2_insert210 _1960_ _1960__bF$buf2 vdd gnd BUFX2
XBUFX2_insert211 _1960_ _1960__bF$buf1 vdd gnd BUFX2
XBUFX2_insert212 _1960_ _1960__bF$buf0 vdd gnd BUFX2
XBUFX2_insert213 _5_ _5__bF$buf3 vdd gnd BUFX2
XBUFX2_insert214 _5_ _5__bF$buf2 vdd gnd BUFX2
XBUFX2_insert215 _5_ _5__bF$buf1 vdd gnd BUFX2
XBUFX2_insert216 _5_ _5__bF$buf0 vdd gnd BUFX2
XBUFX2_insert217 \u_rf_if.stream_cnt\[1] \u_rf_if.stream_cnt_1_bF$buf3\ vdd gnd BUFX2
XBUFX2_insert218 \u_rf_if.stream_cnt\[1] \u_rf_if.stream_cnt_1_bF$buf2\ vdd gnd BUFX2
XBUFX2_insert219 \u_rf_if.stream_cnt\[1] \u_rf_if.stream_cnt_1_bF$buf1\ vdd gnd BUFX2
XFILL_0__2493_ gnd vdd FILL
X_2912_ _616_ _730_ _493_ vdd gnd NOR2X1
X_3870_ \u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20\[2] _660__bF$buf0 _697_ vdd gnd NAND2X1
X_3450_ \u_rf_if.stream_cnt_0_bF$buf4\ _404_ _403_ _400_ vdd gnd OAI21X1
X_3030_ _1614_ _1615_ rst_bF$buf3 _530_ vdd gnd AOI21X1
XFILL_0__2969_ gnd vdd FILL
XFILL_0__2549_ gnd vdd FILL
XFILL_0__2129_ gnd vdd FILL
X_4655_ _1940_ _1959__bF$buf4 _1987_ _1838_ vdd gnd OAI21X1
X_4235_ _1255_ _1159__bF$buf2 _1257_ _1113_ vdd gnd OAI21X1
XFILL_0__3910_ gnd vdd FILL
XFILL_1__4397_ gnd vdd FILL
X_2721_ _98_ _114_ _115_ vdd gnd NAND2X1
X_2301_ _1315__bF$buf1 _1304__bF$buf1 \u_mem_serial.shift_rx\[6] _1340_ vdd gnd OAI21X1
X_3926_ _626_ i_clk_sys_ext_bF$buf24 \u_cpu.immdec.gen_immdec_w_eq_1.imm11_7\[4] vdd gnd DFFPOSX1
X_3506_ gnd _460_ vdd gnd INVX1
XFILL_1__2463_ gnd vdd FILL
XFILL_1__3668_ gnd vdd FILL
X_4464_ \u_cpu.immdec.gen_immdec_w_eq_1.imm11_7\[3] \u_cpu.immdec.gen_immdec_w_eq_1.imm11_7\[2] _1866_ vdd gnd NOR2X1
X_4044_ _887__bF$buf1 _952_ _954_ _885_ vdd gnd OAI21X1
X_2950_ \u_rf_if.issue_idx\[5] _1669_ raddr[1] _1444_ vdd gnd OAI21X1
X_2530_ \u_cpu.ctrl.o_ibus_adr\[3] _810_ _798_ _823_ vdd gnd OAI21X1
X_3735_ _385_ _387_ vdd gnd INVX1
X_3315_ _2109_ _2105_ vdd gnd INVX1
XFILL_1__3477_ gnd vdd FILL
XFILL_0__2167_ gnd vdd FILL
X_4693_ rf_read_reg1[0] _1948_ _1872__bF$buf1 _2011_ vdd gnd NAND3X1
X_4273_ mem_dbus_ack_bF$buf4 _1282_ _1285_ vdd gnd NOR2X1
XFILL_0__4313_ gnd vdd FILL
XFILL_1__2328_ gnd vdd FILL
X_3964_ \u_cpu.bufreg.i_en_bF$buf0\ _900_ _901_ _858_ vdd gnd OAI21X1
X_3544_ \u_cpu.state.i_ctrl_misalign\ _2035_ vdd gnd INVX1
X_3124_ _1683_ _1684_ rst_bF$buf6 _557_ vdd gnd AOI21X1
X_4749_ i_rst_n_bF$buf3 vdd _1825_ i_clk_sys_ext_bF$buf34 ibus_pending_ack vdd 
+ gnd
+ DFFSR
X_4329_ \u_cpu.cnt2\ _1516_ vdd gnd INVX1
X_4082_ \u_cpu.bufreg.i_right_shift_op\ \u_cpu.bufreg.i_cnt_done\ _1127_ _1128_ vdd gnd AOI21X1
X_2815_ _580_ i_clk_sys_ext_bF$buf20 \u_rf_if.read_buf1\[12] vdd gnd DFFPOSX1
XCLKBUF1_insert130 i_clk_sys_ext_hier0_bF$buf1 i_clk_sys_ext_bF$buf25 vdd gnd CLKBUF1
XFILL142950x64950 gnd vdd FILL
XCLKBUF1_insert131 i_clk_sys_ext_hier0_bF$buf1 i_clk_sys_ext_bF$buf24 vdd gnd CLKBUF1
XCLKBUF1_insert132 i_clk_sys_ext_hier0_bF$buf3 i_clk_sys_ext_bF$buf23 vdd gnd CLKBUF1
XCLKBUF1_insert133 i_clk_sys_ext_hier0_bF$buf0 i_clk_sys_ext_bF$buf22 vdd gnd CLKBUF1
XCLKBUF1_insert134 i_clk_sys_ext_hier0_bF$buf0 i_clk_sys_ext_bF$buf21 vdd gnd CLKBUF1
XCLKBUF1_insert135 i_clk_sys_ext_hier0_bF$buf0 i_clk_sys_ext_bF$buf20 vdd gnd CLKBUF1
XCLKBUF1_insert136 i_clk_sys_ext_hier0_bF$buf3 i_clk_sys_ext_bF$buf19 vdd gnd CLKBUF1
XCLKBUF1_insert137 i_clk_sys_ext_hier0_bF$buf1 i_clk_sys_ext_bF$buf18 vdd gnd CLKBUF1
XCLKBUF1_insert138 i_clk_sys_ext_hier0_bF$buf2 i_clk_sys_ext_bF$buf17 vdd gnd CLKBUF1
XFILL_0__4542_ gnd vdd FILL
XCLKBUF1_insert139 i_clk_sys_ext_hier0_bF$buf4 i_clk_sys_ext_bF$buf16 vdd gnd CLKBUF1
X_3773_ rf_rreq_bF$buf6 \u_cpu.decode.i_wb_rdt\[12] _402_ vdd gnd NAND2X1
X_3353_ _441__bF$buf3 _440_ \u_rf_if.stream_active\ _24_ vdd gnd OAI21X1
X_4558_ ibus_pending_rdt[26] _1930_ vdd gnd INVX1
X_4138_ mem_dbus_ack_bF$buf1 _1174_ _1178_ vdd gnd NOR2X1
X_2624_ \u_rf_serial.last_req_key\[1] _189_ _258_ _259_ vdd gnd NAND3X1
X_2204_ _1410_ _1407_ rst_bF$buf9 _779_ vdd gnd AOI21X1
XFILL_0__4351_ gnd vdd FILL
X_3829_ rf_rreq_bF$buf4 \u_cpu.decode.i_wb_rdt\[7] _665_ vdd gnd AND2X2
X_3409_ _443_ _332_ _326_ _325_ vdd gnd AOI21X1
X_3582_ _2084_ _2085_ \u_cpu.bne_or_bge\ _2088_ _2089_ vdd 
+ gnd
+ OAI22X1
X_3162_ _2110__bF$buf2 _1713_ _2055_ _1710_ vdd gnd NAND3X1
X_4367_ \u_cpu.ctrl.o_ibus_adr\[20] _1542_ vdd gnd INVX1
XFILL_0__3622_ gnd vdd FILL
XFILL_0__4407_ gnd vdd FILL
X_2853_ _559_ i_clk_sys_ext_bF$buf20 \u_rf_if.rreg1_latched\[1] vdd gnd DFFPOSX1
X_2433_ _809_ _1012_ _1021_ _1022_ vdd gnd AOI21X1
XFILL_0_BUFX2_insert0 gnd vdd FILL
XFILL_0_BUFX2_insert2 gnd vdd FILL
XFILL_0_BUFX2_insert4 gnd vdd FILL
XFILL_0_BUFX2_insert6 gnd vdd FILL
XFILL_0__4580_ gnd vdd FILL
XFILL_0_BUFX2_insert8 gnd vdd FILL
X_3638_ _144_ _155_ _151_ rf_wreq vdd gnd NAND3X1
X_3218_ _5__bF$buf0 _2107_ _1750_ vdd gnd NOR2X1
XFILL_1__2175_ gnd vdd FILL
XFILL_1__4321_ gnd vdd FILL
X_3391_ \u_rf_if.read_buf0\[27] _441__bF$buf0 _307_ vdd gnd NOR2X1
XBUFX2_insert180 _2108_ _2108__bF$buf2 vdd gnd BUFX2
XBUFX2_insert181 _2108_ _2108__bF$buf1 vdd gnd BUFX2
XBUFX2_insert182 _2108_ _2108__bF$buf0 vdd gnd BUFX2
XBUFX2_insert183 _1167_ _1167__bF$buf3 vdd gnd BUFX2
XBUFX2_insert184 _1167_ _1167__bF$buf2 vdd gnd BUFX2
XBUFX2_insert185 _1167_ _1167__bF$buf1 vdd gnd BUFX2
XBUFX2_insert186 _1167_ _1167__bF$buf0 vdd gnd BUFX2
XBUFX2_insert187 _1872_ _1872__bF$buf3 vdd gnd BUFX2
XBUFX2_insert188 _1872_ _1872__bF$buf2 vdd gnd BUFX2
XBUFX2_insert189 _1872_ _1872__bF$buf1 vdd gnd BUFX2
X_4596_ ibus_pending_rdt[31] _1954_ vdd gnd INVX1
X_4176_ _1208_ _1133_ _1209_ vdd gnd NAND2X1
XFILL_0__3431_ gnd vdd FILL
XFILL_0__3011_ gnd vdd FILL
X_2909_ _475_ _615_ _614_ vdd gnd NOR2X1
X_2662_ \u_rf_serial.last_req_key\[3] _224_ vdd gnd INVX1
X_2242_ _1315__bF$buf3 _1304__bF$buf0 \u_mem_serial.shift_rx\[27] _1386_ vdd gnd OAI21X1
X_3867_ \u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20\[3] _660__bF$buf2 _695_ vdd gnd NAND2X1
X_3447_ \u_rf_if.stream_cnt_0_bF$buf0\ _389_ _384_ _378_ vdd gnd OAI21X1
X_3027_ _1613_ _1612_ rst_bF$buf4 _529_ vdd gnd AOI21X1
XFILL_1__3189_ gnd vdd FILL
XFILL_0__3660_ gnd vdd FILL
X_2718_ ren_bF$buf0 raddr[3] _118_ vdd gnd NAND2X1
XFILL_1__3821_ gnd vdd FILL
X_2891_ _606_ _608_ _605_ vdd gnd NAND2X1
X_2471_ \u_mem_serial.active_ibus_bF$buf6\ \u_cpu.bufreg.data\[27] _983_ vdd gnd OR2X2
X_3676_ _170_ _178_ rst_bF$buf8 _126_ vdd gnd AOI21X1
X_3256_ _5__bF$buf1 _1781_ _1780_ vdd gnd NAND2X1
XFILL_0_BUFX2_insert81 gnd vdd FILL
XFILL_0_BUFX2_insert83 gnd vdd FILL
XFILL_0_BUFX2_insert86 gnd vdd FILL
XFILL_0_BUFX2_insert88 gnd vdd FILL
X_2947_ \u_rf_if.issue_chunk\[0] _1667_ _27__bF$buf2 _1442_ vdd gnd OAI21X1
X_2527_ \u_cpu.ctrl.o_ibus_adr\[1] gnd \u_mem_serial.active_ibus_bF$buf2\ _826_ vdd gnd MUX2X1
XFILL_0__4674_ gnd vdd FILL
X_2280_ \u_mem_serial.shift_rx\[1] _1297__bF$buf3 _1357_ vdd gnd NAND2X1
X_3485_ \u_rf_if.stream_active\ _445_ vdd gnd INVX1
X_3065_ \u_rf_if.stream_cnt\[4] _37_ _1637_ vdd gnd NAND2X1
XFILL_0__2740_ gnd vdd FILL
XFILL_0__3945_ gnd vdd FILL
XFILL_0__3525_ gnd vdd FILL
XFILL_0__3105_ gnd vdd FILL
X_2756_ \u_rf_serial.tx_state\[3] \u_rf_serial.tx_state\[2] _80_ vdd gnd NOR2X1
X_2336_ _1310_ _1311_ vdd gnd INVX1
XFILL_1__4224_ gnd vdd FILL
X_3294_ _2114_ _3_ _1813_ vdd gnd OR2X2
XFILL_0_BUFX2_insert201 gnd vdd FILL
XFILL_0_BUFX2_insert203 gnd vdd FILL
XFILL_0_BUFX2_insert205 gnd vdd FILL
XFILL_0_BUFX2_insert207 gnd vdd FILL
XFILL_0_BUFX2_insert209 gnd vdd FILL
X_4499_ _1871_ \u_cpu.decode.i_wb_rdt\[21] _1874_ _1891_ vdd gnd NAND3X1
X_4079_ \u_cpu.bufreg.i_shift_op\ _1125_ vdd gnd INVX2
XFILL_0__4119_ gnd vdd FILL
X_2985_ rst_bF$buf6 _1583_ _516_ vdd gnd NOR2X1
X_2565_ _61_ i_clk_fast_bF$buf6 \u_rf_serial.last_req_key\[3] vdd gnd DFFPOSX1
X_2145_ gnd o_gpio_oe[1] vdd gnd BUFX2
XFILL_0__2605_ gnd vdd FILL
X_4711_ current_wdata0_next_hint _1872__bF$buf0 _2023_ vdd gnd NAND2X1
XFILL143250x64950 gnd vdd FILL
XFILL_0__3563_ gnd vdd FILL
XFILL_0__3143_ gnd vdd FILL
XBUFX2_insert90 i_rst_n i_rst_n_bF$buf2 vdd gnd BUFX2
XBUFX2_insert91 i_rst_n i_rst_n_bF$buf1 vdd gnd BUFX2
XBUFX2_insert92 i_rst_n i_rst_n_bF$buf0 vdd gnd BUFX2
XBUFX2_insert93 _1861_ _1861__bF$buf5 vdd gnd BUFX2
XBUFX2_insert94 _1861_ _1861__bF$buf4 vdd gnd BUFX2
XFILL_1__3724_ gnd vdd FILL
XBUFX2_insert95 _1861_ _1861__bF$buf3 vdd gnd BUFX2
XFILL_1__3304_ gnd vdd FILL
XBUFX2_insert96 _1861_ _1861__bF$buf2 vdd gnd BUFX2
XBUFX2_insert97 _1861_ _1861__bF$buf1 vdd gnd BUFX2
XBUFX2_insert98 _1861_ _1861__bF$buf0 vdd gnd BUFX2
XBUFX2_insert99 rst rst_bF$buf10 vdd gnd BUFX2
X_2794_ _505_ i_clk_sys_ext_bF$buf41 raddr[1] vdd gnd DFFPOSX1
X_2374_ _1080_ _1063_ _1078_ _1081_ vdd gnd NAND3X1
X_3999_ \u_cpu.bufreg.i_en_bF$buf0\ _923_ _924_ _870_ vdd gnd OAI21X1
X_3579_ rdata0[0] _2086_ vdd gnd INVX1
X_3159_ _1800__bF$buf3 _1709_ _27__bF$buf0 _1708_ vdd gnd OAI21X1
X_4520_ ibus_pending_ack_bF$buf2 ibus_pending_rdt[1] _1905_ vdd gnd NAND2X1
X_4100_ \u_cpu.bufreg2.dlo\[8] \u_cpu.bufreg2.dlo\[0] \u_cpu.bufreg.data\[0] _1145_ vdd gnd MUX2X1
XFILL_0__3792_ gnd vdd FILL
XFILL_0__4157_ gnd vdd FILL
X_2183_ _1424_ _1425_ rst_bF$buf10 _785_ vdd gnd AOI21X1
X_3388_ \u_rf_if.stream_cnt\[2] _305_ _304_ vdd gnd NOR2X1
XFILL_0__2223_ gnd vdd FILL
XFILL_0__3848_ gnd vdd FILL
X_2659_ ren_bF$buf2 \u_rf_if.o_wen\ \u_rf_serial.req_seen\ _226_ vdd gnd OAI21X1
X_2239_ _1313_ _1311_ \u_mem_serial.bit_count\[5] _1388_ vdd gnd OAI21X1
X_3600_ \u_cpu.alu.cmp_r\ _2102_ _2104_ vdd gnd NAND2X1
XFILL_0__4386_ gnd vdd FILL
X_3197_ _6_ _1791_ _1735_ vdd gnd NAND2X1
XFILL_0__3657_ gnd vdd FILL
XFILL_0__3237_ gnd vdd FILL
XFILL_1__2613_ gnd vdd FILL
XFILL_1__3818_ gnd vdd FILL
X_2888_ _421_ _34_ \u_rf_if.stream_active\ _603_ vdd gnd OAI21X1
X_2468_ _798_ _983_ _985_ _986_ vdd gnd NAND3X1
X_4614_ _1932_ _1959__bF$buf1 _1965_ _1819_ vdd gnd OAI21X1
XFILL_1__3151_ gnd vdd FILL
XFILL_0__2261_ gnd vdd FILL
X_2697_ _109_ _187_ _199_ _200_ vdd gnd NAND3X1
X_2277_ _1356_ _1359_ rst_bF$buf10 _757_ vdd gnd AOI21X1
XFILL_0__2317_ gnd vdd FILL
X_4423_ _1577_ _1576_ _1574_ _1495_ vdd gnd OAI21X1
X_4003_ \u_cpu.bufreg.i_en_bF$buf4\ \u_cpu.bufreg.data\[25] _927_ vdd gnd NAND2X1
XFILL_0__3275_ gnd vdd FILL
XFILL_1__2651_ gnd vdd FILL
XFILL_1__3856_ gnd vdd FILL
X_4652_ mem_ibus_ack_bF$buf2 \u_mem_serial.shift_rx\[11] _1960__bF$buf4 _1986_ vdd gnd NAND3X1
X_4232_ \u_cpu.bufreg2.dlo\[17] _1255_ vdd gnd INVX1
XFILL_0_BUFX2_insert171 gnd vdd FILL
XFILL_0_BUFX2_insert173 gnd vdd FILL
XFILL_0_BUFX2_insert175 gnd vdd FILL
XFILL_0_BUFX2_insert178 gnd vdd FILL
XFILL_0__3084_ gnd vdd FILL
X_3923_ _629_ i_clk_sys_ext_bF$buf21 rreg0[1] vdd gnd DFFPOSX1
X_3503_ gnd _458_ vdd gnd INVX1
X_4708_ ibus_pending_rdt[30] _2021_ vdd gnd INVX1
XFILL_0__2355_ gnd vdd FILL
X_4461_ rf_write_drain_busy _1863_ vdd gnd INVX1
X_4041_ \u_cpu.bufreg.i_en_bF$buf1\ \u_cpu.bufreg.data\[15] _953_ vdd gnd NAND2X1
XFILL_0__4501_ gnd vdd FILL
XFILL_1__2936_ gnd vdd FILL
XFILL_1__2516_ gnd vdd FILL
X_3732_ \u_cpu.bufreg2.i_op_b_sel\ \u_cpu.cond_branch\ _385_ vdd gnd NAND2X1
X_3312_ \u_rf_if.rreg0_latched\[4] _2064_ vdd gnd INVX1
XFILL_0__4098_ gnd vdd FILL
X_4517_ \u_mem_serial.shift_rx\[22] _1861__bF$buf1 _1903_ vdd gnd NAND2X1
XFILL_1__3894_ gnd vdd FILL
XFILL_1__4259_ gnd vdd FILL
XFILL_0__2584_ gnd vdd FILL
XFILL_0__2164_ gnd vdd FILL
X_4690_ rf_read_reg1[1] _1948_ _1872__bF$buf2 _2009_ vdd gnd NAND3X1
X_4270_ mem_dbus_ack_bF$buf4 _1279_ _1283_ vdd gnd NOR2X1
XFILL_0__3369_ gnd vdd FILL
XFILL_1__2325_ gnd vdd FILL
XFILL142350x54150 gnd vdd FILL
X_3961_ _887__bF$buf2 _897_ _899_ _857_ vdd gnd OAI21X1
X_3541_ \u_cpu.decode.co_mem_word\ _2033_ vdd gnd INVX1
X_3121_ _473_ _1682_ _1680_ vdd gnd NOR2X1
X_4746_ i_rst_n_bF$buf5 vdd _1828_ i_clk_sys_ext_bF$buf4 ibus_pending_rdt[20] vdd 
+ gnd
+ DFFSR
X_4326_ _1512_ _1513_ _1511_ _1514_ vdd gnd OAI21X1
XFILL_1__4488_ gnd vdd FILL
X_2812_ _527_ i_clk_sys_ext_bF$buf45 \u_rf_if.read_buf0\[9] vdd gnd DFFPOSX1
XFILL_0__3598_ gnd vdd FILL
XFILL_0__3178_ gnd vdd FILL
XFILL_1__3759_ gnd vdd FILL
XFILL_1__3339_ gnd vdd FILL
X_3770_ _757_ i_clk_fast_bF$buf2 \u_mem_serial.shift_rx\[2] vdd gnd DFFPOSX1
X_3350_ _37_ _22_ vdd gnd INVX1
XFILL_0__2449_ gnd vdd FILL
X_4555_ ibus_pending_rdt[27] _1928_ vdd gnd INVX1
X_4135_ mem_dbus_ack_bF$buf1 \u_mem_serial.shift_rx\[5] _1167__bF$buf1 _1175_ _1176_ vdd 
+ gnd
+ AOI22X1
XFILL_0__3810_ gnd vdd FILL
X_2621_ raddr[1] _262_ vdd gnd INVX1
X_2201_ _810_ _1296_ _1412_ _1413_ vdd gnd OAI21X1
X_3826_ _662_ _655_ _661_ _622_ vdd gnd OAI21X1
X_3406_ \u_rf_if.stream_cnt_0_bF$buf4\ _324_ _323_ _322_ vdd gnd OAI21X1
XFILL_1__2363_ gnd vdd FILL
XFILL_0__2678_ gnd vdd FILL
X_4364_ _1540_ _1526_ _1539_ _1530_ _1473_ vdd 
+ gnd
+ OAI22X1
XFILL_0_CLKBUF1_insert161 gnd vdd FILL
XFILL_0_CLKBUF1_insert163 gnd vdd FILL
XFILL_0_CLKBUF1_insert165 gnd vdd FILL
XFILL_0_CLKBUF1_insert167 gnd vdd FILL
X_2850_ _518_ i_clk_sys_ext_bF$buf45 \u_rf_if.read_buf0\[3] vdd gnd DFFPOSX1
X_2430_ \u_mem_serial.active_ibus_bF$buf4\ \u_cpu.bufreg.data\[22] _1025_ vdd gnd OR2X2
X_3635_ \u_cpu.state.i_alu_rd_sel1\ \u_cpu.decode.co_rd_alu_en\ _153_ vdd gnd NAND2X1
X_3215_ _13__bF$buf4 _1752_ \u_rf_if.read_buf1\[14] _1748_ vdd gnd OAI21X1
XFILL142650x97350 gnd vdd FILL
XFILL_1__3377_ gnd vdd FILL
XBUFX2_insert156 ibus_pending_ack ibus_pending_ack_bF$buf3 vdd gnd BUFX2
XBUFX2_insert157 ibus_pending_ack ibus_pending_ack_bF$buf2 vdd gnd BUFX2
XBUFX2_insert158 ibus_pending_ack ibus_pending_ack_bF$buf1 vdd gnd BUFX2
XBUFX2_insert159 ibus_pending_ack ibus_pending_ack_bF$buf0 vdd gnd BUFX2
X_4593_ _1871_ \u_cpu.decode.i_wb_rdt\[19] _1874_ _1953_ vdd gnd NAND3X1
X_4173_ _1137_ _1201_ _1206_ _1204_ _1102_ vdd 
+ gnd
+ AOI22X1
X_2906_ _475_ _615_ _1702_ _612_ vdd gnd OAI21X1
XFILL_0__4213_ gnd vdd FILL
X_3864_ \u_cpu.csr_imm\ _660__bF$buf1 _693_ vdd gnd NAND2X1
X_3444_ \u_rf_if.read_buf1\[29] _441__bF$buf1 _440_ _375_ vdd gnd OAI21X1
X_3024_ _1611_ _1610_ rst_bF$buf4 _528_ vdd gnd AOI21X1
X_4649_ _1983_ _1959__bF$buf0 _1984_ _1835_ vdd gnd OAI21X1
X_4229_ mem_dbus_ack_bF$buf2 _1249_ _1253_ vdd gnd NOR2X1
XFILL_0__3904_ gnd vdd FILL
XFILL_0__2296_ gnd vdd FILL
X_2715_ \u_rf_if.o_waddr\[2] _121_ vdd gnd INVX1
XFILL_0__4022_ gnd vdd FILL
XFILL_1__4603_ gnd vdd FILL
X_3673_ _175_ _174_ _176_ _177_ vdd gnd OAI21X1
X_3253_ _2110__bF$buf4 _1800__bF$buf3 _1778_ _1777_ vdd gnd NAND3X1
X_4458_ ibus_pending_ack_bF$buf3 _1861_ vdd gnd INVX8
X_4038_ \u_cpu.bufreg.data\[15] _887__bF$buf1 _951_ vdd gnd NAND2X1
XFILL_0_BUFX2_insert50 gnd vdd FILL
XFILL_0_BUFX2_insert52 gnd vdd FILL
XFILL_0_BUFX2_insert54 gnd vdd FILL
XFILL_0_BUFX2_insert56 gnd vdd FILL
XFILL_0_BUFX2_insert58 gnd vdd FILL
X_2944_ _1668_ _1788_ _745_ vdd gnd NAND2X1
X_2524_ _819_ _828_ _805_ _829_ vdd gnd MUX2X1
XFILL_0__4251_ gnd vdd FILL
X_3729_ _747_ i_clk_fast_bF$buf4 \u_mem_serial.shift_rx\[12] vdd gnd DFFPOSX1
X_3309_ \u_rf_if.rreg1_latched\[0] \u_rf_if.rreg1_latched\[1] _2061_ vdd gnd NOR2X1
XFILL_1__2686_ gnd vdd FILL
X_3482_ \u_rf_if.read_buf1\[12] \u_rf_if.stream_cnt_0_bF$buf5\ _442_ vdd gnd NOR2X1
X_3062_ _1724_ _1637_ _1635_ _541_ vdd gnd AOI21X1
X_4687_ rf_read_reg1[2] _1948_ _1872__bF$buf2 _2007_ vdd gnd NAND3X1
X_4267_ mem_dbus_ack_bF$buf4 \u_mem_serial.shift_rx\[10] _1167__bF$buf0 _1280_ _1281_ vdd 
+ gnd
+ AOI22X1
XFILL142950x50550 gnd vdd FILL
XFILL_0__4307_ gnd vdd FILL
X_2753_ _79_ _81_ _82_ _83_ vdd gnd OAI21X1
X_2333_ _1313_ _1311_ _1314_ vdd gnd NOR2X1
XFILL_0__4480_ gnd vdd FILL
X_3958_ \u_cpu.bufreg.i_en_bF$buf4\ \u_cpu.bufreg.data\[11] _898_ vdd gnd NAND2X1
X_3538_ \u_cpu.alu.i_rd_sel\[0] \u_cpu.decode.co_rd_alu_en\ _1794_ vdd gnd NAND2X1
X_3118_ \u_rf_if.write_wait\[5] _1678_ vdd gnd INVX1
XFILL_1__4641_ gnd vdd FILL
XFILL_1__4221_ gnd vdd FILL
X_3291_ _2048_ _1813_ _1811_ _1810_ vdd gnd NOR3X1
X_4496_ \u_mem_serial.shift_rx\[21] _1861__bF$buf0 _1889_ vdd gnd NAND2X1
X_4076_ _874_ i_clk_sys_ext_bF$buf26 \u_cpu.bufreg.data\[23] vdd gnd DFFPOSX1
XFILL_0__3331_ gnd vdd FILL
X_2809_ _583_ i_clk_sys_ext_bF$buf38 \u_rf_if.read_buf1\[15] vdd gnd DFFPOSX1
XFILL_0__4536_ gnd vdd FILL
X_2982_ \u_rf_if.rreg1_latched\[0] _1581_ vdd gnd INVX1
X_2562_ _72_ i_clk_fast_bF$buf1 \u_rf_serial.tx_state\[3] vdd gnd DFFPOSX1
X_2142_ gnd o_gpio_oe[4] vdd gnd BUFX2
X_3767_ _385_ _392_ \u_cpu.decode.co_immdec_ctrl\[0] vdd gnd NOR2X1
X_3347_ \u_rf_if.issue_sel_bF$buf3\ _20_ vdd gnd INVX1
XFILL_0__3980_ gnd vdd FILL
X_2618_ _259_ _264_ _265_ vdd gnd NAND2X1
XBUFX2_insert60 _1800_ _1800__bF$buf2 vdd gnd BUFX2
XBUFX2_insert61 _1800_ _1800__bF$buf1 vdd gnd BUFX2
XBUFX2_insert62 _1800_ _1800__bF$buf0 vdd gnd BUFX2
XBUFX2_insert63 _27_ _27__bF$buf4 vdd gnd BUFX2
XBUFX2_insert64 _27_ _27__bF$buf3 vdd gnd BUFX2
XBUFX2_insert65 _27_ _27__bF$buf2 vdd gnd BUFX2
XBUFX2_insert66 _27_ _27__bF$buf1 vdd gnd BUFX2
XBUFX2_insert67 _27_ _27__bF$buf0 vdd gnd BUFX2
XBUFX2_insert68 _1297_ _1297__bF$buf3 vdd gnd BUFX2
XBUFX2_insert69 _1297_ _1297__bF$buf2 vdd gnd BUFX2
X_2791_ _592_ i_clk_sys_ext_bF$buf45 \u_rf_if.read_buf1\[24] vdd gnd DFFPOSX1
X_2371_ _1083_ _1045_ _1084_ vdd gnd NAND2X1
X_3996_ _887__bF$buf2 _920_ _922_ _869_ vdd gnd OAI21X1
X_3576_ \u_cpu.alu.i_cnt0\ \u_cpu.alu.cmp_r\ \u_cpu.state.i_alu_rd_sel1\ _2083_ vdd gnd NAND3X1
X_3156_ _2056_ _1709_ _1707_ _1706_ vdd gnd OAI21X1
XFILL_0__2411_ gnd vdd FILL
XFILL_0__3616_ gnd vdd FILL
X_2847_ _562_ i_clk_sys_ext_bF$buf12 \u_rf_if.wen1_r\ vdd gnd DFFPOSX1
X_2427_ \u_cpu.ctrl.o_ibus_adr\[23] _1028_ vdd gnd INVX1
XFILL_0__4574_ gnd vdd FILL
X_2180_ _1427_ _1373_ rst_bF$buf9 _786_ vdd gnd AOI21X1
X_3385_ \u_rf_if.read_buf0\[31] _441__bF$buf0 _301_ vdd gnd NOR2X1
XFILL_0__2640_ gnd vdd FILL
XFILL_0__3425_ gnd vdd FILL
XFILL_0__3005_ gnd vdd FILL
X_2656_ ren_bF$buf4 raddr[2] _228_ vdd gnd NAND2X1
X_2236_ _1007_ _1297__bF$buf2 _1315__bF$buf5 \u_mem_serial.bit_count\[4] _1390_ vdd 
+ gnd
+ AOI22X1
XFILL_1_BUFX2_insert102 gnd vdd FILL
XFILL_1_BUFX2_insert106 gnd vdd FILL
XFILL_1_BUFX2_insert109 gnd vdd FILL
X_3194_ _1733_ _1734_ rst_bF$buf0 _577_ vdd gnd AOI21X1
X_4399_ \u_cpu.ctrl.o_ibus_adr\[11] _1548_ _1561_ vdd gnd NAND2X1
X_2885_ _510_ i_clk_sys_ext_bF$buf7 raddr[6] vdd gnd DFFPOSX1
X_2465_ \u_cpu.ctrl.o_ibus_adr\[25] \u_cpu.bufreg.data\[25] \u_mem_serial.active_ibus_bF$buf1\ _989_ vdd gnd MUX2X1
XFILL_0__4192_ gnd vdd FILL
XFILL_0__2925_ gnd vdd FILL
XFILL_0__2505_ gnd vdd FILL
X_4611_ mem_ibus_ack_bF$buf4 \u_mem_serial.shift_rx\[26] _1960__bF$buf1 _1964_ vdd gnd NAND3X1
XFILL_0__3883_ gnd vdd FILL
XFILL_0__3463_ gnd vdd FILL
XFILL_0__4668_ gnd vdd FILL
XFILL_1__3624_ gnd vdd FILL
X_2694_ _81_ _79_ \u_rf_serial.tx_state\[4] _201_ vdd gnd OAI21X1
X_2274_ _1361_ _1362_ vdd gnd INVX1
XFILL_1__4409_ gnd vdd FILL
X_3899_ _680_ _715_ _716_ _641_ vdd gnd OAI21X1
X_3479_ \u_rf_if.read_buf1\[13] _441__bF$buf1 _440_ _439_ vdd gnd OAI21X1
X_3059_ _1633_ _1634_ rst_bF$buf6 _540_ vdd gnd AOI21X1
XFILL_0__2734_ gnd vdd FILL
X_4420_ \u_cpu.ctrl.i_jump\ _1575_ vdd gnd INVX1
X_4000_ \u_cpu.bufreg.data\[25] _887__bF$buf4 _925_ vdd gnd NAND2X1
XFILL_0__3519_ gnd vdd FILL
XFILL_0__3272_ gnd vdd FILL
XFILL143250x50550 gnd vdd FILL
XFILL_1__3013_ gnd vdd FILL
X_3288_ _13__bF$buf1 _2050_ \u_rf_if.read_buf1\[28] _1808_ vdd gnd OAI21X1
XFILL_0__2963_ gnd vdd FILL
XFILL_0__2543_ gnd vdd FILL
XFILL_0__3748_ gnd vdd FILL
X_2979_ _1596_ \u_rf_if.issue_chunk\[2] \u_rf_if.issue_chunk\[3] _1579_ vdd gnd AOI21X1
X_2559_ _2119_ _794_ vdd gnd INVX1
X_2139_ gnd o_gpio_oe[7] vdd gnd BUFX2
X_3920_ _632_ i_clk_sys_ext_bF$buf36 \u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20\[2] vdd gnd DFFPOSX1
X_3500_ gnd _456_ vdd gnd INVX1
X_4705_ rf_read_reg0[0] _1948_ _1872__bF$buf2 _2019_ vdd gnd NAND3X1
X_3097_ \u_rf_if.rcnt\[0] \u_rf_if.rcnt\[1] _480_ _1660_ vdd gnd OAI21X1
XFILL_0__3137_ gnd vdd FILL
X_2788_ _533_ i_clk_sys_ext_bF$buf38 \u_rf_if.read_buf0\[14] vdd gnd DFFPOSX1
X_2368_ _1086_ _1082_ _1087_ vdd gnd NAND2X1
X_4514_ \u_mem_serial.shift_rx\[23] _1861__bF$buf0 _1901_ vdd gnd NAND2X1
XFILL_1__3051_ gnd vdd FILL
XFILL_1__4676_ gnd vdd FILL
XFILL_0__3786_ gnd vdd FILL
XFILL_0__3366_ gnd vdd FILL
XFILL_1__3947_ gnd vdd FILL
XFILL_1__3527_ gnd vdd FILL
X_2597_ _238_ _283_ _284_ _65_ vdd gnd AOI21X1
X_2177_ _1428_ _1429_ rst_bF$buf10 _787_ vdd gnd AOI21X1
XFILL_0__2217_ gnd vdd FILL
X_4743_ i_rst_n_bF$buf5 vdd _1831_ i_clk_sys_ext_bF$buf9 ibus_pending_rdt[17] vdd 
+ gnd
+ DFFSR
X_4323_ \u_cpu.ctrl.pc\ \u_cpu.ctrl.pc_plus_4_cy_r_w\ _1511_ vdd gnd NAND2X1
XFILL_0__2390_ gnd vdd FILL
XFILL_1__2971_ gnd vdd FILL
XFILL_1__2551_ gnd vdd FILL

.ends
.end
