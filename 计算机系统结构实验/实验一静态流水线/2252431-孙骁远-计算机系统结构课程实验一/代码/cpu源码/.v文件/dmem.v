`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/29 22:12:52
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
    input clk,               // �洢��ʱ���ź�
    input ram_ena,           // �洢����Ч�ź�
    input wena,              // д��Ч�ź�
    input [7 : 0] addr,      // �����ַ
    input [15 : 0] data_in,  // д������
    output reg [15 : 0] data_out // �������
    );
    reg [15:0] memory [255:0];
    
    always @(*) begin
        if (ram_ena == 1'b1)
            data_out = memory[addr];
        else
            data_out = 16'bz;
    end
    
    always @ (posedge clk) begin
        if (ram_ena && wena)
            memory[addr] = data_in;
    end
    
endmodule
