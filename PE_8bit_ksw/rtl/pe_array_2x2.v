`timescale 1ns/1ps

module pe_array_2x2 #(
    parameter DATA_WIDTH = 4,
    parameter ACC_WIDTH  = 10
) (
    input  wire                     clk,
    input  wire                     rst_n,
    input  wire                     start,
    input  wire [4*DATA_WIDTH-1:0]  a_flat,
    input  wire [4*DATA_WIDTH-1:0]  b_flat,
    output reg                      busy,
    output reg                      done,
    output wire [4*ACC_WIDTH-1:0]   c_flat
);
    localparam PRODUCT_WIDTH = 2 * DATA_WIDTH;

    reg [2:0] op_idx;
    reg [ACC_WIDTH-1:0] c00;
    reg [ACC_WIDTH-1:0] c01;
    reg [ACC_WIDTH-1:0] c10;
    reg [ACC_WIDTH-1:0] c11;

    wire [DATA_WIDTH-1:0] a00 = a_flat[0*DATA_WIDTH +: DATA_WIDTH];
    wire [DATA_WIDTH-1:0] a01 = a_flat[1*DATA_WIDTH +: DATA_WIDTH];
    wire [DATA_WIDTH-1:0] a10 = a_flat[2*DATA_WIDTH +: DATA_WIDTH];
    wire [DATA_WIDTH-1:0] a11 = a_flat[3*DATA_WIDTH +: DATA_WIDTH];

    wire [DATA_WIDTH-1:0] b00 = b_flat[0*DATA_WIDTH +: DATA_WIDTH];
    wire [DATA_WIDTH-1:0] b01 = b_flat[1*DATA_WIDTH +: DATA_WIDTH];
    wire [DATA_WIDTH-1:0] b10 = b_flat[2*DATA_WIDTH +: DATA_WIDTH];
    wire [DATA_WIDTH-1:0] b11 = b_flat[3*DATA_WIDTH +: DATA_WIDTH];

    reg [DATA_WIDTH-1:0] mac_a;
    reg [DATA_WIDTH-1:0] mac_b;
    wire [PRODUCT_WIDTH-1:0] product = mac_a * mac_b;
    wire [ACC_WIDTH-1:0] product_ext = {{(ACC_WIDTH-PRODUCT_WIDTH){1'b0}}, product};

    assign c_flat[0*ACC_WIDTH +: ACC_WIDTH] = c00;
    assign c_flat[1*ACC_WIDTH +: ACC_WIDTH] = c01;
    assign c_flat[2*ACC_WIDTH +: ACC_WIDTH] = c10;
    assign c_flat[3*ACC_WIDTH +: ACC_WIDTH] = c11;

    always @(*) begin
        case (op_idx)
            3'd0: begin mac_a = a00; mac_b = b00; end
            3'd1: begin mac_a = a01; mac_b = b10; end
            3'd2: begin mac_a = a00; mac_b = b01; end
            3'd3: begin mac_a = a01; mac_b = b11; end
            3'd4: begin mac_a = a10; mac_b = b00; end
            3'd5: begin mac_a = a11; mac_b = b10; end
            3'd6: begin mac_a = a10; mac_b = b01; end
            default: begin mac_a = a11; mac_b = b11; end
        endcase
    end

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            busy   <= 1'b0;
            done   <= 1'b0;
            op_idx <= 3'd0;
            c00    <= {ACC_WIDTH{1'b0}};
            c01    <= {ACC_WIDTH{1'b0}};
            c10    <= {ACC_WIDTH{1'b0}};
            c11    <= {ACC_WIDTH{1'b0}};
        end else begin
            if (start && !busy) begin
                busy   <= 1'b1;
                done   <= 1'b0;
                op_idx <= 3'd0;
                c00    <= {ACC_WIDTH{1'b0}};
                c01    <= {ACC_WIDTH{1'b0}};
                c10    <= {ACC_WIDTH{1'b0}};
                c11    <= {ACC_WIDTH{1'b0}};
            end else if (busy) begin
                case (op_idx)
                    3'd0, 3'd1: c00 <= c00 + product_ext;
                    3'd2, 3'd3: c01 <= c01 + product_ext;
                    3'd4, 3'd5: c10 <= c10 + product_ext;
                    default:    c11 <= c11 + product_ext;
                endcase

                if (op_idx == 3'd7) begin
                    busy   <= 1'b0;
                    done   <= 1'b1;
                    op_idx <= 3'd0;
                end else begin
                    op_idx <= op_idx + 3'd1;
                end
            end
        end
    end
endmodule
