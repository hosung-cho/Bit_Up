with open('testbench/5_testbench_rv32i_directed/sim/simulate_full.log', 'r') as f:
    lines = f.readlines()
mem_writes = []
for line in lines:
    if "TB_MEM_WRITE" in line:
        mem_writes.append(line.strip())
print("\n".join(mem_writes[-20:]))
