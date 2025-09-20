`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/26 21:54:33
// Design Name: 
// Module Name: dmem
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


module dmem(
    input clk,                // 时钟信号
    input rst,                // 复位信号
    input write,              // 写入使能信号
	input [31:0] addr,        // 地址信号
    input [31:0] data_in,     // 写入数据
    output [31:0] data_out    // 输出数据
    );
    
    integer i;
    reg [31:0] memory[0:2047];
    wire [31:0] addr_TRUE;
    
    assign data_out = memory[addr_TRUE[10:0]];
    assign addr_true = addr - 32'h10010000;
    
    always @(posedge rst or negedge clk)  begin
        if(rst) 
        begin
            for(i=0;i<2048;i=i+1) 
                memory[i] <= 0; 
        end
        else if(write==1) 
            memory[addr_TRUE[10:0]] <= data_in; 
    end
endmodule
