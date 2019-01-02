///////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995/2004 Xilinx, Inc.
// All Right Reserved.
///////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor : Xilinx
// \   \   \/     Version : 11.1
//  \   \         Description : Xilinx Timing Simulation Library Component
//  /   /                  User Interface to Global Clock, Reset and 3-State Controls for SPARTAN3A
// /___/   /\     Filename : X_STARTUP_SPARTAN3A.v
// \   \  /  \    Timestamp : Fri Apr 18 16:30:09 PDT 2008
//  \___\/\___\
//
// Revision:
//    04/18/08 - Initial version -- CR 448436
//    08/23/10 - 544991 -- Added PATHPULSE
// End Revision

`timescale  1 ps / 1 ps


module X_STARTUP_SPARTAN3A (CLK, GSR, GTS);

    input  CLK, GSR, GTS;

    tri0 GSR, GTS;

	assign glbl.GSR = GSR;
	assign glbl.GTS = GTS;

//-----------------------------------
    specify

        specparam PATHPULSE$ = 0;

   endspecify

endmodule
