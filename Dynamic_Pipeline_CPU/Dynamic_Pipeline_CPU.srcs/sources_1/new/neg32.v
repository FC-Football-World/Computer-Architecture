`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/12/03 21:40:24
// Design Name: 
// Module Name: neg32
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


module neg32(
    input [31:0] data_in,
    input s,
    output [31:0] data_out
);
    genvar i;
    //Ñ­»·Âß¼­
    generate
        for (i = 0; i < 32; i = i + 1) begin : neg_logic
            assign data_out[i] = s ^ data_in[i];
        end
    endgenerate
endmodule