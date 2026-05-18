import re

pc = 0x0
addrs = {}

with open('testbench/5_testbench_rv32i_directed/tb_rv32i_directed.v', 'r') as f:
    for line in f:
        line = line.strip()
        if line.startswith('emit('):
            addrs[pc] = line
            pc += 4
        elif line.startswith('store_result('):
            addrs[pc] = line
            pc += 4

with open('trace.log', 'r') as f:
    for line in f:
        if 'TB_PC:' in line:
            addr = int(line.split('TB_PC: ')[1].strip(), 16)
            if addr in addrs:
                print(f"[{hex(addr)}] {addrs[addr]}")
            else:
                print(f"[{hex(addr)}] unknown")
        elif 'TB_MEM_WRITE' in line:
            print(line.strip())
