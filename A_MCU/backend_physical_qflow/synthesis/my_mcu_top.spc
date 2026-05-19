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

.subckt my_mcu_top vdd gnd i_clk_fast i_rst_n o_rf_sync o_rf_sck o_rf_mosi
+ i_rf_miso o_mem_sync o_mem_sck o_mem_mosi i_mem_miso o_uart_tx i_uart_rx i_gpio[0]
+ i_gpio[1] i_gpio[2] i_gpio[3] i_gpio[4] i_gpio[5] i_gpio[6] i_gpio[7] o_gpio[0]
+ o_gpio[1] o_gpio[2] o_gpio[3] o_gpio[4] o_gpio[5] o_gpio[6] o_gpio[7] o_gpio_oe[0]
+ o_gpio_oe[1] o_gpio_oe[2] o_gpio_oe[3] o_gpio_oe[4] o_gpio_oe[5] o_gpio_oe[6] o_gpio_oe[7] 

X_4552_ \u_mem_serial.shift_rx\[15] _1877__bF$buf0 _1900_ vdd gnd NAND2X1
X_4132_ _886_ clk_sys_bF$buf31 \u_cpu.bufreg.data\[31] vdd gnd DFFPOSX1
XFILL_1__4294_ gnd vdd FILL
X_3823_ \u_cpu.decode.opcode\[0] \u_cpu.decode.opcode\[1] _397_ \u_cpu.decode.co_immdec_ctrl\[1] vdd gnd OAI21X1
X_3403_ _25_ \u_rf_if.prefetch_active\ _19_ _18_ vdd gnd NAND3X1
X_4608_ _1877__bF$buf1 _1936_ _1937_ \u_cpu.decode.i_wb_rdt\[26] vdd gnd OAI21X1
XFILL_1__3145_ gnd vdd FILL
XFILL_0__2255_ gnd vdd FILL
X_4781_ mem_ibus_ack_bF$buf2 \u_mem_serial.shift_rx\[30] _1984__bF$buf0 _2048_ vdd gnd NAND3X1
X_4361_ _1121_ clk_sys_bF$buf28 \u_cpu.bufreg2.dlo\[23] vdd gnd DFFPOSX1
XFILL_0__4401_ gnd vdd FILL
X_3632_ _2112_ _2114_ _2119_ _2120_ vdd gnd NAND3X1
X_3212_ _459_ _484__bF$buf1 _1732_ _567_ vdd gnd AOI21X1
X_4837_ i_rst_n_bF$buf0 vdd _1829_ clk_sys_bF$buf14 ibus_pending_rdt[22] vdd 
+ gnd
+ DFFSR
X_4417_ \u_cpu.ctrl.o_ibus_adr\[28] _1540_ vdd gnd INVX1
XBUFX2_insert120 _484_ _484__bF$buf2 vdd gnd BUFX2
XBUFX2_insert121 _484_ _484__bF$buf1 vdd gnd BUFX2
XBUFX2_insert122 _484_ _484__bF$buf0 vdd gnd BUFX2
XBUFX2_insert123 _1303_ _1303__bF$buf3 vdd gnd BUFX2
XBUFX2_insert124 _1303_ _1303__bF$buf2 vdd gnd BUFX2
XBUFX2_insert125 _1303_ _1303__bF$buf1 vdd gnd BUFX2
XBUFX2_insert126 _1303_ _1303__bF$buf0 vdd gnd BUFX2
XBUFX2_insert127 rst rst_bF$buf10 vdd gnd BUFX2
XBUFX2_insert128 rst rst_bF$buf9 vdd gnd BUFX2
XBUFX2_insert129 rst rst_bF$buf8 vdd gnd BUFX2
X_4590_ ibus_pending_ack_bF$buf3 _1924_ _1925_ \u_cpu.decode.i_wb_rdt\[4] vdd gnd OAI21X1
X_4170_ \u_cpu.state.i_ctrl_misalign\ \u_cpu.bufreg2.i_bytecnt\[1] _1155_ vdd gnd OR2X2
X_2903_ _571_ clk_sys_bF$buf35 \u_rf_if.read_buf1\[1] vdd gnd DFFPOSX1
XFILL_0__3269_ gnd vdd FILL
XFILL_0__4630_ gnd vdd FILL
X_3861_ _366_ clk_sys_bF$buf23 \u_cpu.decode.opcode\[2] vdd gnd DFFPOSX1
X_3441_ \u_rf_if.read_buf0\[19] _446__bF$buf2 _299_ vdd gnd NOR2X1
X_3021_ raddr[4] _1697_ _32__bF$buf4 _1592_ vdd gnd OAI21X1
X_4646_ rf_rreq_bF$buf5 _1962_ vdd gnd INVX2
X_4226_ mem_dbus_ack_bF$buf3 \u_mem_serial.shift_rx\[30] _1203_ vdd gnd NAND2X1
XFILL_1__3183_ gnd vdd FILL
XFILL_0__2293_ gnd vdd FILL
X_2712_ \u_rf_serial.last_req_key\[4] _114_ _234_ vdd gnd NAND2X1
X_3917_ \u_cpu.decode.i_wb_rdt\[18] rreg0[4] rf_rreq_bF$buf4 _691_ vdd gnd MUX2X1
XFILL_1__3659_ gnd vdd FILL
X_3670_ \u_cpu.decode.co_rd_alu_en\ \u_cpu.alu.o_rd\ _36_ vdd gnd NAND2X1
X_3250_ _2154__bF$buf2 _2062__bF$buf2 _1757_ _1756_ vdd gnd NAND3X1
XFILL_0__2769_ gnd vdd FILL
XFILL145050x122550 gnd vdd FILL
X_4455_ _1530__bF$buf4 _1560_ _1561_ _1490_ vdd gnd OAI21X1
X_4035_ \u_cpu.bufreg.data\[4] _911_ vdd gnd INVX1
XFILL_1_CLKBUF1_insert65 gnd vdd FILL
XFILL_1_CLKBUF1_insert69 gnd vdd FILL
XFILL_0_BUFX2_insert20 gnd vdd FILL
XFILL_0_BUFX2_insert22 gnd vdd FILL
XFILL_0_BUFX2_insert23 gnd vdd FILL
XFILL_0_BUFX2_insert25 gnd vdd FILL
XFILL_0_BUFX2_insert27 gnd vdd FILL
XFILL_0_BUFX2_insert29 gnd vdd FILL
X_2941_ _550_ clk_sys_bF$buf13 \u_rf_if.read_buf1\[31] vdd gnd DFFPOSX1
X_2521_ \u_mem_serial.active_ibus_bF$buf0\ \u_cpu.bufreg.data\[27] _996_ vdd gnd OR2X2
X_3726_ _161_ \u_cpu.state.cnt_r\[2] _128_ vdd gnd AND2X2
X_3306_ _18__bF$buf4 _1803_ \u_rf_if.read_buf1\[20] _1799_ vdd gnd OAI21X1
XFILL_1__3468_ gnd vdd FILL
XFILL_0__2578_ gnd vdd FILL
X_4684_ mem_ibus_ack_bF$buf4 \u_mem_serial.shift_rx\[20] _1984__bF$buf2 _1988_ vdd gnd NAND3X1
X_4264_ _1138_ _1235_ _1136_ _1236_ vdd gnd OAI21X1
XFILL_0__4304_ gnd vdd FILL
X_2750_ _206_ _207_ vdd gnd INVX1
X_2330_ _1315__bF$buf3 _1367_ _1303__bF$buf0 _1368_ vdd gnd NAND3X1
X_3955_ \u_cpu.immdec.gen_immdec_w_eq_1.imm30_25\[0] _683_ _717_ vdd gnd NAND2X1
X_3535_ \u_rf_if.read_buf1\[11] _446__bF$buf1 _437_ vdd gnd NOR2X1
X_3115_ _1717__bF$buf2 _1794_ \u_rf_if.read_buf0\[18] _1659_ vdd gnd OAI21X1
X_4493_ _1492_ clk_sys_bF$buf42 \u_cpu.ctrl.o_ibus_adr\[11] vdd gnd DFFPOSX1
X_4073_ \u_cpu.bufreg.i_init\ _937_ _899_ _938_ vdd gnd NAND3X1
X_2806_ ren_bF$buf4 raddr[6] _93_ vdd gnd NAND2X1
XFILL_0__4533_ gnd vdd FILL
X_3764_ \u_cpu.bufreg.i_right_shift_op\ \u_cpu.decode.co_mem_signed\ vdd gnd INVX1
X_3344_ _10__bF$buf1 _2065_ _2064_ vdd gnd NAND2X1
X_4549_ \u_cpu.decode.i_wb_rdt\[16] _1894_ _1897_ _1898_ vdd gnd NAND3X1
X_4129_ _860_ clk_sys_bF$buf38 \u_cpu.bufreg.data\[11] vdd gnd DFFPOSX1
XFILL_0__3804_ gnd vdd FILL
X_2615_ _798_ _799_ _800_ _801_ vdd gnd NAND3X1
XBUFX2_insert30 _2062_ _2062__bF$buf2 vdd gnd BUFX2
XBUFX2_insert31 _2062_ _2062__bF$buf1 vdd gnd BUFX2
XBUFX2_insert32 _2062_ _2062__bF$buf0 vdd gnd BUFX2
XBUFX2_insert33 \u_mem_serial.active_ibus\ \u_mem_serial.active_ibus_bF$buf6\ vdd gnd BUFX2
XBUFX2_insert34 \u_mem_serial.active_ibus\ \u_mem_serial.active_ibus_bF$buf5\ vdd gnd BUFX2
XBUFX2_insert35 \u_mem_serial.active_ibus\ \u_mem_serial.active_ibus_bF$buf4\ vdd gnd BUFX2
XBUFX2_insert36 \u_mem_serial.active_ibus\ \u_mem_serial.active_ibus_bF$buf3\ vdd gnd BUFX2
XBUFX2_insert37 \u_mem_serial.active_ibus\ \u_mem_serial.active_ibus_bF$buf2\ vdd gnd BUFX2
XBUFX2_insert38 \u_mem_serial.active_ibus\ \u_mem_serial.active_ibus_bF$buf1\ vdd gnd BUFX2
XBUFX2_insert39 \u_mem_serial.active_ibus\ \u_mem_serial.active_ibus_bF$buf0\ vdd gnd BUFX2
X_3993_ _627_ clk_sys_bF$buf3 rreg0[4] vdd gnd DFFPOSX1
X_3573_ _483_ _473_ _468_ \u_rf_if.o_wdata\[0] vdd gnd OAI21X1
X_3153_ _2062__bF$buf0 _1715__bF$buf3 _2060_ _1684_ vdd gnd NAND3X1
X_4778_ \u_cpu.csr_imm\ rf_rreq_bF$buf6 _1895__bF$buf2 _2046_ vdd gnd NAND3X1
X_4358_ _1124_ clk_sys_bF$buf25 \u_cpu.bufreg2.dlo\[13] vdd gnd DFFPOSX1
XFILL_0__3613_ gnd vdd FILL
X_2844_ _602_ clk_sys_bF$buf10 \u_rf_if.read_buf1\[29] vdd gnd DFFPOSX1
X_2424_ \u_cpu.mem_if.o_wb_sel\[3] _1094_ vdd gnd INVX1
XFILL_0__4571_ gnd vdd FILL
X_3629_ \u_cpu.alu.i_sub\ _2117_ vdd gnd INVX1
X_3209_ _459_ _1734_ _484__bF$buf1 _1729_ vdd gnd AOI21X1
X_3382_ _13_ _17_ _2153_ vdd gnd OR2X2
X_4587_ _1877__bF$buf5 _1922_ _1923_ \u_cpu.decode.i_wb_rdt\[17] vdd gnd OAI21X1
X_4167_ \u_cpu.bufreg2.i_op_b_sel\ _1151_ _1152_ \u_cpu.alu.i_op_b\ vdd gnd OAI21X1
XFILL_0__3842_ gnd vdd FILL
XFILL_0__4207_ gnd vdd FILL
X_2653_ _210_ _289_ vdd gnd INVX1
X_2233_ _1439_ _1440_ rst_bF$buf3 _783_ vdd gnd AOI21X1
XFILL_0__4380_ gnd vdd FILL
X_3858_ rf_rreq_bF$buf0 \u_cpu.decode.i_wb_rdt\[2] _418_ vdd gnd NAND2X1
X_3438_ _448_ _297_ _296_ vdd gnd NAND2X1
X_3018_ \u_rf_if.issue_chunk\[3] _1696_ _32__bF$buf1 _1590_ vdd gnd OAI21X1
XFILL_1_BUFX2_insert92 gnd vdd FILL
XFILL_1_BUFX2_insert96 gnd vdd FILL
XFILL_0_CLKBUF1_insert71 gnd vdd FILL
XFILL_0_CLKBUF1_insert73 gnd vdd FILL
XFILL_0_CLKBUF1_insert75 gnd vdd FILL
XFILL_0_CLKBUF1_insert77 gnd vdd FILL
XFILL_0_CLKBUF1_insert79 gnd vdd FILL
X_3191_ _1715__bF$buf3 _2099_ _2150_ _1714_ vdd gnd NAND3X1
X_4396_ \u_cpu.ctrl.pc\ \u_cpu.ctrl.pc_plus_4_cy_r_w\ _1525_ vdd gnd OR2X2
XFILL_0__3651_ gnd vdd FILL
XFILL_0__3231_ gnd vdd FILL
X_2709_ \u_rf_serial.last_req_key\[9] _237_ vdd gnd INVX1
X_2882_ _583_ clk_sys_bF$buf35 \u_rf_if.read_buf1\[10] vdd gnd DFFPOSX1
X_2462_ \u_cpu.bufreg2.dhi\[3] _795_ _845_ \u_cpu.bufreg.i_shamt\[1] _1056_ vdd 
+ gnd
+ AOI22X1
X_3667_ \u_cpu.immdec.gen_immdec_w_eq_1.imm11_7\[3] \u_cpu.immdec.gen_immdec_w_eq_1.imm11_7\[2] \u_cpu.immdec.gen_immdec_w_eq_1.imm11_7\[4] _34_ vdd gnd NOR3X1
X_3247_ \u_rf_if.stream_cnt\[3] _1755_ _1754_ vdd gnd NAND2X1
XFILL_0__2502_ gnd vdd FILL
X_2938_ _501_ clk_sys_bF$buf6 \u_rf_if.write_wait\[4] vdd gnd DFFPOSX1
X_2518_ _798_ _996_ _999_ _1000_ vdd gnd NAND3X1
XFILL_0__4245_ gnd vdd FILL
XFILL_1__3621_ gnd vdd FILL
X_2691_ ren_bF$buf4 _254_ _255_ vdd gnd NAND2X1
X_2271_ _805_ _1414_ _1310_ _1415_ vdd gnd OAI21X1
X_3896_ \u_cpu.decode.co_immdec_ctrl\[1] _673_ vdd gnd INVX1
X_3476_ \u_rf_if.read_buf0\[7] _446__bF$buf3 _334_ vdd gnd NOR2X1
X_3056_ _1717__bF$buf1 _1744_ \u_rf_if.read_buf0\[3] _1617_ vdd gnd OAI21X1
XFILL_0__2731_ gnd vdd FILL
XFILL_0__3936_ gnd vdd FILL
XFILL_0__3516_ gnd vdd FILL
XFILL144750x82950 gnd vdd FILL
X_2747_ \u_rf_serial.shift_rx\[0] _209_ vdd gnd INVX1
X_2327_ \u_mem_serial.shift_rx\[0] _1297__bF$buf3 _1370_ vdd gnd NAND2X1
XFILL_1__2489_ gnd vdd FILL
XFILL_1__3430_ gnd vdd FILL
XFILL_1__4635_ gnd vdd FILL
X_3285_ _2154__bF$buf1 _5_ _1783_ _1782_ vdd gnd NAND3X1
XFILL_0__2540_ gnd vdd FILL
XFILL_0_BUFX2_insert111 gnd vdd FILL
XFILL_0_BUFX2_insert113 gnd vdd FILL
XFILL_0_BUFX2_insert115 gnd vdd FILL
XFILL_0_BUFX2_insert117 gnd vdd FILL
XFILL_0_BUFX2_insert118 gnd vdd FILL
X_2976_ \u_rf_if.write_wait\[0] \u_rf_if.write_wait\[1] _622_ _621_ vdd gnd AOI21X1
X_2556_ \u_mem_serial.active_ibus_bF$buf4\ _859_ _961_ vdd gnd NAND2X1
XFILL_0__4283_ gnd vdd FILL
X_4702_ _1897_ _1894_ _2000_ _2001_ vdd gnd NAND3X1
X_3094_ _2152__bF$buf2 _1715__bF$buf3 _2068_ _1643_ vdd gnd NAND3X1
X_4299_ mem_dbus_ack_bF$buf1 _1260_ _1263_ vdd gnd NOR2X1
XFILL_0__3974_ gnd vdd FILL
XFILL_0__3554_ gnd vdd FILL
XFILL_0__3134_ gnd vdd FILL
XFILL_0__4759_ gnd vdd FILL
X_2785_ ren_bF$buf4 _112_ _113_ _114_ vdd gnd OAI21X1
X_2365_ _1315__bF$buf2 _1339_ _1303__bF$buf2 _1340_ vdd gnd NAND3X1
XFILL_0__2405_ gnd vdd FILL
X_4511_ _1477_ clk_sys_bF$buf19 \u_cpu.ctrl.o_ibus_adr\[23] vdd gnd DFFPOSX1
XFILL_1__4673_ gnd vdd FILL
XFILL_0__3783_ gnd vdd FILL
XFILL_0__4148_ gnd vdd FILL
XFILL_1__3104_ gnd vdd FILL
X_2594_ \u_mem_serial.active_ibus_bF$buf6\ \u_cpu.bufreg.data\[3] _822_ vdd gnd NOR2X1
X_2174_ gnd o_gpio[3] vdd gnd BUFX2
XFILL_1__4309_ gnd vdd FILL
X_3799_ \u_cpu.branch_op\ \u_cpu.cond_branch\ _393_ vdd gnd NOR2X1
X_3379_ _2151_ _2152__bF$buf1 _2150_ vdd gnd NOR2X1
X_4740_ _2021_ _1983__bF$buf0 _2022_ _1852_ vdd gnd OAI21X1
X_4320_ \u_cpu.bufreg2.dlo\[12] _1278_ vdd gnd INVX1
XFILL_0__3419_ gnd vdd FILL
XFILL_0__3172_ gnd vdd FILL
XFILL_0__4797_ gnd vdd FILL
XFILL145050x32550 gnd vdd FILL
XFILL_1__3753_ gnd vdd FILL
X_3188_ _10__bF$buf0 _1715__bF$buf2 _2088_ _1712_ vdd gnd NAND3X1
XFILL_0__2443_ gnd vdd FILL
X_2879_ _531_ clk_sys_bF$buf17 raddr[8] vdd gnd DFFPOSX1
X_2459_ \u_cpu.bufreg2.cnt_next\[6] _795_ _840_ \u_cpu.bufreg2.dhi\[4] _1059_ vdd 
+ gnd
+ AOI22X1
X_3820_ \u_cpu.cond_branch\ \u_cpu.decode.opcode\[1] \u_cpu.bufreg.i_rs1_en\ \u_cpu.bufreg.i_clr_lsb\ vdd gnd AOI21X1
XFILL144750x14550 gnd vdd FILL
X_3400_ _25_ _16_ _15_ vdd gnd NAND2X1
XFILL_0__4186_ gnd vdd FILL
X_4605_ _1877__bF$buf1 _1934_ _1935_ \u_cpu.decode.i_wb_rdt\[27] vdd gnd OAI21X1
XFILL_1__3142_ gnd vdd FILL
XFILL_0__2672_ gnd vdd FILL
XFILL_0__3877_ gnd vdd FILL
XFILL_0__3457_ gnd vdd FILL
XFILL_0__3037_ gnd vdd FILL
XFILL_1__2413_ gnd vdd FILL
X_2688_ \u_rf_if.o_waddr\[1] _91_ _258_ vdd gnd NAND2X1
X_2268_ _808_ _1297__bF$buf1 _1416_ _772_ vdd gnd AOI21X1
XFILL_0__2308_ gnd vdd FILL
X_4834_ i_rst_n_bF$buf2 vdd _1832_ clk_sys_bF$buf36 ibus_pending_rdt[19] vdd 
+ gnd
+ DFFSR
X_4414_ \u_cpu.ctrl.o_ibus_adr\[26] _1538_ vdd gnd INVX1
XFILL_0__2481_ gnd vdd FILL
X_2900_ _526_ clk_sys_bF$buf26 \u_rf_if.issue_idx\[5] vdd gnd DFFPOSX1
XFILL_0__3686_ gnd vdd FILL
XFILL_1__3427_ gnd vdd FILL
X_2497_ _966_ _1016_ _1020_ _1021_ vdd gnd NAND3X1
XFILL_0__2957_ gnd vdd FILL
X_4643_ _1894_ \u_cpu.decode.i_wb_rdt\[23] _1897_ _1961_ vdd gnd NAND3X1
X_4223_ _1198_ _1200_ _1199_ _1105_ vdd gnd OAI21X1
XFILL_1__3180_ gnd vdd FILL
XFILL_0__3495_ gnd vdd FILL
XFILL_0__3075_ gnd vdd FILL
X_3914_ \u_cpu.decode.i_wb_rdt\[11] \u_cpu.immdec.gen_immdec_w_eq_1.imm30_25\[0] rf_rreq_bF$buf2 _689_ vdd gnd MUX2X1
XFILL_1__2451_ gnd vdd FILL
XFILL_0__2346_ gnd vdd FILL
X_4452_ _1530__bF$buf4 _1558_ _1559_ _1489_ vdd gnd OAI21X1
X_4032_ \u_cpu.bufreg.i_en_bF$buf2\ _908_ _909_ _865_ vdd gnd OAI21X1
X_3723_ _173_ \u_cpu.alu.i_cnt0\ vdd gnd INVX2
X_3303_ _1797_ _1799_ rst_bF$buf0 _593_ vdd gnd AOI21X1
XFILL_1__2680_ gnd vdd FILL
XFILL_0__4089_ gnd vdd FILL
X_4508_ _1490_ clk_sys_bF$buf42 \u_cpu.ctrl.o_ibus_adr\[13] vdd gnd DFFPOSX1
XFILL_1__3465_ gnd vdd FILL
XFILL_0__2995_ gnd vdd FILL
X_4681_ _1910_ _1983__bF$buf2 _1986_ _1829_ vdd gnd OAI21X1
X_4261_ \u_cpu.bufreg.i_shamt\[2] _1210_ _1198_ _1234_ vdd gnd NAND3X1
XFILL_0__4721_ gnd vdd FILL
X_3952_ \u_cpu.immdec.gen_immdec_w_eq_1.imm30_25\[1] _683_ _715_ vdd gnd NAND2X1
X_3532_ \u_rf_if.stream_cnt\[2] _435_ \u_rf_if.stream_cnt\[3] _434_ vdd gnd OAI21X1
X_3112_ _1717__bF$buf2 _1788_ \u_rf_if.read_buf0\[17] _1657_ vdd gnd OAI21X1
X_4737_ _2019_ _1983__bF$buf4 _2020_ _1851_ vdd gnd OAI21X1
X_4317_ mem_dbus_ack_bF$buf6 _1272_ _1276_ vdd gnd NOR2X1
XFILL_1__3694_ gnd vdd FILL
XFILL_0__2384_ gnd vdd FILL
X_4490_ _1471_ clk_sys_bF$buf8 \u_cpu.ctrl.o_ibus_adr\[1] vdd gnd DFFPOSX1
X_4070_ \u_cpu.bufreg.i_rs1_en\ rdata0[0] _896_ _935_ vdd gnd NAND3X1
X_2803_ _95_ _86_ _85_ _96_ vdd gnd AOI21X1
X_3761_ _136_ clk_sys_bF$buf45 \u_cpu.state.o_cnt\[2] vdd gnd DFFPOSX1
X_3341_ _13_ _2096_ _5_ _2061_ vdd gnd NAND3X1
X_4546_ _1895__bF$buf2 rf_rreq vdd gnd INVX8
X_4126_ _891_ clk_sys_bF$buf9 \u_cpu.bufreg.data\[12] vdd gnd DFFPOSX1
X_2612_ \u_mem_serial.bit_count_0_bF$buf1\ \u_mem_serial.bit_count\[1] \u_mem_serial.bit_count\[2] _804_ vdd gnd OAI21X1
XFILL_0__3398_ gnd vdd FILL
X_3817_ _393_ \u_cpu.decode.opcode\[2] \u_cpu.ctrl.i_utype\ vdd gnd AND2X2
X_3990_ _630_ clk_sys_bF$buf15 rreg1[4] vdd gnd DFFPOSX1
X_3570_ _467_ _484__bF$buf2 _466_ \u_rf_if.o_waddr\[7] vdd gnd OAI21X1
X_3150_ rst_bF$buf7 _1683_ _554_ vdd gnd NOR2X1
XFILL_0__2249_ gnd vdd FILL
X_4775_ rreg0[1] rf_rreq_bF$buf6 _1895__bF$buf0 _2044_ vdd gnd NAND3X1
X_4355_ _1127_ clk_sys_bF$buf25 \u_cpu.bufreg2.dlo\[10] vdd gnd DFFPOSX1
X_2841_ _512_ clk_sys_bF$buf41 raddr[3] vdd gnd DFFPOSX1
X_2421_ \u_mem_serial.active_we\ _966_ _1097_ vdd gnd NAND2X1
X_3626_ _2113_ _2114_ vdd gnd INVX1
X_3206_ \u_rf_if.o_waddr\[0] \u_rf_if.o_waddr\[1] \u_rf_if.o_waddr\[2] _1726_ vdd gnd NAND3X1
X_4584_ _1920_ rf_rreq_bF$buf6 _1921_ rf_read_reg1_to_if[1] vdd gnd OAI21X1
X_4164_ \u_cpu.state.i_ctrl_misalign\ _1150_ _1149_ \u_cpu.bufreg2.o_q\ vdd gnd OAI21X1
XFILL_0__4624_ gnd vdd FILL
XFILL_1__2219_ gnd vdd FILL
X_2650_ \u_rf_serial.last_req_key\[0] _291_ vdd gnd INVX1
X_2230_ _1442_ _1385_ mem_dbus_ack_bF$buf6 _1443_ vdd gnd OAI21X1
X_3855_ rf_rreq_bF$buf0 _386_ _416_ _368_ vdd gnd OAI21X1
X_3435_ \u_rf_if.read_buf0\[23] _446__bF$buf0 _50_ vdd gnd NOR2X1
X_3015_ \u_rf_if.issue_chunk\[2] _1696_ _32__bF$buf1 _1588_ vdd gnd OAI21X1
XFILL_0_CLKBUF1_insert41 gnd vdd FILL
XFILL_0_CLKBUF1_insert42 gnd vdd FILL
XFILL_0_CLKBUF1_insert44 gnd vdd FILL
XFILL_0_CLKBUF1_insert46 gnd vdd FILL
XFILL_0_CLKBUF1_insert48 gnd vdd FILL
XFILL_0__2287_ gnd vdd FILL
X_4393_ \u_cpu.bufreg.i_cnt1\ gnd _1522_ vdd gnd NAND2X1
X_2706_ _91_ \u_rf_serial.last_req_key\[9] \u_rf_serial.last_req_key\[10] _238_ _240_ vdd 
+ gnd
+ AOI22X1
XFILL_0__4433_ gnd vdd FILL
XFILL_0__4013_ gnd vdd FILL
X_3664_ _2146_ _2145_ _2148_ _2111_ vdd gnd OAI21X1
X_3244_ _1752_ _32__bF$buf2 _579_ vdd gnd AND2X2
X_4449_ _1530__bF$buf2 _1556_ _1557_ _1488_ vdd gnd OAI21X1
X_4029_ _892__bF$buf2 _905_ _907_ _864_ vdd gnd OAI21X1
X_2935_ _553_ clk_sys_bF$buf10 \u_rf_if.read_buf0\[31] vdd gnd DFFPOSX1
X_2515_ \u_cpu.ctrl.o_ibus_adr\[24] \u_cpu.bufreg.data\[24] \u_mem_serial.active_ibus_bF$buf3\ _1003_ vdd gnd MUX2X1
XFILL_0__4662_ gnd vdd FILL
XFILL_1__2257_ gnd vdd FILL
X_3893_ _655_ _661_ _670_ _671_ vdd gnd AOI21X1
X_3473_ _448_ _332_ _426_ _331_ vdd gnd OAI21X1
X_3053_ _1717__bF$buf1 _1744_ \u_rf_if.read_buf0\[2] _1615_ vdd gnd OAI21X1
X_4678_ mem_ibus_ack_bF$buf1 \u_mem_serial.shift_rx\[23] _1984__bF$buf4 _1985_ vdd gnd NAND3X1
X_4258_ _1130_ _1133_ \u_cpu.bufreg2.dhi\[3] _1231_ vdd gnd OAI21X1
X_2744_ i_rf_miso _211_ _202_ _212_ vdd gnd OAI21X1
X_2324_ _1369_ _1372_ rst_bF$buf3 _760_ vdd gnd AOI21X1
XFILL_0__4471_ gnd vdd FILL
XFILL_0__4051_ gnd vdd FILL
X_3949_ \u_cpu.immdec.gen_immdec_w_eq_1.imm30_25\[2] _683_ _713_ vdd gnd NAND2X1
X_3529_ \u_rf_if.read_buf1\[0] \u_rf_if.stream_cnt_0_bF$buf5\ _432_ _431_ vdd gnd OAI21X1
X_3109_ _1717__bF$buf2 _1788_ \u_rf_if.read_buf0\[16] _1653_ vdd gnd OAI21X1
XFILL_1__4632_ gnd vdd FILL
X_3282_ _18__bF$buf3 _1781_ \u_rf_if.read_buf1\[15] _1780_ vdd gnd OAI21X1
X_4487_ _1487_ clk_sys_bF$buf9 \u_cpu.ctrl.o_ibus_adr\[16] vdd gnd DFFPOSX1
X_4067_ \u_cpu.bufreg.i_en_bF$buf0\ _931_ _932_ _877_ vdd gnd OAI21X1
XFILL_0__3742_ gnd vdd FILL
XFILL_0__3322_ gnd vdd FILL
XFILL_0__4527_ gnd vdd FILL
X_2973_ \u_rf_if.o_waddr\[0] _1729_ _620_ vdd gnd NAND2X1
X_2553_ \u_mem_serial.bit_count\[2] _798_ _799_ _964_ vdd gnd NAND3X1
X_3758_ _137_ clk_sys_bF$buf45 \u_cpu.state.cnt_r\[2] vdd gnd DFFPOSX1
X_3338_ _2063_ _2059_ rst_bF$buf2 _600_ vdd gnd AOI21X1
XFILL_1__2295_ gnd vdd FILL
X_3091_ _2062__bF$buf3 _1715__bF$buf1 _1768_ _1641_ vdd gnd NAND3X1
X_4296_ mem_dbus_ack_bF$buf1 _1257_ _1261_ vdd gnd NOR2X1
X_2609_ \u_mem_serial.bit_count\[1] _798_ _807_ vdd gnd NAND2X1
XFILL_0__4336_ gnd vdd FILL
X_2782_ \u_rf_if.o_waddr\[3] _117_ vdd gnd INVX1
X_2362_ \u_mem_serial.shift_rx\[7] _1297__bF$buf3 _1342_ vdd gnd NAND2X1
X_3987_ _633_ clk_sys_bF$buf3 rreg0[2] vdd gnd DFFPOSX1
X_3567_ _465_ _484__bF$buf2 _464_ \u_rf_if.o_waddr\[6] vdd gnd OAI21X1
X_3147_ _1681_ _1682_ rst_bF$buf2 _553_ vdd gnd AOI21X1
XFILL_0__2822_ gnd vdd FILL
XFILL_0__3607_ gnd vdd FILL
XFILL_1__4670_ gnd vdd FILL
XFILL_0__3360_ gnd vdd FILL
X_2838_ _605_ clk_sys_bF$buf24 \u_rf_if.stream_cnt\[1] vdd gnd DFFPOSX1
X_2418_ _1089_ _1090_ _1293_ _1294_ vdd gnd NAND3X1
XFILL_0__4565_ gnd vdd FILL
X_2591_ \u_cpu.ctrl.pc\ gnd \u_mem_serial.active_ibus_bF$buf6\ _825_ vdd gnd MUX2X1
X_2171_ gnd o_gpio[6] vdd gnd BUFX2
X_3796_ \u_cpu.cond_branch\ \u_cpu.branch_op\ _390_ _391_ vdd gnd OAI21X1
X_3376_ \u_rf_if.rreg0_latched\[2] \u_rf_if.rreg0_latched\[3] _2109_ vdd gnd OR2X2
XFILL_0__2211_ gnd vdd FILL
XFILL_0__3836_ gnd vdd FILL
X_2647_ ren_bF$buf0 _215__bF$buf2 _202_ _293_ vdd gnd OAI21X1
X_2227_ _1443_ _1445_ rst_bF$buf1 _784_ vdd gnd AOI21X1
X_3185_ _478_ _1711_ \u_rf_if.wdata0_next_phase\ _1710_ vdd gnd OAI21X1
XFILL_0__3645_ gnd vdd FILL
XFILL_0__3225_ gnd vdd FILL
XFILL_1__3806_ gnd vdd FILL
X_2876_ _586_ clk_sys_bF$buf13 \u_rf_if.read_buf1\[13] vdd gnd DFFPOSX1
X_2456_ _1058_ _1061_ _803_ _1062_ vdd gnd AOI21X1
X_4602_ _1877__bF$buf1 _1932_ _1933_ \u_cpu.decode.i_wb_rdt\[28] vdd gnd OAI21X1
X_4199_ _1179_ _1164__bF$buf4 _1181_ _1100_ vdd gnd OAI21X1
XFILL_0__4239_ gnd vdd FILL
X_2685_ _91_ _127_ _261_ vdd gnd NAND2X1
X_2265_ _1410_ _1418_ vdd gnd INVX1
XFILL_0__2725_ gnd vdd FILL
X_4831_ _1835_ i_clk_fast_bF$buf0 clk_sys vdd gnd DFFPOSX1
X_4411_ _1536_ _1531_ _1534_ _1535_ _1471_ vdd 
+ gnd
+ OAI22X1
XFILL_0__3683_ gnd vdd FILL
XFILL_0__3263_ gnd vdd FILL
XFILL_0__4468_ gnd vdd FILL
X_2494_ \u_mem_serial.active_ibus_bF$buf1\ _1023_ _1024_ vdd gnd NAND2X1
X_3699_ _157_ _158_ _159_ vdd gnd NAND2X1
X_3279_ _1780_ _1778_ rst_bF$buf6 _588_ vdd gnd AOI21X1
XFILL_0__2534_ gnd vdd FILL
X_4640_ _1894_ \u_cpu.decode.i_wb_rdt\[18] _1897_ _1959_ vdd gnd NAND3X1
X_4220_ _1197_ \u_cpu.alu.i_en\ mem_dbus_ack_bF$buf4 _1198_ vdd gnd AOI21X1
XFILL_1__4382_ gnd vdd FILL
X_3911_ rreg1[4] _685_ _687_ vdd gnd NAND2X1
XFILL_0__4277_ gnd vdd FILL
XFILL_1__3233_ gnd vdd FILL
X_3088_ _1715__bF$buf1 _2099_ _1768_ _1639_ vdd gnd NAND3X1
XFILL_0__2763_ gnd vdd FILL
XFILL_0__3968_ gnd vdd FILL
XFILL_0__3548_ gnd vdd FILL
XFILL_0__3128_ gnd vdd FILL
XFILL_1__2504_ gnd vdd FILL
X_2779_ _119_ _105_ _120_ vdd gnd NAND2X1
X_2359_ _1341_ _1344_ rst_bF$buf4 _753_ vdd gnd AOI21X1
X_3720_ \u_cpu.state.cnt_r\[1] \u_cpu.cnt0to3\ _172_ vdd gnd NAND2X1
X_3300_ _10__bF$buf2 _1795_ _1794_ vdd gnd NAND2X1
X_4505_ _1469_ clk_sys_bF$buf8 \u_cpu.ctrl.o_ibus_adr\[3] vdd gnd DFFPOSX1
XFILL_0__2572_ gnd vdd FILL
XFILL_1__2733_ gnd vdd FILL
XFILL_1__3518_ gnd vdd FILL
X_2588_ _809_ _824_ _827_ _828_ vdd gnd AOI21X1
X_2168_ _2156_ o_mem_mosi vdd gnd BUFX2
XFILL_0__2208_ gnd vdd FILL
X_4734_ _2017_ _1983__bF$buf3 _2018_ _1850_ vdd gnd OAI21X1
X_4314_ mem_dbus_ack_bF$buf6 \u_mem_serial.shift_rx\[14] _1172__bF$buf2 _1273_ _1274_ vdd 
+ gnd
+ AOI22X1
XFILL_1__3271_ gnd vdd FILL
X_2800_ \u_rf_if.o_waddr\[8] _91_ _99_ vdd gnd NAND2X1
XFILL_0__3586_ gnd vdd FILL
XFILL_0__3166_ gnd vdd FILL
XFILL_1__2542_ gnd vdd FILL
X_2397_ _1312_ _1313_ vdd gnd INVX1
XFILL_0__2437_ gnd vdd FILL
X_4543_ mem_ibus_ack_bF$buf0 _1893_ vdd gnd INVX1
X_4123_ _862_ clk_sys_bF$buf9 \u_cpu.bufreg.data\[9] vdd gnd DFFPOSX1
X_3814_ _376_ \u_cpu.decode.co_ebreak\ _401_ _402_ vdd gnd AOI21X1
XFILL_1__2771_ gnd vdd FILL
XFILL_1__3556_ gnd vdd FILL
XFILL_0__2666_ gnd vdd FILL
XFILL_0__2246_ gnd vdd FILL
X_4772_ rreg0[2] rf_rreq_bF$buf5 _1895__bF$buf3 _2042_ vdd gnd NAND3X1
X_4352_ _1098_ clk_sys_bF$buf43 \u_cpu.bufreg2.dlo\[7] vdd gnd DFFPOSX1
XFILL145050x7350 gnd vdd FILL
X_3623_ _2076_ _2081_ _2087_ _2072_ vdd gnd OAI21X1
X_3203_ _1725_ _1724_ _1729_ _1723_ vdd gnd OAI21X1
XFILL_1__2580_ gnd vdd FILL
X_4828_ i_rst_n_bF$buf1 vdd _1838_ clk_sys_bF$buf32 ibus_pending_ack vdd 
+ gnd
+ DFFSR
X_4408_ _1532_ _1535_ vdd gnd INVX4
XFILL_0__2475_ gnd vdd FILL
X_4581_ _1877__bF$buf5 _1918_ _1919_ \u_cpu.decode.i_wb_rdt\[21] vdd gnd OAI21X1
X_4161_ \u_cpu.bufreg.data\[0] _1147_ _1148_ vdd gnd NOR2X1
XFILL_0__4201_ gnd vdd FILL
X_3852_ rf_rreq_bF$buf3 \u_cpu.decode.i_wb_rdt\[3] _415_ vdd gnd NAND2X1
X_3432_ \u_rf_if.stream_cnt\[2] _48_ _47_ vdd gnd NAND2X1
X_3012_ _1626_ _1587_ rst_bF$buf5 _510_ vdd gnd AOI21X1
XFILL_1_BUFX2_insert31 gnd vdd FILL
XFILL_1_BUFX2_insert35 gnd vdd FILL
XFILL_1_BUFX2_insert39 gnd vdd FILL
X_4637_ ibus_pending_ack_bF$buf1 ibus_pending_rdt[0] _1957_ vdd gnd NAND2X1
X_4217_ _1194_ _1169_ _1166_ _1195_ vdd gnd AOI21X1
XFILL_0__2284_ gnd vdd FILL
X_4390_ _1519_ \u_cpu.ctrl.i_pc_en\ _1656_ vdd gnd AND2X2
X_2703_ \u_rf_serial.last_req_key\[8] _243_ vdd gnd INVX1
XFILL_0__3489_ gnd vdd FILL
XFILL_0__3069_ gnd vdd FILL
XFILL_0__4430_ gnd vdd FILL
X_3908_ _682_ _679_ _684_ _629_ vdd gnd OAI21X1
X_3661_ \u_cpu.alu.i_sub\ _2146_ _2147_ vdd gnd NAND2X1
X_3241_ _1751_ _1750_ rst_bF$buf0 _578_ vdd gnd AOI21X1
X_4446_ _1530__bF$buf0 _1554_ _1555_ _1487_ vdd gnd OAI21X1
X_4026_ \u_cpu.bufreg.i_en_bF$buf3\ \u_cpu.bufreg.data\[9] _906_ vdd gnd NAND2X1
XFILL_1__4188_ gnd vdd FILL
X_2932_ _555_ clk_sys_bF$buf13 \u_rf_if.read_buf0\[27] vdd gnd DFFPOSX1
X_2512_ _797_ _802_ _991_ _1005_ _1006_ vdd 
+ gnd
+ AOI22X1
X_3717_ _766_ i_clk_fast_bF$buf7 \u_mem_serial.shift_rx\[27] vdd gnd DFFPOSX1
XFILL_1__3879_ gnd vdd FILL
XFILL_1__3039_ gnd vdd FILL
X_3890_ \u_cpu.immdec.gen_immdec_w_eq_1.imm7\ _668_ vdd gnd INVX1
X_3470_ \u_rf_if.read_buf0\[9] \u_rf_if.stream_cnt_0_bF$buf1\ _328_ vdd gnd NAND2X1
X_3050_ _2153_ _1717__bF$buf1 _1613_ vdd gnd NOR2X1
XFILL_0__2569_ gnd vdd FILL
X_4675_ ibus_pending_ack_bF$buf0 mem_ibus_ack_bF$buf0 _1982_ vdd gnd NAND2X1
X_4255_ _1138_ _1213_ _1228_ vdd gnd AND2X2
XFILL_0__3930_ gnd vdd FILL
XFILL_0__3510_ gnd vdd FILL
XFILL_0__4715_ gnd vdd FILL
X_2741_ rst_bF$buf4 _213_ _55_ vdd gnd NOR2X1
X_2321_ _1374_ _1375_ vdd gnd INVX1
X_3946_ \u_cpu.immdec.gen_immdec_w_eq_1.imm30_25\[3] _683_ _711_ vdd gnd NAND2X1
X_3526_ _430_ _429_ _431_ _428_ vdd gnd OAI21X1
X_3106_ _1717__bF$buf4 _1781_ \u_rf_if.read_buf0\[15] _1651_ vdd gnd OAI21X1
X_4484_ _1509_ _1515_ _1580_ _1581_ vdd gnd AOI21X1
X_4064_ _892__bF$buf0 _928_ _930_ _876_ vdd gnd OAI21X1
XFILL_0__4104_ gnd vdd FILL
XFILL_1__2959_ gnd vdd FILL
X_2970_ \u_rf_if.o_waddr\[2] _619_ _618_ _496_ vdd gnd AOI21X1
X_2550_ \u_cpu.bufreg.data\[9] _967_ vdd gnd INVX1
X_3755_ _132_ clk_sys_bF$buf45 \u_cpu.state.ibus_cyc\ vdd gnd DFFPOSX1
X_3335_ _2058_ _1824_ rst_bF$buf2 _599_ vdd gnd AOI21X1
XFILL_1__3077_ gnd vdd FILL
X_4293_ mem_dbus_ack_bF$buf1 \u_mem_serial.shift_rx\[18] _1172__bF$buf3 _1258_ _1259_ vdd 
+ gnd
+ AOI22X1
X_2606_ \u_mem_serial.active_ibus_bF$buf1\ _810_ vdd gnd INVX2
XFILL_0__4753_ gnd vdd FILL
XFILL_1__2348_ gnd vdd FILL
X_3984_ _636_ clk_sys_bF$buf8 \u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20\[3] vdd gnd DFFPOSX1
X_3564_ _463_ _484__bF$buf0 _462_ \u_rf_if.o_waddr\[5] vdd gnd OAI21X1
X_3144_ _1680_ _1679_ rst_bF$buf2 _552_ vdd gnd AOI21X1
X_4769_ rreg0[3] rf_rreq_bF$buf4 _1895__bF$buf2 _2040_ vdd gnd NAND3X1
X_4349_ _1101_ clk_sys_bF$buf28 \u_cpu.bufreg2.dlo\[4] vdd gnd DFFPOSX1
XFILL_0__3604_ gnd vdd FILL
X_2835_ _513_ clk_sys_bF$buf33 raddr[4] vdd gnd DFFPOSX1
X_2415_ i_clk_fast_bF$buf0 _794_ _2157_ vdd gnd NOR2X1
XFILL_0__4142_ gnd vdd FILL
XFILL_1__2997_ gnd vdd FILL
XFILL_1__4723_ gnd vdd FILL
X_3793_ _759_ i_clk_fast_bF$buf7 \u_mem_serial.shift_rx\[2] vdd gnd DFFPOSX1
X_3373_ _2109_ _2107_ _2106_ vdd gnd NOR2X1
X_4578_ _1916_ rf_rreq_bF$buf4 _1917_ rf_read_reg1_to_if[0] vdd gnd OAI21X1
X_4158_ _1145_ _1134_ \u_cpu.bufreg2.o_sh_done\ vdd gnd AND2X2
XFILL_0__3413_ gnd vdd FILL
XFILL_0__4618_ gnd vdd FILL
X_2644_ _243_ _215__bF$buf0 _294_ _71_ vdd gnd AOI21X1
X_2224_ _1446_ _1447_ rst_bF$buf3 _785_ vdd gnd AOI21X1
XFILL_0__4791_ gnd vdd FILL
XFILL_0__4371_ gnd vdd FILL
X_3849_ rf_rreq_bF$buf1 _385_ _413_ _365_ vdd gnd OAI21X1
X_3429_ _45_ _315_ _450_ rdata0[0] vdd gnd AOI21X1
X_3009_ _1586_ _1696_ _1585_ _509_ vdd gnd AOI21X1
XFILL_1__2386_ gnd vdd FILL
X_3182_ _1708_ _1710_ _1730_ _561_ vdd gnd AOI21X1
XFILL_1_BUFX2_insert1 gnd vdd FILL
X_4387_ \u_cpu.ctrl.pc\ \u_cpu.ctrl.pc_plus_4_cy_r_w\ _1517_ vdd gnd NOR2X1
XFILL_1_BUFX2_insert8 gnd vdd FILL
XFILL_0__3642_ gnd vdd FILL
X_2873_ _508_ clk_sys_bF$buf26 \u_rf_if.issue_chunk\[1] vdd gnd DFFPOSX1
X_2453_ _845_ \u_cpu.bufreg2.dlo\[1] \u_cpu.bufreg2.dlo\[2] _1048_ _1065_ vdd 
+ gnd
+ AOI22X1
XFILL_0__4180_ gnd vdd FILL
X_3658_ _2135_ _2144_ _2141_ _2139_ _2145_ vdd 
+ gnd
+ AOI22X1
X_3238_ _2092_ _2095_ _2152__bF$buf0 _1749_ vdd gnd NAND3X1
XFILL_1__4761_ gnd vdd FILL
X_4196_ \u_cpu.bufreg2.dlo\[5] _1179_ vdd gnd INVX1
XFILL_0__3451_ gnd vdd FILL
XFILL_0__3031_ gnd vdd FILL
X_2929_ _557_ clk_sys_bF$buf27 \u_rf_if.rcnt\[1] vdd gnd DFFPOSX1
X_2509_ \u_mem_serial.active_ibus_bF$buf4\ \u_cpu.bufreg.data\[18] \u_mem_serial.bit_count_0_bF$buf2\ _1009_ vdd gnd OAI21X1
XFILL_0__4656_ gnd vdd FILL
X_2682_ _260_ _263_ _261_ _264_ vdd gnd NAND3X1
X_2262_ \u_cpu.o_ibus_cyc\ _1420_ _1310_ _1421_ vdd gnd NAND3X1
X_3887_ rreg0[4] _665__bF$buf2 _666_ vdd gnd NAND2X1
X_3467_ \u_rf_if.read_buf0\[11] \u_rf_if.stream_cnt_0_bF$buf5\ _325_ vdd gnd NAND2X1
X_3047_ \u_rf_if.read_buf0\[0] _1613_ _32__bF$buf0 _1611_ vdd gnd OAI21X1
XFILL_1__4150_ gnd vdd FILL
X_2738_ _205_ _206_ _215_ vdd gnd OR2X2
X_2318_ _1083_ \u_mem_serial.bit_count_0_bF$buf1\ _1299_ _1377_ vdd gnd NAND3X1
XFILL_1__3001_ gnd vdd FILL
X_2491_ \u_mem_serial.active_ibus_bF$buf3\ \u_cpu.bufreg.data\[23] _1027_ vdd gnd OR2X2
X_3696_ _155_ _152_ _156_ vdd gnd NAND2X1
X_3276_ _1777_ _1776_ rst_bF$buf6 _587_ vdd gnd AOI21X1
XFILL_0__2531_ gnd vdd FILL
XFILL_0__3736_ gnd vdd FILL
XFILL_0__3316_ gnd vdd FILL
X_2967_ rf_read_reg1_to_if[4] _1722_ _32__bF$buf3 _616_ vdd gnd OAI21X1
X_2547_ _969_ _845_ _970_ vdd gnd NAND2X1
XFILL_0__4694_ gnd vdd FILL
XFILL_1__4435_ gnd vdd FILL
XFILL_1__4015_ gnd vdd FILL
X_3085_ _2152__bF$buf3 _1715__bF$buf4 _1816_ _1637_ vdd gnd NAND3X1
X_2776_ _91_ raddr[2] _122_ _123_ vdd gnd OAI21X1
X_2356_ _1346_ _1347_ vdd gnd INVX1
XFILL_0__2816_ gnd vdd FILL
X_4502_ _1481_ clk_sys_bF$buf19 \u_cpu.ctrl.o_ibus_adr\[20] vdd gnd DFFPOSX1
X_4099_ \u_cpu.bufreg.i_en_bF$buf2\ \u_cpu.bufreg.data\[17] _955_ vdd gnd NAND2X1
XFILL_0__3354_ gnd vdd FILL
XFILL_1__2310_ gnd vdd FILL
XFILL_0__4559_ gnd vdd FILL
X_2585_ \u_mem_serial.bit_count\[3] _801_ _830_ _831_ vdd gnd OAI21X1
X_2165_ _2159_ o_rf_mosi vdd gnd BUFX2
X_4731_ _2015_ _1983__bF$buf0 _2016_ _1849_ vdd gnd OAI21X1
X_4311_ _1270_ _1206_ _1271_ _1122_ vdd gnd OAI21X1
XFILL_1__4473_ gnd vdd FILL
XFILL_1__4053_ gnd vdd FILL
XFILL_1__3324_ gnd vdd FILL
X_2394_ _1315__bF$buf3 _1316_ vdd gnd INVX8
XFILL_1__4529_ gnd vdd FILL
X_3599_ _1473_ clk_sys_bF$buf29 \u_cpu.ctrl.o_ibus_adr\[26] vdd gnd DFFPOSX1
X_3179_ \u_rf_if.write_wait\[2] _1705_ vdd gnd INVX1
XFILL_0__2434_ gnd vdd FILL
X_4540_ _1887_ _1888_ _1889_ _1890_ vdd gnd NAND3X1
XFILL144750x21750 gnd vdd FILL
X_4120_ _865_ clk_sys_bF$buf38 \u_cpu.bufreg.data\[6] vdd gnd DFFPOSX1
XFILL_0__3392_ gnd vdd FILL
X_3811_ \u_cpu.decode.opcode\[0] \u_cpu.decode.opcode\[2] _396_ _399_ vdd gnd OAI21X1
XFILL_0__4597_ gnd vdd FILL
XFILL_0__2663_ gnd vdd FILL
XFILL_0__3028_ gnd vdd FILL
XFILL_1__4091_ gnd vdd FILL
XFILL_1__2824_ gnd vdd FILL
XFILL_1__3609_ gnd vdd FILL
X_2679_ ren_bF$buf3 \u_rf_if.o_waddr\[7] _267_ vdd gnd OR2X2
X_2259_ \u_mem_serial.bit_count\[6] _1315__bF$buf0 _1310_ _1423_ vdd gnd OAI21X1
X_3620_ _2082_ _2085_ _2084_ _2086_ vdd gnd NAND3X1
X_3200_ \u_rf_if.rreg1_latched\[2] _1721_ vdd gnd INVX1
X_4825_ i_rst_n_bF$buf1 vdd _1841_ clk_sys_bF$buf23 ibus_pending_rdt[14] vdd 
+ gnd
+ DFFSR
X_4405_ \u_cpu.ctrl.o_ibus_adr\[4] _1532_ _1533_ vdd gnd NAND2X1
XFILL_1__3362_ gnd vdd FILL
XFILL_1__4567_ gnd vdd FILL
XFILL_0__2472_ gnd vdd FILL
XFILL_0__3677_ gnd vdd FILL
X_2488_ _798_ _1027_ _1029_ _1030_ vdd gnd NAND3X1
X_4634_ ibus_pending_ack_bF$buf3 ibus_pending_rdt[1] _1955_ vdd gnd NAND2X1
X_4214_ mem_dbus_ack_bF$buf3 \u_mem_serial.shift_rx\[1] _1172__bF$buf1 _1192_ _1193_ vdd 
+ gnd
+ AOI22X1
X_2700_ \u_rf_serial.last_req_key\[8] _100_ _246_ vdd gnd NAND2X1
XFILL_0__3066_ gnd vdd FILL
X_3905_ _661_ \u_cpu.decode.i_wb_rdt\[30] _681_ _682_ vdd gnd OAI21X1
XFILL_1__3647_ gnd vdd FILL
X_2297_ _1392_ _1395_ rst_bF$buf10 _764_ vdd gnd AOI21X1
XFILL_0__2337_ gnd vdd FILL
X_4443_ rst_bF$buf7 _1553_ vdd gnd INVX2
X_4023_ \u_cpu.bufreg.data\[9] _892__bF$buf2 _904_ vdd gnd NAND2X1
X_3714_ \u_cpu.bufreg2.i_bytecnt\[1] _169_ \u_cpu.bufreg2.i_cnt7\ vdd gnd NOR2X1
XFILL_0__2986_ gnd vdd FILL
X_4672_ _1962_ rf_read_reg1[4] _1895__bF$buf1 _1980_ vdd gnd NAND3X1
X_4252_ _1154_ \u_mem_serial.shift_rx\[27] _1225_ _1226_ vdd gnd OAI21X1
X_3943_ \u_cpu.immdec.gen_immdec_w_eq_1.imm30_25\[4] _683_ _709_ vdd gnd NAND2X1
X_3523_ \u_rf_if.read_buf1\[4] \u_rf_if.stream_cnt_1_bF$buf3\ _425_ vdd gnd NOR2X1
X_3103_ _1717__bF$buf4 _1781_ \u_rf_if.read_buf0\[14] _1649_ vdd gnd OAI21X1
X_4728_ _1952_ _1983__bF$buf0 _2014_ _1848_ vdd gnd OAI21X1
X_4308_ _1245_ _1164__bF$buf2 _1269_ _1121_ vdd gnd OAI21X1
XFILL_0__2375_ gnd vdd FILL
X_4481_ _1511_ _1577_ _1578_ _1499_ vdd gnd OAI21X1
X_4061_ \u_cpu.bufreg.i_en_bF$buf1\ \u_cpu.bufreg.data\[27] _929_ vdd gnd NAND2X1
XFILL_0__4101_ gnd vdd FILL
X_3752_ _165_ _189_ _191_ _136_ vdd gnd AOI21X1
X_3332_ _9_ _1821_ _1820_ vdd gnd NOR2X1
X_4537_ \u_cpu.immdec.gen_immdec_w_eq_1.imm11_7\[4] _1887_ vdd gnd INVX1
X_4117_ _868_ clk_sys_bF$buf38 \u_cpu.bufreg.data\[3] vdd gnd DFFPOSX1
XFILL_1__4279_ gnd vdd FILL
XFILL_0__2184_ gnd vdd FILL
X_4290_ _1254_ _1164__bF$buf3 _1256_ _1116_ vdd gnd OAI21X1
X_2603_ \u_mem_serial.active_ibus_bF$buf5\ \u_cpu.bufreg.data\[7] _813_ vdd gnd NOR2X1
XFILL_0__3389_ gnd vdd FILL
XFILL_0__4330_ gnd vdd FILL
X_3808_ \u_cpu.decode.opcode\[0] \u_cpu.bufreg.i_imm_en\ _397_ _398_ vdd gnd OAI21X1
X_3981_ _639_ clk_sys_bF$buf31 \u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20\[0] vdd gnd DFFPOSX1
X_3561_ _461_ _484__bF$buf2 _460_ \u_rf_if.o_waddr\[4] vdd gnd OAI21X1
X_3141_ _1677_ _1678_ rst_bF$buf8 _551_ vdd gnd AOI21X1
X_4766_ _2038_ _1975_ _1862_ vdd gnd NOR2X1
X_4346_ _1104_ clk_sys_bF$buf37 \u_cpu.bufreg2.dlo\[1] vdd gnd DFFPOSX1
XFILL_0__3601_ gnd vdd FILL
X_2832_ _544_ clk_sys_bF$buf18 \u_rf_if.read_buf0\[20] vdd gnd DFFPOSX1
X_2412_ \u_mem_serial.bit_count\[4] _852_ _1298_ vdd gnd NOR2X1
X_3617_ \u_cpu.bufreg2.i_bytecnt\[0] _2083_ vdd gnd INVX1
X_3790_ \u_cpu.decode.co_mem_word\ _387_ _388_ vdd gnd NOR2X1
X_3370_ \u_rf_if.issue_sel_bF$buf1\ \u_rf_if.rreg1_latched\[2] _2103_ vdd gnd NOR2X1
X_4575_ _1877__bF$buf4 _1914_ _1915_ \u_cpu.decode.i_wb_rdt\[20] vdd gnd OAI21X1
X_4155_ _1138_ _1139_ _1143_ vdd gnd AND2X2
XFILL_0__3830_ gnd vdd FILL
X_2641_ _57_ i_clk_fast_bF$buf0 \u_rf_serial.last_req_key\[7] vdd gnd DFFPOSX1
X_2221_ _1448_ _1449_ rst_bF$buf1 _786_ vdd gnd AOI21X1
X_3846_ _792_ i_clk_fast_bF$buf0 _2158_ vdd gnd DFFPOSX1
X_3426_ _44_ _43_ rf_ready vdd gnd NAND2X1
X_3006_ _1584_ _1583_ _1692_ _508_ vdd gnd AOI21X1
XFILL_1__3168_ gnd vdd FILL
XFILL_0__2278_ gnd vdd FILL
X_4384_ _1501_ _1504_ _1514_ _1515_ vdd gnd NAND3X1
XFILL_0__4424_ gnd vdd FILL
XFILL_1__2439_ gnd vdd FILL
X_2870_ _589_ clk_sys_bF$buf2 \u_rf_if.read_buf1\[16] vdd gnd DFFPOSX1
X_2450_ \u_cpu.bufreg2.dlo\[7] _795_ _845_ \u_cpu.bufreg2.dlo\[5] _1068_ vdd 
+ gnd
+ AOI22X1
X_3655_ \u_cpu.alu.i_cmp_eq\ _2142_ vdd gnd INVX1
X_3235_ _1747_ _1748_ rst_bF$buf0 _575_ vdd gnd AOI21X1
X_4193_ mem_dbus_ack_bF$buf5 _1153_ _1177_ vdd gnd NOR2X1
X_2926_ _559_ clk_sys_bF$buf26 \u_rf_if.prefetch_active\ vdd gnd DFFPOSX1
X_2506_ _1010_ _1011_ _1008_ _1009_ _1012_ vdd 
+ gnd
+ OAI22X1
XFILL_0__4233_ gnd vdd FILL
XFILL_1__2668_ gnd vdd FILL
X_3884_ \u_cpu.decode.co_immdec_en\[1] _663_ vdd gnd INVX1
X_3464_ \u_rf_if.read_buf0\[12] \u_rf_if.stream_cnt_0_bF$buf2\ _322_ vdd gnd NOR2X1
X_3044_ rf_read_reg1_to_if[0] _1722_ _32__bF$buf3 _1609_ vdd gnd OAI21X1
X_4669_ _1976_ _1978_ vdd gnd INVX1
X_4249_ _1138_ _1213_ _1222_ _1223_ vdd gnd AOI21X1
X_2735_ \u_rf_serial.last_req_key\[6] _217_ vdd gnd INVX1
X_2315_ _1296_ _1379_ _1380_ vdd gnd NOR2X1
XFILL_0__4462_ gnd vdd FILL
XFILL_0__4042_ gnd vdd FILL
XFILL_1__2477_ gnd vdd FILL
XFILL_1__4203_ gnd vdd FILL
X_3693_ \u_cpu.bufreg.i_shift_op\ _153_ vdd gnd INVX1
X_3273_ _2154__bF$buf3 _2152__bF$buf1 _2088_ _1773_ vdd gnd NAND3X1
X_4478_ _1530__bF$buf3 _1575_ _1576_ _1498_ vdd gnd OAI21X1
X_4058_ \u_cpu.bufreg.data\[27] _892__bF$buf0 _927_ vdd gnd NAND2X1
XFILL_0__3313_ gnd vdd FILL
X_2964_ \u_rf_if.o_waddr\[0] _1729_ _615_ _493_ vdd gnd AOI21X1
X_2544_ \u_mem_serial.active_ibus_bF$buf2\ _971_ _972_ _973_ vdd gnd OAI21X1
XFILL_0__4271_ gnd vdd FILL
X_3749_ _169_ _190_ rst_bF$buf1 _134_ vdd gnd AOI21X1
X_3329_ _8_ _1_ _1817_ vdd gnd NOR2X1
X_3082_ \u_rf_if.issue_sel_bF$buf1\ _1636_ _1635_ vdd gnd NAND2X1
X_4287_ \u_cpu.bufreg2.dlo\[19] _1254_ vdd gnd INVX1
X_2773_ _97_ _125_ _126_ vdd gnd NAND2X1
X_2353_ _1316__bF$buf4 _1304__bF$buf2 \u_mem_serial.shift_rx\[6] _1349_ vdd gnd OAI21X1
XFILL_0__4080_ gnd vdd FILL
X_3978_ _661_ \u_cpu.immdec.gen_immdec_w_eq_1.imm11_7\[1] _670_ _732_ vdd gnd AOI21X1
X_3558_ _459_ _484__bF$buf1 _458_ \u_rf_if.o_wen\ vdd gnd OAI21X1
X_3138_ _1675_ _1676_ rst_bF$buf2 _550_ vdd gnd AOI21X1
XFILL_0__2813_ gnd vdd FILL
XFILL_1__4241_ gnd vdd FILL
X_4096_ \u_cpu.bufreg.data\[31] _952_ _953_ vdd gnd NAND2X1
XFILL_0__3771_ gnd vdd FILL
XFILL_0__3351_ gnd vdd FILL
X_2829_ _492_ clk_sys_bF$buf41 \u_rf_if.wdata1_phase\[0] vdd gnd DFFPOSX1
X_2409_ _1300_ _1299_ _1301_ vdd gnd NOR2X1
XFILL_0__4556_ gnd vdd FILL
XFILL_1__3932_ gnd vdd FILL
X_2582_ _831_ _833_ _834_ vdd gnd NAND2X1
X_3787_ \u_cpu.bufreg2.i_op_b_sel\ _385_ vdd gnd INVX1
X_3367_ rdata[0] _2101_ _2100_ vdd gnd NAND2X1
XFILL_0__2622_ gnd vdd FILL
XFILL_0__2202_ gnd vdd FILL
XFILL_0__3827_ gnd vdd FILL
X_2638_ _52_ i_clk_fast_bF$buf3 \u_rf_serial.tx_state\[4] vdd gnd DFFPOSX1
X_2218_ _1451_ _1450_ mem_ibus_ack_bF$buf4 _1452_ vdd gnd OAI21X1
X_2391_ _1318_ _1319_ vdd gnd INVX1
XFILL_1__4106_ gnd vdd FILL
X_3596_ _640_ clk_sys_bF$buf23 \u_cpu.immdec.gen_immdec_w_eq_1.imm30_25\[4] vdd gnd DFFPOSX1
X_3176_ \u_rf_if.write_wait\[3] _1703_ _1702_ vdd gnd NOR2X1
XFILL_0__3636_ gnd vdd FILL
XFILL_0__3216_ gnd vdd FILL
X_2867_ _534_ clk_sys_bF$buf35 \u_rf_if.read_buf0\[11] vdd gnd DFFPOSX1
X_2447_ \u_cpu.bufreg2.dlo\[11] _795_ _1048_ \u_cpu.bufreg2.dlo\[10] _1071_ vdd 
+ gnd
+ AOI22X1
XFILL_0__4594_ gnd vdd FILL
XFILL_0__4174_ gnd vdd FILL
XFILL_1__3970_ gnd vdd FILL
XFILL_1__3130_ gnd vdd FILL
XFILL_0__2240_ gnd vdd FILL
XFILL_1__2401_ gnd vdd FILL
X_2676_ ren_bF$buf3 raddr[7] _270_ vdd gnd NAND2X1
X_2256_ _1414_ _1302_ _1425_ vdd gnd NOR2X1
XFILL_0__2716_ gnd vdd FILL
X_4822_ i_rst_n_bF$buf2 vdd _1844_ clk_sys_bF$buf36 ibus_pending_rdt[11] vdd 
+ gnd
+ DFFSR
X_4402_ rst_bF$buf7 \u_cpu.ctrl.i_pc_en\ _1530_ vdd gnd NOR2X1
XFILL_0__3254_ gnd vdd FILL
XFILL_1__3415_ gnd vdd FILL
X_2485_ \u_mem_serial.active_ibus_bF$buf3\ \u_cpu.ctrl.o_ibus_adr\[21] _1033_ vdd gnd NAND2X1
XFILL_0__2525_ gnd vdd FILL
X_4631_ \u_mem_serial.shift_rx\[7] _1877__bF$buf4 _1953_ vdd gnd NAND2X1
X_4211_ _1188_ _1164__bF$buf0 _1190_ _1103_ vdd gnd OAI21X1
X_3902_ _677_ _678_ rf_rreq_bF$buf7 _679_ vdd gnd AOI21X1
XFILL_0__4268_ gnd vdd FILL
X_2294_ _1397_ _1398_ vdd gnd INVX1
X_3499_ \u_rf_if.stream_cnt_0_bF$buf0\ _360_ _357_ _356_ vdd gnd OAI21X1
X_3079_ _1697_ _1634_ _1633_ _531_ vdd gnd AOI21X1
XFILL_0__2754_ gnd vdd FILL
X_4440_ _1551_ _1531_ _1549_ _1535_ _1485_ vdd 
+ gnd
+ OAI22X1
X_4020_ \u_cpu.bufreg.data\[10] _902_ vdd gnd INVX1
XFILL_0__3959_ gnd vdd FILL
XFILL_0__3539_ gnd vdd FILL
XFILL_0__3119_ gnd vdd FILL
XFILL_0__3292_ gnd vdd FILL
X_3711_ _767_ i_clk_fast_bF$buf1 \u_mem_serial.bit_count\[5] vdd gnd DFFPOSX1
XFILL_1__3453_ gnd vdd FILL
XFILL_1__4658_ gnd vdd FILL
XFILL_0__2563_ gnd vdd FILL
XFILL_0__3768_ gnd vdd FILL
XFILL144750x97350 gnd vdd FILL
X_2999_ \u_rf_if.i_rreq\ \u_rf_if.rreg0_latched\[3] _745_ vdd gnd NOR2X1
X_2579_ \u_mem_serial.active_ibus_bF$buf2\ \u_cpu.bufreg.data\[15] _837_ vdd gnd NOR2X1
X_3940_ \u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20\[0] _665__bF$buf3 _707_ vdd gnd NAND2X1
X_3520_ \u_rf_if.read_buf1\[7] _445_ \u_rf_if.stream_cnt_0_bF$buf4\ _422_ vdd gnd OAI21X1
X_3100_ _1717__bF$buf0 _1775_ \u_rf_if.read_buf0\[13] _1647_ vdd gnd OAI21X1
X_4725_ mem_ibus_ack_bF$buf1 \u_mem_serial.shift_rx\[8] _1984__bF$buf4 _2013_ vdd gnd NAND3X1
X_4305_ _1265_ _1164__bF$buf1 _1267_ _1120_ vdd gnd OAI21X1
XFILL_0__2792_ gnd vdd FILL
XFILL_0__3577_ gnd vdd FILL
XFILL_0__3157_ gnd vdd FILL
XFILL_1__3738_ gnd vdd FILL
X_2388_ _1316__bF$buf4 _1304__bF$buf2 \u_mem_serial.shift_rx\[13] _1321_ vdd gnd OAI21X1
XFILL_0__2428_ gnd vdd FILL
X_4534_ \u_mem_serial.shift_rx\[16] _1877__bF$buf3 _1885_ vdd gnd NAND2X1
X_4114_ _871_ clk_sys_bF$buf0 \u_cpu.bufreg.data\[29] vdd gnd DFFPOSX1
XFILL_1__3491_ gnd vdd FILL
XFILL_1__4696_ gnd vdd FILL
X_2600_ \u_cpu.ctrl.o_ibus_adr\[4] \u_cpu.bufreg.data\[4] \u_mem_serial.active_ibus_bF$buf6\ _816_ vdd gnd MUX2X1
X_3805_ _395_ \u_cpu.csr_imm_en\ vdd gnd INVX1
X_2197_ _773_ i_clk_fast_bF$buf1 \u_mem_serial.bit_count\[0] vdd gnd DFFPOSX1
XFILL_0__2657_ gnd vdd FILL
X_4763_ mem_ibus_ack_bF$buf3 \u_mem_serial.shift_rx\[31] _1984__bF$buf3 _2037_ vdd gnd NAND3X1
X_4343_ _1107_ clk_sys_bF$buf37 \u_cpu.bufreg2.dhi\[5] vdd gnd DFFPOSX1
XFILL_0__3195_ gnd vdd FILL
X_3614_ \u_cpu.bufreg2.i_bytecnt\[0] _2079_ _2080_ vdd gnd NAND2X1
X_4819_ i_rst_n_bF$buf0 vdd _1847_ clk_sys_bF$buf14 ibus_pending_rdt[8] vdd 
+ gnd
+ DFFSR
XFILL_0__2466_ gnd vdd FILL
X_4572_ _1912_ rf_rreq_bF$buf5 _1913_ rf_read_reg1_to_if[2] vdd gnd OAI21X1
X_4152_ _1137_ _1138_ _1139_ _1140_ vdd gnd NAND3X1
X_3843_ rf_rreq_bF$buf7 \u_cpu.decode.co_mem_signed\ _410_ _362_ vdd gnd OAI21X1
X_3423_ _446__bF$buf1 _445_ _40_ vdd gnd NOR2X1
X_3003_ _1468_ _1467_ _1692_ _507_ vdd gnd AOI21X1
X_4628_ \u_mem_serial.shift_rx\[8] _1877__bF$buf0 _1951_ vdd gnd NAND2X1
X_4208_ \u_cpu.bufreg2.dlo\[2] _1188_ vdd gnd INVX1
XFILL_0__2695_ gnd vdd FILL
X_4381_ \u_cpu.alu.i_buf\ _1512_ vdd gnd INVX1
X_3652_ _2138_ _2136_ _2139_ vdd gnd NAND2X1
X_3232_ _1745_ _1746_ rst_bF$buf0 _574_ vdd gnd AOI21X1
X_4437_ \u_cpu.ctrl.o_ibus_adr\[31] _1532_ _1550_ vdd gnd NAND2X1
X_4017_ \u_cpu.bufreg.data\[12] _900_ vdd gnd INVX1
X_4190_ mem_dbus_ack_bF$buf5 \u_mem_serial.shift_rx\[7] _1172__bF$buf0 _1174_ _1175_ vdd 
+ gnd
+ AOI22X1
X_2923_ _487_ clk_sys_bF$buf27 \u_rf_if.rcnt\[0] vdd gnd DFFPOSX1
X_2503_ \u_mem_serial.active_ibus_bF$buf5\ _1013_ _1014_ _1015_ vdd gnd OAI21X1
XFILL_0__4230_ gnd vdd FILL
X_3708_ \u_cpu.state.o_cnt\[2] _165_ vdd gnd INVX2
X_3881_ _659_ _658_ rf_rreq_bF$buf7 _660_ vdd gnd AOI21X1
X_3461_ \u_rf_if.read_buf0\[14] \u_rf_if.stream_cnt_0_bF$buf3\ \u_rf_if.stream_cnt_1_bF$buf1\ _319_ vdd gnd OAI21X1
X_3041_ _1623_ _1608_ _1607_ vdd gnd OR2X2
X_4666_ clk_div[0] clk_div[1] _1975_ vdd gnd AND2X2
X_4246_ _1218_ _1220_ _1212_ _1108_ vdd gnd OAI21X1
XFILL_0__3921_ gnd vdd FILL
XFILL_0__3501_ gnd vdd FILL
XFILL_0__4706_ gnd vdd FILL
X_2732_ \u_rf_serial.last_req_key\[5] _219_ vdd gnd INVX1
X_2312_ _1313_ _1382_ _1383_ vdd gnd NOR2X1
XFILL_0__3098_ gnd vdd FILL
X_3937_ _665__bF$buf3 _703_ _704_ _638_ vdd gnd OAI21X1
X_3517_ _440_ _434_ _420_ _427_ _419_ vdd 
+ gnd
+ OAI22X1
XFILL_1__3679_ gnd vdd FILL
XFILL_1__3259_ gnd vdd FILL
XFILL_1__4620_ gnd vdd FILL
X_3690_ \u_cpu.bufreg.i_right_shift_op\ _150_ vdd gnd INVX1
X_3270_ _2154__bF$buf1 _2152__bF$buf2 _2068_ _1771_ vdd gnd NAND3X1
XFILL_0__2369_ gnd vdd FILL
X_4475_ \u_cpu.ctrl.o_ibus_adr\[6] _1553_ _1575_ vdd gnd NAND2X1
X_4055_ \u_cpu.bufreg.data\[28] _925_ vdd gnd INVX1
XFILL_0__3730_ gnd vdd FILL
X_2961_ rst_bF$buf5 _475_ _490_ vdd gnd NOR2X1
X_2541_ _963_ _975_ _853_ _976_ vdd gnd OAI21X1
X_3746_ _188_ _187_ rst_bF$buf7 _133_ vdd gnd AOI21X1
X_3326_ _1815_ _1818_ rst_bF$buf8 _598_ vdd gnd AOI21X1
XFILL_0__2178_ gnd vdd FILL
X_4284_ mem_dbus_ack_bF$buf0 _1248_ _1252_ vdd gnd NOR2X1
XFILL_0__4744_ gnd vdd FILL
XFILL_1__2759_ gnd vdd FILL
X_2770_ ren_bF$buf2 _127_ _164_ _167_ vdd gnd OAI21X1
X_2350_ _1315__bF$buf1 _1351_ _1303__bF$buf2 _1352_ vdd gnd NAND3X1
X_3975_ \u_cpu.decode.i_wb_rdt\[8] \u_cpu.immdec.gen_immdec_w_eq_1.imm11_7\[2] rf_rreq_bF$buf2 _730_ vdd gnd MUX2X1
X_3555_ \u_rf_if.wdata0_next\[0] _476_ _456_ _455_ vdd gnd OAI21X1
X_3135_ _1673_ _1674_ rst_bF$buf8 _549_ vdd gnd AOI21X1
XFILL_1__3297_ gnd vdd FILL
X_4093_ _892__bF$buf1 _948_ _950_ _885_ vdd gnd OAI21X1
X_2826_ raddr[7] raddr[6] _75_ vdd gnd NOR2X1
X_2406_ _1303__bF$buf1 _1304_ vdd gnd INVX8
XCLKBUF1_insert245 clk_sys clk_sys_hier0_bF$buf5 vdd gnd CLKBUF1
XCLKBUF1_insert246 clk_sys clk_sys_hier0_bF$buf4 vdd gnd CLKBUF1
XCLKBUF1_insert247 clk_sys clk_sys_hier0_bF$buf3 vdd gnd CLKBUF1
XCLKBUF1_insert248 clk_sys clk_sys_hier0_bF$buf2 vdd gnd CLKBUF1
XCLKBUF1_insert249 clk_sys clk_sys_hier0_bF$buf1 vdd gnd CLKBUF1
X_3784_ \u_cpu.bufreg.i_right_shift_op\ _372_ \u_cpu.state.i_alu_rd_sel1\ vdd gnd NOR2X1
X_3364_ _2098_ _2155_ rst_bF$buf2 _603_ vdd gnd AOI21X1
X_4569_ _1877__bF$buf5 _1910_ _1911_ \u_cpu.decode.i_wb_rdt\[22] vdd gnd OAI21X1
X_4149_ \u_cpu.bufreg2.dhi\[4] _1137_ vdd gnd INVX1
XFILL_0__3404_ gnd vdd FILL
XFILL_0__4609_ gnd vdd FILL
X_2635_ _54_ i_clk_fast_bF$buf5 \u_rf_serial.shift_rx\[0] vdd gnd DFFPOSX1
X_2215_ _1316__bF$buf1 _1304__bF$buf0 \u_mem_serial.shift_rx\[19] _1454_ vdd gnd OAI21X1
XFILL_0__4782_ gnd vdd FILL
XFILL_1__2797_ gnd vdd FILL
X_3593_ _36_ _37_ \u_cpu.o_wdata0\ vdd gnd NAND2X1
X_3173_ _1707_ _1700_ _44_ _1699_ vdd gnd OAI21X1
XFILL144150x32550 gnd vdd FILL
X_4798_ _1886_ _2057_ _1892_ _1875_ vdd gnd OAI21X1
X_4378_ _1505_ _1508_ \u_cpu.alu.i_cnt0\ _1509_ vdd gnd AOI21X1
XFILL_0__4418_ gnd vdd FILL
X_2864_ _592_ clk_sys_bF$buf10 \u_rf_if.read_buf1\[19] vdd gnd DFFPOSX1
X_2444_ _845_ \u_cpu.bufreg2.dlo\[13] \u_cpu.bufreg2.dlo\[14] _1048_ _1074_ vdd 
+ gnd
+ AOI22X1
XFILL_0__4171_ gnd vdd FILL
X_3649_ _2119_ _2114_ _2121_ _2136_ vdd gnd AOI21X1
X_3229_ _1796_ _10__bF$buf1 _1742_ vdd gnd NOR2X1
XFILL_1__4332_ gnd vdd FILL
X_4187_ _1168_ _1171_ _1161_ _1172_ vdd gnd AOI21X1
XFILL_0__3442_ gnd vdd FILL
XFILL_0__3022_ gnd vdd FILL
XFILL_0__4647_ gnd vdd FILL
X_2673_ \u_rf_serial.last_req_key\[0] _197_ _273_ vdd gnd NAND2X1
X_2253_ _1316__bF$buf2 _1304__bF$buf1 \u_mem_serial.shift_rx\[25] _1427_ vdd gnd OAI21X1
X_3878_ rf_rreq_bF$buf6 _654_ _657_ _626_ vdd gnd OAI21X1
X_3458_ _448_ _323_ _317_ _316_ vdd gnd AOI21X1
X_3038_ _1606_ _1624_ _1605_ vdd gnd NAND2X1
XFILL_0__3671_ gnd vdd FILL
X_2729_ _219_ _215__bF$buf3 _221_ _59_ vdd gnd AOI21X1
X_2309_ _1385_ _1386_ vdd gnd INVX1
XFILL_0__4456_ gnd vdd FILL
XFILL_0__4036_ gnd vdd FILL
X_2482_ \u_cpu.bufreg.data\[20] _1036_ vdd gnd INVX1
X_3687_ \u_cpu.state.init_done\ \u_cpu.dbus_en\ _144_ _148_ vdd gnd NAND3X1
X_3267_ _18__bF$buf0 _1770_ \u_rf_if.read_buf1\[11] _1769_ vdd gnd OAI21X1
XFILL_0__3727_ gnd vdd FILL
XFILL_0__3307_ gnd vdd FILL
XFILL_0__3480_ gnd vdd FILL
XFILL_0__3060_ gnd vdd FILL
X_2958_ \u_rf_if.i_rreq\ _1730_ _613_ vdd gnd NOR2X1
X_2538_ \u_cpu.ctrl.o_ibus_adr\[30] _979_ vdd gnd INVX1
XFILL_0__4685_ gnd vdd FILL
XFILL_1__3221_ gnd vdd FILL
X_2291_ _1316__bF$buf1 _1304__bF$buf0 \u_mem_serial.shift_rx\[27] _1400_ vdd gnd OAI21X1
X_3496_ \u_rf_if.stream_cnt_0_bF$buf0\ _355_ _354_ _353_ vdd gnd OAI21X1
X_3076_ _1631_ _1632_ rst_bF$buf8 _530_ vdd gnd AOI21X1
XFILL_0__2331_ gnd vdd FILL
X_2767_ \u_rf_if.o_wdata\[1] _105_ _193_ vdd gnd NAND2X1
X_2347_ \u_mem_serial.shift_rx\[4] _1297__bF$buf3 _1354_ vdd gnd NAND2X1
XFILL_0__4074_ gnd vdd FILL
XFILL_0__2807_ gnd vdd FILL
XFILL_0__2980_ gnd vdd FILL
XFILL_0__3345_ gnd vdd FILL
XFILL_1__2721_ gnd vdd FILL
XFILL_1__3506_ gnd vdd FILL
X_2996_ \u_rf_if.i_rreq\ \u_rf_if.rreg0_latched\[2] _743_ vdd gnd NOR2X1
X_2576_ \u_mem_serial.bit_count\[1] _798_ _840_ vdd gnd NOR2X1
XFILL_0__2616_ gnd vdd FILL
X_4722_ _1946_ _1983__bF$buf3 _2011_ _1845_ vdd gnd OAI21X1
X_4302_ \u_cpu.bufreg2.dlo\[15] _1265_ vdd gnd INVX1
XCLKBUF1_insert80 clk_sys_hier0_bF$buf1 clk_sys_bF$buf5 vdd gnd CLKBUF1
XCLKBUF1_insert81 clk_sys_hier0_bF$buf1 clk_sys_bF$buf4 vdd gnd CLKBUF1
XCLKBUF1_insert82 clk_sys_hier0_bF$buf3 clk_sys_bF$buf3 vdd gnd CLKBUF1
XCLKBUF1_insert83 clk_sys_hier0_bF$buf0 clk_sys_bF$buf2 vdd gnd CLKBUF1
XCLKBUF1_insert84 clk_sys_hier0_bF$buf4 clk_sys_bF$buf1 vdd gnd CLKBUF1
XCLKBUF1_insert85 clk_sys_hier0_bF$buf5 clk_sys_bF$buf0 vdd gnd CLKBUF1
X_2385_ _1315__bF$buf0 _1323_ _1303__bF$buf3 _1324_ vdd gnd NAND3X1
X_4531_ ibus_pending_rdt[3] \u_mem_serial.shift_rx\[3] ibus_pending_ack_bF$buf0 _1883_ vdd gnd MUX2X1
X_4111_ _874_ clk_sys_bF$buf0 \u_cpu.bufreg.data\[27] vdd gnd DFFPOSX1
XFILL_0__3383_ gnd vdd FILL
X_3802_ _790_ i_clk_fast_bF$buf6 \u_mem_serial.shift_rx\[17] vdd gnd DFFPOSX1
XFILL_0__4588_ gnd vdd FILL
XFILL_1__3544_ gnd vdd FILL
X_2194_ _750_ i_clk_fast_bF$buf2 \u_mem_serial.shift_rx\[11] vdd gnd DFFPOSX1
XFILL_1__4749_ gnd vdd FILL
X_3399_ \u_rf_if.issue_sel_bF$buf3\ \u_rf_if.issue_chunk\[0] _14_ vdd gnd NAND2X1
XFILL_0__2234_ gnd vdd FILL
X_4760_ _1917_ _2034_ _2035_ _1859_ vdd gnd NAND3X1
X_4340_ _1110_ clk_sys_bF$buf37 \u_cpu.bufreg.i_shamt\[2] vdd gnd DFFPOSX1
XFILL_0__3859_ gnd vdd FILL
X_3611_ \u_cpu.bufreg2.i_bytecnt\[1] _2077_ vdd gnd INVX1
XFILL_0__4397_ gnd vdd FILL
XFILL_1_BUFX2_insert240 gnd vdd FILL
XFILL_1_BUFX2_insert244 gnd vdd FILL
X_4816_ i_rst_n_bF$buf2 vdd _1850_ clk_sys_bF$buf36 ibus_pending_rdt[5] vdd 
+ gnd
+ DFFSR
XFILL_0__3248_ gnd vdd FILL
XFILL_1__2204_ gnd vdd FILL
X_2899_ _573_ clk_sys_bF$buf40 \u_rf_if.read_buf1\[3] vdd gnd DFFPOSX1
X_2479_ _1038_ _840_ _1039_ vdd gnd NAND2X1
X_3840_ _775_ i_clk_fast_bF$buf1 \u_mem_serial.bit_count\[6] vdd gnd DFFPOSX1
X_3420_ rst_bF$buf7 _32_ vdd gnd INVX8
X_3000_ _1466_ _746_ _1692_ _506_ vdd gnd AOI21X1
XFILL_0__2519_ gnd vdd FILL
X_4625_ \u_mem_serial.shift_rx\[9] _1877__bF$buf2 _1949_ vdd gnd NAND2X1
X_4205_ mem_dbus_ack_bF$buf5 _1182_ _1186_ vdd gnd NOR2X1
XFILL_1__3582_ gnd vdd FILL
XFILL_1__4787_ gnd vdd FILL
XFILL_0__2272_ gnd vdd FILL
XFILL_1__3218_ gnd vdd FILL
X_2288_ _1315__bF$buf3 _1402_ _1303__bF$buf1 _1403_ vdd gnd NAND3X1
XFILL_0__2748_ gnd vdd FILL
X_4434_ _1539_ _1531_ _1540_ _1535_ _1482_ vdd 
+ gnd
+ OAI22X1
X_4014_ _896_ _897_ _898_ vdd gnd NAND2X1
XFILL_1__4176_ gnd vdd FILL
X_2920_ _562_ clk_sys_bF$buf18 \u_rf_if.read_buf0\[29] vdd gnd DFFPOSX1
X_2500_ \u_mem_serial.active_ibus_bF$buf5\ \u_cpu.ctrl.o_ibus_adr\[17] _1018_ vdd gnd NAND2X1
XFILL_0__3286_ gnd vdd FILL
X_3705_ \u_cpu.bufreg2.i_bytecnt\[1] _163_ vdd gnd INVX2
XFILL_1__2242_ gnd vdd FILL
XFILL_0__2557_ gnd vdd FILL
X_4663_ rreg0[4] rf_rreq_bF$buf4 _1895__bF$buf2 _1973_ vdd gnd NAND3X1
X_4243_ _1216_ _1217_ mem_dbus_ack_bF$buf4 _1218_ vdd gnd AOI21X1
XFILL_1__2718_ gnd vdd FILL
X_3934_ _665__bF$buf2 _701_ _702_ _637_ vdd gnd OAI21X1
X_3514_ \u_rf_if.read_buf1\[25] \u_rf_if.stream_cnt_0_bF$buf1\ _408_ vdd gnd NAND2X1
X_4719_ mem_ibus_ack_bF$buf0 \u_mem_serial.shift_rx\[11] _1984__bF$buf1 _2010_ vdd gnd NAND3X1
XFILL_1__3256_ gnd vdd FILL
XFILL_0__2786_ gnd vdd FILL
X_4472_ \u_cpu.ctrl.o_ibus_adr\[7] _1530__bF$buf1 _1573_ vdd gnd NAND2X1
X_4052_ _892__bF$buf0 _922_ _923_ _871_ vdd gnd OAI21X1
XFILL_1__2527_ gnd vdd FILL
X_3743_ _184_ _186_ _185_ _132_ vdd gnd OAI21X1
X_3323_ _2154__bF$buf0 _10__bF$buf1 _1813_ _1812_ vdd gnd NAND3X1
XFILL_1__2280_ gnd vdd FILL
X_4528_ ibus_pending_rdt[2] _1881_ vdd gnd INVX1
X_4108_ \u_cpu.bufreg.i_en_bF$buf3\ \u_cpu.bufreg.data\[13] _960_ vdd gnd NAND2X1
XFILL_0__2595_ gnd vdd FILL
XFILL_0__2175_ gnd vdd FILL
X_4281_ mem_dbus_ack_bF$buf1 \u_mem_serial.shift_rx\[21] _1172__bF$buf3 _1249_ _1250_ vdd 
+ gnd
+ AOI22X1
XFILL_0__4321_ gnd vdd FILL
XFILL_1__2756_ gnd vdd FILL
X_3972_ \u_cpu.decode.i_wb_rdt\[9] \u_cpu.immdec.gen_immdec_w_eq_1.imm11_7\[3] rf_rreq_bF$buf2 _728_ vdd gnd MUX2X1
X_3552_ _453_ _483_ _452_ vdd gnd NAND2X1
X_3132_ _1672_ _1671_ rst_bF$buf6 _548_ vdd gnd AOI21X1
X_4757_ _1921_ _2032_ _2033_ _1858_ vdd gnd NAND3X1
X_4337_ mem_dbus_ack_bF$buf2 \u_mem_serial.shift_rx\[8] _1172__bF$buf0 _1290_ _1291_ vdd 
+ gnd
+ AOI22X1
XFILL_1__3294_ gnd vdd FILL
X_4090_ \u_cpu.bufreg.i_en_bF$buf0\ \u_cpu.bufreg.data\[19] _949_ vdd gnd NAND2X1
X_2823_ _76_ \u_rf_serial.shift_rx\[1] rdata[1] vdd gnd AND2X2
X_2403_ _1306_ _1307_ vdd gnd INVX1
XFILL_0__3189_ gnd vdd FILL
XFILL_0__4550_ gnd vdd FILL
X_3608_ \u_cpu.bufreg.data\[0] _2075_ _2073_ \u_cpu.mem_if.o_wb_sel\[2] vdd gnd OAI21X1
XFILL_1__2565_ gnd vdd FILL
XFILL_1__4711_ gnd vdd FILL
X_3781_ _761_ i_clk_fast_bF$buf6 \u_mem_serial.shift_rx\[0] vdd gnd DFFPOSX1
X_3361_ _13_ _2096_ _2095_ vdd gnd NOR2X1
X_4566_ _1877__bF$buf0 _1908_ _1909_ \u_cpu.decode.i_wb_rdt\[18] vdd gnd OAI21X1
X_4146_ _1130_ _1133_ _1131_ _1134_ vdd gnd OAI21X1
XFILL_0__3821_ gnd vdd FILL
X_2632_ _69_ i_clk_fast_bF$buf5 \u_rf_serial.last_req_key\[0] vdd gnd DFFPOSX1
X_2212_ _1316__bF$buf1 _1304__bF$buf0 \u_mem_serial.shift_rx\[18] _1456_ vdd gnd OAI21X1
X_3837_ rf_rreq_bF$buf1 _371_ _407_ _359_ vdd gnd OAI21X1
X_3417_ \u_rf_if.stream_cnt_1_bF$buf1\ _42_ _30_ vdd gnd NAND2X1
XFILL_1__2794_ gnd vdd FILL
XFILL_1__3579_ gnd vdd FILL
X_3590_ \u_rf_if.rcnt\[0] _485_ _484_ vdd gnd NAND2X1
X_3170_ \u_rf_if.issue_idx\[5] _1698_ _1697_ vdd gnd NOR2X1
XFILL_0__2689_ gnd vdd FILL
X_4795_ \u_rf_if.o_waddr\[0] \u_rf_if.o_waddr\[1] _2055_ vdd gnd NAND2X1
X_4375_ \u_cpu.ctrl.i_utype\ _1506_ vdd gnd INVX1
XFILL_0__3630_ gnd vdd FILL
XFILL_0__3210_ gnd vdd FILL
X_2861_ _497_ clk_sys_bF$buf24 \u_rf_if.write_wait\[0] vdd gnd DFFPOSX1
X_2441_ _1073_ _1076_ _803_ _1077_ vdd gnd AOI21X1
X_3646_ _2133_ \u_cpu.bufreg.i_right_shift_op\ \u_cpu.alu.i_buf\ _2134_ vdd gnd AOI21X1
X_3226_ _18__bF$buf0 _1744_ \u_rf_if.read_buf1\[2] _1740_ vdd gnd OAI21X1
XFILL_0__2498_ gnd vdd FILL
X_4184_ \u_cpu.bufreg2.i_bytecnt\[1] _1169_ vdd gnd INVX1
X_2917_ _522_ clk_sys_bF$buf12 \u_rf_if.read_buf0\[2] vdd gnd DFFPOSX1
XFILL_0__4224_ gnd vdd FILL
X_2670_ \u_rf_serial.last_req_key\[6] _94_ _276_ vdd gnd NAND2X1
X_2250_ _1316__bF$buf0 _1304__bF$buf1 \u_mem_serial.shift_rx\[31] _1429_ vdd gnd OAI21X1
X_3875_ \u_cpu.bufreg.i_cnt_done\ _655_ _656_ vdd gnd NAND2X1
X_3455_ \u_rf_if.read_buf0\[25] _446__bF$buf2 _445_ _313_ vdd gnd OAI21X1
X_3035_ \u_rf_if.issue_sel_bF$buf2\ _1604_ _1603_ vdd gnd NAND2X1
XFILL_0__2710_ gnd vdd FILL
XFILL_0__3915_ gnd vdd FILL
X_2726_ _222_ _215__bF$buf2 _223_ _60_ vdd gnd AOI21X1
X_2306_ _1316__bF$buf0 _1304__bF$buf4 \u_mem_serial.shift_rx\[30] _1388_ vdd gnd OAI21X1
X_3684_ \u_cpu.bufreg2.o_sh_done\ \u_cpu.bufreg.i_right_shift_op\ _146_ _147_ vdd gnd OAI21X1
X_3264_ _1769_ _1767_ rst_bF$buf8 _584_ vdd gnd AOI21X1
X_4469_ \u_cpu.ctrl.o_ibus_adr\[8] _1530__bF$buf4 _1571_ vdd gnd NAND2X1
X_4049_ _916_ _920_ _921_ _870_ vdd gnd OAI21X1
X_2955_ \u_rf_if.rcnt\[0] _611_ vdd gnd INVX1
X_2535_ \u_mem_serial.bit_count_0_bF$buf3\ _981_ _980_ _982_ vdd gnd NAND3X1
XFILL_0__4262_ gnd vdd FILL
X_3493_ \u_rf_if.read_buf1\[21] _446__bF$buf0 _445_ _350_ vdd gnd OAI21X1
X_3073_ _1630_ _1629_ rst_bF$buf6 _529_ vdd gnd AOI21X1
X_4698_ _1996_ _1994_ \u_cpu.decode.i_wb_rdt\[2] _1997_ vdd gnd AOI21X1
X_4278_ _1244_ _1164__bF$buf2 _1247_ _1113_ vdd gnd OAI21X1
XFILL_0__3953_ gnd vdd FILL
XFILL_0__3533_ gnd vdd FILL
XFILL_0__3113_ gnd vdd FILL
XFILL_0__4738_ gnd vdd FILL
X_2764_ ren_bF$buf3 raddr[0] _196_ vdd gnd NAND2X1
X_2344_ _1353_ _1356_ rst_bF$buf4 _756_ vdd gnd AOI21X1
X_3969_ \u_cpu.decode.i_wb_rdt\[10] \u_cpu.immdec.gen_immdec_w_eq_1.imm11_7\[4] rf_rreq_bF$buf2 _726_ vdd gnd MUX2X1
X_3549_ _471_ _484__bF$buf2 _451_ \u_rf_if.o_waddr\[8] vdd gnd OAI21X1
X_3129_ _1670_ _1669_ rst_bF$buf6 _547_ vdd gnd AOI21X1
X_4087_ \u_cpu.bufreg.data\[19] _892__bF$buf4 _947_ vdd gnd NAND2X1
XFILL_1__3503_ gnd vdd FILL
X_2993_ \u_rf_if.i_rreq\ \u_rf_if.rreg0_latched\[1] _741_ vdd gnd NOR2X1
X_2573_ \u_mem_serial.active_ibus_bF$buf2\ _841_ _842_ _843_ vdd gnd OAI21X1
XFILL_1__4708_ gnd vdd FILL
X_3778_ _779_ i_clk_fast_bF$buf1 \u_mem_serial.req_pending\ vdd gnd DFFPOSX1
X_3358_ _21_ _14_ _7_ _2092_ vdd gnd AOI21X1
XCLKBUF1_insert50 clk_sys_hier0_bF$buf5 clk_sys_bF$buf35 vdd gnd CLKBUF1
XCLKBUF1_insert51 clk_sys_hier0_bF$buf4 clk_sys_bF$buf34 vdd gnd CLKBUF1
XCLKBUF1_insert52 clk_sys_hier0_bF$buf2 clk_sys_bF$buf33 vdd gnd CLKBUF1
XCLKBUF1_insert53 clk_sys_hier0_bF$buf4 clk_sys_bF$buf32 vdd gnd CLKBUF1
XCLKBUF1_insert54 clk_sys_hier0_bF$buf3 clk_sys_bF$buf31 vdd gnd CLKBUF1
XCLKBUF1_insert55 clk_sys_hier0_bF$buf4 clk_sys_bF$buf30 vdd gnd CLKBUF1
XCLKBUF1_insert56 clk_sys_hier0_bF$buf5 clk_sys_bF$buf29 vdd gnd CLKBUF1
XCLKBUF1_insert57 clk_sys_hier0_bF$buf1 clk_sys_bF$buf28 vdd gnd CLKBUF1
XCLKBUF1_insert58 clk_sys_hier0_bF$buf2 clk_sys_bF$buf27 vdd gnd CLKBUF1
XCLKBUF1_insert59 clk_sys_hier0_bF$buf0 clk_sys_bF$buf26 vdd gnd CLKBUF1
XFILL_0__3571_ gnd vdd FILL
XFILL_0__3151_ gnd vdd FILL
X_2629_ _71_ i_clk_fast_bF$buf5 \u_rf_serial.last_req_key\[8] vdd gnd DFFPOSX1
X_2209_ _1316__bF$buf1 _1304__bF$buf4 \u_mem_serial.shift_rx\[17] _1458_ vdd gnd OAI21X1
XFILL_0__4776_ gnd vdd FILL
X_2382_ \u_mem_serial.shift_rx\[11] _1297__bF$buf2 _1326_ vdd gnd NAND2X1
X_3587_ \u_rf_if.o_waddr\[0] _481_ vdd gnd INVX1
X_3167_ \u_rf_if.pending_read\ _1698_ _1694_ vdd gnd NAND2X1
XFILL_0__2422_ gnd vdd FILL
X_2858_ _595_ clk_sys_bF$buf24 \u_rf_if.read_buf1\[22] vdd gnd DFFPOSX1
X_2438_ _1079_ _1046_ _1080_ vdd gnd NOR2X1
XFILL_0__4165_ gnd vdd FILL
XFILL_1__3541_ gnd vdd FILL
X_2191_ _783_ i_clk_fast_bF$buf7 \u_mem_serial.shift_rx\[22] vdd gnd DFFPOSX1
XFILL_1__4746_ gnd vdd FILL
X_3396_ \u_rf_if.issue_chunk\[3] _12_ _20_ _23_ _11_ vdd 
+ gnd
+ AOI22X1
XFILL_0__2651_ gnd vdd FILL
XFILL_0__3856_ gnd vdd FILL
XFILL_0__3436_ gnd vdd FILL
XFILL_0__3016_ gnd vdd FILL
X_2667_ _227_ _123_ _279_ vdd gnd NAND2X1
X_2247_ \u_mem_serial.req_pending\ _1307_ _1431_ vdd gnd NAND2X1
XFILL_0__4394_ gnd vdd FILL
XFILL_1_BUFX2_insert210 gnd vdd FILL
XFILL_1_BUFX2_insert217 gnd vdd FILL
X_4813_ i_rst_n_bF$buf1 vdd _1853_ clk_sys_bF$buf5 ibus_pending_rdt[2] vdd 
+ gnd
+ DFFSR
XFILL144450x28950 gnd vdd FILL
XFILL_0__2460_ gnd vdd FILL
X_2896_ _495_ clk_sys_bF$buf44 \u_rf_if.o_waddr\[1] vdd gnd DFFPOSX1
X_2476_ _1022_ _1041_ _1007_ _1042_ vdd gnd OAI21X1
X_4622_ \u_mem_serial.shift_rx\[10] _1877__bF$buf2 _1947_ vdd gnd NAND2X1
X_4202_ mem_dbus_ack_bF$buf5 \u_mem_serial.shift_rx\[4] _1172__bF$buf1 _1183_ _1184_ vdd 
+ gnd
+ AOI22X1
XFILL_1__4784_ gnd vdd FILL
XFILL_0__3894_ gnd vdd FILL
XFILL_0__3474_ gnd vdd FILL
XFILL_0__3054_ gnd vdd FILL
XFILL_0__4679_ gnd vdd FILL
X_2285_ _1297__bF$buf1 _1046_ _1405_ vdd gnd NAND2X1
XFILL_0__2325_ gnd vdd FILL
X_4851_ i_rst_n_bF$buf2 vdd _1866_ clk_sys_bF$buf32 rf_read_reg0[1] vdd 
+ gnd
+ DFFSR
X_4431_ _1547_ _1531_ _1546_ _1535_ _1480_ vdd 
+ gnd
+ OAI22X1
X_4011_ \u_cpu.bufreg.i_clr_lsb\ \u_cpu.alu.i_cnt0\ _894_ _895_ vdd gnd AOI21X1
XFILL144150x108150 gnd vdd FILL
X_3702_ rst_bF$buf1 _161_ vdd gnd INVX1
XFILL_0__4068_ gnd vdd FILL
XFILL_1__3024_ gnd vdd FILL
X_3299_ _18__bF$buf2 _1794_ \u_rf_if.read_buf1\[19] _1793_ vdd gnd OAI21X1
XFILL_0__2974_ gnd vdd FILL
X_4660_ _1894_ \u_cpu.decode.i_wb_rdt\[17] _1897_ _1971_ vdd gnd NAND3X1
X_4240_ \u_cpu.bufreg2.dhi\[3] _1214_ \u_cpu.bufreg2.dhi\[4] _1215_ vdd gnd OAI21X1
XFILL_0__3339_ gnd vdd FILL
XFILL_0__4700_ gnd vdd FILL
XFILL_0__3092_ gnd vdd FILL
X_3931_ _665__bF$buf2 _699_ _700_ _636_ vdd gnd OAI21X1
X_3511_ \u_rf_if.read_buf1\[27] \u_rf_if.stream_cnt_0_bF$buf2\ _389_ vdd gnd NAND2X1
X_4716_ _2007_ _1983__bF$buf2 _2008_ _1842_ vdd gnd OAI21X1
XFILL_1__4458_ gnd vdd FILL
XFILL_1__4038_ gnd vdd FILL
XFILL_0__2363_ gnd vdd FILL
XFILL_1__3309_ gnd vdd FILL
X_2799_ _91_ _73_ _99_ _100_ vdd gnd OAI21X1
X_2379_ _1325_ _1328_ rst_bF$buf10 _749_ vdd gnd AOI21X1
X_3740_ rf_rreq_bF$buf3 _177_ _184_ vdd gnd NOR2X1
X_3320_ _1811_ _1810_ vdd gnd INVX1
X_4525_ _1879_ \u_cpu.decode.i_wb_rdt\[13] vdd gnd INVX1
X_4105_ \u_cpu.bufreg.i_en_bF$buf3\ _957_ _958_ _889_ vdd gnd OAI21X1
XFILL_1__3062_ gnd vdd FILL
XFILL_0__3797_ gnd vdd FILL
XFILL_0__3377_ gnd vdd FILL
XFILL_1__2333_ gnd vdd FILL
X_2188_ _793_ i_clk_fast_bF$buf2 \u_mem_serial.shift_rx\[15] vdd gnd DFFPOSX1
XFILL_0__2228_ gnd vdd FILL
X_4754_ _1913_ _2030_ _2031_ _1857_ vdd gnd NAND3X1
X_4334_ mem_dbus_ack_bF$buf2 \u_mem_serial.shift_rx\[9] _1172__bF$buf2 _1288_ _1289_ vdd 
+ gnd
+ AOI22X1
XFILL_1__4076_ gnd vdd FILL
XFILL_1__2809_ gnd vdd FILL
X_2820_ _78_ _79_ vdd gnd INVX1
X_2400_ rst_bF$buf5 _1310_ vdd gnd INVX2
X_3605_ \u_cpu.bufreg.data\[0] \u_cpu.bne_or_bge\ _2074_ vdd gnd NOR2X1
XFILL_1__2982_ gnd vdd FILL
XFILL_1_BUFX2_insert183 gnd vdd FILL
XFILL_1_BUFX2_insert187 gnd vdd FILL
XFILL_1__3347_ gnd vdd FILL
X_4563_ ibus_pending_ack_bF$buf0 _1906_ _1907_ \u_cpu.decode.i_wb_rdt\[5] vdd gnd OAI21X1
X_4143_ \u_cpu.bufreg2.dhi\[6] _1131_ vdd gnd INVX1
XFILL_0__4603_ gnd vdd FILL
XFILL_1__2618_ gnd vdd FILL
X_3834_ \u_cpu.decode.i_wb_rdt\[13] rf_rreq_bF$buf1 _406_ vdd gnd NAND2X1
X_3414_ _30_ _29_ _28_ _605_ vdd gnd AOI21X1
XFILL_1__2371_ gnd vdd FILL
X_4619_ \u_mem_serial.shift_rx\[11] _1877__bF$buf4 _1945_ vdd gnd NAND2X1
X_4792_ _1938_ _1983__bF$buf4 _2053_ _1873_ vdd gnd OAI21X1
XFILL_0__2266_ gnd vdd FILL
X_4372_ \u_cpu.ctrl.i_pc_rel\ \u_cpu.ctrl.pc\ _1503_ vdd gnd NAND2X1
XFILL_0_CLKBUF1_insert246 gnd vdd FILL
XFILL_0_CLKBUF1_insert248 gnd vdd FILL
X_3643_ _2130_ _2115_ _2131_ vdd gnd NAND2X1
X_3223_ _2149_ _2154__bF$buf4 _1738_ vdd gnd NAND2X1
XFILL_1__2180_ gnd vdd FILL
X_4848_ i_rst_n_bF$buf5 vdd _1869_ clk_sys_bF$buf43 ibus_pending_rdt[29] vdd 
+ gnd
+ DFFSR
X_4428_ \u_cpu.ctrl.o_ibus_adr\[22] _1546_ vdd gnd INVX1
X_4008_ \u_cpu.bufreg.i_en_bF$buf3\ _892_ vdd gnd INVX8
XFILL_1__3385_ gnd vdd FILL
XBUFX2_insert230 _1877_ _1877__bF$buf4 vdd gnd BUFX2
XBUFX2_insert231 _1877_ _1877__bF$buf3 vdd gnd BUFX2
XBUFX2_insert232 _1877_ _1877__bF$buf2 vdd gnd BUFX2
XBUFX2_insert233 _1877_ _1877__bF$buf1 vdd gnd BUFX2
XBUFX2_insert234 _1877_ _1877__bF$buf0 vdd gnd BUFX2
XBUFX2_insert235 _1316_ _1316__bF$buf4 vdd gnd BUFX2
XBUFX2_insert236 _1316_ _1316__bF$buf3 vdd gnd BUFX2
XBUFX2_insert237 _1316_ _1316__bF$buf2 vdd gnd BUFX2
XBUFX2_insert238 _1316_ _1316__bF$buf1 vdd gnd BUFX2
XBUFX2_insert239 _1316_ _1316__bF$buf0 vdd gnd BUFX2
X_4181_ \u_cpu.bufreg.data\[0] \u_cpu.bufreg2.i_bytecnt\[0] _1166_ vdd gnd NAND2X1
X_2914_ _565_ clk_sys_bF$buf16 \u_rf_if.rreg1_latched\[2] vdd gnd DFFPOSX1
XFILL_0__4641_ gnd vdd FILL
X_3872_ \u_cpu.immdec.gen_immdec_w_eq_1.imm11_7\[0] rreg1[0] \u_cpu.decode.co_immdec_ctrl\[0] _653_ vdd gnd MUX2X1
X_3452_ _314_ _313_ _312_ _311_ _310_ vdd 
+ gnd
+ OAI22X1
X_3032_ _1697_ _1602_ _1601_ _516_ vdd gnd AOI21X1
X_4657_ \u_mem_serial.shift_rx\[31] _1877__bF$buf1 _1969_ vdd gnd NAND2X1
X_4237_ \u_cpu.bufreg2.dhi\[4] _1210_ _1198_ _1212_ vdd gnd NAND3X1
X_2723_ _224_ _215__bF$buf0 _225_ _61_ vdd gnd AOI21X1
X_2303_ _1315__bF$buf3 _1390_ _1303__bF$buf1 _1391_ vdd gnd NAND3X1
XFILL_0__4030_ gnd vdd FILL
X_3928_ _665__bF$buf1 _697_ _698_ _635_ vdd gnd OAI21X1
X_3508_ \u_rf_if.read_buf1\[28] \u_rf_if.stream_cnt_0_bF$buf0\ _381_ vdd gnd NOR2X1
X_3681_ \u_cpu.alu.i_en\ _144_ vdd gnd INVX1
X_3261_ _1766_ _1765_ rst_bF$buf7 _583_ vdd gnd AOI21X1
X_4466_ \u_cpu.ctrl.o_ibus_adr\[9] _1530__bF$buf2 _1569_ vdd gnd NAND2X1
X_4046_ \u_cpu.bufreg.i_init\ _917_ _918_ _919_ vdd gnd NAND3X1
XFILL_0__3721_ gnd vdd FILL
XFILL_0__3301_ gnd vdd FILL
X_2952_ \u_rf_if.stream_cnt\[3] _42_ _609_ vdd gnd NAND2X1
X_2532_ \u_mem_serial.active_ibus_bF$buf0\ _984_ _985_ vdd gnd NAND2X1
X_3737_ _174_ _177_ _182_ _175_ _130_ vdd 
+ gnd
+ OAI22X1
X_3317_ _2153_ _11_ _1811_ _1807_ vdd gnd AOI21X1
XFILL_1__4420_ gnd vdd FILL
X_3490_ _351_ _350_ _349_ _348_ _347_ vdd 
+ gnd
+ OAI22X1
X_3070_ _1628_ _1627_ rst_bF$buf6 _528_ vdd gnd AOI21X1
XFILL_0__2589_ gnd vdd FILL
XFILL_0__2169_ gnd vdd FILL
X_4695_ _1879_ \u_cpu.decode.i_wb_rdt\[12] _1994_ vdd gnd NAND2X1
X_4275_ \u_cpu.bufreg2.dlo\[23] _1245_ vdd gnd INVX1
XFILL_0__4315_ gnd vdd FILL
X_2761_ _90_ _170_ _198_ _199_ vdd gnd NAND3X1
X_2341_ _1358_ _1359_ vdd gnd INVX1
X_3966_ _661_ rreg1[1] _705_ _724_ vdd gnd AOI21X1
X_3546_ \u_rf_if.stream_cnt\[2] _448_ vdd gnd INVX4
X_3126_ _32__bF$buf2 _1667_ _1666_ vdd gnd NAND2X1
XFILL_0__2801_ gnd vdd FILL
XFILL_0__2398_ gnd vdd FILL
X_4084_ \u_cpu.bufreg.data\[20] _945_ vdd gnd INVX1
X_2817_ \u_rf_serial.tx_state\[2] _79_ \u_rf_serial.tx_state\[3] _82_ vdd gnd OAI21X1
XCLKBUF1_insert152 i_clk_fast i_clk_fast_bF$buf7 vdd gnd CLKBUF1
XCLKBUF1_insert153 i_clk_fast i_clk_fast_bF$buf6 vdd gnd CLKBUF1
XCLKBUF1_insert154 i_clk_fast i_clk_fast_bF$buf5 vdd gnd CLKBUF1
XCLKBUF1_insert155 i_clk_fast i_clk_fast_bF$buf4 vdd gnd CLKBUF1
XCLKBUF1_insert156 i_clk_fast i_clk_fast_bF$buf3 vdd gnd CLKBUF1
XCLKBUF1_insert157 i_clk_fast i_clk_fast_bF$buf2 vdd gnd CLKBUF1
XCLKBUF1_insert158 i_clk_fast i_clk_fast_bF$buf1 vdd gnd CLKBUF1
XFILL_0__4544_ gnd vdd FILL
XCLKBUF1_insert159 i_clk_fast i_clk_fast_bF$buf0 vdd gnd CLKBUF1
X_2990_ \u_rf_if.i_rreq\ \u_rf_if.rreg0_latched\[0] _739_ vdd gnd NOR2X1
X_2570_ \u_cpu.bufreg.data\[13] _846_ vdd gnd INVX1
X_3775_ _764_ i_clk_fast_bF$buf2 \u_mem_serial.shift_rx\[29] vdd gnd DFFPOSX1
X_3355_ rdata[1] _2090_ _2101_ _2089_ vdd gnd NAND3X1
XFILL_0__2610_ gnd vdd FILL
XFILL_0__3815_ gnd vdd FILL
X_2626_ _60_ i_clk_fast_bF$buf5 \u_rf_serial.last_req_key\[4] vdd gnd DFFPOSX1
X_2206_ _1316__bF$buf0 _1304__bF$buf4 \u_mem_serial.shift_rx\[16] _1460_ vdd gnd OAI21X1
X_3584_ _481_ _480_ _479_ _478_ vdd gnd NAND3X1
X_3164_ _1694_ _1695_ _32__bF$buf1 _1692_ vdd gnd OAI21X1
X_4789_ mem_ibus_ack_bF$buf2 \u_mem_serial.shift_rx\[26] _1984__bF$buf0 _2052_ vdd gnd NAND3X1
X_4369_ _1113_ clk_sys_bF$buf4 \u_cpu.bufreg2.dlo\[22] vdd gnd DFFPOSX1
XFILL_0__3204_ gnd vdd FILL
XFILL144750x100950 gnd vdd FILL
XFILL_0__4409_ gnd vdd FILL
X_2855_ _537_ clk_sys_bF$buf13 \u_rf_if.read_buf0\[13] vdd gnd DFFPOSX1
X_2435_ \u_mem_serial.bit_count\[6] _1083_ vdd gnd INVX1
XFILL_0__4582_ gnd vdd FILL
X_3393_ \u_rf_if.issue_sel_bF$buf3\ \u_rf_if.issue_chunk\[0] \u_rf_if.issue_chunk\[1] _8_ vdd gnd AOI21X1
X_4598_ \u_mem_serial.shift_rx\[29] _1877__bF$buf3 _1931_ vdd gnd NAND2X1
X_4178_ \u_cpu.bufreg.i_shift_op\ _1160_ _1162_ _1163_ vdd gnd NAND3X1
XFILL_0__4218_ gnd vdd FILL
X_2664_ _250_ _281_ _233_ _282_ vdd gnd OAI21X1
X_2244_ _1316__bF$buf2 _1304__bF$buf1 \u_mem_serial.shift_rx\[24] _1433_ vdd gnd OAI21X1
X_3869_ _358_ clk_sys_bF$buf30 \u_cpu.decode.co_mem_word\ vdd gnd DFFPOSX1
X_3449_ \u_rf_if.read_buf0\[29] _446__bF$buf3 _445_ _307_ vdd gnd OAI21X1
X_3029_ raddr[6] _1697_ _32__bF$buf4 _1598_ vdd gnd OAI21X1
XFILL_0__2704_ gnd vdd FILL
X_4810_ _2072_ clk_sys_bF$buf34 \u_cpu.mem_if.signbit\ vdd gnd DFFPOSX1
XFILL_0__3909_ gnd vdd FILL
XFILL_1__4552_ gnd vdd FILL
XFILL_0__3242_ gnd vdd FILL
XFILL144450x82950 gnd vdd FILL
XFILL_0__4447_ gnd vdd FILL
XFILL_0__4027_ gnd vdd FILL
X_2893_ _577_ clk_sys_bF$buf17 \u_rf_if.rtrig1\ vdd gnd DFFPOSX1
X_2473_ _830_ _1044_ _832_ _1045_ vdd gnd NAND3X1
X_3678_ \u_cpu.state.cnt_r\[3] \u_cpu.state.cnt_r\[1] _142_ vdd gnd NOR2X1
X_3258_ _2154__bF$buf0 _2152__bF$buf3 _1816_ _1762_ vdd gnd NAND3X1
XFILL_0__2513_ gnd vdd FILL
X_2949_ _609_ _608_ _607_ _486_ vdd gnd AOI21X1
X_2529_ \u_cpu.ctrl.o_ibus_adr\[29] \u_cpu.bufreg.data\[29] \u_mem_serial.active_ibus_bF$buf1\ _988_ vdd gnd MUX2X1
XFILL_0__4256_ gnd vdd FILL
XFILL_1__3632_ gnd vdd FILL
X_2282_ _1311_ _1309_ _1407_ vdd gnd NOR2X1
X_3487_ _361_ _345_ \u_rf_if.stream_cnt\[4] _344_ vdd gnd OAI21X1
X_3067_ _14_ _1626_ _1625_ vdd gnd NOR2X1
XFILL_0__2742_ gnd vdd FILL
XFILL_0__2322_ gnd vdd FILL
XFILL_0__3947_ gnd vdd FILL
XFILL_0__3527_ gnd vdd FILL
XFILL_0__3107_ gnd vdd FILL
XFILL_1__4590_ gnd vdd FILL
XFILL_0__3280_ gnd vdd FILL
X_2758_ i_clk_fast_bF$buf6 _77_ _2160_ vdd gnd NOR2X1
X_2338_ _1316__bF$buf3 _1304__bF$buf3 \u_mem_serial.shift_rx\[3] _1361_ vdd gnd OAI21X1
XFILL_0__4485_ gnd vdd FILL
XFILL_0__4065_ gnd vdd FILL
XFILL_1__4226_ gnd vdd FILL
X_3296_ _1791_ _1793_ rst_bF$buf9 _592_ vdd gnd AOI21X1
XFILL_0__2971_ gnd vdd FILL
XFILL_0__2551_ gnd vdd FILL
XFILL_0_BUFX2_insert221 gnd vdd FILL
XFILL_0_BUFX2_insert223 gnd vdd FILL
XFILL_0_BUFX2_insert225 gnd vdd FILL
XFILL_0_BUFX2_insert227 gnd vdd FILL
XFILL_0_BUFX2_insert229 gnd vdd FILL
XFILL_1__3917_ gnd vdd FILL
X_2987_ _1706_ _1702_ _44_ _737_ vdd gnd OAI21X1
X_2567_ _848_ _845_ _849_ vdd gnd NAND2X1
XFILL_0__4294_ gnd vdd FILL
XFILL_0__2607_ gnd vdd FILL
X_4713_ _1903_ _1983__bF$buf1 _2006_ _1841_ vdd gnd OAI21X1
XFILL_0__2780_ gnd vdd FILL
XFILL_0__2360_ gnd vdd FILL
XFILL_0__3565_ gnd vdd FILL
XFILL_0__3145_ gnd vdd FILL
X_2796_ \u_rf_if.o_waddr\[7] _91_ _103_ vdd gnd NAND2X1
X_2376_ _1330_ _1331_ vdd gnd INVX1
X_4522_ \u_mem_serial.shift_rx\[12] _1877__bF$buf5 _1878_ vdd gnd NAND2X1
X_4102_ _892__bF$buf2 _954_ _956_ _888_ vdd gnd OAI21X1
XFILL_1__4264_ gnd vdd FILL
XFILL144450x108150 gnd vdd FILL
XFILL_0__4159_ gnd vdd FILL
XFILL144450x14550 gnd vdd FILL
XFILL_1__3955_ gnd vdd FILL
XFILL_1__3115_ gnd vdd FILL
X_2185_ gnd o_gpio_oe[0] vdd gnd BUFX2
XFILL_0__2225_ gnd vdd FILL
X_4751_ _1961_ _2028_ _2029_ _1856_ vdd gnd NAND3X1
X_4331_ _1284_ _1164__bF$buf1 _1286_ _1127_ vdd gnd OAI21X1
XFILL_0__3183_ gnd vdd FILL
X_3602_ _769_ i_clk_fast_bF$buf4 \u_mem_serial.bit_count\[4] vdd gnd DFFPOSX1
XFILL_0__4388_ gnd vdd FILL
X_4807_ i_rst_n_bF$buf3 vdd _1857_ clk_sys_bF$buf20 rf_read_reg1[2] vdd 
+ gnd
+ DFFSR
X_3199_ rf_read_reg1_to_if[2] _1722_ _32__bF$buf3 _1720_ vdd gnd OAI21X1
X_4560_ _1905_ \u_cpu.decode.i_wb_rdt\[14] vdd gnd INVX1
X_4140_ _998_ clk_sys_bF$buf7 \u_cpu.bufreg.c_r\ vdd gnd DFFPOSX1
XFILL_0__3659_ gnd vdd FILL
XFILL145050x75750 gnd vdd FILL
X_3831_ \u_cpu.bufreg.i_right_shift_op\ \u_cpu.bne_or_bge\ \u_cpu.decode.co_mem_word\ \u_cpu.alu.i_cmp_sig\ vdd gnd OAI21X1
X_3411_ _27_ \u_rf_if.stream_cnt_0_bF$buf3\ _26_ _604_ vdd gnd AOI21X1
XFILL_0__4197_ gnd vdd FILL
X_4616_ \u_mem_serial.shift_rx\[19] _1877__bF$buf2 _1943_ vdd gnd NAND2X1
XFILL_1__3153_ gnd vdd FILL
XFILL_0__2263_ gnd vdd FILL
XFILL_0__3888_ gnd vdd FILL
XFILL_0__3468_ gnd vdd FILL
XFILL144750x90150 gnd vdd FILL
XFILL_1__2424_ gnd vdd FILL
X_2699_ _119_ \u_rf_serial.last_req_key\[3] _247_ vdd gnd OR2X2
X_2279_ _1406_ _1408_ _1410_ vdd gnd NOR2X1
X_3640_ \u_cpu.decode.co_mem_word\ _2128_ vdd gnd INVX1
X_3220_ _2153_ _18__bF$buf0 \u_rf_if.read_buf1\[0] _1736_ vdd gnd OAI21X1
X_4845_ i_rst_n_bF$buf5 vdd _1872_ clk_sys_bF$buf43 ibus_pending_rdt[26] vdd 
+ gnd
+ DFFSR
X_4425_ _1544_ _1531_ _1543_ _1535_ _1477_ vdd 
+ gnd
+ OAI22X1
X_4005_ _642_ clk_sys_bF$buf1 \u_cpu.immdec.gen_immdec_w_eq_1.imm30_25\[2] vdd gnd DFFPOSX1
XBUFX2_insert200 \u_cpu.bufreg.i_en\ \u_cpu.bufreg.i_en_bF$buf2\ vdd gnd BUFX2
XBUFX2_insert201 \u_cpu.bufreg.i_en\ \u_cpu.bufreg.i_en_bF$buf1\ vdd gnd BUFX2
XBUFX2_insert202 \u_cpu.bufreg.i_en\ \u_cpu.bufreg.i_en_bF$buf0\ vdd gnd BUFX2
XBUFX2_insert203 _1895_ _1895__bF$buf3 vdd gnd BUFX2
XBUFX2_insert204 _1895_ _1895__bF$buf2 vdd gnd BUFX2
XBUFX2_insert205 _1895_ _1895__bF$buf1 vdd gnd BUFX2
XBUFX2_insert206 _1895_ _1895__bF$buf0 vdd gnd BUFX2
XBUFX2_insert207 \u_rf_if.stream_cnt\[1] \u_rf_if.stream_cnt_1_bF$buf3\ vdd gnd BUFX2
XBUFX2_insert208 \u_rf_if.stream_cnt\[1] \u_rf_if.stream_cnt_1_bF$buf2\ vdd gnd BUFX2
XBUFX2_insert209 \u_rf_if.stream_cnt\[1] \u_rf_if.stream_cnt_1_bF$buf1\ vdd gnd BUFX2
X_2911_ _504_ clk_sys_bF$buf16 \u_rf_if.rreg0_latched\[2] vdd gnd DFFPOSX1
XFILL_1__2653_ gnd vdd FILL
XBUFX2_insert0 _1304_ _1304__bF$buf4 vdd gnd BUFX2
XBUFX2_insert1 _1304_ _1304__bF$buf3 vdd gnd BUFX2
XBUFX2_insert2 _1304_ _1304__bF$buf2 vdd gnd BUFX2
XBUFX2_insert3 _1304_ _1304__bF$buf1 vdd gnd BUFX2
XBUFX2_insert4 _1304_ _1304__bF$buf0 vdd gnd BUFX2
XBUFX2_insert5 _215_ _215__bF$buf3 vdd gnd BUFX2
XBUFX2_insert6 _215_ _215__bF$buf2 vdd gnd BUFX2
XBUFX2_insert7 _215_ _215__bF$buf1 vdd gnd BUFX2
XBUFX2_insert8 _215_ _215__bF$buf0 vdd gnd BUFX2
XBUFX2_insert9 _10_ _10__bF$buf3 vdd gnd BUFX2
XFILL_1__3438_ gnd vdd FILL
XFILL_0__2548_ gnd vdd FILL
X_4654_ _1966_ rf_rreq_bF$buf5 _1967_ rf_read_reg0_to_if[4] vdd gnd OAI21X1
X_4234_ _1136_ _1210_ vdd gnd INVX2
XFILL_1__3191_ gnd vdd FILL
XFILL_0_BUFX2_insert191 gnd vdd FILL
XFILL_0_BUFX2_insert193 gnd vdd FILL
XFILL_0_BUFX2_insert194 gnd vdd FILL
XFILL_0_BUFX2_insert196 gnd vdd FILL
XFILL_0_BUFX2_insert198 gnd vdd FILL
XFILL_1_CLKBUF1_insert248 gnd vdd FILL
X_2720_ \u_rf_serial.last_req_key\[2] _227_ vdd gnd INVX1
X_2300_ \u_mem_serial.shift_rx\[28] _1297__bF$buf0 _1393_ vdd gnd NAND2X1
X_3925_ _665__bF$buf1 _695_ _696_ _634_ vdd gnd OAI21X1
X_3505_ \u_rf_if.read_buf1\[30] \u_rf_if.stream_cnt_0_bF$buf2\ \u_rf_if.stream_cnt_1_bF$buf0\ _377_ vdd gnd OAI21X1
XFILL_1__2462_ gnd vdd FILL
XFILL_1__3667_ gnd vdd FILL
X_4463_ \u_cpu.ctrl.o_ibus_adr\[10] _1530__bF$buf2 _1567_ vdd gnd NAND2X1
X_4043_ \u_cpu.state.i_ctrl_misalign\ _916_ vdd gnd INVX1
X_3734_ \u_cpu.alu.o_cmp\ _178_ \u_cpu.cond_branch\ _180_ vdd gnd OAI21X1
X_3314_ _18__bF$buf3 _1809_ \u_rf_if.read_buf1\[22] _1805_ vdd gnd OAI21X1
XFILL_1__2691_ gnd vdd FILL
X_4519_ _1498_ clk_sys_bF$buf31 \u_cpu.ctrl.o_ibus_adr\[5] vdd gnd DFFPOSX1
XFILL_1__3476_ gnd vdd FILL
XFILL_0__2586_ gnd vdd FILL
X_4692_ _1977_ clk_sys_bF$buf41 _1992_ vdd gnd AND2X2
X_4272_ _1242_ \u_mem_serial.shift_rx\[24] _1154_ _1243_ vdd gnd MUX2X1
XFILL_0__4732_ gnd vdd FILL
X_3963_ \u_cpu.decode.i_wb_rdt\[21] rreg1[2] rf_rreq_bF$buf4 _722_ vdd gnd MUX2X1
X_3543_ \u_rf_if.stream_cnt_1_bF$buf0\ _445_ vdd gnd INVX4
X_3123_ _10__bF$buf3 _1715__bF$buf2 _1801_ _1664_ vdd gnd NAND3X1
X_4748_ _2026_ _1983__bF$buf1 _2027_ _1855_ vdd gnd OAI21X1
X_4328_ \u_cpu.bufreg2.dlo\[10] _1284_ vdd gnd INVX1
X_4081_ \u_cpu.bufreg.i_en_bF$buf0\ _942_ _943_ _880_ vdd gnd OAI21X1
X_2814_ \u_rf_serial.tx_state\[0] _84_ _85_ vdd gnd NAND2X1
XFILL_0__4541_ gnd vdd FILL
X_3772_ _765_ i_clk_fast_bF$buf6 \u_mem_serial.shift_rx\[28] vdd gnd DFFPOSX1
X_3352_ _2071_ _2093_ rst_bF$buf9 _602_ vdd gnd AOI21X1
X_4557_ ibus_pending_rdt[14] _1903_ vdd gnd INVX1
X_4137_ _881_ clk_sys_bF$buf19 \u_cpu.bufreg.data\[21] vdd gnd DFFPOSX1
X_2623_ _67_ i_clk_fast_bF$buf5 \u_rf_serial.shift_rx\[1] vdd gnd DFFPOSX1
X_2203_ _794_ _1307_ _1462_ vdd gnd NOR2X1
XFILL_0__4770_ gnd vdd FILL
X_3828_ \u_cpu.decode.co_mem_signed\ \u_cpu.bne_or_bge\ \u_cpu.decode.co_mem_word\ _404_ vdd gnd MUX2X1
X_3408_ \u_rf_if.issue_sel_bF$buf3\ \u_rf_if.issue_chunk\[0] _23_ vdd gnd NOR2X1
X_3581_ \u_rf_if.wdata0_next\[0] _475_ vdd gnd INVX1
X_3161_ \u_rf_if.rcnt\[0] \u_rf_if.rcnt\[1] _1690_ vdd gnd AND2X2
X_4786_ _1932_ _1983__bF$buf4 _2050_ _1870_ vdd gnd OAI21X1
X_4366_ _1116_ clk_sys_bF$buf4 \u_cpu.bufreg2.dlo\[19] vdd gnd DFFPOSX1
XFILL_0__3621_ gnd vdd FILL
X_2852_ _598_ clk_sys_bF$buf22 \u_rf_if.read_buf1\[25] vdd gnd DFFPOSX1
X_2432_ _1084_ _1085_ _1086_ vdd gnd NAND2X1
X_3637_ _2121_ _2113_ _2124_ _2125_ vdd gnd OAI21X1
X_3217_ _32__bF$buf1 gnd _569_ vdd gnd AND2X2
XFILL_1__3799_ gnd vdd FILL
X_3390_ _12_ _6_ _5_ vdd gnd NAND2X1
XBUFX2_insert170 _892_ _892__bF$buf1 vdd gnd BUFX2
XBUFX2_insert171 _892_ _892__bF$buf0 vdd gnd BUFX2
XBUFX2_insert172 _2152_ _2152__bF$buf3 vdd gnd BUFX2
XBUFX2_insert173 _2152_ _2152__bF$buf2 vdd gnd BUFX2
XBUFX2_insert174 _2152_ _2152__bF$buf1 vdd gnd BUFX2
XBUFX2_insert175 _2152_ _2152__bF$buf0 vdd gnd BUFX2
XBUFX2_insert176 _32_ _32__bF$buf4 vdd gnd BUFX2
XBUFX2_insert177 _32_ _32__bF$buf3 vdd gnd BUFX2
XBUFX2_insert178 _32_ _32__bF$buf2 vdd gnd BUFX2
XBUFX2_insert179 _32_ _32__bF$buf1 vdd gnd BUFX2
XFILL_0__2489_ gnd vdd FILL
X_4595_ ibus_pending_ack_bF$buf2 ibus_pending_rdt[30] _1929_ vdd gnd NAND2X1
X_4175_ \u_cpu.bufreg2.i_bytecnt\[1] \u_cpu.bufreg2.i_bytecnt\[0] _1160_ vdd gnd NOR2X1
XFILL_0__3850_ gnd vdd FILL
XFILL_0__3430_ gnd vdd FILL
X_2908_ _568_ clk_sys_bF$buf17 \u_rf_if.wen0_r\ vdd gnd DFFPOSX1
XFILL_0__4635_ gnd vdd FILL
X_2661_ \u_rf_serial.last_req_key\[10] _283_ _202_ _284_ vdd gnd OAI21X1
X_2241_ _1312_ _1378_ _1435_ vdd gnd NAND2X1
X_3866_ _753_ i_clk_fast_bF$buf7 \u_mem_serial.shift_rx\[8] vdd gnd DFFPOSX1
X_3446_ _308_ _307_ _306_ _305_ _304_ vdd 
+ gnd
+ OAI22X1
X_3026_ \u_rf_if.rreg0_latched\[1] \u_rf_if.issue_sel_bF$buf0\ _1597_ _1596_ vdd gnd OAI21X1
XFILL_0__2701_ gnd vdd FILL
XFILL_0__3906_ gnd vdd FILL
X_2717_ _229_ _215__bF$buf1 _202_ _230_ vdd gnd OAI21X1
XFILL_1__3400_ gnd vdd FILL
X_2890_ _579_ clk_sys_bF$buf6 \u_rf_if.stream_active\ vdd gnd DFFPOSX1
X_2470_ _798_ _799_ _1048_ vdd gnd NOR2X1
XFILL_1__4605_ gnd vdd FILL
XFILL145050x118950 gnd vdd FILL
X_3675_ \u_cpu.state.o_cnt\[2] \u_cpu.state.cnt_r\[3] _140_ vdd gnd AND2X2
X_3255_ _2154__bF$buf0 _2152__bF$buf3 _1813_ _1760_ vdd gnd NAND3X1
XFILL_0__2510_ gnd vdd FILL
XFILL_0__3715_ gnd vdd FILL
X_2946_ _500_ clk_sys_bF$buf6 \u_rf_if.write_wait\[3] vdd gnd DFFPOSX1
X_2526_ _990_ _987_ _805_ _991_ vdd gnd OAI21X1
XFILL_0__4673_ gnd vdd FILL
XFILL_1__2268_ gnd vdd FILL
X_3484_ \u_rf_if.read_buf0\[1] \u_rf_if.stream_cnt_0_bF$buf5\ _342_ vdd gnd NAND2X1
X_3064_ \u_rf_if.issue_idx\[5] _1623_ _1622_ vdd gnd NOR2X1
X_4689_ mem_ibus_ack_bF$buf1 \u_mem_serial.shift_rx\[18] _1984__bF$buf4 _1990_ vdd gnd NAND3X1
X_4269_ \u_cpu.bufreg.i_shamt\[0] _1210_ _1198_ _1240_ vdd gnd NAND3X1
XFILL_0__3944_ gnd vdd FILL
XFILL_0__3104_ gnd vdd FILL
XFILL_0__4309_ gnd vdd FILL
X_2755_ rst_bF$buf4 _202_ vdd gnd INVX2
X_2335_ _1315__bF$buf2 _1363_ _1303__bF$buf0 _1364_ vdd gnd NAND3X1
XFILL_1__4643_ gnd vdd FILL
X_3293_ _1789_ _1790_ rst_bF$buf9 _591_ vdd gnd AOI21X1
X_4498_ _1483_ clk_sys_bF$buf19 \u_cpu.ctrl.o_ibus_adr\[19] vdd gnd DFFPOSX1
X_4078_ _892__bF$buf4 _931_ _941_ _879_ vdd gnd OAI21X1
XFILL_0__3753_ gnd vdd FILL
X_2984_ _736_ _735_ _501_ vdd gnd NOR2X1
X_2564_ _799_ _796_ _852_ vdd gnd NAND2X1
X_3769_ _780_ i_clk_fast_bF$buf2 \u_mem_serial.shift_rx\[24] vdd gnd DFFPOSX1
X_3349_ _4_ _9_ _2069_ _2068_ vdd gnd NOR3X1
X_4710_ mem_ibus_ack_bF$buf1 \u_mem_serial.shift_rx\[15] _1984__bF$buf4 _2005_ vdd gnd NAND3X1
XFILL_0__3142_ gnd vdd FILL
XFILL_1__3723_ gnd vdd FILL
XBUFX2_insert86 ren ren_bF$buf4 vdd gnd BUFX2
XBUFX2_insert87 ren ren_bF$buf3 vdd gnd BUFX2
XBUFX2_insert88 ren ren_bF$buf2 vdd gnd BUFX2
XBUFX2_insert89 ren ren_bF$buf1 vdd gnd BUFX2
X_2793_ _105_ _104_ _106_ vdd gnd NAND2X1
X_2373_ _1316__bF$buf4 _1304__bF$buf2 \u_mem_serial.shift_rx\[10] _1333_ vdd gnd OAI21X1
X_3998_ _649_ clk_sys_bF$buf27 \u_cpu.immdec.gen_immdec_w_eq_1.imm11_7\[3] vdd gnd DFFPOSX1
X_3578_ \u_rf_if.wdata1_phase\[0] _472_ vdd gnd INVX1
X_3158_ _1688_ _32__bF$buf4 _557_ vdd gnd AND2X2
XFILL_0__2413_ gnd vdd FILL
XFILL_1__4681_ gnd vdd FILL
XFILL_0__3791_ gnd vdd FILL
X_2849_ _511_ clk_sys_bF$buf41 raddr[2] vdd gnd DFFPOSX1
X_2429_ _805_ _1088_ _1089_ vdd gnd NAND2X1
X_2182_ gnd o_gpio_oe[3] vdd gnd BUFX2
XFILL_1__4317_ gnd vdd FILL
X_3387_ _4_ _14_ _3_ _1_ vdd gnd OAI21X1
XFILL_0__3427_ gnd vdd FILL
XFILL_0__3007_ gnd vdd FILL
XFILL_0__3180_ gnd vdd FILL
X_2658_ _260_ _215__bF$buf3 _285_ _66_ vdd gnd AOI21X1
X_2238_ _1316__bF$buf0 _1304__bF$buf4 \u_mem_serial.shift_rx\[23] _1437_ vdd gnd OAI21X1
XFILL_1_BUFX2_insert122 gnd vdd FILL
XFILL_1_BUFX2_insert126 gnd vdd FILL
X_4804_ i_rst_n_bF$buf2 vdd _1858_ clk_sys_bF$buf30 rf_read_reg1[1] vdd 
+ gnd
+ DFFSR
X_3196_ rf_read_reg1_to_if[1] _1722_ _32__bF$buf3 _1718_ vdd gnd OAI21X1
XFILL_0__2451_ gnd vdd FILL
XFILL_1__3817_ gnd vdd FILL
X_2887_ _529_ clk_sys_bF$buf21 \u_rf_if.read_buf0\[7] vdd gnd DFFPOSX1
X_2467_ _966_ _1050_ _1049_ _1051_ vdd gnd NAND3X1
X_4613_ \u_mem_serial.shift_rx\[24] _1877__bF$buf2 _1941_ vdd gnd NAND2X1
XFILL_0__2680_ gnd vdd FILL
XFILL_0__3885_ gnd vdd FILL
XFILL_0__3465_ gnd vdd FILL
XFILL_0__3045_ gnd vdd FILL
XFILL_1__3206_ gnd vdd FILL
X_2696_ _236_ _242_ _249_ _250_ vdd gnd NAND3X1
X_2276_ _1007_ _1297__bF$buf1 _1316__bF$buf2 \u_mem_serial.bit_count\[4] _1412_ vdd 
+ gnd
+ AOI22X1
XFILL144750x108150 gnd vdd FILL
XFILL_0__2316_ gnd vdd FILL
X_4842_ i_rst_n_bF$buf4 vdd _1875_ clk_sys_bF$buf27 rf_write_drain_busy vdd 
+ gnd
+ DFFSR
X_4422_ \u_cpu.ctrl.o_ibus_adr\[24] _1543_ vdd gnd INVX1
X_4002_ _645_ clk_sys_bF$buf15 rreg1[3] vdd gnd DFFPOSX1
XFILL_0__3694_ gnd vdd FILL
XFILL144750x3750 gnd vdd FILL
XFILL_1__2230_ gnd vdd FILL
XFILL_0__4479_ gnd vdd FILL
XFILL_0__4059_ gnd vdd FILL
XFILL_0__2965_ gnd vdd FILL
X_4651_ _1964_ rf_rreq_bF$buf2 _1965_ rf_read_reg1_to_if[4] vdd gnd OAI21X1
X_4231_ \u_cpu.bufreg.i_shift_op\ \u_cpu.bufreg2.i_cnt7\ _1207_ vdd gnd AND2X2
XFILL_0_BUFX2_insert160 gnd vdd FILL
XFILL_0_BUFX2_insert162 gnd vdd FILL
XFILL_0_BUFX2_insert164 gnd vdd FILL
XFILL_0_BUFX2_insert166 gnd vdd FILL
XFILL_0_BUFX2_insert168 gnd vdd FILL
XFILL_1__2706_ gnd vdd FILL
XFILL_0__3083_ gnd vdd FILL
X_3922_ _665__bF$buf0 _693_ _694_ _633_ vdd gnd OAI21X1
X_3502_ _448_ _382_ _364_ _361_ vdd gnd AOI21X1
XFILL_0__4288_ gnd vdd FILL
X_4707_ _1897_ _1982_ _2003_ _1838_ vdd gnd AOI21X1
XFILL_1__3244_ gnd vdd FILL
X_3099_ _2152__bF$buf1 _1715__bF$buf3 _2088_ _1646_ vdd gnd NAND3X1
XFILL_0__2354_ gnd vdd FILL
X_4460_ \u_cpu.ctrl.o_ibus_adr\[11] _1530__bF$buf1 _1565_ vdd gnd NAND2X1
X_4040_ \u_cpu.bufreg.data\[2] _914_ vdd gnd INVX1
XFILL_1__2515_ gnd vdd FILL
X_3731_ _163_ _176_ _161_ _177_ vdd gnd OAI21X1
X_3311_ _2092_ _2095_ _10__bF$buf3 _1803_ vdd gnd NAND3X1
XFILL_0__4097_ gnd vdd FILL
X_4516_ _1475_ clk_sys_bF$buf6 \u_cpu.ctrl.o_ibus_adr\[25] vdd gnd DFFPOSX1
XFILL_0__2163_ gnd vdd FILL
XFILL_0__3368_ gnd vdd FILL
XFILL_1__2744_ gnd vdd FILL
XFILL_1__3529_ gnd vdd FILL
X_2599_ \u_cpu.ctrl.o_ibus_adr\[5] \u_cpu.bufreg.data\[5] \u_mem_serial.active_ibus_bF$buf6\ _817_ vdd gnd MUX2X1
X_2179_ gnd o_gpio_oe[6] vdd gnd BUFX2
X_3960_ \u_cpu.decode.i_wb_rdt\[22] rreg1[3] rf_rreq_bF$buf5 _720_ vdd gnd MUX2X1
X_3540_ \u_rf_if.read_buf1\[14] \u_rf_if.stream_cnt_0_bF$buf3\ \u_rf_if.stream_cnt_1_bF$buf1\ _442_ vdd gnd OAI21X1
X_3120_ _10__bF$buf0 _1715__bF$buf2 _1798_ _1662_ vdd gnd NAND3X1
X_4745_ _2024_ _1983__bF$buf4 _2025_ _1854_ vdd gnd OAI21X1
XFILL_0__2219_ gnd vdd FILL
X_4325_ mem_dbus_ack_bF$buf6 _1278_ _1282_ vdd gnd NOR2X1
XFILL_1__3282_ gnd vdd FILL
XFILL_0__2392_ gnd vdd FILL
XFILL145050x61350 gnd vdd FILL
X_2811_ _87_ _78_ _88_ vdd gnd NAND2X1
XFILL145050x28950 gnd vdd FILL
XFILL_1__2553_ gnd vdd FILL
X_4554_ rf_read_reg0[0] _1901_ vdd gnd INVX1
X_4134_ _884_ clk_sys_bF$buf0 \u_cpu.bufreg.data\[18] vdd gnd DFFPOSX1
X_2620_ \u_mem_serial.bit_count\[2] \u_mem_serial.bit_count\[3] _796_ vdd gnd NOR2X1
X_2200_ _1316__bF$buf2 _1304__bF$buf1 \u_mem_serial.shift_rx\[15] _1464_ vdd gnd OAI21X1
X_3825_ \u_cpu.bufreg.i_imm_en\ _403_ \u_cpu.decode.co_rd_alu_en\ vdd gnd NOR2X1
X_3405_ _21_ _22_ _20_ vdd gnd AND2X2
XFILL_1__2782_ gnd vdd FILL
XFILL_1__3567_ gnd vdd FILL
X_4783_ mem_ibus_ack_bF$buf3 \u_mem_serial.shift_rx\[29] _1984__bF$buf3 _2049_ vdd gnd NAND3X1
XFILL_0__2257_ gnd vdd FILL
X_4363_ _1119_ clk_sys_bF$buf4 \u_cpu.bufreg2.dlo\[16] vdd gnd DFFPOSX1
XFILL_0__4403_ gnd vdd FILL
XFILL_0_CLKBUF1_insert153 gnd vdd FILL
XFILL_0_CLKBUF1_insert155 gnd vdd FILL
XFILL_0_CLKBUF1_insert156 gnd vdd FILL
XFILL_0_CLKBUF1_insert158 gnd vdd FILL
X_3634_ \u_cpu.alu.i_sub\ \u_cpu.alu.i_op_b\ _2122_ vdd gnd OR2X2
X_3214_ _1734_ _484__bF$buf3 _1733_ _568_ vdd gnd AOI21X1
XFILL_1__2591_ gnd vdd FILL
X_4839_ i_rst_n_bF$buf3 vdd _1827_ clk_sys_bF$buf15 rf_read_reg1[4] vdd 
+ gnd
+ DFFSR
X_4419_ _1540_ _1531_ _1541_ _1535_ _1474_ vdd 
+ gnd
+ OAI22X1
XBUFX2_insert140 ibus_pending_ack ibus_pending_ack_bF$buf1 vdd gnd BUFX2
XBUFX2_insert141 ibus_pending_ack ibus_pending_ack_bF$buf0 vdd gnd BUFX2
XBUFX2_insert142 _1717_ _1717__bF$buf4 vdd gnd BUFX2
XBUFX2_insert143 _1717_ _1717__bF$buf3 vdd gnd BUFX2
XBUFX2_insert144 _1717_ _1717__bF$buf2 vdd gnd BUFX2
XBUFX2_insert145 _1717_ _1717__bF$buf1 vdd gnd BUFX2
XBUFX2_insert146 _1717_ _1717__bF$buf0 vdd gnd BUFX2
XBUFX2_insert147 _1984_ _1984__bF$buf4 vdd gnd BUFX2
XBUFX2_insert148 _1984_ _1984__bF$buf3 vdd gnd BUFX2
XBUFX2_insert149 _1984_ _1984__bF$buf2 vdd gnd BUFX2
X_4592_ \u_mem_serial.shift_rx\[23] _1877__bF$buf0 _1927_ vdd gnd NAND2X1
X_4172_ \u_cpu.bufreg.data\[0] \u_cpu.bufreg2.i_bytecnt\[0] _1157_ vdd gnd AND2X2
X_2905_ _570_ clk_sys_bF$buf40 \u_rf_if.read_buf1\[0] vdd gnd DFFPOSX1
XFILL_0__4632_ gnd vdd FILL
XFILL_0__4212_ gnd vdd FILL
X_3863_ _774_ i_clk_fast_bF$buf1 \u_mem_serial.active_ibus\ vdd gnd DFFPOSX1
X_3443_ \u_rf_if.read_buf0\[16] \u_rf_if.stream_cnt_0_bF$buf0\ _301_ vdd gnd NOR2X1
X_3023_ \u_rf_if.issue_sel_bF$buf1\ _1610_ _1594_ vdd gnd NAND2X1
X_4648_ _1895__bF$buf1 _1963_ _1962_ \u_rf_if.i_rreq\ vdd gnd AOI21X1
X_4228_ _1136_ _1164__bF$buf0 _1204_ _1205_ vdd gnd OAI21X1
XFILL_0__2295_ gnd vdd FILL
X_2714_ ren_bF$buf0 \u_rf_if.o_wen\ _232_ vdd gnd NOR2X1
XFILL_0__4441_ gnd vdd FILL
XFILL_0__4021_ gnd vdd FILL
X_3919_ _665__bF$buf0 _691_ _692_ _632_ vdd gnd OAI21X1
X_3672_ \u_cpu.state.init_done\ gnd _138_ vdd gnd NOR2X1
X_3252_ _18__bF$buf3 _1759_ \u_rf_if.read_buf1\[7] _1758_ vdd gnd OAI21X1
X_4457_ \u_cpu.ctrl.o_ibus_adr\[12] _1530__bF$buf1 _1563_ vdd gnd NAND2X1
X_4037_ \u_cpu.bufreg.i_en_bF$buf4\ _911_ _912_ _867_ vdd gnd OAI21X1
XFILL_1_CLKBUF1_insert84 gnd vdd FILL
XFILL_1__4199_ gnd vdd FILL
X_2943_ _549_ clk_sys_bF$buf12 \u_rf_if.read_buf0\[24] vdd gnd DFFPOSX1
X_2523_ \u_mem_serial.active_ibus_bF$buf1\ \u_cpu.bufreg.data\[26] _994_ vdd gnd OR2X2
XFILL_0__4670_ gnd vdd FILL
XFILL_0__4250_ gnd vdd FILL
X_3728_ \u_cpu.ctrl.i_jump\ _174_ vdd gnd INVX1
X_3308_ _2154__bF$buf3 _10__bF$buf0 _1801_ _1800_ vdd gnd NAND3X1
X_3481_ \u_rf_if.read_buf0\[3] \u_rf_if.stream_cnt_0_bF$buf1\ _339_ vdd gnd NAND2X1
X_3061_ _2152__bF$buf0 _1715__bF$buf2 _1801_ _1620_ vdd gnd NAND3X1
X_4686_ mem_ibus_ack_bF$buf4 \u_mem_serial.shift_rx\[19] _1984__bF$buf2 _1989_ vdd gnd NAND3X1
X_4266_ _1237_ \u_mem_serial.shift_rx\[25] _1154_ _1238_ vdd gnd MUX2X1
XFILL_0__4306_ gnd vdd FILL
X_2752_ _203_ _204_ _205_ vdd gnd NAND2X1
X_2332_ \u_mem_serial.shift_rx\[1] _1297__bF$buf3 _1366_ vdd gnd NAND2X1
X_3957_ \u_cpu.decode.i_wb_rdt\[23] rreg1[4] rf_rreq_bF$buf2 _718_ vdd gnd MUX2X1
X_3537_ \u_rf_if.read_buf1\[8] \u_rf_if.stream_cnt_0_bF$buf1\ _439_ vdd gnd NOR2X1
X_3117_ _2062__bF$buf3 _1715__bF$buf4 _1792_ _1660_ vdd gnd NAND3X1
X_3290_ _1817_ _2089_ _1786_ vdd gnd NOR2X1
X_4495_ _1493_ clk_sys_bF$buf42 \u_cpu.ctrl.o_ibus_adr\[10] vdd gnd DFFPOSX1
X_4075_ _939_ _920_ _940_ vdd gnd NOR2X1
XFILL_0__3330_ gnd vdd FILL
X_2808_ ren_bF$buf2 _91_ vdd gnd INVX2
XFILL_0__4535_ gnd vdd FILL
X_2981_ _625_ _735_ _500_ vdd gnd NOR2X1
X_2561_ \u_mem_serial.active_ibus_bF$buf4\ _854_ _855_ vdd gnd NAND2X1
X_3766_ \u_cpu.decode.co_mem_word\ _372_ vdd gnd INVX1
X_3346_ _13_ _2096_ _2066_ vdd gnd NAND2X1
XFILL_0__2601_ gnd vdd FILL
XFILL_1__3088_ gnd vdd FILL
XFILL_0__3806_ gnd vdd FILL
XFILL_0__2198_ gnd vdd FILL
X_2617_ \u_mem_serial.bit_count\[1] _799_ vdd gnd INVX2
X_2790_ _83_ _109_ vdd gnd INVX1
X_2370_ _1315__bF$buf0 _1335_ _1303__bF$buf3 _1336_ vdd gnd NAND3X1
X_3995_ _652_ clk_sys_bF$buf30 \u_cpu.immdec.gen_immdec_w_eq_1.imm11_7\[0] vdd gnd DFFPOSX1
X_3575_ _472_ _471_ _470_ _469_ vdd gnd OAI21X1
X_3155_ _1686_ _1687_ rst_bF$buf0 _556_ vdd gnd AOI21X1
XFILL_0__3615_ gnd vdd FILL
X_2846_ _601_ clk_sys_bF$buf10 \u_rf_if.read_buf1\[28] vdd gnd DFFPOSX1
X_2426_ \u_cpu.mem_if.o_wb_sel\[0] _1092_ vdd gnd INVX1
XFILL_0__4573_ gnd vdd FILL
XFILL_1__4734_ gnd vdd FILL
X_3384_ _18__bF$buf1 _2162_ \u_rf_if.read_buf1\[30] _2155_ vdd gnd OAI21X1
X_4589_ ibus_pending_ack_bF$buf3 ibus_pending_rdt[4] _1925_ vdd gnd NAND2X1
X_4169_ mem_dbus_ack_bF$buf4 _1154_ vdd gnd INVX2
XFILL_0__3844_ gnd vdd FILL
XFILL_0__4209_ gnd vdd FILL
XFILL145050x104550 gnd vdd FILL
X_2655_ i_rf_miso _287_ _202_ _288_ vdd gnd OAI21X1
X_2235_ _1316__bF$buf0 _1304__bF$buf4 \u_mem_serial.shift_rx\[22] _1439_ vdd gnd OAI21X1
XFILL_0__4382_ gnd vdd FILL
X_4801_ i_rst_n_bF$buf5 vdd _1861_ clk_sys_bF$buf1 ibus_pending_rdt[31] vdd 
+ gnd
+ DFFSR
X_3193_ _1717__bF$buf0 _2162_ \u_rf_if.read_buf0\[30] _1716_ vdd gnd OAI21X1
X_4398_ _1526_ _1524_ _1527_ vdd gnd NAND2X1
XFILL_0__3653_ gnd vdd FILL
XFILL_0__3233_ gnd vdd FILL
X_2884_ _582_ clk_sys_bF$buf22 \u_rf_if.read_buf1\[9] vdd gnd DFFPOSX1
X_2464_ _805_ _1052_ _1053_ _1054_ vdd gnd NAND3X1
X_3669_ _34_ _33_ _35_ \u_cpu.o_wen0\ vdd gnd AOI21X1
X_3249_ _1758_ _1756_ rst_bF$buf6 _580_ vdd gnd AOI21X1
XFILL_0__2504_ gnd vdd FILL
X_4610_ \u_mem_serial.shift_rx\[25] _1877__bF$buf3 _1939_ vdd gnd NAND2X1
XFILL_0__3709_ gnd vdd FILL
XFILL_1__4772_ gnd vdd FILL
XFILL_0__4247_ gnd vdd FILL
X_2693_ \u_rf_serial.last_req_key\[5] _252_ _251_ _253_ vdd gnd NAND3X1
X_2273_ rst_bF$buf1 _1413_ _770_ vdd gnd NOR2X1
X_3898_ \u_cpu.csr_imm_en\ _675_ vdd gnd INVX1
X_3478_ \u_rf_if.read_buf0\[4] \u_rf_if.stream_cnt_0_bF$buf4\ _336_ vdd gnd NOR2X1
X_3058_ _2152__bF$buf0 _1715__bF$buf2 _1798_ _1618_ vdd gnd NAND3X1
XFILL_0__2733_ gnd vdd FILL
XFILL_0__3938_ gnd vdd FILL
XFILL_0__3518_ gnd vdd FILL
XFILL144150x136950 gnd vdd FILL
XFILL_1__4161_ gnd vdd FILL
XFILL_0__3271_ gnd vdd FILL
XFILL144750x129750 gnd vdd FILL
X_2749_ _207_ _205_ _202_ _208_ vdd gnd OAI21X1
X_2329_ _1365_ _1368_ rst_bF$buf4 _759_ vdd gnd AOI21X1
XFILL_1__3852_ gnd vdd FILL
XFILL_1__3012_ gnd vdd FILL
X_3287_ _18__bF$buf4 _1788_ \u_rf_if.read_buf1\[16] _1784_ vdd gnd OAI21X1
XFILL_0__2542_ gnd vdd FILL
XFILL_0_BUFX2_insert130 gnd vdd FILL
XFILL_0_BUFX2_insert132 gnd vdd FILL
XFILL_0_BUFX2_insert134 gnd vdd FILL
XFILL_0_BUFX2_insert136 gnd vdd FILL
XFILL_0_BUFX2_insert137 gnd vdd FILL
XFILL_0_BUFX2_insert139 gnd vdd FILL
XFILL_0__3747_ gnd vdd FILL
XFILL_1__4390_ gnd vdd FILL
X_2978_ _44_ _623_ _735_ _499_ vdd gnd AOI21X1
X_2558_ \u_mem_serial.active_ibus_bF$buf4\ \u_cpu.bufreg.data\[11] _858_ vdd gnd OR2X2
XFILL_0__4285_ gnd vdd FILL
X_4704_ mem_ibus_ack_bF$buf4 \u_mem_serial.shift_rx\[17] _1984__bF$buf2 _2002_ vdd gnd NAND3X1
X_3096_ _1722_ _2108_ _1645_ _536_ vdd gnd AOI21X1
XFILL_0__2771_ gnd vdd FILL
XFILL_0__3976_ gnd vdd FILL
XFILL_0__3556_ gnd vdd FILL
XFILL_0__3136_ gnd vdd FILL
X_2787_ \u_rf_if.o_waddr\[4] _112_ vdd gnd INVX1
X_2367_ \u_mem_serial.shift_rx\[8] _1297__bF$buf0 _1338_ vdd gnd NAND2X1
XFILL_0__2407_ gnd vdd FILL
X_4513_ _1489_ clk_sys_bF$buf42 \u_cpu.ctrl.o_ibus_adr\[14] vdd gnd DFFPOSX1
XFILL_1__3890_ gnd vdd FILL
XFILL_1__3050_ gnd vdd FILL
XFILL_0__2580_ gnd vdd FILL
X_2596_ \u_cpu.ctrl.o_ibus_adr\[2] _810_ _820_ vdd gnd NOR2X1
X_2176_ gnd o_gpio[1] vdd gnd BUFX2
X_4742_ _1881_ _1983__bF$buf1 _2023_ _1853_ vdd gnd OAI21X1
X_4322_ mem_dbus_ack_bF$buf2 \u_mem_serial.shift_rx\[12] _1172__bF$buf2 _1279_ _1280_ vdd 
+ gnd
+ AOI22X1
XFILL_0__3174_ gnd vdd FILL
XFILL_1__3335_ gnd vdd FILL
XFILL145050x82950 gnd vdd FILL
XFILL_0__2445_ gnd vdd FILL
X_4551_ ibus_pending_rdt[15] _1899_ vdd gnd INVX1
X_4131_ _887_ clk_sys_bF$buf11 \u_cpu.bufreg.data\[16] vdd gnd DFFPOSX1
X_3822_ \u_cpu.decode.opcode\[0] \u_cpu.decode.opcode\[2] \u_cpu.decode.co_rd_mem_en\ vdd gnd NOR2X1
X_3402_ _22_ _21_ _17_ vdd gnd NAND2X1
XFILL_0__4188_ gnd vdd FILL
X_4607_ \u_mem_serial.shift_rx\[26] _1877__bF$buf1 _1937_ vdd gnd NAND2X1
XFILL_0__2674_ gnd vdd FILL
X_4780_ ibus_pending_rdt[30] _2047_ vdd gnd INVX1
X_4360_ _1122_ clk_sys_bF$buf43 \u_cpu.bufreg2.cnt_next\[6] vdd gnd DFFPOSX1
XFILL_0__3879_ gnd vdd FILL
XFILL_0__3459_ gnd vdd FILL
XFILL_0__3039_ gnd vdd FILL
X_3631_ _2116_ _2118_ _2119_ vdd gnd NAND2X1
X_3211_ rf_wreq rst_bF$buf5 _1731_ vdd gnd NOR2X1
X_4836_ i_rst_n_bF$buf4 vdd _1830_ clk_sys_bF$buf14 ibus_pending_rdt[21] vdd 
+ gnd
+ DFFSR
X_4416_ _1538_ _1531_ _1539_ _1535_ _1473_ vdd 
+ gnd
+ OAI22X1
XFILL_1__3373_ gnd vdd FILL
XBUFX2_insert110 i_rst_n i_rst_n_bF$buf4 vdd gnd BUFX2
XBUFX2_insert111 i_rst_n i_rst_n_bF$buf3 vdd gnd BUFX2
XBUFX2_insert112 i_rst_n i_rst_n_bF$buf2 vdd gnd BUFX2
XBUFX2_insert113 i_rst_n i_rst_n_bF$buf1 vdd gnd BUFX2
XBUFX2_insert114 i_rst_n i_rst_n_bF$buf0 vdd gnd BUFX2
XFILL_1__4578_ gnd vdd FILL
XBUFX2_insert115 _446_ _446__bF$buf3 vdd gnd BUFX2
XBUFX2_insert116 _446_ _446__bF$buf2 vdd gnd BUFX2
XBUFX2_insert117 _446_ _446__bF$buf1 vdd gnd BUFX2
XBUFX2_insert118 _446_ _446__bF$buf0 vdd gnd BUFX2
XBUFX2_insert119 _484_ _484__bF$buf3 vdd gnd BUFX2
XFILL_0__2483_ gnd vdd FILL
X_2902_ _505_ clk_sys_bF$buf17 \u_rf_if.rreg0_latched\[3] vdd gnd DFFPOSX1
XFILL_0__3688_ gnd vdd FILL
XFILL_1__3009_ gnd vdd FILL
X_2499_ \u_mem_serial.active_ibus_bF$buf5\ _1017_ _1018_ _1019_ vdd gnd OAI21X1
X_3860_ _367_ clk_sys_bF$buf7 \u_cpu.decode.opcode\[1] vdd gnd DFFPOSX1
X_3440_ \u_rf_if.read_buf0\[18] \u_rf_if.stream_cnt_0_bF$buf0\ \u_rf_if.stream_cnt_1_bF$buf0\ _298_ vdd gnd OAI21X1
X_3020_ _1697_ _1593_ _1592_ _513_ vdd gnd AOI21X1
XFILL_0__2959_ gnd vdd FILL
X_4645_ i_rst_n_bF$buf4 rst vdd gnd INVX8
X_4225_ \u_cpu.bufreg2.cnt_next\[6] _1202_ vdd gnd INVX1
XFILL_0__3900_ gnd vdd FILL
XFILL_1_CLKBUF1_insert153 gnd vdd FILL
X_2711_ _114_ \u_rf_serial.last_req_key\[4] _235_ vdd gnd OR2X2
XFILL_0__3497_ gnd vdd FILL
XFILL_0__3077_ gnd vdd FILL
X_3916_ _688_ _689_ _690_ _631_ vdd gnd OAI21X1
XFILL_0__2348_ gnd vdd FILL
X_4454_ \u_cpu.ctrl.o_ibus_adr\[13] _1530__bF$buf4 _1561_ vdd gnd NAND2X1
X_4034_ _892__bF$buf1 _908_ _910_ _866_ vdd gnd OAI21X1
XFILL_1_CLKBUF1_insert50 gnd vdd FILL
XFILL_1_CLKBUF1_insert54 gnd vdd FILL
XFILL_1_CLKBUF1_insert58 gnd vdd FILL
XFILL_0_BUFX2_insert10 gnd vdd FILL
XFILL_0_BUFX2_insert12 gnd vdd FILL
XFILL_0_BUFX2_insert14 gnd vdd FILL
XFILL_0_BUFX2_insert16 gnd vdd FILL
XFILL_0_BUFX2_insert18 gnd vdd FILL
X_2940_ _517_ clk_sys_bF$buf26 \u_rf_if.issue_chunk\[2] vdd gnd DFFPOSX1
X_2520_ \u_cpu.ctrl.o_ibus_adr\[27] _997_ vdd gnd INVX1
X_3725_ _165_ _168_ _163_ \u_cpu.cnt12to31\ vdd gnd OAI21X1
X_3305_ _4_ \u_rf_if.issue_chunk\[2] _2069_ _1798_ vdd gnd NOR3X1
XFILL_1__3047_ gnd vdd FILL
XFILL_0__2997_ gnd vdd FILL
X_4683_ _1918_ _1983__bF$buf0 _1987_ _1830_ vdd gnd OAI21X1
X_4263_ \u_cpu.bufreg.i_shamt\[1] \u_cpu.bufreg.i_shamt\[0] _1235_ vdd gnd AND2X2
XFILL145050x14550 gnd vdd FILL
XFILL_0__4723_ gnd vdd FILL
XFILL_1__2318_ gnd vdd FILL
X_3954_ \u_cpu.decode.i_wb_rdt\[25] \u_cpu.immdec.gen_immdec_w_eq_1.imm30_25\[1] rf_rreq_bF$buf3 _716_ vdd gnd MUX2X1
X_3534_ \u_rf_if.read_buf1\[10] \u_rf_if.stream_cnt_0_bF$buf2\ \u_rf_if.stream_cnt_1_bF$buf2\ _436_ vdd gnd OAI21X1
X_3114_ _2099_ _1715__bF$buf4 _1792_ _1658_ vdd gnd NAND3X1
X_4739_ \u_mem_serial.shift_rx\[3] mem_ibus_ack_bF$buf0 _1984__bF$buf1 _2022_ vdd gnd NAND3X1
X_4319_ _1275_ _1164__bF$buf1 _1277_ _1124_ vdd gnd OAI21X1
XFILL_0__2386_ gnd vdd FILL
X_4492_ _1470_ clk_sys_bF$buf0 \u_cpu.ctrl.o_ibus_adr\[2] vdd gnd DFFPOSX1
X_4072_ _936_ _935_ _934_ _937_ vdd gnd NAND3X1
X_2805_ _93_ _92_ _94_ vdd gnd NAND2X1
XFILL_1__2967_ gnd vdd FILL
X_3763_ \u_cpu.decode.opcode\[0] \u_cpu.cond_branch\ vdd gnd INVX2
X_3343_ _18__bF$buf1 _2064_ \u_rf_if.read_buf1\[27] _2063_ vdd gnd OAI21X1
X_4548_ _1890_ _1891_ rf_write_drain_busy _1897_ vdd gnd AOI21X1
X_4128_ _889_ clk_sys_bF$buf38 \u_cpu.bufreg.data\[14] vdd gnd DFFPOSX1
XFILL_1__3085_ gnd vdd FILL
X_2614_ \u_mem_serial.bit_count\[3] _801_ _802_ vdd gnd NAND2X1
XFILL_0__4761_ gnd vdd FILL
X_3819_ \u_cpu.decode.opcode\[1] \u_cpu.cond_branch\ \u_cpu.branch_op\ \u_cpu.bufreg.i_rs1_en\ vdd gnd OAI21X1
XFILL_1__2356_ gnd vdd FILL
XBUFX2_insert20 \u_rf_if.stream_cnt\[0] \u_rf_if.stream_cnt_0_bF$buf3\ vdd gnd BUFX2
XBUFX2_insert21 \u_rf_if.stream_cnt\[0] \u_rf_if.stream_cnt_0_bF$buf2\ vdd gnd BUFX2
XBUFX2_insert22 \u_rf_if.stream_cnt\[0] \u_rf_if.stream_cnt_0_bF$buf1\ vdd gnd BUFX2
XBUFX2_insert23 \u_rf_if.stream_cnt\[0] \u_rf_if.stream_cnt_0_bF$buf0\ vdd gnd BUFX2
XBUFX2_insert24 _1715_ _1715__bF$buf4 vdd gnd BUFX2
XBUFX2_insert25 _1715_ _1715__bF$buf3 vdd gnd BUFX2
XBUFX2_insert26 _1715_ _1715__bF$buf2 vdd gnd BUFX2
XBUFX2_insert27 _1715_ _1715__bF$buf1 vdd gnd BUFX2
XBUFX2_insert28 _1715_ _1715__bF$buf0 vdd gnd BUFX2
XBUFX2_insert29 _2062_ _2062__bF$buf3 vdd gnd BUFX2
X_3992_ _628_ clk_sys_bF$buf31 \u_cpu.immdec.gen_immdec_w_eq_1.imm7\ vdd gnd DFFPOSX1
X_3572_ gnd _467_ vdd gnd INVX1
X_3152_ _1685_ _1684_ rst_bF$buf2 _555_ vdd gnd AOI21X1
X_4777_ rf_read_reg0[0] _1962_ _1895__bF$buf1 _2045_ vdd gnd NAND3X1
X_4357_ _1125_ clk_sys_bF$buf4 \u_cpu.bufreg2.dlo\[12] vdd gnd DFFPOSX1
XFILL_1__4099_ gnd vdd FILL
X_2843_ _540_ clk_sys_bF$buf2 \u_rf_if.read_buf0\[16] vdd gnd DFFPOSX1
X_2423_ \u_cpu.mem_if.o_wb_sel\[2] _1095_ vdd gnd INVX1
XFILL_0__4150_ gnd vdd FILL
X_3628_ \u_cpu.alu.i_sub\ _2115_ _2116_ vdd gnd NAND2X1
X_3208_ _1729_ _1728_ vdd gnd INVX1
XFILL_1__2165_ gnd vdd FILL
X_3381_ _2153_ _11_ _2152_ vdd gnd AND2X2
X_4586_ \u_mem_serial.shift_rx\[17] _1877__bF$buf5 _1923_ vdd gnd NAND2X1
X_4166_ rdata1[0] \u_cpu.bufreg2.i_op_b_sel\ _1152_ vdd gnd NAND2X1
XFILL_0__3421_ gnd vdd FILL
XFILL_0__3001_ gnd vdd FILL
XFILL_0__4626_ gnd vdd FILL
X_2652_ _85_ _289_ _2161_ _290_ vdd gnd OAI21X1
X_2232_ \u_mem_serial.state\[1] _1296_ _1441_ vdd gnd NAND2X1
X_3857_ rf_rreq_bF$buf1 _384_ _417_ _369_ vdd gnd OAI21X1
X_3437_ \u_rf_if.read_buf0\[20] \u_rf_if.stream_cnt_0_bF$buf4\ _295_ vdd gnd NOR2X1
X_3017_ _1591_ _1696_ _1590_ _512_ vdd gnd AOI21X1
XFILL_1__2394_ gnd vdd FILL
XFILL_1_BUFX2_insert88 gnd vdd FILL
XFILL_0_CLKBUF1_insert60 gnd vdd FILL
XFILL_0_CLKBUF1_insert61 gnd vdd FILL
XFILL_0_CLKBUF1_insert63 gnd vdd FILL
XFILL_0_CLKBUF1_insert65 gnd vdd FILL
XFILL_0_CLKBUF1_insert67 gnd vdd FILL
XFILL_0_CLKBUF1_insert69 gnd vdd FILL
X_3190_ _1714_ _1716_ rst_bF$buf2 _563_ vdd gnd AOI21X1
XFILL_0__2289_ gnd vdd FILL
X_4395_ _1520_ _1517_ _1523_ _1524_ vdd gnd OAI21X1
X_2708_ \u_rf_if.o_wen\ _238_ vdd gnd INVX1
XFILL_0__4435_ gnd vdd FILL
XFILL_0__4015_ gnd vdd FILL
X_2881_ _507_ clk_sys_bF$buf26 \u_rf_if.issue_chunk\[0] vdd gnd DFFPOSX1
X_2461_ _840_ \u_cpu.bufreg.i_shamt\[0] \u_cpu.bufreg.i_shamt\[2] _1048_ _1057_ vdd 
+ gnd
+ AOI22X1
X_3666_ \u_cpu.immdec.gen_immdec_w_eq_1.imm11_7\[1] \u_cpu.immdec.gen_immdec_w_eq_1.imm11_7\[0] _33_ vdd gnd NOR2X1
X_3246_ _449_ _1754_ \u_rf_if.stream_active\ _1753_ vdd gnd OAI21X1
X_2937_ _552_ clk_sys_bF$buf13 \u_rf_if.read_buf0\[26] vdd gnd DFFPOSX1
X_2517_ _995_ _1000_ _808_ _1001_ vdd gnd AOI21X1
XFILL_0__4664_ gnd vdd FILL
X_2690_ _219_ _110_ _255_ _256_ vdd gnd NAND3X1
X_2270_ _1316__bF$buf2 _800_ _1415_ _771_ vdd gnd AOI21X1
XFILL_1__4405_ gnd vdd FILL
X_3895_ \u_cpu.decode.co_immdec_ctrl\[2] _672_ vdd gnd INVX1
X_3475_ \u_rf_if.read_buf0\[6] \u_rf_if.stream_cnt_0_bF$buf4\ \u_rf_if.stream_cnt_1_bF$buf3\ _333_ vdd gnd OAI21X1
X_3055_ _2062__bF$buf1 _1715__bF$buf1 _1742_ _1616_ vdd gnd NAND3X1
XFILL_0__2310_ gnd vdd FILL
X_2746_ \u_rf_serial.tx_state\[4] _81_ _210_ vdd gnd NOR2X1
X_2326_ _1370_ _1371_ vdd gnd INVX1
XFILL_0__4473_ gnd vdd FILL
XFILL_0__4053_ gnd vdd FILL
XFILL_1__4214_ gnd vdd FILL
X_3284_ _1782_ _1784_ rst_bF$buf9 _589_ vdd gnd AOI21X1
XFILL_0_BUFX2_insert101 gnd vdd FILL
XFILL_0_BUFX2_insert103 gnd vdd FILL
XFILL_0_BUFX2_insert105 gnd vdd FILL
XFILL_0_BUFX2_insert107 gnd vdd FILL
XFILL_0_BUFX2_insert109 gnd vdd FILL
X_4489_ _1494_ clk_sys_bF$buf9 \u_cpu.ctrl.o_ibus_adr\[9] vdd gnd DFFPOSX1
X_4069_ \u_cpu.bufreg.i_imm_en\ \u_cpu.bufreg.i_imm\ _933_ _934_ vdd gnd NAND3X1
XFILL_0__3744_ gnd vdd FILL
XFILL_0__3324_ gnd vdd FILL
XFILL_0__4529_ gnd vdd FILL
X_2975_ _621_ _735_ _498_ vdd gnd NOR2X1
X_2555_ _798_ _858_ _961_ _962_ vdd gnd NAND3X1
X_4701_ _1998_ _1999_ _2000_ vdd gnd NOR2X1
XFILL_1__4443_ gnd vdd FILL
XFILL_1__4023_ gnd vdd FILL
X_3093_ _1643_ _1644_ rst_bF$buf2 _535_ vdd gnd AOI21X1
X_4298_ _1260_ _1164__bF$buf3 _1262_ _1118_ vdd gnd OAI21X1
XFILL_0__4338_ gnd vdd FILL
X_2784_ _98_ _114_ _115_ vdd gnd NAND2X1
X_2364_ _1337_ _1340_ rst_bF$buf4 _752_ vdd gnd AOI21X1
XFILL_0__4091_ gnd vdd FILL
X_3989_ _631_ clk_sys_bF$buf15 \u_cpu.immdec.gen_immdec_w_eq_1.imm11_7\[4] vdd gnd DFFPOSX1
X_3569_ gnd _465_ vdd gnd INVX1
X_3149_ _1717__bF$buf0 _2162_ \u_rf_if.read_buf0\[31] _1682_ vdd gnd OAI21X1
XFILL_0__2824_ gnd vdd FILL
X_4510_ _1500_ clk_sys_bF$buf31 \u_cpu.ctrl.o_ibus_adr\[31] vdd gnd DFFPOSX1
XFILL_0__3609_ gnd vdd FILL
XFILL_1__4252_ gnd vdd FILL
XFILL_0__3362_ gnd vdd FILL
XFILL144450x136950 gnd vdd FILL
XFILL_0__4567_ gnd vdd FILL
X_2593_ \u_cpu.ctrl.o_ibus_adr\[3] _810_ _798_ _823_ vdd gnd OAI21X1
X_2173_ gnd o_gpio[4] vdd gnd BUFX2
X_3798_ _390_ _392_ vdd gnd INVX1
X_3378_ _2153_ _2149_ vdd gnd INVX1
XFILL_0__2213_ gnd vdd FILL
XFILL_1__4481_ gnd vdd FILL
XFILL_1__4061_ gnd vdd FILL
X_2649_ _197_ _215__bF$buf1 _202_ _292_ vdd gnd OAI21X1
X_2229_ _810_ _1297__bF$buf1 _1444_ vdd gnd NAND2X1
XFILL_0__4376_ gnd vdd FILL
XFILL_1__3332_ gnd vdd FILL
XFILL_1__4537_ gnd vdd FILL
X_3187_ _1712_ _1713_ rst_bF$buf0 _562_ vdd gnd AOI21X1
XFILL_0__3647_ gnd vdd FILL
XFILL_0__3227_ gnd vdd FILL
XFILL_1__4290_ gnd vdd FILL
XFILL_1__2603_ gnd vdd FILL
X_2878_ _585_ clk_sys_bF$buf2 \u_rf_if.read_buf1\[12] vdd gnd DFFPOSX1
X_2458_ _845_ \u_cpu.bufreg2.dhi\[5] \u_cpu.bufreg2.dhi\[6] _1048_ _1060_ vdd 
+ gnd
+ AOI22X1
X_4604_ \u_mem_serial.shift_rx\[27] _1877__bF$buf1 _1935_ vdd gnd NAND2X1
XFILL_0__2251_ gnd vdd FILL
XFILL_1__3617_ gnd vdd FILL
X_2687_ \u_rf_serial.last_req_key\[1] _164_ _258_ _259_ vdd gnd NAND3X1
X_2267_ \u_mem_serial.bit_count_0_bF$buf1\ _1297__bF$buf1 _1310_ _1417_ vdd gnd OAI21X1
XFILL_0__2727_ gnd vdd FILL
X_4833_ i_rst_n_bF$buf3 vdd _1833_ clk_sys_bF$buf16 has_fetched_first_insn vdd 
+ gnd
+ DFFSR
X_4413_ _1536_ _1535_ _1537_ _1472_ vdd gnd OAI21X1
XFILL_1__3370_ gnd vdd FILL
XFILL_1__4575_ gnd vdd FILL
XFILL_0__3265_ gnd vdd FILL
X_2496_ _809_ _1012_ _1021_ _1022_ vdd gnd AOI21X1
XFILL_0__2536_ gnd vdd FILL
X_4642_ rf_read_reg1[3] _1960_ vdd gnd INVX1
X_4222_ \u_mem_serial.shift_rx\[0] \u_cpu.bufreg2.dlo\[1] mem_dbus_ack_bF$buf3 _1200_ vdd gnd MUX2X1
XFILL144450x97350 gnd vdd FILL
X_3913_ rf_rreq_bF$buf0 \u_cpu.decode.co_immdec_en\[0] _669_ _688_ vdd gnd OAI21X1
XFILL_0__4279_ gnd vdd FILL
XFILL_1__3655_ gnd vdd FILL
XFILL_0__2765_ gnd vdd FILL
X_4451_ \u_cpu.ctrl.o_ibus_adr\[14] _1530__bF$buf4 _1559_ vdd gnd NAND2X1
X_4031_ \u_cpu.bufreg.i_en_bF$buf2\ \u_cpu.bufreg.data\[7] _909_ vdd gnd NAND2X1
X_3722_ \u_cpu.state.cnt_r\[0] \u_cpu.cnt0to3\ _173_ vdd gnd NAND2X1
X_3302_ _13_ _2096_ _2092_ _1796_ vdd gnd NAND3X1
X_4507_ _1479_ clk_sys_bF$buf6 \u_cpu.ctrl.o_ibus_adr\[22] vdd gnd DFFPOSX1
XFILL_0__2574_ gnd vdd FILL
X_4680_ mem_ibus_ack_bF$buf3 \u_mem_serial.shift_rx\[22] _1984__bF$buf4 _1986_ vdd gnd NAND3X1
X_4260_ _1154_ \u_mem_serial.shift_rx\[26] _1232_ _1233_ vdd gnd OAI21X1
XFILL_0__4300_ gnd vdd FILL
X_3951_ \u_cpu.decode.i_wb_rdt\[26] \u_cpu.immdec.gen_immdec_w_eq_1.imm30_25\[2] rf_rreq_bF$buf3 _714_ vdd gnd MUX2X1
X_3531_ \u_rf_if.read_buf1\[1] _433_ vdd gnd INVX1
X_3111_ _5_ _1715__bF$buf4 _1786_ _1655_ vdd gnd NAND3X1
X_4736_ mem_ibus_ack_bF$buf3 \u_mem_serial.shift_rx\[4] _1984__bF$buf3 _2020_ vdd gnd NAND3X1
X_4316_ \u_cpu.bufreg2.dlo\[13] _1275_ vdd gnd INVX1
X_2802_ _90_ _97_ vdd gnd INVX1
XFILL_0__3588_ gnd vdd FILL
XFILL_0__3168_ gnd vdd FILL
XFILL_1__3749_ gnd vdd FILL
X_2399_ \u_cpu.o_dbus_cyc\ \u_cpu.o_ibus_cyc\ _1310_ _1311_ vdd gnd OAI21X1
X_3760_ _129_ clk_sys_bF$buf34 \u_cpu.state.cnt_r\[1] vdd gnd DFFPOSX1
X_3340_ _2061_ _2152__bF$buf3 _2060_ vdd gnd NOR2X1
XFILL_0__2439_ gnd vdd FILL
X_4545_ _1886_ _1894_ _1892_ _1895_ vdd gnd NAND3X1
X_4125_ _878_ clk_sys_bF$buf7 \u_cpu.state.i_ctrl_misalign\ vdd gnd DFFPOSX1
X_2611_ _804_ _801_ _805_ vdd gnd NAND2X1
X_3816_ \u_cpu.cond_branch\ _386_ \u_cpu.ctrl.i_jal_or_jalr\ vdd gnd NOR2X1
XFILL_1__3978_ gnd vdd FILL
XFILL_1__3138_ gnd vdd FILL
XFILL_0__2668_ gnd vdd FILL
X_4774_ rf_read_reg0[1] _1962_ _1895__bF$buf0 _2043_ vdd gnd NAND3X1
X_4354_ _1128_ clk_sys_bF$buf25 \u_cpu.bufreg2.dlo\[9] vdd gnd DFFPOSX1
XFILL_1__2409_ gnd vdd FILL
X_2840_ _604_ clk_sys_bF$buf24 \u_rf_if.stream_cnt\[0] vdd gnd DFFPOSX1
X_2420_ _1093_ _1096_ _1097_ _1292_ vdd gnd AOI21X1
X_3625_ \u_cpu.alu.add_cy_r\ rdata0[0] _2113_ vdd gnd NOR2X1
X_3205_ \u_rf_if.o_waddr\[3] _1726_ _1725_ vdd gnd NOR2X1
XFILL_0__2477_ gnd vdd FILL
X_4583_ _1894_ \u_cpu.decode.i_wb_rdt\[21] _1897_ _1921_ vdd gnd NAND3X1
X_4163_ \u_cpu.bufreg2.dlo\[8] \u_cpu.bufreg2.dlo\[0] \u_cpu.bufreg.data\[0] _1150_ vdd gnd MUX2X1
XFILL_0__4203_ gnd vdd FILL
X_3854_ rf_rreq_bF$buf0 \u_cpu.decode.i_wb_rdt\[6] _416_ vdd gnd NAND2X1
X_3434_ \u_rf_if.read_buf0\[22] \u_rf_if.stream_cnt_0_bF$buf4\ \u_rf_if.stream_cnt_1_bF$buf3\ _49_ vdd gnd OAI21X1
X_3014_ _1589_ _1696_ _1588_ _511_ vdd gnd AOI21X1
X_4639_ rf_read_reg0[3] _1958_ vdd gnd INVX1
X_4219_ _1196_ _1195_ _1171_ _1197_ vdd gnd OAI21X1
XFILL_1__3176_ gnd vdd FILL
X_4392_ \u_cpu.cnt2\ _1521_ vdd gnd INVX1
X_2705_ \u_rf_serial.req_seen\ _240_ _239_ _241_ vdd gnd NAND3X1
XFILL_0__4432_ gnd vdd FILL
XFILL_1__2447_ gnd vdd FILL
X_3663_ \u_cpu.alu.cmp_r\ _2146_ _2148_ vdd gnd NAND2X1
X_3243_ _18__bF$buf3 _1759_ \u_rf_if.read_buf1\[6] _1751_ vdd gnd OAI21X1
X_4448_ \u_cpu.ctrl.o_ibus_adr\[15] _1530__bF$buf2 _1557_ vdd gnd NAND2X1
X_4028_ \u_cpu.bufreg.data\[7] _892__bF$buf2 _907_ vdd gnd NAND2X1
XFILL_0__3703_ gnd vdd FILL
X_2934_ _554_ clk_sys_bF$buf40 \u_rf_if.ready_pulse\ vdd gnd DFFPOSX1
X_2514_ _806_ _1003_ _807_ _1002_ _1004_ vdd 
+ gnd
+ OAI22X1
XFILL_0__4241_ gnd vdd FILL
X_3719_ _171_ \u_cpu.cnt2\ vdd gnd INVX1
XFILL_1__2676_ gnd vdd FILL
X_3892_ rf_rreq_bF$buf1 \u_cpu.decode.i_wb_rdt\[7] _670_ vdd gnd AND2X2
X_3472_ _448_ _337_ _331_ _330_ vdd gnd AOI21X1
X_3052_ _1742_ _1715__bF$buf1 _2099_ _1614_ vdd gnd NAND3X1
X_4677_ _1877__bF$buf4 _1897_ _1984_ vdd gnd NAND2X1
X_4257_ _1229_ _1228_ _1136_ _1230_ vdd gnd OAI21X1
XFILL_0__3932_ gnd vdd FILL
XFILL_0__3512_ gnd vdd FILL
XFILL_0__4717_ gnd vdd FILL
X_2743_ _209_ _211_ _212_ _54_ vdd gnd AOI21X1
X_2323_ _1316__bF$buf1 _1304__bF$buf0 \u_mem_serial.shift_rx\[0] _1373_ vdd gnd OAI21X1
XFILL_0__4470_ gnd vdd FILL
X_3948_ \u_cpu.decode.i_wb_rdt\[27] \u_cpu.immdec.gen_immdec_w_eq_1.imm30_25\[3] rf_rreq_bF$buf3 _712_ vdd gnd MUX2X1
X_3528_ \u_rf_if.read_buf1\[3] _446__bF$buf1 _430_ vdd gnd NOR2X1
X_3108_ _5_ _1715__bF$buf4 _1783_ _1652_ vdd gnd NAND3X1
XFILL_1__2485_ gnd vdd FILL
X_3281_ _10__bF$buf3 _2151_ _1779_ vdd gnd NOR2X1
X_4486_ _1582_ _1581_ _1579_ _1500_ vdd gnd OAI21X1
X_4066_ \u_cpu.bufreg.i_en_bF$buf1\ \u_cpu.bufreg.data\[25] _932_ vdd gnd NAND2X1
XFILL_0__4106_ gnd vdd FILL
XFILL_1__3902_ gnd vdd FILL
X_2972_ _480_ _620_ _619_ vdd gnd NOR2X1
X_2552_ \u_mem_serial.bit_count_0_bF$buf0\ \u_mem_serial.bit_count\[1] _800_ _965_ vdd gnd OAI21X1
X_3757_ _131_ clk_sys_bF$buf34 \u_cpu.state.init_done\ vdd gnd DFFPOSX1
X_3337_ _18__bF$buf1 _2064_ \u_rf_if.read_buf1\[26] _2058_ vdd gnd OAI21X1
XFILL_1__3499_ gnd vdd FILL
X_3090_ _1642_ _1641_ rst_bF$buf8 _534_ vdd gnd AOI21X1
X_4295_ \u_cpu.bufreg2.dlo\[17] _1260_ vdd gnd INVX1
XFILL_0__3970_ gnd vdd FILL
XFILL_0__3550_ gnd vdd FILL
XFILL_0__3130_ gnd vdd FILL
X_2608_ _806_ _807_ _808_ vdd gnd NAND2X1
XFILL_0__4755_ gnd vdd FILL
X_2781_ ren_bF$buf1 raddr[3] _118_ vdd gnd NAND2X1
X_2361_ _1342_ _1343_ vdd gnd INVX1
X_3986_ _634_ clk_sys_bF$buf30 rreg0[1] vdd gnd DFFPOSX1
X_3566_ gnd _463_ vdd gnd INVX1
X_3146_ _1717__bF$buf0 _2064_ \u_rf_if.read_buf0\[26] _1680_ vdd gnd OAI21X1
XFILL_0__2401_ gnd vdd FILL
XFILL_0__3606_ gnd vdd FILL
X_2837_ _491_ clk_sys_bF$buf41 \u_rf_if.wdata1_r\[0] vdd gnd DFFPOSX1
X_2417_ _1294_ _1046_ _1295_ vdd gnd OR2X2
XFILL_0__4144_ gnd vdd FILL
XFILL_1__3940_ gnd vdd FILL
XFILL_1__3100_ gnd vdd FILL
X_2590_ \u_cpu.ctrl.o_ibus_adr\[1] gnd \u_mem_serial.active_ibus_bF$buf6\ _826_ vdd gnd MUX2X1
X_2170_ gnd o_gpio[7] vdd gnd BUFX2
X_3795_ \u_cpu.bufreg2.i_op_b_sel\ \u_cpu.cond_branch\ _390_ vdd gnd NAND2X1
XFILL145050x111750 gnd vdd FILL
X_3375_ \u_rf_if.rreg0_latched\[4] _2108_ vdd gnd INVX1
XFILL_0__3415_ gnd vdd FILL
X_2646_ _237_ _215__bF$buf2 _293_ _70_ vdd gnd AOI21X1
X_2226_ _1316__bF$buf0 _1304__bF$buf4 \u_mem_serial.shift_rx\[21] _1446_ vdd gnd OAI21X1
XFILL_0__4793_ gnd vdd FILL
XFILL_0__4373_ gnd vdd FILL
X_3184_ _478_ _1711_ _1709_ vdd gnd NOR2X1
X_4389_ _1517_ _1518_ _1516_ _1519_ vdd gnd OAI21X1
XFILL_0__3644_ gnd vdd FILL
XFILL_0__4009_ gnd vdd FILL
X_2875_ _532_ clk_sys_bF$buf22 \u_rf_if.read_buf0\[9] vdd gnd DFFPOSX1
X_2455_ _1055_ _1062_ _1007_ _1063_ vdd gnd OAI21X1
XFILL_0__4182_ gnd vdd FILL
X_4601_ \u_mem_serial.shift_rx\[28] _1877__bF$buf1 _1933_ vdd gnd NAND2X1
X_4198_ mem_dbus_ack_bF$buf3 \u_mem_serial.shift_rx\[5] _1172__bF$buf1 _1180_ _1181_ vdd 
+ gnd
+ AOI22X1
XFILL_0__3873_ gnd vdd FILL
XFILL_0__3453_ gnd vdd FILL
XFILL_0__3033_ gnd vdd FILL
XFILL_0__4658_ gnd vdd FILL
X_2684_ raddr[1] _262_ vdd gnd INVX1
X_2264_ _1406_ _1408_ \u_mem_serial.active_ibus_bF$buf0\ _1419_ vdd gnd OAI21X1
XFILL144750x136950 gnd vdd FILL
X_3889_ _667_ _660_ _666_ _627_ vdd gnd OAI21X1
X_3469_ \u_rf_if.stream_cnt_0_bF$buf1\ _329_ _328_ _327_ vdd gnd OAI21X1
X_3049_ _2062__bF$buf1 \u_rf_if.read_buf0\[1] _1613_ _1612_ vdd gnd MUX2X1
XFILL_0__2304_ gnd vdd FILL
X_4830_ i_rst_n_bF$buf2 vdd _1836_ clk_sys_bF$buf32 current_wdata0_next_hint vdd 
+ gnd
+ DFFSR
X_4410_ \u_cpu.ctrl.o_ibus_adr\[1] _1536_ vdd gnd INVX1
XFILL_0__4047_ gnd vdd FILL
XFILL_1__3423_ gnd vdd FILL
X_2493_ \u_mem_serial.active_ibus_bF$buf3\ \u_cpu.bufreg.data\[22] _1025_ vdd gnd OR2X2
XFILL_1__4628_ gnd vdd FILL
X_3698_ \u_cpu.state.i_alu_rd_sel1\ \u_cpu.decode.co_rd_alu_en\ _158_ vdd gnd NAND2X1
X_3278_ _18__bF$buf3 _1781_ \u_rf_if.read_buf1\[14] _1777_ vdd gnd OAI21X1
XFILL_0__3738_ gnd vdd FILL
XFILL_0__3318_ gnd vdd FILL
XFILL_0__3491_ gnd vdd FILL
XFILL_0__3071_ gnd vdd FILL
X_2969_ _480_ _620_ _1731_ _617_ vdd gnd OAI21X1
X_2549_ \u_mem_serial.active_ibus_bF$buf5\ \u_cpu.ctrl.o_ibus_adr\[9] _968_ vdd gnd NAND2X1
X_3910_ \u_cpu.decode.i_wb_rdt\[24] \u_cpu.immdec.gen_immdec_w_eq_1.imm30_25\[0] rf_rreq_bF$buf2 _686_ vdd gnd MUX2X1
XFILL_0__4696_ gnd vdd FILL
X_3087_ _1640_ _1639_ rst_bF$buf8 _533_ vdd gnd AOI21X1
XFILL_0__2342_ gnd vdd FILL
X_2778_ \u_rf_if.o_waddr\[2] _121_ vdd gnd INVX1
X_2358_ _1316__bF$buf3 _1304__bF$buf3 \u_mem_serial.shift_rx\[7] _1345_ vdd gnd OAI21X1
XFILL_0__4085_ gnd vdd FILL
XFILL_0__2818_ gnd vdd FILL
X_4504_ _1480_ clk_sys_bF$buf19 \u_cpu.ctrl.o_ibus_adr\[21] vdd gnd DFFPOSX1
XFILL_1__3461_ gnd vdd FILL
XFILL_1__4666_ gnd vdd FILL
XFILL_0__3356_ gnd vdd FILL
X_2587_ _819_ _828_ _805_ _829_ vdd gnd MUX2X1
X_2167_ _2157_ o_mem_sck vdd gnd BUFX2
X_4733_ mem_ibus_ack_bF$buf0 \u_mem_serial.shift_rx\[5] _1984__bF$buf1 _2018_ vdd gnd NAND3X1
X_4313_ mem_dbus_ack_bF$buf2 _1265_ _1273_ vdd gnd NOR2X1
XFILL_1__3690_ gnd vdd FILL
XFILL_0__2380_ gnd vdd FILL
X_2396_ \u_mem_serial.req_pending\ \u_mem_serial.state\[0] _1305_ _1314_ vdd gnd OAI21X1
XFILL_0__2436_ gnd vdd FILL
X_4542_ _1891_ _1890_ _1892_ vdd gnd NAND2X1
X_4122_ _863_ clk_sys_bF$buf9 \u_cpu.bufreg.data\[8] vdd gnd DFFPOSX1
XFILL_0__3394_ gnd vdd FILL
X_3813_ \u_cpu.branch_op\ \u_cpu.bufreg2.i_op_b_sel\ _401_ vdd gnd NOR2X1
XFILL_0__4599_ gnd vdd FILL
XFILL_0__2665_ gnd vdd FILL
X_4771_ _1962_ rf_read_reg0[2] _1895__bF$buf1 _2041_ vdd gnd NAND3X1
X_4351_ _1099_ clk_sys_bF$buf28 \u_cpu.bufreg2.dlo\[6] vdd gnd DFFPOSX1
X_3622_ \u_cpu.mem_if.signbit\ _2082_ _2084_ _2087_ vdd gnd NAND3X1
X_3202_ _1727_ _1723_ _1730_ _566_ vdd gnd AOI21X1
X_4827_ i_rst_n_bF$buf5 vdd _1839_ clk_sys_bF$buf1 ibus_pending_rdt[16] vdd 
+ gnd
+ DFFSR
X_4407_ \u_cpu.ctrl.o_ibus_adr\[2] _1534_ vdd gnd INVX1
XFILL_0__2474_ gnd vdd FILL
X_4580_ \u_mem_serial.shift_rx\[21] _1877__bF$buf5 _1919_ vdd gnd NAND2X1
X_4160_ \u_cpu.bufreg2.dlo\[16] _1147_ vdd gnd INVX1
XFILL_0__3679_ gnd vdd FILL
XFILL_0__3259_ gnd vdd FILL
XFILL_0__4620_ gnd vdd FILL
XFILL_1__2215_ gnd vdd FILL
X_3851_ rf_rreq_bF$buf3 \u_cpu.bufreg.i_imm_en\ _414_ _366_ vdd gnd OAI21X1
X_3431_ _296_ _47_ \u_rf_if.stream_cnt\[3] _46_ vdd gnd AOI21X1
X_3011_ raddr[0] _1586_ vdd gnd INVX1
XFILL_1_BUFX2_insert20 gnd vdd FILL
XFILL_1_BUFX2_insert27 gnd vdd FILL
X_4636_ \u_mem_serial.shift_rx\[0] _1956_ vdd gnd INVX1
X_4216_ \u_cpu.state.i_ctrl_misalign\ _1194_ vdd gnd INVX1
XFILL_1__4378_ gnd vdd FILL
X_2702_ ren_bF$buf4 raddr[8] _244_ vdd gnd NAND2X1
X_3907_ \u_cpu.immdec.gen_immdec_w_eq_1.imm30_25\[5] _683_ _684_ vdd gnd NAND2X1
XFILL_1__3229_ gnd vdd FILL
X_2299_ _1393_ _1394_ vdd gnd INVX1
X_3660_ \u_cpu.alu.i_en\ _2146_ vdd gnd INVX1
X_3240_ rst_bF$buf5 _484__bF$buf3 _577_ vdd gnd NOR2X1
XFILL_0__2759_ gnd vdd FILL
XFILL_0__2339_ gnd vdd FILL
X_4445_ \u_cpu.ctrl.o_ibus_adr\[16] _1530__bF$buf0 _1555_ vdd gnd NAND2X1
X_4025_ \u_cpu.bufreg.data\[8] _905_ vdd gnd INVX1
XFILL_0__3700_ gnd vdd FILL
X_2931_ _519_ clk_sys_bF$buf16 \u_rf_if.rreg1_latched\[0] vdd gnd DFFPOSX1
X_2511_ _833_ _831_ _1007_ vdd gnd AND2X2
XFILL_0__3297_ gnd vdd FILL
X_3716_ _791_ i_clk_fast_bF$buf6 \u_mem_serial.shift_rx\[16] vdd gnd DFFPOSX1
XFILL145050x21750 gnd vdd FILL
XFILL_1__2253_ gnd vdd FILL
XFILL_0__2988_ gnd vdd FILL
X_4674_ _1965_ _1980_ _1981_ _1827_ vdd gnd NAND3X1
X_4254_ _1206_ _1226_ _1227_ _1109_ vdd gnd OAI21X1
XFILL_1__2729_ gnd vdd FILL
X_2740_ \u_rf_serial.tx_state\[0] _208_ _56_ vdd gnd NOR2X1
X_2320_ _1315__bF$buf2 _1375_ _1303__bF$buf0 _1376_ vdd gnd NAND3X1
X_3945_ \u_cpu.decode.i_wb_rdt\[28] \u_cpu.immdec.gen_immdec_w_eq_1.imm30_25\[4] rf_rreq_bF$buf3 _710_ vdd gnd MUX2X1
X_3525_ \u_rf_if.stream_cnt\[2] _428_ _427_ vdd gnd NOR2X1
X_3105_ _2062__bF$buf0 _1715__bF$buf0 _1779_ _1650_ vdd gnd NAND3X1
XFILL_1__3267_ gnd vdd FILL
XFILL_0__2797_ gnd vdd FILL
XFILL_0__2377_ gnd vdd FILL
X_4483_ \u_cpu.ctrl.i_jump\ _1580_ vdd gnd INVX1
X_4063_ \u_cpu.bufreg.data\[25] _892__bF$buf0 _930_ vdd gnd NAND2X1
XFILL_0__4523_ gnd vdd FILL
XFILL_0__4103_ gnd vdd FILL
XFILL_1__2538_ gnd vdd FILL
X_3754_ _133_ clk_sys_bF$buf34 \u_cpu.state.cnt_r\[0] vdd gnd DFFPOSX1
X_3334_ _13_ _1822_ vdd gnd INVX1
XFILL_1__2291_ gnd vdd FILL
X_4539_ \u_cpu.immdec.gen_immdec_w_eq_1.imm11_7\[3] \u_cpu.immdec.gen_immdec_w_eq_1.imm11_7\[2] _1889_ vdd gnd NOR2X1
X_4119_ _866_ clk_sys_bF$buf8 \u_cpu.bufreg.data\[5] vdd gnd DFFPOSX1
X_4292_ mem_dbus_ack_bF$buf1 _1254_ _1258_ vdd gnd NOR2X1
X_2605_ \u_cpu.ctrl.o_ibus_adr\[6] _810_ _811_ vdd gnd NOR2X1
XFILL_0__4332_ gnd vdd FILL
XFILL_1__2767_ gnd vdd FILL
X_3983_ _637_ clk_sys_bF$buf8 \u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20\[2] vdd gnd DFFPOSX1
X_3563_ gnd _461_ vdd gnd INVX1
X_3143_ _1717__bF$buf2 _1819_ \u_rf_if.read_buf0\[25] _1678_ vdd gnd OAI21X1
X_4768_ rf_read_reg0[3] _1962_ _1895__bF$buf3 _2039_ vdd gnd NAND3X1
X_4348_ _1102_ clk_sys_bF$buf28 \u_cpu.bufreg2.dlo\[3] vdd gnd DFFPOSX1
X_2834_ _543_ clk_sys_bF$buf10 \u_rf_if.read_buf0\[19] vdd gnd DFFPOSX1
X_2414_ \u_mem_serial.state\[0] _1296_ vdd gnd INVX1
XFILL_0__4561_ gnd vdd FILL
X_3619_ \u_cpu.mem_if.signbit\ \u_cpu.decode.co_mem_signed\ _2085_ vdd gnd AND2X2
XFILL_1__2576_ gnd vdd FILL
XFILL_1__4302_ gnd vdd FILL
X_3792_ _777_ i_clk_fast_bF$buf2 \u_mem_serial.shift_rx\[25] vdd gnd DFFPOSX1
X_3372_ \u_rf_if.rreg1_latched\[0] \u_rf_if.rreg1_latched\[1] _2105_ vdd gnd NOR2X1
X_4577_ _1894_ \u_cpu.decode.i_wb_rdt\[20] _1897_ _1917_ vdd gnd NAND3X1
X_4157_ _1136_ _1141_ _1144_ _1145_ vdd gnd NAND3X1
X_2643_ _109_ _208_ _72_ vdd gnd NOR2X1
X_2223_ _1316__bF$buf2 _1304__bF$buf1 \u_mem_serial.shift_rx\[20] _1448_ vdd gnd OAI21X1
X_3848_ rf_rreq_bF$buf1 \u_cpu.decode.i_wb_rdt\[5] _413_ vdd gnd NAND2X1
X_3428_ rf_wreq _44_ vdd gnd INVX2
X_3008_ \u_rf_if.issue_idx\[5] _1698_ \u_rf_if.issue_chunk\[1] _1584_ vdd gnd OAI21X1
X_3181_ \u_rf_if.write_wait\[5] _1707_ vdd gnd INVX1
X_4386_ \u_cpu.ctrl.pc\ \u_cpu.ctrl.pc_plus_4_cy_r_w\ _1516_ vdd gnd NAND2X1
XFILL_0__3221_ gnd vdd FILL
XFILL_0__4426_ gnd vdd FILL
X_2872_ _588_ clk_sys_bF$buf21 \u_rf_if.read_buf1\[15] vdd gnd DFFPOSX1
X_2452_ _966_ _1064_ _1065_ _1066_ vdd gnd NAND3X1
X_3657_ _2142_ _2143_ _2144_ vdd gnd NOR2X1
X_3237_ _18__bF$buf3 _1749_ \u_rf_if.read_buf1\[5] _1748_ vdd gnd OAI21X1
X_4195_ _1176_ _1164__bF$buf4 _1178_ _1099_ vdd gnd OAI21X1
X_2928_ _502_ clk_sys_bF$buf16 \u_rf_if.rreg0_latched\[0] vdd gnd DFFPOSX1
X_2508_ \u_mem_serial.active_ibus_bF$buf4\ \u_cpu.bufreg.data\[19] _1010_ vdd gnd NOR2X1
XFILL_0__4235_ gnd vdd FILL
X_2681_ _259_ _264_ _265_ vdd gnd NAND2X1
X_2261_ _1421_ _1418_ _1419_ _1422_ vdd gnd OAI21X1
XFILL145050x150 gnd vdd FILL
X_3886_ _664_ _665_ vdd gnd INVX4
X_3466_ \u_rf_if.stream_cnt_0_bF$buf5\ _326_ _325_ _324_ vdd gnd OAI21X1
X_3046_ _2100_ _1613_ _1611_ _520_ vdd gnd AOI21X1
XFILL_0__2721_ gnd vdd FILL
XFILL_0__2301_ gnd vdd FILL
XFILL_0__3926_ gnd vdd FILL
XFILL_0__3506_ gnd vdd FILL
X_2737_ _104_ _215__bF$buf1 _202_ _216_ vdd gnd OAI21X1
X_2317_ _1297__bF$buf4 _1377_ _1378_ vdd gnd NAND2X1
XFILL_0__4464_ gnd vdd FILL
XFILL_0__4044_ gnd vdd FILL
X_2490_ \u_cpu.ctrl.o_ibus_adr\[23] _1028_ vdd gnd INVX1
X_3695_ _154_ \u_cpu.bufreg.i_right_shift_op\ _153_ _155_ vdd gnd AOI21X1
X_3275_ _5_ _2095_ _2152__bF$buf2 _1775_ vdd gnd NAND3X1
XFILL_0__2950_ gnd vdd FILL
X_2966_ _1722_ _1636_ _616_ _494_ vdd gnd AOI21X1
X_2546_ \u_cpu.bufreg.data\[8] _971_ vdd gnd INVX1
XFILL_0__4273_ gnd vdd FILL
X_3084_ _1637_ _1638_ rst_bF$buf9 _532_ vdd gnd AOI21X1
X_4289_ mem_dbus_ack_bF$buf0 \u_mem_serial.shift_rx\[19] _1172__bF$buf3 _1255_ _1256_ vdd 
+ gnd
+ AOI22X1
XFILL_0__3964_ gnd vdd FILL
XFILL_0__3544_ gnd vdd FILL
XFILL_1__2500_ gnd vdd FILL
XFILL_0__4749_ gnd vdd FILL
XFILL_1__3705_ gnd vdd FILL
X_2775_ _85_ _123_ _120_ _124_ vdd gnd OAI21X1
X_2355_ _1315__bF$buf2 _1347_ _1303__bF$buf2 _1348_ vdd gnd NAND3X1
XFILL_0__4082_ gnd vdd FILL
X_4501_ _1499_ clk_sys_bF$buf8 \u_cpu.ctrl.o_ibus_adr\[4] vdd gnd DFFPOSX1
X_4098_ \u_cpu.bufreg.data\[16] _954_ vdd gnd INVX1
XFILL_1__3514_ gnd vdd FILL
X_2584_ _797_ _832_ vdd gnd INVX1
X_2164_ _2160_ o_rf_sck vdd gnd BUFX2
XFILL_1__4719_ gnd vdd FILL
X_3789_ _386_ _371_ _387_ vdd gnd NAND2X1
X_3369_ _2104_ _2103_ _2102_ vdd gnd AND2X2
XFILL_0__2204_ gnd vdd FILL
X_4730_ \u_mem_serial.shift_rx\[6] mem_ibus_ack_bF$buf0 _1984__bF$buf1 _2016_ vdd gnd NAND3X1
X_4310_ \u_cpu.bufreg2.cnt_next\[6] _1210_ _1198_ _1271_ vdd gnd NAND3X1
XFILL_0__3829_ gnd vdd FILL
XFILL_0__3582_ gnd vdd FILL
XFILL_0__4787_ gnd vdd FILL
X_2393_ _1316__bF$buf4 _1304__bF$buf2 \u_mem_serial.shift_rx\[14] _1317_ vdd gnd OAI21X1
X_3598_ _1112_ clk_sys_bF$buf43 \u_cpu.bufreg.i_shamt\[0] vdd gnd DFFPOSX1
X_3178_ \u_rf_if.write_wait\[0] \u_rf_if.write_wait\[1] _1704_ vdd gnd NOR2X1
XFILL_0__3638_ gnd vdd FILL
XFILL_0__3218_ gnd vdd FILL
XFILL144750x122550 gnd vdd FILL
X_2869_ _489_ clk_sys_bF$buf40 \u_rf_if.rreg1_latched\[3] vdd gnd DFFPOSX1
X_2449_ _805_ _1068_ _1067_ _1069_ vdd gnd NAND3X1
X_3810_ _386_ \u_cpu.bufreg.i_imm_en\ _392_ \u_cpu.decode.co_immdec_en\[2] vdd gnd OAI21X1
XFILL_0__4176_ gnd vdd FILL
XFILL_1__3552_ gnd vdd FILL
XFILL_1__4757_ gnd vdd FILL
XFILL_0__2242_ gnd vdd FILL
X_2678_ ren_bF$buf1 _102_ _268_ vdd gnd NAND2X1
X_2258_ _1086_ _1297__bF$buf1 _1423_ _775_ vdd gnd AOI21X1
XFILL_0__2718_ gnd vdd FILL
X_4824_ i_rst_n_bF$buf0 vdd _1842_ clk_sys_bF$buf5 ibus_pending_rdt[13] vdd 
+ gnd
+ DFFSR
X_4404_ rst_bF$buf7 _1511_ _1532_ vdd gnd NOR2X1
XFILL_1__4146_ gnd vdd FILL
XFILL_0__3256_ gnd vdd FILL
X_2487_ _1026_ _1030_ _808_ _1031_ vdd gnd AOI21X1
XFILL_0__2527_ gnd vdd FILL
X_4633_ \u_mem_serial.shift_rx\[1] _1954_ vdd gnd INVX1
X_4213_ mem_dbus_ack_bF$buf3 _1188_ _1192_ vdd gnd NOR2X1
XFILL_1__3590_ gnd vdd FILL
XFILL_1__4795_ gnd vdd FILL
XFILL_0__2280_ gnd vdd FILL
X_3904_ _662_ _680_ _661_ _681_ vdd gnd OAI21X1
X_2296_ _1316__bF$buf3 _1304__bF$buf3 \u_mem_serial.shift_rx\[28] _1396_ vdd gnd OAI21X1
XFILL_0__2756_ gnd vdd FILL
X_4442_ _1551_ _1535_ _1552_ _1486_ vdd gnd OAI21X1
X_4022_ \u_cpu.bufreg.i_en_bF$buf2\ _902_ _903_ _861_ vdd gnd OAI21X1
XFILL_1__4184_ gnd vdd FILL
XFILL_0__3294_ gnd vdd FILL
X_3713_ _168_ _140_ _169_ vdd gnd NAND2X1
XFILL_1__3875_ gnd vdd FILL
XFILL_1__3035_ gnd vdd FILL
XFILL_0__2565_ gnd vdd FILL
X_4671_ _1977_ _1979_ _1826_ vdd gnd NOR2X1
X_4251_ _1154_ _1221_ _1224_ _1225_ vdd gnd NAND3X1
XFILL_0__4711_ gnd vdd FILL
XFILL_1__2306_ gnd vdd FILL
X_3942_ \u_cpu.decode.i_wb_rdt\[29] \u_cpu.immdec.gen_immdec_w_eq_1.imm30_25\[5] rf_rreq_bF$buf3 _708_ vdd gnd MUX2X1
X_3522_ \u_rf_if.read_buf1\[6] _445_ _446__bF$buf3 _424_ vdd gnd OAI21X1
X_3102_ _1715__bF$buf0 _1779_ _2099_ _1648_ vdd gnd NAND3X1
X_4727_ mem_ibus_ack_bF$buf0 \u_mem_serial.shift_rx\[7] _1984__bF$buf1 _2014_ vdd gnd NAND3X1
X_4307_ mem_dbus_ack_bF$buf0 \u_mem_serial.shift_rx\[23] _1172__bF$buf0 _1268_ _1269_ vdd 
+ gnd
+ AOI22X1
XFILL_1__4049_ gnd vdd FILL
XFILL_0__2794_ gnd vdd FILL
X_4480_ \u_cpu.ctrl.o_ibus_adr\[4] _1530__bF$buf3 _1578_ vdd gnd NAND2X1
X_4060_ \u_cpu.bufreg.data\[26] _928_ vdd gnd INVX1
XFILL_0__3579_ gnd vdd FILL
XFILL_0__3159_ gnd vdd FILL
XFILL_0__4520_ gnd vdd FILL
XFILL_1__2955_ gnd vdd FILL
X_3751_ _165_ _189_ _161_ _191_ vdd gnd OAI21X1
X_3331_ _10__bF$buf1 _1820_ _1819_ vdd gnd NAND2X1
X_4536_ rf_write_drain_busy _1886_ vdd gnd INVX1
X_4116_ _869_ clk_sys_bF$buf3 \u_cpu.bufreg.data\[2] vdd gnd DFFPOSX1
XFILL_1__3073_ gnd vdd FILL
X_2602_ \u_cpu.ctrl.o_ibus_adr\[7] _810_ _798_ _814_ vdd gnd OAI21X1
X_3807_ \u_cpu.bufreg.i_imm_en\ _396_ _397_ vdd gnd NAND2X1
XFILL_1__2344_ gnd vdd FILL
X_2199_ \u_mem_serial.shift_rx\[14] _1425_ _1465_ vdd gnd NAND2X1
X_3980_ _688_ _732_ _733_ _652_ vdd gnd OAI21X1
X_3560_ \u_rf_if.wen1_r\ _459_ vdd gnd INVX1
X_3140_ _18__bF$buf1 _2162_ \u_rf_if.read_buf1\[31] _1676_ vdd gnd OAI21X1
XFILL_0__2659_ gnd vdd FILL
X_4765_ clk_div[0] clk_div[1] _2038_ vdd gnd NOR2X1
X_4345_ _1105_ clk_sys_bF$buf37 \u_cpu.bufreg2.dlo\[0] vdd gnd DFFPOSX1
XFILL_1__4087_ gnd vdd FILL
X_2831_ _514_ clk_sys_bF$buf33 raddr[5] vdd gnd DFFPOSX1
X_2411_ _1298_ _1044_ _1299_ vdd gnd AND2X2
XFILL_0__3197_ gnd vdd FILL
X_3616_ \u_cpu.decode.co_mem_word\ gnd _2082_ vdd gnd NOR2X1
XFILL_1__2993_ gnd vdd FILL
XFILL_1__3358_ gnd vdd FILL
XFILL_0__2468_ gnd vdd FILL
X_4574_ \u_mem_serial.shift_rx\[20] _1877__bF$buf4 _1915_ vdd gnd NAND2X1
X_4154_ \u_cpu.bufreg2.dhi\[5] _1142_ vdd gnd INVX1
X_2640_ _66_ i_clk_fast_bF$buf5 \u_rf_serial.last_req_key\[1] vdd gnd DFFPOSX1
X_2220_ _1441_ _1444_ _1378_ _1450_ vdd gnd NAND3X1
X_3845_ rf_rreq_bF$buf7 _378_ _411_ _363_ vdd gnd OAI21X1
X_3425_ \u_rf_if.stream_active\ \u_rf_if.ready_pulse\ _42_ vdd gnd NOR2X1
X_3005_ \u_rf_if.issue_idx\[5] _1698_ \u_rf_if.issue_chunk\[0] _1468_ vdd gnd OAI21X1
XFILL_1__2382_ gnd vdd FILL
XFILL145050x97350 gnd vdd FILL
XFILL_0__2697_ gnd vdd FILL
X_4383_ _1512_ \u_cpu.ctrl.i_utype\ _1513_ _1514_ vdd gnd OAI21X1
X_3654_ _2140_ _2137_ \u_cpu.alu.i_cmp_eq\ _2141_ vdd gnd AOI21X1
X_3234_ _18__bF$buf4 _1749_ \u_rf_if.read_buf1\[4] _1746_ vdd gnd OAI21X1
X_4439_ \u_cpu.ctrl.o_ibus_adr\[18] _1551_ vdd gnd INVX1
X_4019_ _892__bF$buf1 _900_ _901_ _860_ vdd gnd OAI21X1
XFILL_1__3396_ gnd vdd FILL
X_4192_ \u_cpu.bufreg2.dlo\[6] _1176_ vdd gnd INVX1
X_2925_ _520_ clk_sys_bF$buf40 \u_rf_if.read_buf0\[0] vdd gnd DFFPOSX1
X_2505_ \u_cpu.bufreg.data\[16] _1013_ vdd gnd INVX1
X_3883_ \u_cpu.alu.i_en\ _662_ vdd gnd INVX1
X_3463_ \u_rf_if.read_buf0\[13] _446__bF$buf0 _445_ _321_ vdd gnd OAI21X1
X_3043_ _1722_ _1610_ _1609_ _519_ vdd gnd AOI21X1
X_4668_ _1974_ _1976_ _1977_ vdd gnd NOR2X1
X_4248_ \u_cpu.bufreg2.dhi\[3] _1222_ vdd gnd INVX1
XFILL_0__3923_ gnd vdd FILL
XFILL_0__3503_ gnd vdd FILL
XFILL_0__4708_ gnd vdd FILL
X_2734_ _94_ _215__bF$buf3 _202_ _218_ vdd gnd OAI21X1
X_2314_ _1380_ _1381_ vdd gnd INVX1
X_3939_ _661_ \u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20\[1] _705_ _706_ vdd gnd AOI21X1
X_3519_ _425_ _424_ _423_ _422_ _421_ vdd 
+ gnd
+ OAI22X1
X_3692_ _139_ _141_ _150_ _151_ _152_ vdd 
+ gnd
+ OAI22X1
X_3272_ _1773_ _1774_ rst_bF$buf2 _586_ vdd gnd AOI21X1
X_4477_ \u_cpu.ctrl.o_ibus_adr\[5] _1530__bF$buf3 _1576_ vdd gnd NAND2X1
X_4057_ \u_cpu.bufreg.i_en_bF$buf1\ _925_ _926_ _873_ vdd gnd OAI21X1
XFILL_0__3732_ gnd vdd FILL
X_2963_ _32__bF$buf1 \u_rf_if.wdata1_phase\[1] _492_ vdd gnd AND2X2
X_2543_ _973_ _840_ _974_ vdd gnd NAND2X1
X_3748_ _165_ _189_ \u_cpu.bufreg2.i_bytecnt\[0] _190_ vdd gnd OAI21X1
X_3328_ _5_ _1817_ _2089_ _1816_ vdd gnd NOR3X1
XFILL_1__4011_ gnd vdd FILL
X_3081_ \u_rf_if.issue_sel_bF$buf2\ \u_rf_if.rreg0_latched\[4] _1635_ _1634_ vdd gnd OAI21X1
X_4286_ _1251_ _1164__bF$buf2 _1253_ _1115_ vdd gnd OAI21X1
XFILL_0__3961_ gnd vdd FILL
XFILL_0__3541_ gnd vdd FILL
XFILL_0__3121_ gnd vdd FILL
XFILL_0__4746_ gnd vdd FILL
XFILL_0__4326_ gnd vdd FILL
X_2772_ \u_rf_if.o_waddr\[1] _127_ vdd gnd INVX1
X_2352_ \u_mem_serial.shift_rx\[5] _1297__bF$buf0 _1350_ vdd gnd NAND2X1
X_3977_ _688_ _730_ _731_ _651_ vdd gnd OAI21X1
X_3557_ \u_cpu.o_wdata0\ _457_ vdd gnd INVX1
X_3137_ _1717__bF$buf1 _1819_ \u_rf_if.read_buf0\[24] _1674_ vdd gnd OAI21X1
X_4095_ \u_cpu.bufreg.i_init\ _951_ \u_cpu.bufreg.i_en_bF$buf4\ _952_ vdd gnd OAI21X1
X_2828_ raddr[8] _73_ vdd gnd INVX1
X_2408_ _1044_ _1298_ _1301_ _1302_ vdd gnd OAI21X1
X_2581_ \u_cpu.ctrl.o_ibus_adr\[14] _810_ _835_ vdd gnd NOR2X1
X_3786_ \u_cpu.bufreg.i_sh_signed\ _384_ vdd gnd INVX1
X_3366_ _2149_ _2100_ _2099_ vdd gnd NOR2X1
XFILL_0__3406_ gnd vdd FILL
X_2637_ _55_ i_clk_fast_bF$buf3 \u_rf_serial.tx_state\[1] vdd gnd DFFPOSX1
X_2217_ _1414_ _1450_ _1452_ _1453_ vdd gnd OAI21X1
XFILL_0__4784_ gnd vdd FILL
XFILL_1__3320_ gnd vdd FILL
X_2390_ _1315__bF$buf1 _1319_ _1303__bF$buf3 _1320_ vdd gnd NAND3X1
XFILL_1__4525_ gnd vdd FILL
X_3595_ _368_ clk_sys_bF$buf32 \u_cpu.branch_op\ vdd gnd DFFPOSX1
X_3175_ _1706_ _1702_ _1701_ vdd gnd NAND2X1
XFILL_0__2430_ gnd vdd FILL
X_2866_ _591_ clk_sys_bF$buf2 \u_rf_if.read_buf1\[18] vdd gnd DFFPOSX1
X_2446_ _840_ \u_cpu.bufreg2.dlo\[8] \u_cpu.bufreg2.dlo\[9] _845_ _1072_ vdd 
+ gnd
+ AOI22X1
XFILL_0__4173_ gnd vdd FILL
X_4189_ mem_dbus_ack_bF$buf5 _1173_ _1174_ vdd gnd NOR2X1
XFILL_0__3444_ gnd vdd FILL
XFILL_0__3024_ gnd vdd FILL
XFILL_1__2820_ gnd vdd FILL
XFILL_0__4649_ gnd vdd FILL
X_2675_ \u_rf_serial.last_req_key\[7] _270_ _103_ _271_ vdd gnd NAND3X1
X_2255_ \u_mem_serial.shift_rx\[25] _1425_ _1426_ vdd gnd NAND2X1
X_4821_ i_rst_n_bF$buf4 vdd _1845_ clk_sys_bF$buf36 ibus_pending_rdt[10] vdd 
+ gnd
+ DFFSR
X_4401_ \u_cpu.ctrl.o_ibus_adr\[3] _1529_ vdd gnd INVX1
XFILL_1__4563_ gnd vdd FILL
XFILL_0__3673_ gnd vdd FILL
XFILL_0__4458_ gnd vdd FILL
XFILL_0__4038_ gnd vdd FILL
XFILL_1__3834_ gnd vdd FILL
X_2484_ \u_mem_serial.active_ibus_bF$buf3\ _1032_ _1033_ _1034_ vdd gnd OAI21X1
X_3689_ mem_dbus_ack_bF$buf4 _149_ vdd gnd INVX1
X_3269_ _1771_ _1772_ rst_bF$buf9 _585_ vdd gnd AOI21X1
X_4630_ ibus_pending_rdt[7] _1952_ vdd gnd INVX1
X_4210_ mem_dbus_ack_bF$buf5 \u_mem_serial.shift_rx\[2] _1172__bF$buf1 _1189_ _1190_ vdd 
+ gnd
+ AOI22X1
XFILL_0__3309_ gnd vdd FILL
XFILL_0__3482_ gnd vdd FILL
XFILL_0__3062_ gnd vdd FILL
X_3901_ \u_cpu.decode.co_immdec_ctrl\[2] _668_ _678_ vdd gnd NAND2X1
XFILL_0__4687_ gnd vdd FILL
X_2293_ _1315__bF$buf1 _1398_ _1303__bF$buf2 _1399_ vdd gnd NAND3X1
XFILL_1__4428_ gnd vdd FILL
X_3498_ \u_rf_if.read_buf1\[18] _355_ vdd gnd INVX1
X_3078_ _1717__bF$buf2 _1764_ \u_rf_if.read_buf0\[8] _1632_ vdd gnd OAI21X1
XFILL_0__2333_ gnd vdd FILL
X_2769_ _78_ _167_ _170_ vdd gnd NAND2X1
X_2349_ _1349_ _1352_ rst_bF$buf10 _755_ vdd gnd AOI21X1
X_3710_ _781_ i_clk_fast_bF$buf4 \u_mem_serial.state\[1] vdd gnd DFFPOSX1
XFILL_0__4076_ gnd vdd FILL
XFILL_0__2809_ gnd vdd FILL
XFILL_1__4237_ gnd vdd FILL
XFILL_0__2982_ gnd vdd FILL
XFILL_0__3347_ gnd vdd FILL
XFILL144150x14550 gnd vdd FILL
XFILL_1__3928_ gnd vdd FILL
X_2998_ rf_read_reg0_to_if[3] _1722_ _32__bF$buf3 _744_ vdd gnd OAI21X1
X_2578_ \u_cpu.ctrl.o_ibus_adr\[15] _810_ _798_ _838_ vdd gnd OAI21X1
XFILL_0__2618_ gnd vdd FILL
X_4724_ _1948_ _1983__bF$buf3 _2012_ _1846_ vdd gnd OAI21X1
X_4304_ mem_dbus_ack_bF$buf2 \u_mem_serial.shift_rx\[15] _1172__bF$buf0 _1266_ _1267_ vdd 
+ gnd
+ AOI22X1
XFILL_1__4466_ gnd vdd FILL
XFILL_0__2371_ gnd vdd FILL
XFILL_1__2952_ gnd vdd FILL
X_2387_ \u_mem_serial.shift_rx\[12] _1297__bF$buf4 _1322_ vdd gnd NAND2X1
X_4533_ ibus_pending_rdt[16] _1884_ vdd gnd INVX1
X_4113_ _872_ clk_sys_bF$buf20 \u_cpu.bufreg.data\[30] vdd gnd DFFPOSX1
XFILL_1__4275_ gnd vdd FILL
XFILL_0__2180_ gnd vdd FILL
XFILL_0__3385_ gnd vdd FILL
X_3804_ \u_cpu.bufreg.i_right_shift_op\ _376_ _395_ vdd gnd NAND2X1
XFILL_1__3966_ gnd vdd FILL
XFILL_1__3126_ gnd vdd FILL
X_2196_ _751_ i_clk_fast_bF$buf4 \u_mem_serial.shift_rx\[10] vdd gnd DFFPOSX1
X_4762_ _2036_ _1978_ _1860_ vdd gnd NOR2X1
XFILL_0__2236_ gnd vdd FILL
X_4342_ _1108_ clk_sys_bF$buf37 \u_cpu.bufreg2.dhi\[4] vdd gnd DFFPOSX1
XFILL144450x90150 gnd vdd FILL
X_3613_ \u_cpu.bne_or_bge\ _2079_ vdd gnd INVX1
XFILL_1__2990_ gnd vdd FILL
XFILL_0__4399_ gnd vdd FILL
X_4818_ i_rst_n_bF$buf1 vdd _1848_ clk_sys_bF$buf14 ibus_pending_rdt[7] vdd 
+ gnd
+ DFFSR
X_4571_ _1894_ \u_cpu.decode.i_wb_rdt\[22] _1897_ _1913_ vdd gnd NAND3X1
X_4151_ \u_cpu.bufreg2.dhi\[3] \u_cpu.bufreg.i_shamt\[2] _1139_ vdd gnd NOR2X1
XFILL_0__4611_ gnd vdd FILL
X_3842_ rf_rreq_bF$buf6 \u_cpu.decode.i_wb_rdt\[14] _410_ vdd gnd NAND2X1
X_3422_ \u_rf_if.stream_cnt\[2] _40_ _39_ vdd gnd NAND2X1
X_3002_ \u_rf_if.issue_idx\[5] _1698_ \u_rf_if.issue_sel_bF$buf2\ _1466_ vdd gnd OAI21X1
X_4627_ ibus_pending_rdt[8] _1950_ vdd gnd INVX1
X_4207_ _1185_ _1164__bF$buf0 _1187_ _1102_ vdd gnd OAI21X1
XFILL_1__3164_ gnd vdd FILL
XFILL_0__2274_ gnd vdd FILL
X_4380_ \u_cpu.ctrl.i_pc_en\ _1511_ vdd gnd INVX2
XFILL_0__4420_ gnd vdd FILL
X_3651_ _2137_ _2138_ vdd gnd INVX1
X_3231_ _2152__bF$buf2 _1795_ _1744_ vdd gnd NAND2X1
X_4436_ _1549_ _1531_ _1548_ _1535_ _1483_ vdd 
+ gnd
+ OAI22X1
X_4016_ _899_ _893_ _892__bF$buf3 _998_ vdd gnd AOI21X1
X_2922_ _561_ clk_sys_bF$buf33 \u_rf_if.wdata0_next_phase\ vdd gnd DFFPOSX1
X_2502_ _1015_ _840_ _1016_ vdd gnd NAND2X1
XFILL_0__3288_ gnd vdd FILL
X_3707_ _768_ i_clk_fast_bF$buf1 \u_mem_serial.active_we\ vdd gnd DFFPOSX1
XFILL_1__3449_ gnd vdd FILL
X_3880_ \u_cpu.csr_imm_en\ _654_ \u_cpu.branch_op\ _659_ vdd gnd OAI21X1
X_3460_ _322_ _321_ _320_ _319_ _318_ vdd 
+ gnd
+ OAI22X1
XFILL144750x10950 gnd vdd FILL
X_3040_ _1692_ _1607_ _518_ vdd gnd NOR2X1
XFILL_0__2559_ gnd vdd FILL
X_4665_ clk_div[3] _1974_ vdd gnd INVX1
X_4245_ _1136_ _1164__bF$buf0 _1219_ _1220_ vdd gnd OAI21X1
X_2731_ _111_ _220_ vdd gnd INVX1
X_2311_ _1383_ _1378_ _1384_ vdd gnd NAND2X1
X_3936_ \u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20\[1] _665__bF$buf3 _704_ vdd gnd NAND2X1
X_3516_ _449_ _419_ _412_ vdd gnd NAND2X1
XFILL_0__2788_ gnd vdd FILL
X_4474_ _1553_ \u_cpu.ctrl.o_ibus_adr\[7] _1511_ _1574_ vdd gnd AOI21X1
X_4054_ \u_cpu.bufreg.i_en_bF$buf1\ _922_ _924_ _872_ vdd gnd OAI21X1
X_2960_ rf_read_reg1_to_if[3] _1722_ _32__bF$buf0 _614_ vdd gnd OAI21X1
X_2540_ _851_ _976_ _834_ _977_ vdd gnd OAI21X1
X_3745_ _163_ _162_ \u_cpu.state.cnt_r\[3] _188_ vdd gnd OAI21X1
X_3325_ _18__bF$buf0 _1819_ \u_rf_if.read_buf1\[24] _1814_ vdd gnd OAI21X1
XFILL_1__3487_ gnd vdd FILL
XFILL_0__2597_ gnd vdd FILL
XFILL_0__2177_ gnd vdd FILL
X_4283_ \u_cpu.bufreg2.dlo\[20] _1251_ vdd gnd INVX1
XFILL_0__4323_ gnd vdd FILL
X_3974_ _688_ _728_ _729_ _650_ vdd gnd OAI21X1
X_3554_ gnd \u_rf_if.wdata1_phase\[1] _454_ vdd gnd NAND2X1
X_3134_ _1717__bF$buf4 _1809_ \u_rf_if.read_buf0\[23] _1672_ vdd gnd OAI21X1
X_4759_ rreg1[0] rf_rreq_bF$buf4 _1895__bF$buf0 _2035_ vdd gnd NAND3X1
X_4339_ _1111_ clk_sys_bF$buf43 \u_cpu.bufreg.i_shamt\[1] vdd gnd DFFPOSX1
X_4092_ \u_cpu.bufreg.data\[17] _892__bF$buf1 _950_ vdd gnd NAND2X1
X_2825_ _73_ _74_ _75_ _76_ vdd gnd NAND3X1
X_2405_ \u_mem_serial.state\[1] _1305_ vdd gnd INVX1
XFILL_0__4552_ gnd vdd FILL
X_3783_ \u_cpu.bufreg.i_right_shift_op\ \u_cpu.decode.co_mem_word\ \u_cpu.alu.i_cmp_eq\ vdd gnd NOR2X1
X_3363_ \u_rf_if.issue_sel_bF$buf3\ \u_rf_if.issue_chunk\[0] \u_rf_if.issue_chunk\[1] _2097_ vdd gnd OAI21X1
X_4568_ \u_mem_serial.shift_rx\[22] _1877__bF$buf5 _1911_ vdd gnd NAND2X1
X_4148_ _1135_ \u_cpu.bufreg.i_init\ _1130_ _1136_ vdd gnd AOI21X1
XFILL_0__3823_ gnd vdd FILL
X_2634_ _64_ i_clk_fast_bF$buf3 \u_rf_serial.launch_pending\ vdd gnd DFFPOSX1
X_2214_ \u_mem_serial.shift_rx\[18] _1425_ _1455_ vdd gnd NAND2X1
X_3839_ _756_ i_clk_fast_bF$buf7 \u_mem_serial.shift_rx\[5] vdd gnd DFFPOSX1
X_3419_ \u_rf_if.stream_cnt\[2] _40_ _32__bF$buf2 _31_ vdd gnd OAI21X1
X_3592_ _2_ clk_sys_bF$buf34 \u_cpu.alu.add_cy_r\ vdd gnd DFFPOSX1
X_3172_ _1699_ _32__bF$buf2 _560_ vdd gnd AND2X2
X_4797_ _2055_ _2056_ _1892_ _2057_ vdd gnd OAI21X1
X_4377_ \u_cpu.alu.i_buf\ _1506_ _1507_ \u_cpu.cnt12to31\ _1508_ vdd 
+ gnd
+ AOI22X1
XFILL_0__3632_ gnd vdd FILL
XFILL_0__3212_ gnd vdd FILL
X_2863_ _535_ clk_sys_bF$buf39 \u_rf_if.read_buf0\[12] vdd gnd DFFPOSX1
X_2443_ \u_cpu.bufreg2.dlo\[15] _795_ _840_ \u_cpu.bufreg2.dlo\[12] _1075_ vdd 
+ gnd
+ AOI22X1
XFILL_0__4590_ gnd vdd FILL
X_3648_ _2125_ _2120_ _2135_ vdd gnd NAND2X1
X_3228_ _2154__bF$buf4 _2062__bF$buf1 _1742_ _1741_ vdd gnd NAND3X1
X_4186_ \u_cpu.bufreg.i_init\ _1169_ _1170_ _1171_ vdd gnd NAND3X1
X_2919_ _503_ clk_sys_bF$buf16 \u_rf_if.rreg0_latched\[1] vdd gnd DFFPOSX1
XFILL_0__4226_ gnd vdd FILL
X_2672_ _197_ \u_rf_serial.last_req_key\[0] _274_ vdd gnd OR2X2
X_2252_ \u_mem_serial.shift_rx\[24] _1425_ _1428_ vdd gnd NAND2X1
X_3877_ rf_rreq_bF$buf0 \u_cpu.decode.i_wb_rdt\[31] _657_ vdd gnd NAND2X1
X_3457_ _330_ _316_ _449_ _315_ vdd gnd OAI21X1
X_3037_ _1605_ _1692_ _517_ vdd gnd NOR2X1
XFILL_0__2712_ gnd vdd FILL
XFILL_1__3199_ gnd vdd FILL
XFILL_0__3917_ gnd vdd FILL
XFILL_0__3250_ gnd vdd FILL
X_2728_ \u_rf_serial.last_req_key\[4] _222_ vdd gnd INVX1
X_2308_ \u_mem_serial.state\[1] _1384_ _1386_ _1387_ vdd gnd OAI21X1
XFILL_1__3411_ gnd vdd FILL
X_2481_ \u_mem_serial.active_ibus_bF$buf3\ \u_cpu.ctrl.o_ibus_adr\[20] _1037_ vdd gnd NAND2X1
XFILL_1__4616_ gnd vdd FILL
X_3686_ _139_ \u_cpu.decode.co_rd_op\ \u_cpu.rd_en\ vdd gnd AND2X2
X_3266_ _10__bF$buf1 _2061_ _1768_ vdd gnd NOR2X1
XFILL_0__2521_ gnd vdd FILL
X_2957_ \u_rf_if.rcnt\[2] _1690_ _613_ _612_ vdd gnd OAI21X1
X_2537_ \u_mem_serial.active_ibus_bF$buf0\ _979_ _980_ vdd gnd NAND2X1
XFILL_0__4264_ gnd vdd FILL
XFILL_1__2699_ gnd vdd FILL
XFILL_1__3640_ gnd vdd FILL
X_2290_ \u_mem_serial.shift_rx\[26] _1297__bF$buf2 _1401_ vdd gnd NAND2X1
X_3495_ _353_ _356_ \u_rf_if.stream_cnt_1_bF$buf0\ _352_ vdd gnd MUX2X1
X_3075_ _1717__bF$buf4 _1759_ \u_rf_if.read_buf0\[7] _1630_ vdd gnd OAI21X1
XFILL_0__2750_ gnd vdd FILL
XFILL_0__3955_ gnd vdd FILL
XFILL_0__3535_ gnd vdd FILL
XFILL_0__3115_ gnd vdd FILL
X_2766_ _192_ _85_ _193_ _194_ vdd gnd OAI21X1
X_2346_ _1354_ _1355_ vdd gnd INVX1
XFILL_1__4654_ gnd vdd FILL
X_4089_ \u_cpu.bufreg.data\[18] _948_ vdd gnd INVX1
XFILL_0__3764_ gnd vdd FILL
X_2995_ rf_read_reg0_to_if[2] _1722_ _32__bF$buf0 _742_ vdd gnd OAI21X1
X_2575_ \u_cpu.bufreg.data\[12] _841_ vdd gnd INVX1
X_4721_ mem_ibus_ack_bF$buf4 \u_mem_serial.shift_rx\[10] _1984__bF$buf2 _2011_ vdd gnd NAND3X1
X_4301_ _1147_ _1164__bF$buf3 _1264_ _1119_ vdd gnd OAI21X1
XCLKBUF1_insert70 clk_sys_hier0_bF$buf4 clk_sys_bF$buf15 vdd gnd CLKBUF1
XCLKBUF1_insert71 clk_sys_hier0_bF$buf1 clk_sys_bF$buf14 vdd gnd CLKBUF1
XCLKBUF1_insert72 clk_sys_hier0_bF$buf2 clk_sys_bF$buf13 vdd gnd CLKBUF1
XCLKBUF1_insert73 clk_sys_hier0_bF$buf2 clk_sys_bF$buf12 vdd gnd CLKBUF1
XCLKBUF1_insert74 clk_sys_hier0_bF$buf3 clk_sys_bF$buf11 vdd gnd CLKBUF1
XCLKBUF1_insert75 clk_sys_hier0_bF$buf0 clk_sys_bF$buf10 vdd gnd CLKBUF1
XCLKBUF1_insert76 clk_sys_hier0_bF$buf3 clk_sys_bF$buf9 vdd gnd CLKBUF1
XCLKBUF1_insert77 clk_sys_hier0_bF$buf3 clk_sys_bF$buf8 vdd gnd CLKBUF1
XCLKBUF1_insert78 clk_sys_hier0_bF$buf3 clk_sys_bF$buf7 vdd gnd CLKBUF1
XCLKBUF1_insert79 clk_sys_hier0_bF$buf5 clk_sys_bF$buf6 vdd gnd CLKBUF1
XFILL_0__3573_ gnd vdd FILL
XFILL_0__3153_ gnd vdd FILL
XFILL_0__4778_ gnd vdd FILL
XFILL_1__3734_ gnd vdd FILL
X_2384_ _1321_ _1324_ rst_bF$buf10 _748_ vdd gnd AOI21X1
X_3589_ _484__bF$buf2 _483_ vdd gnd INVX1
X_3169_ _1697_ _1696_ vdd gnd INVX2
XFILL_0__2424_ gnd vdd FILL
X_4530_ _1877__bF$buf3 _1881_ _1882_ \u_cpu.decode.i_wb_rdt\[2] vdd gnd OAI21X1
X_4110_ _875_ clk_sys_bF$buf29 \u_cpu.bufreg.data\[26] vdd gnd DFFPOSX1
XFILL_1__4692_ gnd vdd FILL
X_3801_ _747_ i_clk_fast_bF$buf2 \u_mem_serial.shift_rx\[14] vdd gnd DFFPOSX1
XFILL_0__4167_ gnd vdd FILL
XFILL_1__3123_ gnd vdd FILL
X_2193_ _772_ i_clk_fast_bF$buf1 \u_mem_serial.bit_count\[1] vdd gnd DFFPOSX1
XFILL_1__4328_ gnd vdd FILL
X_3398_ _14_ _15_ _13_ vdd gnd NAND2X1
XFILL_0__2653_ gnd vdd FILL
XFILL_0__3438_ gnd vdd FILL
XFILL_0__3018_ gnd vdd FILL
XFILL_0__3191_ gnd vdd FILL
X_2669_ _217_ _93_ _92_ _277_ vdd gnd NAND3X1
X_2249_ \u_mem_serial.shift_rx\[30] _1425_ _1430_ vdd gnd NAND2X1
X_3610_ \u_cpu.bufreg2.o_q\ _2076_ vdd gnd INVX1
XFILL_1_BUFX2_insert236 gnd vdd FILL
XFILL145050x126150 gnd vdd FILL
X_4815_ vdd i_rst_n_bF$buf0 _1851_ clk_sys_bF$buf5 ibus_pending_rdt[4] vdd 
+ gnd
+ DFFSR
XFILL_0__2462_ gnd vdd FILL
XFILL_0__3667_ gnd vdd FILL
XFILL_1__3408_ gnd vdd FILL
X_2898_ _527_ clk_sys_bF$buf44 ren vdd gnd DFFPOSX1
X_2478_ _805_ _1035_ _1039_ _1040_ vdd gnd NAND3X1
X_4624_ ibus_pending_rdt[9] _1948_ vdd gnd INVX1
X_4204_ \u_cpu.bufreg2.dlo\[3] _1185_ vdd gnd INVX1
XFILL_1__3161_ gnd vdd FILL
XFILL_0__2691_ gnd vdd FILL
XFILL_0__3896_ gnd vdd FILL
XFILL_0__3476_ gnd vdd FILL
XFILL_0__3056_ gnd vdd FILL
XFILL_1__2432_ gnd vdd FILL
X_2287_ _1400_ _1403_ rst_bF$buf3 _766_ vdd gnd AOI21X1
XFILL_0__2327_ gnd vdd FILL
X_4853_ i_rst_n_bF$buf3 vdd _1864_ clk_sys_bF$buf20 rf_read_reg0[3] vdd 
+ gnd
+ DFFSR
X_4433_ _1548_ _1531_ _1547_ _1535_ _1481_ vdd 
+ gnd
+ OAI22X1
X_4013_ \u_cpu.bufreg.i_rs1_en\ rdata0[0] _897_ vdd gnd NAND2X1
X_3704_ \u_cpu.state.o_cnt\[2] \u_cpu.bufreg2.i_bytecnt\[0] _162_ vdd gnd NAND2X1
XFILL_1__2661_ gnd vdd FILL
XFILL_1__3446_ gnd vdd FILL
XFILL_0__2976_ gnd vdd FILL
X_4662_ _1962_ rf_read_reg0[4] _1895__bF$buf3 _1972_ vdd gnd NAND3X1
X_4242_ _1130_ _1133_ _1142_ _1217_ vdd gnd OAI21X1
XFILL_0__4702_ gnd vdd FILL
XFILL_0__3094_ gnd vdd FILL
X_3933_ \u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20\[2] _665__bF$buf3 _702_ vdd gnd NAND2X1
X_3513_ \u_rf_if.stream_cnt_0_bF$buf1\ _409_ _408_ _405_ vdd gnd OAI21X1
XFILL_1__2470_ gnd vdd FILL
X_4718_ _1876_ _1983__bF$buf0 _2009_ _1843_ vdd gnd OAI21X1
XFILL_1__3675_ gnd vdd FILL
XFILL_0__2365_ gnd vdd FILL
X_4471_ \u_cpu.ctrl.o_ibus_adr\[8] _1553_ _1572_ vdd gnd NAND2X1
X_4051_ \u_cpu.bufreg.data\[29] _892__bF$buf0 _923_ vdd gnd NAND2X1
X_3742_ \u_cpu.alu.i_en\ _139_ rst_bF$buf1 _186_ vdd gnd AOI21X1
X_3322_ _1812_ _1814_ rst_bF$buf8 _597_ vdd gnd AOI21X1
X_4527_ _1880_ \u_cpu.decode.i_wb_rdt\[6] vdd gnd INVX1
X_4107_ _892__bF$buf3 _957_ _959_ _890_ vdd gnd OAI21X1
XFILL_1__3484_ gnd vdd FILL
XFILL_1__4689_ gnd vdd FILL
X_4280_ mem_dbus_ack_bF$buf1 _1244_ _1249_ vdd gnd NOR2X1
XFILL_0__3799_ gnd vdd FILL
XFILL_0__3379_ gnd vdd FILL
XFILL_0__4740_ gnd vdd FILL
X_3971_ _688_ _726_ _727_ _649_ vdd gnd OAI21X1
X_3551_ _483_ _455_ _452_ \u_rf_if.o_wdata\[1] vdd gnd OAI21X1
X_3131_ _1717__bF$buf4 _1809_ \u_rf_if.read_buf0\[22] _1670_ vdd gnd OAI21X1
X_4756_ rreg1[1] rf_rreq_bF$buf6 _1895__bF$buf2 _2033_ vdd gnd NAND3X1
X_4336_ mem_dbus_ack_bF$buf0 _1287_ _1290_ vdd gnd NOR2X1
X_2822_ _2161_ _77_ vdd gnd INVX1
X_2402_ clk_sys_bF$buf33 _1308_ vdd gnd INVX1
X_3607_ \u_cpu.state.i_ctrl_misalign\ _2075_ vdd gnd INVX1
X_3780_ _778_ i_clk_fast_bF$buf2 \u_mem_serial.shift_rx\[31] vdd gnd DFFPOSX1
X_3360_ _5_ _2095_ _10__bF$buf2 _2094_ vdd gnd NAND3X1
X_4565_ \u_mem_serial.shift_rx\[18] _1877__bF$buf0 _1909_ vdd gnd NAND2X1
X_4145_ \u_cpu.bufreg.i_right_shift_op\ \u_cpu.bufreg.i_cnt_done\ _1132_ _1133_ vdd gnd AOI21X1
XFILL_0__3400_ gnd vdd FILL
XFILL_0__4605_ gnd vdd FILL
X_2631_ _63_ i_clk_fast_bF$buf0 \u_rf_serial.last_req_key\[2] vdd gnd DFFPOSX1
X_2211_ \u_mem_serial.shift_rx\[17] _1425_ _1457_ vdd gnd NAND2X1
X_3836_ rf_rreq_bF$buf1 \u_cpu.decode.i_wb_rdt\[12] _407_ vdd gnd NAND2X1
X_3416_ _446__bF$buf1 _445_ \u_rf_if.stream_active\ _29_ vdd gnd OAI21X1
XFILL_0__2268_ gnd vdd FILL
X_4794_ _1940_ _1983__bF$buf3 _2054_ _1874_ vdd gnd OAI21X1
X_4374_ _1501_ _1504_ _1505_ vdd gnd NAND2X1
XFILL144750x86550 gnd vdd FILL
XFILL_0__4414_ gnd vdd FILL
X_2860_ _594_ clk_sys_bF$buf18 \u_rf_if.read_buf1\[21] vdd gnd DFFPOSX1
X_2440_ _1070_ _1077_ _834_ _1078_ vdd gnd OAI21X1
X_3645_ _2128_ _2129_ \u_cpu.bne_or_bge\ _2132_ _2133_ vdd 
+ gnd
+ OAI22X1
X_3225_ _2154__bF$buf4 _1742_ _2099_ _1739_ vdd gnd NAND3X1
X_4183_ _1166_ _1165_ _1167_ _1168_ vdd gnd OAI21X1
X_2916_ _564_ clk_sys_bF$buf16 \u_rf_if.rreg1_latched\[1] vdd gnd DFFPOSX1
XFILL_0__4643_ gnd vdd FILL
XFILL_1__2238_ gnd vdd FILL
X_3874_ \u_cpu.csr_imm_en\ _654_ _655_ vdd gnd NOR2X1
X_3454_ \u_rf_if.read_buf0\[27] _446__bF$buf1 _312_ vdd gnd NOR2X1
X_3034_ \u_rf_if.rreg0_latched\[3] \u_rf_if.issue_sel_bF$buf2\ _1603_ _1602_ vdd gnd OAI21X1
X_4659_ rf_read_reg0[2] _1970_ vdd gnd INVX1
X_4239_ _1213_ _1138_ _1214_ vdd gnd NAND2X1
X_2725_ \u_rf_serial.last_req_key\[3] _224_ vdd gnd INVX1
X_2305_ \u_mem_serial.shift_rx\[29] _1297__bF$buf2 _1389_ vdd gnd NAND2X1
XFILL_0__4452_ gnd vdd FILL
XFILL_0__4032_ gnd vdd FILL
XFILL145050x3750 gnd vdd FILL
XFILL_1__4613_ gnd vdd FILL
X_3683_ \u_cpu.state.init_done\ \u_cpu.bufreg.i_shift_op\ _146_ vdd gnd AND2X2
X_3263_ _18__bF$buf0 _1770_ \u_rf_if.read_buf1\[10] _1766_ vdd gnd OAI21X1
X_4468_ \u_cpu.ctrl.o_ibus_adr\[9] _1553_ _1570_ vdd gnd NAND2X1
X_4048_ \u_cpu.bufreg.data\[0] _920_ _921_ vdd gnd NAND2X1
XFILL_0__3723_ gnd vdd FILL
XFILL_0__3303_ gnd vdd FILL
X_2954_ _611_ _613_ _610_ vdd gnd NAND2X1
X_2534_ \u_mem_serial.active_ibus_bF$buf6\ \u_cpu.bufreg.data\[31] _983_ vdd gnd OR2X2
XFILL_0__4681_ gnd vdd FILL
X_3739_ _175_ _183_ rst_bF$buf1 _131_ vdd gnd AOI21X1
X_3319_ _10__bF$buf3 _1810_ _1809_ vdd gnd NAND2X1
XFILL_1__2276_ gnd vdd FILL
X_3492_ \u_rf_if.read_buf1\[23] _446__bF$buf0 _349_ vdd gnd NOR2X1
X_3072_ _1717__bF$buf4 _1759_ \u_rf_if.read_buf0\[6] _1628_ vdd gnd OAI21X1
X_4697_ _1905_ _1995_ _1996_ vdd gnd NAND2X1
X_4277_ mem_dbus_ack_bF$buf0 \u_mem_serial.shift_rx\[22] _1172__bF$buf0 _1246_ _1247_ vdd 
+ gnd
+ AOI22X1
XFILL_0__4317_ gnd vdd FILL
X_2763_ ren_bF$buf3 _195_ _196_ _197_ vdd gnd OAI21X1
X_2343_ _1316__bF$buf3 _1304__bF$buf3 \u_mem_serial.shift_rx\[4] _1357_ vdd gnd OAI21X1
XFILL_0__4070_ gnd vdd FILL
X_3968_ _685_ _724_ _725_ _648_ vdd gnd OAI21X1
X_3548_ \u_rf_if.stream_active\ _450_ vdd gnd INVX1
X_3128_ \u_rf_if.stream_cnt\[4] _42_ _1668_ vdd gnd NAND2X1
XFILL_0__2803_ gnd vdd FILL
XFILL_1__4651_ gnd vdd FILL
X_4086_ \u_cpu.bufreg.i_en_bF$buf0\ _945_ _946_ _882_ vdd gnd OAI21X1
XFILL_0__3341_ gnd vdd FILL
X_2819_ \u_rf_serial.tx_state\[3] \u_rf_serial.tx_state\[2] _80_ vdd gnd NOR2X1
XFILL_0__4546_ gnd vdd FILL
X_2992_ rf_read_reg0_to_if[1] _1722_ _32__bF$buf3 _740_ vdd gnd OAI21X1
X_2572_ _843_ _840_ _844_ vdd gnd NAND2X1
X_3777_ _763_ i_clk_fast_bF$buf6 \u_mem_serial.shift_rx\[30] vdd gnd DFFPOSX1
X_3357_ _1_ _8_ _2091_ vdd gnd OR2X2
XFILL_0__2612_ gnd vdd FILL
XFILL_0__3817_ gnd vdd FILL
XCLKBUF1_insert40 clk_sys_hier0_bF$buf4 clk_sys_bF$buf45 vdd gnd CLKBUF1
XCLKBUF1_insert41 clk_sys_hier0_bF$buf0 clk_sys_bF$buf44 vdd gnd CLKBUF1
XCLKBUF1_insert42 clk_sys_hier0_bF$buf1 clk_sys_bF$buf43 vdd gnd CLKBUF1
XCLKBUF1_insert43 clk_sys_hier0_bF$buf3 clk_sys_bF$buf42 vdd gnd CLKBUF1
XCLKBUF1_insert44 clk_sys_hier0_bF$buf0 clk_sys_bF$buf41 vdd gnd CLKBUF1
XCLKBUF1_insert45 clk_sys_hier0_bF$buf2 clk_sys_bF$buf40 vdd gnd CLKBUF1
XCLKBUF1_insert46 clk_sys_hier0_bF$buf0 clk_sys_bF$buf39 vdd gnd CLKBUF1
XCLKBUF1_insert47 clk_sys_hier0_bF$buf3 clk_sys_bF$buf38 vdd gnd CLKBUF1
XCLKBUF1_insert48 clk_sys_hier0_bF$buf1 clk_sys_bF$buf37 vdd gnd CLKBUF1
XCLKBUF1_insert49 clk_sys_hier0_bF$buf4 clk_sys_bF$buf36 vdd gnd CLKBUF1
X_2628_ _61_ i_clk_fast_bF$buf0 \u_rf_serial.last_req_key\[3] vdd gnd DFFPOSX1
X_2208_ \u_mem_serial.shift_rx\[16] _1425_ _1459_ vdd gnd NAND2X1
X_2381_ _1326_ _1327_ vdd gnd INVX1
X_3586_ \u_rf_if.o_waddr\[1] _480_ vdd gnd INVX1
X_3166_ _1695_ _1694_ _1693_ vdd gnd OR2X2
XFILL_0__3626_ gnd vdd FILL
XFILL_0__3206_ gnd vdd FILL
X_2857_ _510_ clk_sys_bF$buf26 raddr[1] vdd gnd DFFPOSX1
X_2437_ _1080_ _1063_ _1078_ _1081_ vdd gnd NAND3X1
XFILL_0__4584_ gnd vdd FILL
XFILL_1__2599_ gnd vdd FILL
X_2190_ _748_ i_clk_fast_bF$buf1 \u_mem_serial.shift_rx\[13] vdd gnd DFFPOSX1
X_3395_ _17_ _13_ _11_ _10_ vdd gnd OAI21X1
XFILL_0__2230_ gnd vdd FILL
X_2666_ _276_ _277_ _279_ _278_ _280_ vdd 
+ gnd
+ AOI22X1
X_2246_ _1309_ _1431_ _1310_ _1432_ vdd gnd OAI21X1
XFILL_1_BUFX2_insert202 gnd vdd FILL
XFILL_1_BUFX2_insert206 gnd vdd FILL
XFILL_0__2706_ gnd vdd FILL
X_4812_ vdd i_rst_n_bF$buf5 _1854_ clk_sys_bF$buf43 ibus_pending_rdt[1] vdd 
+ gnd
+ DFFSR
XFILL_0__3664_ gnd vdd FILL
XFILL_0__3244_ gnd vdd FILL
XFILL_1__2200_ gnd vdd FILL
XFILL_0__4449_ gnd vdd FILL
XFILL_1__3825_ gnd vdd FILL
X_2895_ _575_ clk_sys_bF$buf39 \u_rf_if.read_buf1\[5] vdd gnd DFFPOSX1
X_2475_ \u_mem_serial.bit_count\[4] _797_ \u_mem_serial.bit_count\[5] _1043_ vdd gnd OAI21X1
XFILL_0__2515_ gnd vdd FILL
X_4621_ ibus_pending_rdt[10] _1946_ vdd gnd INVX1
X_4201_ mem_dbus_ack_bF$buf3 _1179_ _1183_ vdd gnd NOR2X1
XFILL_0__4258_ gnd vdd FILL
XFILL_1__3214_ gnd vdd FILL
X_2284_ _1405_ _1404_ rst_bF$buf5 _767_ vdd gnd AOI21X1
X_3489_ _448_ _347_ _426_ _346_ vdd gnd OAI21X1
X_3069_ rst_bF$buf5 _1696_ _527_ vdd gnd NOR2X1
XFILL_0__2744_ gnd vdd FILL
X_4850_ i_rst_n_bF$buf3 vdd _1867_ clk_sys_bF$buf15 rf_read_reg0[0] vdd 
+ gnd
+ DFFSR
X_4430_ \u_cpu.ctrl.o_ibus_adr\[21] _1547_ vdd gnd INVX1
X_4010_ \u_cpu.bufreg.i_imm_en\ \u_cpu.bufreg.i_imm\ _894_ vdd gnd NAND2X1
XFILL_0__3949_ gnd vdd FILL
XFILL_0__3529_ gnd vdd FILL
XFILL_0__3109_ gnd vdd FILL
XFILL_0__3282_ gnd vdd FILL
X_3701_ _149_ _160_ _156_ rf_wreq vdd gnd NAND3X1
X_3298_ _1796_ _2152__bF$buf2 _1792_ vdd gnd NOR2X1
XFILL_0__2553_ gnd vdd FILL
XFILL_0_BUFX2_insert240 gnd vdd FILL
XFILL_0_BUFX2_insert242 gnd vdd FILL
XFILL_0_BUFX2_insert244 gnd vdd FILL
XFILL_1__2714_ gnd vdd FILL
X_2989_ rf_read_reg0_to_if[0] _1722_ _32__bF$buf3 _738_ vdd gnd OAI21X1
X_2569_ \u_mem_serial.active_ibus_bF$buf2\ \u_cpu.ctrl.o_ibus_adr\[13] _847_ vdd gnd NAND2X1
X_3930_ \u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20\[3] _665__bF$buf2 _700_ vdd gnd NAND2X1
X_3510_ \u_rf_if.stream_cnt_0_bF$buf2\ _394_ _389_ _383_ vdd gnd OAI21X1
XFILL_0__4296_ gnd vdd FILL
X_4715_ \u_mem_serial.shift_rx\[13] mem_ibus_ack_bF$buf1 _1984__bF$buf4 _2008_ vdd gnd NAND3X1
XFILL_1__3252_ gnd vdd FILL
XFILL_0__2782_ gnd vdd FILL
XFILL_0__3567_ gnd vdd FILL
XFILL_0__3147_ gnd vdd FILL
XFILL_1__2523_ gnd vdd FILL
X_2798_ ren_bF$buf2 _78_ _100_ _98_ _101_ vdd 
+ gnd
+ AOI22X1
X_2378_ _1316__bF$buf4 _1304__bF$buf2 \u_mem_serial.shift_rx\[11] _1329_ vdd gnd OAI21X1
XFILL_0__2418_ gnd vdd FILL
X_4524_ ibus_pending_rdt[13] \u_mem_serial.shift_rx\[13] ibus_pending_ack_bF$buf1 _1879_ vdd gnd MUX2X1
X_4104_ \u_cpu.bufreg.i_en_bF$buf3\ \u_cpu.bufreg.data\[15] _958_ vdd gnd NAND2X1
XFILL_0__2591_ gnd vdd FILL
XFILL_0__2171_ gnd vdd FILL
XFILL_1__2752_ gnd vdd FILL
XFILL_1__3537_ gnd vdd FILL
X_2187_ _770_ i_clk_fast_bF$buf4 \u_mem_serial.bit_count\[3] vdd gnd DFFPOSX1
XFILL_0__2647_ gnd vdd FILL
XFILL_0__2227_ gnd vdd FILL
X_4753_ rreg1[2] rf_rreq_bF$buf4 _1895__bF$buf2 _2031_ vdd gnd NAND3X1
X_4333_ mem_dbus_ack_bF$buf2 _1284_ _1288_ vdd gnd NOR2X1
XFILL_1__3290_ gnd vdd FILL
XFILL_0__3185_ gnd vdd FILL
X_3604_ \u_cpu.decode.co_mem_word\ _2073_ vdd gnd INVX1
XFILL_1__2561_ gnd vdd FILL
XFILL_1_BUFX2_insert172 gnd vdd FILL
XFILL_1_BUFX2_insert179 gnd vdd FILL
X_4809_ _546_ clk_sys_bF$buf35 \u_rf_if.stream_cnt\[4] vdd gnd DFFPOSX1
XFILL_1__3766_ gnd vdd FILL
XFILL_0__2456_ gnd vdd FILL
X_4562_ ibus_pending_ack_bF$buf0 ibus_pending_rdt[5] _1907_ vdd gnd NAND2X1
X_4142_ \u_cpu.bufreg.i_shift_op\ _1130_ vdd gnd INVX2
X_3833_ _757_ i_clk_fast_bF$buf7 \u_mem_serial.shift_rx\[4] vdd gnd DFFPOSX1
X_3413_ _42_ _27_ vdd gnd INVX1
XFILL_1__2790_ gnd vdd FILL
XFILL_0__4199_ gnd vdd FILL
X_4618_ ibus_pending_rdt[11] _1944_ vdd gnd INVX1
XFILL_1__3575_ gnd vdd FILL
XFILL_0__2685_ gnd vdd FILL
X_4791_ mem_ibus_ack_bF$buf2 \u_mem_serial.shift_rx\[25] _1984__bF$buf0 _2053_ vdd gnd NAND3X1
XFILL_0__2265_ gnd vdd FILL
X_4371_ \u_cpu.ctrl.pc_plus_offset_cy_r_w\ _1502_ vdd gnd INVX1
XFILL_0__4411_ gnd vdd FILL
X_3642_ rdata0[0] _2130_ vdd gnd INVX1
X_3222_ _2062__bF$buf1 _1738_ _32__bF$buf0 _1737_ vdd gnd OAI21X1
X_4847_ i_rst_n_bF$buf5 vdd _1870_ clk_sys_bF$buf1 ibus_pending_rdt[28] vdd 
+ gnd
+ DFFSR
X_4427_ _1541_ _1531_ _1545_ _1535_ _1478_ vdd 
+ gnd
+ OAI22X1
X_4007_ \u_cpu.bufreg.i_en_bF$buf4\ \u_cpu.bufreg.data\[0] \u_cpu.alu.i_buf\ vdd gnd AND2X2
XBUFX2_insert220 _2154_ _2154__bF$buf4 vdd gnd BUFX2
XBUFX2_insert221 _2154_ _2154__bF$buf3 vdd gnd BUFX2
XBUFX2_insert222 _2154_ _2154__bF$buf2 vdd gnd BUFX2
XBUFX2_insert223 _2154_ _2154__bF$buf1 vdd gnd BUFX2
XBUFX2_insert224 _2154_ _2154__bF$buf0 vdd gnd BUFX2
XBUFX2_insert225 _1172_ _1172__bF$buf3 vdd gnd BUFX2
XFILL_1__4169_ gnd vdd FILL
XBUFX2_insert226 _1172_ _1172__bF$buf2 vdd gnd BUFX2
XBUFX2_insert227 _1172_ _1172__bF$buf1 vdd gnd BUFX2
XBUFX2_insert228 _1172_ _1172__bF$buf0 vdd gnd BUFX2
XBUFX2_insert229 _1877_ _1877__bF$buf5 vdd gnd BUFX2
XFILL_0__2494_ gnd vdd FILL
X_4180_ \u_cpu.state.i_ctrl_misalign\ \u_cpu.bufreg2.i_bytecnt\[1] _1165_ vdd gnd NOR2X1
X_2913_ _523_ clk_sys_bF$buf12 \u_rf_if.read_buf0\[3] vdd gnd DFFPOSX1
XFILL_0__4220_ gnd vdd FILL
X_3871_ _369_ clk_sys_bF$buf32 \u_cpu.bufreg.i_sh_signed\ vdd gnd DFFPOSX1
X_3451_ \u_rf_if.stream_cnt\[2] _310_ _309_ vdd gnd NOR2X1
X_3031_ \u_rf_if.issue_sel_bF$buf1\ _1721_ _1600_ vdd gnd NAND2X1
X_4656_ ibus_pending_rdt[31] _1968_ vdd gnd INVX1
X_4236_ _1142_ _1206_ _1211_ _1209_ _1107_ vdd 
+ gnd
+ AOI22X1
XFILL_0__3911_ gnd vdd FILL
X_2722_ ren_bF$buf0 \u_rf_if.o_wen\ \u_rf_serial.req_seen\ _226_ vdd gnd OAI21X1
X_2302_ _1388_ _1391_ rst_bF$buf3 _763_ vdd gnd AOI21X1
XFILL_0__3088_ gnd vdd FILL
X_3927_ \u_cpu.csr_imm\ _665__bF$buf1 _698_ vdd gnd NAND2X1
X_3507_ \u_rf_if.read_buf1\[29] _446__bF$buf2 _445_ _380_ vdd gnd OAI21X1
X_3680_ _142_ _143_ \u_cpu.alu.i_en\ vdd gnd NAND2X1
X_3260_ _11_ _1820_ _1764_ vdd gnd NAND2X1
X_4465_ \u_cpu.ctrl.o_ibus_adr\[10] _1553_ _1568_ vdd gnd NAND2X1
X_4045_ \u_cpu.bufreg.i_cnt1\ _918_ vdd gnd INVX1
X_2951_ _426_ _39_ \u_rf_if.stream_active\ _608_ vdd gnd OAI21X1
X_2531_ _798_ _983_ _985_ _986_ vdd gnd NAND3X1
X_3736_ _180_ _179_ _181_ _182_ vdd gnd OAI21X1
X_3316_ _2154__bF$buf2 _2062__bF$buf2 _1807_ _1806_ vdd gnd NAND3X1
XFILL_1__3898_ gnd vdd FILL
XFILL_1__3058_ gnd vdd FILL
XFILL_0__2588_ gnd vdd FILL
X_4694_ current_wdata0_next_hint _1895__bF$buf0 _1993_ vdd gnd NAND2X1
X_4274_ \u_cpu.bufreg2.dlo\[22] _1244_ vdd gnd INVX1
XFILL_0__4734_ gnd vdd FILL
XFILL_1__2329_ gnd vdd FILL
X_2760_ _109_ _126_ _199_ _200_ vdd gnd NAND3X1
X_2340_ _1315__bF$buf3 _1359_ _1303__bF$buf1 _1360_ vdd gnd NAND3X1
X_3965_ _685_ _722_ _723_ _647_ vdd gnd OAI21X1
X_3545_ \u_rf_if.read_buf1\[12] \u_rf_if.stream_cnt_0_bF$buf2\ _447_ vdd gnd NOR2X1
X_3125_ _1753_ _1668_ _1666_ _546_ vdd gnd AOI21X1
XFILL145050x90150 gnd vdd FILL
XFILL145050x57750 gnd vdd FILL
X_4083_ _892__bF$buf4 _942_ _944_ _881_ vdd gnd OAI21X1
X_2816_ _79_ _81_ _82_ _83_ vdd gnd OAI21X1
XFILL_1__2978_ gnd vdd FILL
XFILL_1__4704_ gnd vdd FILL
X_3774_ _787_ i_clk_fast_bF$buf4 mem_ibus_ack vdd gnd DFFPOSX1
X_3354_ _2092_ _2091_ _2089_ _2088_ vdd gnd NOR3X1
X_4559_ ibus_pending_ack_bF$buf2 \u_mem_serial.shift_rx\[14] _1904_ _1905_ vdd gnd OAI21X1
X_4139_ _879_ clk_sys_bF$buf19 \u_cpu.bufreg.data\[23] vdd gnd DFFPOSX1
XFILL_1__3096_ gnd vdd FILL
XFILL144750x39750 gnd vdd FILL
X_2625_ _72_ i_clk_fast_bF$buf5 \u_rf_serial.tx_state\[3] vdd gnd DFFPOSX1
X_2205_ \u_mem_serial.shift_rx\[15] _1425_ _1461_ vdd gnd NAND2X1
XFILL_0__4772_ gnd vdd FILL
XFILL_1__2367_ gnd vdd FILL
X_3583_ \u_rf_if.rcnt\[2] _478_ rf_wdata0_next_to_if _477_ vdd gnd OAI21X1
X_3163_ \u_rf_if.i_rreq\ \u_rf_if.pending_read\ _1691_ vdd gnd NOR2X1
X_4788_ _1934_ _1983__bF$buf1 _2051_ _1871_ vdd gnd OAI21X1
X_4368_ _1114_ clk_sys_bF$buf4 \u_cpu.bufreg2.dlo\[21] vdd gnd DFFPOSX1
XFILL_0__3623_ gnd vdd FILL
X_2854_ _597_ clk_sys_bF$buf22 \u_rf_if.read_buf1\[24] vdd gnd DFFPOSX1
X_2434_ _1083_ _1045_ _1084_ vdd gnd NAND2X1
XFILL_0__4161_ gnd vdd FILL
X_3639_ \u_cpu.alu.i_cnt0\ \u_cpu.alu.cmp_r\ \u_cpu.state.i_alu_rd_sel1\ _2127_ vdd gnd NAND3X1
X_3219_ _2100_ _1738_ _1736_ _1735_ vdd gnd OAI21X1
XFILL_1__4742_ gnd vdd FILL
X_3392_ _9_ _8_ _7_ vdd gnd NOR2X1
XBUFX2_insert190 rf_rreq rf_rreq_bF$buf7 vdd gnd BUFX2
XBUFX2_insert191 rf_rreq rf_rreq_bF$buf6 vdd gnd BUFX2
XBUFX2_insert192 rf_rreq rf_rreq_bF$buf5 vdd gnd BUFX2
XBUFX2_insert193 rf_rreq rf_rreq_bF$buf4 vdd gnd BUFX2
XBUFX2_insert194 rf_rreq rf_rreq_bF$buf3 vdd gnd BUFX2
XBUFX2_insert195 rf_rreq rf_rreq_bF$buf2 vdd gnd BUFX2
XBUFX2_insert196 rf_rreq rf_rreq_bF$buf1 vdd gnd BUFX2
XBUFX2_insert197 rf_rreq rf_rreq_bF$buf0 vdd gnd BUFX2
XBUFX2_insert198 \u_cpu.bufreg.i_en\ \u_cpu.bufreg.i_en_bF$buf4\ vdd gnd BUFX2
XBUFX2_insert199 \u_cpu.bufreg.i_en\ \u_cpu.bufreg.i_en_bF$buf3\ vdd gnd BUFX2
X_4597_ ibus_pending_rdt[29] _1930_ vdd gnd INVX1
X_4177_ _1132_ _1161_ _1162_ vdd gnd NOR2X1
XFILL_0__3852_ gnd vdd FILL
XFILL_0__3432_ gnd vdd FILL
XFILL_0__3012_ gnd vdd FILL
XFILL_0__4637_ gnd vdd FILL
X_2663_ _282_ _231_ rst_bF$buf4 _64_ vdd gnd AOI21X1
X_2243_ \u_mem_serial.shift_rx\[23] _1425_ _1434_ vdd gnd NAND2X1
XFILL_0__4390_ gnd vdd FILL
X_3868_ _359_ clk_sys_bF$buf32 \u_cpu.bne_or_bge\ vdd gnd DFFPOSX1
X_3448_ \u_rf_if.read_buf0\[31] _446__bF$buf3 _306_ vdd gnd NOR2X1
X_3028_ _1697_ _1599_ _1598_ _515_ vdd gnd AOI21X1
XFILL_0__2703_ gnd vdd FILL
XFILL_0__3661_ gnd vdd FILL
X_2719_ ren_bF$buf1 raddr[2] _228_ vdd gnd NAND2X1
X_2892_ _528_ clk_sys_bF$buf39 \u_rf_if.read_buf0\[6] vdd gnd DFFPOSX1
X_2472_ _1043_ _1045_ _1046_ vdd gnd NAND2X1
X_3677_ _141_ \u_cpu.bufreg.i_cnt_done\ vdd gnd INVX2
X_3257_ _1762_ _1763_ rst_bF$buf8 _582_ vdd gnd AOI21X1
XFILL_0__2512_ gnd vdd FILL
XFILL_1__4780_ gnd vdd FILL
XFILL_0_BUFX2_insert90 gnd vdd FILL
XFILL_0__3890_ gnd vdd FILL
XFILL_0_BUFX2_insert92 gnd vdd FILL
XFILL_0__3470_ gnd vdd FILL
XFILL_0__3050_ gnd vdd FILL
XFILL_0_BUFX2_insert94 gnd vdd FILL
XFILL_0_BUFX2_insert96 gnd vdd FILL
XFILL_0_BUFX2_insert98 gnd vdd FILL
XFILL_0_BUFX2_insert99 gnd vdd FILL
X_2948_ _515_ clk_sys_bF$buf33 raddr[6] vdd gnd DFFPOSX1
X_2528_ \u_cpu.ctrl.o_ibus_adr\[28] \u_cpu.bufreg.data\[28] \u_mem_serial.active_ibus_bF$buf1\ _989_ vdd gnd MUX2X1
XFILL_0__4675_ gnd vdd FILL
X_2281_ _1307_ _1407_ _1408_ vdd gnd NAND2X1
XFILL_1__4416_ gnd vdd FILL
X_3486_ _412_ _344_ _450_ rdata1[0] vdd gnd AOI21X1
X_3066_ \u_rf_if.issue_chunk\[2] _1625_ _1624_ vdd gnd NAND2X1
X_2757_ _81_ _79_ \u_rf_serial.tx_state\[4] _201_ vdd gnd OAI21X1
X_2337_ \u_mem_serial.shift_rx\[2] _1297__bF$buf3 _1362_ vdd gnd NAND2X1
XFILL_1__3020_ gnd vdd FILL
X_3295_ _18__bF$buf2 _1794_ \u_rf_if.read_buf1\[18] _1790_ vdd gnd OAI21X1
XFILL_0__2550_ gnd vdd FILL
XFILL_0_BUFX2_insert210 gnd vdd FILL
XFILL_0_BUFX2_insert212 gnd vdd FILL
XFILL_0_BUFX2_insert213 gnd vdd FILL
XFILL_0_BUFX2_insert215 gnd vdd FILL
XFILL_0_BUFX2_insert217 gnd vdd FILL
XFILL_0_BUFX2_insert219 gnd vdd FILL
XFILL_0__3335_ gnd vdd FILL
X_2986_ _737_ _1700_ _736_ vdd gnd NOR2X1
X_2566_ _805_ _844_ _849_ _850_ vdd gnd NAND3X1
X_4712_ mem_ibus_ack_bF$buf2 \u_mem_serial.shift_rx\[14] _1984__bF$buf0 _2006_ vdd gnd NAND3X1
XFILL_1__4454_ gnd vdd FILL
XFILL_1__4034_ gnd vdd FILL
XFILL_1__3305_ gnd vdd FILL
X_2795_ _91_ _102_ _103_ _104_ vdd gnd OAI21X1
X_2375_ _1315__bF$buf1 _1331_ _1303__bF$buf3 _1332_ vdd gnd NAND3X1
XFILL_0__2415_ gnd vdd FILL
X_4521_ ibus_pending_ack_bF$buf1 _1877_ vdd gnd INVX8
X_4101_ \u_cpu.bufreg.data\[15] _892__bF$buf2 _956_ vdd gnd NAND2X1
XFILL_0__3373_ gnd vdd FILL
XFILL_0__4578_ gnd vdd FILL
X_2184_ gnd o_gpio_oe[1] vdd gnd BUFX2
X_3389_ \u_rf_if.issue_chunk\[1] _4_ vdd gnd INVX2
XFILL_0__2644_ gnd vdd FILL
X_4750_ rreg1[3] rf_rreq_bF$buf5 _1895__bF$buf3 _2029_ vdd gnd NAND3X1
X_4330_ mem_dbus_ack_bF$buf6 \u_mem_serial.shift_rx\[10] _1172__bF$buf2 _1285_ _1286_ vdd 
+ gnd
+ AOI22X1
XFILL145050x133350 gnd vdd FILL
XFILL_0__3009_ gnd vdd FILL
XFILL_1__4072_ gnd vdd FILL
XFILL_1__2805_ gnd vdd FILL
X_3601_ \u_cpu.alu.i_rd_sel\[0] \u_cpu.decode.co_rd_alu_en\ _1823_ vdd gnd NAND2X1
XFILL_1_BUFX2_insert141 gnd vdd FILL
XFILL_1_BUFX2_insert145 gnd vdd FILL
XFILL_1_BUFX2_insert149 gnd vdd FILL
X_4806_ _58_ i_clk_fast_bF$buf5 \u_rf_serial.last_req_key\[6] vdd gnd DFFPOSX1
XFILL_1__3343_ gnd vdd FILL
XFILL_1__4548_ gnd vdd FILL
X_3198_ _1722_ _1721_ _1720_ _565_ vdd gnd AOI21X1
XFILL_0__2453_ gnd vdd FILL
XFILL_1__2614_ gnd vdd FILL
X_2889_ _506_ clk_sys_bF$buf22 \u_rf_if.issue_sel\ vdd gnd DFFPOSX1
X_2469_ _840_ \u_cpu.bufreg2.dlo\[16] \u_cpu.bufreg2.dlo\[18] _1048_ _1049_ vdd 
+ gnd
+ AOI22X1
X_3830_ _390_ _397_ \u_cpu.decode.co_immdec_ctrl\[0] vdd gnd NOR2X1
X_3410_ \u_rf_if.issue_sel_bF$buf2\ _25_ vdd gnd INVX1
X_4615_ ibus_pending_rdt[19] _1942_ vdd gnd INVX1
XFILL_0__2682_ gnd vdd FILL
XFILL_0__3887_ gnd vdd FILL
XFILL_0__3047_ gnd vdd FILL
XFILL_1__3628_ gnd vdd FILL
X_2698_ \u_rf_serial.last_req_key\[3] _119_ _248_ vdd gnd NAND2X1
X_2278_ \u_cpu.o_dbus_cyc\ \u_cpu.bufreg2.i_op_b_sel\ _1410_ _1411_ vdd gnd NAND3X1
X_4844_ i_rst_n_bF$buf5 vdd _1873_ clk_sys_bF$buf1 ibus_pending_rdt[25] vdd 
+ gnd
+ DFFSR
XFILL_0__2318_ gnd vdd FILL
X_4424_ \u_cpu.ctrl.o_ibus_adr\[23] _1544_ vdd gnd INVX1
X_4004_ _643_ clk_sys_bF$buf23 \u_cpu.immdec.gen_immdec_w_eq_1.imm30_25\[1] vdd gnd DFFPOSX1
XFILL_1__3381_ gnd vdd FILL
XFILL_1__4586_ gnd vdd FILL
XFILL_0__2491_ gnd vdd FILL
X_2910_ _567_ clk_sys_bF$buf17 \u_rf_if.wen1_r\ vdd gnd DFFPOSX1
XFILL_0__3696_ gnd vdd FILL
XFILL_0__2967_ gnd vdd FILL
X_4653_ _1894_ \u_cpu.decode.i_wb_rdt\[19] _1897_ _1967_ vdd gnd NAND3X1
X_4233_ _1134_ _1208_ _1145_ _1209_ vdd gnd NAND3X1
XFILL_0_BUFX2_insert181 gnd vdd FILL
XFILL_0_BUFX2_insert183 gnd vdd FILL
XFILL_0_BUFX2_insert185 gnd vdd FILL
XFILL_0_BUFX2_insert187 gnd vdd FILL
XFILL_0_BUFX2_insert189 gnd vdd FILL
XFILL_0__3085_ gnd vdd FILL
X_3924_ rreg0[1] _665__bF$buf1 _696_ vdd gnd NAND2X1
X_3504_ _381_ _380_ _379_ _377_ _374_ vdd 
+ gnd
+ OAI22X1
X_4709_ _1884_ _1983__bF$buf4 _2004_ _1839_ vdd gnd OAI21X1
XFILL_0__2356_ gnd vdd FILL
X_4462_ \u_cpu.ctrl.o_ibus_adr\[11] _1553_ _1566_ vdd gnd NAND2X1
X_4042_ \u_cpu.bufreg.i_en_bF$buf4\ _914_ _915_ _869_ vdd gnd OAI21X1
X_3733_ _178_ \u_cpu.alu.o_cmp\ _179_ vdd gnd AND2X2
X_3313_ _2154__bF$buf2 _1807_ _2099_ _1804_ vdd gnd NAND3X1
XFILL_0__4099_ gnd vdd FILL
X_4518_ _1474_ clk_sys_bF$buf29 \u_cpu.ctrl.o_ibus_adr\[28] vdd gnd DFFPOSX1
XFILL_0__2165_ gnd vdd FILL
X_4691_ clk_sys_bF$buf41 _1977_ _1991_ vdd gnd NOR2X1
X_4271_ \u_cpu.bufreg.i_shamt\[0] _1210_ _1241_ _1242_ vdd gnd OAI21X1
XFILL_0__4311_ gnd vdd FILL
X_3962_ _685_ _720_ _721_ _646_ vdd gnd OAI21X1
X_3542_ \u_rf_if.read_buf1\[13] _446__bF$buf0 _445_ _444_ vdd gnd OAI21X1
X_3122_ _1664_ _1665_ rst_bF$buf0 _545_ vdd gnd AOI21X1
X_4747_ mem_ibus_ack_bF$buf3 \u_mem_serial.shift_rx\[0] _1984__bF$buf3 _2027_ vdd gnd NAND3X1
X_4327_ _1281_ _1164__bF$buf1 _1283_ _1126_ vdd gnd OAI21X1
XFILL_0__2394_ gnd vdd FILL
X_4080_ \u_cpu.bufreg.i_en_bF$buf0\ \u_cpu.bufreg.data\[23] _943_ vdd gnd NAND2X1
X_2813_ \u_rf_if.o_wen\ \u_rf_serial.tx_state\[2] _86_ vdd gnd NAND2X1
X_3771_ _375_ _376_ vdd gnd INVX1
X_3351_ _18__bF$buf2 _2094_ \u_rf_if.read_buf1\[28] _2070_ vdd gnd OAI21X1
X_4556_ _1901_ rf_rreq_bF$buf2 _1902_ rf_read_reg0_to_if[0] vdd gnd OAI21X1
X_4136_ _882_ clk_sys_bF$buf11 \u_cpu.bufreg.data\[20] vdd gnd DFFPOSX1
XFILL_0__3811_ gnd vdd FILL
XFILL_1__4298_ gnd vdd FILL
X_2622_ _2158_ _794_ vdd gnd INVX1
X_2202_ _1414_ _1435_ _1462_ _1463_ vdd gnd OAI21X1
XFILL144750x93750 gnd vdd FILL
X_3827_ \u_cpu.decode.co_mem_word\ \u_cpu.bufreg.i_imm_en\ \u_cpu.bufreg.i_shift_op\ vdd gnd NOR2X1
X_3407_ \u_rf_if.issue_chunk\[3] _22_ vdd gnd INVX1
XFILL_1__3149_ gnd vdd FILL
X_3580_ _475_ _476_ _474_ vdd gnd NAND2X1
X_3160_ \u_rf_if.rcnt\[0] \u_rf_if.rcnt\[1] _485_ _1689_ vdd gnd OAI21X1
X_4785_ mem_ibus_ack_bF$buf2 \u_mem_serial.shift_rx\[28] _1984__bF$buf0 _2050_ vdd gnd NAND3X1
XFILL_0__2259_ gnd vdd FILL
X_4365_ _1117_ clk_sys_bF$buf4 \u_cpu.bufreg2.dlo\[18] vdd gnd DFFPOSX1
XFILL_0__4405_ gnd vdd FILL
X_2851_ _538_ clk_sys_bF$buf21 \u_rf_if.read_buf0\[14] vdd gnd DFFPOSX1
X_2431_ _1086_ _1082_ _1087_ vdd gnd NAND2X1
X_3636_ _2123_ _2122_ _2124_ vdd gnd NAND2X1
X_3216_ \u_rf_if.wen0_r\ _1734_ vdd gnd INVX1
XFILL_1__2173_ gnd vdd FILL
XBUFX2_insert160 mem_dbus_ack mem_dbus_ack_bF$buf6 vdd gnd BUFX2
XBUFX2_insert161 mem_dbus_ack mem_dbus_ack_bF$buf5 vdd gnd BUFX2
XBUFX2_insert162 mem_dbus_ack mem_dbus_ack_bF$buf4 vdd gnd BUFX2
XBUFX2_insert163 mem_dbus_ack mem_dbus_ack_bF$buf3 vdd gnd BUFX2
XBUFX2_insert164 mem_dbus_ack mem_dbus_ack_bF$buf2 vdd gnd BUFX2
XBUFX2_insert165 mem_dbus_ack mem_dbus_ack_bF$buf1 vdd gnd BUFX2
XBUFX2_insert166 mem_dbus_ack mem_dbus_ack_bF$buf0 vdd gnd BUFX2
XBUFX2_insert167 _892_ _892__bF$buf4 vdd gnd BUFX2
XBUFX2_insert168 _892_ _892__bF$buf3 vdd gnd BUFX2
XBUFX2_insert169 _892_ _892__bF$buf2 vdd gnd BUFX2
X_4594_ \u_mem_serial.shift_rx\[30] _1928_ vdd gnd INVX1
X_4174_ _1130_ \u_cpu.alu.i_en\ _1158_ _1159_ vdd gnd NAND3X1
X_2907_ _569_ clk_sys_bF$buf41 \u_rf_if.wdata1_phase\[1] vdd gnd DFFPOSX1
XFILL_0__4214_ gnd vdd FILL
XFILL_1__2649_ gnd vdd FILL
X_2660_ _238_ _283_ _284_ _65_ vdd gnd AOI21X1
X_2240_ _1414_ _1435_ _1381_ _1436_ vdd gnd OAI21X1
X_3865_ _362_ clk_sys_bF$buf7 \u_cpu.bufreg.i_right_shift_op\ vdd gnd DFFPOSX1
X_3445_ _448_ _304_ \u_rf_if.stream_cnt\[3] _303_ vdd gnd OAI21X1
X_3025_ raddr[5] _1697_ _32__bF$buf4 _1595_ vdd gnd OAI21X1
XFILL_1__3187_ gnd vdd FILL
XFILL_0__2297_ gnd vdd FILL
X_2716_ _227_ _215__bF$buf1 _230_ _63_ vdd gnd AOI21X1
XFILL_0__4443_ gnd vdd FILL
XFILL_0__4023_ gnd vdd FILL
XFILL_1__2458_ gnd vdd FILL
X_3674_ _139_ \u_cpu.bufreg.i_init\ vdd gnd INVX2
X_3254_ _1760_ _1761_ rst_bF$buf8 _581_ vdd gnd AOI21X1
X_4459_ \u_cpu.ctrl.o_ibus_adr\[12] _1553_ _1564_ vdd gnd NAND2X1
X_4039_ _892__bF$buf3 _911_ _913_ _868_ vdd gnd OAI21X1
X_2945_ _548_ clk_sys_bF$buf21 \u_rf_if.read_buf0\[23] vdd gnd DFFPOSX1
X_2525_ \u_cpu.ctrl.o_ibus_adr\[26] _992_ vdd gnd INVX1
XFILL_0__4252_ gnd vdd FILL
XFILL_1__2687_ gnd vdd FILL
X_3483_ \u_rf_if.stream_cnt_0_bF$buf5\ _343_ _342_ _341_ vdd gnd OAI21X1
X_3063_ _1692_ _1622_ _526_ vdd gnd NOR2X1
X_4688_ _1963_ _1895__bF$buf1 _1833_ vdd gnd NAND2X1
X_4268_ _1238_ _1206_ _1239_ _1111_ vdd gnd OAI21X1
X_2754_ \u_rf_serial.tx_state\[4] _203_ vdd gnd INVX1
X_2334_ _1361_ _1364_ rst_bF$buf4 _758_ vdd gnd AOI21X1
XFILL_0__4481_ gnd vdd FILL
XFILL_0__4061_ gnd vdd FILL
X_3959_ _685_ _718_ _719_ _645_ vdd gnd OAI21X1
X_3539_ _447_ _444_ _443_ _442_ _441_ vdd 
+ gnd
+ OAI22X1
X_3119_ _1662_ _1663_ rst_bF$buf0 _544_ vdd gnd AOI21X1
XFILL_1__2496_ gnd vdd FILL
XFILL_1__4222_ gnd vdd FILL
X_3292_ _4_ _2090_ _5_ _1788_ vdd gnd NAND3X1
X_4497_ _1497_ clk_sys_bF$buf42 \u_cpu.ctrl.o_ibus_adr\[6] vdd gnd DFFPOSX1
X_4077_ \u_cpu.bufreg.data\[23] _892__bF$buf4 _941_ vdd gnd NAND2X1
XFILL_0__3332_ gnd vdd FILL
XFILL_0__4537_ gnd vdd FILL
XFILL_1__3913_ gnd vdd FILL
X_2983_ \u_rf_if.write_wait\[3] _1703_ _44_ _734_ vdd gnd OAI21X1
X_2563_ \u_mem_serial.bit_count_0_bF$buf0\ _852_ _802_ _853_ vdd gnd OAI21X1
XFILL_0__4290_ gnd vdd FILL
X_3768_ _373_ \u_cpu.alu.i_rd_sel\[0] vdd gnd INVX1
X_3348_ _2154__bF$buf0 _10__bF$buf2 _2068_ _2067_ vdd gnd NAND3X1
XFILL_0__2603_ gnd vdd FILL
XFILL_0__3808_ gnd vdd FILL
X_2619_ _795_ _796_ _797_ vdd gnd NAND2X1
X_2792_ _101_ _106_ _97_ _107_ vdd gnd AOI21X1
X_2372_ \u_mem_serial.shift_rx\[9] _1297__bF$buf4 _1334_ vdd gnd NAND2X1
X_3997_ _650_ clk_sys_bF$buf27 \u_cpu.immdec.gen_immdec_w_eq_1.imm11_7\[2] vdd gnd DFFPOSX1
X_3577_ gnd _471_ vdd gnd INVX1
X_3157_ _1717__bF$buf3 _2094_ \u_rf_if.read_buf0\[28] _1687_ vdd gnd OAI21X1
XFILL_0__3617_ gnd vdd FILL
XFILL_1__4260_ gnd vdd FILL
XFILL_0__3370_ gnd vdd FILL
X_2848_ _600_ clk_sys_bF$buf35 \u_rf_if.read_buf1\[27] vdd gnd DFFPOSX1
X_2428_ _1083_ _853_ _1090_ vdd gnd NOR2X1
XFILL_0__4575_ gnd vdd FILL
XFILL_0__4155_ gnd vdd FILL
XFILL_1__3951_ gnd vdd FILL
XFILL_1__3111_ gnd vdd FILL
X_2181_ gnd o_gpio_oe[4] vdd gnd BUFX2
X_3386_ _5_ _1_ _0_ vdd gnd AND2X2
XFILL_0__2221_ gnd vdd FILL
X_2657_ \u_rf_serial.shift_rx\[1] _286_ vdd gnd INVX1
X_2237_ \u_mem_serial.shift_rx\[22] _1425_ _1438_ vdd gnd NAND2X1
XFILL_0__4384_ gnd vdd FILL
XFILL_1_BUFX2_insert111 gnd vdd FILL
XFILL_1_BUFX2_insert115 gnd vdd FILL
X_4803_ i_rst_n_bF$buf2 vdd _1859_ clk_sys_bF$buf15 rf_read_reg1[0] vdd 
+ gnd
+ DFFSR
X_3195_ _1722_ _1719_ _1718_ _564_ vdd gnd AOI21X1
XFILL_0__3655_ gnd vdd FILL
XFILL_0__3235_ gnd vdd FILL
X_2886_ _581_ clk_sys_bF$buf22 \u_rf_if.read_buf1\[8] vdd gnd DFFPOSX1
X_2466_ \u_cpu.bufreg2.dlo\[23] _795_ _840_ \u_cpu.bufreg2.dlo\[20] _1052_ vdd 
+ gnd
+ AOI22X1
XFILL_0__4193_ gnd vdd FILL
XFILL_0__2506_ gnd vdd FILL
X_4612_ ibus_pending_rdt[24] _1940_ vdd gnd INVX1
XFILL_1__2420_ gnd vdd FILL
XFILL_0__4249_ gnd vdd FILL
X_2695_ \u_rf_if.o_waddr\[5] _91_ _251_ vdd gnd NAND2X1
X_2275_ rst_bF$buf1 _1412_ _769_ vdd gnd NOR2X1
XFILL_0__2735_ gnd vdd FILL
X_4841_ i_rst_n_bF$buf3 vdd _1825_ clk_sys_bF$buf20 rf_read_reg0[4] vdd 
+ gnd
+ DFFSR
X_4421_ _1542_ _1531_ _1538_ _1535_ _1475_ vdd 
+ gnd
+ OAI22X1
X_4001_ _646_ clk_sys_bF$buf20 rreg1[2] vdd gnd DFFPOSX1
XFILL_0__3273_ gnd vdd FILL
XFILL_1__3434_ gnd vdd FILL
XFILL_1__4639_ gnd vdd FILL
X_3289_ _2154__bF$buf1 _5_ _1786_ _1785_ vdd gnd NAND3X1
XFILL_0__2544_ gnd vdd FILL
X_4650_ _1894_ \u_cpu.decode.i_wb_rdt\[24] _1897_ _1965_ vdd gnd NAND3X1
X_4230_ mem_dbus_ack_bF$buf4 _1136_ _1172__bF$buf1 _1206_ vdd gnd NOR3X1
XFILL_0_BUFX2_insert151 gnd vdd FILL
XFILL_0__3749_ gnd vdd FILL
X_3921_ rreg0[2] _665__bF$buf0 _694_ vdd gnd NAND2X1
X_3501_ \u_rf_if.read_buf1\[16] _360_ vdd gnd INVX1
XFILL_0__4287_ gnd vdd FILL
X_4706_ _1894_ _2003_ vdd gnd INVX1
X_3098_ _1646_ _1647_ rst_bF$buf2 _537_ vdd gnd AOI21X1
XFILL_0__2773_ gnd vdd FILL
XFILL_0__3978_ gnd vdd FILL
XFILL_0__3558_ gnd vdd FILL
XFILL_0__3138_ gnd vdd FILL
XFILL_1__3719_ gnd vdd FILL
X_2789_ ren_bF$buf4 \u_rf_if.o_waddr\[5] _110_ vdd gnd OR2X2
X_2369_ _1333_ _1336_ rst_bF$buf10 _751_ vdd gnd AOI21X1
X_3730_ \u_cpu.state.o_cnt\[2] \u_cpu.state.cnt_r\[3] \u_cpu.bufreg2.i_bytecnt\[0] _176_ vdd gnd NAND3X1
X_3310_ _18__bF$buf4 _1803_ \u_rf_if.read_buf1\[21] _1802_ vdd gnd OAI21X1
XFILL_0__2409_ gnd vdd FILL
X_4515_ _1495_ clk_sys_bF$buf9 \u_cpu.ctrl.o_ibus_adr\[8] vdd gnd DFFPOSX1
XFILL_1__3472_ gnd vdd FILL
XFILL_1__4677_ gnd vdd FILL
XFILL_0__2582_ gnd vdd FILL
XFILL_0__3787_ gnd vdd FILL
X_2598_ _806_ _816_ _807_ _817_ _818_ vdd 
+ gnd
+ OAI22X1
X_2178_ gnd o_gpio_oe[7] vdd gnd BUFX2
X_4744_ mem_ibus_ack_bF$buf3 \u_mem_serial.shift_rx\[1] _1984__bF$buf3 _2025_ vdd gnd NAND3X1
X_4324_ \u_cpu.bufreg2.dlo\[11] _1281_ vdd gnd INVX1
X_2810_ \u_rf_serial.tx_state\[0] \u_rf_serial.tx_state\[1] \u_rf_serial.tx_state\[2] _89_ vdd gnd OAI21X1
XFILL_0__3176_ gnd vdd FILL
XFILL_0__2447_ gnd vdd FILL
X_4553_ _1877__bF$buf0 _1899_ _1900_ \u_cpu.decode.i_wb_rdt\[15] vdd gnd OAI21X1
X_4133_ _885_ clk_sys_bF$buf11 \u_cpu.bufreg.data\[17] vdd gnd DFFPOSX1
X_3824_ \u_cpu.cond_branch\ _386_ _403_ vdd gnd NAND2X1
X_3404_ _24_ _23_ _20_ _19_ vdd gnd NAND3X1
X_4609_ ibus_pending_rdt[25] _1938_ vdd gnd INVX1
XFILL_0__2676_ gnd vdd FILL
X_4782_ _2047_ _1983__bF$buf1 _2048_ _1868_ vdd gnd OAI21X1
X_4362_ _1120_ clk_sys_bF$buf25 \u_cpu.bufreg2.dlo\[15] vdd gnd DFFPOSX1
X_3633_ _2112_ _2121_ vdd gnd INVX1
X_3213_ gnd _484__bF$buf1 _32__bF$buf4 _1732_ vdd gnd OAI21X1
X_4838_ i_rst_n_bF$buf0 vdd _1828_ clk_sys_bF$buf14 ibus_pending_rdt[23] vdd 
+ gnd
+ DFFSR
X_4418_ \u_cpu.ctrl.o_ibus_adr\[29] _1541_ vdd gnd INVX1
XFILL_1__3795_ gnd vdd FILL
XBUFX2_insert130 rst rst_bF$buf7 vdd gnd BUFX2
XBUFX2_insert131 rst rst_bF$buf6 vdd gnd BUFX2
XBUFX2_insert132 rst rst_bF$buf5 vdd gnd BUFX2
XBUFX2_insert133 rst rst_bF$buf4 vdd gnd BUFX2
XBUFX2_insert134 rst rst_bF$buf3 vdd gnd BUFX2
XBUFX2_insert135 rst rst_bF$buf2 vdd gnd BUFX2
XBUFX2_insert136 rst rst_bF$buf1 vdd gnd BUFX2
XBUFX2_insert137 rst rst_bF$buf0 vdd gnd BUFX2
XBUFX2_insert138 ibus_pending_ack ibus_pending_ack_bF$buf3 vdd gnd BUFX2
XBUFX2_insert139 ibus_pending_ack ibus_pending_ack_bF$buf2 vdd gnd BUFX2
XFILL_0__2485_ gnd vdd FILL
X_4591_ ibus_pending_rdt[23] _1926_ vdd gnd INVX1
X_4171_ \u_cpu.state.i_ctrl_misalign\ \u_cpu.bufreg2.i_bytecnt\[1] _1156_ vdd gnd AND2X2
X_2904_ _525_ clk_sys_bF$buf39 \u_rf_if.read_buf0\[5] vdd gnd DFFPOSX1
XFILL_0__4211_ gnd vdd FILL
X_3862_ _365_ clk_sys_bF$buf32 \u_cpu.bufreg2.i_op_b_sel\ vdd gnd DFFPOSX1
X_3442_ \u_rf_if.read_buf0\[17] _446__bF$buf2 _445_ _300_ vdd gnd OAI21X1
X_3022_ \u_rf_if.rreg0_latched\[0] \u_rf_if.issue_sel_bF$buf0\ _1594_ _1593_ vdd gnd OAI21X1
X_4647_ has_fetched_first_insn _1963_ vdd gnd INVX1
X_4227_ mem_dbus_ack_bF$buf4 _1202_ _1203_ _1204_ vdd gnd OAI21X1
XFILL_0__3902_ gnd vdd FILL
X_2713_ \u_rf_serial.launch_pending\ _232_ _205_ _233_ vdd gnd NOR3X1
XFILL_0__3499_ gnd vdd FILL
XFILL_0__3079_ gnd vdd FILL
X_3918_ rreg0[3] _665__bF$buf0 _692_ vdd gnd NAND2X1
XFILL_1__4601_ gnd vdd FILL
X_3671_ \u_cpu.decode.co_rd_mem_en\ \u_cpu.mem_if.o_rd\ \u_cpu.ctrl.o_rd\ _37_ vdd gnd AOI21X1
X_3251_ _1811_ _10__bF$buf3 _1757_ vdd gnd NOR2X1
X_4456_ \u_cpu.ctrl.o_ibus_adr\[13] _1553_ _1562_ vdd gnd NAND2X1
X_4036_ \u_cpu.bufreg.i_en_bF$buf4\ \u_cpu.bufreg.data\[5] _912_ vdd gnd NAND2X1
XFILL_1_CLKBUF1_insert73 gnd vdd FILL
XFILL_1_CLKBUF1_insert77 gnd vdd FILL
XFILL_0_BUFX2_insert31 gnd vdd FILL
XFILL_0_BUFX2_insert33 gnd vdd FILL
XFILL_0_BUFX2_insert35 gnd vdd FILL
XFILL_0_BUFX2_insert37 gnd vdd FILL
XFILL_0_BUFX2_insert39 gnd vdd FILL
X_2942_ _486_ clk_sys_bF$buf29 \u_rf_if.stream_cnt\[3] vdd gnd DFFPOSX1
X_2522_ \u_mem_serial.bit_count_0_bF$buf3\ _994_ _993_ _995_ vdd gnd NAND3X1
X_3727_ _161_ \u_cpu.state.cnt_r\[0] _129_ vdd gnd AND2X2
X_3307_ _1800_ _1802_ rst_bF$buf0 _594_ vdd gnd AOI21X1
X_3480_ \u_rf_if.stream_cnt_0_bF$buf5\ _340_ _339_ _338_ vdd gnd OAI21X1
X_3060_ _1620_ _1621_ rst_bF$buf0 _525_ vdd gnd AOI21X1
XFILL_0__2999_ gnd vdd FILL
X_4685_ _1914_ _1983__bF$buf3 _1988_ _1831_ vdd gnd OAI21X1
X_4265_ _1213_ _1136_ _1236_ _1237_ vdd gnd OAI21X1
XFILL_0__3940_ gnd vdd FILL
XFILL_0__3520_ gnd vdd FILL
XFILL_0__3100_ gnd vdd FILL
XFILL_0__4725_ gnd vdd FILL
X_2751_ ren_bF$buf0 \u_rf_if.o_wen\ \u_rf_serial.launch_pending\ _206_ vdd gnd OAI21X1
X_2331_ _1366_ _1367_ vdd gnd INVX1
X_3956_ _683_ _716_ _717_ _644_ vdd gnd OAI21X1
X_3536_ \u_rf_if.read_buf1\[9] _446__bF$buf2 _445_ _438_ vdd gnd OAI21X1
X_3116_ _1660_ _1661_ rst_bF$buf9 _543_ vdd gnd AOI21X1
XFILL_1__3698_ gnd vdd FILL
XFILL_1__3278_ gnd vdd FILL
XFILL_0__2388_ gnd vdd FILL
X_4494_ _1485_ clk_sys_bF$buf11 \u_cpu.ctrl.o_ibus_adr\[18] vdd gnd DFFPOSX1
X_4074_ \u_cpu.bufreg.i_init\ _914_ _939_ vdd gnd NOR2X1
X_2807_ \u_rf_if.o_waddr\[6] _91_ _92_ vdd gnd NAND2X1
XFILL144750x46950 gnd vdd FILL
X_2980_ \u_rf_if.write_wait\[0] \u_rf_if.write_wait\[1] \u_rf_if.write_wait\[2] _624_ vdd gnd OAI21X1
X_2560_ \u_mem_serial.active_ibus_bF$buf4\ \u_cpu.bufreg.data\[10] _856_ vdd gnd OR2X2
X_3765_ \u_cpu.bne_or_bge\ _371_ vdd gnd INVX1
X_3345_ _2092_ _2066_ _2065_ vdd gnd NOR2X1
X_2616_ \u_mem_serial.bit_count\[2] _800_ vdd gnd INVX1
XFILL_0__4763_ gnd vdd FILL
XFILL_1__2778_ gnd vdd FILL
X_3994_ _626_ clk_sys_bF$buf30 \u_cpu.immdec.gen_immdec_w_eq_1.imm31\ vdd gnd DFFPOSX1
X_3574_ _469_ _483_ _468_ vdd gnd NAND2X1
X_3154_ _1717__bF$buf0 _2064_ \u_rf_if.read_buf0\[27] _1685_ vdd gnd OAI21X1
X_4779_ _1902_ _2045_ _2046_ _1867_ vdd gnd NAND3X1
X_4359_ _1123_ clk_sys_bF$buf25 \u_cpu.bufreg2.dlo\[14] vdd gnd DFFPOSX1
X_2845_ _498_ clk_sys_bF$buf24 \u_rf_if.write_wait\[1] vdd gnd DFFPOSX1
X_2425_ _840_ _1092_ _1091_ _845_ _1093_ vdd 
+ gnd
+ AOI22X1
XFILL_0__4152_ gnd vdd FILL
XFILL_1__4313_ gnd vdd FILL
X_3383_ _18__bF$buf4 _2154_ vdd gnd INVX8
X_4588_ \u_mem_serial.shift_rx\[4] _1924_ vdd gnd INVX1
X_4168_ \u_cpu.bufreg2.dlo\[7] _1153_ vdd gnd INVX1
XFILL_0__3423_ gnd vdd FILL
XFILL_0__3003_ gnd vdd FILL
XFILL_0__4628_ gnd vdd FILL
X_2654_ _286_ _287_ _288_ _67_ vdd gnd AOI21X1
X_2234_ \u_mem_serial.shift_rx\[21] _1425_ _1440_ vdd gnd NAND2X1
X_3859_ rf_rreq_bF$buf0 \u_cpu.cond_branch\ _418_ _370_ vdd gnd OAI21X1
X_3439_ _301_ _300_ _299_ _298_ _297_ vdd 
+ gnd
+ OAI22X1
X_3019_ raddr[3] _1591_ vdd gnd INVX1
X_4800_ _1862_ i_clk_fast_bF$buf3 clk_div[1] vdd gnd DFFPOSX1
XFILL_0_CLKBUF1_insert80 gnd vdd FILL
XFILL_0_CLKBUF1_insert82 gnd vdd FILL
XFILL_0_CLKBUF1_insert84 gnd vdd FILL
X_3192_ _1717__bF$buf4 _1715_ vdd gnd INVX8
X_4397_ _1516_ _1525_ _1518_ _1526_ vdd gnd NAND3X1
XFILL_0__4437_ gnd vdd FILL
XFILL_0__4017_ gnd vdd FILL
XFILL_1__3813_ gnd vdd FILL
X_2883_ _530_ clk_sys_bF$buf10 \u_rf_if.read_buf0\[8] vdd gnd DFFPOSX1
X_2463_ _1051_ _1054_ _853_ _1055_ vdd gnd AOI21X1
XFILL_0__4190_ gnd vdd FILL
X_3668_ \u_cpu.rd_en\ \u_cpu.alu.i_en\ _35_ vdd gnd NAND2X1
X_3248_ _39_ _1755_ vdd gnd INVX1
XFILL_0__3881_ gnd vdd FILL
XFILL_0__3461_ gnd vdd FILL
XFILL_0__3041_ gnd vdd FILL
X_2939_ _551_ clk_sys_bF$buf22 \u_rf_if.read_buf0\[25] vdd gnd DFFPOSX1
X_2519_ \u_mem_serial.active_ibus_bF$buf0\ _997_ _999_ vdd gnd NAND2X1
XFILL_0__4666_ gnd vdd FILL
XFILL_1__3202_ gnd vdd FILL
X_2692_ raddr[5] _254_ vdd gnd INVX1
X_2272_ _1297__bF$buf4 _1414_ vdd gnd INVX2
X_3897_ \u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20\[0] _673_ _674_ vdd gnd NAND2X1
X_3477_ \u_rf_if.read_buf0\[5] _446__bF$buf3 _445_ _335_ vdd gnd OAI21X1
X_3057_ _1618_ _1619_ rst_bF$buf0 _524_ vdd gnd AOI21X1
XFILL_0__2312_ gnd vdd FILL
XFILL_0__3690_ gnd vdd FILL
X_2748_ _90_ _208_ _53_ vdd gnd NOR2X1
X_2328_ _1316__bF$buf1 _1304__bF$buf0 \u_mem_serial.shift_rx\[1] _1369_ vdd gnd OAI21X1
XFILL_0__4475_ gnd vdd FILL
XFILL_0__4055_ gnd vdd FILL
X_3286_ \u_rf_if.issue_chunk\[1] _2069_ _1783_ vdd gnd NOR2X1
XFILL_0__2961_ gnd vdd FILL
XFILL_0_BUFX2_insert120 gnd vdd FILL
XFILL_0_BUFX2_insert122 gnd vdd FILL
XFILL_0_BUFX2_insert124 gnd vdd FILL
XFILL_0_BUFX2_insert126 gnd vdd FILL
XFILL_0_BUFX2_insert128 gnd vdd FILL
XFILL_0__3746_ gnd vdd FILL
XFILL_0__3326_ gnd vdd FILL
X_2977_ \u_rf_if.write_wait\[0] \u_rf_if.write_wait\[1] _44_ _622_ vdd gnd OAI21X1
X_2557_ \u_cpu.ctrl.o_ibus_adr\[11] _859_ vdd gnd INVX1
XFILL_1__2299_ gnd vdd FILL
X_4703_ _1997_ _2001_ _1993_ _1836_ vdd gnd OAI21X1
XFILL_1__3240_ gnd vdd FILL
X_3095_ _1717__bF$buf0 _1775_ \u_rf_if.read_buf0\[12] _1644_ vdd gnd OAI21X1
XFILL_0__2350_ gnd vdd FILL
X_2786_ ren_bF$buf3 raddr[4] _113_ vdd gnd NAND2X1
X_2366_ _1338_ _1339_ vdd gnd INVX1
XFILL_0__4093_ gnd vdd FILL
XFILL_0__2826_ gnd vdd FILL
X_4512_ _1486_ clk_sys_bF$buf11 \u_cpu.ctrl.o_ibus_adr\[17] vdd gnd DFFPOSX1
XFILL_0__3364_ gnd vdd FILL
XFILL_1__2740_ gnd vdd FILL
XFILL_0__4569_ gnd vdd FILL
XFILL_1__3525_ gnd vdd FILL
X_2595_ \u_mem_serial.active_ibus_bF$buf6\ \u_cpu.bufreg.data\[2] \u_mem_serial.bit_count_0_bF$buf2\ _821_ vdd gnd OAI21X1
X_2175_ gnd o_gpio[2] vdd gnd BUFX2
XFILL_0__2215_ gnd vdd FILL
X_4741_ \u_mem_serial.shift_rx\[2] mem_ibus_ack_bF$buf2 _1984__bF$buf3 _2023_ vdd gnd NAND3X1
X_4321_ mem_dbus_ack_bF$buf2 _1275_ _1279_ vdd gnd NOR2X1
XFILL_0__3593_ gnd vdd FILL
XFILL_0__4378_ gnd vdd FILL
X_3189_ _1717__bF$buf3 _2094_ \u_rf_if.read_buf0\[29] _1713_ vdd gnd OAI21X1
X_4550_ _1896_ rf_rreq_bF$buf4 _1898_ rf_read_reg0_to_if[1] vdd gnd OAI21X1
X_4130_ _888_ clk_sys_bF$buf38 \u_cpu.bufreg.data\[15] vdd gnd DFFPOSX1
XFILL_0__3649_ gnd vdd FILL
XFILL_0__3229_ gnd vdd FILL
X_3821_ \u_cpu.decode.opcode\[0] _386_ \u_cpu.decode.co_immdec_ctrl\[2] vdd gnd NOR2X1
X_3401_ \u_rf_if.issue_chunk\[0] _16_ vdd gnd INVX1
X_4606_ ibus_pending_rdt[26] _1936_ vdd gnd INVX1
XFILL_1__3563_ gnd vdd FILL
XFILL_1__4768_ gnd vdd FILL
XFILL_0__2253_ gnd vdd FILL
X_2689_ _253_ _256_ _257_ vdd gnd NAND2X1
X_2269_ \u_mem_serial.bit_count\[1] _1315__bF$buf0 _1310_ _1416_ vdd gnd OAI21X1
X_3630_ \u_cpu.alu.i_op_b\ _2117_ _2118_ vdd gnd NAND2X1
X_3210_ _1731_ _1730_ vdd gnd INVX1
XFILL_0__2729_ gnd vdd FILL
X_4835_ i_rst_n_bF$buf4 vdd _1831_ clk_sys_bF$buf36 ibus_pending_rdt[20] vdd 
+ gnd
+ DFFSR
X_4415_ \u_cpu.ctrl.o_ibus_adr\[27] _1539_ vdd gnd INVX1
XBUFX2_insert100 \u_mem_serial.bit_count\[0] \u_mem_serial.bit_count_0_bF$buf3\ vdd gnd BUFX2
XBUFX2_insert101 \u_mem_serial.bit_count\[0] \u_mem_serial.bit_count_0_bF$buf2\ vdd gnd BUFX2
XBUFX2_insert102 \u_mem_serial.bit_count\[0] \u_mem_serial.bit_count_0_bF$buf1\ vdd gnd BUFX2
XBUFX2_insert103 \u_mem_serial.bit_count\[0] \u_mem_serial.bit_count_0_bF$buf0\ vdd gnd BUFX2
XBUFX2_insert104 _18_ _18__bF$buf4 vdd gnd BUFX2
XFILL_1__4157_ gnd vdd FILL
XBUFX2_insert105 _18_ _18__bF$buf3 vdd gnd BUFX2
XBUFX2_insert106 _18_ _18__bF$buf2 vdd gnd BUFX2
XBUFX2_insert107 _18_ _18__bF$buf1 vdd gnd BUFX2
XBUFX2_insert108 _18_ _18__bF$buf0 vdd gnd BUFX2
XBUFX2_insert109 i_rst_n i_rst_n_bF$buf5 vdd gnd BUFX2
X_2901_ _572_ clk_sys_bF$buf12 \u_rf_if.read_buf1\[2] vdd gnd DFFPOSX1
XFILL_0__3267_ gnd vdd FILL
XFILL_1__2223_ gnd vdd FILL
XFILL_1__3848_ gnd vdd FILL
X_2498_ _1019_ _845_ _1020_ vdd gnd NAND2X1
XFILL_0__2538_ gnd vdd FILL
X_4644_ _1960_ rf_rreq_bF$buf5 _1961_ rf_read_reg1_to_if[3] vdd gnd OAI21X1
X_4224_ _1130_ _1133_ _1198_ _1201_ vdd gnd OAI21X1
XFILL_1__4386_ gnd vdd FILL
XFILL_0__2291_ gnd vdd FILL
X_2710_ _234_ _235_ _236_ vdd gnd NAND2X1
X_3915_ \u_cpu.immdec.gen_immdec_w_eq_1.imm11_7\[4] _688_ _690_ vdd gnd NAND2X1
XFILL_1__3237_ gnd vdd FILL
XFILL144450x118950 gnd vdd FILL
XFILL_0__2767_ gnd vdd FILL
X_4453_ \u_cpu.ctrl.o_ibus_adr\[14] _1553_ _1560_ vdd gnd NAND2X1
X_4033_ \u_cpu.bufreg.data\[5] _892__bF$buf1 _910_ vdd gnd NAND2X1
XFILL_1_CLKBUF1_insert46 gnd vdd FILL
XFILL_1__4195_ gnd vdd FILL
XFILL_1__2508_ gnd vdd FILL
X_3724_ \u_cpu.bufreg.i_init\ _144_ \u_cpu.ctrl.i_pc_en\ vdd gnd NOR2X1
X_3304_ _2154__bF$buf3 _10__bF$buf0 _1798_ _1797_ vdd gnd NAND3X1
XFILL_1__2261_ gnd vdd FILL
X_4509_ _1478_ clk_sys_bF$buf29 \u_cpu.ctrl.o_ibus_adr\[29] vdd gnd DFFPOSX1
XFILL_0__2576_ gnd vdd FILL
X_4682_ mem_ibus_ack_bF$buf1 \u_mem_serial.shift_rx\[21] _1984__bF$buf4 _1987_ vdd gnd NAND3X1
X_4262_ _1206_ _1233_ _1234_ _1110_ vdd gnd OAI21X1
XFILL_0__4302_ gnd vdd FILL
XFILL_1__2737_ gnd vdd FILL
X_3953_ _683_ _714_ _715_ _643_ vdd gnd OAI21X1
X_3533_ _439_ _438_ _437_ _436_ _435_ vdd 
+ gnd
+ OAI22X1
X_3113_ _1658_ _1659_ rst_bF$buf9 _542_ vdd gnd AOI21X1
X_4738_ ibus_pending_rdt[3] _2021_ vdd gnd INVX1
X_4318_ mem_dbus_ack_bF$buf6 \u_mem_serial.shift_rx\[13] _1172__bF$buf2 _1276_ _1277_ vdd 
+ gnd
+ AOI22X1
XFILL_1__3275_ gnd vdd FILL
X_4491_ _1654_ clk_sys_bF$buf7 \u_cpu.ctrl.pc_plus_offset_cy_r_w\ vdd gnd DFFPOSX1
X_4071_ \u_cpu.bufreg.c_r\ _897_ _936_ vdd gnd NAND2X1
X_2804_ _94_ _90_ _95_ vdd gnd NAND2X1
XFILL_0__4531_ gnd vdd FILL
XFILL_1__2546_ gnd vdd FILL
X_3762_ _135_ clk_sys_bF$buf45 \u_cpu.bufreg2.i_bytecnt\[1] vdd gnd DFFPOSX1
X_3342_ _2101_ rdata[1] _2062_ vdd gnd AND2X2
X_4547_ rf_read_reg0[1] _1896_ vdd gnd INVX1
X_4127_ _890_ clk_sys_bF$buf38 \u_cpu.bufreg.data\[13] vdd gnd DFFPOSX1
X_2613_ _802_ _797_ _803_ vdd gnd AND2X2
X_3818_ \u_cpu.decode.opcode\[0] \u_cpu.bufreg.i_imm_en\ _401_ \u_cpu.decode.co_immdec_en\[3] vdd gnd NAND3X1
XFILL_1__2775_ gnd vdd FILL
XBUFX2_insert10 _10_ _10__bF$buf2 vdd gnd BUFX2
XBUFX2_insert11 _10_ _10__bF$buf1 vdd gnd BUFX2
XBUFX2_insert12 _10_ _10__bF$buf0 vdd gnd BUFX2
XBUFX2_insert13 _1530_ _1530__bF$buf4 vdd gnd BUFX2
XBUFX2_insert14 _1530_ _1530__bF$buf3 vdd gnd BUFX2
XBUFX2_insert15 _1530_ _1530__bF$buf2 vdd gnd BUFX2
XBUFX2_insert16 _1530_ _1530__bF$buf1 vdd gnd BUFX2
XBUFX2_insert17 _1530_ _1530__bF$buf0 vdd gnd BUFX2
XBUFX2_insert18 \u_rf_if.stream_cnt\[0] \u_rf_if.stream_cnt_0_bF$buf5\ vdd gnd BUFX2
XBUFX2_insert19 \u_rf_if.stream_cnt\[0] \u_rf_if.stream_cnt_0_bF$buf4\ vdd gnd BUFX2
X_3991_ _629_ clk_sys_bF$buf23 \u_cpu.immdec.gen_immdec_w_eq_1.imm30_25\[5] vdd gnd DFFPOSX1
X_3571_ \u_cpu.immdec.gen_immdec_w_eq_1.imm11_7\[3] _484__bF$buf0 _466_ vdd gnd NAND2X1
X_3151_ \u_rf_if.issue_idx\[5] \u_rf_if.prefetch_active\ _1683_ vdd gnd NAND2X1
X_4776_ _1898_ _2043_ _2044_ _1866_ vdd gnd NAND3X1
X_4356_ _1126_ clk_sys_bF$buf25 \u_cpu.bufreg2.dlo\[11] vdd gnd DFFPOSX1
XFILL_0__3611_ gnd vdd FILL
X_2842_ _603_ clk_sys_bF$buf13 \u_rf_if.read_buf1\[30] vdd gnd DFFPOSX1
X_2422_ _1094_ _795_ _1048_ _1095_ _1096_ vdd 
+ gnd
+ AOI22X1
X_3627_ \u_cpu.alu.i_op_b\ _2115_ vdd gnd INVX1
X_3207_ \u_rf_if.o_waddr\[3] _1728_ _1727_ vdd gnd NAND2X1
XFILL_1__2584_ gnd vdd FILL
XFILL_1__3789_ gnd vdd FILL
XFILL_1__4730_ gnd vdd FILL
X_3380_ _1_ _5_ _2151_ vdd gnd NAND2X1
XFILL_0__2479_ gnd vdd FILL
X_4585_ ibus_pending_rdt[17] _1922_ vdd gnd INVX1
X_4165_ \u_cpu.bufreg.i_imm\ _1151_ vdd gnd INVX1
XFILL_0__4205_ gnd vdd FILL
X_2651_ _215__bF$buf2 _290_ rst_bF$buf4 _68_ vdd gnd AOI21X1
X_2231_ _810_ _1414_ _1441_ _1442_ vdd gnd OAI21X1
X_3856_ rf_rreq_bF$buf1 \u_cpu.decode.i_wb_rdt\[30] _417_ vdd gnd NAND2X1
X_3436_ \u_rf_if.read_buf0\[21] _446__bF$buf3 _445_ _51_ vdd gnd OAI21X1
X_3016_ raddr[2] _1589_ vdd gnd INVX1
XFILL_0_CLKBUF1_insert50 gnd vdd FILL
XFILL_0_CLKBUF1_insert52 gnd vdd FILL
XFILL_0_CLKBUF1_insert54 gnd vdd FILL
XFILL_0_CLKBUF1_insert56 gnd vdd FILL
XFILL_0_CLKBUF1_insert58 gnd vdd FILL
X_4394_ gnd _1521_ _1522_ _1523_ vdd gnd OAI21X1
X_2707_ _238_ \u_rf_serial.last_req_key\[10] _239_ vdd gnd OR2X2
X_2880_ _584_ clk_sys_bF$buf12 \u_rf_if.read_buf1\[11] vdd gnd DFFPOSX1
X_2460_ _966_ _1056_ _1057_ _1058_ vdd gnd NAND3X1
X_3665_ _2111_ clk_sys_bF$buf34 \u_cpu.alu.cmp_r\ vdd gnd DFFPOSX1
X_3245_ \u_rf_if.stream_active\ _43_ _1753_ _1752_ vdd gnd OAI21X1
XFILL_0__2500_ gnd vdd FILL
XFILL_0__3705_ gnd vdd FILL
X_2936_ _518_ clk_sys_bF$buf26 \u_rf_if.issue_chunk\[3] vdd gnd DFFPOSX1
X_2516_ \u_cpu.ctrl.o_ibus_adr\[25] \u_cpu.bufreg.data\[25] \u_mem_serial.active_ibus_bF$buf1\ _1002_ vdd gnd MUX2X1
XFILL_0__4243_ gnd vdd FILL
X_3894_ _671_ _668_ _669_ _628_ vdd gnd MUX2X1
X_3474_ _336_ _335_ _334_ _333_ _332_ vdd 
+ gnd
+ OAI22X1
X_3054_ _1617_ _1616_ rst_bF$buf8 _523_ vdd gnd AOI21X1
X_4679_ _1926_ _1983__bF$buf2 _1985_ _1828_ vdd gnd OAI21X1
X_4259_ _1154_ _1231_ _1230_ _1232_ vdd gnd NAND3X1
XFILL_0__3934_ gnd vdd FILL
XFILL_0__3514_ gnd vdd FILL
XFILL144750x32550 gnd vdd FILL
XFILL_0__4719_ gnd vdd FILL
X_2745_ _105_ _210_ _211_ vdd gnd NAND2X1
X_2325_ _1315__bF$buf3 _1371_ _1303__bF$buf1 _1372_ vdd gnd NAND3X1
X_3283_ _2152__bF$buf1 _0_ _1781_ vdd gnd NAND2X1
X_4488_ _1472_ clk_sys_bF$buf3 \u_cpu.ctrl.pc\ vdd gnd DFFPOSX1
X_4068_ \u_cpu.bufreg.i_clr_lsb\ \u_cpu.alu.i_cnt0\ _933_ vdd gnd NAND2X1
XFILL_0__4108_ gnd vdd FILL
X_2974_ \u_rf_if.write_wait\[0] _44_ _735_ _497_ vdd gnd AOI21X1
X_2554_ _857_ _962_ _808_ _963_ vdd gnd AOI21X1
XFILL_0__4281_ gnd vdd FILL
X_3759_ _130_ clk_sys_bF$buf34 \u_cpu.ctrl.i_jump\ vdd gnd DFFPOSX1
X_3339_ _2154__bF$buf0 _2062__bF$buf3 _2060_ _2059_ vdd gnd NAND3X1
X_4700_ \u_cpu.decode.i_wb_rdt\[4] \u_cpu.i_ibus_rdt\[1] \u_cpu.i_ibus_rdt\[0] _1999_ vdd gnd NAND3X1
X_3092_ _1717__bF$buf1 _1770_ \u_rf_if.read_buf0\[11] _1642_ vdd gnd OAI21X1
X_4297_ mem_dbus_ack_bF$buf1 \u_mem_serial.shift_rx\[17] _1172__bF$buf3 _1261_ _1262_ vdd 
+ gnd
+ AOI22X1
XFILL_0__3972_ gnd vdd FILL
XFILL_0__3552_ gnd vdd FILL
XFILL_0__3132_ gnd vdd FILL
XFILL_0__4757_ gnd vdd FILL
XFILL_1__3713_ gnd vdd FILL
X_2783_ _79_ _111_ _115_ _116_ vdd gnd OAI21X1
X_2363_ _1316__bF$buf3 _1304__bF$buf3 \u_mem_serial.shift_rx\[8] _1341_ vdd gnd OAI21X1
X_3988_ _632_ clk_sys_bF$buf3 rreg0[3] vdd gnd DFFPOSX1
X_3568_ \u_cpu.immdec.gen_immdec_w_eq_1.imm11_7\[2] _484__bF$buf0 _464_ vdd gnd NAND2X1
X_3148_ _2062__bF$buf0 _1715__bF$buf3 _2150_ _1681_ vdd gnd NAND3X1
XFILL_0__2403_ gnd vdd FILL
X_2839_ _541_ clk_sys_bF$buf2 \u_rf_if.read_buf0\[17] vdd gnd DFFPOSX1
X_2419_ _1292_ _1007_ _1293_ vdd gnd NOR2X1
XFILL_0__4146_ gnd vdd FILL
XFILL_1__3522_ gnd vdd FILL
X_2592_ _822_ _823_ _820_ _821_ _824_ vdd 
+ gnd
+ OAI22X1
X_2172_ gnd o_gpio[5] vdd gnd BUFX2
XFILL_1__4727_ gnd vdd FILL
X_3797_ _391_ \u_cpu.bufreg.i_imm_en\ \u_cpu.decode.co_immdec_en\[0] vdd gnd AND2X2
X_3377_ \u_rf_if.rreg0_latched\[0] \u_rf_if.rreg0_latched\[1] _2110_ vdd gnd NOR2X1
XFILL_0__3417_ gnd vdd FILL
XFILL_0__3590_ gnd vdd FILL
XFILL_0__3170_ gnd vdd FILL
X_2648_ _291_ _215__bF$buf0 _292_ _69_ vdd gnd AOI21X1
X_2228_ _1377_ _1444_ _1445_ vdd gnd OR2X2
XFILL_0__4795_ gnd vdd FILL
XFILL_0__4375_ gnd vdd FILL
X_3186_ _484__bF$buf1 \u_rf_if.o_wen\ _1711_ vdd gnd NAND2X1
XFILL_0__2441_ gnd vdd FILL
X_2877_ _496_ clk_sys_bF$buf44 \u_rf_if.o_waddr\[2] vdd gnd DFFPOSX1
X_2457_ _805_ _1059_ _1060_ _1061_ vdd gnd NAND3X1
XFILL_0__4184_ gnd vdd FILL
X_4603_ ibus_pending_rdt[27] _1934_ vdd gnd INVX1
XFILL_1__3560_ gnd vdd FILL
XFILL_1__4765_ gnd vdd FILL
XFILL_0__2670_ gnd vdd FILL
XFILL_0__3875_ gnd vdd FILL
XFILL_0__3455_ gnd vdd FILL
XFILL_0__3035_ gnd vdd FILL
X_2686_ \u_rf_serial.last_req_key\[1] _260_ vdd gnd INVX1
X_2266_ _1315__bF$buf0 \u_mem_serial.bit_count_0_bF$buf1\ _1417_ _773_ vdd gnd AOI21X1
XFILL_0__2306_ gnd vdd FILL
X_4832_ i_rst_n_bF$buf0 vdd _1834_ clk_sys_bF$buf5 ibus_pending_rdt[18] vdd 
+ gnd
+ DFFSR
X_4412_ \u_cpu.ctrl.pc\ _1530__bF$buf3 _1537_ vdd gnd NAND2X1
XFILL_0__3684_ gnd vdd FILL
XFILL_0__4049_ gnd vdd FILL
XFILL_1__3005_ gnd vdd FILL
X_2495_ \u_cpu.ctrl.o_ibus_adr\[22] _1023_ vdd gnd INVX1
XFILL_0__2955_ gnd vdd FILL
X_4641_ _1958_ rf_rreq_bF$buf5 _1959_ rf_read_reg0_to_if[3] vdd gnd OAI21X1
X_4221_ \u_cpu.bufreg2.dlo\[0] _1198_ _1199_ vdd gnd NAND2X1
XFILL_0__3493_ gnd vdd FILL
XFILL_0__3073_ gnd vdd FILL
X_3912_ _685_ _686_ _687_ _630_ vdd gnd OAI21X1
XFILL_0__4698_ gnd vdd FILL
XFILL_1__4439_ gnd vdd FILL
XFILL_1__4019_ gnd vdd FILL
X_3089_ _1717__bF$buf1 _1770_ \u_rf_if.read_buf0\[10] _1640_ vdd gnd OAI21X1
XFILL_0__2344_ gnd vdd FILL
X_4450_ \u_cpu.ctrl.o_ibus_adr\[15] _1553_ _1558_ vdd gnd NAND2X1
X_4030_ \u_cpu.bufreg.data\[6] _908_ vdd gnd INVX1
X_3721_ _172_ \u_cpu.bufreg.i_cnt1\ vdd gnd INVX1
X_3301_ _1796_ _1795_ vdd gnd INVX1
XFILL_0__4087_ gnd vdd FILL
X_4506_ _1496_ clk_sys_bF$buf42 \u_cpu.ctrl.o_ibus_adr\[7] vdd gnd DFFPOSX1
XFILL_1__3883_ gnd vdd FILL
XFILL_1__3043_ gnd vdd FILL
XFILL_0__2993_ gnd vdd FILL
XFILL_0__3358_ gnd vdd FILL
XFILL_1__2314_ gnd vdd FILL
X_2589_ _806_ _825_ _807_ _826_ _827_ vdd 
+ gnd
+ OAI22X1
X_2169_ vdd o_uart_tx vdd gnd BUFX2
X_3950_ _683_ _712_ _713_ _642_ vdd gnd OAI21X1
X_3530_ _433_ \u_rf_if.stream_cnt_0_bF$buf5\ \u_rf_if.stream_cnt_1_bF$buf2\ _432_ vdd gnd AOI21X1
X_3110_ _1655_ _1657_ rst_bF$buf9 _541_ vdd gnd AOI21X1
XFILL_0__2209_ gnd vdd FILL
X_4735_ ibus_pending_rdt[4] _2019_ vdd gnd INVX1
X_4315_ _1272_ _1164__bF$buf1 _1274_ _1123_ vdd gnd OAI21X1
XFILL_1__4477_ gnd vdd FILL
XFILL_1__4057_ gnd vdd FILL
XFILL_0__2382_ gnd vdd FILL
XFILL144150x90150 gnd vdd FILL
X_2801_ \u_rf_serial.tx_state\[0] \u_rf_serial.tx_state\[1] _98_ vdd gnd AND2X2
XFILL_1__2963_ gnd vdd FILL
XFILL_1__3328_ gnd vdd FILL
X_2398_ _1311_ _1309_ _1307_ _1312_ vdd gnd OAI21X1
X_4544_ _1877__bF$buf4 _1893_ _1894_ vdd gnd NAND2X1
X_4124_ _861_ clk_sys_bF$buf11 \u_cpu.bufreg.data\[10] vdd gnd DFFPOSX1
XFILL_1__3081_ gnd vdd FILL
XFILL144750x118950 gnd vdd FILL
X_2610_ \u_mem_serial.bit_count_0_bF$buf3\ _799_ _806_ vdd gnd NAND2X1
XFILL_0__3396_ gnd vdd FILL
X_3815_ _400_ _402_ \u_cpu.ctrl.i_pc_rel\ vdd gnd NAND2X1
XFILL_1__2352_ gnd vdd FILL
XFILL_0__2247_ gnd vdd FILL
X_4773_ _1971_ _2041_ _2042_ _1865_ vdd gnd NAND3X1
X_4353_ _1129_ clk_sys_bF$buf25 \u_cpu.bufreg2.dlo\[8] vdd gnd DFFPOSX1
XFILL_1__4095_ gnd vdd FILL
XFILL_1__2828_ gnd vdd FILL
X_3624_ \u_cpu.alu.add_cy_r\ rdata0[0] _2112_ vdd gnd NAND2X1
X_3204_ _1726_ \u_rf_if.o_waddr\[3] _1724_ vdd gnd AND2X2
X_4829_ i_rst_n_bF$buf4 vdd _1837_ clk_sys_bF$buf14 ibus_pending_rdt[17] vdd 
+ gnd
+ DFFSR
X_4409_ _1534_ _1531_ _1529_ _1535_ _1470_ vdd 
+ gnd
+ OAI22X1
XFILL_1__3366_ gnd vdd FILL
X_4582_ rf_read_reg1[1] _1920_ vdd gnd INVX1
X_4162_ _1146_ _1148_ \u_cpu.state.i_ctrl_misalign\ _1149_ vdd gnd OAI21X1
XFILL_0__4622_ gnd vdd FILL
X_3853_ rf_rreq_bF$buf7 _396_ _415_ _367_ vdd gnd OAI21X1
X_3433_ _295_ _51_ _50_ _49_ _48_ vdd 
+ gnd
+ OAI22X1
X_3013_ \u_rf_if.issue_idx\[5] _1698_ raddr[1] _1587_ vdd gnd OAI21X1
XFILL_1__2390_ gnd vdd FILL
XFILL144450x10950 gnd vdd FILL
X_4638_ ibus_pending_ack_bF$buf3 _1956_ _1957_ \u_cpu.i_ibus_rdt\[0] vdd gnd OAI21X1
X_4218_ _1167_ _1196_ vdd gnd INVX1
XFILL_0__2285_ gnd vdd FILL
X_4391_ _1516_ _1520_ vdd gnd INVX1
X_2704_ _237_ ren_bF$buf0 _241_ _242_ vdd gnd AOI21X1
XFILL_0__4011_ gnd vdd FILL
X_3909_ rf_rreq_bF$buf0 \u_cpu.decode.co_immdec_en\[2] _669_ _685_ vdd gnd OAI21X1
X_3662_ _2146_ _2136_ _2147_ _2_ vdd gnd OAI21X1
X_3242_ _2154__bF$buf3 _1757_ _2099_ _1750_ vdd gnd NAND3X1
X_4447_ \u_cpu.ctrl.o_ibus_adr\[16] _1553_ _1556_ vdd gnd NAND2X1
X_4027_ \u_cpu.bufreg.i_en_bF$buf3\ _905_ _906_ _863_ vdd gnd OAI21X1
XFILL_0__3702_ gnd vdd FILL
X_2933_ _493_ clk_sys_bF$buf33 \u_rf_if.o_waddr\[0] vdd gnd DFFPOSX1
X_2513_ _1004_ _1001_ _966_ _1005_ vdd gnd OAI21X1
XFILL_0__3299_ gnd vdd FILL
XFILL_0__4660_ gnd vdd FILL
X_3718_ \u_cpu.state.cnt_r\[2] \u_cpu.cnt0to3\ _171_ vdd gnd NAND2X1
XFILL_1__4401_ gnd vdd FILL
X_3891_ _661_ _662_ _669_ vdd gnd NAND2X1
X_3471_ \u_rf_if.read_buf0\[8] _329_ vdd gnd INVX1
X_3051_ _1615_ _1614_ rst_bF$buf8 _522_ vdd gnd AOI21X1
X_4676_ _1893_ _1897_ _1982_ _1983_ vdd gnd OAI21X1
X_4256_ _1213_ _1138_ _1229_ vdd gnd NOR2X1
X_2742_ _78_ _98_ _205_ _213_ vdd gnd OAI21X1
X_2322_ i_mem_miso _1297__bF$buf3 _1374_ vdd gnd NAND2X1
X_3947_ _683_ _710_ _711_ _641_ vdd gnd OAI21X1
X_3527_ \u_rf_if.read_buf1\[2] \u_rf_if.stream_cnt_0_bF$buf5\ \u_rf_if.stream_cnt_1_bF$buf2\ _429_ vdd gnd OAI21X1
X_3107_ _1652_ _1653_ rst_bF$buf9 _540_ vdd gnd AOI21X1
X_3280_ _2154__bF$buf2 _2062__bF$buf2 _1779_ _1778_ vdd gnd NAND3X1
XFILL_0__2799_ gnd vdd FILL
XFILL_0__2379_ gnd vdd FILL
X_4485_ \u_cpu.ctrl.i_jump\ _1527_ _1532_ _1582_ vdd gnd OAI21X1
X_4065_ \u_cpu.bufreg.data\[24] _931_ vdd gnd INVX1
XFILL_0__3740_ gnd vdd FILL
XFILL_0__3320_ gnd vdd FILL
XFILL_0__4525_ gnd vdd FILL
X_2971_ \u_rf_if.o_waddr\[2] _619_ _1731_ _618_ vdd gnd OAI21X1
X_2551_ _965_ _964_ _966_ vdd gnd NAND2X1
X_3756_ _128_ clk_sys_bF$buf45 \u_cpu.state.cnt_r\[3] vdd gnd DFFPOSX1
X_3336_ _2154__bF$buf4 _2099_ _2060_ _1824_ vdd gnd NAND3X1
X_4294_ _1257_ _1164__bF$buf3 _1259_ _1117_ vdd gnd OAI21X1
X_2607_ _808_ _809_ vdd gnd INVX1
XFILL_0__4334_ gnd vdd FILL
X_2780_ ren_bF$buf1 _117_ _118_ _119_ vdd gnd OAI21X1
X_2360_ _1315__bF$buf2 _1343_ _1303__bF$buf0 _1344_ vdd gnd NAND3X1
X_3985_ _635_ clk_sys_bF$buf30 \u_cpu.csr_imm\ vdd gnd DFFPOSX1
X_3565_ \u_cpu.immdec.gen_immdec_w_eq_1.imm11_7\[1] _484__bF$buf3 _462_ vdd gnd NAND2X1
X_3145_ _2099_ _1715__bF$buf3 _2060_ _1679_ vdd gnd NAND3X1
XFILL_0__2820_ gnd vdd FILL
X_2836_ _542_ clk_sys_bF$buf2 \u_rf_if.read_buf0\[18] vdd gnd DFFPOSX1
X_2416_ _1087_ _1295_ _794_ _2156_ vdd gnd AOI21X1
XFILL_0__4563_ gnd vdd FILL
X_3794_ \u_cpu.decode.opcode\[2] \u_cpu.bufreg.i_imm_en\ vdd gnd INVX2
X_3374_ \u_rf_if.issue_sel_bF$buf1\ _2108_ _2107_ vdd gnd NAND2X1
X_4579_ ibus_pending_rdt[21] _1918_ vdd gnd INVX1
X_4159_ \u_cpu.bufreg.i_shamt\[0] \u_cpu.bufreg.data\[0] _1146_ vdd gnd AND2X2
XFILL_0__3834_ gnd vdd FILL
X_2645_ _100_ _215__bF$buf0 _202_ _294_ vdd gnd OAI21X1
X_2225_ \u_mem_serial.shift_rx\[20] _1425_ _1447_ vdd gnd NAND2X1
XFILL_1__4533_ gnd vdd FILL
X_3183_ \u_rf_if.rcnt\[2] rf_wdata0_next_to_if _1709_ _1708_ vdd gnd NAND3X1
X_4388_ \u_cpu.bufreg.i_cnt1\ \u_cpu.cnt2\ gnd _1518_ vdd gnd MUX2X1
XFILL_0__3223_ gnd vdd FILL
XFILL_0__4428_ gnd vdd FILL
XFILL_0__4008_ gnd vdd FILL
X_2874_ _587_ clk_sys_bF$buf21 \u_rf_if.read_buf1\[14] vdd gnd DFFPOSX1
X_2454_ \u_cpu.bufreg2.dlo\[3] _795_ _840_ \u_cpu.bufreg2.dlo\[0] _1064_ vdd 
+ gnd
+ AOI22X1
X_3659_ _2145_ \u_cpu.alu.o_cmp\ vdd gnd INVX1
X_3239_ rst_bF$buf5 _457_ _576_ vdd gnd NOR2X1
X_4600_ ibus_pending_rdt[28] _1932_ vdd gnd INVX1
X_4197_ mem_dbus_ack_bF$buf3 _1176_ _1180_ vdd gnd NOR2X1
XFILL_0__4237_ gnd vdd FILL
XFILL_1__3613_ gnd vdd FILL
X_2683_ ren_bF$buf2 _262_ _263_ vdd gnd NAND2X1
X_2263_ \u_cpu.o_dbus_cyc\ _1420_ vdd gnd INVX1
X_3888_ _661_ \u_cpu.decode.i_wb_rdt\[19] _664_ _667_ vdd gnd OAI21X1
X_3468_ \u_rf_if.read_buf0\[10] _326_ vdd gnd INVX1
X_3048_ rst_bF$buf7 _1612_ _521_ vdd gnd NOR2X1
XFILL_0__2723_ gnd vdd FILL
XFILL_0__2303_ gnd vdd FILL
XFILL_0__3928_ gnd vdd FILL
XFILL_0__3508_ gnd vdd FILL
XFILL_1__4571_ gnd vdd FILL
XFILL_0__3681_ gnd vdd FILL
XFILL_0__3261_ gnd vdd FILL
X_2739_ \u_rf_serial.last_req_key\[7] _214_ vdd gnd INVX1
X_2319_ _1373_ _1376_ rst_bF$buf3 _761_ vdd gnd AOI21X1
XFILL_0__4466_ gnd vdd FILL
XFILL_0__4046_ gnd vdd FILL
XFILL_1__3842_ gnd vdd FILL
X_2492_ \u_mem_serial.bit_count_0_bF$buf3\ _1025_ _1024_ _1026_ vdd gnd NAND3X1
XFILL_1__4207_ gnd vdd FILL
X_3697_ \u_cpu.branch_op\ _157_ vdd gnd INVX1
X_3277_ _2154__bF$buf2 _1779_ _2099_ _1776_ vdd gnd NAND3X1
XFILL_0__2952_ gnd vdd FILL
XFILL_0__2532_ gnd vdd FILL
X_2968_ _480_ _620_ _617_ _495_ vdd gnd AOI21X1
X_2548_ \u_mem_serial.active_ibus_bF$buf5\ _967_ _968_ _969_ vdd gnd OAI21X1
XFILL_0__4275_ gnd vdd FILL
XFILL_1__3651_ gnd vdd FILL
X_3086_ _1717__bF$buf2 _1764_ \u_rf_if.read_buf0\[9] _1638_ vdd gnd OAI21X1
XFILL_0__2761_ gnd vdd FILL
XFILL_0__2341_ gnd vdd FILL
XFILL_0__3966_ gnd vdd FILL
XFILL_0__3546_ gnd vdd FILL
XFILL_0__3126_ gnd vdd FILL
X_2777_ _91_ _121_ _122_ vdd gnd NAND2X1
X_2357_ \u_mem_serial.shift_rx\[6] _1297__bF$buf0 _1346_ vdd gnd NAND2X1
XFILL_0__4084_ gnd vdd FILL
X_4503_ _1491_ clk_sys_bF$buf42 \u_cpu.ctrl.o_ibus_adr\[12] vdd gnd DFFPOSX1
XFILL_1__4245_ gnd vdd FILL
XFILL_0__2990_ gnd vdd FILL
XFILL_0__2570_ gnd vdd FILL
XFILL_1__3936_ gnd vdd FILL
X_2586_ \u_mem_serial.bit_count\[4] _830_ vdd gnd INVX1
X_2166_ _2158_ o_mem_sync vdd gnd BUFX2
XFILL_0__2206_ gnd vdd FILL
X_4732_ ibus_pending_rdt[5] _2017_ vdd gnd INVX1
X_4312_ \u_cpu.bufreg2.dlo\[14] _1272_ vdd gnd INVX1
XFILL_0__3584_ gnd vdd FILL
XFILL_0__3164_ gnd vdd FILL
XFILL_0__4789_ gnd vdd FILL
X_2395_ _1314_ _1313_ _1315_ vdd gnd NOR2X1
X_4541_ \u_cpu.o_wen0\ rf_wreq _1891_ vdd gnd AND2X2
X_4121_ _864_ clk_sys_bF$buf38 \u_cpu.bufreg.data\[7] vdd gnd DFFPOSX1
XFILL_1__4283_ gnd vdd FILL
X_3812_ \u_cpu.decode.opcode\[0] _396_ _399_ _400_ vdd gnd OAI21X1
XFILL_0__4178_ gnd vdd FILL
XFILL_1__3974_ gnd vdd FILL
XFILL_1__3134_ gnd vdd FILL
XFILL_0__2244_ gnd vdd FILL
X_4770_ _1959_ _2039_ _2040_ _1864_ vdd gnd NAND3X1
X_4350_ _1100_ clk_sys_bF$buf28 \u_cpu.bufreg2.dlo\[5] vdd gnd DFFPOSX1
XFILL_0__3449_ gnd vdd FILL
XFILL_1__2405_ gnd vdd FILL
X_3621_ _2076_ _2081_ _2086_ \u_cpu.mem_if.o_rd\ vdd gnd OAI21X1
X_3201_ \u_rf_if.i_rreq\ _1722_ vdd gnd INVX4
X_4826_ i_rst_n_bF$buf4 vdd _1840_ clk_sys_bF$buf14 ibus_pending_rdt[15] vdd 
+ gnd
+ DFFSR
X_4406_ _1529_ _1531_ _1533_ _1469_ vdd gnd OAI21X1
XFILL_1__3419_ gnd vdd FILL
X_2489_ \u_mem_serial.active_ibus_bF$buf3\ _1028_ _1029_ vdd gnd NAND2X1
X_3850_ rf_rreq_bF$buf3 \u_cpu.decode.i_wb_rdt\[4] _414_ vdd gnd NAND2X1
X_3430_ _46_ _302_ \u_rf_if.stream_cnt\[4] _45_ vdd gnd OAI21X1
X_3010_ \u_rf_if.issue_chunk\[0] _1696_ _32__bF$buf1 _1585_ vdd gnd OAI21X1
XFILL_1_BUFX2_insert12 gnd vdd FILL
XFILL_1_BUFX2_insert16 gnd vdd FILL
XFILL_0__2529_ gnd vdd FILL
X_4635_ ibus_pending_ack_bF$buf3 _1954_ _1955_ \u_cpu.i_ibus_rdt\[1] vdd gnd OAI21X1
X_4215_ _1191_ _1164__bF$buf0 _1193_ _1104_ vdd gnd OAI21X1
XFILL_1__3172_ gnd vdd FILL
XFILL_0__2282_ gnd vdd FILL
X_2701_ _243_ _244_ _99_ _245_ vdd gnd NAND3X1
XFILL_0__3487_ gnd vdd FILL
X_3906_ _681_ _683_ vdd gnd INVX2
XFILL_1__2443_ gnd vdd FILL
X_2298_ _1315__bF$buf1 _1394_ _1303__bF$buf2 _1395_ vdd gnd NAND3X1
X_4444_ \u_cpu.ctrl.o_ibus_adr\[17] _1553_ _1554_ vdd gnd NAND2X1
X_4024_ _892__bF$buf2 _902_ _904_ _862_ vdd gnd OAI21X1
X_2930_ _556_ clk_sys_bF$buf18 \u_rf_if.read_buf0\[28] vdd gnd DFFPOSX1
X_2510_ \u_cpu.ctrl.o_ibus_adr\[18] _810_ _1008_ vdd gnd NOR2X1
X_3715_ \u_cpu.bufreg2.i_bytecnt\[0] _166_ \u_cpu.cnt0to3\ vdd gnd NOR2X1
XFILL_1__2672_ gnd vdd FILL
XFILL_1__3457_ gnd vdd FILL
XFILL_0__2567_ gnd vdd FILL
X_4673_ rf_rreq_bF$buf2 rreg1[4] _1895__bF$buf1 _1981_ vdd gnd NAND3X1
X_4253_ \u_cpu.bufreg2.dhi\[3] _1210_ _1198_ _1227_ vdd gnd NAND3X1
XFILL_0__4713_ gnd vdd FILL
X_3944_ _683_ _708_ _709_ _640_ vdd gnd OAI21X1
X_3524_ \u_rf_if.stream_cnt\[3] _426_ vdd gnd INVX1
X_3104_ _1651_ _1650_ rst_bF$buf6 _539_ vdd gnd AOI21X1
XFILL_1__2481_ gnd vdd FILL
X_4729_ ibus_pending_rdt[6] _2015_ vdd gnd INVX1
X_4309_ \u_cpu.alu.i_op_b\ \u_mem_serial.shift_rx\[31] _1154_ _1270_ vdd gnd MUX2X1
XFILL_1__3686_ gnd vdd FILL
XFILL144750x104550 gnd vdd FILL
X_4482_ \u_cpu.ctrl.o_ibus_adr\[31] _1530__bF$buf3 _1579_ vdd gnd NAND2X1
X_4062_ \u_cpu.bufreg.i_en_bF$buf1\ _928_ _929_ _875_ vdd gnd OAI21X1
XFILL_0__4522_ gnd vdd FILL
X_3753_ _161_ \u_cpu.state.cnt_r\[1] _137_ vdd gnd AND2X2
X_3333_ _4_ _1822_ _1821_ vdd gnd NAND2X1
X_4538_ \u_cpu.immdec.gen_immdec_w_eq_1.imm11_7\[1] \u_cpu.immdec.gen_immdec_w_eq_1.imm11_7\[0] _1888_ vdd gnd NOR2X1
X_4118_ _867_ clk_sys_bF$buf8 \u_cpu.bufreg.data\[4] vdd gnd DFFPOSX1
XFILL_1__3495_ gnd vdd FILL
X_4291_ \u_cpu.bufreg2.dlo\[18] _1257_ vdd gnd INVX1
X_2604_ \u_mem_serial.active_ibus_bF$buf6\ \u_cpu.bufreg.data\[6] \u_mem_serial.bit_count_0_bF$buf2\ _812_ vdd gnd OAI21X1
XFILL_0__4751_ gnd vdd FILL
X_3809_ \u_cpu.decode.co_mem_signed\ _375_ _398_ \u_cpu.decode.co_immdec_en\[1] vdd gnd OAI21X1
X_3982_ _638_ clk_sys_bF$buf31 \u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20\[1] vdd gnd DFFPOSX1
X_3562_ \u_cpu.immdec.gen_immdec_w_eq_1.imm11_7\[0] _484__bF$buf3 _460_ vdd gnd NAND2X1
X_3142_ _10__bF$buf2 _1715__bF$buf4 _1816_ _1677_ vdd gnd NAND3X1
X_4767_ clk_div[0] _1863_ vdd gnd INVX1
X_4347_ _1103_ clk_sys_bF$buf28 \u_cpu.bufreg2.dlo\[2] vdd gnd DFFPOSX1
XFILL144450x86550 gnd vdd FILL
X_2833_ _499_ clk_sys_bF$buf24 \u_rf_if.write_wait\[2] vdd gnd DFFPOSX1
X_2413_ \u_mem_serial.state\[1] _1296_ _1297_ vdd gnd NOR2X1
XFILL_0__3199_ gnd vdd FILL
XFILL143850x136950 gnd vdd FILL
X_3618_ \u_cpu.bne_or_bge\ _2083_ _2077_ _2084_ vdd gnd OAI21X1
X_3791_ _384_ _385_ _388_ \u_cpu.alu.i_sub\ vdd gnd OAI21X1
X_3371_ \u_rf_if.rreg1_latched\[3] \u_rf_if.rreg1_latched\[4] _2104_ vdd gnd NOR2X1
X_4576_ rf_read_reg1[0] _1916_ vdd gnd INVX1
X_4156_ _1137_ _1142_ _1143_ _1144_ vdd gnd NAND3X1
XFILL_0__3411_ gnd vdd FILL
XFILL_0__4616_ gnd vdd FILL
X_2642_ _70_ i_clk_fast_bF$buf0 \u_rf_serial.last_req_key\[9] vdd gnd DFFPOSX1
X_2222_ \u_mem_serial.shift_rx\[19] _1425_ _1449_ vdd gnd NAND2X1
X_3847_ _754_ i_clk_fast_bF$buf7 \u_mem_serial.shift_rx\[7] vdd gnd DFFPOSX1
X_3427_ \u_rf_if.ready_pulse\ _43_ vdd gnd INVX1
X_3007_ _1697_ _1817_ _1583_ vdd gnd NAND2X1
X_3180_ \u_rf_if.write_wait\[4] _1706_ vdd gnd INVX1
XFILL_0__2699_ gnd vdd FILL
X_4385_ _1515_ _1501_ _1511_ _1654_ vdd gnd AOI21X1
XFILL_0__3640_ gnd vdd FILL
X_2871_ _533_ clk_sys_bF$buf12 \u_rf_if.read_buf0\[10] vdd gnd DFFPOSX1
X_2451_ _840_ \u_cpu.bufreg2.dlo\[4] \u_cpu.bufreg2.dlo\[6] _1048_ _1067_ vdd 
+ gnd
+ AOI22X1
X_3656_ \u_cpu.alu.i_cnt0\ \u_cpu.alu.cmp_r\ _2143_ vdd gnd NOR2X1
X_3236_ _2154__bF$buf3 _2152__bF$buf0 _1801_ _1747_ vdd gnd NAND3X1
X_4194_ mem_dbus_ack_bF$buf5 \u_mem_serial.shift_rx\[6] _1172__bF$buf0 _1177_ _1178_ vdd 
+ gnd
+ AOI22X1
X_2927_ _558_ clk_sys_bF$buf17 \u_rf_if.pending_read\ vdd gnd DFFPOSX1
X_2507_ \u_cpu.ctrl.o_ibus_adr\[19] _810_ _798_ _1011_ vdd gnd OAI21X1
XFILL_0__4654_ gnd vdd FILL
XFILL_1__2249_ gnd vdd FILL
X_2680_ _257_ _265_ _266_ vdd gnd NOR2X1
X_2260_ _1422_ _1310_ _774_ vdd gnd AND2X2
X_3885_ _662_ _663_ _661_ _664_ vdd gnd OAI21X1
X_3465_ _324_ _327_ \u_rf_if.stream_cnt_1_bF$buf2\ _323_ vdd gnd MUX2X1
X_3045_ \u_rf_if.rreg1_latched\[0] _1610_ vdd gnd INVX1
XFILL_0__3925_ gnd vdd FILL
X_2736_ _214_ _215__bF$buf1 _216_ _57_ vdd gnd AOI21X1
X_2316_ \u_mem_serial.clk_sys_prev\ _1308_ \u_mem_serial.state\[1] _1379_ vdd gnd OAI21X1
XFILL_1__4624_ gnd vdd FILL
X_3694_ \u_cpu.bufreg2.o_sh_done\ _154_ vdd gnd INVX1
X_3274_ _18__bF$buf1 _1775_ \u_rf_if.read_buf1\[13] _1774_ vdd gnd OAI21X1
X_4479_ \u_cpu.ctrl.o_ibus_adr\[5] _1553_ _1577_ vdd gnd NAND2X1
X_4059_ _892__bF$buf0 _925_ _927_ _874_ vdd gnd OAI21X1
XFILL_0__3734_ gnd vdd FILL
X_2965_ \u_rf_if.o_waddr\[0] _1729_ _1731_ _615_ vdd gnd OAI21X1
X_2545_ \u_mem_serial.active_ibus_bF$buf5\ \u_cpu.ctrl.o_ibus_adr\[8] _972_ vdd gnd NAND2X1
XFILL_0__4692_ gnd vdd FILL
XFILL_1__2287_ gnd vdd FILL
X_3083_ \u_rf_if.rreg1_latched\[4] _1636_ vdd gnd INVX1
X_4288_ mem_dbus_ack_bF$buf0 _1251_ _1255_ vdd gnd NOR2X1
XFILL_0__3963_ gnd vdd FILL
XFILL_0__3123_ gnd vdd FILL
XFILL_0__4328_ gnd vdd FILL
X_2774_ _116_ _124_ _125_ vdd gnd NOR2X1
X_2354_ _1345_ _1348_ rst_bF$buf10 _754_ vdd gnd AOI21X1
X_3979_ \u_cpu.immdec.gen_immdec_w_eq_1.imm11_7\[0] _688_ _733_ vdd gnd NAND2X1
X_3559_ \u_rf_if.wen0_r\ \u_rf_if.rtrig1\ _458_ vdd gnd NAND2X1
X_3139_ _2154__bF$buf4 _2062__bF$buf0 _2150_ _1675_ vdd gnd NAND3X1
X_4500_ _1482_ clk_sys_bF$buf29 \u_cpu.ctrl.o_ibus_adr\[27] vdd gnd DFFPOSX1
XFILL_1__4662_ gnd vdd FILL
X_4097_ _892__bF$buf3 _938_ _953_ _886_ vdd gnd OAI21X1
X_2583_ \u_mem_serial.bit_count\[4] _832_ _833_ vdd gnd NAND2X1
X_2163_ _2161_ o_rf_sync vdd gnd BUFX2
X_3788_ \u_cpu.branch_op\ _386_ vdd gnd INVX2
X_3368_ _2105_ _2102_ _2106_ _2110_ _2101_ vdd 
+ gnd
+ AOI22X1
XFILL_0__3408_ gnd vdd FILL
XFILL_0__3161_ gnd vdd FILL
X_2639_ _56_ i_clk_fast_bF$buf3 \u_rf_serial.tx_state\[0] vdd gnd DFFPOSX1
X_2219_ _1379_ _1451_ vdd gnd INVX1
XFILL_1__3742_ gnd vdd FILL
X_2392_ \u_mem_serial.shift_rx\[13] _1297__bF$buf2 _1318_ vdd gnd NAND2X1
X_3597_ _876_ clk_sys_bF$buf0 \u_cpu.bufreg.data\[25] vdd gnd DFFPOSX1
X_3177_ _1705_ _1704_ _1703_ vdd gnd NAND2X1
XFILL_0__2432_ gnd vdd FILL
X_2868_ _590_ clk_sys_bF$buf2 \u_rf_if.read_buf1\[17] vdd gnd DFFPOSX1
X_2448_ _1066_ _1069_ _853_ _1070_ vdd gnd AOI21X1
XFILL_1__4336_ gnd vdd FILL
XFILL_0__2661_ gnd vdd FILL
XFILL_0__3446_ gnd vdd FILL
XFILL_0__3026_ gnd vdd FILL
X_2677_ _214_ _267_ _268_ _269_ vdd gnd NAND3X1
X_2257_ _1316__bF$buf2 _1304__bF$buf1 \u_mem_serial.shift_rx\[26] _1424_ vdd gnd OAI21X1
X_4823_ i_rst_n_bF$buf1 vdd _1843_ clk_sys_bF$buf5 ibus_pending_rdt[12] vdd 
+ gnd
+ DFFSR
X_4403_ _1530__bF$buf0 _1531_ vdd gnd INVX4
XFILL_0__2470_ gnd vdd FILL
XFILL_0__3675_ gnd vdd FILL
XFILL_1__2211_ gnd vdd FILL
X_2486_ \u_cpu.bufreg.data\[21] _1032_ vdd gnd INVX1
X_4632_ _1877__bF$buf4 _1952_ _1953_ \u_cpu.decode.i_wb_rdt\[7] vdd gnd OAI21X1
X_4212_ \u_cpu.bufreg2.dlo\[1] _1191_ vdd gnd INVX1
XFILL_0__3484_ gnd vdd FILL
XFILL_0__3064_ gnd vdd FILL
X_3903_ \u_cpu.decode.co_immdec_en\[3] _680_ vdd gnd INVX1
XFILL_0__4689_ gnd vdd FILL
XFILL_0__4269_ gnd vdd FILL
XFILL_1__3225_ gnd vdd FILL
XFILL145050x100950 gnd vdd FILL
X_2295_ \u_mem_serial.shift_rx\[27] _1297__bF$buf2 _1397_ vdd gnd NAND2X1
XFILL_0__2335_ gnd vdd FILL
X_4441_ \u_cpu.ctrl.o_ibus_adr\[17] _1530__bF$buf0 _1552_ vdd gnd NAND2X1
X_4021_ \u_cpu.bufreg.i_en_bF$buf2\ \u_cpu.bufreg.data\[11] _903_ vdd gnd NAND2X1
X_3712_ \u_cpu.bufreg2.i_bytecnt\[0] _168_ vdd gnd INVX1
XFILL_0__4078_ gnd vdd FILL
XFILL_0__2984_ gnd vdd FILL
X_4670_ clk_div[3] _1978_ _1979_ vdd gnd NOR2X1
X_4250_ _1223_ _1143_ _1136_ _1224_ vdd gnd OAI21X1
XFILL_0__3349_ gnd vdd FILL
XFILL_1__2725_ gnd vdd FILL
X_3941_ _665__bF$buf3 _706_ _707_ _639_ vdd gnd OAI21X1
X_3521_ \u_rf_if.read_buf1\[5] \u_rf_if.stream_cnt_1_bF$buf3\ _423_ vdd gnd NOR2X1
X_3101_ _1649_ _1648_ rst_bF$buf6 _538_ vdd gnd AOI21X1
X_4726_ _1950_ _1983__bF$buf2 _2013_ _1847_ vdd gnd OAI21X1
X_4306_ _1154_ \u_cpu.bufreg.i_shamt\[0] _1268_ vdd gnd AND2X2
XFILL_1__3263_ gnd vdd FILL
XFILL_0__2373_ gnd vdd FILL
XFILL_1__2534_ gnd vdd FILL
X_2389_ _1317_ _1320_ rst_bF$buf10 _747_ vdd gnd AOI21X1
X_3750_ _163_ _176_ _177_ _135_ vdd gnd AOI21X1
X_3330_ _18__bF$buf2 _1819_ \u_rf_if.read_buf1\[25] _1818_ vdd gnd OAI21X1
X_4535_ _1877__bF$buf3 _1884_ _1885_ \u_cpu.decode.i_wb_rdt\[16] vdd gnd OAI21X1
X_4115_ _870_ clk_sys_bF$buf7 \u_cpu.bufreg.data\[0] vdd gnd DFFPOSX1
XFILL_0__2182_ gnd vdd FILL
X_2601_ _813_ _814_ _811_ _812_ _815_ vdd 
+ gnd
+ OAI22X1
XFILL_0__3387_ gnd vdd FILL
X_3806_ \u_cpu.decode.opcode\[1] _396_ vdd gnd INVX1
XFILL_1__2763_ gnd vdd FILL
XFILL_1__3548_ gnd vdd FILL
X_2198_ _1464_ _1465_ rst_bF$buf1 _793_ vdd gnd AOI21X1
XFILL_0__2238_ gnd vdd FILL
X_4764_ _1968_ _1983__bF$buf1 _2037_ _1861_ vdd gnd OAI21X1
X_4344_ _1106_ clk_sys_bF$buf37 \u_cpu.bufreg2.dhi\[6] vdd gnd DFFPOSX1
X_2830_ _545_ clk_sys_bF$buf39 \u_rf_if.read_buf0\[21] vdd gnd DFFPOSX1
X_2410_ _1083_ _1079_ _1300_ vdd gnd NAND2X1
X_3615_ _2080_ _2077_ _2078_ _2081_ vdd gnd AOI21X1
XFILL_1__2572_ gnd vdd FILL
XFILL144450x111750 gnd vdd FILL
X_4573_ ibus_pending_rdt[20] _1914_ vdd gnd INVX1
X_4153_ \u_cpu.bufreg2.dhi\[5] _1140_ _1141_ vdd gnd NAND2X1
XFILL_0__4613_ gnd vdd FILL
X_3844_ rf_rreq_bF$buf7 \u_cpu.decode.i_wb_rdt\[20] _411_ vdd gnd NAND2X1
X_3424_ \u_rf_if.stream_cnt\[2] _42_ _41_ vdd gnd NAND2X1
X_3004_ _1697_ _1822_ _1467_ vdd gnd NAND2X1
X_4629_ _1877__bF$buf0 _1950_ _1951_ \u_cpu.decode.i_wb_rdt\[8] vdd gnd OAI21X1
X_4209_ mem_dbus_ack_bF$buf3 _1185_ _1189_ vdd gnd NOR2X1
XFILL_1__3586_ gnd vdd FILL
XFILL_0__2276_ gnd vdd FILL
X_4382_ \u_cpu.ctrl.i_utype\ \u_cpu.cnt12to31\ \u_cpu.bufreg.i_imm\ _1513_ vdd gnd NAND3X1
XFILL_0__4422_ gnd vdd FILL
X_3653_ _2113_ _2124_ _2112_ _2140_ vdd gnd OAI21X1
X_3233_ _2154__bF$buf3 _2152__bF$buf0 _1798_ _1745_ vdd gnd NAND3X1
X_4438_ _1545_ _1531_ _1550_ _1484_ vdd gnd OAI21X1
X_4018_ \u_cpu.bufreg.data\[11] _892__bF$buf1 _901_ vdd gnd NAND2X1
X_4191_ _1153_ _1164__bF$buf4 _1175_ _1098_ vdd gnd OAI21X1
X_2924_ _560_ clk_sys_bF$buf35 \u_rf_if.write_wait\[5] vdd gnd DFFPOSX1
X_2504_ \u_mem_serial.active_ibus_bF$buf5\ \u_cpu.ctrl.o_ibus_adr\[16] _1014_ vdd gnd NAND2X1
XFILL_0__4651_ gnd vdd FILL
XFILL_0__4231_ gnd vdd FILL
X_3709_ _165_ _163_ _166_ vdd gnd NAND2X1
X_3882_ rf_rreq_bF$buf1 _661_ vdd gnd INVX2
X_3462_ \u_rf_if.read_buf0\[15] _446__bF$buf0 _320_ vdd gnd NOR2X1
X_3042_ _1625_ \u_rf_if.issue_chunk\[2] \u_rf_if.issue_chunk\[3] _1608_ vdd gnd AOI21X1
X_4667_ clk_div[2] _1975_ _1976_ vdd gnd NAND2X1
X_4247_ _1130_ _1133_ \u_cpu.bufreg2.dhi\[4] _1221_ vdd gnd OAI21X1
X_2733_ _217_ _215__bF$buf3 _218_ _58_ vdd gnd AOI21X1
X_2313_ \u_mem_serial.req_pending\ _1306_ _1381_ _1382_ vdd gnd OAI21X1
XFILL_0__4460_ gnd vdd FILL
XFILL_0__4040_ gnd vdd FILL
X_3938_ rf_rreq_bF$buf7 \u_cpu.decode.i_wb_rdt\[20] _705_ vdd gnd AND2X2
X_3518_ _448_ _421_ _426_ _420_ vdd gnd OAI21X1
X_3691_ \u_cpu.state.init_done\ _142_ _143_ _151_ vdd gnd NAND3X1
X_3271_ _18__bF$buf4 _1775_ \u_rf_if.read_buf1\[12] _1772_ vdd gnd OAI21X1
X_4476_ _1511_ _1575_ _1574_ _1497_ vdd gnd AOI21X1
X_4056_ \u_cpu.bufreg.i_en_bF$buf1\ \u_cpu.bufreg.data\[29] _926_ vdd gnd NAND2X1
XFILL_0__3311_ gnd vdd FILL
X_2962_ rst_bF$buf5 _472_ _491_ vdd gnd NOR2X1
X_2542_ _966_ _970_ _974_ _975_ vdd gnd NAND3X1
X_3747_ \u_cpu.state.cnt_r\[3] _189_ vdd gnd INVX1
X_3327_ _2154__bF$buf0 _10__bF$buf2 _1816_ _1815_ vdd gnd NAND3X1
XFILL_1__3069_ gnd vdd FILL
X_3080_ raddr[8] _1697_ _32__bF$buf1 _1633_ vdd gnd OAI21X1
XFILL_0__2599_ gnd vdd FILL
X_4285_ \u_mem_serial.shift_rx\[20] mem_dbus_ack_bF$buf1 _1172__bF$buf3 _1252_ _1253_ vdd 
+ gnd
+ AOI22X1
XFILL_0__4325_ gnd vdd FILL
X_2771_ ren_bF$buf2 raddr[1] _164_ vdd gnd NAND2X1
X_2351_ _1350_ _1351_ vdd gnd INVX1
X_3976_ \u_cpu.immdec.gen_immdec_w_eq_1.imm11_7\[1] _688_ _731_ vdd gnd NAND2X1
X_3556_ _457_ _476_ _456_ vdd gnd NAND2X1
X_3136_ _10__bF$buf1 _1715__bF$buf1 _1813_ _1673_ vdd gnd NAND3X1
XFILL_0__2811_ gnd vdd FILL
X_4094_ \u_cpu.bufreg.i_sh_signed\ _951_ vdd gnd INVX1
X_2827_ raddr[5] raddr[4] _74_ vdd gnd NOR2X1
X_2407_ _1297__bF$buf4 _1302_ _1303_ vdd gnd NAND2X1
XCLKBUF1_insert250 clk_sys clk_sys_hier0_bF$buf0 vdd gnd CLKBUF1
XFILL_0__4554_ gnd vdd FILL
XFILL_1__3510_ gnd vdd FILL
X_2580_ \u_mem_serial.active_ibus_bF$buf2\ \u_cpu.bufreg.data\[14] \u_mem_serial.bit_count_0_bF$buf2\ _836_ vdd gnd OAI21X1
XFILL_1__4715_ gnd vdd FILL
X_3785_ _760_ i_clk_fast_bF$buf7 \u_mem_serial.shift_rx\[1] vdd gnd DFFPOSX1
X_3365_ _2154__bF$buf2 _2099_ _2150_ _2098_ vdd gnd NAND3X1
XFILL_0__2620_ gnd vdd FILL
XFILL_0__2200_ gnd vdd FILL
XFILL_0__3825_ gnd vdd FILL
X_2636_ _65_ i_clk_fast_bF$buf0 \u_rf_serial.last_req_key\[10] vdd gnd DFFPOSX1
XFILL145050x10950 gnd vdd FILL
X_2216_ _1453_ _1310_ _787_ vdd gnd AND2X2
X_3594_ _134_ clk_sys_bF$buf45 \u_cpu.bufreg2.i_bytecnt\[0] vdd gnd DFFPOSX1
X_3174_ _1701_ _1700_ vdd gnd INVX1
X_4799_ _1863_ i_clk_fast_bF$buf3 clk_div[0] vdd gnd DFFPOSX1
X_4379_ _1505_ _1508_ _1509_ _1510_ vdd gnd OAI21X1
XFILL_0__3634_ gnd vdd FILL
XFILL_0__3214_ gnd vdd FILL
X_2865_ _509_ clk_sys_bF$buf44 raddr[0] vdd gnd DFFPOSX1
X_2445_ _966_ _1071_ _1072_ _1073_ vdd gnd NAND3X1
XFILL_0__4592_ gnd vdd FILL
XFILL_1__4753_ gnd vdd FILL
X_4188_ \u_cpu.bufreg2.dlo\[8] _1173_ vdd gnd INVX1
XFILL_0__4228_ gnd vdd FILL
X_2674_ _271_ _269_ _272_ vdd gnd NAND2X1
X_2254_ _1424_ _1426_ rst_bF$buf1 _776_ vdd gnd AOI21X1
X_3879_ rreg1[0] \u_cpu.branch_op\ _658_ vdd gnd OR2X2
X_3459_ _448_ _318_ \u_rf_if.stream_cnt\[3] _317_ vdd gnd OAI21X1
X_3039_ _14_ _1626_ _9_ _1606_ vdd gnd OAI21X1
XFILL_0__2714_ gnd vdd FILL
X_4820_ i_rst_n_bF$buf4 vdd _1846_ clk_sys_bF$buf36 ibus_pending_rdt[9] vdd 
+ gnd
+ DFFSR
X_4400_ _1506_ _1510_ _1528_ \u_cpu.ctrl.o_rd\ vdd gnd OAI21X1
XFILL_0__3919_ gnd vdd FILL
XFILL_1__4142_ gnd vdd FILL
XFILL_0__3252_ gnd vdd FILL
X_2483_ _1034_ _845_ _1035_ vdd gnd NAND2X1
X_3688_ gnd _148_ \u_cpu.o_dbus_cyc\ vdd gnd NOR2X1
X_3268_ _2152__bF$buf3 _2065_ _1770_ vdd gnd NAND2X1
XFILL_0__2523_ gnd vdd FILL
XFILL_0__3728_ gnd vdd FILL
XFILL_1__4791_ gnd vdd FILL
XFILL_1__4371_ gnd vdd FILL
X_2959_ _1604_ _1722_ _614_ _489_ vdd gnd AOI21X1
X_2539_ _803_ _829_ _977_ _978_ vdd gnd AOI21X1
X_3900_ _672_ _674_ _676_ _677_ vdd gnd NAND3X1
XFILL_0__4266_ gnd vdd FILL
X_2292_ _1396_ _1399_ rst_bF$buf10 _765_ vdd gnd AOI21X1
X_3497_ \u_rf_if.read_buf1\[19] \u_rf_if.stream_cnt_0_bF$buf0\ _354_ vdd gnd NAND2X1
X_3077_ _2152__bF$buf3 _1715__bF$buf1 _1813_ _1631_ vdd gnd NAND3X1
XFILL_0__2752_ gnd vdd FILL
XFILL_0__3957_ gnd vdd FILL
XFILL_0__3537_ gnd vdd FILL
XFILL_0__3117_ gnd vdd FILL
XFILL_1__4180_ gnd vdd FILL
XFILL_0__3290_ gnd vdd FILL
X_2768_ \u_rf_if.o_wdata\[0] _192_ vdd gnd INVX1
X_2348_ _1316__bF$buf3 _1304__bF$buf3 \u_mem_serial.shift_rx\[5] _1353_ vdd gnd OAI21X1
XFILL_1__3031_ gnd vdd FILL
XFILL_0__2561_ gnd vdd FILL
XFILL_0__3766_ gnd vdd FILL
X_2997_ _745_ _744_ _505_ vdd gnd NOR2X1
X_2577_ _837_ _838_ _835_ _836_ _839_ vdd 
+ gnd
+ OAI22X1
X_4723_ mem_ibus_ack_bF$buf4 \u_mem_serial.shift_rx\[9] _1984__bF$buf2 _2012_ vdd gnd NAND3X1
X_4303_ mem_dbus_ack_bF$buf0 _1147_ _1266_ vdd gnd NOR2X1
XFILL_0__2790_ gnd vdd FILL
XFILL_0__3575_ gnd vdd FILL
XFILL_0__3155_ gnd vdd FILL
XFILL_1__3316_ gnd vdd FILL
X_2386_ _1322_ _1323_ vdd gnd INVX1
XFILL_0__2426_ gnd vdd FILL
X_4532_ _1883_ \u_cpu.decode.i_wb_rdt\[3] vdd gnd INVX1
X_4112_ _873_ clk_sys_bF$buf0 \u_cpu.bufreg.data\[28] vdd gnd DFFPOSX1
X_3803_ _758_ i_clk_fast_bF$buf7 \u_mem_serial.shift_rx\[3] vdd gnd DFFPOSX1
XFILL_0__4169_ gnd vdd FILL
X_2195_ _789_ i_clk_fast_bF$buf6 \u_mem_serial.shift_rx\[18] vdd gnd DFFPOSX1
XFILL_0__2655_ gnd vdd FILL
X_4761_ clk_div[2] _1975_ _2036_ vdd gnd NOR2X1
X_4341_ _1109_ clk_sys_bF$buf37 \u_cpu.bufreg2.dhi\[3] vdd gnd DFFPOSX1
XFILL_1__2816_ gnd vdd FILL
XFILL_0__3193_ gnd vdd FILL
X_3612_ \u_cpu.decode.co_mem_word\ gnd _2078_ vdd gnd OR2X2
X_4817_ i_rst_n_bF$buf1 vdd _1849_ clk_sys_bF$buf5 ibus_pending_rdt[6] vdd 
+ gnd
+ DFFSR
XFILL_1__3354_ gnd vdd FILL
XFILL_1__4559_ gnd vdd FILL
XFILL_0__2464_ gnd vdd FILL
X_4570_ rf_read_reg1[2] _1912_ vdd gnd INVX1
X_4150_ \u_cpu.bufreg.i_shamt\[1] \u_cpu.bufreg.i_shamt\[0] _1138_ vdd gnd NOR2X1
XFILL_0__3669_ gnd vdd FILL
X_3841_ _755_ i_clk_fast_bF$buf5 \u_mem_serial.shift_rx\[6] vdd gnd DFFPOSX1
X_3421_ \u_rf_if.stream_active\ _39_ _38_ vdd gnd NAND2X1
X_3001_ _25_ _1697_ _746_ vdd gnd NAND2X1
X_4626_ _1877__bF$buf2 _1948_ _1949_ \u_cpu.decode.i_wb_rdt\[9] vdd gnd OAI21X1
X_4206_ mem_dbus_ack_bF$buf5 \u_mem_serial.shift_rx\[3] _1172__bF$buf1 _1186_ _1187_ vdd 
+ gnd
+ AOI22X1
XFILL_0__2693_ gnd vdd FILL
XFILL_0__3898_ gnd vdd FILL
XFILL_0__3478_ gnd vdd FILL
XFILL_0__3058_ gnd vdd FILL
X_2289_ _1401_ _1402_ vdd gnd INVX1
X_3650_ \u_cpu.alu.i_cmp_sig\ _2129_ _2131_ _2137_ vdd gnd NAND3X1
X_3230_ _18__bF$buf0 _1744_ \u_rf_if.read_buf1\[3] _1743_ vdd gnd OAI21X1
XFILL_0__2329_ gnd vdd FILL
X_4435_ \u_cpu.ctrl.o_ibus_adr\[19] _1549_ vdd gnd INVX1
X_4015_ _893_ _898_ _895_ _899_ vdd gnd NAND3X1
XFILL_1__3392_ gnd vdd FILL
XFILL_1__4597_ gnd vdd FILL
X_2921_ _521_ clk_sys_bF$buf40 \u_rf_if.read_buf0\[1] vdd gnd DFFPOSX1
X_2501_ \u_cpu.bufreg.data\[17] _1017_ vdd gnd INVX1
X_3706_ _788_ i_clk_fast_bF$buf6 \u_mem_serial.shift_rx\[19] vdd gnd DFFPOSX1
XFILL_1__3028_ gnd vdd FILL
XFILL_0__2978_ gnd vdd FILL
X_4664_ _1967_ _1972_ _1973_ _1825_ vdd gnd NAND3X1
X_4244_ _1154_ \u_mem_serial.shift_rx\[28] _1219_ vdd gnd OR2X2
XFILL_0__4704_ gnd vdd FILL
XFILL144750x111750 gnd vdd FILL
X_2730_ _220_ _215__bF$buf3 _202_ _221_ vdd gnd OAI21X1
X_2310_ _1378_ _1383_ _1296_ _1385_ vdd gnd AOI21X1
XFILL_0__3096_ gnd vdd FILL
X_3935_ \u_cpu.decode.i_wb_rdt\[12] \u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20\[2] rf_rreq_bF$buf7 _703_ vdd gnd MUX2X1
X_3515_ \u_rf_if.read_buf1\[24] _409_ vdd gnd INVX1
XFILL_0__2367_ gnd vdd FILL
X_4473_ _1530__bF$buf1 _1572_ _1573_ _1496_ vdd gnd OAI21X1
X_4053_ \u_cpu.bufreg.i_en_bF$buf1\ \u_cpu.bufreg.data\[31] _924_ vdd gnd NAND2X1
X_3744_ rf_ready _187_ vdd gnd INVX1
X_3324_ \u_rf_if.issue_chunk\[1] _5_ _2069_ _1813_ vdd gnd NOR3X1
X_4529_ \u_mem_serial.shift_rx\[2] _1877__bF$buf3 _1882_ vdd gnd NAND2X1
X_4109_ \u_cpu.bufreg.i_en_bF$buf3\ _900_ _960_ _891_ vdd gnd OAI21X1
XFILL_1__3066_ gnd vdd FILL
X_4282_ _1248_ _1164__bF$buf2 _1250_ _1114_ vdd gnd OAI21X1
XFILL145050x108150 gnd vdd FILL
XFILL_0__4742_ gnd vdd FILL
XFILL144450x93750 gnd vdd FILL
XFILL_1__2337_ gnd vdd FILL
X_3973_ \u_cpu.immdec.gen_immdec_w_eq_1.imm11_7\[2] _688_ _729_ vdd gnd NAND2X1
X_3553_ gnd _472_ _454_ _453_ vdd gnd OAI21X1
X_3133_ _2062__bF$buf2 _1715__bF$buf0 _1807_ _1671_ vdd gnd NAND3X1
X_4758_ rf_read_reg1[0] _1962_ _1895__bF$buf0 _2034_ vdd gnd NAND3X1
X_4338_ _1173_ _1164__bF$buf4 _1291_ _1129_ vdd gnd OAI21X1
X_4091_ \u_cpu.bufreg.i_en_bF$buf0\ _948_ _949_ _884_ vdd gnd OAI21X1
X_2824_ _76_ \u_rf_serial.shift_rx\[0] rdata[0] vdd gnd AND2X2
X_2404_ _1305_ _1296_ _1306_ vdd gnd NAND2X1
X_3609_ _2075_ _2074_ _2073_ \u_cpu.mem_if.o_wb_sel\[3] vdd gnd OAI21X1
XFILL_1__2986_ gnd vdd FILL
X_3782_ _786_ i_clk_fast_bF$buf2 \u_mem_serial.shift_rx\[20] vdd gnd DFFPOSX1
X_3362_ _3_ _2097_ _2096_ vdd gnd AND2X2
X_4567_ ibus_pending_rdt[22] _1910_ vdd gnd INVX1
X_4147_ \u_cpu.bufreg.i_right_shift_op\ \u_cpu.bufreg.i_cnt_done\ _1135_ vdd gnd NAND2X1
XFILL_0__3402_ gnd vdd FILL
XFILL_0__4607_ gnd vdd FILL
X_2633_ _53_ i_clk_fast_bF$buf3 \u_rf_serial.tx_state\[2] vdd gnd DFFPOSX1
X_2213_ _1454_ _1455_ rst_bF$buf3 _788_ vdd gnd AOI21X1
XFILL_0__4780_ gnd vdd FILL
X_3838_ _785_ i_clk_fast_bF$buf6 \u_mem_serial.shift_rx\[21] vdd gnd DFFPOSX1
X_3418_ _38_ _41_ _31_ _606_ vdd gnd AOI21X1
XFILL_1__2375_ gnd vdd FILL
X_3591_ \u_rf_if.i_rreq\ rf_wreq _485_ vdd gnd NOR2X1
X_3171_ \u_rf_if.prefetch_active\ _1698_ vdd gnd INVX2
X_4796_ \u_rf_if.o_waddr\[3] \u_rf_if.o_waddr\[2] \u_rf_if.o_wen\ _2056_ vdd gnd NAND3X1
X_4376_ \u_cpu.ctrl.i_utype\ \u_cpu.bufreg.i_imm\ _1507_ vdd gnd AND2X2
XFILL_0__4416_ gnd vdd FILL
X_2862_ _593_ clk_sys_bF$buf18 \u_rf_if.read_buf1\[20] vdd gnd DFFPOSX1
X_2442_ _805_ _1075_ _1074_ _1076_ vdd gnd NAND3X1
X_3647_ _2126_ _2127_ _2134_ \u_cpu.alu.o_rd\ vdd gnd NAND3X1
X_3227_ _1743_ _1741_ rst_bF$buf7 _573_ vdd gnd AOI21X1
XFILL_1__2184_ gnd vdd FILL
XFILL_1__3389_ gnd vdd FILL
X_4185_ \u_cpu.bufreg2.i_bytecnt\[0] _1170_ vdd gnd INVX1
XFILL_0__3440_ gnd vdd FILL
XFILL_0__3020_ gnd vdd FILL
X_2918_ _563_ clk_sys_bF$buf13 \u_rf_if.read_buf0\[30] vdd gnd DFFPOSX1
XFILL_0__4645_ gnd vdd FILL
XFILL_1__3601_ gnd vdd FILL
X_2671_ _273_ _274_ _272_ _275_ vdd gnd AOI21X1
X_2251_ _1427_ _1428_ rst_bF$buf1 _777_ vdd gnd AOI21X1
X_3876_ \u_cpu.bufreg.i_cnt_done\ _653_ _656_ \u_cpu.bufreg.i_imm\ vdd gnd OAI21X1
X_3456_ \u_rf_if.read_buf0\[24] \u_rf_if.stream_cnt_0_bF$buf1\ _314_ vdd gnd NOR2X1
X_3036_ \u_rf_if.rreg1_latched\[3] _1604_ vdd gnd INVX1
X_2727_ _114_ _215__bF$buf2 _202_ _223_ vdd gnd OAI21X1
X_2307_ _1387_ _1310_ _762_ vdd gnd AND2X2
XFILL_0__4454_ gnd vdd FILL
XFILL_0__4034_ gnd vdd FILL
X_2480_ \u_mem_serial.active_ibus_bF$buf4\ _1036_ _1037_ _1038_ vdd gnd OAI21X1
X_3685_ _145_ _144_ _147_ \u_cpu.bufreg.i_en\ vdd gnd OAI21X1
X_3265_ _2154__bF$buf4 _2062__bF$buf3 _1768_ _1767_ vdd gnd NAND3X1
XFILL_0__3725_ gnd vdd FILL
XFILL_0__3305_ gnd vdd FILL
X_2956_ \u_rf_if.rcnt\[2] _1690_ _612_ _488_ vdd gnd AOI21X1
X_2536_ \u_mem_serial.active_ibus_bF$buf0\ \u_cpu.bufreg.data\[30] _981_ vdd gnd OR2X2
XFILL_0__4683_ gnd vdd FILL
XFILL_1__4424_ gnd vdd FILL
X_3494_ \u_rf_if.read_buf1\[20] \u_rf_if.stream_cnt_0_bF$buf3\ _351_ vdd gnd NOR2X1
X_3074_ _2062__bF$buf2 _1715__bF$buf0 _1757_ _1629_ vdd gnd NAND3X1
X_4699_ _1880_ _1883_ _1998_ vdd gnd NAND2X1
X_4279_ \u_cpu.bufreg2.dlo\[21] _1248_ vdd gnd INVX1
XFILL_0__4319_ gnd vdd FILL
X_2765_ \u_rf_if.o_waddr\[0] _195_ vdd gnd INVX1
X_2345_ _1315__bF$buf2 _1355_ _1303__bF$buf0 _1356_ vdd gnd NAND3X1
XFILL_0__4072_ gnd vdd FILL
XFILL145050x86550 gnd vdd FILL
XFILL_0__2805_ gnd vdd FILL
XFILL_1__4233_ gnd vdd FILL
X_4088_ _892__bF$buf4 _945_ _947_ _883_ vdd gnd OAI21X1
XFILL_0__3343_ gnd vdd FILL
XFILL_0__4548_ gnd vdd FILL
X_2994_ _743_ _742_ _504_ vdd gnd NOR2X1
X_2574_ \u_mem_serial.active_ibus_bF$buf2\ \u_cpu.ctrl.o_ibus_adr\[12] _842_ vdd gnd NAND2X1
X_3779_ _762_ i_clk_fast_bF$buf4 \u_mem_serial.state\[0] vdd gnd DFFPOSX1
X_3359_ _18__bF$buf1 _2094_ \u_rf_if.read_buf1\[29] _2093_ vdd gnd OAI21X1
XFILL_0__2614_ gnd vdd FILL
X_4720_ _1944_ _1983__bF$buf3 _2010_ _1844_ vdd gnd OAI21X1
X_4300_ mem_dbus_ack_bF$buf2 \u_mem_serial.shift_rx\[16] _1172__bF$buf3 _1263_ _1264_ vdd 
+ gnd
+ AOI22X1
XFILL_0__3819_ gnd vdd FILL
XFILL_1__4462_ gnd vdd FILL
XFILL_1__4042_ gnd vdd FILL
XCLKBUF1_insert60 clk_sys_hier0_bF$buf1 clk_sys_bF$buf25 vdd gnd CLKBUF1
XCLKBUF1_insert61 clk_sys_hier0_bF$buf5 clk_sys_bF$buf24 vdd gnd CLKBUF1
XCLKBUF1_insert62 clk_sys_hier0_bF$buf4 clk_sys_bF$buf23 vdd gnd CLKBUF1
XCLKBUF1_insert63 clk_sys_hier0_bF$buf2 clk_sys_bF$buf22 vdd gnd CLKBUF1
XCLKBUF1_insert64 clk_sys_hier0_bF$buf5 clk_sys_bF$buf21 vdd gnd CLKBUF1
XCLKBUF1_insert65 clk_sys_hier0_bF$buf5 clk_sys_bF$buf20 vdd gnd CLKBUF1
XCLKBUF1_insert66 clk_sys_hier0_bF$buf5 clk_sys_bF$buf19 vdd gnd CLKBUF1
XCLKBUF1_insert67 clk_sys_hier0_bF$buf0 clk_sys_bF$buf18 vdd gnd CLKBUF1
XCLKBUF1_insert68 clk_sys_hier0_bF$buf2 clk_sys_bF$buf17 vdd gnd CLKBUF1
XCLKBUF1_insert69 clk_sys_hier0_bF$buf2 clk_sys_bF$buf16 vdd gnd CLKBUF1
XFILL_1__3313_ gnd vdd FILL
X_2383_ _1316__bF$buf0 _1304__bF$buf4 \u_mem_serial.shift_rx\[12] _1325_ vdd gnd OAI21X1
X_3588_ \u_rf_if.wdata0_next_phase\ _482_ vdd gnd INVX1
X_3168_ _1707_ _1700_ _1695_ vdd gnd NAND2X1
XFILL_0__3628_ gnd vdd FILL
XFILL_0__3208_ gnd vdd FILL
XFILL_1__4271_ gnd vdd FILL
XFILL_0__3381_ gnd vdd FILL
X_2859_ _536_ clk_sys_bF$buf12 \u_rf_if.rreg0_latched\[4] vdd gnd DFFPOSX1
X_2439_ \u_mem_serial.active_we\ _1079_ vdd gnd INVX1
X_3800_ _393_ _392_ \u_cpu.bufreg.i_imm_en\ \u_cpu.decode.co_rd_op\ vdd gnd OAI21X1
XFILL_0__4586_ gnd vdd FILL
X_2192_ _749_ i_clk_fast_bF$buf6 \u_mem_serial.shift_rx\[12] vdd gnd DFFPOSX1
X_3397_ _25_ _16_ _21_ _12_ vdd gnd OAI21X1
XFILL_0__2232_ gnd vdd FILL
XFILL_0__3857_ gnd vdd FILL
XFILL_1__4080_ gnd vdd FILL
XFILL_1__2813_ gnd vdd FILL
X_2668_ \u_rf_serial.last_req_key\[2] _229_ _278_ vdd gnd NAND2X1
X_2248_ _1429_ _1430_ rst_bF$buf3 _778_ vdd gnd AOI21X1
XFILL_0__4395_ gnd vdd FILL
XFILL_1_BUFX2_insert221 gnd vdd FILL
XFILL_1_BUFX2_insert225 gnd vdd FILL
XFILL_1_BUFX2_insert229 gnd vdd FILL
XFILL_0__2708_ gnd vdd FILL
X_4814_ i_rst_n_bF$buf1 vdd _1852_ clk_sys_bF$buf36 ibus_pending_rdt[3] vdd 
+ gnd
+ DFFSR
XFILL_1__3771_ gnd vdd FILL
XFILL_1__3351_ gnd vdd FILL
XFILL_1__4556_ gnd vdd FILL
XFILL_0__3246_ gnd vdd FILL
XFILL_1__2622_ gnd vdd FILL
X_2897_ _574_ clk_sys_bF$buf18 \u_rf_if.read_buf1\[4] vdd gnd DFFPOSX1
X_2477_ _1031_ _1040_ _803_ _1041_ vdd gnd OAI21X1
XFILL_0__2517_ gnd vdd FILL
X_4623_ _1877__bF$buf2 _1946_ _1947_ \u_cpu.decode.i_wb_rdt\[10] vdd gnd OAI21X1
X_4203_ _1182_ _1164__bF$buf4 _1184_ _1101_ vdd gnd OAI21X1
XFILL145050x18150 gnd vdd FILL
XFILL_0__2270_ gnd vdd FILL
XFILL_1__3636_ gnd vdd FILL
X_2286_ _1314_ _1313_ \u_mem_serial.bit_count\[5] _1404_ vdd gnd OAI21X1
XFILL_0__2746_ gnd vdd FILL
X_4852_ i_rst_n_bF$buf3 vdd _1865_ clk_sys_bF$buf20 rf_read_reg0[2] vdd 
+ gnd
+ DFFSR
X_4432_ \u_cpu.ctrl.o_ibus_adr\[20] _1548_ vdd gnd INVX1
X_4012_ \u_cpu.bufreg.c_r\ _896_ vdd gnd INVX1
XFILL_1__4594_ gnd vdd FILL
XFILL_0__3284_ gnd vdd FILL
X_3703_ _161_ \u_cpu.state.ibus_cyc\ \u_cpu.o_ibus_cyc\ vdd gnd AND2X2
XFILL_0__2555_ gnd vdd FILL
X_4661_ _1970_ rf_rreq_bF$buf5 _1971_ rf_read_reg0_to_if[2] vdd gnd OAI21X1
X_4241_ _1136_ _1140_ _1215_ _1216_ vdd gnd NAND3X1
X_3932_ \u_cpu.decode.i_wb_rdt\[13] \u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20\[3] rf_rreq_bF$buf7 _701_ vdd gnd MUX2X1
X_3512_ \u_rf_if.read_buf1\[26] _394_ vdd gnd INVX1
XFILL_0__4298_ gnd vdd FILL
X_4717_ \u_mem_serial.shift_rx\[12] mem_ibus_ack_bF$buf1 _1984__bF$buf1 _2009_ vdd gnd NAND3X1
XFILL_0__2784_ gnd vdd FILL
X_4470_ _1530__bF$buf4 _1570_ _1571_ _1495_ vdd gnd OAI21X1
X_4050_ \u_cpu.bufreg.data\[30] _922_ vdd gnd INVX1
XFILL_0__3569_ gnd vdd FILL
XFILL_0__3149_ gnd vdd FILL
X_3741_ \u_cpu.state.ibus_cyc\ _184_ _185_ vdd gnd NAND2X1
X_3321_ _1_ _2092_ _1811_ vdd gnd NAND2X1
X_4526_ ibus_pending_rdt[6] \u_mem_serial.shift_rx\[6] ibus_pending_ack_bF$buf1 _1880_ vdd gnd MUX2X1
X_4106_ \u_cpu.bufreg.data\[13] _892__bF$buf3 _959_ vdd gnd NAND2X1
XFILL_0__2593_ gnd vdd FILL
XFILL_0__2173_ gnd vdd FILL
XFILL_1__3959_ gnd vdd FILL
XFILL_1__3119_ gnd vdd FILL
X_2189_ _771_ i_clk_fast_bF$buf1 \u_mem_serial.bit_count\[2] vdd gnd DFFPOSX1
X_3970_ \u_cpu.immdec.gen_immdec_w_eq_1.imm11_7\[3] _688_ _727_ vdd gnd NAND2X1
X_3550_ \u_cpu.immdec.gen_immdec_w_eq_1.imm11_7\[4] _484__bF$buf0 _451_ vdd gnd NAND2X1
X_3130_ _1807_ _1715__bF$buf0 _2099_ _1669_ vdd gnd NAND3X1
XFILL145050x129750 gnd vdd FILL
XFILL_0__2649_ gnd vdd FILL
X_4755_ rf_read_reg1[1] _1962_ _1895__bF$buf0 _2032_ vdd gnd NAND3X1
X_4335_ _1287_ _1164__bF$buf2 _1289_ _1128_ vdd gnd OAI21X1
X_2821_ \u_rf_serial.tx_state\[0] \u_rf_serial.tx_state\[1] _78_ vdd gnd NOR2X1
X_2401_ _1308_ \u_mem_serial.clk_sys_prev\ _1309_ vdd gnd OR2X2
XFILL_0__3187_ gnd vdd FILL
X_3606_ \u_cpu.state.i_ctrl_misalign\ _2074_ _2073_ \u_cpu.mem_if.o_wb_sel\[1] vdd gnd OAI21X1
XFILL_1_BUFX2_insert191 gnd vdd FILL
XFILL_1_BUFX2_insert198 gnd vdd FILL
XFILL_0__2458_ gnd vdd FILL
X_4564_ ibus_pending_rdt[18] _1908_ vdd gnd INVX1
X_4144_ \u_cpu.bufreg.i_init\ _1132_ vdd gnd INVX1
X_2630_ _62_ i_clk_fast_bF$buf3 \u_rf_serial.req_seen\ vdd gnd DFFPOSX1
X_2210_ _1456_ _1457_ rst_bF$buf3 _789_ vdd gnd AOI21X1
X_3835_ rf_rreq_bF$buf0 _372_ _406_ _358_ vdd gnd OAI21X1
X_3415_ \u_rf_if.stream_cnt_0_bF$buf3\ \u_rf_if.stream_cnt_1_bF$buf1\ _32__bF$buf2 _28_ vdd gnd OAI21X1
XFILL_1__3157_ gnd vdd FILL
XFILL_0__2687_ gnd vdd FILL
X_4793_ mem_ibus_ack_bF$buf4 \u_mem_serial.shift_rx\[24] _1984__bF$buf2 _2054_ vdd gnd NAND3X1
X_4373_ _1502_ _1503_ _1504_ vdd gnd NAND2X1
XFILL_0__4413_ gnd vdd FILL
XFILL_0_CLKBUF1_insert250 gnd vdd FILL
XFILL_1__2428_ gnd vdd FILL
X_3644_ _2129_ _2131_ _2132_ vdd gnd NAND2X1
X_3224_ _1740_ _1739_ rst_bF$buf7 _572_ vdd gnd AOI21X1
X_4849_ i_rst_n_bF$buf1 vdd _1868_ clk_sys_bF$buf23 ibus_pending_rdt[30] vdd 
+ gnd
+ DFFSR
X_4429_ _1546_ _1531_ _1544_ _1535_ _1479_ vdd 
+ gnd
+ OAI22X1
X_4009_ \u_cpu.bufreg.c_r\ \u_cpu.bufreg.i_rs1_en\ rdata0[0] _893_ vdd gnd NAND3X1
XBUFX2_insert240 mem_ibus_ack mem_ibus_ack_bF$buf4 vdd gnd BUFX2
XBUFX2_insert241 mem_ibus_ack mem_ibus_ack_bF$buf3 vdd gnd BUFX2
XBUFX2_insert242 mem_ibus_ack mem_ibus_ack_bF$buf2 vdd gnd BUFX2
XBUFX2_insert243 mem_ibus_ack mem_ibus_ack_bF$buf1 vdd gnd BUFX2
XBUFX2_insert244 mem_ibus_ack mem_ibus_ack_bF$buf0 vdd gnd BUFX2
XFILL_0__2496_ gnd vdd FILL
X_4182_ \u_cpu.state.i_ctrl_misalign\ \u_cpu.bufreg2.i_bytecnt\[1] \u_cpu.bufreg.i_shift_op\ _1167_ vdd gnd AOI21X1
X_2915_ _494_ clk_sys_bF$buf40 \u_rf_if.rreg1_latched\[4] vdd gnd DFFPOSX1
XFILL_0__4222_ gnd vdd FILL
XFILL_1__2657_ gnd vdd FILL
X_3873_ \u_cpu.immdec.gen_immdec_w_eq_1.imm31\ _654_ vdd gnd INVX1
X_3453_ \u_rf_if.read_buf0\[26] \u_rf_if.stream_cnt_0_bF$buf2\ \u_rf_if.stream_cnt_1_bF$buf0\ _311_ vdd gnd OAI21X1
X_3033_ raddr[7] _1697_ _32__bF$buf4 _1601_ vdd gnd OAI21X1
X_4658_ _1877__bF$buf3 _1968_ _1969_ \u_cpu.decode.i_wb_rdt\[31] vdd gnd OAI21X1
X_4238_ \u_cpu.bufreg.i_shamt\[2] _1213_ vdd gnd INVX1
XFILL_1__3195_ gnd vdd FILL
XFILL_0__3913_ gnd vdd FILL
X_2724_ _119_ _215__bF$buf0 _202_ _225_ vdd gnd OAI21X1
X_2304_ _1389_ _1390_ vdd gnd INVX1
XFILL_0__4451_ gnd vdd FILL
X_3929_ \u_cpu.decode.i_wb_rdt\[14] \u_cpu.csr_imm\ rf_rreq_bF$buf6 _699_ vdd gnd MUX2X1
X_3509_ _383_ _405_ \u_rf_if.stream_cnt_1_bF$buf2\ _382_ vdd gnd MUX2X1
XFILL_1__2466_ gnd vdd FILL
X_3682_ \u_cpu.branch_op\ _138_ \u_cpu.decode.co_two_stage_op\ _145_ vdd gnd OAI21X1
X_3262_ _2154__bF$buf4 _2099_ _1768_ _1765_ vdd gnd NAND3X1
X_4467_ _1530__bF$buf0 _1568_ _1569_ _1494_ vdd gnd OAI21X1
X_4047_ \u_cpu.bufreg.i_en_bF$buf4\ \u_cpu.bufreg.i_init\ _919_ _920_ vdd gnd OAI21X1
XFILL144450x46950 gnd vdd FILL
X_2953_ _610_ _487_ vdd gnd INVX1
X_2533_ \u_cpu.ctrl.o_ibus_adr\[31] _984_ vdd gnd INVX1
XFILL_0__4260_ gnd vdd FILL
X_3738_ _163_ _176_ \u_cpu.state.init_done\ _183_ vdd gnd OAI21X1
X_3318_ _18__bF$buf3 _1809_ \u_rf_if.read_buf1\[23] _1808_ vdd gnd OAI21X1
XFILL_1__2695_ gnd vdd FILL
X_3491_ \u_rf_if.read_buf1\[22] \u_rf_if.stream_cnt_0_bF$buf3\ \u_rf_if.stream_cnt_1_bF$buf1\ _348_ vdd gnd OAI21X1
X_3071_ _1715__bF$buf0 _1757_ _2099_ _1627_ vdd gnd NAND3X1
X_4696_ _1879_ \u_cpu.decode.i_wb_rdt\[5] \u_cpu.decode.i_wb_rdt\[30] _1995_ vdd gnd NAND3X1
X_4276_ mem_dbus_ack_bF$buf0 _1245_ _1246_ vdd gnd NOR2X1
XFILL_0__3951_ gnd vdd FILL
XFILL_0__3531_ gnd vdd FILL
XFILL_0__3111_ gnd vdd FILL
XFILL_0__4736_ gnd vdd FILL
X_2762_ _98_ _197_ _194_ _198_ vdd gnd AOI21X1
X_2342_ \u_mem_serial.shift_rx\[3] _1297__bF$buf2 _1358_ vdd gnd NAND2X1
X_3967_ rreg1[0] _685_ _725_ vdd gnd NAND2X1
X_3547_ \u_rf_if.stream_cnt\[4] _449_ vdd gnd INVX1
X_3127_ _426_ _39_ _449_ _1667_ vdd gnd OAI21X1
XFILL_0__2399_ gnd vdd FILL
X_4085_ \u_cpu.bufreg.i_en_bF$buf2\ \u_cpu.bufreg.data\[21] _946_ vdd gnd NAND2X1
X_2818_ _80_ _81_ vdd gnd INVX1
XFILL_1__3921_ gnd vdd FILL
X_2991_ _741_ _740_ _503_ vdd gnd NOR2X1
X_2571_ \u_mem_serial.bit_count_0_bF$buf0\ _799_ _845_ vdd gnd NOR2X1
X_3776_ clk_sys_bF$buf33 i_clk_fast_bF$buf4 \u_mem_serial.clk_sys_prev\ vdd gnd DFFPOSX1
X_3356_ _13_ _20_ _2090_ vdd gnd NOR2X1
X_2627_ _68_ i_clk_fast_bF$buf3 _2161_ vdd gnd DFFPOSX1
X_2207_ _1458_ _1459_ rst_bF$buf3 _790_ vdd gnd AOI21X1
XFILL_0__4774_ gnd vdd FILL
XFILL_1__3730_ gnd vdd FILL
X_2380_ _1315__bF$buf1 _1327_ _1303__bF$buf3 _1328_ vdd gnd NAND3X1
X_3585_ \u_rf_if.o_waddr\[2] \u_rf_if.o_waddr\[3] _479_ vdd gnd NOR2X1
X_3165_ _1693_ _1696_ rst_bF$buf5 _559_ vdd gnd AOI21X1
XFILL_0__2420_ gnd vdd FILL
XFILL_0__3625_ gnd vdd FILL
X_2856_ _596_ clk_sys_bF$buf24 \u_rf_if.read_buf1\[23] vdd gnd DFFPOSX1
X_2436_ _1047_ _978_ _1081_ _1082_ vdd gnd OAI21X1
XFILL_0__4163_ gnd vdd FILL
X_3394_ \u_rf_if.issue_chunk\[2] _9_ vdd gnd INVX1
X_4599_ _1877__bF$buf3 _1930_ _1931_ \u_cpu.decode.i_wb_rdt\[29] vdd gnd OAI21X1
X_4179_ _1154_ _1163_ _1159_ _1164_ vdd gnd NAND3X1
XFILL_0__3854_ gnd vdd FILL
XFILL_0__3434_ gnd vdd FILL
XFILL_0__3014_ gnd vdd FILL
XFILL_0__4639_ gnd vdd FILL
X_2665_ _280_ _275_ _266_ _281_ vdd gnd NAND3X1
X_2245_ _1406_ _1408_ _1432_ _779_ vdd gnd AOI21X1
XFILL_0__4392_ gnd vdd FILL
X_4811_ vdd i_rst_n_bF$buf0 _1855_ clk_sys_bF$buf5 ibus_pending_rdt[0] vdd 
+ gnd
+ DFFSR
XFILL_0__3663_ gnd vdd FILL
XFILL_0__4028_ gnd vdd FILL
XFILL_1__3404_ gnd vdd FILL
X_2894_ _576_ clk_sys_bF$buf44 \u_rf_if.wdata0_next\[0] vdd gnd DFFPOSX1
X_2474_ \u_mem_serial.bit_count\[5] _1044_ vdd gnd INVX1
XFILL_1__4609_ gnd vdd FILL
X_3679_ \u_cpu.state.cnt_r\[0] \u_cpu.state.cnt_r\[2] _143_ vdd gnd NOR2X1
X_3259_ _18__bF$buf2 _1764_ \u_rf_if.read_buf1\[9] _1763_ vdd gnd OAI21X1
X_4620_ _1877__bF$buf4 _1944_ _1945_ \u_cpu.decode.i_wb_rdt\[11] vdd gnd OAI21X1
X_4200_ \u_cpu.bufreg2.dlo\[4] _1182_ vdd gnd INVX1
XFILL_0__3719_ gnd vdd FILL
XFILL_0__3892_ gnd vdd FILL
XFILL_0__3472_ gnd vdd FILL
XFILL_0__3052_ gnd vdd FILL
XFILL_0__4677_ gnd vdd FILL
XFILL145050x39750 gnd vdd FILL
X_2283_ \u_mem_serial.req_pending\ _1406_ vdd gnd INVX1
X_3488_ _448_ _352_ _346_ _345_ vdd gnd AOI21X1
X_3068_ \u_rf_if.issue_chunk\[1] _1697_ _1626_ vdd gnd NAND2X1
XFILL_0__2323_ gnd vdd FILL
X_2759_ _200_ _108_ _77_ _2159_ vdd gnd AOI21X1
X_2339_ _1357_ _1360_ rst_bF$buf10 _757_ vdd gnd AOI21X1
X_3700_ _159_ \u_cpu.bufreg.i_init\ \u_cpu.bufreg.i_cnt_done\ _160_ vdd gnd NAND3X1
XFILL_0__4066_ gnd vdd FILL
XFILL_1__3442_ gnd vdd FILL
XFILL_1__4647_ gnd vdd FILL
X_3297_ _2154__bF$buf1 _2062__bF$buf3 _1792_ _1791_ vdd gnd NAND3X1
XFILL_0_BUFX2_insert231 gnd vdd FILL
XFILL_0_BUFX2_insert232 gnd vdd FILL
XFILL_0_BUFX2_insert234 gnd vdd FILL
XFILL_0_BUFX2_insert236 gnd vdd FILL
XFILL_0_BUFX2_insert238 gnd vdd FILL
XFILL_0__3337_ gnd vdd FILL
XFILL_0__3090_ gnd vdd FILL
X_2988_ _739_ _738_ _502_ vdd gnd NOR2X1
X_2568_ \u_mem_serial.active_ibus_bF$buf2\ _846_ _847_ _848_ vdd gnd OAI21X1
XFILL_0__2608_ gnd vdd FILL
X_4714_ ibus_pending_rdt[13] _2007_ vdd gnd INVX1
XFILL_1__3671_ gnd vdd FILL
XFILL_0__2361_ gnd vdd FILL
X_2797_ raddr[7] _102_ vdd gnd INVX1
X_2377_ \u_mem_serial.shift_rx\[10] _1297__bF$buf0 _1330_ vdd gnd NAND2X1
XFILL_0__2417_ gnd vdd FILL
X_4523_ _1876_ _1877__bF$buf5 _1878_ \u_cpu.decode.i_wb_rdt\[12] vdd gnd OAI21X1
X_4103_ \u_cpu.bufreg.data\[14] _957_ vdd gnd INVX1
XFILL_1__3480_ gnd vdd FILL
XFILL_1__4685_ gnd vdd FILL
XFILL_0__3795_ gnd vdd FILL
XFILL_0__3375_ gnd vdd FILL
X_2186_ _782_ i_clk_fast_bF$buf2 \u_mem_serial.shift_rx\[23] vdd gnd DFFPOSX1
XFILL_0__2646_ gnd vdd FILL
X_4752_ rf_read_reg1[2] _1962_ _1895__bF$buf3 _2030_ vdd gnd NAND3X1
X_4332_ \u_cpu.bufreg2.dlo\[9] _1287_ vdd gnd INVX1
X_3603_ \u_cpu.bufreg.data\[0] \u_cpu.state.i_ctrl_misalign\ \u_cpu.mem_if.o_wb_sel\[0] vdd gnd NOR2X1
XFILL_1_BUFX2_insert160 gnd vdd FILL
XFILL_1_BUFX2_insert164 gnd vdd FILL
XFILL_1_BUFX2_insert168 gnd vdd FILL
X_4808_ i_rst_n_bF$buf3 vdd _1856_ clk_sys_bF$buf20 rf_read_reg1[3] vdd 
+ gnd
+ DFFSR
XFILL_0__2455_ gnd vdd FILL
X_4561_ \u_mem_serial.shift_rx\[5] _1906_ vdd gnd INVX1
X_4141_ _877_ clk_sys_bF$buf6 \u_cpu.bufreg.data\[24] vdd gnd DFFPOSX1
XFILL_0__4601_ gnd vdd FILL
X_3832_ _776_ i_clk_fast_bF$buf4 \u_mem_serial.shift_rx\[26] vdd gnd DFFPOSX1
X_3412_ \u_rf_if.stream_cnt_0_bF$buf3\ \u_rf_if.stream_active\ _32__bF$buf2 _26_ vdd gnd OAI21X1
X_4617_ _1877__bF$buf2 _1942_ _1943_ \u_cpu.decode.i_wb_rdt\[19] vdd gnd OAI21X1
XFILL_0__2684_ gnd vdd FILL
X_4790_ _1936_ _1983__bF$buf4 _2052_ _1872_ vdd gnd OAI21X1
X_4370_ \u_cpu.ctrl.pc_plus_offset_cy_r_w\ \u_cpu.ctrl.i_pc_rel\ \u_cpu.ctrl.pc\ _1501_ vdd gnd NAND3X1
X_3641_ rdata0[0] \u_cpu.alu.i_op_b\ _2129_ vdd gnd NAND2X1
X_3221_ _433_ _1738_ _1737_ _571_ vdd gnd AOI21X1
X_4846_ i_rst_n_bF$buf5 vdd _1871_ clk_sys_bF$buf1 ibus_pending_rdt[27] vdd 
+ gnd
+ DFFSR
X_4426_ \u_cpu.ctrl.o_ibus_adr\[30] _1545_ vdd gnd INVX1
X_4006_ _641_ clk_sys_bF$buf45 \u_cpu.immdec.gen_immdec_w_eq_1.imm30_25\[3] vdd gnd DFFPOSX1
XBUFX2_insert210 \u_rf_if.stream_cnt\[1] \u_rf_if.stream_cnt_1_bF$buf0\ vdd gnd BUFX2
XBUFX2_insert211 _665_ _665__bF$buf3 vdd gnd BUFX2
XBUFX2_insert212 _665_ _665__bF$buf2 vdd gnd BUFX2
XBUFX2_insert213 _665_ _665__bF$buf1 vdd gnd BUFX2
XBUFX2_insert214 _665_ _665__bF$buf0 vdd gnd BUFX2
XBUFX2_insert215 _1983_ _1983__bF$buf4 vdd gnd BUFX2
XBUFX2_insert216 _1983_ _1983__bF$buf3 vdd gnd BUFX2
XBUFX2_insert217 _1983_ _1983__bF$buf2 vdd gnd BUFX2
XBUFX2_insert218 _1983_ _1983__bF$buf1 vdd gnd BUFX2
XBUFX2_insert219 _1983_ _1983__bF$buf0 vdd gnd BUFX2
XFILL_0__2493_ gnd vdd FILL
X_2912_ _566_ clk_sys_bF$buf44 \u_rf_if.o_waddr\[3] vdd gnd DFFPOSX1
XFILL_0__3698_ gnd vdd FILL
XFILL_0__3278_ gnd vdd FILL
XFILL_1__2234_ gnd vdd FILL
XFILL_1__3859_ gnd vdd FILL
X_3870_ _370_ clk_sys_bF$buf30 \u_cpu.decode.opcode\[0] vdd gnd DFFPOSX1
X_3450_ \u_rf_if.read_buf0\[28] \u_rf_if.stream_cnt_0_bF$buf4\ _308_ vdd gnd NOR2X1
X_3030_ \u_rf_if.rreg0_latched\[2] \u_rf_if.issue_sel_bF$buf0\ _1600_ _1599_ vdd gnd OAI21X1
XFILL_0__2969_ gnd vdd FILL
X_4655_ current_wdata0_next_hint rf_wdata0_next rf_wdata0_next_to_if vdd gnd OR2X2
X_4235_ mem_dbus_ack_bF$buf4 \u_mem_serial.shift_rx\[29] _1198_ _1210_ _1211_ vdd 
+ gnd
+ AOI22X1
XFILL_1__4397_ gnd vdd FILL
X_2721_ _215__bF$buf2 _226_ rst_bF$buf4 _62_ vdd gnd AOI21X1
X_2301_ _1316__bF$buf4 _1304__bF$buf2 \u_mem_serial.shift_rx\[29] _1392_ vdd gnd OAI21X1
X_3926_ \u_cpu.decode.i_wb_rdt\[15] rreg0[1] rf_rreq_bF$buf6 _697_ vdd gnd MUX2X1
X_3506_ \u_rf_if.read_buf1\[31] _446__bF$buf2 _379_ vdd gnd NOR2X1
XFILL_1__3248_ gnd vdd FILL
XFILL_0__2778_ gnd vdd FILL
XFILL_0__2358_ gnd vdd FILL
X_4464_ _1530__bF$buf2 _1566_ _1567_ _1493_ vdd gnd OAI21X1
X_4044_ \u_cpu.alu.i_cnt0\ _917_ vdd gnd INVX1
XFILL_1__2519_ gnd vdd FILL
X_2950_ \u_rf_if.stream_cnt\[3] _1755_ _32__bF$buf2 _607_ vdd gnd OAI21X1
X_2530_ _982_ _986_ _808_ _987_ vdd gnd AOI21X1
XFILL145050x115350 gnd vdd FILL
X_3735_ rst_bF$buf7 _157_ _181_ vdd gnd NOR2X1
X_3315_ _1808_ _1806_ rst_bF$buf6 _596_ vdd gnd AOI21X1
XFILL_1__2272_ gnd vdd FILL
X_4693_ _1991_ _1992_ _1835_ vdd gnd NOR2X1
XFILL_0__2167_ gnd vdd FILL
X_4273_ _1206_ _1243_ _1240_ _1112_ vdd gnd OAI21X1
XFILL_0__4313_ gnd vdd FILL
XFILL_1__2748_ gnd vdd FILL
X_3964_ rreg1[1] _685_ _723_ vdd gnd NAND2X1
X_3544_ \u_rf_if.stream_cnt_0_bF$buf4\ _446_ vdd gnd INVX8
X_3124_ _1717__bF$buf3 _1803_ \u_rf_if.read_buf0\[21] _1665_ vdd gnd OAI21X1
X_4749_ rf_read_reg1[3] _1962_ _1895__bF$buf3 _2028_ vdd gnd NAND3X1
X_4329_ mem_dbus_ack_bF$buf6 _1281_ _1285_ vdd gnd NOR2X1
XFILL_1__3286_ gnd vdd FILL
XFILL_0__2396_ gnd vdd FILL
X_4082_ \u_cpu.bufreg.data\[21] _892__bF$buf4 _944_ vdd gnd NAND2X1
X_2815_ \u_rf_serial.tx_state\[1] _84_ vdd gnd INVX1
XFILL_0__4542_ gnd vdd FILL
XFILL_1__2557_ gnd vdd FILL
X_3773_ \u_cpu.decode.co_ebreak\ _378_ vdd gnd INVX1
X_3353_ _2154__bF$buf1 _10__bF$buf2 _2088_ _2071_ vdd gnd NAND3X1
X_4558_ ibus_pending_ack_bF$buf2 _1903_ _1904_ vdd gnd NAND2X1
X_4138_ _880_ clk_sys_bF$buf6 \u_cpu.bufreg.data\[22] vdd gnd DFFPOSX1
XFILL_0__3813_ gnd vdd FILL
X_2624_ _59_ i_clk_fast_bF$buf4 \u_rf_serial.last_req_key\[5] vdd gnd DFFPOSX1
X_2204_ _1460_ _1461_ rst_bF$buf3 _791_ vdd gnd AOI21X1
X_3829_ _403_ _404_ \u_cpu.decode.opcode\[2] \u_cpu.decode.co_two_stage_op\ vdd gnd OAI21X1
X_3409_ \u_rf_if.issue_idx\[5] _24_ vdd gnd INVX1
XFILL_1__2786_ gnd vdd FILL
X_3582_ _482_ _478_ _477_ _476_ vdd gnd AOI21X1
X_3162_ _1691_ _1692_ _558_ vdd gnd NOR2X1
X_4787_ mem_ibus_ack_bF$buf2 \u_mem_serial.shift_rx\[27] _1984__bF$buf0 _2051_ vdd gnd NAND3X1
X_4367_ _1115_ clk_sys_bF$buf28 \u_cpu.bufreg2.dlo\[20] vdd gnd DFFPOSX1
XFILL_0__3202_ gnd vdd FILL
XFILL_0__4407_ gnd vdd FILL
X_2853_ _490_ clk_sys_bF$buf44 \u_rf_if.wdata0_r\[0] vdd gnd DFFPOSX1
X_2433_ _1045_ _1083_ _1085_ vdd gnd OR2X2
XFILL_0_BUFX2_insert1 gnd vdd FILL
XFILL_0_BUFX2_insert3 gnd vdd FILL
XFILL_0_BUFX2_insert4 gnd vdd FILL
XFILL_0_BUFX2_insert6 gnd vdd FILL
XFILL_0_BUFX2_insert8 gnd vdd FILL
XFILL_0__4580_ gnd vdd FILL
X_3638_ \u_cpu.alu.i_rd_sel\[0] _2125_ _2120_ _2126_ vdd gnd NAND3X1
X_3218_ _1735_ _32__bF$buf0 _570_ vdd gnd AND2X2
XFILL_1__2595_ gnd vdd FILL
XFILL_1__4321_ gnd vdd FILL
X_3391_ _7_ _6_ vdd gnd INVX1
XBUFX2_insert180 _32_ _32__bF$buf0 vdd gnd BUFX2
XBUFX2_insert181 _1164_ _1164__bF$buf4 vdd gnd BUFX2
XBUFX2_insert182 _1164_ _1164__bF$buf3 vdd gnd BUFX2
XBUFX2_insert183 _1164_ _1164__bF$buf2 vdd gnd BUFX2
XBUFX2_insert184 _1164_ _1164__bF$buf1 vdd gnd BUFX2
XBUFX2_insert185 _1164_ _1164__bF$buf0 vdd gnd BUFX2
XBUFX2_insert186 \u_rf_if.issue_sel\ \u_rf_if.issue_sel_bF$buf3\ vdd gnd BUFX2
XBUFX2_insert187 \u_rf_if.issue_sel\ \u_rf_if.issue_sel_bF$buf2\ vdd gnd BUFX2
XBUFX2_insert188 \u_rf_if.issue_sel\ \u_rf_if.issue_sel_bF$buf1\ vdd gnd BUFX2
XBUFX2_insert189 \u_rf_if.issue_sel\ \u_rf_if.issue_sel_bF$buf0\ vdd gnd BUFX2
X_4596_ ibus_pending_ack_bF$buf2 _1928_ _1929_ \u_cpu.decode.i_wb_rdt\[30] vdd gnd OAI21X1
X_4176_ \u_cpu.alu.i_en\ _1161_ vdd gnd INVX1
X_2909_ _524_ clk_sys_bF$buf18 \u_rf_if.read_buf0\[4] vdd gnd DFFPOSX1
XFILL_0__4216_ gnd vdd FILL
X_2662_ _206_ _205_ _283_ vdd gnd NOR2X1
X_2242_ _1433_ _1434_ rst_bF$buf10 _780_ vdd gnd AOI21X1
X_3867_ _784_ i_clk_fast_bF$buf4 mem_dbus_ack vdd gnd DFFPOSX1
X_3447_ \u_rf_if.read_buf0\[30] \u_rf_if.stream_cnt_0_bF$buf4\ \u_rf_if.stream_cnt_1_bF$buf3\ _305_ vdd gnd OAI21X1
X_3027_ \u_rf_if.issue_sel_bF$buf0\ _1719_ _1597_ vdd gnd NAND2X1
XFILL_0__3907_ gnd vdd FILL
XFILL144450x32550 gnd vdd FILL
XFILL_0__2299_ gnd vdd FILL
XFILL_0__3240_ gnd vdd FILL
X_2718_ ren_bF$buf1 _121_ _228_ _229_ vdd gnd OAI21X1
XFILL_0__4445_ gnd vdd FILL
XFILL_0__4025_ gnd vdd FILL
XFILL_1__3821_ gnd vdd FILL
X_2891_ _578_ clk_sys_bF$buf39 \u_rf_if.read_buf1\[6] vdd gnd DFFPOSX1
X_2471_ _1006_ _1042_ _1046_ _1047_ vdd gnd OAI21X1
X_3676_ \u_cpu.bufreg2.i_bytecnt\[0] \u_cpu.bufreg2.i_bytecnt\[1] _140_ _141_ vdd gnd NAND3X1
X_3256_ _18__bF$buf2 _1764_ \u_rf_if.read_buf1\[8] _1761_ vdd gnd OAI21X1
XFILL_0_BUFX2_insert86 gnd vdd FILL
XFILL_0_BUFX2_insert88 gnd vdd FILL
X_2947_ _547_ clk_sys_bF$buf21 \u_rf_if.read_buf0\[22] vdd gnd DFFPOSX1
X_2527_ _806_ _989_ _807_ _988_ _990_ vdd 
+ gnd
+ OAI22X1
XFILL_0__4254_ gnd vdd FILL
XFILL_1__3210_ gnd vdd FILL
X_2280_ _1406_ _1408_ \u_mem_serial.active_we\ _1409_ vdd gnd OAI21X1
X_3485_ \u_rf_if.read_buf0\[0] _343_ vdd gnd INVX1
X_3065_ _22_ _1624_ _1623_ vdd gnd NOR2X1
XFILL_0__2740_ gnd vdd FILL
XFILL_0__2320_ gnd vdd FILL
XFILL145050x93750 gnd vdd FILL
XFILL_0__3945_ gnd vdd FILL
XFILL_0__3525_ gnd vdd FILL
X_2756_ rst_bF$buf4 _201_ _52_ vdd gnd NOR2X1
X_2336_ _1362_ _1363_ vdd gnd INVX1
XFILL_0__4483_ gnd vdd FILL
XFILL_0__4063_ gnd vdd FILL
X_3294_ _2154__bF$buf1 _2099_ _1792_ _1789_ vdd gnd NAND3X1
XFILL_0_BUFX2_insert200 gnd vdd FILL
XFILL_0_BUFX2_insert202 gnd vdd FILL
XFILL_0_BUFX2_insert204 gnd vdd FILL
XFILL_0_BUFX2_insert206 gnd vdd FILL
XFILL_0_BUFX2_insert208 gnd vdd FILL
X_4499_ _1656_ clk_sys_bF$buf7 \u_cpu.ctrl.pc_plus_4_cy_r_w\ vdd gnd DFFPOSX1
X_4079_ \u_cpu.bufreg.data\[22] _942_ vdd gnd INVX1
XFILL_1__2710_ gnd vdd FILL
XFILL_0__4539_ gnd vdd FILL
X_2985_ rf_wreq _1695_ _32__bF$buf0 _735_ vdd gnd OAI21X1
X_2565_ _809_ _839_ _850_ _851_ vdd gnd AOI21X1
XFILL_0__4292_ gnd vdd FILL
XFILL_0__2605_ gnd vdd FILL
X_4711_ _1899_ _1983__bF$buf2 _2005_ _1840_ vdd gnd OAI21X1
XFILL_0__3563_ gnd vdd FILL
XFILL_0__4768_ gnd vdd FILL
XBUFX2_insert90 ren ren_bF$buf0 vdd gnd BUFX2
XBUFX2_insert91 _1297_ _1297__bF$buf4 vdd gnd BUFX2
XBUFX2_insert92 _1297_ _1297__bF$buf3 vdd gnd BUFX2
XBUFX2_insert93 _1297_ _1297__bF$buf2 vdd gnd BUFX2
XBUFX2_insert94 _1297_ _1297__bF$buf1 vdd gnd BUFX2
XBUFX2_insert95 _1297_ _1297__bF$buf0 vdd gnd BUFX2
XBUFX2_insert96 _1315_ _1315__bF$buf3 vdd gnd BUFX2
XBUFX2_insert97 _1315_ _1315__bF$buf2 vdd gnd BUFX2
XBUFX2_insert98 _1315_ _1315__bF$buf1 vdd gnd BUFX2
XBUFX2_insert99 _1315_ _1315__bF$buf0 vdd gnd BUFX2
X_2794_ \u_rf_serial.tx_state\[0] _84_ _105_ vdd gnd NOR2X1
X_2374_ _1329_ _1332_ rst_bF$buf10 _750_ vdd gnd AOI21X1
X_3999_ _648_ clk_sys_bF$buf3 rreg1[0] vdd gnd DFFPOSX1
X_3579_ \u_rf_if.wdata0_r\[0] _476_ _474_ _473_ vdd gnd OAI21X1
X_3159_ _1690_ _1689_ _44_ _1688_ vdd gnd OAI21X1
X_4520_ ibus_pending_rdt[12] _1876_ vdd gnd INVX1
X_4100_ \u_cpu.bufreg.i_en_bF$buf2\ _954_ _955_ _887_ vdd gnd OAI21X1
XFILL_0__3619_ gnd vdd FILL
XFILL_0__4157_ gnd vdd FILL
XFILL_1__3533_ gnd vdd FILL
X_2183_ gnd o_gpio_oe[2] vdd gnd BUFX2
XFILL_1__4738_ gnd vdd FILL
X_3388_ _4_ _23_ _3_ vdd gnd NAND2X1
XFILL_0__2223_ gnd vdd FILL
XFILL_0__3848_ gnd vdd FILL
X_2659_ _167_ _215__bF$buf3 _202_ _285_ vdd gnd OAI21X1
X_2239_ _1436_ _1310_ _781_ vdd gnd AND2X2
X_3600_ \u_cpu.alu.i_sub\ _1823_ rf_wdata0_next vdd gnd NOR2X1
XFILL_0__4386_ gnd vdd FILL
XFILL_1_BUFX2_insert130 gnd vdd FILL
XFILL_1_BUFX2_insert134 gnd vdd FILL
X_4805_ _752_ i_clk_fast_bF$buf7 \u_mem_serial.shift_rx\[9] vdd gnd DFFPOSX1
X_3197_ \u_rf_if.rreg1_latched\[1] _1719_ vdd gnd INVX1
XFILL_0__3657_ gnd vdd FILL
XFILL_0__3237_ gnd vdd FILL
XFILL145050x25350 gnd vdd FILL
X_2888_ _580_ clk_sys_bF$buf39 \u_rf_if.read_buf1\[7] vdd gnd DFFPOSX1
X_2468_ \u_cpu.bufreg2.dlo\[19] _795_ _845_ \u_cpu.bufreg2.dlo\[17] _1050_ vdd 
+ gnd
+ AOI22X1
XFILL_0__4195_ gnd vdd FILL
XFILL_0__2508_ gnd vdd FILL
X_4614_ _1877__bF$buf2 _1940_ _1941_ \u_cpu.decode.i_wb_rdt\[24] vdd gnd OAI21X1
XFILL_1__3571_ gnd vdd FILL
XFILL_1__4776_ gnd vdd FILL
XFILL_0__2261_ gnd vdd FILL
X_2697_ _246_ _245_ _247_ _248_ _249_ vdd 
+ gnd
+ AOI22X1
X_2277_ _1411_ _1409_ rst_bF$buf7 _768_ vdd gnd AOI21X1
XFILL_0__2737_ gnd vdd FILL
X_4843_ i_rst_n_bF$buf2 vdd _1874_ clk_sys_bF$buf15 ibus_pending_rdt[24] vdd 
+ gnd
+ DFFSR
X_4423_ _1543_ _1531_ _1542_ _1535_ _1476_ vdd 
+ gnd
+ OAI22X1
X_4003_ _644_ clk_sys_bF$buf23 \u_cpu.immdec.gen_immdec_w_eq_1.imm30_25\[0] vdd gnd DFFPOSX1
XFILL_1__4165_ gnd vdd FILL
XFILL_0__3275_ gnd vdd FILL
XFILL_1__3016_ gnd vdd FILL
XFILL_0__2546_ gnd vdd FILL
X_4652_ rf_read_reg0[4] _1966_ vdd gnd INVX1
X_4232_ _1133_ _1207_ mem_dbus_ack_bF$buf4 _1208_ vdd gnd AOI21X1
XFILL_0_BUFX2_insert170 gnd vdd FILL
XFILL_0_BUFX2_insert172 gnd vdd FILL
XFILL_0_BUFX2_insert174 gnd vdd FILL
XFILL_0_BUFX2_insert175 gnd vdd FILL
XFILL_0_BUFX2_insert177 gnd vdd FILL
XFILL_0_BUFX2_insert179 gnd vdd FILL
X_3923_ \u_cpu.decode.i_wb_rdt\[16] rreg0[2] rf_rreq_bF$buf6 _695_ vdd gnd MUX2X1
X_3503_ _448_ _374_ \u_rf_if.stream_cnt\[3] _364_ vdd gnd OAI21X1
X_4708_ \u_mem_serial.shift_rx\[16] mem_ibus_ack_bF$buf3 _1984__bF$buf3 _2004_ vdd gnd NAND3X1
XFILL_0__2775_ gnd vdd FILL
X_4461_ _1530__bF$buf3 _1564_ _1565_ _1492_ vdd gnd OAI21X1
X_4041_ \u_cpu.bufreg.i_en_bF$buf4\ \u_cpu.bufreg.data\[3] _915_ vdd gnd NAND2X1
X_3732_ \u_cpu.bne_or_bge\ _178_ vdd gnd INVX1
X_3312_ _1805_ _1804_ rst_bF$buf6 _595_ vdd gnd AOI21X1
X_4517_ _1488_ clk_sys_bF$buf9 \u_cpu.ctrl.o_ibus_adr\[15] vdd gnd DFFPOSX1
XFILL_1__3894_ gnd vdd FILL
XFILL_1__3054_ gnd vdd FILL
XFILL_0__2584_ gnd vdd FILL
X_4690_ _1908_ _1983__bF$buf2 _1990_ _1834_ vdd gnd OAI21X1
X_4270_ _1130_ _1133_ \u_cpu.bufreg.i_shamt\[1] _1241_ vdd gnd OAI21X1
XFILL_0__3789_ gnd vdd FILL
XFILL145050x136950 gnd vdd FILL
XFILL_0__4730_ gnd vdd FILL
XFILL_1__2325_ gnd vdd FILL
X_3961_ rreg1[2] _685_ _721_ vdd gnd NAND2X1
X_3541_ \u_rf_if.read_buf1\[15] _446__bF$buf1 _443_ vdd gnd NOR2X1
X_3121_ _1717__bF$buf3 _1803_ \u_rf_if.read_buf0\[20] _1663_ vdd gnd OAI21X1
X_4746_ ibus_pending_rdt[0] _2026_ vdd gnd INVX1
X_4326_ mem_dbus_ack_bF$buf6 \u_mem_serial.shift_rx\[11] _1172__bF$buf2 _1282_ _1283_ vdd 
+ gnd
+ AOI22X1
XFILL_1__4068_ gnd vdd FILL
X_2812_ \u_rf_serial.tx_state\[2] _87_ vdd gnd INVX1
XFILL_0__3178_ gnd vdd FILL
XFILL_1__2974_ gnd vdd FILL
XFILL_1__3339_ gnd vdd FILL
XFILL_1__4700_ gnd vdd FILL
X_3770_ \u_cpu.branch_op\ \u_cpu.decode.opcode\[2] _375_ vdd gnd NAND2X1
X_3350_ rdata[0] _2090_ _2101_ _2069_ vdd gnd NAND3X1
XFILL_0__2449_ gnd vdd FILL
X_4555_ _1894_ \u_cpu.decode.i_wb_rdt\[15] _1897_ _1902_ vdd gnd NAND3X1
X_4135_ _883_ clk_sys_bF$buf11 \u_cpu.bufreg.data\[19] vdd gnd DFFPOSX1
XFILL_1__3092_ gnd vdd FILL
XFILL_0__3810_ gnd vdd FILL
X_2621_ \u_mem_serial.bit_count_0_bF$buf0\ \u_mem_serial.bit_count\[1] _795_ vdd gnd NOR2X1
X_2201_ _1463_ _1418_ rst_bF$buf5 _792_ vdd gnd AOI21X1
X_3826_ \u_cpu.branch_op\ \u_cpu.decode.opcode\[2] \u_cpu.dbus_en\ vdd gnd NOR2X1
X_3406_ \u_rf_if.issue_chunk\[1] \u_rf_if.issue_chunk\[2] _21_ vdd gnd NOR2X1
XFILL_1__2363_ gnd vdd FILL
XFILL144150x10950 gnd vdd FILL
XFILL_0__2678_ gnd vdd FILL
X_4784_ _1930_ _1983__bF$buf4 _2049_ _1869_ vdd gnd OAI21X1
X_4364_ _1118_ clk_sys_bF$buf4 \u_cpu.bufreg2.dlo\[17] vdd gnd DFFPOSX1
X_2850_ _599_ clk_sys_bF$buf10 \u_rf_if.read_buf1\[26] vdd gnd DFFPOSX1
X_2430_ _840_ \u_mem_serial.active_ibus_bF$buf0\ \u_mem_serial.active_we\ _845_ _1088_ vdd 
+ gnd
+ AOI22X1
X_3635_ \u_cpu.alu.i_sub\ \u_cpu.alu.i_op_b\ _2123_ vdd gnd NAND2X1
X_3215_ \u_cpu.o_wen0\ _484__bF$buf3 _32__bF$buf4 _1733_ vdd gnd OAI21X1
XFILL_1__3377_ gnd vdd FILL
XBUFX2_insert150 _1984_ _1984__bF$buf1 vdd gnd BUFX2
XBUFX2_insert151 _1984_ _1984__bF$buf0 vdd gnd BUFX2
XFILL_0__2487_ gnd vdd FILL
X_4593_ _1877__bF$buf0 _1926_ _1927_ \u_cpu.decode.i_wb_rdt\[23] vdd gnd OAI21X1
X_4173_ _1156_ _1157_ _1155_ _1158_ vdd gnd OAI21X1
X_2906_ _488_ clk_sys_bF$buf27 \u_rf_if.rcnt\[2] vdd gnd DFFPOSX1
X_3864_ _363_ clk_sys_bF$buf31 \u_cpu.decode.co_ebreak\ vdd gnd DFFPOSX1
X_3444_ _303_ _309_ _302_ vdd gnd NOR2X1
X_3024_ _1697_ _1596_ _1595_ _514_ vdd gnd AOI21X1
X_4649_ rf_read_reg1[4] _1964_ vdd gnd INVX1
X_4229_ _1131_ _1201_ _1205_ _1106_ vdd gnd OAI21X1
XFILL_0__3904_ gnd vdd FILL
X_2715_ _207_ _205_ _231_ vdd gnd NAND2X1
X_3673_ \u_cpu.decode.co_two_stage_op\ _138_ _139_ vdd gnd NAND2X1
X_3253_ _1810_ _2152__bF$buf1 _1759_ vdd gnd NAND2X1
X_4458_ _1530__bF$buf1 _1562_ _1563_ _1491_ vdd gnd OAI21X1
X_4038_ \u_cpu.bufreg.data\[3] _892__bF$buf3 _913_ vdd gnd NAND2X1
XFILL_0__3713_ gnd vdd FILL
X_2944_ _516_ clk_sys_bF$buf17 raddr[7] vdd gnd DFFPOSX1
X_2524_ \u_mem_serial.active_ibus_bF$buf1\ _992_ _993_ vdd gnd NAND2X1
X_3729_ \u_cpu.bufreg.i_init\ \u_cpu.bufreg.i_cnt_done\ _175_ vdd gnd NAND2X1
X_3309_ _5_ _2091_ _2089_ _1801_ vdd gnd NOR3X1
X_3482_ \u_rf_if.read_buf0\[2] _340_ vdd gnd INVX1
X_3062_ _1717__bF$buf3 _1749_ \u_rf_if.read_buf0\[5] _1621_ vdd gnd OAI21X1
X_4687_ _1942_ _1983__bF$buf3 _1989_ _1832_ vdd gnd OAI21X1
X_4267_ \u_cpu.bufreg.i_shamt\[1] _1210_ _1198_ _1239_ vdd gnd NAND3X1
XFILL_0__3942_ gnd vdd FILL
XFILL_0__3522_ gnd vdd FILL
XFILL_0__3102_ gnd vdd FILL
XFILL_0__4727_ gnd vdd FILL
XFILL_0__4307_ gnd vdd FILL
X_2753_ \u_rf_serial.tx_state\[3] _88_ _204_ vdd gnd NOR2X1
X_2333_ _1316__bF$buf1 _1304__bF$buf0 \u_mem_serial.shift_rx\[2] _1365_ vdd gnd OAI21X1
X_3958_ rreg1[3] _685_ _719_ vdd gnd NAND2X1
X_3538_ _448_ _441_ _440_ vdd gnd NOR2X1
X_3118_ _1717__bF$buf3 _1794_ \u_rf_if.read_buf0\[19] _1661_ vdd gnd OAI21X1
X_3291_ _18__bF$buf4 _1788_ \u_rf_if.read_buf1\[17] _1787_ vdd gnd OAI21X1
X_4496_ _1484_ clk_sys_bF$buf35 \u_cpu.ctrl.o_ibus_adr\[30] vdd gnd DFFPOSX1
X_4076_ _916_ _920_ _938_ _940_ _878_ vdd 
+ gnd
+ AOI22X1
XFILL_0__3751_ gnd vdd FILL
X_2809_ _88_ _89_ _90_ vdd gnd AND2X2
X_2982_ \u_rf_if.write_wait\[3] _1703_ _734_ _625_ vdd gnd AOI21X1
X_2562_ \u_cpu.ctrl.o_ibus_adr\[10] _854_ vdd gnd INVX1
X_3767_ \u_cpu.decode.co_mem_signed\ _371_ _372_ _373_ vdd gnd NAND3X1
X_3347_ _2067_ _2070_ rst_bF$buf9 _601_ vdd gnd AOI21X1
XFILL_1__4030_ gnd vdd FILL
XFILL_0__3980_ gnd vdd FILL
XFILL_0__3560_ gnd vdd FILL
XFILL_0__3140_ gnd vdd FILL
X_2618_ \u_mem_serial.bit_count_0_bF$buf3\ _798_ vdd gnd INVX4
XFILL_0__4765_ gnd vdd FILL
XFILL_1__3301_ gnd vdd FILL
X_2791_ _107_ _96_ _83_ _108_ vdd gnd OAI21X1
X_2371_ _1334_ _1335_ vdd gnd INVX1
X_3996_ _651_ clk_sys_bF$buf27 \u_cpu.immdec.gen_immdec_w_eq_1.imm11_7\[1] vdd gnd DFFPOSX1
X_3576_ \u_rf_if.wdata1_r\[0] _471_ _470_ vdd gnd NAND2X1
X_3156_ _10__bF$buf0 _1715__bF$buf2 _2068_ _1686_ vdd gnd NAND3X1
XFILL_0__2411_ gnd vdd FILL
X_2847_ _539_ clk_sys_bF$buf21 \u_rf_if.read_buf0\[15] vdd gnd DFFPOSX1
X_2427_ \u_cpu.mem_if.o_wb_sel\[1] _1091_ vdd gnd INVX1
XFILL_0__4154_ gnd vdd FILL
XFILL_1__2169_ gnd vdd FILL
X_2180_ gnd o_gpio_oe[5] vdd gnd BUFX2
X_3385_ _10__bF$buf3 _0_ _2162_ vdd gnd NAND2X1
XFILL_0__3425_ gnd vdd FILL
XFILL_0__3005_ gnd vdd FILL
XFILL_1__2801_ gnd vdd FILL
X_2656_ _98_ _210_ _287_ vdd gnd NAND2X1
X_2236_ _1437_ _1438_ rst_bF$buf10 _782_ vdd gnd AOI21X1
XFILL_1_BUFX2_insert103 gnd vdd FILL
XFILL_1_BUFX2_insert107 gnd vdd FILL
X_4802_ _1860_ i_clk_fast_bF$buf0 clk_div[2] vdd gnd DFFPOSX1
XFILL_1__4544_ gnd vdd FILL
X_3194_ \u_rf_if.issue_sel_bF$buf3\ \u_rf_if.prefetch_active\ _19_ _1717_ vdd gnd NAND3X1
X_4399_ \u_cpu.ctrl.i_jal_or_jalr\ _1527_ _1528_ vdd gnd NAND2X1
XFILL_1__2610_ gnd vdd FILL
XFILL_0__4439_ gnd vdd FILL
XFILL_0__4019_ gnd vdd FILL
X_2885_ _606_ clk_sys_bF$buf29 \u_rf_if.stream_cnt\[2] vdd gnd DFFPOSX1
X_2465_ _845_ \u_cpu.bufreg2.dlo\[21] \u_cpu.bufreg2.dlo\[22] _1048_ _1053_ vdd 
+ gnd
+ AOI22X1
XFILL_0__4192_ gnd vdd FILL
X_4611_ _1877__bF$buf1 _1938_ _1939_ \u_cpu.decode.i_wb_rdt\[25] vdd gnd OAI21X1
XFILL145050x46950 gnd vdd FILL
XFILL_0__3883_ gnd vdd FILL
XFILL_0__3463_ gnd vdd FILL
XFILL_0__3043_ gnd vdd FILL
XFILL_0__4668_ gnd vdd FILL
X_2694_ ren_bF$buf4 raddr[5] _252_ vdd gnd NAND2X1
X_2274_ _853_ _1297__bF$buf4 _1316__bF$buf4 \u_mem_serial.bit_count\[3] _1413_ vdd 
+ gnd
+ AOI22X1
XFILL_1__4409_ gnd vdd FILL
X_3899_ \u_cpu.immdec.gen_immdec_w_eq_1.imm31\ \u_cpu.decode.co_immdec_ctrl\[1] _675_ _676_ vdd gnd NAND3X1
X_3479_ _341_ _338_ _445_ _337_ vdd gnd MUX2X1
X_3059_ _1717__bF$buf3 _1749_ \u_rf_if.read_buf0\[4] _1619_ vdd gnd OAI21X1
XFILL144750x28950 gnd vdd FILL
X_4840_ _1826_ i_clk_fast_bF$buf5 clk_div[3] vdd gnd DFFPOSX1
XFILL_0__2314_ gnd vdd FILL
X_4420_ \u_cpu.ctrl.o_ibus_adr\[25] _1542_ vdd gnd INVX1
X_4000_ _647_ clk_sys_bF$buf3 rreg1[1] vdd gnd DFFPOSX1
XFILL_1__4582_ gnd vdd FILL
XFILL_0__3692_ gnd vdd FILL
XFILL_0__4477_ gnd vdd FILL
XFILL_0__4057_ gnd vdd FILL
XFILL_1__4218_ gnd vdd FILL
X_3288_ _1785_ _1787_ rst_bF$buf9 _590_ vdd gnd AOI21X1
XFILL_0__2963_ gnd vdd FILL
XFILL_0_BUFX2_insert141 gnd vdd FILL
XFILL_0_BUFX2_insert143 gnd vdd FILL
XFILL_0_BUFX2_insert145 gnd vdd FILL
XFILL_0_BUFX2_insert147 gnd vdd FILL
XFILL_0_BUFX2_insert149 gnd vdd FILL
XFILL_0__3328_ gnd vdd FILL
XFILL_0__3081_ gnd vdd FILL
XFILL_1__3909_ gnd vdd FILL
X_2979_ _1703_ _624_ _623_ vdd gnd AND2X2
X_2559_ \u_mem_serial.bit_count_0_bF$buf2\ _856_ _855_ _857_ vdd gnd NAND3X1
X_3920_ \u_cpu.decode.i_wb_rdt\[17] rreg0[3] rf_rreq_bF$buf4 _693_ vdd gnd MUX2X1
X_3500_ \u_rf_if.read_buf1\[17] \u_rf_if.stream_cnt_0_bF$buf0\ _357_ vdd gnd NAND2X1
X_4705_ _1922_ _1983__bF$buf0 _2002_ _1837_ vdd gnd OAI21X1
XFILL_1__4447_ gnd vdd FILL
X_3097_ rf_read_reg0_to_if[4] _1722_ _32__bF$buf0 _1645_ vdd gnd OAI21X1
XFILL_0__2352_ gnd vdd FILL
X_2788_ _91_ raddr[5] _110_ _111_ vdd gnd OAI21X1
X_2368_ _1316__bF$buf3 _1304__bF$buf3 \u_mem_serial.shift_rx\[9] _1337_ vdd gnd OAI21X1
XFILL_0__4095_ gnd vdd FILL
XFILL_0__2828_ gnd vdd FILL
X_4514_ _1476_ clk_sys_bF$buf19 \u_cpu.ctrl.o_ibus_adr\[24] vdd gnd DFFPOSX1
XFILL_1__4256_ gnd vdd FILL
XFILL_0__3786_ gnd vdd FILL
XFILL_0__3366_ gnd vdd FILL
XFILL_1__3947_ gnd vdd FILL
XFILL_1__3107_ gnd vdd FILL
X_2597_ _809_ _815_ _818_ _819_ vdd gnd AOI21X1
X_2177_ gnd o_gpio[0] vdd gnd BUFX2
X_4743_ ibus_pending_rdt[1] _2024_ vdd gnd INVX1
XFILL_0__2217_ gnd vdd FILL
X_4323_ _1278_ _1164__bF$buf3 _1280_ _1125_ vdd gnd OAI21X1
XFILL_1__4485_ gnd vdd FILL
XFILL_0__2390_ gnd vdd FILL
XFILL_1__2971_ gnd vdd FILL

.ends
.end
