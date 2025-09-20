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
    input clk,           //时钟信号
	input reset,         //复位信号
	input cs,            //片选信号
	input [31:0] i_data, //需要数码管输出的内容
	output [7:0] o_seg,  //输出内容
	output [7:0] o_sel   //片选信号
    );

    reg [14:0] cnt;//分频信号
	always @ (posedge reset, posedge clk) begin
        if (reset) cnt <= 0;
        else cnt <= cnt + 1'b1;
     end
 
    wire seg7_clk = cnt[14]; // 频率分频
	// 3位地址计数器，用于循环选择8位显示
	reg [2:0] seg7_addr;
	always @ (posedge seg7_clk, posedge reset) begin
	   if(reset) seg7_addr <= 0;
		else seg7_addr <= seg7_addr + 1'b1;
    end
		
	 // 下面使用移位来简化位选信号的生成  
	reg [7:0] o_sel_r;
    always @(*) begin
        o_sel_r = ~(8'b1 << seg7_addr);
    end
	//存储输入数据
	reg [31:0] i_data_store;
	always @ (posedge clk, posedge reset) begin
	    if(reset == 1'b1)
		    i_data_store <= 0;
	    else if(cs)
		    i_data_store <= i_data;
    end
    // 选择当前的4位段数据
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
          
// 赋值给 o_seg_r
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