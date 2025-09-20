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


`define idle 1'b0//CPU待机状态
`define exec 1'b1//CPU运行状态

//定义指令的操作码
`define NOP   4'b0000
`define HALT  4'b0001
`define ADD   4'b0010
`define CMP   4'b0111
`define BN    4'b1001
`define BZ    4'b1011
`define LOAD  4'b1101
`define STORE 4'b1110

module pcpu(
    input clk,                 //时钟信号
    input enable,              //使能信号
    input reset,               //复位信号
    input start,               //CPU启动信号
    input [15:0] instruction,//输入的指令
    input [15:0] datain,//输入的数据
    output wire [7:0] i_addr,//指令地址
    output [7:0] d_addr,//数据地址
    output wire wena,//数据写入信号，高电平有效
    output [15:0] dataout//输出的数据
    );
    
    reg cpu_state, next_cpu_state;//CPU的状态
    reg [15:0] general_reg[15:0]; //通用寄存器堆
    reg [15:0] src_regA, src_regB;//两个源操作数寄存器
    
    wire [15:0] id_input, ex_input, mem_input, wb_input;//各阶段的指令传递
    
    wire is_branch;//是否进行跳转的标志位
    wire zf, nf, cf, cf_buf;//运算的标志位
    wire [15:0] dst_regC1, dst_regC2, store_reg1, store_reg2, ALU_result;//两个目标寄存器，两个保证流水线不断
    
    //##################CPU状态切换######################//
    //每次时钟上升沿切换到下一个状态，若遇到复位信号则待机
    always @ (posedge clk) begin
        if (reset)
            cpu_state <= `idle;
        else
            cpu_state <= next_cpu_state;
    end
    //根据当前状态和输入确定下一个状态
    
    always @(*) begin
        case (cpu_state)
            `idle: next_cpu_state <= (enable && start) ? `exec : `idle;
            `exec: next_cpu_state <= (enable && wb_input[15:12] != `HALT) ? `exec : `idle;
            default: next_cpu_state <= `idle;
        endcase
    end
    
    //##################IF阶段######################//
   
    IF if_stage(clk, reset, instruction, cpu_state, is_branch, dst_regC1, id_input, i_addr);
    //##################ID阶段######################//
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
        end//复位
        else if (cpu_state == `exec)
        begin
                
             if ( id_input[15:12] == `BN || id_input[15:12] == `BZ)
                src_regA <= general_reg[id_input[11:8]];
            else if (id_input[15:12] == `ADD || id_input[15:12] == `CMP ||  id_input[15:12] == `LOAD ||  id_input[15:12] == `STORE)
                src_regA <= general_reg[id_input[7:4]];
            else
                src_regA <= src_regA;//根据指令类型置源操作数寄存器A
                
            if (id_input[15:12] == `LOAD || id_input[15:12] == `STORE)
                src_regB <= {12'b0000_0000_0000, id_input[3:0]};
            else if ( id_input[15:12] == `BN ||  id_input[15:12] == `BZ )
                src_regB <= {8'b0000_0000, id_input[7:0]};
            else if (id_input[15:12] == `ADD || id_input[15:12] == `CMP)
                src_regB <= general_reg[id_input[3:0]];
            else
                src_regB <= src_regB;//根据指令类型置源操作数寄存器B
        end
    end
   
    //##################EX阶段######################//
    EX ex_stage(clk, reset, cpu_state, ex_input, src_regA, src_regB, store_reg1, 
                ALU_result, cf_buf, zf, nf, cf, mem_input, dst_regC1, store_reg2, wena);
    
    //##################MEM######################//
    MEM mem_stage(clk, reset, cpu_state, mem_input, datain, dst_regC1, nf,
        zf, wb_input, dst_regC2, d_addr, dataout, is_branch, store_reg2);
    //##################WB阶段######################//
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


