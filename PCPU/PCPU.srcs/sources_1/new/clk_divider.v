`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/12/07 21:10:23
// Design Name: 
// Module Name: clk_divider
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


module clk_divider(
    input      in_clk,
    output reg out_clk = 0
);

    parameter k   = 24;
    integer   cnt = 0;

    always @(posedge in_clk)
    begin
        cnt = (cnt + 1) % (k / 2);
        if(cnt == 0)
            out_clk <= ~out_clk;
    end

endmodule
