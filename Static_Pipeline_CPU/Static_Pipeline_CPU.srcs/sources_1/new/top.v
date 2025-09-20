`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/29 22:12:28
// Design Name: 
// Module Name: top
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


module top(
    input clk_in,//输入时钟信号
    input reset,//复位信号
    input enable,//使能信号
    input start,//开始
    output [7:0] o_seg,//7段显示器的显示数据输出
    output [7:0] o_sel//7段显示器的位选信号
    );
   
    wire [7:0] i_addr,d_addr;//取指令，读数据位置
    wire [15:0] instruction, datain, dataout;//指令代码，写入数据，读出数据
    wire wena;//高电平使能信号
    
    reg [24 : 0] cnt;
    always @ (posedge clk_in, negedge reset) begin
    if (reset)
        cnt <= 0;
    else
        cnt <= cnt + 1'b1;
    end
    wire clk_cpu = cnt[24];
    //实例化seg7x16模块
    /*seg7x16 display_inst(
        .clk(clk_in),
        .reset(reset),
        .cs(1'b1),
        .i_data({8'b0, instruction}),
        .o_seg(o_seg),
        .o_sel(o_sel)
    );*/
    seg7x16 seg7x16(clk_in, reset,1, {8'b0000_0000, instruction}, o_seg, o_sel);
        
    //实例化imem模块
    imem imem_inst(
        .pc(i_addr), 
        .instr(instruction)
    );
    //实例化dmme模块
    dmem dmem_inst(
        .clk(clk_cpu), 
        .ram_ena(enable), 
        .wena(wena), 
        .addr(d_addr), 
        .data_in(datain),
        .data_out(dataout)
    );
    //实例化pcpu模块
    pcpu pcpu_inst(
        .clk(clk_cpu),
        .enable(enable), 
        .reset(reset), 
        .start(start), 
        .instruction(instruction), 
        .datain(datain), 
        .i_addr(i_addr), 
        .d_addr(d_addr), 
        .wena(wena), 
        .dataout(dataout)
    );
endmodule
