with open('src/rtl/serv/serv_rf_ram_if.v', 'r') as f:
    code = f.read()

# 1. Swap wtrig0 and wtrig1
code = code.replace("assign wtrig0 = rtrig1;", "assign wtrig0 = (wcnt[0] == 1);")
code = code.replace("assign wtrig1 = (wcnt[0] == 1);", "assign wtrig1 = rtrig1;")

# 2. Fix o_wdata to only use wdata*_r
code = code.replace("assign o_wdata = wtrig1 ? wdata1_sel : wdata0_r;", "assign o_wdata = wtrig1 ? wdata1_r : wdata0_r;")

# 3. Fix write_chunk increment trigger
code = code.replace("else if (wtrig1 && (wen0_r || wen1_r))", "else if (wtrig0 && (wen0_r || wen1_r))")

with open('src/rtl/serv/serv_rf_ram_if.v', 'w') as f:
    f.write(code)
