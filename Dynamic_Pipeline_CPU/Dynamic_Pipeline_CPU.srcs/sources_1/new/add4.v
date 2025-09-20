`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/12/03 21:45:07
// Design Name: 
// Module Name: add4
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module add4(
    input [3:0] add1, add2,
    input data_in,
    output ogg,
    output oper,
    output [3:0] s
);
    wire [3:0] gg;
    wire [3:0] pp;
    wire [4:1] c;

    genvar i;
    generate
        for (i = 0; i < 4; i = i + 1) begin : add_block
            if (i == 0) 
                add1 u_add(add1[i], add2[i], data_in, gg[i], pp[i], s[i]);
            else 
                add1 u_add(add1[i], add2[i], c[i], gg[i], pp[i], s[i]);
        end
    endgenerate

    // cla4模块负责生成进位和最终输出
    cla4 u_cla4(gg, pp, data_in, ogg, oper, c);
endmodule

