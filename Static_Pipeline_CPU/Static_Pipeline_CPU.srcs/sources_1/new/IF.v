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
    input clk,                       // ʱ���ź�
    input reset,                     // ��λ�ź�
    input [15:0] instruction,        // �����ָ��
    input cpu_state,                 // ��ǰ CPU ״̬
    input is_branch,                 // ��ת��־λ
    input [15:0] dst_regC1,          // Ŀ��Ĵ��� C1 ��ֵ
    output reg [15:0] id_input,      // ���ݵ� ID �׶ε�ָ��
    output reg [7:0] i_addr          // ָ���ַ
);

    // IF �׶��߼�
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

