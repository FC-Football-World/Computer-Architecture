`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/12/03 21:46:08
// Design Name: 
// Module Name: cla4
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

module cla4(
    input [3:0] gg, pp,
    input data_in,
    output ogg,
    output oper,
    output [4:1] data_out
);
    wire [4:0] carry; // ������ʼ���� data_in ������ carry_out
    assign carry[0] = data_in; // ��ʼ����

    // ʹ�� generate ������ɽ�λ�߼�
    genvar i;
    generate
        for (i = 1; i <= 4; i = i + 1) begin : generate_carry
            assign carry[i] = gg[i-1] | (pp[i-1] & carry[i-1]);
        end
    endgenerate

    // �������
    assign data_out = carry[4:1]; // ȡ���ɵĽ�λ�ź�
    assign ogg = carry[4];       // ���Ľ�λ�ź���Ϊ ogg
    assign oper = &pp;           // ���� pp Ϊ 1 ʱ��oper Ϊ 1
endmodule



