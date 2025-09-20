`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/26 21:58:24
// Design Name: 
// Module Name: luislt
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


module luislt(
    input [31:0] alu1,//第一个操作数
    input [31:0] alu2,//第二个操作数
    input [1:0] aluc,//运算种类
    output reg [31:0] res//输出结果
);
    reg [2:0] cmp;
    reg res_low;

    // 产生立即数结果
    wire [31:0] res_lui = {alu2[15:0], 16'b0};
    wire [31:0] res_slt = {31'b0, res_low};
    wire [32:0] alur1 = {1'b0, alu1};
    wire [32:0] alur2 = {1'b0, alu2};

    always @(*) begin
        cmp = (alur1 > alur2) ? 3'b100 : 
              (alur1 == alur2) ? 3'b010 : 
              3'b001;
    end

    always @(*) begin
        case ({aluc[0], alu1[31], alu2[31]})
            3'b0_??: res_low = cmp[0]; 
            3'b1_00, 3'b1_11: res_low = cmp[0]; 
            3'b1_01: res_low = 1'b0; 
            3'b1_10: res_low = 1'b1; 
            default: res_low = 1'b0;
        endcase
    end

    always @(*) begin
        res = aluc[1] ? res_slt : res_lui;
    end
endmodule
