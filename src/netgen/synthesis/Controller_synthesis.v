////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: Controller_synthesis.v
// /___/   /\     Timestamp: Wed Feb 07 15:38:09 2018
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim Controller.ngc Controller_synthesis.v 
// Device	: xc3s50-4-vq100
// Input file	: Controller.ngc
// Output file	: C:\Users\Andrea Valitutto\Downloads\EsameOK-20180207T103503Z-001\EsameOK\netgen\synthesis\Controller_synthesis.v
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
  wire clk_BUFGP_12;
  wire event_up;
  wire next_count_cmp_eq0000_29;
  wire next_count_cmp_eq0001_30;
  wire reset_IBUF_35;
  wire sensor_IBUF_37;
  wire sm1_0_OBUF_40;
  wire sm2_OBUF_42;
  wire [3 : 3] Madd_next_count_share0000_cy;
  wire [5 : 0] count;
  wire [2 : 0] current_state;
  wire [5 : 0] next_count;
  wire [2 : 0] next_state;
  FDC #(
    .INIT ( 1'b0 ))
  count_4 (
    .C(clk_BUFGP_12),
    .CLR(reset_IBUF_35),
    .D(next_count[4]),
    .Q(count[4])
  );
  FDC #(
    .INIT ( 1'b0 ))
  count_3 (
    .C(clk_BUFGP_12),
    .CLR(reset_IBUF_35),
    .D(next_count[3]),
    .Q(count[3])
  );
  FDC #(
    .INIT ( 1'b0 ))
  count_5 (
    .C(clk_BUFGP_12),
    .CLR(reset_IBUF_35),
    .D(next_count[5]),
    .Q(count[5])
  );
  FDC #(
    .INIT ( 1'b0 ))
  count_1 (
    .C(clk_BUFGP_12),
    .CLR(reset_IBUF_35),
    .D(next_count[1]),
    .Q(count[1])
  );
  FDP #(
    .INIT ( 1'b1 ))
  count_0 (
    .C(clk_BUFGP_12),
    .D(next_count[0]),
    .PRE(reset_IBUF_35),
    .Q(count[0])
  );
  FDC #(
    .INIT ( 1'b0 ))
  count_2 (
    .C(clk_BUFGP_12),
    .CLR(reset_IBUF_35),
    .D(next_count[2]),
    .Q(count[2])
  );
  FDC #(
    .INIT ( 1'b0 ))
  current_state_1 (
    .C(clk_BUFGP_12),
    .CLR(reset_IBUF_35),
    .D(next_state[1]),
    .Q(current_state[1])
  );
  FDP #(
    .INIT ( 1'b1 ))
  current_state_0 (
    .C(clk_BUFGP_12),
    .D(next_state[0]),
    .PRE(reset_IBUF_35),
    .Q(current_state[0])
  );
  FDC #(
    .INIT ( 1'b0 ))
  current_state_2 (
    .C(clk_BUFGP_12),
    .CLR(reset_IBUF_35),
    .D(next_state[2]),
    .Q(current_state[2])
  );
  LUT2 #(
    .INIT ( 4'hE ))
  sm21 (
    .I0(current_state[0]),
    .I1(current_state[1]),
    .O(sm2_OBUF_42)
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \sm1<0>1  (
    .I0(current_state[1]),
    .I1(current_state[2]),
    .O(sm1_0_OBUF_40)
  );
  LUT4 #(
    .INIT ( 16'hD5F7 ))
  \next_count<0>1  (
    .I0(count[0]),
    .I1(current_state[1]),
    .I2(next_count_cmp_eq0000_29),
    .I3(current_state[2]),
    .O(next_count[0])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \next_count<3>_SW0  (
    .I0(count[1]),
    .I1(count[0]),
    .O(N02)
  );
  LUT4 #(
    .INIT ( 16'h6A00 ))
  \next_count<3>  (
    .I0(count[3]),
    .I1(count[2]),
    .I2(N02),
    .I3(N01),
    .O(next_count[3])
  );
  LUT3 #(
    .INIT ( 8'h60 ))
  \next_count<4>1  (
    .I0(count[4]),
    .I1(N8),
    .I2(N01),
    .O(next_count[4])
  );
  LUT3 #(
    .INIT ( 8'h60 ))
  \next_count<1>2  (
    .I0(count[1]),
    .I1(count[0]),
    .I2(N9),
    .O(next_count[1])
  );
  LUT4 #(
    .INIT ( 16'h88F8 ))
  \next_state<1>1  (
    .I0(sensor_IBUF_37),
    .I1(current_state[0]),
    .I2(current_state[1]),
    .I3(event_up),
    .O(next_state[1])
  );
  LUT4 #(
    .INIT ( 16'h5444 ))
  \next_state<0>1  (
    .I0(sensor_IBUF_37),
    .I1(current_state[0]),
    .I2(current_state[2]),
    .I3(event_up),
    .O(next_state[0])
  );
  LUT4 #(
    .INIT ( 16'hECF0 ))
  \next_state<2>1  (
    .I0(sensor_IBUF_37),
    .I1(current_state[1]),
    .I2(current_state[2]),
    .I3(event_up),
    .O(next_state[2])
  );
  LUT4 #(
    .INIT ( 16'h6A00 ))
  \next_count<5>1  (
    .I0(count[5]),
    .I1(count[4]),
    .I2(Madd_next_count_share0000_cy[3]),
    .I3(N01),
    .O(next_count[5])
  );
  LUT4 #(
    .INIT ( 16'h6A00 ))
  \next_count<2>1  (
    .I0(count[2]),
    .I1(count[1]),
    .I2(count[0]),
    .I3(N01),
    .O(next_count[2])
  );
  LUT4 #(
    .INIT ( 16'h0008 ))
  next_count_cmp_eq0001 (
    .I0(count[5]),
    .I1(count[4]),
    .I2(count[3]),
    .I3(N10),
    .O(next_count_cmp_eq0001_30)
  );
  LUT4 #(
    .INIT ( 16'h1000 ))
  next_count_cmp_eq0000 (
    .I0(count[5]),
    .I1(count[4]),
    .I2(count[3]),
    .I3(N11),
    .O(next_count_cmp_eq0000_29)
  );
  IBUF   sensor_IBUF (
    .I(sensor),
    .O(sensor_IBUF_37)
  );
  IBUF   reset_IBUF (
    .I(reset),
    .O(reset_IBUF_35)
  );
  OBUF   sm2_OBUF (
    .I(sm2_OBUF_42),
    .O(sm2)
  );
  OBUF   sm1_1_OBUF (
    .I(current_state[2]),
    .O(sm1[1])
  );
  OBUF   sm1_0_OBUF (
    .I(sm1_0_OBUF_40),
    .O(sm1[0])
  );
  BUFGP   clk_BUFGP (
    .I(clk),
    .O(clk_BUFGP_12)
  );
  MUXF5   event_up1 (
    .I0(N6),
    .I1(N7),
    .S(count[3]),
    .O(event_up)
  );
  LUT4 #(
    .INIT ( 16'h0080 ))
  event_up1_F (
    .I0(current_state[2]),
    .I1(count[5]),
    .I2(count[4]),
    .I3(N2),
    .O(N6)
  );
  LUT4 #(
    .INIT ( 16'h0008 ))
  event_up1_G (
    .I0(current_state[1]),
    .I1(N4),
    .I2(count[5]),
    .I3(count[4]),
    .O(N7)
  );
  LUT4_D #(
    .INIT ( 16'h8000 ))
  \Madd_next_count_share0000_cy<3>11  (
    .I0(count[2]),
    .I1(count[3]),
    .I2(count[0]),
    .I3(count[1]),
    .LO(N8),
    .O(Madd_next_count_share0000_cy[3])
  );
  LUT4_D #(
    .INIT ( 16'h0CAE ))
  \next_count<1>11  (
    .I0(current_state[1]),
    .I1(current_state[2]),
    .I2(next_count_cmp_eq0001_30),
    .I3(next_count_cmp_eq0000_29),
    .LO(N9),
    .O(N01)
  );
  LUT3_D #(
    .INIT ( 8'hFB ))
  next_count_cmp_eq0001_SW0 (
    .I0(count[2]),
    .I1(count[1]),
    .I2(count[0]),
    .LO(N10),
    .O(N2)
  );
  LUT3_D #(
    .INIT ( 8'h80 ))
  next_count_cmp_eq0000_SW0 (
    .I0(count[2]),
    .I1(count[1]),
    .I2(count[0]),
    .LO(N11),
    .O(N4)
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

