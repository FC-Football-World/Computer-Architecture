`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/29 22:14:09
// Design Name: 
// Module Name: IF
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


`define NOP 4'b0000
`define exec 1'b1

module IF(
    input clk,                       // 时钟信号
    input reset,                     // 复位信号
    input [15:0] instruction,        // 输入的指令
    input cpu_state,                 // 当前 CPU 状态
    input is_branch,                 // 跳转标志位
    input [15:0] dst_regC1,          // 目标寄存器 C1 的值
    output reg [15:0] id_input,      // 传递到 ID 阶段的指令
    output reg [7:0] i_addr          // 指令地址
);

    // IF 阶段逻辑
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            id_input <= 16'b0000_0000_0000_0000;
            i_addr <= 8'b0000_0000;
        end else if (cpu_state == `exec) begin
            id_input <= instruction;
            i_addr <= is_branch ? dst_regC1[7:0] : i_addr + 1;
        end
    end

endmodule

