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
    input clk_in,//����ʱ���ź�
    input reset,//��λ�ź�
    input enable,//ʹ���ź�
    input start,//��ʼ
    output [7:0] o_seg,//7����ʾ������ʾ�������
    output [7:0] o_sel//7����ʾ����λѡ�ź�
    );
   
    wire [7:0] i_addr,d_addr;//ȡָ�������λ��
    wire [15:0] instruction, datain, dataout;//ָ����룬д�����ݣ���������
    wire wena;//�ߵ�ƽʹ���ź�
    
    reg [24 : 0] cnt;
    always @ (posedge clk_in, negedge reset) begin
    if (reset)
        cnt <= 0;
    else
        cnt <= cnt + 1'b1;
    end
    wire clk_cpu = cnt[24];
    //ʵ����seg7x16ģ��
    /*seg7x16 display_inst(
        .clk(clk_in),
        .reset(reset),
        .cs(1'b1),
        .i_data({8'b0, instruction}),
        .o_seg(o_seg),
        .o_sel(o_sel)
    );*/
    seg7x16 seg7x16(clk_in, reset,1, {8'b0000_0000, instruction}, o_seg, o_sel);
        
    //ʵ����imemģ��
    imem imem_inst(
        .pc(i_addr), 
        .instr(instruction)
    );
    //ʵ����dmmeģ��
    dmem dmem_inst(
        .clk(clk_cpu), 
        .ram_ena(enable), 
        .wena(wena), 
        .addr(d_addr), 
        .data_in(datain),
        .data_out(dataout)
    );
    //ʵ����pcpuģ��
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
