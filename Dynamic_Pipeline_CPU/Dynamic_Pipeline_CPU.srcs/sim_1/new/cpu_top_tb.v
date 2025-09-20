`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/26 22:05:48
// Design Name: 
// Module Name: cpu_top_tb
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
module cpu_top_tb();
    reg clk = 1;
    reg rst = 1;
    reg [4:0] raddr = 5'b00001;  // 初始读取地址
    wire [31:0] instr;
    wire [31:0] pc;
    wire [31:0] odata;

    integer count = 0;
    integer count_nop = 0;
    
    always #5 clk = ~clk;
    initial begin
        #1 rst = 0;
    end

    // 在时钟上升沿统计
    always @(posedge clk) begin
        count <= count + 1;
        if (instr == 32'b0)
            count_nop <= count_nop + 1;
    end
    
    cpu_top cpu_top_inst (
        .clk(clk),
        .rst(rst),
        .raddr(raddr),
        .instr(instr),
        .pc(pc),
        .odata(odata)
    );
endmodule

