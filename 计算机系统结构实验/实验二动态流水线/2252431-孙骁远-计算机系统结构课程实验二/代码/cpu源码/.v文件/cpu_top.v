`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/26 21:50:14
// Design Name: 
// Module Name: cpu_top
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

module cpu_top(
    input clk,          // ʱ���ź�
    input rst,          // ��λ�ź�
    input [4:0] raddr,  // �Ĵ�����ַ
    output [31:0] instr,// ָ�����
    output [31:0] pc,   // ���������
    output [31:0] odata // �������
    );
    
    wire [31:0] address;
    assign address = pc - 32'h00400000;//��ȥƫ����
    
    cpu cpu_inst(
        .clk(clk),        // ʱ���ź�
        .rst(rst),        // ��λ�ź�
        .instr(instr),    // ����ָ��
        .raddr(raddr),    // �Ĵ�����ַ
        .pc(pc),          // ���������
        .odata(odata)     // �������
    );
    imem imem_inst(
        .pc(address[12:2]),// ��ȡ��10λ��ַ
        .instr(instr)      // ���ָ��
    );
endmodule
