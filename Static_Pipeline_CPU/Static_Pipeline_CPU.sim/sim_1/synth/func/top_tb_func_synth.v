// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.2 (win64) Build 1577090 Thu Jun  2 16:32:40 MDT 2016
// Date        : Wed Oct 30 22:40:07 2024
// Host        : DESKTOP-D2C712Q running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               D:/Static_Pipeline_CPU/Static_Pipeline_CPU.sim/sim_1/synth/func/top_tb_func_synth.v
// Design      : top
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dist_mem_gen_0,dist_mem_gen_v8_0_10,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_10,Vivado 2016.2" *) 
module dist_mem_gen_0
   (a,
    spo);
  input [10:0]a;
  output [31:0]spo;

  wire [10:0]a;
  wire [31:0]spo;
  wire [31:0]NLW_U0_dpo_UNCONNECTED;
  wire [31:0]NLW_U0_qdpo_UNCONNECTED;
  wire [31:0]NLW_U0_qspo_UNCONNECTED;

  (* C_FAMILY = "artix7" *) 
  (* C_HAS_D = "0" *) 
  (* C_HAS_DPO = "0" *) 
  (* C_HAS_DPRA = "0" *) 
  (* C_HAS_I_CE = "0" *) 
  (* C_HAS_QDPO = "0" *) 
  (* C_HAS_QDPO_CE = "0" *) 
  (* C_HAS_QDPO_CLK = "0" *) 
  (* C_HAS_QDPO_RST = "0" *) 
  (* C_HAS_QDPO_SRST = "0" *) 
  (* C_HAS_WE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_PIPELINE_STAGES = "0" *) 
  (* C_QCE_JOINED = "0" *) 
  (* C_QUALIFY_WE = "0" *) 
  (* C_REG_DPRA_INPUT = "0" *) 
  (* KEEP_HIERARCHY = "true" *) 
  (* c_addr_width = "11" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "2048" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_clk = "0" *) 
  (* c_has_qspo = "0" *) 
  (* c_has_qspo_ce = "0" *) 
  (* c_has_qspo_rst = "0" *) 
  (* c_has_qspo_srst = "0" *) 
  (* c_has_spo = "1" *) 
  (* c_mem_init_file = "dist_mem_gen_0.mif" *) 
  (* c_parser_type = "1" *) 
  (* c_read_mif = "1" *) 
  (* c_reg_a_d_inputs = "0" *) 
  (* c_sync_enable = "1" *) 
  (* c_width = "32" *) 
  dist_mem_gen_0_dist_mem_gen_v8_0_10 U0
       (.a(a),
        .clk(1'b0),
        .d({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dpo(NLW_U0_dpo_UNCONNECTED[31:0]),
        .dpra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .i_ce(1'b1),
        .qdpo(NLW_U0_qdpo_UNCONNECTED[31:0]),
        .qdpo_ce(1'b1),
        .qdpo_clk(1'b0),
        .qdpo_rst(1'b0),
        .qdpo_srst(1'b0),
        .qspo(NLW_U0_qspo_UNCONNECTED[31:0]),
        .qspo_ce(1'b1),
        .qspo_rst(1'b0),
        .qspo_srst(1'b0),
        .spo(spo),
        .we(1'b0));
endmodule

module IF
   (Q,
    E,
    CLK,
    AR);
  output [7:0]Q;
  input [0:0]E;
  input CLK;
  input [0:0]AR;

  wire [0:0]AR;
  wire CLK;
  wire [0:0]E;
  wire [7:0]Q;
  wire [7:0]i_addr1;
  wire \i_addr[7]_i_2_n_0 ;

  LUT1 #(
    .INIT(2'h1)) 
    \i_addr[0]_i_1 
       (.I0(Q[0]),
        .O(i_addr1[0]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \i_addr[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(i_addr1[1]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \i_addr[2]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(i_addr1[2]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \i_addr[3]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(i_addr1[3]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \i_addr[4]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(i_addr1[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \i_addr[5]_i_1 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[4]),
        .I5(Q[5]),
        .O(i_addr1[5]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \i_addr[6]_i_1 
       (.I0(\i_addr[7]_i_2_n_0 ),
        .I1(Q[6]),
        .O(i_addr1[6]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \i_addr[7]_i_1 
       (.I0(\i_addr[7]_i_2_n_0 ),
        .I1(Q[6]),
        .I2(Q[7]),
        .O(i_addr1[7]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \i_addr[7]_i_2 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(Q[4]),
        .O(\i_addr[7]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \i_addr_reg[0] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(i_addr1[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \i_addr_reg[1] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(i_addr1[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \i_addr_reg[2] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(i_addr1[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \i_addr_reg[3] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(i_addr1[3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \i_addr_reg[4] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(i_addr1[4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \i_addr_reg[5] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(i_addr1[5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \i_addr_reg[6] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(i_addr1[6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \i_addr_reg[7] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(i_addr1[7]),
        .Q(Q[7]));
endmodule

module imem
   (spo,
    Q);
  output [15:0]spo;
  input [7:0]Q;

  wire [7:0]Q;
  wire [15:0]spo;
  wire [31:16]NLW_dist_mem_gen_0_inst_spo_UNCONNECTED;

  (* x_core_info = "dist_mem_gen_v8_0_10,Vivado 2016.2" *) 
  dist_mem_gen_0 dist_mem_gen_0_inst
       (.a({1'b0,1'b0,1'b0,Q}),
        .spo({NLW_dist_mem_gen_0_inst_spo_UNCONNECTED[31:16],spo}));
endmodule

module pcpu
   (Q,
    CLK,
    start_IBUF,
    enable_IBUF,
    AR);
  output [7:0]Q;
  input CLK;
  input start_IBUF;
  input enable_IBUF;
  input [0:0]AR;

  wire [0:0]AR;
  wire CLK;
  wire [7:0]Q;
  wire cpu_state;
  wire cpu_state_i_1_n_0;
  wire enable_IBUF;
  wire start_IBUF;

  LUT4 #(
    .INIT(16'h00E0)) 
    cpu_state_i_1
       (.I0(cpu_state),
        .I1(start_IBUF),
        .I2(enable_IBUF),
        .I3(AR),
        .O(cpu_state_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    cpu_state_reg
       (.C(CLK),
        .CE(1'b1),
        .D(cpu_state_i_1_n_0),
        .Q(cpu_state),
        .R(1'b0));
  IF if_stage
       (.AR(AR),
        .CLK(CLK),
        .E(cpu_state),
        .Q(Q));
endmodule

module seg7x16
   (o_sel_OBUF,
    Q,
    clk_in_IBUF_BUFG,
    AR,
    D);
  output [7:0]o_sel_OBUF;
  output [6:0]Q;
  input clk_in_IBUF_BUFG;
  input [0:0]AR;
  input [15:0]D;

  wire [0:0]AR;
  wire [15:0]D;
  wire [6:0]Q;
  wire clk_in_IBUF_BUFG;
  wire \cnt[0]_i_5_n_0 ;
  wire \cnt_reg[0]_i_1_n_0 ;
  wire \cnt_reg[0]_i_1_n_1 ;
  wire \cnt_reg[0]_i_1_n_2 ;
  wire \cnt_reg[0]_i_1_n_3 ;
  wire \cnt_reg[0]_i_1_n_4 ;
  wire \cnt_reg[0]_i_1_n_5 ;
  wire \cnt_reg[0]_i_1_n_6 ;
  wire \cnt_reg[0]_i_1_n_7 ;
  wire \cnt_reg[12]_i_1_n_2 ;
  wire \cnt_reg[12]_i_1_n_3 ;
  wire \cnt_reg[12]_i_1_n_5 ;
  wire \cnt_reg[12]_i_1_n_6 ;
  wire \cnt_reg[12]_i_1_n_7 ;
  wire \cnt_reg[4]_i_1_n_0 ;
  wire \cnt_reg[4]_i_1_n_1 ;
  wire \cnt_reg[4]_i_1_n_2 ;
  wire \cnt_reg[4]_i_1_n_3 ;
  wire \cnt_reg[4]_i_1_n_4 ;
  wire \cnt_reg[4]_i_1_n_5 ;
  wire \cnt_reg[4]_i_1_n_6 ;
  wire \cnt_reg[4]_i_1_n_7 ;
  wire \cnt_reg[8]_i_1_n_0 ;
  wire \cnt_reg[8]_i_1_n_1 ;
  wire \cnt_reg[8]_i_1_n_2 ;
  wire \cnt_reg[8]_i_1_n_3 ;
  wire \cnt_reg[8]_i_1_n_4 ;
  wire \cnt_reg[8]_i_1_n_5 ;
  wire \cnt_reg[8]_i_1_n_6 ;
  wire \cnt_reg[8]_i_1_n_7 ;
  wire \cnt_reg_n_0_[0] ;
  wire \cnt_reg_n_0_[10] ;
  wire \cnt_reg_n_0_[11] ;
  wire \cnt_reg_n_0_[12] ;
  wire \cnt_reg_n_0_[13] ;
  wire \cnt_reg_n_0_[1] ;
  wire \cnt_reg_n_0_[2] ;
  wire \cnt_reg_n_0_[3] ;
  wire \cnt_reg_n_0_[4] ;
  wire \cnt_reg_n_0_[5] ;
  wire \cnt_reg_n_0_[6] ;
  wire \cnt_reg_n_0_[7] ;
  wire \cnt_reg_n_0_[8] ;
  wire \cnt_reg_n_0_[9] ;
  wire [3:0]digit;
  wire [15:0]i_data_store;
  wire \o_seg_r[6]_i_10_n_0 ;
  wire \o_seg_r[6]_i_11_n_0 ;
  wire \o_seg_r[6]_i_12_n_0 ;
  wire \o_seg_r[6]_i_13_n_0 ;
  wire \o_seg_r[6]_i_6_n_0 ;
  wire \o_seg_r[6]_i_7_n_0 ;
  wire \o_seg_r[6]_i_8_n_0 ;
  wire \o_seg_r[6]_i_9_n_0 ;
  wire [7:0]o_sel_OBUF;
  wire [2:0]seg7_addr;
  wire \seg7_addr[0]_i_1_n_0 ;
  wire \seg7_addr[1]_i_1_n_0 ;
  wire \seg7_addr[2]_i_1_n_0 ;
  wire seg7_clk;
  wire [6:0]seg_decoder_return;
  wire [3:2]\NLW_cnt_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_cnt_reg[12]_i_1_O_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    \cnt[0]_i_5 
       (.I0(\cnt_reg_n_0_[0] ),
        .O(\cnt[0]_i_5_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[0] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\cnt_reg[0]_i_1_n_7 ),
        .Q(\cnt_reg_n_0_[0] ));
  CARRY4 \cnt_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\cnt_reg[0]_i_1_n_0 ,\cnt_reg[0]_i_1_n_1 ,\cnt_reg[0]_i_1_n_2 ,\cnt_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\cnt_reg[0]_i_1_n_4 ,\cnt_reg[0]_i_1_n_5 ,\cnt_reg[0]_i_1_n_6 ,\cnt_reg[0]_i_1_n_7 }),
        .S({\cnt_reg_n_0_[3] ,\cnt_reg_n_0_[2] ,\cnt_reg_n_0_[1] ,\cnt[0]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[10] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\cnt_reg[8]_i_1_n_5 ),
        .Q(\cnt_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[11] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\cnt_reg[8]_i_1_n_4 ),
        .Q(\cnt_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[12] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\cnt_reg[12]_i_1_n_7 ),
        .Q(\cnt_reg_n_0_[12] ));
  CARRY4 \cnt_reg[12]_i_1 
       (.CI(\cnt_reg[8]_i_1_n_0 ),
        .CO({\NLW_cnt_reg[12]_i_1_CO_UNCONNECTED [3:2],\cnt_reg[12]_i_1_n_2 ,\cnt_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_cnt_reg[12]_i_1_O_UNCONNECTED [3],\cnt_reg[12]_i_1_n_5 ,\cnt_reg[12]_i_1_n_6 ,\cnt_reg[12]_i_1_n_7 }),
        .S({1'b0,seg7_clk,\cnt_reg_n_0_[13] ,\cnt_reg_n_0_[12] }));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[13] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\cnt_reg[12]_i_1_n_6 ),
        .Q(\cnt_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[14] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\cnt_reg[12]_i_1_n_5 ),
        .Q(seg7_clk));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[1] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\cnt_reg[0]_i_1_n_6 ),
        .Q(\cnt_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[2] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\cnt_reg[0]_i_1_n_5 ),
        .Q(\cnt_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[3] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\cnt_reg[0]_i_1_n_4 ),
        .Q(\cnt_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[4] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\cnt_reg[4]_i_1_n_7 ),
        .Q(\cnt_reg_n_0_[4] ));
  CARRY4 \cnt_reg[4]_i_1 
       (.CI(\cnt_reg[0]_i_1_n_0 ),
        .CO({\cnt_reg[4]_i_1_n_0 ,\cnt_reg[4]_i_1_n_1 ,\cnt_reg[4]_i_1_n_2 ,\cnt_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[4]_i_1_n_4 ,\cnt_reg[4]_i_1_n_5 ,\cnt_reg[4]_i_1_n_6 ,\cnt_reg[4]_i_1_n_7 }),
        .S({\cnt_reg_n_0_[7] ,\cnt_reg_n_0_[6] ,\cnt_reg_n_0_[5] ,\cnt_reg_n_0_[4] }));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[5] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\cnt_reg[4]_i_1_n_6 ),
        .Q(\cnt_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[6] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\cnt_reg[4]_i_1_n_5 ),
        .Q(\cnt_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[7] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\cnt_reg[4]_i_1_n_4 ),
        .Q(\cnt_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[8] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\cnt_reg[8]_i_1_n_7 ),
        .Q(\cnt_reg_n_0_[8] ));
  CARRY4 \cnt_reg[8]_i_1 
       (.CI(\cnt_reg[4]_i_1_n_0 ),
        .CO({\cnt_reg[8]_i_1_n_0 ,\cnt_reg[8]_i_1_n_1 ,\cnt_reg[8]_i_1_n_2 ,\cnt_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[8]_i_1_n_4 ,\cnt_reg[8]_i_1_n_5 ,\cnt_reg[8]_i_1_n_6 ,\cnt_reg[8]_i_1_n_7 }),
        .S({\cnt_reg_n_0_[11] ,\cnt_reg_n_0_[10] ,\cnt_reg_n_0_[9] ,\cnt_reg_n_0_[8] }));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[9] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\cnt_reg[8]_i_1_n_6 ),
        .Q(\cnt_reg_n_0_[9] ));
  FDCE #(
    .INIT(1'b0)) 
    \i_data_store_reg[0] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(D[0]),
        .Q(i_data_store[0]));
  FDCE #(
    .INIT(1'b0)) 
    \i_data_store_reg[10] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(D[10]),
        .Q(i_data_store[10]));
  FDCE #(
    .INIT(1'b0)) 
    \i_data_store_reg[11] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(D[11]),
        .Q(i_data_store[11]));
  FDCE #(
    .INIT(1'b0)) 
    \i_data_store_reg[12] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(D[12]),
        .Q(i_data_store[12]));
  FDCE #(
    .INIT(1'b0)) 
    \i_data_store_reg[13] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(D[13]),
        .Q(i_data_store[13]));
  FDCE #(
    .INIT(1'b0)) 
    \i_data_store_reg[14] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(D[14]),
        .Q(i_data_store[14]));
  FDCE #(
    .INIT(1'b0)) 
    \i_data_store_reg[15] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(D[15]),
        .Q(i_data_store[15]));
  FDCE #(
    .INIT(1'b0)) 
    \i_data_store_reg[1] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(D[1]),
        .Q(i_data_store[1]));
  FDCE #(
    .INIT(1'b0)) 
    \i_data_store_reg[2] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(D[2]),
        .Q(i_data_store[2]));
  FDCE #(
    .INIT(1'b0)) 
    \i_data_store_reg[3] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(D[3]),
        .Q(i_data_store[3]));
  FDCE #(
    .INIT(1'b0)) 
    \i_data_store_reg[4] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(D[4]),
        .Q(i_data_store[4]));
  FDCE #(
    .INIT(1'b0)) 
    \i_data_store_reg[5] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(D[5]),
        .Q(i_data_store[5]));
  FDCE #(
    .INIT(1'b0)) 
    \i_data_store_reg[6] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(D[6]),
        .Q(i_data_store[6]));
  FDCE #(
    .INIT(1'b0)) 
    \i_data_store_reg[7] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(D[7]),
        .Q(i_data_store[7]));
  FDCE #(
    .INIT(1'b0)) 
    \i_data_store_reg[8] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(D[8]),
        .Q(i_data_store[8]));
  FDCE #(
    .INIT(1'b0)) 
    \i_data_store_reg[9] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(D[9]),
        .Q(i_data_store[9]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h2812)) 
    \o_seg_r[0]_i_1 
       (.I0(digit[0]),
        .I1(digit[1]),
        .I2(digit[2]),
        .I3(digit[3]),
        .O(seg_decoder_return[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hE448)) 
    \o_seg_r[1]_i_1 
       (.I0(digit[0]),
        .I1(digit[2]),
        .I2(digit[1]),
        .I3(digit[3]),
        .O(seg_decoder_return[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hA210)) 
    \o_seg_r[2]_i_1 
       (.I0(digit[2]),
        .I1(digit[0]),
        .I2(digit[1]),
        .I3(digit[3]),
        .O(seg_decoder_return[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h8924)) 
    \o_seg_r[3]_i_1 
       (.I0(digit[1]),
        .I1(digit[2]),
        .I2(digit[3]),
        .I3(digit[0]),
        .O(seg_decoder_return[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h445C)) 
    \o_seg_r[4]_i_1 
       (.I0(digit[3]),
        .I1(digit[0]),
        .I2(digit[2]),
        .I3(digit[1]),
        .O(seg_decoder_return[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h480E)) 
    \o_seg_r[5]_i_1 
       (.I0(digit[1]),
        .I1(digit[0]),
        .I2(digit[3]),
        .I3(digit[2]),
        .O(seg_decoder_return[5]));
  LUT4 #(
    .INIT(16'h0285)) 
    \o_seg_r[6]_i_1 
       (.I0(digit[2]),
        .I1(digit[0]),
        .I2(digit[1]),
        .I3(digit[3]),
        .O(seg_decoder_return[6]));
  LUT4 #(
    .INIT(16'h00B8)) 
    \o_seg_r[6]_i_10 
       (.I0(i_data_store[9]),
        .I1(seg7_addr[1]),
        .I2(i_data_store[1]),
        .I3(seg7_addr[2]),
        .O(\o_seg_r[6]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h00B8)) 
    \o_seg_r[6]_i_11 
       (.I0(i_data_store[13]),
        .I1(seg7_addr[1]),
        .I2(i_data_store[5]),
        .I3(seg7_addr[2]),
        .O(\o_seg_r[6]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h00B8)) 
    \o_seg_r[6]_i_12 
       (.I0(i_data_store[11]),
        .I1(seg7_addr[1]),
        .I2(i_data_store[3]),
        .I3(seg7_addr[2]),
        .O(\o_seg_r[6]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h00B8)) 
    \o_seg_r[6]_i_13 
       (.I0(i_data_store[15]),
        .I1(seg7_addr[1]),
        .I2(i_data_store[7]),
        .I3(seg7_addr[2]),
        .O(\o_seg_r[6]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h00B8)) 
    \o_seg_r[6]_i_6 
       (.I0(i_data_store[10]),
        .I1(seg7_addr[1]),
        .I2(i_data_store[2]),
        .I3(seg7_addr[2]),
        .O(\o_seg_r[6]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h00B8)) 
    \o_seg_r[6]_i_7 
       (.I0(i_data_store[14]),
        .I1(seg7_addr[1]),
        .I2(i_data_store[6]),
        .I3(seg7_addr[2]),
        .O(\o_seg_r[6]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h00B8)) 
    \o_seg_r[6]_i_8 
       (.I0(i_data_store[8]),
        .I1(seg7_addr[1]),
        .I2(i_data_store[0]),
        .I3(seg7_addr[2]),
        .O(\o_seg_r[6]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h00B8)) 
    \o_seg_r[6]_i_9 
       (.I0(i_data_store[12]),
        .I1(seg7_addr[1]),
        .I2(i_data_store[4]),
        .I3(seg7_addr[2]),
        .O(\o_seg_r[6]_i_9_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \o_seg_r_reg[0] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .D(seg_decoder_return[0]),
        .PRE(AR),
        .Q(Q[0]));
  FDPE #(
    .INIT(1'b1)) 
    \o_seg_r_reg[1] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .D(seg_decoder_return[1]),
        .PRE(AR),
        .Q(Q[1]));
  FDPE #(
    .INIT(1'b1)) 
    \o_seg_r_reg[2] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .D(seg_decoder_return[2]),
        .PRE(AR),
        .Q(Q[2]));
  FDPE #(
    .INIT(1'b1)) 
    \o_seg_r_reg[3] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .D(seg_decoder_return[3]),
        .PRE(AR),
        .Q(Q[3]));
  FDPE #(
    .INIT(1'b1)) 
    \o_seg_r_reg[4] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .D(seg_decoder_return[4]),
        .PRE(AR),
        .Q(Q[4]));
  FDPE #(
    .INIT(1'b1)) 
    \o_seg_r_reg[5] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .D(seg_decoder_return[5]),
        .PRE(AR),
        .Q(Q[5]));
  FDPE #(
    .INIT(1'b1)) 
    \o_seg_r_reg[6] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .D(seg_decoder_return[6]),
        .PRE(AR),
        .Q(Q[6]));
  MUXF7 \o_seg_r_reg[6]_i_2 
       (.I0(\o_seg_r[6]_i_6_n_0 ),
        .I1(\o_seg_r[6]_i_7_n_0 ),
        .O(digit[2]),
        .S(seg7_addr[0]));
  MUXF7 \o_seg_r_reg[6]_i_3 
       (.I0(\o_seg_r[6]_i_8_n_0 ),
        .I1(\o_seg_r[6]_i_9_n_0 ),
        .O(digit[0]),
        .S(seg7_addr[0]));
  MUXF7 \o_seg_r_reg[6]_i_4 
       (.I0(\o_seg_r[6]_i_10_n_0 ),
        .I1(\o_seg_r[6]_i_11_n_0 ),
        .O(digit[1]),
        .S(seg7_addr[0]));
  MUXF7 \o_seg_r_reg[6]_i_5 
       (.I0(\o_seg_r[6]_i_12_n_0 ),
        .I1(\o_seg_r[6]_i_13_n_0 ),
        .O(digit[3]),
        .S(seg7_addr[0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \o_sel_OBUF[0]_inst_i_1 
       (.I0(seg7_addr[2]),
        .I1(seg7_addr[0]),
        .I2(seg7_addr[1]),
        .O(o_sel_OBUF[0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    \o_sel_OBUF[1]_inst_i_1 
       (.I0(seg7_addr[2]),
        .I1(seg7_addr[0]),
        .I2(seg7_addr[1]),
        .O(o_sel_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    \o_sel_OBUF[2]_inst_i_1 
       (.I0(seg7_addr[2]),
        .I1(seg7_addr[1]),
        .I2(seg7_addr[0]),
        .O(o_sel_OBUF[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hBF)) 
    \o_sel_OBUF[3]_inst_i_1 
       (.I0(seg7_addr[2]),
        .I1(seg7_addr[0]),
        .I2(seg7_addr[1]),
        .O(o_sel_OBUF[3]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \o_sel_OBUF[4]_inst_i_1 
       (.I0(seg7_addr[0]),
        .I1(seg7_addr[1]),
        .I2(seg7_addr[2]),
        .O(o_sel_OBUF[4]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \o_sel_OBUF[5]_inst_i_1 
       (.I0(seg7_addr[0]),
        .I1(seg7_addr[1]),
        .I2(seg7_addr[2]),
        .O(o_sel_OBUF[5]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \o_sel_OBUF[6]_inst_i_1 
       (.I0(seg7_addr[1]),
        .I1(seg7_addr[0]),
        .I2(seg7_addr[2]),
        .O(o_sel_OBUF[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \o_sel_OBUF[7]_inst_i_1 
       (.I0(seg7_addr[0]),
        .I1(seg7_addr[1]),
        .I2(seg7_addr[2]),
        .O(o_sel_OBUF[7]));
  LUT1 #(
    .INIT(2'h1)) 
    \seg7_addr[0]_i_1 
       (.I0(seg7_addr[0]),
        .O(\seg7_addr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \seg7_addr[1]_i_1 
       (.I0(seg7_addr[0]),
        .I1(seg7_addr[1]),
        .O(\seg7_addr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \seg7_addr[2]_i_1 
       (.I0(seg7_addr[0]),
        .I1(seg7_addr[1]),
        .I2(seg7_addr[2]),
        .O(\seg7_addr[2]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \seg7_addr_reg[0] 
       (.C(seg7_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\seg7_addr[0]_i_1_n_0 ),
        .Q(seg7_addr[0]));
  FDCE #(
    .INIT(1'b0)) 
    \seg7_addr_reg[1] 
       (.C(seg7_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\seg7_addr[1]_i_1_n_0 ),
        .Q(seg7_addr[1]));
  FDCE #(
    .INIT(1'b0)) 
    \seg7_addr_reg[2] 
       (.C(seg7_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\seg7_addr[2]_i_1_n_0 ),
        .Q(seg7_addr[2]));
endmodule

(* NotValidForBitStream *)
module top
   (clk_in,
    reset,
    enable,
    start,
    o_seg,
    o_sel);
  input clk_in;
  input reset;
  input enable;
  input start;
  output [7:0]o_seg;
  output [7:0]o_sel;

  wire clk_cpu;
  wire clk_in;
  wire clk_in_IBUF;
  wire clk_in_IBUF_BUFG;
  wire \cnt[0]_i_5__0_n_0 ;
  wire \cnt_reg[0]_i_1__0_n_0 ;
  wire \cnt_reg[0]_i_1__0_n_1 ;
  wire \cnt_reg[0]_i_1__0_n_2 ;
  wire \cnt_reg[0]_i_1__0_n_3 ;
  wire \cnt_reg[0]_i_1__0_n_4 ;
  wire \cnt_reg[0]_i_1__0_n_5 ;
  wire \cnt_reg[0]_i_1__0_n_6 ;
  wire \cnt_reg[0]_i_1__0_n_7 ;
  wire \cnt_reg[12]_i_1__0_n_0 ;
  wire \cnt_reg[12]_i_1__0_n_1 ;
  wire \cnt_reg[12]_i_1__0_n_2 ;
  wire \cnt_reg[12]_i_1__0_n_3 ;
  wire \cnt_reg[12]_i_1__0_n_4 ;
  wire \cnt_reg[12]_i_1__0_n_5 ;
  wire \cnt_reg[12]_i_1__0_n_6 ;
  wire \cnt_reg[12]_i_1__0_n_7 ;
  wire \cnt_reg[16]_i_1_n_0 ;
  wire \cnt_reg[16]_i_1_n_1 ;
  wire \cnt_reg[16]_i_1_n_2 ;
  wire \cnt_reg[16]_i_1_n_3 ;
  wire \cnt_reg[16]_i_1_n_4 ;
  wire \cnt_reg[16]_i_1_n_5 ;
  wire \cnt_reg[16]_i_1_n_6 ;
  wire \cnt_reg[16]_i_1_n_7 ;
  wire \cnt_reg[20]_i_1_n_0 ;
  wire \cnt_reg[20]_i_1_n_1 ;
  wire \cnt_reg[20]_i_1_n_2 ;
  wire \cnt_reg[20]_i_1_n_3 ;
  wire \cnt_reg[20]_i_1_n_4 ;
  wire \cnt_reg[20]_i_1_n_5 ;
  wire \cnt_reg[20]_i_1_n_6 ;
  wire \cnt_reg[20]_i_1_n_7 ;
  wire \cnt_reg[24]_i_1_n_7 ;
  wire \cnt_reg[4]_i_1__0_n_0 ;
  wire \cnt_reg[4]_i_1__0_n_1 ;
  wire \cnt_reg[4]_i_1__0_n_2 ;
  wire \cnt_reg[4]_i_1__0_n_3 ;
  wire \cnt_reg[4]_i_1__0_n_4 ;
  wire \cnt_reg[4]_i_1__0_n_5 ;
  wire \cnt_reg[4]_i_1__0_n_6 ;
  wire \cnt_reg[4]_i_1__0_n_7 ;
  wire \cnt_reg[8]_i_1__0_n_0 ;
  wire \cnt_reg[8]_i_1__0_n_1 ;
  wire \cnt_reg[8]_i_1__0_n_2 ;
  wire \cnt_reg[8]_i_1__0_n_3 ;
  wire \cnt_reg[8]_i_1__0_n_4 ;
  wire \cnt_reg[8]_i_1__0_n_5 ;
  wire \cnt_reg[8]_i_1__0_n_6 ;
  wire \cnt_reg[8]_i_1__0_n_7 ;
  wire \cnt_reg_n_0_[0] ;
  wire \cnt_reg_n_0_[10] ;
  wire \cnt_reg_n_0_[11] ;
  wire \cnt_reg_n_0_[12] ;
  wire \cnt_reg_n_0_[13] ;
  wire \cnt_reg_n_0_[14] ;
  wire \cnt_reg_n_0_[15] ;
  wire \cnt_reg_n_0_[16] ;
  wire \cnt_reg_n_0_[17] ;
  wire \cnt_reg_n_0_[18] ;
  wire \cnt_reg_n_0_[19] ;
  wire \cnt_reg_n_0_[1] ;
  wire \cnt_reg_n_0_[20] ;
  wire \cnt_reg_n_0_[21] ;
  wire \cnt_reg_n_0_[22] ;
  wire \cnt_reg_n_0_[23] ;
  wire \cnt_reg_n_0_[2] ;
  wire \cnt_reg_n_0_[3] ;
  wire \cnt_reg_n_0_[4] ;
  wire \cnt_reg_n_0_[5] ;
  wire \cnt_reg_n_0_[6] ;
  wire \cnt_reg_n_0_[7] ;
  wire \cnt_reg_n_0_[8] ;
  wire \cnt_reg_n_0_[9] ;
  wire enable;
  wire enable_IBUF;
  wire [7:0]i_addr;
  wire [15:0]instruction;
  wire [7:0]o_seg;
  wire [6:0]o_seg_OBUF;
  wire [7:0]o_sel;
  wire [7:0]o_sel_OBUF;
  wire reset;
  wire reset_IBUF;
  wire start;
  wire start_IBUF;
  wire [3:0]\NLW_cnt_reg[24]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_cnt_reg[24]_i_1_O_UNCONNECTED ;

  BUFG clk_in_IBUF_BUFG_inst
       (.I(clk_in_IBUF),
        .O(clk_in_IBUF_BUFG));
  IBUF clk_in_IBUF_inst
       (.I(clk_in),
        .O(clk_in_IBUF));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt[0]_i_5__0 
       (.I0(\cnt_reg_n_0_[0] ),
        .O(\cnt[0]_i_5__0_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[0] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\cnt_reg[0]_i_1__0_n_7 ),
        .Q(\cnt_reg_n_0_[0] ));
  CARRY4 \cnt_reg[0]_i_1__0 
       (.CI(1'b0),
        .CO({\cnt_reg[0]_i_1__0_n_0 ,\cnt_reg[0]_i_1__0_n_1 ,\cnt_reg[0]_i_1__0_n_2 ,\cnt_reg[0]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\cnt_reg[0]_i_1__0_n_4 ,\cnt_reg[0]_i_1__0_n_5 ,\cnt_reg[0]_i_1__0_n_6 ,\cnt_reg[0]_i_1__0_n_7 }),
        .S({\cnt_reg_n_0_[3] ,\cnt_reg_n_0_[2] ,\cnt_reg_n_0_[1] ,\cnt[0]_i_5__0_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[10] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\cnt_reg[8]_i_1__0_n_5 ),
        .Q(\cnt_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[11] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\cnt_reg[8]_i_1__0_n_4 ),
        .Q(\cnt_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[12] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\cnt_reg[12]_i_1__0_n_7 ),
        .Q(\cnt_reg_n_0_[12] ));
  CARRY4 \cnt_reg[12]_i_1__0 
       (.CI(\cnt_reg[8]_i_1__0_n_0 ),
        .CO({\cnt_reg[12]_i_1__0_n_0 ,\cnt_reg[12]_i_1__0_n_1 ,\cnt_reg[12]_i_1__0_n_2 ,\cnt_reg[12]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[12]_i_1__0_n_4 ,\cnt_reg[12]_i_1__0_n_5 ,\cnt_reg[12]_i_1__0_n_6 ,\cnt_reg[12]_i_1__0_n_7 }),
        .S({\cnt_reg_n_0_[15] ,\cnt_reg_n_0_[14] ,\cnt_reg_n_0_[13] ,\cnt_reg_n_0_[12] }));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[13] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\cnt_reg[12]_i_1__0_n_6 ),
        .Q(\cnt_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[14] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\cnt_reg[12]_i_1__0_n_5 ),
        .Q(\cnt_reg_n_0_[14] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[15] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\cnt_reg[12]_i_1__0_n_4 ),
        .Q(\cnt_reg_n_0_[15] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[16] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\cnt_reg[16]_i_1_n_7 ),
        .Q(\cnt_reg_n_0_[16] ));
  CARRY4 \cnt_reg[16]_i_1 
       (.CI(\cnt_reg[12]_i_1__0_n_0 ),
        .CO({\cnt_reg[16]_i_1_n_0 ,\cnt_reg[16]_i_1_n_1 ,\cnt_reg[16]_i_1_n_2 ,\cnt_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[16]_i_1_n_4 ,\cnt_reg[16]_i_1_n_5 ,\cnt_reg[16]_i_1_n_6 ,\cnt_reg[16]_i_1_n_7 }),
        .S({\cnt_reg_n_0_[19] ,\cnt_reg_n_0_[18] ,\cnt_reg_n_0_[17] ,\cnt_reg_n_0_[16] }));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[17] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\cnt_reg[16]_i_1_n_6 ),
        .Q(\cnt_reg_n_0_[17] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[18] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\cnt_reg[16]_i_1_n_5 ),
        .Q(\cnt_reg_n_0_[18] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[19] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\cnt_reg[16]_i_1_n_4 ),
        .Q(\cnt_reg_n_0_[19] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[1] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\cnt_reg[0]_i_1__0_n_6 ),
        .Q(\cnt_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[20] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\cnt_reg[20]_i_1_n_7 ),
        .Q(\cnt_reg_n_0_[20] ));
  CARRY4 \cnt_reg[20]_i_1 
       (.CI(\cnt_reg[16]_i_1_n_0 ),
        .CO({\cnt_reg[20]_i_1_n_0 ,\cnt_reg[20]_i_1_n_1 ,\cnt_reg[20]_i_1_n_2 ,\cnt_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[20]_i_1_n_4 ,\cnt_reg[20]_i_1_n_5 ,\cnt_reg[20]_i_1_n_6 ,\cnt_reg[20]_i_1_n_7 }),
        .S({\cnt_reg_n_0_[23] ,\cnt_reg_n_0_[22] ,\cnt_reg_n_0_[21] ,\cnt_reg_n_0_[20] }));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[21] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\cnt_reg[20]_i_1_n_6 ),
        .Q(\cnt_reg_n_0_[21] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[22] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\cnt_reg[20]_i_1_n_5 ),
        .Q(\cnt_reg_n_0_[22] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[23] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\cnt_reg[20]_i_1_n_4 ),
        .Q(\cnt_reg_n_0_[23] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[24] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\cnt_reg[24]_i_1_n_7 ),
        .Q(clk_cpu));
  CARRY4 \cnt_reg[24]_i_1 
       (.CI(\cnt_reg[20]_i_1_n_0 ),
        .CO(\NLW_cnt_reg[24]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_cnt_reg[24]_i_1_O_UNCONNECTED [3:1],\cnt_reg[24]_i_1_n_7 }),
        .S({1'b0,1'b0,1'b0,clk_cpu}));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[2] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\cnt_reg[0]_i_1__0_n_5 ),
        .Q(\cnt_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[3] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\cnt_reg[0]_i_1__0_n_4 ),
        .Q(\cnt_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[4] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\cnt_reg[4]_i_1__0_n_7 ),
        .Q(\cnt_reg_n_0_[4] ));
  CARRY4 \cnt_reg[4]_i_1__0 
       (.CI(\cnt_reg[0]_i_1__0_n_0 ),
        .CO({\cnt_reg[4]_i_1__0_n_0 ,\cnt_reg[4]_i_1__0_n_1 ,\cnt_reg[4]_i_1__0_n_2 ,\cnt_reg[4]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[4]_i_1__0_n_4 ,\cnt_reg[4]_i_1__0_n_5 ,\cnt_reg[4]_i_1__0_n_6 ,\cnt_reg[4]_i_1__0_n_7 }),
        .S({\cnt_reg_n_0_[7] ,\cnt_reg_n_0_[6] ,\cnt_reg_n_0_[5] ,\cnt_reg_n_0_[4] }));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[5] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\cnt_reg[4]_i_1__0_n_6 ),
        .Q(\cnt_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[6] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\cnt_reg[4]_i_1__0_n_5 ),
        .Q(\cnt_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[7] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\cnt_reg[4]_i_1__0_n_4 ),
        .Q(\cnt_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[8] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\cnt_reg[8]_i_1__0_n_7 ),
        .Q(\cnt_reg_n_0_[8] ));
  CARRY4 \cnt_reg[8]_i_1__0 
       (.CI(\cnt_reg[4]_i_1__0_n_0 ),
        .CO({\cnt_reg[8]_i_1__0_n_0 ,\cnt_reg[8]_i_1__0_n_1 ,\cnt_reg[8]_i_1__0_n_2 ,\cnt_reg[8]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[8]_i_1__0_n_4 ,\cnt_reg[8]_i_1__0_n_5 ,\cnt_reg[8]_i_1__0_n_6 ,\cnt_reg[8]_i_1__0_n_7 }),
        .S({\cnt_reg_n_0_[11] ,\cnt_reg_n_0_[10] ,\cnt_reg_n_0_[9] ,\cnt_reg_n_0_[8] }));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[9] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\cnt_reg[8]_i_1__0_n_6 ),
        .Q(\cnt_reg_n_0_[9] ));
  seg7x16 display_inst
       (.AR(reset_IBUF),
        .D(instruction),
        .Q(o_seg_OBUF),
        .clk_in_IBUF_BUFG(clk_in_IBUF_BUFG),
        .o_sel_OBUF(o_sel_OBUF));
  IBUF enable_IBUF_inst
       (.I(enable),
        .O(enable_IBUF));
  imem imem_inst
       (.Q(i_addr),
        .spo(instruction));
  OBUF \o_seg_OBUF[0]_inst 
       (.I(o_seg_OBUF[0]),
        .O(o_seg[0]));
  OBUF \o_seg_OBUF[1]_inst 
       (.I(o_seg_OBUF[1]),
        .O(o_seg[1]));
  OBUF \o_seg_OBUF[2]_inst 
       (.I(o_seg_OBUF[2]),
        .O(o_seg[2]));
  OBUF \o_seg_OBUF[3]_inst 
       (.I(o_seg_OBUF[3]),
        .O(o_seg[3]));
  OBUF \o_seg_OBUF[4]_inst 
       (.I(o_seg_OBUF[4]),
        .O(o_seg[4]));
  OBUF \o_seg_OBUF[5]_inst 
       (.I(o_seg_OBUF[5]),
        .O(o_seg[5]));
  OBUF \o_seg_OBUF[6]_inst 
       (.I(o_seg_OBUF[6]),
        .O(o_seg[6]));
  OBUF \o_seg_OBUF[7]_inst 
       (.I(1'b1),
        .O(o_seg[7]));
  OBUF \o_sel_OBUF[0]_inst 
       (.I(o_sel_OBUF[0]),
        .O(o_sel[0]));
  OBUF \o_sel_OBUF[1]_inst 
       (.I(o_sel_OBUF[1]),
        .O(o_sel[1]));
  OBUF \o_sel_OBUF[2]_inst 
       (.I(o_sel_OBUF[2]),
        .O(o_sel[2]));
  OBUF \o_sel_OBUF[3]_inst 
       (.I(o_sel_OBUF[3]),
        .O(o_sel[3]));
  OBUF \o_sel_OBUF[4]_inst 
       (.I(o_sel_OBUF[4]),
        .O(o_sel[4]));
  OBUF \o_sel_OBUF[5]_inst 
       (.I(o_sel_OBUF[5]),
        .O(o_sel[5]));
  OBUF \o_sel_OBUF[6]_inst 
       (.I(o_sel_OBUF[6]),
        .O(o_sel[6]));
  OBUF \o_sel_OBUF[7]_inst 
       (.I(o_sel_OBUF[7]),
        .O(o_sel[7]));
  pcpu pcpu_inst
       (.AR(reset_IBUF),
        .CLK(clk_cpu),
        .Q(i_addr),
        .enable_IBUF(enable_IBUF),
        .start_IBUF(start_IBUF));
  IBUF reset_IBUF_inst
       (.I(reset),
        .O(reset_IBUF));
  IBUF start_IBUF_inst
       (.I(start),
        .O(start_IBUF));
endmodule

(* C_ADDR_WIDTH = "11" *) (* C_DEFAULT_DATA = "0" *) (* C_DEPTH = "2048" *) 
(* C_ELABORATION_DIR = "./" *) (* C_FAMILY = "artix7" *) (* C_HAS_CLK = "0" *) 
(* C_HAS_D = "0" *) (* C_HAS_DPO = "0" *) (* C_HAS_DPRA = "0" *) 
(* C_HAS_I_CE = "0" *) (* C_HAS_QDPO = "0" *) (* C_HAS_QDPO_CE = "0" *) 
(* C_HAS_QDPO_CLK = "0" *) (* C_HAS_QDPO_RST = "0" *) (* C_HAS_QDPO_SRST = "0" *) 
(* C_HAS_QSPO = "0" *) (* C_HAS_QSPO_CE = "0" *) (* C_HAS_QSPO_RST = "0" *) 
(* C_HAS_QSPO_SRST = "0" *) (* C_HAS_SPO = "1" *) (* C_HAS_WE = "0" *) 
(* C_MEM_INIT_FILE = "dist_mem_gen_0.mif" *) (* C_MEM_TYPE = "0" *) (* C_PARSER_TYPE = "1" *) 
(* C_PIPELINE_STAGES = "0" *) (* C_QCE_JOINED = "0" *) (* C_QUALIFY_WE = "0" *) 
(* C_READ_MIF = "1" *) (* C_REG_A_D_INPUTS = "0" *) (* C_REG_DPRA_INPUT = "0" *) 
(* C_SYNC_ENABLE = "1" *) (* C_WIDTH = "32" *) (* ORIG_REF_NAME = "dist_mem_gen_v8_0_10" *) 
module dist_mem_gen_0_dist_mem_gen_v8_0_10
   (a,
    d,
    dpra,
    clk,
    we,
    i_ce,
    qspo_ce,
    qdpo_ce,
    qdpo_clk,
    qspo_rst,
    qdpo_rst,
    qspo_srst,
    qdpo_srst,
    spo,
    dpo,
    qspo,
    qdpo);
  input [10:0]a;
  input [31:0]d;
  input [10:0]dpra;
  input clk;
  input we;
  input i_ce;
  input qspo_ce;
  input qdpo_ce;
  input qdpo_clk;
  input qspo_rst;
  input qdpo_rst;
  input qspo_srst;
  input qdpo_srst;
  output [31:0]spo;
  output [31:0]dpo;
  output [31:0]qspo;
  output [31:0]qdpo;

  wire \<const0> ;
  wire [10:0]a;
  wire [15:0]\^spo ;

  assign dpo[31] = \<const0> ;
  assign dpo[30] = \<const0> ;
  assign dpo[29] = \<const0> ;
  assign dpo[28] = \<const0> ;
  assign dpo[27] = \<const0> ;
  assign dpo[26] = \<const0> ;
  assign dpo[25] = \<const0> ;
  assign dpo[24] = \<const0> ;
  assign dpo[23] = \<const0> ;
  assign dpo[22] = \<const0> ;
  assign dpo[21] = \<const0> ;
  assign dpo[20] = \<const0> ;
  assign dpo[19] = \<const0> ;
  assign dpo[18] = \<const0> ;
  assign dpo[17] = \<const0> ;
  assign dpo[16] = \<const0> ;
  assign dpo[15] = \<const0> ;
  assign dpo[14] = \<const0> ;
  assign dpo[13] = \<const0> ;
  assign dpo[12] = \<const0> ;
  assign dpo[11] = \<const0> ;
  assign dpo[10] = \<const0> ;
  assign dpo[9] = \<const0> ;
  assign dpo[8] = \<const0> ;
  assign dpo[7] = \<const0> ;
  assign dpo[6] = \<const0> ;
  assign dpo[5] = \<const0> ;
  assign dpo[4] = \<const0> ;
  assign dpo[3] = \<const0> ;
  assign dpo[2] = \<const0> ;
  assign dpo[1] = \<const0> ;
  assign dpo[0] = \<const0> ;
  assign qdpo[31] = \<const0> ;
  assign qdpo[30] = \<const0> ;
  assign qdpo[29] = \<const0> ;
  assign qdpo[28] = \<const0> ;
  assign qdpo[27] = \<const0> ;
  assign qdpo[26] = \<const0> ;
  assign qdpo[25] = \<const0> ;
  assign qdpo[24] = \<const0> ;
  assign qdpo[23] = \<const0> ;
  assign qdpo[22] = \<const0> ;
  assign qdpo[21] = \<const0> ;
  assign qdpo[20] = \<const0> ;
  assign qdpo[19] = \<const0> ;
  assign qdpo[18] = \<const0> ;
  assign qdpo[17] = \<const0> ;
  assign qdpo[16] = \<const0> ;
  assign qdpo[15] = \<const0> ;
  assign qdpo[14] = \<const0> ;
  assign qdpo[13] = \<const0> ;
  assign qdpo[12] = \<const0> ;
  assign qdpo[11] = \<const0> ;
  assign qdpo[10] = \<const0> ;
  assign qdpo[9] = \<const0> ;
  assign qdpo[8] = \<const0> ;
  assign qdpo[7] = \<const0> ;
  assign qdpo[6] = \<const0> ;
  assign qdpo[5] = \<const0> ;
  assign qdpo[4] = \<const0> ;
  assign qdpo[3] = \<const0> ;
  assign qdpo[2] = \<const0> ;
  assign qdpo[1] = \<const0> ;
  assign qdpo[0] = \<const0> ;
  assign qspo[31] = \<const0> ;
  assign qspo[30] = \<const0> ;
  assign qspo[29] = \<const0> ;
  assign qspo[28] = \<const0> ;
  assign qspo[27] = \<const0> ;
  assign qspo[26] = \<const0> ;
  assign qspo[25] = \<const0> ;
  assign qspo[24] = \<const0> ;
  assign qspo[23] = \<const0> ;
  assign qspo[22] = \<const0> ;
  assign qspo[21] = \<const0> ;
  assign qspo[20] = \<const0> ;
  assign qspo[19] = \<const0> ;
  assign qspo[18] = \<const0> ;
  assign qspo[17] = \<const0> ;
  assign qspo[16] = \<const0> ;
  assign qspo[15] = \<const0> ;
  assign qspo[14] = \<const0> ;
  assign qspo[13] = \<const0> ;
  assign qspo[12] = \<const0> ;
  assign qspo[11] = \<const0> ;
  assign qspo[10] = \<const0> ;
  assign qspo[9] = \<const0> ;
  assign qspo[8] = \<const0> ;
  assign qspo[7] = \<const0> ;
  assign qspo[6] = \<const0> ;
  assign qspo[5] = \<const0> ;
  assign qspo[4] = \<const0> ;
  assign qspo[3] = \<const0> ;
  assign qspo[2] = \<const0> ;
  assign qspo[1] = \<const0> ;
  assign qspo[0] = \<const0> ;
  assign spo[31] = \<const0> ;
  assign spo[30] = \<const0> ;
  assign spo[29] = \<const0> ;
  assign spo[28] = \<const0> ;
  assign spo[27] = \<const0> ;
  assign spo[26] = \<const0> ;
  assign spo[25] = \<const0> ;
  assign spo[24] = \<const0> ;
  assign spo[23] = \<const0> ;
  assign spo[22] = \<const0> ;
  assign spo[21] = \<const0> ;
  assign spo[20] = \<const0> ;
  assign spo[19] = \<const0> ;
  assign spo[18] = \<const0> ;
  assign spo[17] = \<const0> ;
  assign spo[16] = \<const0> ;
  assign spo[15:0] = \^spo [15:0];
  GND GND
       (.G(\<const0> ));
  dist_mem_gen_0_dist_mem_gen_v8_0_10_synth \synth_options.dist_mem_inst 
       (.a(a),
        .spo(\^spo ));
endmodule

(* ORIG_REF_NAME = "dist_mem_gen_v8_0_10_synth" *) 
module dist_mem_gen_0_dist_mem_gen_v8_0_10_synth
   (spo,
    a);
  output [15:0]spo;
  input [10:0]a;

  wire [10:0]a;
  wire [15:0]spo;

  dist_mem_gen_0_rom \gen_rom.rom_inst 
       (.a(a),
        .spo(spo));
endmodule

(* ORIG_REF_NAME = "rom" *) 
module dist_mem_gen_0_rom
   (spo,
    a);
  output [15:0]spo;
  input [10:0]a;

  wire [10:0]a;
  wire [15:0]spo;
  wire \spo[0]_INST_0_i_1_n_0 ;
  wire \spo[0]_INST_0_i_2_n_0 ;
  wire \spo[0]_INST_0_i_3_n_0 ;
  wire \spo[0]_INST_0_i_4_n_0 ;
  wire \spo[0]_INST_0_i_5_n_0 ;
  wire \spo[0]_INST_0_i_6_n_0 ;
  wire \spo[10]_INST_0_i_1_n_0 ;
  wire \spo[10]_INST_0_i_2_n_0 ;
  wire \spo[10]_INST_0_i_3_n_0 ;
  wire \spo[10]_INST_0_i_4_n_0 ;
  wire \spo[10]_INST_0_i_5_n_0 ;
  wire \spo[10]_INST_0_i_6_n_0 ;
  wire \spo[11]_INST_0_i_1_n_0 ;
  wire \spo[11]_INST_0_i_2_n_0 ;
  wire \spo[11]_INST_0_i_3_n_0 ;
  wire \spo[12]_INST_0_i_1_n_0 ;
  wire \spo[12]_INST_0_i_2_n_0 ;
  wire \spo[12]_INST_0_i_3_n_0 ;
  wire \spo[12]_INST_0_i_4_n_0 ;
  wire \spo[12]_INST_0_i_5_n_0 ;
  wire \spo[12]_INST_0_i_6_n_0 ;
  wire \spo[12]_INST_0_i_7_n_0 ;
  wire \spo[12]_INST_0_i_8_n_0 ;
  wire \spo[13]_INST_0_i_1_n_0 ;
  wire \spo[13]_INST_0_i_2_n_0 ;
  wire \spo[13]_INST_0_i_3_n_0 ;
  wire \spo[13]_INST_0_i_4_n_0 ;
  wire \spo[13]_INST_0_i_5_n_0 ;
  wire \spo[13]_INST_0_i_6_n_0 ;
  wire \spo[13]_INST_0_i_7_n_0 ;
  wire \spo[14]_INST_0_i_1_n_0 ;
  wire \spo[14]_INST_0_i_2_n_0 ;
  wire \spo[14]_INST_0_i_3_n_0 ;
  wire \spo[14]_INST_0_i_4_n_0 ;
  wire \spo[14]_INST_0_i_5_n_0 ;
  wire \spo[14]_INST_0_i_6_n_0 ;
  wire \spo[14]_INST_0_i_7_n_0 ;
  wire \spo[15]_INST_0_i_1_n_0 ;
  wire \spo[15]_INST_0_i_2_n_0 ;
  wire \spo[15]_INST_0_i_3_n_0 ;
  wire \spo[15]_INST_0_i_4_n_0 ;
  wire \spo[15]_INST_0_i_5_n_0 ;
  wire \spo[15]_INST_0_i_6_n_0 ;
  wire \spo[15]_INST_0_i_7_n_0 ;
  wire \spo[1]_INST_0_i_1_n_0 ;
  wire \spo[1]_INST_0_i_2_n_0 ;
  wire \spo[1]_INST_0_i_3_n_0 ;
  wire \spo[1]_INST_0_i_4_n_0 ;
  wire \spo[1]_INST_0_i_5_n_0 ;
  wire \spo[1]_INST_0_i_6_n_0 ;
  wire \spo[1]_INST_0_i_7_n_0 ;
  wire \spo[2]_INST_0_i_1_n_0 ;
  wire \spo[2]_INST_0_i_2_n_0 ;
  wire \spo[2]_INST_0_i_3_n_0 ;
  wire \spo[3]_INST_0_i_1_n_0 ;
  wire \spo[3]_INST_0_i_2_n_0 ;
  wire \spo[3]_INST_0_i_3_n_0 ;
  wire \spo[3]_INST_0_i_4_n_0 ;
  wire \spo[3]_INST_0_i_5_n_0 ;
  wire \spo[4]_INST_0_i_1_n_0 ;
  wire \spo[4]_INST_0_i_2_n_0 ;
  wire \spo[4]_INST_0_i_3_n_0 ;
  wire \spo[4]_INST_0_i_4_n_0 ;
  wire \spo[5]_INST_0_i_1_n_0 ;
  wire \spo[5]_INST_0_i_2_n_0 ;
  wire \spo[5]_INST_0_i_3_n_0 ;
  wire \spo[5]_INST_0_i_4_n_0 ;
  wire \spo[5]_INST_0_i_5_n_0 ;
  wire \spo[6]_INST_0_i_1_n_0 ;
  wire \spo[6]_INST_0_i_2_n_0 ;
  wire \spo[6]_INST_0_i_3_n_0 ;
  wire \spo[6]_INST_0_i_4_n_0 ;
  wire \spo[7]_INST_0_i_1_n_0 ;
  wire \spo[7]_INST_0_i_2_n_0 ;
  wire \spo[7]_INST_0_i_3_n_0 ;
  wire \spo[7]_INST_0_i_4_n_0 ;
  wire \spo[7]_INST_0_i_5_n_0 ;
  wire \spo[8]_INST_0_i_1_n_0 ;
  wire \spo[8]_INST_0_i_2_n_0 ;
  wire \spo[8]_INST_0_i_3_n_0 ;
  wire \spo[8]_INST_0_i_4_n_0 ;
  wire \spo[8]_INST_0_i_5_n_0 ;
  wire \spo[8]_INST_0_i_6_n_0 ;
  wire \spo[9]_INST_0_i_1_n_0 ;
  wire \spo[9]_INST_0_i_2_n_0 ;
  wire \spo[9]_INST_0_i_3_n_0 ;
  wire \spo[9]_INST_0_i_4_n_0 ;
  wire \spo[9]_INST_0_i_5_n_0 ;
  wire \spo[9]_INST_0_i_6_n_0 ;

  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[0]_INST_0 
       (.I0(\spo[0]_INST_0_i_1_n_0 ),
        .I1(\spo[0]_INST_0_i_2_n_0 ),
        .I2(a[6]),
        .I3(\spo[0]_INST_0_i_3_n_0 ),
        .I4(a[5]),
        .I5(\spo[0]_INST_0_i_4_n_0 ),
        .O(spo[0]));
  LUT6 #(
    .INIT(64'h2040000037220000)) 
    \spo[0]_INST_0_i_1 
       (.I0(a[4]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(\spo[15]_INST_0_i_4_n_0 ),
        .I5(a[1]),
        .O(\spo[0]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0120000010D00000)) 
    \spo[0]_INST_0_i_2 
       (.I0(a[4]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[3]),
        .I4(\spo[15]_INST_0_i_4_n_0 ),
        .I5(a[1]),
        .O(\spo[0]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h1090400000800000)) 
    \spo[0]_INST_0_i_3 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(\spo[15]_INST_0_i_4_n_0 ),
        .I3(a[3]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[0]_INST_0_i_3_n_0 ));
  MUXF7 \spo[0]_INST_0_i_4 
       (.I0(\spo[0]_INST_0_i_5_n_0 ),
        .I1(\spo[0]_INST_0_i_6_n_0 ),
        .O(\spo[0]_INST_0_i_4_n_0 ),
        .S(a[4]));
  LUT6 #(
    .INIT(64'h0400080003001000)) 
    \spo[0]_INST_0_i_5 
       (.I0(a[2]),
        .I1(a[0]),
        .I2(a[7]),
        .I3(\spo[13]_INST_0_i_7_n_0 ),
        .I4(a[3]),
        .I5(a[1]),
        .O(\spo[0]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h40004D00)) 
    \spo[0]_INST_0_i_6 
       (.I0(a[2]),
        .I1(a[0]),
        .I2(a[3]),
        .I3(\spo[15]_INST_0_i_4_n_0 ),
        .I4(a[1]),
        .O(\spo[0]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hB888FFFFB8880000)) 
    \spo[10]_INST_0 
       (.I0(\spo[10]_INST_0_i_1_n_0 ),
        .I1(a[5]),
        .I2(\spo[10]_INST_0_i_2_n_0 ),
        .I3(a[4]),
        .I4(a[6]),
        .I5(\spo[10]_INST_0_i_3_n_0 ),
        .O(spo[10]));
  LUT6 #(
    .INIT(64'h883000000F0C0000)) 
    \spo[10]_INST_0_i_1 
       (.I0(a[2]),
        .I1(a[4]),
        .I2(a[0]),
        .I3(a[3]),
        .I4(\spo[15]_INST_0_i_4_n_0 ),
        .I5(a[1]),
        .O(\spo[10]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h10C00000)) 
    \spo[10]_INST_0_i_2 
       (.I0(a[2]),
        .I1(a[3]),
        .I2(\spo[15]_INST_0_i_4_n_0 ),
        .I3(a[1]),
        .I4(a[0]),
        .O(\spo[10]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \spo[10]_INST_0_i_3 
       (.I0(\spo[10]_INST_0_i_4_n_0 ),
        .I1(a[5]),
        .I2(\spo[10]_INST_0_i_5_n_0 ),
        .I3(a[4]),
        .I4(\spo[10]_INST_0_i_6_n_0 ),
        .O(\spo[10]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h010050004000A000)) 
    \spo[10]_INST_0_i_4 
       (.I0(a[4]),
        .I1(a[2]),
        .I2(a[3]),
        .I3(\spo[15]_INST_0_i_4_n_0 ),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[10]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h90000000)) 
    \spo[10]_INST_0_i_5 
       (.I0(a[2]),
        .I1(a[1]),
        .I2(\spo[15]_INST_0_i_4_n_0 ),
        .I3(a[3]),
        .I4(a[0]),
        .O(\spo[10]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000460005000A00)) 
    \spo[10]_INST_0_i_6 
       (.I0(a[2]),
        .I1(a[0]),
        .I2(a[3]),
        .I3(\spo[13]_INST_0_i_7_n_0 ),
        .I4(a[7]),
        .I5(a[1]),
        .O(\spo[10]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \spo[11]_INST_0 
       (.I0(\spo[11]_INST_0_i_1_n_0 ),
        .I1(a[5]),
        .I2(\spo[11]_INST_0_i_2_n_0 ),
        .I3(a[4]),
        .I4(\spo[11]_INST_0_i_3_n_0 ),
        .I5(a[6]),
        .O(spo[11]));
  LUT6 #(
    .INIT(64'h00400000158A0000)) 
    \spo[11]_INST_0_i_1 
       (.I0(a[4]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(\spo[15]_INST_0_i_4_n_0 ),
        .I5(a[1]),
        .O(\spo[11]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h80040000)) 
    \spo[11]_INST_0_i_2 
       (.I0(a[1]),
        .I1(\spo[15]_INST_0_i_4_n_0 ),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[2]),
        .O(\spo[11]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h2040)) 
    \spo[11]_INST_0_i_3 
       (.I0(a[0]),
        .I1(a[3]),
        .I2(\spo[15]_INST_0_i_4_n_0 ),
        .I3(a[1]),
        .O(\spo[11]_INST_0_i_3_n_0 ));
  MUXF7 \spo[12]_INST_0 
       (.I0(\spo[12]_INST_0_i_1_n_0 ),
        .I1(\spo[12]_INST_0_i_2_n_0 ),
        .O(spo[12]),
        .S(a[6]));
  LUT6 #(
    .INIT(64'h88B8BBBB88B88888)) 
    \spo[12]_INST_0_i_1 
       (.I0(\spo[12]_INST_0_i_3_n_0 ),
        .I1(a[5]),
        .I2(\spo[12]_INST_0_i_4_n_0 ),
        .I3(a[2]),
        .I4(a[4]),
        .I5(\spo[12]_INST_0_i_5_n_0 ),
        .O(\spo[12]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h33C000C030BB3088)) 
    \spo[12]_INST_0_i_2 
       (.I0(\spo[12]_INST_0_i_6_n_0 ),
        .I1(a[5]),
        .I2(\spo[12]_INST_0_i_7_n_0 ),
        .I3(a[4]),
        .I4(\spo[12]_INST_0_i_8_n_0 ),
        .I5(a[2]),
        .O(\spo[12]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0400300048000000)) 
    \spo[12]_INST_0_i_3 
       (.I0(a[4]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(\spo[15]_INST_0_i_4_n_0 ),
        .I4(a[3]),
        .I5(a[0]),
        .O(\spo[12]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \spo[12]_INST_0_i_4 
       (.I0(a[3]),
        .I1(a[8]),
        .I2(a[9]),
        .I3(a[10]),
        .I4(a[7]),
        .I5(a[1]),
        .O(\spo[12]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h01000000475F0000)) 
    \spo[12]_INST_0_i_5 
       (.I0(a[2]),
        .I1(a[0]),
        .I2(a[3]),
        .I3(a[1]),
        .I4(\spo[13]_INST_0_i_7_n_0 ),
        .I5(a[7]),
        .O(\spo[12]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \spo[12]_INST_0_i_6 
       (.I0(a[1]),
        .I1(\spo[15]_INST_0_i_4_n_0 ),
        .I2(a[3]),
        .I3(a[0]),
        .O(\spo[12]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \spo[12]_INST_0_i_7 
       (.I0(a[1]),
        .I1(\spo[15]_INST_0_i_4_n_0 ),
        .I2(a[3]),
        .I3(a[0]),
        .O(\spo[12]_INST_0_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h00B0)) 
    \spo[12]_INST_0_i_8 
       (.I0(a[0]),
        .I1(a[3]),
        .I2(\spo[15]_INST_0_i_4_n_0 ),
        .I3(a[1]),
        .O(\spo[12]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[13]_INST_0 
       (.I0(\spo[13]_INST_0_i_1_n_0 ),
        .I1(\spo[13]_INST_0_i_2_n_0 ),
        .I2(a[6]),
        .I3(\spo[13]_INST_0_i_3_n_0 ),
        .I4(a[5]),
        .I5(\spo[13]_INST_0_i_4_n_0 ),
        .O(spo[13]));
  LUT6 #(
    .INIT(64'hA0400000B7220000)) 
    \spo[13]_INST_0_i_1 
       (.I0(a[4]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(\spo[15]_INST_0_i_4_n_0 ),
        .I5(a[1]),
        .O(\spo[13]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0C20000090090000)) 
    \spo[13]_INST_0_i_2 
       (.I0(a[4]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[3]),
        .I4(\spo[15]_INST_0_i_4_n_0 ),
        .I5(a[1]),
        .O(\spo[13]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4400100048000400)) 
    \spo[13]_INST_0_i_3 
       (.I0(a[4]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(\spo[15]_INST_0_i_4_n_0 ),
        .I4(a[3]),
        .I5(a[0]),
        .O(\spo[13]_INST_0_i_3_n_0 ));
  MUXF7 \spo[13]_INST_0_i_4 
       (.I0(\spo[13]_INST_0_i_5_n_0 ),
        .I1(\spo[13]_INST_0_i_6_n_0 ),
        .O(\spo[13]_INST_0_i_4_n_0 ),
        .S(a[4]));
  LUT6 #(
    .INIT(64'h004705FF00000000)) 
    \spo[13]_INST_0_i_5 
       (.I0(a[2]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[7]),
        .I4(a[3]),
        .I5(\spo[13]_INST_0_i_7_n_0 ),
        .O(\spo[13]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h14000900)) 
    \spo[13]_INST_0_i_6 
       (.I0(a[2]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(\spo[15]_INST_0_i_4_n_0 ),
        .I4(a[3]),
        .O(\spo[13]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \spo[13]_INST_0_i_7 
       (.I0(a[10]),
        .I1(a[9]),
        .I2(a[8]),
        .O(\spo[13]_INST_0_i_7_n_0 ));
  MUXF8 \spo[14]_INST_0 
       (.I0(\spo[14]_INST_0_i_1_n_0 ),
        .I1(\spo[14]_INST_0_i_2_n_0 ),
        .O(spo[14]),
        .S(a[6]));
  MUXF7 \spo[14]_INST_0_i_1 
       (.I0(\spo[14]_INST_0_i_3_n_0 ),
        .I1(\spo[14]_INST_0_i_4_n_0 ),
        .O(\spo[14]_INST_0_i_1_n_0 ),
        .S(a[5]));
  MUXF7 \spo[14]_INST_0_i_2 
       (.I0(\spo[14]_INST_0_i_5_n_0 ),
        .I1(\spo[14]_INST_0_i_6_n_0 ),
        .O(\spo[14]_INST_0_i_2_n_0 ),
        .S(a[5]));
  LUT6 #(
    .INIT(64'hC000C000B8FFB800)) 
    \spo[14]_INST_0_i_3 
       (.I0(\spo[7]_INST_0_i_4_n_0 ),
        .I1(a[0]),
        .I2(\spo[14]_INST_0_i_7_n_0 ),
        .I3(a[4]),
        .I4(\spo[15]_INST_0_i_7_n_0 ),
        .I5(a[2]),
        .O(\spo[14]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0800000008006000)) 
    \spo[14]_INST_0_i_4 
       (.I0(a[4]),
        .I1(a[0]),
        .I2(a[3]),
        .I3(\spo[15]_INST_0_i_4_n_0 ),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[14]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000002000C04010)) 
    \spo[14]_INST_0_i_5 
       (.I0(a[4]),
        .I1(a[3]),
        .I2(\spo[15]_INST_0_i_4_n_0 ),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[14]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hA000800004000000)) 
    \spo[14]_INST_0_i_6 
       (.I0(a[4]),
        .I1(a[0]),
        .I2(a[3]),
        .I3(\spo[15]_INST_0_i_4_n_0 ),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[14]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000001)) 
    \spo[14]_INST_0_i_7 
       (.I0(a[1]),
        .I1(a[7]),
        .I2(a[10]),
        .I3(a[9]),
        .I4(a[8]),
        .I5(a[3]),
        .O(\spo[14]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h8F80FFFF8F800000)) 
    \spo[15]_INST_0 
       (.I0(\spo[15]_INST_0_i_1_n_0 ),
        .I1(a[4]),
        .I2(a[5]),
        .I3(\spo[15]_INST_0_i_2_n_0 ),
        .I4(a[6]),
        .I5(\spo[15]_INST_0_i_3_n_0 ),
        .O(spo[15]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hC0800000)) 
    \spo[15]_INST_0_i_1 
       (.I0(a[1]),
        .I1(\spo[15]_INST_0_i_4_n_0 ),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[2]),
        .O(\spo[15]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hC100000000D00000)) 
    \spo[15]_INST_0_i_2 
       (.I0(a[4]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[3]),
        .I4(\spo[15]_INST_0_i_4_n_0 ),
        .I5(a[1]),
        .O(\spo[15]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0088008830333000)) 
    \spo[15]_INST_0_i_3 
       (.I0(\spo[15]_INST_0_i_5_n_0 ),
        .I1(a[5]),
        .I2(\spo[15]_INST_0_i_6_n_0 ),
        .I3(a[4]),
        .I4(\spo[15]_INST_0_i_7_n_0 ),
        .I5(a[2]),
        .O(\spo[15]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \spo[15]_INST_0_i_4 
       (.I0(a[8]),
        .I1(a[9]),
        .I2(a[10]),
        .I3(a[7]),
        .O(\spo[15]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \spo[15]_INST_0_i_5 
       (.I0(\spo[7]_INST_0_i_4_n_0 ),
        .I1(a[0]),
        .O(\spo[15]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \spo[15]_INST_0_i_6 
       (.I0(\spo[12]_INST_0_i_4_n_0 ),
        .I1(a[0]),
        .O(\spo[15]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    \spo[15]_INST_0_i_7 
       (.I0(a[3]),
        .I1(a[8]),
        .I2(a[9]),
        .I3(a[10]),
        .I4(a[7]),
        .I5(a[1]),
        .O(\spo[15]_INST_0_i_7_n_0 ));
  MUXF8 \spo[1]_INST_0 
       (.I0(\spo[1]_INST_0_i_1_n_0 ),
        .I1(\spo[1]_INST_0_i_2_n_0 ),
        .O(spo[1]),
        .S(a[6]));
  MUXF7 \spo[1]_INST_0_i_1 
       (.I0(\spo[1]_INST_0_i_3_n_0 ),
        .I1(\spo[1]_INST_0_i_4_n_0 ),
        .O(\spo[1]_INST_0_i_1_n_0 ),
        .S(a[5]));
  MUXF7 \spo[1]_INST_0_i_2 
       (.I0(\spo[1]_INST_0_i_5_n_0 ),
        .I1(\spo[1]_INST_0_i_6_n_0 ),
        .O(\spo[1]_INST_0_i_2_n_0 ),
        .S(a[5]));
  LUT6 #(
    .INIT(64'h9040FFFF90400000)) 
    \spo[1]_INST_0_i_3 
       (.I0(a[2]),
        .I1(a[0]),
        .I2(\spo[6]_INST_0_i_4_n_0 ),
        .I3(a[1]),
        .I4(a[4]),
        .I5(\spo[1]_INST_0_i_7_n_0 ),
        .O(\spo[1]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h4100040008000400)) 
    \spo[1]_INST_0_i_4 
       (.I0(a[4]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(\spo[15]_INST_0_i_4_n_0 ),
        .I4(a[3]),
        .I5(a[0]),
        .O(\spo[1]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h02000C0010000000)) 
    \spo[1]_INST_0_i_5 
       (.I0(a[4]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(\spo[15]_INST_0_i_4_n_0 ),
        .I4(a[3]),
        .I5(a[0]),
        .O(\spo[1]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h8000000004000000)) 
    \spo[1]_INST_0_i_6 
       (.I0(a[4]),
        .I1(a[0]),
        .I2(a[3]),
        .I3(\spo[15]_INST_0_i_4_n_0 ),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[1]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000040404)) 
    \spo[1]_INST_0_i_7 
       (.I0(a[1]),
        .I1(\spo[13]_INST_0_i_7_n_0 ),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[7]),
        .I5(a[2]),
        .O(\spo[1]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[2]_INST_0 
       (.I0(\spo[6]_INST_0_i_1_n_0 ),
        .I1(\spo[2]_INST_0_i_1_n_0 ),
        .I2(a[6]),
        .I3(\spo[2]_INST_0_i_2_n_0 ),
        .I4(a[5]),
        .I5(\spo[2]_INST_0_i_3_n_0 ),
        .O(spo[2]));
  LUT6 #(
    .INIT(64'hC200000000000100)) 
    \spo[2]_INST_0_i_1 
       (.I0(a[4]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(\spo[15]_INST_0_i_4_n_0 ),
        .I4(a[3]),
        .I5(a[0]),
        .O(\spo[2]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0100040002000000)) 
    \spo[2]_INST_0_i_2 
       (.I0(a[4]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(\spo[15]_INST_0_i_4_n_0 ),
        .I4(a[3]),
        .I5(a[0]),
        .O(\spo[2]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h80803000)) 
    \spo[2]_INST_0_i_3 
       (.I0(\spo[12]_INST_0_i_4_n_0 ),
        .I1(a[4]),
        .I2(a[0]),
        .I3(\spo[15]_INST_0_i_7_n_0 ),
        .I4(a[2]),
        .O(\spo[2]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
    \spo[3]_INST_0 
       (.I0(\spo[3]_INST_0_i_1_n_0 ),
        .I1(a[4]),
        .I2(a[5]),
        .I3(\spo[3]_INST_0_i_2_n_0 ),
        .I4(a[6]),
        .I5(\spo[3]_INST_0_i_3_n_0 ),
        .O(spo[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    \spo[3]_INST_0_i_1 
       (.I0(a[0]),
        .I1(a[3]),
        .I2(\spo[15]_INST_0_i_4_n_0 ),
        .I3(a[1]),
        .I4(a[2]),
        .O(\spo[3]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCC00000010590000)) 
    \spo[3]_INST_0_i_2 
       (.I0(a[4]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[3]),
        .I4(\spo[15]_INST_0_i_4_n_0 ),
        .I5(a[1]),
        .O(\spo[3]_INST_0_i_2_n_0 ));
  MUXF7 \spo[3]_INST_0_i_3 
       (.I0(\spo[3]_INST_0_i_4_n_0 ),
        .I1(\spo[3]_INST_0_i_5_n_0 ),
        .O(\spo[3]_INST_0_i_3_n_0 ),
        .S(a[5]));
  LUT6 #(
    .INIT(64'h2200020024000100)) 
    \spo[3]_INST_0_i_4 
       (.I0(a[4]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(\spo[15]_INST_0_i_4_n_0 ),
        .I4(a[3]),
        .I5(a[0]),
        .O(\spo[3]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h4080001000002000)) 
    \spo[3]_INST_0_i_5 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(\spo[15]_INST_0_i_4_n_0 ),
        .I3(a[3]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[3]_INST_0_i_5_n_0 ));
  MUXF7 \spo[4]_INST_0 
       (.I0(\spo[4]_INST_0_i_1_n_0 ),
        .I1(\spo[4]_INST_0_i_2_n_0 ),
        .O(spo[4]),
        .S(a[6]));
  LUT6 #(
    .INIT(64'h4440004088000000)) 
    \spo[4]_INST_0_i_1 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(\spo[7]_INST_0_i_5_n_0 ),
        .I3(a[2]),
        .I4(\spo[7]_INST_0_i_4_n_0 ),
        .I5(a[4]),
        .O(\spo[4]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA0A0A0A0C00FC000)) 
    \spo[4]_INST_0_i_2 
       (.I0(\spo[4]_INST_0_i_3_n_0 ),
        .I1(\spo[12]_INST_0_i_6_n_0 ),
        .I2(a[5]),
        .I3(a[2]),
        .I4(\spo[4]_INST_0_i_4_n_0 ),
        .I5(a[4]),
        .O(\spo[4]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \spo[4]_INST_0_i_3 
       (.I0(a[1]),
        .I1(a[8]),
        .I2(a[9]),
        .I3(a[10]),
        .I4(a[7]),
        .I5(a[0]),
        .O(\spo[4]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0084)) 
    \spo[4]_INST_0_i_4 
       (.I0(a[3]),
        .I1(\spo[15]_INST_0_i_4_n_0 ),
        .I2(a[1]),
        .I3(a[0]),
        .O(\spo[4]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \spo[5]_INST_0 
       (.I0(\spo[6]_INST_0_i_1_n_0 ),
        .I1(a[5]),
        .I2(\spo[5]_INST_0_i_1_n_0 ),
        .I3(a[6]),
        .I4(\spo[5]_INST_0_i_2_n_0 ),
        .O(spo[5]));
  LUT6 #(
    .INIT(64'hC200080000000900)) 
    \spo[5]_INST_0_i_1 
       (.I0(a[4]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(\spo[15]_INST_0_i_4_n_0 ),
        .I4(a[3]),
        .I5(a[0]),
        .O(\spo[5]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3330003088888888)) 
    \spo[5]_INST_0_i_2 
       (.I0(\spo[5]_INST_0_i_3_n_0 ),
        .I1(a[5]),
        .I2(\spo[5]_INST_0_i_4_n_0 ),
        .I3(a[2]),
        .I4(\spo[5]_INST_0_i_5_n_0 ),
        .I5(a[4]),
        .O(\spo[5]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h10200000)) 
    \spo[5]_INST_0_i_3 
       (.I0(a[2]),
        .I1(a[1]),
        .I2(\spo[15]_INST_0_i_4_n_0 ),
        .I3(a[3]),
        .I4(a[0]),
        .O(\spo[5]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hE010)) 
    \spo[5]_INST_0_i_4 
       (.I0(a[0]),
        .I1(a[1]),
        .I2(\spo[15]_INST_0_i_4_n_0 ),
        .I3(a[3]),
        .O(\spo[5]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h8400)) 
    \spo[5]_INST_0_i_5 
       (.I0(a[3]),
        .I1(\spo[15]_INST_0_i_4_n_0 ),
        .I2(a[1]),
        .I3(a[0]),
        .O(\spo[5]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \spo[6]_INST_0 
       (.I0(\spo[6]_INST_0_i_1_n_0 ),
        .I1(a[5]),
        .I2(\spo[6]_INST_0_i_2_n_0 ),
        .I3(a[6]),
        .I4(\spo[6]_INST_0_i_3_n_0 ),
        .O(spo[6]));
  LUT6 #(
    .INIT(64'h000010000E000A00)) 
    \spo[6]_INST_0_i_1 
       (.I0(a[4]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(\spo[15]_INST_0_i_4_n_0 ),
        .I4(a[3]),
        .I5(a[0]),
        .O(\spo[6]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hC100000020900000)) 
    \spo[6]_INST_0_i_2 
       (.I0(a[4]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[3]),
        .I4(\spo[15]_INST_0_i_4_n_0 ),
        .I5(a[1]),
        .O(\spo[6]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4000006000000080)) 
    \spo[6]_INST_0_i_3 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(\spo[6]_INST_0_i_4_n_0 ),
        .I3(a[1]),
        .I4(a[2]),
        .I5(a[4]),
        .O(\spo[6]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00010000)) 
    \spo[6]_INST_0_i_4 
       (.I0(a[7]),
        .I1(a[10]),
        .I2(a[9]),
        .I3(a[8]),
        .I4(a[3]),
        .O(\spo[6]_INST_0_i_4_n_0 ));
  MUXF7 \spo[7]_INST_0 
       (.I0(\spo[7]_INST_0_i_1_n_0 ),
        .I1(\spo[7]_INST_0_i_2_n_0 ),
        .O(spo[7]),
        .S(a[6]));
  LUT6 #(
    .INIT(64'hB833B800FC003000)) 
    \spo[7]_INST_0_i_1 
       (.I0(\spo[12]_INST_0_i_7_n_0 ),
        .I1(a[5]),
        .I2(\spo[7]_INST_0_i_3_n_0 ),
        .I3(a[4]),
        .I4(\spo[12]_INST_0_i_6_n_0 ),
        .I5(a[2]),
        .O(\spo[7]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \spo[7]_INST_0_i_2 
       (.I0(a[4]),
        .I1(\spo[7]_INST_0_i_4_n_0 ),
        .I2(a[0]),
        .I3(\spo[7]_INST_0_i_5_n_0 ),
        .I4(a[2]),
        .I5(a[5]),
        .O(\spo[7]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB0)) 
    \spo[7]_INST_0_i_3 
       (.I0(a[0]),
        .I1(a[2]),
        .I2(\spo[7]_INST_0_i_4_n_0 ),
        .O(\spo[7]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \spo[7]_INST_0_i_4 
       (.I0(a[3]),
        .I1(a[8]),
        .I2(a[9]),
        .I3(a[10]),
        .I4(a[7]),
        .I5(a[1]),
        .O(\spo[7]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \spo[7]_INST_0_i_5 
       (.I0(a[3]),
        .I1(a[8]),
        .I2(a[9]),
        .I3(a[10]),
        .I4(a[7]),
        .I5(a[1]),
        .O(\spo[7]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[8]_INST_0 
       (.I0(\spo[8]_INST_0_i_1_n_0 ),
        .I1(\spo[8]_INST_0_i_2_n_0 ),
        .I2(a[6]),
        .I3(\spo[8]_INST_0_i_3_n_0 ),
        .I4(a[5]),
        .I5(\spo[8]_INST_0_i_4_n_0 ),
        .O(spo[8]));
  LUT6 #(
    .INIT(64'h80000000B7220000)) 
    \spo[8]_INST_0_i_1 
       (.I0(a[4]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(\spo[15]_INST_0_i_4_n_0 ),
        .I5(a[1]),
        .O(\spo[8]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \spo[8]_INST_0_i_2 
       (.I0(a[0]),
        .I1(\spo[12]_INST_0_i_4_n_0 ),
        .I2(a[2]),
        .O(\spo[8]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h1000810000000000)) 
    \spo[8]_INST_0_i_3 
       (.I0(a[4]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(\spo[15]_INST_0_i_4_n_0 ),
        .I4(a[3]),
        .I5(a[2]),
        .O(\spo[8]_INST_0_i_3_n_0 ));
  MUXF7 \spo[8]_INST_0_i_4 
       (.I0(\spo[8]_INST_0_i_5_n_0 ),
        .I1(\spo[8]_INST_0_i_6_n_0 ),
        .O(\spo[8]_INST_0_i_4_n_0 ),
        .S(a[4]));
  LUT6 #(
    .INIT(64'h0004000003130000)) 
    \spo[8]_INST_0_i_5 
       (.I0(a[2]),
        .I1(a[0]),
        .I2(a[3]),
        .I3(a[1]),
        .I4(\spo[13]_INST_0_i_7_n_0 ),
        .I5(a[7]),
        .O(\spo[8]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h07000000)) 
    \spo[8]_INST_0_i_6 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(\spo[15]_INST_0_i_4_n_0 ),
        .I4(a[0]),
        .O(\spo[8]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[9]_INST_0 
       (.I0(\spo[9]_INST_0_i_1_n_0 ),
        .I1(\spo[9]_INST_0_i_2_n_0 ),
        .I2(a[6]),
        .I3(\spo[9]_INST_0_i_3_n_0 ),
        .I4(a[5]),
        .I5(\spo[9]_INST_0_i_4_n_0 ),
        .O(spo[9]));
  LUT6 #(
    .INIT(64'h050090000000EA00)) 
    \spo[9]_INST_0_i_1 
       (.I0(a[4]),
        .I1(a[2]),
        .I2(a[3]),
        .I3(\spo[15]_INST_0_i_4_n_0 ),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[9]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3000800000008000)) 
    \spo[9]_INST_0_i_2 
       (.I0(a[4]),
        .I1(a[0]),
        .I2(a[3]),
        .I3(\spo[15]_INST_0_i_4_n_0 ),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[9]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0900500000000000)) 
    \spo[9]_INST_0_i_3 
       (.I0(a[4]),
        .I1(a[2]),
        .I2(a[3]),
        .I3(\spo[15]_INST_0_i_4_n_0 ),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[9]_INST_0_i_3_n_0 ));
  MUXF7 \spo[9]_INST_0_i_4 
       (.I0(\spo[9]_INST_0_i_5_n_0 ),
        .I1(\spo[9]_INST_0_i_6_n_0 ),
        .O(\spo[9]_INST_0_i_4_n_0 ),
        .S(a[4]));
  LUT6 #(
    .INIT(64'h00060000053C0000)) 
    \spo[9]_INST_0_i_5 
       (.I0(a[2]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[7]),
        .I4(\spo[13]_INST_0_i_7_n_0 ),
        .I5(a[3]),
        .O(\spo[9]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h80004D00)) 
    \spo[9]_INST_0_i_6 
       (.I0(a[2]),
        .I1(a[0]),
        .I2(a[3]),
        .I3(\spo[15]_INST_0_i_4_n_0 ),
        .I4(a[1]),
        .O(\spo[9]_INST_0_i_6_n_0 ));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
