`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/12/03 21:42:50
// Design Name: 
// Module Name: add16
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


module add16(
    input [15:0] add1,          // �����ź�1��16λ��
    input [15:0] add2,          // �����ź�2��16λ��
    input data_in,              // �����źţ��������λ�ӷ��Ľ�λ����
    output ogg,                 // �����λ����ʾ���λ�Ľ�λ���
    output oper,                // ����������ʾ�Ƿ����������
    output [15:0] s             // ��������16λ��
);

    wire [4:1] c;               // ģ��֮��Ľ�λ�ź�
    wire [3:0] gg, pp;          // ÿ��4λģ��Ľ�λ���ɺʹ���
    
    genvar i;
    generate
        for (i = 0; i < 4; i = i + 1) begin : gen_add4
            if (i == 0) begin
                add4 add_1(add1[3:0], add2[3:0], data_in, gg[0], pp[0], s[3:0]);
            end else begin
                add4 add_i(add1[(i+1)*4-1:i*4], add2[(i+1)*4-1:i*4], c[i], gg[i], pp[i], s[(i+1)*4-1:i*4]);
            end
        end
    endgenerate
    
    cla4 cla4_inst(gg, pp, data_in, ogg, oper, c);
    
endmodule

