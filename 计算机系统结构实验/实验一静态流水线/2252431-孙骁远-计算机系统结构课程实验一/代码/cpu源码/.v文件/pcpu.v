`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/29 22:13:38
// Design Name: 
// Module Name: pcpu
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


`define idle 1'b0//CPU����״̬
`define exec 1'b1//CPU����״̬

//����ָ��Ĳ�����
`define NOP   4'b0000
`define HALT  4'b0001
`define ADD   4'b0010
`define CMP   4'b0111
`define BN    4'b1001
`define BZ    4'b1011
`define LOAD  4'b1101
`define STORE 4'b1110

module pcpu(
    input clk,                 //ʱ���ź�
    input enable,              //ʹ���ź�
    input reset,               //��λ�ź�
    input start,               //CPU�����ź�
    input [15:0] instruction,//�����ָ��
    input [15:0] datain,//���������
    output wire [7:0] i_addr,//ָ���ַ
    output [7:0] d_addr,//���ݵ�ַ
    output wire wena,//����д���źţ��ߵ�ƽ��Ч
    output [15:0] dataout//���������
    );
    
    reg cpu_state, next_cpu_state;//CPU��״̬
    reg [15:0] general_reg[15:0]; //ͨ�üĴ�����
    reg [15:0] src_regA, src_regB;//����Դ�������Ĵ���
    
    wire [15:0] id_input, ex_input, mem_input, wb_input;//���׶ε�ָ���
    
    wire is_branch;//�Ƿ������ת�ı�־λ
    wire zf, nf, cf, cf_buf;//����ı�־λ
    wire [15:0] dst_regC1, dst_regC2, store_reg1, store_reg2, ALU_result;//����Ŀ��Ĵ�����������֤��ˮ�߲���
    
    //##################CPU״̬�л�######################//
    //ÿ��ʱ���������л�����һ��״̬����������λ�ź������
    always @ (posedge clk) begin
        if (reset)
            cpu_state <= `idle;
        else
            cpu_state <= next_cpu_state;
    end
    //���ݵ�ǰ״̬������ȷ����һ��״̬
    
    always @(*) begin
        case (cpu_state)
            `idle: next_cpu_state <= (enable && start) ? `exec : `idle;
            `exec: next_cpu_state <= (enable && wb_input[15:12] != `HALT) ? `exec : `idle;
            default: next_cpu_state <= `idle;
        endcase
    end
    
    //##################IF�׶�######################//
   
    IF if_stage(clk, reset, instruction, cpu_state, is_branch, dst_regC1, id_input, i_addr);
    //##################ID�׶�######################//
   // ID id_stage(clk, reset, cpu_state, id_input, general_reg, src_regA, src_regB, store_reg1);
    assign ex_input = 16'b0000_0000_0000_0000;
    assign store_reg1 = (id_input[15:12] == `STORE) ? general_reg[id_input[11:8]] : store_reg1; 
    always @ (posedge clk or posedge reset)
    begin
        if (reset)
        begin
            src_regA <= 16'b0000_0000_0000_0000;
            src_regB <= 16'b0000_0000_0000_0000;
            //store_reg1 <= 16'b0000_0000_0000_0000;
        end//��λ
        else if (cpu_state == `exec)
        begin
                
             if ( id_input[15:12] == `BN || id_input[15:12] == `BZ)
                src_regA <= general_reg[id_input[11:8]];
            else if (id_input[15:12] == `ADD || id_input[15:12] == `CMP ||  id_input[15:12] == `LOAD ||  id_input[15:12] == `STORE)
                src_regA <= general_reg[id_input[7:4]];
            else
                src_regA <= src_regA;//����ָ��������Դ�������Ĵ���A
                
            if (id_input[15:12] == `LOAD || id_input[15:12] == `STORE)
                src_regB <= {12'b0000_0000_0000, id_input[3:0]};
            else if ( id_input[15:12] == `BN ||  id_input[15:12] == `BZ )
                src_regB <= {8'b0000_0000, id_input[7:0]};
            else if (id_input[15:12] == `ADD || id_input[15:12] == `CMP)
                src_regB <= general_reg[id_input[3:0]];
            else
                src_regB <= src_regB;//����ָ��������Դ�������Ĵ���B
        end
    end
   
    //##################EX�׶�######################//
    EX ex_stage(clk, reset, cpu_state, ex_input, src_regA, src_regB, store_reg1, 
                ALU_result, cf_buf, zf, nf, cf, mem_input, dst_regC1, store_reg2, wena);
    
    //##################MEM######################//
    MEM mem_stage(clk, reset, cpu_state, mem_input, datain, dst_regC1, nf,
        zf, wb_input, dst_regC2, d_addr, dataout, is_branch, store_reg2);
    //##################WB�׶�######################//
    integer i;
    always @ (posedge clk or posedge reset)
        begin
        if (reset)begin
            for (i = 0; i < 16; i = i + 1) begin
                general_reg[i] <= 16'b0;
            end           
        end
        else if (cpu_state == `exec)
        begin
            if (wb_input[15:12] == `ADD || wb_input[15:12] == `LOAD)
                general_reg[wb_input[11:8]] <= dst_regC2;
        end
    end
endmodule


