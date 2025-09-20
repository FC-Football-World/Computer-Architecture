`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/26 21:54:07
// Design Name: 
// Module Name: alu
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


module alu(
    input [31:0] alu1,//第1个操作数
    input [31:0] alu2,//第2个操作数
    input [3:0] aluc, //哪种操作
    output reg [31:0] result//输出
);

    wire [31:0] result0;
    wire [31:0] result1;
    //定义add
    add add_inst(
        .add1(alu1), 
        .add2(alu2), 
        .aluc(aluc[0]),
        .res(result0)
    );
    //定义luslt
    luislt luislt_inst(
        .alu1(alu1), 
        .alu2(alu2), 
        .aluc(aluc[1:0]),
        .res(result1)
    );

function [31:0] shift_operation(
        input [31:0] value,
        input [31:0] shift,
        input is_arithmetic,  // 1表示算术右移, 0表示逻辑右移或左移
        input is_left         // 1表示左移, 0表示右移
    );
        reg [31:0] temp;
        integer i;
        begin
            temp = value;
            for (i = 0; i < 5; i = i + 1) begin
                if (shift[i]) begin
                    if (is_left)
                        temp = temp << (1 << i); // 左移
                    else if (is_arithmetic)
                        temp = $signed(temp) >>> (1 << i); // 算术右移
                    else
                        temp = temp >> (1 << i); // 逻辑右移
                end
            end
            shift_operation = temp;
        end
    endfunction

    // result 最终输出
    always @(*) begin
        case (aluc[3:2])
            2'b00: result = result0;
            2'b10: result = result1;
            2'b01: begin
                case (aluc[1:0])
                    2'b00: result = alu1 & alu2;
                    2'b01: result = alu1 | alu2;
                    2'b10: result = alu1 ^ alu2;
                    default: result = ~(alu1 | alu2);
                endcase
            end
            2'b11: begin
                case (aluc[1:0])
                    2'b00: result = shift_operation(alu2, alu1, 1'b1, 1'b0); // 算术右移
                    2'b01: result = shift_operation(alu2, alu1, 1'b0, 1'b0); // 逻辑右移
                    default: result = shift_operation(alu2, alu1, 1'b0, 1'b1); // 左移
                endcase
            end
            default: result = 32'b0;
        endcase
    end
endmodule
