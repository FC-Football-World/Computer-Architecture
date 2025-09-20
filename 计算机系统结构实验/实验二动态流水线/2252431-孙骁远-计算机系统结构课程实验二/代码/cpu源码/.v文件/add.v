`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/26 21:55:04
// Design Name: 
// Module Name: add
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


module add(
	input [31:0] add1,//第一个操作数
	input [31:0] add2,//第二个操作数
	input aluc,//运算符
	output [31:0] res//结果
	);
	
	wire c_IN, c_OUT;
	wire [31:0] b_real;
	assign c_IN = aluc ? 1: 0;
	
	neg32 neg32_inst(
	    .data_in(add2), 
	    .s(aluc), 
	    .data_out(b_real)
	);
	
	add32 add32_inst(
	    .add1(add1), 
	    .add2(add2), 
	    .data_in(c_IN), 
	    .res(res), 
	    .data_out(c_OUT)
	);
	
endmodule
