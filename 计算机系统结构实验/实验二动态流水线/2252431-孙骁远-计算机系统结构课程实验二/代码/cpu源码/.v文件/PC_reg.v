`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/26 21:52:55
// Design Name: 
// Module Name: PC_reg
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


module PC_reg(
    input clk,                   //时钟信号
    input rst,                   //复位信号
    input [31:0] data_in,        //输入数据
    output reg [31:0] data_out  //输出数据
    );
    
    localparam RESET_VALUE = 32'h00400000;
    always@(posedge rst or posedge clk) begin
        if(rst==1)
            data_out <= RESET_VALUE;
        else
            data_out <= data_in;  
    end
endmodule
