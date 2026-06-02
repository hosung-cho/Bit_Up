with open('src/rtl/serv/serv_rf_ram.v', 'r') as f:
    code = f.read()

# Make it capture req_key immediately when tx_state is 0 and it launches
code = code.replace("tx_state <= FRAME_BITS;", "tx_state <= FRAME_BITS;\n               tx_buffer <= req_key;")
code = code.replace("if (tx_state == FRAME_BITS) begin\n            tx_buffer <= req_key;\n         end else begin\n            tx_buffer <= {1'b0, tx_buffer[frame_bits-1:1]};\n         end", "tx_buffer <= {1'b0, tx_buffer[frame_bits-1:1]};")

with open('src/rtl/serv/serv_rf_ram.v', 'w') as f:
    f.write(code)
