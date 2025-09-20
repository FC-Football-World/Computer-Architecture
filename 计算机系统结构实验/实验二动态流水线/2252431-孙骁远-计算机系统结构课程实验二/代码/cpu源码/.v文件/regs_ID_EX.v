`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/26 21:56:37
// Design Name: 
// Module Name: regs_ID_EX
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


module regs_ID_EX(
    input clk,
    input rst,
    
    input dm_w_signal_ID,
    input write_ID, is_lw_ID, is_jal_ID, is_mul_ID, mux_alu1_ID,
    input [1:0] mux_alu2_ID,
    input [3:0] aluc_ID,
    input [31:0] npc_ID,
    input [4:0] w_addr_ID,
    input [31:0] shamt_ID, simmediate_ID, uimmediate_ID, rs_wire_ID, rt_wire_ID, dm_wdata_ID,
    
    output reg dm_w_signal_EX = 1'b0,
    output reg write_EX = 1'b0,
    output reg is_lw_EX = 1'b0,
    output reg is_jal_EX = 1'b0,
    output reg is_mul_EX = 1'b0,
    output reg mux_alu1_EX = 1'b0,
    output reg [1:0] mux_alu2_EX = 2'b0,
    output reg [3:0] aluc_EX = 4'b0,
    output reg [31:0] npc_EX = 32'b0,
    output reg [4:0] w_addr_EX = 5'b0,
    output reg [31:0] shamt_EX = 32'b0,
    output reg [31:0] simmediate_EX = 32'b0,
    output reg [31:0] uimmediate_EX = 32'b0,
    output reg [31:0] rs_wire_EX = 32'b0,
    output reg [31:0] rt_wire_EX = 32'b0,
    output reg [31:0] dm_wdata_EX = 32'b0
);
    // 通用任务用于赋值或复位
    task assign_or_reset;
        input reset;
        begin
            dm_w_signal_EX <= reset ? 1'b0 : dm_w_signal_ID;
            write_EX <= reset ? 1'b0 : write_ID;
            is_lw_EX <= reset ? 1'b0 : is_lw_ID;
            is_jal_EX <= reset ? 1'b0 : is_jal_ID;
            is_mul_EX <= reset ? 1'b0 : is_mul_ID;
            mux_alu1_EX <= reset ? 1'b0 : mux_alu1_ID;
            mux_alu2_EX <= reset ? 2'b0 : mux_alu2_ID;
            aluc_EX <= reset ? 4'b0 : aluc_ID;
            npc_EX <= reset ? 32'b0 : npc_ID;
            w_addr_EX <= reset ? 5'b0 : w_addr_ID;
            shamt_EX <= reset ? 32'b0 : shamt_ID;
            simmediate_EX <= reset ? 32'b0 : simmediate_ID;
            uimmediate_EX <= reset ? 32'b0 : uimmediate_ID;
            rs_wire_EX <= reset ? 32'b0 : rs_wire_ID;
            rt_wire_EX <= reset ? 32'b0 : rt_wire_ID;
            dm_wdata_EX <= reset ? 32'b0 : dm_wdata_ID;
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



