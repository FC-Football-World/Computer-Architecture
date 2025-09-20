`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/26 21:50:14
// Design Name: 
// Module Name: cpu_top
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

module cpu_top(
    input clk,          // 时钟信号
    input rst,          // 复位信号
    input [4:0] raddr,  // 寄存器地址
    output [31:0] instr,// 指令输出
    output [31:0] pc,   // 程序计数器
    output [31:0] odata // 数据输出
    );
    
    wire [31:0] address;
    assign address = pc - 32'h00400000;//减去偏移量
    
    cpu cpu_inst(
        .clk(clk),        // 时钟信号
        .rst(rst),        // 复位信号
        .instr(instr),    // 输入指令
        .raddr(raddr),    // 寄存器地址
        .pc(pc),          // 程序计数器
        .odata(odata)     // 输出数据
    );
    imem imem_inst(
        .pc(address[12:2]),// 提取高10位地址
        .instr(instr)      // 输出指令
    );
endmodule
