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

module EX (
    input clk,
    input reset,
    input cpu_state,
    input [15:0] ex_input,          // ����ָ��
    input [15:0] src_regA,          // Դ�Ĵ���A
    input [15:0] src_regB,          // Դ�Ĵ���B
    output reg [15:0] ALU_result,  // ALU������
    output reg cf_buf,             // ��λ��־
    output reg zf,                 // ���־
    output reg nf,                 // ����־
    output reg cf,                 //��λ��־
    output reg [15:0] dst_regC1,   // Ŀ��Ĵ���1
    input [15:0] store_reg1,        // �洢�Ĵ���ֵ
    output reg [15:0] store_reg2,  // �洢����
    output reg wena,               // дʹ���ź�
    output reg [15:0] mem_input    // MEM�׶�����
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
            cf_buf <= 1'b0; // ��ʼ����λ��־
        end else if (cpu_state == `exec) begin
            mem_input <= ex_input; // ������ָ��ݵ� MEM �׶�

            // Update dst_regC1 and flags for arithmetic operations
            case (ex_input[15:12])
                `ADD: begin
                    {cf_buf, ALU_result} <= src_regA + src_regB; // ִ�мӷ�
                    dst_regC1 <= ALU_result;
                end
                `CMP: begin
                    {cf_buf, ALU_result} <= src_regA - src_regB; // ִ�бȽ�
                    dst_regC1 <= ALU_result;
                end
                `STORE: begin
                    wena <= 1'b1; // ����д����
                    store_reg2 <= store_reg1; // ����Ҫ�洢������
                end
                default: begin
                    ALU_result <= 16'b0; // ����ָ��Ĭ��Ϊ0
                    dst_regC1 <= 16'b0; // ����Ŀ��Ĵ���1Ϊ0
                end
            endcase

            // ���±�־λ
            zf <= (ALU_result == 16'b0);
            nf <= ALU_result[15];
        end
    end
    
endmodule
