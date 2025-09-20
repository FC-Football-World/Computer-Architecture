`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/12/03 21:45:31
// Design Name: 
// Module Name: add1
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


module add1(
	input add1, add2,//两个操作数
	input c,
	//级联生成信号
	output gg,	
	output pp,	
	output data_out//输出结果
	);
	assign pp = add1 | add2;
	assign data_out = add1 ^ add2 ^ c;
	assign gg = add1 & add2;
endmodule
