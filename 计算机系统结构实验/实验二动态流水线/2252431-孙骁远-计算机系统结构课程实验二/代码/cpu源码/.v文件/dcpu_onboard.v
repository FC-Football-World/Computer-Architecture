`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/28 19:50:02
// Design Name: 
// Module Name: dcpu_onboard
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

module dcpu_onboard(
    input clk_in,//输入时钟
    input enable,//使能信号
    input reset,//复位信号
    input stop,//中断信号
    input [1:0] choice,//选择输出指令还是pc
    input [4:0] raddr,//寄存器（5位 32个）
    //7位数码管
    output [7:0] o_seg,
    output [7:0] o_sel
    );
    //内部信号定义
    reg [24 : 0] cnt;
    wire [31 : 0] inst, pc, odata, display;
    
    always @ (posedge clk_in, posedge reset, posedge stop)
    if (reset) cnt <= 0;
    else if (stop) cnt <= cnt;
    else cnt <= cnt + 1'b1;
    
    wire clk_cpu = cnt[14];//表示分频
    
    assign display = choice[0] ? inst : (choice[1] ? pc : odata); //通过choice的值判断应该输出什么
    cpu_top cpu_top_inst (
        .clk(clk_cpu),
        .rst(reset),
        .raddr(raddr),
        .instr(inst),
        .pc(pc),
        .odata(odata)
    );
    seg7x16 seg7x16_inst (
        .clk(clk_in),
        .reset(reset),
        .cs(enable),
        .i_data(display),
        .o_seg(o_seg),
        .o_sel(o_sel)
    );

endmodule
