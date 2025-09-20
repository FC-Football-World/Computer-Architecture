`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/26 21:53:19
// Design Name: 
// Module Name: mux
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

module mux (
    input [4:0] rs,
    input [4:0] rt,
    input [31:0] rs_wire,
    input [31:0] rt_wire,

    input [31:0] npc_EX,
    input [31:0] mul_EX,
    input [31:0] alu_EX,
    input [4:0] w_addr_EX,
    input write_EX,
    input is_lw_EX,
    input is_jal_EX,
    input is_mul_EX,

    input [31:0] npc_MEM,
    input [31:0] mul_MEM,
    input [31:0] alu_MEM,
    input [4:0] w_addr_MEM,
    input write_MEM,
    input is_lw_MEM,
    input is_jal_MEM,
    input is_mul_MEM,

    output reg [31:0] rs_mux = 32'b0,
    output reg [31:0] rt_mux = 32'b0,
    output reg conflict_lw = 1'b0
);

    reg conflict_lw_rs = 1'b0;
    reg conflict_lw_rt = 1'b0;

    // 公共任务：处理寄存器的 MUX 逻辑
    task handle_mux(
        input [4:0] reg_addr,
        input [31:0] wire_data,
        input [31:0] npc_stage,
        input [31:0] mul_stage,
        input [31:0] alu_stage,
        input [4:0] w_addr_stage,
        input write_stage,
        input is_lw_stage,
        input is_jal_stage,
        input is_mul_stage,
        output reg [31:0] mux_out,
        output reg conflict_lw_out
    );
    begin
        if (write_stage && w_addr_stage == reg_addr && reg_addr != 5'b0) begin
            if (is_jal_stage) begin
                conflict_lw_out = 1'b0;
                mux_out = npc_stage;
            end else if (is_mul_stage) begin
                conflict_lw_out = 1'b0;
                mux_out = mul_stage;
            end else if (is_lw_stage) begin
                conflict_lw_out = 1'b1;
                mux_out = 32'b0;
            end else begin
                conflict_lw_out = 1'b0;
                mux_out = alu_stage;
            end
        end else begin
            conflict_lw_out = 1'b0;
            mux_out = wire_data;
        end
    end
    endtask

    always @(*) begin
        conflict_lw = conflict_lw_rs || conflict_lw_rt;
    end

    // 处理 rs 寄存器的 MUX 逻辑
    always @(*) begin
        handle_mux(
            rs, rs_wire,
            npc_EX, mul_EX, alu_EX, w_addr_EX, write_EX, is_lw_EX, is_jal_EX, is_mul_EX,
            rs_mux, conflict_lw_rs
        );
        if (!conflict_lw_rs) begin
            handle_mux(
                rs, rs_mux,
                npc_MEM, mul_MEM, alu_MEM, w_addr_MEM, write_MEM, is_lw_MEM, is_jal_MEM, is_mul_MEM,
                rs_mux, conflict_lw_rs
            );
        end
    end
    // 处理 rt 寄存器的 MUX 逻辑
    always @(*) begin
        handle_mux(
            rt, rt_wire,
            npc_EX, mul_EX, alu_EX, w_addr_EX, write_EX, is_lw_EX, is_jal_EX, is_mul_EX,
            rt_mux, conflict_lw_rt
        );
        if (!conflict_lw_rt) begin
            handle_mux(
                rt, rt_mux,
                npc_MEM, mul_MEM, alu_MEM, w_addr_MEM, write_MEM, is_lw_MEM, is_jal_MEM, is_mul_MEM,
                rt_mux, conflict_lw_rt
            );
        end
    end
endmodule

