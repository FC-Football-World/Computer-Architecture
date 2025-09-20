`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/26 21:51:06
// Design Name: 
// Module Name: dcpu
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


module cpu(
    input clk,         //时钟信号
    input rst,         //复位信号
    input [31:0] instr,//指令输出
    input [4:0] raddr, //寄存器地址
    output [31:0] pc,  //程序计数器
    output [31:0] odata//数据输出
    );
        
//#########################################################################
//# IF 部分
//#########################################################################
    wire is_jump, is_stall;      
    wire [31:0] npc_if, pc_id, pc_if, instr_if;
    assign npc_if   = pc + 32'd4;
    assign instr_if  = (is_stall) ? 32'b0 : instr;
    assign pc_if    = (is_stall) ? pc : (is_jump) ? pc_id : npc_if;
    PC_reg PC_inst(
        .clk(clk),
        .rst(rst),
        .data_in(pc_if),
        .data_out(pc)
    );
//#########################################################################
//# IF_ID 流水线
//#########################################################################
    wire [31:0] instr_id, npc_id;
    
    regs_IF_ID regs_IF_ID_inst(
        .clk(clk),
        .rst(rst), 
        .npc_if(npc_if), 
        .instr_if(instr_if), 
        .npc_id(npc_id), 
        .instr_id(instr_id)
        );
    
//#########################################################################
//# ID 部分
//#########################################################################
//inst--ID指令解码
    wire [5:0] op,func;
    wire [4:0] rs,rt,rd,shamt;
    wire [15:0] immediate;
    wire [25:0] index;
    wire [31:0] shamt_id, uimmediate_id, simmediate_id, offset; 
    
    assign func     = instr_id[5:0];
    assign shamt       = instr_id[10:6];
    assign immediate    = instr_id[15:0];
    assign index    = instr_id[25:0];
    assign op       = instr_id[31:26];
    assign rs       = instr_id[25:21];
    assign rt       = instr_id[20:16];
    assign rd       = instr_id[15:11];
    
    assign shamt_id     = {27'b0, shamt};
    assign uimmediate_id   = {16'b0, immediate};
    assign simmediate_id   = {{16{immediate[15]}}, immediate};
    assign offset = {{14{immediate[15]}}, immediate, 2'b0};

    //ID选择
    wire [1:0] mux_pc;
    wire [31:0] rs_wire, rt_wire;  
    wire [31:0]  pc_offset, pc_index, pc_rs; 
        
    assign pc_rs  = rs_wire;
    assign  pc_offset  = pc + offset;
    assign  pc_index  = {npc_if[31:28], index, 2'b0};
    assign pc_id = (mux_pc[1]) ?  pc_offset : (mux_pc[0]) ? pc_rs :  pc_index;

//#########################################################################
//# 数据选择
//#########################################################################
    wire write_ex, write_mem, conflict_lw; 
    wire is_lw_ex, is_jal_ex, is_mul_ex;
    wire is_lw_mem, is_jal_mem, is_mul_mem;
    wire [4:0] w_addr_ex, w_addr_mem;  
    wire [31:0] alu_ex, mul_ex, npc_ex;
    wire [31:0] alu_mem, mul_mem, npc_mem; 
    wire [31:0] rs_mux, rt_mux;
   
    mux mux_INST(rs, rt, rs_wire, rt_wire, npc_ex, mul_ex, alu_ex, w_addr_ex, write_ex, is_lw_ex, is_jal_ex, is_mul_ex,
            npc_mem, mul_mem, alu_mem, w_addr_mem, write_mem, is_lw_mem, is_jal_mem, is_mul_mem, rs_mux, rt_mux, conflict_lw);
//#########################################################################
//# 控制器与检测冲突
//#########################################################################
    wire dm_w_signal_id, write_id;       
    wire is_lw_id, is_jal_id, is_mul_id;
    wire [3:0] aluc_id;    
    reg [4:0] w_addr_id;    
    wire mux_alu1_id;           
    wire [1:0] mux_alu2_id, mux_w_addr_id, mux_wdata_id;   
    always @(*) begin
        if (mux_w_addr_id[1])
            w_addr_id = 5'd31;
        else if (mux_w_addr_id[0])
            w_addr_id = rd;
        else
            w_addr_id = rt;
    end

    controller controller_INST(op, func, rs_mux, rt_mux, is_jump, dm_w_signal_id, 
                               write_id, aluc_id, mux_pc, mux_alu1_id, mux_alu2_id, 
                               mux_w_addr_id, is_lw_id, is_jal_id, is_mul_id);

    //判断有无冲突
    conflict_judge conflict_judge_INST(instr, is_lw_id, is_lw_ex, is_lw_mem, write_id, 
                                       write_ex, write_mem, w_addr_id, w_addr_ex, 
                                       w_addr_mem, is_stall);

//#########################################################################
//# ID_EXE流水线寄存器
//#########################################################################
    wire dm_w_signal_ex;
    wire mux_alu1_ex;
    wire dm_w_id_real;
    wire [1:0] mux_alu2_ex, mux_wdata_ex;
    wire [3:0] aluc_ex;
    wire [31:0] shamt_ex, simmediate_ex, uimmediate_ex;
    wire [31:0] rs_wire_ex, rt_wire_ex, dm_wdata_ex;

    wire judge;
    assign dm_w_id_real = judge;
    assign judge = dm_w_signal_id && (~conflict_lw);
    

    regs_ID_EX regs_ID_EX_INST(clk,rst, dm_w_id_real, write_id, is_lw_id, is_jal_id, is_mul_id, mux_alu1_id,
                            mux_alu2_id, aluc_id, npc_id, w_addr_id, shamt_id, simmediate_id, uimmediate_id,
                            rs_mux, rt_mux, rt_mux, dm_w_signal_ex, write_ex, is_lw_ex, is_jal_ex, 
                            is_mul_ex, mux_alu1_ex, mux_alu2_ex, aluc_ex, npc_ex, w_addr_ex,
                            shamt_ex, simmediate_ex, uimmediate_ex, rs_wire_ex, rt_wire_ex, dm_wdata_ex);
    
//#########################################################################
//# EXE阶段
//#########################################################################
    reg [31:0] alu1, alu2;
    wire [63:0] mul_out;
    always @(*) begin
        if (mux_alu1_ex) alu1 = shamt_ex;
        else alu1 = rs_wire_ex;
    
        if (mux_alu2_ex[1])
            alu2 = rt_wire_ex;
        else if (mux_alu2_ex[0])
            alu2 = uimmediate_ex;
        else
            alu2 = simmediate_ex;
    end
    //初始化alu
    alu alu_inst(
        .alu1(alu1),
        .alu2(alu2),
        .aluc(aluc_ex),
        .result(alu_ex)
    );

    assign mul_out = alu1 * alu2;
    assign mul_ex = mul_out[31:0];
    
//#########################################################################
//# EXE_MEM 流水线寄存器
//#########################################################################
    wire DM_W_SIGNAL_MEM;
    wire [1:0] MUX_WDATA_MEM;
    wire [31:0] DM_WDATA_MEM;
    
    regs_EX_MEM regs_EX_MEM_INST(
        clk, 
        rst, 
        dm_w_signal_ex, 
        write_ex, 
        is_lw_ex, 
        is_jal_ex, 
        is_mul_ex, 
        w_addr_ex,
        npc_ex, 
        alu_ex, 
        mul_ex, 
        dm_wdata_ex, 
        DM_W_SIGNAL_MEM, 
        write_mem, 
        is_lw_mem, 
        is_jal_mem, 
        is_mul_mem, 
        w_addr_mem, 
        npc_mem, 
        alu_mem, 
        mul_mem, 
        DM_WDATA_MEM
    );

//#########################################################################
//# MEM部分
//#########################################################################
    wire [31:0] dm_addr, dm_rdata, dm_wdata;
    wire dm_w;
    assign dm_addr = alu_mem;
    assign dm_wdata = DM_WDATA_MEM;
    assign dm_w = DM_W_SIGNAL_MEM;
    
    dmem dmem_INST(
        .clk(~clk),
        .rst(rst),
        .write(dm_w),
        .addr(dm_addr),
        .data_in(dm_wdata),
        .data_out(dm_rdata)
    );
    
//#########################################################################
//# MEM_WB 流水线寄存器
//#########################################################################
    wire [1:0] mux_wdata_wb;
    wire [4:0] w_addr_wb;
    wire write_wb, is_lw_wb, is_jal_wb, is_mul_wb;
    wire [31:0] alu_wb, mul_wb, npc_wb, dm_rdata_wb;

    wire [31:0] wb_signals[3:0]; // 数组化存储信号

    // 映射信号
    assign alu_wb = wb_signals[0];
    assign mul_wb = wb_signals[1];
    assign npc_wb = wb_signals[2];
    assign dm_rdata_wb = wb_signals[3];

    // regs_MEM_WB 实例化
    regs_MEM_WB regs_MEM_WB_INST(
        clk, 
        rst, 
        write_mem, 
        is_lw_mem, 
        is_jal_mem, 
        is_mul_mem, 
        w_addr_mem, 
        alu_mem,
        mul_mem, 
        npc_mem, 
        dm_rdata, 
        write_wb, 
        is_lw_wb, 
        is_jal_wb, 
        is_mul_wb,
        w_addr_wb, 
        wb_signals[0], 
        wb_signals[1], 
        wb_signals[2], 
        wb_signals[3]
    );
    
//#########################################################################
//# WB 阶段
//#########################################################################
    reg [31:0] wdata_wb;
    
    always @(*) begin
        if (is_lw_wb)
            wdata_wb = dm_rdata_wb;
        else if (is_jal_wb)
            wdata_wb = npc_wb;
        else if (is_mul_wb)
            wdata_wb = mul_wb;
        else
            wdata_wb = alu_wb;
    end

    regfiles regfiles_INST(
        .clk(clk),
        .rst(rst),
        .write(write_wb),
        .rn1(rs),
        .rn2(rt),
        .w_addr(w_addr_wb),
        .r_addr(raddr),
        .data_in(wdata_wb),
        .data_out1(rs_wire),
        .data_out2(rt_wire),
        .data_out(odata)
    );
endmodule

