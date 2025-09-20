`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/26 21:53:47
// Design Name: 
// Module Name: controller
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

module controller(
        input [5:0] operation,
        input [5:0] funct,
        input [31:0] rs_wire,
        input [31:0] rt_wire,
    
        output is_jump,
        output dm_w_signal_id,
        output write_id,
        output [3:0] aluc_id,
    
        output [1:0] mux_pc, 
        output mux_alu1_id,
        output [1:0] mux_alu2_id, 
        output [1:0] mux_waddr_id,
        
        output is_lw_id,
        output is_jal_id,
        output is_mul_id
        );
    
        wire r_type = (operation == 6'b000000);
        wire ADD = r_type & (funct == 6'b100000);
        wire ADDU = r_type & (funct == 6'b100001);
        wire SUB = r_type & (funct == 6'b100010);
        wire SUBU = r_type & (funct == 6'b100011);
        wire AND = r_type & (funct == 6'b100100);
        wire OR = r_type & (funct == 6'b100101);
        wire XOR = r_type & (funct == 6'b100110);
        wire NOR = r_type & (funct == 6'b100111);
        wire SLT = r_type & (funct == 6'b101010);
        wire SLTU = r_type & (funct == 6'b101011);
        wire SLL = r_type & (funct == 6'b000000);
        wire SRL = r_type & (funct == 6'b000010);
        wire SRA = r_type & (funct == 6'b000011);
        wire SLLV = r_type & (funct == 6'b000100);
        wire SRLV = r_type & (funct == 6'b000110);
        wire SRAV = r_type & (funct == 6'b000111);
        wire JR = r_type & (funct == 6'b001000);
        wire MUL = (operation == 6'b011100) & (funct == 6'b000010);
    
        wire ADDI = (operation == 6'b001000);
        wire ADDIU = (operation == 6'b001001);
        wire ANDI = (operation == 6'b001100);
        wire ORI = (operation == 6'b001101);
        wire XORI = (operation == 6'b001110);
        wire LUI = (operation == 6'b001111);
        wire LW = (operation == 6'b100011);
        wire SW = (operation == 6'b101011);
        wire BEQ = (operation == 6'b000100);
        wire BNE = (operation == 6'b000101);
        wire SLTI = (operation == 6'b001010);
        wire SLTIU = (operation == 6'b001011);
        wire J = (operation == 6'b000010);
        wire JAL = (operation == 6'b000011);
    
        // ¶ÔÊä³ö¸³Öµ
        assign is_jal_id = JAL;
        assign is_lw_id = LW;
        assign is_mul_id = MUL;
    
        assign dm_w_signal_id = SW;
        assign write_id = ~(JR | SW | BEQ | BNE | J);
        assign is_jump = JR | J | JAL | (BEQ & (rs_wire == rt_wire)) | (BNE & (rs_wire != rt_wire));
    
        assign aluc_id = { 
            LUI | SLL | SLLV | SLT | SLTI | SLTIU | SLTU | SRA | SRAV | SRL | SRLV,
            AND | ANDI | NOR | OR | ORI | SLL | SLLV | SRA | SRAV | SRL | SRLV | XOR | XORI,
            ADD | ADDI | BEQ | BNE | LW | NOR | SLL | SLLV | SLT | SLTI | SLTIU | SLTU | SUB | SW | XOR | XORI,
            BEQ | BNE | NOR | OR | ORI | SLT | SLTI | SRL | SRLV | SUB | SUBU
        };
    
        assign mux_pc = (J | JAL) ? 2'b00 :
                        (JR) ? 2'b01 :
                        (BNE | BEQ) ? 2'b11 : 2'bxx;
    
        assign mux_alu1_id = SLL | SRA | SRL;
        assign mux_alu2_id = {~(ADDI | ADDIU | LUI | LW | SLTI | SW | ANDI | ORI | SLTIU | XORI),
                              ANDI | ORI | SLTIU | XORI};
        assign mux_waddr_id = {JAL, ~(ADDI | ADDIU | ANDI | LUI | LW | ORI | SLTI | SLTIU | XORI | JAL)};
    endmodule






