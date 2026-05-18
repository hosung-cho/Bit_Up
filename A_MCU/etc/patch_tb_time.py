with open('testbench/5_testbench_rv32i_directed/tb_rv32i_directed.v', 'r') as f:
    code = f.read()

code = code.replace("   always @(posedge clk) if (cpu_ibus_cyc && cpu_ibus_ack) $display(\"TB_PC: %h\", cpu_ibus_adr);", "   always @(posedge clk) if (cpu_ibus_cyc && cpu_ibus_ack) $display(\"TB_PC: %h TIME: %t\", cpu_ibus_adr, $time);")

with open('testbench/5_testbench_rv32i_directed/tb_rv32i_directed.v', 'w') as f:
    f.write(code)

with open('src/rtl/serv/serv_top.v', 'r') as f:
    code = f.read()

code = code.replace("         always @(posedge clk) if (wb_ibus_cyc && wb_ibus_ack) $display(\"TB_PC: %h\", wb_ibus_adr);", "         always @(posedge clk) if (wb_ibus_cyc && wb_ibus_ack) $display(\"TB_PC: %h TIME: %t\", wb_ibus_adr, $time);")

with open('src/rtl/serv/serv_top.v', 'w') as f:
    f.write(code)
