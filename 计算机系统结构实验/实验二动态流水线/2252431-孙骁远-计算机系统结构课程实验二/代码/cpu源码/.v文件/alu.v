`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/26 21:54:07
// Design Name: 
// Module Name: alu
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


module alu(
    input [31:0] alu1,//��1��������
    input [31:0] alu2,//��2��������
    input [3:0] aluc, //���ֲ���
    output reg [31:0] result//���
);

    wire [31:0] result0;
    wire [31:0] result1;
    //����add
    add add_inst(
        .add1(alu1), 
        .add2(alu2), 
        .aluc(aluc[0]),
        .res(result0)
    );
    //����luslt
    luislt luislt_inst(
        .alu1(alu1), 
        .alu2(alu2), 
        .aluc(aluc[1:0]),
        .res(result1)
    );

function [31:0] shift_operation(
        input [31:0] value,
        input [31:0] shift,
        input is_arithmetic,  // 1��ʾ��������, 0��ʾ�߼����ƻ�����
        input is_left         // 1��ʾ����, 0��ʾ����
    );
        reg [31:0] temp;
        integer i;
        begin
            temp = value;
            for (i = 0; i < 5; i = i + 1) begin
                if (shift[i]) begin
                    if (is_left)
                        temp = temp << (1 << i); // ����
                    else if (is_arithmetic)
                        temp = $signed(temp) >>> (1 << i); // ��������
                    else
                        temp = temp >> (1 << i); // �߼�����
                end
            end
            shift_operation = temp;
        end
    endfunction

    // result �������
    always @(*) begin
        case (aluc[3:2])
            2'b00: result = result0;
            2'b10: result = result1;
            2'b01: begin
                case (aluc[1:0])
                    2'b00: result = alu1 & alu2;
                    2'b01: result = alu1 | alu2;
                    2'b10: result = alu1 ^ alu2;
                    default: result = ~(alu1 | alu2);
                endcase
            end
            2'b11: begin
                case (aluc[1:0])
                    2'b00: result = shift_operation(alu2, alu1, 1'b1, 1'b0); // ��������
                    2'b01: result = shift_operation(alu2, alu1, 1'b0, 1'b0); // �߼�����
                    default: result = shift_operation(alu2, alu1, 1'b0, 1'b1); // ����
                endcase
            end
            default: result = 32'b0;
        endcase
    end
endmodule
