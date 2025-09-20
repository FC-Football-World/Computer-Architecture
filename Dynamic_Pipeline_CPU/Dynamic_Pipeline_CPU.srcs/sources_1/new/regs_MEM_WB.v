`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/26 21:57:48
// Design Name: 
// Module Name: regs_MEM_WB
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


module regs_MEM_WB(
    input clk,
    input rst,
    
    input write_me, is_lw_me, is_jal_me, is_mul_me,
    input [4:0] w_addr_me,
    input [31:0] alu_me, mul_me, npc_me, dm_rdata_me,
    
    output reg write_w = 1'b0,
    output reg is_lw_w = 1'b0,
    output reg is_jal_w = 1'b0,
    output reg is_mul_w = 1'b0,
    output reg [4:0] w_addr_w = 5'b0,
    output reg [31:0] alu_w = 32'b0,
    output reg [31:0] mul_w = 32'b0,
    output reg [31:0] npc_w = 32'b0,
    output reg [31:0] dm_rdata_w = 32'b0
);

    // 定义一个任务，用于赋值或复位
    task assign_or_reset;
        input reset;
        begin
            write_w <= reset ? 1'b0 : write_me;
            is_lw_w <= reset ? 1'b0 : is_lw_me;
            is_jal_w <= reset ? 1'b0 : is_jal_me;
            is_mul_w <= reset ? 1'b0 : is_mul_me;
            w_addr_w <= reset ? 5'b0 : w_addr_me;
            alu_w <= reset ? 32'b0 : alu_me;
            mul_w <= reset ? 32'b0 : mul_me;
            npc_w <= reset ? 32'b0 : npc_me;
            dm_rdata_w <= reset ? 32'b0 : dm_rdata_me;
        end
    endtask

    // 使用任务进行逻辑处理
    always @(posedge rst or posedge clk) begin
        if (rst)
            assign_or_reset(1'b1); // 复位信号
        else
            assign_or_reset(1'b0); // 更新信号
    end
endmodule
