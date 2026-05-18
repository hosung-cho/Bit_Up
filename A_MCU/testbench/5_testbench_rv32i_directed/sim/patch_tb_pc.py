with open('testbench/5_testbench_rv32i_directed/tb_rv32i_directed.v', 'r') as f:
    code = f.read()

code = code.replace("   wire [31:0] cpu_ibus_adr;", "   wire [31:0] cpu_ibus_adr;\n   always @(posedge clk) if (cpu_ibus_cyc && cpu_ibus_ack) $display(\"TB_PC: %h\", cpu_ibus_adr);")

with open('testbench/5_testbench_rv32i_directed/tb_rv32i_directed.v', 'w') as f:
    f.write(code)
