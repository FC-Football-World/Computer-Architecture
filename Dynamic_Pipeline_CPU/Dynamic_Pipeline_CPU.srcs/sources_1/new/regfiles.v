`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/26 21:55:34
// Design Name: 
// Module Name: regfiles
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


module regfiles (
    input clk,
    input rst,
    input write,
    input [4:0] rn1,         // ��ȡ�Ĵ���1��ַ
    input [4:0] rn2,         // ��ȡ�Ĵ���2��ַ
    input [4:0] w_addr,      // д�Ĵ�����ַ
    input [4:0] r_addr,      // ��ȡ�Ĵ���3��ַ
    input [31:0] data_in,    // д������
    output [31:0] data_out1, // �������1
    output [31:0] data_out2, // �������2
    output [31:0] data_out   // �������3
);

    reg [31:0] regs[31:0];
    integer i;
   
    //�ӼĴ�����ȡ����
    assign data_out = (r_addr)?regs[r_addr]:0;
    assign data_out1 = (rn1)?regs[rn1]:0;
    assign data_out2 = (rn2)?regs[rn2]:0;
    
    
    //������д��Ĵ���
    always@(negedge clk or posedge rst) begin
        if(rst==1) begin
            for(i=0;i<32;i=i+1) 
            begin
                regs[i]<=0; 
            end 
        end
        else if(w_addr != 0 && write) 
            regs[w_addr]<=data_in; 
    end
endmodule


