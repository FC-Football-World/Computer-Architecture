`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/29 22:12:52
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
    input clk,               // 存储器时钟信号
    input ram_ena,           // 存储器有效信号
    input wena,              // 写有效信号
    input [7 : 0] addr,      // 输入地址
    input [15 : 0] data_in,  // 写入数据
    output reg [15 : 0] data_out // 输出数据
    );
    reg [15:0] memory [255:0];
    
    always @(*) begin
        if (ram_ena == 1'b1)
            data_out = memory[addr];
        else
            data_out = 16'bz;
    end
    
    always @ (posedge clk) begin
        if (ram_ena && wena)
            memory[addr] = data_in;
    end
    
endmodule
