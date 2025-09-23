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


`define idle 1'b0 // CPU����״̬
`define exec 1'b1 // CPU����״̬

// ����ָ��Ĳ�����
`define NOP   4'b0000
`define HALT  4'b0001
`define ADD   4'b0010
`define LOAD  4'b1101
`define STORE 4'b1110
`define CMP   4'b0111
`define BZ    4'b1011
`define BN    4'b1001

module MEM (
    input clk,                    // ʱ��
    input reset,                  // ��λ�ź�
    input cpu_state,              // CPU ״̬
    input [15:0] mem_input,       // MEM �׶ε�����ָ��
    input [15:0] datain,          // ���������
    input [15:0] dst_regC1,       // EX �׶δ��ݵ�Ŀ��Ĵ���ֵ
    input nf,                     // ����־λ
    input zf,                     // ���־λ
    output reg [15:0] wb_input,   // WB �׶ε�����
    output reg [15:0] dst_regC2,  // ����Ŀ��Ĵ�����ֵ
    output [7:0] d_addr,          // ���ݵ�ַ
    output [15:0] dataout,        // ���������
    output is_branch,             // �Ƿ������ת�ı�־λ
    input [15:0] store_reg2       // �洢�Ĵ���ֵ
);

    // ���ݵ�ַ���������
    assign d_addr = dst_regC1[7:0];
    assign dataout = store_reg2;

    // ��ת�����жϣ�BN,BZָ�
    assign is_branch = (mem_input[15:12] == `BN && nf) ||
                       (mem_input[15:12] == `BZ && zf);

    // MEM �׶β����߼�
    always @(posedge clk or posedge reset) begin 
        if (reset) begin
            wb_input <= 16'b0000_0000_0000_0000;
            dst_regC2 <= 16'b0000_0000_0000_0000;
        end 
        else if (cpu_state == `exec) begin
            wb_input <= mem_input; // ������ָ��ݵ� WB �׶�
            dst_regC2 <= (mem_input[15:12] == `LOAD) ? datain : dst_regC1;
        end
    end

endmodule
