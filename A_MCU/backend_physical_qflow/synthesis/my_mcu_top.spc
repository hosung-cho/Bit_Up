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

X_1677_ \u_rf_if.read_buf0\[19] _943__bF$buf0 \u_rf_if.read_buf0\[21] _926_ _1010_ vdd 
+ gnd
+ OAI22X1
X_1257_ _442_ _441_ vdd gnd INVX1
X_1486_ _864_ _865_ vdd gnd INVX1
X_1295_ _421_ _406_ _405_ vdd gnd OR2X2
X_2521_ _618_ i_clk_sys_ext_bF$buf11 \u_cpu.bufreg2.dhi\[4] vdd gnd DFFPOSX1
X_2101_ _148_ _123_ _426__bF$buf1 _631_ vdd gnd MUX2X1
X_1389_ raddr[1] _313_ vdd gnd INVX1
X_2330_ _678_ i_clk_sys_ext_bF$buf0 \u_cpu.immdec.gen_immdec_w_eq_1.imm30_25\[3] vdd gnd DFFPOSX1
XFILL97950x79350 gnd vdd FILL
X_1601_ \u_rf_if.issue_idx\[4] _931_ _960_ vdd gnd NAND2X1
X_1198_ _505_ _503_ _500_ _499_ vdd gnd NAND3X1
X_1830_ \u_cpu.bufreg2.i_bytecnt\[0] _485_ _1110_ vdd gnd NOR2X1
X_1410_ ren raddr[5] _342_ _293_ _292_ vdd 
+ gnd
+ AOI22X1
XBUFX2_insert30 _543_ _543__bF$buf4 vdd gnd BUFX2
XBUFX2_insert31 _543_ _543__bF$buf3 vdd gnd BUFX2
XBUFX2_insert32 _543_ _543__bF$buf2 vdd gnd BUFX2
XBUFX2_insert33 _543_ _543__bF$buf1 vdd gnd BUFX2
XBUFX2_insert34 _543_ _543__bF$buf0 vdd gnd BUFX2
X_2424_ _749_ i_clk_sys_ext_bF$buf6 \u_rf_if.o_waddr\[0] vdd gnd DFFPOSX1
X_2004_ rf_wreg0_to_if[3] _89_ _92_ vdd gnd NAND2X1
X_2233_ _241_ _242_ _873__bF$buf0 _590_ vdd gnd MUX2X1
X_1924_ _33_ _35_ _694_ vdd gnd NAND2X1
X_1504_ _880_ _873__bF$buf5 _881_ vdd gnd NAND2X1
X_2462_ _779_ i_clk_sys_ext_bF$buf2 \u_rf_if.read_buf0\[11] vdd gnd DFFPOSX1
X_2042_ mem_ibus_ack_bF$buf2 \u_mem_serial.shift_reg\[11] _87_ _90_ _121_ vdd 
+ gnd
+ AOI22X1
X_1733_ rf_read_reg1_to_if[0] _1047_ vdd gnd INVX1
X_1313_ _388_ _390_ _387_ vdd gnd NAND2X1
X_2518_ _823_ i_clk_sys_ext_bF$buf8 \u_rf_if.stream_cnt\[4] vdd gnd DFFPOSX1
X_2271_ _474_ _382_ _257_ _567_ vdd gnd OAI21X1
X_1962_ _59_ _51_ _61_ _682_ vdd gnd AOI21X1
X_1542_ _330_ _292_ _911_ vdd gnd NAND2X1
X_2327_ _675_ i_clk_sys_ext_bF$buf0 \u_cpu.immdec.gen_immdec_w_eq_1.imm30_25\[0] vdd gnd DFFPOSX1
X_2080_ _139_ _140_ _426__bF$buf2 _643_ vdd gnd MUX2X1
X_1771_ \u_rf_if.last_req_key\[7] _284_ i_rst_n_bF$buf1 _1068_ vdd gnd OAI21X1
X_1351_ \u_cpu.decode.opcode\[0] _350_ _349_ vdd gnd NAND2X1
X_2556_ _626_ i_clk_fast_bF$buf1 \u_mem_serial.shift_reg\[5] vdd gnd DFFPOSX1
X_2136_ \u_cpu.bufreg2.i_bytecnt\[1] \u_cpu.state.i_ctrl_misalign\ _468_ _174_ vdd gnd AOI21X1
X_1827_ _1108_ _543__bF$buf1 _1107_ _528_ _720_ vdd 
+ gnd
+ OAI22X1
X_1407_ _316_ _296_ _298_ _295_ vdd gnd NAND3X1
XFILL97950x3750 gnd vdd FILL
X_1580_ _942_ _943__bF$buf2 _926_ _944_ _818_ vdd 
+ gnd
+ OAI22X1
X_1160_ _537_ _532_ _849_ vdd gnd NAND2X1
X_2365_ _704_ i_clk_sys_ext_bF$buf7 \u_cpu.bufreg2.i_op_b_sel\ vdd gnd DFFPOSX1
X_1636_ \u_rf_if.read_buf0\[6] _984_ vdd gnd INVX1
X_1216_ _483_ _482_ vdd gnd INVX1
X_2174_ _178_ _205_ _206_ _207_ vdd gnd OAI21X1
X_1865_ \u_cpu.ctrl.o_ibus_adr\[5] _1143_ vdd gnd INVX1
X_1445_ _265_ _263_ _266_ _262_ vdd gnd NAND3X1
X_1674_ \u_rf_if.read_buf0\[18] _943__bF$buf0 \u_rf_if.read_buf0\[20] _926_ _1008_ vdd 
+ gnd
+ OAI22X1
X_1254_ _471_ _445_ _444_ vdd gnd NAND2X1
X_2459_ _776_ i_clk_sys_ext_bF$buf4 \u_rf_if.read_buf0\[14] vdd gnd DFFPOSX1
X_2039_ _508_ _117_ _118_ _119_ vdd gnd OAI21X1
X_1483_ \u_rf_if.wen0_r\ \u_rf_if.rtrig0\ _862_ vdd gnd NAND2X1
X_2268_ \u_cpu.ctrl.i_jump\ _350_ _873__bF$buf2 _256_ vdd gnd OAI21X1
X_1959_ \u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20\[2] _59_ vdd gnd INVX1
X_1539_ \u_rf_if.stream_cnt\[4] _908_ _909_ vdd gnd NAND2X1
X_1292_ \u_cpu.decode.co_ebreak\ _408_ vdd gnd INVX1
X_2497_ _806_ i_clk_sys_ext_bF$buf6 \u_rf_if.write_wait\[0] vdd gnd DFFPOSX1
X_2077_ \u_cpu.bufreg.data\[12] _139_ vdd gnd INVX1
XFILL97650x90150 gnd vdd FILL
XFILL97650x57750 gnd vdd FILL
X_1768_ _292_ _284_ _1066_ _737_ vdd gnd AOI21X1
X_1348_ _353_ _356_ _352_ vdd gnd NOR2X1
X_1997_ _85_ _81_ _86_ vdd gnd NOR2X1
X_1577_ \u_rf_if.read_buf0\[31] _942_ vdd gnd INVX1
X_1157_ \u_mem_serial.state\[0] _535_ _554_ _534_ vdd gnd OAI21X1
X_1386_ _317_ _320_ _316_ vdd gnd NOR2X1
X_1195_ \u_mem_serial.shift_reg\[3] _502_ vdd gnd INVX1
XFILL97950x10950 gnd vdd FILL
X_2421_ _602_ i_clk_sys_ext_bF$buf11 \u_cpu.ctrl.o_ibus_adr\[26] vdd gnd DFFPOSX1
X_2001_ _88_ _89_ vdd gnd INVX2
X_1289_ _437_ _412_ _411_ vdd gnd AND2X2
X_2230_ \u_cpu.ctrl.o_ibus_adr\[16] _241_ vdd gnd INVX1
X_1921_ _870_ _32_ _529_ _33_ vdd gnd OAI21X1
X_1501_ rf_wreg0_to_if[0] \u_cpu.immdec.gen_immdec_w_eq_1.imm11_7\[4] _878_ vdd gnd NOR2X1
X_1730_ rf_read_reg0_to_if[2] _1045_ vdd gnd INVX1
X_1310_ \u_cpu.alu.add_cy_r\ _391_ _390_ vdd gnd NAND2X1
X_2515_ _820_ i_clk_sys_ext_bF$buf6 ren vdd gnd DFFPOSX1
X_2324_ _672_ i_clk_sys_ext_bF$buf0 rf_read_reg1_to_if[1] vdd gnd DFFPOSX1
X_2553_ _849_ i_clk_fast_bF$buf0 \u_mem_serial.state\[0] vdd gnd DFFPOSX1
X_2133_ _171_ _504_ _543__bF$buf1 _621_ vdd gnd MUX2X1
X_1824_ \u_mem_serial.shift_reg\[1] _1107_ vdd gnd INVX1
X_1404_ _299_ _301_ _306_ _298_ vdd gnd AOI21X1
X_2362_ _702_ i_clk_sys_ext_bF$buf7 \u_cpu.decode.opcode\[1] vdd gnd DFFPOSX1
X_1633_ \u_rf_if.read_buf0\[5] _982_ vdd gnd INVX1
X_1213_ _487_ _486_ _485_ vdd gnd NOR2X1
X_2418_ _746_ i_clk_fast_bF$buf7 \u_rf_if.tx_state\[0] vdd gnd DFFPOSX1
X_2171_ _461_ _203_ _463_ _204_ vdd gnd OAI21X1
X_1862_ \u_mem_serial.shift_reg\[21] _1140_ vdd gnd INVX1
X_1442_ \u_rf_if.tx_state\[1] \u_rf_if.tx_state\[0] \u_rf_if.tx_state\[2] _265_ vdd gnd OAI21X1
X_2227_ _238_ _239_ _873__bF$buf4 _593_ vdd gnd MUX2X1
X_1918_ \u_mem_serial.bit_count\[5] _30_ vdd gnd INVX1
X_1671_ \u_rf_if.read_buf0\[19] _1006_ vdd gnd INVX1
X_1251_ _449_ _448_ _447_ vdd gnd NOR2X1
X_2456_ _774_ i_clk_sys_ext_bF$buf10 \u_rf_if.read_buf0\[16] vdd gnd DFFPOSX1
X_2036_ rf_read_reg1_to_if[4] _116_ vdd gnd INVX1
X_1727_ rf_read_reg0_to_if[1] _1043_ vdd gnd INVX1
X_1307_ \u_rf_if.stream_active\ _393_ vdd gnd INVX8
X_1480_ _700_ _842_ _859_ _860_ vdd gnd OAI21X1
X_2265_ _352_ _254_ vdd gnd INVX1
X_1956_ mem_ibus_ack_bF$buf5 _1041_ _43_ _57_ vdd gnd OAI21X1
X_1536_ \u_rf_if.stream_cnt\[2] \u_rf_if.stream_cnt\[4] \u_rf_if.stream_cnt\[3] _906_ vdd gnd NAND3X1
X_2494_ _551_ _550_ _549_ _548_ vdd gnd NAND3X1
X_2074_ _136_ _137_ _426__bF$buf0 _646_ vdd gnd MUX2X1
X_1765_ \u_rf_if.last_req_key\[4] _284_ i_rst_n_bF$buf1 _1065_ vdd gnd OAI21X1
X_1345_ \u_cpu.ctrl.pc\ \u_cpu.ctrl.pc_plus_4_cy_r_w\ _355_ vdd gnd NAND2X1
X_1994_ \u_mem_serial.shift_reg\[21] rf_read_reg1_to_if[2] mem_ibus_ack_bF$buf5 _84_ vdd gnd MUX2X1
X_1574_ _940_ _820_ vdd gnd INVX1
X_1154_ _1115_ o_mem_sck vdd gnd BUFX2
X_2359_ _581_ i_clk_sys_ext_bF$buf3 \u_cpu.ctrl.o_ibus_adr\[6] vdd gnd DFFPOSX1
X_1383_ \u_rf_if.last_req_key\[8] _344_ \u_rf_if.req_seen\ _319_ vdd gnd OAI21X1
X_2168_ \u_cpu.bufreg.i_shamt\[0] _201_ vdd gnd INVX1
X_1859_ mem_ibus_ack_bF$buf3 _481_ _1138_ vdd gnd NOR2X1
X_1439_ _340_ _282_ _274_ _335_ _268_ vdd 
+ gnd
+ AOI22X1
X_1192_ _506_ _508_ _505_ vdd gnd NOR2X1
X_2397_ _590_ i_clk_sys_ext_bF$buf10 \u_cpu.ctrl.o_ibus_adr\[15] vdd gnd DFFPOSX1
X_1668_ \u_rf_if.read_buf0\[17] _393__bF$buf0 _1004_ vdd gnd NOR2X1
X_1248_ \u_cpu.decode.opcode\[0] _450_ vdd gnd INVX2
X_1897_ \u_mem_serial.shift_reg\[31] _14_ vdd gnd INVX1
X_1477_ _855_ _856_ _261_ _857_ vdd gnd OAI21X1
X_1286_ _415_ _481_ _414_ vdd gnd NAND2X1
X_2512_ _614_ i_clk_sys_ext_bF$buf11 \u_cpu.bufreg.i_shamt\[1] vdd gnd DFFPOSX1
XFILL97950x86550 gnd vdd FILL
X_2321_ _669_ i_clk_sys_ext_bF$buf6 rf_wreg0_to_if[2] vdd gnd DFFPOSX1
X_1189_ mem_ibus_ack_bF$buf7 _508_ vdd gnd INVX4
X_2550_ _573_ i_clk_sys_ext_bF$buf5 \u_cpu.ctrl.o_ibus_adr\[30] vdd gnd DFFPOSX1
X_2130_ \u_mem_serial.bit_count\[1] _548_ \u_mem_serial.bit_count\[5] _169_ vdd gnd OAI21X1
X_1821_ _559_ _542__bF$buf2 _1105_ vdd gnd NOR2X1
X_1401_ \u_rf_if.last_req_key\[2] _302_ _301_ vdd gnd NAND2X1
X_1630_ \u_rf_if.read_buf0\[4] _980_ vdd gnd INVX1
X_1210_ \u_cpu.bufreg2.i_bytecnt\[0] _488_ vdd gnd INVX1
X_2415_ _745_ i_clk_fast_bF$buf5 \u_rf_if.tx_state\[1] vdd gnd DFFPOSX1
X_2224_ \u_cpu.ctrl.o_ibus_adr\[19] _238_ vdd gnd INVX1
X_1915_ _548_ _19_ _28_ vdd gnd NOR2X1
XFILL97950x18150 gnd vdd FILL
X_2453_ _771_ i_clk_sys_ext_bF$buf4 \u_rf_if.read_buf0\[19] vdd gnd DFFPOSX1
X_2033_ _508_ _113_ _114_ vdd gnd NAND2X1
X_1724_ \u_cpu.csr_imm\ _1041_ vdd gnd INVX1
X_1304_ _493_ \u_cpu.decode.opcode\[2] _396_ vdd gnd AND2X2
X_2509_ _813_ i_clk_sys_ext_bF$buf1 \u_rf_if.wdata0_next_phase\ vdd gnd DFFPOSX1
X_2262_ _251_ _253_ _873__bF$buf1 _572_ vdd gnd MUX2X1
X_1953_ \u_mem_serial.shift_reg\[15] rf_read_reg0_to_if[1] mem_ibus_ack_bF$buf5 _55_ vdd gnd MUX2X1
X_1533_ \u_rf_if.stream_cnt\[2] _902_ _903_ vdd gnd NAND2X1
X_2318_ _666_ i_clk_sys_ext_bF$buf0 \u_cpu.immdec.gen_immdec_w_eq_1.imm31\ vdd gnd DFFPOSX1
X_2491_ _546_ _547_ _545_ vdd gnd NAND2X1
X_2071_ \u_cpu.bufreg.data\[15] _136_ vdd gnd INVX1
X_1762_ _300_ _285_ _1063_ _740_ vdd gnd AOI21X1
X_1342_ _394_ _368_ _359_ _358_ vdd gnd OAI21X1
X_2547_ _846_ i_clk_fast_bF$buf1 \u_mem_serial.shift_reg\[9] vdd gnd DFFPOSX1
X_2127_ _168_ _532_ _624_ vdd gnd NAND2X1
X_1818_ _542__bF$buf4 _1102_ _1099_ _1103_ vdd gnd OAI21X1
X_1991_ _884_ _82_ _81_ _674_ vdd gnd MUX2X1
X_1571_ _898_ _934_ _937_ _938_ vdd gnd OAI21X1
X_1151_ _1118_ o_rf_sck vdd gnd BUFX2
X_2356_ i_clk_sys_ext_bF$buf0 i_clk_fast_bF$buf2 \u_mem_serial.clk_sys_prev\ vdd gnd DFFPOSX1
X_1627_ \u_rf_if.read_buf0\[2] _978_ vdd gnd INVX1
X_1207_ _494_ _492_ \u_cpu.decode.opcode\[2] _491_ vdd gnd OAI21X1
X_1380_ ren _324_ _323_ _322_ vdd gnd AOI21X1
X_2165_ _462_ _463_ _187_ _199_ vdd gnd OAI21X1
X_1856_ _1122_ _481_ _1136_ _713_ vdd gnd OAI21X1
X_1436_ i_clk_fast_bF$buf7 _271_ _1118_ vdd gnd NOR2X1
X_2394_ _735_ i_clk_fast_bF$buf5 \u_rf_if.last_req_key\[7] vdd gnd DFFPOSX1
X_1665_ \u_rf_if.read_buf0\[16] _393__bF$buf0 _1002_ vdd gnd NOR2X1
X_1245_ _456_ _454_ _463_ _453_ vdd gnd NAND3X1
X_1894_ mem_ibus_ack_bF$buf7 _450_ _12_ _701_ vdd gnd OAI21X1
X_1474_ _330_ _854_ vdd gnd INVX1
X_2259_ \u_cpu.ctrl.o_ibus_adr\[31] _252_ vdd gnd INVX1
X_1283_ _418_ _417_ vdd gnd INVX1
X_2488_ \u_mem_serial.state\[1] _552_ _542_ vdd gnd NOR2X1
X_2068_ _133_ _134_ _426__bF$buf0 _649_ vdd gnd MUX2X1
X_1759_ _310_ _285_ i_rst_n_bF$buf0 _1062_ vdd gnd OAI21X1
X_1339_ _367_ _366_ _362_ _361_ vdd gnd OAI21X1
X_2297_ _648_ i_clk_sys_ext_bF$buf5 \u_cpu.bufreg.data\[16] vdd gnd DFFPOSX1
X_1988_ _470_ _469_ _874_ _80_ vdd gnd OAI21X1
X_1568_ \u_rf_if.stream_cnt\[0] _393__bF$buf3 _935_ vdd gnd NOR2X1
X_1797_ \u_rf_if.rreg0_latched\[0] _960_ _933_ _1086_ vdd gnd NAND3X1
X_1377_ \u_rf_if.last_req_key\[3] _325_ vdd gnd INVX1
X_1186_ _511_ _510_ vdd gnd INVX1
X_2412_ _830_ i_clk_sys_ext_bF$buf6 \u_rf_if.wen0_r\ vdd gnd DFFPOSX1
X_2221_ _235_ _236_ _873__bF$buf4 _597_ vdd gnd MUX2X1
X_1912_ _25_ _24_ _542__bF$buf0 _26_ vdd gnd OAI21X1
X_2450_ _768_ i_clk_sys_ext_bF$buf4 \u_rf_if.read_buf0\[22] vdd gnd DFFPOSX1
X_2030_ \u_cpu.branch_op\ _450_ _416_ _110_ _111_ vdd 
+ gnd
+ AOI22X1
XFILL97950x72150 gnd vdd FILL
X_1721_ _1039_ _1038_ _757_ vdd gnd NOR2X1
X_1301_ _401_ _410_ _399_ vdd gnd NAND2X1
X_2506_ _611_ i_clk_fast_bF$buf6 \u_mem_serial.shift_reg\[14] vdd gnd DFFPOSX1
X_1950_ _1045_ _53_ _51_ _686_ vdd gnd MUX2X1
X_1530_ \u_rf_if.stream_cnt\[1] _900_ vdd gnd INVX1
X_2315_ _664_ i_clk_sys_ext_bF$buf7 \u_cpu.immdec.gen_immdec_w_eq_1.imm7\ vdd gnd DFFPOSX1
X_2544_ _844_ i_clk_fast_bF$buf5 \u_rf_if.launch_pending\ vdd gnd DFFPOSX1
X_2124_ _542__bF$buf2 _533_ _167_ vdd gnd NAND2X1
X_1815_ \u_cpu.bufreg.data\[4] _1100_ vdd gnd INVX1
X_2353_ _695_ i_clk_fast_bF$buf3 \u_mem_serial.bit_count\[4] vdd gnd DFFPOSX1
X_1624_ _943__bF$buf2 _976_ vdd gnd INVX1
X_1204_ _496_ _495_ _494_ vdd gnd NOR2X1
X_2409_ _597_ i_clk_sys_ext_bF$buf10 \u_cpu.ctrl.o_ibus_adr\[21] vdd gnd DFFPOSX1
X_2162_ _193_ _196_ _617_ vdd gnd NAND2X1
X_1853_ _1132_ \u_cpu.bne_or_bge\ _1134_ vdd gnd OR2X2
X_1433_ _273_ _440_ _1119_ _272_ vdd gnd OAI21X1
X_2218_ \u_cpu.ctrl.o_ibus_adr\[22] _235_ vdd gnd INVX1
X_2391_ _734_ i_clk_fast_bF$buf1 \u_rf_if.last_req_key\[8] vdd gnd DFFPOSX1
X_1909_ _549_ _20_ _23_ vdd gnd NAND2X1
X_1662_ _999_ _925__bF$buf2 _1000_ _777_ vdd gnd AOI21X1
X_1242_ \u_cpu.bufreg2.dhi\[5] _457_ _456_ vdd gnd NAND2X1
X_2447_ _765_ i_clk_sys_ext_bF$buf2 \u_rf_if.read_buf0\[25] vdd gnd DFFPOSX1
X_2027_ \u_cpu.immdec.gen_immdec_w_eq_1.imm7\ _108_ vdd gnd INVX1
X_1718_ _1035_ _1037_ _758_ vdd gnd NOR2X1
X_1891_ _1121_ mem_ibus_ack_bF$buf7 _11_ _703_ vdd gnd AOI21X1
X_1471_ _512_ \u_rf_if.tx_state\[3] _843_ vdd gnd OR2X2
X_2256_ \u_cpu.ctrl.o_ibus_adr\[28] _250_ vdd gnd INVX1
X_1947_ \u_mem_serial.shift_reg\[18] rf_read_reg0_to_if[4] mem_ibus_ack_bF$buf0 _52_ vdd gnd MUX2X1
X_1527_ _894_ _508_ _897_ _824_ vdd gnd AOI21X1
X_1280_ \u_cpu.bufreg2.i_op_b_sel\ _421_ _420_ vdd gnd NAND2X1
X_2485_ \u_mem_serial.shift_reg\[8] _540_ vdd gnd INVX1
X_2065_ \u_cpu.bufreg.data\[18] _133_ vdd gnd INVX1
X_1756_ _1060_ _852_ _743_ vdd gnd AND2X2
X_1336_ _393__bF$buf0 _392_ _376_ _364_ vdd gnd OAI21X1
X_2294_ _645_ i_clk_sys_ext_bF$buf11 \u_cpu.bufreg.data\[13] vdd gnd DFFPOSX1
X_1985_ \u_cpu.immdec.gen_immdec_w_eq_1.imm30_25\[0] _78_ vdd gnd INVX1
X_1565_ _896_ _932_ _821_ vdd gnd NAND2X1
X_1794_ _932_ raddr[3] _939_ _1084_ vdd gnd AOI21X1
X_1374_ _330_ \u_rf_if.last_req_key\[4] _328_ vdd gnd OR2X2
X_2579_ _644_ i_clk_sys_ext_bF$buf11 \u_cpu.bufreg.data\[12] vdd gnd DFFPOSX1
X_2159_ _190_ _463_ _194_ vdd gnd NOR2X1
X_1183_ \u_rf_if.tx_state\[2] _514_ _513_ vdd gnd NOR2X1
X_2388_ _835_ i_clk_fast_bF$buf7 _1119_ vdd gnd DFFPOSX1
X_1659_ _997_ _998_ _778_ vdd gnd NOR2X1
X_1239_ \u_cpu.bufreg2.dhi\[3] _460_ _459_ vdd gnd NOR2X1
X_2197_ \u_mem_serial.shift_reg\[26] _543__bF$buf5 _222_ vdd gnd NOR2X1
X_1888_ _505_ _10_ vdd gnd INVX1
X_1468_ _717_ _805_ _282_ _834_ vdd gnd OAI21X1
X_1697_ _393__bF$buf2 \u_rf_if.read_buf0\[27] \u_rf_if.read_buf0\[26] _943__bF$buf3 _1023_ vdd 
+ gnd
+ OAI22X1
X_1277_ \u_cpu.decode.opcode\[1] _423_ vdd gnd INVX1
XFILL97950x93750 gnd vdd FILL
X_2503_ _809_ i_clk_sys_ext_bF$buf8 \u_rf_if.stream_cnt\[1] vdd gnd DFFPOSX1
X_2312_ _661_ i_clk_sys_ext_bF$buf12 \u_cpu.immdec.gen_immdec_w_eq_1.imm11_7\[4] vdd gnd DFFPOSX1
X_2541_ _623_ i_clk_fast_bF$buf2 \u_mem_serial.shift_reg\[31] vdd gnd DFFPOSX1
X_2121_ _553_ _544_ \u_mem_serial.shift_reg\[15] _166_ vdd gnd OAI21X1
X_1812_ _1097_ _1096_ _1092_ _724_ vdd gnd OAI21X1
X_2350_ _577_ i_clk_sys_ext_bF$buf9 \u_cpu.ctrl.o_ibus_adr\[2] vdd gnd DFFPOSX1
X_1621_ \u_rf_if.write_wait\[1] _444_ _974_ vdd gnd NAND2X1
X_1201_ \u_cpu.state.init_done\ _497_ vdd gnd INVX1
X_2406_ _741_ i_clk_fast_bF$buf5 \u_rf_if.last_req_key\[1] vdd gnd DFFPOSX1
X_1850_ _496_ _495_ _1128_ _1129_ _1131_ vdd 
+ gnd
+ AOI22X1
X_1430_ _277_ _275_ _836_ vdd gnd NOR2X1
X_2215_ _232_ _233_ _873__bF$buf1 _600_ vdd gnd MUX2X1
XFILL97950x25350 gnd vdd FILL
X_1906_ _550_ _16_ _21_ vdd gnd NOR2X1
X_2444_ _762_ i_clk_sys_ext_bF$buf2 \u_rf_if.read_buf0\[28] vdd gnd DFFPOSX1
X_2024_ mem_ibus_ack_bF$buf3 \u_mem_serial.shift_reg\[7] _47_ \u_cpu.immdec.gen_immdec_w_eq_1.imm7\ _106_ vdd 
+ gnd
+ AOI22X1
X_1715_ _1032_ _1034_ _1035_ vdd gnd NOR2X1
X_2253_ _227_ _248_ _873__bF$buf5 _576_ vdd gnd MUX2X1
X_1944_ \u_cpu.decode.opcode\[2] \u_cpu.decode.opcode\[1] _449_ _49_ vdd gnd OAI21X1
X_1524_ _893_ _895_ _896_ vdd gnd NAND2X1
X_2309_ _658_ i_clk_sys_ext_bF$buf3 \u_cpu.bufreg.data\[26] vdd gnd DFFPOSX1
X_2482_ _540_ _543__bF$buf2 _539_ _850_ vdd gnd OAI21X1
X_2062_ _130_ _131_ _426__bF$buf2 _652_ vdd gnd MUX2X1
X_1753_ i_rst_n_bF$buf1 _343_ _287_ _1059_ vdd gnd NAND3X1
X_1333_ _494_ _367_ vdd gnd INVX1
X_2538_ _837_ i_clk_fast_bF$buf7 \u_rf_if.shift_rx\[0] vdd gnd DFFPOSX1
X_2118_ _490_ _163_ _161_ _164_ vdd gnd AOI21X1
X_2291_ \u_mem_serial.bit_count\[2] _550_ vdd gnd INVX1
X_1809_ _1094_ \u_rf_if.i_stream_rs2_en\ _947_ _1095_ vdd gnd OAI21X1
X_1982_ \u_cpu.immdec.gen_immdec_w_eq_1.imm30_25\[1] _76_ vdd gnd INVX1
X_1562_ _917_ \u_rf_if.i_stream_rs2_en\ _930_ vdd gnd NAND2X1
X_2347_ _576_ i_clk_sys_ext_bF$buf9 \u_cpu.ctrl.o_ibus_adr\[1] vdd gnd DFFPOSX1
X_1618_ _972_ _969_ _970_ _808_ vdd gnd AOI21X1
X_1791_ \u_rf_if.issue_idx\[2] _932_ _1081_ _1082_ vdd gnd OAI21X1
X_1371_ _344_ rf_wreg0_to_if[0] _331_ vdd gnd AND2X2
X_2576_ _643_ i_clk_sys_ext_bF$buf11 \u_cpu.bufreg.data\[11] vdd gnd DFFPOSX1
X_2156_ _460_ _191_ vdd gnd INVX1
X_1847_ _387_ _371_ _390_ _1128_ vdd gnd OAI21X1
X_1427_ _280_ _278_ _277_ _276_ vdd gnd AOI21X1
X_1180_ ren _517_ i_rst_n_bF$buf2 _516_ vdd gnd OAI21X1
X_2385_ _722_ i_clk_fast_bF$buf4 \u_mem_serial.shift_reg\[30] vdd gnd DFFPOSX1
X_1656_ _995_ _996_ _779_ vdd gnd NOR2X1
X_1236_ \u_cpu.bufreg.i_shamt\[2] _462_ vdd gnd INVX1
X_2194_ _542__bF$buf3 _219_ _217_ _220_ vdd gnd OAI21X1
X_1885_ mem_ibus_ack_bF$buf1 _495_ _8_ _706_ vdd gnd OAI21X1
X_1465_ _342_ _269_ _804_ vdd gnd AND2X2
X_1694_ _393__bF$buf2 \u_rf_if.read_buf0\[26] \u_rf_if.read_buf0\[25] _943__bF$buf3 _1021_ vdd 
+ gnd
+ OAI22X1
X_1274_ _430_ _427_ _426_ vdd gnd NAND2X1
X_2479_ _538_ _545_ _542__bF$buf0 _537_ vdd gnd OAI21X1
X_2059_ \u_cpu.bufreg.data\[21] _130_ vdd gnd INVX1
X_2288_ _562_ _554_ _553_ vdd gnd NAND2X1
X_1979_ \u_cpu.immdec.gen_immdec_w_eq_1.imm30_25\[2] _74_ vdd gnd INVX1
X_1559_ _927_ _928_ vdd gnd INVX1
X_2500_ _564_ i_clk_fast_bF$buf0 \u_mem_serial.bit_count\[6] vdd gnd DFFPOSX1
X_2097_ _145_ _432_ _147_ _633_ vdd gnd MUX2X1
X_1788_ _969_ _900_ _899_ _1079_ vdd gnd OAI21X1
X_1368_ _335_ _334_ vdd gnd INVX1
X_1597_ mem_ibus_ack_bF$buf1 _957_ _444_ _814_ vdd gnd OAI21X1
X_1177_ \u_rf_if.rtrig1\ _519_ vdd gnd INVX1
X_2403_ _593_ i_clk_sys_ext_bF$buf10 \u_cpu.ctrl.o_ibus_adr\[18] vdd gnd DFFPOSX1
X_2212_ \u_cpu.ctrl.o_ibus_adr\[25] _232_ vdd gnd INVX1
X_1903_ _15_ _529_ _18_ _698_ vdd gnd OAI21X1
XFILL97950x46950 gnd vdd FILL
X_2441_ _607_ i_clk_fast_bF$buf3 \u_mem_serial.shift_reg\[25] vdd gnd DFFPOSX1
X_2021_ _508_ _526_ _103_ _104_ vdd gnd OAI21X1
X_1712_ \u_rf_if.issue_idx\[2] _1032_ vdd gnd INVX1
X_2250_ _1101_ _522_ _873__bF$buf3 _578_ vdd gnd MUX2X1
X_1941_ mem_ibus_ack_bF$buf0 _385_ _46_ _688_ vdd gnd OAI21X1
X_1521_ \u_rf_if.write_wait\[0] \u_rf_if.write_wait\[1] _893_ vdd gnd NOR2X1
X_2306_ _655_ i_clk_sys_ext_bF$buf3 \u_cpu.bufreg.data\[23] vdd gnd DFFPOSX1
X_1750_ _281_ _274_ _1057_ _746_ vdd gnd AOI21X1
X_1330_ _371_ _387_ _370_ vdd gnd OR2X2
X_2535_ _567_ i_clk_sys_ext_bF$buf10 \u_cpu.alu.add_cy_r\ vdd gnd DFFPOSX1
X_2115_ _162_ _145_ _147_ _630_ vdd gnd MUX2X1
X_1806_ \u_rf_if.rs2_stream_buf\[1] _935_ _1092_ vdd gnd NAND2X1
X_2344_ _689_ i_clk_sys_ext_bF$buf7 \u_cpu.decode.co_ebreak\ vdd gnd DFFPOSX1
X_1615_ _903_ \u_rf_if.stream_active\ _908_ _970_ vdd gnd AOI21X1
X_2573_ _641_ i_clk_sys_ext_bF$buf13 \u_cpu.bufreg.data\[9] vdd gnd DFFPOSX1
X_2153_ _187_ _182_ _188_ _189_ vdd gnd OAI21X1
XCLKBUF1_insert50 i_clk_fast i_clk_fast_bF$buf6 vdd gnd CLKBUF1
XCLKBUF1_insert51 i_clk_fast i_clk_fast_bF$buf5 vdd gnd CLKBUF1
XCLKBUF1_insert52 i_clk_fast i_clk_fast_bF$buf4 vdd gnd CLKBUF1
XCLKBUF1_insert53 i_clk_fast i_clk_fast_bF$buf3 vdd gnd CLKBUF1
XCLKBUF1_insert54 i_clk_fast i_clk_fast_bF$buf2 vdd gnd CLKBUF1
XCLKBUF1_insert55 i_clk_fast i_clk_fast_bF$buf1 vdd gnd CLKBUF1
XCLKBUF1_insert56 i_clk_fast i_clk_fast_bF$buf0 vdd gnd CLKBUF1
X_1844_ _1124_ _433_ _1125_ vdd gnd NAND2X1
X_1424_ _280_ i_rf_miso _279_ vdd gnd OR2X2
X_2209_ \u_cpu.ctrl.o_ibus_adr\[26] _230_ vdd gnd INVX1
X_2382_ _615_[1] i_clk_sys_ext_bF$buf13 \u_cpu.bufreg2.i_bytecnt\[0] vdd gnd DFFPOSX1
X_1653_ \u_rf_if.stream_active\ _992_ _994_ _780_ vdd gnd AOI21X1
X_1233_ _496_ _480_ _466_ _465_ vdd gnd OAI21X1
X_2438_ _758_ i_clk_sys_ext_bF$buf1 \u_rf_if.issue_idx\[2] vdd gnd DFFPOSX1
X_2018_ _508_ _415_ _101_ vdd gnd NAND2X1
X_2191_ _117_ _542__bF$buf3 _217_ vdd gnd NAND2X1
X_1709_ _914_ _1029_ _933_ _1030_ vdd gnd OAI21X1
X_1882_ _542__bF$buf4 _6_ _3_ _7_ vdd gnd OAI21X1
X_1462_ \u_rf_if.wdata0_r\[0] _801_ vdd gnd INVX1
X_2247_ _5_ _38_ _873__bF$buf3 _581_ vdd gnd MUX2X1
X_1938_ _44_ _45_ vdd gnd INVX1
X_1518_ \u_rf_if.i_stream_rs2_en\ _890_ _891_ vdd gnd NAND2X1
X_1691_ _393__bF$buf1 \u_rf_if.read_buf0\[25] \u_rf_if.read_buf0\[24] _943__bF$buf3 _1019_ vdd 
+ gnd
+ OAI22X1
X_1271_ _468_ _429_ vdd gnd INVX1
X_2476_ _789_ i_clk_sys_ext_bF$buf2 \u_rf_if.read_buf0\[1] vdd gnd DFFPOSX1
X_2056_ _127_ _128_ _426__bF$buf4 _655_ vdd gnd MUX2X1
X_1747_ _1055_ _866_ _1056_ vdd gnd NOR2X1
X_1327_ _374_ _373_ vdd gnd INVX1
X_2285_ \u_mem_serial.clk_sys_prev\ _557_ _556_ vdd gnd NOR2X1
X_1976_ \u_cpu.immdec.gen_immdec_w_eq_1.imm30_25\[3] _72_ vdd gnd INVX1
X_1556_ \u_rf_if.stream_active\ _924_ _925_ vdd gnd NOR2X1
X_2094_ \u_cpu.state.i_ctrl_misalign\ _145_ vdd gnd INVX1
X_1785_ \u_rf_if.stream_cnt\[2] \u_rf_if.stream_cnt\[1] _1076_ _1077_ vdd gnd AOI21X1
X_1365_ _338_ _339_ _337_ vdd gnd NOR2X1
X_1594_ \u_rf_if.rcnt\[1] _955_ vdd gnd INVX1
X_1174_ _523_ _522_ _559_ _521_ vdd gnd MUX2X1
X_2379_ _584_ i_clk_sys_ext_bF$buf3 \u_cpu.ctrl.o_ibus_adr\[9] vdd gnd DFFPOSX1
X_2188_ _542__bF$buf3 _214_ _212_ _215_ vdd gnd OAI21X1
X_1879_ \u_cpu.bufreg.data\[7] _4_ vdd gnd INVX1
X_1459_ _796_ _797_ _791_ _798_ vdd gnd OAI21X1
X_2400_ _738_ i_clk_fast_bF$buf1 \u_rf_if.last_req_key\[4] vdd gnd DFFPOSX1
X_1688_ _393__bF$buf1 \u_rf_if.read_buf0\[24] \u_rf_if.read_buf0\[23] _943__bF$buf3 _1017_ vdd 
+ gnd
+ OAI22X1
X_1268_ \u_cpu.bufreg.data\[0] _432_ vdd gnd INVX1
X_1900_ \u_mem_serial.bit_count\[0] \u_mem_serial.bit_count\[1] _16_ vdd gnd NOR2X1
X_1497_ \u_cpu.decode.opcode\[0] _386_ _874_ vdd gnd NOR2X1
X_2303_ _696_ i_clk_fast_bF$buf0 \u_mem_serial.bit_count\[3] vdd gnd DFFPOSX1
XFILL97650x79350 gnd vdd FILL
X_2532_ _621_ i_clk_fast_bF$buf2 \u_mem_serial.shift_reg\[0] vdd gnd DFFPOSX1
X_2112_ _153_ _158_ _490_ _160_ vdd gnd AOI21X1
X_1803_ \u_rf_if.rreg0_latched\[2] _960_ _933_ _1090_ vdd gnd NAND3X1
X_2341_ _687_ i_clk_sys_ext_bF$buf9 rf_read_reg0_to_if[3] vdd gnd DFFPOSX1
X_1612_ \u_rf_if.stream_active\ \u_rf_if.stream_cnt\[0] \u_rf_if.stream_cnt\[1] _968_ vdd gnd AOI21X1
X_2570_ _638_ i_clk_sys_ext_bF$buf3 \u_cpu.bufreg.data\[6] vdd gnd DFFPOSX1
X_2150_ _457_ _185_ _463_ _186_ vdd gnd OAI21X1
XFILL97950x32550 gnd vdd FILL
X_1841_ \u_cpu.ctrl.i_jump\ _1122_ vdd gnd INVX1
X_1421_ \u_rf_if.tx_state\[0] _282_ vdd gnd INVX2
X_2206_ _144_ _227_ _559_ _228_ vdd gnd MUX2X1
X_1650_ _393__bF$buf4 \u_rf_if.read_buf0\[10] \u_rf_if.read_buf0\[9] _943__bF$buf2 _993_ vdd 
+ gnd
+ OAI22X1
X_1230_ \u_cpu.decode.co_mem_word\ _469_ _468_ vdd gnd NOR2X1
X_2435_ _829_ i_clk_fast_bF$buf6 \u_mem_serial.shift_reg\[28] vdd gnd DFFPOSX1
X_2015_ mem_ibus_ack_bF$buf6 \u_cpu.immdec.gen_immdec_w_eq_1.imm31\ _99_ vdd gnd NOR2X1
X_1706_ _920_ _821_ _1027_ _760_ vdd gnd OAI21X1
X_2244_ _247_ _218_ _873__bF$buf2 _584_ vdd gnd MUX2X1
X_1935_ \u_mem_serial.shift_reg\[14] mem_ibus_ack_bF$buf5 _43_ vdd gnd NAND2X1
X_1515_ \u_rf_if.read_buf1\[0] _888_ vdd gnd INVX1
X_2473_ _821_ i_clk_sys_ext_bF$buf6 \u_rf_if.prefetch_active\ vdd gnd DFFPOSX1
X_2053_ \u_cpu.bufreg.data\[24] _127_ vdd gnd INVX1
X_1744_ \u_rf_if.o_waddr\[1] _863_ _444_ _1054_ vdd gnd OAI21X1
X_1324_ _377_ _376_ vdd gnd INVX1
X_2529_ _831_ i_clk_fast_bF$buf3 \u_mem_serial.shift_reg\[27] vdd gnd DFFPOSX1
X_2109_ _154_ _155_ _157_ vdd gnd NAND2X1
X_2282_ i_rst_n_bF$buf2 \u_cpu.state.ibus_cyc\ _559_ vdd gnd NAND2X1
X_1973_ _450_ _69_ _48_ _70_ vdd gnd OAI21X1
X_1553_ _921_ _915_ _922_ vdd gnd AND2X2
X_2338_ _685_ i_clk_sys_ext_bF$buf0 rf_read_reg0_to_if[1] vdd gnd DFFPOSX1
X_2091_ _1100_ _523_ _426__bF$buf1 _635_ vdd gnd MUX2X1
X_1609_ _964_ _965_ _966_ _811_ vdd gnd AOI21X1
X_1782_ raddr[0] _933_ _1027_ _1075_ vdd gnd OAI21X1
X_1362_ ren raddr[7] _342_ _341_ _340_ vdd 
+ gnd
+ AOI22X1
X_2567_ _636_ i_clk_sys_ext_bF$buf3 \u_cpu.bufreg.data\[4] vdd gnd DFFPOSX1
X_2147_ _178_ _183_ _181_ _619_ vdd gnd OAI21X1
X_1838_ _443_ _1114_ _715_ vdd gnd OR2X2
X_1418_ _285_ _284_ vdd gnd INVX4
X_1591_ \u_rf_if.ready_pulse\ _953_ vdd gnd INVX1
X_1171_ _525_ _542__bF$buf1 _524_ vdd gnd NAND2X1
X_2376_ _713_ i_clk_sys_ext_bF$buf5 \u_cpu.ctrl.i_jump\ vdd gnd DFFPOSX1
X_1647_ \u_rf_if.read_buf0\[8] _943__bF$buf2 \u_rf_if.read_buf0\[10] _926_ _991_ vdd 
+ gnd
+ OAI22X1
X_1227_ _497_ _472_ _478_ _471_ vdd gnd OAI21X1
X_2185_ _1_ _542__bF$buf3 _212_ vdd gnd NAND2X1
X_1876_ \u_mem_serial.shift_reg\[23] _1_ vdd gnd INVX1
X_1456_ _793_ _794_ _795_ vdd gnd NAND2X1
X_1685_ \u_rf_if.read_buf0\[22] _943__bF$buf3 \u_rf_if.read_buf0\[24] _926_ _1015_ vdd 
+ gnd
+ OAI22X1
X_1265_ _488_ _489_ _435_ vdd gnd NAND2X1
XFILL97350x90150 gnd vdd FILL
XFILL97350x57750 gnd vdd FILL
X_1494_ \u_mem_serial.shift_reg\[27] _543__bF$buf5 _872_ vdd gnd NOR2X1
X_2279_ \u_mem_serial.state\[1] _562_ vdd gnd INVX1
XBUFX2_insert0 _873_ _873__bF$buf5 vdd gnd BUFX2
XBUFX2_insert1 _873_ _873__bF$buf4 vdd gnd BUFX2
XBUFX2_insert2 _873_ _873__bF$buf3 vdd gnd BUFX2
XBUFX2_insert3 _873_ _873__bF$buf2 vdd gnd BUFX2
XBUFX2_insert4 _873_ _873__bF$buf1 vdd gnd BUFX2
XBUFX2_insert5 _873_ _873__bF$buf0 vdd gnd BUFX2
XBUFX2_insert6 _943_ _943__bF$buf4 vdd gnd BUFX2
XBUFX2_insert7 _943_ _943__bF$buf3 vdd gnd BUFX2
XBUFX2_insert8 _943_ _943__bF$buf2 vdd gnd BUFX2
XBUFX2_insert9 _943_ _943__bF$buf1 vdd gnd BUFX2
X_2088_ _4_ _37_ _426__bF$buf3 _638_ vdd gnd MUX2X1
X_1779_ _1072_ _1071_ _1073_ vdd gnd NAND2X1
X_1359_ _519_ _518_ _344_ _343_ vdd gnd OAI21X1
X_2300_ _651_ i_clk_sys_ext_bF$buf11 \u_cpu.bufreg.data\[19] vdd gnd DFFPOSX1
X_1588_ _380_ _944_ _950_ _951_ vdd gnd OAI21X1
X_1168_ _527_ _543__bF$buf2 _540_ _528_ _846_ vdd 
+ gnd
+ OAI22X1
XFILL97650x10950 gnd vdd FILL
X_1800_ \u_rf_if.rreg0_latched\[1] _960_ _933_ _1088_ vdd gnd NAND3X1
X_1397_ raddr[2] _305_ vdd gnd INVX1
X_2203_ _225_ _224_ _543__bF$buf4 _604_ vdd gnd MUX2X1
X_2432_ _732_ i_clk_sys_ext_bF$buf4 \u_rf_if.rcnt\[2] vdd gnd DFFPOSX1
X_2012_ rf_wreg0_to_if[1] _508_ _97_ vdd gnd NAND2X1
X_1703_ _393__bF$buf3 \u_rf_if.read_buf0\[30] \u_rf_if.read_buf0\[29] _943__bF$buf2 _1026_ vdd 
+ gnd
+ OAI22X1
X_2241_ _245_ _246_ _873__bF$buf2 _586_ vdd gnd MUX2X1
X_1932_ _561_ _558_ _41_ _42_ vdd gnd AOI21X1
X_1512_ rf_read_reg0_to_if[3] _886_ vdd gnd INVX1
X_2470_ _784_ i_clk_sys_ext_bF$buf8 \u_rf_if.read_buf0\[6] vdd gnd DFFPOSX1
X_2050_ _124_ _125_ _426__bF$buf4 _658_ vdd gnd MUX2X1
X_1741_ mem_ibus_ack_bF$buf4 _1051_ _1052_ _750_ vdd gnd AOI21X1
X_1321_ \u_rf_if.rs2_stream_buf\[0] _380_ \u_cpu.bufreg2.i_op_b_sel\ _379_ vdd gnd OAI21X1
X_2526_ _826_ i_clk_sys_ext_bF$buf4 \u_rf_if.read_buf1\[0] vdd gnd DFFPOSX1
X_2106_ \u_cpu.bufreg.c_r\ _154_ vdd gnd INVX1
X_1970_ _65_ _51_ _67_ _680_ vdd gnd AOI21X1
X_1550_ _917_ _918_ _913_ _919_ vdd gnd AOI21X1
X_2335_ _682_ i_clk_sys_ext_bF$buf7 \u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20\[2] vdd gnd DFFPOSX1
X_1606_ i_rf_miso _964_ vdd gnd INVX1
X_2564_ _725_ i_clk_sys_ext_bF$buf6 raddr[6] vdd gnd DFFPOSX1
X_2144_ _177_ _180_ _452_ _181_ vdd gnd NAND3X1
X_1835_ \u_mem_serial.shift_reg\[29] _543__bF$buf0 _1113_ vdd gnd NOR2X1
X_1415_ _337_ _288_ _326_ _287_ vdd gnd NAND3X1
X_2373_ _710_ i_clk_fast_bF$buf6 \u_mem_serial.shift_reg\[21] vdd gnd DFFPOSX1
X_1644_ \u_rf_if.read_buf0\[9] _989_ vdd gnd INVX1
X_1224_ _477_ _475_ _474_ vdd gnd NAND2X1
X_2429_ _754_ i_clk_sys_ext_bF$buf12 \u_rf_if.rreg0_latched\[1] vdd gnd DFFPOSX1
X_2009_ \u_mem_serial.shift_reg\[8] rf_wreg0_to_if[2] mem_ibus_ack_bF$buf2 _95_ vdd gnd MUX2X1
X_2182_ \u_mem_serial.shift_reg\[15] _542__bF$buf1 _1105_ \u_cpu.ctrl.pc\ _210_ vdd 
+ gnd
+ AOI22X1
X_1873_ \u_mem_serial.state\[1] _1147_ _1148_ _1149_ vdd gnd OAI21X1
X_1453_ \u_rf_if.rcnt\[2] _792_ vdd gnd INVX1
X_2238_ \u_cpu.ctrl.o_ibus_adr\[12] _245_ vdd gnd INVX1
X_1929_ _542__bF$buf3 _39_ _36_ _40_ vdd gnd OAI21X1
X_1509_ rf_read_reg1_to_if[3] _884_ vdd gnd INVX1
X_1682_ \u_rf_if.read_buf0\[23] _1013_ vdd gnd INVX1
X_1262_ \u_cpu.decode.opcode\[0] _470_ _438_ vdd gnd NAND2X1
X_2467_ _728_ i_clk_sys_ext_bF$buf1 raddr[3] vdd gnd DFFPOSX1
X_2047_ \u_cpu.bufreg.data\[27] _124_ vdd gnd INVX1
X_1738_ mem_ibus_ack_bF$buf2 _1049_ _1050_ _751_ vdd gnd AOI21X1
X_1318_ \u_cpu.branch_op\ _383_ _382_ vdd gnd NOR2X1
X_1491_ _869_ _444_ _832_ vdd gnd AND2X2
X_2276_ \u_mem_serial.bit_count\[6] _33_ _260_ vdd gnd NAND2X1
X_1967_ \u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20\[0] _65_ vdd gnd INVX1
X_1547_ _914_ _915_ _916_ vdd gnd NAND2X1
X_2085_ \u_cpu.bufreg.data\[8] _143_ vdd gnd INVX1
X_1776_ \u_rf_if.rcnt\[0] _441_ _733_ vdd gnd NOR2X1
X_1356_ _347_ _528_ _346_ _839_ vdd gnd OAI21X1
X_1585_ \u_rf_if.rs2_stream_buf\[1] _947_ _948_ vdd gnd NOR2X1
X_1165_ _531_ _543__bF$buf0 _530_ _528_ _848_ vdd 
+ gnd
+ OAI22X1
X_1394_ ren \u_rf_if.o_waddr\[0] _309_ _308_ vdd gnd OAI21X1
X_2179_ _165_ _543__bF$buf0 _531_ _528_ _611_ vdd 
+ gnd
+ OAI22X1
X_1679_ \u_rf_if.read_buf0\[22] _1011_ vdd gnd INVX1
X_1259_ _510_ _512_ _440_ vdd gnd NOR2X1
X_2200_ _376_ _177_ _223_ _605_ vdd gnd AOI21X1
X_1488_ \u_rf_if.o_waddr\[3] _866_ _867_ vdd gnd NOR2X1
X_1700_ \u_rf_if.stream_active\ _1022_ _1024_ _763_ vdd gnd AOI21X1
X_1297_ _404_ _409_ _403_ vdd gnd OR2X2
XFILL97650x86550 gnd vdd FILL
X_2523_ _827_ i_clk_sys_ext_bF$buf7 \u_rf_if.rreg0_latched\[3] vdd gnd DFFPOSX1
X_2103_ _150_ _433_ _151_ vdd gnd NOR2X1
X_2332_ _679_ i_clk_sys_ext_bF$buf0 \u_cpu.immdec.gen_immdec_w_eq_1.imm30_25\[4] vdd gnd DFFPOSX1
X_1603_ _913_ _960_ _938_ _962_ vdd gnd OAI21X1
X_2561_ _631_ i_clk_sys_ext_bF$buf3 \u_cpu.bufreg.data\[29] vdd gnd DFFPOSX1
X_2141_ _178_ _463_ \u_cpu.bufreg2.cnt_next\[6] _179_ vdd gnd OAI21X1
X_1832_ \u_cpu.bufreg2.i_bytecnt\[1] _483_ _1111_ vdd gnd NOR2X1
X_1412_ _292_ \u_rf_if.last_req_key\[5] _290_ vdd gnd OR2X2
XBUFX2_insert57 _542_ _542__bF$buf4 vdd gnd BUFX2
XBUFX2_insert58 _542_ _542__bF$buf3 vdd gnd BUFX2
XBUFX2_insert59 _542_ _542__bF$buf2 vdd gnd BUFX2
X_2370_ _708_ i_clk_fast_bF$buf2 mem_ibus_ack vdd gnd DFFPOSX1
XFILL97650x18150 gnd vdd FILL
X_1641_ _986_ _925__bF$buf3 _987_ _785_ vdd gnd AOI21X1
X_1221_ \u_cpu.state.cnt_r\[2] _477_ vdd gnd INVX1
X_2426_ _751_ i_clk_sys_ext_bF$buf12 \u_rf_if.rreg1_latched\[1] vdd gnd DFFPOSX1
X_2006_ \u_mem_serial.shift_reg\[9] rf_wreg0_to_if[3] mem_ibus_ack_bF$buf2 _93_ vdd gnd MUX2X1
X_1870_ \u_mem_serial.bit_count\[0] _870_ _1146_ _709_ vdd gnd OAI21X1
X_1450_ _449_ _394_ _718_ vdd gnd NOR2X1
X_2235_ _242_ _243_ _873__bF$buf0 _589_ vdd gnd MUX2X1
X_1926_ \u_cpu.bufreg.data\[6] _37_ vdd gnd INVX1
X_1506_ \u_mem_serial.shift_reg\[27] _870_ _882_ vdd gnd NOR2X1
X_2464_ _781_ i_clk_sys_ext_bF$buf2 \u_rf_if.read_buf0\[9] vdd gnd DFFPOSX1
X_2044_ \u_cpu.bufreg.data\[28] _122_ vdd gnd INVX1
X_1735_ mem_ibus_ack_bF$buf4 _1047_ _1048_ _752_ vdd gnd AOI21X1
X_1315_ \u_cpu.bufreg.i_sh_signed\ _385_ vdd gnd INVX1
X_2273_ _473_ _1132_ _258_ _566_ vdd gnd OAI21X1
X_1964_ mem_ibus_ack_bF$buf0 _59_ _9_ _63_ vdd gnd OAI21X1
X_1544_ \u_rf_if.prefetch_active\ _913_ vdd gnd INVX1
X_2329_ _677_ i_clk_sys_ext_bF$buf0 \u_cpu.immdec.gen_immdec_w_eq_1.imm30_25\[2] vdd gnd DFFPOSX1
X_2082_ _140_ _141_ _426__bF$buf2 _642_ vdd gnd MUX2X1
X_1773_ \u_rf_if.last_req_key\[8] _1069_ vdd gnd INVX1
X_1353_ _397_ _348_ \u_cpu.o_wdata0\ vdd gnd OR2X2
X_2558_ _627_ i_clk_fast_bF$buf4 \u_mem_serial.shift_reg\[15] vdd gnd DFFPOSX1
X_2138_ _173_ _174_ _466_ _175_ _176_ vdd 
+ gnd
+ AOI22X1
X_1829_ _1109_ _485_ _596_[0] vdd gnd NOR2X1
X_1409_ ren _294_ _293_ vdd gnd NOR2X1
X_1582_ _945_ _444_ _817_ vdd gnd NAND2X1
X_1162_ \u_mem_serial.shift_reg\[12] _530_ vdd gnd INVX1
X_2367_ _705_ i_clk_sys_ext_bF$buf7 \u_cpu.bne_or_bge\ vdd gnd DFFPOSX1
X_1638_ _984_ _925__bF$buf0 _985_ _786_ vdd gnd AOI21X1
X_1218_ _481_ _480_ vdd gnd INVX1
X_1391_ ren \u_rf_if.o_waddr\[1] _312_ _311_ vdd gnd OAI21X1
X_2176_ _201_ _463_ _205_ _208_ vdd gnd AOI21X1
X_1867_ _542__bF$buf4 _1144_ _1141_ _1145_ vdd gnd OAI21X1
X_1447_ _307_ _270_ _261_ _699_ vdd gnd AOI21X1
X_1676_ \u_rf_if.read_buf0\[20] _393__bF$buf1 _1009_ vdd gnd NOR2X1
X_1256_ mem_ibus_ack_bF$buf1 _443_ _442_ vdd gnd NOR2X1
X_1485_ \u_rf_if.o_waddr\[1] _863_ _864_ vdd gnd NAND2X1
X_1294_ \u_cpu.branch_op\ \u_cpu.bufreg2.i_op_b_sel\ _406_ vdd gnd NOR2X1
X_2499_ _807_ i_clk_sys_ext_bF$buf8 \u_rf_if.stream_cnt\[3] vdd gnd DFFPOSX1
X_2079_ \u_cpu.bufreg.data\[11] _140_ vdd gnd INVX1
X_1999_ _474_ _876_ _87_ vdd gnd NAND2X1
X_1579_ _910_ _911_ \u_rf_if.shift_rx\[1] _944_ vdd gnd OAI21X1
X_1159_ _560_ _533_ _532_ vdd gnd NAND2X1
X_2520_ _824_ i_clk_sys_ext_bF$buf1 \u_rf_if.pending_read\ vdd gnd DFFPOSX1
X_2100_ _149_ _148_ _426__bF$buf1 _632_ vdd gnd MUX2X1
X_1388_ \u_rf_if.last_req_key\[0] _314_ vdd gnd INVX1
X_1600_ _958_ _959_ _443_ _813_ vdd gnd AOI21X1
X_1197_ \u_mem_serial.shift_reg\[4] \u_mem_serial.shift_reg\[6] _501_ _500_ vdd gnd AOI21X1
XBUFX2_insert20 _393_ _393__bF$buf4 vdd gnd BUFX2
XBUFX2_insert21 _393_ _393__bF$buf3 vdd gnd BUFX2
XBUFX2_insert22 _393_ _393__bF$buf2 vdd gnd BUFX2
XBUFX2_insert23 _393_ _393__bF$buf1 vdd gnd BUFX2
XBUFX2_insert24 _393_ _393__bF$buf0 vdd gnd BUFX2
XBUFX2_insert25 _925_ _925__bF$buf3 vdd gnd BUFX2
XBUFX2_insert26 _925_ _925__bF$buf2 vdd gnd BUFX2
XBUFX2_insert27 _925_ _925__bF$buf1 vdd gnd BUFX2
XBUFX2_insert28 _925_ _925__bF$buf0 vdd gnd BUFX2
XBUFX2_insert29 _543_ _543__bF$buf5 vdd gnd BUFX2
X_2423_ _603_ i_clk_fast_bF$buf6 \u_mem_serial.shift_reg\[18] vdd gnd DFFPOSX1
X_2003_ mem_ibus_ack_bF$buf2 \u_mem_serial.shift_reg\[10] _90_ _91_ vdd gnd AOI21X1
X_2232_ \u_cpu.ctrl.o_ibus_adr\[15] _242_ vdd gnd INVX1
X_1923_ \u_mem_serial.bit_count\[4] _34_ \u_mem_serial.bit_count\[5] _35_ vdd gnd OAI21X1
X_1503_ _294_ _879_ _876_ _880_ vdd gnd AOI21X1
X_2461_ _778_ i_clk_sys_ext_bF$buf2 \u_rf_if.read_buf0\[12] vdd gnd DFFPOSX1
X_2041_ _116_ _81_ _120_ _662_ vdd gnd AOI21X1
X_1732_ mem_ibus_ack_bF$buf7 _1045_ _1046_ _753_ vdd gnd AOI21X1
X_1312_ _393__bF$buf0 _392_ _389_ _388_ vdd gnd OAI21X1
X_2517_ _616_ i_clk_sys_ext_bF$buf11 \u_cpu.bufreg.i_shamt\[2] vdd gnd DFFPOSX1
X_2270_ _474_ _1128_ _257_ vdd gnd NAND2X1
X_1961_ _60_ _51_ _61_ vdd gnd NOR2X1
X_1541_ _340_ _335_ _910_ vdd gnd NAND2X1
X_2326_ _674_ i_clk_sys_ext_bF$buf0 rf_read_reg1_to_if[3] vdd gnd DFFPOSX1
X_1770_ _335_ _284_ _1067_ _736_ vdd gnd AOI21X1
X_1350_ _352_ _351_ _350_ vdd gnd NOR2X1
X_2555_ _850_ i_clk_fast_bF$buf1 \u_mem_serial.shift_reg\[8] vdd gnd DFFPOSX1
X_2135_ \u_cpu.bufreg2.i_bytecnt\[1] \u_cpu.state.i_ctrl_misalign\ _172_ _173_ vdd gnd OAI21X1
X_1826_ \u_mem_serial.shift_reg\[2] _1108_ vdd gnd INVX1
X_1406_ \u_rf_if.launch_pending\ _297_ _296_ vdd gnd NOR2X1
X_2364_ _703_ i_clk_sys_ext_bF$buf7 \u_cpu.decode.opcode\[2] vdd gnd DFFPOSX1
X_1635_ _982_ _925__bF$buf0 _983_ _787_ vdd gnd AOI21X1
X_1215_ _488_ _484_ _483_ vdd gnd NOR2X1
X_2173_ _462_ _463_ _178_ _206_ vdd gnd OAI21X1
X_1864_ \u_cpu.bufreg.data\[5] _1142_ vdd gnd INVX1
X_1444_ _264_ _263_ vdd gnd INVX1
X_2229_ _239_ _240_ _873__bF$buf4 _592_ vdd gnd MUX2X1
X_1673_ _1006_ _925__bF$buf2 _1007_ _773_ vdd gnd AOI21X1
X_1253_ _470_ _478_ _446_ _445_ vdd gnd OAI21X1
X_2458_ \u_rf_if.wdata0_next\[0] i_clk_sys_ext_bF$buf1 \u_rf_if.wdata0_r\[0] vdd gnd DFFPOSX1
X_2038_ \u_cpu.immdec.gen_immdec_w_eq_1.imm30_25\[0] _508_ _118_ vdd gnd NAND2X1
X_1729_ mem_ibus_ack_bF$buf4 _1043_ _1044_ _754_ vdd gnd AOI21X1
X_1309_ _393__bF$buf0 _392_ _391_ vdd gnd NOR2X1
X_1482_ \u_rf_if.o_waddr\[0] _861_ vdd gnd INVX1
X_2267_ _398_ \u_cpu.ctrl.i_jump\ _255_ vdd gnd AND2X2
X_1958_ _56_ _51_ _58_ _683_ vdd gnd AOI21X1
X_1538_ \u_rf_if.stream_active\ \u_rf_if.ready_pulse\ _908_ vdd gnd NOR2X1
X_1291_ \u_cpu.ctrl.pc_plus_offset_cy_r_w\ _409_ vdd gnd INVX1
X_2496_ _608_ i_clk_fast_bF$buf3 \u_mem_serial.shift_reg\[24] vdd gnd DFFPOSX1
X_2076_ _137_ _138_ _426__bF$buf2 _645_ vdd gnd MUX2X1
X_1767_ \u_rf_if.last_req_key\[5] _284_ i_rst_n_bF$buf3 _1066_ vdd gnd OAI21X1
X_1347_ _355_ _354_ _353_ vdd gnd NAND2X1
X_1996_ mem_ibus_ack_bF$buf5 _1049_ _45_ _85_ vdd gnd OAI21X1
X_1576_ _913_ _941_ _819_ vdd gnd NOR2X1
X_1156_ \u_mem_serial.clk_sys_prev\ _557_ \u_mem_serial.state\[1] _535_ vdd gnd OAI21X1
X_1385_ \u_rf_if.last_req_key\[9] _345_ _318_ _317_ vdd gnd OAI21X1
X_1194_ \u_mem_serial.shift_reg\[2] _504_ _503_ vdd gnd NOR2X1
X_2399_ _591_ i_clk_sys_ext_bF$buf10 \u_cpu.ctrl.o_ibus_adr\[16] vdd gnd DFFPOSX1
X_1899_ \u_mem_serial.bit_count\[1] _15_ vdd gnd INVX1
X_1479_ _858_ _853_ _852_ _859_ vdd gnd AOI21X1
X_2420_ _730_ i_clk_sys_ext_bF$buf6 raddr[1] vdd gnd DFFPOSX1
X_2000_ _508_ _87_ _88_ vdd gnd NAND2X1
X_1288_ _488_ _486_ _489_ _412_ vdd gnd OAI21X1
X_1920_ _31_ _32_ vdd gnd INVX1
X_1500_ rf_wreg0_to_if[3] rf_wreg0_to_if[2] _877_ vdd gnd NOR2X1
X_2514_ _819_ i_clk_sys_ext_bF$buf2 \u_rf_if.ready_pulse\ vdd gnd DFFPOSX1
X_2323_ _671_ i_clk_sys_ext_bF$buf12 rf_read_reg1_to_if[0] vdd gnd DFFPOSX1
X_2552_ _625_ i_clk_fast_bF$buf4 \u_mem_serial.state\[1] vdd gnd DFFPOSX1
X_2132_ i_mem_miso _169_ _170_ _171_ vdd gnd NAND3X1
X_1823_ _1106_ _1104_ _543__bF$buf0 _722_ vdd gnd MUX2X1
X_1403_ _300_ _303_ _299_ vdd gnd NAND2X1
XFILL97650x25350 gnd vdd FILL
X_2361_ _701_ i_clk_sys_ext_bF$buf7 \u_cpu.decode.opcode\[0] vdd gnd DFFPOSX1
X_1632_ _980_ _925__bF$buf0 _981_ _788_ vdd gnd AOI21X1
X_1212_ \u_cpu.state.o_cnt\[2] _486_ vdd gnd INVX1
X_2417_ _600_ i_clk_sys_ext_bF$buf5 \u_cpu.ctrl.o_ibus_adr\[24] vdd gnd DFFPOSX1
X_2170_ _201_ _202_ _203_ vdd gnd NOR2X1
X_1861_ _1137_ _1138_ _1139_ _711_ vdd gnd OAI21X1
X_1441_ _345_ _514_ _267_ _266_ vdd gnd OAI21X1
X_2226_ \u_cpu.ctrl.o_ibus_adr\[18] _239_ vdd gnd INVX1
X_1917_ _551_ _27_ _29_ _695_ vdd gnd OAI21X1
X_1670_ _1004_ _1005_ _774_ vdd gnd NOR2X1
X_1250_ \u_cpu.decode.co_mem_word\ _496_ _448_ vdd gnd NAND2X1
XFILL97950x68550 gnd vdd FILL
X_2455_ _773_ i_clk_sys_ext_bF$buf10 \u_rf_if.read_buf0\[17] vdd gnd DFFPOSX1
X_2035_ _107_ _70_ _114_ _115_ _663_ vdd 
+ gnd
+ AOI22X1
X_1726_ mem_ibus_ack_bF$buf4 _1041_ _1042_ _755_ vdd gnd AOI21X1
X_1306_ _495_ _395_ _394_ vdd gnd NAND2X1
X_2264_ _400_ _403_ _1137_ _570_ vdd gnd AOI21X1
X_1955_ \u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20\[3] _56_ vdd gnd INVX1
X_1535_ _902_ _905_ vdd gnd INVX1
X_2493_ \u_mem_serial.bit_count\[1] _548_ _547_ vdd gnd NOR2X1
X_2073_ \u_cpu.bufreg.data\[14] _137_ vdd gnd INVX1
X_1764_ _325_ _285_ _1064_ _739_ vdd gnd AOI21X1
X_1344_ \u_cpu.state.cnt_r\[2] _434_ _356_ vdd gnd NAND2X1
X_2549_ _847_ i_clk_fast_bF$buf4 \u_mem_serial.shift_reg\[12] vdd gnd DFFPOSX1
X_2129_ _347_ _543__bF$buf1 _506_ _528_ _622_ vdd 
+ gnd
+ OAI22X1
X_1993_ _1051_ _83_ _81_ _673_ vdd gnd MUX2X1
X_1573_ _939_ _933_ _940_ vdd gnd NOR2X1
X_1153_ _1116_ o_mem_sync vdd gnd BUFX2
X_2358_ _697_ i_clk_fast_bF$buf0 \u_mem_serial.bit_count\[2] vdd gnd DFFPOSX1
X_1629_ _393__bF$buf4 _978_ _979_ _789_ vdd gnd OAI21X1
X_1209_ \u_cpu.bufreg2.i_bytecnt\[1] _489_ vdd gnd INVX1
X_1382_ _325_ _322_ _321_ _320_ vdd gnd OAI21X1
X_2167_ _198_ _200_ _616_ vdd gnd NAND2X1
X_1858_ _873__bF$buf5 _1137_ vdd gnd INVX1
X_1438_ _515_ _270_ _269_ vdd gnd NOR2X1
X_1191_ \u_mem_serial.shift_reg\[5] _506_ vdd gnd INVX1
X_2396_ _736_ i_clk_fast_bF$buf5 \u_rf_if.last_req_key\[6] vdd gnd DFFPOSX1
X_1667_ _1002_ _1003_ _775_ vdd gnd NOR2X1
X_1247_ _452_ _496_ _451_ vdd gnd OR2X2
X_1896_ i_clk_fast_bF$buf0 _13_ _1115_ vdd gnd NOR2X1
X_1476_ \u_rf_if.tx_state\[0] _322_ _269_ _856_ vdd gnd OAI21X1
X_1285_ _416_ _415_ vdd gnd INVX1
X_2299_ _650_ i_clk_sys_ext_bF$buf5 \u_cpu.bufreg.data\[18] vdd gnd DFFPOSX1
X_2511_ _812_ i_clk_sys_ext_bF$buf1 raddr[7] vdd gnd DFFPOSX1
X_1799_ _939_ _1086_ _1087_ _727_ vdd gnd OAI21X1
X_1379_ ren \u_rf_if.o_waddr\[3] _323_ vdd gnd NOR2X1
X_2320_ _668_ i_clk_sys_ext_bF$buf6 rf_wreg0_to_if[1] vdd gnd DFFPOSX1
X_1188_ _516_ _509_ _844_ vdd gnd NOR2X1
X_1820_ \u_mem_serial.shift_reg\[30] _1104_ vdd gnd INVX1
X_1400_ _303_ _302_ vdd gnd INVX1
XFILL97650x46950 gnd vdd FILL
X_2414_ _599_ i_clk_sys_ext_bF$buf10 \u_cpu.ctrl.o_ibus_adr\[23] vdd gnd DFFPOSX1
X_2223_ _236_ _237_ _873__bF$buf4 _595_ vdd gnd MUX2X1
X_1914_ _23_ _553_ _27_ vdd gnd NOR2X1
X_2452_ _770_ i_clk_sys_ext_bF$buf4 \u_rf_if.read_buf0\[20] vdd gnd DFFPOSX1
X_2032_ _108_ _109_ _112_ _113_ vdd gnd OAI21X1
X_1723_ \u_rf_if.issue_idx\[4] _1038_ _1040_ _756_ vdd gnd AOI21X1
X_1303_ _436_ _398_ _397_ vdd gnd NOR2X1
X_2508_ _612_ i_clk_fast_bF$buf0 \u_mem_serial.active_ibus\ vdd gnd DFFPOSX1
X_2261_ \u_cpu.ctrl.o_ibus_adr\[29] _253_ vdd gnd INVX1
X_1952_ _1043_ _54_ _51_ _685_ vdd gnd MUX2X1
X_1532_ _900_ _901_ _902_ vdd gnd NOR2X1
X_2317_ _729_ i_clk_sys_ext_bF$buf1 raddr[2] vdd gnd DFFPOSX1
X_2490_ _552_ _545_ _544_ vdd gnd NOR2X1
X_2070_ _134_ _135_ _426__bF$buf0 _648_ vdd gnd MUX2X1
X_1761_ _302_ _285_ i_rst_n_bF$buf2 _1063_ vdd gnd OAI21X1
X_1341_ \u_cpu.alu.cmp_r\ _360_ _361_ _359_ vdd gnd AOI21X1
X_2546_ _572_ i_clk_sys_ext_bF$buf5 \u_cpu.ctrl.o_ibus_adr\[29] vdd gnd DFFPOSX1
X_2126_ \u_mem_serial.state\[1] _536_ _1116_ _168_ vdd gnd OAI21X1
X_1817_ _1100_ _1101_ _559_ _1102_ vdd gnd MUX2X1
X_1990_ \u_mem_serial.shift_reg\[23] rf_read_reg1_to_if[4] mem_ibus_ack_bF$buf6 _82_ vdd gnd MUX2X1
X_1570_ _936_ _380_ _937_ vdd gnd NOR2X1
X_1150_ _1119_ o_rf_sync vdd gnd BUFX2
X_2355_ _579_ i_clk_sys_ext_bF$buf3 \u_cpu.ctrl.o_ibus_adr\[4] vdd gnd DFFPOSX1
X_1626_ _393__bF$buf3 _975_ _977_ _790_ vdd gnd OAI21X1
X_1206_ \u_cpu.bne_or_bge\ \u_cpu.decode.co_mem_word\ _493_ _492_ vdd gnd OAI21X1
X_2164_ _191_ _197_ _463_ _198_ vdd gnd OAI21X1
XFILL97950x54150 gnd vdd FILL
X_1855_ \u_cpu.decode.opcode\[0] _1135_ _1123_ _1136_ vdd gnd OAI21X1
X_1435_ _1119_ _271_ vdd gnd INVX1
X_2393_ _615_[2] i_clk_sys_ext_bF$buf13 \u_cpu.bufreg2.i_bytecnt\[1] vdd gnd DFFPOSX1
X_1664_ \u_rf_if.stream_active\ _999_ _1001_ _776_ vdd gnd AOI21X1
X_1244_ \u_cpu.bufreg2.dhi\[4] _458_ _455_ _454_ vdd gnd OAI21X1
X_2449_ _767_ i_clk_sys_ext_bF$buf4 \u_rf_if.read_buf0\[23] vdd gnd DFFPOSX1
X_2029_ \u_cpu.decode.opcode\[0] \u_cpu.decode.opcode\[2] \u_cpu.decode.opcode\[1] _110_ vdd gnd AOI21X1
X_1893_ \u_mem_serial.shift_reg\[2] mem_ibus_ack_bF$buf2 _12_ vdd gnd NAND2X1
X_1473_ _292_ _514_ _853_ vdd gnd OR2X2
X_2258_ \u_cpu.ctrl.o_ibus_adr\[30] _251_ vdd gnd INVX1
X_1949_ \u_mem_serial.shift_reg\[17] rf_read_reg0_to_if[3] mem_ibus_ack_bF$buf0 _53_ vdd gnd MUX2X1
X_1529_ \u_rf_if.stream_cnt\[3] _899_ vdd gnd INVX1
X_1282_ _470_ _469_ _418_ vdd gnd NOR2X1
X_2487_ \u_mem_serial.shift_reg\[10] _542__bF$buf2 _543__bF$buf1 _541_ vdd gnd NAND3X1
X_2067_ \u_cpu.bufreg.data\[17] _134_ vdd gnd INVX1
X_1758_ _314_ _285_ _1061_ _742_ vdd gnd AOI21X1
X_1338_ \u_cpu.bufreg.i_right_shift_op\ _365_ _363_ _362_ vdd gnd NAND3X1
X_2296_ _647_ i_clk_sys_ext_bF$buf5 \u_cpu.bufreg.data\[15] vdd gnd DFFPOSX1
X_1987_ _78_ _79_ _70_ _675_ vdd gnd MUX2X1
X_1567_ \u_rf_if.stream_cnt\[2] \u_rf_if.stream_cnt\[1] \u_rf_if.stream_cnt\[3] _934_ vdd gnd NAND3X1
X_1796_ _898_ _1085_ _1083_ _1084_ _728_ vdd 
+ gnd
+ AOI22X1
X_1376_ _333_ _332_ _327_ _326_ vdd gnd AOI21X1
X_1185_ \u_rf_if.tx_state\[3] \u_rf_if.tx_state\[4] _511_ vdd gnd NOR2X1
X_2199_ \u_cpu.bufreg2.cnt_next\[6] _177_ _223_ vdd gnd NOR2X1
X_2411_ _598_ i_clk_sys_ext_bF$buf10 \u_cpu.ctrl.o_ibus_adr\[22] vdd gnd DFFPOSX1
X_1699_ \u_rf_if.read_buf0\[27] _943__bF$buf2 \u_rf_if.read_buf0\[29] _926_ _1024_ vdd 
+ gnd
+ OAI22X1
X_1279_ \u_cpu.decode.opcode\[0] _422_ _421_ vdd gnd NOR2X1
X_2220_ \u_cpu.ctrl.o_ibus_adr\[21] _236_ vdd gnd INVX1
X_1911_ _549_ _20_ _25_ vdd gnd NOR2X1
X_1720_ \u_rf_if.issue_idx\[3] _1035_ _896_ _1039_ vdd gnd OAI21X1
X_1300_ _410_ _401_ _400_ vdd gnd OR2X2
X_2505_ _810_ i_clk_sys_ext_bF$buf2 \u_rf_if.stream_cnt\[0] vdd gnd DFFPOSX1
X_2314_ _663_ i_clk_sys_ext_bF$buf12 \u_cpu.immdec.gen_immdec_w_eq_1.imm30_25\[5] vdd gnd DFFPOSX1
X_2543_ \u_rf_if.rtrig0\ i_clk_sys_ext_bF$buf6 \u_rf_if.rtrig1\ vdd gnd DFFPOSX1
X_2123_ _506_ _543__bF$buf2 _1121_ _528_ _626_ vdd 
+ gnd
+ OAI22X1
XFILL97650x32550 gnd vdd FILL
X_1814_ _526_ _542__bF$buf4 _1099_ vdd gnd NAND2X1
X_2352_ _578_ i_clk_sys_ext_bF$buf9 \u_cpu.ctrl.o_ibus_adr\[3] vdd gnd DFFPOSX1
X_1623_ \u_rf_if.read_buf0\[1] _975_ vdd gnd INVX1
X_1203_ \u_cpu.decode.co_mem_word\ _495_ vdd gnd INVX2
X_2408_ _742_ i_clk_fast_bF$buf5 \u_rf_if.last_req_key\[0] vdd gnd DFFPOSX1
X_2161_ _178_ _194_ _195_ _196_ vdd gnd OAI21X1
X_1852_ \u_cpu.bne_or_bge\ _1132_ _1133_ vdd gnd NAND2X1
X_1432_ _274_ _281_ _273_ vdd gnd NAND2X1
X_2217_ _233_ _234_ _873__bF$buf0 _599_ vdd gnd MUX2X1
X_2390_ _587_ i_clk_sys_ext_bF$buf5 \u_cpu.ctrl.o_ibus_adr\[12] vdd gnd DFFPOSX1
XFILL97950x75750 gnd vdd FILL
X_1908_ _550_ _529_ _22_ _697_ vdd gnd OAI21X1
X_1661_ _393__bF$buf0 \u_rf_if.read_buf0\[14] \u_rf_if.read_buf0\[13] _943__bF$buf4 _1000_ vdd 
+ gnd
+ OAI22X1
X_1241_ \u_cpu.bufreg2.dhi\[4] _458_ _457_ vdd gnd NOR2X1
X_2446_ _764_ i_clk_sys_ext_bF$buf2 \u_rf_if.read_buf0\[26] vdd gnd DFFPOSX1
X_2026_ \u_cpu.immdec.gen_immdec_w_eq_1.imm30_25\[5] _107_ vdd gnd INVX1
X_1717_ _896_ _1036_ _1037_ vdd gnd NAND2X1
X_1890_ mem_ibus_ack_bF$buf1 \u_cpu.decode.opcode\[2] _11_ vdd gnd NOR2X1
X_1470_ _803_ _840_ _842_ vdd gnd NOR2X1
X_2255_ _248_ _873__bF$buf5 _249_ _575_ vdd gnd AOI21X1
X_1946_ mem_ibus_ack_bF$buf3 _50_ _48_ _51_ vdd gnd OAI21X1
X_1526_ _896_ _897_ vdd gnd INVX1
X_2484_ \u_mem_serial.shift_reg\[7] _542__bF$buf2 _543__bF$buf1 _539_ vdd gnd NAND3X1
X_2064_ _131_ _132_ _426__bF$buf0 _651_ vdd gnd MUX2X1
X_1755_ _1060_ _261_ _744_ vdd gnd AND2X2
X_1335_ \u_cpu.bne_or_bge\ _365_ vdd gnd INVX1
X_2293_ \u_cpu.state.cnt_r\[1] i_clk_sys_ext_bF$buf5 \u_cpu.state.cnt_r\[2] vdd gnd DFFPOSX1
X_1984_ _76_ _77_ _70_ _676_ vdd gnd MUX2X1
X_1564_ _918_ _931_ \u_rf_if.prefetch_active\ _932_ vdd gnd OAI21X1
X_2349_ _693_ i_clk_fast_bF$buf6 \u_mem_serial.shift_reg\[22] vdd gnd DFFPOSX1
X_1793_ \u_rf_if.issue_idx\[3] _933_ _1083_ vdd gnd NAND2X1
X_1373_ \u_rf_if.last_req_key\[4] _330_ _329_ vdd gnd NAND2X1
X_2578_ _721_ i_clk_fast_bF$buf4 \u_mem_serial.shift_reg\[1] vdd gnd DFFPOSX1
X_2158_ _459_ _192_ _463_ _193_ vdd gnd OAI21X1
X_1849_ _1128_ _1129_ _1130_ vdd gnd OR2X2
X_1429_ \u_rf_if.tx_state\[3] _512_ \u_rf_if.tx_state\[4] _275_ vdd gnd OAI21X1
X_1182_ _515_ _514_ vdd gnd INVX2
X_2387_ _569_ i_clk_sys_ext_bF$buf9 \u_cpu.ctrl.pc_plus_4_cy_r_w\ vdd gnd DFFPOSX1
X_1658_ \u_rf_if.read_buf0\[12] _943__bF$buf4 \u_rf_if.read_buf0\[14] _926_ _998_ vdd 
+ gnd
+ OAI22X1
X_1238_ _462_ _461_ _460_ vdd gnd NAND2X1
X_2196_ \u_mem_serial.shift_reg\[25] _870_ _221_ vdd gnd NOR2X1
X_1887_ mem_ibus_ack_bF$buf1 _365_ _9_ _705_ vdd gnd OAI21X1
X_1467_ \u_cpu.o_wdata0\ _805_ _833_ vdd gnd AND2X2
X_1696_ \u_rf_if.read_buf0\[28] _1022_ vdd gnd INVX1
X_1276_ _432_ _425_ _424_ vdd gnd NOR2X1
X_2502_ _610_ i_clk_fast_bF$buf2 \u_mem_serial.shift_reg\[10] vdd gnd DFFPOSX1
X_2099_ \u_cpu.bufreg.data\[31] _149_ vdd gnd INVX1
X_2311_ _660_ i_clk_sys_ext_bF$buf13 \u_cpu.bufreg.data\[28] vdd gnd DFFPOSX1
X_1599_ _795_ _889_ \u_rf_if.wdata0_next_phase\ _959_ vdd gnd OAI21X1
X_1179_ _519_ _518_ _517_ vdd gnd NOR2X1
X_2540_ _838_ i_clk_fast_bF$buf7 \u_rf_if.last_req_key\[9] vdd gnd DFFPOSX1
X_2120_ \u_mem_serial.shift_reg\[14] _165_ vdd gnd INVX1
X_1811_ \u_rf_if.rs2_stream_buf\[0] _947_ _936_ _1097_ vdd gnd OAI21X1
X_1620_ _899_ _970_ _973_ _807_ vdd gnd OAI21X1
X_1200_ \u_rf_if.rcnt\[0] _498_ vdd gnd INVX1
X_2405_ _594_ i_clk_sys_ext_bF$buf10 \u_cpu.ctrl.o_ibus_adr\[19] vdd gnd DFFPOSX1
X_2214_ \u_cpu.ctrl.o_ibus_adr\[24] _233_ vdd gnd INVX1
X_1905_ \u_mem_serial.bit_count\[2] _19_ _20_ vdd gnd NOR2X1
X_2443_ _761_ i_clk_sys_ext_bF$buf2 \u_rf_if.read_buf0\[29] vdd gnd DFFPOSX1
X_2023_ _100_ _51_ _105_ _665_ vdd gnd AOI21X1
X_1714_ \u_rf_if.issue_idx\[0] _1033_ _1034_ vdd gnd NAND2X1
X_2252_ \u_cpu.ctrl.o_ibus_adr\[1] _248_ vdd gnd INVX1
X_1943_ _47_ _48_ vdd gnd INVX1
X_1523_ \u_rf_if.prefetch_active\ _894_ _895_ vdd gnd NOR2X1
X_2308_ _657_ i_clk_sys_ext_bF$buf3 \u_cpu.bufreg.data\[25] vdd gnd DFFPOSX1
X_2481_ _817_ i_clk_sys_ext_bF$buf6 \u_rf_if.write_wait\[1] vdd gnd DFFPOSX1
X_2061_ \u_cpu.bufreg.data\[20] _131_ vdd gnd INVX1
X_1752_ _269_ _1058_ _745_ vdd gnd NOR2X1
X_1332_ _369_ _370_ _368_ vdd gnd NAND2X1
X_2537_ _622_ i_clk_fast_bF$buf1 \u_mem_serial.shift_reg\[6] vdd gnd DFFPOSX1
X_2117_ _385_ _149_ _163_ vdd gnd NOR2X1
X_2290_ \u_mem_serial.bit_count\[4] _551_ vdd gnd INVX1
X_1808_ \u_rf_if.rs2_stream_buf\[0] _1094_ vdd gnd INVX1
X_1981_ _74_ _75_ _70_ _677_ vdd gnd MUX2X1
X_1561_ _926_ _912_ _929_ _822_ vdd gnd OAI21X1
X_2346_ _691_ i_clk_sys_ext_bF$buf7 \u_cpu.branch_op\ vdd gnd DFFPOSX1
X_1617_ _971_ _972_ vdd gnd INVX1
X_1790_ _305_ _932_ _1081_ vdd gnd NAND2X1
X_1370_ \u_rf_if.last_req_key\[6] _334_ _332_ vdd gnd NAND2X1
X_2575_ _642_ i_clk_sys_ext_bF$buf11 \u_cpu.bufreg.data\[10] vdd gnd DFFPOSX1
X_2155_ \u_cpu.bufreg2.dhi\[3] _190_ vdd gnd INVX1
X_1846_ _370_ _369_ _1126_ _1127_ vdd gnd AOI21X1
X_1426_ i_rst_n_bF$buf3 _277_ vdd gnd INVX1
X_2384_ _715_ i_clk_sys_ext_bF$buf5 \u_cpu.state.cnt_r\[0] vdd gnd DFFPOSX1
X_1655_ \u_rf_if.read_buf0\[11] _943__bF$buf4 \u_rf_if.read_buf0\[13] _926_ _996_ vdd 
+ gnd
+ OAI22X1
X_1235_ _464_ _463_ vdd gnd INVX4
X_2193_ _142_ _218_ _559_ _219_ vdd gnd MUX2X1
X_1884_ \u_mem_serial.shift_reg\[13] mem_ibus_ack_bF$buf3 _8_ vdd gnd NAND2X1
X_1464_ _800_ _802_ \u_rf_if.tx_state\[1] _803_ vdd gnd AOI21X1
X_2249_ _1143_ _1101_ _873__bF$buf3 _579_ vdd gnd MUX2X1
X_1693_ \u_rf_if.read_buf0\[27] _1020_ vdd gnd INVX1
X_1273_ \u_cpu.bufreg.i_right_shift_op\ _452_ _428_ _427_ vdd gnd OAI21X1
X_2478_ _731_ i_clk_sys_ext_bF$buf1 raddr[0] vdd gnd DFFPOSX1
X_2058_ _128_ _129_ _426__bF$buf4 _654_ vdd gnd MUX2X1
X_1749_ i_rst_n_bF$buf0 _282_ _1057_ vdd gnd NAND2X1
X_1329_ _372_ _371_ vdd gnd INVX1
X_2287_ _561_ _555_ _560_ _554_ vdd gnd OAI21X1
X_1978_ _72_ _73_ _70_ _678_ vdd gnd MUX2X1
X_1558_ \u_rf_if.read_buf0\[30] _393__bF$buf2 _927_ vdd gnd NAND2X1
X_2096_ _466_ _425_ _146_ _147_ vdd gnd OAI21X1
X_1787_ _313_ _820_ _1078_ _730_ vdd gnd OAI21X1
X_1367_ ren raddr[6] _342_ _336_ _335_ vdd 
+ gnd
+ AOI22X1
X_1596_ _956_ _954_ _957_ vdd gnd OR2X2
X_1176_ _520_ _526_ _543__bF$buf4 _845_ vdd gnd MUX2X1
X_2402_ _739_ i_clk_fast_bF$buf5 \u_rf_if.last_req_key\[3] vdd gnd DFFPOSX1
X_2211_ _231_ _230_ _873__bF$buf1 _602_ vdd gnd MUX2X1
X_1902_ _16_ _17_ _542__bF$buf0 _18_ vdd gnd OAI21X1
X_1499_ _875_ _438_ \u_cpu.decode.opcode\[2] _876_ vdd gnd AOI21X1
X_2440_ _759_ i_clk_sys_ext_bF$buf1 \u_rf_if.issue_idx\[1] vdd gnd DFFPOSX1
X_2020_ rf_read_reg1_to_if[0] \u_cpu.branch_op\ _102_ _103_ vdd gnd OAI21X1
X_1711_ _1030_ _1031_ _759_ vdd gnd AND2X2
XFILL97950x7350 gnd vdd FILL
X_1940_ \u_mem_serial.shift_reg\[30] mem_ibus_ack_bF$buf5 _46_ vdd gnd NAND2X1
X_1520_ _888_ _891_ _892_ _826_ vdd gnd AOI21X1
X_2305_ \u_cpu.state.cnt_r\[0] i_clk_sys_ext_bF$buf5 \u_cpu.state.cnt_r\[1] vdd gnd DFFPOSX1
X_2534_ _571_ i_clk_sys_ext_bF$buf5 \u_cpu.ctrl.o_ibus_adr\[28] vdd gnd DFFPOSX1
X_2114_ \u_cpu.bufreg.data\[2] _490_ _161_ _162_ vdd gnd AOI21X1
X_1805_ _939_ _1090_ _1091_ _725_ vdd gnd OAI21X1
X_2343_ _688_ i_clk_sys_ext_bF$buf9 \u_cpu.bufreg.i_sh_signed\ vdd gnd DFFPOSX1
X_1614_ \u_rf_if.stream_cnt\[2] _969_ vdd gnd INVX1
X_2572_ _640_ i_clk_sys_ext_bF$buf3 \u_cpu.bufreg.data\[8] vdd gnd DFFPOSX1
X_2152_ _184_ _463_ _187_ _188_ vdd gnd OAI21X1
XCLKBUF1_insert40 i_clk_sys_ext i_clk_sys_ext_bF$buf8 vdd gnd CLKBUF1
XCLKBUF1_insert41 i_clk_sys_ext i_clk_sys_ext_bF$buf7 vdd gnd CLKBUF1
XCLKBUF1_insert42 i_clk_sys_ext i_clk_sys_ext_bF$buf6 vdd gnd CLKBUF1
XCLKBUF1_insert43 i_clk_sys_ext i_clk_sys_ext_bF$buf5 vdd gnd CLKBUF1
XCLKBUF1_insert44 i_clk_sys_ext i_clk_sys_ext_bF$buf4 vdd gnd CLKBUF1
XCLKBUF1_insert45 i_clk_sys_ext i_clk_sys_ext_bF$buf3 vdd gnd CLKBUF1
XCLKBUF1_insert46 i_clk_sys_ext i_clk_sys_ext_bF$buf2 vdd gnd CLKBUF1
XCLKBUF1_insert47 i_clk_sys_ext i_clk_sys_ext_bF$buf1 vdd gnd CLKBUF1
XCLKBUF1_insert48 i_clk_sys_ext i_clk_sys_ext_bF$buf0 vdd gnd CLKBUF1
XCLKBUF1_insert49 i_clk_fast i_clk_fast_bF$buf7 vdd gnd CLKBUF1
X_1843_ \u_cpu.alu.cmp_r\ _1124_ vdd gnd INVX1
XFILL97950x82950 gnd vdd FILL
X_1423_ \u_rf_if.tx_state\[1] _282_ _281_ _280_ vdd gnd NAND3X1
X_2208_ _229_ _525_ _543__bF$buf4 _603_ vdd gnd MUX2X1
X_2381_ _585_ i_clk_sys_ext_bF$buf13 \u_cpu.ctrl.o_ibus_adr\[10] vdd gnd DFFPOSX1
X_1652_ \u_rf_if.read_buf0\[10] _943__bF$buf3 \u_rf_if.read_buf0\[12] _926_ _994_ vdd 
+ gnd
+ OAI22X1
X_1232_ _490_ _466_ vdd gnd INVX1
X_2437_ \u_rf_if.i_stream_rs2_en\ i_clk_sys_ext_bF$buf6 current_stream_rs2_hint vdd gnd DFFPOSX1
X_2017_ rf_read_reg0_to_if[4] _100_ vdd gnd INVX1
X_2190_ \u_mem_serial.shift_reg\[25] _543__bF$buf5 _216_ vdd gnd NOR2X1
X_1708_ _1028_ _920_ _1029_ vdd gnd NOR2X1
X_1881_ _4_ _5_ _559_ _6_ vdd gnd MUX2X1
X_1461_ _717_ \u_rf_if.i_stream_rs2_en\ _799_ _800_ vdd gnd OAI21X1
X_2246_ _213_ _5_ _873__bF$buf3 _582_ vdd gnd MUX2X1
X_1937_ _508_ _1098_ _44_ vdd gnd NOR2X1
X_1517_ _719_ _889_ _890_ vdd gnd NOR2X1
X_1690_ \u_rf_if.read_buf0\[26] _1018_ vdd gnd INVX1
X_1270_ _491_ _431_ _430_ vdd gnd NAND2X1
X_2475_ _788_ i_clk_sys_ext_bF$buf8 \u_rf_if.read_buf0\[2] vdd gnd DFFPOSX1
X_2055_ \u_cpu.bufreg.data\[23] _128_ vdd gnd INVX1
X_1746_ \u_rf_if.o_waddr\[2] _865_ _1055_ vdd gnd NOR2X1
X_1326_ \u_cpu.branch_op\ _383_ _377_ _374_ vdd gnd OAI21X1
X_2284_ i_clk_sys_ext_bF$buf0 _557_ vdd gnd INVX1
X_1975_ _68_ _71_ _70_ _679_ vdd gnd MUX2X1
X_1555_ _919_ _923_ _924_ vdd gnd NAND2X1
X_2093_ _523_ _144_ _426__bF$buf1 _634_ vdd gnd MUX2X1
X_1784_ \u_rf_if.stream_cnt\[2] \u_rf_if.stream_cnt\[1] _939_ _1076_ vdd gnd OAI21X1
X_1364_ \u_rf_if.last_req_key\[7] _340_ _338_ vdd gnd NOR2X1
X_2569_ _637_ i_clk_sys_ext_bF$buf3 \u_cpu.bufreg.data\[5] vdd gnd DFFPOSX1
X_2149_ _184_ _459_ _185_ vdd gnd NOR2X1
X_1593_ \u_rf_if.rcnt\[0] \u_rf_if.rcnt\[1] _954_ vdd gnd NOR2X1
X_1173_ \u_cpu.ctrl.o_ibus_adr\[3] _522_ vdd gnd INVX1
X_2378_ \u_cpu.state.cnt_r\[2] i_clk_sys_ext_bF$buf5 \u_cpu.state.cnt_r\[3] vdd gnd DFFPOSX1
X_1649_ \u_rf_if.read_buf0\[11] _992_ vdd gnd INVX1
X_1229_ \u_cpu.decode.opcode\[2] _469_ vdd gnd INVX2
X_2187_ _143_ _213_ _559_ _214_ vdd gnd MUX2X1
X_1878_ _2_ _542__bF$buf4 _3_ vdd gnd NAND2X1
X_1458_ _795_ \u_rf_if.wdata0_next_phase\ _797_ vdd gnd AND2X2
X_1687_ \u_rf_if.read_buf0\[25] _1016_ vdd gnd INVX1
X_1267_ \u_cpu.state.cnt_r\[0] _434_ _433_ vdd gnd NAND2X1
X_1496_ _473_ _466_ _873_ vdd gnd NOR2X1
X_2302_ _653_ i_clk_sys_ext_bF$buf13 \u_cpu.bufreg.data\[21] vdd gnd DFFPOSX1
X_2531_ _832_ i_clk_sys_ext_bF$buf8 \u_rf_if.o_waddr\[3] vdd gnd DFFPOSX1
X_2111_ _153_ _158_ _159_ vdd gnd OR2X2
X_1802_ _939_ _1088_ _1089_ _726_ vdd gnd OAI21X1
X_1399_ ren \u_rf_if.o_waddr\[2] _304_ _303_ vdd gnd OAI21X1
X_2340_ _686_ i_clk_sys_ext_bF$buf0 rf_read_reg0_to_if[2] vdd gnd DFFPOSX1
X_1611_ _393__bF$buf3 _901_ _967_ _810_ vdd gnd AOI21X1
X_1840_ _1121_ _543__bF$buf2 _502_ _528_ _714_ vdd 
+ gnd
+ OAI22X1
X_1420_ _345_ _284_ _283_ _838_ vdd gnd AOI21X1
X_2205_ \u_cpu.ctrl.o_ibus_adr\[2] _227_ vdd gnd INVX1
X_2434_ _605_ i_clk_sys_ext_bF$buf13 \u_cpu.bufreg2.cnt_next\[6] vdd gnd DFFPOSX1
X_2014_ _87_ _97_ _98_ _667_ vdd gnd OAI21X1
X_1705_ _920_ _933_ _1027_ vdd gnd NAND2X1
X_2243_ _246_ _247_ _873__bF$buf2 _585_ vdd gnd MUX2X1
X_1934_ _347_ _470_ mem_ibus_ack_bF$buf1 _691_ vdd gnd MUX2X1
X_1514_ mem_ibus_ack_bF$buf7 _886_ _887_ _827_ vdd gnd AOI21X1
X_2472_ _786_ i_clk_sys_ext_bF$buf8 \u_rf_if.read_buf0\[4] vdd gnd DFFPOSX1
X_2052_ _125_ _126_ _426__bF$buf3 _657_ vdd gnd MUX2X1
X_1743_ _861_ _862_ _1053_ _749_ vdd gnd AOI21X1
X_1323_ _381_ _379_ _378_ _377_ vdd gnd OAI21X1
X_2528_ _620_ i_clk_sys_ext_bF$buf13 \u_cpu.bufreg2.dhi\[6] vdd gnd DFFPOSX1
X_2108_ _155_ _154_ _156_ vdd gnd OR2X2
X_2281_ \u_mem_serial.state\[0] \u_mem_serial.state\[1] _560_ vdd gnd NOR2X1
X_1972_ _406_ _11_ _69_ vdd gnd NAND2X1
X_1552_ \u_rf_if.issue_idx\[1] _920_ _921_ vdd gnd NOR2X1
X_2337_ _684_ i_clk_sys_ext_bF$buf0 \u_cpu.csr_imm\ vdd gnd DFFPOSX1
X_2090_ _1142_ _1100_ _426__bF$buf3 _636_ vdd gnd MUX2X1
X_1608_ \u_rf_if.shift_rx\[1] _965_ i_rst_n_bF$buf0 _966_ vdd gnd OAI21X1
X_1781_ _900_ _937_ _1074_ vdd gnd NAND2X1
X_1361_ _344_ rf_wreg0_to_if[3] _341_ vdd gnd AND2X2
X_2566_ _635_ i_clk_sys_ext_bF$buf9 \u_cpu.bufreg.data\[3] vdd gnd DFFPOSX1
X_2146_ _182_ _183_ vdd gnd INVX1
X_1837_ _487_ _481_ _953_ _1114_ vdd gnd OAI21X1
X_1417_ _440_ _286_ _285_ vdd gnd NAND2X1
X_1590_ _948_ _952_ _816_ vdd gnd NOR2X1
X_1170_ \u_mem_serial.shift_reg\[18] _525_ vdd gnd INVX1
X_2375_ _712_ i_clk_sys_ext_bF$buf7 \u_cpu.state.init_done\ vdd gnd DFFPOSX1
X_1646_ _989_ _925__bF$buf3 _990_ _783_ vdd gnd AOI21X1
X_1226_ \u_cpu.bufreg.i_right_shift_op\ _473_ _472_ vdd gnd NAND2X1
X_2184_ _543__bF$buf4 _210_ _211_ _609_ vdd gnd AOI21X1
X_1875_ _870_ _1149_ _1120_ _508_ _708_ vdd 
+ gnd
+ AOI22X1
X_1455_ \u_rf_if.o_waddr\[2] \u_rf_if.o_waddr\[1] _794_ vdd gnd NOR2X1
X_1684_ _1013_ _925__bF$buf1 _1014_ _769_ vdd gnd AOI21X1
X_1264_ _437_ _436_ vdd gnd INVX1
X_2469_ _783_ i_clk_sys_ext_bF$buf8 \u_rf_if.read_buf0\[7] vdd gnd DFFPOSX1
X_2049_ \u_cpu.bufreg.data\[26] _125_ vdd gnd INVX1
X_1493_ \u_mem_serial.shift_reg\[26] _870_ _871_ vdd gnd NOR2X1
X_2278_ \u_mem_serial.shift_reg\[11] _563_ vdd gnd INVX1
X_1969_ _66_ _51_ _67_ vdd gnd NOR2X1
X_1549_ \u_rf_if.issue_idx\[4] \u_rf_if.issue_idx\[5] _918_ vdd gnd NOR2X1
X_2087_ _143_ _4_ _426__bF$buf3 _639_ vdd gnd MUX2X1
X_1778_ _498_ _955_ _792_ _1072_ vdd gnd OAI21X1
X_1358_ ren _344_ vdd gnd INVX2
X_1587_ \u_rf_if.rs2_stream_buf\[1] _949_ _950_ vdd gnd NAND2X1
X_1167_ \u_mem_serial.shift_reg\[9] _527_ vdd gnd INVX1
X_1396_ _315_ _310_ _314_ _307_ _306_ vdd 
+ gnd
+ OAI22X1
X_2202_ \u_mem_serial.shift_reg\[16] _542__bF$buf1 _1105_ \u_cpu.ctrl.o_ibus_adr\[1] _225_ vdd 
+ gnd
+ AOI22X1
X_2431_ _604_ i_clk_fast_bF$buf6 \u_mem_serial.shift_reg\[17] vdd gnd DFFPOSX1
X_2011_ _89_ _95_ _96_ _668_ vdd gnd OAI21X1
X_1702_ _1022_ _976_ _1025_ _927_ _762_ vdd 
+ gnd
+ AOI22X1
X_1299_ _402_ _403_ _401_ vdd gnd NAND2X1
X_2240_ \u_cpu.ctrl.o_ibus_adr\[11] _246_ vdd gnd INVX1
X_1931_ _560_ _556_ _41_ vdd gnd NAND2X1
X_1511_ mem_ibus_ack_bF$buf7 _884_ _885_ _828_ vdd gnd AOI21X1
X_1740_ mem_ibus_ack_bF$buf4 \u_rf_if.rreg1_latched\[2] _1052_ vdd gnd NOR2X1
X_1320_ \u_rf_if.i_stream_rs2_en\ _380_ vdd gnd INVX1
X_2525_ _619_ i_clk_sys_ext_bF$buf11 \u_cpu.bufreg2.dhi\[5] vdd gnd DFFPOSX1
X_2105_ _469_ _152_ _413_ _153_ vdd gnd NAND3X1
X_2334_ _681_ i_clk_sys_ext_bF$buf7 \u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20\[1] vdd gnd DFFPOSX1
X_1605_ _939_ _961_ _963_ _812_ vdd gnd OAI21X1
X_2563_ _633_ i_clk_sys_ext_bF$buf13 \u_cpu.bufreg.data\[0] vdd gnd DFFPOSX1
X_2143_ _485_ _175_ _464_ _180_ vdd gnd NAND3X1
X_1834_ \u_mem_serial.shift_reg\[28] _870_ _1112_ vdd gnd NOR2X1
X_1414_ _295_ _289_ _288_ vdd gnd NOR2X1
X_2372_ _709_ i_clk_fast_bF$buf0 \u_mem_serial.bit_count\[0] vdd gnd DFFPOSX1
X_1643_ \u_rf_if.stream_active\ _986_ _988_ _784_ vdd gnd AOI21X1
X_1223_ \u_cpu.state.cnt_r\[3] _476_ _475_ vdd gnd NOR2X1
XFILL97650x68550 gnd vdd FILL
X_2428_ _753_ i_clk_sys_ext_bF$buf12 \u_rf_if.rreg0_latched\[2] vdd gnd DFFPOSX1
X_2008_ _89_ _93_ _94_ _669_ vdd gnd OAI21X1
X_2181_ _527_ _528_ _209_ _610_ vdd gnd OAI21X1
X_1872_ _562_ _556_ _552_ _1148_ vdd gnd OAI21X1
X_1452_ _719_ _791_ vdd gnd INVX1
X_2237_ _243_ _244_ _873__bF$buf0 _588_ vdd gnd MUX2X1
X_1928_ _37_ _38_ _559_ _39_ vdd gnd MUX2X1
X_1508_ _543__bF$buf5 _882_ _883_ _829_ vdd gnd AOI21X1
X_1681_ _1011_ _925__bF$buf1 _1012_ _770_ vdd gnd AOI21X1
X_1261_ _516_ _439_ _841_ vdd gnd NOR2X1
X_2466_ _782_ i_clk_sys_ext_bF$buf8 \u_rf_if.read_buf0\[8] vdd gnd DFFPOSX1
X_2046_ _123_ _122_ _426__bF$buf4 _660_ vdd gnd MUX2X1
X_1737_ mem_ibus_ack_bF$buf2 \u_rf_if.rreg1_latched\[1] _1050_ vdd gnd NOR2X1
X_1317_ _386_ _385_ _384_ _383_ vdd gnd OAI21X1
X_1490_ _867_ _868_ _869_ vdd gnd NOR2X1
X_2275_ _170_ _259_ vdd gnd INVX1
X_1966_ _62_ _51_ _64_ _681_ vdd gnd AOI21X1
X_1546_ \u_rf_if.issue_idx\[3] \u_rf_if.issue_idx\[2] _915_ vdd gnd NOR2X1
X_2084_ _141_ _142_ _426__bF$buf2 _641_ vdd gnd MUX2X1
X_1775_ _1069_ _285_ _1070_ _734_ vdd gnd AOI21X1
X_1355_ _553_ _544_ \u_mem_serial.shift_reg\[7] _346_ vdd gnd OAI21X1
X_1584_ _946_ _923_ _907_ _947_ vdd gnd OAI21X1
X_1164_ _545_ _542__bF$buf2 _529_ _528_ vdd gnd NAND3X1
X_2369_ _707_ i_clk_fast_bF$buf3 \u_mem_serial.shift_reg\[23] vdd gnd DFFPOSX1
X_1393_ _344_ raddr[0] _309_ vdd gnd OR2X2
X_2178_ _1147_ _532_ _612_ vdd gnd NAND2X1
X_1869_ \u_mem_serial.bit_count\[0] _553_ _1146_ vdd gnd NAND2X1
X_1449_ \u_rf_if.wdata0_next\[0] _717_ vdd gnd INVX1
X_1678_ _1009_ _1010_ _771_ vdd gnd NOR2X1
X_1258_ _498_ _441_ \u_rf_if.rtrig0\ vdd gnd NOR2X1
X_1487_ _865_ \u_rf_if.o_waddr\[2] _866_ vdd gnd AND2X2
X_1296_ _407_ _405_ \u_cpu.ctrl.pc\ _404_ vdd gnd OAI21X1
X_2522_ _825_ i_clk_sys_ext_bF$buf1 \u_rf_if.issue_idx\[5] vdd gnd DFFPOSX1
X_2102_ \u_cpu.decode.opcode\[1] _450_ \u_cpu.branch_op\ _150_ vdd gnd OAI21X1
X_2331_ _851_ i_clk_fast_bF$buf4 \u_mem_serial.shift_reg\[11] vdd gnd DFFPOSX1
X_1602_ \u_rf_if.rreg0_latched\[3] _960_ _933_ _961_ vdd gnd NAND3X1
X_1199_ _507_ _499_ \u_rf_if.i_stream_rs2_en\ vdd gnd NAND2X1
X_2560_ _629_ i_clk_sys_ext_bF$buf9 \u_cpu.bufreg.c_r\ vdd gnd DFFPOSX1
X_2140_ _473_ _176_ _178_ vdd gnd NOR2X1
X_1831_ _1110_ _483_ _615_[1] vdd gnd NOR2X1
X_1411_ \u_rf_if.last_req_key\[5] _292_ _291_ vdd gnd NAND2X1
X_1640_ _393__bF$buf4 \u_rf_if.read_buf0\[6] \u_rf_if.read_buf0\[5] _943__bF$buf1 _987_ vdd 
+ gnd
+ OAI22X1
X_1220_ _479_ _478_ vdd gnd INVX1
X_2425_ _750_ i_clk_sys_ext_bF$buf12 \u_rf_if.rreg1_latched\[2] vdd gnd DFFPOSX1
X_2005_ _89_ _91_ _92_ _670_ vdd gnd OAI21X1
X_2234_ \u_cpu.ctrl.o_ibus_adr\[14] _243_ vdd gnd INVX1
X_1925_ _1140_ _542__bF$buf3 _36_ vdd gnd NAND2X1
X_1505_ _881_ _518_ \u_rf_if.rtrig0\ _830_ vdd gnd MUX2X1
X_2463_ _780_ i_clk_sys_ext_bF$buf8 \u_rf_if.read_buf0\[10] vdd gnd DFFPOSX1
X_2043_ _118_ _89_ _121_ _661_ vdd gnd OAI21X1
X_1734_ mem_ibus_ack_bF$buf4 \u_rf_if.rreg1_latched\[0] _1048_ vdd gnd NOR2X1
X_1314_ \u_cpu.bufreg2.i_op_b_sel\ _386_ vdd gnd INVX1
X_2519_ _617_ i_clk_sys_ext_bF$buf11 \u_cpu.bufreg2.dhi\[3] vdd gnd DFFPOSX1
X_2272_ \u_cpu.alu.cmp_r\ _473_ _258_ vdd gnd NAND2X1
X_1963_ \u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20\[1] _62_ vdd gnd INVX1
X_1543_ _910_ _911_ \u_rf_if.shift_rx\[0] _912_ vdd gnd OAI21X1
X_2328_ _676_ i_clk_sys_ext_bF$buf0 \u_cpu.immdec.gen_immdec_w_eq_1.imm30_25\[1] vdd gnd DFFPOSX1
X_2081_ \u_cpu.bufreg.data\[10] _141_ vdd gnd INVX1
X_1772_ _340_ _284_ _1068_ _735_ vdd gnd AOI21X1
X_1352_ _470_ _349_ _357_ _348_ vdd gnd OAI21X1
X_2557_ _575_ i_clk_sys_ext_bF$buf9 \u_cpu.ctrl.pc\ vdd gnd DFFPOSX1
X_2137_ _435_ _429_ _175_ vdd gnd NOR2X1
X_1828_ \u_cpu.state.cnt_r\[3] \u_cpu.state.o_cnt\[2] _1109_ vdd gnd NOR2X1
XFILL97650x54150 gnd vdd FILL
X_1408_ rf_wreg0_to_if[1] _294_ vdd gnd INVX1
X_1581_ \u_rf_if.write_wait\[0] \u_rf_if.write_wait\[1] _945_ vdd gnd NAND2X1
X_1161_ \u_mem_serial.shift_reg\[13] _531_ vdd gnd INVX1
X_2366_ _537_ _536_ vdd gnd INVX1
X_1637_ _393__bF$buf4 \u_rf_if.read_buf0\[5] \u_rf_if.read_buf0\[4] _943__bF$buf1 _985_ vdd 
+ gnd
+ OAI22X1
X_1217_ _489_ _482_ _481_ vdd gnd NOR2X1
X_1390_ ren _313_ _312_ vdd gnd NAND2X1
X_2175_ _204_ _207_ _614_ vdd gnd NAND2X1
X_1866_ _1142_ _1143_ _559_ _1144_ vdd gnd MUX2X1
X_1446_ _265_ _512_ _261_ vdd gnd NAND2X1
X_1675_ \u_rf_if.stream_active\ _1006_ _1008_ _772_ vdd gnd AOI21X1
X_1255_ _444_ _443_ vdd gnd INVX1
X_1484_ _861_ _862_ _863_ vdd gnd NOR2X1
X_2269_ _252_ _873__bF$buf2 _256_ _255_ _568_ vdd 
+ gnd
+ OAI22X1
X_1293_ _450_ _423_ _408_ _417_ _407_ vdd 
+ gnd
+ OAI22X1
X_2498_ _609_ i_clk_fast_bF$buf6 \u_mem_serial.shift_reg\[16] vdd gnd DFFPOSX1
X_2078_ _138_ _139_ _426__bF$buf2 _644_ vdd gnd MUX2X1
X_1769_ \u_rf_if.last_req_key\[6] _284_ i_rst_n_bF$buf1 _1067_ vdd gnd OAI21X1
X_1349_ _356_ _353_ _351_ vdd gnd AND2X2
X_1998_ _1047_ _81_ _86_ _671_ vdd gnd AOI21X1
X_1578_ _393__bF$buf2 _924_ _943_ vdd gnd NAND2X1
X_1158_ _534_ _536_ _533_ vdd gnd NOR2X1
X_1387_ \u_rf_if.last_req_key\[1] _315_ vdd gnd INVX1
X_1196_ \u_mem_serial.shift_reg\[1] _502_ _501_ vdd gnd NAND2X1
XBUFX2_insert10 _943_ _943__bF$buf0 vdd gnd BUFX2
XBUFX2_insert11 _426_ _426__bF$buf4 vdd gnd BUFX2
XBUFX2_insert12 _426_ _426__bF$buf3 vdd gnd BUFX2
XBUFX2_insert13 _426_ _426__bF$buf2 vdd gnd BUFX2
XBUFX2_insert14 _426_ _426__bF$buf1 vdd gnd BUFX2
XBUFX2_insert15 _426_ _426__bF$buf0 vdd gnd BUFX2
XBUFX2_insert16 i_rst_n i_rst_n_bF$buf3 vdd gnd BUFX2
XBUFX2_insert17 i_rst_n i_rst_n_bF$buf2 vdd gnd BUFX2
XBUFX2_insert18 i_rst_n i_rst_n_bF$buf1 vdd gnd BUFX2
XBUFX2_insert19 i_rst_n i_rst_n_bF$buf0 vdd gnd BUFX2
X_2422_ _748_ i_clk_sys_ext_bF$buf1 \u_rf_if.o_waddr\[1] vdd gnd DFFPOSX1
X_2002_ _508_ \u_cpu.immdec.gen_immdec_w_eq_1.imm11_7\[4] _90_ vdd gnd AND2X2
X_2231_ _240_ _241_ _873__bF$buf0 _591_ vdd gnd MUX2X1
X_1922_ _27_ _34_ vdd gnd INVX1
X_1502_ _877_ _878_ _879_ vdd gnd AND2X2
X_2460_ _777_ i_clk_sys_ext_bF$buf4 \u_rf_if.read_buf0\[13] vdd gnd DFFPOSX1
X_2040_ _119_ _81_ _120_ vdd gnd NOR2X1
X_1731_ mem_ibus_ack_bF$buf7 \u_rf_if.rreg0_latched\[2] _1046_ vdd gnd NOR2X1
X_1311_ \u_cpu.alu.add_cy_r\ _389_ vdd gnd INVX1
X_2516_ _822_ i_clk_sys_ext_bF$buf2 \u_rf_if.read_buf0\[30] vdd gnd DFFPOSX1
X_1960_ mem_ibus_ack_bF$buf3 _56_ _8_ _60_ vdd gnd OAI21X1
X_1540_ _907_ _909_ _904_ _898_ _823_ vdd 
+ gnd
+ AOI22X1
X_2325_ _673_ i_clk_sys_ext_bF$buf12 rf_read_reg1_to_if[2] vdd gnd DFFPOSX1
X_2554_ _574_ i_clk_sys_ext_bF$buf11 \u_cpu.ctrl.o_ibus_adr\[27] vdd gnd DFFPOSX1
X_2134_ _488_ _432_ _172_ vdd gnd NOR2X1
X_1825_ _1107_ _543__bF$buf2 _504_ _528_ _721_ vdd 
+ gnd
+ OAI22X1
X_1405_ \u_rf_if.last_req_key\[1] _311_ \u_rf_if.last_req_key\[0] _308_ _297_ vdd 
+ gnd
+ OAI22X1
X_2363_ _836_ i_clk_fast_bF$buf7 \u_rf_if.tx_state\[4] vdd gnd DFFPOSX1
X_1634_ _393__bF$buf4 \u_rf_if.read_buf0\[4] \u_rf_if.read_buf0\[3] _943__bF$buf1 _983_ vdd 
+ gnd
+ OAI22X1
X_1214_ _485_ _484_ vdd gnd INVX1
X_2419_ _601_ i_clk_sys_ext_bF$buf5 \u_cpu.ctrl.o_ibus_adr\[25] vdd gnd DFFPOSX1
X_2172_ _202_ _463_ _205_ vdd gnd NOR2X1
X_1863_ _1098_ _542__bF$buf4 _1141_ vdd gnd NAND2X1
X_1443_ \u_rf_if.tx_state\[2] _514_ \u_rf_if.tx_state\[3] _264_ vdd gnd OAI21X1
X_2228_ \u_cpu.ctrl.o_ibus_adr\[17] _240_ vdd gnd INVX1
X_1919_ _30_ _28_ _31_ vdd gnd NAND2X1
X_1672_ _393__bF$buf1 \u_rf_if.read_buf0\[18] \u_rf_if.read_buf0\[17] _943__bF$buf0 _1007_ vdd 
+ gnd
+ OAI22X1
X_1252_ _479_ _447_ _451_ _468_ _446_ vdd 
+ gnd
+ AOI22X1
X_2457_ _775_ i_clk_sys_ext_bF$buf4 \u_rf_if.read_buf0\[15] vdd gnd DFFPOSX1
X_2037_ \u_mem_serial.shift_reg\[24] _117_ vdd gnd INVX1
X_1728_ mem_ibus_ack_bF$buf4 \u_rf_if.rreg0_latched\[1] _1044_ vdd gnd NOR2X1
X_1308_ \u_rf_if.read_buf0\[0] _392_ vdd gnd INVX1
X_1481_ _860_ _262_ _271_ _1117_ vdd gnd AOI21X1
X_2266_ _355_ _254_ _1137_ _569_ vdd gnd AOI21X1
X_1957_ _57_ _51_ _58_ vdd gnd NOR2X1
X_1537_ _906_ _905_ \u_rf_if.stream_active\ _907_ vdd gnd OAI21X1
X_1290_ _413_ _411_ _424_ _436_ _410_ vdd 
+ gnd
+ AOI22X1
X_2495_ _630_ i_clk_sys_ext_bF$buf13 \u_cpu.state.i_ctrl_misalign\ vdd gnd DFFPOSX1
X_2075_ \u_cpu.bufreg.data\[13] _138_ vdd gnd INVX1
X_1766_ _330_ _284_ _1065_ _738_ vdd gnd AOI21X1
X_1346_ \u_cpu.ctrl.pc\ \u_cpu.ctrl.pc_plus_4_cy_r_w\ _354_ vdd gnd OR2X2
X_1995_ _1049_ _84_ _81_ _672_ vdd gnd MUX2X1
X_1575_ _930_ \u_rf_if.issue_idx\[4] \u_rf_if.issue_idx\[5] _941_ vdd gnd AOI21X1
X_1155_ _0_ o_mem_mosi vdd gnd BUFX2
X_1384_ _322_ _325_ _319_ _318_ vdd gnd AOI21X1
X_2169_ \u_cpu.bufreg.i_shamt\[1] _202_ vdd gnd INVX1
X_1193_ \u_mem_serial.shift_reg\[0] _504_ vdd gnd INVX1
X_2398_ _737_ i_clk_fast_bF$buf5 \u_rf_if.last_req_key\[5] vdd gnd DFFPOSX1
X_1669_ \u_rf_if.read_buf0\[16] _943__bF$buf4 \u_rf_if.read_buf0\[18] _926_ _1005_ vdd 
+ gnd
+ OAI22X1
X_1249_ \u_cpu.decode.opcode\[2] _450_ _449_ vdd gnd NAND2X1
X_1898_ _13_ _14_ _0_ vdd gnd NOR2X1
X_1478_ _854_ _270_ _857_ _858_ vdd gnd AOI21X1
X_1287_ _481_ _419_ _414_ _413_ vdd gnd OAI21X1
X_2513_ _818_ i_clk_sys_ext_bF$buf8 \u_rf_if.read_buf0\[31] vdd gnd DFFPOSX1
X_2322_ _670_ i_clk_sys_ext_bF$buf12 rf_wreg0_to_if[3] vdd gnd DFFPOSX1
X_2551_ _848_ i_clk_fast_bF$buf4 \u_mem_serial.shift_reg\[13] vdd gnd DFFPOSX1
X_2131_ \u_mem_serial.bit_count\[6] _870_ _170_ vdd gnd NOR2X1
X_1822_ \u_mem_serial.shift_reg\[29] _542__bF$buf2 _1105_ _1106_ vdd gnd AOI21X1
X_1402_ \u_rf_if.last_req_key\[2] _300_ vdd gnd INVX1
X_2360_ _698_ i_clk_fast_bF$buf0 \u_mem_serial.bit_count\[1] vdd gnd DFFPOSX1
X_1631_ _393__bF$buf4 \u_rf_if.read_buf0\[3] \u_rf_if.read_buf0\[2] _943__bF$buf1 _981_ vdd 
+ gnd
+ OAI22X1
X_1211_ \u_cpu.state.cnt_r\[3] _487_ vdd gnd INVX1
X_2416_ _747_ i_clk_sys_ext_bF$buf4 \u_rf_if.o_waddr\[2] vdd gnd DFFPOSX1
X_1860_ _1138_ \u_cpu.state.ibus_cyc\ _277_ _1139_ vdd gnd AOI21X1
X_1440_ ren _270_ _268_ _269_ _267_ vdd 
+ gnd
+ AOI22X1
X_2225_ _237_ _238_ _873__bF$buf4 _594_ vdd gnd MUX2X1
X_1916_ _870_ _28_ _529_ _29_ vdd gnd OAI21X1
X_2454_ _772_ i_clk_sys_ext_bF$buf4 \u_rf_if.read_buf0\[18] vdd gnd DFFPOSX1
X_2034_ \u_mem_serial.shift_reg\[30] mem_ibus_ack_bF$buf6 _70_ _115_ vdd gnd AOI21X1
X_1725_ mem_ibus_ack_bF$buf4 \u_rf_if.rreg0_latched\[0] _1042_ vdd gnd NOR2X1
X_1305_ \u_cpu.bufreg.i_right_shift_op\ \u_cpu.bne_or_bge\ _395_ vdd gnd NOR2X1
X_2263_ _253_ _250_ _873__bF$buf1 _571_ vdd gnd MUX2X1
X_1954_ _1041_ _55_ _51_ _684_ vdd gnd MUX2X1
X_1534_ _903_ _899_ _904_ vdd gnd OR2X2
X_2319_ _667_ i_clk_sys_ext_bF$buf12 rf_wreg0_to_if[0] vdd gnd DFFPOSX1
X_2492_ \u_mem_serial.bit_count\[5] \u_mem_serial.bit_count\[6] _546_ vdd gnd NOR2X1
X_2072_ _135_ _136_ _426__bF$buf0 _647_ vdd gnd MUX2X1
X_1763_ _322_ _285_ i_rst_n_bF$buf3 _1064_ vdd gnd OAI21X1
X_1343_ _424_ _358_ _396_ _357_ vdd gnd OAI21X1
X_2548_ _624_ i_clk_fast_bF$buf4 _1116_ vdd gnd DFFPOSX1
X_2128_ _14_ _543__bF$buf0 _1104_ _528_ _623_ vdd 
+ gnd
+ OAI22X1
X_1819_ _1103_ _1098_ _543__bF$buf3 _723_ vdd gnd MUX2X1
X_1992_ \u_mem_serial.shift_reg\[22] rf_read_reg1_to_if[3] mem_ibus_ack_bF$buf5 _83_ vdd gnd MUX2X1
X_1572_ _938_ _939_ vdd gnd INVX2
X_1152_ _1117_ o_rf_mosi vdd gnd BUFX2
X_2357_ _580_ i_clk_sys_ext_bF$buf3 \u_cpu.ctrl.o_ibus_adr\[5] vdd gnd DFFPOSX1
X_1628_ \u_rf_if.read_buf0\[3] _925__bF$buf0 _976_ \u_rf_if.read_buf0\[1] _979_ vdd 
+ gnd
+ AOI22X1
X_1208_ _497_ _491_ _490_ vdd gnd NAND2X1
X_1381_ \u_rf_if.last_req_key\[8] _344_ _345_ \u_rf_if.last_req_key\[9] _321_ vdd 
+ gnd
+ AOI22X1
X_2166_ _187_ _194_ _199_ _200_ vdd gnd OAI21X1
X_1857_ _497_ _481_ _478_ _712_ vdd gnd OAI21X1
X_1437_ _274_ _282_ _270_ vdd gnd NOR2X1
X_1190_ current_stream_rs2_hint _508_ _507_ vdd gnd NAND2X1
X_2395_ _589_ i_clk_sys_ext_bF$buf10 \u_cpu.ctrl.o_ibus_adr\[14] vdd gnd DFFPOSX1
X_1666_ \u_rf_if.read_buf0\[15] _943__bF$buf4 \u_rf_if.read_buf0\[17] _926_ _1003_ vdd 
+ gnd
+ OAI22X1
X_1246_ _467_ _463_ _453_ _452_ vdd gnd OAI21X1
X_1895_ _1116_ _13_ vdd gnd INVX1
X_1475_ _282_ _302_ _855_ vdd gnd NOR2X1
X_1284_ _496_ _417_ \u_cpu.immdec.gen_immdec_w_eq_1.imm31\ _416_ vdd gnd OAI21X1
X_2489_ _553_ _544_ _543_ vdd gnd NOR2X1
X_2069_ \u_cpu.bufreg.data\[16] _135_ vdd gnd INVX1
X_2298_ _649_ i_clk_sys_ext_bF$buf11 \u_cpu.bufreg.data\[17] vdd gnd DFFPOSX1
X_1989_ mem_ibus_ack_bF$buf3 _80_ _48_ _81_ vdd gnd OAI21X1
X_1569_ _935_ _936_ vdd gnd INVX1
X_2510_ _613_ i_clk_sys_ext_bF$buf11 \u_cpu.bufreg.i_shamt\[0] vdd gnd DFFPOSX1
X_1798_ \u_rf_if.rreg1_latched\[0] _962_ _940_ raddr[4] _1087_ vdd 
+ gnd
+ AOI22X1
X_1378_ raddr[3] _324_ vdd gnd INVX1
X_1187_ _510_ _512_ \u_rf_if.launch_pending\ _509_ vdd gnd OAI21X1
X_2413_ _744_ i_clk_fast_bF$buf7 \u_rf_if.tx_state\[2] vdd gnd DFFPOSX1
X_2222_ \u_cpu.ctrl.o_ibus_adr\[20] _237_ vdd gnd INVX1
X_1913_ _549_ _529_ _26_ _696_ vdd gnd OAI21X1
X_2451_ _769_ i_clk_sys_ext_bF$buf10 \u_rf_if.read_buf0\[21] vdd gnd DFFPOSX1
X_2031_ \u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20\[0] _110_ _111_ _112_ vdd gnd OAI21X1
X_1722_ \u_rf_if.issue_idx\[4] _1038_ _896_ _1040_ vdd gnd OAI21X1
X_1302_ _433_ _399_ _400_ _398_ vdd gnd NAND3X1
X_2507_ _811_ i_clk_fast_bF$buf7 \u_rf_if.shift_rx\[1] vdd gnd DFFPOSX1
X_2260_ _252_ _251_ _873__bF$buf2 _573_ vdd gnd MUX2X1
X_1951_ \u_mem_serial.shift_reg\[16] rf_read_reg0_to_if[2] mem_ibus_ack_bF$buf0 _54_ vdd gnd MUX2X1
X_1531_ \u_rf_if.stream_cnt\[0] _901_ vdd gnd INVX1
X_2316_ _665_ i_clk_sys_ext_bF$buf9 rf_read_reg0_to_if[4] vdd gnd DFFPOSX1
X_1760_ _315_ _285_ _1062_ _741_ vdd gnd AOI21X1
X_1340_ _448_ _433_ _360_ vdd gnd NOR2X1
X_2545_ _845_ i_clk_fast_bF$buf6 \u_mem_serial.shift_reg\[19] vdd gnd DFFPOSX1
X_2125_ \u_mem_serial.state\[0] _535_ _167_ _625_ vdd gnd OAI21X1
X_1816_ \u_cpu.ctrl.o_ibus_adr\[4] _1101_ vdd gnd INVX1
X_2354_ _841_ i_clk_fast_bF$buf1 \u_rf_if.req_seen\ vdd gnd DFFPOSX1
X_1625_ \u_rf_if.read_buf0\[2] _925__bF$buf2 _976_ \u_rf_if.read_buf0\[0] _977_ vdd 
+ gnd
+ AOI22X1
X_1205_ \u_cpu.branch_op\ \u_cpu.decode.opcode\[0] _493_ vdd gnd NOR2X1
X_2163_ _462_ _461_ _197_ vdd gnd NOR2X1
X_1854_ _1133_ _1134_ _1135_ vdd gnd NAND2X1
X_1434_ _285_ _272_ _277_ _835_ vdd gnd AOI21X1
X_2219_ _234_ _235_ _873__bF$buf4 _598_ vdd gnd MUX2X1
X_2392_ _588_ i_clk_sys_ext_bF$buf10 \u_cpu.ctrl.o_ibus_adr\[13] vdd gnd DFFPOSX1
X_1663_ \u_rf_if.read_buf0\[14] _943__bF$buf4 \u_rf_if.read_buf0\[16] _926_ _1001_ vdd 
+ gnd
+ OAI22X1
X_1243_ \u_cpu.bufreg2.dhi\[5] _455_ vdd gnd INVX1
X_2448_ _766_ i_clk_sys_ext_bF$buf2 \u_rf_if.read_buf0\[24] vdd gnd DFFPOSX1
X_2028_ \u_cpu.branch_op\ _450_ _109_ vdd gnd NAND2X1
X_1719_ _1035_ \u_rf_if.issue_idx\[3] _1038_ vdd gnd AND2X2
X_1892_ _502_ _423_ mem_ibus_ack_bF$buf1 _702_ vdd gnd MUX2X1
X_1472_ _264_ _843_ _852_ vdd gnd NAND2X1
X_2257_ _250_ _231_ _873__bF$buf1 _574_ vdd gnd MUX2X1
X_1948_ _886_ _52_ _51_ _687_ vdd gnd MUX2X1
X_1528_ \u_rf_if.stream_cnt\[4] _898_ vdd gnd INVX1
X_1281_ rf_read_reg1_to_if[0] rf_wreg0_to_if[0] _420_ _419_ vdd gnd MUX2X1
X_2486_ _563_ _543__bF$buf1 _541_ _851_ vdd gnd OAI21X1
X_2066_ _132_ _133_ _426__bF$buf0 _650_ vdd gnd MUX2X1
X_1757_ _307_ _285_ i_rst_n_bF$buf0 _1061_ vdd gnd OAI21X1
X_1337_ _364_ _366_ _363_ vdd gnd AND2X2
X_2295_ _646_ i_clk_sys_ext_bF$buf11 \u_cpu.bufreg.data\[14] vdd gnd DFFPOSX1
X_1986_ \u_mem_serial.shift_reg\[25] \u_cpu.immdec.gen_immdec_w_eq_1.imm30_25\[1] mem_ibus_ack_bF$buf6 _79_ vdd gnd MUX2X1
X_1566_ _932_ _933_ vdd gnd INVX2
XFILL97950x90150 gnd vdd FILL
XFILL97950x57750 gnd vdd FILL
X_1795_ _937_ _934_ _1085_ vdd gnd AND2X2
X_1375_ _329_ _328_ _327_ vdd gnd NAND2X1
X_1184_ _513_ _512_ vdd gnd INVX2
X_2389_ _733_ i_clk_sys_ext_bF$buf4 \u_rf_if.rcnt\[0] vdd gnd DFFPOSX1
X_2198_ _543__bF$buf5 _221_ _222_ _606_ vdd gnd AOI21X1
X_1889_ mem_ibus_ack_bF$buf1 _386_ _10_ _704_ vdd gnd OAI21X1
X_1469_ _834_ _833_ _804_ _840_ vdd gnd OAI21X1
X_2410_ _743_ i_clk_fast_bF$buf7 \u_rf_if.tx_state\[3] vdd gnd DFFPOSX1
X_1698_ _1022_ _925__bF$buf2 _1023_ _764_ vdd gnd AOI21X1
X_1278_ _469_ _423_ _422_ vdd gnd NAND2X1
X_1910_ _23_ _24_ vdd gnd INVX1
X_2504_ _565_ i_clk_fast_bF$buf2 \u_mem_serial.shift_reg\[3] vdd gnd DFFPOSX1
X_2313_ _662_ i_clk_sys_ext_bF$buf0 rf_read_reg1_to_if[4] vdd gnd DFFPOSX1
X_2542_ _839_ i_clk_fast_bF$buf2 \u_mem_serial.shift_reg\[7] vdd gnd DFFPOSX1
X_2122_ _165_ _528_ _166_ _627_ vdd gnd OAI21X1
X_1813_ \u_mem_serial.shift_reg\[20] _1098_ vdd gnd INVX1
X_2351_ _694_ i_clk_fast_bF$buf3 \u_mem_serial.bit_count\[5] vdd gnd DFFPOSX1
X_1622_ \u_rf_if.write_wait\[0] _974_ _806_ vdd gnd NOR2X1
X_1202_ \u_cpu.bufreg.i_right_shift_op\ _496_ vdd gnd INVX2
X_2407_ _595_ i_clk_sys_ext_bF$buf10 \u_cpu.ctrl.o_ibus_adr\[20] vdd gnd DFFPOSX1
X_2160_ _184_ _463_ _178_ _195_ vdd gnd OAI21X1
X_1851_ _1130_ _1131_ _1125_ _1127_ _1132_ vdd 
+ gnd
+ AOI22X1
X_1431_ \u_rf_if.tx_state\[1] _274_ vdd gnd INVX1
X_2216_ \u_cpu.ctrl.o_ibus_adr\[23] _234_ vdd gnd INVX1
X_1907_ _21_ _20_ _542__bF$buf0 _22_ vdd gnd OAI21X1
X_1660_ \u_rf_if.read_buf0\[15] _999_ vdd gnd INVX1
X_1240_ _459_ _458_ vdd gnd INVX1
X_2445_ _763_ i_clk_sys_ext_bF$buf2 \u_rf_if.read_buf0\[27] vdd gnd DFFPOSX1
X_2025_ _473_ _101_ _106_ _664_ vdd gnd OAI21X1
X_1716_ _1032_ _1034_ _1036_ vdd gnd NAND2X1
X_2254_ \u_cpu.ctrl.pc\ _873__bF$buf5 _249_ vdd gnd NOR2X1
X_1945_ _496_ _417_ _49_ _50_ vdd gnd OAI21X1
X_1525_ _896_ \u_rf_if.issue_idx\[5] _825_ vdd gnd AND2X2
X_2483_ _815_ i_clk_sys_ext_bF$buf2 \u_rf_if.stream_active\ vdd gnd DFFPOSX1
X_2063_ \u_cpu.bufreg.data\[19] _132_ vdd gnd INVX1
X_1754_ _277_ _440_ _1059_ _1060_ vdd gnd OAI21X1
X_1334_ _391_ _377_ _366_ vdd gnd NAND2X1
X_2539_ _570_ i_clk_sys_ext_bF$buf9 \u_cpu.ctrl.pc_plus_offset_cy_r_w\ vdd gnd DFFPOSX1
X_2119_ _164_ _149_ _426__bF$buf1 _628_ vdd gnd MUX2X1
X_2292_ \u_mem_serial.bit_count\[3] _549_ vdd gnd INVX1
X_1983_ \u_mem_serial.shift_reg\[26] \u_cpu.immdec.gen_immdec_w_eq_1.imm30_25\[2] mem_ibus_ack_bF$buf6 _77_ vdd gnd MUX2X1
X_1563_ \u_rf_if.issue_idx\[5] _930_ _931_ vdd gnd NOR2X1
X_2348_ _692_ i_clk_fast_bF$buf2 \u_mem_serial.req_pending\ vdd gnd DFFPOSX1
X_1619_ \u_rf_if.stream_cnt\[2] _899_ _971_ _973_ vdd gnd NAND3X1
X_1792_ _939_ _1082_ _1080_ _729_ vdd gnd OAI21X1
X_1372_ ren raddr[4] _342_ _331_ _330_ vdd 
+ gnd
+ AOI22X1
X_2577_ _568_ i_clk_sys_ext_bF$buf5 \u_cpu.ctrl.o_ibus_adr\[31] vdd gnd DFFPOSX1
X_2157_ _190_ _191_ _192_ vdd gnd NOR2X1
X_1848_ _495_ _395_ _363_ _1129_ vdd gnd OAI21X1
X_1428_ _279_ _276_ _837_ vdd gnd AND2X2
X_1181_ \u_rf_if.tx_state\[1] \u_rf_if.tx_state\[0] _515_ vdd gnd NOR2X1
X_2386_ _596_[0] i_clk_sys_ext_bF$buf13 \u_cpu.state.o_cnt\[2] vdd gnd DFFPOSX1
X_1657_ \u_rf_if.read_buf0\[13] _393__bF$buf2 _997_ vdd gnd NOR2X1
X_1237_ \u_cpu.bufreg.i_shamt\[0] \u_cpu.bufreg.i_shamt\[1] _461_ vdd gnd NOR2X1
X_2195_ _543__bF$buf5 _220_ _216_ _607_ vdd gnd AOI21X1
X_1886_ mem_ibus_ack_bF$buf5 \u_mem_serial.shift_reg\[12] _9_ vdd gnd NAND2X1
X_1466_ \u_rf_if.i_stream_rs2_en\ _798_ _805_ vdd gnd NOR2X1
X_1695_ _1020_ _925__bF$buf1 _1021_ _765_ vdd gnd AOI21X1
X_1275_ _426__bF$buf1 _425_ vdd gnd INVX1
X_2289_ \u_mem_serial.state\[0] _552_ vdd gnd INVX1
X_2501_ _808_ i_clk_sys_ext_bF$buf8 \u_rf_if.stream_cnt\[2] vdd gnd DFFPOSX1
X_2098_ \u_cpu.bufreg.data\[30] _148_ vdd gnd INVX1
X_1789_ _934_ _1079_ _937_ _1080_ vdd gnd NAND3X1
X_1369_ _334_ \u_rf_if.last_req_key\[6] _333_ vdd gnd OR2X2
X_2310_ _659_ i_clk_sys_ext_bF$buf13 \u_cpu.bufreg.data\[27] vdd gnd DFFPOSX1
X_1598_ _796_ _890_ _958_ vdd gnd NAND2X1
X_1178_ \u_rf_if.wen0_r\ _518_ vdd gnd INVX1
X_1810_ _1093_ \u_rf_if.i_stream_rs2_en\ _1095_ _1096_ vdd gnd AOI21X1
X_2404_ _740_ i_clk_fast_bF$buf5 \u_rf_if.last_req_key\[2] vdd gnd DFFPOSX1
X_2213_ _230_ _232_ _873__bF$buf1 _601_ vdd gnd MUX2X1
X_1904_ _16_ _19_ vdd gnd INVX1
X_2442_ _760_ i_clk_sys_ext_bF$buf1 \u_rf_if.issue_idx\[0] vdd gnd DFFPOSX1
X_2022_ _51_ _104_ _105_ vdd gnd NOR2X1
X_1713_ _1028_ _932_ _1033_ vdd gnd NOR2X1
X_2251_ _522_ _227_ _873__bF$buf5 _577_ vdd gnd MUX2X1
X_1942_ mem_ibus_ack_bF$buf3 _474_ _47_ vdd gnd NOR2X1
X_1522_ \u_rf_if.pending_read\ _894_ vdd gnd INVX1
X_2307_ _656_ i_clk_sys_ext_bF$buf3 \u_cpu.bufreg.data\[24] vdd gnd DFFPOSX1
X_2480_ \u_mem_serial.bit_count\[0] _538_ vdd gnd INVX1
X_2060_ _129_ _130_ _426__bF$buf4 _653_ vdd gnd MUX2X1
X_1751_ _510_ _512_ i_rst_n_bF$buf2 _1058_ vdd gnd OAI21X1
X_1331_ _373_ _375_ _387_ _369_ vdd gnd OAI21X1
X_2536_ _814_ i_clk_sys_ext_bF$buf4 \u_rf_if.rcnt\[1] vdd gnd DFFPOSX1
X_2116_ _156_ _159_ _425_ _629_ vdd gnd AOI21X1
X_1807_ _912_ _1093_ vdd gnd INVX1
X_1980_ \u_mem_serial.shift_reg\[27] \u_cpu.immdec.gen_immdec_w_eq_1.imm30_25\[3] mem_ibus_ack_bF$buf6 _75_ vdd gnd MUX2X1
X_1560_ \u_rf_if.stream_active\ \u_rf_if.read_buf0\[31] _924_ _928_ _929_ vdd 
+ gnd
+ AOI22X1
X_2345_ _690_ i_clk_sys_ext_bF$buf7 \u_cpu.bufreg.i_right_shift_op\ vdd gnd DFFPOSX1
X_1616_ _393__bF$buf3 _905_ _971_ vdd gnd NOR2X1
X_2574_ _723_ i_clk_fast_bF$buf3 \u_mem_serial.shift_reg\[20] vdd gnd DFFPOSX1
X_2154_ _186_ _189_ _618_ vdd gnd NAND2X1
X_1845_ _496_ _495_ _1126_ vdd gnd NAND2X1
X_1425_ \u_rf_if.shift_rx\[0] _278_ vdd gnd INVX1
X_2383_ _586_ i_clk_sys_ext_bF$buf13 \u_cpu.ctrl.o_ibus_adr\[11] vdd gnd DFFPOSX1
X_1654_ \u_rf_if.read_buf0\[12] _393__bF$buf2 _995_ vdd gnd NOR2X1
X_1234_ _468_ _465_ _464_ vdd gnd NAND2X1
X_2439_ _606_ i_clk_fast_bF$buf3 \u_mem_serial.shift_reg\[26] vdd gnd DFFPOSX1
X_2019_ mem_ibus_ack_bF$buf3 \u_cpu.branch_op\ _101_ _102_ vdd gnd OAI21X1
X_2192_ \u_cpu.ctrl.o_ibus_adr\[9] _218_ vdd gnd INVX1
X_1883_ _7_ _1_ _543__bF$buf3 _707_ vdd gnd MUX2X1
X_1463_ _801_ _798_ _802_ vdd gnd NAND2X1
X_2248_ _38_ _1143_ _873__bF$buf3 _580_ vdd gnd MUX2X1
X_1939_ mem_ibus_ack_bF$buf0 _408_ _45_ _689_ vdd gnd OAI21X1
X_1519_ \u_cpu.o_wdata0\ _891_ _444_ _892_ vdd gnd OAI21X1
X_1692_ _1018_ _925__bF$buf1 _1019_ _766_ vdd gnd AOI21X1
X_1272_ _497_ _429_ _428_ vdd gnd NOR2X1
X_2477_ _790_ i_clk_sys_ext_bF$buf8 \u_rf_if.read_buf0\[0] vdd gnd DFFPOSX1
X_2057_ \u_cpu.bufreg.data\[22] _129_ vdd gnd INVX1
X_1748_ _1056_ _444_ _747_ vdd gnd AND2X2
X_1328_ _373_ _375_ _372_ vdd gnd NOR2X1
X_2286_ _558_ _556_ _555_ vdd gnd NAND2X1
X_1977_ \u_mem_serial.shift_reg\[28] \u_cpu.immdec.gen_immdec_w_eq_1.imm30_25\[4] mem_ibus_ack_bF$buf6 _73_ vdd gnd MUX2X1
X_1557_ _925__bF$buf3 _926_ vdd gnd INVX4
XFILL97950x64950 gnd vdd FILL
X_2095_ _476_ _434_ _466_ _146_ vdd gnd NAND3X1
X_1786_ _938_ _1033_ _1077_ _1078_ vdd gnd AOI21X1
X_1366_ _344_ rf_wreg0_to_if[2] _336_ vdd gnd AND2X2
X_1595_ _498_ _955_ _956_ vdd gnd NOR2X1
X_1175_ _542__bF$buf1 _521_ _524_ _520_ vdd gnd OAI21X1
X_2189_ _215_ _117_ _543__bF$buf3 _608_ vdd gnd MUX2X1
X_2401_ _592_ i_clk_sys_ext_bF$buf10 \u_cpu.ctrl.o_ibus_adr\[17] vdd gnd DFFPOSX1
X_1689_ _1016_ _925__bF$buf3 _1017_ _767_ vdd gnd AOI21X1
X_1269_ \u_cpu.state.init_done\ _470_ _473_ _431_ vdd gnd AOI21X1
X_2210_ \u_cpu.ctrl.o_ibus_adr\[27] _231_ vdd gnd INVX1
X_1901_ _538_ _15_ _17_ vdd gnd NOR2X1
X_1498_ _874_ _875_ vdd gnd INVX1
X_1710_ _932_ _1028_ _897_ _1031_ vdd gnd AOI21X1
X_2304_ _654_ i_clk_sys_ext_bF$buf13 \u_cpu.bufreg.data\[22] vdd gnd DFFPOSX1
X_2533_ \u_cpu.o_wdata0\ i_clk_sys_ext_bF$buf6 \u_rf_if.wdata0_next\[0] vdd gnd DFFPOSX1
X_2113_ _159_ _160_ _161_ vdd gnd AND2X2
X_1804_ \u_rf_if.rreg1_latched\[2] _962_ _940_ raddr[6] _1091_ vdd 
+ gnd
+ AOI22X1
X_2342_ _714_ i_clk_fast_bF$buf1 \u_mem_serial.shift_reg\[4] vdd gnd DFFPOSX1
X_1613_ _967_ \u_rf_if.stream_cnt\[1] _968_ _809_ vdd gnd AOI21X1
X_2571_ _639_ i_clk_sys_ext_bF$buf3 \u_cpu.bufreg.data\[7] vdd gnd DFFPOSX1
X_2151_ _178_ _187_ vdd gnd INVX1
XCLKBUF1_insert35 i_clk_sys_ext i_clk_sys_ext_bF$buf13 vdd gnd CLKBUF1
XCLKBUF1_insert36 i_clk_sys_ext i_clk_sys_ext_bF$buf12 vdd gnd CLKBUF1
XCLKBUF1_insert37 i_clk_sys_ext i_clk_sys_ext_bF$buf11 vdd gnd CLKBUF1
XCLKBUF1_insert38 i_clk_sys_ext i_clk_sys_ext_bF$buf10 vdd gnd CLKBUF1
XCLKBUF1_insert39 i_clk_sys_ext i_clk_sys_ext_bF$buf9 vdd gnd CLKBUF1
X_1842_ _470_ _478_ _1123_ vdd gnd NOR2X1
X_1422_ \u_rf_if.tx_state\[2] _510_ _281_ vdd gnd NOR2X1
X_2207_ _542__bF$buf1 _228_ _226_ _229_ vdd gnd OAI21X1
X_2380_ _716_ i_clk_fast_bF$buf6 \u_mem_serial.shift_reg\[29] vdd gnd DFFPOSX1
X_1651_ _992_ _925__bF$buf3 _993_ _781_ vdd gnd AOI21X1
X_1231_ \u_cpu.bufreg2.dhi\[6] _467_ vdd gnd INVX1
X_2436_ _757_ i_clk_sys_ext_bF$buf1 \u_rf_if.issue_idx\[3] vdd gnd DFFPOSX1
X_2016_ mem_ibus_ack_bF$buf6 _14_ _99_ _666_ vdd gnd AOI21X1
X_1707_ \u_rf_if.issue_idx\[1] _1028_ vdd gnd INVX1
X_1880_ \u_cpu.ctrl.o_ibus_adr\[7] _5_ vdd gnd INVX1
X_1460_ \u_rf_if.i_stream_rs2_en\ \u_rf_if.read_buf1\[0] _798_ _799_ vdd gnd AOI21X1
X_2245_ _218_ _213_ _873__bF$buf3 _583_ vdd gnd MUX2X1
X_1936_ mem_ibus_ack_bF$buf0 _496_ _43_ _690_ vdd gnd OAI21X1
X_1516_ _498_ _441_ _517_ _889_ vdd gnd OAI21X1
X_2474_ _787_ i_clk_sys_ext_bF$buf8 \u_rf_if.read_buf0\[3] vdd gnd DFFPOSX1
X_2054_ _126_ _127_ _426__bF$buf4 _656_ vdd gnd MUX2X1
X_1745_ _1054_ _865_ _748_ vdd gnd NOR2X1
X_1325_ _376_ _382_ _375_ vdd gnd AND2X2
X_2283_ _559_ _558_ vdd gnd INVX1
XFILL97350x54150 gnd vdd FILL
X_1974_ \u_mem_serial.shift_reg\[29] \u_cpu.immdec.gen_immdec_w_eq_1.imm30_25\[5] mem_ibus_ack_bF$buf6 _71_ vdd gnd MUX2X1
X_1554_ \u_rf_if.issue_idx\[4] _922_ \u_rf_if.i_stream_rs2_en\ _923_ vdd gnd NAND3X1
X_2339_ _720_ i_clk_fast_bF$buf4 \u_mem_serial.shift_reg\[2] vdd gnd DFFPOSX1
X_2092_ \u_cpu.bufreg.data\[2] _144_ vdd gnd INVX1
X_1783_ _939_ _1075_ _1074_ _731_ vdd gnd OAI21X1
X_1363_ _340_ \u_rf_if.last_req_key\[7] _339_ vdd gnd AND2X2
X_2568_ _724_ i_clk_sys_ext_bF$buf4 \u_rf_if.rs2_stream_buf\[0] vdd gnd DFFPOSX1
X_2148_ \u_cpu.bufreg2.dhi\[4] _184_ vdd gnd INVX1
X_1839_ \u_mem_serial.shift_reg\[4] _1121_ vdd gnd INVX1
X_1419_ \u_rf_if.last_req_key\[9] _284_ i_rst_n_bF$buf3 _283_ vdd gnd OAI21X1
X_1592_ \u_rf_if.stream_active\ _953_ _907_ _815_ vdd gnd OAI21X1
X_1172_ \u_cpu.bufreg.data\[3] _523_ vdd gnd INVX1
X_2377_ _583_ i_clk_sys_ext_bF$buf9 \u_cpu.ctrl.o_ibus_adr\[8] vdd gnd DFFPOSX1
X_1648_ \u_rf_if.stream_active\ _989_ _991_ _782_ vdd gnd AOI21X1
X_1228_ \u_cpu.branch_op\ _470_ vdd gnd INVX2
X_2186_ \u_cpu.ctrl.o_ibus_adr\[8] _213_ vdd gnd INVX1
X_1877_ \u_mem_serial.shift_reg\[22] _2_ vdd gnd INVX1
X_1457_ _792_ _795_ _796_ vdd gnd NOR2X1
X_1686_ \u_rf_if.stream_active\ _1013_ _1015_ _768_ vdd gnd AOI21X1
X_1266_ \u_cpu.state.o_cnt\[2] _435_ _434_ vdd gnd NOR2X1
X_1495_ _543__bF$buf3 _871_ _872_ _831_ vdd gnd AOI21X1
X_2089_ _37_ _1142_ _426__bF$buf3 _637_ vdd gnd MUX2X1
X_2301_ _652_ i_clk_sys_ext_bF$buf13 \u_cpu.bufreg.data\[20] vdd gnd DFFPOSX1
X_1589_ _393__bF$buf3 \u_rf_if.stream_cnt\[0] _951_ _952_ vdd gnd OAI21X1
X_1169_ \u_mem_serial.shift_reg\[19] _526_ vdd gnd INVX1
X_2530_ _566_ i_clk_sys_ext_bF$buf7 \u_cpu.alu.cmp_r\ vdd gnd DFFPOSX1
X_2110_ _157_ _156_ _158_ vdd gnd NAND2X1
X_1801_ \u_rf_if.rreg1_latched\[1] _962_ _940_ raddr[5] _1089_ vdd 
+ gnd
+ AOI22X1
X_1398_ ren _305_ _304_ vdd gnd NAND2X1
X_1610_ _908_ _935_ _967_ vdd gnd NOR2X1
X_2204_ _224_ _542__bF$buf1 _226_ vdd gnd NAND2X1
X_2433_ _756_ i_clk_sys_ext_bF$buf1 \u_rf_if.issue_idx\[4] vdd gnd DFFPOSX1
X_2013_ mem_ibus_ack_bF$buf2 \u_mem_serial.shift_reg\[7] _89_ rf_wreg0_to_if[0] _98_ vdd 
+ gnd
+ AOI22X1
X_1704_ _942_ _925__bF$buf2 _1026_ _761_ vdd gnd AOI21X1
X_2242_ \u_cpu.ctrl.o_ibus_adr\[10] _247_ vdd gnd INVX1
X_1933_ _561_ _41_ _42_ _692_ vdd gnd AOI21X1
X_1513_ mem_ibus_ack_bF$buf7 \u_rf_if.rreg0_latched\[3] _887_ vdd gnd NOR2X1
X_2471_ _785_ i_clk_sys_ext_bF$buf8 \u_rf_if.read_buf0\[5] vdd gnd DFFPOSX1
X_2051_ \u_cpu.bufreg.data\[25] _126_ vdd gnd INVX1
X_1742_ _861_ _862_ _444_ _1053_ vdd gnd OAI21X1
X_1322_ _386_ _413_ _378_ vdd gnd NAND2X1
X_2527_ _816_ i_clk_sys_ext_bF$buf2 \u_rf_if.rs2_stream_buf\[1] vdd gnd DFFPOSX1
X_2107_ _150_ _391_ _155_ vdd gnd NAND2X1
X_2280_ \u_mem_serial.req_pending\ _561_ vdd gnd INVX1
X_1971_ \u_cpu.immdec.gen_immdec_w_eq_1.imm30_25\[4] _68_ vdd gnd INVX1
X_1551_ \u_rf_if.issue_idx\[0] _920_ vdd gnd INVX1
X_2336_ _683_ i_clk_sys_ext_bF$buf12 \u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20\[3] vdd gnd DFFPOSX1
X_1607_ _281_ _270_ _965_ vdd gnd AND2X2
X_1780_ _1073_ _441_ _732_ vdd gnd NOR2X1
X_1360_ \u_rf_if.rtrig0\ _342_ vdd gnd INVX2
X_2565_ _634_ i_clk_sys_ext_bF$buf9 \u_cpu.bufreg.data\[2] vdd gnd DFFPOSX1
X_2145_ _455_ _463_ _182_ vdd gnd NOR2X1
X_1836_ _543__bF$buf4 _1112_ _1113_ _716_ vdd gnd AOI21X1
X_1416_ _287_ _343_ _286_ vdd gnd AND2X2
X_2374_ _711_ i_clk_sys_ext_bF$buf12 \u_cpu.state.ibus_cyc\ vdd gnd DFFPOSX1
X_1645_ _393__bF$buf4 \u_rf_if.read_buf0\[8] \u_rf_if.read_buf0\[7] _943__bF$buf1 _990_ vdd 
+ gnd
+ OAI22X1
X_1225_ _474_ _473_ vdd gnd INVX2
X_2183_ \u_mem_serial.shift_reg\[16] _543__bF$buf4 _211_ vdd gnd NOR2X1
X_1874_ _1149_ _537_ _1120_ vdd gnd NAND2X1
X_1454_ \u_rf_if.o_waddr\[0] \u_rf_if.o_waddr\[3] _793_ vdd gnd NOR2X1
X_2239_ _244_ _245_ _873__bF$buf0 _587_ vdd gnd MUX2X1
X_1683_ _393__bF$buf1 \u_rf_if.read_buf0\[22] \u_rf_if.read_buf0\[21] _943__bF$buf0 _1014_ vdd 
+ gnd
+ OAI22X1
X_1263_ _469_ _438_ _437_ vdd gnd NOR2X1
X_2468_ _726_ i_clk_sys_ext_bF$buf6 raddr[5] vdd gnd DFFPOSX1
X_2048_ _122_ _124_ _426__bF$buf4 _659_ vdd gnd MUX2X1
X_1739_ rf_read_reg1_to_if[2] _1051_ vdd gnd INVX1
X_1319_ \u_rf_if.read_buf1\[0] \u_rf_if.i_stream_rs2_en\ \u_rf_if.stream_active\ _381_ vdd gnd OAI21X1
X_1492_ _542__bF$buf0 _870_ vdd gnd INVX2
X_2277_ _31_ _259_ _260_ _564_ vdd gnd OAI21X1
X_1968_ mem_ibus_ack_bF$buf0 _62_ _45_ _66_ vdd gnd OAI21X1
X_1548_ _916_ _917_ vdd gnd INVX1
X_2086_ _142_ _143_ _426__bF$buf3 _640_ vdd gnd MUX2X1
X_1777_ \u_rf_if.rcnt\[2] _956_ _1071_ vdd gnd NAND2X1
X_1357_ _517_ _345_ vdd gnd INVX1
X_1586_ \u_rf_if.i_stream_rs2_en\ _947_ _949_ vdd gnd NAND2X1
X_1166_ _530_ _543__bF$buf0 _563_ _528_ _847_ vdd 
+ gnd
+ OAI22X1
X_1395_ _308_ _307_ vdd gnd INVX1
X_2201_ \u_mem_serial.shift_reg\[17] _224_ vdd gnd INVX1
X_1489_ _866_ \u_rf_if.o_waddr\[3] _868_ vdd gnd AND2X2
X_2430_ _755_ i_clk_sys_ext_bF$buf12 \u_rf_if.rreg0_latched\[0] vdd gnd DFFPOSX1
X_2010_ rf_wreg0_to_if[1] _89_ _96_ vdd gnd NAND2X1
X_1701_ _393__bF$buf3 \u_rf_if.read_buf0\[29] _926_ _1025_ vdd gnd OAI21X1
X_1298_ _409_ _404_ _402_ vdd gnd NAND2X1
X_1930_ _40_ _2_ _543__bF$buf3 _693_ vdd gnd MUX2X1
X_1510_ mem_ibus_ack_bF$buf7 \u_rf_if.rreg1_latched\[3] _885_ vdd gnd NOR2X1
X_2524_ _828_ i_clk_sys_ext_bF$buf12 \u_rf_if.rreg1_latched\[3] vdd gnd DFFPOSX1
X_2104_ \u_cpu.decode.opcode\[0] _423_ _151_ _152_ vdd gnd OAI21X1
X_2333_ _680_ i_clk_sys_ext_bF$buf7 \u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20\[0] vdd gnd DFFPOSX1
X_1604_ \u_rf_if.rreg1_latched\[3] _962_ _940_ raddr[7] _963_ vdd 
+ gnd
+ AOI22X1
X_2562_ _632_ i_clk_sys_ext_bF$buf9 \u_cpu.bufreg.data\[30] vdd gnd DFFPOSX1
X_2142_ _467_ _177_ _179_ _620_ vdd gnd OAI21X1
X_1833_ _1111_ _481_ _615_[2] vdd gnd NOR2X1
X_1413_ _291_ _290_ _289_ vdd gnd NAND2X1
XBUFX2_insert60 _542_ _542__bF$buf1 vdd gnd BUFX2
XBUFX2_insert61 _542_ _542__bF$buf0 vdd gnd BUFX2
XBUFX2_insert62 mem_ibus_ack mem_ibus_ack_bF$buf7 vdd gnd BUFX2
XBUFX2_insert63 mem_ibus_ack mem_ibus_ack_bF$buf6 vdd gnd BUFX2
XBUFX2_insert64 mem_ibus_ack mem_ibus_ack_bF$buf5 vdd gnd BUFX2
XBUFX2_insert65 mem_ibus_ack mem_ibus_ack_bF$buf4 vdd gnd BUFX2
XBUFX2_insert66 mem_ibus_ack mem_ibus_ack_bF$buf3 vdd gnd BUFX2
XBUFX2_insert67 mem_ibus_ack mem_ibus_ack_bF$buf2 vdd gnd BUFX2
XBUFX2_insert68 mem_ibus_ack mem_ibus_ack_bF$buf1 vdd gnd BUFX2
XBUFX2_insert69 mem_ibus_ack mem_ibus_ack_bF$buf0 vdd gnd BUFX2
X_2371_ _582_ i_clk_sys_ext_bF$buf3 \u_cpu.ctrl.o_ibus_adr\[7] vdd gnd DFFPOSX1
X_1642_ \u_rf_if.read_buf0\[6] _943__bF$buf1 \u_rf_if.read_buf0\[8] _926_ _988_ vdd 
+ gnd
+ OAI22X1
X_1222_ \u_cpu.state.cnt_r\[0] \u_cpu.state.cnt_r\[1] _476_ vdd gnd OR2X2
X_2427_ _752_ i_clk_sys_ext_bF$buf12 \u_rf_if.rreg1_latched\[0] vdd gnd DFFPOSX1
X_2007_ rf_wreg0_to_if[2] _89_ _94_ vdd gnd NAND2X1
X_2180_ _553_ _544_ \u_mem_serial.shift_reg\[10] _209_ vdd gnd OAI21X1
X_1871_ \u_mem_serial.active_ibus\ _1147_ vdd gnd INVX1
X_1451_ _718_ _382_ _719_ vdd gnd NAND2X1
X_2236_ \u_cpu.ctrl.o_ibus_adr\[13] _244_ vdd gnd INVX1
X_1927_ \u_cpu.ctrl.o_ibus_adr\[6] _38_ vdd gnd INVX1
X_1507_ \u_mem_serial.shift_reg\[28] _543__bF$buf5 _883_ vdd gnd NOR2X1
X_1680_ _393__bF$buf1 \u_rf_if.read_buf0\[21] \u_rf_if.read_buf0\[20] _943__bF$buf0 _1012_ vdd 
+ gnd
+ OAI22X1
X_1260_ \u_rf_if.req_seen\ _440_ _439_ vdd gnd NOR2X1
X_2465_ _727_ i_clk_sys_ext_bF$buf6 raddr[4] vdd gnd DFFPOSX1
X_2045_ \u_cpu.bufreg.data\[29] _123_ vdd gnd INVX1
X_1736_ rf_read_reg1_to_if[1] _1049_ vdd gnd INVX1
X_1316_ \u_cpu.bne_or_bge\ \u_cpu.decode.co_mem_word\ _384_ vdd gnd NOR2X1
X_2274_ _502_ _543__bF$buf2 _1108_ _528_ _565_ vdd 
+ gnd
+ OAI22X1
X_1965_ _63_ _51_ _64_ vdd gnd NOR2X1
X_1545_ \u_rf_if.issue_idx\[1] \u_rf_if.issue_idx\[0] _914_ vdd gnd NOR2X1
X_2083_ \u_cpu.bufreg.data\[9] _142_ vdd gnd INVX1
X_1774_ ren _285_ i_rst_n_bF$buf3 _1070_ vdd gnd OAI21X1
X_1354_ \u_mem_serial.shift_reg\[6] _347_ vdd gnd INVX1
X_2559_ _628_ i_clk_sys_ext_bF$buf9 \u_cpu.bufreg.data\[31] vdd gnd DFFPOSX1
X_2139_ _473_ _176_ _464_ _177_ vdd gnd OAI21X1
X_1583_ _919_ _946_ vdd gnd INVX1
X_1163_ _553_ _529_ vdd gnd INVX2
X_2368_ _706_ i_clk_sys_ext_bF$buf4 \u_cpu.decode.co_mem_word\ vdd gnd DFFPOSX1
X_1639_ \u_rf_if.read_buf0\[7] _986_ vdd gnd INVX1
X_1219_ _490_ _480_ _479_ vdd gnd NOR2X1
X_1392_ _311_ _310_ vdd gnd INVX1
X_2177_ _208_ _201_ _177_ _613_ vdd gnd MUX2X1
X_1868_ _1145_ _1140_ _543__bF$buf3 _710_ vdd gnd MUX2X1
X_1448_ _514_ _311_ _699_ _700_ vdd gnd OAI21X1

.ends
.end
