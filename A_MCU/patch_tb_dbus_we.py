with open('testbench/5_testbench_rv32i_directed/tb_rv32i_directed.v', 'r') as f:
    code = f.read()

code = code.replace("   always @(posedge clk) if (cpu_ibus_cyc && cpu_ibus_ack) $display(\"TB_PC: %h TIME: %t\", cpu_ibus_adr, $time);", "")

with open('testbench/5_testbench_rv32i_directed/tb_rv32i_directed.v', 'w') as f:
    f.write(code)

with open('src/rtl/serv/serv_top.v', 'r') as f:
    code = f.read()

code = code.replace("         always @(posedge clk) if (wb_ibus_cyc && wb_ibus_ack) $display(\"TB_PC: %h TIME: %t\", wb_ibus_adr, $time);", "         always @(posedge clk) if (wb_ibus_cyc && wb_ibus_ack) $display(\"TB_PC: %h TIME: %t\", wb_ibus_adr, $time);\n         always @(posedge clk) if (o_dbus_cyc && o_dbus_we) $display(\"TB_DBUS_WE: addr=%h data=%h sel=%b TIME: %t\", o_dbus_adr, o_dbus_dat, o_dbus_sel, $time);")

with open('src/rtl/serv/serv_top.v', 'w') as f:
    f.write(code)
