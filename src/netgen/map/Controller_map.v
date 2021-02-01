////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: Controller_map.v
// /___/   /\     Timestamp: Wed Feb 07 15:37:42 2018
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -s 4 -pcf Controller.pcf -sdf_anno true -sdf_path netgen/map -insert_glbl true -w -dir netgen/map -ofmt verilog -sim Controller_map.ncd Controller_map.v 
// Device	: 3s50vq100-4 (PRODUCTION 1.39 2013-10-13)
// Input file	: Controller_map.ncd
// Output file	: C:\Users\Andrea Valitutto\Downloads\EsameOK-20180207T103503Z-001\EsameOK\netgen\map\Controller_map.v
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
  wire sensor_IBUF_137;
  wire \clk_BUFGP/IBUFG_138 ;
  wire reset_IBUF_142;
  wire clk_BUFGP;
  wire N4;
  wire N2;
  wire event_up;
  wire next_count_cmp_eq0000_0;
  wire next_count_cmp_eq0001_0;
  wire N01;
  wire N02_0;
  wire \sensor/INBUF ;
  wire \clk/INBUF ;
  wire \current_state<1>/DXMUX_484 ;
  wire \current_state<1>/DYMUX_471 ;
  wire \current_state<1>/SRINV_463 ;
  wire \current_state<1>/CLKINV_462 ;
  wire sm1_0_OBUF_382;
  wire \count<0>/DYMUX_370 ;
  wire \count<0>/CLKINV_361 ;
  wire \count<5>/DYMUX_443 ;
  wire \count<5>/CLKINV_434 ;
  wire sm2_OBUF_523;
  wire \current_state<2>/DYMUX_510 ;
  wire \current_state<2>/CLKINV_501 ;
  wire \count<3>/DXMUX_420 ;
  wire \count<3>/DYMUX_406 ;
  wire \count<3>/SRINV_398 ;
  wire \count<3>/CLKINV_397 ;
  wire N02;
  wire next_count_cmp_eq0001_278;
  wire N2_pack_1;
  wire \count<4>/DXMUX_344 ;
  wire \Madd_next_count_share0000_cy<3>_pack_2 ;
  wire \count<4>/CLKINV_327 ;
  wire \sm1<1>/O ;
  wire \count<1>/DXMUX_309 ;
  wire N01_pack_2;
  wire \count<1>/CLKINV_292 ;
  wire \sm2/O ;
  wire \reset/INBUF ;
  wire next_count_cmp_eq0000_254;
  wire N4_pack_1;
  wire \sm1<0>/O ;
  wire \event_up/F5MUX_231 ;
  wire N7;
  wire \event_up/BXINV_224 ;
  wire N6;
  wire \clk_BUFGP/BUFG/S_INVNOT ;
  wire \count<0>/FFY/SET ;
  wire \count<1>/FFX/RSTAND_314 ;
  wire \count<4>/FFX/RSTAND_349 ;
  wire \current_state<2>/FFY/RSTAND_515 ;
  wire \count<5>/FFY/RSTAND_448 ;
  wire GND;
  wire VCC;
  wire [2 : 0] current_state;
  wire [5 : 0] count;
  wire [3 : 3] Madd_next_count_share0000_cy;
  wire [2 : 0] next_state;
  wire [5 : 0] next_count;
  initial $sdf_annotate("netgen/map/controller_map.sdf");
  X_IPAD   \sensor/PAD  (
    .PAD(sensor)
  );
  X_BUF   sensor_IBUF (
    .I(sensor),
    .O(\sensor/INBUF )
  );
  X_IPAD   \clk/PAD  (
    .PAD(clk)
  );
  X_BUF   \clk_BUFGP/IBUFG  (
    .I(clk),
    .O(\clk/INBUF )
  );
  X_BUF   \current_state<1>/DXMUX  (
    .I(next_state[1]),
    .O(\current_state<1>/DXMUX_484 )
  );
  X_BUF   \current_state<1>/DYMUX  (
    .I(next_state[0]),
    .O(\current_state<1>/DYMUX_471 )
  );
  X_BUF   \current_state<1>/SRINV  (
    .I(reset_IBUF_142),
    .O(\current_state<1>/SRINV_463 )
  );
  X_BUF   \current_state<1>/CLKINV  (
    .I(clk_BUFGP),
    .O(\current_state<1>/CLKINV_462 )
  );
  X_BUF   \count<0>/DYMUX  (
    .I(next_count[0]),
    .O(\count<0>/DYMUX_370 )
  );
  X_BUF   \count<0>/CLKINV  (
    .I(clk_BUFGP),
    .O(\count<0>/CLKINV_361 )
  );
  X_BUF   \count<5>/DYMUX  (
    .I(next_count[5]),
    .O(\count<5>/DYMUX_443 )
  );
  X_BUF   \count<5>/CLKINV  (
    .I(clk_BUFGP),
    .O(\count<5>/CLKINV_434 )
  );
  X_BUF   \current_state<2>/DYMUX  (
    .I(next_state[2]),
    .O(\current_state<2>/DYMUX_510 )
  );
  X_BUF   \current_state<2>/CLKINV  (
    .I(clk_BUFGP),
    .O(\current_state<2>/CLKINV_501 )
  );
  X_BUF   \count<3>/DXMUX  (
    .I(next_count[3]),
    .O(\count<3>/DXMUX_420 )
  );
  X_BUF   \count<3>/DYMUX  (
    .I(next_count[2]),
    .O(\count<3>/DYMUX_406 )
  );
  X_BUF   \count<3>/SRINV  (
    .I(reset_IBUF_142),
    .O(\count<3>/SRINV_398 )
  );
  X_BUF   \count<3>/CLKINV  (
    .I(clk_BUFGP),
    .O(\count<3>/CLKINV_397 )
  );
  X_BUF   \N02/XUSED  (
    .I(N02),
    .O(N02_0)
  );
  X_BUF   \next_count_cmp_eq0001/XUSED  (
    .I(next_count_cmp_eq0001_278),
    .O(next_count_cmp_eq0001_0)
  );
  X_BUF   \next_count_cmp_eq0001/YUSED  (
    .I(N2_pack_1),
    .O(N2)
  );
  X_BUF   \count<4>/DXMUX  (
    .I(next_count[4]),
    .O(\count<4>/DXMUX_344 )
  );
  X_BUF   \count<4>/YUSED  (
    .I(\Madd_next_count_share0000_cy<3>_pack_2 ),
    .O(Madd_next_count_share0000_cy[3])
  );
  X_BUF   \count<4>/CLKINV  (
    .I(clk_BUFGP),
    .O(\count<4>/CLKINV_327 )
  );
  X_OPAD   \sm1<1>/PAD  (
    .PAD(sm1[1])
  );
  X_OBUF   sm1_1_OBUF (
    .I(\sm1<1>/O ),
    .O(sm1[1])
  );
  X_BUF   \count<1>/DXMUX  (
    .I(next_count[1]),
    .O(\count<1>/DXMUX_309 )
  );
  X_BUF   \count<1>/YUSED  (
    .I(N01_pack_2),
    .O(N01)
  );
  X_BUF   \count<1>/CLKINV  (
    .I(clk_BUFGP),
    .O(\count<1>/CLKINV_292 )
  );
  X_OPAD   \sm2/PAD  (
    .PAD(sm2)
  );
  X_OBUF   sm2_OBUF (
    .I(\sm2/O ),
    .O(sm2)
  );
  X_IPAD   \reset/PAD  (
    .PAD(reset)
  );
  X_BUF   reset_IBUF (
    .I(reset),
    .O(\reset/INBUF )
  );
  X_BUF   \next_count_cmp_eq0000/XUSED  (
    .I(next_count_cmp_eq0000_254),
    .O(next_count_cmp_eq0000_0)
  );
  X_BUF   \next_count_cmp_eq0000/YUSED  (
    .I(N4_pack_1),
    .O(N4)
  );
  X_OPAD   \sm1<0>/PAD  (
    .PAD(sm1[0])
  );
  X_OBUF   sm1_0_OBUF (
    .I(\sm1<0>/O ),
    .O(sm1[0])
  );
  X_BUF   \event_up/XUSED  (
    .I(\event_up/F5MUX_231 ),
    .O(event_up)
  );
  X_MUX2   \event_up/F5MUX  (
    .IA(N6),
    .IB(N7),
    .SEL(\event_up/BXINV_224 ),
    .O(\event_up/F5MUX_231 )
  );
  X_BUF   \event_up/BXINV  (
    .I(count[3]),
    .O(\event_up/BXINV_224 )
  );
  X_BUFGMUX   \clk_BUFGP/BUFG  (
    .I0(\clk_BUFGP/IBUFG_138 ),
    .I1(GND),
    .S(\clk_BUFGP/BUFG/S_INVNOT ),
    .O(clk_BUFGP)
  );
  X_INV   \clk_BUFGP/BUFG/SINV  (
    .I(1'b1),
    .O(\clk_BUFGP/BUFG/S_INVNOT )
  );
  X_BUF   \sensor/IFF/IMUX  (
    .I(\sensor/INBUF ),
    .O(sensor_IBUF_137)
  );
  X_BUF   \clk/IFF/IMUX  (
    .I(\clk/INBUF ),
    .O(\clk_BUFGP/IBUFG_138 )
  );
  X_BUF   \reset/IFF/IMUX  (
    .I(\reset/INBUF ),
    .O(reset_IBUF_142)
  );
  X_LUT4 #(
    .INIT ( 16'h1000 ))
  next_count_cmp_eq0000 (
    .ADR0(count[5]),
    .ADR1(count[4]),
    .ADR2(count[3]),
    .ADR3(N4),
    .O(next_count_cmp_eq0000_254)
  );
  X_LUT4 #(
    .INIT ( 16'hD5F7 ))
  \next_count<0>1  (
    .ADR0(count[0]),
    .ADR1(current_state[1]),
    .ADR2(next_count_cmp_eq0000_0),
    .ADR3(current_state[2]),
    .O(next_count[0])
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
  X_LUT4 #(
    .INIT ( 16'h0080 ))
  event_up1_F (
    .ADR0(current_state[2]),
    .ADR1(count[5]),
    .ADR2(count[4]),
    .ADR3(N2),
    .O(N6)
  );
  X_FF #(
    .INIT ( 1'b1 ))
  count_0 (
    .I(\count<0>/DYMUX_370 ),
    .CE(VCC),
    .CLK(\count<0>/CLKINV_361 ),
    .SET(\count<0>/FFY/SET ),
    .RST(GND),
    .O(count[0])
  );
  X_BUF   \count<0>/FFY/SETOR  (
    .I(reset_IBUF_142),
    .O(\count<0>/FFY/SET )
  );
  X_FF #(
    .INIT ( 1'b0 ))
  count_1 (
    .I(\count<1>/DXMUX_309 ),
    .CE(VCC),
    .CLK(\count<1>/CLKINV_292 ),
    .SET(GND),
    .RST(\count<1>/FFX/RSTAND_314 ),
    .O(count[1])
  );
  X_BUF   \count<1>/FFX/RSTAND  (
    .I(reset_IBUF_142),
    .O(\count<1>/FFX/RSTAND_314 )
  );
  X_LUT4 #(
    .INIT ( 16'h6060 ))
  \next_count<1>2  (
    .ADR0(count[1]),
    .ADR1(count[0]),
    .ADR2(N01),
    .ADR3(VCC),
    .O(next_count[1])
  );
  X_LUT4 #(
    .INIT ( 16'hFBFB ))
  next_count_cmp_eq0001_SW0 (
    .ADR0(count[2]),
    .ADR1(count[1]),
    .ADR2(count[0]),
    .ADR3(VCC),
    .O(N2_pack_1)
  );
  X_LUT4 #(
    .INIT ( 16'h8080 ))
  next_count_cmp_eq0000_SW0 (
    .ADR0(count[2]),
    .ADR1(count[1]),
    .ADR2(count[0]),
    .ADR3(VCC),
    .O(N4_pack_1)
  );
  X_LUT4 #(
    .INIT ( 16'h0CAE ))
  \next_count<1>11  (
    .ADR0(current_state[1]),
    .ADR1(current_state[2]),
    .ADR2(next_count_cmp_eq0001_0),
    .ADR3(next_count_cmp_eq0000_0),
    .O(N01_pack_2)
  );
  X_LUT4 #(
    .INIT ( 16'h6060 ))
  \next_count<4>1  (
    .ADR0(count[4]),
    .ADR1(Madd_next_count_share0000_cy[3]),
    .ADR2(N01),
    .ADR3(VCC),
    .O(next_count[4])
  );
  X_FF #(
    .INIT ( 1'b0 ))
  count_4 (
    .I(\count<4>/DXMUX_344 ),
    .CE(VCC),
    .CLK(\count<4>/CLKINV_327 ),
    .SET(GND),
    .RST(\count<4>/FFX/RSTAND_349 ),
    .O(count[4])
  );
  X_BUF   \count<4>/FFX/RSTAND  (
    .I(reset_IBUF_142),
    .O(\count<4>/FFX/RSTAND_349 )
  );
  X_LUT4 #(
    .INIT ( 16'h0008 ))
  next_count_cmp_eq0001 (
    .ADR0(count[5]),
    .ADR1(count[4]),
    .ADR2(count[3]),
    .ADR3(N2),
    .O(next_count_cmp_eq0001_278)
  );
  X_LUT4 #(
    .INIT ( 16'h8000 ))
  \Madd_next_count_share0000_cy<3>11  (
    .ADR0(count[2]),
    .ADR1(count[3]),
    .ADR2(count[0]),
    .ADR3(count[1]),
    .O(\Madd_next_count_share0000_cy<3>_pack_2 )
  );
  X_LUT4 #(
    .INIT ( 16'h5444 ))
  \next_state<0>1  (
    .ADR0(sensor_IBUF_137),
    .ADR1(current_state[0]),
    .ADR2(current_state[2]),
    .ADR3(event_up),
    .O(next_state[0])
  );
  X_FF #(
    .INIT ( 1'b1 ))
  current_state_0 (
    .I(\current_state<1>/DYMUX_471 ),
    .CE(VCC),
    .CLK(\current_state<1>/CLKINV_462 ),
    .SET(\current_state<1>/SRINV_463 ),
    .RST(GND),
    .O(current_state[0])
  );
  X_LUT4 #(
    .INIT ( 16'h6A00 ))
  \next_count<3>  (
    .ADR0(count[3]),
    .ADR1(count[2]),
    .ADR2(N02_0),
    .ADR3(N01),
    .O(next_count[3])
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
    .INIT ( 16'hEEEE ))
  \sm1<0>1  (
    .ADR0(current_state[1]),
    .ADR1(current_state[2]),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(sm1_0_OBUF_382)
  );
  X_LUT4 #(
    .INIT ( 16'h88F8 ))
  \next_state<1>1  (
    .ADR0(sensor_IBUF_137),
    .ADR1(current_state[0]),
    .ADR2(current_state[1]),
    .ADR3(event_up),
    .O(next_state[1])
  );
  X_FF #(
    .INIT ( 1'b0 ))
  count_3 (
    .I(\count<3>/DXMUX_420 ),
    .CE(VCC),
    .CLK(\count<3>/CLKINV_397 ),
    .SET(GND),
    .RST(\count<3>/SRINV_398 ),
    .O(count[3])
  );
  X_FF #(
    .INIT ( 1'b0 ))
  current_state_2 (
    .I(\current_state<2>/DYMUX_510 ),
    .CE(VCC),
    .CLK(\current_state<2>/CLKINV_501 ),
    .SET(GND),
    .RST(\current_state<2>/FFY/RSTAND_515 ),
    .O(current_state[2])
  );
  X_BUF   \current_state<2>/FFY/RSTAND  (
    .I(reset_IBUF_142),
    .O(\current_state<2>/FFY/RSTAND_515 )
  );
  X_FF #(
    .INIT ( 1'b0 ))
  count_2 (
    .I(\count<3>/DYMUX_406 ),
    .CE(VCC),
    .CLK(\count<3>/CLKINV_397 ),
    .SET(GND),
    .RST(\count<3>/SRINV_398 ),
    .O(count[2])
  );
  X_FF #(
    .INIT ( 1'b0 ))
  count_5 (
    .I(\count<5>/DYMUX_443 ),
    .CE(VCC),
    .CLK(\count<5>/CLKINV_434 ),
    .SET(GND),
    .RST(\count<5>/FFY/RSTAND_448 ),
    .O(count[5])
  );
  X_BUF   \count<5>/FFY/RSTAND  (
    .I(reset_IBUF_142),
    .O(\count<5>/FFY/RSTAND_448 )
  );
  X_FF #(
    .INIT ( 1'b0 ))
  current_state_1 (
    .I(\current_state<1>/DXMUX_484 ),
    .CE(VCC),
    .CLK(\current_state<1>/CLKINV_462 ),
    .SET(GND),
    .RST(\current_state<1>/SRINV_463 ),
    .O(current_state[1])
  );
  X_LUT4 #(
    .INIT ( 16'hECF0 ))
  \next_state<2>1  (
    .ADR0(sensor_IBUF_137),
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
    .INIT ( 16'hEEEE ))
  sm21 (
    .ADR0(current_state[0]),
    .ADR1(current_state[1]),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(sm2_OBUF_523)
  );
  X_LUT4 #(
    .INIT ( 16'h8888 ))
  \next_count<3>_SW0  (
    .ADR0(count[1]),
    .ADR1(count[0]),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(N02)
  );
  X_BUF   \sm1<1>/OUTPUT/OFF/OMUX  (
    .I(current_state[2]),
    .O(\sm1<1>/O )
  );
  X_BUF   \sm2/OUTPUT/OFF/OMUX  (
    .I(sm2_OBUF_523),
    .O(\sm2/O )
  );
  X_BUF   \sm1<0>/OUTPUT/OFF/OMUX  (
    .I(sm1_0_OBUF_382),
    .O(\sm1<0>/O )
  );
  X_ZERO   NlwBlock_Controller_GND (
    .O(GND)
  );
  X_ONE   NlwBlock_Controller_VCC (
    .O(VCC)
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

