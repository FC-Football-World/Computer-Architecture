`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/28 19:50:48
// Design Name: 
// Module Name: seg7x16
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

module seg7x16(
    input clk,           //ʱ���ź�
	input reset,         //��λ�ź�
	input cs,            //Ƭѡ�ź�
	input [31:0] i_data, //��Ҫ��������������
	output [7:0] o_seg,  //�������
	output [7:0] o_sel   //Ƭѡ�ź�
    );

    reg [14:0] cnt;//��Ƶ�ź�
	always @ (posedge reset, posedge clk) begin
        if (reset) cnt <= 0;
        else cnt <= cnt + 1'b1;
     end
 
    wire seg7_clk = cnt[14]; // Ƶ�ʷ�Ƶ
	// 3λ��ַ������������ѭ��ѡ��8λ��ʾ
	reg [2:0] seg7_addr;
	always @ (posedge seg7_clk, posedge reset) begin
	   if(reset) seg7_addr <= 0;
		else seg7_addr <= seg7_addr + 1'b1;
    end
		
	 // ����ʹ����λ����λѡ�źŵ�����  
	reg [7:0] o_sel_r;
    always @(*) begin
        o_sel_r = ~(8'b1 << seg7_addr);
    end
	//�洢��������
	reg [31:0] i_data_store;
	always @ (posedge clk, posedge reset) begin
	    if(reset == 1'b1)
		    i_data_store <= 0;
	    else if(cs)
		    i_data_store <= i_data;
    end
    // ѡ��ǰ��4λ������
    reg [7:0] seg_data_r;
	always @(*) begin
        seg_data_r = i_data_store[(seg7_addr * 4) +: 4];
    end

    function [7:0] seg_decoder(input [3:0] digit);
        case (digit)
            4'h0: seg_decoder = 8'hC0;
            4'h1: seg_decoder = 8'hF9;
            4'h2: seg_decoder = 8'hA4;
            4'h3: seg_decoder = 8'hB0;
            4'h4: seg_decoder = 8'h99;
            4'h5: seg_decoder = 8'h92;
            4'h6: seg_decoder = 8'h82;
            4'h7: seg_decoder = 8'hF8;
            4'h8: seg_decoder = 8'h80;
            4'h9: seg_decoder = 8'h90;
            4'hA: seg_decoder = 8'h88;
            4'hB: seg_decoder = 8'h83;
            4'hC: seg_decoder = 8'hC6;
            4'hD: seg_decoder = 8'hA1;
            4'hE: seg_decoder = 8'h86;                   
            4'hF: seg_decoder = 8'h8E;
            default: seg_decoder = 8'hFF;
        endcase
    endfunction
          
// ��ֵ�� o_seg_r
    reg [7:0] o_seg_r;
    always @(posedge clk or posedge reset) begin
        if (reset)
            o_seg_r <= 8'hFF;
        else
            o_seg_r <= seg_decoder(seg_data_r);
    end
		  
	assign o_sel = o_sel_r;
	assign o_seg = o_seg_r;

endmodule