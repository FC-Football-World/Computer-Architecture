`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/12/03 21:42:50
// Design Name: 
// Module Name: add16
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


module add16(
    input [15:0] add1,          // 输入信号1，16位宽
    input [15:0] add2,          // 输入信号2，16位宽
    input data_in,              // 输入信号，用于最低位加法的进位输入
    output ogg,                 // 输出进位，表示最高位的进位输出
    output oper,                // 输出溢出，表示是否有溢出发生
    output [15:0] s             // 输出结果，16位宽
);

    wire [4:1] c;               // 模块之间的进位信号
    wire [3:0] gg, pp;          // 每个4位模块的进位生成和传递
    
    genvar i;
    generate
        for (i = 0; i < 4; i = i + 1) begin : gen_add4
            if (i == 0) begin
                add4 add_1(add1[3:0], add2[3:0], data_in, gg[0], pp[0], s[3:0]);
            end else begin
                add4 add_i(add1[(i+1)*4-1:i*4], add2[(i+1)*4-1:i*4], c[i], gg[i], pp[i], s[(i+1)*4-1:i*4]);
            end
        end
    endgenerate
    
    cla4 cla4_inst(gg, pp, data_in, ogg, oper, c);
    
endmodule

