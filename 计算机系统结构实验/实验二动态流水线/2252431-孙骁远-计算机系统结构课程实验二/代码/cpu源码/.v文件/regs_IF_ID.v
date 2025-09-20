`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/26 21:56:09
// Design Name: 
// Module Name: regs_IF_ID
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


module regs_IF_ID(
    input clk, //时钟信号
    input rst, //复位信号
    input [31:0] npc_if, //程序计数器值
    input [31:0] instr_if, //指令获取阶段
    output reg [31:0] npc_id = 32'b0,//解码阶段的程序计数器值
    output reg [31:0] instr_id = 32'b0 //解码阶段的指令
    );
    
    localparam RESET_VALUE = 32'b0;
    always @(posedge clk or posedge rst) begin
        if(rst==1) begin
            //复位指令
            {npc_id, instr_id} <= {RESET_VALUE, RESET_VALUE}; 
        end 
        else  begin
            //更新指令
            {npc_id, instr_id} <= {npc_if, instr_if}; 
        end
    end
endmodule
