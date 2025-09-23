`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/26 21:52:55
// Design Name: 
// Module Name: PC_reg
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


module PC_reg(
    input clk,                   //ʱ���ź�
    input rst,                   //��λ�ź�
    input [31:0] data_in,        //��������
    output reg [31:0] data_out  //�������
    );
    
    localparam RESET_VALUE = 32'h00400000;
    always@(posedge rst or posedge clk) begin
        if(rst==1)
            data_out <= RESET_VALUE;
        else
            data_out <= data_in;  
    end
endmodule
