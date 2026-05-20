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

X_3823_ _1192_ _gen_int_sys_clk.clk_sys_r_bF$buf20_ _u_cpu.state.i_ctrl_misalign_ vdd gnd DFFPOSX1
X_3403_ _1553_ _704_ _727_ _449_ vdd gnd OAI21X1
XFILL_0__2675_ gnd vdd FILL
XFILL_0_CLKBUF1_insert131 gnd vdd FILL
XFILL_0_CLKBUF1_insert133 gnd vdd FILL
XFILL_0_CLKBUF1_insert136 gnd vdd FILL
XFILL_0_CLKBUF1_insert138 gnd vdd FILL
X_3632_ _151_ _854_ _602__bF$buf4 _1114_ vdd gnd MUX2X1
X_3212_ _u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20_[0] _311_ vdd gnd INVX1
XFILL_0__2064_ gnd vdd FILL
X_2903_ _u_rf_if.read_buf0_[21] _22__bF$buf2 _87_ vdd gnd NAND2X1
XFILL_0__3689_ gnd vdd FILL
X_3861_ _1126_ _gen_int_sys_clk.clk_sys_r_bF$buf34_ _u_cpu.ctrl.pc_plus_offset_cy_r_w_ vdd gnd DFFPOSX1
X_3441_ _480_ _481_ _482_ vdd gnd NOR2X1
X_3021_ _u_rf_if.issue_chunk_[0] _173_ _175_ _1298_ vdd gnd AOI21X1
X_2712_ _u_rf_if.read_buf1_[4] _1783__bF$buf4 _1797_ vdd gnd NAND2X1
XFILL_0__3498_ gnd vdd FILL
XFILL_0__3078_ gnd vdd FILL
X_3917_ _1353_ _gen_int_sys_clk.clk_sys_r_bF$buf23_ _u_rf_if.read_buf1_[25] vdd gnd DFFPOSX1
XFILL_0__1984_ gnd vdd FILL
X_3670_ _1052_ _1051_ vdd gnd INVX1
X_3250_ _338_ _342_ _153_ _341_ _1236_ vdd 
+ gnd
+ AOI22X1
X_4035_ _1211_ _gen_int_sys_clk.clk_sys_r_bF$buf19_ _u_cpu.bufreg.data_[17] vdd gnd DFFPOSX1
XFILL_0_BUFX2_insert21 gnd vdd FILL
XFILL_0_BUFX2_insert23 gnd vdd FILL
XFILL_0_BUFX2_insert25 gnd vdd FILL
XFILL_0_BUFX2_insert27 gnd vdd FILL
XFILL_0_BUFX2_insert29 gnd vdd FILL
X_2941_ _1732_ _1733_ _1699_ _116_ vdd gnd OAI21X1
X_2521_ _1640_ _1641_ _1643_ _1644_ vdd gnd AOI21X1
X_2101_ _840_ _973__bF$buf3 _835_ _834_ vdd gnd OAI21X1
X_3726_ _1250_ _gen_int_sys_clk.clk_sys_r_bF$buf12_ _u_cpu.bufreg.i_sh_signed_ vdd gnd DFFPOSX1
X_3306_ _659__bF$buf5 _292_ _387_ _388_ vdd gnd OAI21X1
XFILL_0__2998_ gnd vdd FILL
XFILL_0__2578_ gnd vdd FILL
X_2750_ _1825_ i_rst_n_bF$buf7 _1365_ vdd gnd AND2X2
X_2330_ ren _u_rf_if.o_waddr_[0] _1090_ _1256_ vdd gnd OAI21X1
X_3955_ _1372_ _gen_int_sys_clk.clk_sys_r_bF$buf15_ _u_rf_if.read_buf1_[6] vdd gnd DFFPOSX1
X_3535_ mem_dbus_ack_bF$buf0 _u_cpu.bufreg2.dlo_[3] _553_ _554_ vdd gnd OAI21X1
X_3115_ _238_ _237_ _240_ _241_ vdd gnd OAI21X1
XFILL_0__2387_ gnd vdd FILL
X_4073_ _1438_ i_clk_fast_bF$buf7 _u_mem_serial.shift_reg_[17] vdd gnd DFFPOSX1
X_2806_ _u_rf_if.stream_active_bF$buf7_ _1742_ _13_ _14_ vdd gnd OAI21X1
X_3764_ i_rst_n_bF$buf10 vdd _1111_ _gen_int_sys_clk.clk_sys_r_bF$buf39_ ibus_pending_rdt[20] vdd 
+ gnd
+ DFFSR
X_3344_ _u_cpu.bufreg.data_[15] _410_ vdd gnd INVX1
X_2615_ _1714_ _1721_ _1724_ _1725_ vdd gnd OAI21X1
XBUFX2_insert30 i_rst_n i_rst_n_bF$buf5 vdd gnd BUFX2
XBUFX2_insert31 i_rst_n i_rst_n_bF$buf4 vdd gnd BUFX2
XBUFX2_insert32 i_rst_n i_rst_n_bF$buf3 vdd gnd BUFX2
XBUFX2_insert33 i_rst_n i_rst_n_bF$buf2 vdd gnd BUFX2
XBUFX2_insert34 i_rst_n i_rst_n_bF$buf1 vdd gnd BUFX2
XBUFX2_insert35 i_rst_n i_rst_n_bF$buf0 vdd gnd BUFX2
XBUFX2_insert36 _602_ _602__bF$buf4 vdd gnd BUFX2
XBUFX2_insert37 _602_ _602__bF$buf3 vdd gnd BUFX2
XBUFX2_insert38 _602_ _602__bF$buf2 vdd gnd BUFX2
XBUFX2_insert39 _602_ _602__bF$buf1 vdd gnd BUFX2
XFILL_0__1887_ gnd vdd FILL
X_3993_ _1193_ _gen_int_sys_clk.clk_sys_r_bF$buf35_ _u_cpu.bufreg.data_[30] vdd gnd DFFPOSX1
X_3573_ _578_ _212__bF$buf3 _577_ _570__bF$buf4 _1149_ vdd 
+ gnd
+ OAI22X1
X_3153_ ibus_pending_rdt[2] _269_ vdd gnd INVX1
XFILL_0__3613_ gnd vdd FILL
X_2844_ _22__bF$buf6 _41_ _42_ _43_ vdd gnd OAI21X1
X_2424_ _u_cpu.state.o_cnt_[2] _1547_ vdd gnd INVX1
X_2004_ _922_ _920_ _973__bF$buf4 _919_ vdd gnd OAI21X1
X_3629_ _330_ _833_ _602__bF$buf1 _1117_ vdd gnd MUX2X1
X_3209_ _u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20_[1] _309_ vdd gnd INVX1
X_3382_ _1585_ _430_ _u_cpu.decode.opcode_[2] _431_ vdd gnd AOI21X1
X_2653_ _1753_ _1754_ _1755_ vdd gnd NOR2X1
X_2233_ _u_cpu.bufreg.i_shamt_[0] _u_cpu.bufreg.i_shamt_[1] _715_ vdd gnd NOR2X1
X_3858_ _1324_ _gen_int_sys_clk.clk_sys_r_bF$buf23_ _u_rf_if.read_buf0_[24] vdd gnd DFFPOSX1
X_3438_ _u_cpu.bufreg.i_shamt_[1] _479_ vdd gnd INVX1
X_3018_ _170_ _173_ vdd gnd INVX1
X_3191_ rreg0[4] _296_ _659__bF$buf2 _297_ vdd gnd OAI21X1
X_1924_ _1023__bF$buf4 _990_ _989_ _988_ vdd gnd OAI21X1
XFILL_0__3651_ gnd vdd FILL
XFILL_0__3231_ gnd vdd FILL
X_2709_ _1783__bF$buf3 _1793_ _1794_ _1795_ vdd gnd OAI21X1
X_2882_ _u_rf_if.read_buf0_[17] _u_rf_if.read_buf0_[18] _u_rf_if.stream_active_bF$buf2_ _71_ vdd gnd MUX2X1
X_2462_ _1555_ _1585_ vdd gnd INVX1
X_2042_ _u_cpu.bufreg.data_[18] _u_cpu.ctrl.o_ibus_adr_[18] _1006__bF$buf2 _886_ vdd gnd MUX2X1
X_3667_ _1059_ _1055_ _1057_ _1048_ vdd gnd AOI21X1
X_3247_ _1524_ _339_ _1066_ _340_ vdd gnd OAI21X1
XFILL_0__2502_ gnd vdd FILL
XFILL_0__3040_ gnd vdd FILL
X_2938_ _u_rf_if.read_buf0_[29] _22__bF$buf5 _114_ vdd gnd NAND2X1
X_2518_ _u_rf_if.tx_state_[1] _1618_ _1641_ vdd gnd NOR2X1
X_2691_ _1756_ _1781_ vdd gnd INVX1
X_2271_ _685_ _681_ _678_ _677_ vdd gnd OAI21X1
X_3896_ _1152_ _gen_int_sys_clk.clk_sys_r_bF$buf16_ _u_cpu.ctrl.o_ibus_adr_[21] vdd gnd DFFPOSX1
X_3476_ mem_dbus_ack_bF$buf4 _u_cpu.bufreg2.dlo_[17] _508_ _509_ vdd gnd OAI21X1
X_3056_ _200_ _199_ _1070__bF$buf4 _1288_ vdd gnd AOI21X1
XFILL128250x75750 gnd vdd FILL
XFILL_0__3516_ gnd vdd FILL
X_1962_ _u_cpu.bufreg.data_[8] _u_cpu.ctrl.o_ibus_adr_[8] _1006__bF$buf3 _956_ vdd gnd MUX2X1
X_2747_ _u_rf_if.read_buf1_[14] _u_rf_if.read_buf1_[15] _u_rf_if.stream_active_bF$buf0_ _1823_ vdd gnd MUX2X1
X_2327_ _1086_ _u_rf_if.last_req_key_[1] _1088_ vdd gnd OR2X2
X_2080_ _u_mem_serial.shift_reg_[22] _u_cpu.bufreg2.dlo_[17] _994__bF$buf5 _853_ vdd gnd MUX2X1
X_3285_ ibus_pending_ack_bF$buf2 _369_ _370_ vdd gnd NAND2X1
XFILL_0__2540_ gnd vdd FILL
XFILL_0_BUFX2_insert111 gnd vdd FILL
XFILL_0_BUFX2_insert114 gnd vdd FILL
X_2976_ _139_ _875_ ibus_pending_ack_bF$buf5 _140_ vdd gnd MUX2X1
X_2556_ _1670_ _1671_ _1674_ vdd gnd NAND2X1
X_2136_ _u_mem_serial.shift_reg_[29] _u_cpu.bufreg.i_shamt_[0] _994__bF$buf5 _804_ vdd gnd MUX2X1
X_3094_ _223_ _224_ vdd gnd INVX1
XFILL_0__3554_ gnd vdd FILL
X_2785_ _1783__bF$buf1 _1850_ _1851_ _1852_ vdd gnd OAI21X1
X_2365_ _1492_ _736_ _1858_ _1493_ vdd gnd OAI21X1
XFILL_0__2405_ gnd vdd FILL
XFILL_0__3363_ gnd vdd FILL
X_2594_ _1705_ _1703_ _1698_ _1401_ vdd gnd AOI21X1
X_2174_ _u_mem_serial.shift_reg_[34] _770_ vdd gnd INVX1
X_3799_ _1296_ _gen_int_sys_clk.clk_sys_r_bF$buf1_ _u_rf_if.issue_chunk_[2] vdd gnd DFFPOSX1
X_3379_ _427_ _424_ _428_ _1193_ vdd gnd AOI21X1
XFILL_0__3419_ gnd vdd FILL
X_1865_ _0_ o_mem_mosi vdd gnd BUFX2
XFILL_0__1905_ gnd vdd FILL
XFILL128850x7350 gnd vdd FILL
X_3188_ _u_cpu.decode.opcode_[2] _u_cpu.decode.opcode_[1] _294_ vdd gnd NOR2X1
XFILL_0__2863_ gnd vdd FILL
XFILL_0__2443_ gnd vdd FILL
XFILL_0__3228_ gnd vdd FILL
X_2879_ _u_rf_if.read_buf0_[15] _22__bF$buf4 _69_ vdd gnd NAND2X1
X_2459_ _1580_ _1579_ _1582_ vdd gnd NAND2X1
X_2039_ _u_mem_serial.shift_reg_[18] _889_ vdd gnd INVX1
X_3820_ _1134_ _gen_int_sys_clk.clk_sys_r_bF$buf7_ _u_cpu.ctrl.o_ibus_adr_[3] vdd gnd DFFPOSX1
X_3400_ _u_cpu.bufreg2.i_bytecnt_[0] _u_cpu.bufreg.data_[0] _u_cpu.bufreg2.i_bytecnt_[1] _u_cpu.state.i_ctrl_misalign_ _446_ vdd 
+ gnd
+ AOI22X1
XFILL_0__2252_ gnd vdd FILL
X_2688_ _u_rf_if.stream_cnt_[2] _1755_ i_rst_n_bF$buf9 _1779_ vdd gnd OAI21X1
X_2268_ _u_cpu.branch_op_ _725_ _680_ vdd gnd NOR2X1
XFILL_0__2728_ gnd vdd FILL
XFILL_0__2308_ gnd vdd FILL
X_1959_ _u_mem_serial.shift_reg_[8] _959_ vdd gnd INVX1
X_2900_ _22__bF$buf2 _83_ _84_ _85_ vdd gnd OAI21X1
XFILL_0__3686_ gnd vdd FILL
XFILL_0__3266_ gnd vdd FILL
X_2497_ _1619_ _1517_ _1618_ _1620_ vdd gnd OAI21X1
X_2077_ _861_ _973__bF$buf1 _856_ _855_ vdd gnd OAI21X1
XFILL_0__2117_ gnd vdd FILL
XFILL_0__2290_ gnd vdd FILL
X_3914_ i_rst_n_bF$buf10 vdd _1101_ _gen_int_sys_clk.clk_sys_r_bF$buf11_ ibus_pending_rdt[10] vdd 
+ gnd
+ DFFSR
XFILL_0__2766_ gnd vdd FILL
X_4032_ _1418_ i_clk_fast_bF$buf1 _u_mem_serial.state_[0] vdd gnd DFFPOSX1
X_1997_ _931_ _973__bF$buf0 _926_ _925_ vdd gnd OAI21X1
X_3723_ _1457_ i_clk_fast_bF$buf2 _u_mem_serial.bit_count_[4] vdd gnd DFFPOSX1
X_3303_ _u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20_[0] _381_ _384_ _385_ vdd gnd OAI21X1
XFILL_0__2575_ gnd vdd FILL
XFILL_0__2155_ gnd vdd FILL
XFILL129150x21750 gnd vdd FILL
X_3952_ _1175_ _gen_int_sys_clk.clk_sys_r_bF$buf26_ _u_cpu.bufreg2.dlo_[15] vdd gnd DFFPOSX1
X_3532_ _u_cpu.bufreg2.dlo_[2] _551_ vdd gnd INVX1
X_3112_ _1500_ _236_ _725_ _238_ vdd gnd OAI21X1
X_4070_ _1228_ _gen_int_sys_clk.clk_sys_r_bF$buf17_ _u_cpu.immdec.gen_immdec_w_eq_1.imm31_ vdd gnd DFFPOSX1
X_2803_ _u_rf_if.read_buf1_[29] _11_ vdd gnd INVX1
XFILL_0__3589_ gnd vdd FILL
XFILL_0__3169_ gnd vdd FILL
X_3761_ _1277_ i_clk_fast_bF$buf2 _u_mem_serial.active_we_ vdd gnd DFFPOSX1
X_3341_ _407_ _408_ _1536__bF$buf4 _1211_ vdd gnd MUX2X1
XFILL_0__2193_ gnd vdd FILL
X_2612_ _u_rf_if.read_buf1_[30] _1560_ _1722_ vdd gnd NAND2X1
X_3817_ _1305_ _gen_int_sys_clk.clk_sys_r_bF$buf32_ _u_rf_if.rreg1_latched_[2] vdd gnd DFFPOSX1
X_3990_ _1393_ _gen_int_sys_clk.clk_sys_r_bF$buf32_ _u_rf_if.rreg1_latched_[4] vdd gnd DFFPOSX1
X_3570_ _u_cpu.ctrl.o_ibus_adr_[19] _577_ vdd gnd INVX1
X_3150_ _u_mem_serial.shift_reg_[3] ibus_pending_ack_bF$buf2 _266_ _267_ vdd gnd OAI21X1
X_2841_ _40_ i_rst_n_bF$buf11 _1343_ vdd gnd AND2X2
X_2421_ _1543_ _u_cpu.immdec.gen_immdec_w_eq_1.imm31_ _701_ _1544_ vdd gnd AOI21X1
X_2001_ _1002__bF$buf3 _923_ _922_ vdd gnd NOR2X1
X_3626_ _316_ _812_ _602__bF$buf4 _1120_ vdd gnd MUX2X1
X_3206_ _u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20_[2] _307_ vdd gnd INVX1
XFILL_0__2478_ gnd vdd FILL
XFILL_0__2058_ gnd vdd FILL
X_2650_ _u_rf_if.stream_cnt_[3] _1752_ vdd gnd INVX1
X_2230_ _u_cpu.bufreg2.i_bytecnt_[1] _u_cpu.bufreg.i_right_shift_op_ _719_ _718_ vdd gnd NAND3X1
X_3855_ _1142_ _gen_int_sys_clk.clk_sys_r_bF$buf35_ _u_cpu.ctrl.o_ibus_adr_[11] vdd gnd DFFPOSX1
X_3435_ _u_cpu.bufreg2.dhi_[3] _708_ _476_ _477_ vdd gnd AOI21X1
X_3015_ _u_rf_if.issue_idx_[5] _1679_ _1708_ _171_ vdd gnd OAI21X1
XFILL_0_CLKBUF1_insert47 gnd vdd FILL
XFILL_0_CLKBUF1_insert49 gnd vdd FILL
X_1921_ _1070__bF$buf1 _991_ _1454_ vdd gnd NOR2X1
X_2706_ _1792_ i_rst_n_bF$buf9 _1376_ vdd gnd AND2X2
XFILL_0__1978_ gnd vdd FILL
X_3664_ _1046_ _1048_ _u_mem_serial.bit_count_[0] _1045_ vdd gnd OAI21X1
X_3244_ _315_ _336_ _337_ _1237_ vdd gnd AOI21X1
X_4029_ _1208_ _gen_int_sys_clk.clk_sys_r_bF$buf19_ _u_cpu.bufreg.data_[14] vdd gnd DFFPOSX1
XFILL_0__3704_ gnd vdd FILL
X_2935_ _111_ _22__bF$buf5 i_rst_n_bF$buf11 _112_ vdd gnd OAI21X1
X_2515_ _1637_ _1638_ vdd gnd INVX1
X_3893_ _1341_ _gen_int_sys_clk.clk_sys_r_bF$buf9_ _u_rf_if.read_buf0_[7] vdd gnd DFFPOSX1
X_3473_ mem_dbus_ack_bF$buf6 _u_cpu.bufreg2.dlo_[18] _506_ _507_ vdd gnd OAI21X1
X_3053_ _198_ _196_ _1070__bF$buf2 _1289_ vdd gnd AOI21X1
X_2744_ _u_rf_if.read_buf1_[12] _1783__bF$buf1 _1821_ vdd gnd NAND2X1
X_2324_ _735_ raddr[1] _1085_ vdd gnd OR2X2
X_3949_ _1369_ _gen_int_sys_clk.clk_sys_r_bF$buf15_ _u_rf_if.read_buf1_[9] vdd gnd DFFPOSX1
X_3529_ mem_dbus_ack_bF$buf0 _548_ _549_ vdd gnd NAND2X1
X_3109_ _233_ _232_ _229_ _235_ vdd gnd AOI21X1
X_3282_ _366_ _367_ _351_ _686_ _1229_ vdd 
+ gnd
+ AOI22X1
X_4067_ _1435_ i_clk_fast_bF$buf7 _u_mem_serial.shift_reg_[20] vdd gnd DFFPOSX1
X_2973_ _1680_ _136_ _137_ _1308_ vdd gnd AOI21X1
X_2553_ _u_rf_if.rcnt_[1] _1671_ vdd gnd INVX1
X_2133_ _812_ _973__bF$buf6 _807_ _806_ vdd gnd OAI21X1
X_3758_ _1275_ _gen_int_sys_clk.clk_sys_r_bF$buf14_ _u_cpu.state.cnt_r_[1] vdd gnd DFFPOSX1
X_3338_ _u_cpu.bufreg.data_[18] _407_ vdd gnd INVX1
X_3091_ _689_ _221_ _1070__bF$buf6 _1274_ vdd gnd AOI21X1
XFILL_0__3551_ gnd vdd FILL
XFILL_0__3131_ gnd vdd FILL
X_2609_ _1718_ _1638_ _1719_ vdd gnd NOR2X1
X_2782_ _1849_ i_rst_n_bF$buf7 _1357_ vdd gnd AND2X2
X_2362_ _u_rf_if.tx_state_[3] _u_rf_if.tx_state_[2] _1490_ vdd gnd NOR2X1
X_3987_ _1189_ _gen_int_sys_clk.clk_sys_r_bF$buf42_ _u_cpu.bufreg2.dhi_[6] vdd gnd DFFPOSX1
X_3567_ _575_ _212__bF$buf1 _574_ _570__bF$buf0 _1152_ vdd 
+ gnd
+ OAI22X1
X_3147_ _1062_ _1692__bF$buf0 _264_ _1261_ vdd gnd OAI21X1
XFILL_0__3607_ gnd vdd FILL
X_2838_ _u_rf_if.read_buf0_[6] _u_rf_if.read_buf0_[7] _u_rf_if.stream_active_bF$buf6_ _38_ vdd gnd MUX2X1
X_2418_ _787_ _1521_ _1540_ _1541_ vdd gnd OAI21X1
X_2591_ _1701_ _1702_ _u_rf_if.wdata0_next_phase_ _1703_ vdd gnd OAI21X1
X_2171_ _u_mem_serial.shift_reg_[33] _772_ vdd gnd INVX1
X_3796_ _1128_ _gen_int_sys_clk.clk_sys_r_bF$buf18_ _u_cpu.ctrl.o_ibus_adr_[29] vdd gnd DFFPOSX1
X_3376_ _u_cpu.bufreg.data_[30] _427_ vdd gnd INVX1
XFILL_0__2631_ gnd vdd FILL
XFILL_0__3416_ gnd vdd FILL
X_1862_ _1856_ o_rf_mosi vdd gnd BUFX2
X_2647_ _u_rf_if.stream_active_bF$buf3_ _u_rf_if.ready_pulse_ _1749_ vdd gnd NOR2X1
X_2227_ _724_ _722_ _u_cpu.decode.opcode_[2] _721_ vdd gnd OAI21X1
X_3185_ _u_mem_serial.shift_reg_[30] ibus_pending_ack_bF$buf0 _291_ _292_ vdd gnd OAI21X1
XFILL_0__2440_ gnd vdd FILL
XFILL_0__2020_ gnd vdd FILL
X_1918_ _u_mem_serial.shift_reg_[0] _1023__bF$buf4 _994__bF$buf2 _993_ vdd gnd NAND3X1
X_2876_ _22__bF$buf4 _65_ _66_ _67_ vdd gnd OAI21X1
X_2456_ _1578_ _1567_ _1579_ vdd gnd NAND2X1
X_2036_ _894_ _892_ _973__bF$buf6 _891_ vdd gnd OAI21X1
XFILL_0__2916_ gnd vdd FILL
XFILL128250x28950 gnd vdd FILL
XFILL_0__3454_ gnd vdd FILL
XFILL_0__3034_ gnd vdd FILL
X_2685_ _1774_ _1775_ _1776_ _1381_ vdd gnd AOI21X1
X_2265_ _u_cpu.immdec.gen_immdec_w_eq_1.imm11_7_[2] _683_ vdd gnd INVX1
XFILL_0__1940_ gnd vdd FILL
XFILL_0__2305_ gnd vdd FILL
X_1956_ _964_ _962_ _973__bF$buf5 _961_ vdd gnd OAI21X1
X_2494_ _1518_ _1558_ _1616_ _1617_ vdd gnd OAI21X1
X_2074_ _u_cpu.bufreg.data_[22] _u_cpu.ctrl.o_ibus_adr_[22] _1006__bF$buf1 _858_ vdd gnd MUX2X1
X_3699_ _u_mem_serial.clk_sys_prev_ _1056_ _1055_ vdd gnd NOR2X1
X_3279_ _364_ _966_ ibus_pending_ack_bF$buf1 _365_ vdd gnd MUX2X1
XFILL_0__2954_ gnd vdd FILL
XFILL_0__3319_ gnd vdd FILL
XFILL_0__3492_ gnd vdd FILL
X_3911_ _1350_ _gen_int_sys_clk.clk_sys_r_bF$buf21_ _u_rf_if.read_buf1_[28] vdd gnd DFFPOSX1
X_3088_ i_rst_n_bF$buf8 _u_cpu.state.cnt_r_[1] _1276_ vdd gnd AND2X2
XFILL_0__2343_ gnd vdd FILL
X_1994_ _u_cpu.bufreg.data_[12] _u_cpu.ctrl.o_ibus_adr_[12] _1006__bF$buf2 _928_ vdd gnd MUX2X1
X_2779_ _u_rf_if.read_buf1_[22] _u_rf_if.read_buf1_[23] _u_rf_if.stream_active_bF$buf1_ _1847_ vdd gnd MUX2X1
X_2359_ _651_ _1486_ _607_ _1487_ vdd gnd NAND3X1
X_3720_ _1247_ _gen_int_sys_clk.clk_sys_r_bF$buf22_ rreg0[1] vdd gnd DFFPOSX1
X_3300_ _381_ _382_ vdd gnd INVX1
XFILL_0__2819_ gnd vdd FILL
XFILL_0__3357_ gnd vdd FILL
X_2588_ _1700_ _1402_ vdd gnd INVX1
X_2168_ _791_ _776_ _994__bF$buf0 _775_ vdd gnd MUX2X1
XFILL_0__2208_ gnd vdd FILL
XFILL_0__2381_ gnd vdd FILL
X_2800_ _u_rf_if.read_buf1_[26] _1783__bF$buf4 _9_ vdd gnd NAND2X1
XFILL_0__3166_ gnd vdd FILL
X_2397_ _u_cpu.decode.opcode_[1] _1520_ vdd gnd INVX1
XFILL_0__2190_ gnd vdd FILL
X_3814_ _u_cpu.state.init_done_ _1065_ _1064_ vdd gnd NAND2X1
XFILL_0__2666_ gnd vdd FILL
XFILL_0__2246_ gnd vdd FILL
X_1897_ _u_mem_serial.bit_count_[5] _1026_ _1021_ _1013_ vdd gnd NAND3X1
X_3623_ _1602_ _1592_ _1601_ _1122_ vdd gnd OAI21X1
X_3203_ _u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20_[3] _305_ vdd gnd INVX1
XFILL_0__2055_ gnd vdd FILL
X_3852_ _1321_ _gen_int_sys_clk.clk_sys_r_bF$buf31_ _u_rf_if.read_buf0_[27] vdd gnd DFFPOSX1
X_3432_ _716_ _715_ _474_ vdd gnd NOR2X1
X_3012_ _168_ _1692__bF$buf4 _169_ vdd gnd NAND2X1
X_2703_ _u_rf_if.read_buf1_[3] _u_rf_if.read_buf1_[4] _u_rf_if.stream_active_bF$buf4_ _1790_ vdd gnd MUX2X1
XFILL_0__3489_ gnd vdd FILL
XFILL_0__3069_ gnd vdd FILL
X_3908_ _1155_ _gen_int_sys_clk.clk_sys_r_bF$buf27_ _u_cpu.ctrl.o_ibus_adr_[24] vdd gnd DFFPOSX1
X_3661_ _1043_ _1044_ _1042_ vdd gnd AND2X2
X_3241_ _334_ _840_ ibus_pending_ack_bF$buf3 _335_ vdd gnd MUX2X1
X_4026_ _1207_ _gen_int_sys_clk.clk_sys_r_bF$buf10_ _u_cpu.bufreg.data_[13] vdd gnd DFFPOSX1
XFILL_0__2093_ gnd vdd FILL
X_2932_ _u_rf_if.read_buf0_[27] _22__bF$buf5 _110_ vdd gnd NAND2X1
X_2512_ _u_rf_if.tx_state_[2] _739_ _u_rf_if.tx_state_[3] _1635_ vdd gnd OAI21X1
X_3717_ _1454_ i_clk_fast_bF$buf6 _u_mem_serial.shift_reg_[1] vdd gnd DFFPOSX1
X_3890_ vdd i_rst_n_bF$buf0 _1095_ _gen_int_sys_clk.clk_sys_r_bF$buf30_ ibus_pending_rdt[4] vdd 
+ gnd
+ DFFSR
X_3470_ _502_ _504_ _450__bF$buf1 _1178_ vdd gnd MUX2X1
X_3050_ _u_rf_if.last_req_key_[5] _1488_ _196_ vdd gnd NAND2X1
XFILL_0__2989_ gnd vdd FILL
XFILL_0__2569_ gnd vdd FILL
X_2741_ _1783__bF$buf5 _1817_ _1818_ _1819_ vdd gnd OAI21X1
X_2321_ _u_rf_if.last_req_key_[3] _1076_ _1077_ vdd gnd NOR2X1
X_3946_ _1172_ _gen_int_sys_clk.clk_sys_r_bF$buf19_ _u_cpu.bufreg2.dlo_[12] vdd gnd DFFPOSX1
X_3526_ _544_ _546_ _450__bF$buf3 _1164_ vdd gnd MUX2X1
X_3106_ _1575_ _1582_ _1572_ _232_ vdd gnd OAI21X1
XFILL_0__2378_ gnd vdd FILL
X_4064_ _1225_ _gen_int_sys_clk.clk_sys_r_bF$buf2_ _u_cpu.immdec.gen_immdec_w_eq_1.imm30_25_[5] vdd gnd DFFPOSX1
X_2970_ _1680_ _134_ _135_ _1309_ vdd gnd AOI21X1
X_2550_ _1855_ _1668_ _1669_ vdd gnd NAND2X1
X_2130_ _u_cpu.bufreg.data_[29] _u_cpu.ctrl.o_ibus_adr_[29] _1006__bF$buf3 _809_ vdd gnd MUX2X1
X_3755_ _1272_ _gen_int_sys_clk.clk_sys_r_bF$buf14_ _u_cpu.state.o_cnt_[2] vdd gnd DFFPOSX1
X_3335_ _404_ _405_ _1536__bF$buf2 _1214_ vdd gnd MUX2X1
X_2606_ _605_ _1716_ vdd gnd INVX1
XFILL_0__1878_ gnd vdd FILL
X_3984_ _1390_ _gen_int_sys_clk.clk_sys_r_bF$buf24_ _u_rf_if.rtrig1_ vdd gnd DFFPOSX1
X_3564_ _u_cpu.ctrl.o_ibus_adr_[22] _574_ vdd gnd INVX1
X_3144_ ibus_pending_rdt[4] _262_ vdd gnd INVX1
X_2835_ _u_rf_if.read_buf0_[4] _22__bF$buf6 _36_ vdd gnd NAND2X1
X_2415_ _1518_ _1538_ vdd gnd INVX1
X_3793_ _1293_ i_clk_fast_bF$buf5 _u_rf_if.last_req_key_[1] vdd gnd DFFPOSX1
X_3373_ _u_cpu.state.cnt_r_[0] _u_cpu.state.cnt_r_[1] _1554_ _425_ vdd gnd OAI21X1
X_2644_ _1747_ _1744_ _1070__bF$buf5 _1393_ vdd gnd AOI21X1
X_2224_ _1063_ _725_ _724_ vdd gnd NAND2X1
X_3849_ _u_cpu.decode.opcode_[2] _1062_ vdd gnd INVX2
X_3429_ _768_ _471_ _708_ _472_ vdd gnd MUX2X1
X_3009_ _673__bF$buf0 _674__bF$buf1 _u_rf_if.rreg0_latched_[3] _166_ vdd gnd OAI21X1
XFILL128550x100950 gnd vdd FILL
X_3182_ _673__bF$buf1 _674__bF$buf2 _u_cpu.bufreg.i_sh_signed_ _289_ vdd gnd OAI21X1
X_1915_ _1070__bF$buf1 _996_ _1455_ vdd gnd NOR2X1
XFILL_0__3642_ gnd vdd FILL
XFILL_0__3222_ gnd vdd FILL
X_2873_ _64_ i_rst_n_bF$buf8 _1335_ vdd gnd AND2X2
X_2453_ _1575_ _1576_ vdd gnd INVX1
X_2033_ _1002__bF$buf4 _895_ _894_ vdd gnd NOR2X1
X_3658_ _u_mem_serial.bit_count_[1] _1041_ _1052_ _1040_ vdd gnd OAI21X1
X_3238_ _u_cpu.immdec.gen_immdec_w_eq_1.imm30_25_[1] _315_ _333_ vdd gnd NOR2X1
XFILL_0__3031_ gnd vdd FILL
XFILL128250x82950 gnd vdd FILL
X_2929_ _u_rf_if.read_buf0_[28] _u_rf_if.stream_active_bF$buf5_ _107_ vdd gnd NAND2X1
X_2509_ _739_ _1086_ _1631_ _1632_ vdd gnd OAI21X1
X_2682_ _u_rf_if.stream_cnt_[1] _1749_ _1774_ vdd gnd NAND2X1
X_2262_ _u_cpu.immdec.gen_immdec_w_eq_1.imm11_7_[0] _686_ vdd gnd INVX1
X_3887_ _1338_ _gen_int_sys_clk.clk_sys_r_bF$buf40_ _u_rf_if.read_buf0_[10] vdd gnd DFFPOSX1
X_3467_ _u_cpu.bufreg2.dlo_[18] _502_ vdd gnd INVX1
X_3047_ _u_rf_if.last_req_key_[4] _1488_ _194_ vdd gnd NAND2X1
XFILL_0__3507_ gnd vdd FILL
X_1953_ _1002__bF$buf2 _965_ _964_ vdd gnd NOR2X1
XFILL_0__3680_ gnd vdd FILL
X_2738_ _1816_ i_rst_n_bF$buf7 _1368_ vdd gnd AND2X2
X_2318_ ren raddr[7] _671_ _606_ _605_ vdd 
+ gnd
+ AOI22X1
X_2491_ _u_cpu.branch_op_ _u_cpu.decode.opcode_[0] _1613_ _1614_ vdd gnd NAND3X1
X_2071_ _u_mem_serial.shift_reg_[22] _861_ vdd gnd INVX1
X_3696_ _630_ _631_ vdd gnd INVX1
X_3276_ _659__bF$buf3 _361_ _362_ _363_ vdd gnd OAI21X1
XFILL_0__2531_ gnd vdd FILL
XFILL_0__2111_ gnd vdd FILL
X_2967_ _1680_ _129_ _1690_ _133_ _1310_ vdd 
+ gnd
+ OAI22X1
X_2547_ _736_ _1471_ _1666_ _1667_ vdd gnd NAND3X1
X_2127_ _u_mem_serial.shift_reg_[29] _812_ vdd gnd INVX1
X_3085_ _1070__bF$buf3 _219_ _1278_ vdd gnd NOR2X1
XFILL_0__3545_ gnd vdd FILL
X_1991_ _u_mem_serial.shift_reg_[12] _931_ vdd gnd INVX1
X_2776_ _u_rf_if.read_buf1_[20] _1783__bF$buf1 _1845_ vdd gnd NAND2X1
X_2356_ _u_rf_if.last_req_key_[7] _1482_ _1483_ _1484_ vdd gnd NAND3X1
X_4099_ _1451_ i_clk_fast_bF$buf6 _u_mem_serial.shift_reg_[4] vdd gnd DFFPOSX1
XFILL_0__3354_ gnd vdd FILL
X_2585_ i_rst_n_bF$buf1 _689_ _1698_ vdd gnd NAND2X1
X_2165_ _u_cpu.decode.co_mem_word_ _785_ _778_ vdd gnd NOR2X1
X_2394_ _1516_ _1517_ vdd gnd INVX1
X_3599_ _591_ _212__bF$buf4 _590_ _570__bF$buf3 _1136_ vdd 
+ gnd
+ OAI22X1
X_3179_ _245_ _1047_ _278_ _287_ vdd gnd NAND3X1
XFILL_0__2854_ gnd vdd FILL
XFILL_0__2434_ gnd vdd FILL
XFILL128250x108150 gnd vdd FILL
XFILL_0__3219_ gnd vdd FILL
XFILL_0__3392_ gnd vdd FILL
X_3811_ _1302_ _gen_int_sys_clk.clk_sys_r_bF$buf37_ _u_rf_if.rreg0_latched_[1] vdd gnd DFFPOSX1
XFILL_0__2243_ gnd vdd FILL
X_1894_ _1018_ _1017_ _1022_ _1016_ vdd gnd AOI21X1
X_2679_ _1749_ _1772_ vdd gnd INVX1
X_2259_ _706_ _698_ _690_ _689_ vdd gnd AOI21X1
XFILL_0__1934_ gnd vdd FILL
X_3620_ _u_cpu.alu.cmp_r_ _600_ vdd gnd INVX1
X_3200_ _u_cpu.csr_imm_ _303_ vdd gnd INVX1
XFILL_0__2719_ gnd vdd FILL
XFILL_0__2892_ gnd vdd FILL
XFILL_0__3257_ gnd vdd FILL
XFILL128550x57750 gnd vdd FILL
X_2488_ _1610_ _1611_ vdd gnd INVX1
X_2068_ _866_ _864_ _973__bF$buf6 _863_ vdd gnd OAI21X1
XFILL_0__2108_ gnd vdd FILL
XFILL_0__2281_ gnd vdd FILL
X_2700_ _u_rf_if.read_buf1_[1] _1783__bF$buf0 _1788_ vdd gnd NAND2X1
X_3905_ _1347_ _gen_int_sys_clk.clk_sys_r_bF$buf5_ _u_rf_if.read_buf0_[1] vdd gnd DFFPOSX1
X_2297_ _652_ _651_ vdd gnd INVX1
XFILL_0__2757_ gnd vdd FILL
X_4023_ _1411_ i_clk_fast_bF$buf4 _u_rf_if.shift_rx_[0] vdd gnd DFFPOSX1
X_1988_ _936_ _934_ _973__bF$buf1 _933_ vdd gnd OAI21X1
XFILL_0__3295_ gnd vdd FILL
X_3714_ _1244_ _gen_int_sys_clk.clk_sys_r_bF$buf22_ _u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20_[2] vdd gnd DFFPOSX1
XFILL_0__2146_ gnd vdd FILL
X_3943_ _1366_ _gen_int_sys_clk.clk_sys_r_bF$buf29_ _u_rf_if.read_buf1_[12] vdd gnd DFFPOSX1
X_3523_ _u_cpu.bufreg2.dlo_[4] _544_ vdd gnd INVX1
X_3103_ _u_cpu.bufreg.i_right_shift_op_ _u_cpu.decode.co_mem_word_ _229_ vdd gnd NOR2X1
XFILL128850x10950 gnd vdd FILL
XFILL_0__2795_ gnd vdd FILL
X_4061_ _1432_ i_clk_fast_bF$buf7 _u_mem_serial.shift_reg_[23] vdd gnd DFFPOSX1
X_3752_ _1269_ _gen_int_sys_clk.clk_sys_r_bF$buf34_ _u_cpu.ctrl.i_jump_ vdd gnd DFFPOSX1
X_3332_ _u_cpu.bufreg.data_[21] _404_ vdd gnd INVX1
XFILL_0__2184_ gnd vdd FILL
X_2603_ _1712_ _1709_ _1679_ _1713_ vdd gnd AOI21X1
X_3808_ _1131_ _gen_int_sys_clk.clk_sys_r_bF$buf20_ _u_cpu.ctrl.pc_ vdd gnd DFFPOSX1
X_3981_ _1387_ i_clk_fast_bF$buf4 _u_rf_if.shift_rx_[1] vdd gnd DFFPOSX1
X_3561_ _572_ _212__bF$buf0 _571_ _570__bF$buf4 _1155_ vdd 
+ gnd
+ OAI22X1
X_3141_ _u_mem_serial.shift_reg_[5] ibus_pending_ack_bF$buf1 _259_ _260_ vdd gnd OAI21X1
X_2832_ _22__bF$buf6 _32_ _33_ _34_ vdd gnd OAI21X1
X_2412_ _721_ _1534_ _1535_ vdd gnd NAND2X1
X_3617_ _1610_ _598_ _688_ _1125_ vdd gnd AOI21X1
X_3790_ i_rst_n_bF$buf0 vdd _1071_ _gen_int_sys_clk.clk_sys_r_bF$buf26_ ibus_pending_rdt[31] vdd 
+ gnd
+ DFFSR
X_3370_ _u_cpu.bufreg.data_[2] _1536__bF$buf3 _423_ vdd gnd NOR2X1
XFILL_0__2469_ gnd vdd FILL
XFILL_0__2049_ gnd vdd FILL
XFILL_0__3410_ gnd vdd FILL
X_2641_ ibus_pending_rdt[24] _1745_ vdd gnd INVX1
X_2221_ _u_cpu.decode.co_mem_word_ _1062_ _727_ vdd gnd NOR2X1
X_3846_ _1318_ _gen_int_sys_clk.clk_sys_r_bF$buf24_ _u_rf_if.o_waddr_[0] vdd gnd DFFPOSX1
X_3426_ _468_ _469_ vdd gnd INVX1
X_3006_ _163_ _896_ ibus_pending_ack_bF$buf4 _164_ vdd gnd MUX2X1
X_1912_ _1026_ _1003_ _999_ _998_ vdd gnd NAND3X1
X_2870_ _u_rf_if.read_buf0_[14] _u_rf_if.read_buf0_[15] _u_rf_if.stream_active_bF$buf2_ _62_ vdd gnd MUX2X1
X_2450_ _u_cpu.alu.add_cy_r_ _1573_ vdd gnd INVX1
X_2030_ _897_ i_rst_n_bF$buf6 _1439_ vdd gnd AND2X2
XFILL_0__1969_ gnd vdd FILL
X_3655_ _603_ _556_ _602__bF$buf3 _1092_ vdd gnd MUX2X1
X_3235_ ibus_pending_rdt[26] _330_ vdd gnd INVX1
XFILL_0__2910_ gnd vdd FILL
X_2926_ _u_rf_if.read_buf0_[26] _22__bF$buf0 _105_ vdd gnd NAND2X1
X_2506_ _u_rf_if.tx_state_[1] _u_rf_if.tx_state_[0] _u_rf_if.tx_state_[2] _1629_ vdd gnd OAI21X1
X_3884_ _1149_ _gen_int_sys_clk.clk_sys_r_bF$buf25_ _u_cpu.ctrl.o_ibus_adr_[18] vdd gnd DFFPOSX1
X_3464_ mem_dbus_ack_bF$buf3 _882_ _500_ vdd gnd NAND2X1
X_3044_ _736_ _191_ _1666_ _192_ vdd gnd NAND3X1
X_1950_ _967_ i_rst_n_bF$buf0 _1449_ vdd gnd AND2X2
X_2735_ _u_rf_if.read_buf1_[11] _u_rf_if.read_buf1_[12] _u_rf_if.stream_active_bF$buf0_ _1814_ vdd gnd MUX2X1
X_2315_ _u_rf_if.last_req_key_[8] _654_ _609_ _608_ vdd gnd OAI21X1
X_3693_ ibus_pending_ack_bF$buf2 ibus_pending_rdt[1] ibus_pending_rdt[0] _628_ vdd gnd NAND3X1
X_3273_ ibus_pending_rdt[8] _360_ vdd gnd INVX1
X_4058_ _1222_ _gen_int_sys_clk.clk_sys_r_bF$buf10_ _u_cpu.bufreg.data_[28] vdd gnd DFFPOSX1
XFILL128850x100950 gnd vdd FILL
X_2964_ _u_rf_if.issue_sel_ _u_rf_if.rreg0_latched_[1] _131_ vdd gnd NOR2X1
X_2544_ _1664_ _1663_ _1494_ _1410_ vdd gnd AOI21X1
X_2124_ _817_ _815_ _973__bF$buf3 _814_ vdd gnd OAI21X1
X_3749_ i_rst_n_bF$buf1 vdd _1107_ _gen_int_sys_clk.clk_sys_r_bF$buf39_ ibus_pending_rdt[16] vdd 
+ gnd
+ DFFSR
X_3329_ _401_ _402_ _1536__bF$buf2 _1217_ vdd gnd MUX2X1
X_3082_ _u_mem_serial.shift_reg_[36] _u_cpu.bufreg2.cnt_next_[6] _994__bF$buf2 _217_ vdd gnd MUX2X1
XFILL_0__3122_ gnd vdd FILL
X_2773_ _1783__bF$buf2 _1841_ _1842_ _1843_ vdd gnd OAI21X1
X_2353_ _642_ _1480_ _1478_ _1481_ vdd gnd OAI21X1
X_3978_ _1385_ _gen_int_sys_clk.clk_sys_r_bF$buf36_ _u_rf_if.wdata0_r_[0] vdd gnd DFFPOSX1
X_3558_ _u_cpu.ctrl.o_ibus_adr_[25] _571_ vdd gnd INVX1
X_3138_ _1500_ _1692__bF$buf2 _257_ _1263_ vdd gnd OAI21X1
X_4096_ _1241_ _gen_int_sys_clk.clk_sys_r_bF$buf36_ _u_cpu.immdec.gen_immdec_w_eq_1.imm30_25_[4] vdd gnd DFFPOSX1
X_2829_ _31_ i_rst_n_bF$buf11 _1346_ vdd gnd AND2X2
X_2409_ _705_ _663_ _1532_ vdd gnd NAND2X1
X_2582_ _u_rf_if.pending_read_ _1696_ vdd gnd INVX1
X_2162_ _781_ i_rst_n_bF$buf2 _1423_ vdd gnd AND2X2
X_3787_ _1290_ i_clk_fast_bF$buf3 _u_rf_if.last_req_key_[4] vdd gnd DFFPOSX1
X_3367_ _420_ _421_ _1536__bF$buf3 _1198_ vdd gnd MUX2X1
XFILL_0__2622_ gnd vdd FILL
XFILL_0__3580_ gnd vdd FILL
XFILL_0__3160_ gnd vdd FILL
X_2638_ _u_rf_if.read_buf1_[31] _1742_ _1740_ _1743_ vdd gnd OAI21X1
X_2218_ _735_ _731_ _730_ vdd gnd NOR2X1
X_2391_ _u_rf_if.wdata0_next_phase_ _1511_ _1514_ vdd gnd NAND2X1
X_3596_ _u_cpu.ctrl.o_ibus_adr_[6] _590_ vdd gnd INVX1
X_3176_ _659__bF$buf5 _285_ _286_ vdd gnd OR2X2
XFILL_0__2011_ gnd vdd FILL
X_1909_ _u_mem_serial.active_we_ _1001_ vdd gnd INVX1
XFILL_0__3636_ gnd vdd FILL
X_2867_ _u_rf_if.read_buf0_[12] _22__bF$buf4 _60_ vdd gnd NAND2X1
X_2447_ _694_ _1566_ _u_cpu.bne_or_bge_ _1569_ _1570_ vdd 
+ gnd
+ OAI22X1
X_2027_ _1023__bF$buf1 _900_ _899_ vdd gnd NOR2X1
XFILL_0__2907_ gnd vdd FILL
XFILL_0__2660_ gnd vdd FILL
XFILL_0__3445_ gnd vdd FILL
XFILL_0__3025_ gnd vdd FILL
X_1891_ _1021_ _1020_ _1019_ vdd gnd NAND2X1
X_2676_ _u_rf_if.rcnt_[2] _1672_ _1770_ vdd gnd NAND2X1
X_2256_ _u_cpu.decode.opcode_[0] _1062_ _692_ vdd gnd NOR2X1
XFILL_0__1931_ gnd vdd FILL
X_1947_ _1023__bF$buf3 _970_ _969_ vdd gnd NOR2X1
X_2485_ _u_cpu.ctrl.pc_ _u_cpu.ctrl.pc_plus_4_cy_r_w_ _1608_ vdd gnd NOR2X1
X_2065_ _1002__bF$buf0 _867_ _866_ vdd gnd NOR2X1
XFILL_0__2945_ gnd vdd FILL
XFILL_0__2525_ gnd vdd FILL
XFILL_0__3483_ gnd vdd FILL
XFILL128550x108150 gnd vdd FILL
X_3902_ i_rst_n_bF$buf1 vdd _1098_ _gen_int_sys_clk.clk_sys_r_bF$buf12_ ibus_pending_rdt[7] vdd 
+ gnd
+ DFFSR
X_2294_ ren raddr[8] _671_ _655_ _654_ vdd 
+ gnd
+ AOI22X1
X_3499_ mem_dbus_ack_bF$buf6 _945_ _526_ vdd gnd NAND2X1
X_3079_ _211_ _212__bF$buf2 _215_ _213_ _1280_ vdd 
+ gnd
+ OAI22X1
XFILL_0__2334_ gnd vdd FILL
X_4020_ _1409_ i_clk_fast_bF$buf5 _u_rf_if.last_req_key_[10] vdd gnd DFFPOSX1
X_1985_ _1002__bF$buf0 _937_ _936_ vdd gnd NOR2X1
X_3711_ _620_ _639_ _1072_ vdd gnd NOR2X1
XFILL_0__2983_ gnd vdd FILL
XFILL_0__3348_ gnd vdd FILL
X_2999_ _673__bF$buf2 _674__bF$buf1 _u_rf_if.rreg0_latched_[1] _158_ vdd gnd OAI21X1
X_2579_ _1693_ _882_ ibus_pending_ack_bF$buf5 _1694_ vdd gnd MUX2X1
X_2159_ _u_cpu.bufreg.data_[0] _u_cpu.state.i_ctrl_misalign_ _784_ _783_ vdd gnd OAI21X1
X_3940_ _1169_ _gen_int_sys_clk.clk_sys_r_bF$buf30_ _u_cpu.bufreg2.dlo_[9] vdd gnd DFFPOSX1
X_3520_ mem_dbus_ack_bF$buf2 _541_ _542_ vdd gnd NAND2X1
X_3100_ _703_ _720_ _227_ _1271_ vdd gnd AOI21X1
XFILL_0__2792_ gnd vdd FILL
XFILL_0__2372_ gnd vdd FILL
XFILL_0__3157_ gnd vdd FILL
X_2388_ _1509_ _1510_ _1511_ vdd gnd NAND2X1
XFILL_0__2848_ gnd vdd FILL
XFILL_0__2181_ gnd vdd FILL
X_2600_ _u_rf_if.issue_chunk_[1] _u_rf_if.issue_chunk_[0] _1710_ vdd gnd NOR2X1
X_3805_ _1299_ _gen_int_sys_clk.clk_sys_r_bF$buf3_ _u_rf_if.issue_sel_ vdd gnd DFFPOSX1
X_2197_ _751_ _u_mem_serial.bit_count_[6] _750_ vdd gnd OR2X2
XFILL_0__1872_ gnd vdd FILL
XFILL_0__2657_ gnd vdd FILL
XFILL_0__2237_ gnd vdd FILL
X_1888_ _1026_ _1025_ _1023__bF$buf0 _1022_ vdd gnd NAND3X1
XFILL_0__3195_ gnd vdd FILL
X_3614_ _595_ _212__bF$buf1 _597_ _570__bF$buf0 _1127_ vdd 
+ gnd
+ OAI22X1
XFILL_0__2046_ gnd vdd FILL
X_3843_ _1139_ _gen_int_sys_clk.clk_sys_r_bF$buf18_ _u_cpu.ctrl.o_ibus_adr_[8] vdd gnd DFFPOSX1
X_3423_ _466_ _768_ _451_ _1187_ vdd gnd MUX2X1
X_3003_ _161_ _158_ _1070__bF$buf0 _1302_ vdd gnd AOI21X1
XFILL_0__2695_ gnd vdd FILL
X_3652_ _265_ _548_ _602__bF$buf3 _1094_ vdd gnd MUX2X1
X_3232_ _u_cpu.immdec.gen_immdec_w_eq_1.imm30_25_[3] _327_ _659__bF$buf1 _328_ vdd gnd MUX2X1
X_4017_ _1203_ _gen_int_sys_clk.clk_sys_r_bF$buf25_ _u_cpu.bufreg.data_[9] vdd gnd DFFPOSX1
XFILL_0__2084_ gnd vdd FILL
X_2923_ _u_rf_if.read_buf0_[27] _u_rf_if.stream_active_bF$buf5_ _102_ vdd gnd NAND2X1
X_2503_ _1619_ _1516_ _1625_ _1626_ vdd gnd OAI21X1
X_3708_ ibus_pending_ack_bF$buf4 _674__bF$buf0 _638_ vdd gnd NAND2X1
X_3881_ _1335_ _gen_int_sys_clk.clk_sys_r_bF$buf40_ _u_rf_if.read_buf0_[13] vdd gnd DFFPOSX1
X_3461_ mem_dbus_ack_bF$buf5 _u_cpu.bufreg2.dlo_[21] _497_ _498_ vdd gnd OAI21X1
X_3041_ _u_rf_if.last_req_key_[2] _1488_ _190_ vdd gnd NAND2X1
XFILL_0__3501_ gnd vdd FILL
X_2732_ _u_rf_if.read_buf1_[9] _1783__bF$buf5 _1812_ vdd gnd NAND2X1
X_2312_ _648_ _611_ vdd gnd INVX1
XFILL_0__3098_ gnd vdd FILL
X_3937_ _1363_ _gen_int_sys_clk.clk_sys_r_bF$buf43_ _u_rf_if.read_buf1_[15] vdd gnd DFFPOSX1
X_3517_ _537_ _539_ _450__bF$buf4 _1166_ vdd gnd MUX2X1
X_3690_ _253_ _623_ _624_ _625_ vdd gnd NAND3X1
X_3270_ _682_ _350_ _659__bF$buf3 _358_ vdd gnd NAND3X1
X_4055_ _1429_ i_clk_fast_bF$buf7 _u_mem_serial.shift_reg_[26] vdd gnd DFFPOSX1
XFILL_0__3310_ gnd vdd FILL
X_2961_ _1680_ _127_ _128_ _1311_ vdd gnd AOI21X1
X_2541_ _1662_ _1411_ vdd gnd INVX1
X_2121_ _1002__bF$buf1 _818_ _817_ vdd gnd NOR2X1
X_3746_ i_rst_n_bF$buf10 vdd _1106_ _gen_int_sys_clk.clk_sys_r_bF$buf39_ ibus_pending_rdt[15] vdd 
+ gnd
+ DFFSR
X_3326_ _u_cpu.bufreg.data_[24] _401_ vdd gnd INVX1
XFILL_0__2598_ gnd vdd FILL
X_2770_ _1840_ i_rst_n_bF$buf7 _1360_ vdd gnd AND2X2
X_2350_ _u_rf_if.last_req_key_[6] _1478_ vdd gnd INVX1
XFILL_0__1869_ gnd vdd FILL
X_3975_ _1382_ _gen_int_sys_clk.clk_sys_r_bF$buf28_ _u_rf_if.stream_cnt_[0] vdd gnd DFFPOSX1
X_3555_ _u_cpu.ctrl.o_ibus_adr_[27] _569_ vdd gnd INVX1
X_3135_ ibus_pending_rdt[12] _255_ vdd gnd INVX1
XFILL_0__2810_ gnd vdd FILL
X_4093_ _1448_ i_clk_fast_bF$buf8 _u_mem_serial.shift_reg_[7] vdd gnd DFFPOSX1
X_2826_ _u_rf_if.read_buf0_[3] _u_rf_if.read_buf0_[4] _u_rf_if.stream_active_bF$buf7_ _29_ vdd gnd MUX2X1
X_2406_ _1522_ _1528_ _u_cpu.ctrl.pc_ _1529_ vdd gnd OAI21X1
XFILL129150x36150 gnd vdd FILL
X_3784_ i_rst_n_bF$buf0 vdd _1121_ _gen_int_sys_clk.clk_sys_r_bF$buf12_ ibus_pending_rdt[30] vdd 
+ gnd
+ DFFSR
XFILL129150x118950 gnd vdd FILL
X_3364_ _u_cpu.bufreg.data_[5] _420_ vdd gnd INVX1
X_2635_ _u_rf_if.read_buf0_[31] _1738_ _1740_ _1741_ vdd gnd OAI21X1
X_2215_ _u_rf_if.rtrig1_ _733_ vdd gnd INVX1
XFILL128850x18150 gnd vdd FILL
X_3593_ _588_ _212__bF$buf1 _587_ _570__bF$buf0 _1139_ vdd 
+ gnd
+ OAI22X1
X_3173_ ibus_pending_rdt[14] _283_ vdd gnd INVX1
X_1906_ _u_mem_serial.state_[1] _1024_ _1005_ _1004_ vdd gnd OAI21X1
XFILL_0__3633_ gnd vdd FILL
XFILL_0__3213_ gnd vdd FILL
X_2864_ _22__bF$buf1 _56_ _57_ _58_ vdd gnd OAI21X1
X_2444_ _u_cpu.bufreg2.i_op_b_sel_ _1545_ _1563_ _1567_ vdd gnd OAI21X1
X_2024_ _u_mem_serial.shift_reg_[15] _u_cpu.bufreg2.dlo_[10] _994__bF$buf4 _902_ vdd gnd MUX2X1
X_3649_ _280_ _974_ _602__bF$buf3 _1097_ vdd gnd MUX2X1
X_3229_ _315_ _324_ _325_ _1240_ vdd gnd AOI21X1
XFILL_0__3022_ gnd vdd FILL
X_2673_ _1670_ _1767_ _1768_ vdd gnd NAND2X1
X_2253_ _702_ _696_ _695_ vdd gnd NAND2X1
X_3878_ vdd i_rst_n_bF$buf0 _1092_ _gen_int_sys_clk.clk_sys_r_bF$buf33_ ibus_pending_rdt[1] vdd 
+ gnd
+ DFFSR
X_3458_ _493_ _495_ _450__bF$buf2 _1181_ vdd gnd MUX2X1
X_3038_ _u_rf_if.last_req_key_[1] _1488_ _188_ vdd gnd NAND2X1
XFILL_0__2713_ gnd vdd FILL
X_1944_ _u_mem_serial.shift_reg_[5] _u_cpu.bufreg2.dlo_[0] _994__bF$buf3 _972_ vdd gnd MUX2X1
XFILL_0__3671_ gnd vdd FILL
X_2729_ _1783__bF$buf5 _1808_ _1809_ _1810_ vdd gnd OAI21X1
X_2309_ _640_ _671_ _634_ vdd gnd NAND2X1
X_2482_ _1604_ _1601_ _1605_ vdd gnd AND2X2
X_2062_ _869_ i_rst_n_bF$buf6 _1435_ vdd gnd AND2X2
X_3687_ _271_ _622_ vdd gnd INVX1
X_3267_ _351_ _682_ _355_ _1232_ vdd gnd AOI21X1
XFILL_0__2522_ gnd vdd FILL
XFILL_0__2102_ gnd vdd FILL
XFILL_0__3060_ gnd vdd FILL
X_2958_ _1681_ _126_ _1070__bF$buf0 _1312_ vdd gnd AOI21X1
X_2538_ _1659_ _1658_ _1660_ vdd gnd AND2X2
X_2118_ _820_ i_rst_n_bF$buf6 _1428_ vdd gnd AND2X2
X_2291_ _659__bF$buf4 _672_ _658_ _657_ vdd gnd AOI21X1
X_3496_ mem_dbus_ack_bF$buf6 _u_cpu.bufreg2.dlo_[12] _523_ _524_ vdd gnd OAI21X1
X_3076_ _1558_ _u_cpu.ctrl.i_jump_ _213_ vdd gnd AND2X2
XFILL_0__3536_ gnd vdd FILL
X_1982_ _939_ i_rst_n_bF$buf2 _1445_ vdd gnd AND2X2
X_2767_ _u_rf_if.read_buf1_[19] _u_rf_if.read_buf1_[20] _u_rf_if.stream_active_bF$buf4_ _1838_ vdd gnd MUX2X1
X_2347_ _1463_ _1474_ _1468_ _1475_ vdd gnd NAND3X1
XFILL_0__2980_ gnd vdd FILL
XFILL_0__2560_ gnd vdd FILL
X_2996_ _155_ _910_ ibus_pending_ack_bF$buf5 _156_ vdd gnd MUX2X1
X_2576_ _673__bF$buf3 _674__bF$buf3 _u_rf_if.rreg0_latched_[4] _1691_ vdd gnd OAI21X1
X_2156_ _787_ _1060_ _786_ vdd gnd NOR2X1
XFILL_0__3574_ gnd vdd FILL
X_2385_ _u_rf_if.rcnt_[2] _1508_ vdd gnd INVX1
XFILL128850x108150 gnd vdd FILL
XFILL_0__2845_ gnd vdd FILL
XFILL_0__2425_ gnd vdd FILL
XFILL_0__3383_ gnd vdd FILL
X_3802_ i_rst_n_bF$buf11 _1070_ vdd gnd INVX8
X_2194_ _u_mem_serial.shift_reg_[36] _1009_ _752_ vdd gnd NAND2X1
X_3399_ _u_cpu.bufreg2.i_bytecnt_[1] _u_cpu.state.i_ctrl_misalign_ _445_ vdd gnd NOR2X1
XFILL_0__3439_ gnd vdd FILL
X_1885_ _u_mem_serial.bit_count_[5] _1025_ vdd gnd INVX1
XFILL_0__1925_ gnd vdd FILL
X_3611_ _596_ _212__bF$buf2 _211_ _570__bF$buf2 _1129_ vdd 
+ gnd
+ OAI22X1
XFILL_0__2883_ gnd vdd FILL
XFILL_0__2463_ gnd vdd FILL
XFILL_0__3248_ gnd vdd FILL
X_2899_ _u_rf_if.read_buf0_[20] _22__bF$buf2 _84_ vdd gnd NAND2X1
X_2479_ _u_cpu.mem_if.signbit_ _1602_ vdd gnd INVX1
X_2059_ _1023__bF$buf2 _872_ _871_ vdd gnd NOR2X1
X_3840_ _1315_ _gen_int_sys_clk.clk_sys_r_bF$buf1_ raddr[0] vdd gnd DFFPOSX1
X_3420_ _462_ _463_ _464_ vdd gnd NOR2X1
X_3000_ ibus_pending_rdt[16] _159_ vdd gnd INVX1
XFILL_0__2272_ gnd vdd FILL
X_2288_ _673__bF$buf2 _660_ vdd gnd INVX1
XFILL_0__2748_ gnd vdd FILL
XFILL_0__2328_ gnd vdd FILL
X_4014_ _1406_ _gen_int_sys_clk.clk_sys_r_bF$buf3_ _u_rf_if.issue_idx_[5] vdd gnd DFFPOSX1
X_1979_ _1023__bF$buf2 _942_ _941_ vdd gnd NOR2X1
X_2920_ _22__bF$buf0 _98_ _99_ _100_ vdd gnd OAI21X1
X_2500_ _1622_ _1618_ _1623_ vdd gnd NOR2X1
XFILL_0__3286_ gnd vdd FILL
X_3705_ _636_ _1701_ rf_write_drain_busy _637_ vdd gnd OAI21X1
X_2097_ _1002__bF$buf1 _839_ _838_ vdd gnd NOR2X1
XFILL_0__2137_ gnd vdd FILL
X_3934_ _1166_ _gen_int_sys_clk.clk_sys_r_bF$buf26_ _u_cpu.bufreg2.dlo_[6] vdd gnd DFFPOSX1
X_3514_ _u_cpu.bufreg2.dlo_[6] _537_ vdd gnd INVX1
XFILL_0__2786_ gnd vdd FILL
X_4052_ _1428_ i_clk_fast_bF$buf7 _u_mem_serial.shift_reg_[27] vdd gnd DFFPOSX1
X_3743_ _1264_ _gen_int_sys_clk.clk_sys_r_bF$buf38_ _u_cpu.decode.co_mem_word_ vdd gnd DFFPOSX1
X_3323_ _398_ _399_ _1536__bF$buf4 _1220_ vdd gnd MUX2X1
XFILL_0__2595_ gnd vdd FILL
XFILL_0__2175_ gnd vdd FILL
X_3972_ _1185_ _gen_int_sys_clk.clk_sys_r_bF$buf0_ _u_cpu.bufreg.i_shamt_[2] vdd gnd DFFPOSX1
X_3552_ mem_dbus_ack_bF$buf1 _u_mem_serial.shift_reg_[31] _452_ _567_ vdd gnd AOI21X1
X_3132_ _u_mem_serial.shift_reg_[13] ibus_pending_ack_bF$buf3 _252_ _253_ vdd gnd OAI21X1
X_4090_ _1238_ _gen_int_sys_clk.clk_sys_r_bF$buf6_ _u_cpu.immdec.gen_immdec_w_eq_1.imm30_25_[1] vdd gnd DFFPOSX1
X_2823_ _u_rf_if.read_buf0_[1] _22__bF$buf5 _27_ vdd gnd NAND2X1
X_2403_ _u_cpu.branch_op_ _u_cpu.bufreg2.i_op_b_sel_ _1526_ vdd gnd NOR2X1
X_3608_ _u_cpu.ctrl.o_ibus_adr_[28] _595_ vdd gnd INVX1
X_3781_ _1287_ i_clk_fast_bF$buf5 _u_rf_if.last_req_key_[7] vdd gnd DFFPOSX1
X_3361_ _417_ _418_ _1536__bF$buf1 _1201_ vdd gnd MUX2X1
XFILL_0__3401_ gnd vdd FILL
XFILL129150x57750 gnd vdd FILL
X_2632_ _1726_ _1738_ vdd gnd INVX2
X_2212_ _u_rf_if.tx_state_[4] _737_ _736_ vdd gnd NOR2X1
X_3837_ _1082_ i_clk_fast_bF$buf3 _gen_int_sys_clk.clk_div_[2] vdd gnd DFFPOSX1
X_3417_ mem_dbus_ack_bF$buf3 _819_ _461_ vdd gnd NAND2X1
X_3590_ _u_cpu.ctrl.o_ibus_adr_[9] _587_ vdd gnd INVX1
X_3170_ ibus_pending_ack_bF$buf2 _280_ _281_ vdd gnd NAND2X1
X_1903_ _1070__bF$buf6 _1069_ _1007_ vdd gnd NOR2X1
XFILL128850x39750 gnd vdd FILL
X_2861_ _55_ i_rst_n_bF$buf8 _1338_ vdd gnd AND2X2
X_2441_ _1544_ _1542_ _787_ _1564_ vdd gnd OAI21X1
X_2021_ _910_ _973__bF$buf6 _905_ _904_ vdd gnd OAI21X1
X_3646_ _356_ _952_ _602__bF$buf1 _1100_ vdd gnd MUX2X1
X_3226_ _322_ _819_ ibus_pending_ack_bF$buf4 _323_ vdd gnd MUX2X1
XFILL_0__2901_ gnd vdd FILL
XFILL_0__2498_ gnd vdd FILL
X_2917_ _97_ i_rst_n_bF$buf4 _1324_ vdd gnd AND2X2
X_2670_ _1765_ _u_rf_if.stream_active_bF$buf3_ _1766_ _1386_ vdd gnd AOI21X1
X_2250_ _699_ _698_ vdd gnd INVX1
X_3875_ _1332_ _gen_int_sys_clk.clk_sys_r_bF$buf40_ _u_rf_if.read_buf0_[16] vdd gnd DFFPOSX1
X_3455_ _u_cpu.bufreg2.dlo_[21] _493_ vdd gnd INVX1
X_3035_ _184_ _185_ _1070__bF$buf4 _1294_ vdd gnd AOI21X1
XFILL_0__2710_ gnd vdd FILL
X_1941_ _1070__bF$buf1 _975_ _1450_ vdd gnd NOR2X1
X_2726_ _1807_ i_rst_n_bF$buf7 _1371_ vdd gnd AND2X2
X_2306_ _735_ _643_ _642_ vdd gnd NOR2X1
XFILL_0__1998_ gnd vdd FILL
X_3684_ _618_ _614_ _620_ vdd gnd NOR2X1
X_3264_ _352_ _945_ ibus_pending_ack_bF$buf4 _353_ vdd gnd MUX2X1
X_4049_ _1218_ _gen_int_sys_clk.clk_sys_r_bF$buf42_ _u_cpu.bufreg.data_[24] vdd gnd DFFPOSX1
XFILL_0__3304_ gnd vdd FILL
X_2955_ _u_rf_if.issue_chunk_[2] _1680_ _125_ vdd gnd NAND2X1
X_2535_ _1648_ _1657_ _1497_ _1856_ vdd gnd AOI21X1
X_2115_ _1023__bF$buf1 _823_ _822_ vdd gnd NOR2X1
X_3493_ _519_ _521_ _450__bF$buf2 _1172_ vdd gnd MUX2X1
X_3073_ _1070__bF$buf2 _210_ _207_ _1281_ vdd gnd NOR3X1
XFILL_0__3113_ gnd vdd FILL
X_2764_ _u_rf_if.read_buf1_[17] _1783__bF$buf0 _1836_ vdd gnd NAND2X1
X_2344_ _1471_ _u_rf_if.last_req_key_[10] _1472_ vdd gnd OR2X2
XFILL129150x104550 gnd vdd FILL
X_3969_ _1379_ _gen_int_sys_clk.clk_sys_r_bF$buf28_ _u_rf_if.stream_cnt_[3] vdd gnd DFFPOSX1
X_3549_ _562_ _564_ _450__bF$buf0 _1159_ vdd gnd MUX2X1
X_3129_ _249_ _248_ _250_ _1265_ vdd gnd AOI21X1
X_4087_ _1445_ i_clk_fast_bF$buf0 _u_mem_serial.shift_reg_[10] vdd gnd DFFPOSX1
XCLKBUF1_insert180 _gen_int_sys_clk.clk_sys_r_ _gen_int_sys_clk.clk_sys_r_hier0_bF$buf5_ vdd gnd CLKBUF1
XCLKBUF1_insert181 _gen_int_sys_clk.clk_sys_r_ _gen_int_sys_clk.clk_sys_r_hier0_bF$buf4_ vdd gnd CLKBUF1
XCLKBUF1_insert182 _gen_int_sys_clk.clk_sys_r_ _gen_int_sys_clk.clk_sys_r_hier0_bF$buf3_ vdd gnd CLKBUF1
XCLKBUF1_insert183 _gen_int_sys_clk.clk_sys_r_ _gen_int_sys_clk.clk_sys_r_hier0_bF$buf2_ vdd gnd CLKBUF1
XCLKBUF1_insert184 _gen_int_sys_clk.clk_sys_r_ _gen_int_sys_clk.clk_sys_r_hier0_bF$buf1_ vdd gnd CLKBUF1
XCLKBUF1_insert185 _gen_int_sys_clk.clk_sys_r_ _gen_int_sys_clk.clk_sys_r_hier0_bF$buf0_ vdd gnd CLKBUF1
X_2993_ _153_ _150_ _1070__bF$buf5 _1304_ vdd gnd AOI21X1
X_2573_ _1688_ _1689_ vdd gnd INVX1
X_2153_ _790_ _u_cpu.bufreg.i_shamt_[2] _1002__bF$buf3 _789_ vdd gnd AOI21X1
X_3778_ i_rst_n_bF$buf3 vdd _1118_ _gen_int_sys_clk.clk_sys_r_bF$buf6_ ibus_pending_rdt[27] vdd 
+ gnd
+ DFFSR
X_3358_ _u_cpu.bufreg.data_[8] _417_ vdd gnd INVX1
XFILL_0__2613_ gnd vdd FILL
XCLKBUF1_insert50 i_clk_fast i_clk_fast_bF$buf5 vdd gnd CLKBUF1
XCLKBUF1_insert51 i_clk_fast i_clk_fast_bF$buf4 vdd gnd CLKBUF1
XCLKBUF1_insert52 i_clk_fast i_clk_fast_bF$buf3 vdd gnd CLKBUF1
XCLKBUF1_insert53 i_clk_fast i_clk_fast_bF$buf2 vdd gnd CLKBUF1
XCLKBUF1_insert54 i_clk_fast i_clk_fast_bF$buf1 vdd gnd CLKBUF1
XCLKBUF1_insert55 i_clk_fast i_clk_fast_bF$buf0 vdd gnd CLKBUF1
XFILL_0__3571_ gnd vdd FILL
XFILL_0__3151_ gnd vdd FILL
X_2629_ _1731_ _1735_ _1736_ vdd gnd NOR2X1
X_2209_ _740_ _739_ vdd gnd INVX2
X_2382_ _u_cpu.bufreg2.i_op_b_sel_ _u_cpu.bufreg.i_sh_signed_ _1504_ _1505_ vdd gnd AOI21X1
X_3587_ _585_ _212__bF$buf4 _584_ _570__bF$buf3 _1142_ vdd 
+ gnd
+ OAI22X1
X_3167_ _u_mem_serial.active_ibus_ _1047_ _278_ _279_ vdd gnd NAND3X1
XFILL_0__2002_ gnd vdd FILL
XFILL_0__3627_ gnd vdd FILL
X_2858_ _u_rf_if.read_buf0_[11] _u_rf_if.read_buf0_[12] _u_rf_if.stream_active_bF$buf2_ _53_ vdd gnd MUX2X1
X_2438_ _1559_ _1560_ _1561_ vdd gnd NOR2X1
X_2018_ _u_cpu.bufreg.data_[15] _u_cpu.ctrl.o_ibus_adr_[15] _1006__bF$buf4 _907_ vdd gnd MUX2X1
X_2191_ _u_mem_serial.shift_reg_[35] _u_cpu.bufreg2.dhi_[6] _994__bF$buf3 _755_ vdd gnd MUX2X1
X_3396_ _704_ _442_ _440_ _443_ vdd gnd AOI21X1
XFILL_0__2651_ gnd vdd FILL
XFILL_0__3436_ gnd vdd FILL
XFILL_0__3016_ gnd vdd FILL
X_1882_ _u_mem_serial.bit_count_[5] _1030_ _1050_ _1027_ vdd gnd OAI21X1
X_2667_ _1658_ _1763_ _1764_ _1387_ vdd gnd AOI21X1
X_2247_ _702_ _701_ vdd gnd INVX1
XFILL_0__1922_ gnd vdd FILL
XFILL_0__2460_ gnd vdd FILL
XFILL_0__2040_ gnd vdd FILL
X_1938_ _u_mem_serial.shift_reg_[4] _1023__bF$buf4 _994__bF$buf2 _977_ vdd gnd NAND3X1
X_2896_ _22__bF$buf3 _80_ _81_ _82_ vdd gnd OAI21X1
X_2476_ _u_cpu.bufreg.data_[0] _u_cpu.state.i_ctrl_misalign_ _1599_ vdd gnd NAND2X1
X_2056_ _u_mem_serial.shift_reg_[19] _u_cpu.bufreg2.dlo_[14] _994__bF$buf4 _874_ vdd gnd MUX2X1
XFILL128550x115350 gnd vdd FILL
XFILL_0__2936_ gnd vdd FILL
XFILL_0__2516_ gnd vdd FILL
XFILL_0__3474_ gnd vdd FILL
X_2285_ _666_ _710_ _664_ _663_ vdd gnd AOI21X1
XFILL_0__1960_ gnd vdd FILL
XFILL_0__2325_ gnd vdd FILL
X_4011_ _1404_ _gen_int_sys_clk.clk_sys_r_bF$buf2_ _u_rf_if.rreg0_latched_[4] vdd gnd DFFPOSX1
X_1976_ _u_mem_serial.shift_reg_[9] _u_cpu.bufreg2.dlo_[4] _994__bF$buf0 _944_ vdd gnd MUX2X1
X_3702_ _u_mem_serial.state_[1] _u_mem_serial.state_[0] _1058_ vdd gnd NOR2X1
X_2094_ _841_ i_rst_n_bF$buf6 _1431_ vdd gnd AND2X2
X_3299_ _u_cpu.decode.opcode_[2] _u_cpu.decode.opcode_[1] _380_ _381_ vdd gnd OAI21X1
XFILL_0__2974_ gnd vdd FILL
XFILL_0__3339_ gnd vdd FILL
X_3931_ _1360_ _gen_int_sys_clk.clk_sys_r_bF$buf28_ _u_rf_if.read_buf1_[18] vdd gnd DFFPOSX1
X_3511_ mem_dbus_ack_bF$buf2 _966_ _535_ vdd gnd NAND2X1
XFILL_0__2783_ gnd vdd FILL
XFILL_0__2363_ gnd vdd FILL
X_2799_ _u_rf_if.read_buf1_[27] _u_rf_if.read_buf1_[28] _u_rf_if.stream_active_bF$buf7_ _8_ vdd gnd MUX2X1
X_2379_ _u_cpu.decode.co_mem_word_ _1501_ _1502_ vdd gnd NOR2X1
X_3740_ _1261_ _gen_int_sys_clk.clk_sys_r_bF$buf38_ _u_cpu.decode.opcode_[2] vdd gnd DFFPOSX1
X_3320_ _u_cpu.bufreg.data_[27] _398_ vdd gnd INVX1
XFILL_0__2839_ gnd vdd FILL
XFILL_0__3377_ gnd vdd FILL
X_2188_ _1002__bF$buf2 _758_ _760_ _757_ vdd gnd OAI21X1
XFILL_0__1863_ gnd vdd FILL
XFILL_0__2648_ gnd vdd FILL
XFILL_0__2228_ gnd vdd FILL
X_1879_ _1030_ _1029_ vdd gnd INVX1
X_2820_ _22__bF$buf5 _23_ _24_ _25_ vdd gnd OAI21X1
X_2400_ _u_cpu.decode.co_ebreak_ _1523_ vdd gnd INVX1
XFILL_0__3186_ gnd vdd FILL
X_3605_ _594_ _212__bF$buf2 _593_ _570__bF$buf2 _1133_ vdd 
+ gnd
+ OAI22X1
X_3834_ _1312_ _gen_int_sys_clk.clk_sys_r_bF$buf24_ raddr[3] vdd gnd DFFPOSX1
X_3414_ _663_ _458_ _459_ vdd gnd OR2X2
X_1900_ _1016_ _1011_ _1010_ vdd gnd NAND2X1
XFILL_0__2686_ gnd vdd FILL
XFILL_0__2266_ gnd vdd FILL
XFILL128850x93750 gnd vdd FILL
X_3643_ _255_ _931_ _602__bF$buf2 _1103_ vdd gnd MUX2X1
X_3223_ _u_cpu.immdec.gen_immdec_w_eq_1.imm30_25_[4] _315_ _321_ vdd gnd NOR2X1
X_4008_ _1200_ _gen_int_sys_clk.clk_sys_r_bF$buf7_ _u_cpu.bufreg.data_[6] vdd gnd DFFPOSX1
XFILL_0__2075_ gnd vdd FILL
X_2914_ _u_rf_if.read_buf0_[25] _u_rf_if.read_buf0_[26] _u_rf_if.stream_active_bF$buf6_ _95_ vdd gnd MUX2X1
X_3872_ _1146_ _gen_int_sys_clk.clk_sys_r_bF$buf27_ _u_cpu.ctrl.o_ibus_adr_[15] vdd gnd DFFPOSX1
X_3452_ mem_dbus_ack_bF$buf5 _861_ _491_ vdd gnd NAND2X1
X_3032_ _1678_ _1682_ _183_ _1295_ vdd gnd AOI21X1
X_2723_ _u_rf_if.read_buf1_[8] _u_rf_if.read_buf1_[9] _u_rf_if.stream_active_bF$buf0_ _1805_ vdd gnd MUX2X1
X_2303_ _659__bF$buf4 _672_ _646_ _645_ vdd gnd AOI21X1
XFILL_0__3089_ gnd vdd FILL
X_3928_ _1163_ _gen_int_sys_clk.clk_sys_r_bF$buf19_ _u_cpu.bufreg2.dlo_[3] vdd gnd DFFPOSX1
X_3508_ mem_dbus_ack_bF$buf2 _u_cpu.bufreg2.dlo_[9] _532_ _533_ vdd gnd OAI21X1
X_3681_ _gen_int_sys_clk.clk_div_[0] _1080_ vdd gnd INVX1
X_3261_ _349_ _350_ vdd gnd INVX1
X_4046_ _1425_ i_clk_fast_bF$buf0 _u_mem_serial.shift_reg_[30] vdd gnd DFFPOSX1
XFILL_0__3301_ gnd vdd FILL
X_2952_ raddr[1] _1680_ i_rst_n_bF$buf9 _123_ vdd gnd OAI21X1
X_2532_ _1654_ _1652_ _1631_ _1655_ vdd gnd OAI21X1
X_2112_ _u_mem_serial.shift_reg_[26] _u_cpu.bufreg2.dlo_[21] _994__bF$buf1 _825_ vdd gnd MUX2X1
X_3737_ _gen_int_sys_clk.clk_sys_r_bF$buf20_ i_clk_fast_bF$buf2 _u_mem_serial.clk_sys_prev_ vdd gnd DFFPOSX1
X_3317_ _u_cpu.bufreg.data_[28] _396_ vdd gnd INVX1
X_3490_ _u_cpu.bufreg2.dlo_[12] _519_ vdd gnd INVX1
X_3070_ _209_ _736_ _1283_ vdd gnd NOR2X1
XFILL_0__2589_ gnd vdd FILL
X_2761_ _1783__bF$buf2 _1832_ _1833_ _1834_ vdd gnd OAI21X1
X_2341_ _u_rf_if.last_req_key_[0] _1469_ vdd gnd INVX1
X_3966_ _1182_ _gen_int_sys_clk.clk_sys_r_bF$buf13_ _u_cpu.bufreg2.dlo_[22] vdd gnd DFFPOSX1
X_3546_ _u_cpu.bufreg2.dlo_[23] _562_ vdd gnd INVX1
X_3126_ _u_mem_serial.req_pending_ _248_ vdd gnd INVX1
XFILL_0__2801_ gnd vdd FILL
XFILL_0__2398_ gnd vdd FILL
X_4084_ _1235_ _gen_int_sys_clk.clk_sys_r_bF$buf2_ rreg1[2] vdd gnd DFFPOSX1
X_2817_ _u_rf_if.stream_active_bF$buf5_ _1738_ _22_ vdd gnd NOR2X1
XCLKBUF1_insert150 _gen_int_sys_clk.clk_sys_r_hier0_bF$buf1_ _gen_int_sys_clk.clk_sys_r_bF$buf8_ vdd gnd CLKBUF1
XCLKBUF1_insert151 _gen_int_sys_clk.clk_sys_r_hier0_bF$buf2_ _gen_int_sys_clk.clk_sys_r_bF$buf7_ vdd gnd CLKBUF1
XCLKBUF1_insert152 _gen_int_sys_clk.clk_sys_r_hier0_bF$buf1_ _gen_int_sys_clk.clk_sys_r_bF$buf6_ vdd gnd CLKBUF1
XCLKBUF1_insert153 _gen_int_sys_clk.clk_sys_r_hier0_bF$buf4_ _gen_int_sys_clk.clk_sys_r_bF$buf5_ vdd gnd CLKBUF1
XCLKBUF1_insert154 _gen_int_sys_clk.clk_sys_r_hier0_bF$buf5_ _gen_int_sys_clk.clk_sys_r_bF$buf4_ vdd gnd CLKBUF1
XCLKBUF1_insert155 _gen_int_sys_clk.clk_sys_r_hier0_bF$buf3_ _gen_int_sys_clk.clk_sys_r_bF$buf3_ vdd gnd CLKBUF1
XCLKBUF1_insert156 _gen_int_sys_clk.clk_sys_r_hier0_bF$buf5_ _gen_int_sys_clk.clk_sys_r_bF$buf2_ vdd gnd CLKBUF1
XCLKBUF1_insert157 _gen_int_sys_clk.clk_sys_r_hier0_bF$buf3_ _gen_int_sys_clk.clk_sys_r_bF$buf1_ vdd gnd CLKBUF1
XCLKBUF1_insert158 _gen_int_sys_clk.clk_sys_r_hier0_bF$buf1_ _gen_int_sys_clk.clk_sys_r_bF$buf0_ vdd gnd CLKBUF1
X_2990_ ibus_pending_rdt[23] _151_ vdd gnd INVX1
X_2570_ _1686_ _1685_ i_rst_n_bF$buf9 _1687_ vdd gnd OAI21X1
X_2150_ _792_ i_rst_n_bF$buf2 _1424_ vdd gnd AND2X2
X_3775_ _1284_ i_clk_fast_bF$buf3 _u_rf_if.tx_state_[0] vdd gnd DFFPOSX1
X_3355_ _414_ _415_ _1536__bF$buf2 _1204_ vdd gnd MUX2X1
XFILL128850x25350 gnd vdd FILL
X_2626_ _u_rf_if.wen0_r_ _1702_ _1733_ vdd gnd NAND2X1
X_2206_ _1024_ _744_ _742_ _1418_ vdd gnd AOI21X1
XFILL_0__1898_ gnd vdd FILL
X_3584_ _u_cpu.ctrl.o_ibus_adr_[12] _584_ vdd gnd INVX1
X_3164_ mem_ibus_ack _276_ vdd gnd INVX1
XFILL_0__3624_ gnd vdd FILL
XFILL_0__3204_ gnd vdd FILL
X_2855_ _u_rf_if.read_buf0_[9] _22__bF$buf2 _51_ vdd gnd NAND2X1
X_2435_ _1555_ _1557_ _1551_ _1558_ vdd gnd NAND3X1
X_2015_ _u_mem_serial.shift_reg_[15] _910_ vdd gnd INVX1
X_3393_ _441_ _780_ _426_ _1192_ vdd gnd MUX2X1
X_2664_ _1762_ _1388_ vdd gnd INVX1
X_2244_ _726_ _721_ _704_ vdd gnd NAND2X1
X_3869_ _1329_ _gen_int_sys_clk.clk_sys_r_bF$buf9_ _u_rf_if.read_buf0_[19] vdd gnd DFFPOSX1
X_3449_ _488_ _u_mem_serial.shift_reg_[24] _697_ _489_ vdd gnd MUX2X1
X_3029_ _u_rf_if.issue_chunk_[2] _178_ _174_ _182_ vdd gnd OAI21X1
XFILL_0__2704_ gnd vdd FILL
X_1935_ _u_mem_serial.shift_reg_[4] _980_ _1009_ _979_ vdd gnd MUX2X1
XFILL_0__3662_ gnd vdd FILL
XFILL_0__3242_ gnd vdd FILL
X_2893_ _79_ i_rst_n_bF$buf4 _1330_ vdd gnd AND2X2
X_2473_ _u_cpu.bufreg2.dlo_[0] _1596_ vdd gnd INVX1
X_2053_ _882_ _973__bF$buf2 _877_ _876_ vdd gnd OAI21X1
X_3678_ _616_ _615_ _1082_ vdd gnd NOR2X1
X_3258_ _1540_ _342_ _141_ _347_ _1233_ vdd 
+ gnd
+ AOI22X1
XFILL_0__2513_ gnd vdd FILL
XFILL_0__3051_ gnd vdd FILL
X_2949_ _u_rf_if.issue_chunk_[0] _1680_ _121_ vdd gnd NAND2X1
X_2529_ _735_ _739_ _1649_ _1651_ _1652_ vdd 
+ gnd
+ OAI22X1
X_2109_ _833_ _973__bF$buf3 _828_ _827_ vdd gnd OAI21X1
X_2282_ _717_ _727_ _666_ vdd gnd AND2X2
X_3487_ mem_dbus_ack_bF$buf5 _924_ _517_ vdd gnd NAND2X1
X_3067_ i_rst_n_bF$buf10 _1618_ _208_ vdd gnd NAND2X1
XFILL_0__3527_ gnd vdd FILL
XFILL_0__3107_ gnd vdd FILL
X_1973_ _952_ _973__bF$buf2 _947_ _946_ vdd gnd OAI21X1
X_2758_ _1831_ i_rst_n_bF$buf7 _1363_ vdd gnd AND2X2
X_2338_ _1465_ _u_rf_if.last_req_key_[2] _1466_ vdd gnd AND2X2
X_2091_ _1023__bF$buf2 _844_ _843_ vdd gnd NOR2X1
X_3296_ _1065_ _373_ _378_ _1226_ vdd gnd OAI21X1
XFILL_0__2551_ gnd vdd FILL
XFILL_0__2131_ gnd vdd FILL
X_2987_ _148_ _1692__bF$buf3 _149_ vdd gnd NAND2X1
X_2567_ _u_rf_if.write_wait_[1] _u_rf_if.write_wait_[0] _1684_ vdd gnd NOR2X1
X_2147_ _1023__bF$buf0 _795_ _794_ vdd gnd NOR2X1
XFILL128850x115350 gnd vdd FILL
XFILL_0__3565_ gnd vdd FILL
X_2796_ _u_rf_if.read_buf1_[25] _1783__bF$buf4 _6_ vdd gnd NAND2X1
X_2376_ current_wdata0_next_hint _1499_ vdd gnd INVX1
XFILL_0__2416_ gnd vdd FILL
XFILL_0__3374_ gnd vdd FILL
X_2185_ _761_ _778_ _760_ vdd gnd NAND2X1
X_1876_ _u_mem_serial.bit_count_[2] _1037_ _u_mem_serial.bit_count_[3] _1031_ vdd gnd OAI21X1
XFILL_0__1916_ gnd vdd FILL
X_3602_ _u_cpu.ctrl.o_ibus_adr_[3] _593_ vdd gnd INVX1
X_3199_ _301_ _298_ _161_ _302_ _1247_ vdd 
+ gnd
+ AOI22X1
XFILL_0__2874_ gnd vdd FILL
XFILL_0__2454_ gnd vdd FILL
XFILL_0__3239_ gnd vdd FILL
X_3831_ _1136_ _gen_int_sys_clk.clk_sys_r_bF$buf7_ _u_cpu.ctrl.o_ibus_adr_[5] vdd gnd DFFPOSX1
X_3411_ _u_cpu.bufreg2.dhi_[5] _666_ _456_ vdd gnd NOR2X1
XFILL_0__2263_ gnd vdd FILL
X_2699_ _u_rf_if.read_buf1_[2] _u_rf_if.read_buf1_[3] _u_rf_if.stream_active_bF$buf4_ _1787_ vdd gnd MUX2X1
X_2279_ _670_ _671_ _669_ vdd gnd NAND2X1
X_3640_ _155_ _910_ _602__bF$buf0 _1106_ vdd gnd MUX2X1
X_3220_ _u_cpu.immdec.gen_immdec_w_eq_1.imm30_25_[5] _318_ vdd gnd INVX1
XFILL_0__2739_ gnd vdd FILL
XFILL_0__2319_ gnd vdd FILL
X_4005_ _1401_ _gen_int_sys_clk.clk_sys_r_bF$buf41_ _u_rf_if.wdata0_next_phase_ vdd gnd DFFPOSX1
X_2911_ _u_rf_if.read_buf0_[23] _22__bF$buf6 _93_ vdd gnd NAND2X1
XFILL_0__3277_ gnd vdd FILL
XBUFX2_insert0 _450_ _450__bF$buf4 vdd gnd BUFX2
XBUFX2_insert1 _450_ _450__bF$buf3 vdd gnd BUFX2
XBUFX2_insert2 _450_ _450__bF$buf2 vdd gnd BUFX2
XBUFX2_insert3 _450_ _450__bF$buf1 vdd gnd BUFX2
XBUFX2_insert4 _450_ _450__bF$buf0 vdd gnd BUFX2
XBUFX2_insert5 _1536_ _1536__bF$buf4 vdd gnd BUFX2
XBUFX2_insert6 _1536_ _1536__bF$buf3 vdd gnd BUFX2
XBUFX2_insert7 _1536_ _1536__bF$buf2 vdd gnd BUFX2
XBUFX2_insert8 _1536_ _1536__bF$buf1 vdd gnd BUFX2
XBUFX2_insert9 _1536_ _1536__bF$buf0 vdd gnd BUFX2
X_2088_ _u_mem_serial.shift_reg_[23] _u_cpu.bufreg2.dlo_[18] _994__bF$buf1 _846_ vdd gnd MUX2X1
XFILL_0__2128_ gnd vdd FILL
X_2720_ _u_rf_if.read_buf1_[6] _1783__bF$buf6 _1803_ vdd gnd NAND2X1
X_2300_ _735_ _649_ _648_ vdd gnd NOR2X1
X_3925_ _1357_ _gen_int_sys_clk.clk_sys_r_bF$buf29_ _u_rf_if.read_buf1_[21] vdd gnd DFFPOSX1
X_3505_ _528_ _530_ _450__bF$buf4 _1169_ vdd gnd MUX2X1
XFILL_0__2777_ gnd vdd FILL
X_4043_ _1215_ _gen_int_sys_clk.clk_sys_r_bF$buf16_ _u_cpu.bufreg.data_[21] vdd gnd DFFPOSX1
X_3734_ i_rst_n_bF$buf0 vdd _1103_ _gen_int_sys_clk.clk_sys_r_bF$buf30_ ibus_pending_rdt[12] vdd 
+ gnd
+ DFFSR
X_3314_ _u_cpu.immdec.gen_immdec_w_eq_1.imm30_25_[0] _393_ _659__bF$buf1 _394_ vdd gnd MUX2X1
XFILL_0__2586_ gnd vdd FILL
XFILL_0__2166_ gnd vdd FILL
X_3963_ _1376_ _gen_int_sys_clk.clk_sys_r_bF$buf21_ _u_rf_if.read_buf1_[2] vdd gnd DFFPOSX1
X_3543_ mem_dbus_ack_bF$buf1 _559_ _560_ vdd gnd NAND2X1
X_3123_ _1053_ _246_ vdd gnd INVX1
X_4081_ _1442_ i_clk_fast_bF$buf0 _u_mem_serial.shift_reg_[13] vdd gnd DFFPOSX1
X_2814_ _u_rf_if.read_buf1_[29] _1783__bF$buf3 _20_ vdd gnd NAND2X1
XCLKBUF1_insert120 _gen_int_sys_clk.clk_sys_r_hier0_bF$buf5_ _gen_int_sys_clk.clk_sys_r_bF$buf38_ vdd gnd CLKBUF1
XCLKBUF1_insert121 _gen_int_sys_clk.clk_sys_r_hier0_bF$buf3_ _gen_int_sys_clk.clk_sys_r_bF$buf37_ vdd gnd CLKBUF1
XCLKBUF1_insert122 _gen_int_sys_clk.clk_sys_r_hier0_bF$buf5_ _gen_int_sys_clk.clk_sys_r_bF$buf36_ vdd gnd CLKBUF1
XCLKBUF1_insert123 _gen_int_sys_clk.clk_sys_r_hier0_bF$buf2_ _gen_int_sys_clk.clk_sys_r_bF$buf35_ vdd gnd CLKBUF1
XCLKBUF1_insert124 _gen_int_sys_clk.clk_sys_r_hier0_bF$buf2_ _gen_int_sys_clk.clk_sys_r_bF$buf34_ vdd gnd CLKBUF1
XCLKBUF1_insert125 _gen_int_sys_clk.clk_sys_r_hier0_bF$buf2_ _gen_int_sys_clk.clk_sys_r_bF$buf33_ vdd gnd CLKBUF1
XCLKBUF1_insert126 _gen_int_sys_clk.clk_sys_r_hier0_bF$buf5_ _gen_int_sys_clk.clk_sys_r_bF$buf32_ vdd gnd CLKBUF1
XCLKBUF1_insert127 _gen_int_sys_clk.clk_sys_r_hier0_bF$buf3_ _gen_int_sys_clk.clk_sys_r_bF$buf31_ vdd gnd CLKBUF1
XCLKBUF1_insert128 _gen_int_sys_clk.clk_sys_r_hier0_bF$buf1_ _gen_int_sys_clk.clk_sys_r_bF$buf30_ vdd gnd CLKBUF1
XCLKBUF1_insert129 _gen_int_sys_clk.clk_sys_r_hier0_bF$buf4_ _gen_int_sys_clk.clk_sys_r_bF$buf29_ vdd gnd CLKBUF1
XFILL129150x64950 gnd vdd FILL
X_3772_ i_rst_n_bF$buf3 vdd _1115_ _gen_int_sys_clk.clk_sys_r_bF$buf6_ ibus_pending_rdt[24] vdd 
+ gnd
+ DFFSR
X_3352_ _u_cpu.bufreg.data_[11] _414_ vdd gnd INVX1
X_2623_ _1730_ i_rst_n_bF$buf9 _1397_ vdd gnd AND2X2
X_2203_ _u_mem_serial.req_pending_ _1057_ _745_ _744_ vdd gnd OAI21X1
XFILL128850x46950 gnd vdd FILL
X_3828_ _1080_ i_clk_fast_bF$buf3 _gen_int_sys_clk.clk_div_[0] vdd gnd DFFPOSX1
X_3408_ mem_dbus_ack_bF$buf1 _805_ _454_ vdd gnd NAND2X1
X_3581_ _582_ _212__bF$buf3 _581_ _570__bF$buf1 _1145_ vdd 
+ gnd
+ OAI22X1
XFILL129150x7350 gnd vdd FILL
X_3161_ _1855_ _275_ vdd gnd INVX1
XFILL_0_CLKBUF1_insert180 gnd vdd FILL
XFILL_0_CLKBUF1_insert182 gnd vdd FILL
XFILL_0_CLKBUF1_insert184 gnd vdd FILL
X_2852_ _22__bF$buf1 _47_ _48_ _49_ vdd gnd OAI21X1
X_2432_ _u_cpu.state.cnt_r_[0] _1554_ _1555_ vdd gnd NAND2X1
X_2012_ _915_ _913_ _973__bF$buf4 _912_ vdd gnd OAI21X1
X_3637_ _167_ _889_ _602__bF$buf0 _1109_ vdd gnd MUX2X1
X_3217_ _314_ _315_ vdd gnd INVX4
X_3390_ _432_ _437_ _704_ _439_ vdd gnd AOI21X1
XBUFX2_insert170 _973_ _973__bF$buf2 vdd gnd BUFX2
XBUFX2_insert171 _973_ _973__bF$buf1 vdd gnd BUFX2
XBUFX2_insert172 _973_ _973__bF$buf0 vdd gnd BUFX2
XBUFX2_insert173 _22_ _22__bF$buf6 vdd gnd BUFX2
XBUFX2_insert174 _22_ _22__bF$buf5 vdd gnd BUFX2
XBUFX2_insert175 _22_ _22__bF$buf4 vdd gnd BUFX2
XBUFX2_insert176 _22_ _22__bF$buf3 vdd gnd BUFX2
XBUFX2_insert177 _22_ _22__bF$buf2 vdd gnd BUFX2
XBUFX2_insert178 _22_ _22__bF$buf1 vdd gnd BUFX2
XBUFX2_insert179 _22_ _22__bF$buf0 vdd gnd BUFX2
XFILL_0__2489_ gnd vdd FILL
XFILL_0__2069_ gnd vdd FILL
XFILL_0__3430_ gnd vdd FILL
X_2908_ _22__bF$buf2 _89_ _90_ _91_ vdd gnd OAI21X1
X_2661_ _1761_ _1390_ vdd gnd INVX1
X_2241_ _u_cpu.bufreg2.dhi_[6] _708_ _707_ vdd gnd NAND2X1
X_3866_ _u_cpu.state.cnt_r_[2] _u_cpu.state.cnt_r_[3] _1067_ vdd gnd NOR2X1
X_3446_ _u_cpu.bufreg.i_shamt_[0] _452_ _486_ vdd gnd NAND2X1
X_3026_ _177_ _179_ _180_ vdd gnd NAND2X1
X_1932_ _u_cpu.bufreg.data_[4] _u_cpu.ctrl.o_ibus_adr_[4] _1006__bF$buf0 _982_ vdd gnd MUX2X1
X_2717_ _1783__bF$buf2 _1799_ _1800_ _1801_ vdd gnd OAI21X1
X_2890_ _u_rf_if.read_buf0_[19] _u_rf_if.read_buf0_[20] _u_rf_if.stream_active_bF$buf2_ _77_ vdd gnd MUX2X1
X_2470_ _u_cpu.bufreg2.dlo_[16] _1593_ vdd gnd INVX1
X_2050_ _u_cpu.bufreg.data_[19] _u_cpu.ctrl.o_ibus_adr_[19] _1006__bF$buf2 _879_ vdd gnd MUX2X1
XFILL_0__1989_ gnd vdd FILL
X_3675_ _gen_int_sys_clk.clk_div_[2] _613_ _614_ vdd gnd NAND2X1
X_3255_ rreg1[2] _340_ _659__bF$buf4 _346_ vdd gnd OAI21X1
XFILL_0__2930_ gnd vdd FILL
XFILL_0_BUFX2_insert72 gnd vdd FILL
XFILL_0_BUFX2_insert74 gnd vdd FILL
XFILL_0_BUFX2_insert76 gnd vdd FILL
XFILL_0_BUFX2_insert78 gnd vdd FILL
X_2946_ _1731_ _1735_ _1699_ _119_ vdd gnd OAI21X1
X_2526_ _1641_ _1649_ vdd gnd INVX1
X_2106_ _u_cpu.bufreg.data_[26] _u_cpu.ctrl.o_ibus_adr_[26] _1006__bF$buf4 _830_ vdd gnd MUX2X1
X_3484_ mem_dbus_ack_bF$buf4 _u_cpu.bufreg2.dlo_[15] _514_ _515_ vdd gnd OAI21X1
X_3064_ _u_rf_if.last_req_key_[9] _1488_ _206_ vdd gnd NAND2X1
XFILL129150x111750 gnd vdd FILL
XFILL_0__3104_ gnd vdd FILL
X_1970_ _u_cpu.bufreg.data_[9] _u_cpu.ctrl.o_ibus_adr_[9] _1006__bF$buf3 _949_ vdd gnd MUX2X1
X_2755_ _u_rf_if.read_buf1_[16] _u_rf_if.read_buf1_[17] _u_rf_if.stream_active_bF$buf4_ _1829_ vdd gnd MUX2X1
X_2335_ _u_rf_if.last_req_key_[0] _1256_ _1462_ _1463_ vdd gnd AOI21X1
X_3293_ _372_ _298_ _375_ _376_ _1227_ vdd 
+ gnd
+ AOI22X1
X_4078_ _1232_ _gen_int_sys_clk.clk_sys_r_bF$buf36_ _u_cpu.immdec.gen_immdec_w_eq_1.imm11_7_[3] vdd gnd DFFPOSX1
X_2984_ _673__bF$buf3 _674__bF$buf3 _u_rf_if.rreg1_latched_[2] _146_ vdd gnd OAI21X1
X_2564_ _u_rf_if.issue_chunk_[3] _1680_ _1681_ vdd gnd NAND2X1
X_2144_ _u_mem_serial.shift_reg_[30] _u_cpu.bufreg.i_shamt_[1] _994__bF$buf3 _797_ vdd gnd MUX2X1
X_3769_ _1281_ i_clk_fast_bF$buf4 _u_rf_if.tx_state_[3] vdd gnd DFFPOSX1
X_3349_ _411_ _412_ _1536__bF$buf4 _1207_ vdd gnd MUX2X1
XFILL_0__2604_ gnd vdd FILL
XFILL_0__3142_ gnd vdd FILL
XBUFX2_insert80 _1070_ _1070__bF$buf2 vdd gnd BUFX2
XBUFX2_insert81 _1070_ _1070__bF$buf1 vdd gnd BUFX2
XBUFX2_insert82 _1070_ _1070__bF$buf0 vdd gnd BUFX2
XBUFX2_insert83 _1023_ _1023__bF$buf5 vdd gnd BUFX2
XBUFX2_insert84 _1023_ _1023__bF$buf4 vdd gnd BUFX2
XBUFX2_insert85 _1023_ _1023__bF$buf3 vdd gnd BUFX2
XBUFX2_insert86 _1023_ _1023__bF$buf2 vdd gnd BUFX2
XBUFX2_insert87 _1023_ _1023__bF$buf1 vdd gnd BUFX2
XBUFX2_insert88 _1023_ _1023__bF$buf0 vdd gnd BUFX2
XBUFX2_insert89 _674_ _674__bF$buf3 vdd gnd BUFX2
X_2793_ _1783__bF$buf4 _2_ _3_ _4_ vdd gnd OAI21X1
X_2373_ i_clk_fast_bF$buf4 _1497_ _1857_ vdd gnd NOR2X1
X_3998_ _1397_ _gen_int_sys_clk.clk_sys_r_bF$buf31_ _u_rf_if.read_buf0_[30] vdd gnd DFFPOSX1
X_3578_ _u_cpu.ctrl.o_ibus_adr_[15] _581_ vdd gnd INVX1
X_3158_ _751_ _1032_ _273_ vdd gnd NOR2X1
XFILL_0__3618_ gnd vdd FILL
X_2849_ _46_ i_rst_n_bF$buf4 _1341_ vdd gnd AND2X2
X_2429_ _u_cpu.bufreg2.i_bytecnt_[0] _u_cpu.bufreg2.i_bytecnt_[1] _1552_ vdd gnd NOR2X1
X_2009_ _1002__bF$buf3 _916_ _915_ vdd gnd NOR2X1
X_2182_ _770_ _973__bF$buf5 _763_ _762_ vdd gnd OAI21X1
X_3387_ _434_ _u_cpu.bufreg.c_r_ _436_ vdd gnd OR2X2
XFILL_0__2642_ gnd vdd FILL
XFILL_0__3007_ gnd vdd FILL
X_1873_ _u_mem_serial.bit_count_[3] _1034_ vdd gnd INVX1
XFILL_0__3180_ gnd vdd FILL
X_2658_ _u_rf_if.stream_cnt_[4] _1757_ i_rst_n_bF$buf9 _1760_ vdd gnd OAI21X1
X_2238_ _713_ _711_ _710_ vdd gnd NAND2X1
X_3196_ _299_ _298_ _165_ _300_ _1248_ vdd 
+ gnd
+ AOI22X1
XFILL_0__2451_ gnd vdd FILL
XFILL_0__2031_ gnd vdd FILL
X_1929_ _1023__bF$buf0 _986_ _985_ _984_ vdd gnd OAI21X1
XFILL128550x122550 gnd vdd FILL
X_2887_ _u_rf_if.read_buf0_[17] _22__bF$buf3 _75_ vdd gnd NAND2X1
X_2467_ _725_ _1062_ _1590_ vdd gnd NAND2X1
X_2047_ _u_mem_serial.shift_reg_[19] _882_ vdd gnd INVX1
XFILL_0__2927_ gnd vdd FILL
XFILL_0__2507_ gnd vdd FILL
XFILL_0__3465_ gnd vdd FILL
XFILL_0__3045_ gnd vdd FILL
X_2696_ _u_rf_if.read_buf1_[0] _1783__bF$buf0 _1785_ vdd gnd NAND2X1
X_2276_ _689_ _u_rf_if.rcnt_[0] _672_ vdd gnd AND2X2
XFILL_0__1951_ gnd vdd FILL
XFILL_0__2316_ gnd vdd FILL
X_4002_ _1197_ _gen_int_sys_clk.clk_sys_r_bF$buf35_ _u_cpu.bufreg.data_[3] vdd gnd DFFPOSX1
X_1967_ _u_mem_serial.shift_reg_[9] _952_ vdd gnd INVX1
X_2085_ _854_ _973__bF$buf1 _849_ _848_ vdd gnd OAI21X1
XFILL_0__2965_ gnd vdd FILL
XFILL_0_BUFX2_insert160 gnd vdd FILL
XFILL_0_BUFX2_insert162 gnd vdd FILL
XFILL_0_BUFX2_insert164 gnd vdd FILL
XFILL_0_BUFX2_insert167 gnd vdd FILL
XFILL_0_BUFX2_insert169 gnd vdd FILL
X_3922_ _1160_ _gen_int_sys_clk.clk_sys_r_bF$buf26_ _u_cpu.bufreg2.dlo_[0] vdd gnd DFFPOSX1
X_3502_ _u_cpu.bufreg2.dlo_[9] _528_ vdd gnd INVX1
X_3099_ _703_ _720_ i_rst_n_bF$buf11 _227_ vdd gnd OAI21X1
XFILL_0__2354_ gnd vdd FILL
X_4040_ _1422_ i_clk_fast_bF$buf8 _u_mem_serial.shift_reg_[33] vdd gnd DFFPOSX1
X_3731_ _1252_ _gen_int_sys_clk.clk_sys_r_bF$buf38_ _u_cpu.decode.co_ebreak_ vdd gnd DFFPOSX1
X_3311_ _342_ _390_ _391_ _1224_ vdd gnd OAI21X1
XFILL_0__3368_ gnd vdd FILL
X_2599_ _u_rf_if.issue_chunk_[3] _u_rf_if.issue_chunk_[2] _1709_ vdd gnd NOR2X1
X_2179_ _u_cpu.state.i_ctrl_misalign_ _766_ _765_ vdd gnd NAND2X1
X_3960_ _1179_ _gen_int_sys_clk.clk_sys_r_bF$buf0_ _u_cpu.bufreg2.dlo_[19] vdd gnd DFFPOSX1
X_3540_ mem_dbus_ack_bF$buf0 _u_cpu.bufreg2.dlo_[2] _557_ _558_ vdd gnd OAI21X1
X_3120_ _227_ _1692__bF$buf2 _212__bF$buf2 _244_ vdd gnd OAI21X1
XFILL_0__2219_ gnd vdd FILL
XFILL_0__2392_ gnd vdd FILL
X_2811_ _u_rf_if.stream_active_bF$buf7_ _1742_ _17_ _18_ vdd gnd OAI21X1
XFILL_0__3177_ gnd vdd FILL
XFILL_0__2868_ gnd vdd FILL
X_2620_ _1727_ _1728_ vdd gnd INVX1
X_2200_ _1056_ _u_mem_serial.clk_sys_prev_ _748_ _747_ vdd gnd OAI21X1
X_3825_ _1135_ _gen_int_sys_clk.clk_sys_r_bF$buf7_ _u_cpu.ctrl.o_ibus_adr_[4] vdd gnd DFFPOSX1
X_3405_ _708_ _450__bF$buf1 _451_ vdd gnd NAND2X1
XFILL_0__1892_ gnd vdd FILL
XFILL_0__2677_ gnd vdd FILL
XFILL_0__2257_ gnd vdd FILL
XFILL_0_CLKBUF1_insert151 gnd vdd FILL
XFILL_0_CLKBUF1_insert153 gnd vdd FILL
XFILL_0_CLKBUF1_insert156 gnd vdd FILL
XFILL_0_CLKBUF1_insert158 gnd vdd FILL
X_3634_ _143_ _868_ _602__bF$buf4 _1112_ vdd gnd MUX2X1
X_3214_ _311_ _298_ _141_ _312_ _1242_ vdd 
+ gnd
+ AOI22X1
XFILL_0__2066_ gnd vdd FILL
X_2905_ _88_ i_rst_n_bF$buf4 _1327_ vdd gnd AND2X2
X_3863_ _1326_ _gen_int_sys_clk.clk_sys_r_bF$buf9_ _u_rf_if.read_buf0_[22] vdd gnd DFFPOSX1
X_3443_ _666_ _482_ _483_ _484_ vdd gnd AOI21X1
X_3023_ _176_ _170_ _122_ _177_ vdd gnd OAI21X1
X_2714_ _1798_ i_rst_n_bF$buf5 _1374_ vdd gnd AND2X2
X_3919_ _1354_ _gen_int_sys_clk.clk_sys_r_bF$buf29_ _u_rf_if.read_buf1_[24] vdd gnd DFFPOSX1
X_3672_ _1057_ _1054_ _1053_ vdd gnd NOR2X1
X_3252_ rreg1[3] _340_ _659__bF$buf4 _344_ vdd gnd OAI21X1
X_4037_ _1212_ _gen_int_sys_clk.clk_sys_r_bF$buf42_ _u_cpu.bufreg.data_[18] vdd gnd DFFPOSX1
XFILL_0_BUFX2_insert41 gnd vdd FILL
XFILL_0_BUFX2_insert43 gnd vdd FILL
XFILL_0_BUFX2_insert45 gnd vdd FILL
X_2943_ _1734_ _u_rf_if.o_waddr_[1] _1698_ _117_ vdd gnd AOI21X1
X_2523_ _1638_ _1623_ _1645_ _1646_ vdd gnd AOI21X1
X_2103_ _u_mem_serial.shift_reg_[26] _833_ vdd gnd INVX1
X_3728_ i_rst_n_bF$buf3 vdd _1102_ _gen_int_sys_clk.clk_sys_r_bF$buf13_ ibus_pending_rdt[11] vdd 
+ gnd
+ DFFSR
X_3308_ _318_ _315_ _389_ _1225_ vdd gnd OAI21X1
X_3481_ _510_ _512_ _450__bF$buf4 _1175_ vdd gnd MUX2X1
X_3061_ _736_ _1718_ _1666_ _204_ vdd gnd NAND3X1
X_2752_ _u_rf_if.read_buf1_[14] _1783__bF$buf6 _1827_ vdd gnd NAND2X1
X_2332_ _u_rf_if.req_seen_ _1257_ _1412_ vdd gnd NAND2X1
X_3957_ _1373_ _gen_int_sys_clk.clk_sys_r_bF$buf43_ _u_rf_if.read_buf1_[5] vdd gnd DFFPOSX1
X_3537_ _u_cpu.bufreg2.dlo_[1] _555_ vdd gnd INVX1
X_3117_ _703_ _720_ _u_cpu.state.init_done_ _242_ vdd gnd OAI21X1
X_3290_ _u_cpu.branch_op_ _1692__bF$buf0 _373_ _374_ vdd gnd OAI21X1
XFILL_0__2389_ gnd vdd FILL
X_4075_ _1439_ i_clk_fast_bF$buf8 _u_mem_serial.shift_reg_[16] vdd gnd DFFPOSX1
XFILL128850x32550 gnd vdd FILL
XFILL_0__3330_ gnd vdd FILL
X_2808_ _15_ _14_ _1070__bF$buf6 _1351_ vdd gnd AOI21X1
X_2981_ _143_ _868_ ibus_pending_ack_bF$buf4 _144_ vdd gnd MUX2X1
X_2561_ _1676_ _1677_ _1678_ vdd gnd NOR2X1
X_2141_ _805_ _973__bF$buf4 _800_ _799_ vdd gnd OAI21X1
X_3766_ i_rst_n_bF$buf3 vdd _1112_ _gen_int_sys_clk.clk_sys_r_bF$buf11_ ibus_pending_rdt[21] vdd 
+ gnd
+ DFFSR
X_3346_ _u_cpu.bufreg.data_[14] _411_ vdd gnd INVX1
X_2617_ _1690_ _1398_ vdd gnd INVX1
XBUFX2_insert56 mem_dbus_ack mem_dbus_ack_bF$buf6 vdd gnd BUFX2
XBUFX2_insert57 mem_dbus_ack mem_dbus_ack_bF$buf5 vdd gnd BUFX2
XBUFX2_insert58 mem_dbus_ack mem_dbus_ack_bF$buf4 vdd gnd BUFX2
XBUFX2_insert59 mem_dbus_ack mem_dbus_ack_bF$buf3 vdd gnd BUFX2
X_2790_ _1_ i_rst_n_bF$buf4 _1355_ vdd gnd AND2X2
X_2370_ i_rst_n_bF$buf10 _u_rf_if.tx_state_[4] _1496_ vdd gnd NAND2X1
XFILL_0__1889_ gnd vdd FILL
X_3995_ _1194_ _gen_int_sys_clk.clk_sys_r_bF$buf35_ _u_cpu.bufreg.data_[29] vdd gnd DFFPOSX1
X_3575_ _579_ _212__bF$buf3 _578_ _570__bF$buf1 _1148_ vdd 
+ gnd
+ OAI22X1
X_3155_ _u_mem_serial.shift_reg_[2] ibus_pending_ack_bF$buf0 _270_ _271_ vdd gnd OAI21X1
XFILL_0__2830_ gnd vdd FILL
X_2846_ _u_rf_if.read_buf0_[8] _u_rf_if.read_buf0_[9] _u_rf_if.stream_active_bF$buf6_ _44_ vdd gnd MUX2X1
X_2426_ _1538_ _1548_ _1545_ _1549_ vdd gnd NAND3X1
X_2006_ _918_ i_rst_n_bF$buf2 _1442_ vdd gnd AND2X2
X_3384_ _1063_ _u_cpu.decode.opcode_[0] _1561_ _433_ vdd gnd OAI21X1
X_1870_ _u_mem_serial.bit_count_[2] _1037_ _1052_ _1036_ vdd gnd OAI21X1
X_2655_ _1752_ _1756_ _1757_ vdd gnd NOR2X1
X_2235_ _u_cpu.bufreg2.dhi_[4] _714_ _u_cpu.bufreg2.dhi_[5] _713_ vdd gnd OAI21X1
X_3193_ _293_ _298_ _169_ _297_ _1249_ vdd 
+ gnd
+ AOI22X1
X_1926_ _1070__bF$buf1 _987_ _1453_ vdd gnd NOR2X1
XFILL_0__3653_ gnd vdd FILL
XFILL_0__3233_ gnd vdd FILL
X_2884_ _22__bF$buf3 _71_ _72_ _73_ vdd gnd OAI21X1
X_2464_ _1586_ _1587_ vdd gnd INVX1
X_2044_ _887_ _885_ _973__bF$buf0 _884_ vdd gnd OAI21X1
X_3669_ _1070__bF$buf3 _1051_ _1050_ vdd gnd NOR2X1
X_3249_ _659__bF$buf5 _340_ _342_ vdd gnd AND2X2
XFILL_0__3709_ gnd vdd FILL
XFILL_0__3042_ gnd vdd FILL
X_2693_ _1782_ _1780_ _1379_ vdd gnd NOR2X1
X_2273_ _676_ _675_ vdd gnd INVX1
X_3898_ i_rst_n_bF$buf0 vdd _1097_ _gen_int_sys_clk.clk_sys_r_bF$buf26_ ibus_pending_rdt[6] vdd 
+ gnd
+ DFFSR
X_3478_ _u_cpu.bufreg2.dlo_[15] _510_ vdd gnd INVX1
X_3058_ _736_ _1716_ _1666_ _202_ vdd gnd NAND3X1
XFILL_0__2733_ gnd vdd FILL
XFILL_0__3518_ gnd vdd FILL
X_1964_ _957_ _955_ _973__bF$buf2 _954_ vdd gnd OAI21X1
XFILL_0__3691_ gnd vdd FILL
X_2749_ _1783__bF$buf6 _1823_ _1824_ _1825_ vdd gnd OAI21X1
X_2329_ _735_ raddr[0] _1090_ vdd gnd OR2X2
X_2082_ _u_cpu.bufreg.data_[23] _u_cpu.ctrl.o_ibus_adr_[23] _1006__bF$buf1 _851_ vdd gnd MUX2X1
X_3287_ _659__bF$buf2 _371_ _368_ _1228_ vdd gnd OAI21X1
XFILL_0__2542_ gnd vdd FILL
XFILL_0__2122_ gnd vdd FILL
XFILL_0__3080_ gnd vdd FILL
XFILL128850x122550 gnd vdd FILL
X_2978_ _141_ _138_ _1070__bF$buf5 _1307_ vdd gnd AOI21X1
X_2558_ _1675_ _689_ _1070__bF$buf2 _1407_ vdd gnd AOI21X1
X_2138_ _u_cpu.bufreg.data_[30] _u_cpu.ctrl.o_ibus_adr_[30] _1006__bF$buf0 _802_ vdd gnd MUX2X1
X_3096_ _1546_ _224_ _225_ _1273_ vdd gnd AOI21X1
XFILL_0__3556_ gnd vdd FILL
X_2787_ _u_rf_if.read_buf1_[24] _u_rf_if.read_buf1_[25] _u_rf_if.stream_active_bF$buf1_ _1853_ vdd gnd MUX2X1
X_2367_ ren _1471_ i_rst_n_bF$buf10 _1494_ vdd gnd OAI21X1
XFILL_0__2407_ gnd vdd FILL
XFILL_0__2580_ gnd vdd FILL
X_2596_ raddr[8] _1680_ i_rst_n_bF$buf1 _1707_ vdd gnd OAI21X1
X_2176_ _u_cpu.bufreg2.dhi_[4] _768_ vdd gnd INVX2
X_1867_ _1070__bF$buf3 _1039_ _1460_ vdd gnd NOR2X1
XFILL_0__3594_ gnd vdd FILL
XFILL_0__1907_ gnd vdd FILL
XFILL_0__2865_ gnd vdd FILL
XFILL_0__2445_ gnd vdd FILL
X_3822_ _1079_ i_clk_fast_bF$buf3 _gen_int_sys_clk.clk_sys_r_ vdd gnd DFFPOSX1
X_3402_ _447_ _448_ vdd gnd INVX1
XFILL_0__2254_ gnd vdd FILL
XFILL_0_CLKBUF1_insert120 gnd vdd FILL
XFILL_0_CLKBUF1_insert122 gnd vdd FILL
XFILL_0_CLKBUF1_insert125 gnd vdd FILL
XFILL_0_CLKBUF1_insert127 gnd vdd FILL
XFILL_0_CLKBUF1_insert129 gnd vdd FILL
XFILL_0__1945_ gnd vdd FILL
X_3631_ _1745_ _847_ _602__bF$buf1 _1115_ vdd gnd MUX2X1
X_3211_ _309_ _298_ _257_ _310_ _1243_ vdd 
+ gnd
+ AOI22X1
XBUFX2_insert110 _1002_ _1002__bF$buf4 vdd gnd BUFX2
XBUFX2_insert111 _1002_ _1002__bF$buf3 vdd gnd BUFX2
XBUFX2_insert112 _1002_ _1002__bF$buf2 vdd gnd BUFX2
XBUFX2_insert113 _1002_ _1002__bF$buf1 vdd gnd BUFX2
XBUFX2_insert114 _1002_ _1002__bF$buf0 vdd gnd BUFX2
X_2902_ _u_rf_if.read_buf0_[22] _u_rf_if.read_buf0_[23] _u_rf_if.stream_active_bF$buf1_ _86_ vdd gnd MUX2X1
XFILL_0__3268_ gnd vdd FILL
X_2499_ _u_rf_if.tx_state_[1] _1622_ vdd gnd INVX1
X_2079_ _u_mem_serial.shift_reg_[23] _854_ vdd gnd INVX1
X_3860_ _1325_ _gen_int_sys_clk.clk_sys_r_bF$buf9_ _u_rf_if.read_buf0_[23] vdd gnd DFFPOSX1
X_3440_ _u_cpu.bufreg.i_shamt_[0] _479_ _481_ vdd gnd NOR2X1
X_3020_ _u_rf_if.issue_chunk_[0] _173_ _174_ _175_ vdd gnd OAI21X1
XFILL_0__2119_ gnd vdd FILL
XFILL_0__2292_ gnd vdd FILL
X_2711_ _u_rf_if.read_buf1_[5] _u_rf_if.read_buf1_[6] _u_rf_if.stream_active_bF$buf4_ _1796_ vdd gnd MUX2X1
X_3916_ _1157_ _gen_int_sys_clk.clk_sys_r_bF$buf27_ _u_cpu.ctrl.o_ibus_adr_[26] vdd gnd DFFPOSX1
XFILL_0__2768_ gnd vdd FILL
X_4034_ _1419_ i_clk_fast_bF$buf6 _u_mem_serial.shift_reg_[36] vdd gnd DFFPOSX1
XFILL_0_BUFX2_insert10 gnd vdd FILL
XFILL_0_BUFX2_insert12 gnd vdd FILL
X_1999_ _u_mem_serial.shift_reg_[13] _924_ vdd gnd INVX1
XFILL_0_BUFX2_insert14 gnd vdd FILL
XFILL_0_BUFX2_insert16 gnd vdd FILL
XFILL_0_BUFX2_insert18 gnd vdd FILL
X_2940_ _115_ i_rst_n_bF$buf11 _1319_ vdd gnd AND2X2
X_2520_ _1076_ _1642_ _1630_ _1643_ vdd gnd OAI21X1
X_2100_ _838_ _836_ _973__bF$buf3 _835_ vdd gnd OAI21X1
X_3725_ _1458_ i_clk_fast_bF$buf2 _u_mem_serial.bit_count_[3] vdd gnd DFFPOSX1
X_3305_ _673__bF$buf1 _674__bF$buf2 _386_ _387_ vdd gnd OAI21X1
XFILL_0__2157_ gnd vdd FILL
X_3954_ _1176_ _gen_int_sys_clk.clk_sys_r_bF$buf26_ _u_cpu.bufreg2.dlo_[16] vdd gnd DFFPOSX1
X_3534_ mem_dbus_ack_bF$buf0 _552_ _553_ vdd gnd NAND2X1
X_3114_ _239_ _695_ _240_ vdd gnd NOR2X1
X_4072_ _1229_ _gen_int_sys_clk.clk_sys_r_bF$buf39_ _u_cpu.immdec.gen_immdec_w_eq_1.imm11_7_[0] vdd gnd DFFPOSX1
X_2805_ _u_rf_if.stream_active_bF$buf7_ _11_ _12_ _13_ vdd gnd OAI21X1
X_3763_ _1278_ i_clk_fast_bF$buf1 _u_mem_serial.shift_reg_[37] vdd gnd DFFPOSX1
X_3343_ _408_ _409_ _1536__bF$buf4 _1210_ vdd gnd MUX2X1
XFILL_0__2195_ gnd vdd FILL
X_2614_ _u_rf_if.read_buf1_[31] _u_rf_if.stream_active_bF$buf3_ _1714_ _1723_ _1724_ vdd 
+ gnd
+ AOI22X1
X_3819_ _1306_ _gen_int_sys_clk.clk_sys_r_bF$buf32_ _u_rf_if.rreg1_latched_[1] vdd gnd DFFPOSX1
XBUFX2_insert20 _570_ _570__bF$buf3 vdd gnd BUFX2
XBUFX2_insert21 _570_ _570__bF$buf2 vdd gnd BUFX2
XBUFX2_insert22 _570_ _570__bF$buf1 vdd gnd BUFX2
XBUFX2_insert23 _570_ _570__bF$buf0 vdd gnd BUFX2
XBUFX2_insert24 i_rst_n i_rst_n_bF$buf11 vdd gnd BUFX2
XBUFX2_insert25 i_rst_n i_rst_n_bF$buf10 vdd gnd BUFX2
XBUFX2_insert26 i_rst_n i_rst_n_bF$buf9 vdd gnd BUFX2
XBUFX2_insert27 i_rst_n i_rst_n_bF$buf8 vdd gnd BUFX2
XBUFX2_insert28 i_rst_n i_rst_n_bF$buf7 vdd gnd BUFX2
XBUFX2_insert29 i_rst_n i_rst_n_bF$buf6 vdd gnd BUFX2
X_3992_ _1394_ _gen_int_sys_clk.clk_sys_r_bF$buf3_ _u_rf_if.read_buf1_[31] vdd gnd DFFPOSX1
X_3572_ _u_cpu.ctrl.o_ibus_adr_[18] _578_ vdd gnd INVX1
X_3152_ _673__bF$buf1 _674__bF$buf2 _u_cpu.decode.opcode_[0] _268_ vdd gnd OAI21X1
X_2843_ _u_rf_if.read_buf0_[6] _22__bF$buf6 _42_ vdd gnd NAND2X1
X_2423_ _u_cpu.bufreg2.i_bytecnt_[0] _1546_ vdd gnd INVX1
X_2003_ _1023__bF$buf5 _921_ _920_ vdd gnd NOR2X1
X_3628_ _326_ _826_ _602__bF$buf1 _1118_ vdd gnd MUX2X1
X_3208_ _307_ _298_ _254_ _308_ _1244_ vdd 
+ gnd
+ AOI22X1
X_3381_ _380_ _429_ _1063_ _430_ vdd gnd AOI21X1
XFILL_0__3421_ gnd vdd FILL
X_2652_ _u_rf_if.stream_cnt_[0] _1754_ vdd gnd INVX1
X_2232_ _u_cpu.bufreg.i_shamt_[2] _716_ vdd gnd INVX1
X_3857_ _1066_ _1065_ vdd gnd INVX1
X_3437_ _716_ _451_ _477_ _478_ _1185_ vdd 
+ gnd
+ OAI22X1
X_3017_ _1687_ _172_ _1299_ vdd gnd NOR2X1
X_3190_ _1066_ _295_ _296_ vdd gnd NAND2X1
X_1923_ _u_mem_serial.shift_reg_[1] _1023__bF$buf4 _994__bF$buf2 _989_ vdd gnd NAND3X1
X_2708_ _u_rf_if.read_buf1_[3] _1783__bF$buf3 _1794_ vdd gnd NAND2X1
X_2881_ _70_ i_rst_n_bF$buf8 _1333_ vdd gnd AND2X2
X_2461_ _1502_ _1581_ _1583_ _1584_ vdd gnd NAND3X1
X_2041_ _1002__bF$buf0 _888_ _887_ vdd gnd NOR2X1
X_3666_ _u_mem_serial.state_[1] _1047_ vdd gnd INVX1
X_3246_ _679_ _339_ vdd gnd INVX1
XFILL_0__2921_ gnd vdd FILL
XFILL_0__3706_ gnd vdd FILL
X_2937_ _u_rf_if.read_buf0_[30] _u_rf_if.read_buf0_[31] _u_rf_if.stream_active_bF$buf5_ _113_ vdd gnd MUX2X1
X_2517_ _1465_ _1640_ vdd gnd INVX1
X_2690_ _u_rf_if.stream_cnt_[3] _1749_ _1758_ _u_rf_if.stream_active_bF$buf3_ _1780_ vdd 
+ gnd
+ AOI22X1
X_2270_ _680_ _679_ _1062_ _678_ vdd gnd OAI21X1
X_3895_ _1342_ _gen_int_sys_clk.clk_sys_r_bF$buf23_ _u_rf_if.read_buf0_[6] vdd gnd DFFPOSX1
X_3475_ mem_dbus_ack_bF$buf4 _903_ _508_ vdd gnd NAND2X1
X_3055_ _736_ _1715_ _1666_ _200_ vdd gnd NAND3X1
XFILL_0__2730_ gnd vdd FILL
XFILL_0__2310_ gnd vdd FILL
X_1961_ _1002__bF$buf4 _958_ _957_ vdd gnd NOR2X1
X_2746_ _1822_ i_rst_n_bF$buf4 _1366_ vdd gnd AND2X2
X_2326_ _u_rf_if.last_req_key_[1] _1086_ _1087_ vdd gnd NAND2X1
X_3284_ ibus_pending_rdt[31] _369_ vdd gnd INVX1
XFILL_0_BUFX2_insert100 gnd vdd FILL
XFILL_0_BUFX2_insert103 gnd vdd FILL
XFILL_0_BUFX2_insert105 gnd vdd FILL
XFILL_0_BUFX2_insert107 gnd vdd FILL
XFILL_0_BUFX2_insert109 gnd vdd FILL
X_4069_ _1436_ i_clk_fast_bF$buf8 _u_mem_serial.shift_reg_[19] vdd gnd DFFPOSX1
X_2975_ ibus_pending_rdt[20] _139_ vdd gnd INVX1
X_2555_ _1672_ _1673_ vdd gnd INVX1
X_2135_ _u_mem_serial.shift_reg_[30] _805_ vdd gnd INVX1
X_3093_ _222_ _1547_ _223_ vdd gnd NOR2X1
XFILL_0__3133_ gnd vdd FILL
X_2784_ _u_rf_if.read_buf1_[22] _1783__bF$buf6 _1851_ vdd gnd NAND2X1
X_2364_ _1491_ _u_rf_if.tx_state_[1] _1492_ vdd gnd OR2X2
X_3989_ _1190_ _gen_int_sys_clk.clk_sys_r_bF$buf20_ _u_cpu.bufreg.data_[31] vdd gnd DFFPOSX1
X_3569_ _576_ _212__bF$buf4 _575_ _570__bF$buf3 _1151_ vdd 
+ gnd
+ OAI22X1
X_3149_ ibus_pending_ack_bF$buf1 _265_ _266_ vdd gnd NAND2X1
XFILL_0__3609_ gnd vdd FILL
X_2593_ _1704_ _1513_ _1515_ _1705_ vdd gnd AOI21X1
X_2173_ _773_ _771_ _1422_ vdd gnd AND2X2
X_3798_ i_rst_n_bF$buf3 vdd _1073_ _gen_int_sys_clk.clk_sys_r_bF$buf30_ ibus_pending_ack vdd 
+ gnd
+ DFFSR
X_3378_ _u_cpu.bufreg.data_[31] _424_ _428_ vdd gnd NOR2X1
XFILL_0__2633_ gnd vdd FILL
X_1864_ _1854_ o_mem_sck vdd gnd BUFX2
XFILL_0__3591_ gnd vdd FILL
XFILL_0__3171_ gnd vdd FILL
X_2649_ _u_rf_if.stream_cnt_[4] _1751_ vdd gnd INVX1
X_2229_ _720_ _719_ vdd gnd INVX1
X_3187_ rreg0[3] _293_ vdd gnd INVX1
XFILL_0__2022_ gnd vdd FILL
XFILL_0__3647_ gnd vdd FILL
X_2878_ _u_rf_if.read_buf0_[16] _u_rf_if.read_buf0_[17] _u_rf_if.stream_active_bF$buf2_ _68_ vdd gnd MUX2X1
X_2458_ _1576_ _1580_ _1579_ _1581_ vdd gnd NAND3X1
X_2038_ _890_ i_rst_n_bF$buf2 _1438_ vdd gnd AND2X2
XFILL_0__2918_ gnd vdd FILL
XFILL_0__2671_ gnd vdd FILL
XFILL_0__3456_ gnd vdd FILL
XFILL_0__3036_ gnd vdd FILL
X_2687_ _u_rf_if.stream_active_bF$buf4_ _1756_ _1778_ vdd gnd NAND2X1
X_2267_ _684_ _683_ _682_ _681_ vdd gnd NAND3X1
XFILL_0__1942_ gnd vdd FILL
XFILL_0__2480_ gnd vdd FILL
XFILL_0__2060_ gnd vdd FILL
X_1958_ _960_ i_rst_n_bF$buf2 _1448_ vdd gnd AND2X2
X_2496_ _u_rf_if.wdata0_next_[0] _1619_ vdd gnd INVX1
X_2076_ _859_ _857_ _973__bF$buf1 _856_ vdd gnd OAI21X1
XFILL_0__2956_ gnd vdd FILL
XFILL_0__2536_ gnd vdd FILL
XFILL_0__3494_ gnd vdd FILL
X_3913_ _1351_ _gen_int_sys_clk.clk_sys_r_bF$buf21_ _u_rf_if.read_buf1_[27] vdd gnd DFFPOSX1
XFILL_0__1980_ gnd vdd FILL
XFILL_0__2345_ gnd vdd FILL
X_4031_ _1209_ _gen_int_sys_clk.clk_sys_r_bF$buf10_ _u_cpu.bufreg.data_[15] vdd gnd DFFPOSX1
X_1996_ _929_ _927_ _973__bF$buf0 _926_ vdd gnd OAI21X1
X_3722_ _1248_ _gen_int_sys_clk.clk_sys_r_bF$buf22_ rreg0[2] vdd gnd DFFPOSX1
X_3302_ _u_cpu.branch_op_ _725_ _384_ vdd gnd NAND2X1
XFILL_0__2994_ gnd vdd FILL
XFILL_0__3359_ gnd vdd FILL
X_3951_ _1370_ _gen_int_sys_clk.clk_sys_r_bF$buf15_ _u_rf_if.read_buf1_[8] vdd gnd DFFPOSX1
X_3531_ _547_ _550_ _450__bF$buf2 _1163_ vdd gnd MUX2X1
X_3111_ _236_ _1500_ _237_ vdd gnd AND2X2
XFILL_0__2383_ gnd vdd FILL
X_2802_ _10_ i_rst_n_bF$buf5 _1352_ vdd gnd AND2X2
X_2399_ _1521_ _1522_ vdd gnd INVX1
X_3760_ i_rst_n_bF$buf1 vdd _1109_ _gen_int_sys_clk.clk_sys_r_bF$buf39_ ibus_pending_rdt[18] vdd 
+ gnd
+ DFFSR
X_3340_ _u_cpu.bufreg.data_[17] _408_ vdd gnd INVX1
XFILL_0__2859_ gnd vdd FILL
X_2611_ _u_rf_if.shift_rx_[0] _1560_ _1720_ _1721_ vdd gnd NAND3X1
XFILL_0__3397_ gnd vdd FILL
X_3816_ _1133_ _gen_int_sys_clk.clk_sys_r_bF$buf7_ _u_cpu.ctrl.o_ibus_adr_[2] vdd gnd DFFPOSX1
XFILL_0__1883_ gnd vdd FILL
XFILL_0__2668_ gnd vdd FILL
XFILL_0__2248_ gnd vdd FILL
X_1899_ _1012_ _1015_ _1011_ vdd gnd NOR2X1
X_2840_ _22__bF$buf0 _38_ _39_ _40_ vdd gnd OAI21X1
X_2420_ _u_cpu.bufreg.i_right_shift_op_ _1524_ _1543_ vdd gnd NAND2X1
X_2000_ _u_mem_serial.shift_reg_[12] _u_cpu.bufreg2.dlo_[7] _994__bF$buf3 _923_ vdd gnd MUX2X1
X_3625_ _290_ _805_ _602__bF$buf0 _1121_ vdd gnd MUX2X1
X_3205_ _305_ _298_ _286_ _306_ _1245_ vdd 
+ gnd
+ AOI22X1
X_3854_ _1322_ _gen_int_sys_clk.clk_sys_r_bF$buf5_ _u_rf_if.read_buf0_[26] vdd gnd DFFPOSX1
X_3434_ _475_ _708_ _697_ _476_ vdd gnd OAI21X1
X_3014_ _u_rf_if.issue_sel_ _1680_ _170_ vdd gnd NAND2X1
X_1920_ _u_mem_serial.shift_reg_[1] _992_ _1009_ _991_ vdd gnd MUX2X1
X_2705_ _1783__bF$buf3 _1790_ _1791_ _1792_ vdd gnd OAI21X1
X_3663_ _u_mem_serial.bit_count_[0] _1044_ vdd gnd INVX1
X_3243_ _u_cpu.immdec.gen_immdec_w_eq_1.imm30_25_[0] _315_ _337_ vdd gnd NOR2X1
X_4028_ _1416_ i_clk_fast_bF$buf4 _u_rf_if.launch_pending_ vdd gnd DFFPOSX1
XFILL_0__2095_ gnd vdd FILL
X_2934_ _106_ _1560_ _1727_ _111_ vdd gnd OAI21X1
X_2514_ _648_ _645_ _1637_ vdd gnd NOR2X1
X_3719_ _1455_ i_clk_fast_bF$buf6 _u_mem_serial.shift_reg_[0] vdd gnd DFFPOSX1
X_3892_ _1151_ _gen_int_sys_clk.clk_sys_r_bF$buf16_ _u_cpu.ctrl.o_ibus_adr_[20] vdd gnd DFFPOSX1
X_3472_ mem_dbus_ack_bF$buf5 _896_ _506_ vdd gnd NAND2X1
X_3052_ _736_ _197_ _1666_ _198_ vdd gnd NAND3X1
XFILL_0__3512_ gnd vdd FILL
X_2743_ _u_rf_if.read_buf1_[13] _u_rf_if.read_buf1_[14] _u_rf_if.stream_active_bF$buf0_ _1820_ vdd gnd MUX2X1
X_2323_ _1077_ _1083_ _1084_ vdd gnd NOR2X1
X_3948_ _1173_ _gen_int_sys_clk.clk_sys_r_bF$buf8_ _u_cpu.bufreg2.dlo_[13] vdd gnd DFFPOSX1
X_3528_ _u_mem_serial.shift_reg_[3] _548_ vdd gnd INVX1
X_3108_ _233_ _232_ _234_ vdd gnd OR2X2
X_3281_ _u_cpu.immdec.gen_immdec_w_eq_1.imm11_7_[1] _349_ _659__bF$buf4 _367_ vdd gnd OAI21X1
X_4066_ _1226_ _gen_int_sys_clk.clk_sys_r_bF$buf17_ _u_cpu.immdec.gen_immdec_w_eq_1.imm7_ vdd gnd DFFPOSX1
XFILL_0__3321_ gnd vdd FILL
X_2972_ raddr[7] _1680_ i_rst_n_bF$buf1 _137_ vdd gnd OAI21X1
X_2552_ _u_rf_if.rcnt_[0] _1670_ vdd gnd INVX1
X_2132_ _810_ _808_ _973__bF$buf6 _807_ vdd gnd OAI21X1
X_3757_ _1274_ _gen_int_sys_clk.clk_sys_r_bF$buf34_ _u_cpu.state.cnt_r_[0] vdd gnd DFFPOSX1
X_3337_ _405_ _406_ _1536__bF$buf4 _1213_ vdd gnd MUX2X1
X_3090_ _701_ _u_cpu.state.cnt_r_[3] _u_rf_if.ready_pulse_ _221_ vdd gnd AOI21X1
X_2608_ _654_ _1718_ vdd gnd INVX1
X_2781_ _1783__bF$buf6 _1847_ _1848_ _1849_ vdd gnd OAI21X1
X_2361_ _u_rf_if.tx_state_[4] _1489_ vdd gnd INVX1
X_3986_ _1391_ _gen_int_sys_clk.clk_sys_r_bF$buf28_ _u_rf_if.stream_cnt_[4] vdd gnd DFFPOSX1
X_3566_ _u_cpu.ctrl.o_ibus_adr_[21] _575_ vdd gnd INVX1
X_3146_ _263_ _1692__bF$buf1 _264_ vdd gnd NAND2X1
XFILL_0__2821_ gnd vdd FILL
XFILL_0__2401_ gnd vdd FILL
X_2837_ _37_ i_rst_n_bF$buf5 _1344_ vdd gnd AND2X2
X_2417_ rreg1[0] _1540_ vdd gnd INVX1
X_2590_ _671_ _1702_ vdd gnd INVX1
X_2170_ _774_ _777_ _973__bF$buf5 _773_ vdd gnd OAI21X1
X_3795_ _1294_ i_clk_fast_bF$buf5 _u_rf_if.last_req_key_[0] vdd gnd DFFPOSX1
X_3375_ _780_ _766_ _426_ _1195_ vdd gnd MUX2X1
XFILL_0__2210_ gnd vdd FILL
X_1861_ _1857_ o_rf_sck vdd gnd BUFX2
X_2646_ _689_ _1748_ _1070__bF$buf0 _1392_ vdd gnd AOI21X1
X_2226_ _u_cpu.bne_or_bge_ _u_cpu.decode.co_mem_word_ _723_ _722_ vdd gnd OAI21X1
X_3184_ ibus_pending_ack_bF$buf0 _290_ _291_ vdd gnd NAND2X1
X_1917_ _u_mem_serial.active_we_ _1012_ _994_ vdd gnd NAND2X1
XFILL_0__3644_ gnd vdd FILL
XFILL_0__3224_ gnd vdd FILL
X_2875_ _u_rf_if.read_buf0_[14] _22__bF$buf4 _66_ vdd gnd NAND2X1
X_2455_ _1577_ _1578_ vdd gnd INVX1
X_2035_ _1023__bF$buf5 _893_ _892_ vdd gnd NOR2X1
X_2684_ _u_rf_if.stream_cnt_[1] _u_rf_if.stream_cnt_[0] i_rst_n_bF$buf9 _1776_ vdd gnd OAI21X1
X_2264_ _u_cpu.immdec.gen_immdec_w_eq_1.imm11_7_[1] _684_ vdd gnd INVX1
X_3889_ _1339_ _gen_int_sys_clk.clk_sys_r_bF$buf40_ _u_rf_if.read_buf0_[9] vdd gnd DFFPOSX1
X_3469_ mem_dbus_ack_bF$buf5 _u_cpu.bufreg2.dlo_[19] _503_ _504_ vdd gnd OAI21X1
X_3049_ _195_ _194_ _1070__bF$buf2 _1290_ vdd gnd AOI21X1
XFILL_0__2724_ gnd vdd FILL
XFILL_0__3509_ gnd vdd FILL
X_1955_ _1023__bF$buf3 _963_ _962_ vdd gnd NOR2X1
XFILL_0__3682_ gnd vdd FILL
XFILL_0__3262_ gnd vdd FILL
X_2493_ _1589_ _1503_ _1615_ _1616_ vdd gnd AOI21X1
X_2073_ _1002__bF$buf0 _860_ _859_ vdd gnd NOR2X1
X_3698_ _1499_ _1692__bF$buf1 _632_ _264_ _1078_ vdd 
+ gnd
+ OAI22X1
X_3278_ ibus_pending_rdt[7] _364_ vdd gnd INVX1
XFILL_0__2533_ gnd vdd FILL
XFILL_0__2113_ gnd vdd FILL
XFILL_0__3071_ gnd vdd FILL
X_2969_ raddr[6] _1680_ i_rst_n_bF$buf1 _135_ vdd gnd OAI21X1
X_2549_ _1047_ _749_ _1668_ vdd gnd NAND2X1
X_2129_ _1002__bF$buf1 _811_ _810_ vdd gnd NOR2X1
X_3910_ i_rst_n_bF$buf3 vdd _1100_ _gen_int_sys_clk.clk_sys_r_bF$buf6_ ibus_pending_rdt[9] vdd 
+ gnd
+ DFFSR
X_3087_ _1070__bF$buf3 _220_ _1277_ vdd gnd NOR2X1
XFILL_0__3547_ gnd vdd FILL
XFILL_0__3127_ gnd vdd FILL
X_1993_ _1002__bF$buf3 _930_ _929_ vdd gnd NOR2X1
X_2778_ _1846_ i_rst_n_bF$buf5 _1358_ vdd gnd AND2X2
X_2358_ _1477_ _1485_ _1486_ vdd gnd NOR2X1
XFILL129150x126150 gnd vdd FILL
XFILL_0__2991_ gnd vdd FILL
XFILL_0__2571_ gnd vdd FILL
X_2587_ _u_rf_if.write_wait_[1] _1697_ _1699_ _1700_ vdd gnd NAND3X1
X_2167_ _u_cpu.bufreg2.dhi_[3] _776_ vdd gnd INVX1
XFILL_0__3585_ gnd vdd FILL
X_2396_ _u_cpu.ctrl.pc_plus_offset_cy_r_w_ _1519_ vdd gnd INVX1
XFILL_0__2856_ gnd vdd FILL
XFILL_0__2436_ gnd vdd FILL
XFILL_0__3394_ gnd vdd FILL
X_3813_ _1303_ _gen_int_sys_clk.clk_sys_r_bF$buf22_ _u_rf_if.rreg0_latched_[0] vdd gnd DFFPOSX1
XFILL_0__1880_ gnd vdd FILL
X_1896_ _1038_ _u_mem_serial.bit_count_[0] _1020_ _1014_ vdd gnd NAND3X1
XFILL_0__1936_ gnd vdd FILL
X_3622_ _600_ _1066_ _601_ _1123_ vdd gnd OAI21X1
X_3202_ _303_ _298_ _157_ _304_ _1246_ vdd 
+ gnd
+ AOI22X1
XFILL_0__2894_ gnd vdd FILL
XFILL_0__2474_ gnd vdd FILL
XFILL_0__3259_ gnd vdd FILL
X_3851_ _1141_ _gen_int_sys_clk.clk_sys_r_bF$buf25_ _u_cpu.ctrl.o_ibus_adr_[10] vdd gnd DFFPOSX1
X_3431_ _473_ _776_ _451_ _1186_ vdd gnd MUX2X1
X_3011_ _167_ _889_ ibus_pending_ack_bF$buf1 _168_ vdd gnd MUX2X1
XFILL_0__2283_ gnd vdd FILL
X_2702_ _1789_ i_rst_n_bF$buf7 _1377_ vdd gnd AND2X2
X_3907_ _1348_ _gen_int_sys_clk.clk_sys_r_bF$buf5_ _u_rf_if.read_buf0_[0] vdd gnd DFFPOSX1
X_2299_ raddr[4] _649_ vdd gnd INVX1
X_3660_ _1042_ _1041_ vdd gnd INVX1
X_3240_ ibus_pending_rdt[25] _334_ vdd gnd INVX1
XFILL_0__2759_ gnd vdd FILL
XFILL_0__2339_ gnd vdd FILL
X_4025_ _1413_ _gen_int_sys_clk.clk_sys_r_bF$buf37_ _u_rf_if.wen0_r_ vdd gnd DFFPOSX1
XFILL_0__3700_ gnd vdd FILL
X_2931_ _u_rf_if.stream_active_bF$buf5_ _1738_ _108_ _109_ vdd gnd OAI21X1
X_2511_ _1627_ _1621_ _1633_ _1634_ vdd gnd OAI21X1
XFILL_0__3297_ gnd vdd FILL
X_3716_ _1245_ _gen_int_sys_clk.clk_sys_r_bF$buf22_ _u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20_[3] vdd gnd DFFPOSX1
XFILL_0__2148_ gnd vdd FILL
X_2740_ _u_rf_if.read_buf1_[11] _1783__bF$buf5 _1818_ vdd gnd NAND2X1
X_2320_ ren _u_rf_if.o_waddr_[3] _1074_ _1076_ vdd gnd OAI21X1
X_3945_ _1367_ _gen_int_sys_clk.clk_sys_r_bF$buf15_ _u_rf_if.read_buf1_[11] vdd gnd DFFPOSX1
X_3525_ mem_dbus_ack_bF$buf4 _u_cpu.bufreg2.dlo_[5] _545_ _546_ vdd gnd OAI21X1
X_3105_ _u_cpu.alu.cmp_r_ _1585_ _230_ _231_ vdd gnd OAI21X1
XFILL_0__2797_ gnd vdd FILL
X_4063_ _1433_ i_clk_fast_bF$buf0 _u_mem_serial.shift_reg_[22] vdd gnd DFFPOSX1
X_3754_ _1271_ _gen_int_sys_clk.clk_sys_r_bF$buf14_ _u_cpu.bufreg2.i_bytecnt_[1] vdd gnd DFFPOSX1
X_3334_ _u_cpu.bufreg.data_[20] _405_ vdd gnd INVX1
XFILL_0__2186_ gnd vdd FILL
X_2605_ _1651_ _1715_ vdd gnd INVX1
X_3983_ _1389_ _gen_int_sys_clk.clk_sys_r_bF$buf37_ _u_rf_if.wdata0_next_[0] vdd gnd DFFPOSX1
X_3563_ _573_ _212__bF$buf0 _572_ _570__bF$buf4 _1154_ vdd 
+ gnd
+ OAI22X1
X_3143_ _u_mem_serial.shift_reg_[4] _261_ vdd gnd INVX1
XFILL128550x39750 gnd vdd FILL
X_2834_ _u_rf_if.read_buf0_[5] _u_rf_if.read_buf0_[6] _u_rf_if.stream_active_bF$buf6_ _35_ vdd gnd MUX2X1
X_2414_ _u_cpu.bufreg.data_[0] _1518_ _1536__bF$buf3 _1537_ vdd gnd NAND3X1
X_3619_ _1066_ _1578_ _599_ _1124_ vdd gnd OAI21X1
X_3792_ _1124_ _gen_int_sys_clk.clk_sys_r_bF$buf31_ _u_cpu.alu.add_cy_r_ vdd gnd DFFPOSX1
X_3372_ _1536__bF$buf3 _424_ vdd gnd INVX2
XFILL_0__3412_ gnd vdd FILL
X_2643_ _1746_ _1692__bF$buf3 _1747_ vdd gnd NAND2X1
X_2223_ _u_cpu.decode.opcode_[0] _725_ vdd gnd INVX2
X_3848_ _1319_ _gen_int_sys_clk.clk_sys_r_bF$buf31_ _u_rf_if.read_buf0_[29] vdd gnd DFFPOSX1
X_3428_ _712_ _470_ _471_ vdd gnd NOR2X1
X_3008_ _165_ _162_ _1070__bF$buf5 _1301_ vdd gnd AOI21X1
X_3181_ _288_ _287_ _277_ _1251_ vdd gnd AOI21X1
X_1914_ _u_mem_serial.shift_reg_[0] _997_ _1009_ _996_ vdd gnd MUX2X1
XFILL129150x10950 gnd vdd FILL
X_2872_ _22__bF$buf4 _62_ _63_ _64_ vdd gnd OAI21X1
X_2452_ _1574_ _1572_ _1575_ vdd gnd NAND2X1
X_2032_ _u_mem_serial.shift_reg_[16] _u_cpu.bufreg2.dlo_[11] _994__bF$buf4 _895_ vdd gnd MUX2X1
X_3657_ _604_ _559_ _602__bF$buf3 _1091_ vdd gnd MUX2X1
X_3237_ _u_cpu.immdec.gen_immdec_w_eq_1.imm30_25_[2] _331_ _659__bF$buf1 _332_ vdd gnd MUX2X1
XFILL_0__2912_ gnd vdd FILL
XFILL_0__3450_ gnd vdd FILL
X_2928_ _u_rf_if.read_buf0_[29] _106_ vdd gnd INVX1
X_2508_ _1630_ _1631_ vdd gnd INVX1
X_2681_ _1772_ _u_rf_if.stream_cnt_[0] _1773_ _1382_ vdd gnd AOI21X1
X_2261_ _u_cpu.immdec.gen_immdec_w_eq_1.imm11_7_[4] _687_ vdd gnd INVX1
X_3886_ i_rst_n_bF$buf0 vdd _1094_ _gen_int_sys_clk.clk_sys_r_bF$buf12_ ibus_pending_rdt[3] vdd 
+ gnd
+ DFFSR
X_3466_ _499_ _501_ _450__bF$buf1 _1179_ vdd gnd MUX2X1
X_3046_ _192_ _193_ _1070__bF$buf4 _1291_ vdd gnd AOI21X1
XFILL_0__2721_ gnd vdd FILL
XFILL_0__2301_ gnd vdd FILL
X_1952_ _u_mem_serial.shift_reg_[6] _u_cpu.bufreg2.dlo_[1] _994__bF$buf3 _965_ vdd gnd MUX2X1
X_2737_ _1783__bF$buf5 _1814_ _1815_ _1816_ vdd gnd OAI21X1
X_2317_ ren _682_ _606_ vdd gnd NOR2X1
X_2490_ _1612_ _1611_ _1613_ vdd gnd NOR2X1
X_2070_ _862_ i_rst_n_bF$buf3 _1434_ vdd gnd AND2X2
X_3695_ _629_ _267_ _282_ _630_ vdd gnd NAND3X1
X_3275_ _683_ _350_ _659__bF$buf3 _362_ vdd gnd NAND3X1
XFILL_0__3315_ gnd vdd FILL
X_2966_ _1685_ _1686_ _132_ _133_ vdd gnd OAI21X1
X_2546_ _1487_ _732_ _1666_ vdd gnd AND2X2
X_2126_ _813_ i_rst_n_bF$buf6 _1427_ vdd gnd AND2X2
X_3084_ _u_mem_serial.shift_reg_[37] _218_ _1009_ _219_ vdd gnd MUX2X1
XFILL_0__3124_ gnd vdd FILL
X_1990_ _932_ i_rst_n_bF$buf2 _1444_ vdd gnd AND2X2
X_2775_ _u_rf_if.read_buf1_[21] _u_rf_if.read_buf1_[22] _u_rf_if.stream_active_bF$buf1_ _1844_ vdd gnd MUX2X1
X_2355_ _606_ _671_ _1483_ vdd gnd NAND2X1
X_4098_ _1242_ _gen_int_sys_clk.clk_sys_r_bF$buf38_ _u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20_[0] vdd gnd DFFPOSX1
X_2584_ _u_rf_if.write_wait_[0] _1697_ vdd gnd INVX1
X_2164_ _u_cpu.bne_or_bge_ _u_cpu.bufreg.data_[0] _780_ _779_ vdd gnd OAI21X1
X_3789_ _1291_ i_clk_fast_bF$buf5 _u_rf_if.last_req_key_[3] vdd gnd DFFPOSX1
X_3369_ _421_ _422_ _1536__bF$buf3 _1197_ vdd gnd MUX2X1
XFILL_0__2624_ gnd vdd FILL
XFILL_0__2204_ gnd vdd FILL
XFILL_0__3582_ gnd vdd FILL
XFILL_0__3162_ gnd vdd FILL
X_2393_ _1507_ _1515_ _1513_ _1516_ vdd gnd AOI21X1
X_3598_ _u_cpu.ctrl.o_ibus_adr_[5] _591_ vdd gnd INVX1
X_3178_ _1523_ _1692__bF$buf0 _141_ _1252_ vdd gnd OAI21X1
XFILL_0__2013_ gnd vdd FILL
XFILL_0__3638_ gnd vdd FILL
X_2869_ _61_ i_rst_n_bF$buf8 _1336_ vdd gnd AND2X2
X_2449_ _u_cpu.alu.add_cy_r_ _1561_ _1572_ vdd gnd NAND2X1
X_2029_ _903_ _973__bF$buf2 _898_ _897_ vdd gnd OAI21X1
X_3810_ _u_cpu.state.ibus_cyc_ _1069_ vdd gnd INVX1
XFILL_0__2662_ gnd vdd FILL
XFILL_0__3447_ gnd vdd FILL
XFILL_0__3027_ gnd vdd FILL
X_1893_ _u_mem_serial.bit_count_[0] _1038_ _1017_ vdd gnd NOR2X1
X_2678_ _1771_ _1383_ vdd gnd INVX1
X_2258_ _691_ _695_ _697_ _690_ vdd gnd OAI21X1
XFILL_0__2471_ gnd vdd FILL
XFILL_0__2051_ gnd vdd FILL
X_1949_ _974_ _973__bF$buf5 _968_ _967_ vdd gnd OAI21X1
X_2487_ _u_cpu.state.cnt_r_[2] _1554_ _1609_ _1610_ vdd gnd NAND3X1
X_2067_ _1023__bF$buf2 _865_ _864_ vdd gnd NOR2X1
XFILL_0__2947_ gnd vdd FILL
XFILL_0__2527_ gnd vdd FILL
XFILL_0__3485_ gnd vdd FILL
XFILL_0__3065_ gnd vdd FILL
X_3904_ _1154_ _gen_int_sys_clk.clk_sys_r_bF$buf27_ _u_cpu.ctrl.o_ibus_adr_[23] vdd gnd DFFPOSX1
X_2296_ _656_ _668_ _653_ _652_ vdd gnd NAND3X1
XFILL_0__1971_ gnd vdd FILL
XFILL_0__2336_ gnd vdd FILL
X_4022_ _1205_ _gen_int_sys_clk.clk_sys_r_bF$buf42_ _u_cpu.bufreg.data_[11] vdd gnd DFFPOSX1
X_1987_ _1023__bF$buf3 _935_ _934_ vdd gnd NOR2X1
X_3713_ _1452_ i_clk_fast_bF$buf6 _u_mem_serial.shift_reg_[3] vdd gnd DFFPOSX1
XFILL_0__2985_ gnd vdd FILL
X_3942_ _1170_ _gen_int_sys_clk.clk_sys_r_bF$buf13_ _u_cpu.bufreg2.dlo_[10] vdd gnd DFFPOSX1
X_3522_ _540_ _543_ _450__bF$buf4 _1165_ vdd gnd MUX2X1
X_3102_ _u_cpu.ctrl.i_jump_ _228_ vdd gnd INVX1
XFILL_0__2374_ gnd vdd FILL
X_4060_ _1223_ _gen_int_sys_clk.clk_sys_r_bF$buf4_ _u_cpu.immdec.gen_immdec_w_eq_1.imm11_7_[4] vdd gnd DFFPOSX1
XFILL129150x150 gnd vdd FILL
X_3751_ i_rst_n_bF$buf10 vdd _1108_ _gen_int_sys_clk.clk_sys_r_bF$buf11_ ibus_pending_rdt[17] vdd 
+ gnd
+ DFFSR
X_3331_ _402_ _403_ _1536__bF$buf1 _1216_ vdd gnd MUX2X1
X_2602_ _1710_ _1711_ _1712_ vdd gnd AND2X2
XFILL_0__3388_ gnd vdd FILL
X_3807_ _1300_ _gen_int_sys_clk.clk_sys_r_bF$buf37_ _u_rf_if.rreg0_latched_[3] vdd gnd DFFPOSX1
X_2199_ _u_mem_serial.state_[0] _1047_ _748_ vdd gnd NOR2X1
XFILL_0__1874_ gnd vdd FILL
X_3980_ _1187_ _gen_int_sys_clk.clk_sys_r_bF$buf0_ _u_cpu.bufreg2.dhi_[4] vdd gnd DFFPOSX1
X_3560_ _u_cpu.ctrl.o_ibus_adr_[24] _572_ vdd gnd INVX1
X_3140_ ibus_pending_ack_bF$buf1 _258_ _259_ vdd gnd NAND2X1
XFILL_0__2239_ gnd vdd FILL
XFILL_0__3600_ gnd vdd FILL
X_2831_ _u_rf_if.read_buf0_[3] _22__bF$buf6 _33_ vdd gnd NAND2X1
X_2411_ _u_cpu.state.init_done_ _1063_ _1065_ _1534_ vdd gnd AOI21X1
XFILL_0__3197_ gnd vdd FILL
XFILL128550x93750 gnd vdd FILL
X_3616_ _1607_ _598_ vdd gnd INVX1
X_2640_ _673__bF$buf3 _674__bF$buf0 _u_rf_if.rreg1_latched_[4] _1744_ vdd gnd OAI21X1
X_2220_ rf_write_drain_busy _728_ vdd gnd INVX1
X_3845_ i_rst_n_bF$buf11 _1063_ _1062_ _1061_ vdd gnd NAND3X1
X_3425_ _716_ _715_ _468_ vdd gnd NAND2X1
X_3005_ ibus_pending_rdt[17] _163_ vdd gnd INVX1
X_1911_ _1000_ _1002__bF$buf2 _999_ vdd gnd NOR2X1
XFILL_0__2697_ gnd vdd FILL
XFILL_0__2277_ gnd vdd FILL
X_3654_ ibus_pending_rdt[1] _603_ vdd gnd INVX1
X_3234_ _315_ _328_ _329_ _1239_ vdd gnd AOI21X1
X_4019_ _1204_ _gen_int_sys_clk.clk_sys_r_bF$buf25_ _u_cpu.bufreg.data_[10] vdd gnd DFFPOSX1
XFILL_0__2086_ gnd vdd FILL
X_2925_ _u_rf_if.stream_active_bF$buf5_ _1738_ _103_ _104_ vdd gnd OAI21X1
X_2505_ _738_ _1628_ vdd gnd INVX1
X_3883_ _1336_ _gen_int_sys_clk.clk_sys_r_bF$buf40_ _u_rf_if.read_buf0_[12] vdd gnd DFFPOSX1
X_3463_ _u_cpu.bufreg2.dlo_[19] _499_ vdd gnd INVX1
X_3043_ _1076_ _191_ vdd gnd INVX1
XFILL_0__3503_ gnd vdd FILL
X_2734_ _1813_ i_rst_n_bF$buf7 _1369_ vdd gnd AND2X2
X_2314_ _u_rf_if.last_req_key_[4] _611_ _610_ _609_ vdd gnd NAND3X1
X_3939_ _1364_ _gen_int_sys_clk.clk_sys_r_bF$buf29_ _u_rf_if.read_buf1_[14] vdd gnd DFFPOSX1
X_3519_ _u_mem_serial.shift_reg_[5] _541_ vdd gnd INVX1
X_3692_ _u_mem_serial.shift_reg_[1] _u_mem_serial.shift_reg_[0] _627_ vdd gnd NAND2X1
X_3272_ _351_ _683_ _359_ _1231_ vdd gnd AOI21X1
X_4057_ _1430_ i_clk_fast_bF$buf7 _u_mem_serial.shift_reg_[25] vdd gnd DFFPOSX1
XFILL_0__3312_ gnd vdd FILL
X_2963_ _u_rf_if.rreg1_latched_[1] _130_ vdd gnd INVX1
X_2543_ _736_ _1664_ vdd gnd INVX1
X_2123_ _1023__bF$buf1 _816_ _815_ vdd gnd NOR2X1
X_3748_ _1267_ _gen_int_sys_clk.clk_sys_r_bF$buf14_ _u_cpu.state.ibus_cyc_ vdd gnd DFFPOSX1
X_3328_ _u_cpu.bufreg.data_[23] _402_ vdd gnd INVX1
XFILL128550x25350 gnd vdd FILL
X_3081_ _216_ i_rst_n_bF$buf8 _1279_ vdd gnd AND2X2
X_2772_ _u_rf_if.read_buf1_[19] _1783__bF$buf2 _1842_ vdd gnd NAND2X1
X_2352_ _659__bF$buf4 _672_ _1479_ _1480_ vdd gnd AOI21X1
X_3977_ _1384_ _gen_int_sys_clk.clk_sys_r_bF$buf32_ _u_rf_if.rcnt_[0] vdd gnd DFFPOSX1
X_3557_ _568_ _212__bF$buf0 _569_ _570__bF$buf4 _1157_ vdd 
+ gnd
+ OAI22X1
X_3137_ _256_ _1692__bF$buf1 _257_ vdd gnd NAND2X1
XFILL_0__2812_ gnd vdd FILL
X_4095_ _1449_ i_clk_fast_bF$buf6 _u_mem_serial.shift_reg_[6] vdd gnd DFFPOSX1
XFILL_0__3350_ gnd vdd FILL
X_2828_ _22__bF$buf0 _29_ _30_ _31_ vdd gnd OAI21X1
X_2408_ _1519_ _1529_ _1531_ vdd gnd NAND2X1
X_2581_ _1695_ _1691_ _1070__bF$buf5 _1404_ vdd gnd AOI21X1
X_2161_ _791_ _973__bF$buf4 _782_ _781_ vdd gnd OAI21X1
X_3786_ _1122_ _gen_int_sys_clk.clk_sys_r_bF$buf33_ _u_cpu.mem_if.signbit_ vdd gnd DFFPOSX1
X_3366_ _u_cpu.bufreg.data_[4] _421_ vdd gnd INVX1
XFILL129150x86550 gnd vdd FILL
XFILL_0__2201_ gnd vdd FILL
X_2637_ _1714_ _1742_ vdd gnd INVX2
X_2217_ raddr[5] _731_ vdd gnd INVX1
X_2390_ _1506_ _1499_ _1512_ _1513_ vdd gnd AOI21X1
XFILL128850x68550 gnd vdd FILL
X_3595_ _589_ _212__bF$buf1 _588_ _570__bF$buf0 _1138_ vdd 
+ gnd
+ OAI22X1
X_3175_ _u_mem_serial.shift_reg_[14] ibus_pending_ack_bF$buf0 _284_ _285_ vdd gnd OAI21X1
XFILL_0__2850_ gnd vdd FILL
X_1908_ _1023__bF$buf5 _1002_ vdd gnd INVX8
XFILL_0__3215_ gnd vdd FILL
X_2866_ _u_rf_if.read_buf0_[13] _u_rf_if.read_buf0_[14] _u_rf_if.stream_active_bF$buf2_ _59_ vdd gnd MUX2X1
X_2446_ _1568_ _1566_ _1569_ vdd gnd NAND2X1
X_2026_ _u_cpu.bufreg.data_[16] _u_cpu.ctrl.o_ibus_adr_[16] _1006__bF$buf4 _900_ vdd gnd MUX2X1
X_1890_ _u_mem_serial.bit_count_[3] _u_mem_serial.bit_count_[2] _1020_ vdd gnd NOR2X1
X_2675_ _1670_ _1671_ _1508_ _1769_ vdd gnd OAI21X1
X_2255_ _u_cpu.bufreg.i_right_shift_op_ _694_ _693_ vdd gnd NOR2X1
XFILL_0__2715_ gnd vdd FILL
X_1946_ _u_cpu.bufreg.data_[6] _u_cpu.ctrl.o_ibus_adr_[6] _1006__bF$buf3 _970_ vdd gnd MUX2X1
XFILL_0__3673_ gnd vdd FILL
XFILL_0__3253_ gnd vdd FILL
X_2484_ _1008_ _1606_ _1607_ vdd gnd NOR2X1
X_2064_ _u_mem_serial.shift_reg_[20] _u_cpu.bufreg2.dlo_[15] _994__bF$buf4 _867_ vdd gnd MUX2X1
X_3689_ _292_ _624_ vdd gnd INVX1
X_3269_ _356_ _952_ ibus_pending_ack_bF$buf3 _357_ vdd gnd MUX2X1
XFILL_0__2104_ gnd vdd FILL
XFILL_0__3062_ gnd vdd FILL
X_3901_ _1345_ _gen_int_sys_clk.clk_sys_r_bF$buf5_ _u_rf_if.read_buf0_[3] vdd gnd DFFPOSX1
X_2293_ ren _687_ _655_ vdd gnd NOR2X1
X_3498_ _u_cpu.bufreg2.dlo_[10] _525_ vdd gnd INVX1
X_3078_ _u_cpu.ctrl.i_jump_ _1613_ _214_ _215_ vdd gnd OAI21X1
XFILL129150x18150 gnd vdd FILL
XFILL_0__3538_ gnd vdd FILL
XFILL_0__3118_ gnd vdd FILL
X_1984_ _u_mem_serial.shift_reg_[10] _u_cpu.bufreg2.dlo_[5] _994__bF$buf5 _937_ vdd gnd MUX2X1
X_2769_ _1783__bF$buf0 _1838_ _1839_ _1840_ vdd gnd OAI21X1
X_2349_ _u_rf_if.last_req_key_[7] _605_ _1476_ _1477_ vdd gnd OAI21X1
X_3710_ _gen_int_sys_clk.clk_div_[3] _615_ _639_ vdd gnd NOR2X1
XFILL_0__2562_ gnd vdd FILL
XFILL_0__2142_ gnd vdd FILL
X_2998_ _157_ _154_ _1070__bF$buf0 _1303_ vdd gnd AOI21X1
X_2578_ ibus_pending_rdt[19] _1693_ vdd gnd INVX1
X_2158_ _785_ _784_ vdd gnd INVX1
XFILL_0__3576_ gnd vdd FILL
X_2387_ _u_rf_if.o_waddr_[0] _u_rf_if.o_waddr_[3] _1510_ vdd gnd NOR2X1
XFILL_0__2427_ gnd vdd FILL
XFILL_0__2007_ gnd vdd FILL
XFILL_0__3385_ gnd vdd FILL
X_3804_ _1130_ _gen_int_sys_clk.clk_sys_r_bF$buf18_ _u_cpu.ctrl.o_ibus_adr_[27] vdd gnd DFFPOSX1
X_2196_ _1025_ _1021_ _751_ vdd gnd NAND2X1
X_1887_ _u_mem_serial.state_[1] _1024_ _1023_ vdd gnd NOR2X1
XFILL_0__1927_ gnd vdd FILL
X_3613_ _597_ _212__bF$buf4 _596_ _570__bF$buf3 _1128_ vdd 
+ gnd
+ OAI22X1
XFILL_0__2885_ gnd vdd FILL
XFILL_0__2465_ gnd vdd FILL
X_3842_ _1316_ _gen_int_sys_clk.clk_sys_r_bF$buf24_ _u_rf_if.o_waddr_[2] vdd gnd DFFPOSX1
X_3422_ mem_dbus_ack_bF$buf3 _465_ _461_ _466_ vdd gnd OAI21X1
X_3002_ _160_ _1692__bF$buf1 _161_ vdd gnd NAND2X1
XFILL_0__2274_ gnd vdd FILL
XFILL_0__1965_ gnd vdd FILL
X_3651_ _262_ _261_ _602__bF$buf3 _1095_ vdd gnd MUX2X1
X_3231_ _326_ _826_ ibus_pending_ack_bF$buf3 _327_ vdd gnd MUX2X1
X_4016_ _1258_ i_clk_fast_bF$buf2 _u_mem_serial.bit_count_[6] vdd gnd DFFPOSX1
X_2922_ _u_rf_if.read_buf0_[28] _101_ vdd gnd INVX1
X_2502_ _1516_ _u_rf_if.wdata0_r_[0] _u_rf_if.tx_state_[1] _1625_ vdd gnd AOI21X1
XFILL_0__3288_ gnd vdd FILL
X_3707_ _1070__bF$buf3 _1069_ _1060_ _1059_ vdd gnd OAI21X1
X_2099_ _1023__bF$buf1 _837_ _836_ vdd gnd NOR2X1
X_3880_ _1148_ _gen_int_sys_clk.clk_sys_r_bF$buf27_ _u_cpu.ctrl.o_ibus_adr_[17] vdd gnd DFFPOSX1
X_3460_ mem_dbus_ack_bF$buf5 _875_ _497_ vdd gnd NAND2X1
X_3040_ _736_ _1640_ _1666_ _189_ vdd gnd NAND3X1
XFILL_0__2139_ gnd vdd FILL
X_2731_ _u_rf_if.read_buf1_[10] _u_rf_if.read_buf1_[11] _u_rf_if.stream_active_bF$buf0_ _1811_ vdd gnd MUX2X1
X_2311_ _644_ _633_ _612_ vdd gnd NAND2X1
X_3936_ _1167_ _gen_int_sys_clk.clk_sys_r_bF$buf12_ _u_cpu.bufreg2.dlo_[7] vdd gnd DFFPOSX1
X_3516_ mem_dbus_ack_bF$buf0 _u_cpu.bufreg2.dlo_[7] _538_ _539_ vdd gnd OAI21X1
XFILL_0__2788_ gnd vdd FILL
X_4054_ _1220_ _gen_int_sys_clk.clk_sys_r_bF$buf10_ _u_cpu.bufreg.data_[26] vdd gnd DFFPOSX1
X_2960_ raddr[4] _1680_ i_rst_n_bF$buf1 _128_ vdd gnd OAI21X1
X_2540_ _1660_ _1661_ _1662_ vdd gnd OR2X2
X_2120_ _u_mem_serial.shift_reg_[27] _u_cpu.bufreg2.dlo_[22] _994__bF$buf1 _818_ vdd gnd MUX2X1
X_3745_ _1265_ i_clk_fast_bF$buf1 _u_mem_serial.req_pending_ vdd gnd DFFPOSX1
X_3325_ _399_ _400_ _1536__bF$buf0 _1219_ vdd gnd MUX2X1
XFILL_0__2177_ gnd vdd FILL
XFILL128550x46950 gnd vdd FILL
X_3974_ _1186_ _gen_int_sys_clk.clk_sys_r_bF$buf0_ _u_cpu.bufreg2.dhi_[3] vdd gnd DFFPOSX1
X_3554_ _u_cpu.ctrl.o_ibus_adr_[26] _568_ vdd gnd INVX1
X_3134_ _694_ _1692__bF$buf0 _254_ _1264_ vdd gnd OAI21X1
X_4092_ _1239_ _gen_int_sys_clk.clk_sys_r_bF$buf11_ _u_cpu.immdec.gen_immdec_w_eq_1.imm30_25_[2] vdd gnd DFFPOSX1
X_2825_ _28_ i_rst_n_bF$buf11 _1347_ vdd gnd AND2X2
X_2405_ _1523_ _1525_ _1527_ _1528_ vdd gnd OAI21X1
X_3783_ _1288_ i_clk_fast_bF$buf5 _u_rf_if.last_req_key_[6] vdd gnd DFFPOSX1
X_3363_ _418_ _419_ _1536__bF$buf1 _1200_ vdd gnd MUX2X1
XFILL_0__3403_ gnd vdd FILL
X_2634_ _u_rf_if.stream_active_bF$buf5_ _1070__bF$buf6 _1740_ vdd gnd NOR2X1
X_2214_ _u_rf_if.wen0_r_ _734_ vdd gnd INVX1
X_3839_ _1138_ _gen_int_sys_clk.clk_sys_r_bF$buf18_ _u_cpu.ctrl.o_ibus_adr_[7] vdd gnd DFFPOSX1
X_3419_ _768_ _712_ _463_ vdd gnd NOR2X1
X_3592_ _u_cpu.ctrl.o_ibus_adr_[8] _588_ vdd gnd INVX1
X_3172_ _1063_ _282_ _659__bF$buf2 _1254_ vdd gnd MUX2X1
X_1905_ _1006__bF$buf0 _1005_ vdd gnd INVX1
X_2863_ _u_rf_if.read_buf0_[11] _22__bF$buf1 _57_ vdd gnd NAND2X1
X_2443_ _1561_ _1565_ _1566_ vdd gnd NAND2X1
X_2023_ _u_mem_serial.shift_reg_[16] _903_ vdd gnd INVX1
X_3648_ _364_ _966_ _602__bF$buf0 _1098_ vdd gnd MUX2X1
X_3228_ _u_cpu.immdec.gen_immdec_w_eq_1.imm30_25_[3] _315_ _325_ vdd gnd NOR2X1
XFILL_0__2903_ gnd vdd FILL
XFILL_0__3441_ gnd vdd FILL
X_2919_ _u_rf_if.read_buf0_[25] _22__bF$buf0 _99_ vdd gnd NAND2X1
X_2672_ _1698_ _1692__bF$buf4 _1767_ vdd gnd NOR2X1
X_2252_ _704_ _696_ vdd gnd INVX1
X_3877_ _1333_ _gen_int_sys_clk.clk_sys_r_bF$buf40_ _u_rf_if.read_buf0_[15] vdd gnd DFFPOSX1
X_3457_ mem_dbus_ack_bF$buf5 _u_cpu.bufreg2.dlo_[22] _494_ _495_ vdd gnd OAI21X1
X_3037_ _736_ _186_ _1666_ _187_ vdd gnd NAND3X1
X_1943_ _1009_ _973_ vdd gnd INVX8
XFILL_0__3250_ gnd vdd FILL
X_2728_ _u_rf_if.read_buf1_[8] _1783__bF$buf5 _1809_ vdd gnd NAND2X1
X_2308_ ren _683_ _640_ vdd gnd NOR2X1
X_2481_ _705_ _1603_ _1604_ vdd gnd NAND2X1
X_2061_ _875_ _973__bF$buf6 _870_ _869_ vdd gnd OAI21X1
X_3686_ _621_ _619_ _1079_ vdd gnd AND2X2
X_3266_ _659__bF$buf1 _353_ _354_ _355_ vdd gnd OAI21X1
XFILL_0__2941_ gnd vdd FILL
XFILL_0__3306_ gnd vdd FILL
X_2957_ _u_rf_if.issue_idx_[5] _1679_ raddr[3] _126_ vdd gnd OAI21X1
X_2537_ _1642_ _1491_ _1659_ vdd gnd NOR2X1
X_2117_ _826_ _973__bF$buf3 _821_ _820_ vdd gnd OAI21X1
X_2290_ _670_ _658_ vdd gnd INVX1
X_3495_ mem_dbus_ack_bF$buf6 _938_ _523_ vdd gnd NAND2X1
X_3075_ _1065_ _696_ i_rst_n_bF$buf11 _212_ vdd gnd OAI21X1
XFILL_0__2750_ gnd vdd FILL
XFILL_0__2330_ gnd vdd FILL
XFILL_0__3115_ gnd vdd FILL
X_1981_ _945_ _973__bF$buf1 _940_ _939_ vdd gnd OAI21X1
X_2766_ _1837_ i_rst_n_bF$buf7 _1361_ vdd gnd AND2X2
X_2346_ _1472_ _1473_ _1470_ _1469_ _1474_ vdd 
+ gnd
+ AOI22X1
XFILL129150x39750 gnd vdd FILL
XFILL_0__2806_ gnd vdd FILL
X_4089_ _1446_ i_clk_fast_bF$buf8 _u_mem_serial.shift_reg_[9] vdd gnd DFFPOSX1
XFILL128850x54150 gnd vdd FILL
X_2995_ ibus_pending_rdt[15] _155_ vdd gnd INVX1
X_2575_ _1070__bF$buf0 _1689_ _1690_ _1405_ vdd gnd OAI21X1
X_2155_ _u_cpu.bufreg2.i_op_b_sel_ _787_ vdd gnd INVX2
XFILL_0__2615_ gnd vdd FILL
XFILL_0__3153_ gnd vdd FILL
X_2384_ _1499_ _1506_ _1507_ vdd gnd NAND2X1
X_3589_ _586_ _212__bF$buf4 _585_ _570__bF$buf3 _1141_ vdd 
+ gnd
+ OAI22X1
X_3169_ ibus_pending_rdt[6] _280_ vdd gnd INVX1
XFILL_0__2004_ gnd vdd FILL
XFILL_0__3629_ gnd vdd FILL
X_3801_ _1297_ _gen_int_sys_clk.clk_sys_r_bF$buf1_ _u_rf_if.issue_chunk_[1] vdd gnd DFFPOSX1
X_2193_ _754_ _973__bF$buf5 _753_ vdd gnd NAND2X1
X_3398_ _424_ _443_ _444_ _1190_ vdd gnd OAI21X1
XFILL_0__2653_ gnd vdd FILL
XFILL_0__3018_ gnd vdd FILL
X_1884_ _u_mem_serial.bit_count_[6] _1026_ vdd gnd INVX1
XFILL_0__3191_ gnd vdd FILL
X_2669_ _u_rf_if.stream_active_bF$buf3_ _u_rf_if.ready_pulse_ i_rst_n_bF$buf9 _1766_ vdd gnd OAI21X1
X_2249_ _727_ _700_ _699_ vdd gnd NAND2X1
X_3610_ _u_cpu.ctrl.o_ibus_adr_[30] _596_ vdd gnd INVX1
XFILL_0__2042_ gnd vdd FILL
XFILL_0__3667_ gnd vdd FILL
X_2898_ _u_rf_if.read_buf0_[21] _u_rf_if.read_buf0_[22] _u_rf_if.stream_active_bF$buf1_ _83_ vdd gnd MUX2X1
X_2478_ _1595_ _1600_ _1592_ _1601_ vdd gnd OAI21X1
X_2058_ _u_cpu.bufreg.data_[20] _u_cpu.ctrl.o_ibus_adr_[20] _1006__bF$buf1 _872_ vdd gnd MUX2X1
XFILL_0__2938_ gnd vdd FILL
XFILL_0__2518_ gnd vdd FILL
XFILL_0__3476_ gnd vdd FILL
XFILL_0__3056_ gnd vdd FILL
X_2287_ _690_ _662_ _676_ _661_ vdd gnd OAI21X1
XFILL_0__1962_ gnd vdd FILL
X_4013_ _1202_ _gen_int_sys_clk.clk_sys_r_bF$buf16_ _u_cpu.bufreg.data_[8] vdd gnd DFFPOSX1
XFILL_0__2080_ gnd vdd FILL
X_1978_ _u_cpu.bufreg.data_[10] _u_cpu.ctrl.o_ibus_adr_[10] _1006__bF$buf1 _942_ vdd gnd MUX2X1
X_3704_ _u_rf_if.o_waddr_[0] _u_rf_if.o_waddr_[3] _635_ _636_ vdd gnd NAND3X1
X_2096_ _u_mem_serial.shift_reg_[24] _u_cpu.bufreg2.dlo_[19] _994__bF$buf1 _839_ vdd gnd MUX2X1
XFILL_0__2976_ gnd vdd FILL
X_3933_ _1361_ _gen_int_sys_clk.clk_sys_r_bF$buf43_ _u_rf_if.read_buf1_[17] vdd gnd DFFPOSX1
X_3513_ _534_ _536_ _450__bF$buf3 _1167_ vdd gnd MUX2X1
XFILL_0__2365_ gnd vdd FILL
X_4051_ _1219_ _gen_int_sys_clk.clk_sys_r_bF$buf10_ _u_cpu.bufreg.data_[25] vdd gnd DFFPOSX1
X_3742_ _1263_ _gen_int_sys_clk.clk_sys_r_bF$buf33_ _u_cpu.bne_or_bge_ vdd gnd DFFPOSX1
X_3322_ _u_cpu.bufreg.data_[26] _399_ vdd gnd INVX1
XFILL_0__3379_ gnd vdd FILL
XFILL_0__1865_ gnd vdd FILL
X_3971_ _1380_ _gen_int_sys_clk.clk_sys_r_bF$buf28_ _u_rf_if.stream_cnt_[2] vdd gnd DFFPOSX1
X_3551_ _697_ _1565_ _566_ vdd gnd NAND2X1
X_3131_ ibus_pending_ack_bF$buf3 _251_ _252_ vdd gnd NAND2X1
X_2822_ _u_rf_if.read_buf0_[2] _u_rf_if.read_buf0_[3] _u_rf_if.stream_active_bF$buf7_ _26_ vdd gnd MUX2X1
X_2402_ _1524_ _1525_ vdd gnd INVX1
XFILL_0__3188_ gnd vdd FILL
X_3607_ _1008_ _212__bF$buf2 _995_ _570__bF$buf2 _1131_ vdd 
+ gnd
+ OAI22X1
X_3780_ i_rst_n_bF$buf10 vdd _1119_ _gen_int_sys_clk.clk_sys_r_bF$buf11_ ibus_pending_rdt[28] vdd 
+ gnd
+ DFFSR
X_3360_ _u_cpu.bufreg.data_[7] _418_ vdd gnd INVX1
XFILL_0__2879_ gnd vdd FILL
X_2631_ _u_rf_if.o_waddr_[3] _1736_ _1737_ _1396_ vdd gnd AOI21X1
X_2211_ _741_ _738_ _737_ vdd gnd NAND2X1
X_3836_ _1313_ _gen_int_sys_clk.clk_sys_r_bF$buf41_ raddr[2] vdd gnd DFFPOSX1
X_3416_ _450__bF$buf1 _456_ _460_ _459_ _1188_ vdd 
+ gnd
+ AOI22X1
X_1902_ _u_cpu.ctrl.pc_ _1008_ vdd gnd INVX1
XFILL_0__2688_ gnd vdd FILL
XFILL_0__2268_ gnd vdd FILL
X_2860_ _22__bF$buf1 _53_ _54_ _55_ vdd gnd OAI21X1
X_2440_ _1562_ _1563_ vdd gnd INVX1
X_2020_ _908_ _906_ _973__bF$buf0 _905_ vdd gnd OAI21X1
X_3645_ _352_ _945_ _602__bF$buf4 _1101_ vdd gnd MUX2X1
X_3225_ ibus_pending_rdt[28] _322_ vdd gnd INVX1
XFILL_0__2077_ gnd vdd FILL
X_2916_ _22__bF$buf0 _95_ _96_ _97_ vdd gnd OAI21X1
X_3874_ vdd i_rst_n_bF$buf0 _1091_ _gen_int_sys_clk.clk_sys_r_bF$buf33_ ibus_pending_rdt[0] vdd 
+ gnd
+ DFFSR
X_3454_ _490_ _492_ _450__bF$buf0 _1182_ vdd gnd MUX2X1
X_3034_ _u_rf_if.last_req_key_[0] _1488_ _185_ vdd gnd NAND2X1
X_1940_ _u_mem_serial.shift_reg_[5] _976_ _1009_ _975_ vdd gnd MUX2X1
X_2725_ _1783__bF$buf5 _1805_ _1806_ _1807_ vdd gnd OAI21X1
X_2305_ raddr[6] _643_ vdd gnd INVX1
X_3683_ _618_ _614_ _1056_ _619_ vdd gnd OAI21X1
X_3263_ ibus_pending_rdt[10] _352_ vdd gnd INVX1
X_4048_ _1426_ i_clk_fast_bF$buf7 _u_mem_serial.shift_reg_[29] vdd gnd DFFPOSX1
XFILL128550x32550 gnd vdd FILL
X_2954_ _u_rf_if.issue_idx_[5] _1679_ raddr[2] _124_ vdd gnd OAI21X1
X_2534_ _1636_ _1656_ _1657_ vdd gnd NAND2X1
X_2114_ _u_cpu.bufreg.data_[27] _u_cpu.ctrl.o_ibus_adr_[27] _1006__bF$buf4 _823_ vdd gnd MUX2X1
X_3739_ _1260_ _gen_int_sys_clk.clk_sys_r_bF$buf17_ _u_cpu.decode.opcode_[1] vdd gnd DFFPOSX1
X_3319_ _397_ _396_ _1536__bF$buf0 _1222_ vdd gnd MUX2X1
X_3492_ mem_dbus_ack_bF$buf4 _u_cpu.bufreg2.dlo_[13] _520_ _521_ vdd gnd OAI21X1
X_3072_ _1636_ _210_ vdd gnd INVX1
XFILL_0__3532_ gnd vdd FILL
X_2763_ _u_rf_if.read_buf1_[18] _u_rf_if.read_buf1_[19] _u_rf_if.stream_active_bF$buf4_ _1835_ vdd gnd MUX2X1
X_2343_ _734_ _733_ _1471_ vdd gnd NOR2X1
X_3968_ _1183_ _gen_int_sys_clk.clk_sys_r_bF$buf13_ _u_cpu.bufreg.i_shamt_[0] vdd gnd DFFPOSX1
X_3548_ mem_dbus_ack_bF$buf6 _u_cpu.bufreg.i_shamt_[0] _563_ _564_ vdd gnd OAI21X1
X_3128_ _1057_ _1054_ i_rst_n_bF$buf8 _250_ vdd gnd OAI21X1
XFILL_0__2803_ gnd vdd FILL
X_4086_ _1236_ _gen_int_sys_clk.clk_sys_r_bF$buf4_ rreg1[3] vdd gnd DFFPOSX1
XFILL129150x93750 gnd vdd FILL
XFILL_0__3341_ gnd vdd FILL
X_2819_ _u_rf_if.read_buf0_[0] _22__bF$buf5 _24_ vdd gnd NAND2X1
X_2992_ _152_ _1692__bF$buf3 _153_ vdd gnd NAND2X1
X_2572_ _1686_ _1685_ _1688_ vdd gnd NOR2X1
X_2152_ _994__bF$buf3 _790_ vdd gnd INVX1
X_3777_ _1285_ i_clk_fast_bF$buf5 _u_rf_if.last_req_key_[9] vdd gnd DFFPOSX1
X_3357_ _415_ _416_ _1536__bF$buf2 _1203_ vdd gnd MUX2X1
XFILL128850x75750 gnd vdd FILL
XCLKBUF1_insert47 i_clk_fast i_clk_fast_bF$buf8 vdd gnd CLKBUF1
XCLKBUF1_insert48 i_clk_fast i_clk_fast_bF$buf7 vdd gnd CLKBUF1
XCLKBUF1_insert49 i_clk_fast i_clk_fast_bF$buf6 vdd gnd CLKBUF1
X_2628_ _u_rf_if.o_waddr_[1] _1734_ _1735_ vdd gnd NAND2X1
X_2208_ _u_rf_if.tx_state_[1] _u_rf_if.tx_state_[0] _740_ vdd gnd NOR2X1
X_2381_ _1500_ _694_ _1504_ vdd gnd NAND2X1
X_3586_ _u_cpu.ctrl.o_ibus_adr_[11] _585_ vdd gnd INVX1
X_3166_ _746_ _278_ vdd gnd INVX1
XFILL_0__2841_ gnd vdd FILL
XFILL_0__3206_ gnd vdd FILL
X_2857_ _52_ i_rst_n_bF$buf4 _1339_ vdd gnd AND2X2
X_2437_ _u_rf_if.stream_active_bF$buf7_ _1560_ vdd gnd INVX2
X_2017_ _1002__bF$buf4 _909_ _908_ vdd gnd NOR2X1
X_2190_ _973__bF$buf5 _757_ _756_ _1420_ vdd gnd AOI21X1
X_3395_ _u_cpu.bufreg.i_sh_signed_ _u_cpu.bufreg.data_[31] _442_ vdd gnd AND2X2
XFILL_0__2230_ gnd vdd FILL
X_1881_ _1029_ _1028_ _1049_ _1457_ vdd gnd AOI21X1
X_2666_ _u_rf_if.shift_rx_[1] _1763_ i_rst_n_bF$buf10 _1764_ vdd gnd OAI21X1
X_2246_ _703_ _720_ _702_ vdd gnd NOR2X1
XFILL_0__2706_ gnd vdd FILL
X_1937_ _u_cpu.bufreg.data_[5] _u_cpu.ctrl.o_ibus_adr_[5] _1006__bF$buf1 _978_ vdd gnd MUX2X1
XFILL_0__3664_ gnd vdd FILL
XFILL_0__3244_ gnd vdd FILL
X_2895_ _u_rf_if.read_buf0_[19] _22__bF$buf3 _81_ vdd gnd NAND2X1
X_2475_ _766_ _780_ _1598_ vdd gnd NAND2X1
X_2055_ _u_mem_serial.shift_reg_[20] _875_ vdd gnd INVX1
XFILL_0__3053_ gnd vdd FILL
XFILL129150x25350 gnd vdd FILL
X_2284_ _717_ _727_ _665_ _664_ vdd gnd AOI21X1
X_3489_ _516_ _518_ _450__bF$buf2 _1173_ vdd gnd MUX2X1
X_3069_ _740_ _1623_ i_rst_n_bF$buf10 _209_ vdd gnd OAI21X1
XFILL_0__2744_ gnd vdd FILL
X_4010_ _1201_ _gen_int_sys_clk.clk_sys_r_bF$buf16_ _u_cpu.bufreg.data_[7] vdd gnd DFFPOSX1
XFILL_0__3529_ gnd vdd FILL
XFILL_0__3109_ gnd vdd FILL
X_1975_ _u_mem_serial.shift_reg_[10] _945_ vdd gnd INVX1
X_3701_ _1058_ _1057_ vdd gnd INVX1
X_2093_ _847_ _973__bF$buf6 _842_ _841_ vdd gnd OAI21X1
X_3298_ _725_ _1520_ _380_ vdd gnd NAND2X1
XFILL_0__2553_ gnd vdd FILL
XFILL_0__2133_ gnd vdd FILL
XFILL_0__3091_ gnd vdd FILL
X_2989_ _673__bF$buf3 _674__bF$buf0 _u_rf_if.rreg1_latched_[3] _150_ vdd gnd OAI21X1
X_2569_ _u_rf_if.pending_read_ _1679_ _1686_ vdd gnd NAND2X1
X_2149_ _798_ _973__bF$buf4 _793_ _792_ vdd gnd OAI21X1
X_3930_ _1164_ _gen_int_sys_clk.clk_sys_r_bF$buf19_ _u_cpu.bufreg2.dlo_[4] vdd gnd DFFPOSX1
X_3510_ _u_cpu.bufreg2.dlo_[7] _534_ vdd gnd INVX1
XFILL_0__2609_ gnd vdd FILL
XFILL_0__3567_ gnd vdd FILL
X_2798_ _7_ i_rst_n_bF$buf5 _1353_ vdd gnd AND2X2
X_2378_ _705_ _1500_ _1501_ vdd gnd NAND2X1
XFILL_0__2418_ gnd vdd FILL
XFILL_0__2591_ gnd vdd FILL
X_2187_ _770_ _759_ _994__bF$buf0 _758_ vdd gnd MUX2X1
X_1878_ _u_mem_serial.bit_count_[4] _1032_ _1030_ vdd gnd NOR2X1
XFILL_0__1918_ gnd vdd FILL
X_3604_ _u_cpu.ctrl.o_ibus_adr_[2] _594_ vdd gnd INVX1
XFILL_0__2876_ gnd vdd FILL
XFILL_0__2456_ gnd vdd FILL
X_3833_ _1081_ i_clk_fast_bF$buf3 _gen_int_sys_clk.clk_div_[1] vdd gnd DFFPOSX1
X_3413_ _457_ _717_ _697_ _458_ vdd gnd OAI21X1
XFILL_0__1956_ gnd vdd FILL
X_3642_ _251_ _924_ _602__bF$buf1 _1104_ vdd gnd MUX2X1
X_3222_ _659__bF$buf3 _317_ _319_ _320_ vdd gnd OAI21X1
X_4007_ _1402_ _gen_int_sys_clk.clk_sys_r_bF$buf41_ _u_rf_if.write_wait_[0] vdd gnd DFFPOSX1
XFILL_0__2494_ gnd vdd FILL
X_2913_ _94_ i_rst_n_bF$buf5 _1325_ vdd gnd AND2X2
XFILL_0__3279_ gnd vdd FILL
X_3871_ _1330_ _gen_int_sys_clk.clk_sys_r_bF$buf29_ _u_rf_if.read_buf0_[18] vdd gnd DFFPOSX1
X_3451_ _u_cpu.bufreg2.dlo_[22] _490_ vdd gnd INVX1
X_3031_ _u_rf_if.issue_chunk_[3] _181_ _174_ _183_ vdd gnd OAI21X1
X_2722_ _1804_ i_rst_n_bF$buf7 _1372_ vdd gnd AND2X2
X_2302_ _647_ _646_ vdd gnd INVX1
X_3927_ _1358_ _gen_int_sys_clk.clk_sys_r_bF$buf43_ _u_rf_if.read_buf1_[20] vdd gnd DFFPOSX1
X_3507_ mem_dbus_ack_bF$buf2 _959_ _532_ vdd gnd NAND2X1
X_3680_ _617_ _613_ _1081_ vdd gnd NOR2X1
X_3260_ _1066_ _348_ _349_ vdd gnd NAND2X1
XFILL_0__2779_ gnd vdd FILL
XFILL_0__2359_ gnd vdd FILL
X_4045_ _1216_ _gen_int_sys_clk.clk_sys_r_bF$buf16_ _u_cpu.bufreg.data_[22] vdd gnd DFFPOSX1
X_2951_ _u_rf_if.issue_chunk_[1] _122_ vdd gnd INVX1
X_2531_ _1653_ _654_ _605_ _1642_ _1654_ vdd 
+ gnd
+ OAI22X1
X_2111_ _u_mem_serial.shift_reg_[27] _826_ vdd gnd INVX1
X_3736_ i_rst_n_bF$buf3 vdd _1104_ _gen_int_sys_clk.clk_sys_r_bF$buf8_ ibus_pending_rdt[13] vdd 
+ gnd
+ DFFSR
X_3316_ _351_ _394_ _395_ _1223_ vdd gnd OAI21X1
XFILL_0__2168_ gnd vdd FILL
X_2760_ _u_rf_if.read_buf1_[16] _1783__bF$buf2 _1833_ vdd gnd NAND2X1
X_2340_ _1467_ _1466_ _1468_ vdd gnd NOR2X1
X_3965_ _1377_ _gen_int_sys_clk.clk_sys_r_bF$buf28_ _u_rf_if.read_buf1_[1] vdd gnd DFFPOSX1
X_3545_ _1596_ _561_ _450__bF$buf3 _1160_ vdd gnd MUX2X1
X_3125_ _1052_ _245_ _247_ _1266_ vdd gnd AOI21X1
X_4083_ _1443_ i_clk_fast_bF$buf0 _u_mem_serial.shift_reg_[12] vdd gnd DFFPOSX1
X_2816_ _21_ i_rst_n_bF$buf9 _1349_ vdd gnd AND2X2
XCLKBUF1_insert140 _gen_int_sys_clk.clk_sys_r_hier0_bF$buf0_ _gen_int_sys_clk.clk_sys_r_bF$buf18_ vdd gnd CLKBUF1
XCLKBUF1_insert141 _gen_int_sys_clk.clk_sys_r_hier0_bF$buf5_ _gen_int_sys_clk.clk_sys_r_bF$buf17_ vdd gnd CLKBUF1
XCLKBUF1_insert142 _gen_int_sys_clk.clk_sys_r_hier0_bF$buf0_ _gen_int_sys_clk.clk_sys_r_bF$buf16_ vdd gnd CLKBUF1
XCLKBUF1_insert143 _gen_int_sys_clk.clk_sys_r_hier0_bF$buf4_ _gen_int_sys_clk.clk_sys_r_bF$buf15_ vdd gnd CLKBUF1
XCLKBUF1_insert144 _gen_int_sys_clk.clk_sys_r_hier0_bF$buf2_ _gen_int_sys_clk.clk_sys_r_bF$buf14_ vdd gnd CLKBUF1
XCLKBUF1_insert145 _gen_int_sys_clk.clk_sys_r_hier0_bF$buf1_ _gen_int_sys_clk.clk_sys_r_bF$buf13_ vdd gnd CLKBUF1
XCLKBUF1_insert146 _gen_int_sys_clk.clk_sys_r_hier0_bF$buf5_ _gen_int_sys_clk.clk_sys_r_bF$buf12_ vdd gnd CLKBUF1
XCLKBUF1_insert147 _gen_int_sys_clk.clk_sys_r_hier0_bF$buf1_ _gen_int_sys_clk.clk_sys_r_bF$buf11_ vdd gnd CLKBUF1
XCLKBUF1_insert148 _gen_int_sys_clk.clk_sys_r_hier0_bF$buf0_ _gen_int_sys_clk.clk_sys_r_bF$buf10_ vdd gnd CLKBUF1
XCLKBUF1_insert149 _gen_int_sys_clk.clk_sys_r_hier0_bF$buf4_ _gen_int_sys_clk.clk_sys_r_bF$buf9_ vdd gnd CLKBUF1
X_3774_ i_rst_n_bF$buf3 vdd _1116_ _gen_int_sys_clk.clk_sys_r_bF$buf8_ ibus_pending_rdt[25] vdd 
+ gnd
+ DFFSR
X_3354_ _u_cpu.bufreg.data_[10] _415_ vdd gnd INVX1
XFILL_0__3814_ gnd vdd FILL
X_2625_ _u_rf_if.o_waddr_[0] _1732_ vdd gnd INVX1
X_2205_ _1058_ _743_ i_rst_n_bF$buf8 _742_ vdd gnd OAI21X1
X_3583_ _583_ _212__bF$buf3 _582_ _570__bF$buf1 _1144_ vdd 
+ gnd
+ OAI22X1
X_3163_ _u_mem_serial.shift_reg_[37] _1855_ _0_ vdd gnd AND2X2
X_2854_ _u_rf_if.read_buf0_[10] _u_rf_if.read_buf0_[11] _u_rf_if.stream_active_bF$buf2_ _50_ vdd gnd MUX2X1
X_2434_ _1556_ _1549_ _1537_ _1557_ vdd gnd NAND3X1
X_2014_ _911_ i_rst_n_bF$buf2 _1441_ vdd gnd AND2X2
X_3639_ _159_ _903_ _602__bF$buf0 _1107_ vdd gnd MUX2X1
X_3219_ _316_ _812_ ibus_pending_ack_bF$buf4 _317_ vdd gnd MUX2X1
X_3392_ _u_cpu.bufreg.data_[2] _704_ _440_ _441_ vdd gnd AOI21X1
XFILL_0__3432_ gnd vdd FILL
X_2663_ i_rst_n_bF$buf9 _u_rf_if.issue_idx_[5] _u_rf_if.prefetch_active_ _1762_ vdd gnd NAND3X1
X_2243_ _u_cpu.bufreg.i_right_shift_op_ _705_ vdd gnd INVX1
X_3868_ _1145_ _gen_int_sys_clk.clk_sys_r_bF$buf42_ _u_cpu.ctrl.o_ibus_adr_[14] vdd gnd DFFPOSX1
X_3448_ _u_cpu.bufreg.i_shamt_[0] _708_ _487_ _488_ vdd gnd OAI21X1
X_3028_ _178_ _u_rf_if.issue_chunk_[2] _181_ vdd gnd AND2X2
X_1934_ _1023__bF$buf4 _982_ _981_ _980_ vdd gnd OAI21X1
X_2719_ _u_rf_if.read_buf1_[7] _u_rf_if.read_buf1_[8] _u_rf_if.stream_active_bF$buf0_ _1802_ vdd gnd MUX2X1
X_2892_ _22__bF$buf3 _77_ _78_ _79_ vdd gnd OAI21X1
X_2472_ _1593_ _765_ _1594_ _1595_ vdd gnd OAI21X1
X_2052_ _880_ _878_ _973__bF$buf2 _877_ vdd gnd OAI21X1
X_3677_ _gen_int_sys_clk.clk_div_[2] _613_ _616_ vdd gnd NOR2X1
X_3257_ rreg1[1] _340_ _659__bF$buf5 _347_ vdd gnd OAI21X1
XFILL_0__2932_ gnd vdd FILL
XFILL_0_BUFX2_insert91 gnd vdd FILL
XFILL128550x150 gnd vdd FILL
XFILL_0__3470_ gnd vdd FILL
XFILL_0_BUFX2_insert94 gnd vdd FILL
XFILL_0_BUFX2_insert96 gnd vdd FILL
XFILL_0_BUFX2_insert98 gnd vdd FILL
X_2948_ _u_rf_if.issue_idx_[5] _1679_ raddr[0] _120_ vdd gnd OAI21X1
X_2528_ _642_ _1480_ _1651_ vdd gnd NOR2X1
X_2108_ _831_ _829_ _973__bF$buf3 _828_ vdd gnd OAI21X1
X_2281_ _u_rf_if.last_req_key_[5] _667_ vdd gnd INVX1
X_3486_ _u_cpu.bufreg2.dlo_[13] _516_ vdd gnd INVX1
X_3066_ _1487_ _732_ _1664_ _207_ vdd gnd AOI21X1
XFILL_0__2741_ gnd vdd FILL
XFILL_0__2321_ gnd vdd FILL
XFILL129150x46950 gnd vdd FILL
X_1972_ _950_ _948_ _973__bF$buf2 _947_ vdd gnd OAI21X1
X_2757_ _1783__bF$buf2 _1829_ _1830_ _1831_ vdd gnd OAI21X1
X_2337_ ren _u_rf_if.o_waddr_[2] _1464_ _1465_ vdd gnd OAI21X1
X_2090_ _u_cpu.bufreg.data_[24] _u_cpu.ctrl.o_ibus_adr_[24] _1006__bF$buf2 _844_ vdd gnd MUX2X1
X_3295_ _1692__bF$buf2 _365_ _377_ _u_cpu.immdec.gen_immdec_w_eq_1.imm7_ _378_ vdd 
+ gnd
+ AOI22X1
XFILL128850x28950 gnd vdd FILL
XFILL_0__3335_ gnd vdd FILL
X_2986_ _147_ _861_ ibus_pending_ack_bF$buf5 _148_ vdd gnd MUX2X1
X_2566_ _1682_ _1678_ _u_rf_if.issue_idx_[5] _1683_ vdd gnd AOI21X1
X_2146_ _u_cpu.bufreg.data_[31] _u_cpu.ctrl.o_ibus_adr_[31] _1006__bF$buf0 _795_ vdd gnd MUX2X1
XFILL_0__2606_ gnd vdd FILL
XFILL_0__3144_ gnd vdd FILL
X_2795_ _u_rf_if.read_buf1_[26] _u_rf_if.read_buf1_[27] _u_rf_if.stream_active_bF$buf7_ _5_ vdd gnd MUX2X1
X_2375_ _1070__bF$buf0 _1498_ _1413_ vdd gnd NOR2X1
X_2184_ _u_cpu.bne_or_bge_ _u_cpu.bufreg.data_[0] _u_cpu.state.i_ctrl_misalign_ _761_ vdd gnd OAI21X1
X_3389_ _432_ _437_ _438_ vdd gnd OR2X2
XFILL_0__2644_ gnd vdd FILL
XFILL_0__3009_ gnd vdd FILL
X_1875_ _1034_ _1033_ _1032_ vdd gnd NAND2X1
XFILL_0__3182_ gnd vdd FILL
X_3601_ _592_ _212__bF$buf4 _591_ _570__bF$buf2 _1135_ vdd 
+ gnd
+ OAI22X1
X_3198_ rreg0[2] _296_ _659__bF$buf0 _302_ vdd gnd OAI21X1
XFILL_0__2033_ gnd vdd FILL
XFILL_0__3658_ gnd vdd FILL
X_2889_ _76_ i_rst_n_bF$buf4 _1331_ vdd gnd AND2X2
X_2469_ _u_cpu.bufreg2.i_bytecnt_[1] _1500_ _1591_ _1592_ vdd gnd OAI21X1
X_2049_ _1002__bF$buf4 _881_ _880_ vdd gnd NOR2X1
X_3830_ _1127_ _gen_int_sys_clk.clk_sys_r_bF$buf18_ _u_cpu.ctrl.o_ibus_adr_[28] vdd gnd DFFPOSX1
X_3410_ _452_ _455_ _453_ _1189_ vdd gnd OAI21X1
XFILL_0__2509_ gnd vdd FILL
XFILL_0__2682_ gnd vdd FILL
XFILL_0__3467_ gnd vdd FILL
XFILL_0__3047_ gnd vdd FILL
X_2698_ _1786_ i_rst_n_bF$buf9 _1378_ vdd gnd AND2X2
X_2278_ ren _684_ _670_ vdd gnd NOR2X1
XFILL_0__1953_ gnd vdd FILL
X_4004_ _1198_ _gen_int_sys_clk.clk_sys_r_bF$buf35_ _u_cpu.bufreg.data_[4] vdd gnd DFFPOSX1
XFILL_0__2491_ gnd vdd FILL
XFILL_0__2071_ gnd vdd FILL
X_1969_ _1002__bF$buf4 _951_ _950_ vdd gnd NOR2X1
X_2910_ _u_rf_if.read_buf0_[24] _u_rf_if.read_buf0_[25] _u_rf_if.stream_active_bF$buf6_ _92_ vdd gnd MUX2X1
X_2087_ _u_mem_serial.shift_reg_[24] _847_ vdd gnd INVX1
XFILL_0__2967_ gnd vdd FILL
XFILL_0__2547_ gnd vdd FILL
X_3924_ _1161_ _gen_int_sys_clk.clk_sys_r_bF$buf26_ _u_cpu.bufreg2.dlo_[1] vdd gnd DFFPOSX1
X_3504_ mem_dbus_ack_bF$buf4 _u_cpu.bufreg2.dlo_[10] _529_ _530_ vdd gnd OAI21X1
XFILL_0__1991_ gnd vdd FILL
XFILL_0__2356_ gnd vdd FILL
X_4042_ _1423_ i_clk_fast_bF$buf8 _u_mem_serial.shift_reg_[32] vdd gnd DFFPOSX1
X_3733_ _1254_ _gen_int_sys_clk.clk_sys_r_bF$buf17_ _u_cpu.branch_op_ vdd gnd DFFPOSX1
X_3313_ _392_ _938_ ibus_pending_ack_bF$buf3 _393_ vdd gnd MUX2X1
X_3962_ _1180_ _gen_int_sys_clk.clk_sys_r_bF$buf8_ _u_cpu.bufreg2.dlo_[20] vdd gnd DFFPOSX1
X_3542_ _u_mem_serial.shift_reg_[0] _559_ vdd gnd INVX1
X_3122_ _u_mem_serial.active_ibus_ _245_ vdd gnd INVX1
XFILL_0__2394_ gnd vdd FILL
X_4080_ _1233_ _gen_int_sys_clk.clk_sys_r_bF$buf17_ rreg1[0] vdd gnd DFFPOSX1
X_2813_ _u_rf_if.read_buf1_[30] _u_rf_if.read_buf1_[31] _u_rf_if.stream_active_bF$buf3_ _19_ vdd gnd MUX2X1
XCLKBUF1_insert115 _gen_int_sys_clk.clk_sys_r_hier0_bF$buf4_ _gen_int_sys_clk.clk_sys_r_bF$buf43_ vdd gnd CLKBUF1
XCLKBUF1_insert116 _gen_int_sys_clk.clk_sys_r_hier0_bF$buf0_ _gen_int_sys_clk.clk_sys_r_bF$buf42_ vdd gnd CLKBUF1
XCLKBUF1_insert117 _gen_int_sys_clk.clk_sys_r_hier0_bF$buf3_ _gen_int_sys_clk.clk_sys_r_bF$buf41_ vdd gnd CLKBUF1
XCLKBUF1_insert118 _gen_int_sys_clk.clk_sys_r_hier0_bF$buf2_ _gen_int_sys_clk.clk_sys_r_bF$buf40_ vdd gnd CLKBUF1
XCLKBUF1_insert119 _gen_int_sys_clk.clk_sys_r_hier0_bF$buf5_ _gen_int_sys_clk.clk_sys_r_bF$buf39_ vdd gnd CLKBUF1
X_3771_ _1282_ i_clk_fast_bF$buf4 _u_rf_if.tx_state_[2] vdd gnd DFFPOSX1
X_3351_ _412_ _413_ _1536__bF$buf0 _1206_ vdd gnd MUX2X1
X_2622_ _1726_ _1721_ _1729_ _1730_ vdd gnd OAI21X1
X_2202_ _746_ _1048_ _745_ vdd gnd NOR2X1
X_3827_ _1461_ i_clk_fast_bF$buf2 _u_mem_serial.bit_count_[0] vdd gnd DFFPOSX1
X_3407_ _u_cpu.bufreg2.dhi_[6] _452_ _453_ vdd gnd NAND2X1
XFILL_0__1894_ gnd vdd FILL
X_3580_ _u_cpu.ctrl.o_ibus_adr_[14] _582_ vdd gnd INVX1
X_3160_ _274_ _272_ _1070__bF$buf3 _1258_ vdd gnd AOI21X1
XFILL_0__2679_ gnd vdd FILL
XFILL_0__2259_ gnd vdd FILL
XFILL_0__3620_ gnd vdd FILL
XFILL_0__3200_ gnd vdd FILL
X_2851_ _u_rf_if.read_buf0_[8] _22__bF$buf1 _48_ vdd gnd NAND2X1
X_2431_ _u_cpu.state.o_cnt_[2] _1553_ _1554_ vdd gnd NOR2X1
X_2011_ _1023__bF$buf3 _914_ _913_ vdd gnd NOR2X1
X_3636_ _1693_ _882_ _602__bF$buf2 _1110_ vdd gnd MUX2X1
X_3216_ _313_ _268_ _1066_ _1692__bF$buf2 _314_ vdd 
+ gnd
+ OAI22X1
XBUFX2_insert160 _1783_ _1783__bF$buf5 vdd gnd BUFX2
XBUFX2_insert161 _1783_ _1783__bF$buf4 vdd gnd BUFX2
XBUFX2_insert162 _1783_ _1783__bF$buf3 vdd gnd BUFX2
XBUFX2_insert163 _1783_ _1783__bF$buf2 vdd gnd BUFX2
XBUFX2_insert164 _1783_ _1783__bF$buf1 vdd gnd BUFX2
XBUFX2_insert165 _1783_ _1783__bF$buf0 vdd gnd BUFX2
XBUFX2_insert166 _973_ _973__bF$buf6 vdd gnd BUFX2
XBUFX2_insert167 _973_ _973__bF$buf5 vdd gnd BUFX2
XBUFX2_insert168 _973_ _973__bF$buf4 vdd gnd BUFX2
XBUFX2_insert169 _973_ _973__bF$buf3 vdd gnd BUFX2
X_2907_ _u_rf_if.read_buf0_[22] _22__bF$buf2 _90_ vdd gnd NAND2X1
X_2660_ i_rst_n_bF$buf10 _1702_ _1761_ vdd gnd NAND2X1
X_2240_ _727_ _717_ _708_ vdd gnd NAND2X1
X_3865_ _1327_ _gen_int_sys_clk.clk_sys_r_bF$buf9_ _u_rf_if.read_buf0_[21] vdd gnd DFFPOSX1
X_3445_ _479_ _451_ _484_ _485_ _1184_ vdd 
+ gnd
+ OAI22X1
X_3025_ _1687_ _178_ _179_ vdd gnd NOR2X1
X_1931_ _1070__bF$buf1 _983_ _1452_ vdd gnd NOR2X1
XFILL_0__2297_ gnd vdd FILL
X_2716_ _u_rf_if.read_buf1_[5] _1783__bF$buf2 _1800_ vdd gnd NAND2X1
X_3674_ _gen_int_sys_clk.clk_div_[1] _gen_int_sys_clk.clk_div_[0] _613_ vdd gnd AND2X2
X_3254_ rreg1[1] _345_ vdd gnd INVX1
X_4039_ _1213_ _gen_int_sys_clk.clk_sys_r_bF$buf42_ _u_cpu.bufreg.data_[19] vdd gnd DFFPOSX1
XFILL_0_BUFX2_insert60 gnd vdd FILL
XFILL_0_BUFX2_insert63 gnd vdd FILL
XFILL_0_BUFX2_insert65 gnd vdd FILL
XFILL_0_BUFX2_insert67 gnd vdd FILL
XFILL_0_BUFX2_insert69 gnd vdd FILL
X_2945_ _118_ _1317_ vdd gnd INVX1
X_2525_ _1647_ _1634_ _1648_ vdd gnd NAND2X1
X_2105_ _1002__bF$buf1 _832_ _831_ vdd gnd NOR2X1
X_3483_ mem_dbus_ack_bF$buf4 _917_ _514_ vdd gnd NAND2X1
X_3063_ ren _736_ _1666_ _205_ vdd gnd NAND3X1
XFILL_0__3523_ gnd vdd FILL
X_2754_ _1828_ i_rst_n_bF$buf7 _1364_ vdd gnd AND2X2
X_2334_ _u_rf_if.last_req_key_[9] _735_ _1414_ _1462_ vdd gnd OAI21X1
X_3959_ _1374_ _gen_int_sys_clk.clk_sys_r_bF$buf43_ _u_rf_if.read_buf1_[4] vdd gnd DFFPOSX1
X_3539_ mem_dbus_ack_bF$buf1 _556_ _557_ vdd gnd NAND2X1
X_3119_ _1692__bF$buf2 _227_ _243_ vdd gnd OR2X2
X_3292_ _1692__bF$buf4 _1694_ _298_ _376_ vdd gnd AOI21X1
X_4077_ _1440_ i_clk_fast_bF$buf8 _u_mem_serial.shift_reg_[15] vdd gnd DFFPOSX1
XFILL_0__3332_ gnd vdd FILL
XFILL128850x82950 gnd vdd FILL
X_2983_ _145_ _142_ _1070__bF$buf5 _1306_ vdd gnd AOI21X1
X_2563_ _u_rf_if.issue_idx_[5] _1679_ _1680_ vdd gnd NOR2X1
X_2143_ _u_mem_serial.shift_reg_[31] _798_ vdd gnd INVX1
X_3768_ i_rst_n_bF$buf3 vdd _1113_ _gen_int_sys_clk.clk_sys_r_bF$buf6_ ibus_pending_rdt[22] vdd 
+ gnd
+ DFFSR
X_3348_ _u_cpu.bufreg.data_[13] _412_ vdd gnd INVX1
X_2619_ _u_rf_if.read_buf0_[30] _1560_ _1727_ vdd gnd NAND2X1
XBUFX2_insert70 _u_rf_if.stream_active_ _u_rf_if.stream_active_bF$buf5_ vdd gnd BUFX2
XBUFX2_insert71 _u_rf_if.stream_active_ _u_rf_if.stream_active_bF$buf4_ vdd gnd BUFX2
XBUFX2_insert72 _u_rf_if.stream_active_ _u_rf_if.stream_active_bF$buf3_ vdd gnd BUFX2
XBUFX2_insert73 _u_rf_if.stream_active_ _u_rf_if.stream_active_bF$buf2_ vdd gnd BUFX2
XBUFX2_insert74 _u_rf_if.stream_active_ _u_rf_if.stream_active_bF$buf1_ vdd gnd BUFX2
XBUFX2_insert75 _u_rf_if.stream_active_ _u_rf_if.stream_active_bF$buf0_ vdd gnd BUFX2
XBUFX2_insert76 _1070_ _1070__bF$buf6 vdd gnd BUFX2
XBUFX2_insert77 _1070_ _1070__bF$buf5 vdd gnd BUFX2
XBUFX2_insert78 _1070_ _1070__bF$buf4 vdd gnd BUFX2
XBUFX2_insert79 _1070_ _1070__bF$buf3 vdd gnd BUFX2
X_2792_ _u_rf_if.read_buf1_[24] _1783__bF$buf1 _3_ vdd gnd NAND2X1
X_2372_ _1858_ _1497_ vdd gnd INVX1
X_3997_ _1195_ _gen_int_sys_clk.clk_sys_r_bF$buf33_ _u_cpu.bufreg.data_[0] vdd gnd DFFPOSX1
X_3577_ _580_ _212__bF$buf0 _579_ _570__bF$buf1 _1147_ vdd 
+ gnd
+ OAI22X1
X_3157_ _751_ _1032_ _u_mem_serial.bit_count_[6] _272_ vdd gnd OAI21X1
XFILL_0__2832_ gnd vdd FILL
XFILL_0__2412_ gnd vdd FILL
XFILL_0__3370_ gnd vdd FILL
X_2848_ _22__bF$buf1 _44_ _45_ _46_ vdd gnd OAI21X1
X_2428_ _1530_ _1531_ _1550_ _1551_ vdd gnd NAND3X1
X_2008_ _u_mem_serial.shift_reg_[13] _u_cpu.bufreg2.dlo_[8] _994__bF$buf5 _916_ vdd gnd MUX2X1
X_2181_ _769_ _767_ _764_ _763_ vdd gnd OAI21X1
X_3386_ _u_cpu.bufreg.c_r_ _434_ _435_ vdd gnd NAND2X1
XFILL_0__2221_ gnd vdd FILL
X_1872_ _1070__bF$buf3 _1035_ _1459_ vdd gnd NOR2X1
X_2657_ _1751_ _1758_ _u_rf_if.stream_active_bF$buf3_ _1759_ vdd gnd OAI21X1
X_2237_ _768_ _759_ _712_ _711_ vdd gnd NAND3X1
X_3195_ rreg0[3] _296_ _659__bF$buf0 _300_ vdd gnd OAI21X1
XFILL_0__2870_ gnd vdd FILL
X_1928_ _u_mem_serial.shift_reg_[2] _1023__bF$buf4 _994__bF$buf2 _985_ vdd gnd NAND3X1
XFILL_0__3655_ gnd vdd FILL
XFILL_0__3235_ gnd vdd FILL
X_2886_ _u_rf_if.read_buf0_[18] _u_rf_if.read_buf0_[19] _u_rf_if.stream_active_bF$buf2_ _74_ vdd gnd MUX2X1
X_2466_ _1584_ _1588_ _1571_ _1589_ vdd gnd NAND3X1
X_2046_ _883_ i_rst_n_bF$buf2 _1437_ vdd gnd AND2X2
XFILL129150x32550 gnd vdd FILL
X_2695_ _u_rf_if.read_buf1_[1] _u_rf_if.read_buf1_[2] _u_rf_if.stream_active_bF$buf4_ _1784_ vdd gnd MUX2X1
X_2275_ mem_ibus_ack ibus_pending_ack_bF$buf1 _673_ vdd gnd NOR2X1
XFILL_0__2735_ gnd vdd FILL
X_4001_ _1399_ _gen_int_sys_clk.clk_sys_r_bF$buf3_ _u_rf_if.read_buf1_[30] vdd gnd DFFPOSX1
X_1966_ _953_ i_rst_n_bF$buf6 _1447_ vdd gnd AND2X2
XFILL_0__3693_ gnd vdd FILL
XFILL_0__3273_ gnd vdd FILL
X_2084_ _852_ _850_ _973__bF$buf1 _849_ vdd gnd OAI21X1
X_3289_ _u_cpu.immdec.gen_immdec_w_eq_1.imm31_ _1543_ _659__bF$buf2 _373_ vdd gnd NAND3X1
XFILL_0__2544_ gnd vdd FILL
XFILL_0__2124_ gnd vdd FILL
XFILL_0__3082_ gnd vdd FILL
X_3921_ _1355_ _gen_int_sys_clk.clk_sys_r_bF$buf29_ _u_rf_if.read_buf1_[23] vdd gnd DFFPOSX1
X_3501_ _525_ _527_ _450__bF$buf0 _1170_ vdd gnd MUX2X1
X_3098_ _222_ _1547_ _226_ _1272_ vdd gnd AOI21X1
XFILL_0__3558_ gnd vdd FILL
XFILL_0__3138_ gnd vdd FILL
X_2789_ _1783__bF$buf1 _1853_ _1859_ _1_ vdd gnd OAI21X1
X_2369_ _1495_ _736_ _1416_ vdd gnd NOR2X1
X_3730_ _1251_ i_clk_fast_bF$buf1 mem_dbus_ack vdd gnd DFFPOSX1
X_3310_ rreg1[4] _342_ _391_ vdd gnd NAND2X1
XFILL_0__2409_ gnd vdd FILL
XFILL_0__2582_ gnd vdd FILL
XFILL_0__2162_ gnd vdd FILL
X_2598_ _u_rf_if.issue_sel_ _1708_ vdd gnd INVX1
X_2178_ _u_cpu.bufreg.data_[0] _766_ vdd gnd INVX1
X_1869_ _1038_ _1042_ _1037_ vdd gnd NAND2X1
X_2810_ _11_ _1560_ _1722_ _17_ vdd gnd OAI21X1
XFILL_0__3596_ gnd vdd FILL
XFILL_0__1909_ gnd vdd FILL
XFILL_0__2447_ gnd vdd FILL
XFILL_0__2027_ gnd vdd FILL
X_3824_ _1308_ _gen_int_sys_clk.clk_sys_r_bF$buf24_ raddr[7] vdd gnd DFFPOSX1
X_3404_ _449_ _448_ mem_dbus_ack_bF$buf1 _450_ vdd gnd AOI21X1
XFILL_0_CLKBUF1_insert140 gnd vdd FILL
XFILL_0_CLKBUF1_insert142 gnd vdd FILL
XFILL_0_CLKBUF1_insert145 gnd vdd FILL
XFILL_0_CLKBUF1_insert147 gnd vdd FILL
XFILL_0_CLKBUF1_insert149 gnd vdd FILL
XFILL_0__1947_ gnd vdd FILL
X_3633_ _147_ _861_ _602__bF$buf4 _1113_ vdd gnd MUX2X1
X_3213_ _u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20_[1] _296_ _659__bF$buf0 _312_ vdd gnd OAI21X1
XFILL128250x111750 gnd vdd FILL
XFILL_0__2485_ gnd vdd FILL
X_2904_ _22__bF$buf2 _86_ _87_ _88_ vdd gnd OAI21X1
X_3862_ _1068_ _1067_ _1066_ vdd gnd NAND2X1
X_3442_ _716_ _666_ _697_ _483_ vdd gnd OAI21X1
X_3022_ _u_rf_if.issue_chunk_[0] _176_ vdd gnd INVX1
XFILL_0__2294_ gnd vdd FILL
X_2713_ _1783__bF$buf4 _1796_ _1797_ _1798_ vdd gnd OAI21X1
X_3918_ _1158_ _gen_int_sys_clk.clk_sys_r_bF$buf33_ _u_cpu.bufreg2.cnt_next_[6] vdd gnd DFFPOSX1
X_3671_ _1053_ _1059_ _1052_ vdd gnd NAND2X1
X_3251_ rreg1[2] _343_ vdd gnd INVX1
X_4036_ _1420_ i_clk_fast_bF$buf6 _u_mem_serial.shift_reg_[35] vdd gnd DFFPOSX1
XFILL_0__3711_ gnd vdd FILL
XFILL_0_BUFX2_insert32 gnd vdd FILL
XFILL_0_BUFX2_insert34 gnd vdd FILL
XFILL_0_BUFX2_insert36 gnd vdd FILL
XFILL_0_BUFX2_insert38 gnd vdd FILL
X_2942_ _1732_ _1733_ _116_ _1318_ vdd gnd AOI21X1
X_2522_ _739_ _1639_ _1644_ _1645_ vdd gnd OAI21X1
X_2102_ _834_ i_rst_n_bF$buf6 _1430_ vdd gnd AND2X2
X_3727_ _1459_ i_clk_fast_bF$buf2 _u_mem_serial.bit_count_[2] vdd gnd DFFPOSX1
X_3307_ _388_ _315_ _389_ vdd gnd NAND2X1
X_3480_ mem_dbus_ack_bF$buf2 _u_cpu.bufreg2.dlo_[16] _511_ _512_ vdd gnd OAI21X1
X_3060_ _u_rf_if.last_req_key_[8] _1488_ _203_ vdd gnd NAND2X1
XFILL_0__2159_ gnd vdd FILL
XFILL_0__3520_ gnd vdd FILL
XFILL_0__3100_ gnd vdd FILL
X_2751_ _u_rf_if.read_buf1_[15] _u_rf_if.read_buf1_[16] _u_rf_if.stream_active_bF$buf0_ _1826_ vdd gnd MUX2X1
X_2331_ _u_rf_if.launch_pending_ _1257_ vdd gnd INVX1
X_3956_ _1177_ _gen_int_sys_clk.clk_sys_r_bF$buf8_ _u_cpu.bufreg2.dlo_[17] vdd gnd DFFPOSX1
X_3536_ _551_ _554_ _450__bF$buf3 _1162_ vdd gnd MUX2X1
X_3116_ _228_ _227_ _241_ _1269_ vdd gnd OAI21X1
XFILL128250x39750 gnd vdd FILL
X_4074_ _1230_ _gen_int_sys_clk.clk_sys_r_bF$buf4_ _u_cpu.immdec.gen_immdec_w_eq_1.imm11_7_[1] vdd gnd DFFPOSX1
X_2807_ _u_rf_if.read_buf1_[27] _1783__bF$buf3 _15_ vdd gnd NAND2X1
X_2980_ ibus_pending_rdt[21] _143_ vdd gnd INVX1
X_2560_ _u_rf_if.issue_chunk_[2] _u_rf_if.issue_sel_ _1677_ vdd gnd NAND2X1
X_2140_ _803_ _801_ _973__bF$buf4 _800_ vdd gnd OAI21X1
X_3765_ _1279_ i_clk_fast_bF$buf1 _u_mem_serial.state_[1] vdd gnd DFFPOSX1
X_3345_ _409_ _410_ _1536__bF$buf4 _1209_ vdd gnd MUX2X1
XFILL_0__2600_ gnd vdd FILL
XFILL_0__2197_ gnd vdd FILL
X_2616_ _1725_ i_rst_n_bF$buf9 _1399_ vdd gnd AND2X2
XBUFX2_insert40 _602_ _602__bF$buf0 vdd gnd BUFX2
XBUFX2_insert41 ibus_pending_ack ibus_pending_ack_bF$buf5 vdd gnd BUFX2
XBUFX2_insert42 ibus_pending_ack ibus_pending_ack_bF$buf4 vdd gnd BUFX2
XBUFX2_insert43 ibus_pending_ack ibus_pending_ack_bF$buf3 vdd gnd BUFX2
XBUFX2_insert44 ibus_pending_ack ibus_pending_ack_bF$buf2 vdd gnd BUFX2
XBUFX2_insert45 ibus_pending_ack ibus_pending_ack_bF$buf1 vdd gnd BUFX2
XBUFX2_insert46 ibus_pending_ack ibus_pending_ack_bF$buf0 vdd gnd BUFX2
X_3994_ _1395_ _gen_int_sys_clk.clk_sys_r_bF$buf3_ _u_rf_if.read_buf0_[31] vdd gnd DFFPOSX1
X_3574_ _u_cpu.ctrl.o_ibus_adr_[17] _579_ vdd gnd INVX1
X_3154_ ibus_pending_ack_bF$buf0 _269_ _270_ vdd gnd NAND2X1
X_2845_ _43_ i_rst_n_bF$buf5 _1342_ vdd gnd AND2X2
X_2425_ _1546_ _1547_ _703_ _1548_ vdd gnd OAI21X1
X_2005_ _924_ _973__bF$buf0 _919_ _918_ vdd gnd OAI21X1
X_3383_ _1545_ _431_ _432_ vdd gnd NAND2X1
XFILL_0__3423_ gnd vdd FILL
XFILL_0__3003_ gnd vdd FILL
X_2654_ _u_rf_if.stream_cnt_[2] _1755_ _1756_ vdd gnd NAND2X1
X_2234_ _716_ _776_ _715_ _714_ vdd gnd NAND3X1
X_3859_ _1143_ _gen_int_sys_clk.clk_sys_r_bF$buf25_ _u_cpu.ctrl.o_ibus_adr_[12] vdd gnd DFFPOSX1
X_3439_ _u_cpu.bufreg.i_shamt_[1] _1597_ _480_ vdd gnd NOR2X1
X_3019_ _1687_ _174_ vdd gnd INVX1
X_3192_ _659__bF$buf0 _296_ _298_ vdd gnd AND2X2
X_1925_ _u_mem_serial.shift_reg_[2] _988_ _1009_ _987_ vdd gnd MUX2X1
X_2883_ _u_rf_if.read_buf0_[16] _22__bF$buf3 _72_ vdd gnd NAND2X1
X_2463_ _u_cpu.alu.cmp_r_ _693_ _1586_ vdd gnd NAND2X1
X_2043_ _1023__bF$buf5 _886_ _885_ vdd gnd NOR2X1
X_3668_ _1050_ _1049_ vdd gnd INVX1
X_3248_ rreg1[4] _340_ _659__bF$buf3 _341_ vdd gnd OAI21X1
XFILL_0__2923_ gnd vdd FILL
XFILL_0__3461_ gnd vdd FILL
X_2939_ _22__bF$buf5 _113_ _114_ _115_ vdd gnd OAI21X1
X_2519_ _u_rf_if.tx_state_[1] _1618_ _1642_ vdd gnd NAND2X1
X_2692_ _u_rf_if.stream_cnt_[3] _1781_ i_rst_n_bF$buf9 _1782_ vdd gnd OAI21X1
X_2272_ _677_ _688_ _676_ vdd gnd NOR2X1
X_3897_ _1343_ _gen_int_sys_clk.clk_sys_r_bF$buf23_ _u_rf_if.read_buf0_[5] vdd gnd DFFPOSX1
X_3477_ _1593_ _509_ _450__bF$buf4 _1176_ vdd gnd MUX2X1
X_3057_ _u_rf_if.last_req_key_[7] _1488_ _201_ vdd gnd NAND2X1
XFILL_0__2312_ gnd vdd FILL
X_1963_ _1023__bF$buf1 _956_ _955_ vdd gnd NOR2X1
XFILL_0__3270_ gnd vdd FILL
X_2748_ _u_rf_if.read_buf1_[13] _1783__bF$buf6 _1824_ vdd gnd NAND2X1
X_2328_ _1087_ _1088_ _1084_ _1089_ vdd gnd NAND3X1
X_2081_ _1002__bF$buf0 _853_ _852_ vdd gnd NOR2X1
X_3286_ _u_mem_serial.shift_reg_[31] ibus_pending_ack_bF$buf2 _370_ _371_ vdd gnd OAI21X1
XFILL_0__2961_ gnd vdd FILL
XFILL_0__3326_ gnd vdd FILL
X_2977_ _140_ _1692__bF$buf4 _141_ vdd gnd NAND2X1
X_2557_ _1673_ _1674_ _659__bF$buf4 _1675_ vdd gnd NAND3X1
X_2137_ _1002__bF$buf3 _804_ _803_ vdd gnd NOR2X1
X_3095_ _1546_ _224_ i_rst_n_bF$buf11 _225_ vdd gnd OAI21X1
XFILL_0__2770_ gnd vdd FILL
XFILL_0__2350_ gnd vdd FILL
XFILL_0__3135_ gnd vdd FILL
X_2786_ _1852_ i_rst_n_bF$buf4 _1356_ vdd gnd AND2X2
X_2366_ _1488_ _1493_ _1070__bF$buf2 _1417_ vdd gnd AOI21X1
XFILL_0__2826_ gnd vdd FILL
X_2595_ _u_rf_if.rreg1_latched_[4] _u_rf_if.rreg0_latched_[4] _u_rf_if.issue_sel_ _1706_ vdd gnd MUX2X1
X_2175_ _772_ _790_ _769_ vdd gnd NOR2X1
XFILL_0__2635_ gnd vdd FILL
XFILL_0__2215_ gnd vdd FILL
X_1866_ _u_mem_serial.bit_count_[1] _1041_ _1040_ _1039_ vdd gnd AOI21X1
XFILL_0__3173_ gnd vdd FILL
XFILL129150x100950 gnd vdd FILL
X_3189_ _692_ _294_ _1543_ _295_ vdd gnd OAI21X1
XFILL_0__2024_ gnd vdd FILL
XFILL_0__3649_ gnd vdd FILL
X_3821_ _1307_ _gen_int_sys_clk.clk_sys_r_bF$buf22_ _u_rf_if.rreg1_latched_[0] vdd gnd DFFPOSX1
X_3401_ _445_ _446_ _1066_ _447_ vdd gnd OAI21X1
XFILL_0__2673_ gnd vdd FILL
XFILL_0__3458_ gnd vdd FILL
XFILL_0__3038_ gnd vdd FILL
XFILL_0_CLKBUF1_insert116 gnd vdd FILL
XFILL_0_CLKBUF1_insert118 gnd vdd FILL
X_2689_ _1778_ _1777_ _1779_ _1380_ vdd gnd AOI21X1
X_2269_ _u_cpu.decode.opcode_[0] _787_ _679_ vdd gnd NOR2X1
X_3630_ _334_ _840_ _602__bF$buf2 _1116_ vdd gnd MUX2X1
X_3210_ _u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20_[2] _296_ _659__bF$buf0 _310_ vdd gnd OAI21X1
XBUFX2_insert100 _1692_ _1692__bF$buf3 vdd gnd BUFX2
XBUFX2_insert101 _1692_ _1692__bF$buf2 vdd gnd BUFX2
XBUFX2_insert102 _1692_ _1692__bF$buf1 vdd gnd BUFX2
XBUFX2_insert103 _1692_ _1692__bF$buf0 vdd gnd BUFX2
XBUFX2_insert104 _659_ _659__bF$buf5 vdd gnd BUFX2
XBUFX2_insert105 _659_ _659__bF$buf4 vdd gnd BUFX2
XBUFX2_insert106 _659_ _659__bF$buf3 vdd gnd BUFX2
XBUFX2_insert107 _659_ _659__bF$buf2 vdd gnd BUFX2
XBUFX2_insert108 _659_ _659__bF$buf1 vdd gnd BUFX2
XBUFX2_insert109 _659_ _659__bF$buf0 vdd gnd BUFX2
XFILL_0__2482_ gnd vdd FILL
XFILL_0__2062_ gnd vdd FILL
X_2901_ _85_ i_rst_n_bF$buf4 _1328_ vdd gnd AND2X2
X_2498_ _1617_ _1517_ _1620_ _1621_ vdd gnd AOI21X1
X_2078_ _855_ i_rst_n_bF$buf2 _1433_ vdd gnd AND2X2
XFILL_0__2958_ gnd vdd FILL
XFILL_0__2538_ gnd vdd FILL
X_2710_ _1795_ i_rst_n_bF$buf5 _1375_ vdd gnd AND2X2
XFILL_0__3496_ gnd vdd FILL
XFILL_0__3076_ gnd vdd FILL
X_3915_ _1352_ _gen_int_sys_clk.clk_sys_r_bF$buf23_ _u_rf_if.read_buf1_[26] vdd gnd DFFPOSX1
XFILL_0__1982_ gnd vdd FILL
XFILL_0__2347_ gnd vdd FILL
X_4033_ _1210_ _gen_int_sys_clk.clk_sys_r_bF$buf10_ _u_cpu.bufreg.data_[16] vdd gnd DFFPOSX1
X_1998_ _925_ i_rst_n_bF$buf2 _1443_ vdd gnd AND2X2
X_3724_ _1249_ _gen_int_sys_clk.clk_sys_r_bF$buf38_ rreg0[3] vdd gnd DFFPOSX1
X_3304_ _379_ _384_ _385_ _383_ _386_ vdd 
+ gnd
+ OAI22X1
XFILL128550x111750 gnd vdd FILL
XFILL_0__2996_ gnd vdd FILL
X_3953_ _1371_ _gen_int_sys_clk.clk_sys_r_bF$buf15_ _u_rf_if.read_buf1_[7] vdd gnd DFFPOSX1
X_3533_ _u_mem_serial.shift_reg_[2] _552_ vdd gnd INVX1
X_3113_ i_rst_n_bF$buf11 _u_cpu.branch_op_ _239_ vdd gnd NAND2X1
XFILL_0__2385_ gnd vdd FILL
X_4071_ _1437_ i_clk_fast_bF$buf8 _u_mem_serial.shift_reg_[18] vdd gnd DFFPOSX1
XFILL128850x150 gnd vdd FILL
X_2804_ _u_rf_if.read_buf1_[28] _u_rf_if.stream_active_bF$buf7_ _12_ vdd gnd NAND2X1
XFILL128250x93750 gnd vdd FILL
X_3762_ i_rst_n_bF$buf3 vdd _1110_ _gen_int_sys_clk.clk_sys_r_bF$buf39_ ibus_pending_rdt[19] vdd 
+ gnd
+ DFFSR
X_3342_ _u_cpu.bufreg.data_[16] _409_ vdd gnd INVX1
XFILL_0__3802_ gnd vdd FILL
X_2613_ _1722_ _1723_ vdd gnd INVX1
XFILL_0__3399_ gnd vdd FILL
X_3818_ i_rst_n_bF$buf1 vdd _1078_ _gen_int_sys_clk.clk_sys_r_bF$buf2_ current_wdata0_next_hint vdd 
+ gnd
+ DFFSR
XBUFX2_insert10 _673_ _673__bF$buf3 vdd gnd BUFX2
XBUFX2_insert11 _673_ _673__bF$buf2 vdd gnd BUFX2
XBUFX2_insert12 _673_ _673__bF$buf1 vdd gnd BUFX2
XBUFX2_insert13 _673_ _673__bF$buf0 vdd gnd BUFX2
XBUFX2_insert14 _212_ _212__bF$buf4 vdd gnd BUFX2
XBUFX2_insert15 _212_ _212__bF$buf3 vdd gnd BUFX2
XBUFX2_insert16 _212_ _212__bF$buf2 vdd gnd BUFX2
XBUFX2_insert17 _212_ _212__bF$buf1 vdd gnd BUFX2
XBUFX2_insert18 _212_ _212__bF$buf0 vdd gnd BUFX2
XBUFX2_insert19 _570_ _570__bF$buf4 vdd gnd BUFX2
XFILL_0__1885_ gnd vdd FILL
X_3991_ _1191_ _gen_int_sys_clk.clk_sys_r_bF$buf33_ _u_cpu.bufreg.c_r_ vdd gnd DFFPOSX1
X_3571_ _577_ _212__bF$buf3 _576_ _570__bF$buf4 _1150_ vdd 
+ gnd
+ OAI22X1
X_3151_ _1520_ _267_ _659__bF$buf2 _1260_ vdd gnd MUX2X1
XFILL_0__3611_ gnd vdd FILL
X_2842_ _u_rf_if.read_buf0_[7] _u_rf_if.read_buf0_[8] _u_rf_if.stream_active_bF$buf6_ _41_ vdd gnd MUX2X1
X_2422_ _1544_ _1542_ _1545_ vdd gnd NOR2X1
X_2002_ _u_cpu.bufreg.data_[13] _u_cpu.ctrl.o_ibus_adr_[13] _1006__bF$buf2 _921_ vdd gnd MUX2X1
X_3627_ _322_ _819_ _602__bF$buf4 _1119_ vdd gnd MUX2X1
X_3207_ _u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20_[3] _296_ _659__bF$buf0 _308_ vdd gnd OAI21X1
X_3380_ _u_cpu.decode.opcode_[0] _u_cpu.decode.opcode_[1] _429_ vdd gnd NAND2X1
XFILL_0__2899_ gnd vdd FILL
XFILL_0__3000_ gnd vdd FILL
X_2651_ _u_rf_if.stream_cnt_[1] _1753_ vdd gnd INVX1
X_2231_ _726_ _718_ _721_ _717_ vdd gnd NAND3X1
X_3856_ _1323_ _gen_int_sys_clk.clk_sys_r_bF$buf23_ _u_rf_if.read_buf0_[25] vdd gnd DFFPOSX1
X_3436_ _697_ _u_mem_serial.shift_reg_[26] _451_ _478_ vdd gnd OAI21X1
X_3016_ _171_ _170_ _172_ vdd gnd NAND2X1
XFILL_0_CLKBUF1_insert52 gnd vdd FILL
XFILL_0_CLKBUF1_insert54 gnd vdd FILL
X_1922_ _u_cpu.bufreg.data_[2] _u_cpu.ctrl.o_ibus_adr_[2] _1006__bF$buf0 _990_ vdd gnd MUX2X1
XFILL_0__2288_ gnd vdd FILL
X_2707_ _u_rf_if.read_buf1_[4] _u_rf_if.read_buf1_[5] _u_rf_if.stream_active_bF$buf4_ _1793_ vdd gnd MUX2X1
X_2880_ _22__bF$buf4 _68_ _69_ _70_ vdd gnd OAI21X1
X_2460_ _1575_ _1582_ _1583_ vdd gnd NAND2X1
X_2040_ _u_mem_serial.shift_reg_[17] _u_cpu.bufreg2.dlo_[12] _994__bF$buf4 _888_ vdd gnd MUX2X1
X_3665_ _u_mem_serial.req_pending_ _u_mem_serial.state_[0] _1047_ _1046_ vdd gnd OAI21X1
X_3245_ rreg1[3] _338_ vdd gnd INVX1
XFILL_0__2500_ gnd vdd FILL
XFILL_0__2097_ gnd vdd FILL
X_2936_ _101_ _22__bF$buf5 _112_ _1320_ vdd gnd AOI21X1
X_2516_ _730_ _657_ _1639_ vdd gnd NOR2X1
XFILL128250x25350 gnd vdd FILL
X_3894_ i_rst_n_bF$buf0 vdd _1096_ _gen_int_sys_clk.clk_sys_r_bF$buf39_ ibus_pending_rdt[5] vdd 
+ gnd
+ DFFSR
X_3474_ _505_ _507_ _450__bF$buf0 _1177_ vdd gnd MUX2X1
X_3054_ _u_rf_if.last_req_key_[6] _1488_ _199_ vdd gnd NAND2X1
XFILL_0__3514_ gnd vdd FILL
X_1960_ _u_mem_serial.shift_reg_[7] _u_cpu.bufreg2.dlo_[2] _994__bF$buf0 _958_ vdd gnd MUX2X1
X_2745_ _1783__bF$buf1 _1820_ _1821_ _1822_ vdd gnd OAI21X1
X_2325_ ren _u_rf_if.o_waddr_[1] _1085_ _1086_ vdd gnd OAI21X1
X_3283_ _673__bF$buf1 _674__bF$buf2 _u_cpu.immdec.gen_immdec_w_eq_1.imm31_ _368_ vdd gnd OAI21X1
X_4068_ _1227_ _gen_int_sys_clk.clk_sys_r_bF$buf38_ rreg0[4] vdd gnd DFFPOSX1
XFILL_0__3323_ gnd vdd FILL
X_2974_ _673__bF$buf2 _674__bF$buf1 _u_rf_if.rreg1_latched_[0] _138_ vdd gnd OAI21X1
X_2554_ _1670_ _1671_ _1672_ vdd gnd NOR2X1
X_2134_ _806_ i_rst_n_bF$buf6 _1426_ vdd gnd AND2X2
X_3759_ _1276_ _gen_int_sys_clk.clk_sys_r_bF$buf34_ _u_cpu.state.cnt_r_[2] vdd gnd DFFPOSX1
X_3339_ _406_ _407_ _1536__bF$buf0 _1212_ vdd gnd MUX2X1
X_3092_ _u_cpu.state.cnt_r_[3] _222_ vdd gnd INVX1
X_2783_ _u_rf_if.read_buf1_[23] _u_rf_if.read_buf1_[24] _u_rf_if.stream_active_bF$buf1_ _1850_ vdd gnd MUX2X1
X_2363_ _1489_ _1490_ _1491_ vdd gnd NAND2X1
X_3988_ _1392_ _gen_int_sys_clk.clk_sys_r_bF$buf41_ _u_rf_if.write_wait_[1] vdd gnd DFFPOSX1
X_3568_ _u_cpu.ctrl.o_ibus_adr_[20] _576_ vdd gnd INVX1
X_3148_ ibus_pending_rdt[3] _265_ vdd gnd INVX1
XFILL_0__2823_ gnd vdd FILL
XFILL_0__2403_ gnd vdd FILL
XFILL_0__3361_ gnd vdd FILL
X_2839_ _u_rf_if.read_buf0_[5] _22__bF$buf6 _39_ vdd gnd NAND2X1
X_2419_ _1539_ _1541_ _702_ _1542_ vdd gnd AOI21X1
X_2592_ _1701_ _1702_ _1704_ vdd gnd NOR2X1
X_2172_ _1009_ _772_ _1070__bF$buf1 _771_ vdd gnd AOI21X1
X_3797_ _1295_ _gen_int_sys_clk.clk_sys_r_bF$buf1_ _u_rf_if.issue_chunk_[3] vdd gnd DFFPOSX1
X_3377_ _427_ _397_ _1536__bF$buf2 _1194_ vdd gnd MUX2X1
XFILL_0__2212_ gnd vdd FILL
X_1863_ _1855_ o_mem_sync vdd gnd BUFX2
X_2648_ _u_rf_if.stream_cnt_[4] _1749_ _1750_ vdd gnd NAND2X1
X_2228_ _u_cpu.state.cnt_r_[3] _u_cpu.bufreg2.i_bytecnt_[0] _u_cpu.state.o_cnt_[2] _720_ vdd gnd NAND3X1
XFILL_0__1903_ gnd vdd FILL
X_3186_ _659__bF$buf5 _292_ _289_ _1250_ vdd gnd OAI21X1
XFILL_0__2861_ gnd vdd FILL
X_1919_ _995_ _1004_ _993_ _992_ vdd gnd OAI21X1
XFILL_0__3226_ gnd vdd FILL
X_2877_ _67_ i_rst_n_bF$buf8 _1334_ vdd gnd AND2X2
X_2457_ _1563_ _1577_ _1564_ _1580_ vdd gnd NAND3X1
X_2037_ _896_ _973__bF$buf0 _891_ _890_ vdd gnd OAI21X1
XFILL128850x21750 gnd vdd FILL
XFILL_0__2250_ gnd vdd FILL
X_2686_ _u_rf_if.stream_cnt_[2] _1749_ _1777_ vdd gnd NAND2X1
X_2266_ _u_cpu.immdec.gen_immdec_w_eq_1.imm11_7_[3] _682_ vdd gnd INVX1
XFILL_0__2726_ gnd vdd FILL
X_1957_ _966_ _973__bF$buf4 _961_ _960_ vdd gnd OAI21X1
XFILL_0__3684_ gnd vdd FILL
XFILL_0__3264_ gnd vdd FILL
X_2495_ _u_rf_if.tx_state_[0] _1618_ vdd gnd INVX1
X_2075_ _1023__bF$buf3 _858_ _857_ vdd gnd NOR2X1
XFILL_0__2115_ gnd vdd FILL
XFILL_0__3073_ gnd vdd FILL
X_3912_ _1156_ _gen_int_sys_clk.clk_sys_r_bF$buf27_ _u_cpu.ctrl.o_ibus_adr_[25] vdd gnd DFFPOSX1
X_3089_ i_rst_n_bF$buf8 _u_cpu.state.cnt_r_[0] _1275_ vdd gnd AND2X2
XFILL_0__2764_ gnd vdd FILL
X_4030_ _1417_ i_clk_fast_bF$buf4 _1858_ vdd gnd DFFPOSX1
XFILL_0__3549_ gnd vdd FILL
XFILL_0__3129_ gnd vdd FILL
X_1995_ _1023__bF$buf3 _928_ _927_ vdd gnd NOR2X1
X_3721_ _1456_ i_clk_fast_bF$buf2 _u_mem_serial.bit_count_[5] vdd gnd DFFPOSX1
X_3301_ _u_cpu.immdec.gen_immdec_w_eq_1.imm31_ _1543_ _382_ _383_ vdd gnd AOI21X1
XFILL_0__2573_ gnd vdd FILL
XFILL_0__2153_ gnd vdd FILL
X_2589_ _1471_ _1701_ vdd gnd INVX1
X_2169_ _1002__bF$buf3 _775_ _774_ vdd gnd NOR2X1
X_3950_ _1174_ _gen_int_sys_clk.clk_sys_r_bF$buf8_ _u_cpu.bufreg2.dlo_[14] vdd gnd DFFPOSX1
X_3530_ mem_dbus_ack_bF$buf0 _u_cpu.bufreg2.dlo_[4] _549_ _550_ vdd gnd OAI21X1
X_3110_ _229_ _231_ _234_ _235_ _236_ vdd 
+ gnd
+ AOI22X1
XFILL_0__2629_ gnd vdd FILL
X_2801_ _1783__bF$buf4 _8_ _9_ _10_ vdd gnd OAI21X1
XFILL_0__3587_ gnd vdd FILL
X_2398_ _725_ _1062_ _1520_ _1521_ vdd gnd NAND3X1
XFILL_0__2438_ gnd vdd FILL
XFILL_0__2018_ gnd vdd FILL
X_2610_ _1639_ _1717_ _1719_ _1720_ vdd gnd NAND3X1
X_3815_ _1304_ _gen_int_sys_clk.clk_sys_r_bF$buf32_ _u_rf_if.rreg1_latched_[3] vdd gnd DFFPOSX1
XFILL128850x111750 gnd vdd FILL
X_1898_ _1013_ _1014_ _1012_ vdd gnd NOR2X1
XFILL_0__1938_ gnd vdd FILL
X_3624_ ibus_pending_ack_bF$buf5 _674__bF$buf0 mem_ibus_ack _602_ vdd gnd OAI21X1
X_3204_ _u_cpu.csr_imm_ _296_ _659__bF$buf2 _306_ vdd gnd OAI21X1
XFILL_0__2896_ gnd vdd FILL
XFILL_0__2476_ gnd vdd FILL
X_3853_ _u_cpu.branch_op_ _1063_ vdd gnd INVX2
X_3433_ _474_ _469_ _475_ vdd gnd NOR2X1
X_3013_ _169_ _166_ _1070__bF$buf5 _1300_ vdd gnd AOI21X1
XFILL_0__2285_ gnd vdd FILL
X_2704_ _u_rf_if.read_buf1_[2] _1783__bF$buf3 _1791_ vdd gnd NAND2X1
XFILL129150x108150 gnd vdd FILL
X_3909_ _1349_ _gen_int_sys_clk.clk_sys_r_bF$buf21_ _u_rf_if.read_buf1_[29] vdd gnd DFFPOSX1
XFILL_0__1976_ gnd vdd FILL
X_3662_ _1046_ _1048_ _1043_ vdd gnd NOR2X1
X_3242_ _u_cpu.immdec.gen_immdec_w_eq_1.imm30_25_[1] _335_ _659__bF$buf1 _336_ vdd gnd MUX2X1
X_4027_ _1415_ i_clk_fast_bF$buf4 _u_rf_if.tx_state_[4] vdd gnd DFFPOSX1
XFILL_0__3702_ gnd vdd FILL
X_2933_ _110_ _109_ _1070__bF$buf6 _1321_ vdd gnd AOI21X1
X_2513_ _1635_ _737_ _1636_ vdd gnd NAND2X1
XFILL_0__3299_ gnd vdd FILL
X_3718_ _1246_ _gen_int_sys_clk.clk_sys_r_bF$buf22_ _u_cpu.csr_imm_ vdd gnd DFFPOSX1
X_3891_ _1340_ _gen_int_sys_clk.clk_sys_r_bF$buf23_ _u_rf_if.read_buf0_[8] vdd gnd DFFPOSX1
X_3471_ _u_cpu.bufreg2.dlo_[17] _505_ vdd gnd INVX1
X_3051_ _1639_ _197_ vdd gnd INVX1
XFILL128250x46950 gnd vdd FILL
X_2742_ _1819_ i_rst_n_bF$buf7 _1367_ vdd gnd AND2X2
X_2322_ _1076_ _u_rf_if.last_req_key_[3] _1083_ vdd gnd AND2X2
X_3947_ _1368_ _gen_int_sys_clk.clk_sys_r_bF$buf15_ _u_rf_if.read_buf1_[10] vdd gnd DFFPOSX1
X_3527_ _u_cpu.bufreg2.dlo_[3] _547_ vdd gnd INVX1
X_3107_ _u_cpu.decode.co_mem_word_ _1501_ _1569_ _233_ vdd gnd AOI21X1
X_3280_ _365_ _1692__bF$buf1 _366_ vdd gnd NAND2X1
XFILL_0__2799_ gnd vdd FILL
X_4065_ _1434_ i_clk_fast_bF$buf0 _u_mem_serial.shift_reg_[21] vdd gnd DFFPOSX1
X_2971_ _u_rf_if.rreg1_latched_[3] _u_rf_if.rreg0_latched_[3] _u_rf_if.issue_sel_ _136_ vdd gnd MUX2X1
X_2551_ _1052_ _1669_ _1070__bF$buf3 _1408_ vdd gnd AOI21X1
X_2131_ _1023__bF$buf5 _809_ _808_ vdd gnd NOR2X1
X_3756_ _1273_ _gen_int_sys_clk.clk_sys_r_bF$buf14_ _u_cpu.bufreg2.i_bytecnt_[0] vdd gnd DFFPOSX1
X_3336_ _u_cpu.bufreg.data_[19] _406_ vdd gnd INVX1
XFILL_0__2188_ gnd vdd FILL
X_2607_ _1716_ _1715_ _1717_ vdd gnd NOR2X1
X_2780_ _u_rf_if.read_buf1_[21] _1783__bF$buf1 _1848_ vdd gnd NAND2X1
X_2360_ _736_ _732_ _1487_ _1488_ vdd gnd NAND3X1
X_3985_ _1188_ _gen_int_sys_clk.clk_sys_r_bF$buf13_ _u_cpu.bufreg2.dhi_[5] vdd gnd DFFPOSX1
X_3565_ _574_ _212__bF$buf1 _573_ _570__bF$buf0 _1153_ vdd 
+ gnd
+ OAI22X1
X_3145_ _262_ _261_ ibus_pending_ack_bF$buf1 _263_ vdd gnd MUX2X1
XFILL_0__3605_ gnd vdd FILL
X_2836_ _22__bF$buf6 _35_ _36_ _37_ vdd gnd OAI21X1
X_2416_ _686_ _u_cpu.bufreg2.i_op_b_sel_ _1522_ _1539_ vdd gnd NAND3X1
X_3794_ _1072_ i_clk_fast_bF$buf3 _gen_int_sys_clk.clk_div_[3] vdd gnd DFFPOSX1
X_3374_ _424_ _425_ _704_ _426_ vdd gnd MUX2X1
XFILL_0__3414_ gnd vdd FILL
X_1860_ _1858_ o_rf_sync vdd gnd BUFX2
X_2645_ _u_rf_if.write_wait_[1] _u_rf_if.write_wait_[0] _1748_ vdd gnd NAND2X1
X_2225_ _u_cpu.bufreg.i_right_shift_op_ _u_cpu.decode.co_mem_word_ _723_ vdd gnd NAND2X1
XFILL_0__1900_ gnd vdd FILL
X_3183_ ibus_pending_rdt[30] _290_ vdd gnd INVX1
X_1916_ _u_cpu.ctrl.o_ibus_adr_[1] _995_ vdd gnd INVX1
X_2874_ _u_rf_if.read_buf0_[15] _u_rf_if.read_buf0_[16] _u_rf_if.stream_active_bF$buf2_ _65_ vdd gnd MUX2X1
X_2454_ _1063_ _1505_ _1577_ vdd gnd NAND2X1
X_2034_ _u_cpu.bufreg.data_[17] _u_cpu.ctrl.o_ibus_adr_[17] _1006__bF$buf4 _893_ vdd gnd MUX2X1
X_3659_ _1041_ _1045_ _1049_ _1461_ vdd gnd AOI21X1
X_3239_ _315_ _332_ _333_ _1238_ vdd gnd AOI21X1
XFILL_0__2914_ gnd vdd FILL
XFILL_0__3452_ gnd vdd FILL
X_2683_ _1753_ _1754_ _u_rf_if.stream_active_bF$buf3_ _1775_ vdd gnd OAI21X1
X_2263_ _687_ _686_ _685_ vdd gnd NAND2X1
X_3888_ _1150_ _gen_int_sys_clk.clk_sys_r_bF$buf25_ _u_cpu.ctrl.o_ibus_adr_[19] vdd gnd DFFPOSX1
X_3468_ mem_dbus_ack_bF$buf5 _889_ _503_ vdd gnd NAND2X1
X_3048_ _736_ _1638_ _1666_ _195_ vdd gnd NAND3X1
XFILL_0__2303_ gnd vdd FILL
XFILL129150x3750 gnd vdd FILL
X_1954_ _u_cpu.bufreg.data_[7] _u_cpu.ctrl.o_ibus_adr_[7] _1006__bF$buf3 _963_ vdd gnd MUX2X1
X_2739_ _u_rf_if.read_buf1_[12] _u_rf_if.read_buf1_[13] _u_rf_if.stream_active_bF$buf0_ _1817_ vdd gnd MUX2X1
X_2319_ _735_ raddr[3] _1074_ vdd gnd OR2X2
X_2492_ _1590_ _1605_ _1614_ _1615_ vdd gnd OAI21X1
X_2072_ _u_mem_serial.shift_reg_[21] _u_cpu.bufreg2.dlo_[16] _994__bF$buf5 _860_ vdd gnd MUX2X1
X_3697_ _622_ _626_ _631_ _632_ vdd gnd OAI21X1
X_3277_ _351_ _684_ _363_ _1230_ vdd gnd AOI21X1
XFILL_0__2952_ gnd vdd FILL
XFILL_0__3317_ gnd vdd FILL
XFILL128550x54150 gnd vdd FILL
X_2968_ _u_rf_if.rreg1_latched_[2] _u_rf_if.rreg0_latched_[2] _u_rf_if.issue_sel_ _134_ vdd gnd MUX2X1
X_2548_ _1667_ _1665_ _1070__bF$buf4 _1409_ vdd gnd AOI21X1
X_2128_ _u_mem_serial.shift_reg_[28] _u_cpu.bufreg2.dlo_[23] _994__bF$buf1 _811_ vdd gnd MUX2X1
X_3086_ _u_mem_serial.active_we_ _786_ _1052_ _220_ vdd gnd MUX2X1
XFILL_0__2761_ gnd vdd FILL
XFILL_0__2341_ gnd vdd FILL
X_1992_ _u_mem_serial.shift_reg_[11] _u_cpu.bufreg2.dlo_[6] _994__bF$buf5 _930_ vdd gnd MUX2X1
X_2777_ _1783__bF$buf4 _1844_ _1845_ _1846_ vdd gnd OAI21X1
X_2357_ _1481_ _1484_ _1485_ vdd gnd NAND2X1
XFILL_0__2817_ gnd vdd FILL
XFILL_0__2150_ gnd vdd FILL
X_2586_ _1698_ _1699_ vdd gnd INVX1
X_2166_ _778_ _779_ _777_ vdd gnd AND2X2
XFILL_0__2626_ gnd vdd FILL
XFILL_0__2206_ gnd vdd FILL
XFILL_0__3164_ gnd vdd FILL
X_2395_ _u_cpu.decode.opcode_[2] _680_ _1518_ vdd gnd NAND2X1
XFILL_0__2015_ gnd vdd FILL
X_3812_ _1132_ _gen_int_sys_clk.clk_sys_r_bF$buf7_ _u_cpu.ctrl.o_ibus_adr_[1] vdd gnd DFFPOSX1
XFILL_0__2664_ gnd vdd FILL
XFILL_0__3029_ gnd vdd FILL
X_1895_ _1038_ _1018_ _1015_ vdd gnd NAND2X1
X_3621_ _1066_ _236_ _601_ vdd gnd NAND2X1
X_3201_ rreg0[1] _296_ _659__bF$buf0 _304_ vdd gnd OAI21X1
XFILL_0__2053_ gnd vdd FILL
XFILL_0__3678_ gnd vdd FILL
X_2489_ _1554_ _u_cpu.state.cnt_r_[2] _1609_ _1612_ vdd gnd AOI21X1
X_2069_ _868_ _973__bF$buf1 _863_ _862_ vdd gnd OAI21X1
X_3850_ _1320_ _gen_int_sys_clk.clk_sys_r_bF$buf31_ _u_rf_if.read_buf0_[28] vdd gnd DFFPOSX1
X_3430_ mem_dbus_ack_bF$buf3 _472_ _467_ _473_ vdd gnd OAI21X1
X_3010_ ibus_pending_rdt[18] _167_ vdd gnd INVX1
XFILL_0__2949_ gnd vdd FILL
XFILL_0__2529_ gnd vdd FILL
X_2701_ _1783__bF$buf0 _1787_ _1788_ _1789_ vdd gnd OAI21X1
XFILL_0__3487_ gnd vdd FILL
XFILL_0__3067_ gnd vdd FILL
X_3906_ i_rst_n_bF$buf0 vdd _1099_ _gen_int_sys_clk.clk_sys_r_bF$buf30_ ibus_pending_rdt[8] vdd 
+ gnd
+ DFFSR
X_2298_ _u_rf_if.last_req_key_[4] _650_ vdd gnd INVX1
XFILL_0__1973_ gnd vdd FILL
X_4024_ _1206_ _gen_int_sys_clk.clk_sys_r_bF$buf19_ _u_cpu.bufreg.data_[12] vdd gnd DFFPOSX1
XFILL_0__2091_ gnd vdd FILL
X_1989_ _938_ _973__bF$buf1 _933_ _932_ vdd gnd OAI21X1
X_2930_ _u_rf_if.stream_active_bF$buf5_ _106_ _107_ _108_ vdd gnd OAI21X1
X_2510_ _1470_ _1623_ _1632_ _1633_ vdd gnd AOI21X1
X_3715_ _1453_ i_clk_fast_bF$buf6 _u_mem_serial.shift_reg_[2] vdd gnd DFFPOSX1
XFILL_0__2987_ gnd vdd FILL
XFILL_0__2567_ gnd vdd FILL
X_3944_ _1171_ _gen_int_sys_clk.clk_sys_r_bF$buf13_ _u_cpu.bufreg2.dlo_[11] vdd gnd DFFPOSX1
X_3524_ mem_dbus_ack_bF$buf0 _261_ _545_ vdd gnd NAND2X1
X_3104_ _1581_ _1583_ _230_ vdd gnd NAND2X1
XFILL_0__2376_ gnd vdd FILL
X_4062_ _1224_ _gen_int_sys_clk.clk_sys_r_bF$buf4_ rreg1[4] vdd gnd DFFPOSX1
X_3753_ _1270_ _gen_int_sys_clk.clk_sys_r_bF$buf34_ _u_cpu.state.cnt_r_[3] vdd gnd DFFPOSX1
X_3333_ _403_ _404_ _1536__bF$buf1 _1215_ vdd gnd MUX2X1
X_2604_ _1708_ _1713_ _1714_ vdd gnd NAND2X1
X_3809_ _1301_ _gen_int_sys_clk.clk_sys_r_bF$buf32_ _u_rf_if.rreg0_latched_[2] vdd gnd DFFPOSX1
XFILL_0__1876_ gnd vdd FILL
X_3982_ _1388_ _gen_int_sys_clk.clk_sys_r_bF$buf31_ _u_rf_if.ready_pulse_ vdd gnd DFFPOSX1
X_3562_ _u_cpu.ctrl.o_ibus_adr_[23] _573_ vdd gnd INVX1
X_3142_ _787_ _260_ _659__bF$buf2 _1262_ vdd gnd MUX2X1
XFILL_0__3602_ gnd vdd FILL
X_2833_ _34_ i_rst_n_bF$buf5 _1345_ vdd gnd AND2X2
X_2413_ _1535_ _1533_ _1536_ vdd gnd NAND2X1
X_3618_ _1066_ _232_ _599_ vdd gnd NAND2X1
X_3791_ _1292_ i_clk_fast_bF$buf5 _u_rf_if.last_req_key_[2] vdd gnd DFFPOSX1
X_3371_ _422_ _1536__bF$buf3 _423_ _1196_ vdd gnd AOI21X1
X_2642_ _1745_ _847_ ibus_pending_ack_bF$buf4 _1746_ vdd gnd MUX2X1
X_2222_ _u_cpu.state.init_done_ _726_ vdd gnd INVX1
X_3847_ _1140_ _gen_int_sys_clk.clk_sys_r_bF$buf18_ _u_cpu.ctrl.o_ibus_adr_[9] vdd gnd DFFPOSX1
X_3427_ _776_ _469_ _470_ vdd gnd NOR2X1
X_3007_ _164_ _1692__bF$buf3 _165_ vdd gnd NAND2X1
X_3180_ _278_ _1024_ mem_dbus_ack_bF$buf1 _288_ vdd gnd AOI21X1
X_1913_ _1008_ _1004_ _998_ _997_ vdd gnd OAI21X1
XFILL_0__2699_ gnd vdd FILL
XFILL_0__2279_ gnd vdd FILL
XFILL_0__3640_ gnd vdd FILL
X_2871_ _u_rf_if.read_buf0_[13] _22__bF$buf4 _63_ vdd gnd NAND2X1
X_2451_ _1559_ _1560_ _1573_ _1574_ vdd gnd OAI21X1
X_2031_ _u_mem_serial.shift_reg_[17] _896_ vdd gnd INVX1
X_3656_ ibus_pending_rdt[0] _604_ vdd gnd INVX1
X_3236_ _330_ _833_ ibus_pending_ack_bF$buf3 _331_ vdd gnd MUX2X1
XFILL_0__2088_ gnd vdd FILL
X_2927_ _105_ _104_ _1070__bF$buf6 _1322_ vdd gnd AOI21X1
X_2507_ _1629_ _1628_ _1630_ vdd gnd NAND2X1
XFILL128250x126150 gnd vdd FILL
X_2680_ _u_rf_if.stream_cnt_[0] _u_rf_if.stream_active_bF$buf3_ i_rst_n_bF$buf9 _1773_ vdd gnd OAI21X1
X_2260_ _1066_ _704_ _688_ vdd gnd NAND2X1
X_3885_ _1337_ _gen_int_sys_clk.clk_sys_r_bF$buf34_ _u_rf_if.read_buf0_[11] vdd gnd DFFPOSX1
X_3465_ mem_dbus_ack_bF$buf3 _u_cpu.bufreg2.dlo_[20] _500_ _501_ vdd gnd OAI21X1
X_3045_ _u_rf_if.last_req_key_[3] _1488_ _193_ vdd gnd NAND2X1
XFILL_0__3505_ gnd vdd FILL
X_1951_ _u_mem_serial.shift_reg_[7] _966_ vdd gnd INVX1
X_2736_ _u_rf_if.read_buf1_[10] _1783__bF$buf5 _1815_ vdd gnd NAND2X1
X_2316_ _612_ _608_ _607_ vdd gnd NOR2X1
X_3694_ ibus_pending_ack_bF$buf2 _627_ _628_ _629_ vdd gnd OAI21X1
X_3274_ _360_ _959_ ibus_pending_ack_bF$buf5 _361_ vdd gnd MUX2X1
X_4059_ _1431_ i_clk_fast_bF$buf7 _u_mem_serial.shift_reg_[24] vdd gnd DFFPOSX1
X_2965_ _u_rf_if.issue_sel_ _130_ _131_ _132_ vdd gnd AOI21X1
X_2545_ _u_rf_if.last_req_key_[10] _1488_ _1665_ vdd gnd NAND2X1
X_2125_ _819_ _973__bF$buf3 _814_ _813_ vdd gnd OAI21X1
X_3083_ _1002__bF$buf2 _217_ _785_ _218_ vdd gnd OAI21X1
XFILL128550x75750 gnd vdd FILL
XFILL_0__3543_ gnd vdd FILL
X_2774_ _1843_ i_rst_n_bF$buf7 _1359_ vdd gnd AND2X2
X_2354_ ren raddr[7] _1482_ vdd gnd NAND2X1
X_3979_ _1386_ _gen_int_sys_clk.clk_sys_r_bF$buf21_ _u_rf_if.stream_active_ vdd gnd DFFPOSX1
X_3559_ _571_ _212__bF$buf0 _568_ _570__bF$buf1 _1156_ vdd 
+ gnd
+ OAI22X1
X_3139_ ibus_pending_rdt[5] _258_ vdd gnd INVX1
XFILL_0__2814_ gnd vdd FILL
X_4097_ _1450_ i_clk_fast_bF$buf6 _u_mem_serial.shift_reg_[5] vdd gnd DFFPOSX1
XFILL_0__3352_ gnd vdd FILL
X_2583_ _659__bF$buf4 _1696_ _1687_ _1403_ vdd gnd AOI21X1
X_2163_ _u_cpu.state.i_ctrl_misalign_ _780_ vdd gnd INVX1
X_3788_ _1123_ _gen_int_sys_clk.clk_sys_r_bF$buf34_ _u_cpu.alu.cmp_r_ vdd gnd DFFPOSX1
X_3368_ _u_cpu.bufreg.data_[3] _422_ vdd gnd INVX1
XFILL_0__3408_ gnd vdd FILL
X_2639_ _1739_ _1742_ _1743_ _1394_ vdd gnd AOI21X1
X_2219_ _730_ _729_ vdd gnd INVX1
X_2392_ _1514_ _1515_ vdd gnd INVX1
X_3597_ _590_ _212__bF$buf4 _589_ _570__bF$buf3 _1137_ vdd 
+ gnd
+ OAI22X1
X_3177_ _705_ _1692__bF$buf0 _286_ _1253_ vdd gnd OAI21X1
XFILL_0__2852_ gnd vdd FILL
XFILL_0__2432_ gnd vdd FILL
XFILL_0__3217_ gnd vdd FILL
XFILL_0__3390_ gnd vdd FILL
X_2868_ _22__bF$buf4 _59_ _60_ _61_ vdd gnd OAI21X1
X_2448_ _u_cpu.bufreg.i_right_shift_op_ _1570_ _1571_ vdd gnd NAND2X1
X_2028_ _901_ _899_ _973__bF$buf2 _898_ vdd gnd OAI21X1
XFILL_0__2241_ gnd vdd FILL
XFILL_0__3866_ gnd vdd FILL
X_1892_ _1019_ _1018_ vdd gnd INVX1
X_2677_ _1769_ _1770_ _1767_ _1771_ vdd gnd NAND3X1
X_2257_ _693_ _692_ _u_cpu.branch_op_ _691_ vdd gnd AOI21X1
XFILL_0__2717_ gnd vdd FILL
XFILL_0__2890_ gnd vdd FILL
X_1948_ _971_ _969_ _973__bF$buf5 _968_ vdd gnd OAI21X1
XFILL_0__3675_ gnd vdd FILL
XFILL_0__3255_ gnd vdd FILL
X_2486_ _1608_ _1607_ _1609_ vdd gnd NOR2X1
X_2066_ _u_cpu.bufreg.data_[21] _u_cpu.ctrl.o_ibus_adr_[21] _1006__bF$buf3 _865_ vdd gnd MUX2X1
XFILL_0__2106_ gnd vdd FILL
X_3903_ _1346_ _gen_int_sys_clk.clk_sys_r_bF$buf5_ _u_rf_if.read_buf0_[2] vdd gnd DFFPOSX1
X_2295_ _u_rf_if.last_req_key_[8] _654_ _653_ vdd gnd NAND2X1
XFILL_0__2755_ gnd vdd FILL
X_4021_ _1410_ i_clk_fast_bF$buf5 _u_rf_if.req_seen_ vdd gnd DFFPOSX1
X_1986_ _u_cpu.bufreg.data_[11] _u_cpu.ctrl.o_ibus_adr_[11] _1006__bF$buf1 _935_ vdd gnd MUX2X1
XFILL129150x68550 gnd vdd FILL
XFILL_0__3293_ gnd vdd FILL
X_3712_ _369_ _798_ _602__bF$buf3 _1071_ vdd gnd MUX2X1
XFILL_0__2564_ gnd vdd FILL
XFILL_0__2144_ gnd vdd FILL
X_3941_ _1365_ _gen_int_sys_clk.clk_sys_r_bF$buf15_ _u_rf_if.read_buf1_[13] vdd gnd DFFPOSX1
X_3521_ mem_dbus_ack_bF$buf2 _u_cpu.bufreg2.dlo_[6] _542_ _543_ vdd gnd OAI21X1
X_3101_ i_rst_n_bF$buf8 _u_cpu.state.cnt_r_[2] _1270_ vdd gnd AND2X2
XFILL_0__3578_ gnd vdd FILL
X_2389_ _1511_ _1508_ _1512_ vdd gnd OR2X2
X_3750_ _1268_ _gen_int_sys_clk.clk_sys_r_bF$buf14_ _u_cpu.state.init_done_ vdd gnd DFFPOSX1
X_3330_ _u_cpu.bufreg.data_[22] _403_ vdd gnd INVX1
XFILL_0__2429_ gnd vdd FILL
XFILL_0__2009_ gnd vdd FILL
X_2601_ _u_rf_if.issue_sel_ _u_rf_if.issue_idx_[5] _1711_ vdd gnd NOR2X1
X_3806_ i_rst_n_bF$buf1 vdd _1075_ _gen_int_sys_clk.clk_sys_r_bF$buf2_ rf_write_drain_busy vdd 
+ gnd
+ DFFSR
X_2198_ _1014_ _750_ _1023__bF$buf0 _749_ vdd gnd OAI21X1
X_1889_ _u_mem_serial.bit_count_[4] _1021_ vdd gnd INVX1
X_2830_ _u_rf_if.read_buf0_[4] _u_rf_if.read_buf0_[5] _u_rf_if.stream_active_bF$buf6_ _32_ vdd gnd MUX2X1
X_2410_ _u_cpu.state.init_done_ _727_ _1532_ _1533_ vdd gnd NAND3X1
XFILL_0__1929_ gnd vdd FILL
X_3615_ _1551_ _1530_ _688_ _1126_ vdd gnd AOI21X1
XFILL_0__2887_ gnd vdd FILL
XFILL_0__2467_ gnd vdd FILL
X_3844_ _1317_ _gen_int_sys_clk.clk_sys_r_bF$buf24_ _u_rf_if.o_waddr_[1] vdd gnd DFFPOSX1
X_3424_ mem_dbus_ack_bF$buf3 _826_ _467_ vdd gnd NAND2X1
XFILL129150x115350 gnd vdd FILL
X_3004_ _673__bF$buf0 _674__bF$buf3 _u_rf_if.rreg0_latched_[2] _162_ vdd gnd OAI21X1
X_1910_ i_mem_miso _1001_ _1000_ vdd gnd NAND2X1
XFILL_0__1967_ gnd vdd FILL
X_3653_ _269_ _552_ _602__bF$buf2 _1093_ vdd gnd MUX2X1
X_3233_ _u_cpu.immdec.gen_immdec_w_eq_1.imm30_25_[2] _315_ _329_ vdd gnd NOR2X1
X_4018_ _1408_ i_clk_fast_bF$buf1 _1855_ vdd gnd DFFPOSX1
X_2924_ _u_rf_if.stream_active_bF$buf5_ _101_ _102_ _103_ vdd gnd OAI21X1
X_2504_ _1624_ _1626_ _671_ _1627_ vdd gnd NAND3X1
X_3709_ _638_ _602__bF$buf4 _1073_ vdd gnd NAND2X1
X_3882_ i_rst_n_bF$buf3 vdd _1093_ _gen_int_sys_clk.clk_sys_r_bF$buf30_ ibus_pending_rdt[2] vdd 
+ gnd
+ DFFSR
X_3462_ _496_ _498_ _450__bF$buf1 _1180_ vdd gnd MUX2X1
X_3042_ _189_ _190_ _1070__bF$buf4 _1292_ vdd gnd AOI21X1
X_2733_ _1783__bF$buf5 _1811_ _1812_ _1813_ vdd gnd OAI21X1
X_2313_ _647_ _671_ _610_ vdd gnd NAND2X1
X_3938_ _1168_ _gen_int_sys_clk.clk_sys_r_bF$buf12_ _u_cpu.bufreg2.dlo_[8] vdd gnd DFFPOSX1
X_3518_ _u_cpu.bufreg2.dlo_[5] _540_ vdd gnd INVX1
X_3691_ _253_ _256_ _625_ _285_ _626_ vdd 
+ gnd
+ AOI22X1
X_3271_ _659__bF$buf3 _357_ _358_ _359_ vdd gnd OAI21X1
X_4056_ _1221_ _gen_int_sys_clk.clk_sys_r_bF$buf10_ _u_cpu.bufreg.data_[27] vdd gnd DFFPOSX1
X_2962_ i_rst_n_bF$buf1 raddr[5] _129_ vdd gnd NAND2X1
X_2542_ _u_rf_if.req_seen_ _1663_ vdd gnd INVX1
X_2122_ _u_cpu.bufreg.data_[28] _u_cpu.ctrl.o_ibus_adr_[28] _1006__bF$buf4 _816_ vdd gnd MUX2X1
X_3747_ _1266_ i_clk_fast_bF$buf1 _u_mem_serial.active_ibus_ vdd gnd DFFPOSX1
X_3327_ _400_ _401_ _1536__bF$buf0 _1218_ vdd gnd MUX2X1
X_3080_ _1002__bF$buf2 _743_ _747_ _216_ vdd gnd OAI21X1
XFILL_0__2179_ gnd vdd FILL
XFILL_0__3540_ gnd vdd FILL
XFILL_0__3120_ gnd vdd FILL
X_2771_ _u_rf_if.read_buf1_[20] _u_rf_if.read_buf1_[21] _u_rf_if.stream_active_bF$buf1_ _1841_ vdd gnd MUX2X1
X_2351_ _640_ _1479_ vdd gnd INVX1
X_3976_ _1383_ _gen_int_sys_clk.clk_sys_r_bF$buf36_ _u_rf_if.rcnt_[2] vdd gnd DFFPOSX1
X_3556_ _214_ _570_ vdd gnd INVX8
X_3136_ _255_ _931_ ibus_pending_ack_bF$buf0 _256_ vdd gnd MUX2X1
XFILL128550x126150 gnd vdd FILL
X_4094_ _1240_ _gen_int_sys_clk.clk_sys_r_bF$buf36_ _u_cpu.immdec.gen_immdec_w_eq_1.imm30_25_[3] vdd gnd DFFPOSX1
X_2827_ _u_rf_if.read_buf0_[2] _22__bF$buf0 _30_ vdd gnd NAND2X1
X_2407_ _1529_ _1519_ _1530_ vdd gnd OR2X2
X_2580_ _1694_ _1692__bF$buf4 _1695_ vdd gnd NAND2X1
X_2160_ _788_ _783_ _973__bF$buf4 _782_ vdd gnd NAND3X1
X_3785_ _1289_ i_clk_fast_bF$buf3 _u_rf_if.last_req_key_[5] vdd gnd DFFPOSX1
X_3365_ _419_ _420_ _1536__bF$buf1 _1199_ vdd gnd MUX2X1
XFILL_0__2620_ gnd vdd FILL
XFILL_0__3405_ gnd vdd FILL
X_2636_ _1739_ _1738_ _1741_ _1395_ vdd gnd AOI21X1
X_2216_ _734_ _733_ _735_ _732_ vdd gnd OAI21X1
X_3594_ _u_cpu.ctrl.o_ibus_adr_[7] _589_ vdd gnd INVX1
X_3174_ ibus_pending_ack_bF$buf0 _283_ _284_ vdd gnd NAND2X1
X_1907_ _u_mem_serial.bit_count_[1] _1019_ _u_mem_serial.bit_count_[5] _1003_ vdd gnd OAI21X1
X_2865_ _58_ i_rst_n_bF$buf8 _1337_ vdd gnd AND2X2
X_2445_ _1559_ _1560_ _1567_ _1568_ vdd gnd OAI21X1
X_2025_ _1002__bF$buf4 _902_ _901_ vdd gnd NOR2X1
XFILL_0__2905_ gnd vdd FILL
XFILL_0__3443_ gnd vdd FILL
X_2674_ _1768_ _1384_ vdd gnd INVX1
X_2254_ _u_cpu.decode.co_mem_word_ _694_ vdd gnd INVX1
X_3879_ _1334_ _gen_int_sys_clk.clk_sys_r_bF$buf40_ _u_rf_if.read_buf0_[14] vdd gnd DFFPOSX1
X_3459_ _u_cpu.bufreg2.dlo_[20] _496_ vdd gnd INVX1
X_3039_ _187_ _188_ _1070__bF$buf4 _1293_ vdd gnd AOI21X1
X_1945_ _1002__bF$buf2 _972_ _971_ vdd gnd NOR2X1
X_2483_ _u_cpu.ctrl.pc_plus_4_cy_r_w_ _1606_ vdd gnd INVX1
X_2063_ _u_mem_serial.shift_reg_[21] _868_ vdd gnd INVX1
X_3688_ _260_ _623_ vdd gnd INVX1
X_3268_ ibus_pending_rdt[9] _356_ vdd gnd INVX1
XFILL_0__2943_ gnd vdd FILL
XFILL128550x28950 gnd vdd FILL
XFILL_0__3308_ gnd vdd FILL
XFILL_0__3481_ gnd vdd FILL
X_2959_ _u_rf_if.rreg1_latched_[0] _u_rf_if.rreg0_latched_[0] _u_rf_if.issue_sel_ _127_ vdd gnd MUX2X1
X_2539_ _u_rf_if.shift_rx_[0] _1659_ i_rst_n_bF$buf10 _1661_ vdd gnd OAI21X1
X_2119_ _u_mem_serial.shift_reg_[28] _819_ vdd gnd INVX1
X_3900_ _1153_ _gen_int_sys_clk.clk_sys_r_bF$buf18_ _u_cpu.ctrl.o_ibus_adr_[22] vdd gnd DFFPOSX1
X_2292_ _730_ _657_ _667_ _656_ vdd gnd OAI21X1
X_3497_ _522_ _524_ _450__bF$buf0 _1171_ vdd gnd MUX2X1
X_3077_ _1070__bF$buf6 _688_ _214_ vdd gnd NOR2X1
XFILL_0__2752_ gnd vdd FILL
XFILL_0__2332_ gnd vdd FILL
X_1983_ _u_mem_serial.shift_reg_[11] _938_ vdd gnd INVX1
XFILL_0__3290_ gnd vdd FILL
X_2768_ _u_rf_if.read_buf1_[18] _1783__bF$buf0 _1839_ vdd gnd NAND2X1
X_2348_ _1089_ _1475_ _1476_ vdd gnd NOR2X1
XFILL_0__2808_ gnd vdd FILL
XFILL_0__3346_ gnd vdd FILL
X_2997_ _156_ _1692__bF$buf4 _157_ vdd gnd NAND2X1
X_2577_ _659__bF$buf5 _1692_ vdd gnd INVX8
X_2157_ _u_mem_serial.state_[1] _1024_ _786_ _785_ vdd gnd OAI21X1
XFILL_0__2617_ gnd vdd FILL
XFILL_0__2790_ gnd vdd FILL
XFILL_0__2370_ gnd vdd FILL
XFILL_0__3155_ gnd vdd FILL
X_2386_ _u_rf_if.o_waddr_[2] _u_rf_if.o_waddr_[1] _1509_ vdd gnd NOR2X1
X_3803_ _1298_ _gen_int_sys_clk.clk_sys_r_bF$buf1_ _u_rf_if.issue_chunk_[0] vdd gnd DFFPOSX1
X_2195_ _753_ _752_ _1070__bF$buf1 _1419_ vdd gnd AOI21X1
XFILL_0__2655_ gnd vdd FILL
XFILL_0__2235_ gnd vdd FILL
X_1886_ _u_mem_serial.state_[0] _1024_ vdd gnd INVX2
XFILL_0__3193_ gnd vdd FILL
X_3612_ _u_cpu.ctrl.o_ibus_adr_[29] _597_ vdd gnd INVX1
XFILL_0__2044_ gnd vdd FILL
XFILL_0__3669_ gnd vdd FILL
X_3841_ _1064_ _1061_ _1060_ vdd gnd OR2X2
X_3421_ _666_ _464_ _456_ _465_ vdd gnd AOI21X1
X_3001_ _159_ _903_ ibus_pending_ack_bF$buf5 _160_ vdd gnd MUX2X1
XFILL129150x54150 gnd vdd FILL
XFILL_0__2693_ gnd vdd FILL
XFILL_0__3478_ gnd vdd FILL
XFILL_0__3058_ gnd vdd FILL
X_2289_ _728_ _660_ _661_ _659_ vdd gnd NAND3X1
X_3650_ _258_ _541_ _602__bF$buf0 _1096_ vdd gnd MUX2X1
X_3230_ ibus_pending_rdt[27] _326_ vdd gnd INVX1
X_4015_ _1407_ _gen_int_sys_clk.clk_sys_r_bF$buf36_ _u_rf_if.rcnt_[1] vdd gnd DFFPOSX1
XFILL128850x36150 gnd vdd FILL
XFILL_0__2082_ gnd vdd FILL
X_2921_ _100_ i_rst_n_bF$buf11 _1323_ vdd gnd AND2X2
X_2501_ _740_ _1623_ _1624_ vdd gnd NOR2X1
X_3706_ _675_ _689_ _637_ _1075_ vdd gnd OAI21X1
X_2098_ _u_cpu.bufreg.data_[25] _u_cpu.ctrl.o_ibus_adr_[25] _1006__bF$buf4 _837_ vdd gnd MUX2X1
XFILL_0__2978_ gnd vdd FILL
XFILL_0__2558_ gnd vdd FILL
X_2730_ _1810_ i_rst_n_bF$buf7 _1370_ vdd gnd AND2X2
X_2310_ _u_rf_if.last_req_key_[6] _641_ _634_ _633_ vdd gnd NAND3X1
XFILL_0__3096_ gnd vdd FILL
X_3935_ _1362_ _gen_int_sys_clk.clk_sys_r_bF$buf43_ _u_rf_if.read_buf1_[16] vdd gnd DFFPOSX1
X_3515_ mem_dbus_ack_bF$buf0 _974_ _538_ vdd gnd NAND2X1
XFILL_0__2367_ gnd vdd FILL
X_4053_ _1125_ _gen_int_sys_clk.clk_sys_r_bF$buf14_ _u_cpu.ctrl.pc_plus_4_cy_r_w_ vdd gnd DFFPOSX1
X_3744_ i_rst_n_bF$buf0 vdd _1105_ _gen_int_sys_clk.clk_sys_r_bF$buf12_ ibus_pending_rdt[14] vdd 
+ gnd
+ DFFSR
X_3324_ _u_cpu.bufreg.data_[25] _400_ vdd gnd INVX1
XFILL_0__1867_ gnd vdd FILL
X_3973_ _1381_ _gen_int_sys_clk.clk_sys_r_bF$buf28_ _u_rf_if.stream_cnt_[1] vdd gnd DFFPOSX1
X_3553_ _565_ _452_ _567_ _566_ _1158_ vdd 
+ gnd
+ AOI22X1
X_3133_ _659__bF$buf5 _253_ _254_ vdd gnd OR2X2
X_4091_ _1447_ i_clk_fast_bF$buf8 _u_mem_serial.shift_reg_[8] vdd gnd DFFPOSX1
X_2824_ _22__bF$buf5 _26_ _27_ _28_ vdd gnd OAI21X1
X_2404_ _u_cpu.decode.opcode_[0] _u_cpu.decode.opcode_[1] _1526_ _1527_ vdd gnd AOI21X1
X_3609_ _569_ _212__bF$buf0 _595_ _570__bF$buf4 _1130_ vdd 
+ gnd
+ OAI22X1
X_3782_ i_rst_n_bF$buf10 vdd _1120_ _gen_int_sys_clk.clk_sys_r_bF$buf4_ ibus_pending_rdt[29] vdd 
+ gnd
+ DFFSR
X_3362_ _u_cpu.bufreg.data_[6] _419_ vdd gnd INVX1
X_2633_ _u_rf_if.shift_rx_[1] _1720_ _1739_ vdd gnd NAND2X1
X_2213_ ren _735_ vdd gnd INVX2
X_3838_ _1314_ _gen_int_sys_clk.clk_sys_r_bF$buf1_ raddr[1] vdd gnd DFFPOSX1
X_3418_ _u_cpu.bufreg2.dhi_[4] _714_ _462_ vdd gnd NOR2X1
X_3591_ _587_ _212__bF$buf1 _586_ _570__bF$buf0 _1140_ vdd 
+ gnd
+ OAI22X1
X_3171_ _u_mem_serial.shift_reg_[6] ibus_pending_ack_bF$buf2 _281_ _282_ vdd gnd OAI21X1
X_1904_ _1061_ _1064_ _1007_ _1006_ vdd gnd OAI21X1
XFILL_0__3631_ gnd vdd FILL
XFILL_0__3211_ gnd vdd FILL
X_2862_ _u_rf_if.read_buf0_[12] _u_rf_if.read_buf0_[13] _u_rf_if.stream_active_bF$buf2_ _56_ vdd gnd MUX2X1
X_2442_ _1564_ _1563_ _1565_ vdd gnd AND2X2
X_2022_ _904_ i_rst_n_bF$buf6 _1440_ vdd gnd AND2X2
X_3647_ _360_ _959_ _602__bF$buf2 _1099_ vdd gnd MUX2X1
X_3227_ _u_cpu.immdec.gen_immdec_w_eq_1.imm30_25_[4] _323_ _659__bF$buf1 _324_ vdd gnd MUX2X1
XFILL_0__3020_ gnd vdd FILL
XFILL128850x126150 gnd vdd FILL
X_2918_ _u_rf_if.read_buf0_[26] _u_rf_if.read_buf0_[27] _u_rf_if.stream_active_bF$buf6_ _98_ vdd gnd MUX2X1
X_2671_ _1070__bF$buf2 _1619_ _1385_ vdd gnd NOR2X1
X_2251_ mem_dbus_ack_bF$buf3 _697_ vdd gnd INVX2
X_3876_ _1147_ _gen_int_sys_clk.clk_sys_r_bF$buf27_ _u_cpu.ctrl.o_ibus_adr_[16] vdd gnd DFFPOSX1
X_3456_ mem_dbus_ack_bF$buf6 _868_ _494_ vdd gnd NAND2X1
X_3036_ _1086_ _186_ vdd gnd INVX1
X_1942_ _u_mem_serial.shift_reg_[6] _974_ vdd gnd INVX1
X_2727_ _u_rf_if.read_buf1_[9] _u_rf_if.read_buf1_[10] _u_rf_if.stream_active_bF$buf0_ _1808_ vdd gnd MUX2X1
X_2307_ _642_ _641_ vdd gnd INVX1
X_2480_ _1602_ _1592_ _1603_ vdd gnd NOR2X1
X_2060_ _873_ _871_ _973__bF$buf6 _870_ vdd gnd OAI21X1
X_3685_ _gen_int_sys_clk.clk_sys_r_bF$buf36_ _620_ _621_ vdd gnd NAND2X1
X_3265_ _687_ _350_ _659__bF$buf3 _354_ vdd gnd NAND3X1
XFILL_0__2520_ gnd vdd FILL
XFILL_0__2100_ gnd vdd FILL
XFILL128550x82950 gnd vdd FILL
X_2956_ _125_ _124_ _1070__bF$buf0 _1313_ vdd gnd AOI21X1
X_2536_ i_rf_miso _1658_ vdd gnd INVX1
X_2116_ _824_ _822_ _973__bF$buf3 _821_ vdd gnd OAI21X1
X_3494_ _u_cpu.bufreg2.dlo_[11] _522_ vdd gnd INVX1
X_3074_ _u_cpu.ctrl.o_ibus_adr_[31] _211_ vdd gnd INVX1
XFILL_0__3534_ gnd vdd FILL
X_1980_ _943_ _941_ _973__bF$buf0 _940_ vdd gnd OAI21X1
X_2765_ _1783__bF$buf0 _1835_ _1836_ _1837_ vdd gnd OAI21X1
X_2345_ _u_rf_if.last_req_key_[10] _1471_ _1473_ vdd gnd NAND2X1
X_4088_ _1237_ _gen_int_sys_clk.clk_sys_r_bF$buf11_ _u_cpu.immdec.gen_immdec_w_eq_1.imm30_25_[0] vdd gnd DFFPOSX1
XFILL_0__3343_ gnd vdd FILL
X_2994_ _673__bF$buf2 _674__bF$buf1 _u_rf_if.rreg0_latched_[0] _154_ vdd gnd OAI21X1
X_2574_ i_rst_n_bF$buf1 _1680_ _1690_ vdd gnd NAND2X1
X_2154_ _798_ _790_ _789_ _788_ vdd gnd OAI21X1
X_3779_ _1286_ i_clk_fast_bF$buf3 _u_rf_if.last_req_key_[8] vdd gnd DFFPOSX1
X_3359_ _416_ _417_ _1536__bF$buf1 _1202_ vdd gnd MUX2X1
X_2383_ _1502_ _1505_ _1503_ _1506_ vdd gnd NAND3X1
X_3588_ _u_cpu.ctrl.o_ibus_adr_[10] _586_ vdd gnd INVX1
X_3168_ _279_ _276_ _277_ _1255_ vdd gnd AOI21X1
XFILL_0__2843_ gnd vdd FILL
XFILL_0__2423_ gnd vdd FILL
XFILL_0__3208_ gnd vdd FILL
XFILL_0__3381_ gnd vdd FILL
X_2859_ _u_rf_if.read_buf0_[10] _22__bF$buf1 _54_ vdd gnd NAND2X1
X_2439_ _u_rf_if.read_buf1_[0] _u_rf_if.stream_active_bF$buf6_ _787_ _1562_ vdd gnd AOI21X1
X_2019_ _1023__bF$buf5 _907_ _906_ vdd gnd NOR2X1
X_3800_ _1129_ _gen_int_sys_clk.clk_sys_r_bF$buf20_ _u_cpu.ctrl.o_ibus_adr_[30] vdd gnd DFFPOSX1
X_2192_ _1002__bF$buf2 _755_ _1004_ _754_ vdd gnd OAI21X1
X_3397_ _u_cpu.bufreg.data_[31] _424_ _444_ vdd gnd NAND2X1
XFILL_0__2232_ gnd vdd FILL
XFILL_0__3857_ gnd vdd FILL
X_1883_ _u_mem_serial.bit_count_[5] _1030_ _1027_ _1456_ vdd gnd AOI21X1
X_2668_ _1751_ _1758_ _1765_ vdd gnd NOR2X1
X_2248_ _705_ _1064_ _701_ _704_ _700_ vdd 
+ gnd
+ OAI22X1
XFILL_0__2708_ gnd vdd FILL
XFILL_0__2881_ gnd vdd FILL
X_1939_ _1023__bF$buf0 _978_ _977_ _976_ vdd gnd OAI21X1
XFILL_0__3246_ gnd vdd FILL
X_2897_ _82_ i_rst_n_bF$buf4 _1329_ vdd gnd AND2X2
X_2477_ _1597_ _1599_ _1596_ _1598_ _1600_ vdd 
+ gnd
+ OAI22X1
X_2057_ _1002__bF$buf0 _874_ _873_ vdd gnd NOR2X1
XFILL_0__2690_ gnd vdd FILL
XFILL_0__2270_ gnd vdd FILL
X_2286_ _663_ _u_cpu.bufreg.i_right_shift_op_ _699_ _662_ vdd gnd AOI21X1
XFILL129150x75750 gnd vdd FILL
XFILL_0__2746_ gnd vdd FILL
X_4012_ _1405_ _gen_int_sys_clk.clk_sys_r_bF$buf3_ _u_rf_if.prefetch_active_ vdd gnd DFFPOSX1
X_1977_ _1002__bF$buf4 _944_ _943_ vdd gnd NOR2X1
XFILL_0__3284_ gnd vdd FILL
X_3703_ _u_rf_if.o_waddr_[2] _u_rf_if.o_waddr_[1] _635_ vdd gnd AND2X2
XFILL128850x57750 gnd vdd FILL
X_2095_ _u_mem_serial.shift_reg_[25] _840_ vdd gnd INVX1
XFILL_0__2555_ gnd vdd FILL
XFILL_0__2135_ gnd vdd FILL
XFILL_0__3093_ gnd vdd FILL
X_3932_ _1165_ _gen_int_sys_clk.clk_sys_r_bF$buf30_ _u_cpu.bufreg2.dlo_[5] vdd gnd DFFPOSX1
X_3512_ mem_dbus_ack_bF$buf2 _u_cpu.bufreg2.dlo_[8] _535_ _536_ vdd gnd OAI21X1
X_4050_ _1427_ i_clk_fast_bF$buf7 _u_mem_serial.shift_reg_[28] vdd gnd DFFPOSX1
XFILL_0__3569_ gnd vdd FILL
XFILL_0__3149_ gnd vdd FILL
X_3741_ _1262_ _gen_int_sys_clk.clk_sys_r_bF$buf17_ _u_cpu.bufreg2.i_op_b_sel_ vdd gnd DFFPOSX1
X_3321_ _396_ _398_ _1536__bF$buf0 _1221_ vdd gnd MUX2X1
XFILL_0__2593_ gnd vdd FILL
XFILL_0__2173_ gnd vdd FILL
X_2189_ _u_mem_serial.shift_reg_[35] _973__bF$buf5 i_rst_n_bF$buf2 _756_ vdd gnd OAI21X1
X_3970_ _1184_ _gen_int_sys_clk.clk_sys_r_bF$buf0_ _u_cpu.bufreg.i_shamt_[1] vdd gnd DFFPOSX1
X_3550_ _u_cpu.bufreg2.cnt_next_[6] _565_ vdd gnd INVX1
X_3130_ ibus_pending_rdt[13] _251_ vdd gnd INVX1
X_2821_ _25_ i_rst_n_bF$buf11 _1348_ vdd gnd AND2X2
X_2401_ _1063_ _1062_ _1524_ vdd gnd NOR2X1
X_3606_ _995_ _212__bF$buf2 _594_ _570__bF$buf2 _1132_ vdd 
+ gnd
+ OAI22X1
XFILL_0__2458_ gnd vdd FILL
XFILL_0__2038_ gnd vdd FILL
XFILL129150x122550 gnd vdd FILL
X_2630_ _u_rf_if.o_waddr_[3] _1736_ _1699_ _1737_ vdd gnd OAI21X1
X_2210_ _u_rf_if.tx_state_[2] _739_ _738_ vdd gnd NOR2X1
X_3835_ _1137_ _gen_int_sys_clk.clk_sys_r_bF$buf16_ _u_cpu.ctrl.o_ibus_adr_[6] vdd gnd DFFPOSX1
X_3415_ mem_dbus_ack_bF$buf3 _u_mem_serial.shift_reg_[29] _452_ _460_ vdd gnd AOI21X1
X_1901_ _1010_ _1043_ _1009_ vdd gnd NAND2X1
XFILL_0__1958_ gnd vdd FILL
X_3644_ _392_ _938_ _602__bF$buf1 _1102_ vdd gnd MUX2X1
X_3224_ _315_ _320_ _321_ _1241_ vdd gnd AOI21X1
X_4009_ _1403_ _gen_int_sys_clk.clk_sys_r_bF$buf41_ _u_rf_if.pending_read_ vdd gnd DFFPOSX1
XFILL_0__2496_ gnd vdd FILL
X_2915_ _u_rf_if.read_buf0_[24] _22__bF$buf0 _96_ vdd gnd NAND2X1
X_3873_ _1331_ _gen_int_sys_clk.clk_sys_r_bF$buf9_ _u_rf_if.read_buf0_[17] vdd gnd DFFPOSX1
X_3453_ mem_dbus_ack_bF$buf6 _u_cpu.bufreg2.dlo_[23] _491_ _492_ vdd gnd OAI21X1
X_3033_ _736_ _1470_ _1666_ _184_ vdd gnd NAND3X1
X_2724_ _u_rf_if.read_buf1_[7] _1783__bF$buf6 _1806_ vdd gnd NAND2X1
X_2304_ _648_ _645_ _650_ _644_ vdd gnd OAI21X1
X_3929_ _1359_ _gen_int_sys_clk.clk_sys_r_bF$buf43_ _u_rf_if.read_buf1_[19] vdd gnd DFFPOSX1
X_3509_ _531_ _533_ _450__bF$buf4 _1168_ vdd gnd MUX2X1
XFILL_0__1996_ gnd vdd FILL
X_3682_ _gen_int_sys_clk.clk_div_[3] _618_ vdd gnd INVX1
X_3262_ _350_ _1692__bF$buf3 _351_ vdd gnd NOR2X1
X_4047_ _1217_ _gen_int_sys_clk.clk_sys_r_bF$buf25_ _u_cpu.bufreg.data_[23] vdd gnd DFFPOSX1
X_2953_ _122_ _1680_ _123_ _1314_ vdd gnd AOI21X1
X_2533_ _1649_ _1650_ _1655_ _1656_ vdd gnd OAI21X1
X_2113_ _1002__bF$buf1 _825_ _824_ vdd gnd NOR2X1
X_3738_ _1259_ _gen_int_sys_clk.clk_sys_r_bF$buf17_ _u_cpu.decode.opcode_[0] vdd gnd DFFPOSX1
X_3318_ _u_cpu.bufreg.data_[29] _397_ vdd gnd INVX1
X_3491_ mem_dbus_ack_bF$buf4 _931_ _520_ vdd gnd NAND2X1
X_3071_ _1070__bF$buf2 _1631_ _207_ _1282_ vdd gnd NOR3X1
XFILL_0__3111_ gnd vdd FILL
X_2762_ _1834_ i_rst_n_bF$buf5 _1362_ vdd gnd AND2X2
X_2342_ _1256_ _1470_ vdd gnd INVX1
X_3967_ _1378_ _gen_int_sys_clk.clk_sys_r_bF$buf21_ _u_rf_if.read_buf1_[0] vdd gnd DFFPOSX1
X_3547_ mem_dbus_ack_bF$buf6 _854_ _563_ vdd gnd NAND2X1
X_3127_ _1058_ _1055_ _1059_ _249_ vdd gnd NAND3X1
X_4085_ _1444_ i_clk_fast_bF$buf0 _u_mem_serial.shift_reg_[11] vdd gnd DFFPOSX1
X_2818_ _u_rf_if.read_buf0_[1] _u_rf_if.read_buf0_[2] _u_rf_if.stream_active_bF$buf7_ _23_ vdd gnd MUX2X1
X_2991_ _151_ _854_ ibus_pending_ack_bF$buf5 _152_ vdd gnd MUX2X1
X_2571_ _1687_ _1683_ _1406_ vdd gnd NOR2X1
X_2151_ _u_mem_serial.shift_reg_[32] _791_ vdd gnd INVX1
X_3776_ i_rst_n_bF$buf3 vdd _1117_ _gen_int_sys_clk.clk_sys_r_bF$buf6_ ibus_pending_rdt[26] vdd 
+ gnd
+ DFFSR
X_3356_ _u_cpu.bufreg.data_[9] _416_ vdd gnd INVX1
XFILL_0__2611_ gnd vdd FILL
X_2627_ _1732_ _1733_ _1734_ vdd gnd NOR2X1
X_2207_ _u_rf_if.tx_state_[3] _741_ vdd gnd INVX1
X_2380_ _692_ _1063_ _1503_ vdd gnd AND2X2
X_3585_ _584_ _212__bF$buf3 _583_ _570__bF$buf4 _1143_ vdd 
+ gnd
+ OAI22X1
X_3165_ _u_mem_serial.state_[0] _746_ i_rst_n_bF$buf8 _277_ vdd gnd OAI21X1
XFILL_0__2420_ gnd vdd FILL
XFILL_0__2000_ gnd vdd FILL
X_2856_ _22__bF$buf2 _50_ _51_ _52_ vdd gnd OAI21X1
X_2436_ _u_rf_if.read_buf0_[0] _1559_ vdd gnd INVX1
X_2016_ _u_mem_serial.shift_reg_[14] _u_cpu.bufreg2.dlo_[9] _994__bF$buf5 _909_ vdd gnd MUX2X1
X_3394_ _438_ _435_ _424_ _1191_ vdd gnd AOI21X1
XFILL_0__3434_ gnd vdd FILL
XFILL_0__3014_ gnd vdd FILL
X_1880_ _u_mem_serial.bit_count_[4] _1032_ _1028_ vdd gnd NAND2X1
X_2665_ _1491_ _1653_ _1763_ vdd gnd NOR2X1
X_2245_ _u_cpu.bufreg2.i_bytecnt_[1] _703_ vdd gnd INVX1
XFILL_0__1920_ gnd vdd FILL
X_1936_ _1070__bF$buf1 _979_ _1451_ vdd gnd NOR2X1
X_2894_ _u_rf_if.read_buf0_[20] _u_rf_if.read_buf0_[21] _u_rf_if.stream_active_bF$buf1_ _80_ vdd gnd MUX2X1
X_2474_ _u_cpu.bufreg.i_shamt_[0] _1597_ vdd gnd INVX1
X_2054_ _876_ i_rst_n_bF$buf6 _1436_ vdd gnd AND2X2
X_3679_ _gen_int_sys_clk.clk_div_[1] _gen_int_sys_clk.clk_div_[0] _617_ vdd gnd NOR2X1
X_3259_ _678_ _348_ vdd gnd INVX1
XFILL_0__2934_ gnd vdd FILL
XFILL_0__3472_ gnd vdd FILL
X_2283_ _u_cpu.bufreg2.dhi_[6] _665_ vdd gnd INVX1
X_3488_ mem_dbus_ack_bF$buf5 _u_cpu.bufreg2.dlo_[14] _517_ _518_ vdd gnd OAI21X1
X_3068_ _208_ _207_ _1284_ vdd gnd NOR2X1
XFILL_0__2323_ gnd vdd FILL
X_1974_ _946_ i_rst_n_bF$buf6 _1446_ vdd gnd AND2X2
XFILL_0__3281_ gnd vdd FILL
X_2759_ _u_rf_if.read_buf1_[17] _u_rf_if.read_buf1_[18] _u_rf_if.stream_active_bF$buf4_ _1832_ vdd gnd MUX2X1
X_2339_ _u_rf_if.last_req_key_[2] _1465_ _1467_ vdd gnd NOR2X1
X_3700_ _gen_int_sys_clk.clk_sys_r_bF$buf4_ _1056_ vdd gnd INVX1
X_2092_ _845_ _843_ _973__bF$buf6 _842_ vdd gnd OAI21X1
X_3297_ _u_cpu.immdec.gen_immdec_w_eq_1.imm7_ _379_ vdd gnd INVX1
XFILL_0__2972_ gnd vdd FILL
XFILL_0__3337_ gnd vdd FILL
X_2988_ _149_ _146_ _1070__bF$buf5 _1305_ vdd gnd AOI21X1
X_2568_ _1684_ _1685_ vdd gnd INVX1
X_2148_ _796_ _794_ _973__bF$buf5 _793_ vdd gnd OAI21X1
XFILL_0__2781_ gnd vdd FILL
XFILL_0__2361_ gnd vdd FILL
XFILL_0__3146_ gnd vdd FILL
X_2797_ _1783__bF$buf4 _5_ _6_ _7_ vdd gnd OAI21X1
X_2377_ _u_cpu.bne_or_bge_ _1500_ vdd gnd INVX2
XFILL_0__2837_ gnd vdd FILL
XFILL_0__2170_ gnd vdd FILL
X_2186_ _u_cpu.bufreg2.dhi_[5] _759_ vdd gnd INVX1
XFILL_0__1861_ gnd vdd FILL
XFILL_0__2646_ gnd vdd FILL
XFILL_0__2226_ gnd vdd FILL
X_1877_ _1032_ _1031_ _1049_ _1458_ vdd gnd AOI21X1
XFILL_0__3184_ gnd vdd FILL
X_3603_ _593_ _212__bF$buf2 _592_ _570__bF$buf2 _1134_ vdd 
+ gnd
+ OAI22X1
XFILL_0__2035_ gnd vdd FILL
XFILL129150x28950 gnd vdd FILL
X_3832_ _1311_ _gen_int_sys_clk.clk_sys_r_bF$buf37_ raddr[4] vdd gnd DFFPOSX1
X_3412_ _1552_ _727_ _223_ _457_ vdd gnd NAND3X1
XFILL_0__2684_ gnd vdd FILL
XFILL_0__3049_ gnd vdd FILL
X_3641_ _283_ _917_ _602__bF$buf3 _1105_ vdd gnd MUX2X1
X_3221_ _673__bF$buf3 _674__bF$buf2 _318_ _319_ vdd gnd OAI21X1
X_4006_ _1199_ _gen_int_sys_clk.clk_sys_r_bF$buf35_ _u_cpu.bufreg.data_[5] vdd gnd DFFPOSX1
XFILL_0__2073_ gnd vdd FILL
X_2912_ _22__bF$buf6 _92_ _93_ _94_ vdd gnd OAI21X1
XFILL_0__3698_ gnd vdd FILL
X_2089_ _1002__bF$buf1 _846_ _845_ vdd gnd NOR2X1
X_3870_ _u_cpu.state.cnt_r_[0] _u_cpu.state.cnt_r_[1] _1068_ vdd gnd NOR2X1
X_3450_ _452_ _489_ _486_ _1183_ vdd gnd OAI21X1
X_3030_ _182_ _181_ _1296_ vdd gnd NOR2X1
XFILL_0__2969_ gnd vdd FILL
XFILL_0__2549_ gnd vdd FILL
X_2721_ _1783__bF$buf6 _1802_ _1803_ _1804_ vdd gnd OAI21X1
X_2301_ ren _686_ _647_ vdd gnd NOR2X1
XFILL_0__3087_ gnd vdd FILL
X_3926_ _1162_ _gen_int_sys_clk.clk_sys_r_bF$buf19_ _u_cpu.bufreg2.dlo_[2] vdd gnd DFFPOSX1
X_3506_ _u_cpu.bufreg2.dlo_[8] _531_ vdd gnd INVX1
XFILL_0__1993_ gnd vdd FILL
X_4044_ _1424_ i_clk_fast_bF$buf0 _u_mem_serial.shift_reg_[31] vdd gnd DFFPOSX1
X_2950_ _121_ _120_ _1070__bF$buf0 _1315_ vdd gnd AOI21X1
X_2530_ _1623_ _1653_ vdd gnd INVX1
X_2110_ _827_ i_rst_n_bF$buf6 _1429_ vdd gnd AND2X2
X_3735_ _1255_ i_clk_fast_bF$buf1 mem_ibus_ack vdd gnd DFFPOSX1
X_3315_ _u_cpu.immdec.gen_immdec_w_eq_1.imm11_7_[4] _351_ _395_ vdd gnd NAND2X1
X_3964_ _1181_ _gen_int_sys_clk.clk_sys_r_bF$buf8_ _u_cpu.bufreg2.dlo_[21] vdd gnd DFFPOSX1
X_3544_ mem_dbus_ack_bF$buf1 _u_cpu.bufreg2.dlo_[1] _560_ _561_ vdd gnd OAI21X1
X_3124_ _246_ _1060_ i_rst_n_bF$buf8 _247_ vdd gnd OAI21X1
XFILL_0__2396_ gnd vdd FILL
X_4082_ _1234_ _gen_int_sys_clk.clk_sys_r_bF$buf2_ rreg1[1] vdd gnd DFFPOSX1
X_2815_ _1783__bF$buf3 _19_ _20_ _21_ vdd gnd OAI21X1
XCLKBUF1_insert130 _gen_int_sys_clk.clk_sys_r_hier0_bF$buf4_ _gen_int_sys_clk.clk_sys_r_bF$buf28_ vdd gnd CLKBUF1
XCLKBUF1_insert131 _gen_int_sys_clk.clk_sys_r_hier0_bF$buf0_ _gen_int_sys_clk.clk_sys_r_bF$buf27_ vdd gnd CLKBUF1
XCLKBUF1_insert132 _gen_int_sys_clk.clk_sys_r_hier0_bF$buf1_ _gen_int_sys_clk.clk_sys_r_bF$buf26_ vdd gnd CLKBUF1
XCLKBUF1_insert133 _gen_int_sys_clk.clk_sys_r_hier0_bF$buf0_ _gen_int_sys_clk.clk_sys_r_bF$buf25_ vdd gnd CLKBUF1
XCLKBUF1_insert134 _gen_int_sys_clk.clk_sys_r_hier0_bF$buf3_ _gen_int_sys_clk.clk_sys_r_bF$buf24_ vdd gnd CLKBUF1
XCLKBUF1_insert135 _gen_int_sys_clk.clk_sys_r_hier0_bF$buf4_ _gen_int_sys_clk.clk_sys_r_bF$buf23_ vdd gnd CLKBUF1
XCLKBUF1_insert136 _gen_int_sys_clk.clk_sys_r_hier0_bF$buf3_ _gen_int_sys_clk.clk_sys_r_bF$buf22_ vdd gnd CLKBUF1
XCLKBUF1_insert137 _gen_int_sys_clk.clk_sys_r_hier0_bF$buf4_ _gen_int_sys_clk.clk_sys_r_bF$buf21_ vdd gnd CLKBUF1
XCLKBUF1_insert138 _gen_int_sys_clk.clk_sys_r_hier0_bF$buf2_ _gen_int_sys_clk.clk_sys_r_bF$buf20_ vdd gnd CLKBUF1
XCLKBUF1_insert139 _gen_int_sys_clk.clk_sys_r_hier0_bF$buf0_ _gen_int_sys_clk.clk_sys_r_bF$buf19_ vdd gnd CLKBUF1
X_3773_ _1283_ i_clk_fast_bF$buf4 _u_rf_if.tx_state_[1] vdd gnd DFFPOSX1
X_3353_ _413_ _414_ _1536__bF$buf2 _1205_ vdd gnd MUX2X1
X_2624_ _u_rf_if.o_waddr_[2] _1731_ vdd gnd INVX1
X_2204_ _745_ _743_ vdd gnd INVX1
X_3829_ _1310_ _gen_int_sys_clk.clk_sys_r_bF$buf41_ raddr[5] vdd gnd DFFPOSX1
X_3409_ mem_dbus_ack_bF$buf1 _u_cpu.bufreg2.cnt_next_[6] _454_ _455_ vdd gnd OAI21X1
XFILL_0__1896_ gnd vdd FILL
X_3582_ _u_cpu.ctrl.o_ibus_adr_[13] _583_ vdd gnd INVX1
X_3162_ i_clk_fast_bF$buf1 _275_ _1854_ vdd gnd NOR2X1
XFILL_0__3622_ gnd vdd FILL
XFILL_0__3202_ gnd vdd FILL
X_2853_ _49_ i_rst_n_bF$buf4 _1340_ vdd gnd AND2X2
X_2433_ _1531_ _1530_ _1556_ vdd gnd NAND2X1
X_2013_ _917_ _973__bF$buf4 _912_ _911_ vdd gnd OAI21X1
XFILL_0_BUFX2_insert1 gnd vdd FILL
XFILL_0_BUFX2_insert3 gnd vdd FILL
XFILL_0_BUFX2_insert5 gnd vdd FILL
XFILL_0_BUFX2_insert7 gnd vdd FILL
X_3638_ _163_ _896_ _602__bF$buf2 _1108_ vdd gnd MUX2X1
X_3218_ ibus_pending_rdt[29] _316_ vdd gnd INVX1
X_3391_ _438_ _439_ _440_ vdd gnd AND2X2
XFILL_0__3011_ gnd vdd FILL
X_2909_ _91_ i_rst_n_bF$buf5 _1326_ vdd gnd AND2X2
X_2662_ _1617_ i_rst_n_bF$buf1 _1389_ vdd gnd AND2X2
X_2242_ _u_cpu.bufreg.i_right_shift_op_ _707_ _709_ _706_ vdd gnd NAND3X1
X_3867_ _1328_ _gen_int_sys_clk.clk_sys_r_bF$buf9_ _u_rf_if.read_buf0_[20] vdd gnd DFFPOSX1
X_3447_ _u_cpu.bufreg.i_shamt_[1] _708_ _487_ vdd gnd NAND2X1
X_3027_ _180_ _1297_ vdd gnd INVX1
XFILL_0__2702_ gnd vdd FILL
X_1933_ _u_mem_serial.shift_reg_[3] _1023__bF$buf4 _994__bF$buf2 _981_ vdd gnd NAND3X1
XFILL_0__2299_ gnd vdd FILL
XFILL_0__3660_ gnd vdd FILL
X_2718_ _1801_ i_rst_n_bF$buf5 _1373_ vdd gnd AND2X2
X_2891_ _u_rf_if.read_buf0_[18] _22__bF$buf3 _78_ vdd gnd NAND2X1
X_2471_ _u_cpu.bufreg2.dlo_[8] _u_cpu.bufreg.data_[0] _780_ _1594_ vdd gnd NAND3X1
X_2051_ _1023__bF$buf2 _879_ _878_ vdd gnd NOR2X1
X_3676_ _614_ _615_ vdd gnd INVX1
X_3256_ _345_ _342_ _145_ _346_ _1234_ vdd 
+ gnd
+ AOI22X1
XFILL_0__2511_ gnd vdd FILL
XFILL_0_BUFX2_insert80 gnd vdd FILL
XFILL_0_BUFX2_insert83 gnd vdd FILL
XFILL_0_BUFX2_insert85 gnd vdd FILL
XFILL_0_BUFX2_insert87 gnd vdd FILL
XFILL_0_BUFX2_insert89 gnd vdd FILL
X_2947_ _1731_ _1735_ _119_ _1316_ vdd gnd AOI21X1
X_2527_ _u_rf_if.tx_state_[2] _1471_ _1650_ vdd gnd NAND2X1
X_2107_ _1023__bF$buf1 _830_ _829_ vdd gnd NOR2X1
X_2280_ _u_rf_if.last_req_key_[5] _729_ _669_ _668_ vdd gnd NAND3X1
X_3485_ _513_ _515_ _450__bF$buf2 _1174_ vdd gnd MUX2X1
X_3065_ _205_ _206_ _1070__bF$buf2 _1285_ vdd gnd AOI21X1
XFILL_0__3525_ gnd vdd FILL
X_1971_ _1023__bF$buf5 _949_ _948_ vdd gnd NOR2X1
X_2756_ _u_rf_if.read_buf1_[15] _1783__bF$buf2 _1830_ vdd gnd NAND2X1
X_2336_ _735_ raddr[2] _1464_ vdd gnd OR2X2
X_3294_ _1066_ _1692__bF$buf2 _377_ vdd gnd NOR2X1
X_4079_ _1441_ i_clk_fast_bF$buf0 _u_mem_serial.shift_reg_[14] vdd gnd DFFPOSX1
X_2985_ ibus_pending_rdt[22] _147_ vdd gnd INVX1
X_2565_ _1681_ _1682_ vdd gnd INVX1
X_2145_ _1002__bF$buf3 _797_ _796_ vdd gnd NOR2X1
XFILL_0__3563_ gnd vdd FILL
XBUFX2_insert90 _674_ _674__bF$buf2 vdd gnd BUFX2
XBUFX2_insert91 _674_ _674__bF$buf1 vdd gnd BUFX2
XBUFX2_insert92 _674_ _674__bF$buf0 vdd gnd BUFX2
XBUFX2_insert93 _994_ _994__bF$buf5 vdd gnd BUFX2
XBUFX2_insert94 _994_ _994__bF$buf4 vdd gnd BUFX2
XBUFX2_insert95 _994_ _994__bF$buf3 vdd gnd BUFX2
XBUFX2_insert96 _994_ _994__bF$buf2 vdd gnd BUFX2
XBUFX2_insert97 _994_ _994__bF$buf1 vdd gnd BUFX2
XBUFX2_insert98 _994_ _994__bF$buf0 vdd gnd BUFX2
XBUFX2_insert99 _1692_ _1692__bF$buf4 vdd gnd BUFX2
X_2794_ _4_ i_rst_n_bF$buf5 _1354_ vdd gnd AND2X2
X_2374_ _u_rf_if.wen0_r_ _676_ _671_ _1498_ vdd gnd MUX2X1
X_3999_ _1398_ _gen_int_sys_clk.clk_sys_r_bF$buf41_ ren vdd gnd DFFPOSX1
X_3579_ _581_ _212__bF$buf3 _580_ _570__bF$buf1 _1146_ vdd 
+ gnd
+ OAI22X1
X_3159_ _273_ _1026_ _1051_ _274_ vdd gnd AOI21X1
XFILL_0__2834_ gnd vdd FILL
XFILL_0__2414_ gnd vdd FILL
X_4100_ _1243_ _gen_int_sys_clk.clk_sys_r_bF$buf31_ _u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20_[1] vdd gnd DFFPOSX1
XFILL_0__3372_ gnd vdd FILL
X_2183_ _762_ i_rst_n_bF$buf2 _1421_ vdd gnd AND2X2
X_3388_ _435_ _436_ _437_ vdd gnd NAND2X1
XFILL_0__2223_ gnd vdd FILL
XFILL_0__3428_ gnd vdd FILL
X_1874_ _u_mem_serial.bit_count_[2] _1037_ _1033_ vdd gnd NOR2X1
X_2659_ _1759_ _1750_ _1760_ _1391_ vdd gnd AOI21X1
X_2239_ _727_ _717_ _710_ _709_ vdd gnd NAND3X1
XFILL_0__1914_ gnd vdd FILL
X_3600_ _u_cpu.ctrl.o_ibus_adr_[4] _592_ vdd gnd INVX1
X_3197_ rreg0[1] _301_ vdd gnd INVX1
XFILL_0__2872_ gnd vdd FILL
XFILL_0__3237_ gnd vdd FILL
X_2888_ _22__bF$buf3 _74_ _75_ _76_ vdd gnd OAI21X1
X_2468_ _u_cpu.decode.co_mem_word_ _1552_ _1591_ vdd gnd NOR2X1
X_2048_ _u_mem_serial.shift_reg_[18] _u_cpu.bufreg2.dlo_[13] _994__bF$buf4 _881_ vdd gnd MUX2X1
XFILL129150x82950 gnd vdd FILL
XFILL_0__2261_ gnd vdd FILL
X_2697_ _1783__bF$buf0 _1784_ _1785_ _1786_ vdd gnd OAI21X1
X_2277_ _673__bF$buf0 _674__bF$buf3 _672_ _671_ vdd gnd OAI21X1
XFILL_0__2737_ gnd vdd FILL
X_4003_ _1400_ _gen_int_sys_clk.clk_sys_r_bF$buf37_ raddr[8] vdd gnd DFFPOSX1
X_1968_ _u_mem_serial.shift_reg_[8] _u_cpu.bufreg2.dlo_[3] _994__bF$buf0 _951_ vdd gnd MUX2X1
XFILL_0__3695_ gnd vdd FILL
XFILL_0__3275_ gnd vdd FILL
X_2086_ _848_ i_rst_n_bF$buf6 _1432_ vdd gnd AND2X2
XFILL_0__2126_ gnd vdd FILL
XFILL_0_BUFX2_insert171 gnd vdd FILL
XFILL_0_BUFX2_insert173 gnd vdd FILL
XFILL_0_BUFX2_insert176 gnd vdd FILL
XFILL_0_BUFX2_insert178 gnd vdd FILL
XFILL_0__3084_ gnd vdd FILL
X_3923_ _1356_ _gen_int_sys_clk.clk_sys_r_bF$buf29_ _u_rf_if.read_buf1_[22] vdd gnd DFFPOSX1
X_3503_ mem_dbus_ack_bF$buf4 _952_ _529_ vdd gnd NAND2X1
XFILL_0__2775_ gnd vdd FILL
X_4041_ _1214_ _gen_int_sys_clk.clk_sys_r_bF$buf35_ _u_cpu.bufreg.data_[20] vdd gnd DFFPOSX1
X_3732_ _1253_ _gen_int_sys_clk.clk_sys_r_bF$buf38_ _u_cpu.bufreg.i_right_shift_op_ vdd gnd DFFPOSX1
X_3312_ ibus_pending_rdt[11] _392_ vdd gnd INVX1
XFILL_0__2584_ gnd vdd FILL
XFILL_0__2164_ gnd vdd FILL
X_3961_ _1375_ _gen_int_sys_clk.clk_sys_r_bF$buf21_ _u_rf_if.read_buf1_[3] vdd gnd DFFPOSX1
X_3541_ _555_ _558_ _450__bF$buf3 _1161_ vdd gnd MUX2X1
X_3121_ _1069_ _243_ _244_ _1267_ vdd gnd OAI21X1
X_2812_ _16_ _18_ _1070__bF$buf6 _1350_ vdd gnd AOI21X1
XFILL_0__3598_ gnd vdd FILL
X_3770_ i_rst_n_bF$buf10 vdd _1114_ _gen_int_sys_clk.clk_sys_r_bF$buf11_ ibus_pending_rdt[23] vdd 
+ gnd
+ DFFSR
X_3350_ _u_cpu.bufreg.data_[12] _413_ vdd gnd INVX1
XFILL_0__2449_ gnd vdd FILL
XFILL_0__2029_ gnd vdd FILL
X_2621_ _u_rf_if.read_buf0_[31] _u_rf_if.stream_active_bF$buf5_ _1726_ _1728_ _1729_ vdd 
+ gnd
+ AOI22X1
X_2201_ _747_ _749_ _746_ vdd gnd NAND2X1
X_3826_ _1309_ _gen_int_sys_clk.clk_sys_r_bF$buf37_ raddr[6] vdd gnd DFFPOSX1
X_3406_ _451_ _452_ vdd gnd INVX2
X_2850_ _u_rf_if.read_buf0_[9] _u_rf_if.read_buf0_[10] _u_rf_if.stream_active_bF$buf6_ _47_ vdd gnd MUX2X1
X_2430_ _1552_ _1553_ vdd gnd INVX1
X_2010_ _u_cpu.bufreg.data_[14] _u_cpu.ctrl.o_ibus_adr_[14] _1006__bF$buf2 _914_ vdd gnd MUX2X1
XFILL_0__1949_ gnd vdd FILL
X_3635_ _139_ _875_ _602__bF$buf2 _1111_ vdd gnd MUX2X1
X_3215_ _1062_ _1526_ _313_ vdd gnd NAND2X1
XBUFX2_insert159 _1783_ _1783__bF$buf6 vdd gnd BUFX2
XFILL_0__2487_ gnd vdd FILL
X_2906_ _u_rf_if.read_buf0_[23] _u_rf_if.read_buf0_[24] _u_rf_if.stream_active_bF$buf1_ _89_ vdd gnd MUX2X1
X_3864_ _1144_ _gen_int_sys_clk.clk_sys_r_bF$buf42_ _u_cpu.ctrl.o_ibus_adr_[13] vdd gnd DFFPOSX1
X_3444_ _697_ _u_mem_serial.shift_reg_[25] _451_ _485_ vdd gnd OAI21X1
X_3024_ _1676_ _170_ _178_ vdd gnd NOR2X1
X_1930_ _u_mem_serial.shift_reg_[3] _984_ _1009_ _983_ vdd gnd MUX2X1
X_2715_ _u_rf_if.read_buf1_[6] _u_rf_if.read_buf1_[7] _u_rf_if.stream_active_bF$buf0_ _1799_ vdd gnd MUX2X1
XFILL_0__1987_ gnd vdd FILL
X_3673_ _u_mem_serial.req_pending_ _1055_ _1054_ vdd gnd NAND2X1
X_3253_ _343_ _342_ _149_ _344_ _1235_ vdd 
+ gnd
+ AOI22X1
X_4038_ _1421_ i_clk_fast_bF$buf8 _u_mem_serial.shift_reg_[34] vdd gnd DFFPOSX1
XFILL_0_BUFX2_insert56 gnd vdd FILL
XFILL_0_BUFX2_insert58 gnd vdd FILL
X_2944_ _u_rf_if.o_waddr_[1] _1734_ _117_ _118_ vdd gnd OAI21X1
X_2524_ _1636_ _1646_ _1647_ vdd gnd NOR2X1
X_2104_ _u_mem_serial.shift_reg_[25] _u_cpu.bufreg2.dlo_[20] _994__bF$buf1 _832_ vdd gnd MUX2X1
X_3729_ _1460_ i_clk_fast_bF$buf2 _u_mem_serial.bit_count_[1] vdd gnd DFFPOSX1
X_3309_ _u_cpu.immdec.gen_immdec_w_eq_1.imm30_25_[0] _1746_ _659__bF$buf1 _390_ vdd gnd MUX2X1
X_3482_ _u_cpu.bufreg2.dlo_[14] _513_ vdd gnd INVX1
X_3062_ _204_ _203_ _1070__bF$buf4 _1286_ vdd gnd AOI21X1
XFILL_0__3102_ gnd vdd FILL
X_2753_ _1783__bF$buf6 _1826_ _1827_ _1828_ vdd gnd OAI21X1
X_2333_ _u_rf_if.last_req_key_[9] _735_ _1412_ _1414_ vdd gnd AOI21X1
X_3958_ _1178_ _gen_int_sys_clk.clk_sys_r_bF$buf0_ _u_cpu.bufreg2.dlo_[18] vdd gnd DFFPOSX1
X_3538_ _u_mem_serial.shift_reg_[1] _556_ vdd gnd INVX1
X_3118_ _695_ _242_ _1070__bF$buf6 _1268_ vdd gnd AOI21X1
X_3291_ _u_cpu.branch_op_ rreg1[0] _374_ _375_ vdd gnd OAI21X1
X_4076_ _1231_ _gen_int_sys_clk.clk_sys_r_bF$buf32_ _u_cpu.immdec.gen_immdec_w_eq_1.imm11_7_[2] vdd gnd DFFPOSX1
X_2809_ _u_rf_if.read_buf1_[28] _1783__bF$buf3 _16_ vdd gnd NAND2X1
X_2982_ _144_ _1692__bF$buf3 _145_ vdd gnd NAND2X1
X_2562_ _u_rf_if.prefetch_active_ _1679_ vdd gnd INVX2
X_2142_ _799_ i_rst_n_bF$buf0 _1425_ vdd gnd AND2X2
X_3767_ _1280_ _gen_int_sys_clk.clk_sys_r_bF$buf20_ _u_cpu.ctrl.o_ibus_adr_[31] vdd gnd DFFPOSX1
X_3347_ _410_ _411_ _1536__bF$buf4 _1208_ vdd gnd MUX2X1
XFILL_0__2602_ gnd vdd FILL
XFILL_0__2199_ gnd vdd FILL
XFILL_0__3560_ gnd vdd FILL
XFILL_0__3140_ gnd vdd FILL
X_2618_ _u_rf_if.issue_sel_ _1713_ _1726_ vdd gnd NAND2X1
XBUFX2_insert60 mem_dbus_ack mem_dbus_ack_bF$buf2 vdd gnd BUFX2
XBUFX2_insert61 mem_dbus_ack mem_dbus_ack_bF$buf1 vdd gnd BUFX2
XBUFX2_insert62 mem_dbus_ack mem_dbus_ack_bF$buf0 vdd gnd BUFX2
XBUFX2_insert63 _1006_ _1006__bF$buf4 vdd gnd BUFX2
XBUFX2_insert64 _1006_ _1006__bF$buf3 vdd gnd BUFX2
XBUFX2_insert65 _1006_ _1006__bF$buf2 vdd gnd BUFX2
XBUFX2_insert66 _1006_ _1006__bF$buf1 vdd gnd BUFX2
XBUFX2_insert67 _1006_ _1006__bF$buf0 vdd gnd BUFX2
XBUFX2_insert68 _u_rf_if.stream_active_ _u_rf_if.stream_active_bF$buf7_ vdd gnd BUFX2
XBUFX2_insert69 _u_rf_if.stream_active_ _u_rf_if.stream_active_bF$buf6_ vdd gnd BUFX2
X_2791_ _u_rf_if.read_buf1_[25] _u_rf_if.read_buf1_[26] _u_rf_if.stream_active_bF$buf1_ _2_ vdd gnd MUX2X1
X_2371_ _738_ _741_ _1496_ _1415_ vdd gnd AOI21X1
X_3996_ _1396_ _gen_int_sys_clk.clk_sys_r_bF$buf24_ _u_rf_if.o_waddr_[3] vdd gnd DFFPOSX1
X_3576_ _u_cpu.ctrl.o_ibus_adr_[16] _580_ vdd gnd INVX1
X_3156_ _659__bF$buf5 _271_ _268_ _1259_ vdd gnd OAI21X1
XFILL_0__3616_ gnd vdd FILL
X_2847_ _u_rf_if.read_buf0_[7] _22__bF$buf1 _45_ vdd gnd NAND2X1
X_2427_ _1549_ _1537_ _1550_ vdd gnd NAND2X1
X_2007_ _u_mem_serial.shift_reg_[14] _917_ vdd gnd INVX1
X_2180_ _778_ _765_ _1009_ _764_ vdd gnd AOI21X1
X_3385_ _u_cpu.branch_op_ _u_cpu.decode.opcode_[1] _433_ _434_ vdd gnd AOI21X1
XFILL_0__2640_ gnd vdd FILL
XFILL_0__3845_ gnd vdd FILL
XFILL_0__3425_ gnd vdd FILL
XFILL_0__3005_ gnd vdd FILL
X_1871_ _u_mem_serial.bit_count_[2] _1037_ _1036_ _1035_ vdd gnd AOI21X1
X_2656_ _1757_ _1758_ vdd gnd INVX1
X_2236_ _714_ _712_ vdd gnd INVX1
XFILL_0__1911_ gnd vdd FILL
X_3194_ rreg0[2] _299_ vdd gnd INVX1
X_1927_ _u_cpu.bufreg.data_[3] _u_cpu.ctrl.o_ibus_adr_[3] _1006__bF$buf0 _986_ vdd gnd MUX2X1
X_2885_ _73_ i_rst_n_bF$buf4 _1332_ vdd gnd AND2X2
X_2465_ _1585_ _1587_ _1536__bF$buf3 _u_cpu.bufreg.data_[0] _1588_ vdd 
+ gnd
+ AOI22X1
X_2045_ _889_ _973__bF$buf0 _884_ _883_ vdd gnd OAI21X1
XFILL_0__2925_ gnd vdd FILL
XFILL_0__2505_ gnd vdd FILL
XFILL_0__3463_ gnd vdd FILL
XFILL128250x54150 gnd vdd FILL
X_2694_ _u_rf_if.stream_active_bF$buf3_ _1742_ _1783_ vdd gnd NOR2X1
X_2274_ _675_ _689_ _728_ _674_ vdd gnd OAI21X1
X_3899_ _1344_ _gen_int_sys_clk.clk_sys_r_bF$buf5_ _u_rf_if.read_buf0_[4] vdd gnd DFFPOSX1
X_3479_ mem_dbus_ack_bF$buf2 _910_ _511_ vdd gnd NAND2X1
X_3059_ _202_ _201_ _1070__bF$buf4 _1287_ vdd gnd AOI21X1
XFILL_0__2314_ gnd vdd FILL
X_4000_ _1196_ _gen_int_sys_clk.clk_sys_r_bF$buf20_ _u_cpu.bufreg.data_[2] vdd gnd DFFPOSX1
X_1965_ _959_ _973__bF$buf2 _954_ _953_ vdd gnd OAI21X1
X_2083_ _1023__bF$buf3 _851_ _850_ vdd gnd NOR2X1
X_3288_ rreg0[4] _372_ vdd gnd INVX1
XFILL_0__2963_ gnd vdd FILL
XFILL_0__3328_ gnd vdd FILL
X_2979_ _673__bF$buf0 _674__bF$buf3 _u_rf_if.rreg1_latched_[1] _142_ vdd gnd OAI21X1
X_2559_ _u_rf_if.issue_chunk_[1] _u_rf_if.issue_chunk_[0] _1676_ vdd gnd NAND2X1
X_2139_ _1023__bF$buf0 _802_ _801_ vdd gnd NOR2X1
X_3920_ _1159_ _gen_int_sys_clk.clk_sys_r_bF$buf13_ _u_cpu.bufreg2.dlo_[23] vdd gnd DFFPOSX1
X_3500_ mem_dbus_ack_bF$buf6 _u_cpu.bufreg2.dlo_[11] _526_ _527_ vdd gnd OAI21X1
X_3097_ _222_ _1547_ i_rst_n_bF$buf11 _226_ vdd gnd OAI21X1
XFILL_0__2772_ gnd vdd FILL
XFILL_0__2352_ gnd vdd FILL
X_2788_ _u_rf_if.read_buf1_[23] _1783__bF$buf1 _1859_ vdd gnd NAND2X1
X_2368_ _1494_ _1257_ _1495_ vdd gnd OR2X2
XFILL_0__2828_ gnd vdd FILL
XFILL_0__3366_ gnd vdd FILL
X_2597_ _1680_ _1706_ _1707_ _1400_ vdd gnd AOI21X1
X_2177_ _768_ _994__bF$buf0 _1023__bF$buf2 _767_ vdd gnd OAI21X1
XFILL_0__2637_ gnd vdd FILL
XFILL_0__2217_ gnd vdd FILL
X_1868_ _u_mem_serial.bit_count_[1] _1038_ vdd gnd INVX1
XFILL_0__3175_ gnd vdd FILL

.ends
.end
