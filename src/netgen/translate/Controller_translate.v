////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: Controller_translate.v
// /___/   /\     Timestamp: Wed Feb 07 15:37:05 2018
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/translate -ofmt verilog -sim Controller.ngd Controller_translate.v 
// Device	: 3s50vq100-4
// Input file	: Controller.ngd
// Output file	: C:\Users\Andrea Valitutto\Downloads\EsameOK-20180207T103503Z-001\EsameOK\netgen\translate\Controller_translate.v
// # of Modules	: 1
// Design Name	: Controller
// Xilinx        : C:\Xilinx\14.7\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module Controller (
  sm2, clk, sensor, reset, sm1
);
  output sm2;
  input clk;
  input sensor;
  input reset;
  output [1 : 0] sm1;
  wire N01;
  wire N02;
  wire N10;
  wire N11;
  wire N2;
  wire N4;
  wire N6;
  wire N7;
  wire N8;
  wire N9;
  wire clk_BUFGP;
  wire event_up;
  wire next_count_cmp_eq0000_32;
  wire next_count_cmp_eq0001_33;
  wire reset_IBUF_38;
  wire sensor_IBUF_40;
  wire sm1_0_OBUF_43;
  wire sm2_OBUF_45;
  wire \clk_BUFGP/IBUFG_2 ;
  wire VCC;
  wire GND;
  wire [3 : 3] Madd_next_count_share0000_cy;
  wire [5 : 0] count;
  wire [2 : 0] current_state;
  wire [5 : 0] next_count;
  wire [2 : 0] next_state;
  X_FF #(
    .INIT ( 1'b0 ))
  count_4 (
    .CLK(clk_BUFGP),
    .RST(reset_IBUF_38),
    .I(next_count[4]),
    .O(count[4]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  count_3 (
    .CLK(clk_BUFGP),
    .RST(reset_IBUF_38),
    .I(next_count[3]),
    .O(count[3]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  count_5 (
    .CLK(clk_BUFGP),
    .RST(reset_IBUF_38),
    .I(next_count[5]),
    .O(count[5]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  count_1 (
    .CLK(clk_BUFGP),
    .RST(reset_IBUF_38),
    .I(next_count[1]),
    .O(count[1]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b1 ))
  count_0 (
    .CLK(clk_BUFGP),
    .I(next_count[0]),
    .SET(reset_IBUF_38),
    .O(count[0]),
    .CE(VCC),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  count_2 (
    .CLK(clk_BUFGP),
    .RST(reset_IBUF_38),
    .I(next_count[2]),
    .O(count[2]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  current_state_1 (
    .CLK(clk_BUFGP),
    .RST(reset_IBUF_38),
    .I(next_state[1]),
    .O(current_state[1]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b1 ))
  current_state_0 (
    .CLK(clk_BUFGP),
    .I(next_state[0]),
    .SET(reset_IBUF_38),
    .O(current_state[0]),
    .CE(VCC),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  current_state_2 (
    .CLK(clk_BUFGP),
    .RST(reset_IBUF_38),
    .I(next_state[2]),
    .O(current_state[2]),
    .CE(VCC),
    .SET(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hE ))
  sm21 (
    .ADR0(current_state[0]),
    .ADR1(current_state[1]),
    .O(sm2_OBUF_45)
  );
  X_LUT2 #(
    .INIT ( 4'hE ))
  \sm1<0>1  (
    .ADR0(current_state[1]),
    .ADR1(current_state[2]),
    .O(sm1_0_OBUF_43)
  );
  X_LUT4 #(
    .INIT ( 16'hD5F7 ))
  \next_count<0>1  (
    .ADR0(count[0]),
    .ADR1(current_state[1]),
    .ADR2(next_count_cmp_eq0000_32),
    .ADR3(current_state[2]),
    .O(next_count[0])
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  \next_count<3>_SW0  (
    .ADR0(count[1]),
    .ADR1(count[0]),
    .O(N02)
  );
  X_LUT4 #(
    .INIT ( 16'h6A00 ))
  \next_count<3>  (
    .ADR0(count[3]),
    .ADR1(count[2]),
    .ADR2(N02),
    .ADR3(N01),
    .O(next_count[3])
  );
  X_LUT3 #(
    .INIT ( 8'h60 ))
  \next_count<4>1  (
    .ADR0(count[4]),
    .ADR1(N8),
    .ADR2(N01),
    .O(next_count[4])
  );
  X_LUT3 #(
    .INIT ( 8'h60 ))
  \next_count<1>2  (
    .ADR0(count[1]),
    .ADR1(count[0]),
    .ADR2(N9),
    .O(next_count[1])
  );
  X_LUT4 #(
    .INIT ( 16'h88F8 ))
  \next_state<1>1  (
    .ADR0(sensor_IBUF_40),
    .ADR1(current_state[0]),
    .ADR2(current_state[1]),
    .ADR3(event_up),
    .O(next_state[1])
  );
  X_LUT4 #(
    .INIT ( 16'h5444 ))
  \next_state<0>1  (
    .ADR0(sensor_IBUF_40),
    .ADR1(current_state[0]),
    .ADR2(current_state[2]),
    .ADR3(event_up),
    .O(next_state[0])
  );
  X_LUT4 #(
    .INIT ( 16'hECF0 ))
  \next_state<2>1  (
    .ADR0(sensor_IBUF_40),
    .ADR1(current_state[1]),
    .ADR2(current_state[2]),
    .ADR3(event_up),
    .O(next_state[2])
  );
  X_LUT4 #(
    .INIT ( 16'h6A00 ))
  \next_count<5>1  (
    .ADR0(count[5]),
    .ADR1(count[4]),
    .ADR2(Madd_next_count_share0000_cy[3]),
    .ADR3(N01),
    .O(next_count[5])
  );
  X_LUT4 #(
    .INIT ( 16'h6A00 ))
  \next_count<2>1  (
    .ADR0(count[2]),
    .ADR1(count[1]),
    .ADR2(count[0]),
    .ADR3(N01),
    .O(next_count[2])
  );
  X_LUT4 #(
    .INIT ( 16'h0008 ))
  next_count_cmp_eq0001 (
    .ADR0(count[5]),
    .ADR1(count[4]),
    .ADR2(count[3]),
    .ADR3(N10),
    .O(next_count_cmp_eq0001_33)
  );
  X_LUT4 #(
    .INIT ( 16'h1000 ))
  next_count_cmp_eq0000 (
    .ADR0(count[5]),
    .ADR1(count[4]),
    .ADR2(count[3]),
    .ADR3(N11),
    .O(next_count_cmp_eq0000_32)
  );
  X_BUF   sensor_IBUF (
    .I(sensor),
    .O(sensor_IBUF_40)
  );
  X_BUF   reset_IBUF (
    .I(reset),
    .O(reset_IBUF_38)
  );
  X_MUX2   event_up1 (
    .IA(N6),
    .IB(N7),
    .SEL(count[3]),
    .O(event_up)
  );
  X_LUT4 #(
    .INIT ( 16'h0080 ))
  event_up1_F (
    .ADR0(current_state[2]),
    .ADR1(count[5]),
    .ADR2(count[4]),
    .ADR3(N2),
    .O(N6)
  );
  X_LUT4 #(
    .INIT ( 16'h0008 ))
  event_up1_G (
    .ADR0(current_state[1]),
    .ADR1(N4),
    .ADR2(count[5]),
    .ADR3(count[4]),
    .O(N7)
  );
  X_BUF   \Madd_next_count_share0000_cy<3>11/LUT4_D_BUF  (
    .I(Madd_next_count_share0000_cy[3]),
    .O(N8)
  );
  X_LUT4 #(
    .INIT ( 16'h8000 ))
  \Madd_next_count_share0000_cy<3>11  (
    .ADR0(count[2]),
    .ADR1(count[3]),
    .ADR2(count[0]),
    .ADR3(count[1]),
    .O(Madd_next_count_share0000_cy[3])
  );
  X_BUF   \next_count<1>11/LUT4_D_BUF  (
    .I(N01),
    .O(N9)
  );
  X_LUT4 #(
    .INIT ( 16'h0CAE ))
  \next_count<1>11  (
    .ADR0(current_state[1]),
    .ADR1(current_state[2]),
    .ADR2(next_count_cmp_eq0001_33),
    .ADR3(next_count_cmp_eq0000_32),
    .O(N01)
  );
  X_BUF   \next_count_cmp_eq0001_SW0/LUT3_D_BUF  (
    .I(N2),
    .O(N10)
  );
  X_LUT3 #(
    .INIT ( 8'hFB ))
  next_count_cmp_eq0001_SW0 (
    .ADR0(count[2]),
    .ADR1(count[1]),
    .ADR2(count[0]),
    .O(N2)
  );
  X_BUF   \next_count_cmp_eq0000_SW0/LUT3_D_BUF  (
    .I(N4),
    .O(N11)
  );
  X_LUT3 #(
    .INIT ( 8'h80 ))
  next_count_cmp_eq0000_SW0 (
    .ADR0(count[2]),
    .ADR1(count[1]),
    .ADR2(count[0]),
    .O(N4)
  );
  X_IPAD   clk_43 (
    .PAD(clk)
  );
  X_IPAD   reset_44 (
    .PAD(reset)
  );
  X_IPAD   sensor_45 (
    .PAD(sensor)
  );
  X_OPAD   \sm1<0>  (
    .PAD(sm1[0])
  );
  X_OPAD   \sm1<1>  (
    .PAD(sm1[1])
  );
  X_OPAD   sm2_48 (
    .PAD(sm2)
  );
  X_CKBUF   \clk_BUFGP/BUFG  (
    .I(\clk_BUFGP/IBUFG_2 ),
    .O(clk_BUFGP)
  );
  X_CKBUF   \clk_BUFGP/IBUFG  (
    .I(clk),
    .O(\clk_BUFGP/IBUFG_2 )
  );
  X_OBUF   sm1_0_OBUF (
    .I(sm1_0_OBUF_43),
    .O(sm1[0])
  );
  X_OBUF   sm1_1_OBUF (
    .I(current_state[2]),
    .O(sm1[1])
  );
  X_OBUF   sm2_OBUF (
    .I(sm2_OBUF_45),
    .O(sm2)
  );
  X_ONE   NlwBlock_Controller_VCC (
    .O(VCC)
  );
  X_ZERO   NlwBlock_Controller_GND (
    .O(GND)
  );
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

