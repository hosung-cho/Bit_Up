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

.subckt my_mcu_top vdd gnd i_clk_fast i_clk_sys_ext i_rst_n o_mem_sync o_mem_sck
+ o_mem_mosi i_mem_miso 

X_1677_ _971_ _980_ _976_ _871_ vdd gnd OAI21X1
X_1257_ _626_ _625_ _624_ vdd gnd NOR2X1
X_1486_ \u_mem_serial.shift_reg\[27] \u_cpu.immdec.gen_immdec_w_eq_1.imm30_25\[3] mem_ibus_ack _421_ vdd gnd MUX2X1
X_1295_ _636_ _653_ \u_cpu.immdec.gen_immdec_w_eq_1.imm31\ _586_ vdd gnd OAI21X1
X_2712_ _843_ i_clk_sys_ext \u_cpu.bufreg2.dlo\[23] vdd gnd DFFPOSX1
X_2521_ _934_ i_clk_sys_ext \u_cpu.bufreg.i_sh_signed\ vdd gnd DFFPOSX1
X_2101_ \u_rf_if.read_buf0\[13] _1174_ _58_ vdd gnd NOR2X1
X_1389_ mem_ibus_ack \u_mem_serial.shift_reg\[5] _496_ vdd gnd NAND2X1
X_2750_ _881_ i_clk_sys_ext \u_cpu.bufreg.data\[3] vdd gnd DFFPOSX1
X_2330_ _227_ \u_mem_serial.bit_count\[5] _229_ _230_ vdd gnd AOI21X1
X_1601_ _339_ _338_ _597_ _892_ vdd gnd MUX2X1
X_1830_ _1096_ _1097_ _1091_ _835_ vdd gnd MUX2X1
X_1410_ _481_ _480_ _492_ _941_ vdd gnd AOI21X1
X_2615_ _752_ i_clk_sys_ext \u_rf_if.read_buf0\[24] vdd gnd DFFPOSX1
X_2424_ _195_ _295_ _296_ _297_ vdd gnd OAI21X1
X_2004_ \u_rf_if.rtrig1\ _1231_ vdd gnd INVX1
X_2653_ _785_ i_clk_sys_ext \u_rf_if.stream_cnt\[4] vdd gnd DFFPOSX1
X_2233_ _503_ _148_ _149_ vdd gnd NOR2X1
X_1924_ raddr[7] ren _1149_ _1159_ _1160_ vdd 
+ gnd
+ AOI22X1
X_1504_ _416_ _413_ _407_ _920_ vdd gnd AOI21X1
X_2709_ _840_ i_clk_sys_ext \u_cpu.ctrl.o_ibus_adr\[25] vdd gnd DFFPOSX1
X_2462_ _326_ \u_cpu.state.ibus_cyc\ _492_ _327_ vdd gnd AOI21X1
X_2042_ _1235_ \u_rf_if.i_stream_rs2_en\ _19_ vdd gnd AND2X2
X_1733_ \u_cpu.bufreg2.dlo\[16] _1013_ _1026_ vdd gnd NOR2X1
X_1313_ \u_rf_if.stream_active\ _568_ vdd gnd INVX1
X_2518_ _931_ i_clk_sys_ext rreg0[1] vdd gnd DFFPOSX1
X_2691_ _823_ i_clk_sys_ext \u_cpu.ctrl.o_ibus_adr\[8] vdd gnd DFFPOSX1
X_2271_ _142_ _183_ _184_ vdd gnd NOR2X1
X_1962_ _461_ _1195_ _492_ _799_ vdd gnd AOI21X1
X_1542_ \u_mem_serial.shift_reg\[31] _376_ vdd gnd INVX1
X_2747_ _878_ i_clk_sys_ext \u_cpu.bufreg.data\[29] vdd gnd DFFPOSX1
X_2327_ _172_ _227_ vdd gnd INVX1
X_2080_ _41_ _1175_ _44_ _771_ vdd gnd AOI21X1
XFILL98250x79350 gnd vdd FILL
X_1771_ mem_dbus_ack \u_cpu.bufreg2.dlo\[9] _1055_ _1056_ vdd gnd OAI21X1
X_1351_ \u_cpu.alu.cmp_r\ _531_ vdd gnd INVX1
X_2556_ _716_ i_clk_fast mem_dbus_ack vdd gnd DFFPOSX1
X_2136_ _76_ _1175_ _80_ _751_ vdd gnd AOI21X1
X_1827_ \u_cpu.ctrl.o_ibus_adr\[21] _1096_ vdd gnd INVX1
X_1407_ _483_ _487_ _482_ vdd gnd NAND2X1
X_1580_ \u_cpu.bufreg.data\[24] _348_ vdd gnd INVX1
X_2365_ \u_cpu.bufreg2.dlo\[17] _185_ _184_ \u_mem_serial.shift_reg\[16] _248_ vdd 
+ gnd
+ AOI22X1
X_1636_ _651_ _647_ \u_cpu.branch_op\ _723_ vdd gnd OAI21X1
X_2594_ _692_ i_clk_fast \u_mem_serial.shift_reg\[14] vdd gnd DFFPOSX1
X_2174_ _1238_ _1197_ _1221_ _107_ vdd gnd OAI21X1
X_1865_ \u_cpu.ctrl.o_ibus_adr\[2] _1115_ vdd gnd INVX1
X_1445_ _454_ _465_ _453_ vdd gnd NOR2X1
XFILL98550x32550 gnd vdd FILL
X_1674_ _611_ _977_ _618_ _978_ vdd gnd OAI21X1
X_1254_ \u_cpu.bufreg2.i_bytecnt\[1] _627_ vdd gnd INVX1
X_2459_ _627_ _623_ \u_cpu.state.init_done\ _325_ vdd gnd OAI21X1
X_2039_ _1171_ _1189_ _16_ _784_ vdd gnd OAI21X1
X_1483_ \u_mem_serial.shift_reg\[28] \u_cpu.immdec.gen_immdec_w_eq_1.imm30_25\[4] mem_ibus_ack _423_ vdd gnd MUX2X1
X_2688_ _820_ i_clk_sys_ext \u_cpu.ctrl.o_ibus_adr\[5] vdd gnd DFFPOSX1
X_2268_ \u_mem_serial.state\[1] _180_ _181_ vdd gnd NOR2X1
X_1959_ \u_rf_if.rreg1_latched\[3] _561_ _1193_ vdd gnd NAND2X1
X_1539_ _384_ _378_ vdd gnd INVX1
X_1292_ rf_wreg0_to_if[0] _589_ vdd gnd INVX1
X_2497_ _911_ i_clk_sys_ext rreg0[4] vdd gnd DFFPOSX1
X_2077_ _568_ \u_rf_if.read_buf0\[5] \u_rf_if.read_buf0\[6] _1171_ _43_ vdd 
+ gnd
+ OAI22X1
X_1768_ _1013_ _1052_ _1053_ _853_ vdd gnd AOI21X1
X_1348_ _566_ _549_ _534_ vdd gnd NOR2X1
X_1997_ _1224_ _1222_ _791_ vdd gnd NOR2X1
X_1577_ _351_ _350_ _597_ _904_ vdd gnd MUX2X1
X_1386_ mem_ibus_ack _634_ _498_ _947_ vdd gnd OAI21X1
X_2612_ _749_ i_clk_sys_ext \u_rf_if.read_buf0\[27] vdd gnd DFFPOSX1
X_2421_ _1158_ _217_ _294_ vdd gnd OR2X2
X_2001_ \u_rf_if.o_waddr\[2] \u_rf_if.o_waddr\[1] _1228_ vdd gnd NOR2X1
X_1289_ \u_cpu.bufreg2.i_op_b_sel\ _592_ vdd gnd INVX1
X_2650_ _696_ i_clk_fast \u_mem_serial.shift_reg\[10] vdd gnd DFFPOSX1
X_2230_ _140_ _145_ \u_mem_serial.req_pending\ _146_ vdd gnd OAI21X1
X_1921_ ren _380_ _1157_ vdd gnd NOR2X1
X_1501_ _410_ _409_ vdd gnd INVX1
X_2706_ _837_ i_clk_sys_ext \u_cpu.ctrl.o_ibus_adr\[22] vdd gnd DFFPOSX1
X_1730_ _1013_ _1022_ _1023_ _861_ vdd gnd AOI21X1
X_1310_ _572_ _571_ vdd gnd INVX1
X_2515_ _928_ i_clk_sys_ext \u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20\[2] vdd gnd DFFPOSX1
X_2744_ _874_ i_clk_sys_ext \u_cpu.bufreg.data\[31] vdd gnd DFFPOSX1
X_2324_ _198_ _200_ _225_ _708_ vdd gnd AOI21X1
X_2553_ _682_ i_clk_fast \u_mem_serial.shift_reg\[24] vdd gnd DFFPOSX1
X_2133_ _568_ \u_rf_if.read_buf0\[25] \u_rf_if.read_buf0\[26] _1171_ _79_ vdd 
+ gnd
+ OAI22X1
X_1824_ _1093_ _1094_ _1091_ _838_ vdd gnd MUX2X1
X_1404_ _486_ _485_ vdd gnd INVX1
X_2609_ _746_ i_clk_sys_ext \u_rf_if.stream_cnt\[0] vdd gnd DFFPOSX1
X_2362_ _445_ _246_ _179_ _691_ vdd gnd MUX2X1
X_1633_ \u_cpu.bufreg.data\[31] _669_ vdd gnd INVX1
X_2418_ _179_ _291_ _292_ vdd gnd NOR2X1
X_2591_ _737_ i_clk_sys_ext \u_rf_if.issue_idx\[0] vdd gnd DFFPOSX1
X_2171_ _105_ _102_ _741_ vdd gnd NOR2X1
X_1862_ _1112_ _1113_ _1091_ _819_ vdd gnd MUX2X1
X_1442_ _561_ _457_ _456_ vdd gnd NOR2X1
X_2647_ _782_ i_clk_sys_ext \u_rf_if.rcnt\[1] vdd gnd DFFPOSX1
X_2227_ i_clk_sys_ext _142_ _143_ vdd gnd NAND2X1
X_1918_ ren raddr[6] _1149_ _1153_ _1154_ vdd 
+ gnd
+ AOI22X1
X_1671_ _617_ _971_ _975_ _974_ _872_ vdd 
+ gnd
+ AOI22X1
X_1251_ _633_ _631_ \u_cpu.decode.opcode\[2] _630_ vdd gnd OAI21X1
X_2456_ _655_ _490_ _323_ vdd gnd NOR2X1
X_2036_ _1184_ _1180_ _14_ _15_ vdd gnd AOI21X1
X_1727_ mem_dbus_ack _457_ _1021_ vdd gnd NAND2X1
X_1307_ _581_ _641_ _575_ _574_ vdd gnd AOI21X1
X_1480_ \u_mem_serial.shift_reg\[29] \u_cpu.immdec.gen_immdec_w_eq_1.imm30_25\[5] mem_ibus_ack _425_ vdd gnd MUX2X1
X_2685_ _817_ i_clk_sys_ext \u_cpu.ctrl.o_ibus_adr\[2] vdd gnd DFFPOSX1
X_2265_ \u_mem_serial.state\[0] _177_ _178_ vdd gnd NAND2X1
X_1956_ _1190_ _1191_ vdd gnd INVX1
X_1536_ rf_wreg0_to_if[1] _380_ vdd gnd INVX1
X_2494_ _909_ i_clk_sys_ext \u_cpu.immdec.gen_immdec_w_eq_1.imm30_25\[5] vdd gnd DFFPOSX1
X_2074_ \u_rf_if.read_buf0\[5] _41_ vdd gnd INVX1
X_1765_ mem_dbus_ack _1050_ _1051_ vdd gnd NAND2X1
X_1345_ _562_ _539_ _537_ vdd gnd NAND2X1
X_1994_ _1221_ _1222_ vdd gnd INVX1
X_1574_ \u_cpu.bufreg.data\[27] _351_ vdd gnd INVX1
X_2359_ \u_cpu.bufreg2.dlo\[14] _185_ _184_ \u_mem_serial.shift_reg\[13] _245_ vdd 
+ gnd
+ AOI22X1
X_1383_ _525_ _524_ _500_ _499_ vdd gnd AOI21X1
X_2588_ \u_cpu.branch_op\ _655_ vdd gnd INVX1
X_2168_ \u_rf_if.rcnt\[0] \u_rf_if.rcnt\[2] \u_rf_if.rcnt\[1] _103_ vdd gnd NAND3X1
X_1859_ \u_cpu.ctrl.o_ibus_adr\[5] _1112_ vdd gnd INVX1
X_1439_ _470_ _465_ _459_ _933_ vdd gnd AOI21X1
X_2397_ _217_ _273_ _405_ _258_ _274_ vdd 
+ gnd
+ OAI22X1
X_1668_ _474_ _965_ _619_ _973_ vdd gnd NAND3X1
X_1248_ _634_ _636_ _633_ vdd gnd NOR2X1
X_1897_ \u_rf_if.issue_idx\[5] _1135_ vdd gnd INVX1
X_1477_ \u_cpu.immdec.gen_immdec_w_eq_1.imm30_25\[4] _428_ vdd gnd INVX1
X_1286_ _640_ _596_ _595_ vdd gnd NOR2X1
X_2703_ _834_ i_clk_sys_ext \u_cpu.ctrl.o_ibus_adr\[19] vdd gnd DFFPOSX1
X_2512_ _925_ i_clk_sys_ext \u_cpu.immdec.gen_immdec_w_eq_1.imm30_25\[4] vdd gnd DFFPOSX1
X_2741_ _871_ i_clk_sys_ext \u_cpu.bufreg2.dhi\[4] vdd gnd DFFPOSX1
X_2321_ _142_ _165_ \u_mem_serial.bit_count\[2] _224_ vdd gnd OAI21X1
X_2550_ _711_ i_clk_fast \u_mem_serial.bit_count\[1] vdd gnd DFFPOSX1
X_2130_ _568_ \u_rf_if.read_buf0\[24] \u_rf_if.read_buf0\[23] _1174_ _77_ vdd 
+ gnd
+ OAI22X1
X_1821_ \u_cpu.ctrl.o_ibus_adr\[24] _1093_ vdd gnd INVX1
X_1401_ _490_ _489_ _637_ _488_ vdd gnd AOI21X1
X_2606_ _745_ i_clk_sys_ext \u_rf_if.stream_cnt\[1] vdd gnd DFFPOSX1
X_1630_ _664_ _640_ _667_ _879_ vdd gnd MUX2X1
X_2415_ _288_ _202_ _217_ _289_ vdd gnd OAI21X1
X_2644_ _776_ i_clk_sys_ext \u_rf_if.read_buf0\[0] vdd gnd DFFPOSX1
X_2224_ _1239_ _1231_ _139_ _140_ vdd gnd OAI21X1
X_1915_ ren raddr[4] _1149_ _1150_ _1151_ vdd 
+ gnd
+ AOI22X1
X_2453_ _627_ _623_ \u_cpu.ctrl.i_jump\ _320_ vdd gnd OAI21X1
X_2033_ _1180_ _1184_ _11_ _12_ vdd gnd OAI21X1
X_1724_ mem_dbus_ack \u_cpu.bufreg2.dlo\[19] _1018_ _1019_ vdd gnd OAI21X1
X_1304_ \u_cpu.state.o_cnt\[2] _578_ _577_ vdd gnd NOR2X1
X_2509_ _923_ i_clk_sys_ext \u_cpu.immdec.gen_immdec_w_eq_1.imm30_25\[2] vdd gnd DFFPOSX1
X_2682_ _814_ i_clk_sys_ext \u_cpu.ctrl.o_ibus_adr\[27] vdd gnd DFFPOSX1
X_2262_ \u_mem_serial.bit_count\[1] _175_ vdd gnd INVX1
X_1953_ _568_ _1187_ _1178_ _1188_ vdd gnd OAI21X1
X_1533_ _561_ _383_ _382_ vdd gnd NAND2X1
X_2738_ _811_ i_clk_sys_ext \u_cpu.ctrl.o_ibus_adr\[28] vdd gnd DFFPOSX1
X_2318_ _166_ _222_ vdd gnd INVX1
XFILL98250x86550 gnd vdd FILL
X_2491_ _907_ i_clk_sys_ext \u_cpu.immdec.gen_immdec_w_eq_1.imm11_7\[4] vdd gnd DFFPOSX1
X_2071_ \u_rf_if.read_buf0\[4] _39_ vdd gnd INVX1
X_1762_ \u_cpu.bufreg2.dlo\[10] _1013_ _1049_ vdd gnd NOR2X1
X_1342_ _543_ _549_ _540_ vdd gnd NAND2X1
X_2547_ _681_ i_clk_fast \u_mem_serial.shift_reg\[25] vdd gnd DFFPOSX1
X_2127_ _568_ \u_rf_if.read_buf0\[23] \u_rf_if.read_buf0\[24] _1171_ _75_ vdd 
+ gnd
+ OAI22X1
XFILL98550x7350 gnd vdd FILL
X_1818_ _1090_ _1089_ _1091_ _841_ vdd gnd MUX2X1
X_1991_ _1136_ _1208_ _1220_ _793_ vdd gnd AOI21X1
X_1571_ \u_cpu.bufreg.data\[28] _353_ vdd gnd INVX1
X_2356_ _1038_ _243_ _179_ _694_ vdd gnd MUX2X1
X_1627_ \u_cpu.state.cnt_r\[1] \u_cpu.state.cnt_r\[0] _577_ _665_ vdd gnd OAI21X1
X_1380_ \u_cpu.decode.opcode\[0] _503_ _502_ vdd gnd NOR2X1
X_2585_ _734_ i_clk_sys_ext \u_rf_if.issue_idx\[3] vdd gnd DFFPOSX1
X_2165_ _99_ _101_ _743_ vdd gnd NOR2X1
X_1856_ _1109_ _1110_ _1091_ _822_ vdd gnd MUX2X1
X_1436_ _462_ _461_ vdd gnd INVX1
X_2394_ _405_ _271_ _179_ _684_ vdd gnd MUX2X1
X_1665_ _970_ _639_ _969_ _873_ vdd gnd MUX2X1
X_1245_ _0_ o_mem_mosi vdd gnd BUFX2
X_1894_ _1131_ _1132_ _571_ _1133_ vdd gnd OAI21X1
X_1474_ mem_ibus_ack _434_ _476_ _430_ vdd gnd OAI21X1
X_2679_ _810_ i_clk_sys_ext \u_cpu.ctrl.pc_plus_offset_cy_r_w\ vdd gnd DFFPOSX1
X_2259_ \u_mem_serial.bit_count\[0] _142_ _173_ vdd gnd NOR2X1
X_1283_ _630_ _599_ _598_ vdd gnd NAND2X1
X_2488_ _904_ i_clk_sys_ext \u_cpu.bufreg.data\[26] vdd gnd DFFPOSX1
X_2068_ \u_rf_if.read_buf0\[1] _37_ vdd gnd INVX1
X_1759_ \u_mem_serial.shift_reg\[10] _1046_ vdd gnd INVX1
X_1339_ _592_ _547_ _544_ _543_ vdd gnd OAI21X1
X_2700_ _831_ i_clk_sys_ext \u_cpu.ctrl.o_ibus_adr\[16] vdd gnd DFFPOSX1
X_2297_ \u_mem_serial.state\[1] \u_mem_serial.state\[0] _192_ _207_ vdd gnd OAI21X1
X_1988_ _1213_ _1218_ vdd gnd INVX1
X_1568_ _412_ _413_ _355_ _908_ vdd gnd AOI21X1
X_1797_ _1013_ _1074_ _1075_ _846_ vdd gnd AOI21X1
X_1377_ \u_cpu.state.i_ctrl_misalign\ _507_ _506_ _505_ vdd gnd OAI21X1
X_2603_ _744_ i_clk_sys_ext \u_rf_if.stream_cnt\[2] vdd gnd DFFPOSX1
X_2412_ _280_ _286_ _179_ _681_ vdd gnd MUX2X1
X_2641_ _773_ i_clk_sys_ext \u_rf_if.read_buf0\[3] vdd gnd DFFPOSX1
X_2221_ i_clk_fast _138_ _1194_ vdd gnd NOR2X1
X_1912_ _1147_ _482_ _1148_ vdd gnd NOR2X1
X_2450_ _627_ _623_ i_rst_n _319_ vdd gnd OAI21X1
X_2030_ \u_rf_if.ready_pulse\ _568_ _10_ vdd gnd NAND2X1
X_1721_ \u_cpu.bufreg2.dlo\[19] _1013_ _1017_ vdd gnd NOR2X1
X_1301_ \u_cpu.state.cnt_r\[0] _580_ vdd gnd INVX1
X_2506_ _920_ i_clk_sys_ext rreg1[3] vdd gnd DFFPOSX1
X_1950_ _1180_ _1184_ _1185_ vdd gnd NOR2X1
X_1530_ _390_ _385_ vdd gnd INVX1
X_2735_ _866_ i_clk_sys_ext \u_cpu.bufreg2.dlo\[22] vdd gnd DFFPOSX1
X_2315_ _218_ _219_ _217_ _220_ vdd gnd OAI21X1
X_2544_ _706_ i_clk_fast \u_mem_serial.shift_reg\[0] vdd gnd DFFPOSX1
X_2124_ \u_rf_if.read_buf0\[21] _1174_ _73_ vdd gnd NOR2X1
X_1815_ \u_cpu.ctrl.o_ibus_adr\[26] _1089_ vdd gnd INVX1
X_2353_ \u_cpu.bufreg2.dlo\[11] _185_ _184_ \u_mem_serial.shift_reg\[10] _242_ vdd 
+ gnd
+ AOI22X1
X_1624_ \u_cpu.bufreg.data\[2] _597_ _663_ vdd gnd NOR2X1
X_2409_ _216_ _282_ _208_ _283_ _284_ vdd 
+ gnd
+ AOI22X1
X_2582_ _689_ i_clk_fast \u_mem_serial.shift_reg\[17] vdd gnd DFFPOSX1
X_2162_ \u_rf_if.stream_cnt\[3] _10_ _98_ _99_ vdd gnd AOI21X1
X_1853_ \u_cpu.ctrl.o_ibus_adr\[8] _1109_ vdd gnd INVX1
X_1433_ rreg0[4] _464_ vdd gnd INVX1
X_2638_ _794_ i_clk_sys_ext raddr[5] vdd gnd DFFPOSX1
X_2218_ \u_rf_if.rs2_stream_buf\[1] _1190_ _134_ _568_ _137_ vdd 
+ gnd
+ AOI22X1
X_2391_ _139_ raddr[0] _268_ _269_ vdd gnd OAI21X1
X_1909_ \u_rf_if.rcnt\[0] _1145_ vdd gnd INVX1
X_1662_ _967_ _602_ mem_dbus_ack _968_ vdd gnd AOI21X1
X_2447_ _639_ _186_ _305_ _258_ _317_ vdd 
+ gnd
+ OAI22X1
X_2027_ _8_ _1232_ _492_ _788_ vdd gnd AOI21X1
X_1718_ \u_mem_serial.shift_reg\[19] _1014_ vdd gnd INVX1
X_1891_ _1129_ _533_ _1130_ vdd gnd NAND2X1
X_1471_ _433_ _465_ _432_ vdd gnd NOR2X1
X_2676_ _804_ i_clk_sys_ext \u_rf_if.ready_pulse\ vdd gnd DFFPOSX1
X_2256_ \u_mem_serial.bit_count\[2] _170_ vdd gnd INVX1
X_1947_ \u_rf_if.stream_cnt\[1] _1182_ vdd gnd INVX1
X_1527_ mem_ibus_ack _388_ _387_ vdd gnd NOR2X1
X_1280_ _602_ _601_ vdd gnd INVX1
X_2485_ _901_ i_clk_sys_ext \u_cpu.bufreg.data\[23] vdd gnd DFFPOSX1
X_2065_ _1138_ _1209_ _35_ _777_ vdd gnd OAI21X1
X_1756_ mem_dbus_ack \u_cpu.bufreg2.dlo\[12] _1043_ _1044_ vdd gnd OAI21X1
X_1336_ \u_cpu.bne_or_bge\ _546_ vdd gnd INVX1
X_2294_ _176_ _203_ _142_ _204_ vdd gnd AOI21X1
X_1985_ _1201_ _1141_ \u_rf_if.rreg0_latched\[1] _1216_ vdd gnd OAI21X1
X_1565_ _358_ _357_ vdd gnd INVX1
X_1794_ mem_dbus_ack _555_ _1073_ vdd gnd NAND2X1
X_1374_ \u_cpu.state.i_ctrl_misalign\ _510_ _509_ _508_ vdd gnd OAI21X1
X_2579_ _731_ i_clk_sys_ext \u_rf_if.rreg0_latched\[1] vdd gnd DFFPOSX1
X_2159_ _1181_ _96_ _89_ _97_ vdd gnd OAI21X1
X_2388_ _179_ _266_ _267_ vdd gnd NOR2X1
X_1659_ _578_ _637_ _965_ vdd gnd NOR2X1
X_2600_ _693_ i_clk_fast \u_mem_serial.shift_reg\[13] vdd gnd DFFPOSX1
X_2197_ \u_rf_if.rreg0_latched\[0] _561_ _123_ vdd gnd NAND2X1
X_1888_ _601_ _542_ _1127_ _807_ vdd gnd AOI21X1
X_1468_ _437_ _465_ _435_ _928_ vdd gnd AOI21X1
X_1697_ _972_ _997_ _998_ vdd gnd NAND2X1
X_1277_ \u_cpu.state.cnt_r\[1] \u_cpu.state.cnt_r\[0] _604_ vdd gnd NOR2X1
X_2503_ _917_ i_clk_sys_ext rreg1[0] vdd gnd DFFPOSX1
X_2732_ _863_ i_clk_sys_ext \u_cpu.bufreg2.dlo\[19] vdd gnd DFFPOSX1
X_2312_ _216_ _217_ vdd gnd INVX1
X_2541_ _679_ i_clk_fast \u_mem_serial.shift_reg\[27] vdd gnd DFFPOSX1
X_2121_ \u_rf_if.read_buf0\[22] _71_ vdd gnd INVX1
X_1812_ mem_dbus_ack _376_ _1087_ vdd gnd NAND2X1
X_2350_ _1050_ _240_ _179_ _697_ vdd gnd MUX2X1
X_1621_ _329_ _328_ _597_ _882_ vdd gnd MUX2X1
X_2406_ raddr[3] _139_ _281_ vdd gnd NOR2X1
X_1850_ _1106_ _1107_ _1091_ _825_ vdd gnd MUX2X1
X_1430_ _593_ _486_ _467_ vdd gnd NOR2X1
X_2635_ _726_ i_clk_sys_ext raddr[6] vdd gnd DFFPOSX1
X_2215_ _1162_ _1177_ _133_ _134_ vdd gnd AOI21X1
X_1906_ _1143_ _1142_ _804_ vdd gnd NOR2X1
X_2444_ \u_cpu.bufreg.data\[5] _208_ _187_ _314_ vdd gnd OAI21X1
X_2024_ _4_ _5_ _391_ _6_ vdd gnd OAI21X1
X_1715_ mem_dbus_ack \u_cpu.bufreg2.dlo\[21] _1011_ _1012_ vdd gnd OAI21X1
X_2673_ _797_ i_clk_sys_ext raddr[7] vdd gnd DFFPOSX1
X_2253_ _142_ _166_ _163_ _167_ vdd gnd OAI21X1
X_1944_ \u_rf_if.stream_cnt\[0] _1179_ vdd gnd INVX1
X_1524_ _601_ _391_ _390_ vdd gnd NOR2X1
X_2729_ _860_ i_clk_sys_ext \u_cpu.bufreg2.dlo\[16] vdd gnd DFFPOSX1
X_2309_ _213_ _214_ _215_ _713_ vdd gnd OAI21X1
X_2482_ _899_ i_clk_sys_ext \u_cpu.bufreg.data\[21] vdd gnd DFFPOSX1
X_2062_ \u_rf_if.stream_cnt\[2] \u_rf_if.stream_cnt\[1] _33_ vdd gnd NOR2X1
X_1753_ _1013_ _1040_ _1041_ _856_ vdd gnd AOI21X1
X_1333_ \u_cpu.bufreg2.i_op_b_sel\ _584_ _550_ _549_ vdd gnd OAI21X1
X_2538_ _703_ i_clk_fast \u_mem_serial.shift_reg\[3] vdd gnd DFFPOSX1
X_2118_ \u_rf_if.read_buf0\[19] _1174_ _69_ vdd gnd NOR2X1
X_2291_ _492_ _147_ _201_ vdd gnd NOR2X1
X_1809_ \u_cpu.bufreg2.dlo\[23] _1013_ _1085_ vdd gnd NOR2X1
X_1982_ _492_ _1213_ _796_ vdd gnd NOR2X1
X_1562_ _368_ _426_ _361_ _360_ _909_ vdd 
+ gnd
+ AOI22X1
X_2767_ _897_ i_clk_sys_ext \u_cpu.bufreg.data\[19] vdd gnd DFFPOSX1
X_2347_ \u_cpu.bufreg2.dlo\[8] _185_ _184_ \u_mem_serial.shift_reg\[7] _239_ vdd 
+ gnd
+ AOI22X1
X_1618_ \u_cpu.bufreg.data\[5] _329_ vdd gnd INVX1
X_1791_ mem_dbus_ack \u_cpu.bufreg2.dlo\[4] _1070_ _1071_ vdd gnd OAI21X1
X_1371_ \u_cpu.decode.opcode\[0] \u_cpu.branch_op\ _511_ vdd gnd NAND2X1
X_2576_ i_rst_n vdd \u_rf_if.i_stream_rs2_en\ i_clk_sys_ext current_stream_rs2_hint vdd 
+ gnd
+ DFFSR
X_2156_ _94_ i_rst_n _745_ vdd gnd AND2X2
X_1847_ \u_cpu.ctrl.o_ibus_adr\[11] _1106_ vdd gnd INVX1
X_1427_ rreg0[3] _470_ vdd gnd INVX1
X_2385_ _262_ _261_ _263_ _264_ vdd gnd AOI21X1
X_1656_ \u_cpu.bufreg2.i_bytecnt\[0] \u_cpu.bufreg.data\[0] _962_ vdd gnd NAND2X1
X_2194_ _1136_ _120_ _121_ _734_ vdd gnd AOI21X1
X_1885_ _1119_ _1091_ _1125_ _1124_ _808_ vdd 
+ gnd
+ OAI22X1
X_1465_ \u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20\[2] _437_ vdd gnd INVX1
X_1694_ \u_cpu.bufreg.i_shamt\[0] _995_ vdd gnd INVX1
X_1274_ _608_ _639_ _618_ _607_ vdd gnd MUX2X1
X_2479_ _638_ _637_ vdd gnd INVX1
X_2059_ _1184_ _30_ _31_ vdd gnd AND2X2
XFILL98550x68550 gnd vdd FILL
X_2288_ _141_ _175_ _199_ vdd gnd NOR2X1
X_1979_ _1212_ _1206_ _1213_ vdd gnd NOR2X1
X_1559_ _586_ _364_ _363_ _362_ vdd gnd AOI21X1
X_2500_ _914_ i_clk_sys_ext rf_wreg0_to_if[1] vdd gnd DFFPOSX1
X_2097_ _51_ _1175_ _55_ _765_ vdd gnd AOI21X1
X_1788_ \u_cpu.bufreg2.dlo\[4] _1013_ _1069_ vdd gnd NOR2X1
X_1368_ _517_ _522_ _514_ vdd gnd NOR2X1
X_1597_ _341_ _340_ _597_ _894_ vdd gnd MUX2X1
X_2403_ \u_cpu.bufreg.i_shamt\[0] _185_ _278_ _279_ vdd gnd AOI21X1
X_2632_ _766_ i_clk_sys_ext \u_rf_if.read_buf0\[10] vdd gnd DFFPOSX1
X_2212_ _129_ _131_ _130_ _726_ vdd gnd NAND3X1
X_1903_ _1135_ _1140_ \u_rf_if.i_stream_rs2_en\ _1141_ vdd gnd NAND3X1
X_2441_ _305_ _179_ _306_ _311_ _677_ vdd 
+ gnd
+ AOI22X1
X_2021_ _1227_ _2_ _3_ _789_ vdd gnd AOI21X1
X_1712_ _1007_ _1009_ _968_ _865_ vdd gnd MUX2X1
X_2670_ _700_ i_clk_fast \u_mem_serial.shift_reg\[6] vdd gnd DFFPOSX1
X_2250_ \u_mem_serial.bit_count\[0] \u_mem_serial.bit_count\[1] _164_ vdd gnd NOR2X1
X_1941_ _1171_ _1162_ _1176_ _802_ vdd gnd OAI21X1
X_1521_ _594_ _413_ _393_ _917_ vdd gnd AOI21X1
X_2726_ _857_ i_clk_sys_ext \u_cpu.bufreg2.dlo\[13] vdd gnd DFFPOSX1
X_2306_ _142_ _177_ _213_ vdd gnd NOR2X1
X_1750_ mem_dbus_ack _1038_ _1039_ vdd gnd NAND2X1
X_1330_ _557_ _552_ _560_ \u_rf_if.i_stream_rs2_en\ vdd gnd OAI21X1
X_2535_ _676_ i_clk_fast \u_mem_serial.shift_reg\[30] vdd gnd DFFPOSX1
X_2115_ \u_rf_if.read_buf0\[20] _67_ vdd gnd INVX1
X_1806_ _510_ _1082_ _968_ _844_ vdd gnd MUX2X1
X_2764_ _894_ i_clk_sys_ext \u_cpu.bufreg.data\[16] vdd gnd DFFPOSX1
X_2344_ _558_ _237_ _179_ _700_ vdd gnd MUX2X1
X_1615_ _332_ _331_ _597_ _885_ vdd gnd MUX2X1
X_2573_ _777_ i_clk_sys_ext raddr[1] vdd gnd DFFPOSX1
X_2153_ _11_ _92_ vdd gnd INVX1
X_1844_ _1103_ _1104_ _1091_ _828_ vdd gnd MUX2X1
X_1424_ _472_ _473_ _935_ vdd gnd NOR2X1
X_2629_ _764_ i_clk_sys_ext \u_rf_if.read_buf0\[12] vdd gnd DFFPOSX1
X_2209_ \u_rf_if.rreg1_latched\[2] _1211_ _129_ vdd gnd NAND2X1
X_2382_ _1203_ _253_ _261_ vdd gnd NAND2X1
X_1653_ _628_ _959_ _958_ _960_ vdd gnd OAI21X1
X_2438_ _194_ _308_ _184_ \u_mem_serial.shift_reg\[28] _309_ vdd 
+ gnd
+ AOI22X1
X_2018_ _1238_ _1197_ _1_ vdd gnd NOR2X1
X_2191_ _1137_ _117_ _119_ vdd gnd NOR2X1
X_1709_ \u_cpu.bufreg2.dlo\[21] _1007_ vdd gnd INVX1
X_1882_ _1122_ _516_ _1123_ _809_ vdd gnd AOI21X1
X_1462_ mem_ibus_ack _446_ _479_ _439_ vdd gnd OAI21X1
X_2667_ _796_ i_clk_sys_ext ren vdd gnd DFFPOSX1
X_2247_ _157_ _161_ _158_ _721_ vdd gnd AOI21X1
X_1938_ _1172_ _1173_ _568_ _1174_ vdd gnd OAI21X1
X_1518_ _400_ _413_ _395_ _918_ vdd gnd AOI21X1
X_1691_ mem_dbus_ack \u_mem_serial.shift_reg\[26] _971_ _993_ vdd gnd AOI21X1
X_1271_ _617_ _611_ _610_ vdd gnd NAND2X1
X_2476_ \u_cpu.bufreg.data\[0] _640_ vdd gnd INVX1
X_2056_ _1205_ _27_ _28_ _779_ vdd gnd AOI21X1
X_1747_ \u_cpu.bufreg2.dlo\[13] _1013_ _1037_ vdd gnd NOR2X1
X_1327_ \u_mem_serial.shift_reg\[1] \u_mem_serial.shift_reg\[0] _555_ _554_ vdd gnd NAND3X1
X_2285_ _141_ _193_ _196_ _718_ vdd gnd OAI21X1
X_1976_ _1141_ _1201_ _1210_ vdd gnd OR2X2
X_1556_ _367_ _366_ _365_ vdd gnd NOR2X1
X_2094_ _568_ \u_rf_if.read_buf0\[11] \u_rf_if.read_buf0\[10] _1174_ _54_ vdd 
+ gnd
+ OAI22X1
X_1785_ _1013_ _1065_ _1066_ _849_ vdd gnd AOI21X1
X_1365_ _518_ _519_ _517_ vdd gnd NOR2X1
X_1594_ \u_cpu.bufreg.data\[17] _341_ vdd gnd INVX1
X_2379_ _1010_ _186_ _1014_ _258_ _259_ vdd 
+ gnd
+ OAI22X1
X_2188_ _116_ _117_ vdd gnd INVX1
X_1879_ _1121_ _1091_ _810_ vdd gnd AND2X2
X_1459_ _442_ _465_ _441_ vdd gnd NOR2X1
X_2400_ _108_ _139_ _276_ vdd gnd NAND2X1
XFILL98550x54150 gnd vdd FILL
X_1688_ _983_ _989_ _618_ _990_ vdd gnd OAI21X1
X_1268_ \u_cpu.bufreg2.dhi\[3] _614_ _613_ vdd gnd NOR2X1
X_1900_ \u_rf_if.issue_idx\[1] _1138_ vdd gnd INVX1
X_1497_ _415_ _414_ _468_ _413_ vdd gnd OAI21X1
X_2723_ _854_ i_clk_sys_ext \u_cpu.bufreg2.dlo\[10] vdd gnd DFFPOSX1
X_2303_ _191_ _178_ _211_ vdd gnd NOR2X1
X_2532_ _945_ i_clk_sys_ext \u_cpu.bufreg2.i_op_b_sel\ vdd gnd DFFPOSX1
X_2112_ \u_rf_if.read_buf0\[17] _1174_ _65_ vdd gnd NOR2X1
X_1803_ \u_mem_serial.shift_reg\[0] _1080_ vdd gnd INVX1
X_2761_ _891_ i_clk_sys_ext \u_cpu.bufreg.data\[13] vdd gnd DFFPOSX1
X_2341_ \u_cpu.bufreg2.dlo\[5] _185_ _184_ \u_mem_serial.shift_reg\[4] _236_ vdd 
+ gnd
+ AOI22X1
X_1612_ \u_cpu.bufreg.data\[8] _332_ vdd gnd INVX1
X_2570_ i_clk_sys_ext i_clk_fast \u_mem_serial.clk_sys_prev\ vdd gnd DFFPOSX1
X_2150_ \u_rf_if.stream_cnt\[0] \u_rf_if.stream_active\ _90_ vdd gnd NOR2X1
X_1841_ \u_cpu.ctrl.o_ibus_adr\[14] _1103_ vdd gnd INVX1
X_1421_ _626_ _475_ _474_ vdd gnd NOR2X1
X_2626_ _761_ i_clk_sys_ext \u_rf_if.read_buf0\[15] vdd gnd DFFPOSX1
X_2206_ _397_ _127_ _492_ _728_ vdd gnd AOI21X1
X_1650_ _597_ _957_ _875_ vdd gnd AND2X2
X_2435_ _1160_ _217_ _306_ vdd gnd OR2X2
X_2015_ _1240_ _1241_ vdd gnd INVX1
X_1706_ mem_dbus_ack _405_ _1005_ vdd gnd NAND2X1
X_2664_ _792_ i_clk_sys_ext \u_rf_if.prefetch_active\ vdd gnd DFFPOSX1
X_2244_ _140_ _159_ vdd gnd INVX1
X_1935_ _1170_ _1171_ vdd gnd INVX1
X_1515_ _398_ _397_ vdd gnd INVX1
X_2473_ _644_ _658_ _643_ vdd gnd OR2X2
X_2053_ _1209_ _25_ _26_ _780_ vdd gnd OAI21X1
X_1744_ \u_mem_serial.shift_reg\[13] _1034_ vdd gnd INVX1
X_1324_ _559_ _558_ mem_ibus_ack _557_ vdd gnd OAI21X1
X_2529_ _809_ i_clk_sys_ext \u_cpu.ctrl.pc_plus_4_cy_r_w\ vdd gnd DFFPOSX1
X_2109_ _62_ _63_ _761_ vdd gnd NOR2X1
X_2282_ \u_mem_serial.state\[0] _140_ _194_ vdd gnd NOR2X1
X_1973_ \u_rf_if.prefetch_active\ _1142_ _1207_ vdd gnd NAND2X1
X_1553_ \u_cpu.immdec.gen_immdec_w_eq_1.imm30_25\[5] _368_ vdd gnd INVX1
X_2758_ _888_ i_clk_sys_ext \u_cpu.bufreg.data\[10] vdd gnd DFFPOSX1
X_2338_ _494_ _234_ _179_ _703_ vdd gnd MUX2X1
X_2091_ _568_ \u_rf_if.read_buf0\[10] \u_rf_if.read_buf0\[9] _1174_ _52_ vdd 
+ gnd
+ OAI22X1
X_1609_ _335_ _334_ _597_ _888_ vdd gnd MUX2X1
X_1782_ mem_dbus_ack _556_ _1064_ vdd gnd NAND2X1
X_1362_ \u_cpu.ctrl.pc_plus_4_cy_r_w\ _520_ vdd gnd INVX1
X_2567_ _722_ i_clk_fast \u_mem_serial.req_pending\ vdd gnd DFFPOSX1
X_2147_ _568_ \u_rf_if.read_buf0\[30] \u_rf_if.read_buf0\[31] _1171_ _88_ vdd 
+ gnd
+ OAI22X1
X_1838_ _1100_ _1101_ _1091_ _831_ vdd gnd MUX2X1
X_1418_ mem_ibus_ack _657_ _476_ _937_ vdd gnd OAI21X1
X_1591_ _344_ _343_ _597_ _897_ vdd gnd MUX2X1
XFILL98250x32550 gnd vdd FILL
X_2376_ _251_ _254_ _255_ _256_ vdd gnd OAI21X1
X_1647_ \u_cpu.bufreg.data\[2] _629_ _955_ _956_ vdd gnd AOI21X1
X_2185_ _1138_ _113_ _114_ _115_ vdd gnd OAI21X1
X_1876_ _1118_ _1120_ _1091_ _812_ vdd gnd MUX2X1
X_1456_ _561_ _445_ _444_ vdd gnd NOR2X1
X_1685_ _972_ \u_mem_serial.shift_reg\[27] _969_ _988_ vdd gnd OAI21X1
X_1265_ \u_cpu.bufreg.i_shamt\[2] _616_ vdd gnd INVX1
X_1494_ rreg1[3] _416_ vdd gnd INVX1
X_2699_ _876_ i_clk_sys_ext \u_cpu.state.i_ctrl_misalign\ vdd gnd DFFPOSX1
X_2279_ \u_mem_serial.bit_count\[0] _191_ vdd gnd INVX1
X_2088_ _568_ \u_rf_if.read_buf0\[9] \u_rf_if.read_buf0\[10] _1171_ _50_ vdd 
+ gnd
+ OAI22X1
X_1779_ mem_dbus_ack \u_cpu.bufreg2.dlo\[7] _1061_ _1062_ vdd gnd OAI21X1
X_1359_ \u_cpu.state.cnt_r\[2] _523_ vdd gnd INVX1
X_2720_ _851_ i_clk_sys_ext \u_cpu.bufreg2.dlo\[7] vdd gnd DFFPOSX1
X_2300_ _205_ _208_ _209_ vdd gnd NAND2X1
X_1588_ \u_cpu.bufreg.data\[20] _344_ vdd gnd INVX1
X_1800_ mem_dbus_ack \u_cpu.bufreg2.dlo\[2] _1077_ _1078_ vdd gnd OAI21X1
X_1397_ i_rst_n _492_ vdd gnd INVX1
X_2623_ _758_ i_clk_sys_ext \u_rf_if.read_buf0\[18] vdd gnd DFFPOSX1
X_2203_ \u_rf_if.rreg1_latched\[0] _561_ _126_ vdd gnd NAND2X1
X_2432_ _179_ _303_ _304_ vdd gnd NOR2X1
X_2012_ \u_rf_if.o_waddr\[1] _1238_ vdd gnd INVX1
X_1703_ mem_dbus_ack _1001_ _1002_ _1003_ vdd gnd OAI21X1
X_2661_ _790_ i_clk_sys_ext \u_rf_if.wdata0_next_phase\ vdd gnd DFFPOSX1
X_2241_ _151_ \u_mem_serial.req_pending\ _140_ _156_ vdd gnd AOI21X1
X_1932_ _1167_ \u_rf_if.i_stream_rs2_en\ _1168_ vdd gnd NAND2X1
X_1512_ rreg1[1] _400_ vdd gnd INVX1
X_2717_ _848_ i_clk_sys_ext \u_cpu.bufreg2.dlo\[4] vdd gnd DFFPOSX1
X_2470_ _649_ _647_ _646_ vdd gnd NOR2X1
X_2050_ _481_ _24_ _492_ _781_ vdd gnd AOI21X1
X_1741_ mem_dbus_ack \u_cpu.bufreg2.dlo\[15] _1031_ _1032_ vdd gnd OAI21X1
X_1321_ current_stream_rs2_hint _561_ _560_ vdd gnd NAND2X1
X_2526_ _939_ i_clk_sys_ext \u_cpu.branch_op\ vdd gnd DFFPOSX1
X_2106_ _60_ _1170_ _61_ _762_ vdd gnd AOI21X1
X_1970_ _1191_ _1203_ _1204_ vdd gnd NOR2X1
X_1550_ _464_ _465_ _370_ _371_ _911_ vdd 
+ gnd
+ AOI22X1
X_2755_ _886_ i_clk_sys_ext \u_cpu.bufreg.data\[8] vdd gnd DFFPOSX1
X_2335_ \u_cpu.bufreg2.dlo\[2] _185_ _184_ \u_mem_serial.shift_reg\[1] _233_ vdd 
+ gnd
+ AOI22X1
X_1606_ \u_cpu.bufreg.data\[11] _335_ vdd gnd INVX1
X_2564_ _684_ i_clk_fast \u_mem_serial.shift_reg\[22] vdd gnd DFFPOSX1
X_2144_ _568_ \u_rf_if.read_buf0\[29] \u_rf_if.read_buf0\[28] _1174_ _86_ vdd 
+ gnd
+ OAI22X1
X_1835_ \u_cpu.ctrl.o_ibus_adr\[17] _1100_ vdd gnd INVX1
X_1415_ \u_mem_serial.shift_reg\[20] _478_ vdd gnd INVX1
X_2373_ _252_ _1234_ _253_ vdd gnd NOR2X1
X_1644_ _951_ _952_ _953_ vdd gnd NAND2X1
X_2429_ \u_cpu.bufreg.data\[3] \u_cpu.ctrl.o_ibus_adr\[3] _202_ _301_ vdd gnd MUX2X1
X_2009_ _1230_ _1235_ _1236_ vdd gnd NAND2X1
X_2182_ _111_ _112_ _1200_ _737_ vdd gnd AOI21X1
X_1873_ \u_cpu.ctrl.o_ibus_adr\[31] _1119_ vdd gnd INVX1
X_1453_ _452_ _465_ _447_ _931_ vdd gnd AOI21X1
X_2658_ \u_cpu.decode.opcode\[0] _661_ vdd gnd INVX1
X_2238_ _140_ _145_ _154_ vdd gnd NOR2X1
X_1929_ _1140_ _1164_ _1163_ _1165_ vdd gnd AOI21X1
X_1509_ mem_ibus_ack _416_ _403_ _402_ vdd gnd OAI21X1
X_1682_ _613_ _984_ _618_ _985_ vdd gnd OAI21X1
X_1262_ _620_ _619_ vdd gnd INVX1
X_2467_ \u_cpu.bufreg2.i_op_b_sel\ \u_cpu.branch_op\ _649_ vdd gnd NOR2X1
X_2047_ _1145_ _21_ _22_ _23_ vdd gnd OAI21X1
X_1738_ _1013_ _1028_ _1029_ _859_ vdd gnd AOI21X1
X_1318_ _568_ _567_ _564_ _563_ vdd gnd OAI21X1
X_1491_ \u_cpu.immdec.gen_immdec_w_eq_1.imm30_25\[0] _418_ vdd gnd INVX1
X_2696_ _828_ i_clk_sys_ext \u_cpu.ctrl.o_ibus_adr\[13] vdd gnd DFFPOSX1
X_2276_ \u_mem_serial.state\[0] _188_ _1086_ _186_ _189_ vdd 
+ gnd
+ OAI22X1
X_1967_ \u_rf_if.issue_idx\[4] _1201_ vdd gnd INVX1
X_1547_ mem_ibus_ack \u_cpu.branch_op\ _373_ _372_ vdd gnd OAI21X1
X_2085_ _568_ \u_rf_if.read_buf0\[8] \u_rf_if.read_buf0\[7] _1174_ _48_ vdd 
+ gnd
+ OAI22X1
X_1776_ \u_cpu.bufreg2.dlo\[7] _1013_ _1060_ vdd gnd NOR2X1
X_1356_ _527_ _595_ _526_ vdd gnd NOR2X1
X_1585_ _347_ _346_ _597_ _900_ vdd gnd MUX2X1
X_1394_ _494_ _648_ mem_ibus_ack _943_ vdd gnd MUX2X1
X_2599_ _742_ i_clk_sys_ext \u_rf_if.rcnt\[0] vdd gnd DFFPOSX1
X_2179_ _108_ _109_ _110_ _738_ vdd gnd AOI21X1
XFILL98550x61350 gnd vdd FILL
XFILL98550x28950 gnd vdd FILL
X_1679_ _618_ _982_ vdd gnd INVX1
X_1259_ _627_ _623_ _622_ vdd gnd NOR2X1
X_2620_ _757_ i_clk_sys_ext \u_rf_if.read_buf0\[19] vdd gnd DFFPOSX1
X_2200_ _449_ _124_ _492_ _731_ vdd gnd AOI21X1
X_1488_ \u_cpu.immdec.gen_immdec_w_eq_1.imm30_25\[1] _420_ vdd gnd INVX1
X_1700_ _994_ _969_ _1000_ _999_ _868_ vdd 
+ gnd
+ OAI22X1
X_1297_ _590_ _587_ _585_ _584_ vdd gnd OAI21X1
X_2714_ _845_ i_clk_sys_ext \u_cpu.bufreg2.dlo\[1] vdd gnd DFFPOSX1
X_2523_ _936_ i_clk_sys_ext \u_cpu.state.cnt_r\[2] vdd gnd DFFPOSX1
X_2103_ _58_ _59_ _763_ vdd gnd NOR2X1
X_2752_ _883_ i_clk_sys_ext \u_cpu.bufreg.data\[5] vdd gnd DFFPOSX1
X_2332_ _1080_ _179_ _231_ _706_ vdd gnd AOI21X1
X_1603_ _338_ _337_ _597_ _891_ vdd gnd MUX2X1
X_2561_ _719_ i_clk_fast \u_mem_serial.shift_reg\[31] vdd gnd DFFPOSX1
X_2141_ _568_ \u_rf_if.read_buf0\[28] \u_rf_if.read_buf0\[29] _1171_ _84_ vdd 
+ gnd
+ OAI22X1
X_1832_ _1097_ _1098_ _1091_ _834_ vdd gnd MUX2X1
X_1412_ _558_ _655_ mem_ibus_ack _939_ vdd gnd MUX2X1
X_2617_ _754_ i_clk_sys_ext \u_rf_if.read_buf0\[22] vdd gnd DFFPOSX1
X_2370_ _1014_ _250_ _179_ _687_ vdd gnd MUX2X1
X_1641_ \u_cpu.decode.opcode\[1] \u_cpu.branch_op\ _949_ _950_ vdd gnd AOI21X1
X_2426_ _293_ _179_ _294_ _298_ _679_ vdd 
+ gnd
+ AOI22X1
X_2006_ _1232_ _1231_ _1233_ vdd gnd OR2X2
X_1870_ \u_cpu.ctrl.o_ibus_adr\[28] _1117_ vdd gnd INVX1
X_1450_ _450_ _449_ vdd gnd INVX1
X_2655_ _801_ i_clk_sys_ext \u_rf_if.rs2_stream_buf\[1] vdd gnd DFFPOSX1
X_2235_ _492_ _147_ _150_ _151_ vdd gnd OAI21X1
X_1926_ rf_shared_rdata[0] _1161_ _1162_ vdd gnd NAND2X1
X_1506_ \u_mem_serial.shift_reg\[22] _405_ vdd gnd INVX1
X_2464_ _657_ _653_ _652_ vdd gnd NOR2X1
X_2044_ _20_ _18_ _783_ vdd gnd NOR2X1
X_1735_ mem_dbus_ack _445_ _1027_ vdd gnd NAND2X1
X_1315_ _568_ _567_ _566_ vdd gnd NOR2X1
X_2693_ _825_ i_clk_sys_ext \u_cpu.ctrl.o_ibus_adr\[10] vdd gnd DFFPOSX1
X_2273_ _185_ _186_ vdd gnd INVX1
X_1964_ \u_rf_if.pending_read\ _1163_ _1198_ _1199_ vdd gnd NAND3X1
X_1544_ _561_ _376_ _375_ _912_ vdd gnd OAI21X1
X_2749_ _880_ i_clk_sys_ext \u_cpu.bufreg.data\[2] vdd gnd DFFPOSX1
X_2329_ \u_mem_serial.active_we\ i_mem_miso _228_ _229_ vdd gnd OAI21X1
X_2082_ _568_ \u_rf_if.read_buf0\[7] \u_rf_if.read_buf0\[8] _1171_ _46_ vdd 
+ gnd
+ OAI22X1
X_1773_ \u_mem_serial.shift_reg\[7] _1057_ vdd gnd INVX1
X_1353_ _531_ _530_ _529_ vdd gnd NOR2X1
X_2558_ _717_ i_clk_fast rf_shared_rdata[1] vdd gnd DFFPOSX1
X_2138_ _568_ \u_rf_if.read_buf0\[27] \u_rf_if.read_buf0\[26] _1174_ _82_ vdd 
+ gnd
+ OAI22X1
X_1829_ \u_cpu.ctrl.o_ibus_adr\[20] _1097_ vdd gnd INVX1
X_1409_ _621_ \u_cpu.state.cnt_r\[3] \u_rf_if.ready_pulse\ _480_ vdd gnd AOI21X1
X_1582_ \u_cpu.bufreg.data\[23] _347_ vdd gnd INVX1
X_2367_ \u_cpu.bufreg2.dlo\[18] _185_ _184_ \u_mem_serial.shift_reg\[17] _249_ vdd 
+ gnd
+ AOI22X1
X_1638_ _584_ _724_ _805_ vdd gnd NOR2X1
X_1391_ \u_cpu.decode.opcode\[2] mem_ibus_ack _495_ vdd gnd NOR2X1
X_2596_ \u_cpu.decode.opcode\[2] _660_ _659_ vdd gnd NAND2X1
X_2176_ \u_rf_if.o_waddr\[2] _108_ vdd gnd INVX1
X_1867_ \u_cpu.ctrl.o_ibus_adr\[1] _1116_ vdd gnd INVX1
X_1447_ rreg0[1] _452_ vdd gnd INVX1
X_1676_ _979_ \u_mem_serial.shift_reg\[28] _972_ _980_ vdd gnd MUX2X1
X_1256_ \u_cpu.bufreg2.i_bytecnt\[0] \u_cpu.state.o_cnt\[2] _625_ vdd gnd NAND2X1
X_1485_ \u_cpu.immdec.gen_immdec_w_eq_1.imm30_25\[2] _422_ vdd gnd INVX1
X_1294_ _589_ _588_ _621_ _587_ vdd gnd OAI21X1
X_2499_ _913_ i_clk_sys_ext rf_wreg0_to_if[0] vdd gnd DFFPOSX1
X_2079_ _568_ \u_rf_if.read_buf0\[6] \u_rf_if.read_buf0\[7] _1171_ _44_ vdd 
+ gnd
+ OAI22X1
X_2711_ _842_ i_clk_sys_ext \u_cpu.bufreg2.cnt_next\[6] vdd gnd DFFPOSX1
X_1999_ \u_rf_if.o_waddr\[0] _1226_ vdd gnd INVX1
X_1579_ _350_ _349_ _597_ _903_ vdd gnd MUX2X1
X_2520_ _933_ i_clk_sys_ext rreg0[3] vdd gnd DFFPOSX1
X_2100_ _56_ _1170_ _57_ _764_ vdd gnd AOI21X1
X_1388_ mem_ibus_ack _546_ _497_ _946_ vdd gnd OAI21X1
X_1600_ \u_cpu.bufreg.data\[14] _338_ vdd gnd INVX1
X_2614_ _751_ i_clk_sys_ext \u_rf_if.read_buf0\[25] vdd gnd DFFPOSX1
X_2423_ \u_cpu.bufreg2.dhi\[3] _185_ _184_ \u_mem_serial.shift_reg\[26] _296_ vdd 
+ gnd
+ AOI22X1
X_2003_ _1225_ _1229_ _1230_ vdd gnd NOR2X1
X_2652_ _672_ i_clk_sys_ext \u_cpu.state.init_done\ vdd gnd DFFPOSX1
X_2232_ i_rst_n _600_ _148_ vdd gnd NAND2X1
X_1923_ ren _392_ _1159_ vdd gnd NOR2X1
X_1503_ _408_ _413_ _407_ vdd gnd NOR2X1
X_2708_ _839_ i_clk_sys_ext \u_cpu.ctrl.o_ibus_adr\[24] vdd gnd DFFPOSX1
X_2461_ mem_ibus_ack _622_ _326_ vdd gnd NOR2X1
X_2041_ _17_ \u_cpu.o_wdata0\ _18_ vdd gnd NOR2X1
X_1732_ mem_dbus_ack \u_cpu.bufreg2.dlo\[17] _1024_ _1025_ vdd gnd OAI21X1
X_1312_ _570_ _569_ vdd gnd INVX1
X_2517_ _930_ i_clk_sys_ext \u_cpu.csr_imm\ vdd gnd DFFPOSX1
X_2690_ _822_ i_clk_sys_ext \u_cpu.ctrl.o_ibus_adr\[7] vdd gnd DFFPOSX1
X_2270_ _182_ _183_ vdd gnd INVX1
X_1961_ \u_rf_if.rreg0_latched\[3] _561_ _1195_ vdd gnd NAND2X1
X_1541_ _380_ _378_ _377_ _913_ vdd gnd OAI21X1
X_2746_ _877_ i_clk_sys_ext \u_cpu.bufreg.data\[30] vdd gnd DFFPOSX1
X_2326_ _510_ _180_ \u_mem_serial.active_we\ _226_ vdd gnd OAI21X1
X_1770_ mem_dbus_ack _1054_ _1055_ vdd gnd NAND2X1
X_1350_ _546_ \u_cpu.bufreg.i_right_shift_op\ _533_ _532_ vdd gnd NAND3X1
X_2555_ _715_ i_clk_fast mem_ibus_ack vdd gnd DFFPOSX1
X_2135_ _568_ \u_rf_if.read_buf0\[26] \u_rf_if.read_buf0\[27] _1171_ _80_ vdd 
+ gnd
+ OAI22X1
X_1826_ _1094_ _1095_ _1091_ _837_ vdd gnd MUX2X1
X_1406_ _491_ _484_ mem_dbus_ack _483_ vdd gnd AOI21X1
X_2364_ _451_ _247_ _179_ _690_ vdd gnd MUX2X1
X_1635_ _575_ _670_ vdd gnd INVX1
X_2593_ _738_ i_clk_sys_ext \u_rf_if.o_waddr\[2] vdd gnd DFFPOSX1
X_2173_ _1226_ _1241_ _106_ _740_ vdd gnd AOI21X1
X_1864_ _1113_ _1114_ _1091_ _818_ vdd gnd MUX2X1
X_1444_ mem_ibus_ack _470_ _455_ _454_ vdd gnd OAI21X1
X_2649_ _783_ i_clk_sys_ext \u_rf_if.read_buf1\ vdd gnd DFFPOSX1
X_2229_ _141_ _144_ _145_ vdd gnd NAND2X1
X_1673_ _612_ \u_cpu.bufreg2.dhi\[4] _977_ vdd gnd AND2X2
X_1253_ _629_ _628_ vdd gnd INVX1
X_2458_ _324_ _320_ _492_ _673_ vdd gnd AOI21X1
X_2038_ \u_rf_if.read_buf0\[31] _1175_ _16_ vdd gnd NAND2X1
X_1729_ \u_cpu.bufreg2.dlo\[17] _1013_ _1023_ vdd gnd NOR2X1
X_1309_ \u_cpu.decode.co_mem_word\ \u_cpu.bufreg.i_right_shift_op\ _572_ vdd gnd NOR2X1
X_1482_ \u_cpu.immdec.gen_immdec_w_eq_1.imm30_25\[3] _424_ vdd gnd INVX1
X_2687_ _819_ i_clk_sys_ext \u_cpu.ctrl.o_ibus_adr\[4] vdd gnd DFFPOSX1
X_2267_ \u_mem_serial.bit_count\[5] \u_mem_serial.bit_count\[0] _172_ _180_ vdd gnd NAND3X1
X_1958_ _1189_ _1188_ _1192_ _801_ vdd gnd AOI21X1
X_1538_ _389_ _380_ _379_ _914_ vdd gnd AOI21X1
X_1291_ _591_ _593_ _594_ _590_ vdd gnd AOI21X1
X_2496_ _942_ i_clk_sys_ext \u_cpu.decode.opcode\[0] vdd gnd DFFPOSX1
X_2076_ _41_ _1170_ _42_ _773_ vdd gnd AOI21X1
X_1767_ \u_cpu.bufreg2.dlo\[9] _1013_ _1053_ vdd gnd NOR2X1
X_1347_ _549_ _566_ _535_ vdd gnd AND2X2
X_1996_ \u_rf_if.write_wait\[1] _1223_ _1224_ vdd gnd NAND2X1
X_1576_ \u_cpu.bufreg.data\[26] _350_ vdd gnd INVX1
X_1385_ \u_mem_serial.shift_reg\[13] mem_ibus_ack _498_ vdd gnd NAND2X1
X_2399_ _411_ _275_ _179_ _683_ vdd gnd MUX2X1
X_2611_ _748_ i_clk_sys_ext \u_rf_if.read_buf0\[28] vdd gnd DFFPOSX1
X_1899_ \u_rf_if.issue_idx\[2] _1137_ vdd gnd INVX1
X_1479_ mem_ibus_ack _602_ _427_ _426_ vdd gnd OAI21X1
X_2420_ \u_mem_serial.shift_reg\[27] _293_ vdd gnd INVX1
X_2000_ \u_rf_if.o_waddr\[3] _1227_ vdd gnd INVX1
X_1288_ \u_cpu.decode.opcode\[2] \u_cpu.decode.opcode\[1] _593_ vdd gnd NOR2X1
X_1920_ _1152_ _1155_ _1156_ vdd gnd NOR2X1
X_1500_ _561_ _411_ _410_ vdd gnd NOR2X1
X_2705_ _836_ i_clk_sys_ext \u_cpu.ctrl.o_ibus_adr\[21] vdd gnd DFFPOSX1
X_2514_ _927_ i_clk_sys_ext \u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20\[1] vdd gnd DFFPOSX1
X_2743_ _873_ i_clk_sys_ext \u_cpu.bufreg2.dhi\[6] vdd gnd DFFPOSX1
X_2323_ i_mem_miso _200_ _225_ vdd gnd NOR2X1
X_2552_ _713_ i_clk_fast \u_mem_serial.bit_count\[5] vdd gnd DFFPOSX1
X_2132_ \u_rf_if.read_buf0\[24] _1174_ _78_ vdd gnd NOR2X1
X_1823_ \u_cpu.ctrl.o_ibus_adr\[23] _1094_ vdd gnd INVX1
X_1403_ \u_cpu.decode.opcode\[0] _656_ _486_ vdd gnd NOR2X1
X_2608_ _781_ i_clk_sys_ext \u_rf_if.write_wait\[1] vdd gnd DFFPOSX1
X_2361_ \u_cpu.bufreg2.dlo\[15] _185_ _184_ \u_mem_serial.shift_reg\[14] _246_ vdd 
+ gnd
+ AOI22X1
X_1632_ _668_ _352_ _597_ _878_ vdd gnd MUX2X1
X_2417_ _616_ _186_ _280_ _258_ _291_ vdd 
+ gnd
+ OAI22X1
X_2590_ _691_ i_clk_fast \u_mem_serial.shift_reg\[15] vdd gnd DFFPOSX1
X_2170_ _103_ _104_ _105_ vdd gnd NAND2X1
X_1861_ \u_cpu.ctrl.o_ibus_adr\[4] _1113_ vdd gnd INVX1
X_1441_ \u_mem_serial.shift_reg\[17] _457_ vdd gnd INVX1
X_2646_ _793_ i_clk_sys_ext raddr[3] vdd gnd DFFPOSX1
X_2226_ \u_mem_serial.state\[0] _142_ vdd gnd INVX1
X_1917_ ren _383_ _1153_ vdd gnd NOR2X1
X_1670_ mem_dbus_ack \u_mem_serial.shift_reg\[29] _971_ _975_ vdd gnd AOI21X1
X_1250_ \u_cpu.decode.co_mem_word\ \u_cpu.bne_or_bge\ _632_ _631_ vdd gnd OAI21X1
X_2455_ \u_cpu.bne_or_bge\ _1134_ _661_ _322_ vdd gnd OAI21X1
X_2035_ i_rst_n _10_ _14_ vdd gnd NAND2X1
X_1726_ _1013_ _1019_ _1020_ _862_ vdd gnd AOI21X1
X_1306_ _580_ _576_ _575_ vdd gnd NOR2X1
X_2684_ _816_ i_clk_sys_ext \u_cpu.ctrl.o_ibus_adr\[1] vdd gnd DFFPOSX1
X_2264_ _176_ _175_ _177_ vdd gnd AND2X2
X_1955_ \u_rf_if.stream_cnt\[0] _568_ _1190_ vdd gnd NOR2X1
X_1535_ _384_ _392_ _381_ _915_ vdd gnd AOI21X1
X_2493_ _908_ i_clk_sys_ext rreg1[4] vdd gnd DFFPOSX1
X_2073_ _39_ _1170_ _40_ _774_ vdd gnd AOI21X1
X_1764_ \u_mem_serial.shift_reg\[9] _1050_ vdd gnd INVX1
X_1344_ _539_ _562_ _538_ vdd gnd OR2X2
X_2549_ _710_ i_clk_fast \u_mem_serial.bit_count\[3] vdd gnd DFFPOSX1
X_2129_ \u_rf_if.read_buf0\[25] _76_ vdd gnd INVX1
X_1993_ _492_ _482_ _1221_ vdd gnd NOR2X1
X_1573_ _352_ _353_ _597_ _906_ vdd gnd MUX2X1
X_2358_ _1034_ _244_ _179_ _693_ vdd gnd MUX2X1
X_1629_ _629_ _665_ _666_ _667_ vdd gnd OAI21X1
X_1382_ _511_ _512_ _501_ _500_ vdd gnd OAI21X1
X_2587_ _735_ i_clk_sys_ext \u_rf_if.issue_idx\[2] vdd gnd DFFPOSX1
X_2167_ \u_rf_if.rcnt\[0] _102_ _742_ vdd gnd NOR2X1
X_1858_ _1110_ _1111_ _1091_ _821_ vdd gnd MUX2X1
X_1438_ _460_ _465_ _459_ vdd gnd NOR2X1
X_2396_ _139_ raddr[1] _272_ _273_ vdd gnd OAI21X1
X_1667_ mem_dbus_ack _972_ vdd gnd INVX1
X_1247_ \u_cpu.decode.co_mem_word\ _634_ vdd gnd INVX1
X_1896_ _1134_ _531_ _602_ _806_ vdd gnd MUX2X1
X_1476_ _431_ _465_ _429_ _926_ vdd gnd AOI21X1
X_1285_ _597_ _596_ vdd gnd INVX1
X_2702_ _833_ i_clk_sys_ext \u_cpu.ctrl.o_ibus_adr\[18] vdd gnd DFFPOSX1
X_2299_ _202_ _208_ vdd gnd INVX1
X_2511_ _808_ i_clk_sys_ext \u_cpu.ctrl.o_ibus_adr\[31] vdd gnd DFFPOSX1
XFILL98550x21750 gnd vdd FILL
X_1799_ mem_dbus_ack _1076_ _1077_ vdd gnd NAND2X1
X_1379_ _504_ _503_ vdd gnd INVX1
X_2740_ _870_ i_clk_sys_ext \u_cpu.bufreg2.dhi\[3] vdd gnd DFFPOSX1
X_2320_ _163_ _223_ _167_ _169_ _710_ vdd 
+ gnd
+ AOI22X1
X_1820_ _1089_ _1092_ _1091_ _840_ vdd gnd MUX2X1
X_1400_ \u_cpu.state.init_done\ \u_cpu.bufreg.i_right_shift_op\ _601_ _489_ vdd gnd NAND3X1
X_2605_ _787_ i_clk_sys_ext \u_rf_if.rtrig1\ vdd gnd DFFPOSX1
X_2414_ \u_cpu.ctrl.o_ibus_adr\[1] _142_ _288_ vdd gnd NAND2X1
X_2643_ _775_ i_clk_sys_ext \u_rf_if.read_buf0\[1] vdd gnd DFFPOSX1
X_2223_ ren _139_ vdd gnd INVX1
X_1914_ ren _589_ _1150_ vdd gnd NOR2X1
X_2452_ _523_ _492_ _674_ vdd gnd NOR2X1
X_2032_ _1179_ _568_ _11_ vdd gnd NOR2X1
X_1723_ mem_dbus_ack _463_ _1018_ vdd gnd NAND2X1
X_1303_ _579_ _578_ vdd gnd INVX1
X_2508_ _922_ i_clk_sys_ext \u_cpu.immdec.gen_immdec_w_eq_1.imm30_25\[1] vdd gnd DFFPOSX1
X_2681_ _813_ i_clk_sys_ext \u_cpu.ctrl.o_ibus_adr\[30] vdd gnd DFFPOSX1
X_2261_ _162_ _168_ _174_ _720_ vdd gnd OAI21X1
X_1952_ _1179_ _1186_ \u_rf_if.i_stream_rs2_en\ _1187_ vdd gnd OAI21X1
X_1532_ rf_wreg0_to_if[2] _383_ vdd gnd INVX1
X_2737_ _868_ i_clk_sys_ext \u_cpu.bufreg.i_shamt\[1] vdd gnd DFFPOSX1
X_2317_ \u_mem_serial.bit_count\[3] \u_mem_serial.state\[0] _221_ vdd gnd NAND2X1
X_2490_ _906_ i_clk_sys_ext \u_cpu.bufreg.data\[28] vdd gnd DFFPOSX1
X_2070_ _37_ _1174_ _38_ _775_ vdd gnd OAI21X1
X_1761_ mem_dbus_ack \u_cpu.bufreg2.dlo\[11] _1047_ _1048_ vdd gnd OAI21X1
X_1341_ _542_ _548_ _541_ vdd gnd NAND2X1
X_2546_ _708_ i_clk_fast rf_shared_rdata[0] vdd gnd DFFPOSX1
X_2126_ _73_ _74_ _755_ vdd gnd NOR2X1
X_1817_ _601_ _628_ _1091_ vdd gnd NOR2X1
X_1990_ raddr[3] _1218_ _1219_ _1220_ vdd gnd OAI21X1
X_1570_ _385_ _357_ _354_ _907_ vdd gnd OAI21X1
X_2355_ \u_cpu.bufreg2.dlo\[12] _185_ _184_ \u_mem_serial.shift_reg\[11] _243_ vdd 
+ gnd
+ AOI22X1
X_1626_ \u_cpu.state.i_ctrl_misalign\ _664_ vdd gnd INVX1
X_2584_ _656_ _655_ _654_ vdd gnd NOR2X1
X_2164_ _29_ _100_ i_rst_n _101_ vdd gnd OAI21X1
X_1855_ \u_cpu.ctrl.o_ibus_adr\[7] _1110_ vdd gnd INVX1
X_1435_ _561_ _463_ _462_ vdd gnd NOR2X1
X_2393_ \u_mem_serial.shift_reg\[21] _184_ _270_ _271_ vdd gnd AOI21X1
X_1664_ \u_mem_serial.shift_reg\[30] \u_cpu.bufreg2.cnt_next\[6] mem_dbus_ack _970_ vdd gnd MUX2X1
X_1244_ _1194_ o_mem_sck vdd gnd BUFX2
X_2449_ _312_ _179_ _318_ _316_ _676_ vdd 
+ gnd
+ AOI22X1
X_2029_ _1179_ _1186_ \u_rf_if.stream_active\ _9_ vdd gnd OAI21X1
X_1893_ _1126_ _1130_ _1132_ vdd gnd AND2X2
X_1473_ \u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20\[0] _431_ vdd gnd INVX1
X_2678_ _807_ i_clk_sys_ext \u_cpu.alu.add_cy_r\ vdd gnd DFFPOSX1
X_2258_ \u_mem_serial.bit_count\[1] _171_ _172_ vdd gnd NOR2X1
X_1949_ \u_rf_if.stream_cnt\[3] _1183_ _1184_ vdd gnd NAND2X1
X_1529_ _392_ _386_ _389_ _916_ vdd gnd MUX2X1
X_1282_ _600_ _601_ _599_ vdd gnd NOR2X1
X_2487_ _903_ i_clk_sys_ext \u_cpu.bufreg.data\[25] vdd gnd DFFPOSX1
X_2067_ _567_ _1174_ _36_ _776_ vdd gnd OAI21X1
X_1758_ _1013_ _1044_ _1045_ _855_ vdd gnd AOI21X1
X_1338_ \u_cpu.branch_op\ _545_ _544_ vdd gnd NOR2X1
X_2296_ _205_ _202_ _206_ vdd gnd NAND2X1
X_1987_ _1209_ _1216_ _1217_ _794_ vdd gnd OAI21X1
X_1567_ _356_ _413_ _355_ vdd gnd NOR2X1
X_1796_ \u_cpu.bufreg2.dlo\[2] _1013_ _1075_ vdd gnd NOR2X1
X_1376_ \u_cpu.bufreg.i_shamt\[0] \u_cpu.state.i_ctrl_misalign\ _640_ _506_ vdd gnd AOI21X1
X_2602_ \u_cpu.branch_op\ _661_ _660_ vdd gnd NOR2X1
X_2199_ \u_rf_if.rreg0_latched\[1] _561_ _124_ vdd gnd NAND2X1
X_2411_ \u_mem_serial.shift_reg\[24] _184_ _285_ _286_ vdd gnd AOI21X1
X_1699_ _972_ \u_mem_serial.shift_reg\[25] _969_ _1000_ vdd gnd OAI21X1
X_1279_ _604_ _603_ _602_ vdd gnd NAND2X1
X_2640_ _772_ i_clk_sys_ext \u_rf_if.read_buf0\[4] vdd gnd DFFPOSX1
X_2220_ _1196_ _138_ vdd gnd INVX1
X_1911_ _1146_ _1147_ vdd gnd INVX1
X_1720_ mem_dbus_ack \u_cpu.bufreg2.dlo\[20] _1015_ _1016_ vdd gnd OAI21X1
X_1300_ _583_ _582_ _595_ _659_ _581_ vdd 
+ gnd
+ AOI22X1
X_2505_ _919_ i_clk_sys_ext rreg1[2] vdd gnd DFFPOSX1
X_2734_ _865_ i_clk_sys_ext \u_cpu.bufreg2.dlo\[21] vdd gnd DFFPOSX1
X_2314_ \u_mem_serial.bit_count\[0] \u_mem_serial.bit_count\[1] \u_mem_serial.state\[0] _219_ vdd gnd OAI21X1
X_2543_ _680_ i_clk_fast \u_mem_serial.shift_reg\[26] vdd gnd DFFPOSX1
X_2123_ _71_ _1170_ _72_ _756_ vdd gnd AOI21X1
X_1814_ _1088_ _1086_ _969_ _842_ vdd gnd MUX2X1
X_2352_ _1046_ _241_ _179_ _696_ vdd gnd MUX2X1
X_1623_ _328_ _662_ _597_ _881_ vdd gnd MUX2X1
X_2408_ _521_ _195_ _283_ vdd gnd NOR2X1
X_2581_ _732_ i_clk_sys_ext \u_rf_if.rreg0_latched\[0] vdd gnd DFFPOSX1
X_2161_ _1181_ _96_ _98_ vdd gnd NOR2X1
X_1852_ _1107_ _1108_ _1091_ _824_ vdd gnd MUX2X1
X_1432_ _467_ _466_ _468_ _465_ vdd gnd OAI21X1
X_2637_ _770_ i_clk_sys_ext \u_rf_if.read_buf0\[6] vdd gnd DFFPOSX1
X_2217_ _132_ _134_ _135_ _136_ vdd gnd OAI21X1
X_2390_ _1226_ _139_ _268_ vdd gnd NAND2X1
X_1908_ _626_ _475_ _1144_ _803_ vdd gnd AOI21X1
X_1661_ _963_ _964_ _966_ _967_ vdd gnd OAI21X1
X_2446_ _142_ _315_ _316_ vdd gnd NAND2X1
X_2026_ _7_ _1148_ _8_ vdd gnd NAND2X1
X_1717_ _968_ _1013_ vdd gnd INVX1
X_1890_ \u_cpu.bne_or_bge\ \u_cpu.bufreg.i_right_shift_op\ \u_cpu.decode.co_mem_word\ _1129_ vdd gnd OAI21X1
X_1470_ mem_ibus_ack _437_ _497_ _433_ vdd gnd OAI21X1
X_2675_ _803_ i_clk_sys_ext \u_cpu.state.o_cnt\[2] vdd gnd DFFPOSX1
X_2255_ \u_mem_serial.bit_count\[3] _169_ vdd gnd INVX1
X_1946_ \u_rf_if.stream_cnt\[2] _1181_ vdd gnd INVX1
X_1526_ \u_cpu.immdec.gen_immdec_w_eq_1.imm11_7\[4] _388_ vdd gnd INVX1
X_2484_ _900_ i_clk_sys_ext \u_cpu.bufreg.data\[22] vdd gnd DFFPOSX1
X_2064_ _1206_ _34_ _1213_ raddr[1] _35_ vdd 
+ gnd
+ AOI22X1
X_1755_ mem_dbus_ack _1042_ _1043_ vdd gnd NAND2X1
X_1335_ \u_cpu.bufreg.i_sh_signed\ _547_ vdd gnd INVX1
X_2293_ \u_mem_serial.bit_count\[1] _191_ _203_ vdd gnd NOR2X1
X_1984_ _1215_ _1200_ _795_ vdd gnd NOR2X1
X_1564_ mem_ibus_ack _418_ _358_ vdd gnd NOR2X1
X_2349_ \u_cpu.bufreg2.dlo\[9] _185_ _184_ \u_mem_serial.shift_reg\[8] _240_ vdd 
+ gnd
+ AOI22X1
X_1793_ _1013_ _1071_ _1072_ _847_ vdd gnd AOI21X1
X_1373_ \u_cpu.state.i_ctrl_misalign\ \u_cpu.bufreg2.dlo\[16] \u_cpu.bufreg.data\[0] _509_ vdd gnd AOI21X1
X_2578_ _688_ i_clk_fast \u_mem_serial.shift_reg\[18] vdd gnd DFFPOSX1
X_2158_ _95_ _96_ vdd gnd INVX1
X_1849_ \u_cpu.ctrl.o_ibus_adr\[10] _1107_ vdd gnd INVX1
X_1429_ _469_ _468_ vdd gnd INVX1
X_2387_ _1007_ _186_ _478_ _258_ _266_ vdd 
+ gnd
+ OAI22X1
X_1658_ _627_ _664_ _637_ _964_ vdd gnd OAI21X1
X_2196_ _122_ _114_ _733_ vdd gnd AND2X2
X_1887_ _601_ _1126_ _1127_ vdd gnd NOR2X1
X_1467_ _436_ _465_ _435_ vdd gnd NOR2X1
X_1696_ _615_ _996_ _618_ _997_ vdd gnd OAI21X1
X_1276_ \u_cpu.bufreg.i_right_shift_op\ _607_ _606_ _605_ vdd gnd OAI21X1
X_2502_ _916_ i_clk_sys_ext rf_wreg0_to_if[3] vdd gnd DFFPOSX1
X_2099_ _568_ \u_rf_if.read_buf0\[13] \u_rf_if.read_buf0\[12] _1174_ _57_ vdd 
+ gnd
+ OAI22X1
X_2731_ _862_ i_clk_sys_ext \u_cpu.bufreg2.dlo\[18] vdd gnd DFFPOSX1
X_2311_ \u_mem_serial.state\[0] _159_ _216_ vdd gnd NOR2X1
X_1599_ _340_ _339_ _597_ _893_ vdd gnd MUX2X1
X_2540_ _704_ i_clk_fast \u_mem_serial.shift_reg\[2] vdd gnd DFFPOSX1
X_2120_ _69_ _70_ _757_ vdd gnd NOR2X1
X_1811_ \u_cpu.bufreg2.cnt_next\[6] _1086_ vdd gnd INVX1
X_1620_ \u_cpu.bufreg.data\[4] _328_ vdd gnd INVX1
X_2405_ \u_mem_serial.shift_reg\[25] _280_ vdd gnd INVX1
X_2634_ _768_ i_clk_sys_ext \u_rf_if.read_buf0\[8] vdd gnd DFFPOSX1
X_2214_ \u_rf_if.rs2_stream_buf\[0] _1177_ _133_ vdd gnd NOR2X1
X_1905_ i_rst_n \u_rf_if.prefetch_active\ _1143_ vdd gnd NAND2X1
X_2443_ \u_cpu.ctrl.o_ibus_adr\[5] _202_ _313_ vdd gnd NOR2X1
X_2023_ _383_ _380_ _589_ _5_ vdd gnd NAND3X1
X_1714_ mem_dbus_ack _478_ _1011_ vdd gnd NAND2X1
X_2672_ _675_ i_clk_sys_ext \u_cpu.bufreg2.i_bytecnt\[1] vdd gnd DFFPOSX1
X_2252_ \u_mem_serial.bit_count\[2] _165_ _166_ vdd gnd NOR2X1
X_1943_ _1177_ _1178_ vdd gnd INVX1
X_1523_ _660_ _591_ _656_ _391_ vdd gnd OAI21X1
X_2728_ _859_ i_clk_sys_ext \u_cpu.bufreg2.dlo\[15] vdd gnd DFFPOSX1
X_2308_ \u_mem_serial.bit_count\[5] _174_ _210_ _215_ vdd gnd NAND3X1
X_2481_ _898_ i_clk_sys_ext \u_cpu.bufreg.data\[20] vdd gnd DFFPOSX1
X_2061_ _1137_ _1209_ _32_ _778_ vdd gnd OAI21X1
X_1752_ \u_cpu.bufreg2.dlo\[12] _1013_ _1041_ vdd gnd NOR2X1
X_1332_ \u_rf_if.rs2_stream_buf\[0] _551_ \u_rf_if.i_stream_rs2_en\ _550_ vdd gnd NAND3X1
X_2537_ _677_ i_clk_fast \u_mem_serial.shift_reg\[29] vdd gnd DFFPOSX1
X_2117_ _67_ _1170_ _68_ _758_ vdd gnd AOI21X1
X_2290_ _197_ _198_ _200_ _717_ vdd gnd MUX2X1
X_1808_ \u_cpu.bufreg.i_shamt\[0] mem_dbus_ack _1083_ _1084_ vdd gnd OAI21X1
X_1981_ _1202_ _1209_ _1214_ _797_ vdd gnd OAI21X1
X_1561_ mem_ibus_ack \u_mem_serial.shift_reg\[30] _426_ _360_ vdd gnd AOI21X1
X_2766_ _896_ i_clk_sys_ext \u_cpu.bufreg.data\[18] vdd gnd DFFPOSX1
X_2346_ _1057_ _238_ _179_ _699_ vdd gnd MUX2X1
X_1617_ _331_ _330_ _597_ _884_ vdd gnd MUX2X1
X_1790_ mem_dbus_ack _494_ _1070_ vdd gnd NAND2X1
X_1370_ _513_ _512_ vdd gnd INVX1
X_2575_ _729_ i_clk_sys_ext \u_rf_if.rreg1_latched\[0] vdd gnd DFFPOSX1
X_2155_ \u_rf_if.stream_cnt\[1] _92_ _93_ _94_ vdd gnd OAI21X1
X_1846_ _1104_ _1105_ _1091_ _827_ vdd gnd MUX2X1
X_1426_ mem_ibus_ack _547_ _471_ _934_ vdd gnd OAI21X1
X_2384_ _1147_ _482_ _216_ _263_ vdd gnd OAI21X1
X_1655_ _669_ _596_ _961_ _874_ vdd gnd AOI21X1
X_2193_ _1136_ _120_ _114_ _121_ vdd gnd OAI21X1
X_1884_ \u_cpu.ctrl.i_jump\ _513_ _1091_ _1125_ vdd gnd OAI21X1
X_1464_ _440_ _465_ _438_ _929_ vdd gnd AOI21X1
X_2669_ _798_ i_clk_sys_ext \u_rf_if.issue_idx\[5] vdd gnd DFFPOSX1
X_2249_ _145_ _156_ _142_ _163_ vdd gnd OAI21X1
X_1693_ \u_cpu.bufreg.i_shamt\[1] _994_ vdd gnd INVX1
X_1273_ _610_ _609_ _608_ vdd gnd AND2X2
X_2478_ \u_cpu.decode.co_mem_word\ _656_ _638_ vdd gnd NOR2X1
X_2058_ _1181_ _1182_ _29_ _30_ vdd gnd OAI21X1
X_1749_ \u_mem_serial.shift_reg\[12] _1038_ vdd gnd INVX1
X_1329_ _553_ _552_ vdd gnd INVX1
X_2287_ rf_shared_rdata[0] _198_ vdd gnd INVX1
X_1978_ _1207_ _1212_ vdd gnd INVX1
X_1558_ \u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20\[0] _364_ _366_ _363_ vdd gnd OAI21X1
X_2096_ _568_ \u_rf_if.read_buf0\[12] \u_rf_if.read_buf0\[13] _1171_ _55_ vdd 
+ gnd
+ OAI22X1
X_1787_ mem_dbus_ack \u_cpu.bufreg2.dlo\[5] _1067_ _1068_ vdd gnd OAI21X1
X_1367_ _516_ _515_ vdd gnd INVX1
X_1596_ \u_cpu.bufreg.data\[16] _340_ vdd gnd INVX1
X_2402_ _217_ _277_ _411_ _258_ _278_ vdd 
+ gnd
+ OAI22X1
X_2631_ _765_ i_clk_sys_ext \u_rf_if.read_buf0\[11] vdd gnd DFFPOSX1
X_2211_ raddr[6] _1213_ _131_ vdd gnd NAND2X1
X_1902_ \u_rf_if.issue_idx\[0] _1139_ _1140_ vdd gnd NOR2X1
X_1499_ \u_mem_serial.shift_reg\[23] _411_ vdd gnd INVX1
X_2440_ _179_ _310_ _311_ vdd gnd NOR2X1
X_2020_ _1227_ _2_ _1221_ _3_ vdd gnd OAI21X1
X_1711_ mem_dbus_ack \u_cpu.bufreg2.dlo\[22] _1008_ _1009_ vdd gnd OAI21X1
X_1940_ \u_rf_if.read_buf0\[31] \u_rf_if.stream_active\ _1175_ \u_rf_if.read_buf0\[30] _1176_ vdd 
+ gnd
+ AOI22X1
X_1520_ _394_ _413_ _393_ vdd gnd NOR2X1
X_2725_ _856_ i_clk_sys_ext \u_cpu.bufreg2.dlo\[12] vdd gnd DFFPOSX1
X_2305_ _211_ _212_ _210_ _714_ vdd gnd OAI21X1
X_2534_ _701_ i_clk_fast \u_mem_serial.shift_reg\[5] vdd gnd DFFPOSX1
X_2114_ _65_ _66_ _759_ vdd gnd NOR2X1
X_1805_ mem_dbus_ack \u_cpu.bufreg2.dlo\[1] _1081_ _1082_ vdd gnd OAI21X1
XFILL98550x36150 gnd vdd FILL
X_2763_ _893_ i_clk_sys_ext \u_cpu.bufreg.data\[15] vdd gnd DFFPOSX1
X_2343_ \u_cpu.bufreg2.dlo\[6] _185_ _184_ \u_mem_serial.shift_reg\[5] _237_ vdd 
+ gnd
+ AOI22X1
X_1614_ \u_cpu.bufreg.data\[7] _331_ vdd gnd INVX1
X_2572_ _728_ i_clk_sys_ext \u_rf_if.rreg1_latched\[1] vdd gnd DFFPOSX1
X_2152_ _89_ _91_ _746_ vdd gnd AND2X2
X_1843_ \u_cpu.ctrl.o_ibus_adr\[13] _1104_ vdd gnd INVX1
X_1423_ _626_ _625_ i_rst_n _472_ vdd gnd OAI21X1
X_2628_ _763_ i_clk_sys_ext \u_rf_if.read_buf0\[13] vdd gnd DFFPOSX1
X_2208_ _403_ _128_ _492_ _727_ vdd gnd AOI21X1
X_2381_ _478_ _179_ _257_ _260_ _686_ vdd 
+ gnd
+ AOI22X1
X_1652_ \u_cpu.bufreg.i_sh_signed\ \u_cpu.bufreg.data\[31] _959_ vdd gnd NAND2X1
X_2437_ _1113_ _202_ _307_ _308_ vdd gnd OAI21X1
X_2017_ _1242_ _1197_ vdd gnd INVX1
X_2190_ _1137_ _117_ _118_ _735_ vdd gnd AOI21X1
X_1708_ _1004_ _1006_ _968_ _866_ vdd gnd MUX2X1
X_1881_ _1091_ _1123_ vdd gnd INVX1
X_1461_ \u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20\[3] _440_ vdd gnd INVX1
X_2666_ _795_ i_clk_sys_ext \u_rf_if.pending_read\ vdd gnd DFFPOSX1
X_2246_ \u_cpu.bufreg2.i_op_b_sel\ _159_ _160_ _161_ vdd gnd NAND3X1
X_1937_ _1168_ _1173_ vdd gnd INVX1
X_1517_ _396_ _413_ _395_ vdd gnd NOR2X1
X_1690_ _972_ _991_ _992_ vdd gnd NAND2X1
X_1270_ \u_cpu.bufreg2.dhi\[4] _612_ _611_ vdd gnd NOR2X1
X_2475_ _642_ _643_ _641_ vdd gnd NAND2X1
X_2055_ _1182_ _1205_ raddr[0] _1218_ _28_ vdd 
+ gnd
+ OAI22X1
X_1746_ mem_dbus_ack \u_cpu.bufreg2.dlo\[14] _1035_ _1036_ vdd gnd OAI21X1
X_1326_ \u_mem_serial.shift_reg\[2] _555_ vdd gnd INVX1
X_2284_ _141_ _195_ _193_ _196_ vdd gnd NAND3X1
X_1975_ _1208_ _1209_ vdd gnd INVX1
X_1555_ \u_cpu.branch_op\ _661_ _366_ vdd gnd NAND2X1
X_2093_ \u_rf_if.read_buf0\[12] _53_ vdd gnd INVX1
X_1784_ \u_cpu.bufreg2.dlo\[5] _1013_ _1066_ vdd gnd NOR2X1
X_1364_ \u_cpu.ctrl.pc\ \u_cpu.ctrl.pc_plus_4_cy_r_w\ _518_ vdd gnd NOR2X1
X_2569_ _686_ i_clk_fast \u_mem_serial.shift_reg\[20] vdd gnd DFFPOSX1
X_2149_ _14_ _89_ vdd gnd INVX1
X_1593_ _343_ _342_ _597_ _896_ vdd gnd MUX2X1
X_2378_ _184_ _258_ vdd gnd INVX1
X_1649_ _953_ _948_ _951_ _957_ vdd gnd OAI21X1
X_2187_ _1138_ _113_ _116_ vdd gnd NOR2X1
X_1878_ _641_ _581_ _643_ _1121_ vdd gnd OAI21X1
X_1458_ mem_ibus_ack _452_ _443_ _442_ vdd gnd OAI21X1
X_1687_ _616_ _615_ _989_ vdd gnd NOR2X1
X_1267_ _616_ _615_ _614_ vdd gnd NAND2X1
X_1496_ _656_ _655_ _561_ _414_ vdd gnd OAI21X1
X_2722_ _853_ i_clk_sys_ext \u_cpu.bufreg2.dlo\[9] vdd gnd DFFPOSX1
X_2302_ _157_ _210_ vdd gnd INVX1
X_2531_ _944_ i_clk_sys_ext \u_cpu.decode.opcode\[2] vdd gnd DFFPOSX1
X_2111_ _60_ _1175_ _64_ _760_ vdd gnd AOI21X1
X_1802_ _1013_ _1078_ _1079_ _845_ vdd gnd AOI21X1
X_1399_ _491_ _490_ vdd gnd INVX1
X_2760_ _890_ i_clk_sys_ext \u_cpu.bufreg.data\[12] vdd gnd DFFPOSX1
X_2340_ _559_ _235_ _179_ _702_ vdd gnd MUX2X1
XFILL98550x90150 gnd vdd FILL
X_1611_ _334_ _333_ _597_ _887_ vdd gnd MUX2X1
X_1840_ _1101_ _1102_ _1091_ _830_ vdd gnd MUX2X1
X_1420_ \u_cpu.state.o_cnt\[2] _475_ vdd gnd INVX1
X_2625_ _760_ i_clk_sys_ext \u_rf_if.read_buf0\[16] vdd gnd DFFPOSX1
X_2205_ \u_rf_if.rreg1_latched\[1] _561_ _127_ vdd gnd NAND2X1
X_2434_ \u_mem_serial.shift_reg\[29] _305_ vdd gnd INVX1
X_2014_ _1239_ _1149_ _1240_ vdd gnd NOR2X1
X_1705_ \u_cpu.bufreg2.dlo\[22] _1004_ vdd gnd INVX1
X_2663_ _791_ i_clk_sys_ext \u_rf_if.write_wait\[0] vdd gnd DFFPOSX1
X_2243_ \u_mem_serial.active_we\ _157_ _158_ vdd gnd NOR2X1
X_1934_ \u_rf_if.stream_active\ _1169_ _1170_ vdd gnd NOR2X1
X_1514_ _561_ _399_ _398_ vdd gnd NOR2X1
X_2719_ _850_ i_clk_sys_ext \u_cpu.bufreg2.dlo\[6] vdd gnd DFFPOSX1
X_2472_ _652_ _645_ \u_cpu.ctrl.pc\ _644_ vdd gnd OAI21X1
X_2052_ \u_rf_if.rreg1_latched\[0] _1211_ _1213_ raddr[4] _26_ vdd 
+ gnd
+ AOI22X1
X_1743_ _1013_ _1032_ _1033_ _858_ vdd gnd AOI21X1
X_1323_ \u_mem_serial.shift_reg\[6] _558_ vdd gnd INVX1
X_2528_ _941_ i_clk_sys_ext \u_cpu.state.cnt_r\[0] vdd gnd DFFPOSX1
X_2108_ _568_ \u_rf_if.read_buf0\[16] \u_rf_if.read_buf0\[17] _1171_ _63_ vdd 
+ gnd
+ OAI22X1
X_2281_ _191_ _178_ _192_ _193_ vdd gnd OAI21X1
X_1972_ _1205_ _1206_ vdd gnd INVX1
X_1552_ _601_ _373_ _369_ _910_ vdd gnd OAI21X1
X_2757_ _725_ i_clk_sys_ext \u_rf_if.rs2_stream_buf\[0] vdd gnd DFFPOSX1
X_2337_ \u_cpu.bufreg2.dlo\[3] _185_ _184_ \u_mem_serial.shift_reg\[2] _234_ vdd 
+ gnd
+ AOI22X1
X_2090_ \u_rf_if.read_buf0\[11] _51_ vdd gnd INVX1
X_1608_ \u_cpu.bufreg.data\[10] _334_ vdd gnd INVX1
X_1781_ _1013_ _1062_ _1063_ _850_ vdd gnd AOI21X1
X_1361_ \u_cpu.ctrl.pc\ _521_ vdd gnd INVX1
X_2566_ _685_ i_clk_fast \u_mem_serial.shift_reg\[21] vdd gnd DFFPOSX1
X_2146_ \u_rf_if.read_buf0\[29] _1174_ _87_ vdd gnd NOR2X1
X_1837_ \u_cpu.ctrl.o_ibus_adr\[16] _1101_ vdd gnd INVX1
X_1417_ _477_ _476_ vdd gnd INVX1
X_1590_ \u_cpu.bufreg.data\[19] _343_ vdd gnd INVX1
X_2375_ _252_ _1234_ \u_rf_if.wdata0_r\[0] _255_ vdd gnd OAI21X1
X_1646_ _948_ _953_ _954_ _955_ vdd gnd AOI21X1
X_2184_ _1200_ _114_ vdd gnd INVX1
X_1875_ \u_cpu.ctrl.o_ibus_adr\[29] _1120_ vdd gnd INVX1
X_1455_ \u_mem_serial.shift_reg\[15] _445_ vdd gnd INVX1
X_1684_ \u_cpu.bufreg2.dhi\[4] _982_ _986_ _987_ vdd gnd AOI21X1
X_1264_ \u_cpu.bufreg2.dhi\[5] _617_ vdd gnd INVX1
X_2469_ _661_ _648_ _647_ vdd gnd NOR2X1
X_2049_ \u_rf_if.write_wait\[1] \u_rf_if.write_wait\[0] _24_ vdd gnd NAND2X1
X_1493_ _418_ _417_ _426_ _921_ vdd gnd MUX2X1
X_2698_ _830_ i_clk_sys_ext \u_cpu.ctrl.o_ibus_adr\[15] vdd gnd DFFPOSX1
X_2278_ _376_ _190_ _179_ _719_ vdd gnd MUX2X1
X_1969_ \u_rf_if.i_stream_rs2_en\ _1203_ vdd gnd INVX1
X_1549_ mem_ibus_ack \u_mem_serial.shift_reg\[19] _465_ _370_ vdd gnd AOI21X1
X_2087_ \u_rf_if.read_buf0\[8] _1174_ _49_ vdd gnd NOR2X1
X_1778_ mem_dbus_ack _558_ _1061_ vdd gnd NAND2X1
X_1358_ _632_ \u_cpu.decode.opcode\[2] _524_ vdd gnd AND2X2
X_1587_ _346_ _345_ _597_ _899_ vdd gnd MUX2X1
X_1396_ mem_ibus_ack _661_ _493_ _942_ vdd gnd OAI21X1
X_2622_ _779_ i_clk_sys_ext raddr[0] vdd gnd DFFPOSX1
X_2202_ _455_ _125_ _492_ _730_ vdd gnd AOI21X1
X_2431_ _195_ _301_ _302_ _303_ vdd gnd OAI21X1
X_2011_ _1236_ _1237_ _1222_ _790_ vdd gnd AOI21X1
X_1702_ mem_dbus_ack _359_ _1002_ vdd gnd NAND2X1
X_1299_ _627_ _625_ _659_ _582_ vdd gnd AOI21X1
X_2660_ _698_ i_clk_fast \u_mem_serial.shift_reg\[8] vdd gnd DFFPOSX1
X_2240_ _155_ _152_ _146_ _722_ vdd gnd OAI21X1
X_1931_ _1166_ _1139_ _1167_ vdd gnd NOR2X1
X_1511_ _406_ _413_ _401_ _919_ vdd gnd AOI21X1
X_2716_ _847_ i_clk_sys_ext \u_cpu.bufreg2.dlo\[3] vdd gnd DFFPOSX1
X_1740_ mem_dbus_ack _1030_ _1031_ vdd gnd NAND2X1
X_1320_ mem_ibus_ack _561_ vdd gnd INVX1
X_2525_ _938_ i_clk_sys_ext \u_cpu.bufreg.i_right_shift_op\ vdd gnd DFFPOSX1
X_2105_ _568_ \u_rf_if.read_buf0\[15] \u_rf_if.read_buf0\[14] _1174_ _61_ vdd 
+ gnd
+ OAI22X1
XFILL98550x43350 gnd vdd FILL
X_2754_ _885_ i_clk_sys_ext \u_cpu.bufreg.data\[7] vdd gnd DFFPOSX1
X_2334_ _1076_ _232_ _179_ _705_ vdd gnd MUX2X1
X_1605_ _337_ _336_ _597_ _890_ vdd gnd MUX2X1
X_2563_ _720_ i_clk_fast \u_mem_serial.bit_count\[4] vdd gnd DFFPOSX1
X_2143_ \u_rf_if.read_buf0\[30] _85_ vdd gnd INVX1
X_1834_ _1098_ _1099_ _1091_ _833_ vdd gnd MUX2X1
X_1414_ mem_ibus_ack _636_ _479_ _938_ vdd gnd OAI21X1
X_2619_ _756_ i_clk_sys_ext \u_rf_if.read_buf0\[20] vdd gnd DFFPOSX1
X_2372_ \u_rf_if.wdata0_next_phase\ _1229_ _1230_ _252_ vdd gnd AOI21X1
X_1643_ _950_ \u_cpu.bufreg.c_r\ _952_ vdd gnd OR2X2
X_2428_ _216_ _1155_ _300_ vdd gnd NAND2X1
X_2008_ _1234_ _1233_ _1235_ vdd gnd NOR2X1
X_2181_ \u_rf_if.issue_idx\[0] _1207_ _112_ vdd gnd NAND2X1
X_1872_ \u_cpu.ctrl.o_ibus_adr\[30] _1118_ vdd gnd INVX1
X_1452_ _448_ _465_ _447_ vdd gnd NOR2X1
X_2657_ \u_cpu.o_wdata0\ i_clk_sys_ext \u_rf_if.wdata0_next\[0] vdd gnd DFFPOSX1
X_2237_ \u_mem_serial.req_pending\ _153_ vdd gnd INVX1
X_1928_ \u_rf_if.issue_idx\[4] \u_rf_if.issue_idx\[5] _1164_ vdd gnd NOR2X1
X_1508_ _404_ _403_ vdd gnd INVX1
X_1681_ _981_ _983_ _984_ vdd gnd NOR2X1
X_1261_ _636_ _621_ _628_ _620_ vdd gnd OAI21X1
X_2466_ _651_ _650_ vdd gnd INVX1
X_2046_ _1145_ _21_ mem_ibus_ack _22_ vdd gnd AOI21X1
X_1737_ \u_cpu.bufreg2.dlo\[15] _1013_ _1029_ vdd gnd NOR2X1
X_1317_ \u_cpu.alu.add_cy_r\ _564_ vdd gnd INVX1
X_1490_ _420_ _419_ _426_ _922_ vdd gnd MUX2X1
X_2695_ _827_ i_clk_sys_ext \u_cpu.ctrl.o_ibus_adr\[12] vdd gnd DFFPOSX1
X_2275_ _161_ _187_ _188_ vdd gnd AND2X2
X_1966_ _1135_ _1200_ _798_ vdd gnd NOR2X1
X_1546_ _636_ _653_ _374_ _373_ vdd gnd OAI21X1
X_2084_ \u_rf_if.read_buf0\[9] _47_ vdd gnd INVX1
X_1775_ mem_dbus_ack \u_cpu.bufreg2.dlo\[8] _1058_ _1059_ vdd gnd OAI21X1
X_1355_ _528_ _532_ _527_ vdd gnd NAND2X1
X_1584_ \u_cpu.bufreg.data\[22] _346_ vdd gnd INVX1
X_2369_ \u_cpu.bufreg2.dlo\[19] _185_ _184_ \u_mem_serial.shift_reg\[18] _250_ vdd 
+ gnd
+ AOI22X1
X_1393_ \u_mem_serial.shift_reg\[3] _494_ vdd gnd INVX1
X_2598_ _741_ i_clk_sys_ext \u_rf_if.rcnt\[2] vdd gnd DFFPOSX1
X_2178_ _108_ _109_ _1221_ _110_ vdd gnd OAI21X1
X_1869_ _1116_ _521_ _1091_ _815_ vdd gnd MUX2X1
X_1449_ _561_ _451_ _450_ vdd gnd NOR2X1
X_1678_ \u_cpu.bufreg2.dhi\[3] _981_ vdd gnd INVX1
X_1258_ _624_ _623_ vdd gnd INVX1
X_1487_ _422_ _421_ _426_ _923_ vdd gnd MUX2X1
X_1296_ _586_ _622_ _585_ vdd gnd NAND2X1
X_2713_ _844_ i_clk_sys_ext \u_cpu.bufreg2.dlo\[0] vdd gnd DFFPOSX1
X_2522_ _935_ i_clk_sys_ext \u_cpu.bufreg2.i_bytecnt\[0] vdd gnd DFFPOSX1
X_2102_ _568_ \u_rf_if.read_buf0\[14] \u_rf_if.read_buf0\[15] _1171_ _59_ vdd 
+ gnd
+ OAI22X1
XFILL98550x64950 gnd vdd FILL
X_2751_ _882_ i_clk_sys_ext \u_cpu.bufreg.data\[4] vdd gnd DFFPOSX1
X_2331_ _226_ _230_ _179_ _231_ vdd gnd AOI21X1
X_1602_ \u_cpu.bufreg.data\[13] _337_ vdd gnd INVX1
X_2560_ _788_ i_clk_sys_ext \u_rf_if.wen0_r\ vdd gnd DFFPOSX1
X_2140_ \u_rf_if.read_buf0\[27] _1174_ _83_ vdd gnd NOR2X1
X_1831_ \u_cpu.ctrl.o_ibus_adr\[19] _1098_ vdd gnd INVX1
X_1411_ _580_ _492_ _940_ vdd gnd NOR2X1
X_2616_ _753_ i_clk_sys_ext \u_rf_if.read_buf0\[23] vdd gnd DFFPOSX1
X_1640_ \u_cpu.decode.opcode\[0] _655_ _566_ _949_ vdd gnd OAI21X1
X_2425_ _179_ _297_ _298_ vdd gnd NOR2X1
X_2005_ _1147_ _482_ \u_rf_if.wen0_r\ _1232_ vdd gnd OAI21X1
X_2654_ _786_ i_clk_sys_ext \u_rf_if.stream_active\ vdd gnd DFFPOSX1
X_2234_ _601_ _149_ _150_ vdd gnd NAND2X1
X_1925_ _1158_ _1160_ _1156_ _1161_ vdd gnd NAND3X1
X_1505_ rreg1[2] _406_ vdd gnd INVX1
X_2463_ _326_ _1123_ _327_ _671_ vdd gnd OAI21X1
X_2043_ \u_rf_if.read_buf1\ _19_ _481_ _20_ vdd gnd OAI21X1
X_1734_ _1013_ _1025_ _1026_ _860_ vdd gnd AOI21X1
X_1314_ \u_rf_if.read_buf0\[0] _567_ vdd gnd INVX1
X_2519_ _932_ i_clk_sys_ext rreg0[2] vdd gnd DFFPOSX1
X_2692_ _824_ i_clk_sys_ext \u_cpu.ctrl.o_ibus_adr\[9] vdd gnd DFFPOSX1
X_2272_ _142_ _182_ _185_ vdd gnd NOR2X1
X_1963_ \u_rf_if.write_wait\[1] \u_rf_if.write_wait\[0] _1198_ vdd gnd NOR2X1
X_1543_ \u_cpu.immdec.gen_immdec_w_eq_1.imm31\ _561_ _375_ vdd gnd NAND2X1
X_2748_ _879_ i_clk_sys_ext \u_cpu.bufreg.data\[0] vdd gnd DFFPOSX1
X_2328_ \u_mem_serial.state\[1] _142_ _228_ vdd gnd NOR2X1
X_2081_ \u_rf_if.read_buf0\[6] _1174_ _45_ vdd gnd NOR2X1
X_1772_ _507_ _1056_ _968_ _852_ vdd gnd MUX2X1
X_1352_ \u_cpu.decode.co_mem_word\ _636_ _530_ vdd gnd NAND2X1
X_2557_ _800_ i_clk_sys_ext \u_rf_if.rreg1_latched\[3] vdd gnd DFFPOSX1
X_2137_ \u_rf_if.read_buf0\[28] _81_ vdd gnd INVX1
X_1828_ _1095_ _1096_ _1091_ _836_ vdd gnd MUX2X1
X_1408_ _482_ _481_ vdd gnd INVX1
X_1581_ _349_ _348_ _597_ _902_ vdd gnd MUX2X1
X_2366_ _457_ _248_ _179_ _689_ vdd gnd MUX2X1
X_1637_ _723_ _670_ _656_ _724_ vdd gnd OAI21X1
X_1390_ mem_ibus_ack _592_ _496_ _945_ vdd gnd OAI21X1
X_2595_ _739_ i_clk_sys_ext \u_rf_if.o_waddr\[1] vdd gnd DFFPOSX1
X_2175_ _1238_ _1197_ _107_ _739_ vdd gnd AOI21X1
X_1866_ _1114_ _1115_ _1091_ _817_ vdd gnd MUX2X1
X_1446_ _458_ _465_ _453_ _932_ vdd gnd AOI21X1
X_1675_ _617_ _618_ _978_ _979_ vdd gnd OAI21X1
X_1255_ \u_cpu.state.cnt_r\[3] _626_ vdd gnd INVX1
X_1484_ _424_ _423_ _426_ _924_ vdd gnd MUX2X1
X_2689_ _821_ i_clk_sys_ext \u_cpu.ctrl.o_ibus_adr\[6] vdd gnd DFFPOSX1
X_2269_ \u_mem_serial.active_we\ _181_ _182_ vdd gnd NAND2X1
X_1293_ _593_ _591_ _588_ vdd gnd NAND2X1
X_2498_ _912_ i_clk_sys_ext \u_cpu.immdec.gen_immdec_w_eq_1.imm31\ vdd gnd DFFPOSX1
X_2078_ _39_ _1175_ _43_ _772_ vdd gnd AOI21X1
X_1769_ \u_mem_serial.shift_reg\[8] _1054_ vdd gnd INVX1
X_1349_ _534_ _535_ _533_ vdd gnd NOR2X1
X_2710_ _841_ i_clk_sys_ext \u_cpu.ctrl.o_ibus_adr\[26] vdd gnd DFFPOSX1
X_1998_ \u_rf_if.rcnt\[2] _1225_ vdd gnd INVX1
X_1578_ \u_cpu.bufreg.data\[25] _349_ vdd gnd INVX1
X_1387_ mem_ibus_ack \u_mem_serial.shift_reg\[12] _497_ vdd gnd NAND2X1
X_2613_ _750_ i_clk_sys_ext \u_rf_if.read_buf0\[26] vdd gnd DFFPOSX1
X_2422_ \u_cpu.bufreg.data\[2] \u_cpu.ctrl.o_ibus_adr\[2] _202_ _295_ vdd gnd MUX2X1
X_2002_ _1226_ _1227_ _1228_ _1229_ vdd gnd NAND3X1
X_2651_ _784_ i_clk_sys_ext \u_rf_if.read_buf0\[31] vdd gnd DFFPOSX1
X_2231_ \u_cpu.state.ibus_cyc\ _147_ vdd gnd INVX1
X_1922_ ren raddr[5] _1149_ _1157_ _1158_ vdd 
+ gnd
+ AOI22X1
X_1502_ mem_ibus_ack _412_ _409_ _408_ vdd gnd OAI21X1
X_2707_ _838_ i_clk_sys_ext \u_cpu.ctrl.o_ibus_adr\[23] vdd gnd DFFPOSX1
X_2460_ _490_ _325_ _492_ _672_ vdd gnd AOI21X1
X_2040_ \u_rf_if.i_stream_rs2_en\ _1235_ _17_ vdd gnd NAND2X1
XFILL98550x50550 gnd vdd FILL
X_1731_ mem_dbus_ack _451_ _1024_ vdd gnd NAND2X1
X_1311_ \u_cpu.bne_or_bge\ _571_ _570_ vdd gnd NOR2X1
X_2516_ _929_ i_clk_sys_ext \u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20\[3] vdd gnd DFFPOSX1
X_1960_ _409_ _1193_ _492_ _800_ vdd gnd AOI21X1
X_1540_ mem_ibus_ack \u_mem_serial.shift_reg\[7] _389_ rf_wreg0_to_if[0] _377_ vdd 
+ gnd
+ AOI22X1
X_2745_ _875_ i_clk_sys_ext \u_cpu.bufreg.c_r\ vdd gnd DFFPOSX1
X_2325_ _157_ _204_ _707_ vdd gnd OR2X2
X_2554_ _714_ i_clk_fast _1196_ vdd gnd DFFPOSX1
X_2134_ _78_ _79_ _752_ vdd gnd NOR2X1
X_1825_ \u_cpu.ctrl.o_ibus_adr\[22] _1095_ vdd gnd INVX1
X_1405_ _530_ _485_ _655_ _484_ vdd gnd OAI21X1
X_2363_ \u_cpu.bufreg2.dlo\[16] _185_ _184_ \u_mem_serial.shift_reg\[15] _247_ vdd 
+ gnd
+ AOI22X1
X_1634_ _669_ _668_ _597_ _877_ vdd gnd MUX2X1
X_2419_ _287_ _179_ _290_ _292_ _680_ vdd 
+ gnd
+ AOI22X1
X_2592_ \u_cpu.ctrl.pc_plus_offset_cy_r_w\ _658_ vdd gnd INVX1
X_2172_ _1226_ _1241_ _1221_ _106_ vdd gnd OAI21X1
X_1863_ \u_cpu.ctrl.o_ibus_adr\[3] _1114_ vdd gnd INVX1
X_1443_ _456_ _455_ vdd gnd INVX1
X_2648_ \u_cpu.decode.co_ebreak\ _657_ vdd gnd INVX1
X_2228_ \u_mem_serial.clk_sys_prev\ _143_ _144_ vdd gnd NOR2X1
X_1919_ _1154_ _1155_ vdd gnd INVX1
X_1672_ \u_cpu.bufreg2.dhi\[4] _971_ _976_ vdd gnd NAND2X1
X_1252_ _635_ _630_ _629_ vdd gnd NAND2X1
X_2457_ _322_ _321_ _323_ _324_ vdd gnd OAI21X1
X_2037_ _15_ _13_ _785_ vdd gnd AND2X2
X_1728_ mem_dbus_ack \u_cpu.bufreg2.dlo\[18] _1021_ _1022_ vdd gnd OAI21X1
X_1308_ _641_ _581_ _574_ _573_ vdd gnd OAI21X1
X_1481_ _428_ _425_ _426_ _925_ vdd gnd MUX2X1
X_2686_ _818_ i_clk_sys_ext \u_cpu.ctrl.o_ibus_adr\[3] vdd gnd DFFPOSX1
X_2266_ \u_mem_serial.state\[0] _157_ _178_ _179_ vdd gnd OAI21X1
X_1957_ \u_rf_if.rs2_stream_buf\[1] _1188_ _1191_ _1192_ vdd gnd OAI21X1
X_1537_ _561_ \u_mem_serial.shift_reg\[8] _382_ _385_ _379_ vdd 
+ gnd
+ OAI22X1
X_1290_ \u_cpu.decode.opcode\[0] _592_ _591_ vdd gnd NOR2X1
X_2495_ _910_ i_clk_sys_ext \u_cpu.immdec.gen_immdec_w_eq_1.imm7\ vdd gnd DFFPOSX1
X_2075_ _568_ \u_rf_if.read_buf0\[4] \u_rf_if.read_buf0\[3] _1174_ _42_ vdd 
+ gnd
+ OAI22X1
X_1766_ mem_dbus_ack \u_cpu.bufreg2.dlo\[10] _1051_ _1052_ vdd gnd OAI21X1
X_1346_ _537_ _538_ _536_ vdd gnd NAND2X1
X_1995_ \u_rf_if.write_wait\[0] _1223_ vdd gnd INVX1
X_1575_ _353_ _351_ _597_ _905_ vdd gnd MUX2X1
X_1384_ _659_ _573_ _499_ \u_cpu.o_wdata0\ vdd gnd OAI21X1
X_2589_ _736_ i_clk_sys_ext \u_rf_if.issue_idx\[1] vdd gnd DFFPOSX1
X_2169_ _1145_ _21_ _1225_ _104_ vdd gnd OAI21X1
X_2398_ \u_cpu.bufreg2.dlo\[23] _185_ _274_ _275_ vdd gnd AOI21X1
X_1669_ _972_ _973_ _607_ _974_ vdd gnd NAND3X1
X_1249_ \u_cpu.decode.opcode\[0] \u_cpu.branch_op\ _632_ vdd gnd NOR2X1
X_2610_ _747_ i_clk_sys_ext \u_rf_if.read_buf0\[29] vdd gnd DFFPOSX1
X_1898_ \u_rf_if.issue_idx\[3] _1136_ vdd gnd INVX1
X_1478_ \u_cpu.decode.opcode\[0] _649_ _495_ _427_ vdd gnd NAND3X1
X_1287_ rreg1[0] _594_ vdd gnd INVX1
X_2704_ _835_ i_clk_sys_ext \u_cpu.ctrl.o_ibus_adr\[20] vdd gnd DFFPOSX1
X_2513_ _926_ i_clk_sys_ext \u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20\[0] vdd gnd DFFPOSX1
X_2742_ _872_ i_clk_sys_ext \u_cpu.bufreg2.dhi\[5] vdd gnd DFFPOSX1
X_2322_ _224_ _167_ _709_ vdd gnd NAND2X1
X_2551_ _712_ i_clk_fast \u_mem_serial.bit_count\[0] vdd gnd DFFPOSX1
X_2131_ _76_ _1170_ _77_ _753_ vdd gnd AOI21X1
X_1822_ _1092_ _1093_ _1091_ _839_ vdd gnd MUX2X1
X_1402_ _636_ _607_ _488_ _487_ vdd gnd OAI21X1
X_2607_ _671_ i_clk_sys_ext \u_cpu.state.ibus_cyc\ vdd gnd DFFPOSX1
X_2360_ _1030_ _245_ _179_ _692_ vdd gnd MUX2X1
X_1631_ \u_cpu.bufreg.data\[30] _668_ vdd gnd INVX1
X_2416_ _159_ _1152_ _289_ _290_ vdd gnd OAI21X1
X_1860_ _1111_ _1112_ _1091_ _820_ vdd gnd MUX2X1
X_1440_ rreg0[2] _458_ vdd gnd INVX1
X_2645_ _695_ i_clk_fast \u_mem_serial.shift_reg\[11] vdd gnd DFFPOSX1
X_2225_ \u_mem_serial.state\[1] _141_ vdd gnd INVX1
X_1916_ _1151_ _1152_ vdd gnd INVX1
X_2454_ _1134_ \u_cpu.bne_or_bge\ _321_ vdd gnd AND2X2
X_2034_ _1180_ _11_ _12_ _13_ vdd gnd OAI21X1
X_1725_ \u_cpu.bufreg2.dlo\[18] _1013_ _1020_ vdd gnd NOR2X1
X_1305_ _577_ _576_ vdd gnd INVX1
X_2683_ _815_ i_clk_sys_ext \u_cpu.ctrl.pc\ vdd gnd DFFPOSX1
X_2263_ \u_mem_serial.bit_count\[5] _171_ _176_ vdd gnd NOR2X1
X_1954_ rf_shared_rdata[1] _1161_ _1189_ vdd gnd NAND2X1
X_1534_ _561_ \u_mem_serial.shift_reg\[9] _382_ _390_ _381_ vdd 
+ gnd
+ OAI22X1
X_2739_ _869_ i_clk_sys_ext \u_cpu.bufreg.i_shamt\[2] vdd gnd DFFPOSX1
X_2319_ _221_ _222_ _195_ _223_ vdd gnd OAI21X1
X_2492_ _727_ i_clk_sys_ext \u_rf_if.rreg1_latched\[2] vdd gnd DFFPOSX1
X_2072_ _568_ \u_rf_if.read_buf0\[3] \u_rf_if.read_buf0\[2] _1174_ _40_ vdd 
+ gnd
+ OAI22X1
X_1763_ _1013_ _1048_ _1049_ _854_ vdd gnd AOI21X1
X_1343_ _540_ _541_ _539_ vdd gnd NAND2X1
X_2548_ _709_ i_clk_fast \u_mem_serial.bit_count\[2] vdd gnd DFFPOSX1
X_2128_ _71_ _1175_ _75_ _754_ vdd gnd AOI21X1
X_1819_ \u_cpu.ctrl.o_ibus_adr\[25] _1092_ vdd gnd INVX1
X_1992_ _1207_ _1199_ _492_ _792_ vdd gnd AOI21X1
X_1572_ \u_cpu.bufreg.data\[29] _352_ vdd gnd INVX1
X_2357_ \u_cpu.bufreg2.dlo\[13] _185_ _184_ \u_mem_serial.shift_reg\[12] _244_ vdd 
+ gnd
+ AOI22X1
X_1628_ _629_ _597_ _666_ vdd gnd NAND2X1
X_1381_ _508_ _505_ _502_ _501_ vdd gnd NAND3X1
X_2586_ _690_ i_clk_fast \u_mem_serial.shift_reg\[16] vdd gnd DFFPOSX1
X_2166_ _561_ _1221_ _102_ vdd gnd NAND2X1
X_1857_ \u_cpu.ctrl.o_ibus_adr\[6] _1111_ vdd gnd INVX1
X_1437_ mem_ibus_ack _464_ _461_ _460_ vdd gnd OAI21X1
X_2395_ _1238_ _139_ _272_ vdd gnd NAND2X1
X_1666_ _969_ _971_ vdd gnd INVX1
X_1246_ \u_cpu.state.init_done\ _635_ vdd gnd INVX1
X_1895_ _571_ _1128_ _1133_ _1134_ vdd gnd OAI21X1
X_1475_ _430_ _465_ _429_ vdd gnd NOR2X1
X_1284_ _598_ _605_ _597_ vdd gnd NAND2X1
X_2489_ _905_ i_clk_sys_ext \u_cpu.bufreg.data\[27] vdd gnd DFFPOSX1
X_2069_ \u_rf_if.stream_active\ \u_rf_if.read_buf0\[2] _1170_ \u_rf_if.read_buf0\[3] _38_ vdd 
+ gnd
+ AOI22X1
X_2701_ _832_ i_clk_sys_ext \u_cpu.ctrl.o_ibus_adr\[17] vdd gnd DFFPOSX1
X_2298_ _206_ _972_ _207_ _716_ vdd gnd AOI21X1
X_1989_ _1180_ _1184_ _1204_ _1219_ vdd gnd NAND3X1
X_1569_ mem_ibus_ack \u_mem_serial.shift_reg\[11] _385_ _387_ _354_ vdd 
+ gnd
+ AOI22X1
X_2510_ _924_ i_clk_sys_ext \u_cpu.immdec.gen_immdec_w_eq_1.imm30_25\[3] vdd gnd DFFPOSX1
X_1798_ \u_mem_serial.shift_reg\[1] _1076_ vdd gnd INVX1
X_1378_ \u_cpu.decode.opcode\[2] _634_ _504_ vdd gnd NOR2X1
X_2604_ _694_ i_clk_fast \u_mem_serial.shift_reg\[12] vdd gnd DFFPOSX1
X_2413_ \u_mem_serial.shift_reg\[26] _287_ vdd gnd INVX1
X_2642_ _774_ i_clk_sys_ext \u_rf_if.read_buf0\[2] vdd gnd DFFPOSX1
X_2222_ _376_ _138_ _0_ vdd gnd NOR2X1
X_1913_ _1148_ _1149_ vdd gnd INVX1
X_2451_ _627_ _623_ _319_ _675_ vdd gnd AOI21X1
X_2031_ _9_ _10_ _492_ _786_ vdd gnd AOI21X1
X_1722_ _1013_ _1016_ _1017_ _863_ vdd gnd AOI21X1
X_1302_ \u_cpu.bufreg2.i_bytecnt\[1] \u_cpu.bufreg2.i_bytecnt\[0] _579_ vdd gnd NOR2X1
X_2507_ _921_ i_clk_sys_ext \u_cpu.immdec.gen_immdec_w_eq_1.imm30_25\[0] vdd gnd DFFPOSX1
X_2680_ _812_ i_clk_sys_ext \u_cpu.ctrl.o_ibus_adr\[29] vdd gnd DFFPOSX1
X_2260_ _173_ _172_ _174_ vdd gnd NAND2X1
X_1951_ _1185_ _1186_ vdd gnd INVX1
X_1531_ mem_ibus_ack _385_ _384_ vdd gnd NOR2X1
XFILL98250x36150 gnd vdd FILL
X_2736_ _867_ i_clk_sys_ext \u_cpu.bufreg.i_shamt\[0] vdd gnd DFFPOSX1
X_2316_ _220_ _175_ _163_ _711_ vdd gnd MUX2X1
X_1760_ mem_dbus_ack _1046_ _1047_ vdd gnd NAND2X1
X_1340_ _543_ _542_ vdd gnd INVX1
X_2545_ _707_ i_clk_fast \u_mem_serial.state\[0] vdd gnd DFFPOSX1
X_2125_ _568_ \u_rf_if.read_buf0\[22] \u_rf_if.read_buf0\[23] _1171_ _74_ vdd 
+ gnd
+ OAI22X1
X_1816_ \u_cpu.ctrl.o_ibus_adr\[27] _1090_ vdd gnd INVX1
X_2354_ _1042_ _242_ _179_ _695_ vdd gnd MUX2X1
X_1625_ _662_ _597_ _663_ _880_ vdd gnd AOI21X1
XFILL98550x79350 gnd vdd FILL
X_2583_ _733_ i_clk_sys_ext \u_rf_if.issue_idx\[4] vdd gnd DFFPOSX1
X_2163_ _98_ _100_ vdd gnd INVX1
X_1854_ _1108_ _1109_ _1091_ _823_ vdd gnd MUX2X1
X_1434_ \u_mem_serial.shift_reg\[18] _463_ vdd gnd INVX1
X_2639_ _771_ i_clk_sys_ext \u_rf_if.read_buf0\[5] vdd gnd DFFPOSX1
X_2219_ _137_ _136_ _725_ vdd gnd NAND2X1
X_2392_ _217_ _269_ _1004_ _186_ _270_ vdd 
+ gnd
+ OAI22X1
X_1663_ _637_ _619_ _968_ _969_ vdd gnd OAI21X1
X_1243_ _1196_ o_mem_sync vdd gnd BUFX2
X_2448_ _179_ _317_ _318_ vdd gnd NOR2X1
X_2028_ _1147_ _1222_ _787_ vdd gnd NOR2X1
X_1719_ mem_dbus_ack _1014_ _1015_ vdd gnd NAND2X1
X_1892_ _1130_ _1126_ _1131_ vdd gnd NOR2X1
X_1472_ _434_ _465_ _432_ _927_ vdd gnd AOI21X1
X_2677_ _806_ i_clk_sys_ext \u_cpu.alu.cmp_r\ vdd gnd DFFPOSX1
X_2257_ _162_ _169_ _170_ _171_ vdd gnd NAND3X1
X_1948_ _1181_ _1182_ _1183_ vdd gnd NOR2X1
X_1528_ mem_ibus_ack \u_mem_serial.shift_reg\[10] _387_ _386_ vdd gnd AOI21X1
X_1281_ \u_cpu.branch_op\ _635_ _600_ vdd gnd NOR2X1
X_2486_ _902_ i_clk_sys_ext \u_cpu.bufreg.data\[24] vdd gnd DFFPOSX1
X_2066_ \u_rf_if.stream_active\ \u_rf_if.read_buf0\[1] _1170_ \u_rf_if.read_buf0\[2] _36_ vdd 
+ gnd
+ AOI22X1
X_1757_ \u_cpu.bufreg2.dlo\[11] _1013_ _1045_ vdd gnd NOR2X1
X_1337_ _634_ _546_ _545_ vdd gnd NAND2X1
X_2295_ \u_mem_serial.state\[1] _192_ _204_ _205_ vdd gnd AOI21X1
X_1986_ \u_rf_if.rreg1_latched\[1] _1211_ _1213_ raddr[5] _1217_ vdd 
+ gnd
+ AOI22X1
X_1566_ _561_ _359_ _357_ _356_ vdd gnd OAI21X1
X_1795_ mem_dbus_ack \u_cpu.bufreg2.dlo\[3] _1073_ _1074_ vdd gnd OAI21X1
X_1375_ \u_cpu.bufreg2.dlo\[8] _507_ vdd gnd INVX1
X_2389_ _399_ _179_ _265_ _267_ _685_ vdd 
+ gnd
+ AOI22X1
X_2601_ _743_ i_clk_sys_ext \u_rf_if.stream_cnt\[3] vdd gnd DFFPOSX1
X_2198_ _443_ _123_ _492_ _732_ vdd gnd AOI21X1
X_1889_ _531_ _670_ _538_ _537_ _1128_ vdd 
+ gnd
+ AOI22X1
X_1469_ \u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20\[1] _434_ vdd gnd INVX1
X_2410_ _994_ _186_ _284_ _285_ vdd gnd OAI21X1
X_1698_ \u_cpu.bufreg.i_shamt\[2] _982_ _998_ _999_ vdd gnd AOI21X1
X_1278_ \u_cpu.state.cnt_r\[3] \u_cpu.state.cnt_r\[2] _603_ vdd gnd NOR2X1
X_1910_ mem_ibus_ack _1145_ _1146_ vdd gnd NOR2X1
X_2504_ _918_ i_clk_sys_ext rreg1[1] vdd gnd DFFPOSX1
X_2733_ _864_ i_clk_sys_ext \u_cpu.bufreg2.dlo\[20] vdd gnd DFFPOSX1
X_2313_ _191_ _175_ _218_ vdd gnd NOR2X1
XFILL98250x90150 gnd vdd FILL
X_2542_ _705_ i_clk_fast \u_mem_serial.shift_reg\[1] vdd gnd DFFPOSX1
X_2122_ _568_ \u_rf_if.read_buf0\[21] \u_rf_if.read_buf0\[20] _1174_ _72_ vdd 
+ gnd
+ OAI22X1
X_1813_ mem_dbus_ack _549_ _1087_ _1088_ vdd gnd OAI21X1
X_2351_ \u_cpu.bufreg2.dlo\[10] _185_ _184_ \u_mem_serial.shift_reg\[9] _241_ vdd 
+ gnd
+ AOI22X1
X_1622_ \u_cpu.bufreg.data\[3] _662_ vdd gnd INVX1
X_2407_ _1227_ _139_ _281_ _282_ vdd gnd AOI21X1
X_2580_ _654_ _653_ vdd gnd INVX1
X_2160_ _1181_ _96_ _97_ _744_ vdd gnd AOI21X1
X_1851_ \u_cpu.ctrl.o_ibus_adr\[9] _1108_ vdd gnd INVX1
X_1431_ _636_ _653_ _561_ _466_ vdd gnd OAI21X1
XFILL98550x10950 gnd vdd FILL
X_2636_ _769_ i_clk_sys_ext \u_rf_if.read_buf0\[7] vdd gnd DFFPOSX1
X_2216_ _1162_ _132_ _92_ _135_ vdd gnd AOI21X1
X_1907_ _626_ _475_ i_rst_n _1144_ vdd gnd OAI21X1
X_1660_ _965_ _628_ _966_ vdd gnd NAND2X1
X_2445_ _313_ _314_ _139_ _315_ vdd gnd OAI21X1
X_2025_ _6_ _1123_ _7_ vdd gnd NOR2X1
X_1716_ _1010_ _1012_ _968_ _864_ vdd gnd MUX2X1
X_2674_ _802_ i_clk_sys_ext \u_rf_if.read_buf0\[30] vdd gnd DFFPOSX1
X_2254_ \u_mem_serial.bit_count\[3] \u_mem_serial.state\[0] _167_ _168_ vdd gnd AOI21X1
XFILL98250x150 gnd vdd FILL
X_1945_ \u_rf_if.stream_cnt\[4] _1180_ vdd gnd INVX1
X_1525_ mem_ibus_ack _390_ _389_ vdd gnd NOR2X1
X_2483_ \u_rf_if.wdata0_next\[0] i_clk_sys_ext \u_rf_if.wdata0_r\[0] vdd gnd DFFPOSX1
X_2063_ _33_ _1183_ _34_ vdd gnd NOR2X1
X_1754_ \u_mem_serial.shift_reg\[11] _1042_ vdd gnd INVX1
X_1334_ _549_ _548_ vdd gnd INVX1
X_2539_ _678_ i_clk_fast \u_mem_serial.shift_reg\[28] vdd gnd DFFPOSX1
X_2119_ _568_ \u_rf_if.read_buf0\[20] \u_rf_if.read_buf0\[21] _1171_ _70_ vdd 
+ gnd
+ OAI22X1
X_2292_ _201_ _150_ _202_ vdd gnd NAND2X1
X_1983_ \u_rf_if.pending_read\ mem_ibus_ack _1215_ vdd gnd NOR2X1
X_1563_ \u_mem_serial.shift_reg\[24] _359_ vdd gnd INVX1
X_2348_ _1054_ _239_ _179_ _698_ vdd gnd MUX2X1
X_1619_ _330_ _329_ _597_ _883_ vdd gnd MUX2X1
X_1792_ \u_cpu.bufreg2.dlo\[3] _1013_ _1072_ vdd gnd NOR2X1
X_1372_ \u_cpu.bufreg2.dlo\[0] _510_ vdd gnd INVX1
X_2577_ _730_ i_clk_sys_ext \u_rf_if.rreg0_latched\[2] vdd gnd DFFPOSX1
X_2157_ _1182_ _92_ _95_ vdd gnd NOR2X1
X_1848_ _1105_ _1106_ _1091_ _826_ vdd gnd MUX2X1
X_1428_ mem_ibus_ack _602_ _469_ vdd gnd NOR2X1
X_2386_ _261_ \u_cpu.o_wdata0\ _264_ _265_ vdd gnd OAI21X1
X_1657_ _627_ _664_ _962_ _963_ vdd gnd AOI21X1
X_2195_ _1136_ _120_ _1201_ _122_ vdd gnd OAI21X1
X_1886_ _562_ _539_ _565_ _1126_ vdd gnd OAI21X1
X_1466_ mem_ibus_ack _440_ _498_ _436_ vdd gnd OAI21X1
X_1695_ _995_ _994_ _996_ vdd gnd NOR2X1
X_1275_ _635_ _637_ _606_ vdd gnd NOR2X1
X_2289_ \u_mem_serial.state\[0] _199_ _176_ _200_ vdd gnd NAND3X1
XFILL97950x43350 gnd vdd FILL
X_2501_ _915_ i_clk_sys_ext rf_wreg0_to_if[2] vdd gnd DFFPOSX1
X_2098_ \u_rf_if.read_buf0\[14] _56_ vdd gnd INVX1
X_1789_ _1013_ _1068_ _1069_ _848_ vdd gnd AOI21X1
X_1369_ _514_ _515_ _513_ vdd gnd NOR2X1
X_2730_ _861_ i_clk_sys_ext \u_cpu.bufreg2.dlo\[17] vdd gnd DFFPOSX1
X_2310_ _191_ _163_ _214_ _712_ vdd gnd OAI21X1
X_1598_ \u_cpu.bufreg.data\[15] _339_ vdd gnd INVX1
X_1810_ _1013_ _1084_ _1085_ _843_ vdd gnd AOI21X1
X_2404_ _359_ _279_ _179_ _682_ vdd gnd MUX2X1
X_2633_ _767_ i_clk_sys_ext \u_rf_if.read_buf0\[9] vdd gnd DFFPOSX1
X_2213_ _1187_ _132_ vdd gnd INVX1
X_1904_ \u_rf_if.issue_idx\[4] \u_rf_if.issue_idx\[5] _1141_ _1142_ vdd gnd OAI21X1
X_2442_ \u_mem_serial.shift_reg\[30] _312_ vdd gnd INVX1
X_2022_ _388_ _392_ _4_ vdd gnd NAND2X1
X_1713_ \u_cpu.bufreg2.dlo\[20] _1010_ vdd gnd INVX1
X_2671_ _799_ i_clk_sys_ext \u_rf_if.rreg0_latched\[3] vdd gnd DFFPOSX1
X_2251_ _164_ _165_ vdd gnd INVX1
XFILL98250x43350 gnd vdd FILL
X_1942_ _1172_ _1168_ _1177_ vdd gnd NOR2X1
X_1522_ rf_wreg0_to_if[3] _392_ vdd gnd INVX1
X_2727_ _858_ i_clk_sys_ext \u_cpu.bufreg2.dlo\[14] vdd gnd DFFPOSX1
X_2307_ _173_ _194_ _163_ _214_ vdd gnd OAI21X1
X_2480_ \u_cpu.bufreg.i_right_shift_op\ _636_ vdd gnd INVX1
X_2060_ _1204_ _31_ _1213_ raddr[2] _32_ vdd 
+ gnd
+ AOI22X1
X_1751_ mem_dbus_ack \u_cpu.bufreg2.dlo\[13] _1039_ _1040_ vdd gnd OAI21X1
X_1331_ _592_ _568_ _551_ vdd gnd NOR2X1
X_2536_ _702_ i_clk_fast \u_mem_serial.shift_reg\[4] vdd gnd DFFPOSX1
X_2116_ _568_ \u_rf_if.read_buf0\[19] \u_rf_if.read_buf0\[18] _1174_ _68_ vdd 
+ gnd
+ OAI22X1
X_1807_ mem_dbus_ack _411_ _1083_ vdd gnd NAND2X1
X_1980_ \u_rf_if.rreg1_latched\[3] _1211_ _1213_ raddr[7] _1214_ vdd 
+ gnd
+ AOI22X1
X_1560_ _365_ _362_ _561_ _361_ vdd gnd OAI21X1
X_2765_ _895_ i_clk_sys_ext \u_cpu.bufreg.data\[17] vdd gnd DFFPOSX1
X_2345_ \u_cpu.bufreg2.dlo\[7] _185_ _184_ \u_mem_serial.shift_reg\[6] _238_ vdd 
+ gnd
+ AOI22X1
XFILL98550x86550 gnd vdd FILL
X_1616_ \u_cpu.bufreg.data\[6] _330_ vdd gnd INVX1
X_2574_ _687_ i_clk_fast \u_mem_serial.shift_reg\[19] vdd gnd DFFPOSX1
X_2154_ \u_rf_if.stream_cnt\[1] _10_ _92_ _93_ vdd gnd NAND3X1
X_1845_ \u_cpu.ctrl.o_ibus_adr\[12] _1105_ vdd gnd INVX1
X_1425_ mem_ibus_ack \u_mem_serial.shift_reg\[30] _471_ vdd gnd NAND2X1
X_2383_ \u_rf_if.wdata0_next\[0] _262_ vdd gnd INVX1
X_1654_ _596_ _960_ _961_ vdd gnd NOR2X1
X_2439_ _617_ _186_ _309_ _310_ vdd gnd OAI21X1
X_2019_ \u_rf_if.o_waddr\[2] _1_ _2_ vdd gnd NAND2X1
X_2192_ _119_ _120_ vdd gnd INVX1
X_1883_ _573_ \u_cpu.ctrl.i_jump\ _1124_ vdd gnd AND2X2
X_1463_ _439_ _465_ _438_ vdd gnd NOR2X1
X_2668_ _674_ i_clk_sys_ext \u_cpu.state.cnt_r\[3] vdd gnd DFFPOSX1
X_2248_ \u_mem_serial.bit_count\[4] _162_ vdd gnd INVX1
X_1939_ _1174_ _1175_ vdd gnd INVX1
X_1519_ mem_ibus_ack _400_ _476_ _394_ vdd gnd OAI21X1
X_1692_ _616_ _971_ _993_ _992_ _869_ vdd 
+ gnd
+ AOI22X1
X_1272_ \u_cpu.bufreg2.dhi\[4] _612_ \u_cpu.bufreg2.dhi\[5] _609_ vdd gnd OAI21X1
X_2477_ \u_cpu.bufreg2.dhi\[6] _639_ vdd gnd INVX1
X_2057_ \u_rf_if.stream_cnt\[3] _29_ vdd gnd INVX1
XFILL98550x18150 gnd vdd FILL
X_1748_ _1013_ _1036_ _1037_ _857_ vdd gnd AOI21X1
X_1328_ _556_ \u_mem_serial.shift_reg\[3] _554_ _553_ vdd gnd NOR3X1
X_2286_ rf_shared_rdata[1] _197_ vdd gnd INVX1
X_1977_ _1163_ _1210_ _1205_ _1211_ vdd gnd OAI21X1
X_1557_ \u_cpu.decode.opcode\[2] \u_cpu.decode.opcode\[1] _650_ _364_ vdd gnd OAI21X1
X_2095_ _53_ _1170_ _54_ _766_ vdd gnd AOI21X1
X_1786_ mem_dbus_ack _559_ _1067_ vdd gnd NAND2X1
X_1366_ _517_ _522_ _516_ vdd gnd NAND2X1
X_1595_ _342_ _341_ _597_ _895_ vdd gnd MUX2X1
X_2189_ _1137_ _117_ _114_ _118_ vdd gnd OAI21X1
X_2401_ _139_ raddr[2] _276_ _277_ vdd gnd OAI21X1
X_1689_ _981_ _618_ _990_ _991_ vdd gnd OAI21X1
X_1269_ _613_ _612_ vdd gnd INVX1
X_2630_ _778_ i_clk_sys_ext raddr[2] vdd gnd DFFPOSX1
X_2210_ \u_rf_if.rreg0_latched\[2] _1210_ _1208_ _130_ vdd gnd NAND3X1
X_1901_ _1136_ _1137_ _1138_ _1139_ vdd gnd NAND3X1
X_1498_ rreg1[4] _412_ vdd gnd INVX1
X_1710_ mem_dbus_ack _399_ _1008_ vdd gnd NAND2X1
X_2724_ _855_ i_clk_sys_ext \u_cpu.bufreg2.dlo\[11] vdd gnd DFFPOSX1
X_2304_ \u_mem_serial.state\[1] \u_mem_serial.state\[0] _1196_ _212_ vdd gnd OAI21X1
X_2533_ _946_ i_clk_sys_ext \u_cpu.bne_or_bge\ vdd gnd DFFPOSX1
X_2113_ _568_ \u_rf_if.read_buf0\[18] \u_rf_if.read_buf0\[19] _1171_ _66_ vdd 
+ gnd
+ OAI22X1
X_1804_ mem_dbus_ack _1080_ _1081_ vdd gnd NAND2X1
X_2762_ _892_ i_clk_sys_ext \u_cpu.bufreg.data\[14] vdd gnd DFFPOSX1
X_2342_ _556_ _236_ _179_ _701_ vdd gnd MUX2X1
X_1613_ _333_ _332_ _597_ _886_ vdd gnd MUX2X1
X_2571_ \u_cpu.decode.opcode\[2] _656_ vdd gnd INVX1
X_2151_ _90_ _11_ _91_ vdd gnd NOR2X1
X_1842_ _1102_ _1103_ _1091_ _829_ vdd gnd MUX2X1
X_1422_ \u_cpu.bufreg2.i_bytecnt\[0] _474_ _473_ vdd gnd NOR2X1
X_2627_ _762_ i_clk_sys_ext \u_rf_if.read_buf0\[14] vdd gnd DFFPOSX1
X_2207_ \u_rf_if.rreg1_latched\[2] _561_ _128_ vdd gnd NAND2X1
X_2380_ _179_ _259_ _260_ vdd gnd NOR2X1
X_1651_ _955_ _958_ vdd gnd INVX1
X_2436_ \u_cpu.bufreg.data\[4] _202_ _307_ vdd gnd NAND2X1
X_2016_ _1226_ _1241_ _1242_ vdd gnd NOR2X1
X_1707_ mem_dbus_ack \u_cpu.bufreg2.dlo\[23] _1005_ _1006_ vdd gnd OAI21X1
X_1880_ _519_ _1122_ vdd gnd INVX1
X_1460_ _446_ _465_ _441_ _930_ vdd gnd AOI21X1
X_2665_ _699_ i_clk_fast \u_mem_serial.shift_reg\[7] vdd gnd DFFPOSX1
X_2245_ _150_ _160_ vdd gnd INVX1
X_1936_ _1165_ _1172_ vdd gnd INVX1
X_1516_ mem_ibus_ack _406_ _397_ _396_ vdd gnd OAI21X1
X_2474_ _658_ _644_ _642_ vdd gnd NAND2X1
X_2054_ \u_rf_if.issue_idx\[0] _1207_ _27_ vdd gnd NOR2X1
X_1745_ mem_dbus_ack _1034_ _1035_ vdd gnd NAND2X1
X_1325_ \u_mem_serial.shift_reg\[5] _556_ vdd gnd INVX1
X_2283_ _194_ _195_ vdd gnd INVX1
X_1974_ _1207_ _1206_ _1208_ vdd gnd NOR2X1
X_1554_ \u_cpu.immdec.gen_immdec_w_eq_1.imm7\ _367_ vdd gnd INVX1
X_2759_ _889_ i_clk_sys_ext \u_cpu.bufreg.data\[11] vdd gnd DFFPOSX1
X_2339_ \u_cpu.bufreg2.dlo\[4] _185_ _184_ \u_mem_serial.shift_reg\[3] _235_ vdd 
+ gnd
+ AOI22X1
X_2092_ _51_ _1170_ _52_ _767_ vdd gnd AOI21X1
X_1783_ mem_dbus_ack \u_cpu.bufreg2.dlo\[6] _1064_ _1065_ vdd gnd OAI21X1
X_1363_ _521_ _520_ _519_ vdd gnd NOR2X1
X_2568_ _947_ i_clk_sys_ext \u_cpu.decode.co_mem_word\ vdd gnd DFFPOSX1
X_2148_ _87_ _88_ _747_ vdd gnd NOR2X1
X_1839_ \u_cpu.ctrl.o_ibus_adr\[15] _1102_ vdd gnd INVX1
X_1419_ \u_cpu.state.cnt_r\[1] i_rst_n _936_ vdd gnd AND2X2
X_1592_ \u_cpu.bufreg.data\[18] _342_ vdd gnd INVX1
X_2377_ _216_ _256_ _1149_ _257_ vdd gnd NAND3X1
X_1648_ _956_ _664_ _667_ _876_ vdd gnd MUX2X1
X_2186_ _1138_ _113_ _115_ _736_ vdd gnd AOI21X1
X_1877_ _1120_ _1117_ _1091_ _811_ vdd gnd MUX2X1
X_1457_ _444_ _443_ vdd gnd INVX1
X_1686_ _981_ _969_ _988_ _987_ _870_ vdd 
+ gnd
+ OAI22X1
X_1266_ \u_cpu.bufreg.i_shamt\[0] \u_cpu.bufreg.i_shamt\[1] _615_ vdd gnd NOR2X1
X_1495_ _591_ _415_ vdd gnd INVX1
X_2089_ _49_ _50_ _768_ vdd gnd NOR2X1
X_2721_ _852_ i_clk_sys_ext \u_cpu.bufreg2.dlo\[8] vdd gnd DFFPOSX1
X_2301_ _209_ _561_ _207_ _715_ vdd gnd AOI21X1
X_1589_ _345_ _344_ _597_ _898_ vdd gnd MUX2X1
X_2530_ _943_ i_clk_sys_ext \u_cpu.decode.opcode\[1] vdd gnd DFFPOSX1
X_2110_ _568_ \u_rf_if.read_buf0\[17] \u_rf_if.read_buf0\[18] _1171_ _64_ vdd 
+ gnd
+ OAI22X1
X_1801_ \u_cpu.bufreg2.dlo\[1] _1013_ _1079_ vdd gnd NOR2X1
XFILL98550x150 gnd vdd FILL
X_1398_ _629_ _621_ _491_ vdd gnd NOR2X1
X_1610_ \u_cpu.bufreg.data\[9] _333_ vdd gnd INVX1
X_2624_ _759_ i_clk_sys_ext \u_rf_if.read_buf0\[17] vdd gnd DFFPOSX1
X_2204_ _476_ _126_ _492_ _729_ vdd gnd AOI21X1
X_2433_ _299_ _179_ _300_ _304_ _678_ vdd 
+ gnd
+ AOI22X1
X_2013_ \u_rf_if.wen0_r\ _1239_ vdd gnd INVX1
XFILL98250x50550 gnd vdd FILL
X_1704_ _1003_ _995_ _969_ _867_ vdd gnd MUX2X1
X_2662_ _673_ i_clk_sys_ext \u_cpu.ctrl.i_jump\ vdd gnd DFFPOSX1
X_2242_ _145_ _156_ _157_ vdd gnd NOR2X1
X_1933_ _1165_ _1168_ _1169_ vdd gnd NAND2X1
X_1513_ \u_mem_serial.shift_reg\[21] _399_ vdd gnd INVX1
X_2718_ _849_ i_clk_sys_ext \u_cpu.bufreg2.dlo\[5] vdd gnd DFFPOSX1
X_2471_ \u_cpu.decode.opcode\[2] _650_ _646_ _645_ vdd gnd OAI21X1
X_2051_ _1201_ _1141_ \u_rf_if.rreg0_latched\[0] _25_ vdd gnd OAI21X1
X_1742_ \u_cpu.bufreg2.dlo\[14] _1013_ _1033_ vdd gnd NOR2X1
X_1322_ \u_mem_serial.shift_reg\[4] _559_ vdd gnd INVX1
X_2527_ _940_ i_clk_sys_ext \u_cpu.state.cnt_r\[1] vdd gnd DFFPOSX1
X_2107_ \u_rf_if.read_buf0\[15] _1174_ _62_ vdd gnd NOR2X1
X_2280_ _144_ _192_ vdd gnd INVX1
XFILL98550x93750 gnd vdd FILL
X_1971_ _1180_ _1184_ _1204_ _1205_ vdd gnd OAI21X1
X_1551_ mem_ibus_ack \u_mem_serial.shift_reg\[7] _469_ \u_cpu.immdec.gen_immdec_w_eq_1.imm7\ _369_ vdd 
+ gnd
+ AOI22X1
X_2756_ _887_ i_clk_sys_ext \u_cpu.bufreg.data\[9] vdd gnd DFFPOSX1
X_2336_ _555_ _233_ _179_ _704_ vdd gnd MUX2X1
X_1607_ _336_ _335_ _597_ _889_ vdd gnd MUX2X1
X_1780_ \u_cpu.bufreg2.dlo\[6] _1013_ _1063_ vdd gnd NOR2X1
X_1360_ _523_ _576_ _522_ vdd gnd NOR2X1
X_2565_ _721_ i_clk_fast \u_mem_serial.active_we\ vdd gnd DFFPOSX1
X_2145_ _85_ _1170_ _86_ _748_ vdd gnd AOI21X1
X_1836_ _1099_ _1100_ _1091_ _832_ vdd gnd MUX2X1
X_1416_ _561_ _478_ _477_ vdd gnd NOR2X1
X_2374_ \u_rf_if.read_buf1\ _1203_ _253_ _254_ vdd gnd OAI21X1
X_1645_ _953_ _948_ _628_ _954_ vdd gnd OAI21X1
X_2183_ \u_rf_if.issue_idx\[0] _1212_ _113_ vdd gnd NAND2X1
X_1874_ _1119_ _1118_ _1091_ _813_ vdd gnd MUX2X1
X_1454_ \u_cpu.csr_imm\ _446_ vdd gnd INVX1
X_2659_ _789_ i_clk_sys_ext \u_rf_if.o_waddr\[3] vdd gnd DFFPOSX1
X_2239_ _153_ _154_ _155_ vdd gnd NAND2X1
X_1683_ _972_ _985_ _986_ vdd gnd NAND2X1
X_1263_ _637_ _619_ _618_ vdd gnd NOR2X1
X_2468_ \u_cpu.decode.opcode\[1] _648_ vdd gnd INVX1
X_2048_ _481_ _23_ _492_ _782_ vdd gnd AOI21X1
X_1739_ \u_mem_serial.shift_reg\[14] _1030_ vdd gnd INVX1
X_1319_ _563_ _565_ _562_ vdd gnd NAND2X1
X_1492_ \u_mem_serial.shift_reg\[25] \u_cpu.immdec.gen_immdec_w_eq_1.imm30_25\[1] mem_ibus_ack _417_ vdd gnd MUX2X1
X_2697_ _829_ i_clk_sys_ext \u_cpu.ctrl.o_ibus_adr\[14] vdd gnd DFFPOSX1
X_2277_ \u_mem_serial.shift_reg\[30] _184_ _189_ _190_ vdd gnd AOI21X1
X_1968_ _1201_ _1141_ \u_rf_if.rreg0_latched\[3] _1202_ vdd gnd OAI21X1
X_1548_ \u_cpu.branch_op\ rreg1[0] _372_ _371_ vdd gnd OAI21X1
X_2086_ _47_ _1170_ _48_ _769_ vdd gnd AOI21X1
X_1777_ _1013_ _1059_ _1060_ _851_ vdd gnd AOI21X1
X_1357_ _569_ _536_ _526_ _525_ vdd gnd OAI21X1
X_1586_ \u_cpu.bufreg.data\[21] _345_ vdd gnd INVX1
X_1395_ mem_ibus_ack \u_mem_serial.shift_reg\[2] _493_ vdd gnd NAND2X1
X_2621_ _780_ i_clk_sys_ext raddr[4] vdd gnd DFFPOSX1
X_2201_ \u_rf_if.rreg0_latched\[2] _561_ _125_ vdd gnd NAND2X1
X_1489_ \u_mem_serial.shift_reg\[26] \u_cpu.immdec.gen_immdec_w_eq_1.imm30_25\[2] mem_ibus_ack _419_ vdd gnd MUX2X1
X_2430_ \u_cpu.bufreg2.dhi\[4] _185_ _184_ \u_mem_serial.shift_reg\[27] _302_ vdd 
+ gnd
+ AOI22X1
X_2010_ _1229_ _1233_ \u_rf_if.wdata0_next_phase\ _1237_ vdd gnd OAI21X1
X_1701_ \u_cpu.bufreg.i_shamt\[0] _994_ _618_ _1001_ vdd gnd MUX2X1
X_1298_ _584_ _583_ vdd gnd INVX1
X_1930_ \u_rf_if.issue_idx\[4] \u_rf_if.issue_idx\[0] _1166_ vdd gnd NAND2X1
X_1510_ _402_ _413_ _401_ vdd gnd NOR2X1
X_2715_ _846_ i_clk_sys_ext \u_cpu.bufreg2.dlo\[2] vdd gnd DFFPOSX1
X_2524_ _937_ i_clk_sys_ext \u_cpu.decode.co_ebreak\ vdd gnd DFFPOSX1
X_2104_ \u_rf_if.read_buf0\[16] _60_ vdd gnd INVX1
X_2753_ _884_ i_clk_sys_ext \u_cpu.bufreg.data\[6] vdd gnd DFFPOSX1
X_2333_ \u_cpu.bufreg2.dlo\[1] _185_ _184_ \u_mem_serial.shift_reg\[0] _232_ vdd 
+ gnd
+ AOI22X1
X_1604_ \u_cpu.bufreg.data\[12] _336_ vdd gnd INVX1
X_2562_ _683_ i_clk_fast \u_mem_serial.shift_reg\[23] vdd gnd DFFPOSX1
X_2142_ _83_ _84_ _749_ vdd gnd NOR2X1
X_1833_ \u_cpu.ctrl.o_ibus_adr\[18] _1099_ vdd gnd INVX1
X_1413_ mem_ibus_ack \u_mem_serial.shift_reg\[14] _479_ vdd gnd NAND2X1
X_2618_ _755_ i_clk_sys_ext \u_rf_if.read_buf0\[21] vdd gnd DFFPOSX1
X_2371_ \u_rf_if.wdata0_next\[0] \u_rf_if.i_stream_rs2_en\ _251_ vdd gnd NOR2X1
X_1642_ \u_cpu.bufreg.c_r\ _950_ _951_ vdd gnd NAND2X1
X_2427_ \u_mem_serial.shift_reg\[28] _299_ vdd gnd INVX1
X_2007_ _570_ _486_ _542_ _1234_ vdd gnd NAND3X1
X_2180_ _27_ _111_ vdd gnd INVX1
X_1871_ _1117_ _1090_ _1091_ _814_ vdd gnd MUX2X1
X_1451_ mem_ibus_ack _458_ _449_ _448_ vdd gnd OAI21X1
X_2656_ _697_ i_clk_fast \u_mem_serial.shift_reg\[9] vdd gnd DFFPOSX1
X_2236_ _151_ _152_ vdd gnd INVX1
X_1927_ \u_rf_if.prefetch_active\ _1163_ vdd gnd INVX1
X_1507_ _561_ _405_ _404_ vdd gnd NOR2X1
X_1680_ _614_ _983_ vdd gnd INVX1
X_1260_ _622_ _621_ vdd gnd INVX1
X_2465_ \u_cpu.decode.opcode\[0] \u_cpu.decode.opcode\[1] _651_ vdd gnd NOR2X1
X_2045_ \u_rf_if.rcnt\[1] _21_ vdd gnd INVX1
X_1736_ mem_dbus_ack \u_cpu.bufreg2.dlo\[16] _1027_ _1028_ vdd gnd OAI21X1
X_1316_ \u_cpu.alu.add_cy_r\ _566_ _565_ vdd gnd NAND2X1
X_2694_ _826_ i_clk_sys_ext \u_cpu.ctrl.o_ibus_adr\[11] vdd gnd DFFPOSX1
X_2274_ \u_rf_if.wen0_r\ \u_rf_if.rtrig1\ _187_ vdd gnd NAND2X1
X_1965_ i_rst_n _1199_ _1200_ vdd gnd NAND2X1
X_1545_ _375_ _374_ vdd gnd INVX1
X_2083_ _45_ _46_ _770_ vdd gnd NOR2X1
X_1774_ mem_dbus_ack _1057_ _1058_ vdd gnd NAND2X1
X_1354_ _575_ _529_ _535_ _633_ _528_ vdd 
+ gnd
+ AOI22X1
X_2559_ _718_ i_clk_fast \u_mem_serial.state\[1] vdd gnd DFFPOSX1
X_2139_ _81_ _1170_ _82_ _750_ vdd gnd AOI21X1
X_1583_ _348_ _347_ _597_ _901_ vdd gnd MUX2X1
X_2368_ _463_ _249_ _179_ _688_ vdd gnd MUX2X1
X_1639_ _805_ _948_ vdd gnd INVX1
X_1392_ mem_ibus_ack _559_ _495_ _944_ vdd gnd AOI21X1
X_2597_ _740_ i_clk_sys_ext \u_rf_if.o_waddr\[0] vdd gnd DFFPOSX1
X_2177_ _1_ _109_ vdd gnd INVX1
X_1868_ _1115_ _1116_ _1091_ _816_ vdd gnd MUX2X1
X_1448_ \u_mem_serial.shift_reg\[16] _451_ vdd gnd INVX1

.ends
.end
