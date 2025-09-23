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
    input clk_in,//����ʱ��
    input enable,//ʹ���ź�
    input reset,//��λ�ź�
    input stop,//�ж��ź�
    input [1:0] choice,//ѡ�����ָ���pc
    input [4:0] raddr,//�Ĵ�����5λ 32����
    //7λ�����
    output [7:0] o_seg,
    output [7:0] o_sel
    );
    //�ڲ��źŶ���
    reg [24 : 0] cnt;
    wire [31 : 0] inst, pc, odata, display;
    
    always @ (posedge clk_in, posedge reset, posedge stop)
    if (reset) cnt <= 0;
    else if (stop) cnt <= cnt;
    else cnt <= cnt + 1'b1;
    
    wire clk_cpu = cnt[14];//��ʾ��Ƶ
    
    assign display = choice[0] ? inst : (choice[1] ? pc : odata); //ͨ��choice��ֵ�ж�Ӧ�����ʲô
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
