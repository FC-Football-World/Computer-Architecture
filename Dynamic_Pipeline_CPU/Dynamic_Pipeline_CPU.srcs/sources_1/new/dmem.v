`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/26 21:54:33
// Design Name: 
// Module Name: dmem
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


module dmem(
    input clk,                // ʱ���ź�
    input rst,                // ��λ�ź�
    input write,              // д��ʹ���ź�
	input [31:0] addr,        // ��ַ�ź�
    input [31:0] data_in,     // д������
    output [31:0] data_out    // �������
    );
    
    integer i;
    reg [31:0] memory[0:2047];
    wire [31:0] addr_TRUE;
    
    assign data_out = memory[addr_TRUE[10:0]];
    assign addr_true = addr - 32'h10010000;
    
    always @(posedge rst or negedge clk)  begin
        if(rst) 
        begin
            for(i=0;i<2048;i=i+1) 
                memory[i] <= 0; 
        end
        else if(write==1) 
            memory[addr_TRUE[10:0]] <= data_in; 
    end
endmodule
