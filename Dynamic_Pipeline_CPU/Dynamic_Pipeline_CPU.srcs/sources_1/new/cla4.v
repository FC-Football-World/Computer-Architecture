`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/12/03 21:46:08
// Design Name: 
// Module Name: cla4
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

module cla4(
    input [3:0] gg, pp,
    input data_in,
    output ogg,
    output oper,
    output [4:1] data_out
);
    wire [4:0] carry; // 包括初始输入 data_in 和最终 carry_out
    assign carry[0] = data_in; // 初始输入

    // 使用 generate 语句生成进位逻辑
    genvar i;
    generate
        for (i = 1; i <= 4; i = i + 1) begin : generate_carry
            assign carry[i] = gg[i-1] | (pp[i-1] & carry[i-1]);
        end
    endgenerate

    // 连接输出
    assign data_out = carry[4:1]; // 取生成的进位信号
    assign ogg = carry[4];       // 最后的进位信号作为 ogg
    assign oper = &pp;           // 所有 pp 为 1 时，oper 为 1
endmodule



