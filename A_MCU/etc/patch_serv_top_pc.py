with open('src/rtl/serv/serv_top.v', 'r') as f:
    code = f.read()

code = code.replace("   assign o_ibus_cyc = ibus_cyc;", "")
code = code.replace("         assign  o_ibus_cyc  = wb_ibus_cyc;", "         assign  o_ibus_cyc  = wb_ibus_cyc;\n         always @(posedge clk) if (wb_ibus_cyc && wb_ibus_ack) $display(\"TB_PC: %h\", wb_ibus_adr);")
code = code.replace("         always @(posedge clk) if (wb_ibus_cyc && wb_ibus_ack) $display(\"TB_PC: %h\", wb_ibus_adr);\n         always @(posedge clk) if (wb_ibus_cyc && wb_ibus_ack) $display(\"TB_PC: %h\", wb_ibus_adr);", "         always @(posedge clk) if (wb_ibus_cyc && wb_ibus_ack) $display(\"TB_PC: %h\", wb_ibus_adr);")

with open('src/rtl/serv/serv_top.v', 'w') as f:
    f.write(code)
