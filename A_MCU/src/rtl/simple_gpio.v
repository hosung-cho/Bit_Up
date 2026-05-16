/*
 * simple_gpio.v : small memory-mapped GPIO slave
 *
 * Register map, relative to the selected GPIO base address:
 *   0x0 DATA_OUT RW
 *   0x4 DATA_IN  RO
 *   0x8 OE       RW
 */
`default_nettype none
module simple_gpio (
    input  wire        i_clk,
    input  wire        i_rst,

    input  wire        i_cyc,
    input  wire        i_we,
    input  wire [3:0]  i_sel,
    input  wire [3:0]  i_adr,
    input  wire [31:0] i_dat,
    output reg  [31:0] o_rdt,
    output reg         o_ack,

    input  wire [7:0]  i_gpio,
    output reg  [7:0]  o_gpio,
    output reg  [7:0]  o_gpio_oe
);

    wire access_data_out = (i_adr[3:2] == 2'd0);
    wire access_data_in  = (i_adr[3:2] == 2'd1);
    wire access_oe       = (i_adr[3:2] == 2'd2);

    always @(posedge i_clk) begin
        o_ack <= 1'b0;

        if (i_cyc && !o_ack) begin
            o_ack <= 1'b1;

            if (i_we) begin
                if (access_data_out && i_sel[0])
                    o_gpio <= i_dat[7:0];
                if (access_oe && i_sel[0])
                    o_gpio_oe <= i_dat[7:0];
            end

            if (access_data_out)
                o_rdt <= {24'b0, o_gpio};
            else if (access_data_in)
                o_rdt <= {24'b0, i_gpio};
            else if (access_oe)
                o_rdt <= {24'b0, o_gpio_oe};
            else
                o_rdt <= 32'b0;
        end

        if (i_rst) begin
            o_rdt <= 32'b0;
            o_ack <= 1'b0;
            o_gpio <= 8'b0;
            o_gpio_oe <= 8'b0;
        end
    end

endmodule
`default_nettype wire
