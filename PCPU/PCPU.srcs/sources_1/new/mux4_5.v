`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/12/07 22:01:41
// Design Name: 
// Module Name: mux4_5
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


module mux4_5(
    input [4:0] d0,
    input [4:0] d1,
    input [4:0] d2,
    input [4:0] d3,
    input [1:0]  s,
    output reg [4:0] y
    );

    always@(*)
    begin
        case(s)
            2'b00:  y <= d0;
            2'b01:  y <= d1;   
            2'b10:  y <= d2;
            2'b11:  y <= d3;
        endcase
    end

endmodule
