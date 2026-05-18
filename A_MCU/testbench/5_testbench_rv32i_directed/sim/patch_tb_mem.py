with open('testbench/5_testbench_rv32i_directed/tb_rv32i_directed.v', 'r') as f:
    code = f.read()

code = code.replace("         memory[addr[11:2]] <= o_wdata;", "         memory[addr[11:2]] <= o_wdata;\n         $display(\"TB_MEM_WRITE: addr=%h data=%h\", addr, o_wdata);")

with open('testbench/5_testbench_rv32i_directed/tb_rv32i_directed.v', 'w') as f:
    f.write(code)
