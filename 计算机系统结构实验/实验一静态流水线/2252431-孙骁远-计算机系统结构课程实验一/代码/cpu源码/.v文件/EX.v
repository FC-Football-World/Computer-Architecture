`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/29 22:14:29
// Design Name: 
// Module Name: EX
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

module EX (
    input clk,
    input reset,
    input cpu_state,
    input [15:0] ex_input,          // 输入指令
    input [15:0] src_regA,          // 源寄存器A
    input [15:0] src_regB,          // 源寄存器B
    output reg [15:0] ALU_result,  // ALU运算结果
    output reg cf_buf,             // 进位标志
    output reg zf,                 // 零标志
    output reg nf,                 // 负标志
    output reg cf,                 //进位标志
    output reg [15:0] dst_regC1,   // 目标寄存器1
    input [15:0] store_reg1,        // 存储寄存器值
    output reg [15:0] store_reg2,  // 存储数据
    output reg wena,               // 写使能信号
    output reg [15:0] mem_input    // MEM阶段输入
);

    // Perform operations in the EX stage
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            mem_input <= {`NOP, 12'b0};
            dst_regC1 <= 16'b0;
            store_reg2 <= 16'b0;
            wena <= 1'b0;
            zf <= 1'b0;
            nf <= 1'b0;
            cf_buf <= 1'b0; // 初始化进位标志
        end else if (cpu_state == `exec) begin
            mem_input <= ex_input; // 将输入指令传递到 MEM 阶段

            // Update dst_regC1 and flags for arithmetic operations
            case (ex_input[15:12])
                `ADD: begin
                    {cf_buf, ALU_result} <= src_regA + src_regB; // 执行加法
                    dst_regC1 <= ALU_result;
                end
                `CMP: begin
                    {cf_buf, ALU_result} <= src_regA - src_regB; // 执行比较
                    dst_regC1 <= ALU_result;
                end
                `STORE: begin
                    wena <= 1'b1; // 允许写操作
                    store_reg2 <= store_reg1; // 保存要存储的数据
                end
                default: begin
                    ALU_result <= 16'b0; // 其他指令默认为0
                    dst_regC1 <= 16'b0; // 保持目标寄存器1为0
                end
            endcase

            // 更新标志位
            zf <= (ALU_result == 16'b0);
            nf <= ALU_result[15];
        end
    end
    
endmodule
