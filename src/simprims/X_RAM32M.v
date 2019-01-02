// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/versclibs/data/rainier/X_RAM32M.v,v 1.6 2008/05/13 00:22:33 yanx Exp $
///////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995/2004 Xilinx, Inc.
// All Right Reserved.
///////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor : Xilinx
// \   \   \/     Version : 11.1i (L.12)
//  \   \         Description : Xilinx Timing Simulation Library Component
//  /   /                 32-Deep by 8-bit Wide Multi Port RAM 
// /___/   /\     Filename : X_RAM32M.v
// \   \  /  \    Timestamp : 
//  \___\/\___\
//
// Revision:
//    03/21/06 - Initial version.
//    12/01/06 - Fix cut/past error for port C and D (CR 430051)
//    05/07/08 - Add negative setup/hold support (CR468872)
// End Revision

`timescale 1 ps/1 ps

module X_RAM32M (DOA, DOB, DOC, DOD, ADDRA, ADDRB, ADDRC, ADDRD, DIA, DIB, DIC, DID, WCLK, WE);

  parameter  INIT_A = 64'h0000000000000000;
  parameter  INIT_B = 64'h0000000000000000;
  parameter  INIT_C = 64'h0000000000000000;
  parameter  INIT_D = 64'h0000000000000000;

  parameter LOC = "UNPLACED";
  output [1:0] DOA;
  output [1:0] DOB;
  output [1:0] DOC;
  output [1:0] DOD;
  input [4:0] ADDRA;
  input [4:0] ADDRB;
  input [4:0] ADDRC;
  input [4:0] ADDRD;
  input [1:0] DIA;
  input [1:0] DIB;
  input [1:0] DIC;
  input [1:0] DID;
  input WCLK;
  input WE;

  wire [4:0] ADDRD_dly;
  wire [1:0] DIA_dly, DIB_dly, DIC_dly, DID_dly;
  wire WCLK_dly, WE_dly;
  reg [63:0] mem_a, mem_b, mem_c, mem_d;
  reg [5:0] addrd_in2, addrd_in1;
  reg notifier;

  initial begin
    mem_a = INIT_A;
    mem_b = INIT_B;
    mem_c = INIT_C;
    mem_d = INIT_D;
  end

  always @(ADDRD_dly) begin
      addrd_in2 = 2 * ADDRD_dly;
      addrd_in1 = 2 * ADDRD_dly + 1;
  end
  always @(posedge WCLK_dly)
    if (WE_dly) begin
      mem_a[addrd_in2] <= #100 DIA_dly[0];
      mem_a[addrd_in1] <= #100 DIA_dly[1];
      mem_b[addrd_in2] <= #100 DIB_dly[0];
      mem_b[addrd_in1] <= #100 DIB_dly[1];
      mem_c[addrd_in2] <= #100 DIC_dly[0];
      mem_c[addrd_in1] <= #100 DIC_dly[1];
      mem_d[addrd_in2] <= #100 DID_dly[0];
      mem_d[addrd_in1] <= #100 DID_dly[1];
  end

   assign  DOA[0] = mem_a[2*ADDRA];
   assign  DOA[1] = mem_a[2*ADDRA + 1];
   assign  DOB[0] = mem_b[2*ADDRB];
   assign  DOB[1] = mem_b[2*ADDRB + 1];
   assign  DOC[0] = mem_c[2*ADDRC];
   assign  DOC[1] = mem_c[2*ADDRC + 1];
   assign  DOD[0] = mem_d[2*ADDRD];
   assign  DOD[1] = mem_d[2*ADDRD + 1];

  always @(notifier) begin
      mem_a[addrd_in2] <= 1'bx;
      mem_a[addrd_in1] <= 1'bx;
      mem_b[addrd_in2] <= 1'bx;
      mem_b[addrd_in1] <= 1'bx;
      mem_c[addrd_in2] <= 1'bx;
      mem_c[addrd_in1] <= 1'bx;
      mem_d[addrd_in2] <= 1'bx;
      mem_d[addrd_in1] <= 1'bx;
  end


  specify

	(WCLK => DOA[0]) = (0:0:0, 0:0:0);
	(WCLK => DOA[1]) = (0:0:0, 0:0:0);
	(WCLK => DOB[0]) = (0:0:0, 0:0:0);
	(WCLK => DOB[1]) = (0:0:0, 0:0:0);
	(WCLK => DOC[0]) = (0:0:0, 0:0:0);
	(WCLK => DOC[1]) = (0:0:0, 0:0:0);
	(WCLK => DOD[0]) = (0:0:0, 0:0:0);
	(WCLK => DOD[1]) = (0:0:0, 0:0:0);
	(ADDRA *> DOA[0]) = (0:0:0, 0:0:0);
	(ADDRA *> DOA[1]) = (0:0:0, 0:0:0);
	(ADDRB *> DOB[0]) = (0:0:0, 0:0:0);
	(ADDRB *> DOB[1]) = (0:0:0, 0:0:0);
	(ADDRC *> DOC[0]) = (0:0:0, 0:0:0);
	(ADDRC *> DOC[1]) = (0:0:0, 0:0:0);
	(ADDRD *> DOD[0]) = (0:0:0, 0:0:0);
	(ADDRD *> DOD[1]) = (0:0:0, 0:0:0);

	$setuphold (posedge WCLK, posedge DIA[0] &&& WE, 0:0:0, 0:0:0, notifier,,,WCLK_dly,DIA_dly[0]);
	$setuphold (posedge WCLK, negedge DIA[0] &&& WE, 0:0:0, 0:0:0, notifier,,,WCLK_dly,DIA_dly[0]);
	$setuphold (posedge WCLK, posedge DIA[1] &&& WE, 0:0:0, 0:0:0, notifier,,,WCLK_dly,DIA_dly[1]);
	$setuphold (posedge WCLK, negedge DIA[1] &&& WE, 0:0:0, 0:0:0, notifier,,,WCLK_dly,DIA_dly[1]);
	$setuphold (posedge WCLK, posedge DIB[0] &&& WE, 0:0:0, 0:0:0, notifier,,,WCLK_dly,DIB_dly[0]);
	$setuphold (posedge WCLK, negedge DIB[0] &&& WE, 0:0:0, 0:0:0, notifier,,,WCLK_dly,DIB_dly[0]);
	$setuphold (posedge WCLK, posedge DIB[1] &&& WE, 0:0:0, 0:0:0, notifier,,,WCLK_dly,DIB_dly[1]);
	$setuphold (posedge WCLK, negedge DIB[1] &&& WE, 0:0:0, 0:0:0, notifier,,,WCLK_dly,DIB_dly[1]);
	$setuphold (posedge WCLK, posedge DIC[0] &&& WE, 0:0:0, 0:0:0, notifier,,,WCLK_dly,DIC_dly[0]);
	$setuphold (posedge WCLK, negedge DIC[0] &&& WE, 0:0:0, 0:0:0, notifier,,,WCLK_dly,DIC_dly[0]);
	$setuphold (posedge WCLK, posedge DIC[1] &&& WE, 0:0:0, 0:0:0, notifier,,,WCLK_dly,DIC_dly[1]);
	$setuphold (posedge WCLK, negedge DIC[1] &&& WE, 0:0:0, 0:0:0, notifier,,,WCLK_dly,DIC_dly[1]);
	$setuphold (posedge WCLK, posedge DID[0] &&& WE, 0:0:0, 0:0:0, notifier,,,WCLK_dly,DID_dly[0]);
	$setuphold (posedge WCLK, negedge DID[0] &&& WE, 0:0:0, 0:0:0, notifier,,,WCLK_dly,DID_dly[0]);
	$setuphold (posedge WCLK, posedge DID[1] &&& WE, 0:0:0, 0:0:0, notifier,,,WCLK_dly,DID_dly[1]);
	$setuphold (posedge WCLK, negedge DID[1] &&& WE, 0:0:0, 0:0:0, notifier,,,WCLK_dly,DID_dly[1]);

	$setuphold (posedge WCLK, posedge ADDRD[0] &&& WE, 0:0:0, 0:0:0, notifier,,,WCLK_dly,ADDRD_dly[0]);
	$setuphold (posedge WCLK, negedge ADDRD[0] &&& WE, 0:0:0, 0:0:0, notifier,,,WCLK_dly,ADDRD_dly[0]);
	$setuphold (posedge WCLK, posedge ADDRD[1] &&& WE, 0:0:0, 0:0:0, notifier,,,WCLK_dly,ADDRD_dly[1]);
	$setuphold (posedge WCLK, negedge ADDRD[1] &&& WE, 0:0:0, 0:0:0, notifier,,,WCLK_dly,ADDRD_dly[1]);
	$setuphold (posedge WCLK, posedge ADDRD[2] &&& WE, 0:0:0, 0:0:0, notifier,,,WCLK_dly,ADDRD_dly[2]);
	$setuphold (posedge WCLK, negedge ADDRD[2] &&& WE, 0:0:0, 0:0:0, notifier,,,WCLK_dly,ADDRD_dly[2]);
	$setuphold (posedge WCLK, posedge ADDRD[3] &&& WE, 0:0:0, 0:0:0, notifier,,,WCLK_dly,ADDRD_dly[3]);
	$setuphold (posedge WCLK, negedge ADDRD[3] &&& WE, 0:0:0, 0:0:0, notifier,,,WCLK_dly,ADDRD_dly[3]);
	$setuphold (posedge WCLK, posedge ADDRD[4] &&& WE, 0:0:0, 0:0:0, notifier,,,WCLK_dly,ADDRD_dly[4]);
	$setuphold (posedge WCLK, negedge ADDRD[4] &&& WE, 0:0:0, 0:0:0, notifier,,,WCLK_dly,ADDRD_dly[4]);

	$setuphold (posedge WCLK, posedge WE, 0:0:0, 0:0:0, notifier,,,WCLK_dly,WE_dly);
	$setuphold (posedge WCLK, negedge WE, 0:0:0, 0:0:0, notifier,,,WCLK_dly,WE_dly);

        $period (posedge WCLK &&& WE, 0:0:0, notifier);

	specparam PATHPULSE$ = 0;

  endspecify

endmodule
