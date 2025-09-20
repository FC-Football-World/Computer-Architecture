`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/26 21:55:34
// Design Name: 
// Module Name: regfiles
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


module regfiles (
    input clk,
    input rst,
    input write,
    input [4:0] rn1,         // 读取寄存器1地址
    input [4:0] rn2,         // 读取寄存器2地址
    input [4:0] w_addr,      // 写寄存器地址
    input [4:0] r_addr,      // 读取寄存器3地址
    input [31:0] data_in,    // 写入数据
    output [31:0] data_out1, // 输出数据1
    output [31:0] data_out2, // 输出数据2
    output [31:0] data_out   // 输出数据3
);

    reg [31:0] regs[31:0];
    integer i;
   
    //从寄存器读取数据
    assign data_out = (r_addr)?regs[r_addr]:0;
    assign data_out1 = (rn1)?regs[rn1]:0;
    assign data_out2 = (rn2)?regs[rn2]:0;
    
    
    //将数据写入寄存器
    always@(negedge clk or posedge rst) begin
        if(rst==1) begin
            for(i=0;i<32;i=i+1) 
            begin
                regs[i]<=0; 
            end 
        end
        else if(w_addr != 0 && write) 
            regs[w_addr]<=data_in; 
    end
endmodule


