`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/29 22:14:21
// Design Name: 
// Module Name: MEM
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


`define idle 1'b0 // CPU待机状态
`define exec 1'b1 // CPU运行状态

// 定义指令的操作码
`define NOP   4'b0000
`define HALT  4'b0001
`define ADD   4'b0010
`define LOAD  4'b1101
`define STORE 4'b1110
`define CMP   4'b0111
`define BZ    4'b1011
`define BN    4'b1001

module MEM (
    input clk,                    // 时钟
    input reset,                  // 复位信号
    input cpu_state,              // CPU 状态
    input [15:0] mem_input,       // MEM 阶段的输入指令
    input [15:0] datain,          // 输入的数据
    input [15:0] dst_regC1,       // EX 阶段传递的目标寄存器值
    input nf,                     // 负标志位
    input zf,                     // 零标志位
    output reg [15:0] wb_input,   // WB 阶段的输入
    output reg [15:0] dst_regC2,  // 最终目标寄存器的值
    output [7:0] d_addr,          // 数据地址
    output [15:0] dataout,        // 输出的数据
    output is_branch,             // 是否进行跳转的标志位
    input [15:0] store_reg2       // 存储寄存器值
);

    // 数据地址和输出数据
    assign d_addr = dst_regC1[7:0];
    assign dataout = store_reg2;

    // 跳转条件判断（BN,BZ指令）
    assign is_branch = (mem_input[15:12] == `BN && nf) ||
                       (mem_input[15:12] == `BZ && zf);

    // MEM 阶段操作逻辑
    always @(posedge clk or posedge reset) begin 
        if (reset) begin
            wb_input <= 16'b0000_0000_0000_0000;
            dst_regC2 <= 16'b0000_0000_0000_0000;
        end 
        else if (cpu_state == `exec) begin
            wb_input <= mem_input; // 将输入指令传递到 WB 阶段
            dst_regC2 <= (mem_input[15:12] == `LOAD) ? datain : dst_regC1;
        end
    end

endmodule
