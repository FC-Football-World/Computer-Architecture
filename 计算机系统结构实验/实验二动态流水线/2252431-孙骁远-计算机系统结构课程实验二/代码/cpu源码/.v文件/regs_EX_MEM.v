`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/26 21:57:14
// Design Name: 
// Module Name: regs_EX_MEM
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


module regs_EX_MEM(
    input clk,
    input rst,
    
    input dm_w_signal_ex,
    input write_ex, is_lw_ex, is_jal_ex, is_mul_ex,
    input [4:0] w_addr_ex,
    input [31:0] alu_ex, mul_ex, npc_ex, dm_wdata_ex,
    
    output reg dm_w_signal_mem = 1'b0,
    output reg write_mem = 1'b0,
    output reg is_lw_mem = 1'b0,
    output reg is_jal_mem = 1'b0,
    output reg is_mul_mem = 1'b0,
    output reg [4:0] w_addr_mem = 5'b0,
    output reg [31:0] alu_mem = 32'b0,
    output reg [31:0] mul_mem = 32'b0,
    output reg [31:0] npc_mem = 32'b0,
    output reg [31:0] dm_wdata_mem = 32'b0
);
    // 通用任务用于赋值或复位
    task assign_or_reset;
        input reset;
        begin
            dm_w_signal_mem <= reset ? 1'b0 : dm_w_signal_ex;
            write_mem <= reset ? 1'b0 : write_ex;
            is_lw_mem <= reset ? 1'b0 : is_lw_ex;
            is_jal_mem <= reset ? 1'b0 : is_jal_ex;
            is_mul_mem <= reset ? 1'b0 : is_mul_ex;
            w_addr_mem <= reset ? 5'b0 : w_addr_ex;
            alu_mem <= reset ? 32'b0 : alu_ex;
            mul_mem <= reset ? 32'b0 : mul_ex;
            npc_mem <= reset ? 32'b0 : npc_ex;
            dm_wdata_mem <= reset ? 32'b0 : dm_wdata_ex;
        end
    endtask

    // 主逻辑
    always @(posedge rst or posedge clk) begin
        if (rst) 
            assign_or_reset(1'b1); // 复位所有信号
        else 
            assign_or_reset(1'b0); // 更新信号
    end
endmodule

