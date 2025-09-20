`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/12/03 21:41:10
// Design Name: 
// Module Name: add32
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


module add32(
    input [31:0] add1,          // 输入信号1
    input [31:0] add2,          // 输入信号2
    input data_in,              // 输入信号，用于低位加法的进位输入
    output [31:0] res,          // 输出结果，32位宽
    output data_out             // 输出进位，表示最高位的进位输出
);
    wire [1:0] gg;
	wire [1:0] pp;
	wire TEMP;
	
	assign TEMP = gg[0]|(pp[0]&data_in);
	assign data_out = gg[1]|(pp[1]&gg[0])|(pp[1]&pp[0]&data_in);
	
	add16 add_1_inst(
	    .add1(add1[15:0]), 
	    .add2(add2[15:0]), 
	    .data_in(data_in), 
	    .ogg(gg[0]), 
	    .oper(pp[0]), 
	    .s(res[15:0])
	);
	
	add16 add_2_inst(
	.add1(add1[31:16]), 
	.add2(add2[31:16]), 
	.data_in(TEMP), 
	.ogg(gg[1]), 
	.oper(pp[1]), 
	.s(res[31:16])
	);
endmodule
