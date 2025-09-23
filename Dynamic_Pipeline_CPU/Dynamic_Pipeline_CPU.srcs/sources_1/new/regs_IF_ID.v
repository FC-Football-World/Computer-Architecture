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
    input clk, //ʱ���ź�
    input rst, //��λ�ź�
    input [31:0] npc_if, //���������ֵ
    input [31:0] instr_if, //ָ���ȡ�׶�
    output reg [31:0] npc_id = 32'b0,//����׶εĳ��������ֵ
    output reg [31:0] instr_id = 32'b0 //����׶ε�ָ��
    );
    
    localparam RESET_VALUE = 32'b0;
    always @(posedge clk or posedge rst) begin
        if(rst==1) begin
            //��λָ��
            {npc_id, instr_id} <= {RESET_VALUE, RESET_VALUE}; 
        end 
        else  begin
            //����ָ��
            {npc_id, instr_id} <= {npc_if, instr_if}; 
        end
    end
endmodule
