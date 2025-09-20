`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/26 21:58:52
// Design Name: 
// Module Name: conflict_judge
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

module conflict_judge(
    input [31:0] instr,
    input is_lw_ID,
    input is_lw_EX,
    input is_lw_MEM,
    input write_ID,
    input write_EX,
    input write_MEM,
    input [4:0] w_addr_ID,
    input [4:0] w_addr_EX,
    input [4:0] w_addr_MEM,
    output is_stall
    );
    
    wire [4:0] rs, rt;
    
    assign rt = instr[20:16];
    assign rs = instr[25:21];
    // 3ÖÖÇé¿ö
    wire condition1 = (is_lw_ID && write_ID && w_addr_ID != 5'b0) && ((rs == w_addr_ID) || (rt == w_addr_ID));
    wire condition2 = (is_lw_MEM && write_MEM && w_addr_MEM != 5'b0) && ((rs == w_addr_MEM) || (rt == w_addr_MEM));
    wire condition3 = (is_lw_EX && write_EX && w_addr_EX != 5'b0) && ((rs == w_addr_EX) || (rt == w_addr_EX));
    
    assign is_stall = condition1 || condition2 || condition3;
    
endmodule

