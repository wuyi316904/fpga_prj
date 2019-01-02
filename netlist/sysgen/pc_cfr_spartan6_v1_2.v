////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: addsb_11_0_232ff08b73742c1b.v
// /___/   /\     Timestamp: Sun Nov 11 08:51:21 2018
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -w -sim -ofmt verilog C:/Users/Administrator.PC-20170803XBGV.000/AppData/Local/Temp/sysgentmp-Administrator/cg_wk/ce29d3b589ac52b24/tmp/_cg/addsb_11_0_232ff08b73742c1b.ngc C:/Users/Administrator.PC-20170803XBGV.000/AppData/Local/Temp/sysgentmp-Administrator/cg_wk/ce29d3b589ac52b24/tmp/_cg/addsb_11_0_232ff08b73742c1b.v 
// Device	: 6slx150fgg484-3
// Input file	: C:/Users/Administrator.PC-20170803XBGV.000/AppData/Local/Temp/sysgentmp-Administrator/cg_wk/ce29d3b589ac52b24/tmp/_cg/addsb_11_0_232ff08b73742c1b.ngc
// Output file	: C:/Users/Administrator.PC-20170803XBGV.000/AppData/Local/Temp/sysgentmp-Administrator/cg_wk/ce29d3b589ac52b24/tmp/_cg/addsb_11_0_232ff08b73742c1b.v
// # of Modules	: 1
// Design Name	: addsb_11_0_232ff08b73742c1b
// Xilinx        : d:\xilinx\14.7\ise_ds\ise\
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

module addsb_11_0_232ff08b73742c1b (
a, b, s
)/* synthesis syn_black_box syn_noprune=1 */;
  input [16 : 0] a;
  input [16 : 0] b;
  output [16 : 0] s;
  
  // synthesis translate_off
  
  wire \blk00000001/sig00000055 ;
  wire \blk00000001/sig00000054 ;
  wire \blk00000001/sig00000053 ;
  wire \blk00000001/sig00000052 ;
  wire \blk00000001/sig00000051 ;
  wire \blk00000001/sig00000050 ;
  wire \blk00000001/sig0000004f ;
  wire \blk00000001/sig0000004e ;
  wire \blk00000001/sig0000004d ;
  wire \blk00000001/sig0000004c ;
  wire \blk00000001/sig0000004b ;
  wire \blk00000001/sig0000004a ;
  wire \blk00000001/sig00000049 ;
  wire \blk00000001/sig00000048 ;
  wire \blk00000001/sig00000047 ;
  wire \blk00000001/sig00000046 ;
  wire \blk00000001/sig00000045 ;
  wire \blk00000001/sig00000044 ;
  wire \blk00000001/sig00000043 ;
  wire \blk00000001/sig00000042 ;
  wire \blk00000001/sig00000041 ;
  wire \blk00000001/sig00000040 ;
  wire \blk00000001/sig0000003f ;
  wire \blk00000001/sig0000003e ;
  wire \blk00000001/sig0000003d ;
  wire \blk00000001/sig0000003c ;
  wire \blk00000001/sig0000003b ;
  wire \blk00000001/sig0000003a ;
  wire \blk00000001/sig00000039 ;
  wire \blk00000001/sig00000038 ;
  wire \blk00000001/sig00000037 ;
  wire \blk00000001/sig00000036 ;
  wire \blk00000001/sig00000035 ;
  wire \blk00000001/sig00000034 ;
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000034  (
    .I0(a[16]),
    .I1(b[16]),
    .O(\blk00000001/sig00000044 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000033  (
    .I0(a[15]),
    .I1(b[15]),
    .O(\blk00000001/sig00000035 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000032  (
    .I0(a[14]),
    .I1(b[14]),
    .O(\blk00000001/sig00000036 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000031  (
    .I0(a[13]),
    .I1(b[13]),
    .O(\blk00000001/sig00000037 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000030  (
    .I0(a[12]),
    .I1(b[12]),
    .O(\blk00000001/sig00000038 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000002f  (
    .I0(a[11]),
    .I1(b[11]),
    .O(\blk00000001/sig00000039 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000002e  (
    .I0(a[10]),
    .I1(b[10]),
    .O(\blk00000001/sig0000003a )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000002d  (
    .I0(a[9]),
    .I1(b[9]),
    .O(\blk00000001/sig0000003b )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000002c  (
    .I0(a[8]),
    .I1(b[8]),
    .O(\blk00000001/sig0000003c )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000002b  (
    .I0(a[7]),
    .I1(b[7]),
    .O(\blk00000001/sig0000003d )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000002a  (
    .I0(a[6]),
    .I1(b[6]),
    .O(\blk00000001/sig0000003e )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000029  (
    .I0(a[5]),
    .I1(b[5]),
    .O(\blk00000001/sig0000003f )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000028  (
    .I0(a[4]),
    .I1(b[4]),
    .O(\blk00000001/sig00000040 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000027  (
    .I0(a[3]),
    .I1(b[3]),
    .O(\blk00000001/sig00000041 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000026  (
    .I0(a[2]),
    .I1(b[2]),
    .O(\blk00000001/sig00000042 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000025  (
    .I0(a[1]),
    .I1(b[1]),
    .O(\blk00000001/sig00000043 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000024  (
    .I0(a[0]),
    .I1(b[0]),
    .O(\blk00000001/sig00000045 )
  );
  MUXCY   \blk00000001/blk00000023  (
    .CI(\blk00000001/sig00000034 ),
    .DI(a[0]),
    .S(\blk00000001/sig00000045 ),
    .O(\blk00000001/sig00000055 )
  );
  MUXCY   \blk00000001/blk00000022  (
    .CI(\blk00000001/sig00000055 ),
    .DI(a[1]),
    .S(\blk00000001/sig00000043 ),
    .O(\blk00000001/sig00000054 )
  );
  MUXCY   \blk00000001/blk00000021  (
    .CI(\blk00000001/sig00000054 ),
    .DI(a[2]),
    .S(\blk00000001/sig00000042 ),
    .O(\blk00000001/sig00000053 )
  );
  MUXCY   \blk00000001/blk00000020  (
    .CI(\blk00000001/sig00000053 ),
    .DI(a[3]),
    .S(\blk00000001/sig00000041 ),
    .O(\blk00000001/sig00000052 )
  );
  MUXCY   \blk00000001/blk0000001f  (
    .CI(\blk00000001/sig00000052 ),
    .DI(a[4]),
    .S(\blk00000001/sig00000040 ),
    .O(\blk00000001/sig00000051 )
  );
  MUXCY   \blk00000001/blk0000001e  (
    .CI(\blk00000001/sig00000051 ),
    .DI(a[5]),
    .S(\blk00000001/sig0000003f ),
    .O(\blk00000001/sig00000050 )
  );
  MUXCY   \blk00000001/blk0000001d  (
    .CI(\blk00000001/sig00000050 ),
    .DI(a[6]),
    .S(\blk00000001/sig0000003e ),
    .O(\blk00000001/sig0000004f )
  );
  MUXCY   \blk00000001/blk0000001c  (
    .CI(\blk00000001/sig0000004f ),
    .DI(a[7]),
    .S(\blk00000001/sig0000003d ),
    .O(\blk00000001/sig0000004e )
  );
  MUXCY   \blk00000001/blk0000001b  (
    .CI(\blk00000001/sig0000004e ),
    .DI(a[8]),
    .S(\blk00000001/sig0000003c ),
    .O(\blk00000001/sig0000004d )
  );
  MUXCY   \blk00000001/blk0000001a  (
    .CI(\blk00000001/sig0000004d ),
    .DI(a[9]),
    .S(\blk00000001/sig0000003b ),
    .O(\blk00000001/sig0000004c )
  );
  MUXCY   \blk00000001/blk00000019  (
    .CI(\blk00000001/sig0000004c ),
    .DI(a[10]),
    .S(\blk00000001/sig0000003a ),
    .O(\blk00000001/sig0000004b )
  );
  MUXCY   \blk00000001/blk00000018  (
    .CI(\blk00000001/sig0000004b ),
    .DI(a[11]),
    .S(\blk00000001/sig00000039 ),
    .O(\blk00000001/sig0000004a )
  );
  MUXCY   \blk00000001/blk00000017  (
    .CI(\blk00000001/sig0000004a ),
    .DI(a[12]),
    .S(\blk00000001/sig00000038 ),
    .O(\blk00000001/sig00000049 )
  );
  MUXCY   \blk00000001/blk00000016  (
    .CI(\blk00000001/sig00000049 ),
    .DI(a[13]),
    .S(\blk00000001/sig00000037 ),
    .O(\blk00000001/sig00000048 )
  );
  MUXCY   \blk00000001/blk00000015  (
    .CI(\blk00000001/sig00000048 ),
    .DI(a[14]),
    .S(\blk00000001/sig00000036 ),
    .O(\blk00000001/sig00000047 )
  );
  MUXCY   \blk00000001/blk00000014  (
    .CI(\blk00000001/sig00000047 ),
    .DI(a[15]),
    .S(\blk00000001/sig00000035 ),
    .O(\blk00000001/sig00000046 )
  );
  XORCY   \blk00000001/blk00000013  (
    .CI(\blk00000001/sig00000055 ),
    .LI(\blk00000001/sig00000043 ),
    .O(s[1])
  );
  XORCY   \blk00000001/blk00000012  (
    .CI(\blk00000001/sig00000054 ),
    .LI(\blk00000001/sig00000042 ),
    .O(s[2])
  );
  XORCY   \blk00000001/blk00000011  (
    .CI(\blk00000001/sig00000053 ),
    .LI(\blk00000001/sig00000041 ),
    .O(s[3])
  );
  XORCY   \blk00000001/blk00000010  (
    .CI(\blk00000001/sig00000052 ),
    .LI(\blk00000001/sig00000040 ),
    .O(s[4])
  );
  XORCY   \blk00000001/blk0000000f  (
    .CI(\blk00000001/sig00000051 ),
    .LI(\blk00000001/sig0000003f ),
    .O(s[5])
  );
  XORCY   \blk00000001/blk0000000e  (
    .CI(\blk00000001/sig00000050 ),
    .LI(\blk00000001/sig0000003e ),
    .O(s[6])
  );
  XORCY   \blk00000001/blk0000000d  (
    .CI(\blk00000001/sig0000004f ),
    .LI(\blk00000001/sig0000003d ),
    .O(s[7])
  );
  XORCY   \blk00000001/blk0000000c  (
    .CI(\blk00000001/sig0000004e ),
    .LI(\blk00000001/sig0000003c ),
    .O(s[8])
  );
  XORCY   \blk00000001/blk0000000b  (
    .CI(\blk00000001/sig0000004d ),
    .LI(\blk00000001/sig0000003b ),
    .O(s[9])
  );
  XORCY   \blk00000001/blk0000000a  (
    .CI(\blk00000001/sig0000004c ),
    .LI(\blk00000001/sig0000003a ),
    .O(s[10])
  );
  XORCY   \blk00000001/blk00000009  (
    .CI(\blk00000001/sig0000004b ),
    .LI(\blk00000001/sig00000039 ),
    .O(s[11])
  );
  XORCY   \blk00000001/blk00000008  (
    .CI(\blk00000001/sig0000004a ),
    .LI(\blk00000001/sig00000038 ),
    .O(s[12])
  );
  XORCY   \blk00000001/blk00000007  (
    .CI(\blk00000001/sig00000049 ),
    .LI(\blk00000001/sig00000037 ),
    .O(s[13])
  );
  XORCY   \blk00000001/blk00000006  (
    .CI(\blk00000001/sig00000048 ),
    .LI(\blk00000001/sig00000036 ),
    .O(s[14])
  );
  XORCY   \blk00000001/blk00000005  (
    .CI(\blk00000001/sig00000047 ),
    .LI(\blk00000001/sig00000035 ),
    .O(s[15])
  );
  XORCY   \blk00000001/blk00000004  (
    .CI(\blk00000001/sig00000046 ),
    .LI(\blk00000001/sig00000044 ),
    .O(s[16])
  );
  XORCY   \blk00000001/blk00000003  (
    .CI(\blk00000001/sig00000034 ),
    .LI(\blk00000001/sig00000045 ),
    .O(s[0])
  );
  GND   \blk00000001/blk00000002  (
    .G(\blk00000001/sig00000034 )
  );

// synthesis translate_on

endmodule

// synthesis translate_off

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

// synthesis translate_on
////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: addsb_11_0_775dc3edc6782f4e.v
// /___/   /\     Timestamp: Sun Nov 11 08:52:25 2018
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -w -sim -ofmt verilog C:/Users/Administrator.PC-20170803XBGV.000/AppData/Local/Temp/sysgentmp-Administrator/cg_wk/ce29d3b589ac52b24/tmp/_cg/addsb_11_0_775dc3edc6782f4e.ngc C:/Users/Administrator.PC-20170803XBGV.000/AppData/Local/Temp/sysgentmp-Administrator/cg_wk/ce29d3b589ac52b24/tmp/_cg/addsb_11_0_775dc3edc6782f4e.v 
// Device	: 6slx150fgg484-3
// Input file	: C:/Users/Administrator.PC-20170803XBGV.000/AppData/Local/Temp/sysgentmp-Administrator/cg_wk/ce29d3b589ac52b24/tmp/_cg/addsb_11_0_775dc3edc6782f4e.ngc
// Output file	: C:/Users/Administrator.PC-20170803XBGV.000/AppData/Local/Temp/sysgentmp-Administrator/cg_wk/ce29d3b589ac52b24/tmp/_cg/addsb_11_0_775dc3edc6782f4e.v
// # of Modules	: 1
// Design Name	: addsb_11_0_775dc3edc6782f4e
// Xilinx        : d:\xilinx\14.7\ise_ds\ise\
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

module addsb_11_0_775dc3edc6782f4e (
  clk, ce, a, b, s
)/* synthesis syn_black_box syn_noprune=1 */;
  input clk;
  input ce;
  input [16 : 0] a;
  input [16 : 0] b;
  output [16 : 0] s;
  
  // synthesis translate_off
  
  wire \blk00000001/sig00000068 ;
  wire \blk00000001/sig00000067 ;
  wire \blk00000001/sig00000066 ;
  wire \blk00000001/sig00000065 ;
  wire \blk00000001/sig00000064 ;
  wire \blk00000001/sig00000063 ;
  wire \blk00000001/sig00000062 ;
  wire \blk00000001/sig00000061 ;
  wire \blk00000001/sig00000060 ;
  wire \blk00000001/sig0000005f ;
  wire \blk00000001/sig0000005e ;
  wire \blk00000001/sig0000005d ;
  wire \blk00000001/sig0000005c ;
  wire \blk00000001/sig0000005b ;
  wire \blk00000001/sig0000005a ;
  wire \blk00000001/sig00000059 ;
  wire \blk00000001/sig00000058 ;
  wire \blk00000001/sig00000057 ;
  wire \blk00000001/sig00000056 ;
  wire \blk00000001/sig00000055 ;
  wire \blk00000001/sig00000054 ;
  wire \blk00000001/sig00000053 ;
  wire \blk00000001/sig00000052 ;
  wire \blk00000001/sig00000051 ;
  wire \blk00000001/sig00000050 ;
  wire \blk00000001/sig0000004f ;
  wire \blk00000001/sig0000004e ;
  wire \blk00000001/sig0000004d ;
  wire \blk00000001/sig0000004c ;
  wire \blk00000001/sig0000004b ;
  wire \blk00000001/sig0000004a ;
  wire \blk00000001/sig00000049 ;
  wire \blk00000001/sig00000048 ;
  wire \blk00000001/sig00000047 ;
  wire \blk00000001/sig00000046 ;
  wire \blk00000001/sig00000045 ;
  wire \blk00000001/sig00000044 ;
  wire \blk00000001/sig00000043 ;
  wire \blk00000001/sig00000042 ;
  wire \blk00000001/sig00000041 ;
  wire \blk00000001/sig00000040 ;
  wire \blk00000001/sig0000003f ;
  wire \blk00000001/sig0000003e ;
  wire \blk00000001/sig0000003d ;
  wire \blk00000001/sig0000003c ;
  wire \blk00000001/sig0000003b ;
  wire \blk00000001/sig0000003a ;
  wire \blk00000001/sig00000039 ;
  wire \blk00000001/sig00000038 ;
  wire \blk00000001/sig00000037 ;
  wire \blk00000001/sig00000036 ;
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000045  (
    .I0(a[16]),
    .I1(b[16]),
    .O(\blk00000001/sig00000057 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000044  (
    .I0(a[15]),
    .I1(b[15]),
    .O(\blk00000001/sig00000048 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000043  (
    .I0(a[14]),
    .I1(b[14]),
    .O(\blk00000001/sig00000049 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000042  (
    .I0(a[13]),
    .I1(b[13]),
    .O(\blk00000001/sig0000004a )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000041  (
    .I0(a[12]),
    .I1(b[12]),
    .O(\blk00000001/sig0000004b )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000040  (
    .I0(a[11]),
    .I1(b[11]),
    .O(\blk00000001/sig0000004c )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000003f  (
    .I0(a[10]),
    .I1(b[10]),
    .O(\blk00000001/sig0000004d )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000003e  (
    .I0(a[9]),
    .I1(b[9]),
    .O(\blk00000001/sig0000004e )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000003d  (
    .I0(a[8]),
    .I1(b[8]),
    .O(\blk00000001/sig0000004f )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000003c  (
    .I0(a[7]),
    .I1(b[7]),
    .O(\blk00000001/sig00000050 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000003b  (
    .I0(a[6]),
    .I1(b[6]),
    .O(\blk00000001/sig00000051 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000003a  (
    .I0(a[5]),
    .I1(b[5]),
    .O(\blk00000001/sig00000052 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000039  (
    .I0(a[4]),
    .I1(b[4]),
    .O(\blk00000001/sig00000053 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000038  (
    .I0(a[3]),
    .I1(b[3]),
    .O(\blk00000001/sig00000054 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000037  (
    .I0(a[2]),
    .I1(b[2]),
    .O(\blk00000001/sig00000055 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000036  (
    .I0(a[1]),
    .I1(b[1]),
    .O(\blk00000001/sig00000056 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000035  (
    .I0(a[0]),
    .I1(b[0]),
    .O(\blk00000001/sig00000058 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000034  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000037 ),
    .Q(s[0])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000033  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000047 ),
    .Q(s[1])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000032  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000046 ),
    .Q(s[2])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000031  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000045 ),
    .Q(s[3])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000030  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000044 ),
    .Q(s[4])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000002f  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000043 ),
    .Q(s[5])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000002e  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000042 ),
    .Q(s[6])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000002d  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000041 ),
    .Q(s[7])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000002c  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000040 ),
    .Q(s[8])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000002b  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig0000003f ),
    .Q(s[9])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000002a  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig0000003e ),
    .Q(s[10])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000029  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig0000003d ),
    .Q(s[11])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000028  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig0000003c ),
    .Q(s[12])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000027  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig0000003b ),
    .Q(s[13])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000026  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig0000003a ),
    .Q(s[14])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000025  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000039 ),
    .Q(s[15])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000024  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000038 ),
    .Q(s[16])
  );
  MUXCY   \blk00000001/blk00000023  (
    .CI(\blk00000001/sig00000036 ),
    .DI(a[0]),
    .S(\blk00000001/sig00000058 ),
    .O(\blk00000001/sig00000068 )
  );
  MUXCY   \blk00000001/blk00000022  (
    .CI(\blk00000001/sig00000068 ),
    .DI(a[1]),
    .S(\blk00000001/sig00000056 ),
    .O(\blk00000001/sig00000067 )
  );
  MUXCY   \blk00000001/blk00000021  (
    .CI(\blk00000001/sig00000067 ),
    .DI(a[2]),
    .S(\blk00000001/sig00000055 ),
    .O(\blk00000001/sig00000066 )
  );
  MUXCY   \blk00000001/blk00000020  (
    .CI(\blk00000001/sig00000066 ),
    .DI(a[3]),
    .S(\blk00000001/sig00000054 ),
    .O(\blk00000001/sig00000065 )
  );
  MUXCY   \blk00000001/blk0000001f  (
    .CI(\blk00000001/sig00000065 ),
    .DI(a[4]),
    .S(\blk00000001/sig00000053 ),
    .O(\blk00000001/sig00000064 )
  );
  MUXCY   \blk00000001/blk0000001e  (
    .CI(\blk00000001/sig00000064 ),
    .DI(a[5]),
    .S(\blk00000001/sig00000052 ),
    .O(\blk00000001/sig00000063 )
  );
  MUXCY   \blk00000001/blk0000001d  (
    .CI(\blk00000001/sig00000063 ),
    .DI(a[6]),
    .S(\blk00000001/sig00000051 ),
    .O(\blk00000001/sig00000062 )
  );
  MUXCY   \blk00000001/blk0000001c  (
    .CI(\blk00000001/sig00000062 ),
    .DI(a[7]),
    .S(\blk00000001/sig00000050 ),
    .O(\blk00000001/sig00000061 )
  );
  MUXCY   \blk00000001/blk0000001b  (
    .CI(\blk00000001/sig00000061 ),
    .DI(a[8]),
    .S(\blk00000001/sig0000004f ),
    .O(\blk00000001/sig00000060 )
  );
  MUXCY   \blk00000001/blk0000001a  (
    .CI(\blk00000001/sig00000060 ),
    .DI(a[9]),
    .S(\blk00000001/sig0000004e ),
    .O(\blk00000001/sig0000005f )
  );
  MUXCY   \blk00000001/blk00000019  (
    .CI(\blk00000001/sig0000005f ),
    .DI(a[10]),
    .S(\blk00000001/sig0000004d ),
    .O(\blk00000001/sig0000005e )
  );
  MUXCY   \blk00000001/blk00000018  (
    .CI(\blk00000001/sig0000005e ),
    .DI(a[11]),
    .S(\blk00000001/sig0000004c ),
    .O(\blk00000001/sig0000005d )
  );
  MUXCY   \blk00000001/blk00000017  (
    .CI(\blk00000001/sig0000005d ),
    .DI(a[12]),
    .S(\blk00000001/sig0000004b ),
    .O(\blk00000001/sig0000005c )
  );
  MUXCY   \blk00000001/blk00000016  (
    .CI(\blk00000001/sig0000005c ),
    .DI(a[13]),
    .S(\blk00000001/sig0000004a ),
    .O(\blk00000001/sig0000005b )
  );
  MUXCY   \blk00000001/blk00000015  (
    .CI(\blk00000001/sig0000005b ),
    .DI(a[14]),
    .S(\blk00000001/sig00000049 ),
    .O(\blk00000001/sig0000005a )
  );
  MUXCY   \blk00000001/blk00000014  (
    .CI(\blk00000001/sig0000005a ),
    .DI(a[15]),
    .S(\blk00000001/sig00000048 ),
    .O(\blk00000001/sig00000059 )
  );
  XORCY   \blk00000001/blk00000013  (
    .CI(\blk00000001/sig00000068 ),
    .LI(\blk00000001/sig00000056 ),
    .O(\blk00000001/sig00000047 )
  );
  XORCY   \blk00000001/blk00000012  (
    .CI(\blk00000001/sig00000067 ),
    .LI(\blk00000001/sig00000055 ),
    .O(\blk00000001/sig00000046 )
  );
  XORCY   \blk00000001/blk00000011  (
    .CI(\blk00000001/sig00000066 ),
    .LI(\blk00000001/sig00000054 ),
    .O(\blk00000001/sig00000045 )
  );
  XORCY   \blk00000001/blk00000010  (
    .CI(\blk00000001/sig00000065 ),
    .LI(\blk00000001/sig00000053 ),
    .O(\blk00000001/sig00000044 )
  );
  XORCY   \blk00000001/blk0000000f  (
    .CI(\blk00000001/sig00000064 ),
    .LI(\blk00000001/sig00000052 ),
    .O(\blk00000001/sig00000043 )
  );
  XORCY   \blk00000001/blk0000000e  (
    .CI(\blk00000001/sig00000063 ),
    .LI(\blk00000001/sig00000051 ),
    .O(\blk00000001/sig00000042 )
  );
  XORCY   \blk00000001/blk0000000d  (
    .CI(\blk00000001/sig00000062 ),
    .LI(\blk00000001/sig00000050 ),
    .O(\blk00000001/sig00000041 )
  );
  XORCY   \blk00000001/blk0000000c  (
    .CI(\blk00000001/sig00000061 ),
    .LI(\blk00000001/sig0000004f ),
    .O(\blk00000001/sig00000040 )
  );
  XORCY   \blk00000001/blk0000000b  (
    .CI(\blk00000001/sig00000060 ),
    .LI(\blk00000001/sig0000004e ),
    .O(\blk00000001/sig0000003f )
  );
  XORCY   \blk00000001/blk0000000a  (
    .CI(\blk00000001/sig0000005f ),
    .LI(\blk00000001/sig0000004d ),
    .O(\blk00000001/sig0000003e )
  );
  XORCY   \blk00000001/blk00000009  (
    .CI(\blk00000001/sig0000005e ),
    .LI(\blk00000001/sig0000004c ),
    .O(\blk00000001/sig0000003d )
  );
  XORCY   \blk00000001/blk00000008  (
    .CI(\blk00000001/sig0000005d ),
    .LI(\blk00000001/sig0000004b ),
    .O(\blk00000001/sig0000003c )
  );
  XORCY   \blk00000001/blk00000007  (
    .CI(\blk00000001/sig0000005c ),
    .LI(\blk00000001/sig0000004a ),
    .O(\blk00000001/sig0000003b )
  );
  XORCY   \blk00000001/blk00000006  (
    .CI(\blk00000001/sig0000005b ),
    .LI(\blk00000001/sig00000049 ),
    .O(\blk00000001/sig0000003a )
  );
  XORCY   \blk00000001/blk00000005  (
    .CI(\blk00000001/sig0000005a ),
    .LI(\blk00000001/sig00000048 ),
    .O(\blk00000001/sig00000039 )
  );
  XORCY   \blk00000001/blk00000004  (
    .CI(\blk00000001/sig00000059 ),
    .LI(\blk00000001/sig00000057 ),
    .O(\blk00000001/sig00000038 )
  );
  XORCY   \blk00000001/blk00000003  (
    .CI(\blk00000001/sig00000036 ),
    .LI(\blk00000001/sig00000058 ),
    .O(\blk00000001/sig00000037 )
  );
  GND   \blk00000001/blk00000002  (
    .G(\blk00000001/sig00000036 )
  );

// synthesis translate_on

endmodule

// synthesis translate_off

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

// synthesis translate_on
/*******************************************************************************
*     This file is owned and controlled by Xilinx and must be used solely      *
*     for design, simulation, implementation and creation of design files      *
*     limited to Xilinx devices or technologies. Use with non-Xilinx           *
*     devices or technologies is expressly prohibited and immediately          *
*     terminates your license.                                                 *
*                                                                              *
*     XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" SOLELY     *
*     FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR XILINX DEVICES.  BY     *
*     PROVIDING THIS DESIGN, CODE, OR INFORMATION AS ONE POSSIBLE              *
*     IMPLEMENTATION OF THIS FEATURE, APPLICATION OR STANDARD, XILINX IS       *
*     MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION IS FREE FROM ANY       *
*     CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE FOR OBTAINING ANY        *
*     RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY        *
*     DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE    *
*     IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR           *
*     REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF          *
*     INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A    *
*     PARTICULAR PURPOSE.                                                      *
*                                                                              *
*     Xilinx products are not intended for use in life support appliances,     *
*     devices, or systems.  Use in such applications are expressly             *
*     prohibited.                                                              *
*                                                                              *
*     (c) Copyright 1995-2018 Xilinx, Inc.                                     *
*     All rights reserved.                                                     *
*******************************************************************************/
// You must compile the wrapper file bmg_72_02af306bc8bac7b8.v when simulating
// the core, bmg_72_02af306bc8bac7b8. When compiling the wrapper file, be sure to
// reference the XilinxCoreLib Verilog simulation library. For detailed
// instructions, please refer to the "CORE Generator Help".

// The synthesis directives "translate_off/translate_on" specified below are
// supported by Xilinx, Mentor Graphics and Synplicity synthesis
// tools. Ensure they are correct for your synthesis tool(s).

`timescale 1ns/1ps

module bmg_72_02af306bc8bac7b8(
  clka,
  ena,
  wea,
  addra,
  dina,
  douta,
  clkb,
  enb,
  web,
  addrb,
  dinb,
  doutb
);

input clka;
input ena;
input [0 : 0] wea;
input [5 : 0] addra;
input [0 : 0] dina;
output [0 : 0] douta;
input clkb;
input enb;
input [0 : 0] web;
input [5 : 0] addrb;
input [0 : 0] dinb;
output [0 : 0] doutb;

// synthesis translate_off

  BLK_MEM_GEN_V7_2 #(
    .C_ADDRA_WIDTH(6),
    .C_ADDRB_WIDTH(6),
    .C_ALGORITHM(1),
    .C_AXI_ID_WIDTH(4),
    .C_AXI_SLAVE_TYPE(0),
    .C_AXI_TYPE(1),
    .C_BYTE_SIZE(9),
    .C_COMMON_CLK(1),
    .C_DEFAULT_DATA("0"),
    .C_DISABLE_WARN_BHV_COLL(0),
    .C_DISABLE_WARN_BHV_RANGE(0),
    .C_ENABLE_32BIT_ADDRESS(0),
    .C_FAMILY("spartan6"),
    .C_HAS_AXI_ID(0),
    .C_HAS_ENA(1),
    .C_HAS_ENB(1),
    .C_HAS_INJECTERR(0),
    .C_HAS_MEM_OUTPUT_REGS_A(0),
    .C_HAS_MEM_OUTPUT_REGS_B(0),
    .C_HAS_MUX_OUTPUT_REGS_A(0),
    .C_HAS_MUX_OUTPUT_REGS_B(0),
    .C_HAS_REGCEA(0),
    .C_HAS_REGCEB(0),
    .C_HAS_RSTA(0),
    .C_HAS_RSTB(0),
    .C_HAS_SOFTECC_INPUT_REGS_A(0),
    .C_HAS_SOFTECC_OUTPUT_REGS_B(0),
    .C_INIT_FILE_NAME("bmg_72_02af306bc8bac7b8.mif"),
    .C_INITA_VAL("0"),
    .C_INITB_VAL("0"),
    .C_INTERFACE_TYPE(0),
    .C_LOAD_INIT_FILE(1),
    .C_MEM_TYPE(2),
    .C_MUX_PIPELINE_STAGES(0),
    .C_PRIM_TYPE(1),
    .C_READ_DEPTH_A(64),
    .C_READ_DEPTH_B(64),
    .C_READ_WIDTH_A(1),
    .C_READ_WIDTH_B(1),
    .C_RST_PRIORITY_A("CE"),
    .C_RST_PRIORITY_B("CE"),
    .C_RST_TYPE("SYNC"),
    .C_RSTRAM_A(0),
    .C_RSTRAM_B(0),
    .C_SIM_COLLISION_CHECK("ALL"),
    .C_USE_BYTE_WEA(0),
    .C_USE_BYTE_WEB(0),
    .C_USE_DEFAULT_DATA(0),
    .C_USE_ECC(0),
    .C_USE_SOFTECC(0),
    .C_WEA_WIDTH(1),
    .C_WEB_WIDTH(1),
    .C_WRITE_DEPTH_A(64),
    .C_WRITE_DEPTH_B(64),
    .C_WRITE_MODE_A("READ_FIRST"),
    .C_WRITE_MODE_B("READ_FIRST"),
    .C_WRITE_WIDTH_A(1),
    .C_WRITE_WIDTH_B(1),
    .C_XDEVICEFAMILY("spartan6")
  )
  inst (
    .CLKA(clka),
    .ENA(ena),
    .WEA(wea),
    .ADDRA(addra),
    .DINA(dina),
    .DOUTA(douta),
    .CLKB(clkb),
    .ENB(enb),
    .WEB(web),
    .ADDRB(addrb),
    .DINB(dinb),
    .DOUTB(doutb),
    .RSTA(),
    .REGCEA(),
    .RSTB(),
    .REGCEB(),
    .INJECTSBITERR(),
    .INJECTDBITERR(),
    .SBITERR(),
    .DBITERR(),
    .RDADDRECC(),
    .S_ACLK(),
    .S_ARESETN(),
    .S_AXI_AWID(),
    .S_AXI_AWADDR(),
    .S_AXI_AWLEN(),
    .S_AXI_AWSIZE(),
    .S_AXI_AWBURST(),
    .S_AXI_AWVALID(),
    .S_AXI_AWREADY(),
    .S_AXI_WDATA(),
    .S_AXI_WSTRB(),
    .S_AXI_WLAST(),
    .S_AXI_WVALID(),
    .S_AXI_WREADY(),
    .S_AXI_BID(),
    .S_AXI_BRESP(),
    .S_AXI_BVALID(),
    .S_AXI_BREADY(),
    .S_AXI_ARID(),
    .S_AXI_ARADDR(),
    .S_AXI_ARLEN(),
    .S_AXI_ARSIZE(),
    .S_AXI_ARBURST(),
    .S_AXI_ARVALID(),
    .S_AXI_ARREADY(),
    .S_AXI_RID(),
    .S_AXI_RDATA(),
    .S_AXI_RRESP(),
    .S_AXI_RLAST(),
    .S_AXI_RVALID(),
    .S_AXI_RREADY(),
    .S_AXI_INJECTSBITERR(),
    .S_AXI_INJECTDBITERR(),
    .S_AXI_SBITERR(),
    .S_AXI_DBITERR(),
    .S_AXI_RDADDRECC()
  );

// synthesis translate_on

endmodule
/*******************************************************************************
*     This file is owned and controlled by Xilinx and must be used solely      *
*     for design, simulation, implementation and creation of design files      *
*     limited to Xilinx devices or technologies. Use with non-Xilinx           *
*     devices or technologies is expressly prohibited and immediately          *
*     terminates your license.                                                 *
*                                                                              *
*     XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" SOLELY     *
*     FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR XILINX DEVICES.  BY     *
*     PROVIDING THIS DESIGN, CODE, OR INFORMATION AS ONE POSSIBLE              *
*     IMPLEMENTATION OF THIS FEATURE, APPLICATION OR STANDARD, XILINX IS       *
*     MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION IS FREE FROM ANY       *
*     CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE FOR OBTAINING ANY        *
*     RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY        *
*     DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE    *
*     IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR           *
*     REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF          *
*     INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A    *
*     PARTICULAR PURPOSE.                                                      *
*                                                                              *
*     Xilinx products are not intended for use in life support appliances,     *
*     devices, or systems.  Use in such applications are expressly             *
*     prohibited.                                                              *
*                                                                              *
*     (c) Copyright 1995-2018 Xilinx, Inc.                                     *
*     All rights reserved.                                                     *
*******************************************************************************/
// You must compile the wrapper file bmg_72_1071e1009a08056e.v when simulating
// the core, bmg_72_1071e1009a08056e. When compiling the wrapper file, be sure to
// reference the XilinxCoreLib Verilog simulation library. For detailed
// instructions, please refer to the "CORE Generator Help".

// The synthesis directives "translate_off/translate_on" specified below are
// supported by Xilinx, Mentor Graphics and Synplicity synthesis
// tools. Ensure they are correct for your synthesis tool(s).

`timescale 1ns/1ps

module bmg_72_1071e1009a08056e(
  clka,
  ena,
  wea,
  addra,
  dina,
  douta,
  clkb,
  enb,
  web,
  addrb,
  dinb,
  doutb
);

input clka;
input ena;
input [0 : 0] wea;
input [8 : 0] addra;
input [31 : 0] dina;
output [31 : 0] douta;
input clkb;
input enb;
input [0 : 0] web;
input [8 : 0] addrb;
input [31 : 0] dinb;
output [31 : 0] doutb;

// synthesis translate_off

  BLK_MEM_GEN_V7_2 #(
    .C_ADDRA_WIDTH(9),
    .C_ADDRB_WIDTH(9),
    .C_ALGORITHM(1),
    .C_AXI_ID_WIDTH(4),
    .C_AXI_SLAVE_TYPE(0),
    .C_AXI_TYPE(1),
    .C_BYTE_SIZE(9),
    .C_COMMON_CLK(1),
    .C_DEFAULT_DATA("0"),
    .C_DISABLE_WARN_BHV_COLL(0),
    .C_DISABLE_WARN_BHV_RANGE(0),
    .C_ENABLE_32BIT_ADDRESS(0),
    .C_FAMILY("spartan6"),
    .C_HAS_AXI_ID(0),
    .C_HAS_ENA(1),
    .C_HAS_ENB(1),
    .C_HAS_INJECTERR(0),
    .C_HAS_MEM_OUTPUT_REGS_A(0),
    .C_HAS_MEM_OUTPUT_REGS_B(0),
    .C_HAS_MUX_OUTPUT_REGS_A(0),
    .C_HAS_MUX_OUTPUT_REGS_B(0),
    .C_HAS_REGCEA(0),
    .C_HAS_REGCEB(0),
    .C_HAS_RSTA(0),
    .C_HAS_RSTB(0),
    .C_HAS_SOFTECC_INPUT_REGS_A(0),
    .C_HAS_SOFTECC_OUTPUT_REGS_B(0),
    .C_INIT_FILE_NAME("bmg_72_1071e1009a08056e.mif"),
    .C_INITA_VAL("0"),
    .C_INITB_VAL("0"),
    .C_INTERFACE_TYPE(0),
    .C_LOAD_INIT_FILE(1),
    .C_MEM_TYPE(2),
    .C_MUX_PIPELINE_STAGES(0),
    .C_PRIM_TYPE(1),
    .C_READ_DEPTH_A(512),
    .C_READ_DEPTH_B(512),
    .C_READ_WIDTH_A(32),
    .C_READ_WIDTH_B(32),
    .C_RST_PRIORITY_A("CE"),
    .C_RST_PRIORITY_B("CE"),
    .C_RST_TYPE("SYNC"),
    .C_RSTRAM_A(0),
    .C_RSTRAM_B(0),
    .C_SIM_COLLISION_CHECK("ALL"),
    .C_USE_BYTE_WEA(0),
    .C_USE_BYTE_WEB(0),
    .C_USE_DEFAULT_DATA(0),
    .C_USE_ECC(0),
    .C_USE_SOFTECC(0),
    .C_WEA_WIDTH(1),
    .C_WEB_WIDTH(1),
    .C_WRITE_DEPTH_A(512),
    .C_WRITE_DEPTH_B(512),
    .C_WRITE_MODE_A("READ_FIRST"),
    .C_WRITE_MODE_B("READ_FIRST"),
    .C_WRITE_WIDTH_A(32),
    .C_WRITE_WIDTH_B(32),
    .C_XDEVICEFAMILY("spartan6")
  )
  inst (
    .CLKA(clka),
    .ENA(ena),
    .WEA(wea),
    .ADDRA(addra),
    .DINA(dina),
    .DOUTA(douta),
    .CLKB(clkb),
    .ENB(enb),
    .WEB(web),
    .ADDRB(addrb),
    .DINB(dinb),
    .DOUTB(doutb),
    .RSTA(),
    .REGCEA(),
    .RSTB(),
    .REGCEB(),
    .INJECTSBITERR(),
    .INJECTDBITERR(),
    .SBITERR(),
    .DBITERR(),
    .RDADDRECC(),
    .S_ACLK(),
    .S_ARESETN(),
    .S_AXI_AWID(),
    .S_AXI_AWADDR(),
    .S_AXI_AWLEN(),
    .S_AXI_AWSIZE(),
    .S_AXI_AWBURST(),
    .S_AXI_AWVALID(),
    .S_AXI_AWREADY(),
    .S_AXI_WDATA(),
    .S_AXI_WSTRB(),
    .S_AXI_WLAST(),
    .S_AXI_WVALID(),
    .S_AXI_WREADY(),
    .S_AXI_BID(),
    .S_AXI_BRESP(),
    .S_AXI_BVALID(),
    .S_AXI_BREADY(),
    .S_AXI_ARID(),
    .S_AXI_ARADDR(),
    .S_AXI_ARLEN(),
    .S_AXI_ARSIZE(),
    .S_AXI_ARBURST(),
    .S_AXI_ARVALID(),
    .S_AXI_ARREADY(),
    .S_AXI_RID(),
    .S_AXI_RDATA(),
    .S_AXI_RRESP(),
    .S_AXI_RLAST(),
    .S_AXI_RVALID(),
    .S_AXI_RREADY(),
    .S_AXI_INJECTSBITERR(),
    .S_AXI_INJECTDBITERR(),
    .S_AXI_SBITERR(),
    .S_AXI_DBITERR(),
    .S_AXI_RDADDRECC()
  );

// synthesis translate_on

endmodule
/*******************************************************************************
*     This file is owned and controlled by Xilinx and must be used solely      *
*     for design, simulation, implementation and creation of design files      *
*     limited to Xilinx devices or technologies. Use with non-Xilinx           *
*     devices or technologies is expressly prohibited and immediately          *
*     terminates your license.                                                 *
*                                                                              *
*     XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" SOLELY     *
*     FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR XILINX DEVICES.  BY     *
*     PROVIDING THIS DESIGN, CODE, OR INFORMATION AS ONE POSSIBLE              *
*     IMPLEMENTATION OF THIS FEATURE, APPLICATION OR STANDARD, XILINX IS       *
*     MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION IS FREE FROM ANY       *
*     CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE FOR OBTAINING ANY        *
*     RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY        *
*     DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE    *
*     IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR           *
*     REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF          *
*     INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A    *
*     PARTICULAR PURPOSE.                                                      *
*                                                                              *
*     Xilinx products are not intended for use in life support appliances,     *
*     devices, or systems.  Use in such applications are expressly             *
*     prohibited.                                                              *
*                                                                              *
*     (c) Copyright 1995-2018 Xilinx, Inc.                                     *
*     All rights reserved.                                                     *
*******************************************************************************/
// You must compile the wrapper file bmg_72_121f2feae115cb60.v when simulating
// the core, bmg_72_121f2feae115cb60. When compiling the wrapper file, be sure to
// reference the XilinxCoreLib Verilog simulation library. For detailed
// instructions, please refer to the "CORE Generator Help".

// The synthesis directives "translate_off/translate_on" specified below are
// supported by Xilinx, Mentor Graphics and Synplicity synthesis
// tools. Ensure they are correct for your synthesis tool(s).

`timescale 1ns/1ps

module bmg_72_121f2feae115cb60(
  clka,
  ena,
  wea,
  addra,
  dina,
  douta,
  clkb,
  enb,
  web,
  addrb,
  dinb,
  doutb
);

input clka;
input ena;
input [0 : 0] wea;
input [8 : 0] addra;
input [32 : 0] dina;
output [32 : 0] douta;
input clkb;
input enb;
input [0 : 0] web;
input [8 : 0] addrb;
input [32 : 0] dinb;
output [32 : 0] doutb;

// synthesis translate_off

  BLK_MEM_GEN_V7_2 #(
    .C_ADDRA_WIDTH(9),
    .C_ADDRB_WIDTH(9),
    .C_ALGORITHM(1),
    .C_AXI_ID_WIDTH(4),
    .C_AXI_SLAVE_TYPE(0),
    .C_AXI_TYPE(1),
    .C_BYTE_SIZE(9),
    .C_COMMON_CLK(1),
    .C_DEFAULT_DATA("0"),
    .C_DISABLE_WARN_BHV_COLL(0),
    .C_DISABLE_WARN_BHV_RANGE(0),
    .C_ENABLE_32BIT_ADDRESS(0),
    .C_FAMILY("spartan6"),
    .C_HAS_AXI_ID(0),
    .C_HAS_ENA(1),
    .C_HAS_ENB(1),
    .C_HAS_INJECTERR(0),
    .C_HAS_MEM_OUTPUT_REGS_A(0),
    .C_HAS_MEM_OUTPUT_REGS_B(0),
    .C_HAS_MUX_OUTPUT_REGS_A(0),
    .C_HAS_MUX_OUTPUT_REGS_B(0),
    .C_HAS_REGCEA(0),
    .C_HAS_REGCEB(0),
    .C_HAS_RSTA(0),
    .C_HAS_RSTB(0),
    .C_HAS_SOFTECC_INPUT_REGS_A(0),
    .C_HAS_SOFTECC_OUTPUT_REGS_B(0),
    .C_INIT_FILE_NAME("bmg_72_121f2feae115cb60.mif"),
    .C_INITA_VAL("0"),
    .C_INITB_VAL("0"),
    .C_INTERFACE_TYPE(0),
    .C_LOAD_INIT_FILE(1),
    .C_MEM_TYPE(2),
    .C_MUX_PIPELINE_STAGES(0),
    .C_PRIM_TYPE(1),
    .C_READ_DEPTH_A(512),
    .C_READ_DEPTH_B(512),
    .C_READ_WIDTH_A(33),
    .C_READ_WIDTH_B(33),
    .C_RST_PRIORITY_A("CE"),
    .C_RST_PRIORITY_B("CE"),
    .C_RST_TYPE("SYNC"),
    .C_RSTRAM_A(0),
    .C_RSTRAM_B(0),
    .C_SIM_COLLISION_CHECK("ALL"),
    .C_USE_BYTE_WEA(0),
    .C_USE_BYTE_WEB(0),
    .C_USE_DEFAULT_DATA(0),
    .C_USE_ECC(0),
    .C_USE_SOFTECC(0),
    .C_WEA_WIDTH(1),
    .C_WEB_WIDTH(1),
    .C_WRITE_DEPTH_A(512),
    .C_WRITE_DEPTH_B(512),
    .C_WRITE_MODE_A("READ_FIRST"),
    .C_WRITE_MODE_B("READ_FIRST"),
    .C_WRITE_WIDTH_A(33),
    .C_WRITE_WIDTH_B(33),
    .C_XDEVICEFAMILY("spartan6")
  )
  inst (
    .CLKA(clka),
    .ENA(ena),
    .WEA(wea),
    .ADDRA(addra),
    .DINA(dina),
    .DOUTA(douta),
    .CLKB(clkb),
    .ENB(enb),
    .WEB(web),
    .ADDRB(addrb),
    .DINB(dinb),
    .DOUTB(doutb),
    .RSTA(),
    .REGCEA(),
    .RSTB(),
    .REGCEB(),
    .INJECTSBITERR(),
    .INJECTDBITERR(),
    .SBITERR(),
    .DBITERR(),
    .RDADDRECC(),
    .S_ACLK(),
    .S_ARESETN(),
    .S_AXI_AWID(),
    .S_AXI_AWADDR(),
    .S_AXI_AWLEN(),
    .S_AXI_AWSIZE(),
    .S_AXI_AWBURST(),
    .S_AXI_AWVALID(),
    .S_AXI_AWREADY(),
    .S_AXI_WDATA(),
    .S_AXI_WSTRB(),
    .S_AXI_WLAST(),
    .S_AXI_WVALID(),
    .S_AXI_WREADY(),
    .S_AXI_BID(),
    .S_AXI_BRESP(),
    .S_AXI_BVALID(),
    .S_AXI_BREADY(),
    .S_AXI_ARID(),
    .S_AXI_ARADDR(),
    .S_AXI_ARLEN(),
    .S_AXI_ARSIZE(),
    .S_AXI_ARBURST(),
    .S_AXI_ARVALID(),
    .S_AXI_ARREADY(),
    .S_AXI_RID(),
    .S_AXI_RDATA(),
    .S_AXI_RRESP(),
    .S_AXI_RLAST(),
    .S_AXI_RVALID(),
    .S_AXI_RREADY(),
    .S_AXI_INJECTSBITERR(),
    .S_AXI_INJECTDBITERR(),
    .S_AXI_SBITERR(),
    .S_AXI_DBITERR(),
    .S_AXI_RDADDRECC()
  );

// synthesis translate_on

endmodule
/*******************************************************************************
*     This file is owned and controlled by Xilinx and must be used solely      *
*     for design, simulation, implementation and creation of design files      *
*     limited to Xilinx devices or technologies. Use with non-Xilinx           *
*     devices or technologies is expressly prohibited and immediately          *
*     terminates your license.                                                 *
*                                                                              *
*     XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" SOLELY     *
*     FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR XILINX DEVICES.  BY     *
*     PROVIDING THIS DESIGN, CODE, OR INFORMATION AS ONE POSSIBLE              *
*     IMPLEMENTATION OF THIS FEATURE, APPLICATION OR STANDARD, XILINX IS       *
*     MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION IS FREE FROM ANY       *
*     CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE FOR OBTAINING ANY        *
*     RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY        *
*     DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE    *
*     IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR           *
*     REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF          *
*     INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A    *
*     PARTICULAR PURPOSE.                                                      *
*                                                                              *
*     Xilinx products are not intended for use in life support appliances,     *
*     devices, or systems.  Use in such applications are expressly             *
*     prohibited.                                                              *
*                                                                              *
*     (c) Copyright 1995-2018 Xilinx, Inc.                                     *
*     All rights reserved.                                                     *
*******************************************************************************/
// You must compile the wrapper file bmg_72_1a6cb457801618b3.v when simulating
// the core, bmg_72_1a6cb457801618b3. When compiling the wrapper file, be sure to
// reference the XilinxCoreLib Verilog simulation library. For detailed
// instructions, please refer to the "CORE Generator Help".

// The synthesis directives "translate_off/translate_on" specified below are
// supported by Xilinx, Mentor Graphics and Synplicity synthesis
// tools. Ensure they are correct for your synthesis tool(s).

`timescale 1ns/1ps

module bmg_72_1a6cb457801618b3(
  clka,
  ena,
  wea,
  addra,
  dina,
  douta,
  clkb,
  enb,
  web,
  addrb,
  dinb,
  doutb
);

input clka;
input ena;
input [0 : 0] wea;
input [8 : 0] addra;
input [31 : 0] dina;
output [31 : 0] douta;
input clkb;
input enb;
input [0 : 0] web;
input [8 : 0] addrb;
input [31 : 0] dinb;
output [31 : 0] doutb;

// synthesis translate_off

  BLK_MEM_GEN_V7_2 #(
    .C_ADDRA_WIDTH(9),
    .C_ADDRB_WIDTH(9),
    .C_ALGORITHM(1),
    .C_AXI_ID_WIDTH(4),
    .C_AXI_SLAVE_TYPE(0),
    .C_AXI_TYPE(1),
    .C_BYTE_SIZE(9),
    .C_COMMON_CLK(1),
    .C_DEFAULT_DATA("0"),
    .C_DISABLE_WARN_BHV_COLL(0),
    .C_DISABLE_WARN_BHV_RANGE(0),
    .C_ENABLE_32BIT_ADDRESS(0),
    .C_FAMILY("spartan6"),
    .C_HAS_AXI_ID(0),
    .C_HAS_ENA(1),
    .C_HAS_ENB(1),
    .C_HAS_INJECTERR(0),
    .C_HAS_MEM_OUTPUT_REGS_A(1),
    .C_HAS_MEM_OUTPUT_REGS_B(1),
    .C_HAS_MUX_OUTPUT_REGS_A(0),
    .C_HAS_MUX_OUTPUT_REGS_B(0),
    .C_HAS_REGCEA(0),
    .C_HAS_REGCEB(0),
    .C_HAS_RSTA(0),
    .C_HAS_RSTB(0),
    .C_HAS_SOFTECC_INPUT_REGS_A(0),
    .C_HAS_SOFTECC_OUTPUT_REGS_B(0),
    .C_INIT_FILE_NAME("bmg_72_1a6cb457801618b3.mif"),
    .C_INITA_VAL("0"),
    .C_INITB_VAL("0"),
    .C_INTERFACE_TYPE(0),
    .C_LOAD_INIT_FILE(1),
    .C_MEM_TYPE(2),
    .C_MUX_PIPELINE_STAGES(0),
    .C_PRIM_TYPE(1),
    .C_READ_DEPTH_A(512),
    .C_READ_DEPTH_B(512),
    .C_READ_WIDTH_A(32),
    .C_READ_WIDTH_B(32),
    .C_RST_PRIORITY_A("CE"),
    .C_RST_PRIORITY_B("CE"),
    .C_RST_TYPE("SYNC"),
    .C_RSTRAM_A(0),
    .C_RSTRAM_B(0),
    .C_SIM_COLLISION_CHECK("ALL"),
    .C_USE_BYTE_WEA(0),
    .C_USE_BYTE_WEB(0),
    .C_USE_DEFAULT_DATA(0),
    .C_USE_ECC(0),
    .C_USE_SOFTECC(0),
    .C_WEA_WIDTH(1),
    .C_WEB_WIDTH(1),
    .C_WRITE_DEPTH_A(512),
    .C_WRITE_DEPTH_B(512),
    .C_WRITE_MODE_A("WRITE_FIRST"),
    .C_WRITE_MODE_B("WRITE_FIRST"),
    .C_WRITE_WIDTH_A(32),
    .C_WRITE_WIDTH_B(32),
    .C_XDEVICEFAMILY("spartan6")
  )
  inst (
    .CLKA(clka),
    .ENA(ena),
    .WEA(wea),
    .ADDRA(addra),
    .DINA(dina),
    .DOUTA(douta),
    .CLKB(clkb),
    .ENB(enb),
    .WEB(web),
    .ADDRB(addrb),
    .DINB(dinb),
    .DOUTB(doutb),
    .RSTA(),
    .REGCEA(),
    .RSTB(),
    .REGCEB(),
    .INJECTSBITERR(),
    .INJECTDBITERR(),
    .SBITERR(),
    .DBITERR(),
    .RDADDRECC(),
    .S_ACLK(),
    .S_ARESETN(),
    .S_AXI_AWID(),
    .S_AXI_AWADDR(),
    .S_AXI_AWLEN(),
    .S_AXI_AWSIZE(),
    .S_AXI_AWBURST(),
    .S_AXI_AWVALID(),
    .S_AXI_AWREADY(),
    .S_AXI_WDATA(),
    .S_AXI_WSTRB(),
    .S_AXI_WLAST(),
    .S_AXI_WVALID(),
    .S_AXI_WREADY(),
    .S_AXI_BID(),
    .S_AXI_BRESP(),
    .S_AXI_BVALID(),
    .S_AXI_BREADY(),
    .S_AXI_ARID(),
    .S_AXI_ARADDR(),
    .S_AXI_ARLEN(),
    .S_AXI_ARSIZE(),
    .S_AXI_ARBURST(),
    .S_AXI_ARVALID(),
    .S_AXI_ARREADY(),
    .S_AXI_RID(),
    .S_AXI_RDATA(),
    .S_AXI_RRESP(),
    .S_AXI_RLAST(),
    .S_AXI_RVALID(),
    .S_AXI_RREADY(),
    .S_AXI_INJECTSBITERR(),
    .S_AXI_INJECTDBITERR(),
    .S_AXI_SBITERR(),
    .S_AXI_DBITERR(),
    .S_AXI_RDADDRECC()
  );

// synthesis translate_on

endmodule
/*******************************************************************************
*     This file is owned and controlled by Xilinx and must be used solely      *
*     for design, simulation, implementation and creation of design files      *
*     limited to Xilinx devices or technologies. Use with non-Xilinx           *
*     devices or technologies is expressly prohibited and immediately          *
*     terminates your license.                                                 *
*                                                                              *
*     XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" SOLELY     *
*     FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR XILINX DEVICES.  BY     *
*     PROVIDING THIS DESIGN, CODE, OR INFORMATION AS ONE POSSIBLE              *
*     IMPLEMENTATION OF THIS FEATURE, APPLICATION OR STANDARD, XILINX IS       *
*     MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION IS FREE FROM ANY       *
*     CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE FOR OBTAINING ANY        *
*     RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY        *
*     DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE    *
*     IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR           *
*     REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF          *
*     INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A    *
*     PARTICULAR PURPOSE.                                                      *
*                                                                              *
*     Xilinx products are not intended for use in life support appliances,     *
*     devices, or systems.  Use in such applications are expressly             *
*     prohibited.                                                              *
*                                                                              *
*     (c) Copyright 1995-2018 Xilinx, Inc.                                     *
*     All rights reserved.                                                     *
*******************************************************************************/
// You must compile the wrapper file dmg_72_195596f332d57672.v when simulating
// the core, dmg_72_195596f332d57672. When compiling the wrapper file, be sure to
// reference the XilinxCoreLib Verilog simulation library. For detailed
// instructions, please refer to the "CORE Generator Help".

// The synthesis directives "translate_off/translate_on" specified below are
// supported by Xilinx, Mentor Graphics and Synplicity synthesis
// tools. Ensure they are correct for your synthesis tool(s).

`timescale 1ns/1ps

module dmg_72_195596f332d57672(
  a,
  clk,
  qspo_ce,
  qspo
);

input [4 : 0] a;
input clk;
input qspo_ce;
output [13 : 0] qspo;

// synthesis translate_off

  DIST_MEM_GEN_V7_2 #(
    .C_ADDR_WIDTH(5),
    .C_DEFAULT_DATA("0"),
    .C_DEPTH(32),
    .C_FAMILY("spartan6"),
    .C_HAS_CLK(1),
    .C_HAS_D(0),
    .C_HAS_DPO(0),
    .C_HAS_DPRA(0),
    .C_HAS_I_CE(0),
    .C_HAS_QDPO(0),
    .C_HAS_QDPO_CE(0),
    .C_HAS_QDPO_CLK(0),
    .C_HAS_QDPO_RST(0),
    .C_HAS_QDPO_SRST(0),
    .C_HAS_QSPO(1),
    .C_HAS_QSPO_CE(1),
    .C_HAS_QSPO_RST(0),
    .C_HAS_QSPO_SRST(0),
    .C_HAS_SPO(0),
    .C_HAS_SPRA(0),
    .C_HAS_WE(0),
    .C_MEM_INIT_FILE("dmg_72_195596f332d57672.mif"),
    .C_MEM_TYPE(0),
    .C_PARSER_TYPE(1),
    .C_PIPELINE_STAGES(0),
    .C_QCE_JOINED(0),
    .C_QUALIFY_WE(0),
    .C_READ_MIF(1),
    .C_REG_A_D_INPUTS(0),
    .C_REG_DPRA_INPUT(0),
    .C_SYNC_ENABLE(1),
    .C_WIDTH(14)
  )
  inst (
    .A(a),
    .CLK(clk),
    .QSPO_CE(qspo_ce),
    .QSPO(qspo),
    .D(),
    .DPRA(),
    .SPRA(),
    .WE(),
    .I_CE(),
    .QDPO_CE(),
    .QDPO_CLK(),
    .QSPO_RST(),
    .QDPO_RST(),
    .QSPO_SRST(),
    .QDPO_SRST(),
    .SPO(),
    .DPO(),
    .QDPO()
  );

// synthesis translate_on

endmodule
/*******************************************************************************
*     This file is owned and controlled by Xilinx and must be used solely      *
*     for design, simulation, implementation and creation of design files      *
*     limited to Xilinx devices or technologies. Use with non-Xilinx           *
*     devices or technologies is expressly prohibited and immediately          *
*     terminates your license.                                                 *
*                                                                              *
*     XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" SOLELY     *
*     FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR XILINX DEVICES.  BY     *
*     PROVIDING THIS DESIGN, CODE, OR INFORMATION AS ONE POSSIBLE              *
*     IMPLEMENTATION OF THIS FEATURE, APPLICATION OR STANDARD, XILINX IS       *
*     MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION IS FREE FROM ANY       *
*     CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE FOR OBTAINING ANY        *
*     RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY        *
*     DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE    *
*     IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR           *
*     REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF          *
*     INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A    *
*     PARTICULAR PURPOSE.                                                      *
*                                                                              *
*     Xilinx products are not intended for use in life support appliances,     *
*     devices, or systems.  Use in such applications are expressly             *
*     prohibited.                                                              *
*                                                                              *
*     (c) Copyright 1995-2018 Xilinx, Inc.                                     *
*     All rights reserved.                                                     *
*******************************************************************************/
// You must compile the wrapper file dmg_72_ad5060a4053d2208.v when simulating
// the core, dmg_72_ad5060a4053d2208. When compiling the wrapper file, be sure to
// reference the XilinxCoreLib Verilog simulation library. For detailed
// instructions, please refer to the "CORE Generator Help".

// The synthesis directives "translate_off/translate_on" specified below are
// supported by Xilinx, Mentor Graphics and Synplicity synthesis
// tools. Ensure they are correct for your synthesis tool(s).

`timescale 1ns/1ps

module dmg_72_ad5060a4053d2208(
  a,
  clk,
  qspo_ce,
  qspo
);

input [4 : 0] a;
input clk;
input qspo_ce;
output [13 : 0] qspo;

// synthesis translate_off

  DIST_MEM_GEN_V7_2 #(
    .C_ADDR_WIDTH(5),
    .C_DEFAULT_DATA("0"),
    .C_DEPTH(32),
    .C_FAMILY("spartan6"),
    .C_HAS_CLK(1),
    .C_HAS_D(0),
    .C_HAS_DPO(0),
    .C_HAS_DPRA(0),
    .C_HAS_I_CE(0),
    .C_HAS_QDPO(0),
    .C_HAS_QDPO_CE(0),
    .C_HAS_QDPO_CLK(0),
    .C_HAS_QDPO_RST(0),
    .C_HAS_QDPO_SRST(0),
    .C_HAS_QSPO(1),
    .C_HAS_QSPO_CE(1),
    .C_HAS_QSPO_RST(0),
    .C_HAS_QSPO_SRST(0),
    .C_HAS_SPO(0),
    .C_HAS_SPRA(0),
    .C_HAS_WE(0),
    .C_MEM_INIT_FILE("dmg_72_ad5060a4053d2208.mif"),
    .C_MEM_TYPE(0),
    .C_PARSER_TYPE(1),
    .C_PIPELINE_STAGES(0),
    .C_QCE_JOINED(0),
    .C_QUALIFY_WE(0),
    .C_READ_MIF(1),
    .C_REG_A_D_INPUTS(0),
    .C_REG_DPRA_INPUT(0),
    .C_SYNC_ENABLE(1),
    .C_WIDTH(14)
  )
  inst (
    .A(a),
    .CLK(clk),
    .QSPO_CE(qspo_ce),
    .QSPO(qspo),
    .D(),
    .DPRA(),
    .SPRA(),
    .WE(),
    .I_CE(),
    .QDPO_CE(),
    .QDPO_CLK(),
    .QSPO_RST(),
    .QDPO_RST(),
    .QSPO_SRST(),
    .QDPO_SRST(),
    .SPO(),
    .DPO(),
    .QDPO()
  );

// synthesis translate_on

endmodule

//-----------------------------------------------------------------
// System Generator version 14.6 VERILOG source file.
//
// Copyright(C) 2013 by Xilinx, Inc.  All rights reserved.  This
// text/file contains proprietary, confidential information of Xilinx,
// Inc., is distributed under license from Xilinx, Inc., and may be used,
// copied and/or disclosed only pursuant to the terms of a valid license
// agreement with Xilinx, Inc.  Xilinx hereby grants you a license to use
// this text/file solely for design, simulation, implementation and
// creation of design files limited to Xilinx devices or technologies.
// Use with non-Xilinx devices or technologies is expressly prohibited
// and immediately terminates your license unless covered by a separate
// agreement.
//
// Xilinx is providing this design, code, or information "as is" solely
// for use in developing programs and solutions for Xilinx devices.  By
// providing this design, code, or information as one possible
// implementation of this feature, application or standard, Xilinx is
// making no representation that this implementation is free from any
// claims of infringement.  You are responsible for obtaining any rights
// you may require for your implementation.  Xilinx expressly disclaims
// any warranty whatsoever with respect to the adequacy of the
// implementation, including but not limited to warranties of
// merchantability or fitness for a particular purpose.
//
// Xilinx products are not intended for use in life support appliances,
// devices, or systems.  Use in such applications is expressly prohibited.
//
// Any modifications that are made to the source code are done at the user's
// sole risk and will be unsupported.
//
// This copyright and support notice must be retained as part of this
// text at all times.  (c) Copyright 1995-2013 Xilinx, Inc.  All rights
// reserved.
//-----------------------------------------------------------------
// synopsys translate_off
`ifndef simulating
  `define simulating 1
`endif
// synopsys translate_on
`ifndef simulating
  `define simulating 0
`endif
`ifndef xlUnsigned
 `define xlUnsigned 1
`endif
`ifndef xlSigned
 `define xlSigned 2
`endif
`ifndef xlFloat
 `define xlFloat 3
`endif
`ifndef xlWrap
 `define xlWrap 1
`endif
`ifndef xlSaturate
 `define xlSaturate 2
`endif
`ifndef xlTruncate
 `define xlTruncate 1
`endif
`ifndef xlRound
 `define xlRound 2
`endif
`ifndef xlRoundBanker
 `define xlRoundBanker 3
`endif
`ifndef xlAddMode
 `define xlAddMode 1
`endif
`ifndef xlSubMode
 `define xlSubMode 2
`endif
`ifndef xlConvPkgIncluded
 `define xlConvPkgIncluded 1
`endif

//-----------------------------------------------------------------
// System Generator version 14.6 VERILOG source file.
//
// Copyright(C) 2013 by Xilinx, Inc.  All rights reserved.  This
// text/file contains proprietary, confidential information of Xilinx,
// Inc., is distributed under license from Xilinx, Inc., and may be used,
// copied and/or disclosed only pursuant to the terms of a valid license
// agreement with Xilinx, Inc.  Xilinx hereby grants you a license to use
// this text/file solely for design, simulation, implementation and
// creation of design files limited to Xilinx devices or technologies.
// Use with non-Xilinx devices or technologies is expressly prohibited
// and immediately terminates your license unless covered by a separate
// agreement.
//
// Xilinx is providing this design, code, or information "as is" solely
// for use in developing programs and solutions for Xilinx devices.  By
// providing this design, code, or information as one possible
// implementation of this feature, application or standard, Xilinx is
// making no representation that this implementation is free from any
// claims of infringement.  You are responsible for obtaining any rights
// you may require for your implementation.  Xilinx expressly disclaims
// any warranty whatsoever with respect to the adequacy of the
// implementation, including but not limited to warranties of
// merchantability or fitness for a particular purpose.
//
// Xilinx products are not intended for use in life support appliances,
// devices, or systems.  Use in such applications is expressly prohibited.
//
// Any modifications that are made to the source code are done at the user's
// sole risk and will be unsupported.
//
// This copyright and support notice must be retained as part of this
// text at all times.  (c) Copyright 1995-2013 Xilinx, Inc.  All rights
// reserved.
//-----------------------------------------------------------------
`timescale 1 ns / 10 ps
module srl17e (clk, ce, d, q);
    parameter width = 16;
    parameter latency = 8;
    input clk, ce;
    input [width-1:0] d;
    output [width-1:0] q;
    parameter signed [5:0] a = latency - 2;
    wire[width - 1:0] #0.2 d_delayed;
    wire[width - 1:0] srl16_out;
    genvar i;
    assign d_delayed = d ;
    generate
      for(i=0; i<width; i=i+1)
      begin:reg_array
            if (latency > 1)
                begin: has_2_latency
                 SRL16E u1 (.CLK(clk), .D(d_delayed[i]), .Q(srl16_out[i]), .CE(ce), .A0(a[0]), .A1(a[1]), .A2(a[2]), .A3(a[3]));
                end
            if (latency <= 1)
                begin: has_1_latency
                 assign srl16_out[i] = d_delayed[i];
                end
            if (latency != 0)
                begin: has_latency
                 FDE u2 (.C(clk), .D(srl16_out[i]), .Q(q[i]), .CE(ce));
                end
            if (latency == 0)
                begin:has_0_latency
                 assign q[i] = srl16_out[i];
                end
        end
    endgenerate
endmodule
module synth_reg (i, ce, clr, clk, o);
   parameter width  = 8;
   parameter latency  = 1;
   input[width - 1:0] i;
   input ce,clr,clk;
   output[width - 1:0] o;
   parameter complete_num_srl17es = latency/17;
   parameter remaining_latency = latency%17;
   parameter temp_num_srl17es = (latency/17) + ((latency%17)?1:0);
   parameter num_srl17es = temp_num_srl17es ? temp_num_srl17es : 1;
   wire [width - 1:0] z [0:num_srl17es-1];
   genvar t;
    generate
      if (latency <= 17)
          begin:has_only_1
              srl17e #(width, latency) srl17e_array0(.clk(clk), .ce(ce), .d(i), .q(o));
          end
     endgenerate
    generate
     if (latency > 17)
        begin:has_1
             assign o = z[num_srl17es-1];
             srl17e #(width, 17) srl17e_array0(.clk(clk), .ce(ce), .d(i), .q(z[0]));
        end
   endgenerate
   generate
      if (latency > 17)
          begin:more_than_1
              for (t=1; t < complete_num_srl17es; t=t+1)
                begin:left_complete_ones
                   srl17e #(width, 17) srl17e_array(.clk(clk), .ce(ce), .d(z[t-1]), .q(z[t]));
                end
          end
   endgenerate
   generate
     if ((remaining_latency > 0) && (latency>17))
          begin:remaining_ones
             srl17e #(width, (latency%17)) last_srl17e (.clk(clk), .ce(ce), .d(z[num_srl17es-2]), .q(z[num_srl17es-1]));
          end
   endgenerate
endmodule
module synth_reg_reg (i, ce, clr, clk, o);
   parameter width  = 8;
   parameter latency  = 1;
   input[width - 1:0] i;
   input ce, clr, clk;
   output[width - 1:0] o;
   wire[width - 1:0] o;
   genvar idx;
   reg[width - 1:0] reg_bank [latency:0];
   integer j;
   initial
     begin
        for (j=0; j < latency+1; j=j+1)
          begin
             reg_bank[j] = {width{1'b0}};
          end
     end

   generate
     if (latency == 0)
        begin:has_0_latency
         assign o = i;
       end
   endgenerate

   always @(i)
        begin
             reg_bank[0] = i;
         end
   generate
     if (latency > 0)
        begin:more_than_1
            assign o = reg_bank[latency];
         for (idx=0; idx < latency; idx=idx+1) begin:sync_loop
            always @(posedge clk)
                begin
                 if(clr)
                    begin
                      for (j=0; j < latency+1; j=j+1)
                        begin
                          reg_bank[j] = {width{1'b0}};
                       end
                    end
                 else if (ce)
                    begin
                        reg_bank[idx+1] <= reg_bank[idx] ;
                    end
               end
        end
      end
   endgenerate
endmodule

//-----------------------------------------------------------------
// System Generator version 14.6 VERILOG source file.
//
// Copyright(C) 2013 by Xilinx, Inc.  All rights reserved.  This
// text/file contains proprietary, confidential information of Xilinx,
// Inc., is distributed under license from Xilinx, Inc., and may be used,
// copied and/or disclosed only pursuant to the terms of a valid license
// agreement with Xilinx, Inc.  Xilinx hereby grants you a license to use
// this text/file solely for design, simulation, implementation and
// creation of design files limited to Xilinx devices or technologies.
// Use with non-Xilinx devices or technologies is expressly prohibited
// and immediately terminates your license unless covered by a separate
// agreement.
//
// Xilinx is providing this design, code, or information "as is" solely
// for use in developing programs and solutions for Xilinx devices.  By
// providing this design, code, or information as one possible
// implementation of this feature, application or standard, Xilinx is
// making no representation that this implementation is free from any
// claims of infringement.  You are responsible for obtaining any rights
// you may require for your implementation.  Xilinx expressly disclaims
// any warranty whatsoever with respect to the adequacy of the
// implementation, including but not limited to warranties of
// merchantability or fitness for a particular purpose.
//
// Xilinx products are not intended for use in life support appliances,
// devices, or systems.  Use in such applications is expressly prohibited.
//
// Any modifications that are made to the source code are done at the user's
// sole risk and will be unsupported.
//
// This copyright and support notice must be retained as part of this
// text at all times.  (c) Copyright 1995-2013 Xilinx, Inc.  All rights
// reserved.
//-----------------------------------------------------------------
`timescale 1 ns / 10 ps
module synth_reg_w_init (i, ce, clr, clk, o);
   parameter width  = 8;
   parameter init_index  = 0;
   parameter [width-1 : 0] init_value  = 'b0000;
   parameter latency  = 1;

   input[width - 1:0] i;
   input ce, clr, clk;
   output[width - 1:0] o;
   wire[(latency + 1) * width - 1:0] dly_i;
   wire #0.2 dly_clr;
   genvar index;

   generate
     if (latency == 0)
        begin:has_0_latency
         assign o = i;
        end
     else
        begin:has_latency
         assign dly_i[(latency + 1) * width - 1:latency * width] = i ;
         assign dly_clr = clr ;
         for (index=1; index<=latency; index=index+1)
           begin:fd_array
// synopsys translate_off
             defparam reg_comp_1.width = width;
             defparam reg_comp_1.init_index = init_index;
             defparam reg_comp_1.init_value = init_value;
// synopsys translate_on
             single_reg_w_init #(width, init_index, init_value)
               reg_comp_1(.clk(clk),
                          .i(dly_i[(index + 1)*width-1:index*width]),
                          .o(dly_i[index * width - 1:(index - 1) * width]),
                          .ce(ce),
                          .clr(dly_clr));
             end
        assign o = dly_i[width-1:0];
       end
   endgenerate
endmodule
module single_reg_w_init (i, ce, clr, clk, o);
   parameter width  = 8;
   parameter init_index  = 0;
   parameter [width-1 : 0] init_value  = 8'b00000000;
   input[width - 1:0] i;
   input ce;
   input clr;
   input clk;
   output[width - 1:0] o;
   parameter [0:0] init_index_val = (init_index ==  1) ? 1'b1 : 1'b0;
   parameter [width-1:0] result = (width > 1) ? { {(width-1){1'b0}}, init_index_val } : init_index_val;
   parameter [width-1:0] init_const = (init_index > 1) ? init_value : result;
   wire[width - 1:0] o;
   genvar index;

   generate
     for (index=0;index < width; index=index+1) begin:fd_prim_array
          if (init_const[index] == 0)
            begin:rst_comp
              FDRE fdre_comp(.C(clk),
                             .D(i[index]),
                             .Q(o[index]),
                             .CE(ce),
                             .R(clr));
            end
          else
            begin:set_comp
             FDSE fdse_comp(.C(clk),
                            .D(i[index]),
                            .Q(o[index]),
                            .CE(ce),
                            .S(clr));
            end
    end
   endgenerate
endmodule

//-----------------------------------------------------------------
// System Generator version 14.6 VERILOG source file.
//
// Copyright(C) 2013 by Xilinx, Inc.  All rights reserved.  This
// text/file contains proprietary, confidential information of Xilinx,
// Inc., is distributed under license from Xilinx, Inc., and may be used,
// copied and/or disclosed only pursuant to the terms of a valid license
// agreement with Xilinx, Inc.  Xilinx hereby grants you a license to use
// this text/file solely for design, simulation, implementation and
// creation of design files limited to Xilinx devices or technologies.
// Use with non-Xilinx devices or technologies is expressly prohibited
// and immediately terminates your license unless covered by a separate
// agreement.
//
// Xilinx is providing this design, code, or information "as is" solely
// for use in developing programs and solutions for Xilinx devices.  By
// providing this design, code, or information as one possible
// implementation of this feature, application or standard, Xilinx is
// making no representation that this implementation is free from any
// claims of infringement.  You are responsible for obtaining any rights
// you may require for your implementation.  Xilinx expressly disclaims
// any warranty whatsoever with respect to the adequacy of the
// implementation, including but not limited to warranties of
// merchantability or fitness for a particular purpose.
//
// Xilinx products are not intended for use in life support appliances,
// devices, or systems.  Use in such applications is expressly prohibited.
//
// Any modifications that are made to the source code are done at the user's
// sole risk and will be unsupported.
//
// This copyright and support notice must be retained as part of this
// text at all times.  (c) Copyright 1995-2013 Xilinx, Inc.  All rights
// reserved.
//-----------------------------------------------------------------
`ifndef xlConvPkgIncluded
`include "conv_pkg.v"
`endif
`ifndef xlConvertType
 `define xlConvertType
 `timescale 1 ns / 10 ps
module cast (inp, res);
    parameter signed [31:0] old_width = 4;
    parameter signed [31:0] old_bin_pt = 1;
    parameter signed [31:0] new_width = 4;
    parameter signed [31:0] new_bin_pt = 1;
    parameter signed [31:0] new_arith = `xlSigned;
    input [old_width - 1 : 0] inp;
    output [new_width - 1 : 0] res;

   parameter signed [31:0] right_of_dp = new_bin_pt - old_bin_pt;
    wire [new_width-1:0] result;
   genvar i;
   assign res = result;
   generate
      for (i = 0; i<new_width;  i = i+1)
        begin:cast_loop
           if ((i-right_of_dp) > old_width - 1)
             begin:u0
                if (new_arith == `xlUnsigned)
                  begin:u1
                     assign result[i] = 1'b0;
                  end
                if (new_arith == `xlSigned)
                  begin:u2
                     assign result[i] = inp[old_width-1];
                  end
             end
           else if ((i-right_of_dp) >= 0)
             begin:u3
                assign result[i] = inp[i-right_of_dp];
             end
           else
             begin:u4
                assign result[i] = 1'b0;
             end
        end
      endgenerate

endmodule
module shift_division_result (quotient, fraction, res);
    parameter signed [31:0] q_width = 16;
    parameter signed [31:0] f_width = 16;
    parameter signed [31:0] fraction_width = 8;
    parameter signed [31:0] shift_value = 8;
    parameter signed [31:0] shift_dir = 0;
    parameter signed [31:0] vec_MSB = q_width + f_width - 1;
    parameter signed [31:0] result_MSB = q_width + fraction_width - 1;
    parameter signed [31:0] result_LSB = vec_MSB - result_MSB;
    input [q_width - 1 : 0] quotient;
    input [f_width - 1 : 0] fraction;
    output [result_MSB : 0] res;

    wire [vec_MSB:0] vec;
    wire [vec_MSB:0] temp;
   genvar i;
   assign res = vec[vec_MSB:result_LSB];
   assign temp = { quotient, fraction };
   generate
      if (shift_dir == 1)
      begin:left_shift_loop
         for (i = vec_MSB; i>=0;  i = i-1)
         begin:u0
            if (i < shift_value)
            begin:u1
               assign vec[i] = 1'b0;
            end
            else
            begin:u2
               assign vec[i] = temp[i-shift_value];
             end
         end
      end
      else
      begin:right_shift_loop
         for (i = 0; i <= vec_MSB; i = i+1)
         begin:u3
            if (i > vec_MSB - shift_value)
            begin:u4
               assign vec[i] = temp[vec_MSB];
            end
            else
            begin:u5
               assign vec[i] = temp[i+shift_value];
            end
         end
      end
   endgenerate

endmodule
module shift_op (inp, res);
    parameter signed [31:0] inp_width = 16;
    parameter signed [31:0] result_width = 16;
    parameter signed [31:0] shift_value = 8;
    parameter signed [31:0] shift_dir = 0;
    parameter signed [31:0] vec_MSB = inp_width - 1;
    parameter signed [31:0] result_MSB = result_width - 1;
    parameter signed [31:0] result_LSB = vec_MSB - result_MSB;
    input [vec_MSB : 0] inp;
    output [result_MSB : 0] res;

    wire [vec_MSB:0] vec;
   genvar i;
   assign res = vec[vec_MSB:result_LSB];
   generate
      if (shift_dir == 1)
      begin:left_shift_loop
         for (i = vec_MSB; i>=0;  i = i-1)
         begin:u0
            if (i < shift_value)
            begin:u1
               assign vec[i] = 1'b0;
            end
            else
            begin:u2
               assign vec[i] = inp[i-shift_value];
             end
         end
      end
      else
      begin:right_shift_loop
         for (i = 0; i <= vec_MSB; i = i+1)
         begin:u3
            if (i > vec_MSB - shift_value)
            begin:u4
               assign vec[i] = inp[vec_MSB];
            end
            else
            begin:u5
               assign vec[i] = inp[i+shift_value];
            end
         end
      end
   endgenerate

endmodule
module pad_lsb (inp, res);
   parameter signed [31:0] orig_width = 4;
   parameter signed [31:0] new_width = 2;
   input [orig_width - 1 : 0] inp;
   output [new_width - 1 : 0] res;
   parameter signed [31:0] pad_pos = new_width - orig_width -1;
   wire [new_width-1:0] result;
   genvar i;
   assign  res = result;
   generate
      if (new_width >= orig_width)
        begin:u0
           assign result[new_width-1:new_width-orig_width] = inp[orig_width-1:0];
        end
   endgenerate

   generate
      if (pad_pos >= 0)
        begin:u1
           assign result[pad_pos:0] = {pad_pos{1'b0}};
        end
   endgenerate
endmodule
module zero_ext (inp, res);
   parameter signed [31:0]  old_width = 4;
   parameter signed [31:0]  new_width = 2;
   input [old_width - 1 : 0] inp;
   output [new_width - 1 : 0] res;
   wire [new_width-1:0] result;
   genvar i;
   assign res = result;
   generate
     if (new_width > old_width)
       begin:u0
          assign result = { {(new_width-old_width){1'b0}}, inp};
       end
     else
       begin:u1
          assign result[new_width-1:0] = inp[new_width-1:0];
       end
    endgenerate
endmodule
module sign_ext (inp, res);
   parameter signed [31:0]  old_width = 4;
   parameter signed [31:0]  new_width = 2;
   input [old_width - 1 : 0] inp;
   output [new_width - 1 : 0] res;
   wire [new_width-1:0] result;
   assign res = result;
   generate
     if (new_width > old_width)
       begin:u0
          assign result = { {(new_width-old_width){inp[old_width-1]}}, inp};
       end
     else
       begin:u1
          assign result[new_width-1:0] = inp[new_width-1:0];
       end
   endgenerate

endmodule
module extend_msb (inp, res);
    parameter signed [31:0]  old_width = 4;
    parameter signed [31:0]  new_width = 4;
    parameter signed [31:0]  new_arith = `xlSigned;
    input [old_width - 1 : 0] inp;
    output [new_width - 1 : 0] res;
    wire [new_width-1:0] result;
   assign res = result;
   generate
      if (new_arith ==`xlUnsigned)
        begin:u0
           zero_ext # (old_width, new_width)
             em_zero_ext (.inp(inp), .res(result));
        end
      else
        begin:u1
           sign_ext # (old_width, new_width)
             em_sign_ext (.inp(inp), .res(result));
        end
    endgenerate
endmodule
module align_input (inp, res);
    parameter signed [31:0]  old_width = 4;
    parameter signed [31:0]  delta = 1;
    parameter signed [31:0]  new_arith = `xlSigned;
    parameter signed [31:0]  new_width = 4;
    input [old_width - 1 : 0] inp;
    output [new_width - 1 : 0] res;
    parameter signed [31:0]  abs_delta = (delta >= 0) ? (delta) : (-delta);
    wire [new_width-1:0] result;
    wire [(old_width+abs_delta)-1:0] padded_inp;
   assign res = result;
   generate
      if (delta > 0)
        begin:u0
           pad_lsb # (old_width, old_width+delta)
             ai_pad_lsb (.inp(inp), .res(padded_inp));
           extend_msb # (old_width+delta, new_width, new_arith)
             ai_extend_msb (.inp(padded_inp), .res(result));
        end
      else
        begin:u1
           extend_msb # (old_width, new_width, new_arith)
             ai_extend_msb (.inp(inp), .res(result));
        end
   endgenerate
endmodule
module round_towards_inf (inp, res);
    parameter signed [31:0]  old_width = 4;
    parameter signed [31:0]  old_bin_pt = 2;
    parameter signed [31:0]  old_arith = `xlSigned;
    parameter signed [31:0]  new_width = 4;
    parameter signed [31:0]  new_bin_pt = 1;
    parameter signed [31:0]  new_arith = `xlSigned;
    input [old_width - 1 : 0] inp;
    output [new_width - 1 : 0] res;

   parameter signed [31:0]  right_of_dp = old_bin_pt - new_bin_pt;
   parameter signed [31:0]  abs_right_of_dp = (new_bin_pt > old_bin_pt) ? (new_bin_pt-old_bin_pt) : (old_bin_pt - new_bin_pt);
   parameter signed [31:0]  right_of_dp_2 = (right_of_dp >=2) ? right_of_dp-2 : 0;
   parameter signed [31:0]  right_of_dp_1 = (right_of_dp >=1) ? right_of_dp-1 : 0;
   reg [new_width-1:0] one_or_zero;
   wire [new_width-1:0] truncated_val;
   wire signed [new_width-1:0] result_signed;
   wire [abs_right_of_dp+old_width-1 : 0] padded_val;
   initial
     begin
        one_or_zero = {new_width{1'b0}};
     end
   generate
      if (right_of_dp >= 0)
        begin:u0
           if (new_arith ==`xlUnsigned)
             begin:u1
                zero_ext # (old_width-right_of_dp, new_width)
                  rti_zero_ext (.inp(inp[old_width-1:right_of_dp]), .res(truncated_val));
             end
           else
             begin:u2
                sign_ext # (old_width-right_of_dp, new_width)
                  rti_sign_ext (.inp(inp[old_width-1:right_of_dp]), .res(truncated_val));
             end
        end
      else
        begin:u3
           pad_lsb # (old_width, abs_right_of_dp+old_width)
             rti_pad_lsb (.inp(inp), .res(padded_val));
           if (new_arith ==`xlUnsigned)
             begin:u4
                zero_ext # (abs_right_of_dp+old_width, new_width)
                  rti_zero_ext1 (.inp(padded_val), .res(truncated_val));
             end
           else
             begin:u5
                sign_ext # (abs_right_of_dp+old_width, new_width)
                  rti_sign_ext1 (.inp(padded_val), .res(truncated_val));
             end
        end
   endgenerate
   generate
      if (new_arith == `xlSigned)
        begin:u6
           always @(inp)
             begin
                one_or_zero = {new_width{1'b0}};
               if (inp[old_width-1] == 1'b0)
                 begin
                    one_or_zero[0] = 1'b1;
                 end
               if ((right_of_dp >=2) && (right_of_dp <= old_width))
                 begin
                    if(|inp[right_of_dp_2:0] == 1'b1)
                       begin
                          one_or_zero[0] = 1'b1;
                       end
                 end
               if ((right_of_dp >=1) && (right_of_dp <= old_width))
                 begin
                    if(inp[right_of_dp_1] == 1'b0)
                      begin
                         one_or_zero[0] = 1'b0;
                      end
                 end
               else
                 begin
                    one_or_zero[0] = 1'b0;
                 end
             end
             assign result_signed = truncated_val + one_or_zero;
             assign res = result_signed;
        end

      else
        begin:u7
           always @(inp)
             begin
                one_or_zero = {new_width{1'b0}};
               if ((right_of_dp >=1) && (right_of_dp <= old_width))
                 begin
                    one_or_zero[0] = inp[right_of_dp_1];
                 end
             end
             assign res = truncated_val + one_or_zero;
        end
   endgenerate

endmodule
module round_towards_even (inp, res);
    parameter signed [31:0]  old_width = 4;
    parameter signed [31:0]  old_bin_pt = 2;
    parameter signed [31:0]  old_arith = `xlSigned;
    parameter signed [31:0]  new_width = 4;
    parameter signed [31:0]  new_bin_pt = 1;
    parameter signed [31:0]  new_arith = `xlSigned;
    input [old_width - 1 : 0] inp;
    output [new_width - 1 : 0] res;
   parameter signed [31:0]  right_of_dp = old_bin_pt - new_bin_pt;
   parameter signed [31:0]  abs_right_of_dp = (new_bin_pt > old_bin_pt) ? (new_bin_pt-old_bin_pt) : (old_bin_pt - new_bin_pt);
   parameter signed [31:0]  expected_new_width = old_width - right_of_dp + 1;
   reg [new_width-1:0] one_or_zero;
   wire signed [new_width-1:0] result_signed;
   wire [new_width-1:0] truncated_val;
   wire [abs_right_of_dp+old_width-1 : 0] padded_val;
   initial
     begin
      one_or_zero = { new_width{1'b0}};
     end

   generate
      if (right_of_dp >= 0)
        begin:u0
           if (new_arith == `xlUnsigned)
             begin:u1
                zero_ext # (old_width-right_of_dp, new_width)
                            rte_zero_ext (.inp(inp[old_width-1:right_of_dp]), .res(truncated_val));
             end
           else
             begin:u2
                sign_ext # (old_width-right_of_dp, new_width)
                            rte_sign_ext (.inp(inp[old_width-1:right_of_dp]), .res(truncated_val));
             end
        end

      else
        begin:u3
           pad_lsb # (old_width, abs_right_of_dp+old_width)
                            rte_pad_lsb (.inp(inp), .res(padded_val));
           if (new_arith == `xlUnsigned)
             begin:u4
                zero_ext # (abs_right_of_dp+old_width, new_width)
                            rte_zero_ext1 (.inp(padded_val), .res(truncated_val));
             end
           else
             begin:u5
                sign_ext # (abs_right_of_dp+old_width, new_width)
                            rte_sign_ext1 (.inp(padded_val), .res(truncated_val));
             end
        end
   endgenerate

   generate
      if ((right_of_dp ==1) && (right_of_dp <= old_width))
        begin:u6a
           always @(inp)
             begin
                one_or_zero = { new_width{1'b0}};
                if(inp[right_of_dp-1] == 1'b1)
                  begin
                     one_or_zero[0] = inp[right_of_dp];
                  end
                else
                  begin
                     one_or_zero[0] = inp[right_of_dp-1];
                  end
             end
       end
      else if ((right_of_dp >=2) && (right_of_dp <= old_width))
        begin:u6b
           always @(inp)
             begin
                one_or_zero = { new_width{1'b0}};
                if( (inp[right_of_dp-1] == 'b1) && !(|inp[right_of_dp-2:0]) )
                  begin
                     one_or_zero[0] = inp[right_of_dp];
                  end
                else
                  begin
                     one_or_zero[0] = inp[right_of_dp-1];
                  end
             end
       end
      else
        begin:u7
            always @(inp)
             begin
                one_or_zero = { new_width{1'b0}};
             end
        end
   endgenerate

   generate
      if (new_arith == `xlSigned)
        begin:u8
           assign result_signed = truncated_val + one_or_zero;
           assign res = result_signed;
        end
      else
        begin:u9
           assign res = truncated_val + one_or_zero;
        end
   endgenerate

endmodule
module trunc (inp, res);
    parameter signed [31:0]  old_width = 4;
    parameter signed [31:0]  old_bin_pt = 2;
    parameter signed [31:0]  old_arith = `xlSigned;
    parameter signed [31:0]  new_width = 4;
    parameter signed [31:0]  new_bin_pt = 1;
    parameter signed [31:0]  new_arith = `xlSigned;
    input [old_width - 1 : 0] inp;
    output [new_width - 1 : 0] res;

   parameter signed [31:0]  right_of_dp = old_bin_pt - new_bin_pt;
   parameter signed [31:0]  abs_right_of_dp = (new_bin_pt > old_bin_pt) ? (new_bin_pt-old_bin_pt) : (old_bin_pt - new_bin_pt);
   wire [new_width-1:0] result;
   wire [abs_right_of_dp+old_width-1 : 0] padded_val;
   assign res = result;
   generate
      if (new_bin_pt > old_bin_pt)
        begin:tr_u2
           pad_lsb # (old_width, abs_right_of_dp+old_width)
             tr_pad_lsb (.inp(inp), .res(padded_val));
           extend_msb # (old_width+abs_right_of_dp, new_width, new_arith)
             tr_extend_msb (.inp(padded_val), .res(result));
        end
      else
        begin:tr_u1
           extend_msb # (old_width-right_of_dp, new_width, new_arith)
             tr_extend_msb (.inp(inp[old_width-1:right_of_dp]), .res(result));
        end
   endgenerate

endmodule
module saturation_arith (inp, res);
    parameter signed [31:0]  old_width = 4;
    parameter signed [31:0]  old_bin_pt = 2;
    parameter signed [31:0]  old_arith = `xlSigned;
    parameter signed [31:0]  new_width = 4;
    parameter signed [31:0]  new_bin_pt = 1;
    parameter signed [31:0]  new_arith = `xlSigned;
    input [old_width - 1 : 0] inp;
    output [new_width - 1 : 0] res;
   parameter signed [31:0]  abs_right_of_dp = (new_bin_pt > old_bin_pt) ? (new_bin_pt-old_bin_pt) : (old_bin_pt - new_bin_pt);
   parameter signed [31:0]  abs_width = (new_width > old_width) ? (new_width-old_width) : 1;
   parameter signed [31:0]  abs_new_width = (old_width > new_width) ? new_width : 1;
   reg overflow;
   reg [old_width-1:0] vec;
   reg [new_width-1:0] result;
   assign res = result;
   generate
      if (old_width > new_width)
        begin:sa_u0
           always @ (inp)
             begin
                vec = inp;
                overflow = 1;
                if ( (old_arith == `xlSigned) && (new_arith == `xlSigned) )
                  begin
                    if (~|inp[old_width-1:abs_new_width-1] || &inp[old_width-1:abs_new_width-1])
                     begin
                       overflow = 0;
                     end
                 end

                if ( (old_arith == `xlSigned) && (new_arith == `xlUnsigned))
                   begin
                    if (~|inp[old_width-1 : abs_new_width])
                    begin
                       overflow = 0;
                    end
                end

                if ((old_arith == `xlUnsigned) &&  (new_arith == `xlUnsigned))
                  begin
                    if (~|inp[old_width-1 : abs_new_width])
                     begin
                       overflow = 0;
                     end
                  end

               if ( (old_arith == `xlUnsigned) && (new_arith == `xlSigned))
                 begin
                  if (~|inp[old_width-1:abs_new_width-1] || &inp[old_width-1:abs_new_width-1])
                    begin
                      overflow = 0;
                    end
                 end
               if (overflow == 1)
                 begin
                   if (new_arith == `xlSigned)
                     begin
                       if (inp[old_width-1] == 'b0)
                         begin
                           result = (new_width ==1) ? 1'b0 : {1'b0, {(new_width-1){1'b1}} };
                         end
                      else
                        begin
                          result = (new_width ==1) ? 1'b1 : {1'b1, {(new_width-1){1'b0}} };
                       end
                     end
                   else
                     begin
                       if ((old_arith == `xlSigned) && (inp[old_width-1] == 'b1))
                         begin
                           result = {new_width{1'b0}};
                         end
                       else
                         begin
                           result = {new_width{1'b1}};
                         end
                     end
                 end
               else
                 begin
                    if ( (old_arith == `xlSigned) && (new_arith == `xlUnsigned) && (inp[old_width-1] == 'b1) )
                    begin
                      vec = {old_width{1'b0}};
                    end
                    result = vec[new_width-1:0];
                 end
             end
        end
   endgenerate
   generate
      if (new_width > old_width)
        begin:sa_u1
         always @ (inp)
           begin
            vec = inp;
            if ( (old_arith == `xlSigned) && (new_arith == `xlUnsigned) && (inp[old_width-1] == 1'b1) )
              begin
                vec = {old_width{1'b0}};
              end
              if (new_arith == `xlUnsigned)
                begin
                  result = { {abs_width{1'b0}}, vec};
                end
              else
                begin
                  result = { {abs_width{inp[old_width-1]}}, vec};
                end
           end
       end
   endgenerate

   generate
      if (new_width == old_width)
        begin:sa_u2
         always @ (inp)
           begin
             if ( (old_arith == `xlSigned) && (new_arith == `xlUnsigned) && (inp[old_width-1] == 'b1) )
               begin
                 result = {old_width{1'b0}};
               end
             else
               begin
                 result = inp;
               end
           end
        end
   endgenerate

endmodule
module wrap_arith (inp, res);
    parameter signed [31:0]  old_width = 4;
    parameter signed [31:0]  old_bin_pt = 2;
    parameter signed [31:0]  old_arith = `xlSigned;
    parameter signed [31:0]  new_width = 4;
    parameter signed [31:0]  new_bin_pt = 1;
    parameter signed [31:0]  new_arith = `xlSigned;
    parameter signed [31:0]  result_arith = ((old_arith==`xlSigned)&&(new_arith==`xlUnsigned))? `xlSigned : new_arith;
    input [old_width - 1 : 0] inp;
    output [new_width - 1 : 0] res;
   wire [new_width-1:0] result;
   cast # (old_width, old_bin_pt, new_width, new_bin_pt, result_arith)
     wrap_cast (.inp(inp), .res(result));
   assign res = result;

endmodule
module convert_type (inp, res);
    parameter signed [31:0]  old_width = 4;
    parameter signed [31:0]  old_bin_pt = 2;
    parameter signed [31:0]  old_arith = `xlSigned;
    parameter signed [31:0]  new_width = 4;
    parameter signed [31:0]  new_bin_pt = 1;
    parameter signed [31:0]  new_arith = `xlSigned;
    parameter signed [31:0]  quantization = `xlTruncate;
    parameter signed [31:0]  overflow = `xlWrap;
    input [old_width - 1 : 0] inp;
    output [new_width - 1 : 0] res;

   parameter signed [31:0]  fp_width = old_width + 2;
   parameter signed [31:0]  fp_bin_pt = old_bin_pt;
   parameter signed [31:0]  fp_arith = old_arith;
   parameter signed [31:0]  q_width = fp_width + new_bin_pt - old_bin_pt;
   parameter signed [31:0]  q_bin_pt = new_bin_pt;
   parameter signed [31:0]  q_arith = old_arith;
   wire [fp_width-1:0] full_precision_result;
   wire [new_width-1:0] result;
   wire [q_width-1:0] quantized_result;
   assign res = result;
   cast # (old_width, old_bin_pt, fp_width, fp_bin_pt, fp_arith)
     fp_cast (.inp(inp), .res(full_precision_result));
   generate
      if (quantization == `xlRound)
        begin:ct_u0
           round_towards_inf # (fp_width, fp_bin_pt, fp_arith, q_width, q_bin_pt, q_arith)
             quant_rtf (.inp(full_precision_result), .res(quantized_result));
        end
   endgenerate

   generate
      if (quantization == `xlRoundBanker)
        begin:ct_u1
           round_towards_even # (fp_width, fp_bin_pt, fp_arith, q_width, q_bin_pt, q_arith)
             quant_rte (.inp(full_precision_result), .res(quantized_result));
        end
   endgenerate

   generate
      if (quantization == `xlTruncate)
        begin:ct_u2
           trunc # (fp_width, fp_bin_pt, fp_arith, q_width, q_bin_pt, q_arith)
             quant_tr (.inp(full_precision_result), .res(quantized_result));
        end
   endgenerate

   generate
      if (overflow == `xlSaturate)
        begin:ct_u3
           saturation_arith # (q_width, q_bin_pt, q_arith, new_width, new_bin_pt, new_arith)
            ovflo_sat (.inp(quantized_result), .res(result));
        end
   endgenerate

   generate
      if ((overflow == `xlWrap) || (overflow == 3))
        begin:ct_u4
           wrap_arith # (q_width, q_bin_pt, q_arith, new_width, new_bin_pt, new_arith)
             ovflo_wrap (.inp(quantized_result), .res(result));
        end
   endgenerate

endmodule
`endif


module addsub_f4effc1419 (
  input [(16 - 1):0] a,
  input [(1 - 1):0] b,
  output [(16 - 1):0] s,
  input clk,
  input ce,
  input clr);
  wire [(16 - 1):0] a_17_32;
  wire [(1 - 1):0] b_17_35;
  localparam signed [(16 - 1):0] const_value = 16'sb0000000000000000;
  reg signed [(16 - 1):0] op_mem_91_20[0:(1 - 1)];
  initial
    begin
      op_mem_91_20[0] = 16'b0000000000000000;
    end
  wire signed [(16 - 1):0] op_mem_91_20_front_din;
  wire signed [(16 - 1):0] op_mem_91_20_back;
  wire op_mem_91_20_push_front_pop_back_en;
  localparam [(1 - 1):0] const_value_x_000000 = 1'b0;
  reg [(1 - 1):0] cout_mem_92_22[0:(1 - 1)];
  initial
    begin
      cout_mem_92_22[0] = 1'b0;
    end
  wire [(1 - 1):0] cout_mem_92_22_front_din;
  wire [(1 - 1):0] cout_mem_92_22_back;
  wire cout_mem_92_22_push_front_pop_back_en;
  wire [(3 - 1):0] prev_mode_93_22_next;
  wire [(3 - 1):0] prev_mode_93_22;
  wire [(3 - 1):0] prev_mode_93_22_reg_i;
  wire [(3 - 1):0] prev_mode_93_22_reg_o;
  localparam [(1 - 1):0] const_value_x_000001 = 1'b0;
  localparam [(1 - 1):0] const_value_x_000002 = 1'b1;
  localparam [(1 - 1):0] const_value_x_000003 = 1'b0;
  localparam [(1 - 1):0] const_value_x_000004 = 1'b0;
  wire [(17 - 1):0] cast_69_18;
  wire [(17 - 1):0] cast_69_22;
  wire [(17 - 1):0] internal_s_69_5_addsub;
  localparam [(1 - 1):0] const_value_x_000005 = 1'b0;
  wire signed [(16 - 1):0] cast_internal_s_83_3_convert;
  localparam [(1 - 1):0] const_value_x_000006 = 1'b0;
  localparam [(3 - 1):0] const_value_x_000007 = 3'b000;
  assign a_17_32 = a;
  assign b_17_35 = b;
  assign op_mem_91_20_back = op_mem_91_20[0];
  always @(posedge clk)
    begin:proc_op_mem_91_20
      integer i;
      if (((ce == 1'b1) && (op_mem_91_20_push_front_pop_back_en == 1'b1)))
        begin
          op_mem_91_20[0] <= op_mem_91_20_front_din;
        end
    end
  assign cout_mem_92_22_back = cout_mem_92_22[0];
  always @(posedge clk)
    begin:proc_cout_mem_92_22
      integer i_x_000000;
      if (((ce == 1'b1) && (cout_mem_92_22_push_front_pop_back_en == 1'b1)))
        begin
          cout_mem_92_22[0] <= cout_mem_92_22_front_din;
        end
    end
  assign prev_mode_93_22_reg_i = prev_mode_93_22_next;
  assign prev_mode_93_22 = prev_mode_93_22_reg_o;
  defparam prev_mode_93_22_reg_inst.init_index = 2;
  defparam prev_mode_93_22_reg_inst.init_value = 3'b010;
  defparam prev_mode_93_22_reg_inst.latency = 1;
  defparam prev_mode_93_22_reg_inst.width = 3;
  synth_reg_w_init prev_mode_93_22_reg_inst(.ce(ce), .clk(clk), .clr(clr), .i(prev_mode_93_22_reg_i), .o(prev_mode_93_22_reg_o));
  assign cast_69_18 = {1'b0, a_17_32[15:0]};
  assign cast_69_22 = {16'b0000000000000000, b_17_35};
  assign internal_s_69_5_addsub = cast_69_18 + cast_69_22;
  assign cast_internal_s_83_3_convert = {internal_s_69_5_addsub[15:0]};
  assign op_mem_91_20_front_din = cast_internal_s_83_3_convert;
  assign op_mem_91_20_push_front_pop_back_en = 1'b1;
  assign cout_mem_92_22_front_din = const_value_x_000006;
  assign cout_mem_92_22_push_front_pop_back_en = 1'b1;
  assign prev_mode_93_22_next = const_value_x_000007;
  assign s = op_mem_91_20_back;
endmodule
 


//-----------------------------------------------------------------
// System Generator version 14.6 VERILOG source file.
//
// Copyright(C) 2013 by Xilinx, Inc.  All rights reserved.  This
// text/file contains proprietary, confidential information of Xilinx,
// Inc., is distributed under license from Xilinx, Inc., and may be used,
// copied and/or disclosed only pursuant to the terms of a valid license
// agreement with Xilinx, Inc.  Xilinx hereby grants you a license to use
// this text/file solely for design, simulation, implementation and
// creation of design files limited to Xilinx devices or technologies.
// Use with non-Xilinx devices or technologies is expressly prohibited
// and immediately terminates your license unless covered by a separate
// agreement.
//
// Xilinx is providing this design, code, or information "as is" solely
// for use in developing programs and solutions for Xilinx devices.  By
// providing this design, code, or information as one possible
// implementation of this feature, application or standard, Xilinx is
// making no representation that this implementation is free from any
// claims of infringement.  You are responsible for obtaining any rights
// you may require for your implementation.  Xilinx expressly disclaims
// any warranty whatsoever with respect to the adequacy of the
// implementation, including but not limited to warranties of
// merchantability or fitness for a particular purpose.
//
// Xilinx products are not intended for use in life support appliances,
// devices, or systems.  Use in such applications is expressly prohibited.
//
// Any modifications that are made to the source code are done at the user's
// sole risk and will be unsupported.
//
// This copyright and support notice must be retained as part of this
// text at all times.  (c) Copyright 1995-2013 Xilinx, Inc.  All rights
// reserved.
//-----------------------------------------------------------------
module  xlslice  (x, y);
parameter new_msb= 9;
parameter new_lsb= 1;
parameter x_width= 16;
parameter y_width= 8;
input [x_width-1:0] x;
output [y_width-1:0] y;
assign y = x[new_msb:new_lsb];
endmodule

//-----------------------------------------------------------------
// System Generator version 14.6 VERILOG source file.
//
// Copyright(C) 2013 by Xilinx, Inc.  All rights reserved.  This
// text/file contains proprietary, confidential information of Xilinx,
// Inc., is distributed under license from Xilinx, Inc., and may be used,
// copied and/or disclosed only pursuant to the terms of a valid license
// agreement with Xilinx, Inc.  Xilinx hereby grants you a license to use
// this text/file solely for design, simulation, implementation and
// creation of design files limited to Xilinx devices or technologies.
// Use with non-Xilinx devices or technologies is expressly prohibited
// and immediately terminates your license unless covered by a separate
// agreement.
//
// Xilinx is providing this design, code, or information "as is" solely
// for use in developing programs and solutions for Xilinx devices.  By
// providing this design, code, or information as one possible
// implementation of this feature, application or standard, Xilinx is
// making no representation that this implementation is free from any
// claims of infringement.  You are responsible for obtaining any rights
// you may require for your implementation.  Xilinx expressly disclaims
// any warranty whatsoever with respect to the adequacy of the
// implementation, including but not limited to warranties of
// merchantability or fitness for a particular purpose.
//
// Xilinx products are not intended for use in life support appliances,
// devices, or systems.  Use in such applications is expressly prohibited.
//
// Any modifications that are made to the source code are done at the user's
// sole risk and will be unsupported.
//
// This copyright and support notice must be retained as part of this
// text at all times.  (c) Copyright 1995-2013 Xilinx, Inc.  All rights
// reserved.
//-----------------------------------------------------------------
module xlconvert(din, clk, ce, clr, en, dout);
   parameter din_width= 16;
   parameter din_bin_pt= 4;
   parameter din_arith= `xlUnsigned;
   parameter dout_width= 8;
   parameter dout_bin_pt= 2;
   parameter dout_arith= `xlUnsigned;
   parameter en_width = 1;
   parameter en_bin_pt = 0;
   parameter en_arith = `xlUnsigned;
   parameter bool_conversion = 0;
   parameter latency = 0;
   parameter quantization= `xlTruncate;
   parameter overflow= `xlWrap;
   input [din_width-1:0] din;
   input clk, ce, clr;
   input [en_width-1:0] en;
   output [dout_width-1:0] dout;
   wire [dout_width-1:0]   result;
   wire internal_ce;
   assign internal_ce = ce & en[0];

generate
 if (bool_conversion == 1)
    begin:bool_converion_generate
       assign result = din;
    end
 else
    begin:std_conversion
       convert_type #(din_width,
                      din_bin_pt,
                      din_arith,
                              dout_width,
                      dout_bin_pt,
                      dout_arith,
                      quantization,
                      overflow)
        conv_udp (.inp(din), .res(result));
    end
endgenerate
generate
if (latency > 0)
     begin:latency_test
        synth_reg # (dout_width, latency)
          reg1 (
               .i(result),
               .ce(internal_ce),
               .clr(clr),
               .clk(clk),
               .o(dout));
     end
else
     begin:latency0
        assign dout = result;
     end
endgenerate
endmodule

//-----------------------------------------------------------------
// System Generator version 14.6 VERILOG source file.
//
// Copyright(C) 2013 by Xilinx, Inc.  All rights reserved.  This
// text/file contains proprietary, confidential information of Xilinx,
// Inc., is distributed under license from Xilinx, Inc., and may be used,
// copied and/or disclosed only pursuant to the terms of a valid license
// agreement with Xilinx, Inc.  Xilinx hereby grants you a license to use
// this text/file solely for design, simulation, implementation and
// creation of design files limited to Xilinx devices or technologies.
// Use with non-Xilinx devices or technologies is expressly prohibited
// and immediately terminates your license unless covered by a separate
// agreement.
//
// Xilinx is providing this design, code, or information "as is" solely
// for use in developing programs and solutions for Xilinx devices.  By
// providing this design, code, or information as one possible
// implementation of this feature, application or standard, Xilinx is
// making no representation that this implementation is free from any
// claims of infringement.  You are responsible for obtaining any rights
// you may require for your implementation.  Xilinx expressly disclaims
// any warranty whatsoever with respect to the adequacy of the
// implementation, including but not limited to warranties of
// merchantability or fitness for a particular purpose.
//
// Xilinx products are not intended for use in life support appliances,
// devices, or systems.  Use in such applications is expressly prohibited.
//
// Any modifications that are made to the source code are done at the user's
// sole risk and will be unsupported.
//
// This copyright and support notice must be retained as part of this
// text at all times.  (c) Copyright 1995-2013 Xilinx, Inc.  All rights
// reserved.
//-----------------------------------------------------------------
module  xldsp48a  (carryout, p, pcout, bcout, a, b, c, d, carryin, cea, ceb, cec, ced, cecarryin, ceopmode, cem, cep, op, opmode, pcin, rsta, rstb, rstc, rstd, rstcarryin, rstm, rstp, rstopmode, preaddselect, subtract, preaddsubtract, clk, en, rst, ce);
parameter a0reg= 1;
parameter a1reg= 1;
parameter b0reg = 1;
parameter b1reg = 1;
parameter carryinreg = 1;
parameter creg = 1;
parameter dreg = 1;
parameter mreg = 1;
parameter opmodereg= 1;
parameter preg = 1;
parameter use_op = 0;
parameter use_c_port = 1;
parameter c_use_c = 1;
parameter c_use_d = 1;
parameter c_use_cea = 0;
parameter c_use_ceb = 0;
parameter c_use_ced = 0;
parameter c_use_cem = 0;
parameter c_use_cep = 0;
parameter c_use_cec = 0;
parameter c_use_cecarryin = 0;
parameter c_use_ceopmode = 0;
parameter c_use_en = 0;
parameter c_use_rst = 0;
parameter c_use_rsta = 0;
parameter c_use_rstb = 0;
parameter c_use_rstd = 0;
parameter c_use_rstp = 0;
parameter c_use_rstc = 0;
parameter c_use_rstcarryin = 0;
parameter c_use_rstopmode = 0;
parameter c_use_rstm = 0;
parameter c_use_pcin = 0;
parameter carryinsel = "CARRYIN";
output [17:0] bcout;
output [47:0] p;
output [47:0] pcout;
output carryout;
input [17:0] a;
input [17:0] b;
input [17:0] d;
input [47:0] c;
input carryin;
input  cea;
input  ceb;
input  cec;
input  ced;
input  cecarryin;
input  ceopmode;
input  cem;
input  cep;
input [7:0] op;
input [3:0] opmode;
input [47:0] pcin;
input  rsta;
input  rstb;
input  rstc;
input  rstd;
input  rstcarryin;
input  rstopmode;
input  rstm;
input  rstp;
input  subtract;
input  preaddselect;
input  preaddsubtract;
input clk;
input en;
input rst;
input ce;
wire  internal_cea;
wire  internal_ceb;
wire  internal_ced;
wire  internal_cec;
wire  internal_cep;
wire  internal_cem;
wire  internal_cecarryin;
wire  internal_ceopmode;
wire  internal_en;
wire  internal_rst;
wire  internal_rsta;
wire  internal_rstb;
wire  internal_rstd;
wire  internal_rstc;
wire  internal_rstcarryin;
wire  internal_rstopmode;
wire  internal_rstm;
wire  [47:0] internal_pcin;
wire  internal_cecinsub;
wire  internal_rstp;
wire [7:0] internal_opmode;
wire  internal_carryin;
wire [47:0] internal_c;
wire [17:0] internal_d;
  assign internal_en = (c_use_en ? en : 1'b1);
  assign internal_cea = (ce & internal_en) & (c_use_cea ? cea : 1'b1);
  assign internal_ceb = (ce & internal_en) & (c_use_ceb ? ceb : 1'b1);
  assign internal_ced = (ce & internal_en) & (c_use_ced ? ced : 1'b1);
  assign internal_cem = (ce & internal_en) & (c_use_cem ? cem : 1'b1);
  assign internal_cep = (ce & internal_en) & (c_use_cep ? cep : 1'b1);
  assign internal_cecarryin = (ce & internal_en) & (c_use_cecarryin ? cecarryin : 1'b1);
  assign internal_ceopmode = (ce & internal_en) & (c_use_ceopmode ? ceopmode : 1'b1);
  assign internal_rst = (c_use_rst ? rst : 1'b0);
  assign internal_rsta = (c_use_rsta ? rsta : 1'b0) | internal_rst;
  assign internal_rstd = (c_use_rstd ? rstd : 1'b0) | internal_rst;
  assign internal_rstb = (c_use_rstb ? rstb : 1'b0) | internal_rst;
  assign internal_rstcarryin = (c_use_rstcarryin ? rstcarryin : 1'b0) | internal_rst;
  assign internal_rstopmode = (c_use_rstopmode ? rstopmode : 1'b0) | internal_rst;
  assign internal_rstm = (c_use_rstm ? rstm : 1'b0) | internal_rst;
  assign internal_rstp = (c_use_rstp ? rstp : 1'b0) | internal_rst;
  assign internal_c = (c_use_c ? c : 48'd0);
  assign internal_d = (c_use_d ? d : 48'd0);
  assign internal_pcin = (c_use_pcin ? pcin : 48'd0);

generate
  if (use_op == 0 & carryinsel == "CARRYIN")
  begin:opmode_carryin
        assign internal_opmode[3:0] = opmode;
        assign internal_opmode[4] = preaddselect;
        assign internal_opmode[5] = 1'b0;
        assign internal_opmode[7] = subtract;
        assign internal_opmode[6] = preaddsubtract;
        assign internal_carryin = carryin;
  end
  if (use_op == 0 & carryinsel == "OPMODE5")
  begin:opmode_opmode5
        assign internal_opmode[3:0] = opmode;
        assign internal_opmode[4] = preaddselect;
        assign internal_opmode[5] = carryin;
        assign internal_opmode[7] = subtract;
        assign internal_opmode[6] = preaddsubtract;
        assign internal_carryin = 1'b0;
  end

  if(use_op == 1 & carryinsel == "OPMODE5")
  begin:opmode_1
        assign internal_opmode = op;
        assign internal_carryin = 1'b0;
  end
  if(carryinsel == "CARRYIN" & use_op == 1)
  begin: carryin_assign1
         assign internal_opmode[5] = 1'b0;
         assign internal_opmode[4:0] = op[4:0];
         assign internal_opmode[7:6] = op[7:6];
        assign internal_carryin = carryin;
  end
  if (use_c_port == 1)
  begin:using_cport
    assign internal_cec = (ce & internal_en) & (c_use_cec ? cec : 1'b1);
    assign internal_rstc = (c_use_rstc ? rstc : 1'b0) | internal_rst;
  end

  if (use_c_port == 0)
  begin:not_using_cport
    assign internal_cec = 1'b1;
    assign internal_rstc = 1'b0;
  end
endgenerate
   DSP48A dsp48a_inst(.BCOUT(bcout),
                    .P(p),
                    .PCOUT(pcout),
                    .A(a),
                    .B(b),
                    .C(internal_c),
                    .D(internal_d),
                    .CARRYIN(internal_carryin),
                    .CARRYOUT(carryout),
                    .CEA(internal_cea),
                    .CEB(internal_ceb),
                    .CEC(internal_cec),
                    .CED(internal_ced),
                    .CECARRYIN(internal_cecarryin),
                    .CEOPMODE(internal_ceopmode),
                    .CEM(internal_cem),
                    .CEP(internal_cep),
                    .CLK(clk),
                    .OPMODE(internal_opmode),
                    .PCIN(internal_pcin),
                    .RSTA(internal_rsta),
                    .RSTB(internal_rstb),
                    .RSTC(internal_rstc),
                    .RSTD(internal_rstd),
                    .RSTCARRYIN(internal_rstcarryin),
                    .RSTOPMODE(internal_rstopmode),
                    .RSTM(internal_rstm),
                    .RSTP(internal_rstp));
defparam
dsp48a_inst.A0REG = a0reg,
dsp48a_inst.A1REG = a1reg,
dsp48a_inst.B0REG = b0reg,
dsp48a_inst.B1REG = b1reg,
dsp48a_inst.DREG =dreg,
dsp48a_inst.CARRYINREG = carryinreg,
dsp48a_inst.CARRYINSEL = carryinsel,
dsp48a_inst.CREG = creg,
dsp48a_inst.MREG = mreg,
dsp48a_inst.OPMODEREG = opmodereg,
dsp48a_inst.PREG = preg;
endmodule


module opmode_2165f420d9 (
  output [(8 - 1):0] op,
  input clk,
  input ce,
  input clr);
  localparam [(1 - 1):0] const_value = 1'b0;
  localparam [(8 - 1):0] const_value_x_000000 = 8'b10000101;
  localparam [(2 - 1):0] const_value_x_000001 = 2'b10;
  localparam [(5 - 1):0] const_value_x_000002 = 5'b00101;
  localparam [(8 - 1):0] const_value_x_000003 = 8'b10000101;
  assign op = 8'b10000101;
endmodule
 



module opmode_5fb0570878 (
  output [(8 - 1):0] op,
  input clk,
  input ce,
  input clr);
  localparam [(1 - 1):0] const_value = 1'b0;
  localparam [(8 - 1):0] const_value_x_000000 = 8'b00000001;
  localparam [(2 - 1):0] const_value_x_000001 = 2'b00;
  localparam [(5 - 1):0] const_value_x_000002 = 5'b00001;
  localparam [(8 - 1):0] const_value_x_000003 = 8'b00000001;
  assign op = 8'b00000001;
endmodule
 



module opmode_bb63313631 (
  output [(8 - 1):0] op,
  input clk,
  input ce,
  input clr);
  localparam [(1 - 1):0] const_value = 1'b0;
  localparam [(8 - 1):0] const_value_x_000000 = 8'b00000101;
  localparam [(2 - 1):0] const_value_x_000001 = 2'b00;
  localparam [(5 - 1):0] const_value_x_000002 = 5'b00101;
  localparam [(8 - 1):0] const_value_x_000003 = 8'b00000101;
  assign op = 8'b00000101;
endmodule
 


//-----------------------------------------------------------------
// System Generator version 14.6 VERILOG source file.
//
// Copyright(C) 2013 by Xilinx, Inc.  All rights reserved.  This
// text/file contains proprietary, confidential information of Xilinx,
// Inc., is distributed under license from Xilinx, Inc., and may be used,
// copied and/or disclosed only pursuant to the terms of a valid license
// agreement with Xilinx, Inc.  Xilinx hereby grants you a license to use
// this text/file solely for design, simulation, implementation and
// creation of design files limited to Xilinx devices or technologies.
// Use with non-Xilinx devices or technologies is expressly prohibited
// and immediately terminates your license unless covered by a separate
// agreement.
//
// Xilinx is providing this design, code, or information "as is" solely
// for use in developing programs and solutions for Xilinx devices.  By
// providing this design, code, or information as one possible
// implementation of this feature, application or standard, Xilinx is
// making no representation that this implementation is free from any
// claims of infringement.  You are responsible for obtaining any rights
// you may require for your implementation.  Xilinx expressly disclaims
// any warranty whatsoever with respect to the adequacy of the
// implementation, including but not limited to warranties of
// merchantability or fitness for a particular purpose.
//
// Xilinx products are not intended for use in life support appliances,
// devices, or systems.  Use in such applications is expressly prohibited.
//
// Any modifications that are made to the source code are done at the user's
// sole risk and will be unsupported.
//
// This copyright and support notice must be retained as part of this
// text at all times.  (c) Copyright 1995-2013 Xilinx, Inc.  All rights
// reserved.
//-----------------------------------------------------------------
`timescale 1 ns / 10 ps
module xlregister (d, rst, en, ce, clk, q);
   parameter d_width = 5;
   parameter init_value = 'b0;

   input [d_width-1:0] d;
   input rst, en, ce, clk;
   output [d_width-1:0] q;
   wire internal_clr, internal_ce;
   assign internal_clr = rst & ce;
   assign internal_ce  = ce & en;

   synth_reg_w_init #(.width(d_width),
                      .init_index(2),
                      .init_value(init_value),
                      .latency(1))
   synth_reg_inst(.i(d),
                  .ce(internal_ce),
                  .clr(internal_clr),
                  .clk(clk),
                  .o(q));
endmodule


module constant_2226f4eb84 (
  output [(8 - 1):0] op,
  input clk,
  input ce,
  input clr);
  assign op = 8'b00000000;
endmodule
 



module mux_200bef452f (
  input [(1 - 1):0] sel,
  input [(8 - 1):0] d0,
  input [(8 - 1):0] d1,
  output [(8 - 1):0] y,
  input clk,
  input ce,
  input clr);
  wire sel_1_20;
  wire [(8 - 1):0] d0_1_24;
  wire [(8 - 1):0] d1_1_27;
  wire [(1 - 1):0] sel_internal_2_1_convert;
  reg [(8 - 1):0] unregy_join_6_1;
  assign sel_1_20 = sel;
  assign d0_1_24 = d0;
  assign d1_1_27 = d1;
  assign sel_internal_2_1_convert = {sel_1_20};
  always @(d0_1_24 or d1_1_27 or sel_internal_2_1_convert)
    begin:proc_switch_6_1
      case (sel_internal_2_1_convert)
        1'b0 :
          begin
            unregy_join_6_1 = d0_1_24;
          end
        default:
          begin
            unregy_join_6_1 = d1_1_27;
          end
      endcase
    end
  assign y = unregy_join_6_1;
endmodule
 



module addsub_4a36ae9713 (
  input [(8 - 1):0] a,
  input [(8 - 1):0] b,
  output [(8 - 1):0] s,
  input clk,
  input ce,
  input clr);
  wire [(8 - 1):0] a_17_32;
  wire [(8 - 1):0] b_17_35;
  localparam [(8 - 1):0] const_value = 8'b00000000;
  reg [(8 - 1):0] op_mem_91_20[0:(1 - 1)];
  initial
    begin
      op_mem_91_20[0] = 8'b00000000;
    end
  wire [(8 - 1):0] op_mem_91_20_front_din;
  wire [(8 - 1):0] op_mem_91_20_back;
  wire op_mem_91_20_push_front_pop_back_en;
  localparam [(1 - 1):0] const_value_x_000000 = 1'b0;
  reg [(1 - 1):0] cout_mem_92_22[0:(1 - 1)];
  initial
    begin
      cout_mem_92_22[0] = 1'b0;
    end
  wire [(1 - 1):0] cout_mem_92_22_front_din;
  wire [(1 - 1):0] cout_mem_92_22_back;
  wire cout_mem_92_22_push_front_pop_back_en;
  wire [(3 - 1):0] prev_mode_93_22_next;
  wire [(3 - 1):0] prev_mode_93_22;
  wire [(3 - 1):0] prev_mode_93_22_reg_i;
  wire [(3 - 1):0] prev_mode_93_22_reg_o;
  localparam [(1 - 1):0] const_value_x_000001 = 1'b0;
  localparam [(1 - 1):0] const_value_x_000002 = 1'b1;
  localparam [(1 - 1):0] const_value_x_000003 = 1'b0;
  localparam [(1 - 1):0] const_value_x_000004 = 1'b0;
  wire [(9 - 1):0] cast_69_18;
  wire [(9 - 1):0] cast_69_22;
  wire [(9 - 1):0] internal_s_69_5_addsub;
  localparam [(1 - 1):0] const_value_x_000005 = 1'b0;
  wire [(8 - 1):0] cast_internal_s_83_3_convert;
  localparam [(1 - 1):0] const_value_x_000006 = 1'b0;
  localparam [(3 - 1):0] const_value_x_000007 = 3'b000;
  assign a_17_32 = a;
  assign b_17_35 = b;
  assign op_mem_91_20_back = op_mem_91_20[0];
  always @(posedge clk)
    begin:proc_op_mem_91_20
      integer i;
      if (((ce == 1'b1) && (op_mem_91_20_push_front_pop_back_en == 1'b1)))
        begin
          op_mem_91_20[0] <= op_mem_91_20_front_din;
        end
    end
  assign cout_mem_92_22_back = cout_mem_92_22[0];
  always @(posedge clk)
    begin:proc_cout_mem_92_22
      integer i_x_000000;
      if (((ce == 1'b1) && (cout_mem_92_22_push_front_pop_back_en == 1'b1)))
        begin
          cout_mem_92_22[0] <= cout_mem_92_22_front_din;
        end
    end
  assign prev_mode_93_22_reg_i = prev_mode_93_22_next;
  assign prev_mode_93_22 = prev_mode_93_22_reg_o;
  defparam prev_mode_93_22_reg_inst.init_index = 2;
  defparam prev_mode_93_22_reg_inst.init_value = 3'b010;
  defparam prev_mode_93_22_reg_inst.latency = 1;
  defparam prev_mode_93_22_reg_inst.width = 3;
  synth_reg_w_init prev_mode_93_22_reg_inst(.ce(ce), .clk(clk), .clr(clr), .i(prev_mode_93_22_reg_i), .o(prev_mode_93_22_reg_o));
  assign cast_69_18 = {1'b0, a_17_32[7:0]};
  assign cast_69_22 = {1'b0, b_17_35[7:0]};
  assign internal_s_69_5_addsub = cast_69_18 + cast_69_22;
  assign cast_internal_s_83_3_convert = {internal_s_69_5_addsub[7:0]};
  assign op_mem_91_20_push_front_pop_back_en = 1'b0;
  assign cout_mem_92_22_push_front_pop_back_en = 1'b0;
  assign prev_mode_93_22_next = const_value_x_000007;
  assign s = cast_internal_s_83_3_convert;
endmodule
 



module concat_983f7013a1 (
  input [(1 - 1):0] in0,
  input [(1 - 1):0] in1,
  output [(2 - 1):0] y,
  input clk,
  input ce,
  input clr);
  wire in0_1_23;
  wire in1_1_27;
  wire [(2 - 1):0] y_2_1_concat;
  assign in0_1_23 = in0;
  assign in1_1_27 = in1;
  assign y_2_1_concat = {in0_1_23, in1_1_27};
  assign y = y_2_1_concat;
endmodule
 



module constant_667e01fdca (
  output [(8 - 1):0] op,
  input clk,
  input ce,
  input clr);
  assign op = 8'b00000001;
endmodule
 



module mux_cec3ff20dd (
  input [(2 - 1):0] sel,
  input [(8 - 1):0] d0,
  input [(8 - 1):0] d1,
  input [(8 - 1):0] d2,
  input [(8 - 1):0] d3,
  output [(8 - 1):0] y,
  input clk,
  input ce,
  input clr);
  wire [(2 - 1):0] sel_1_20;
  wire [(8 - 1):0] d0_1_24;
  wire [(8 - 1):0] d1_1_27;
  wire [(8 - 1):0] d2_1_30;
  wire [(8 - 1):0] d3_1_33;
  reg [(8 - 1):0] unregy_join_6_1;
  assign sel_1_20 = sel;
  assign d0_1_24 = d0;
  assign d1_1_27 = d1;
  assign d2_1_30 = d2;
  assign d3_1_33 = d3;
  always @(d0_1_24 or d1_1_27 or d2_1_30 or d3_1_33 or sel_1_20)
    begin:proc_switch_6_1
      case (sel_1_20)
        2'b00 :
          begin
            unregy_join_6_1 = d0_1_24;
          end
        2'b01 :
          begin
            unregy_join_6_1 = d1_1_27;
          end
        2'b10 :
          begin
            unregy_join_6_1 = d2_1_30;
          end
        default:
          begin
            unregy_join_6_1 = d3_1_33;
          end
      endcase
    end
  assign y = unregy_join_6_1;
endmodule
 



module inverter_33a63b558a (
  input [(1 - 1):0] ip,
  output [(1 - 1):0] op,
  input clk,
  input ce,
  input clr);
  wire ip_1_26;
  reg op_mem_22_20[0:(1 - 1)];
  initial
    begin
      op_mem_22_20[0] = 1'b0;
    end
  wire op_mem_22_20_front_din;
  wire op_mem_22_20_back;
  wire op_mem_22_20_push_front_pop_back_en;
  localparam [(1 - 1):0] const_value = 1'b1;
  wire internal_ip_12_1_bitnot;
  assign ip_1_26 = ip;
  assign op_mem_22_20_back = op_mem_22_20[0];
  always @(posedge clk)
    begin:proc_op_mem_22_20
      integer i;
      if (((ce == 1'b1) && (op_mem_22_20_push_front_pop_back_en == 1'b1)))
        begin
          op_mem_22_20[0] <= op_mem_22_20_front_din;
        end
    end
  assign internal_ip_12_1_bitnot = ~ip_1_26;
  assign op_mem_22_20_push_front_pop_back_en = 1'b0;
  assign op = internal_ip_12_1_bitnot;
endmodule
 



module logical_eb4558179a (
  input [(1 - 1):0] d0,
  input [(1 - 1):0] d1,
  input [(1 - 1):0] d2,
  input [(1 - 1):0] d3,
  output [(1 - 1):0] y,
  input clk,
  input ce,
  input clr);
  wire d0_1_24;
  wire d1_1_27;
  wire d2_1_30;
  wire d3_1_33;
  wire fully_2_1_bit;
  assign d0_1_24 = d0;
  assign d1_1_27 = d1;
  assign d2_1_30 = d2;
  assign d3_1_33 = d3;
  assign fully_2_1_bit = d0_1_24 | d1_1_27 | d2_1_30 | d3_1_33;
  assign y = fully_2_1_bit;
endmodule
 



module relational_05044e5b4f (
  input [(8 - 1):0] a,
  input [(8 - 1):0] b,
  output [(1 - 1):0] op,
  input clk,
  input ce,
  input clr);
  wire [(8 - 1):0] a_1_31;
  wire [(8 - 1):0] b_1_34;
  localparam [(1 - 1):0] const_value = 1'b1;
  wire result_16_3_rel;
  assign a_1_31 = a;
  assign b_1_34 = b;
  assign result_16_3_rel = a_1_31 < b_1_34;
  assign op = result_16_3_rel;
endmodule
 



module constant_8492578f79 (
  output [(9 - 1):0] op,
  input clk,
  input ce,
  input clr);
  assign op = 9'b111111111;
endmodule
 



module mux_8cff345167 (
  input [(1 - 1):0] sel,
  input [(9 - 1):0] d0,
  input [(9 - 1):0] d1,
  output [(9 - 1):0] y,
  input clk,
  input ce,
  input clr);
  wire sel_1_20;
  wire [(9 - 1):0] d0_1_24;
  wire [(9 - 1):0] d1_1_27;
  wire [(1 - 1):0] sel_internal_2_1_convert;
  reg [(9 - 1):0] unregy_join_6_1;
  assign sel_1_20 = sel;
  assign d0_1_24 = d0;
  assign d1_1_27 = d1;
  assign sel_internal_2_1_convert = {sel_1_20};
  always @(d0_1_24 or d1_1_27 or sel_internal_2_1_convert)
    begin:proc_switch_6_1
      case (sel_internal_2_1_convert)
        1'b0 :
          begin
            unregy_join_6_1 = d0_1_24;
          end
        default:
          begin
            unregy_join_6_1 = d1_1_27;
          end
      endcase
    end
  assign y = unregy_join_6_1;
endmodule
 



module addsub_c2009d8515 (
  input [(9 - 1):0] a,
  input [(9 - 1):0] b,
  output [(9 - 1):0] s,
  input clk,
  input ce,
  input clr);
  wire [(9 - 1):0] a_17_32;
  wire [(9 - 1):0] b_17_35;
  localparam [(9 - 1):0] const_value = 9'b000000000;
  reg [(9 - 1):0] op_mem_91_20[0:(1 - 1)];
  initial
    begin
      op_mem_91_20[0] = 9'b000000000;
    end
  wire [(9 - 1):0] op_mem_91_20_front_din;
  wire [(9 - 1):0] op_mem_91_20_back;
  wire op_mem_91_20_push_front_pop_back_en;
  localparam [(1 - 1):0] const_value_x_000000 = 1'b0;
  reg [(1 - 1):0] cout_mem_92_22[0:(1 - 1)];
  initial
    begin
      cout_mem_92_22[0] = 1'b0;
    end
  wire [(1 - 1):0] cout_mem_92_22_front_din;
  wire [(1 - 1):0] cout_mem_92_22_back;
  wire cout_mem_92_22_push_front_pop_back_en;
  wire [(3 - 1):0] prev_mode_93_22_next;
  wire [(3 - 1):0] prev_mode_93_22;
  wire [(3 - 1):0] prev_mode_93_22_reg_i;
  wire [(3 - 1):0] prev_mode_93_22_reg_o;
  localparam [(1 - 1):0] const_value_x_000001 = 1'b0;
  localparam [(1 - 1):0] const_value_x_000002 = 1'b1;
  localparam [(1 - 1):0] const_value_x_000003 = 1'b0;
  localparam [(1 - 1):0] const_value_x_000004 = 1'b0;
  wire [(10 - 1):0] cast_69_18;
  wire [(10 - 1):0] cast_69_22;
  wire [(10 - 1):0] internal_s_69_5_addsub;
  localparam [(1 - 1):0] const_value_x_000005 = 1'b0;
  wire [(9 - 1):0] cast_internal_s_83_3_convert;
  localparam [(1 - 1):0] const_value_x_000006 = 1'b0;
  localparam [(3 - 1):0] const_value_x_000007 = 3'b000;
  assign a_17_32 = a;
  assign b_17_35 = b;
  assign op_mem_91_20_back = op_mem_91_20[0];
  always @(posedge clk)
    begin:proc_op_mem_91_20
      integer i;
      if (((ce == 1'b1) && (op_mem_91_20_push_front_pop_back_en == 1'b1)))
        begin
          op_mem_91_20[0] <= op_mem_91_20_front_din;
        end
    end
  assign cout_mem_92_22_back = cout_mem_92_22[0];
  always @(posedge clk)
    begin:proc_cout_mem_92_22
      integer i_x_000000;
      if (((ce == 1'b1) && (cout_mem_92_22_push_front_pop_back_en == 1'b1)))
        begin
          cout_mem_92_22[0] <= cout_mem_92_22_front_din;
        end
    end
  assign prev_mode_93_22_reg_i = prev_mode_93_22_next;
  assign prev_mode_93_22 = prev_mode_93_22_reg_o;
  defparam prev_mode_93_22_reg_inst.init_index = 2;
  defparam prev_mode_93_22_reg_inst.init_value = 3'b010;
  defparam prev_mode_93_22_reg_inst.latency = 1;
  defparam prev_mode_93_22_reg_inst.width = 3;
  synth_reg_w_init prev_mode_93_22_reg_inst(.ce(ce), .clk(clk), .clr(clr), .i(prev_mode_93_22_reg_i), .o(prev_mode_93_22_reg_o));
  assign cast_69_18 = {1'b0, a_17_32[8:0]};
  assign cast_69_22 = {1'b0, b_17_35[8:0]};
  assign internal_s_69_5_addsub = cast_69_18 + cast_69_22;
  assign cast_internal_s_83_3_convert = {internal_s_69_5_addsub[8:0]};
  assign op_mem_91_20_push_front_pop_back_en = 1'b0;
  assign cout_mem_92_22_push_front_pop_back_en = 1'b0;
  assign prev_mode_93_22_next = const_value_x_000007;
  assign s = cast_internal_s_83_3_convert;
endmodule
 



module constant_f12266ed24 (
  output [(9 - 1):0] op,
  input clk,
  input ce,
  input clr);
  assign op = 9'b000000000;
endmodule
 



module constant_04e831922d (
  output [(9 - 1):0] op,
  input clk,
  input ce,
  input clr);
  assign op = 9'b000000001;
endmodule
 



module mux_3e1d71756d (
  input [(2 - 1):0] sel,
  input [(9 - 1):0] d0,
  input [(9 - 1):0] d1,
  input [(9 - 1):0] d2,
  input [(9 - 1):0] d3,
  output [(9 - 1):0] y,
  input clk,
  input ce,
  input clr);
  wire [(2 - 1):0] sel_1_20;
  wire [(9 - 1):0] d0_1_24;
  wire [(9 - 1):0] d1_1_27;
  wire [(9 - 1):0] d2_1_30;
  wire [(9 - 1):0] d3_1_33;
  reg [(9 - 1):0] unregy_join_6_1;
  assign sel_1_20 = sel;
  assign d0_1_24 = d0;
  assign d1_1_27 = d1;
  assign d2_1_30 = d2;
  assign d3_1_33 = d3;
  always @(d0_1_24 or d1_1_27 or d2_1_30 or d3_1_33 or sel_1_20)
    begin:proc_switch_6_1
      case (sel_1_20)
        2'b00 :
          begin
            unregy_join_6_1 = d0_1_24;
          end
        2'b01 :
          begin
            unregy_join_6_1 = d1_1_27;
          end
        2'b10 :
          begin
            unregy_join_6_1 = d2_1_30;
          end
        default:
          begin
            unregy_join_6_1 = d3_1_33;
          end
      endcase
    end
  assign y = unregy_join_6_1;
endmodule
 



module relational_0d4f3bb1f9 (
  input [(9 - 1):0] a,
  input [(9 - 1):0] b,
  output [(1 - 1):0] op,
  input clk,
  input ce,
  input clr);
  wire [(9 - 1):0] a_1_31;
  wire [(9 - 1):0] b_1_34;
  localparam [(1 - 1):0] const_value = 1'b1;
  wire result_16_3_rel;
  assign a_1_31 = a;
  assign b_1_34 = b;
  assign result_16_3_rel = a_1_31 < b_1_34;
  assign op = result_16_3_rel;
endmodule
 



module constant_ae323e07fc (
  output [(1 - 1):0] op,
  input clk,
  input ce,
  input clr);
  assign op = 1'b0;
endmodule
 



module mux_c613b505f8 (
  input [(1 - 1):0] sel,
  input [(1 - 1):0] d0,
  input [(1 - 1):0] d1,
  output [(1 - 1):0] y,
  input clk,
  input ce,
  input clr);
  wire sel_1_20;
  wire d0_1_24;
  wire d1_1_27;
  wire [(1 - 1):0] sel_internal_2_1_convert;
  reg unregy_join_6_1;
  assign sel_1_20 = sel;
  assign d0_1_24 = d0;
  assign d1_1_27 = d1;
  assign sel_internal_2_1_convert = {sel_1_20};
  always @(d0_1_24 or d1_1_27 or sel_internal_2_1_convert)
    begin:proc_switch_6_1
      case (sel_internal_2_1_convert)
        1'b0 :
          begin
            unregy_join_6_1 = d0_1_24;
          end
        default:
          begin
            unregy_join_6_1 = d1_1_27;
          end
      endcase
    end
  assign y = unregy_join_6_1;
endmodule
 



module mux_31d78b046f (
  input [(1 - 1):0] sel,
  input [(16 - 1):0] d0,
  input [(16 - 1):0] d1,
  output [(16 - 1):0] y,
  input clk,
  input ce,
  input clr);
  wire sel_1_20;
  wire [(16 - 1):0] d0_1_24;
  wire [(16 - 1):0] d1_1_27;
  wire [(1 - 1):0] sel_internal_2_1_convert;
  reg [(16 - 1):0] unregy_join_6_1;
  assign sel_1_20 = sel;
  assign d0_1_24 = d0;
  assign d1_1_27 = d1;
  assign sel_internal_2_1_convert = {sel_1_20};
  always @(d0_1_24 or d1_1_27 or sel_internal_2_1_convert)
    begin:proc_switch_6_1
      case (sel_internal_2_1_convert)
        1'b0 :
          begin
            unregy_join_6_1 = d0_1_24;
          end
        default:
          begin
            unregy_join_6_1 = d1_1_27;
          end
      endcase
    end
  assign y = unregy_join_6_1;
endmodule
 



module logical_a950764719 (
  input [(1 - 1):0] d0,
  input [(1 - 1):0] d1,
  input [(1 - 1):0] d2,
  output [(1 - 1):0] y,
  input clk,
  input ce,
  input clr);
  wire d0_1_24;
  wire d1_1_27;
  wire d2_1_30;
  wire fully_2_1_bit;
  assign d0_1_24 = d0;
  assign d1_1_27 = d1;
  assign d2_1_30 = d2;
  assign fully_2_1_bit = d0_1_24 & d1_1_27 & d2_1_30;
  assign y = fully_2_1_bit;
endmodule
 



module logical_818bd6d54b (
  input [(1 - 1):0] d0,
  input [(1 - 1):0] d1,
  input [(1 - 1):0] d2,
  input [(1 - 1):0] d3,
  output [(1 - 1):0] y,
  input clk,
  input ce,
  input clr);
  wire d0_1_24;
  wire d1_1_27;
  wire d2_1_30;
  wire d3_1_33;
  wire fully_2_1_bit;
  assign d0_1_24 = d0;
  assign d1_1_27 = d1;
  assign d2_1_30 = d2;
  assign d3_1_33 = d3;
  assign fully_2_1_bit = d0_1_24 & d1_1_27 & d2_1_30 & d3_1_33;
  assign y = fully_2_1_bit;
endmodule
 



module logical_ce5967518d (
  input [(1 - 1):0] d0,
  input [(1 - 1):0] d1,
  input [(1 - 1):0] d2,
  input [(1 - 1):0] d3,
  input [(1 - 1):0] d4,
  output [(1 - 1):0] y,
  input clk,
  input ce,
  input clr);
  wire d0_1_24;
  wire d1_1_27;
  wire d2_1_30;
  wire d3_1_33;
  wire d4_1_36;
  wire fully_2_1_bit;
  assign d0_1_24 = d0;
  assign d1_1_27 = d1;
  assign d2_1_30 = d2;
  assign d3_1_33 = d3;
  assign d4_1_36 = d4;
  assign fully_2_1_bit = d0_1_24 & d1_1_27 & d2_1_30 & d3_1_33 & d4_1_36;
  assign y = fully_2_1_bit;
endmodule
 



module logical_7ffc9c41e8 (
  input [(1 - 1):0] d0,
  input [(1 - 1):0] d1,
  input [(1 - 1):0] d2,
  input [(1 - 1):0] d3,
  input [(1 - 1):0] d4,
  input [(1 - 1):0] d5,
  output [(1 - 1):0] y,
  input clk,
  input ce,
  input clr);
  wire d0_1_24;
  wire d1_1_27;
  wire d2_1_30;
  wire d3_1_33;
  wire d4_1_36;
  wire d5_1_39;
  wire fully_2_1_bit;
  assign d0_1_24 = d0;
  assign d1_1_27 = d1;
  assign d2_1_30 = d2;
  assign d3_1_33 = d3;
  assign d4_1_36 = d4;
  assign d5_1_39 = d5;
  assign fully_2_1_bit = d0_1_24 & d1_1_27 & d2_1_30 & d3_1_33 & d4_1_36 & d5_1_39;
  assign y = fully_2_1_bit;
endmodule
 



module constant_07da815359 (
  output [(32 - 1):0] op,
  input clk,
  input ce,
  input clr);
  assign op = 32'b00000000000000000000000000000000;
endmodule
 


//-----------------------------------------------------------------
// System Generator version 14.6 VERILOG source file.
//
// Copyright(C) 2013 by Xilinx, Inc.  All rights reserved.  This
// text/file contains proprietary, confidential information of Xilinx,
// Inc., is distributed under license from Xilinx, Inc., and may be used,
// copied and/or disclosed only pursuant to the terms of a valid license
// agreement with Xilinx, Inc.  Xilinx hereby grants you a license to use
// this text/file solely for design, simulation, implementation and
// creation of design files limited to Xilinx devices or technologies.
// Use with non-Xilinx devices or technologies is expressly prohibited
// and immediately terminates your license unless covered by a separate
// agreement.
//
// Xilinx is providing this design, code, or information "as is" solely
// for use in developing programs and solutions for Xilinx devices.  By
// providing this design, code, or information as one possible
// implementation of this feature, application or standard, Xilinx is
// making no representation that this implementation is free from any
// claims of infringement.  You are responsible for obtaining any rights
// you may require for your implementation.  Xilinx expressly disclaims
// any warranty whatsoever with respect to the adequacy of the
// implementation, including but not limited to warranties of
// merchantability or fitness for a particular purpose.
//
// Xilinx products are not intended for use in life support appliances,
// devices, or systems.  Use in such applications is expressly prohibited.
//
// Any modifications that are made to the source code are done at the user's
// sole risk and will be unsupported.
//
// This copyright and support notice must be retained as part of this
// text at all times.  (c) Copyright 1995-2013 Xilinx, Inc.  All rights
// reserved.
//-----------------------------------------------------------------
module xldpram_pc_cfr_spartan6_v1_2 (dina, addra, wea, a_ce, a_clk, rsta, ena, douta, dinb, addrb, web, b_ce, b_clk, rstb, enb, doutb);
parameter core_name0= "";
parameter c_width_a= 13;
parameter c_address_width_a= 4;
parameter c_width_b= 13;
parameter c_address_width_b= 4;
parameter latency= 1;

input [c_width_a-1:0] dina;
input [c_address_width_a-1:0] addra;
input wea, a_ce, a_clk, rsta, ena;
input [c_width_b-1:0] dinb;
input [c_address_width_b-1:0] addrb;
input web, b_ce, b_clk, rstb, enb;
output [c_width_a-1:0] douta;
output [c_width_b-1:0] doutb;
wire [c_address_width_a-1:0] core_addra;
wire [c_address_width_b-1:0] core_addrb;
wire [c_width_a-1:0] core_dina,core_douta,dly_douta;
wire [c_width_b-1:0] core_dinb,core_doutb,dly_doutb;
wire  core_wea,core_web;
wire  core_a_ce,core_b_ce;
wire  sinita,sinitb;
assign core_addra = addra;
assign core_dina = dina;
assign douta = dly_douta;
assign core_wea = wea;
assign core_a_ce = a_ce & ena;
assign sinita = rsta & a_ce;
assign core_addrb = addrb;
assign core_dinb = dinb;
assign doutb = dly_doutb;
assign core_web = web;
assign core_b_ce = b_ce & enb;
assign sinitb = rstb  & b_ce;
generate
  if (core_name0 == "bmg_72_1a6cb457801618b3")
    begin:comp0
    bmg_72_1a6cb457801618b3 core_instance0 (
                              .addra(core_addra),
      .clka(a_clk),
      .addrb(core_addrb),
      .clkb(b_clk),
      .dina(core_dina),
      .wea(core_wea),
      .dinb(core_dinb),
      .web(core_web),
      .ena(core_a_ce),
      .enb(core_b_ce),
      .douta(core_douta),
      .doutb(core_doutb)
                );
  end
  if (core_name0 == "bmg_72_121f2feae115cb60")
    begin:comp1
    bmg_72_121f2feae115cb60 core_instance1 (
                              .addra(core_addra),
      .clka(a_clk),
      .addrb(core_addrb),
      .clkb(b_clk),
      .dina(core_dina),
      .wea(core_wea),
      .dinb(core_dinb),
      .web(core_web),
      .ena(core_a_ce),
      .enb(core_b_ce),
      .douta(core_douta),
      .doutb(core_doutb)
                );
  end
  if (core_name0 == "bmg_72_02af306bc8bac7b8")
    begin:comp2
    bmg_72_02af306bc8bac7b8 core_instance2 (
                              .addra(core_addra),
      .clka(a_clk),
      .addrb(core_addrb),
      .clkb(b_clk),
      .dina(core_dina),
      .wea(core_wea),
      .dinb(core_dinb),
      .web(core_web),
      .ena(core_a_ce),
      .enb(core_b_ce),
      .douta(core_douta),
      .doutb(core_doutb)
                );
  end
  if (core_name0 == "bmg_72_1071e1009a08056e")
    begin:comp3
    bmg_72_1071e1009a08056e core_instance3 (
                              .addra(core_addra),
      .clka(a_clk),
      .addrb(core_addrb),
      .clkb(b_clk),
      .dina(core_dina),
      .wea(core_wea),
      .dinb(core_dinb),
      .web(core_web),
      .ena(core_a_ce),
      .enb(core_b_ce),
      .douta(core_douta),
      .doutb(core_doutb)
                );
  end
if (latency > 2)
  begin:latency_test_instA
   synth_reg # (c_width_a, latency-2)
   regA(
     .i(core_douta),
     .ce(core_a_ce),
     .clr(1'b0),
     .clk(a_clk),
     .o(dly_douta));
  end
if (latency > 2)
  begin:latency_test_instB
   synth_reg # (c_width_b, latency-2)
   regB(
     .i(core_doutb),
     .ce(core_b_ce),
     .clr(1'b0),
     .clk(b_clk),
     .o(dly_doutb));
  end

if (latency <= 2)
   begin:latency1
     assign dly_douta = core_douta;
     assign dly_doutb = core_doutb;
   end
endgenerate
endmodule


module reinterpret_dee95c6dbb (
  input [(16 - 1):0] input_port,
  output [(16 - 1):0] output_port,
  input clk,
  input ce,
  input clr);
  wire [(16 - 1):0] input_port_1_40;
  wire signed [(16 - 1):0] output_port_5_5_force;
  assign input_port_1_40 = input_port;
  assign output_port_5_5_force = input_port_1_40;
  assign output_port = output_port_5_5_force;
endmodule
 


//-----------------------------------------------------------------
// System Generator version 14.6 VERILOG source file.
//
// Copyright(C) 2013 by Xilinx, Inc.  All rights reserved.  This
// text/file contains proprietary, confidential information of Xilinx,
// Inc., is distributed under license from Xilinx, Inc., and may be used,
// copied and/or disclosed only pursuant to the terms of a valid license
// agreement with Xilinx, Inc.  Xilinx hereby grants you a license to use
// this text/file solely for design, simulation, implementation and
// creation of design files limited to Xilinx devices or technologies.
// Use with non-Xilinx devices or technologies is expressly prohibited
// and immediately terminates your license unless covered by a separate
// agreement.
//
// Xilinx is providing this design, code, or information "as is" solely
// for use in developing programs and solutions for Xilinx devices.  By
// providing this design, code, or information as one possible
// implementation of this feature, application or standard, Xilinx is
// making no representation that this implementation is free from any
// claims of infringement.  You are responsible for obtaining any rights
// you may require for your implementation.  Xilinx expressly disclaims
// any warranty whatsoever with respect to the adequacy of the
// implementation, including but not limited to warranties of
// merchantability or fitness for a particular purpose.
//
// Xilinx products are not intended for use in life support appliances,
// devices, or systems.  Use in such applications is expressly prohibited.
//
// Any modifications that are made to the source code are done at the user's
// sole risk and will be unsupported.
//
// This copyright and support notice must be retained as part of this
// text at all times.  (c) Copyright 1995-2013 Xilinx, Inc.  All rights
// reserved.
//-----------------------------------------------------------------
 module xladdsub_pc_cfr_spartan6_v1_2 (a, b, c_in, ce, clr, clk, rst, en, c_out, s);
parameter core_name0= "";
parameter a_width= 16;
parameter signed a_bin_pt= 4;
parameter a_arith= `xlUnsigned;
parameter c_in_width= 16;
parameter c_in_bin_pt= 4;
parameter c_in_arith= `xlUnsigned;
parameter c_out_width= 16;
parameter c_out_bin_pt= 4;
parameter c_out_arith= `xlUnsigned;
parameter b_width= 8;
parameter signed b_bin_pt= 2;
parameter b_arith= `xlUnsigned;
parameter s_width= 17;
parameter s_bin_pt= 4;
parameter s_arith= `xlUnsigned;
parameter rst_width= 1;
parameter rst_bin_pt= 0;
parameter rst_arith= `xlUnsigned;
parameter en_width= 1;
parameter en_bin_pt= 0;
parameter en_arith= `xlUnsigned;
parameter full_s_width= 17;
parameter full_s_arith= `xlUnsigned;
parameter mode= `xlAddMode;
parameter extra_registers= 0;
parameter latency= 0;
parameter quantization= `xlTruncate;
parameter overflow= `xlWrap;
parameter c_a_width= 16;
parameter c_b_width= 8;
parameter c_a_type= 1;
parameter c_b_type= 1;
parameter c_has_sclr= 0;
parameter c_has_ce= 0;
parameter c_latency= 0;
parameter c_output_width= 17;
parameter c_enable_rlocs= 1;
parameter c_has_c_in= 0;
parameter c_has_c_out= 0;
input [a_width-1:0] a;
input [b_width-1:0] b;
input c_in, ce, clr, clk, rst, en;
output c_out;
output [s_width-1:0] s;
parameter full_a_width = full_s_width;
parameter full_b_width = full_s_width;
parameter full_s_bin_pt = (a_bin_pt > b_bin_pt) ? a_bin_pt : b_bin_pt;
wire [full_a_width-1:0] full_a;
wire [full_b_width-1:0] full_b;
wire [full_s_width-1:0] full_s;
wire [full_s_width-1:0] core_s;
wire [s_width-1:0] conv_s;
wire  temp_cout;
wire  real_a,real_b,real_s;
wire  internal_clr;
wire  internal_ce;
wire  extra_reg_ce;
wire  override;
wire  logic1;
wire  temp_cin;
assign internal_clr = (clr | rst) & ce;
assign internal_ce = ce & en;
assign logic1 = 1'b1;
assign temp_cin = (c_has_c_in) ? c_in : 1'b0;
align_input # (a_width, b_bin_pt - a_bin_pt, a_arith, full_a_width)
align_inp_a(.inp(a),.res(full_a));
align_input # (b_width, a_bin_pt - b_bin_pt, b_arith, full_b_width)
align_inp_b(.inp(b),.res(full_b));
convert_type # (full_s_width, full_s_bin_pt, full_s_arith, s_width,
                s_bin_pt, s_arith, quantization, overflow)
conv_typ_s(.inp(core_s),.res(conv_s));
generate
  if (core_name0 == "addsb_11_0_775dc3edc6782f4e")
    begin:comp0
    addsb_11_0_775dc3edc6782f4e core_instance0 (
         .a(full_a),
         .clk(clk),
         .ce(internal_ce),
         .s(core_s),
         .b(full_b)
      );
  end

  if (core_name0 == "addsb_11_0_232ff08b73742c1b")
    begin:comp1
    addsb_11_0_232ff08b73742c1b core_instance1 (
         .a(full_a),
         .s(core_s),
         .b(full_b)
      );
  end

endgenerate
generate
  if (extra_registers > 0)
  begin:latency_test

    if (c_latency > 1)
    begin:override_test
      synth_reg # (1, c_latency)
        override_pipe (
          .i(logic1),
          .ce(internal_ce),
          .clr(internal_clr),
          .clk(clk),
          .o(override));
      assign extra_reg_ce = ce & en & override;
    end
    if ((c_latency == 0) || (c_latency == 1))
    begin:no_override
      assign extra_reg_ce = ce & en;
    end
    synth_reg # (s_width, extra_registers)
      extra_reg (
        .i(conv_s),
        .ce(extra_reg_ce),
        .clr(internal_clr),
        .clk(clk),
        .o(s));
    if (c_has_c_out == 1)
    begin:cout_test
      synth_reg # (1, extra_registers)
        c_out_extra_reg (
          .i(temp_cout),
          .ce(extra_reg_ce),
          .clr(internal_clr),
          .clk(clk),
          .o(c_out));
    end

  end
endgenerate
generate
  if ((latency == 0) || (extra_registers == 0))
  begin:latency_s
    assign s = conv_s;
  end
endgenerate
generate
  if (((latency == 0) || (extra_registers == 0)) &&
      (c_has_c_out == 1))
  begin:latency0
    assign c_out = temp_cout;
  end
endgenerate
generate
  if (c_has_c_out == 0)
  begin:tie_dangling_cout
    assign c_out = 0;
  end
endgenerate
endmodule


module delay_7d3a088f82 (
  input [(16 - 1):0] d,
  output [(16 - 1):0] q,
  input clk,
  input ce,
  input clr);
  wire [(16 - 1):0] d_1_22;
  localparam [(16 - 1):0] const_value = 16'b0000000000000000;
  reg [(16 - 1):0] op_mem_20_24[0:(3 - 1)];
  initial
    begin
      op_mem_20_24[0] = 16'b0000000000000000;
      op_mem_20_24[1] = 16'b0000000000000000;
      op_mem_20_24[2] = 16'b0000000000000000;
    end
  wire [(16 - 1):0] op_mem_20_24_front_din;
  wire [(16 - 1):0] op_mem_20_24_back;
  wire op_mem_20_24_push_front_pop_back_en;
  localparam [(2 - 1):0] const_value_x_000000 = 2'b11;
  assign d_1_22 = d;
  assign op_mem_20_24_back = op_mem_20_24[2];
  always @(posedge clk)
    begin:proc_op_mem_20_24
      integer i;
      if (((ce == 1'b1) && (op_mem_20_24_push_front_pop_back_en == 1'b1)))
        begin
          for (i=2; i>=1; i=i-1)
            begin
              op_mem_20_24[i] <= op_mem_20_24[i-1];
            end
          op_mem_20_24[0] <= op_mem_20_24_front_din;
        end
    end
  assign op_mem_20_24_front_din = d_1_22;
  assign op_mem_20_24_push_front_pop_back_en = 1'b1;
  assign q = op_mem_20_24_back;
endmodule
 



module addsub_c1ccc3be8a (
  input [(26 - 1):0] a,
  input [(26 - 1):0] b,
  output [(26 - 1):0] s,
  input clk,
  input ce,
  input clr);
  wire signed [(26 - 1):0] a_17_32;
  wire signed [(26 - 1):0] b_17_35;
  localparam signed [(26 - 1):0] const_value = 26'sb00000000000000000000000000;
  reg signed [(26 - 1):0] op_mem_91_20[0:(1 - 1)];
  initial
    begin
      op_mem_91_20[0] = 26'b00000000000000000000000000;
    end
  wire signed [(26 - 1):0] op_mem_91_20_front_din;
  wire signed [(26 - 1):0] op_mem_91_20_back;
  wire op_mem_91_20_push_front_pop_back_en;
  localparam [(1 - 1):0] const_value_x_000000 = 1'b0;
  reg [(1 - 1):0] cout_mem_92_22[0:(1 - 1)];
  initial
    begin
      cout_mem_92_22[0] = 1'b0;
    end
  wire [(1 - 1):0] cout_mem_92_22_front_din;
  wire [(1 - 1):0] cout_mem_92_22_back;
  wire cout_mem_92_22_push_front_pop_back_en;
  wire [(3 - 1):0] prev_mode_93_22_next;
  wire [(3 - 1):0] prev_mode_93_22;
  wire [(3 - 1):0] prev_mode_93_22_reg_i;
  wire [(3 - 1):0] prev_mode_93_22_reg_o;
  localparam [(1 - 1):0] const_value_x_000001 = 1'b0;
  localparam [(1 - 1):0] const_value_x_000002 = 1'b1;
  localparam [(1 - 1):0] const_value_x_000003 = 1'b0;
  localparam [(1 - 1):0] const_value_x_000004 = 1'b0;
  wire signed [(27 - 1):0] cast_71_18;
  wire signed [(27 - 1):0] cast_71_22;
  wire signed [(27 - 1):0] internal_s_71_5_addsub;
  localparam [(1 - 1):0] const_value_x_000005 = 1'b0;
  wire signed [(26 - 1):0] cast_internal_s_83_3_convert;
  localparam [(1 - 1):0] const_value_x_000006 = 1'b0;
  localparam [(3 - 1):0] const_value_x_000007 = 3'b000;
  assign a_17_32 = a;
  assign b_17_35 = b;
  assign op_mem_91_20_back = op_mem_91_20[0];
  always @(posedge clk)
    begin:proc_op_mem_91_20
      integer i;
      if (((ce == 1'b1) && (op_mem_91_20_push_front_pop_back_en == 1'b1)))
        begin
          op_mem_91_20[0] <= op_mem_91_20_front_din;
        end
    end
  assign cout_mem_92_22_back = cout_mem_92_22[0];
  always @(posedge clk)
    begin:proc_cout_mem_92_22
      integer i_x_000000;
      if (((ce == 1'b1) && (cout_mem_92_22_push_front_pop_back_en == 1'b1)))
        begin
          cout_mem_92_22[0] <= cout_mem_92_22_front_din;
        end
    end
  assign prev_mode_93_22_reg_i = prev_mode_93_22_next;
  assign prev_mode_93_22 = prev_mode_93_22_reg_o;
  defparam prev_mode_93_22_reg_inst.init_index = 2;
  defparam prev_mode_93_22_reg_inst.init_value = 3'b010;
  defparam prev_mode_93_22_reg_inst.latency = 1;
  defparam prev_mode_93_22_reg_inst.width = 3;
  synth_reg_w_init prev_mode_93_22_reg_inst(.ce(ce), .clk(clk), .clr(clr), .i(prev_mode_93_22_reg_i), .o(prev_mode_93_22_reg_o));
  assign cast_71_18 = {{1{a_17_32[25]}}, a_17_32[25:0]};
  assign cast_71_22 = {{1{b_17_35[25]}}, b_17_35[25:0]};
  assign internal_s_71_5_addsub = cast_71_18 - cast_71_22;
  assign cast_internal_s_83_3_convert = {internal_s_71_5_addsub[25:0]};
  assign op_mem_91_20_front_din = cast_internal_s_83_3_convert;
  assign op_mem_91_20_push_front_pop_back_en = 1'b1;
  assign cout_mem_92_22_front_din = const_value_x_000006;
  assign cout_mem_92_22_push_front_pop_back_en = 1'b1;
  assign prev_mode_93_22_next = const_value_x_000007;
  assign s = op_mem_91_20_back;
endmodule
 



module addsub_43d22903cb (
  input [(26 - 1):0] a,
  input [(26 - 1):0] b,
  output [(25 - 1):0] s,
  input clk,
  input ce,
  input clr);
  wire signed [(26 - 1):0] a_17_32;
  wire signed [(26 - 1):0] b_17_35;
  localparam [(25 - 1):0] const_value = 25'b0000000000000000000000000;
  reg [(25 - 1):0] op_mem_91_20[0:(1 - 1)];
  initial
    begin
      op_mem_91_20[0] = 25'b0000000000000000000000000;
    end
  wire [(25 - 1):0] op_mem_91_20_front_din;
  wire [(25 - 1):0] op_mem_91_20_back;
  wire op_mem_91_20_push_front_pop_back_en;
  localparam [(1 - 1):0] const_value_x_000000 = 1'b0;
  reg [(1 - 1):0] cout_mem_92_22[0:(1 - 1)];
  initial
    begin
      cout_mem_92_22[0] = 1'b0;
    end
  wire [(1 - 1):0] cout_mem_92_22_front_din;
  wire [(1 - 1):0] cout_mem_92_22_back;
  wire cout_mem_92_22_push_front_pop_back_en;
  wire [(3 - 1):0] prev_mode_93_22_next;
  wire [(3 - 1):0] prev_mode_93_22;
  wire [(3 - 1):0] prev_mode_93_22_reg_i;
  wire [(3 - 1):0] prev_mode_93_22_reg_o;
  localparam [(1 - 1):0] const_value_x_000001 = 1'b0;
  localparam [(1 - 1):0] const_value_x_000002 = 1'b1;
  localparam [(1 - 1):0] const_value_x_000003 = 1'b0;
  localparam [(1 - 1):0] const_value_x_000004 = 1'b0;
  wire signed [(27 - 1):0] cast_69_18;
  wire signed [(27 - 1):0] cast_69_22;
  wire signed [(27 - 1):0] internal_s_69_5_addsub;
  localparam [(1 - 1):0] const_value_x_000005 = 1'b0;
  wire [(25 - 1):0] cast_internal_s_83_3_convert;
  localparam [(1 - 1):0] const_value_x_000006 = 1'b0;
  localparam [(3 - 1):0] const_value_x_000007 = 3'b000;
  assign a_17_32 = a;
  assign b_17_35 = b;
  assign op_mem_91_20_back = op_mem_91_20[0];
  always @(posedge clk)
    begin:proc_op_mem_91_20
      integer i;
      if (((ce == 1'b1) && (op_mem_91_20_push_front_pop_back_en == 1'b1)))
        begin
          op_mem_91_20[0] <= op_mem_91_20_front_din;
        end
    end
  assign cout_mem_92_22_back = cout_mem_92_22[0];
  always @(posedge clk)
    begin:proc_cout_mem_92_22
      integer i_x_000000;
      if (((ce == 1'b1) && (cout_mem_92_22_push_front_pop_back_en == 1'b1)))
        begin
          cout_mem_92_22[0] <= cout_mem_92_22_front_din;
        end
    end
  assign prev_mode_93_22_reg_i = prev_mode_93_22_next;
  assign prev_mode_93_22 = prev_mode_93_22_reg_o;
  defparam prev_mode_93_22_reg_inst.init_index = 2;
  defparam prev_mode_93_22_reg_inst.init_value = 3'b010;
  defparam prev_mode_93_22_reg_inst.latency = 1;
  defparam prev_mode_93_22_reg_inst.width = 3;
  synth_reg_w_init prev_mode_93_22_reg_inst(.ce(ce), .clk(clk), .clr(clr), .i(prev_mode_93_22_reg_i), .o(prev_mode_93_22_reg_o));
  assign cast_69_18 = {{1{a_17_32[25]}}, a_17_32[25:0]};
  assign cast_69_22 = {{1{b_17_35[25]}}, b_17_35[25:0]};
  assign internal_s_69_5_addsub = cast_69_18 + cast_69_22;
  assign cast_internal_s_83_3_convert = {internal_s_69_5_addsub[24:0]};
  assign op_mem_91_20_front_din = cast_internal_s_83_3_convert;
  assign op_mem_91_20_push_front_pop_back_en = 1'b1;
  assign cout_mem_92_22_front_din = const_value_x_000006;
  assign cout_mem_92_22_push_front_pop_back_en = 1'b1;
  assign prev_mode_93_22_next = const_value_x_000007;
  assign s = op_mem_91_20_back;
endmodule
 



module shift_83be7e67ad (
  input [(18 - 1):0] ip,
  output [(26 - 1):0] op,
  input clk,
  input ce,
  input clr);
  wire signed [(18 - 1):0] ip_1_23;
  localparam signed [(26 - 1):0] const_value = 26'sb00000000000000000000000000;
  reg signed [(26 - 1):0] op_mem_46_20[0:(1 - 1)];
  initial
    begin
      op_mem_46_20[0] = 26'b00000000000000000000000000;
    end
  wire signed [(26 - 1):0] op_mem_46_20_front_din;
  wire signed [(26 - 1):0] op_mem_46_20_back;
  wire op_mem_46_20_push_front_pop_back_en;
  localparam [(1 - 1):0] const_value_x_000000 = 1'b1;
  wire signed [(26 - 1):0] cast_internal_ip_25_3_lsh;
  assign ip_1_23 = ip;
  assign op_mem_46_20_back = op_mem_46_20[0];
  always @(posedge clk)
    begin:proc_op_mem_46_20
      integer i;
      if (((ce == 1'b1) && (op_mem_46_20_push_front_pop_back_en == 1'b1)))
        begin
          op_mem_46_20[0] <= op_mem_46_20_front_din;
        end
    end
  assign cast_internal_ip_25_3_lsh = {ip_1_23[17:0], 8'b00000000};
  assign op_mem_46_20_push_front_pop_back_en = 1'b0;
  assign op = cast_internal_ip_25_3_lsh;
endmodule
 



module shift_65a35a0ba3 (
  input [(18 - 1):0] ip,
  output [(26 - 1):0] op,
  input clk,
  input ce,
  input clr);
  wire signed [(18 - 1):0] ip_1_23;
  localparam signed [(26 - 1):0] const_value = 26'sb00000000000000000000000000;
  reg signed [(26 - 1):0] op_mem_46_20[0:(1 - 1)];
  initial
    begin
      op_mem_46_20[0] = 26'b00000000000000000000000000;
    end
  wire signed [(26 - 1):0] op_mem_46_20_front_din;
  wire signed [(26 - 1):0] op_mem_46_20_back;
  wire op_mem_46_20_push_front_pop_back_en;
  localparam [(1 - 1):0] const_value_x_000000 = 1'b1;
  wire signed [(24 - 1):0] cast_internal_ip_25_3_lsh;
  wire signed [(26 - 1):0] cast_internal_ip_33_3_convert;
  assign ip_1_23 = ip;
  assign op_mem_46_20_back = op_mem_46_20[0];
  always @(posedge clk)
    begin:proc_op_mem_46_20
      integer i;
      if (((ce == 1'b1) && (op_mem_46_20_push_front_pop_back_en == 1'b1)))
        begin
          op_mem_46_20[0] <= op_mem_46_20_front_din;
        end
    end
  assign cast_internal_ip_25_3_lsh = {ip_1_23[17:0], 6'b000000};
  assign cast_internal_ip_33_3_convert = {{2{cast_internal_ip_25_3_lsh[23]}}, cast_internal_ip_25_3_lsh[23:0]};
  assign op_mem_46_20_push_front_pop_back_en = 1'b0;
  assign op = cast_internal_ip_33_3_convert;
endmodule
 



module shift_41579f67e2 (
  input [(18 - 1):0] ip,
  output [(26 - 1):0] op,
  input clk,
  input ce,
  input clr);
  wire signed [(18 - 1):0] ip_1_23;
  localparam signed [(26 - 1):0] const_value = 26'sb00000000000000000000000000;
  reg signed [(26 - 1):0] op_mem_46_20[0:(1 - 1)];
  initial
    begin
      op_mem_46_20[0] = 26'b00000000000000000000000000;
    end
  wire signed [(26 - 1):0] op_mem_46_20_front_din;
  wire signed [(26 - 1):0] op_mem_46_20_back;
  wire op_mem_46_20_push_front_pop_back_en;
  localparam [(1 - 1):0] const_value_x_000000 = 1'b1;
  wire signed [(21 - 1):0] cast_internal_ip_25_3_lsh;
  wire signed [(26 - 1):0] cast_internal_ip_33_3_convert;
  assign ip_1_23 = ip;
  assign op_mem_46_20_back = op_mem_46_20[0];
  always @(posedge clk)
    begin:proc_op_mem_46_20
      integer i;
      if (((ce == 1'b1) && (op_mem_46_20_push_front_pop_back_en == 1'b1)))
        begin
          op_mem_46_20[0] <= op_mem_46_20_front_din;
        end
    end
  assign cast_internal_ip_25_3_lsh = {ip_1_23[17:0], 3'b000};
  assign cast_internal_ip_33_3_convert = {{5{cast_internal_ip_25_3_lsh[20]}}, cast_internal_ip_25_3_lsh[20:0]};
  assign op_mem_46_20_push_front_pop_back_en = 1'b0;
  assign op = cast_internal_ip_33_3_convert;
endmodule
 



module addsub_d546b3de9d (
  input [(16 - 1):0] a,
  input [(16 - 1):0] b,
  input [(1 - 1):0] mode,
  output [(18 - 1):0] s,
  input clk,
  input ce,
  input clr);
  wire signed [(16 - 1):0] a_17_32;
  wire signed [(16 - 1):0] b_17_35;
  wire mode_17_48;
  localparam signed [(18 - 1):0] const_value = 18'sb000000000000000000;
  reg signed [(18 - 1):0] op_mem_91_20[0:(1 - 1)];
  initial
    begin
      op_mem_91_20[0] = 18'b000000000000000000;
    end
  wire signed [(18 - 1):0] op_mem_91_20_front_din;
  wire signed [(18 - 1):0] op_mem_91_20_back;
  wire op_mem_91_20_push_front_pop_back_en;
  localparam [(1 - 1):0] const_value_x_000000 = 1'b0;
  reg [(1 - 1):0] cout_mem_92_22[0:(1 - 1)];
  initial
    begin
      cout_mem_92_22[0] = 1'b0;
    end
  wire [(1 - 1):0] cout_mem_92_22_front_din;
  wire [(1 - 1):0] cout_mem_92_22_back;
  wire cout_mem_92_22_push_front_pop_back_en;
  wire [(3 - 1):0] prev_mode_93_22_next;
  wire [(3 - 1):0] prev_mode_93_22;
  wire [(3 - 1):0] prev_mode_93_22_reg_i;
  wire [(3 - 1):0] prev_mode_93_22_reg_o;
  localparam [(1 - 1):0] const_value_x_000001 = 1'b0;
  localparam [(1 - 1):0] const_value_x_000002 = 1'b1;
  localparam [(1 - 1):0] const_value_x_000003 = 1'b0;
  localparam [(1 - 1):0] const_value_x_000004 = 1'b0;
  wire not_68_25;
  wire bool_68_25;
  wire bool_68_7;
  wire signed [(17 - 1):0] cast_internal_s_69_5_addsub_a;
  wire signed [(17 - 1):0] cast_internal_s_69_5_addsub_b;
  reg signed [(17 - 1):0] internal_s_69_5_addsub;
  localparam [(1 - 1):0] const_value_x_000005 = 1'b0;
  wire signed [(18 - 1):0] cast_internal_s_83_3_convert;
  localparam [(1 - 1):0] const_value_x_000006 = 1'b0;
  wire [(3 - 1):0] prev_mode_93_22_next_x_000000;
  assign a_17_32 = a;
  assign b_17_35 = b;
  assign mode_17_48 = mode;
  assign op_mem_91_20_back = op_mem_91_20[0];
  always @(posedge clk)
    begin:proc_op_mem_91_20
      integer i;
      if (((ce == 1'b1) && (op_mem_91_20_push_front_pop_back_en == 1'b1)))
        begin
          op_mem_91_20[0] <= op_mem_91_20_front_din;
        end
    end
  assign cout_mem_92_22_back = cout_mem_92_22[0];
  always @(posedge clk)
    begin:proc_cout_mem_92_22
      integer i_x_000000;
      if (((ce == 1'b1) && (cout_mem_92_22_push_front_pop_back_en == 1'b1)))
        begin
          cout_mem_92_22[0] <= cout_mem_92_22_front_din;
        end
    end
  assign prev_mode_93_22_reg_i = prev_mode_93_22_next;
  assign prev_mode_93_22 = prev_mode_93_22_reg_o;
  defparam prev_mode_93_22_reg_inst.init_index = 2;
  defparam prev_mode_93_22_reg_inst.init_value = 3'b010;
  defparam prev_mode_93_22_reg_inst.latency = 1;
  defparam prev_mode_93_22_reg_inst.width = 3;
  synth_reg_w_init prev_mode_93_22_reg_inst(.ce(ce), .clk(clk), .clr(clr), .i(prev_mode_93_22_reg_i), .o(prev_mode_93_22_reg_o));
  assign not_68_25 = !mode_17_48;
  assign bool_68_25 = not_68_25 && 1'b1;
  assign bool_68_7 = 1'b0 || bool_68_25;
  assign cast_internal_s_69_5_addsub_a = {{1{a_17_32[15]}}, a_17_32[15:0]};
  assign cast_internal_s_69_5_addsub_b = {{1{b_17_35[15]}}, b_17_35[15:0]};
  always @(bool_68_7 or cast_internal_s_69_5_addsub_a or cast_internal_s_69_5_addsub_b)
    begin:proc_internal_s_69_5_addsub
      if (bool_68_7)
        begin
          internal_s_69_5_addsub = (cast_internal_s_69_5_addsub_a + cast_internal_s_69_5_addsub_b);
        end
      else 
        begin
          internal_s_69_5_addsub = (cast_internal_s_69_5_addsub_a - cast_internal_s_69_5_addsub_b);
        end
    end
  assign cast_internal_s_83_3_convert = {{1{internal_s_69_5_addsub[16]}}, internal_s_69_5_addsub[16:0]};
  assign op_mem_91_20_front_din = cast_internal_s_83_3_convert;
  assign op_mem_91_20_push_front_pop_back_en = 1'b1;
  assign cout_mem_92_22_front_din = const_value_x_000006;
  assign cout_mem_92_22_push_front_pop_back_en = 1'b1;
  assign prev_mode_93_22_next_x_000000 = {2'b00, mode_17_48};
  assign prev_mode_93_22_next = prev_mode_93_22_next_x_000000;
  assign s = op_mem_91_20_back;
endmodule
 



module shift_242a713649 (
  input [(16 - 1):0] ip,
  output [(16 - 1):0] op,
  input clk,
  input ce,
  input clr);
  wire signed [(16 - 1):0] ip_1_23;
  localparam signed [(16 - 1):0] const_value = 16'sb0000000000000000;
  reg signed [(16 - 1):0] op_mem_46_20[0:(1 - 1)];
  initial
    begin
      op_mem_46_20[0] = 16'b0000000000000000;
    end
  wire signed [(16 - 1):0] op_mem_46_20_front_din;
  wire signed [(16 - 1):0] op_mem_46_20_back;
  wire op_mem_46_20_push_front_pop_back_en;
  localparam [(1 - 1):0] const_value_x_000000 = 1'b1;
  assign ip_1_23 = ip;
  assign op_mem_46_20_back = op_mem_46_20[0];
  always @(posedge clk)
    begin:proc_op_mem_46_20
      integer i;
      if (((ce == 1'b1) && (op_mem_46_20_push_front_pop_back_en == 1'b1)))
        begin
          op_mem_46_20[0] <= op_mem_46_20_front_din;
        end
    end
  assign op_mem_46_20_push_front_pop_back_en = 1'b0;
  assign op = ip_1_23;
endmodule
 



module addsub_14dcc7ebeb (
  input [(18 - 1):0] a,
  input [(18 - 1):0] b,
  input [(1 - 1):0] mode,
  output [(18 - 1):0] s,
  input clk,
  input ce,
  input clr);
  wire signed [(18 - 1):0] a_17_32;
  wire signed [(18 - 1):0] b_17_35;
  wire mode_17_48;
  localparam signed [(18 - 1):0] const_value = 18'sb000000000000000000;
  reg signed [(18 - 1):0] op_mem_91_20[0:(1 - 1)];
  initial
    begin
      op_mem_91_20[0] = 18'b000000000000000000;
    end
  wire signed [(18 - 1):0] op_mem_91_20_front_din;
  wire signed [(18 - 1):0] op_mem_91_20_back;
  wire op_mem_91_20_push_front_pop_back_en;
  localparam [(1 - 1):0] const_value_x_000000 = 1'b0;
  reg [(1 - 1):0] cout_mem_92_22[0:(1 - 1)];
  initial
    begin
      cout_mem_92_22[0] = 1'b0;
    end
  wire [(1 - 1):0] cout_mem_92_22_front_din;
  wire [(1 - 1):0] cout_mem_92_22_back;
  wire cout_mem_92_22_push_front_pop_back_en;
  wire [(3 - 1):0] prev_mode_93_22_next;
  wire [(3 - 1):0] prev_mode_93_22;
  wire [(3 - 1):0] prev_mode_93_22_reg_i;
  wire [(3 - 1):0] prev_mode_93_22_reg_o;
  localparam [(1 - 1):0] const_value_x_000001 = 1'b0;
  localparam [(1 - 1):0] const_value_x_000002 = 1'b1;
  localparam [(1 - 1):0] const_value_x_000003 = 1'b0;
  localparam [(1 - 1):0] const_value_x_000004 = 1'b0;
  wire not_68_25;
  wire bool_68_25;
  wire bool_68_7;
  wire signed [(19 - 1):0] cast_internal_s_69_5_addsub_a;
  wire signed [(19 - 1):0] cast_internal_s_69_5_addsub_b;
  reg signed [(19 - 1):0] internal_s_69_5_addsub;
  localparam [(1 - 1):0] const_value_x_000005 = 1'b0;
  wire signed [(18 - 1):0] cast_internal_s_83_3_convert;
  localparam [(1 - 1):0] const_value_x_000006 = 1'b0;
  wire [(3 - 1):0] prev_mode_93_22_next_x_000000;
  assign a_17_32 = a;
  assign b_17_35 = b;
  assign mode_17_48 = mode;
  assign op_mem_91_20_back = op_mem_91_20[0];
  always @(posedge clk)
    begin:proc_op_mem_91_20
      integer i;
      if (((ce == 1'b1) && (op_mem_91_20_push_front_pop_back_en == 1'b1)))
        begin
          op_mem_91_20[0] <= op_mem_91_20_front_din;
        end
    end
  assign cout_mem_92_22_back = cout_mem_92_22[0];
  always @(posedge clk)
    begin:proc_cout_mem_92_22
      integer i_x_000000;
      if (((ce == 1'b1) && (cout_mem_92_22_push_front_pop_back_en == 1'b1)))
        begin
          cout_mem_92_22[0] <= cout_mem_92_22_front_din;
        end
    end
  assign prev_mode_93_22_reg_i = prev_mode_93_22_next;
  assign prev_mode_93_22 = prev_mode_93_22_reg_o;
  defparam prev_mode_93_22_reg_inst.init_index = 2;
  defparam prev_mode_93_22_reg_inst.init_value = 3'b010;
  defparam prev_mode_93_22_reg_inst.latency = 1;
  defparam prev_mode_93_22_reg_inst.width = 3;
  synth_reg_w_init prev_mode_93_22_reg_inst(.ce(ce), .clk(clk), .clr(clr), .i(prev_mode_93_22_reg_i), .o(prev_mode_93_22_reg_o));
  assign not_68_25 = !mode_17_48;
  assign bool_68_25 = not_68_25 && 1'b1;
  assign bool_68_7 = 1'b0 || bool_68_25;
  assign cast_internal_s_69_5_addsub_a = {{1{a_17_32[17]}}, a_17_32[17:0]};
  assign cast_internal_s_69_5_addsub_b = {{1{b_17_35[17]}}, b_17_35[17:0]};
  always @(bool_68_7 or cast_internal_s_69_5_addsub_a or cast_internal_s_69_5_addsub_b)
    begin:proc_internal_s_69_5_addsub
      if (bool_68_7)
        begin
          internal_s_69_5_addsub = (cast_internal_s_69_5_addsub_a + cast_internal_s_69_5_addsub_b);
        end
      else 
        begin
          internal_s_69_5_addsub = (cast_internal_s_69_5_addsub_a - cast_internal_s_69_5_addsub_b);
        end
    end
  assign cast_internal_s_83_3_convert = {internal_s_69_5_addsub[17:0]};
  assign op_mem_91_20_front_din = cast_internal_s_83_3_convert;
  assign op_mem_91_20_push_front_pop_back_en = 1'b1;
  assign cout_mem_92_22_front_din = const_value_x_000006;
  assign cout_mem_92_22_push_front_pop_back_en = 1'b1;
  assign prev_mode_93_22_next_x_000000 = {2'b00, mode_17_48};
  assign prev_mode_93_22_next = prev_mode_93_22_next_x_000000;
  assign s = op_mem_91_20_back;
endmodule
 



module shift_5423e932f0 (
  input [(18 - 1):0] ip,
  output [(18 - 1):0] op,
  input clk,
  input ce,
  input clr);
  wire signed [(18 - 1):0] ip_1_23;
  localparam signed [(18 - 1):0] const_value = 18'sb000000000000000000;
  reg signed [(18 - 1):0] op_mem_46_20[0:(1 - 1)];
  initial
    begin
      op_mem_46_20[0] = 18'b000000000000000000;
    end
  wire signed [(18 - 1):0] op_mem_46_20_front_din;
  wire signed [(18 - 1):0] op_mem_46_20_back;
  wire op_mem_46_20_push_front_pop_back_en;
  localparam [(1 - 1):0] const_value_x_000000 = 1'b1;
  wire signed [(18 - 1):0] cast_internal_ip_36_3_convert;
  assign ip_1_23 = ip;
  assign op_mem_46_20_back = op_mem_46_20[0];
  always @(posedge clk)
    begin:proc_op_mem_46_20
      integer i;
      if (((ce == 1'b1) && (op_mem_46_20_push_front_pop_back_en == 1'b1)))
        begin
          op_mem_46_20[0] <= op_mem_46_20_front_din;
        end
    end
  assign cast_internal_ip_36_3_convert = {{1{ip_1_23[17]}}, ip_1_23[17:1]};
  assign op_mem_46_20_push_front_pop_back_en = 1'b0;
  assign op = cast_internal_ip_36_3_convert;
endmodule
 



module shift_69c26659b1 (
  input [(18 - 1):0] ip,
  output [(18 - 1):0] op,
  input clk,
  input ce,
  input clr);
  wire signed [(18 - 1):0] ip_1_23;
  localparam signed [(18 - 1):0] const_value = 18'sb000000000000000000;
  reg signed [(18 - 1):0] op_mem_46_20[0:(1 - 1)];
  initial
    begin
      op_mem_46_20[0] = 18'b000000000000000000;
    end
  wire signed [(18 - 1):0] op_mem_46_20_front_din;
  wire signed [(18 - 1):0] op_mem_46_20_back;
  wire op_mem_46_20_push_front_pop_back_en;
  localparam [(1 - 1):0] const_value_x_000000 = 1'b1;
  wire signed [(18 - 1):0] cast_internal_ip_36_3_convert;
  assign ip_1_23 = ip;
  assign op_mem_46_20_back = op_mem_46_20[0];
  always @(posedge clk)
    begin:proc_op_mem_46_20
      integer i;
      if (((ce == 1'b1) && (op_mem_46_20_push_front_pop_back_en == 1'b1)))
        begin
          op_mem_46_20[0] <= op_mem_46_20_front_din;
        end
    end
  assign cast_internal_ip_36_3_convert = {{2{ip_1_23[17]}}, ip_1_23[17:2]};
  assign op_mem_46_20_push_front_pop_back_en = 1'b0;
  assign op = cast_internal_ip_36_3_convert;
endmodule
 



module shift_bf37e7e608 (
  input [(18 - 1):0] ip,
  output [(18 - 1):0] op,
  input clk,
  input ce,
  input clr);
  wire signed [(18 - 1):0] ip_1_23;
  localparam signed [(18 - 1):0] const_value = 18'sb000000000000000000;
  reg signed [(18 - 1):0] op_mem_46_20[0:(1 - 1)];
  initial
    begin
      op_mem_46_20[0] = 18'b000000000000000000;
    end
  wire signed [(18 - 1):0] op_mem_46_20_front_din;
  wire signed [(18 - 1):0] op_mem_46_20_back;
  wire op_mem_46_20_push_front_pop_back_en;
  localparam [(1 - 1):0] const_value_x_000000 = 1'b1;
  wire signed [(18 - 1):0] cast_internal_ip_36_3_convert;
  assign ip_1_23 = ip;
  assign op_mem_46_20_back = op_mem_46_20[0];
  always @(posedge clk)
    begin:proc_op_mem_46_20
      integer i;
      if (((ce == 1'b1) && (op_mem_46_20_push_front_pop_back_en == 1'b1)))
        begin
          op_mem_46_20[0] <= op_mem_46_20_front_din;
        end
    end
  assign cast_internal_ip_36_3_convert = {{3{ip_1_23[17]}}, ip_1_23[17:3]};
  assign op_mem_46_20_push_front_pop_back_en = 1'b0;
  assign op = cast_internal_ip_36_3_convert;
endmodule
 



module shift_8a1f5c0a9e (
  input [(18 - 1):0] ip,
  output [(18 - 1):0] op,
  input clk,
  input ce,
  input clr);
  wire signed [(18 - 1):0] ip_1_23;
  localparam signed [(18 - 1):0] const_value = 18'sb000000000000000000;
  reg signed [(18 - 1):0] op_mem_46_20[0:(1 - 1)];
  initial
    begin
      op_mem_46_20[0] = 18'b000000000000000000;
    end
  wire signed [(18 - 1):0] op_mem_46_20_front_din;
  wire signed [(18 - 1):0] op_mem_46_20_back;
  wire op_mem_46_20_push_front_pop_back_en;
  localparam [(1 - 1):0] const_value_x_000000 = 1'b1;
  wire signed [(18 - 1):0] cast_internal_ip_36_3_convert;
  assign ip_1_23 = ip;
  assign op_mem_46_20_back = op_mem_46_20[0];
  always @(posedge clk)
    begin:proc_op_mem_46_20
      integer i;
      if (((ce == 1'b1) && (op_mem_46_20_push_front_pop_back_en == 1'b1)))
        begin
          op_mem_46_20[0] <= op_mem_46_20_front_din;
        end
    end
  assign cast_internal_ip_36_3_convert = {{4{ip_1_23[17]}}, ip_1_23[17:4]};
  assign op_mem_46_20_push_front_pop_back_en = 1'b0;
  assign op = cast_internal_ip_36_3_convert;
endmodule
 



module shift_783ce18d91 (
  input [(18 - 1):0] ip,
  output [(18 - 1):0] op,
  input clk,
  input ce,
  input clr);
  wire signed [(18 - 1):0] ip_1_23;
  localparam signed [(18 - 1):0] const_value = 18'sb000000000000000000;
  reg signed [(18 - 1):0] op_mem_46_20[0:(1 - 1)];
  initial
    begin
      op_mem_46_20[0] = 18'b000000000000000000;
    end
  wire signed [(18 - 1):0] op_mem_46_20_front_din;
  wire signed [(18 - 1):0] op_mem_46_20_back;
  wire op_mem_46_20_push_front_pop_back_en;
  localparam [(1 - 1):0] const_value_x_000000 = 1'b1;
  wire signed [(18 - 1):0] cast_internal_ip_36_3_convert;
  assign ip_1_23 = ip;
  assign op_mem_46_20_back = op_mem_46_20[0];
  always @(posedge clk)
    begin:proc_op_mem_46_20
      integer i;
      if (((ce == 1'b1) && (op_mem_46_20_push_front_pop_back_en == 1'b1)))
        begin
          op_mem_46_20[0] <= op_mem_46_20_front_din;
        end
    end
  assign cast_internal_ip_36_3_convert = {{5{ip_1_23[17]}}, ip_1_23[17:5]};
  assign op_mem_46_20_push_front_pop_back_en = 1'b0;
  assign op = cast_internal_ip_36_3_convert;
endmodule
 



module concat_0f2a9029de (
  input [(1 - 1):0] in0,
  input [(1 - 1):0] in1,
  input [(1 - 1):0] in2,
  input [(1 - 1):0] in3,
  input [(1 - 1):0] in4,
  output [(5 - 1):0] y,
  input clk,
  input ce,
  input clr);
  wire in0_1_23;
  wire in1_1_27;
  wire in2_1_31;
  wire in3_1_35;
  wire in4_1_39;
  wire [(5 - 1):0] y_2_1_concat;
  assign in0_1_23 = in0;
  assign in1_1_27 = in1;
  assign in2_1_31 = in2;
  assign in3_1_35 = in3;
  assign in4_1_39 = in4;
  assign y_2_1_concat = {in0_1_23, in1_1_27, in2_1_31, in3_1_35, in4_1_39};
  assign y = y_2_1_concat;
endmodule
 



module delay_19fb89c202 (
  input [(1 - 1):0] d,
  output [(1 - 1):0] q,
  input clk,
  input ce,
  input clr);
  wire d_1_22;
  reg op_mem_20_24[0:(2 - 1)];
  initial
    begin
      op_mem_20_24[0] = 1'b0;
      op_mem_20_24[1] = 1'b0;
    end
  wire op_mem_20_24_front_din;
  wire op_mem_20_24_back;
  wire op_mem_20_24_push_front_pop_back_en;
  localparam [(2 - 1):0] const_value = 2'b10;
  assign d_1_22 = d;
  assign op_mem_20_24_back = op_mem_20_24[1];
  always @(posedge clk)
    begin:proc_op_mem_20_24
      integer i;
      if (((ce == 1'b1) && (op_mem_20_24_push_front_pop_back_en == 1'b1)))
        begin
          for (i=1; i>=1; i=i-1)
            begin
              op_mem_20_24[i] <= op_mem_20_24[i-1];
            end
          op_mem_20_24[0] <= op_mem_20_24_front_din;
        end
    end
  assign op_mem_20_24_front_din = d_1_22;
  assign op_mem_20_24_push_front_pop_back_en = 1'b1;
  assign q = op_mem_20_24_back;
endmodule
 



module delay_e7915bbc50 (
  input [(1 - 1):0] d,
  output [(1 - 1):0] q,
  input clk,
  input ce,
  input clr);
  wire d_1_22;
  reg op_mem_20_24[0:(3 - 1)];
  initial
    begin
      op_mem_20_24[0] = 1'b0;
      op_mem_20_24[1] = 1'b0;
      op_mem_20_24[2] = 1'b0;
    end
  wire op_mem_20_24_front_din;
  wire op_mem_20_24_back;
  wire op_mem_20_24_push_front_pop_back_en;
  localparam [(2 - 1):0] const_value = 2'b11;
  assign d_1_22 = d;
  assign op_mem_20_24_back = op_mem_20_24[2];
  always @(posedge clk)
    begin:proc_op_mem_20_24
      integer i;
      if (((ce == 1'b1) && (op_mem_20_24_push_front_pop_back_en == 1'b1)))
        begin
          for (i=2; i>=1; i=i-1)
            begin
              op_mem_20_24[i] <= op_mem_20_24[i-1];
            end
          op_mem_20_24[0] <= op_mem_20_24_front_din;
        end
    end
  assign op_mem_20_24_front_din = d_1_22;
  assign op_mem_20_24_push_front_pop_back_en = 1'b1;
  assign q = op_mem_20_24_back;
endmodule
 



module delay_fb81ab31ae (
  input [(1 - 1):0] d,
  output [(1 - 1):0] q,
  input clk,
  input ce,
  input clr);
  wire d_1_22;
  reg op_mem_20_24[0:(4 - 1)];
  initial
    begin
      op_mem_20_24[0] = 1'b0;
      op_mem_20_24[1] = 1'b0;
      op_mem_20_24[2] = 1'b0;
      op_mem_20_24[3] = 1'b0;
    end
  wire op_mem_20_24_front_din;
  wire op_mem_20_24_back;
  wire op_mem_20_24_push_front_pop_back_en;
  localparam [(3 - 1):0] const_value = 3'b100;
  assign d_1_22 = d;
  assign op_mem_20_24_back = op_mem_20_24[3];
  always @(posedge clk)
    begin:proc_op_mem_20_24
      integer i;
      if (((ce == 1'b1) && (op_mem_20_24_push_front_pop_back_en == 1'b1)))
        begin
          for (i=3; i>=1; i=i-1)
            begin
              op_mem_20_24[i] <= op_mem_20_24[i-1];
            end
          op_mem_20_24[0] <= op_mem_20_24_front_din;
        end
    end
  assign op_mem_20_24_front_din = d_1_22;
  assign op_mem_20_24_push_front_pop_back_en = 1'b1;
  assign q = op_mem_20_24_back;
endmodule
 



module delay_0512afa688 (
  input [(1 - 1):0] d,
  output [(1 - 1):0] q,
  input clk,
  input ce,
  input clr);
  wire d_1_22;
  reg op_mem_20_24[0:(5 - 1)];
  initial
    begin
      op_mem_20_24[0] = 1'b0;
      op_mem_20_24[1] = 1'b0;
      op_mem_20_24[2] = 1'b0;
      op_mem_20_24[3] = 1'b0;
      op_mem_20_24[4] = 1'b0;
    end
  wire op_mem_20_24_front_din;
  wire op_mem_20_24_back;
  wire op_mem_20_24_push_front_pop_back_en;
  localparam [(3 - 1):0] const_value = 3'b101;
  assign d_1_22 = d;
  assign op_mem_20_24_back = op_mem_20_24[4];
  always @(posedge clk)
    begin:proc_op_mem_20_24
      integer i;
      if (((ce == 1'b1) && (op_mem_20_24_push_front_pop_back_en == 1'b1)))
        begin
          for (i=4; i>=1; i=i-1)
            begin
              op_mem_20_24[i] <= op_mem_20_24[i-1];
            end
          op_mem_20_24[0] <= op_mem_20_24_front_din;
        end
    end
  assign op_mem_20_24_front_din = d_1_22;
  assign op_mem_20_24_push_front_pop_back_en = 1'b1;
  assign q = op_mem_20_24_back;
endmodule
 



module delay_211dcce0ef (
  input [(1 - 1):0] d,
  output [(1 - 1):0] q,
  input clk,
  input ce,
  input clr);
  wire d_1_22;
  reg op_mem_20_24[0:(1 - 1)];
  initial
    begin
      op_mem_20_24[0] = 1'b0;
    end
  wire op_mem_20_24_front_din;
  wire op_mem_20_24_back;
  wire op_mem_20_24_push_front_pop_back_en;
  localparam [(1 - 1):0] const_value = 1'b1;
  assign d_1_22 = d;
  assign op_mem_20_24_back = op_mem_20_24[0];
  always @(posedge clk)
    begin:proc_op_mem_20_24
      integer i;
      if (((ce == 1'b1) && (op_mem_20_24_push_front_pop_back_en == 1'b1)))
        begin
          op_mem_20_24[0] <= op_mem_20_24_front_din;
        end
    end
  assign op_mem_20_24_front_din = d_1_22;
  assign op_mem_20_24_push_front_pop_back_en = 1'b1;
  assign q = op_mem_20_24_back;
endmodule
 


//-----------------------------------------------------------------
// System Generator version 14.6 VERILOG source file.
//
// Copyright(C) 2013 by Xilinx, Inc.  All rights reserved.  This
// text/file contains proprietary, confidential information of Xilinx,
// Inc., is distributed under license from Xilinx, Inc., and may be used,
// copied and/or disclosed only pursuant to the terms of a valid license
// agreement with Xilinx, Inc.  Xilinx hereby grants you a license to use
// this text/file solely for design, simulation, implementation and
// creation of design files limited to Xilinx devices or technologies.
// Use with non-Xilinx devices or technologies is expressly prohibited
// and immediately terminates your license unless covered by a separate
// agreement.
//
// Xilinx is providing this design, code, or information "as is" solely
// for use in developing programs and solutions for Xilinx devices.  By
// providing this design, code, or information as one possible
// implementation of this feature, application or standard, Xilinx is
// making no representation that this implementation is free from any
// claims of infringement.  You are responsible for obtaining any rights
// you may require for your implementation.  Xilinx expressly disclaims
// any warranty whatsoever with respect to the adequacy of the
// implementation, including but not limited to warranties of
// merchantability or fitness for a particular purpose.
//
// Xilinx products are not intended for use in life support appliances,
// devices, or systems.  Use in such applications is expressly prohibited.
//
// Any modifications that are made to the source code are done at the user's
// sole risk and will be unsupported.
//
// This copyright and support notice must be retained as part of this
// text at all times.  (c) Copyright 1995-2013 Xilinx, Inc.  All rights
// reserved.
//-----------------------------------------------------------------
module xlsprom_dist_pc_cfr_spartan6_v1_2 (addr, en, ce, clk, data);
   parameter core_name0= "";
   parameter addr_width= 2;
   parameter latency= 0;
   parameter c_width= 12;
   parameter c_address_width= 4;
   input [addr_width-1:0] addr;
   input en;
   input ce;
   input clk;
   output [c_width-1:0] data;
   wire [c_width-1:0] core_data_out;
   wire [c_address_width-1:0] core_addr;
   wire  core_ce;
   assign core_addr = { {(c_address_width - addr_width) {1'b0}}, addr};
   assign core_ce = ce & en;
generate
if (core_name0 == "dmg_72_195596f332d57672")
begin:comp1
dmg_72_195596f332d57672 core_instance0 (
         .a(core_addr),
        .clk(clk),
        .qspo_ce(core_ce),
        .qspo(core_data_out)
        );
end
if (core_name0 == "dmg_72_ad5060a4053d2208")
begin:comp3
dmg_72_ad5060a4053d2208 core_instance1 (
         .a(core_addr),
        .clk(clk),
        .qspo_ce(core_ce),
        .qspo(core_data_out)
        );
end
   if (latency > 1)
     begin:latency_test
        synth_reg # (c_width, latency-1)
          reg1 (
               .i(core_data_out),
               .ce(core_ce),
               .clr(1'b0),
               .clk(clk),
               .o(data));
     end

   if (latency <= 1)
     begin:latency_0_or_1
        assign data = core_data_out;
     end
endgenerate
endmodule


module mux_4e39b191fc (
  input [(2 - 1):0] sel,
  input [(14 - 1):0] d0,
  input [(14 - 1):0] d1,
  input [(14 - 1):0] d2,
  input [(14 - 1):0] d3,
  output [(14 - 1):0] y,
  input clk,
  input ce,
  input clr);
  wire [(2 - 1):0] sel_1_20;
  wire [(14 - 1):0] d0_1_24;
  wire [(14 - 1):0] d1_1_27;
  wire [(14 - 1):0] d2_1_30;
  wire [(14 - 1):0] d3_1_33;
  localparam [(14 - 1):0] const_value = 14'b00000000000000;
  reg [(14 - 1):0] pipe_20_22[0:(1 - 1)];
  initial
    begin
      pipe_20_22[0] = 14'b00000000000000;
    end
  wire [(14 - 1):0] pipe_20_22_front_din;
  wire [(14 - 1):0] pipe_20_22_back;
  wire pipe_20_22_push_front_pop_back_en;
  reg [(14 - 1):0] unregy_join_6_1;
  assign sel_1_20 = sel;
  assign d0_1_24 = d0;
  assign d1_1_27 = d1;
  assign d2_1_30 = d2;
  assign d3_1_33 = d3;
  assign pipe_20_22_back = pipe_20_22[0];
  always @(posedge clk)
    begin:proc_pipe_20_22
      integer i;
      if (((ce == 1'b1) && (pipe_20_22_push_front_pop_back_en == 1'b1)))
        begin
          pipe_20_22[0] <= pipe_20_22_front_din;
        end
    end
  always @(d0_1_24 or d1_1_27 or d2_1_30 or d3_1_33 or sel_1_20)
    begin:proc_switch_6_1
      case (sel_1_20)
        2'b00 :
          begin
            unregy_join_6_1 = d0_1_24;
          end
        2'b01 :
          begin
            unregy_join_6_1 = d1_1_27;
          end
        2'b10 :
          begin
            unregy_join_6_1 = d2_1_30;
          end
        default:
          begin
            unregy_join_6_1 = d3_1_33;
          end
      endcase
    end
  assign pipe_20_22_front_din = unregy_join_6_1;
  assign pipe_20_22_push_front_pop_back_en = 1'b1;
  assign y = pipe_20_22_back;
endmodule
 



module negate_0035cd4950 (
  input [(14 - 1):0] ip,
  output [(14 - 1):0] op,
  input clk,
  input ce,
  input clr);
  wire signed [(14 - 1):0] ip_18_25;
  localparam signed [(14 - 1):0] const_value = 14'sb00000000000000;
  reg signed [(14 - 1):0] op_mem_48_20[0:(1 - 1)];
  initial
    begin
      op_mem_48_20[0] = 14'b00000000000000;
    end
  wire signed [(14 - 1):0] op_mem_48_20_front_din;
  wire signed [(14 - 1):0] op_mem_48_20_back;
  wire op_mem_48_20_push_front_pop_back_en;
  localparam [(1 - 1):0] const_value_x_000000 = 1'b1;
  localparam [(1 - 1):0] const_value_x_000001 = 1'b0;
  wire signed [(15 - 1):0] cast_35_24;
  wire signed [(15 - 1):0] internal_ip_35_9_neg;
  reg signed [(15 - 1):0] internal_ip_join_30_1;
  localparam signed [(15 - 1):0] const_value_x_000002 = 15'sb000000000000000;
  wire signed [(14 - 1):0] cast_internal_ip_40_3_convert;
  assign ip_18_25 = ip;
  assign op_mem_48_20_back = op_mem_48_20[0];
  always @(posedge clk)
    begin:proc_op_mem_48_20
      integer i;
      if (((ce == 1'b1) && (op_mem_48_20_push_front_pop_back_en == 1'b1)))
        begin
          op_mem_48_20[0] <= op_mem_48_20_front_din;
        end
    end
  assign cast_35_24 = {{1{ip_18_25[13]}}, ip_18_25[13:0]};
  assign internal_ip_35_9_neg = -cast_35_24;
  always @(internal_ip_35_9_neg)
    begin:proc_if_30_1
      if (1'b0)
        begin
          internal_ip_join_30_1 = const_value_x_000002;
        end
      else 
        begin
          internal_ip_join_30_1 = internal_ip_35_9_neg;
        end
    end
  assign cast_internal_ip_40_3_convert = {internal_ip_join_30_1[13:0]};
  assign op_mem_48_20_push_front_pop_back_en = 1'b0;
  assign op = cast_internal_ip_40_3_convert;
endmodule
 



module inverter_4b3f1c3888 (
  input [(16 - 1):0] ip,
  output [(16 - 1):0] op,
  input clk,
  input ce,
  input clr);
  wire signed [(16 - 1):0] ip_1_26;
  localparam signed [(16 - 1):0] const_value = 16'sb0000000000000000;
  reg signed [(16 - 1):0] op_mem_22_20[0:(1 - 1)];
  initial
    begin
      op_mem_22_20[0] = 16'b0000000000000000;
    end
  wire signed [(16 - 1):0] op_mem_22_20_front_din;
  wire signed [(16 - 1):0] op_mem_22_20_back;
  wire op_mem_22_20_push_front_pop_back_en;
  localparam [(1 - 1):0] const_value_x_000000 = 1'b1;
  wire signed [(16 - 1):0] internal_ip_12_1_bitnot;
  assign ip_1_26 = ip;
  assign op_mem_22_20_back = op_mem_22_20[0];
  always @(posedge clk)
    begin:proc_op_mem_22_20
      integer i;
      if (((ce == 1'b1) && (op_mem_22_20_push_front_pop_back_en == 1'b1)))
        begin
          op_mem_22_20[0] <= op_mem_22_20_front_din;
        end
    end
  assign internal_ip_12_1_bitnot = ~ip_1_26;
  assign op_mem_22_20_push_front_pop_back_en = 1'b0;
  assign op = internal_ip_12_1_bitnot;
endmodule
 



module mux_f3921567cd (
  input [(1 - 1):0] sel,
  input [(16 - 1):0] d0,
  input [(16 - 1):0] d1,
  output [(16 - 1):0] y,
  input clk,
  input ce,
  input clr);
  wire sel_1_20;
  wire [(16 - 1):0] d0_1_24;
  wire [(16 - 1):0] d1_1_27;
  localparam [(16 - 1):0] const_value = 16'b0000000000000000;
  reg [(16 - 1):0] pipe_16_22[0:(1 - 1)];
  initial
    begin
      pipe_16_22[0] = 16'b0000000000000000;
    end
  wire [(16 - 1):0] pipe_16_22_front_din;
  wire [(16 - 1):0] pipe_16_22_back;
  wire pipe_16_22_push_front_pop_back_en;
  wire [(1 - 1):0] sel_internal_2_1_convert;
  reg [(16 - 1):0] unregy_join_6_1;
  assign sel_1_20 = sel;
  assign d0_1_24 = d0;
  assign d1_1_27 = d1;
  assign pipe_16_22_back = pipe_16_22[0];
  always @(posedge clk)
    begin:proc_pipe_16_22
      integer i;
      if (((ce == 1'b1) && (pipe_16_22_push_front_pop_back_en == 1'b1)))
        begin
          pipe_16_22[0] <= pipe_16_22_front_din;
        end
    end
  assign sel_internal_2_1_convert = {sel_1_20};
  always @(d0_1_24 or d1_1_27 or sel_internal_2_1_convert)
    begin:proc_switch_6_1
      case (sel_internal_2_1_convert)
        1'b0 :
          begin
            unregy_join_6_1 = d0_1_24;
          end
        default:
          begin
            unregy_join_6_1 = d1_1_27;
          end
      endcase
    end
  assign pipe_16_22_front_din = unregy_join_6_1;
  assign pipe_16_22_push_front_pop_back_en = 1'b1;
  assign y = pipe_16_22_back;
endmodule
 



module relational_3020c548d1 (
  input [(16 - 1):0] a,
  input [(16 - 1):0] b,
  output [(1 - 1):0] op,
  input clk,
  input ce,
  input clr);
  wire signed [(16 - 1):0] a_1_31;
  wire signed [(16 - 1):0] b_1_34;
  localparam [(1 - 1):0] const_value = 1'b1;
  wire result_20_3_rel;
  assign a_1_31 = a;
  assign b_1_34 = b;
  assign result_20_3_rel = a_1_31 <= b_1_34;
  assign op = result_20_3_rel;
endmodule
 



module delay_0d84f57931 (
  input [(1 - 1):0] d,
  output [(1 - 1):0] q,
  input clk,
  input ce,
  input clr);
  wire d_1_22;
  reg op_mem_20_24[0:(7 - 1)];
  initial
    begin
      op_mem_20_24[0] = 1'b0;
      op_mem_20_24[1] = 1'b0;
      op_mem_20_24[2] = 1'b0;
      op_mem_20_24[3] = 1'b0;
      op_mem_20_24[4] = 1'b0;
      op_mem_20_24[5] = 1'b0;
      op_mem_20_24[6] = 1'b0;
    end
  wire op_mem_20_24_front_din;
  wire op_mem_20_24_back;
  wire op_mem_20_24_push_front_pop_back_en;
  localparam [(3 - 1):0] const_value = 3'b111;
  assign d_1_22 = d;
  assign op_mem_20_24_back = op_mem_20_24[6];
  always @(posedge clk)
    begin:proc_op_mem_20_24
      integer i;
      if (((ce == 1'b1) && (op_mem_20_24_push_front_pop_back_en == 1'b1)))
        begin
          for (i=6; i>=1; i=i-1)
            begin
              op_mem_20_24[i] <= op_mem_20_24[i-1];
            end
          op_mem_20_24[0] <= op_mem_20_24_front_din;
        end
    end
  assign op_mem_20_24_front_din = d_1_22;
  assign op_mem_20_24_push_front_pop_back_en = 1'b1;
  assign q = op_mem_20_24_back;
endmodule
 



module addsub_eb24e14176 (
  input [(9 - 1):0] a,
  input [(9 - 1):0] b,
  output [(9 - 1):0] s,
  input clk,
  input ce,
  input clr);
  wire [(9 - 1):0] a_17_32;
  wire [(9 - 1):0] b_17_35;
  localparam [(9 - 1):0] const_value = 9'b000000000;
  reg [(9 - 1):0] op_mem_91_20[0:(1 - 1)];
  initial
    begin
      op_mem_91_20[0] = 9'b000000000;
    end
  wire [(9 - 1):0] op_mem_91_20_front_din;
  wire [(9 - 1):0] op_mem_91_20_back;
  wire op_mem_91_20_push_front_pop_back_en;
  localparam [(1 - 1):0] const_value_x_000000 = 1'b0;
  reg [(1 - 1):0] cout_mem_92_22[0:(1 - 1)];
  initial
    begin
      cout_mem_92_22[0] = 1'b0;
    end
  wire [(1 - 1):0] cout_mem_92_22_front_din;
  wire [(1 - 1):0] cout_mem_92_22_back;
  wire cout_mem_92_22_push_front_pop_back_en;
  wire [(3 - 1):0] prev_mode_93_22_next;
  wire [(3 - 1):0] prev_mode_93_22;
  wire [(3 - 1):0] prev_mode_93_22_reg_i;
  wire [(3 - 1):0] prev_mode_93_22_reg_o;
  localparam [(1 - 1):0] const_value_x_000001 = 1'b0;
  localparam [(1 - 1):0] const_value_x_000002 = 1'b1;
  localparam [(1 - 1):0] const_value_x_000003 = 1'b0;
  localparam [(1 - 1):0] const_value_x_000004 = 1'b0;
  wire signed [(11 - 1):0] cast_71_18;
  wire signed [(11 - 1):0] cast_71_22;
  wire signed [(11 - 1):0] internal_s_71_5_addsub;
  localparam [(1 - 1):0] const_value_x_000005 = 1'b0;
  wire [(9 - 1):0] cast_internal_s_83_3_convert;
  localparam [(1 - 1):0] const_value_x_000006 = 1'b0;
  localparam [(3 - 1):0] const_value_x_000007 = 3'b000;
  assign a_17_32 = a;
  assign b_17_35 = b;
  assign op_mem_91_20_back = op_mem_91_20[0];
  always @(posedge clk)
    begin:proc_op_mem_91_20
      integer i;
      if (((ce == 1'b1) && (op_mem_91_20_push_front_pop_back_en == 1'b1)))
        begin
          op_mem_91_20[0] <= op_mem_91_20_front_din;
        end
    end
  assign cout_mem_92_22_back = cout_mem_92_22[0];
  always @(posedge clk)
    begin:proc_cout_mem_92_22
      integer i_x_000000;
      if (((ce == 1'b1) && (cout_mem_92_22_push_front_pop_back_en == 1'b1)))
        begin
          cout_mem_92_22[0] <= cout_mem_92_22_front_din;
        end
    end
  assign prev_mode_93_22_reg_i = prev_mode_93_22_next;
  assign prev_mode_93_22 = prev_mode_93_22_reg_o;
  defparam prev_mode_93_22_reg_inst.init_index = 2;
  defparam prev_mode_93_22_reg_inst.init_value = 3'b010;
  defparam prev_mode_93_22_reg_inst.latency = 1;
  defparam prev_mode_93_22_reg_inst.width = 3;
  synth_reg_w_init prev_mode_93_22_reg_inst(.ce(ce), .clk(clk), .clr(clr), .i(prev_mode_93_22_reg_i), .o(prev_mode_93_22_reg_o));
  assign cast_71_18 = {2'b00, a_17_32[8:0]};
  assign cast_71_22 = {2'b00, b_17_35[8:0]};
  assign internal_s_71_5_addsub = cast_71_18 - cast_71_22;
  assign cast_internal_s_83_3_convert = {internal_s_71_5_addsub[8:0]};
  assign op_mem_91_20_front_din = cast_internal_s_83_3_convert;
  assign op_mem_91_20_push_front_pop_back_en = 1'b1;
  assign cout_mem_92_22_front_din = const_value_x_000006;
  assign cout_mem_92_22_push_front_pop_back_en = 1'b1;
  assign prev_mode_93_22_next = const_value_x_000007;
  assign s = op_mem_91_20_back;
endmodule
 



module concat_dfdbb578d9 (
  input [(1 - 1):0] in0,
  input [(16 - 1):0] in1,
  input [(16 - 1):0] in2,
  output [(33 - 1):0] y,
  input clk,
  input ce,
  input clr);
  wire in0_1_23;
  wire [(16 - 1):0] in1_1_27;
  wire [(16 - 1):0] in2_1_31;
  wire [(33 - 1):0] y_2_1_concat;
  assign in0_1_23 = in0;
  assign in1_1_27 = in1;
  assign in2_1_31 = in2;
  assign y_2_1_concat = {in0_1_23, in1_1_27, in2_1_31};
  assign y = y_2_1_concat;
endmodule
 



module constant_fcde7055b5 (
  output [(33 - 1):0] op,
  input clk,
  input ce,
  input clr);
  assign op = 33'b000000000000000000000000000000000;
endmodule
 



module constant_5e90e4a8ec (
  output [(1 - 1):0] op,
  input clk,
  input ce,
  input clr);
  assign op = 1'b1;
endmodule
 



module constant_aff0b31db3 (
  output [(9 - 1):0] op,
  input clk,
  input ce,
  input clr);
  assign op = 9'b000111010;
endmodule
 



module counter_3635e3b440 (
  output [(9 - 1):0] op,
  input clk,
  input ce,
  input clr);
  reg [(9 - 1):0] count_reg_20_23 = 9'b000000000;
  localparam [(1 - 1):0] const_value = 1'b1;
  localparam [(2 - 1):0] const_value_x_000000 = 2'b10;
  localparam [(9 - 1):0] const_value_x_000001 = 9'b000000001;
  localparam [(9 - 1):0] const_value_x_000002 = 9'b000000000;
  localparam [(9 - 1):0] const_value_x_000003 = 9'b000000001;
  always @(posedge clk)
    begin:proc_count_reg_20_23
      if ((ce == 1'b1))
        begin
          count_reg_20_23 <= count_reg_20_23 + const_value_x_000003;
        end
    end
  assign op = count_reg_20_23;
endmodule
 



module reinterpret_2824f666f2 (
  input [(16 - 1):0] input_port,
  output [(16 - 1):0] output_port,
  input clk,
  input ce,
  input clr);
  wire signed [(16 - 1):0] input_port_1_40;
  wire [(16 - 1):0] output_port_5_5_force;
  assign input_port_1_40 = input_port;
  assign output_port_5_5_force = input_port_1_40;
  assign output_port = output_port_5_5_force;
endmodule
 



module shift_3c3ad6f4c6 (
  input [(9 - 1):0] ip,
  output [(9 - 1):0] op,
  input clk,
  input ce,
  input clr);
  wire [(9 - 1):0] ip_1_23;
  localparam [(9 - 1):0] const_value = 9'b000000000;
  reg [(9 - 1):0] op_mem_46_20[0:(1 - 1)];
  initial
    begin
      op_mem_46_20[0] = 9'b000000000;
    end
  wire [(9 - 1):0] op_mem_46_20_front_din;
  wire [(9 - 1):0] op_mem_46_20_back;
  wire op_mem_46_20_push_front_pop_back_en;
  localparam [(1 - 1):0] const_value_x_000000 = 1'b1;
  wire [(9 - 1):0] cast_internal_ip_36_3_convert;
  assign ip_1_23 = ip;
  assign op_mem_46_20_back = op_mem_46_20[0];
  always @(posedge clk)
    begin:proc_op_mem_46_20
      integer i;
      if (((ce == 1'b1) && (op_mem_46_20_push_front_pop_back_en == 1'b1)))
        begin
          op_mem_46_20[0] <= op_mem_46_20_front_din;
        end
    end
  assign cast_internal_ip_36_3_convert = {1'b0, ip_1_23[8:1]};
  assign op_mem_46_20_push_front_pop_back_en = 1'b0;
  assign op = cast_internal_ip_36_3_convert;
endmodule
 



module addsub_9d274f068b (
  input [(6 - 1):0] a,
  input [(6 - 1):0] b,
  output [(6 - 1):0] s,
  input clk,
  input ce,
  input clr);
  wire [(6 - 1):0] a_17_32;
  wire [(6 - 1):0] b_17_35;
  localparam [(6 - 1):0] const_value = 6'b000000;
  reg [(6 - 1):0] op_mem_91_20[0:(1 - 1)];
  initial
    begin
      op_mem_91_20[0] = 6'b000000;
    end
  wire [(6 - 1):0] op_mem_91_20_front_din;
  wire [(6 - 1):0] op_mem_91_20_back;
  wire op_mem_91_20_push_front_pop_back_en;
  localparam [(1 - 1):0] const_value_x_000000 = 1'b0;
  reg [(1 - 1):0] cout_mem_92_22[0:(1 - 1)];
  initial
    begin
      cout_mem_92_22[0] = 1'b0;
    end
  wire [(1 - 1):0] cout_mem_92_22_front_din;
  wire [(1 - 1):0] cout_mem_92_22_back;
  wire cout_mem_92_22_push_front_pop_back_en;
  wire [(3 - 1):0] prev_mode_93_22_next;
  wire [(3 - 1):0] prev_mode_93_22;
  wire [(3 - 1):0] prev_mode_93_22_reg_i;
  wire [(3 - 1):0] prev_mode_93_22_reg_o;
  localparam [(1 - 1):0] const_value_x_000001 = 1'b0;
  localparam [(1 - 1):0] const_value_x_000002 = 1'b1;
  localparam [(1 - 1):0] const_value_x_000003 = 1'b0;
  localparam [(1 - 1):0] const_value_x_000004 = 1'b0;
  wire signed [(8 - 1):0] cast_71_18;
  wire signed [(8 - 1):0] cast_71_22;
  wire signed [(8 - 1):0] internal_s_71_5_addsub;
  localparam [(1 - 1):0] const_value_x_000005 = 1'b0;
  wire [(6 - 1):0] cast_internal_s_83_3_convert;
  localparam [(1 - 1):0] const_value_x_000006 = 1'b0;
  localparam [(3 - 1):0] const_value_x_000007 = 3'b000;
  assign a_17_32 = a;
  assign b_17_35 = b;
  assign op_mem_91_20_back = op_mem_91_20[0];
  always @(posedge clk)
    begin:proc_op_mem_91_20
      integer i;
      if (((ce == 1'b1) && (op_mem_91_20_push_front_pop_back_en == 1'b1)))
        begin
          op_mem_91_20[0] <= op_mem_91_20_front_din;
        end
    end
  assign cout_mem_92_22_back = cout_mem_92_22[0];
  always @(posedge clk)
    begin:proc_cout_mem_92_22
      integer i_x_000000;
      if (((ce == 1'b1) && (cout_mem_92_22_push_front_pop_back_en == 1'b1)))
        begin
          cout_mem_92_22[0] <= cout_mem_92_22_front_din;
        end
    end
  assign prev_mode_93_22_reg_i = prev_mode_93_22_next;
  assign prev_mode_93_22 = prev_mode_93_22_reg_o;
  defparam prev_mode_93_22_reg_inst.init_index = 2;
  defparam prev_mode_93_22_reg_inst.init_value = 3'b010;
  defparam prev_mode_93_22_reg_inst.latency = 1;
  defparam prev_mode_93_22_reg_inst.width = 3;
  synth_reg_w_init prev_mode_93_22_reg_inst(.ce(ce), .clk(clk), .clr(clr), .i(prev_mode_93_22_reg_i), .o(prev_mode_93_22_reg_o));
  assign cast_71_18 = {2'b00, a_17_32[5:0]};
  assign cast_71_22 = {2'b00, b_17_35[5:0]};
  assign internal_s_71_5_addsub = cast_71_18 - cast_71_22;
  assign cast_internal_s_83_3_convert = {internal_s_71_5_addsub[5:0]};
  assign op_mem_91_20_push_front_pop_back_en = 1'b0;
  assign cout_mem_92_22_push_front_pop_back_en = 1'b0;
  assign prev_mode_93_22_next = const_value_x_000007;
  assign s = cast_internal_s_83_3_convert;
endmodule
 



module addsub_52d6e01024 (
  input [(6 - 1):0] a,
  input [(6 - 1):0] b,
  output [(6 - 1):0] s,
  input clk,
  input ce,
  input clr);
  wire [(6 - 1):0] a_17_32;
  wire [(6 - 1):0] b_17_35;
  localparam [(6 - 1):0] const_value = 6'b000000;
  reg [(6 - 1):0] op_mem_91_20[0:(1 - 1)];
  initial
    begin
      op_mem_91_20[0] = 6'b000000;
    end
  wire [(6 - 1):0] op_mem_91_20_front_din;
  wire [(6 - 1):0] op_mem_91_20_back;
  wire op_mem_91_20_push_front_pop_back_en;
  localparam [(1 - 1):0] const_value_x_000000 = 1'b0;
  reg [(1 - 1):0] cout_mem_92_22[0:(1 - 1)];
  initial
    begin
      cout_mem_92_22[0] = 1'b0;
    end
  wire [(1 - 1):0] cout_mem_92_22_front_din;
  wire [(1 - 1):0] cout_mem_92_22_back;
  wire cout_mem_92_22_push_front_pop_back_en;
  wire [(3 - 1):0] prev_mode_93_22_next;
  wire [(3 - 1):0] prev_mode_93_22;
  wire [(3 - 1):0] prev_mode_93_22_reg_i;
  wire [(3 - 1):0] prev_mode_93_22_reg_o;
  localparam [(1 - 1):0] const_value_x_000001 = 1'b0;
  localparam [(1 - 1):0] const_value_x_000002 = 1'b1;
  localparam [(1 - 1):0] const_value_x_000003 = 1'b0;
  localparam [(1 - 1):0] const_value_x_000004 = 1'b0;
  wire [(7 - 1):0] cast_69_18;
  wire [(7 - 1):0] cast_69_22;
  wire [(7 - 1):0] internal_s_69_5_addsub;
  localparam [(1 - 1):0] const_value_x_000005 = 1'b0;
  wire [(6 - 1):0] cast_internal_s_83_3_convert;
  localparam [(1 - 1):0] const_value_x_000006 = 1'b0;
  localparam [(3 - 1):0] const_value_x_000007 = 3'b000;
  assign a_17_32 = a;
  assign b_17_35 = b;
  assign op_mem_91_20_back = op_mem_91_20[0];
  always @(posedge clk)
    begin:proc_op_mem_91_20
      integer i;
      if (((ce == 1'b1) && (op_mem_91_20_push_front_pop_back_en == 1'b1)))
        begin
          op_mem_91_20[0] <= op_mem_91_20_front_din;
        end
    end
  assign cout_mem_92_22_back = cout_mem_92_22[0];
  always @(posedge clk)
    begin:proc_cout_mem_92_22
      integer i_x_000000;
      if (((ce == 1'b1) && (cout_mem_92_22_push_front_pop_back_en == 1'b1)))
        begin
          cout_mem_92_22[0] <= cout_mem_92_22_front_din;
        end
    end
  assign prev_mode_93_22_reg_i = prev_mode_93_22_next;
  assign prev_mode_93_22 = prev_mode_93_22_reg_o;
  defparam prev_mode_93_22_reg_inst.init_index = 2;
  defparam prev_mode_93_22_reg_inst.init_value = 3'b010;
  defparam prev_mode_93_22_reg_inst.latency = 1;
  defparam prev_mode_93_22_reg_inst.width = 3;
  synth_reg_w_init prev_mode_93_22_reg_inst(.ce(ce), .clk(clk), .clr(clr), .i(prev_mode_93_22_reg_i), .o(prev_mode_93_22_reg_o));
  assign cast_69_18 = {1'b0, a_17_32[5:0]};
  assign cast_69_22 = {1'b0, b_17_35[5:0]};
  assign internal_s_69_5_addsub = cast_69_18 + cast_69_22;
  assign cast_internal_s_83_3_convert = {internal_s_69_5_addsub[5:0]};
  assign op_mem_91_20_front_din = cast_internal_s_83_3_convert;
  assign op_mem_91_20_push_front_pop_back_en = 1'b1;
  assign cout_mem_92_22_front_din = const_value_x_000006;
  assign cout_mem_92_22_push_front_pop_back_en = 1'b1;
  assign prev_mode_93_22_next = const_value_x_000007;
  assign s = op_mem_91_20_back;
endmodule
 



module constant_5c1f45c6b5 (
  output [(6 - 1):0] op,
  input clk,
  input ce,
  input clr);
  assign op = 6'b100001;
endmodule
 



module counter_d2efb0480f (
  output [(6 - 1):0] op,
  input clk,
  input ce,
  input clr);
  reg [(6 - 1):0] count_reg_20_23 = 6'b000000;
  localparam [(1 - 1):0] const_value = 1'b1;
  localparam [(2 - 1):0] const_value_x_000000 = 2'b10;
  localparam [(6 - 1):0] const_value_x_000001 = 6'b000001;
  localparam [(6 - 1):0] const_value_x_000002 = 6'b000000;
  localparam [(6 - 1):0] const_value_x_000003 = 6'b000001;
  always @(posedge clk)
    begin:proc_count_reg_20_23
      if ((ce == 1'b1))
        begin
          count_reg_20_23 <= count_reg_20_23 + const_value_x_000003;
        end
    end
  assign op = count_reg_20_23;
endmodule
 



module reinterpret_60dd3f961d (
  input [(1 - 1):0] input_port,
  output [(1 - 1):0] output_port,
  input clk,
  input ce,
  input clr);
  wire input_port_1_40;
  wire [(1 - 1):0] output_port_7_5_convert;
  assign input_port_1_40 = input_port;
  assign output_port_7_5_convert = {input_port_1_40};
  assign output_port = output_port_7_5_convert;
endmodule
 



module constant_bd962aec1b (
  output [(6 - 1):0] op,
  input clk,
  input ce,
  input clr);
  assign op = 6'b000000;
endmodule
 



module mux_a6b0362cad (
  input [(1 - 1):0] sel,
  input [(6 - 1):0] d0,
  input [(6 - 1):0] d1,
  output [(6 - 1):0] y,
  input clk,
  input ce,
  input clr);
  wire sel_1_20;
  wire [(6 - 1):0] d0_1_24;
  wire [(6 - 1):0] d1_1_27;
  wire [(1 - 1):0] sel_internal_2_1_convert;
  reg [(6 - 1):0] unregy_join_6_1;
  assign sel_1_20 = sel;
  assign d0_1_24 = d0;
  assign d1_1_27 = d1;
  assign sel_internal_2_1_convert = {sel_1_20};
  always @(d0_1_24 or d1_1_27 or sel_internal_2_1_convert)
    begin:proc_switch_6_1
      case (sel_internal_2_1_convert)
        1'b0 :
          begin
            unregy_join_6_1 = d0_1_24;
          end
        default:
          begin
            unregy_join_6_1 = d1_1_27;
          end
      endcase
    end
  assign y = unregy_join_6_1;
endmodule
 



module addsub_0db3d998f7 (
  input [(6 - 1):0] a,
  input [(6 - 1):0] b,
  output [(6 - 1):0] s,
  input clk,
  input ce,
  input clr);
  wire [(6 - 1):0] a_17_32;
  wire [(6 - 1):0] b_17_35;
  localparam [(6 - 1):0] const_value = 6'b000000;
  reg [(6 - 1):0] op_mem_91_20[0:(1 - 1)];
  initial
    begin
      op_mem_91_20[0] = 6'b000000;
    end
  wire [(6 - 1):0] op_mem_91_20_front_din;
  wire [(6 - 1):0] op_mem_91_20_back;
  wire op_mem_91_20_push_front_pop_back_en;
  localparam [(1 - 1):0] const_value_x_000000 = 1'b0;
  reg [(1 - 1):0] cout_mem_92_22[0:(1 - 1)];
  initial
    begin
      cout_mem_92_22[0] = 1'b0;
    end
  wire [(1 - 1):0] cout_mem_92_22_front_din;
  wire [(1 - 1):0] cout_mem_92_22_back;
  wire cout_mem_92_22_push_front_pop_back_en;
  wire [(3 - 1):0] prev_mode_93_22_next;
  wire [(3 - 1):0] prev_mode_93_22;
  wire [(3 - 1):0] prev_mode_93_22_reg_i;
  wire [(3 - 1):0] prev_mode_93_22_reg_o;
  localparam [(1 - 1):0] const_value_x_000001 = 1'b0;
  localparam [(1 - 1):0] const_value_x_000002 = 1'b1;
  localparam [(1 - 1):0] const_value_x_000003 = 1'b0;
  localparam [(1 - 1):0] const_value_x_000004 = 1'b0;
  wire [(7 - 1):0] cast_69_18;
  wire [(7 - 1):0] cast_69_22;
  wire [(7 - 1):0] internal_s_69_5_addsub;
  localparam [(1 - 1):0] const_value_x_000005 = 1'b0;
  wire [(6 - 1):0] cast_internal_s_83_3_convert;
  localparam [(1 - 1):0] const_value_x_000006 = 1'b0;
  localparam [(3 - 1):0] const_value_x_000007 = 3'b000;
  assign a_17_32 = a;
  assign b_17_35 = b;
  assign op_mem_91_20_back = op_mem_91_20[0];
  always @(posedge clk)
    begin:proc_op_mem_91_20
      integer i;
      if (((ce == 1'b1) && (op_mem_91_20_push_front_pop_back_en == 1'b1)))
        begin
          op_mem_91_20[0] <= op_mem_91_20_front_din;
        end
    end
  assign cout_mem_92_22_back = cout_mem_92_22[0];
  always @(posedge clk)
    begin:proc_cout_mem_92_22
      integer i_x_000000;
      if (((ce == 1'b1) && (cout_mem_92_22_push_front_pop_back_en == 1'b1)))
        begin
          cout_mem_92_22[0] <= cout_mem_92_22_front_din;
        end
    end
  assign prev_mode_93_22_reg_i = prev_mode_93_22_next;
  assign prev_mode_93_22 = prev_mode_93_22_reg_o;
  defparam prev_mode_93_22_reg_inst.init_index = 2;
  defparam prev_mode_93_22_reg_inst.init_value = 3'b010;
  defparam prev_mode_93_22_reg_inst.latency = 1;
  defparam prev_mode_93_22_reg_inst.width = 3;
  synth_reg_w_init prev_mode_93_22_reg_inst(.ce(ce), .clk(clk), .clr(clr), .i(prev_mode_93_22_reg_i), .o(prev_mode_93_22_reg_o));
  assign cast_69_18 = {1'b0, a_17_32[5:0]};
  assign cast_69_22 = {1'b0, b_17_35[5:0]};
  assign internal_s_69_5_addsub = cast_69_18 + cast_69_22;
  assign cast_internal_s_83_3_convert = {internal_s_69_5_addsub[5:0]};
  assign op_mem_91_20_push_front_pop_back_en = 1'b0;
  assign cout_mem_92_22_push_front_pop_back_en = 1'b0;
  assign prev_mode_93_22_next = const_value_x_000007;
  assign s = cast_internal_s_83_3_convert;
endmodule
 



module constant_df40b9ce05 (
  output [(6 - 1):0] op,
  input clk,
  input ce,
  input clr);
  assign op = 6'b000001;
endmodule
 



module mux_f8a4f48eeb (
  input [(2 - 1):0] sel,
  input [(6 - 1):0] d0,
  input [(6 - 1):0] d1,
  input [(6 - 1):0] d2,
  input [(6 - 1):0] d3,
  output [(6 - 1):0] y,
  input clk,
  input ce,
  input clr);
  wire [(2 - 1):0] sel_1_20;
  wire [(6 - 1):0] d0_1_24;
  wire [(6 - 1):0] d1_1_27;
  wire [(6 - 1):0] d2_1_30;
  wire [(6 - 1):0] d3_1_33;
  reg [(6 - 1):0] unregy_join_6_1;
  assign sel_1_20 = sel;
  assign d0_1_24 = d0;
  assign d1_1_27 = d1;
  assign d2_1_30 = d2;
  assign d3_1_33 = d3;
  always @(d0_1_24 or d1_1_27 or d2_1_30 or d3_1_33 or sel_1_20)
    begin:proc_switch_6_1
      case (sel_1_20)
        2'b00 :
          begin
            unregy_join_6_1 = d0_1_24;
          end
        2'b01 :
          begin
            unregy_join_6_1 = d1_1_27;
          end
        2'b10 :
          begin
            unregy_join_6_1 = d2_1_30;
          end
        default:
          begin
            unregy_join_6_1 = d3_1_33;
          end
      endcase
    end
  assign y = unregy_join_6_1;
endmodule
 



module logical_28d385d867 (
  input [(1 - 1):0] d0,
  input [(1 - 1):0] d1,
  output [(1 - 1):0] y,
  input clk,
  input ce,
  input clr);
  wire d0_1_24;
  wire d1_1_27;
  wire fully_2_1_bit;
  assign d0_1_24 = d0;
  assign d1_1_27 = d1;
  assign fully_2_1_bit = d0_1_24 & d1_1_27;
  assign y = fully_2_1_bit;
endmodule
 



module logical_7970a672aa (
  input [(1 - 1):0] d0,
  input [(1 - 1):0] d1,
  output [(1 - 1):0] y,
  input clk,
  input ce,
  input clr);
  wire d0_1_24;
  wire d1_1_27;
  wire fully_2_1_bit;
  assign d0_1_24 = d0;
  assign d1_1_27 = d1;
  assign fully_2_1_bit = d0_1_24 | d1_1_27;
  assign y = fully_2_1_bit;
endmodule
 



module constant_440fb70725 (
  output [(17 - 1):0] op,
  input clk,
  input ce,
  input clr);
  assign op = 17'b11111111111111111;
endmodule
 



module mux_2fa1417e01 (
  input [(1 - 1):0] sel,
  input [(17 - 1):0] d0,
  input [(17 - 1):0] d1,
  output [(17 - 1):0] y,
  input clk,
  input ce,
  input clr);
  wire sel_1_20;
  wire [(17 - 1):0] d0_1_24;
  wire [(17 - 1):0] d1_1_27;
  wire [(1 - 1):0] sel_internal_2_1_convert;
  reg [(17 - 1):0] unregy_join_6_1;
  assign sel_1_20 = sel;
  assign d0_1_24 = d0;
  assign d1_1_27 = d1;
  assign sel_internal_2_1_convert = {sel_1_20};
  always @(d0_1_24 or d1_1_27 or sel_internal_2_1_convert)
    begin:proc_switch_6_1
      case (sel_internal_2_1_convert)
        1'b0 :
          begin
            unregy_join_6_1 = d0_1_24;
          end
        default:
          begin
            unregy_join_6_1 = d1_1_27;
          end
      endcase
    end
  assign y = unregy_join_6_1;
endmodule
 



module addsub_710287cc09 (
  input [(16 - 1):0] a,
  input [(16 - 1):0] b,
  output [(17 - 1):0] s,
  input clk,
  input ce,
  input clr);
  wire [(16 - 1):0] a_17_32;
  wire [(16 - 1):0] b_17_35;
  localparam [(17 - 1):0] const_value = 17'b00000000000000000;
  reg [(17 - 1):0] op_mem_91_20[0:(1 - 1)];
  initial
    begin
      op_mem_91_20[0] = 17'b00000000000000000;
    end
  wire [(17 - 1):0] op_mem_91_20_front_din;
  wire [(17 - 1):0] op_mem_91_20_back;
  wire op_mem_91_20_push_front_pop_back_en;
  localparam [(1 - 1):0] const_value_x_000000 = 1'b0;
  reg [(1 - 1):0] cout_mem_92_22[0:(1 - 1)];
  initial
    begin
      cout_mem_92_22[0] = 1'b0;
    end
  wire [(1 - 1):0] cout_mem_92_22_front_din;
  wire [(1 - 1):0] cout_mem_92_22_back;
  wire cout_mem_92_22_push_front_pop_back_en;
  wire [(3 - 1):0] prev_mode_93_22_next;
  wire [(3 - 1):0] prev_mode_93_22;
  wire [(3 - 1):0] prev_mode_93_22_reg_i;
  wire [(3 - 1):0] prev_mode_93_22_reg_o;
  localparam [(1 - 1):0] const_value_x_000001 = 1'b0;
  localparam [(1 - 1):0] const_value_x_000002 = 1'b1;
  localparam [(1 - 1):0] const_value_x_000003 = 1'b0;
  localparam [(1 - 1):0] const_value_x_000004 = 1'b0;
  wire [(17 - 1):0] cast_69_18;
  wire [(17 - 1):0] cast_69_22;
  wire [(17 - 1):0] internal_s_69_5_addsub;
  localparam [(1 - 1):0] const_value_x_000005 = 1'b0;
  localparam [(1 - 1):0] const_value_x_000006 = 1'b0;
  localparam [(3 - 1):0] const_value_x_000007 = 3'b000;
  assign a_17_32 = a;
  assign b_17_35 = b;
  assign op_mem_91_20_back = op_mem_91_20[0];
  always @(posedge clk)
    begin:proc_op_mem_91_20
      integer i;
      if (((ce == 1'b1) && (op_mem_91_20_push_front_pop_back_en == 1'b1)))
        begin
          op_mem_91_20[0] <= op_mem_91_20_front_din;
        end
    end
  assign cout_mem_92_22_back = cout_mem_92_22[0];
  always @(posedge clk)
    begin:proc_cout_mem_92_22
      integer i_x_000000;
      if (((ce == 1'b1) && (cout_mem_92_22_push_front_pop_back_en == 1'b1)))
        begin
          cout_mem_92_22[0] <= cout_mem_92_22_front_din;
        end
    end
  assign prev_mode_93_22_reg_i = prev_mode_93_22_next;
  assign prev_mode_93_22 = prev_mode_93_22_reg_o;
  defparam prev_mode_93_22_reg_inst.init_index = 2;
  defparam prev_mode_93_22_reg_inst.init_value = 3'b010;
  defparam prev_mode_93_22_reg_inst.latency = 1;
  defparam prev_mode_93_22_reg_inst.width = 3;
  synth_reg_w_init prev_mode_93_22_reg_inst(.ce(ce), .clk(clk), .clr(clr), .i(prev_mode_93_22_reg_i), .o(prev_mode_93_22_reg_o));
  assign cast_69_18 = {1'b0, a_17_32[15:0]};
  assign cast_69_22 = {1'b0, b_17_35[15:0]};
  assign internal_s_69_5_addsub = cast_69_18 + cast_69_22;
  assign op_mem_91_20_push_front_pop_back_en = 1'b0;
  assign cout_mem_92_22_push_front_pop_back_en = 1'b0;
  assign prev_mode_93_22_next = const_value_x_000007;
  assign s = internal_s_69_5_addsub;
endmodule
 



module mux_272b8a229a (
  input [(1 - 1):0] sel,
  input [(16 - 1):0] d0,
  input [(17 - 1):0] d1,
  output [(17 - 1):0] y,
  input clk,
  input ce,
  input clr);
  wire sel_1_20;
  wire [(16 - 1):0] d0_1_24;
  wire [(17 - 1):0] d1_1_27;
  wire [(1 - 1):0] sel_internal_2_1_convert;
  reg [(17 - 1):0] unregy_join_6_1;
  assign sel_1_20 = sel;
  assign d0_1_24 = d0;
  assign d1_1_27 = d1;
  assign sel_internal_2_1_convert = {sel_1_20};
  always @(d0_1_24 or d1_1_27 or sel_internal_2_1_convert)
    begin:proc_switch_6_1
      case (sel_internal_2_1_convert)
        1'b0 :
          begin
            unregy_join_6_1 = {1'b0, d0_1_24[15:0]};
          end
        default:
          begin
            unregy_join_6_1 = d1_1_27;
          end
      endcase
    end
  assign y = unregy_join_6_1;
endmodule
 



module relational_c8292218b1 (
  input [(16 - 1):0] a,
  input [(17 - 1):0] b,
  output [(1 - 1):0] op,
  input clk,
  input ce,
  input clr);
  wire [(16 - 1):0] a_1_31;
  wire [(17 - 1):0] b_1_34;
  localparam [(1 - 1):0] const_value = 1'b1;
  wire [(17 - 1):0] cast_22_12;
  wire result_22_3_rel;
  assign a_1_31 = a;
  assign b_1_34 = b;
  assign cast_22_12 = {1'b0, a_1_31[15:0]};
  assign result_22_3_rel = cast_22_12 >= b_1_34;
  assign op = result_22_3_rel;
endmodule
 



module relational_a2b8e7c11c (
  input [(16 - 1):0] a,
  input [(16 - 1):0] b,
  output [(1 - 1):0] op,
  input clk,
  input ce,
  input clr);
  wire [(16 - 1):0] a_1_31;
  wire [(16 - 1):0] b_1_34;
  localparam [(1 - 1):0] const_value = 1'b1;
  wire result_18_3_rel;
  assign a_1_31 = a;
  assign b_1_34 = b;
  assign result_18_3_rel = a_1_31 > b_1_34;
  assign op = result_18_3_rel;
endmodule
 



module shift_f768896000 (
  input [(16 - 1):0] ip,
  output [(16 - 1):0] op,
  input clk,
  input ce,
  input clr);
  wire [(16 - 1):0] ip_1_23;
  localparam [(16 - 1):0] const_value = 16'b0000000000000000;
  reg [(16 - 1):0] op_mem_46_20[0:(1 - 1)];
  initial
    begin
      op_mem_46_20[0] = 16'b0000000000000000;
    end
  wire [(16 - 1):0] op_mem_46_20_front_din;
  wire [(16 - 1):0] op_mem_46_20_back;
  wire op_mem_46_20_push_front_pop_back_en;
  localparam [(1 - 1):0] const_value_x_000000 = 1'b1;
  wire [(16 - 1):0] cast_internal_ip_36_3_convert;
  assign ip_1_23 = ip;
  assign op_mem_46_20_back = op_mem_46_20[0];
  always @(posedge clk)
    begin:proc_op_mem_46_20
      integer i;
      if (((ce == 1'b1) && (op_mem_46_20_push_front_pop_back_en == 1'b1)))
        begin
          op_mem_46_20[0] <= op_mem_46_20_front_din;
        end
    end
  assign cast_internal_ip_36_3_convert = {8'b00000000, ip_1_23[15:8]};
  assign op_mem_46_20_push_front_pop_back_en = 1'b0;
  assign op = cast_internal_ip_36_3_convert;
endmodule
 



module addsub_bae7b67bb9 (
  input [(16 - 1):0] a,
  input [(16 - 1):0] b,
  output [(17 - 1):0] s,
  input clk,
  input ce,
  input clr);
  wire [(16 - 1):0] a_17_32;
  wire [(16 - 1):0] b_17_35;
  localparam signed [(17 - 1):0] const_value = 17'sb00000000000000000;
  reg signed [(17 - 1):0] op_mem_91_20[0:(1 - 1)];
  initial
    begin
      op_mem_91_20[0] = 17'b00000000000000000;
    end
  wire signed [(17 - 1):0] op_mem_91_20_front_din;
  wire signed [(17 - 1):0] op_mem_91_20_back;
  wire op_mem_91_20_push_front_pop_back_en;
  localparam [(1 - 1):0] const_value_x_000000 = 1'b0;
  reg [(1 - 1):0] cout_mem_92_22[0:(1 - 1)];
  initial
    begin
      cout_mem_92_22[0] = 1'b0;
    end
  wire [(1 - 1):0] cout_mem_92_22_front_din;
  wire [(1 - 1):0] cout_mem_92_22_back;
  wire cout_mem_92_22_push_front_pop_back_en;
  wire [(3 - 1):0] prev_mode_93_22_next;
  wire [(3 - 1):0] prev_mode_93_22;
  wire [(3 - 1):0] prev_mode_93_22_reg_i;
  wire [(3 - 1):0] prev_mode_93_22_reg_o;
  localparam [(1 - 1):0] const_value_x_000001 = 1'b0;
  localparam [(1 - 1):0] const_value_x_000002 = 1'b1;
  localparam [(1 - 1):0] const_value_x_000003 = 1'b0;
  localparam [(1 - 1):0] const_value_x_000004 = 1'b0;
  wire signed [(18 - 1):0] cast_71_18;
  wire signed [(18 - 1):0] cast_71_22;
  wire signed [(18 - 1):0] internal_s_71_5_addsub;
  localparam [(1 - 1):0] const_value_x_000005 = 1'b0;
  wire signed [(17 - 1):0] cast_internal_s_83_3_convert;
  localparam [(1 - 1):0] const_value_x_000006 = 1'b0;
  localparam [(3 - 1):0] const_value_x_000007 = 3'b000;
  assign a_17_32 = a;
  assign b_17_35 = b;
  assign op_mem_91_20_back = op_mem_91_20[0];
  always @(posedge clk)
    begin:proc_op_mem_91_20
      integer i;
      if (((ce == 1'b1) && (op_mem_91_20_push_front_pop_back_en == 1'b1)))
        begin
          op_mem_91_20[0] <= op_mem_91_20_front_din;
        end
    end
  assign cout_mem_92_22_back = cout_mem_92_22[0];
  always @(posedge clk)
    begin:proc_cout_mem_92_22
      integer i_x_000000;
      if (((ce == 1'b1) && (cout_mem_92_22_push_front_pop_back_en == 1'b1)))
        begin
          cout_mem_92_22[0] <= cout_mem_92_22_front_din;
        end
    end
  assign prev_mode_93_22_reg_i = prev_mode_93_22_next;
  assign prev_mode_93_22 = prev_mode_93_22_reg_o;
  defparam prev_mode_93_22_reg_inst.init_index = 2;
  defparam prev_mode_93_22_reg_inst.init_value = 3'b010;
  defparam prev_mode_93_22_reg_inst.latency = 1;
  defparam prev_mode_93_22_reg_inst.width = 3;
  synth_reg_w_init prev_mode_93_22_reg_inst(.ce(ce), .clk(clk), .clr(clr), .i(prev_mode_93_22_reg_i), .o(prev_mode_93_22_reg_o));
  assign cast_71_18 = {2'b00, a_17_32[15:0]};
  assign cast_71_22 = {2'b00, b_17_35[15:0]};
  assign internal_s_71_5_addsub = cast_71_18 - cast_71_22;
  assign cast_internal_s_83_3_convert = {internal_s_71_5_addsub[16:0]};
  assign op_mem_91_20_front_din = cast_internal_s_83_3_convert;
  assign op_mem_91_20_push_front_pop_back_en = 1'b1;
  assign cout_mem_92_22_front_din = const_value_x_000006;
  assign cout_mem_92_22_push_front_pop_back_en = 1'b1;
  assign prev_mode_93_22_next = const_value_x_000007;
  assign s = op_mem_91_20_back;
endmodule
 



module reinterpret_286cd958f4 (
  input [(29 - 1):0] input_port,
  output [(29 - 1):0] output_port,
  input clk,
  input ce,
  input clr);
  wire signed [(29 - 1):0] input_port_1_40;
  assign input_port_1_40 = input_port;
  assign output_port = input_port_1_40;
endmodule
 



module concat_7e18b92ffa (
  input [(16 - 1):0] in0,
  input [(16 - 1):0] in1,
  output [(32 - 1):0] y,
  input clk,
  input ce,
  input clr);
  wire [(16 - 1):0] in0_1_23;
  wire [(16 - 1):0] in1_1_27;
  wire [(32 - 1):0] y_2_1_concat;
  assign in0_1_23 = in0;
  assign in1_1_27 = in1;
  assign y_2_1_concat = {in0_1_23, in1_1_27};
  assign y = y_2_1_concat;
endmodule
 



module constant_815959c413 (
  output [(9 - 1):0] op,
  input clk,
  input ce,
  input clr);
  assign op = 9'b000100001;
endmodule
 



module addsub_c36a8bb0bd (
  input [(16 - 1):0] a,
  input [(16 - 1):0] b,
  output [(16 - 1):0] s,
  input clk,
  input ce,
  input clr);
  wire signed [(16 - 1):0] a_17_32;
  wire signed [(16 - 1):0] b_17_35;
  localparam signed [(16 - 1):0] const_value = 16'sb0000000000000000;
  reg signed [(16 - 1):0] op_mem_91_20[0:(1 - 1)];
  initial
    begin
      op_mem_91_20[0] = 16'b0000000000000000;
    end
  wire signed [(16 - 1):0] op_mem_91_20_front_din;
  wire signed [(16 - 1):0] op_mem_91_20_back;
  wire op_mem_91_20_push_front_pop_back_en;
  localparam [(1 - 1):0] const_value_x_000000 = 1'b0;
  reg [(1 - 1):0] cout_mem_92_22[0:(1 - 1)];
  initial
    begin
      cout_mem_92_22[0] = 1'b0;
    end
  wire [(1 - 1):0] cout_mem_92_22_front_din;
  wire [(1 - 1):0] cout_mem_92_22_back;
  wire cout_mem_92_22_push_front_pop_back_en;
  wire [(3 - 1):0] prev_mode_93_22_next;
  wire [(3 - 1):0] prev_mode_93_22;
  wire [(3 - 1):0] prev_mode_93_22_reg_i;
  wire [(3 - 1):0] prev_mode_93_22_reg_o;
  localparam [(1 - 1):0] const_value_x_000001 = 1'b0;
  localparam [(1 - 1):0] const_value_x_000002 = 1'b1;
  localparam [(1 - 1):0] const_value_x_000003 = 1'b0;
  localparam [(1 - 1):0] const_value_x_000004 = 1'b0;
  wire signed [(17 - 1):0] cast_71_18;
  wire signed [(17 - 1):0] cast_71_22;
  wire signed [(17 - 1):0] internal_s_71_5_addsub;
  localparam [(1 - 1):0] const_value_x_000005 = 1'b0;
  wire signed [(16 - 1):0] cast_internal_s_83_3_convert;
  localparam [(1 - 1):0] const_value_x_000006 = 1'b0;
  localparam [(3 - 1):0] const_value_x_000007 = 3'b000;
  assign a_17_32 = a;
  assign b_17_35 = b;
  assign op_mem_91_20_back = op_mem_91_20[0];
  always @(posedge clk)
    begin:proc_op_mem_91_20
      integer i;
      if (((ce == 1'b1) && (op_mem_91_20_push_front_pop_back_en == 1'b1)))
        begin
          op_mem_91_20[0] <= op_mem_91_20_front_din;
        end
    end
  assign cout_mem_92_22_back = cout_mem_92_22[0];
  always @(posedge clk)
    begin:proc_cout_mem_92_22
      integer i_x_000000;
      if (((ce == 1'b1) && (cout_mem_92_22_push_front_pop_back_en == 1'b1)))
        begin
          cout_mem_92_22[0] <= cout_mem_92_22_front_din;
        end
    end
  assign prev_mode_93_22_reg_i = prev_mode_93_22_next;
  assign prev_mode_93_22 = prev_mode_93_22_reg_o;
  defparam prev_mode_93_22_reg_inst.init_index = 2;
  defparam prev_mode_93_22_reg_inst.init_value = 3'b010;
  defparam prev_mode_93_22_reg_inst.latency = 1;
  defparam prev_mode_93_22_reg_inst.width = 3;
  synth_reg_w_init prev_mode_93_22_reg_inst(.ce(ce), .clk(clk), .clr(clr), .i(prev_mode_93_22_reg_i), .o(prev_mode_93_22_reg_o));
  assign cast_71_18 = {{1{a_17_32[15]}}, a_17_32[15:0]};
  assign cast_71_22 = {{1{b_17_35[15]}}, b_17_35[15:0]};
  assign internal_s_71_5_addsub = cast_71_18 - cast_71_22;
  assign cast_internal_s_83_3_convert = {internal_s_71_5_addsub[15:0]};
  assign op_mem_91_20_front_din = cast_internal_s_83_3_convert;
  assign op_mem_91_20_push_front_pop_back_en = 1'b1;
  assign cout_mem_92_22_front_din = const_value_x_000006;
  assign cout_mem_92_22_push_front_pop_back_en = 1'b1;
  assign prev_mode_93_22_next = const_value_x_000007;
  assign s = op_mem_91_20_back;
endmodule
 

// Generated from Simulink block "pc_cfr_spartan6_v1_2/pc_cfr_spartan6/pc_cfr_iteration_1/c_pulses/cmplx_mac/cmplx_mult"

module cmplx_mult_module_dcbbb51afd (
  ai,
  ar,
  bi,
  br,
  ce_1,
  clk_1,
  pi,
  pr
);

  input [15:0] ai;
  input [15:0] ar;
  input [15:0] bi;
  input [15:0] br;
  input [0:0] ce_1;
  input [0:0] clk_1;
  output [15:0] pi;
  output [15:0] pr;

  wire [15:0] addsub1_s_net_x0;
  wire [15:0] addsub2_s_net_x0;
  wire [0:0] b_13_y_net;
  wire [0:0] b_1_y_net;
  wire [15:0] b_29_14_y_net;
  wire [15:0] b_29_1_y_net;
  wire [0:0] ce_1_sg_x0;
  wire [0:0] clk_1_sg_x0;
  wire [17:0] convert3_dout_net;
  wire [17:0] convert4_dout_net;
  wire [17:0] convert5_dout_net;
  wire [17:0] convert6_dout_net;
  wire [15:0] delay1_q_net_x0;
  wire [15:0] delay4_q_net_x0;
  wire [47:0] dsp48a1_p_net;
  wire [47:0] dsp48a2_p_net;
  wire [47:0] dsp48a3_pcout_net;
  wire [47:0] dsp48a_pcout_net;
  wire [7:0] opmode1_op_net;
  wire [7:0] opmode2_op_net;
  wire [7:0] opmode3_op_net;
  wire [7:0] opmode_op_net;
  wire [0:0] register1_q_net;
  wire [15:0] register2_q_net;
  wire [0:0] register3_q_net;
  wire [15:0] register_q_net;
  wire [15:0] reinterpret1_output_port_net_x0;
  wire [15:0] reinterpret_output_port_net_x0;

  assign reinterpret_output_port_net_x0 = ai;
  assign reinterpret1_output_port_net_x0 = ar;
  assign delay1_q_net_x0 = bi;
  assign delay4_q_net_x0 = br;
  assign ce_1_sg_x0 = ce_1;
  assign clk_1_sg_x0 = clk_1;
  assign pi = addsub2_s_net_x0;
  assign pr = addsub1_s_net_x0;


  addsub_f4effc1419  addsub1 (
    .a(register_q_net),
    .b(register1_q_net),
    .ce(ce_1_sg_x0),
    .clk(clk_1_sg_x0),
    .clr(1'b0),
    .s(addsub1_s_net_x0)
  );

  addsub_f4effc1419  addsub2 (
    .a(register2_q_net),
    .b(register3_q_net),
    .ce(ce_1_sg_x0),
    .clk(clk_1_sg_x0),
    .clr(1'b0),
    .s(addsub2_s_net_x0)
  );

  xlslice #(

    .new_lsb(13),
    .new_msb(13),
    .x_width(48),
    .y_width(1))
  b_1 (
    .x(dsp48a2_p_net),
    .y(b_1_y_net)
  );

  xlslice #(

    .new_lsb(13),
    .new_msb(13),
    .x_width(48),
    .y_width(1))
  b_13 (
    .x(dsp48a1_p_net),
    .y(b_13_y_net)
  );

  xlslice #(

    .new_lsb(14),
    .new_msb(29),
    .x_width(48),
    .y_width(16))
  b_29_1 (
    .x(dsp48a2_p_net),
    .y(b_29_1_y_net)
  );

  xlslice #(

    .new_lsb(14),
    .new_msb(29),
    .x_width(48),
    .y_width(16))
  b_29_14 (
    .x(dsp48a1_p_net),
    .y(b_29_14_y_net)
  );

  xlconvert #(

    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(0),
    .din_width(16),
    .dout_arith(2),
    .dout_bin_pt(0),
    .dout_width(18),
    .latency(0),
    .overflow(`xlWrap),
    .quantization(`xlTruncate))
  convert3 (
    .ce(ce_1_sg_x0),
    .clk(clk_1_sg_x0),
    .clr(1'b0),
    .din(reinterpret_output_port_net_x0),
    .en(1'b1),
    .dout(convert3_dout_net)
  );

  xlconvert #(

    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(0),
    .din_width(16),
    .dout_arith(2),
    .dout_bin_pt(0),
    .dout_width(18),
    .latency(0),
    .overflow(`xlWrap),
    .quantization(`xlTruncate))
  convert4 (
    .ce(ce_1_sg_x0),
    .clk(clk_1_sg_x0),
    .clr(1'b0),
    .din(delay1_q_net_x0),
    .en(1'b1),
    .dout(convert4_dout_net)
  );

  xlconvert #(

    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(0),
    .din_width(16),
    .dout_arith(2),
    .dout_bin_pt(0),
    .dout_width(18),
    .latency(0),
    .overflow(`xlWrap),
    .quantization(`xlTruncate))
  convert5 (
    .ce(ce_1_sg_x0),
    .clk(clk_1_sg_x0),
    .clr(1'b0),
    .din(reinterpret1_output_port_net_x0),
    .en(1'b1),
    .dout(convert5_dout_net)
  );

  xlconvert #(

    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(0),
    .din_width(16),
    .dout_arith(2),
    .dout_bin_pt(0),
    .dout_width(18),
    .latency(0),
    .overflow(`xlWrap),
    .quantization(`xlTruncate))
  convert6 (
    .ce(ce_1_sg_x0),
    .clk(clk_1_sg_x0),
    .clr(1'b0),
    .din(delay4_q_net_x0),
    .en(1'b1),
    .dout(convert6_dout_net)
  );

  xldsp48a #(

    .a0reg(1),
    .a1reg(1),
    .b0reg(1),
    .b1reg(1),
    .c_use_c(0),
    .c_use_cea(0),
    .c_use_ceb(0),
    .c_use_cec(0),
    .c_use_cecarryin(0),
    .c_use_ced(0),
    .c_use_cem(0),
    .c_use_ceopmode(0),
    .c_use_cep(0),
    .c_use_d(0),
    .c_use_en(0),
    .c_use_pcin(0),
    .c_use_rst(0),
    .c_use_rsta(0),
    .c_use_rstb(0),
    .c_use_rstc(0),
    .c_use_rstcarryin(0),
    .c_use_rstd(0),
    .c_use_rstm(0),
    .c_use_rstopmode(0),
    .c_use_rstp(0),
    .carryinreg(0),
    .carryinsel("OPMODE5"),
    .creg(0),
    .dreg(0),
    .mreg(1),
    .opmodereg(1),
    .preg(1),
    .use_c_port(0),
    .use_op(1))
  dsp48a (
    .a(convert5_dout_net),
    .b(convert6_dout_net),
    .carryin(1'b0),
    .ce(ce_1_sg_x0),
    .cea(1'b1),
    .ceb(1'b1),
    .cec(1'b1),
    .cecarryin(1'b1),
    .ced(1'b1),
    .cem(1'b1),
    .ceopmode(1'b1),
    .cep(1'b1),
    .clk(clk_1_sg_x0),
    .en(1'b1),
    .op(opmode1_op_net),
    .rst(1'b0),
    .rsta(1'b0),
    .rstb(1'b0),
    .rstc(1'b0),
    .rstcarryin(1'b0),
    .rstd(1'b0),
    .rstm(1'b0),
    .rstopmode(1'b0),
    .rstp(1'b0),
    .subtract(1'b0),
    .pcout(dsp48a_pcout_net)
  );

  xldsp48a #(

    .a0reg(1),
    .a1reg(1),
    .b0reg(1),
    .b1reg(1),
    .c_use_c(0),
    .c_use_cea(0),
    .c_use_ceb(0),
    .c_use_cec(0),
    .c_use_cecarryin(0),
    .c_use_ced(0),
    .c_use_cem(0),
    .c_use_ceopmode(0),
    .c_use_cep(0),
    .c_use_d(0),
    .c_use_en(0),
    .c_use_pcin(1),
    .c_use_rst(0),
    .c_use_rsta(0),
    .c_use_rstb(0),
    .c_use_rstc(0),
    .c_use_rstcarryin(0),
    .c_use_rstd(0),
    .c_use_rstm(0),
    .c_use_rstopmode(0),
    .c_use_rstp(0),
    .carryinreg(0),
    .carryinsel("OPMODE5"),
    .creg(0),
    .dreg(0),
    .mreg(1),
    .opmodereg(1),
    .preg(1),
    .use_c_port(0),
    .use_op(1))
  dsp48a1 (
    .a(convert3_dout_net),
    .b(convert4_dout_net),
    .carryin(1'b0),
    .ce(ce_1_sg_x0),
    .cea(1'b1),
    .ceb(1'b1),
    .cec(1'b1),
    .cecarryin(1'b1),
    .ced(1'b1),
    .cem(1'b1),
    .ceopmode(1'b1),
    .cep(1'b1),
    .clk(clk_1_sg_x0),
    .en(1'b1),
    .op(opmode_op_net),
    .pcin(dsp48a_pcout_net),
    .rst(1'b0),
    .rsta(1'b0),
    .rstb(1'b0),
    .rstc(1'b0),
    .rstcarryin(1'b0),
    .rstd(1'b0),
    .rstm(1'b0),
    .rstopmode(1'b0),
    .rstp(1'b0),
    .subtract(1'b0),
    .p(dsp48a1_p_net)
  );

  xldsp48a #(

    .a0reg(1),
    .a1reg(1),
    .b0reg(1),
    .b1reg(1),
    .c_use_c(0),
    .c_use_cea(0),
    .c_use_ceb(0),
    .c_use_cec(0),
    .c_use_cecarryin(0),
    .c_use_ced(0),
    .c_use_cem(0),
    .c_use_ceopmode(0),
    .c_use_cep(0),
    .c_use_d(0),
    .c_use_en(0),
    .c_use_pcin(1),
    .c_use_rst(0),
    .c_use_rsta(0),
    .c_use_rstb(0),
    .c_use_rstc(0),
    .c_use_rstcarryin(0),
    .c_use_rstd(0),
    .c_use_rstm(0),
    .c_use_rstopmode(0),
    .c_use_rstp(0),
    .carryinreg(0),
    .carryinsel("OPMODE5"),
    .creg(0),
    .dreg(0),
    .mreg(1),
    .opmodereg(1),
    .preg(1),
    .use_c_port(0),
    .use_op(1))
  dsp48a2 (
    .a(convert5_dout_net),
    .b(convert4_dout_net),
    .carryin(1'b0),
    .ce(ce_1_sg_x0),
    .cea(1'b1),
    .ceb(1'b1),
    .cec(1'b1),
    .cecarryin(1'b1),
    .ced(1'b1),
    .cem(1'b1),
    .ceopmode(1'b1),
    .cep(1'b1),
    .clk(clk_1_sg_x0),
    .en(1'b1),
    .op(opmode2_op_net),
    .pcin(dsp48a3_pcout_net),
    .rst(1'b0),
    .rsta(1'b0),
    .rstb(1'b0),
    .rstc(1'b0),
    .rstcarryin(1'b0),
    .rstd(1'b0),
    .rstm(1'b0),
    .rstopmode(1'b0),
    .rstp(1'b0),
    .subtract(1'b0),
    .p(dsp48a2_p_net)
  );

  xldsp48a #(

    .a0reg(1),
    .a1reg(1),
    .b0reg(1),
    .b1reg(1),
    .c_use_c(0),
    .c_use_cea(0),
    .c_use_ceb(0),
    .c_use_cec(0),
    .c_use_cecarryin(0),
    .c_use_ced(0),
    .c_use_cem(0),
    .c_use_ceopmode(0),
    .c_use_cep(0),
    .c_use_d(0),
    .c_use_en(0),
    .c_use_pcin(0),
    .c_use_rst(0),
    .c_use_rsta(0),
    .c_use_rstb(0),
    .c_use_rstc(0),
    .c_use_rstcarryin(0),
    .c_use_rstd(0),
    .c_use_rstm(0),
    .c_use_rstopmode(0),
    .c_use_rstp(0),
    .carryinreg(0),
    .carryinsel("OPMODE5"),
    .creg(0),
    .dreg(0),
    .mreg(1),
    .opmodereg(1),
    .preg(1),
    .use_c_port(0),
    .use_op(1))
  dsp48a3 (
    .a(convert6_dout_net),
    .b(convert3_dout_net),
    .carryin(1'b0),
    .ce(ce_1_sg_x0),
    .cea(1'b1),
    .ceb(1'b1),
    .cec(1'b1),
    .cecarryin(1'b1),
    .ced(1'b1),
    .cem(1'b1),
    .ceopmode(1'b1),
    .cep(1'b1),
    .clk(clk_1_sg_x0),
    .en(1'b1),
    .op(opmode3_op_net),
    .rst(1'b0),
    .rsta(1'b0),
    .rstb(1'b0),
    .rstc(1'b0),
    .rstcarryin(1'b0),
    .rstd(1'b0),
    .rstm(1'b0),
    .rstopmode(1'b0),
    .rstp(1'b0),
    .subtract(1'b0),
    .pcout(dsp48a3_pcout_net)
  );

  opmode_2165f420d9  opmode (
    .ce(1'b0),
    .clk(1'b0),
    .clr(1'b0),
    .op(opmode_op_net)
  );

  opmode_5fb0570878  opmode1 (
    .ce(1'b0),
    .clk(1'b0),
    .clr(1'b0),
    .op(opmode1_op_net)
  );

  opmode_bb63313631  opmode2 (
    .ce(1'b0),
    .clk(1'b0),
    .clr(1'b0),
    .op(opmode2_op_net)
  );

  opmode_5fb0570878  opmode3 (
    .ce(1'b0),
    .clk(1'b0),
    .clr(1'b0),
    .op(opmode3_op_net)
  );

  xlregister #(

    .d_width(1),
    .init_value(1'b0))
  register1 (
    .ce(ce_1_sg_x0),
    .clk(clk_1_sg_x0),
    .d(b_13_y_net),
    .en(1'b1),
    .rst(1'b0),
    .q(register1_q_net)
  );

  xlregister #(

    .d_width(16),
    .init_value(16'b0000000000000000))
  register2 (
    .ce(ce_1_sg_x0),
    .clk(clk_1_sg_x0),
    .d(b_29_1_y_net),
    .en(1'b1),
    .rst(1'b0),
    .q(register2_q_net)
  );

  xlregister #(

    .d_width(1),
    .init_value(1'b0))
  register3 (
    .ce(ce_1_sg_x0),
    .clk(clk_1_sg_x0),
    .d(b_1_y_net),
    .en(1'b1),
    .rst(1'b0),
    .q(register3_q_net)
  );

  xlregister #(

    .d_width(16),
    .init_value(16'b0000000000000000))
  register_x0 (
    .ce(ce_1_sg_x0),
    .clk(clk_1_sg_x0),
    .d(b_29_14_y_net),
    .en(1'b1),
    .rst(1'b0),
    .q(register_q_net)
  );
endmodule
// Generated from Simulink block "pc_cfr_spartan6_v1_2/pc_cfr_spartan6/pc_cfr_iteration_1/c_pulses/cmplx_mac"

module cmplx_mac_module_982d92ad0d (
  ai,
  ar,
  bi,
  br,
  ce_1,
  clk_1,
  sum_im,
  sum_re
);

  input [15:0] ai;
  input [15:0] ar;
  input [15:0] bi;
  input [15:0] br;
  input [0:0] ce_1;
  input [0:0] clk_1;
  output [15:0] sum_im;
  output [15:0] sum_re;

  wire [15:0] addsub1_s_net_x1;
  wire [15:0] addsub2_s_net_x1;
  wire [0:0] ce_1_sg_x1;
  wire [0:0] clk_1_sg_x1;
  wire [15:0] delay1_q_net_x1;
  wire [15:0] delay4_q_net_x1;
  wire [15:0] reinterpret1_output_port_net_x1;
  wire [15:0] reinterpret_output_port_net_x1;

  assign reinterpret_output_port_net_x1 = ai;
  assign reinterpret1_output_port_net_x1 = ar;
  assign delay1_q_net_x1 = bi;
  assign delay4_q_net_x1 = br;
  assign ce_1_sg_x1 = ce_1;
  assign clk_1_sg_x1 = clk_1;
  assign sum_im = addsub2_s_net_x1;
  assign sum_re = addsub1_s_net_x1;


  cmplx_mult_module_dcbbb51afd  cmplx_mult_dcbbb51afd (
    .ai(reinterpret_output_port_net_x1),
    .ar(reinterpret1_output_port_net_x1),
    .bi(delay1_q_net_x1),
    .br(delay4_q_net_x1),
    .ce_1(ce_1_sg_x1),
    .clk_1(clk_1_sg_x1),
    .pi(addsub2_s_net_x1),
    .pr(addsub1_s_net_x1)
  );
endmodule
// Generated from Simulink block "pc_cfr_spartan6_v1_2/pc_cfr_spartan6/pc_cfr_iteration_1/c_pulses/cpg_allocator/alloc_counter/counter/reg_rst"

module reg_rst_module_700fa01e33 (
  ce_1,
  clk_1,
  d,
  q,
  rst
);

  input [0:0] ce_1;
  input [0:0] clk_1;
  input [7:0] d;
  input [0:0] rst;
  output [7:0] q;

  wire [0:0] ce_1_sg_x8;
  wire [0:0] clk_1_sg_x8;
  wire [7:0] constant1_op_net;
  wire [7:0] mux_y_net_x0;
  wire [7:0] mux_y_net_x1;
  wire [0:0] register2_q_net_x0;
  wire [7:0] register_q_net_x0;

  assign ce_1_sg_x8 = ce_1;
  assign clk_1_sg_x8 = clk_1;
  assign mux_y_net_x1 = d;
  assign q = register_q_net_x0;
  assign register2_q_net_x0 = rst;


  constant_2226f4eb84  constant1 (
    .ce(1'b0),
    .clk(1'b0),
    .clr(1'b0),
    .op(constant1_op_net)
  );

  mux_200bef452f  mux (
    .ce(1'b0),
    .clk(1'b0),
    .clr(1'b0),
    .d0(mux_y_net_x1),
    .d1(constant1_op_net),
    .sel(register2_q_net_x0),
    .y(mux_y_net_x0)
  );

  xlregister #(

    .d_width(8),
    .init_value(8'b00000000))
  register_x0 (
    .ce(ce_1_sg_x8),
    .clk(clk_1_sg_x8),
    .d(mux_y_net_x0),
    .en(1'b1),
    .rst(1'b0),
    .q(register_q_net_x0)
  );
endmodule
// Generated from Simulink block "pc_cfr_spartan6_v1_2/pc_cfr_spartan6/pc_cfr_iteration_1/c_pulses/cpg_allocator/alloc_counter/counter"

module counter_module_91e4a072e7 (
  ce_1,
  clk_1,
  en,
  out_x0,
  reset,
  rst
);

  input [0:0] ce_1;
  input [0:0] clk_1;
  input [0:0] en;
  input [0:0] reset;
  input [0:0] rst;
  output [7:0] out_x0;

  wire [7:0] addsub_s_net;
  wire [0:0] ce_1_sg_x9;
  wire [0:0] clk_1_sg_x9;
  wire [1:0] concat_y_net;
  wire [7:0] constant1_op_net;
  wire [7:0] constant4_op_net;
  wire [0:0] logical1_y_net_x0;
  wire [7:0] mux_y_net_x1;
  wire [0:0] register2_q_net_x1;
  wire [7:0] register_q_net_x1;
  wire [0:0] relational_op_net_x0;

  assign ce_1_sg_x9 = ce_1;
  assign clk_1_sg_x9 = clk_1;
  assign relational_op_net_x0 = en;
  assign out_x0 = register_q_net_x1;
  assign register2_q_net_x1 = reset;
  assign logical1_y_net_x0 = rst;


  addsub_4a36ae9713  addsub (
    .a(constant4_op_net),
    .b(register_q_net_x1),
    .ce(ce_1_sg_x9),
    .clk(clk_1_sg_x9),
    .clr(1'b0),
    .s(addsub_s_net)
  );

  concat_983f7013a1  concat (
    .ce(1'b0),
    .clk(1'b0),
    .clr(1'b0),
    .in0(logical1_y_net_x0),
    .in1(relational_op_net_x0),
    .y(concat_y_net)
  );

  constant_2226f4eb84  constant1 (
    .ce(1'b0),
    .clk(1'b0),
    .clr(1'b0),
    .op(constant1_op_net)
  );

  constant_667e01fdca  constant4 (
    .ce(1'b0),
    .clk(1'b0),
    .clr(1'b0),
    .op(constant4_op_net)
  );

  mux_cec3ff20dd  mux (
    .ce(1'b0),
    .clk(1'b0),
    .clr(1'b0),
    .d0(register_q_net_x1),
    .d1(addsub_s_net),
    .d2(constant1_op_net),
    .d3(constant1_op_net),
    .sel(concat_y_net),
    .y(mux_y_net_x1)
  );

  reg_rst_module_700fa01e33  reg_rst_700fa01e33 (
    .ce_1(ce_1_sg_x9),
    .clk_1(clk_1_sg_x9),
    .d(mux_y_net_x1),
    .rst(register2_q_net_x1),
    .q(register_q_net_x1)
  );
endmodule
// Generated from Simulink block "pc_cfr_spartan6_v1_2/pc_cfr_spartan6/pc_cfr_iteration_1/c_pulses/cpg_allocator/alloc_counter"

module alloc_counter_module_1d37cd648e (
  ce_1,
  clk_1,
  register2,
  spacing,
  trig0,
  trig1,
  trig2,
  trig3,
  unblocked
);

  input [0:0] ce_1;
  input [0:0] clk_1;
  input [0:0] register2;
  input [7:0] spacing;
  input [0:0] trig0;
  input [0:0] trig1;
  input [0:0] trig2;
  input [0:0] trig3;
  output [0:0] unblocked;

  wire [7:0] alloc_spacing_net_x0;
  wire [0:0] ce_1_sg_x10;
  wire [0:0] clk_1_sg_x10;
  wire [0:0] inverter2_op_net_x0;
  wire [0:0] logical1_y_net_x0;
  wire [0:0] register2_q_net_x2;
  wire [7:0] register_q_net_x1;
  wire [0:0] register_q_net_x4;
  wire [0:0] register_q_net_x5;
  wire [0:0] register_q_net_x6;
  wire [0:0] register_q_net_x7;
  wire [0:0] relational_op_net_x0;

  assign ce_1_sg_x10 = ce_1;
  assign clk_1_sg_x10 = clk_1;
  assign register2_q_net_x2 = register2;
  assign alloc_spacing_net_x0 = spacing;
  assign register_q_net_x4 = trig0;
  assign register_q_net_x5 = trig1;
  assign register_q_net_x6 = trig2;
  assign register_q_net_x7 = trig3;
  assign unblocked = inverter2_op_net_x0;


  counter_module_91e4a072e7  counter_91e4a072e7 (
    .ce_1(ce_1_sg_x10),
    .clk_1(clk_1_sg_x10),
    .en(relational_op_net_x0),
    .reset(register2_q_net_x2),
    .rst(logical1_y_net_x0),
    .out_x0(register_q_net_x1)
  );

  inverter_33a63b558a  inverter2 (
    .ce(ce_1_sg_x10),
    .clk(clk_1_sg_x10),
    .clr(1'b0),
    .ip(relational_op_net_x0),
    .op(inverter2_op_net_x0)
  );

  logical_eb4558179a  logical1 (
    .ce(1'b0),
    .clk(1'b0),
    .clr(1'b0),
    .d0(register_q_net_x4),
    .d1(register_q_net_x5),
    .d2(register_q_net_x6),
    .d3(register_q_net_x7),
    .y(logical1_y_net_x0)
  );

  relational_05044e5b4f  relational (
    .a(register_q_net_x1),
    .b(alloc_spacing_net_x0),
    .ce(1'b0),
    .clk(1'b0),
    .clr(1'b0),
    .op(relational_op_net_x0)
  );
endmodule
// Generated from Simulink block "pc_cfr_spartan6_v1_2/pc_cfr_spartan6/pc_cfr_iteration_1/c_pulses/cpg_allocator/cpg_counter_0/counter/reg_set"

module reg_set_module_c4c40db264 (
  ce_1,
  clk_1,
  d,
  q,
  set
);

  input [0:0] ce_1;
  input [0:0] clk_1;
  input [8:0] d;
  input [0:0] set;
  output [8:0] q;

  wire [0:0] ce_1_sg_x11;
  wire [0:0] clk_1_sg_x11;
  wire [8:0] constant1_op_net;
  wire [8:0] mux_y_net_x0;
  wire [8:0] mux_y_net_x1;
  wire [0:0] register2_q_net_x3;
  wire [8:0] register_q_net_x0;

  assign ce_1_sg_x11 = ce_1;
  assign clk_1_sg_x11 = clk_1;
  assign mux_y_net_x1 = d;
  assign q = register_q_net_x0;
  assign register2_q_net_x3 = set;


  constant_8492578f79  constant1 (
    .ce(1'b0),
    .clk(1'b0),
    .clr(1'b0),
    .op(constant1_op_net)
  );

  mux_8cff345167  mux (
    .ce(1'b0),
    .clk(1'b0),
    .clr(1'b0),
    .d0(mux_y_net_x1),
    .d1(constant1_op_net),
    .sel(register2_q_net_x3),
    .y(mux_y_net_x0)
  );

  xlregister #(

    .d_width(9),
    .init_value(9'b111111111))
  register_x0 (
    .ce(ce_1_sg_x11),
    .clk(clk_1_sg_x11),
    .d(mux_y_net_x0),
    .en(1'b1),
    .rst(1'b0),
    .q(register_q_net_x0)
  );
endmodule
// Generated from Simulink block "pc_cfr_spartan6_v1_2/pc_cfr_spartan6/pc_cfr_iteration_1/c_pulses/cpg_allocator/cpg_counter_0/counter"

module counter_module_cc00a07f56 (
  ce_1,
  clk_1,
  en,
  out_x0,
  reset,
  rst
);

  input [0:0] ce_1;
  input [0:0] clk_1;
  input [0:0] en;
  input [0:0] reset;
  input [0:0] rst;
  output [8:0] out_x0;

  wire [8:0] addsub_s_net;
  wire [0:0] ce_1_sg_x12;
  wire [0:0] clk_1_sg_x12;
  wire [1:0] concat_y_net;
  wire [8:0] constant1_op_net;
  wire [8:0] constant4_op_net;
  wire [8:0] mux_y_net_x1;
  wire [0:0] register2_q_net_x4;
  wire [8:0] register_q_net_x1;
  wire [0:0] register_q_net_x5;
  wire [0:0] relational_op_net_x0;

  assign ce_1_sg_x12 = ce_1;
  assign clk_1_sg_x12 = clk_1;
  assign relational_op_net_x0 = en;
  assign out_x0 = register_q_net_x1;
  assign register2_q_net_x4 = reset;
  assign register_q_net_x5 = rst;


  addsub_c2009d8515  addsub (
    .a(constant4_op_net),
    .b(register_q_net_x1),
    .ce(ce_1_sg_x12),
    .clk(clk_1_sg_x12),
    .clr(1'b0),
    .s(addsub_s_net)
  );

  concat_983f7013a1  concat (
    .ce(1'b0),
    .clk(1'b0),
    .clr(1'b0),
    .in0(register_q_net_x5),
    .in1(relational_op_net_x0),
    .y(concat_y_net)
  );

  constant_f12266ed24  constant1 (
    .ce(1'b0),
    .clk(1'b0),
    .clr(1'b0),
    .op(constant1_op_net)
  );

  constant_04e831922d  constant4 (
    .ce(1'b0),
    .clk(1'b0),
    .clr(1'b0),
    .op(constant4_op_net)
  );

  mux_3e1d71756d  mux (
    .ce(1'b0),
    .clk(1'b0),
    .clr(1'b0),
    .d0(register_q_net_x1),
    .d1(addsub_s_net),
    .d2(constant1_op_net),
    .d3(constant1_op_net),
    .sel(concat_y_net),
    .y(mux_y_net_x1)
  );

  reg_set_module_c4c40db264  reg_set_c4c40db264 (
    .ce_1(ce_1_sg_x12),
    .clk_1(clk_1_sg_x12),
    .d(mux_y_net_x1),
    .set(register2_q_net_x4),
    .q(register_q_net_x1)
  );
endmodule
// Generated from Simulink block "pc_cfr_spartan6_v1_2/pc_cfr_spartan6/pc_cfr_iteration_1/c_pulses/cpg_allocator/cpg_counter_0"

module cpg_counter_0_module_45d49a3d04 (
  addr,
  alloc,
  ce_1,
  clk_1,
  numtaps,
  register2,
  trigger
);

  input [0:0] ce_1;
  input [0:0] clk_1;
  input [8:0] numtaps;
  input [0:0] register2;
  input [0:0] trigger;
  output [8:0] addr;
  output [0:0] alloc;

  wire [0:0] ce_1_sg_x13;
  wire [0:0] clk_1_sg_x13;
  wire [8:0] filter_numtaps_net_x0;
  wire [0:0] register2_q_net_x5;
  wire [8:0] register_q_net_x2;
  wire [0:0] register_q_net_x6;
  wire [0:0] relational_op_net_x1;

  assign addr = register_q_net_x2;
  assign alloc = relational_op_net_x1;
  assign ce_1_sg_x13 = ce_1;
  assign clk_1_sg_x13 = clk_1;
  assign filter_numtaps_net_x0 = numtaps;
  assign register2_q_net_x5 = register2;
  assign register_q_net_x6 = trigger;


  counter_module_cc00a07f56  counter_cc00a07f56 (
    .ce_1(ce_1_sg_x13),
    .clk_1(clk_1_sg_x13),
    .en(relational_op_net_x1),
    .reset(register2_q_net_x5),
    .rst(register_q_net_x6),
    .out_x0(register_q_net_x2)
  );

  relational_0d4f3bb1f9  relational (
    .a(register_q_net_x2),
    .b(filter_numtaps_net_x0),
    .ce(1'b0),
    .clk(1'b0),
    .clr(1'b0),
    .op(relational_op_net_x1)
  );
endmodule
// Generated from Simulink block "pc_cfr_spartan6_v1_2/pc_cfr_spartan6/pc_cfr_iteration_1/c_pulses/cpg_allocator/cpg_trigger_0/reg_rst"

module reg_rst_module_be99fbc343 (
  ce_1,
  clk_1,
  d,
  q,
  rst
);

  input [0:0] ce_1;
  input [0:0] clk_1;
  input [0:0] d;
  input [0:0] rst;
  output [0:0] q;

  wire [0:0] ce_1_sg_x23;
  wire [0:0] clk_1_sg_x23;
  wire [0:0] constant1_op_net;
  wire [0:0] logical_y_net_x0;
  wire [0:0] mux_y_net;
  wire [0:0] register2_q_net_x15;
  wire [0:0] register_q_net_x7;

  assign ce_1_sg_x23 = ce_1;
  assign clk_1_sg_x23 = clk_1;
  assign logical_y_net_x0 = d;
  assign q = register_q_net_x7;
  assign register2_q_net_x15 = rst;


  constant_ae323e07fc  constant1 (
    .ce(1'b0),
    .clk(1'b0),
    .clr(1'b0),
    .op(constant1_op_net)
  );

  mux_c613b505f8  mux (
    .ce(1'b0),
    .clk(1'b0),
    .clr(1'b0),
    .d0(logical_y_net_x0),
    .d1(constant1_op_net),
    .sel(register2_q_net_x15),
    .y(mux_y_net)
  );

  xlregister #(

    .d_width(1),
    .init_value(1'b0))
  register_x0 (
    .ce(ce_1_sg_x23),
    .clk(clk_1_sg_x23),
    .d(mux_y_net),
    .en(1'b1),
    .rst(1'b0),
    .q(register_q_net_x7)
  );
endmodule
// Generated from Simulink block "pc_cfr_spartan6_v1_2/pc_cfr_spartan6/pc_cfr_iteration_1/c_pulses/cpg_allocator/cpg_trigger_0/register"

module register_module_5d5c535a5d (
  ce_1,
  clk_1,
  d,
  en,
  q
);

  input [0:0] ce_1;
  input [0:0] clk_1;
  input [15:0] d;
  input [0:0] en;
  output [15:0] q;

  wire [0:0] ce_1_sg_x24;
  wire [0:0] clk_1_sg_x24;
  wire [0:0] logical_y_net_x1;
  wire [15:0] mux_y_net;
  wire [15:0] register3_q_net_x0;
  wire [15:0] reinterpret1_output_port_net_x0;

  assign ce_1_sg_x24 = ce_1;
  assign clk_1_sg_x24 = clk_1;
  assign reinterpret1_output_port_net_x0 = d;
  assign logical_y_net_x1 = en;
  assign q = register3_q_net_x0;


  mux_31d78b046f  mux (
    .ce(1'b0),
    .clk(1'b0),
    .clr(1'b0),
    .d0(register3_q_net_x0),
    .d1(reinterpret1_output_port_net_x0),
    .sel(logical_y_net_x1),
    .y(mux_y_net)
  );

  xlregister #(

    .d_width(16),
    .init_value(16'b0000000000000000))
  register3 (
    .ce(ce_1_sg_x24),
    .clk(clk_1_sg_x24),
    .d(mux_y_net),
    .en(1'b1),
    .rst(1'b0),
    .q(register3_q_net_x0)
  );
endmodule
// Generated from Simulink block "pc_cfr_spartan6_v1_2/pc_cfr_spartan6/pc_cfr_iteration_1/c_pulses/cpg_allocator/cpg_trigger_0"

module cpg_trigger_0_module_efef71427e (
  ce_1,
  clk_1,
  cpg_0_alloc,
  cpg_0_peak_i,
  cpg_0_peak_q,
  cpg_0_trig,
  peak_i,
  peak_ind,
  peak_q,
  reset,
  unblocked
);

  input [0:0] ce_1;
  input [0:0] clk_1;
  input [0:0] cpg_0_alloc;
  input [15:0] peak_i;
  input [0:0] peak_ind;
  input [15:0] peak_q;
  input [0:0] reset;
  input [0:0] unblocked;
  output [15:0] cpg_0_peak_i;
  output [15:0] cpg_0_peak_q;
  output [0:0] cpg_0_trig;

  wire [0:0] ce_1_sg_x26;
  wire [0:0] clk_1_sg_x26;
  wire [0:0] cp_locator_x0;
  wire [0:0] inverter2_op_net;
  wire [0:0] inverter2_op_net_x1;
  wire [0:0] logical_y_net_x2;
  wire [0:0] register2_q_net_x16;
  wire [15:0] register3_q_net_x2;
  wire [15:0] register3_q_net_x3;
  wire [0:0] register_q_net_x8;
  wire [15:0] reinterpret1_output_port_net_x1;
  wire [15:0] reinterpret2_output_port_net_x1;
  wire [0:0] relational_op_net_x2;

  assign ce_1_sg_x26 = ce_1;
  assign clk_1_sg_x26 = clk_1;
  assign relational_op_net_x2 = cpg_0_alloc;
  assign cpg_0_peak_i = register3_q_net_x2;
  assign cpg_0_peak_q = register3_q_net_x3;
  assign cpg_0_trig = register_q_net_x8;
  assign reinterpret1_output_port_net_x1 = peak_i;
  assign cp_locator_x0 = peak_ind;
  assign reinterpret2_output_port_net_x1 = peak_q;
  assign register2_q_net_x16 = reset;
  assign inverter2_op_net_x1 = unblocked;


  inverter_33a63b558a  inverter2 (
    .ce(ce_1_sg_x26),
    .clk(clk_1_sg_x26),
    .clr(1'b0),
    .ip(relational_op_net_x2),
    .op(inverter2_op_net)
  );

  logical_a950764719  logical (
    .ce(1'b0),
    .clk(1'b0),
    .clr(1'b0),
    .d0(cp_locator_x0),
    .d1(inverter2_op_net),
    .d2(inverter2_op_net_x1),
    .y(logical_y_net_x2)
  );

  reg_rst_module_be99fbc343  reg_rst_be99fbc343 (
    .ce_1(ce_1_sg_x26),
    .clk_1(clk_1_sg_x26),
    .d(logical_y_net_x2),
    .rst(register2_q_net_x16),
    .q(register_q_net_x8)
  );

  register_module_5d5c535a5d  register1_f78266d021 (
    .ce_1(ce_1_sg_x26),
    .clk_1(clk_1_sg_x26),
    .d(reinterpret2_output_port_net_x1),
    .en(logical_y_net_x2),
    .q(register3_q_net_x3)
  );

  register_module_5d5c535a5d  register_5d5c535a5d (
    .ce_1(ce_1_sg_x26),
    .clk_1(clk_1_sg_x26),
    .d(reinterpret1_output_port_net_x1),
    .en(logical_y_net_x2),
    .q(register3_q_net_x2)
  );
endmodule
// Generated from Simulink block "pc_cfr_spartan6_v1_2/pc_cfr_spartan6/pc_cfr_iteration_1/c_pulses/cpg_allocator/cpg_trigger_1"

module cpg_trigger_1_module_95b4aa92b5 (
  ce_1,
  clk_1,
  cpg_0_alloc,
  cpg_1_alloc,
  cpg_1_peak_i,
  cpg_1_peak_q,
  cpg_1_trig,
  peak_i,
  peak_ind,
  peak_q,
  reset,
  unblocked
);

  input [0:0] ce_1;
  input [0:0] clk_1;
  input [0:0] cpg_0_alloc;
  input [0:0] cpg_1_alloc;
  input [15:0] peak_i;
  input [0:0] peak_ind;
  input [15:0] peak_q;
  input [0:0] reset;
  input [0:0] unblocked;
  output [15:0] cpg_1_peak_i;
  output [15:0] cpg_1_peak_q;
  output [0:0] cpg_1_trig;

  wire [0:0] ce_1_sg_x30;
  wire [0:0] clk_1_sg_x30;
  wire [0:0] cp_locator_x1;
  wire [0:0] inverter2_op_net;
  wire [0:0] inverter2_op_net_x2;
  wire [0:0] logical_y_net_x2;
  wire [0:0] register2_q_net_x18;
  wire [15:0] register3_q_net_x2;
  wire [15:0] register3_q_net_x3;
  wire [0:0] register_q_net_x9;
  wire [15:0] reinterpret1_output_port_net_x3;
  wire [15:0] reinterpret2_output_port_net_x3;
  wire [0:0] relational_op_net_x3;
  wire [0:0] relational_op_net_x4;

  assign ce_1_sg_x30 = ce_1;
  assign clk_1_sg_x30 = clk_1;
  assign relational_op_net_x3 = cpg_0_alloc;
  assign relational_op_net_x4 = cpg_1_alloc;
  assign cpg_1_peak_i = register3_q_net_x2;
  assign cpg_1_peak_q = register3_q_net_x3;
  assign cpg_1_trig = register_q_net_x9;
  assign reinterpret1_output_port_net_x3 = peak_i;
  assign cp_locator_x1 = peak_ind;
  assign reinterpret2_output_port_net_x3 = peak_q;
  assign register2_q_net_x18 = reset;
  assign inverter2_op_net_x2 = unblocked;


  inverter_33a63b558a  inverter2 (
    .ce(ce_1_sg_x30),
    .clk(clk_1_sg_x30),
    .clr(1'b0),
    .ip(relational_op_net_x4),
    .op(inverter2_op_net)
  );

  logical_818bd6d54b  logical (
    .ce(1'b0),
    .clk(1'b0),
    .clr(1'b0),
    .d0(cp_locator_x1),
    .d1(relational_op_net_x3),
    .d2(inverter2_op_net),
    .d3(inverter2_op_net_x2),
    .y(logical_y_net_x2)
  );

  reg_rst_module_be99fbc343  reg_rst_9310b6966e (
    .ce_1(ce_1_sg_x30),
    .clk_1(clk_1_sg_x30),
    .d(logical_y_net_x2),
    .rst(register2_q_net_x18),
    .q(register_q_net_x9)
  );

  register_module_5d5c535a5d  register1_6c619e8d79 (
    .ce_1(ce_1_sg_x30),
    .clk_1(clk_1_sg_x30),
    .d(reinterpret2_output_port_net_x3),
    .en(logical_y_net_x2),
    .q(register3_q_net_x3)
  );

  register_module_5d5c535a5d  register_af12d8790a (
    .ce_1(ce_1_sg_x30),
    .clk_1(clk_1_sg_x30),
    .d(reinterpret1_output_port_net_x3),
    .en(logical_y_net_x2),
    .q(register3_q_net_x2)
  );
endmodule
// Generated from Simulink block "pc_cfr_spartan6_v1_2/pc_cfr_spartan6/pc_cfr_iteration_1/c_pulses/cpg_allocator/cpg_trigger_2"

module cpg_trigger_2_module_f3ee1ec08c (
  ce_1,
  clk_1,
  cpg_0_alloc,
  cpg_1_alloc,
  cpg_2_alloc,
  cpg_2_peak_i,
  cpg_2_peak_q,
  cpg_2_trig,
  peak_i,
  peak_ind,
  peak_q,
  reset,
  unblocked
);

  input [0:0] ce_1;
  input [0:0] clk_1;
  input [0:0] cpg_0_alloc;
  input [0:0] cpg_1_alloc;
  input [0:0] cpg_2_alloc;
  input [15:0] peak_i;
  input [0:0] peak_ind;
  input [15:0] peak_q;
  input [0:0] reset;
  input [0:0] unblocked;
  output [15:0] cpg_2_peak_i;
  output [15:0] cpg_2_peak_q;
  output [0:0] cpg_2_trig;

  wire [0:0] ce_1_sg_x34;
  wire [0:0] clk_1_sg_x34;
  wire [0:0] cp_locator_x2;
  wire [0:0] inverter2_op_net;
  wire [0:0] inverter2_op_net_x3;
  wire [0:0] logical_y_net_x2;
  wire [0:0] register2_q_net_x20;
  wire [15:0] register3_q_net_x2;
  wire [15:0] register3_q_net_x3;
  wire [0:0] register_q_net_x11;
  wire [15:0] reinterpret1_output_port_net_x5;
  wire [15:0] reinterpret2_output_port_net_x5;
  wire [0:0] relational_op_net_x5;
  wire [0:0] relational_op_net_x6;
  wire [0:0] relational_op_net_x7;

  assign ce_1_sg_x34 = ce_1;
  assign clk_1_sg_x34 = clk_1;
  assign relational_op_net_x5 = cpg_0_alloc;
  assign relational_op_net_x6 = cpg_1_alloc;
  assign relational_op_net_x7 = cpg_2_alloc;
  assign cpg_2_peak_i = register3_q_net_x2;
  assign cpg_2_peak_q = register3_q_net_x3;
  assign cpg_2_trig = register_q_net_x11;
  assign reinterpret1_output_port_net_x5 = peak_i;
  assign cp_locator_x2 = peak_ind;
  assign reinterpret2_output_port_net_x5 = peak_q;
  assign register2_q_net_x20 = reset;
  assign inverter2_op_net_x3 = unblocked;


  inverter_33a63b558a  inverter2 (
    .ce(ce_1_sg_x34),
    .clk(clk_1_sg_x34),
    .clr(1'b0),
    .ip(relational_op_net_x7),
    .op(inverter2_op_net)
  );

  logical_ce5967518d  logical (
    .ce(1'b0),
    .clk(1'b0),
    .clr(1'b0),
    .d0(cp_locator_x2),
    .d1(relational_op_net_x5),
    .d2(relational_op_net_x6),
    .d3(inverter2_op_net),
    .d4(inverter2_op_net_x3),
    .y(logical_y_net_x2)
  );

  reg_rst_module_be99fbc343  reg_rst_94145c6131 (
    .ce_1(ce_1_sg_x34),
    .clk_1(clk_1_sg_x34),
    .d(logical_y_net_x2),
    .rst(register2_q_net_x20),
    .q(register_q_net_x11)
  );

  register_module_5d5c535a5d  register1_f4ff1e11b8 (
    .ce_1(ce_1_sg_x34),
    .clk_1(clk_1_sg_x34),
    .d(reinterpret2_output_port_net_x5),
    .en(logical_y_net_x2),
    .q(register3_q_net_x3)
  );

  register_module_5d5c535a5d  register_5f161fd9c7 (
    .ce_1(ce_1_sg_x34),
    .clk_1(clk_1_sg_x34),
    .d(reinterpret1_output_port_net_x5),
    .en(logical_y_net_x2),
    .q(register3_q_net_x2)
  );
endmodule
// Generated from Simulink block "pc_cfr_spartan6_v1_2/pc_cfr_spartan6/pc_cfr_iteration_1/c_pulses/cpg_allocator/cpg_trigger_3"

module cpg_trigger_3_module_bb938370ff (
  ce_1,
  clk_1,
  cpg_0_alloc,
  cpg_1_alloc,
  cpg_2_alloc,
  cpg_3_alloc,
  cpg_3_peak_i,
  cpg_3_peak_q,
  cpg_3_trig,
  peak_i,
  peak_ind,
  peak_q,
  reset,
  unblocked
);

  input [0:0] ce_1;
  input [0:0] clk_1;
  input [0:0] cpg_0_alloc;
  input [0:0] cpg_1_alloc;
  input [0:0] cpg_2_alloc;
  input [0:0] cpg_3_alloc;
  input [15:0] peak_i;
  input [0:0] peak_ind;
  input [15:0] peak_q;
  input [0:0] reset;
  input [0:0] unblocked;
  output [15:0] cpg_3_peak_i;
  output [15:0] cpg_3_peak_q;
  output [0:0] cpg_3_trig;

  wire [0:0] ce_1_sg_x38;
  wire [0:0] clk_1_sg_x38;
  wire [0:0] cp_locator_x3;
  wire [0:0] inverter2_op_net;
  wire [0:0] inverter2_op_net_x4;
  wire [0:0] logical_y_net_x2;
  wire [0:0] register2_q_net_x22;
  wire [15:0] register3_q_net_x2;
  wire [15:0] register3_q_net_x3;
  wire [0:0] register_q_net_x12;
  wire [15:0] reinterpret1_output_port_net_x7;
  wire [15:0] reinterpret2_output_port_net_x7;
  wire [0:0] relational_op_net_x10;
  wire [0:0] relational_op_net_x11;
  wire [0:0] relational_op_net_x8;
  wire [0:0] relational_op_net_x9;

  assign ce_1_sg_x38 = ce_1;
  assign clk_1_sg_x38 = clk_1;
  assign relational_op_net_x8 = cpg_0_alloc;
  assign relational_op_net_x9 = cpg_1_alloc;
  assign relational_op_net_x10 = cpg_2_alloc;
  assign relational_op_net_x11 = cpg_3_alloc;
  assign cpg_3_peak_i = register3_q_net_x2;
  assign cpg_3_peak_q = register3_q_net_x3;
  assign cpg_3_trig = register_q_net_x12;
  assign reinterpret1_output_port_net_x7 = peak_i;
  assign cp_locator_x3 = peak_ind;
  assign reinterpret2_output_port_net_x7 = peak_q;
  assign register2_q_net_x22 = reset;
  assign inverter2_op_net_x4 = unblocked;


  inverter_33a63b558a  inverter2 (
    .ce(ce_1_sg_x38),
    .clk(clk_1_sg_x38),
    .clr(1'b0),
    .ip(relational_op_net_x11),
    .op(inverter2_op_net)
  );

  logical_7ffc9c41e8  logical (
    .ce(1'b0),
    .clk(1'b0),
    .clr(1'b0),
    .d0(cp_locator_x3),
    .d1(relational_op_net_x8),
    .d2(relational_op_net_x9),
    .d3(relational_op_net_x10),
    .d4(inverter2_op_net),
    .d5(inverter2_op_net_x4),
    .y(logical_y_net_x2)
  );

  reg_rst_module_be99fbc343  reg_rst_3d1e9acc29 (
    .ce_1(ce_1_sg_x38),
    .clk_1(clk_1_sg_x38),
    .d(logical_y_net_x2),
    .rst(register2_q_net_x22),
    .q(register_q_net_x12)
  );

  register_module_5d5c535a5d  register1_1ccce7a923 (
    .ce_1(ce_1_sg_x38),
    .clk_1(clk_1_sg_x38),
    .d(reinterpret2_output_port_net_x7),
    .en(logical_y_net_x2),
    .q(register3_q_net_x3)
  );

  register_module_5d5c535a5d  register_ba5a5bc86a (
    .ce_1(ce_1_sg_x38),
    .clk_1(clk_1_sg_x38),
    .d(reinterpret1_output_port_net_x7),
    .en(logical_y_net_x2),
    .q(register3_q_net_x2)
  );
endmodule
// Generated from Simulink block "pc_cfr_spartan6_v1_2/pc_cfr_spartan6/pc_cfr_iteration_1/c_pulses/cpg_allocator"

module cpg_allocator_module_80224748af (
  alloc_spacing,
  ce_1,
  clk_1,
  cpg_0_addr,
  cpg_0_peak_i,
  cpg_0_peak_q,
  cpg_1_addr,
  cpg_1_peak_i,
  cpg_1_peak_q,
  cpg_2_addr,
  cpg_2_peak_i,
  cpg_2_peak_q,
  cpg_3_addr,
  cpg_3_peak_i,
  cpg_3_peak_q,
  numtaps,
  peak_indicator,
  peak_scale_i,
  peak_scale_q,
  register2
);

  input [7:0] alloc_spacing;
  input [0:0] ce_1;
  input [0:0] clk_1;
  input [8:0] numtaps;
  input [0:0] peak_indicator;
  input [15:0] peak_scale_i;
  input [15:0] peak_scale_q;
  input [0:0] register2;
  output [8:0] cpg_0_addr;
  output [15:0] cpg_0_peak_i;
  output [15:0] cpg_0_peak_q;
  output [8:0] cpg_1_addr;
  output [15:0] cpg_1_peak_i;
  output [15:0] cpg_1_peak_q;
  output [8:0] cpg_2_addr;
  output [15:0] cpg_2_peak_i;
  output [15:0] cpg_2_peak_q;
  output [8:0] cpg_3_addr;
  output [15:0] cpg_3_peak_i;
  output [15:0] cpg_3_peak_q;

  wire [7:0] alloc_spacing_net_x1;
  wire [0:0] ce_1_sg_x39;
  wire [0:0] clk_1_sg_x39;
  wire [0:0] cp_locator_x4;
  wire [8:0] filter_numtaps_net_x4;
  wire [0:0] inverter2_op_net_x4;
  wire [0:0] register2_q_net_x23;
  wire [15:0] register3_q_net_x10;
  wire [15:0] register3_q_net_x11;
  wire [15:0] register3_q_net_x12;
  wire [15:0] register3_q_net_x13;
  wire [15:0] register3_q_net_x14;
  wire [15:0] register3_q_net_x15;
  wire [15:0] register3_q_net_x16;
  wire [15:0] register3_q_net_x17;
  wire [0:0] register_q_net_x12;
  wire [0:0] register_q_net_x13;
  wire [8:0] register_q_net_x14;
  wire [8:0] register_q_net_x15;
  wire [8:0] register_q_net_x16;
  wire [8:0] register_q_net_x17;
  wire [0:0] register_q_net_x8;
  wire [0:0] register_q_net_x9;
  wire [15:0] reinterpret1_output_port_net_x8;
  wire [15:0] reinterpret2_output_port_net_x8;
  wire [0:0] relational_op_net_x10;
  wire [0:0] relational_op_net_x11;
  wire [0:0] relational_op_net_x8;
  wire [0:0] relational_op_net_x9;

  assign alloc_spacing_net_x1 = alloc_spacing;
  assign ce_1_sg_x39 = ce_1;
  assign clk_1_sg_x39 = clk_1;
  assign cpg_0_addr = register_q_net_x14;
  assign cpg_0_peak_i = register3_q_net_x10;
  assign cpg_0_peak_q = register3_q_net_x11;
  assign cpg_1_addr = register_q_net_x15;
  assign cpg_1_peak_i = register3_q_net_x12;
  assign cpg_1_peak_q = register3_q_net_x13;
  assign cpg_2_addr = register_q_net_x16;
  assign cpg_2_peak_i = register3_q_net_x14;
  assign cpg_2_peak_q = register3_q_net_x15;
  assign cpg_3_addr = register_q_net_x17;
  assign cpg_3_peak_i = register3_q_net_x16;
  assign cpg_3_peak_q = register3_q_net_x17;
  assign filter_numtaps_net_x4 = numtaps;
  assign cp_locator_x4 = peak_indicator;
  assign reinterpret1_output_port_net_x8 = peak_scale_i;
  assign reinterpret2_output_port_net_x8 = peak_scale_q;
  assign register2_q_net_x23 = register2;


  alloc_counter_module_1d37cd648e  alloc_counter_1d37cd648e (
    .ce_1(ce_1_sg_x39),
    .clk_1(clk_1_sg_x39),
    .register2(register2_q_net_x23),
    .spacing(alloc_spacing_net_x1),
    .trig0(register_q_net_x8),
    .trig1(register_q_net_x9),
    .trig2(register_q_net_x12),
    .trig3(register_q_net_x13),
    .unblocked(inverter2_op_net_x4)
  );

  cpg_counter_0_module_45d49a3d04  cpg_counter_0_45d49a3d04 (
    .ce_1(ce_1_sg_x39),
    .clk_1(clk_1_sg_x39),
    .numtaps(filter_numtaps_net_x4),
    .register2(register2_q_net_x23),
    .trigger(register_q_net_x8),
    .addr(register_q_net_x14),
    .alloc(relational_op_net_x8)
  );

  cpg_counter_0_module_45d49a3d04  cpg_counter_1_b60894f1e1 (
    .ce_1(ce_1_sg_x39),
    .clk_1(clk_1_sg_x39),
    .numtaps(filter_numtaps_net_x4),
    .register2(register2_q_net_x23),
    .trigger(register_q_net_x9),
    .addr(register_q_net_x15),
    .alloc(relational_op_net_x9)
  );

  cpg_counter_0_module_45d49a3d04  cpg_counter_2_0177eb8243 (
    .ce_1(ce_1_sg_x39),
    .clk_1(clk_1_sg_x39),
    .numtaps(filter_numtaps_net_x4),
    .register2(register2_q_net_x23),
    .trigger(register_q_net_x12),
    .addr(register_q_net_x16),
    .alloc(relational_op_net_x10)
  );

  cpg_counter_0_module_45d49a3d04  cpg_counter_3_81cbd0f5db (
    .ce_1(ce_1_sg_x39),
    .clk_1(clk_1_sg_x39),
    .numtaps(filter_numtaps_net_x4),
    .register2(register2_q_net_x23),
    .trigger(register_q_net_x13),
    .addr(register_q_net_x17),
    .alloc(relational_op_net_x11)
  );

  cpg_trigger_0_module_efef71427e  cpg_trigger_0_efef71427e (
    .ce_1(ce_1_sg_x39),
    .clk_1(clk_1_sg_x39),
    .cpg_0_alloc(relational_op_net_x8),
    .peak_i(reinterpret1_output_port_net_x8),
    .peak_ind(cp_locator_x4),
    .peak_q(reinterpret2_output_port_net_x8),
    .reset(register2_q_net_x23),
    .unblocked(inverter2_op_net_x4),
    .cpg_0_peak_i(register3_q_net_x10),
    .cpg_0_peak_q(register3_q_net_x11),
    .cpg_0_trig(register_q_net_x8)
  );

  cpg_trigger_1_module_95b4aa92b5  cpg_trigger_1_95b4aa92b5 (
    .ce_1(ce_1_sg_x39),
    .clk_1(clk_1_sg_x39),
    .cpg_0_alloc(relational_op_net_x8),
    .cpg_1_alloc(relational_op_net_x9),
    .peak_i(reinterpret1_output_port_net_x8),
    .peak_ind(cp_locator_x4),
    .peak_q(reinterpret2_output_port_net_x8),
    .reset(register2_q_net_x23),
    .unblocked(inverter2_op_net_x4),
    .cpg_1_peak_i(register3_q_net_x12),
    .cpg_1_peak_q(register3_q_net_x13),
    .cpg_1_trig(register_q_net_x9)
  );

  cpg_trigger_2_module_f3ee1ec08c  cpg_trigger_2_f3ee1ec08c (
    .ce_1(ce_1_sg_x39),
    .clk_1(clk_1_sg_x39),
    .cpg_0_alloc(relational_op_net_x8),
    .cpg_1_alloc(relational_op_net_x9),
    .cpg_2_alloc(relational_op_net_x10),
    .peak_i(reinterpret1_output_port_net_x8),
    .peak_ind(cp_locator_x4),
    .peak_q(reinterpret2_output_port_net_x8),
    .reset(register2_q_net_x23),
    .unblocked(inverter2_op_net_x4),
    .cpg_2_peak_i(register3_q_net_x14),
    .cpg_2_peak_q(register3_q_net_x15),
    .cpg_2_trig(register_q_net_x12)
  );

  cpg_trigger_3_module_bb938370ff  cpg_trigger_3_bb938370ff (
    .ce_1(ce_1_sg_x39),
    .clk_1(clk_1_sg_x39),
    .cpg_0_alloc(relational_op_net_x8),
    .cpg_1_alloc(relational_op_net_x9),
    .cpg_2_alloc(relational_op_net_x10),
    .cpg_3_alloc(relational_op_net_x11),
    .peak_i(reinterpret1_output_port_net_x8),
    .peak_ind(cp_locator_x4),
    .peak_q(reinterpret2_output_port_net_x8),
    .reset(register2_q_net_x23),
    .unblocked(inverter2_op_net_x4),
    .cpg_3_peak_i(register3_q_net_x16),
    .cpg_3_peak_q(register3_q_net_x17),
    .cpg_3_trig(register_q_net_x13)
  );
endmodule
// Generated from Simulink block "pc_cfr_spartan6_v1_2/pc_cfr_spartan6/pc_cfr_iteration_1/c_pulses/filter_ram"

module filter_ram_module_4b0c5a332f (
  ce_1,
  clk_1,
  coef_im,
  coef_re,
  rd_addr,
  wr_addr,
  wr_data,
  wr_en
);

  input [0:0] ce_1;
  input [0:0] clk_1;
  input [8:0] rd_addr;
  input [8:0] wr_addr;
  input [31:0] wr_data;
  input [0:0] wr_en;
  output [15:0] coef_im;
  output [15:0] coef_re;

  wire [0:0] ce_1_sg_x40;
  wire [0:0] clk_1_sg_x40;
  wire [0:0] constant1_op_net;
  wire [31:0] constant2_op_net;
  wire [31:0] dual_port_ram_doutb_net;
  wire [8:0] filter_ram_addr_net_x0;
  wire [31:0] filter_ram_data_net_x0;
  wire [0:0] filter_ram_we_net_x0;
  wire [15:0] lsbs_y_net;
  wire [15:0] msbs_y_net;
  wire [8:0] register_q_net_x15;
  wire [15:0] reinterpret1_output_port_net_x2;
  wire [15:0] reinterpret_output_port_net_x2;

  assign ce_1_sg_x40 = ce_1;
  assign clk_1_sg_x40 = clk_1;
  assign coef_im = reinterpret_output_port_net_x2;
  assign coef_re = reinterpret1_output_port_net_x2;
  assign register_q_net_x15 = rd_addr;
  assign filter_ram_addr_net_x0 = wr_addr;
  assign filter_ram_data_net_x0 = wr_data;
  assign filter_ram_we_net_x0 = wr_en;


  constant_ae323e07fc  constant1 (
    .ce(1'b0),
    .clk(1'b0),
    .clr(1'b0),
    .op(constant1_op_net)
  );

  constant_07da815359  constant2 (
    .ce(1'b0),
    .clk(1'b0),
    .clr(1'b0),
    .op(constant2_op_net)
  );

  xldpram_pc_cfr_spartan6_v1_2 #(

    .c_address_width_a(9),
    .c_address_width_b(9),
    .c_width_a(32),
    .c_width_b(32),
    .core_name0("bmg_72_1a6cb457801618b3"),
    .latency(2))
  dual_port_ram (
    .a_ce(ce_1_sg_x40),
    .a_clk(clk_1_sg_x40),
    .addra(filter_ram_addr_net_x0),
    .addrb(register_q_net_x15),
    .b_ce(ce_1_sg_x40),
    .b_clk(clk_1_sg_x40),
    .dina(filter_ram_data_net_x0),
    .dinb(constant2_op_net),
    .ena(1'b1),
    .enb(1'b1),
    .rsta(1'b0),
    .rstb(1'b0),
    .wea(filter_ram_we_net_x0),
    .web(constant1_op_net),
    .doutb(dual_port_ram_doutb_net)
  );

  xlslice #(

    .new_lsb(0),
    .new_msb(15),
    .x_width(32),
    .y_width(16))
  lsbs (
    .x(dual_port_ram_doutb_net),
    .y(lsbs_y_net)
  );

  xlslice #(

    .new_lsb(16),
    .new_msb(31),
    .x_width(32),
    .y_width(16))
  msbs (
    .x(dual_port_ram_doutb_net),
    .y(msbs_y_net)
  );

  reinterpret_dee95c6dbb  reinterpret (
    .ce(1'b0),
    .clk(1'b0),
    .clr(1'b0),
    .input_port(msbs_y_net),
    .output_port(reinterpret_output_port_net_x2)
  );

  reinterpret_dee95c6dbb  reinterpret1 (
    .ce(1'b0),
    .clk(1'b0),
    .clr(1'b0),
    .input_port(lsbs_y_net),
    .output_port(reinterpret1_output_port_net_x2)
  );
endmodule
// Generated from Simulink block "pc_cfr_spartan6_v1_2/pc_cfr_spartan6/pc_cfr_iteration_1/c_pulses"

module c_pulses_module_e76cc1896f (
  alloc_spacing,
  ce_1,
  clk_1,
  filter_numtaps,
  filter_ram_addr,
  filter_ram_data,
  filter_ram_we,
  peak_indicator,
  peak_scale_i,
  peak_scale_q,
  pulse_sum_i,
  pulse_sum_q,
  register2
);

  input [7:0] alloc_spacing;
  input [0:0] ce_1;
  input [0:0] clk_1;
  input [8:0] filter_numtaps;
  input [8:0] filter_ram_addr;
  input [31:0] filter_ram_data;
  input [0:0] filter_ram_we;
  input [0:0] peak_indicator;
  input [15:0] peak_scale_i;
  input [15:0] peak_scale_q;
  input [0:0] register2;
  output [15:0] pulse_sum_i;
  output [15:0] pulse_sum_q;

  wire [15:0] addsub1_s_net;
  wire [15:0] addsub1_s_net_x1;
  wire [15:0] addsub1_s_net_x2;
  wire [15:0] addsub1_s_net_x3;
  wire [15:0] addsub1_s_net_x4;
  wire [15:0] addsub2_s_net;
  wire [15:0] addsub2_s_net_x1;
  wire [15:0] addsub2_s_net_x2;
  wire [15:0] addsub2_s_net_x3;
  wire [15:0] addsub2_s_net_x4;
  wire [15:0] addsub3_s_net;
  wire [15:0] addsub4_s_net;
  wire [15:0] addsub5_s_net_x0;
  wire [15:0] addsub_s_net_x0;
  wire [7:0] alloc_spacing_net_x2;
  wire [0:0] ce_1_sg_x44;
  wire [0:0] clk_1_sg_x44;
  wire [0:0] cp_locator_x5;
  wire [15:0] delay1_q_net_x1;
  wire [15:0] delay2_q_net_x1;
  wire [15:0] delay3_q_net_x1;
  wire [15:0] delay4_q_net_x1;
  wire [15:0] delay5_q_net_x1;
  wire [15:0] delay6_q_net_x1;
  wire [15:0] delay7_q_net_x1;
  wire [15:0] delay8_q_net_x1;
  wire [8:0] filter_numtaps_net_x5;
  wire [8:0] filter_ram_addr_net_x4;
  wire [31:0] filter_ram_data_net_x4;
  wire [0:0] filter_ram_we_net_x4;
  wire [0:0] register2_q_net_x24;
  wire [15:0] register3_q_net_x10;
  wire [15:0] register3_q_net_x11;
  wire [15:0] register3_q_net_x12;
  wire [15:0] register3_q_net_x13;
  wire [15:0] register3_q_net_x14;
  wire [15:0] register3_q_net_x15;
  wire [15:0] register3_q_net_x16;
  wire [15:0] register3_q_net_x17;
  wire [8:0] register_q_net_x15;
  wire [8:0] register_q_net_x16;
  wire [8:0] register_q_net_x17;
  wire [8:0] register_q_net_x18;
  wire [15:0] reinterpret1_output_port_net_x2;
  wire [15:0] reinterpret1_output_port_net_x3;
  wire [15:0] reinterpret1_output_port_net_x4;
  wire [15:0] reinterpret1_output_port_net_x5;
  wire [15:0] reinterpret1_output_port_net_x9;
  wire [15:0] reinterpret2_output_port_net_x9;
  wire [15:0] reinterpret_output_port_net_x2;
  wire [15:0] reinterpret_output_port_net_x3;
  wire [15:0] reinterpret_output_port_net_x4;
  wire [15:0] reinterpret_output_port_net_x5;

  assign alloc_spacing_net_x2 = alloc_spacing;
  assign ce_1_sg_x44 = ce_1;
  assign clk_1_sg_x44 = clk_1;
  assign filter_numtaps_net_x5 = filter_numtaps;
  assign filter_ram_addr_net_x4 = filter_ram_addr;
  assign filter_ram_data_net_x4 = filter_ram_data;
  assign filter_ram_we_net_x4 = filter_ram_we;
  assign cp_locator_x5 = peak_indicator;
  assign reinterpret1_output_port_net_x9 = peak_scale_i;
  assign reinterpret2_output_port_net_x9 = peak_scale_q;
  assign pulse_sum_i = addsub5_s_net_x0;
  assign pulse_sum_q = addsub_s_net_x0;
  assign register2_q_net_x24 = register2;


  xladdsub_pc_cfr_spartan6_v1_2 #(

    .a_arith(`xlSigned),
    .a_bin_pt(0),
    .a_width(16),
    .b_arith(`xlSigned),
    .b_bin_pt(0),
    .b_width(16),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(17),
    .core_name0("addsb_11_0_775dc3edc6782f4e"),
    .extra_registers(0),
    .full_s_arith(2),
    .full_s_width(17),
    .latency(1),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(0),
    .s_width(16))
  addsub (
    .a(addsub2_s_net),
    .b(addsub1_s_net),
    .ce(ce_1_sg_x44),
    .clk(clk_1_sg_x44),
    .clr(1'b0),
    .en(1'b1),
    .s(addsub_s_net_x0)
  );

  xladdsub_pc_cfr_spartan6_v1_2 #(

    .a_arith(`xlSigned),
    .a_bin_pt(0),
    .a_width(16),
    .b_arith(`xlSigned),
    .b_bin_pt(0),
    .b_width(16),
    .c_has_c_out(0),
    .c_latency(0),
    .c_output_width(17),
    .core_name0("addsb_11_0_232ff08b73742c1b"),
    .extra_registers(0),
    .full_s_arith(2),
    .full_s_width(17),
    .latency(0),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(0),
    .s_width(16))
  addsub1 (
    .a(addsub2_s_net_x3),
    .b(addsub2_s_net_x4),
    .ce(ce_1_sg_x44),
    .clk(clk_1_sg_x44),
    .clr(1'b0),
    .en(1'b1),
    .s(addsub1_s_net)
  );

  xladdsub_pc_cfr_spartan6_v1_2 #(

    .a_arith(`xlSigned),
    .a_bin_pt(0),
    .a_width(16),
    .b_arith(`xlSigned),
    .b_bin_pt(0),
    .b_width(16),
    .c_has_c_out(0),
    .c_latency(0),
    .c_output_width(17),
    .core_name0("addsb_11_0_232ff08b73742c1b"),
    .extra_registers(0),
    .full_s_arith(2),
    .full_s_width(17),
    .latency(0),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(0),
    .s_width(16))
  addsub2 (
    .a(addsub2_s_net_x1),
    .b(addsub2_s_net_x2),
    .ce(ce_1_sg_x44),
    .clk(clk_1_sg_x44),
    .clr(1'b0),
    .en(1'b1),
    .s(addsub2_s_net)
  );

  xladdsub_pc_cfr_spartan6_v1_2 #(

    .a_arith(`xlSigned),
    .a_bin_pt(0),
    .a_width(16),
    .b_arith(`xlSigned),
    .b_bin_pt(0),
    .b_width(16),
    .c_has_c_out(0),
    .c_latency(0),
    .c_output_width(17),
    .core_name0("addsb_11_0_232ff08b73742c1b"),
    .extra_registers(0),
    .full_s_arith(2),
    .full_s_width(17),
    .latency(0),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(0),
    .s_width(16))
  addsub3 (
    .a(addsub1_s_net_x3),
    .b(addsub1_s_net_x4),
    .ce(ce_1_sg_x44),
    .clk(clk_1_sg_x44),
    .clr(1'b0),
    .en(1'b1),
    .s(addsub3_s_net)
  );

  xladdsub_pc_cfr_spartan6_v1_2 #(

    .a_arith(`xlSigned),
    .a_bin_pt(0),
    .a_width(16),
    .b_arith(`xlSigned),
    .b_bin_pt(0),
    .b_width(16),
    .c_has_c_out(0),
    .c_latency(0),
    .c_output_width(17),
    .core_name0("addsb_11_0_232ff08b73742c1b"),
    .extra_registers(0),
    .full_s_arith(2),
    .full_s_width(17),
    .latency(0),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(0),
    .s_width(16))
  addsub4 (
    .a(addsub1_s_net_x1),
    .b(addsub1_s_net_x2),
    .ce(ce_1_sg_x44),
    .clk(clk_1_sg_x44),
    .clr(1'b0),
    .en(1'b1),
    .s(addsub4_s_net)
  );

  xladdsub_pc_cfr_spartan6_v1_2 #(

    .a_arith(`xlSigned),
    .a_bin_pt(0),
    .a_width(16),
    .b_arith(`xlSigned),
    .b_bin_pt(0),
    .b_width(16),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(17),
    .core_name0("addsb_11_0_775dc3edc6782f4e"),
    .extra_registers(0),
    .full_s_arith(2),
    .full_s_width(17),
    .latency(1),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(0),
    .s_width(16))
  addsub5 (
    .a(addsub4_s_net),
    .b(addsub3_s_net),
    .ce(ce_1_sg_x44),
    .clk(clk_1_sg_x44),
    .clr(1'b0),
    .en(1'b1),
    .s(addsub5_s_net_x0)
  );

  cmplx_mac_module_982d92ad0d  cmplx_mac1_53e4d7d84b (
    .ai(reinterpret_output_port_net_x3),
    .ar(reinterpret1_output_port_net_x3),
    .bi(delay3_q_net_x1),
    .br(delay2_q_net_x1),
    .ce_1(ce_1_sg_x44),
    .clk_1(clk_1_sg_x44),
    .sum_im(addsub2_s_net_x2),
    .sum_re(addsub1_s_net_x2)
  );

  cmplx_mac_module_982d92ad0d  cmplx_mac2_6b80073277 (
    .ai(reinterpret_output_port_net_x4),
    .ar(reinterpret1_output_port_net_x4),
    .bi(delay6_q_net_x1),
    .br(delay5_q_net_x1),
    .ce_1(ce_1_sg_x44),
    .clk_1(clk_1_sg_x44),
    .sum_im(addsub2_s_net_x3),
    .sum_re(addsub1_s_net_x3)
  );

  cmplx_mac_module_982d92ad0d  cmplx_mac3_5284bd84e1 (
    .ai(reinterpret_output_port_net_x5),
    .ar(reinterpret1_output_port_net_x5),
    .bi(delay7_q_net_x1),
    .br(delay8_q_net_x1),
    .ce_1(ce_1_sg_x44),
    .clk_1(clk_1_sg_x44),
    .sum_im(addsub2_s_net_x4),
    .sum_re(addsub1_s_net_x4)
  );

  cmplx_mac_module_982d92ad0d  cmplx_mac_982d92ad0d (
    .ai(reinterpret_output_port_net_x2),
    .ar(reinterpret1_output_port_net_x2),
    .bi(delay1_q_net_x1),
    .br(delay4_q_net_x1),
    .ce_1(ce_1_sg_x44),
    .clk_1(clk_1_sg_x44),
    .sum_im(addsub2_s_net_x1),
    .sum_re(addsub1_s_net_x1)
  );

  cpg_allocator_module_80224748af  cpg_allocator_80224748af (
    .alloc_spacing(alloc_spacing_net_x2),
    .ce_1(ce_1_sg_x44),
    .clk_1(clk_1_sg_x44),
    .numtaps(filter_numtaps_net_x5),
    .peak_indicator(cp_locator_x5),
    .peak_scale_i(reinterpret1_output_port_net_x9),
    .peak_scale_q(reinterpret2_output_port_net_x9),
    .register2(register2_q_net_x24),
    .cpg_0_addr(register_q_net_x15),
    .cpg_0_peak_i(register3_q_net_x10),
    .cpg_0_peak_q(register3_q_net_x11),
    .cpg_1_addr(register_q_net_x16),
    .cpg_1_peak_i(register3_q_net_x12),
    .cpg_1_peak_q(register3_q_net_x13),
    .cpg_2_addr(register_q_net_x17),
    .cpg_2_peak_i(register3_q_net_x14),
    .cpg_2_peak_q(register3_q_net_x15),
    .cpg_3_addr(register_q_net_x18),
    .cpg_3_peak_i(register3_q_net_x16),
    .cpg_3_peak_q(register3_q_net_x17)
  );

  delay_7d3a088f82  delay1 (
    .ce(ce_1_sg_x44),
    .clk(clk_1_sg_x44),
    .clr(1'b0),
    .d(register3_q_net_x11),
    .q(delay1_q_net_x1)
  );

  delay_7d3a088f82  delay2 (
    .ce(ce_1_sg_x44),
    .clk(clk_1_sg_x44),
    .clr(1'b0),
    .d(register3_q_net_x12),
    .q(delay2_q_net_x1)
  );

  delay_7d3a088f82  delay3 (
    .ce(ce_1_sg_x44),
    .clk(clk_1_sg_x44),
    .clr(1'b0),
    .d(register3_q_net_x13),
    .q(delay3_q_net_x1)
  );

  delay_7d3a088f82  delay4 (
    .ce(ce_1_sg_x44),
    .clk(clk_1_sg_x44),
    .clr(1'b0),
    .d(register3_q_net_x10),
    .q(delay4_q_net_x1)
  );

  delay_7d3a088f82  delay5 (
    .ce(ce_1_sg_x44),
    .clk(clk_1_sg_x44),
    .clr(1'b0),
    .d(register3_q_net_x14),
    .q(delay5_q_net_x1)
  );

  delay_7d3a088f82  delay6 (
    .ce(ce_1_sg_x44),
    .clk(clk_1_sg_x44),
    .clr(1'b0),
    .d(register3_q_net_x15),
    .q(delay6_q_net_x1)
  );

  delay_7d3a088f82  delay7 (
    .ce(ce_1_sg_x44),
    .clk(clk_1_sg_x44),
    .clr(1'b0),
    .d(register3_q_net_x17),
    .q(delay7_q_net_x1)
  );

  delay_7d3a088f82  delay8 (
    .ce(ce_1_sg_x44),
    .clk(clk_1_sg_x44),
    .clr(1'b0),
    .d(register3_q_net_x16),
    .q(delay8_q_net_x1)
  );

  filter_ram_module_4b0c5a332f  filter_ram1_92a385ede2 (
    .ce_1(ce_1_sg_x44),
    .clk_1(clk_1_sg_x44),
    .rd_addr(register_q_net_x16),
    .wr_addr(filter_ram_addr_net_x4),
    .wr_data(filter_ram_data_net_x4),
    .wr_en(filter_ram_we_net_x4),
    .coef_im(reinterpret_output_port_net_x3),
    .coef_re(reinterpret1_output_port_net_x3)
  );

  filter_ram_module_4b0c5a332f  filter_ram2_09f5a7b3e5 (
    .ce_1(ce_1_sg_x44),
    .clk_1(clk_1_sg_x44),
    .rd_addr(register_q_net_x17),
    .wr_addr(filter_ram_addr_net_x4),
    .wr_data(filter_ram_data_net_x4),
    .wr_en(filter_ram_we_net_x4),
    .coef_im(reinterpret_output_port_net_x4),
    .coef_re(reinterpret1_output_port_net_x4)
  );

  filter_ram_module_4b0c5a332f  filter_ram3_06e1eac1fc (
    .ce_1(ce_1_sg_x44),
    .clk_1(clk_1_sg_x44),
    .rd_addr(register_q_net_x18),
    .wr_addr(filter_ram_addr_net_x4),
    .wr_data(filter_ram_data_net_x4),
    .wr_en(filter_ram_we_net_x4),
    .coef_im(reinterpret_output_port_net_x5),
    .coef_re(reinterpret1_output_port_net_x5)
  );

  filter_ram_module_4b0c5a332f  filter_ram_4b0c5a332f (
    .ce_1(ce_1_sg_x44),
    .clk_1(clk_1_sg_x44),
    .rd_addr(register_q_net_x15),
    .wr_addr(filter_ram_addr_net_x4),
    .wr_data(filter_ram_data_net_x4),
    .wr_en(filter_ram_we_net_x4),
    .coef_im(reinterpret_output_port_net_x2),
    .coef_re(reinterpret1_output_port_net_x2)
  );
endmodule
// Generated from Simulink block "pc_cfr_spartan6_v1_2/pc_cfr_spartan6/pc_cfr_iteration_1/cordic_mag_sin_cos/cordic_stages/cordic_gain"

module cordic_gain_module_7a2558ea53 (
  ce_1,
  clk_1,
  x,
  y
);

  input [0:0] ce_1;
  input [0:0] clk_1;
  input [17:0] x;
  output [15:0] y;

  wire [25:0] addsub1_s_net;
  wire [24:0] addsub2_s_net;
  wire [25:0] addsub_s_net;
  wire [17:0] addsub_s_net_x1;
  wire [0:0] ce_1_sg_x45;
  wire [0:0] clk_1_sg_x45;
  wire [25:0] convert_dout_net;
  wire [25:0] shift1_op_net;
  wire [25:0] shift2_op_net;
  wire [25:0] shift_op_net;
  wire [15:0] x16_msbs_y_net_x0;

  assign ce_1_sg_x45 = ce_1;
  assign clk_1_sg_x45 = clk_1;
  assign addsub_s_net_x1 = x;
  assign y = x16_msbs_y_net_x0;


  addsub_c1ccc3be8a  addsub (
    .a(shift_op_net),
    .b(convert_dout_net),
    .ce(ce_1_sg_x45),
    .clk(clk_1_sg_x45),
    .clr(1'b0),
    .s(addsub_s_net)
  );

  addsub_c1ccc3be8a  addsub1 (
    .a(shift1_op_net),
    .b(shift2_op_net),
    .ce(ce_1_sg_x45),
    .clk(clk_1_sg_x45),
    .clr(1'b0),
    .s(addsub1_s_net)
  );

  addsub_43d22903cb  addsub2 (
    .a(addsub_s_net),
    .b(addsub1_s_net),
    .ce(ce_1_sg_x45),
    .clk(clk_1_sg_x45),
    .clr(1'b0),
    .s(addsub2_s_net)
  );

  xlconvert #(

    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(0),
    .din_width(18),
    .dout_arith(2),
    .dout_bin_pt(0),
    .dout_width(26),
    .latency(0),
    .overflow(`xlWrap),
    .quantization(`xlTruncate))
  convert (
    .ce(ce_1_sg_x45),
    .clk(clk_1_sg_x45),
    .clr(1'b0),
    .din(addsub_s_net_x1),
    .en(1'b1),
    .dout(convert_dout_net)
  );

  shift_83be7e67ad  shift (
    .ce(ce_1_sg_x45),
    .clk(clk_1_sg_x45),
    .clr(1'b0),
    .ip(addsub_s_net_x1),
    .op(shift_op_net)
  );

  shift_65a35a0ba3  shift1 (
    .ce(ce_1_sg_x45),
    .clk(clk_1_sg_x45),
    .clr(1'b0),
    .ip(addsub_s_net_x1),
    .op(shift1_op_net)
  );

  shift_41579f67e2  shift2 (
    .ce(ce_1_sg_x45),
    .clk(clk_1_sg_x45),
    .clr(1'b0),
    .ip(addsub_s_net_x1),
    .op(shift2_op_net)
  );

  xlslice #(

    .new_lsb(9),
    .new_msb(24),
    .x_width(25),
    .y_width(16))
  x16_msbs (
    .x(addsub2_s_net),
    .y(x16_msbs_y_net_x0)
  );
endmodule
// Generated from Simulink block "pc_cfr_spartan6_v1_2/pc_cfr_spartan6/pc_cfr_iteration_1/cordic_mag_sin_cos/cordic_stages/cordic_stage_0"

module cordic_stage_0_module_c9f9cf8a85 (
  ce_1,
  clk_1,
  iin,
  iout,
  qin,
  qout
);

  input [0:0] ce_1;
  input [0:0] clk_1;
  input [15:0] iin;
  input [15:0] qin;
  output [17:0] iout;
  output [17:0] qout;

  wire [17:0] addsub1_s_net_x0;
  wire [17:0] addsub_s_net_x0;
  wire [0:0] ce_1_sg_x46;
  wire [0:0] clk_1_sg_x46;
  wire [0:0] inverter_op_net;
  wire [0:0] msb_y_net;
  wire [15:0] mux2_y_net_x0;
  wire [15:0] mux3_y_net_x0;
  wire [15:0] shift1_op_net;
  wire [15:0] shift_op_net;

  assign ce_1_sg_x46 = ce_1;
  assign clk_1_sg_x46 = clk_1;
  assign mux2_y_net_x0 = iin;
  assign iout = addsub_s_net_x0;
  assign mux3_y_net_x0 = qin;
  assign qout = addsub1_s_net_x0;


  addsub_d546b3de9d  addsub (
    .a(mux2_y_net_x0),
    .b(shift_op_net),
    .ce(ce_1_sg_x46),
    .clk(clk_1_sg_x46),
    .clr(1'b0),
    .mode(msb_y_net),
    .s(addsub_s_net_x0)
  );

  addsub_d546b3de9d  addsub1 (
    .a(mux3_y_net_x0),
    .b(shift1_op_net),
    .ce(ce_1_sg_x46),
    .clk(clk_1_sg_x46),
    .clr(1'b0),
    .mode(inverter_op_net),
    .s(addsub1_s_net_x0)
  );

  inverter_33a63b558a  inverter (
    .ce(ce_1_sg_x46),
    .clk(clk_1_sg_x46),
    .clr(1'b0),
    .ip(msb_y_net),
    .op(inverter_op_net)
  );

  xlslice #(

    .new_lsb(15),
    .new_msb(15),
    .x_width(16),
    .y_width(1))
  msb (
    .x(mux3_y_net_x0),
    .y(msb_y_net)
  );

  shift_242a713649  shift (
    .ce(ce_1_sg_x46),
    .clk(clk_1_sg_x46),
    .clr(1'b0),
    .ip(mux3_y_net_x0),
    .op(shift_op_net)
  );

  shift_242a713649  shift1 (
    .ce(ce_1_sg_x46),
    .clk(clk_1_sg_x46),
    .clr(1'b0),
    .ip(mux2_y_net_x0),
    .op(shift1_op_net)
  );
endmodule
// Generated from Simulink block "pc_cfr_spartan6_v1_2/pc_cfr_spartan6/pc_cfr_iteration_1/cordic_mag_sin_cos/cordic_stages/cordic_stage_1"

module cordic_stage_1_module_91b85e7a2b (
  ce_1,
  clk_1,
  iin,
  iout,
  qin,
  qout
);

  input [0:0] ce_1;
  input [0:0] clk_1;
  input [17:0] iin;
  input [17:0] qin;
  output [17:0] iout;
  output [17:0] qout;

  wire [17:0] addsub1_s_net_x1;
  wire [17:0] addsub1_s_net_x2;
  wire [17:0] addsub_s_net_x1;
  wire [17:0] addsub_s_net_x2;
  wire [0:0] ce_1_sg_x47;
  wire [0:0] clk_1_sg_x47;
  wire [0:0] inverter_op_net;
  wire [0:0] msb_y_net;
  wire [17:0] shift1_op_net;
  wire [17:0] shift_op_net;

  assign ce_1_sg_x47 = ce_1;
  assign clk_1_sg_x47 = clk_1;
  assign addsub_s_net_x1 = iin;
  assign iout = addsub_s_net_x2;
  assign addsub1_s_net_x1 = qin;
  assign qout = addsub1_s_net_x2;


  addsub_14dcc7ebeb  addsub (
    .a(addsub_s_net_x1),
    .b(shift_op_net),
    .ce(ce_1_sg_x47),
    .clk(clk_1_sg_x47),
    .clr(1'b0),
    .mode(msb_y_net),
    .s(addsub_s_net_x2)
  );

  addsub_14dcc7ebeb  addsub1 (
    .a(addsub1_s_net_x1),
    .b(shift1_op_net),
    .ce(ce_1_sg_x47),
    .clk(clk_1_sg_x47),
    .clr(1'b0),
    .mode(inverter_op_net),
    .s(addsub1_s_net_x2)
  );

  inverter_33a63b558a  inverter (
    .ce(ce_1_sg_x47),
    .clk(clk_1_sg_x47),
    .clr(1'b0),
    .ip(msb_y_net),
    .op(inverter_op_net)
  );

  xlslice #(

    .new_lsb(17),
    .new_msb(17),
    .x_width(18),
    .y_width(1))
  msb (
    .x(addsub1_s_net_x1),
    .y(msb_y_net)
  );

  shift_5423e932f0  shift (
    .ce(ce_1_sg_x47),
    .clk(clk_1_sg_x47),
    .clr(1'b0),
    .ip(addsub1_s_net_x1),
    .op(shift_op_net)
  );

  shift_5423e932f0  shift1 (
    .ce(ce_1_sg_x47),
    .clk(clk_1_sg_x47),
    .clr(1'b0),
    .ip(addsub_s_net_x1),
    .op(shift1_op_net)
  );
endmodule
// Generated from Simulink block "pc_cfr_spartan6_v1_2/pc_cfr_spartan6/pc_cfr_iteration_1/cordic_mag_sin_cos/cordic_stages/cordic_stage_2"

module cordic_stage_2_module_3e2b1d4a28 (
  ce_1,
  clk_1,
  iin,
  iout,
  qin,
  qout
);

  input [0:0] ce_1;
  input [0:0] clk_1;
  input [17:0] iin;
  input [17:0] qin;
  output [17:0] iout;
  output [17:0] qout;

  wire [17:0] addsub1_s_net_x0;
  wire [17:0] addsub1_s_net_x3;
  wire [17:0] addsub_s_net_x0;
  wire [17:0] addsub_s_net_x3;
  wire [0:0] ce_1_sg_x48;
  wire [0:0] clk_1_sg_x48;
  wire [0:0] inverter_op_net;
  wire [0:0] msb_y_net;
  wire [17:0] shift1_op_net;
  wire [17:0] shift_op_net;

  assign ce_1_sg_x48 = ce_1;
  assign clk_1_sg_x48 = clk_1;
  assign addsub_s_net_x3 = iin;
  assign iout = addsub_s_net_x0;
  assign addsub1_s_net_x3 = qin;
  assign qout = addsub1_s_net_x0;


  addsub_14dcc7ebeb  addsub (
    .a(addsub_s_net_x3),
    .b(shift_op_net),
    .ce(ce_1_sg_x48),
    .clk(clk_1_sg_x48),
    .clr(1'b0),
    .mode(msb_y_net),
    .s(addsub_s_net_x0)
  );

  addsub_14dcc7ebeb  addsub1 (
    .a(addsub1_s_net_x3),
    .b(shift1_op_net),
    .ce(ce_1_sg_x48),
    .clk(clk_1_sg_x48),
    .clr(1'b0),
    .mode(inverter_op_net),
    .s(addsub1_s_net_x0)
  );

  inverter_33a63b558a  inverter (
    .ce(ce_1_sg_x48),
    .clk(clk_1_sg_x48),
    .clr(1'b0),
    .ip(msb_y_net),
    .op(inverter_op_net)
  );

  xlslice #(

    .new_lsb(17),
    .new_msb(17),
    .x_width(18),
    .y_width(1))
  msb (
    .x(addsub1_s_net_x3),
    .y(msb_y_net)
  );

  shift_69c26659b1  shift (
    .ce(ce_1_sg_x48),
    .clk(clk_1_sg_x48),
    .clr(1'b0),
    .ip(addsub1_s_net_x3),
    .op(shift_op_net)
  );

  shift_69c26659b1  shift1 (
    .ce(ce_1_sg_x48),
    .clk(clk_1_sg_x48),
    .clr(1'b0),
    .ip(addsub_s_net_x3),
    .op(shift1_op_net)
  );
endmodule
// Generated from Simulink block "pc_cfr_spartan6_v1_2/pc_cfr_spartan6/pc_cfr_iteration_1/cordic_mag_sin_cos/cordic_stages/cordic_stage_3"

module cordic_stage_3_module_fe2b530ff5 (
  ce_1,
  clk_1,
  iin,
  iout,
  qin,
  qout
);

  input [0:0] ce_1;
  input [0:0] clk_1;
  input [17:0] iin;
  input [17:0] qin;
  output [17:0] iout;
  output [17:0] qout;

  wire [17:0] addsub1_s_net_x1;
  wire [17:0] addsub1_s_net_x2;
  wire [17:0] addsub_s_net_x1;
  wire [17:0] addsub_s_net_x2;
  wire [0:0] ce_1_sg_x49;
  wire [0:0] clk_1_sg_x49;
  wire [0:0] inverter_op_net;
  wire [0:0] msb_y_net;
  wire [17:0] shift1_op_net;
  wire [17:0] shift_op_net;

  assign ce_1_sg_x49 = ce_1;
  assign clk_1_sg_x49 = clk_1;
  assign addsub_s_net_x1 = iin;
  assign iout = addsub_s_net_x2;
  assign addsub1_s_net_x1 = qin;
  assign qout = addsub1_s_net_x2;


  addsub_14dcc7ebeb  addsub (
    .a(addsub_s_net_x1),
    .b(shift_op_net),
    .ce(ce_1_sg_x49),
    .clk(clk_1_sg_x49),
    .clr(1'b0),
    .mode(msb_y_net),
    .s(addsub_s_net_x2)
  );

  addsub_14dcc7ebeb  addsub1 (
    .a(addsub1_s_net_x1),
    .b(shift1_op_net),
    .ce(ce_1_sg_x49),
    .clk(clk_1_sg_x49),
    .clr(1'b0),
    .mode(inverter_op_net),
    .s(addsub1_s_net_x2)
  );

  inverter_33a63b558a  inverter (
    .ce(ce_1_sg_x49),
    .clk(clk_1_sg_x49),
    .clr(1'b0),
    .ip(msb_y_net),
    .op(inverter_op_net)
  );

  xlslice #(

    .new_lsb(17),
    .new_msb(17),
    .x_width(18),
    .y_width(1))
  msb (
    .x(addsub1_s_net_x1),
    .y(msb_y_net)
  );

  shift_bf37e7e608  shift (
    .ce(ce_1_sg_x49),
    .clk(clk_1_sg_x49),
    .clr(1'b0),
    .ip(addsub1_s_net_x1),
    .op(shift_op_net)
  );

  shift_bf37e7e608  shift1 (
    .ce(ce_1_sg_x49),
    .clk(clk_1_sg_x49),
    .clr(1'b0),
    .ip(addsub_s_net_x1),
    .op(shift1_op_net)
  );
endmodule
// Generated from Simulink block "pc_cfr_spartan6_v1_2/pc_cfr_spartan6/pc_cfr_iteration_1/cordic_mag_sin_cos/cordic_stages/cordic_stage_4"

module cordic_stage_4_module_7fb4fb458b (
  ce_1,
  clk_1,
  iin,
  iout,
  qin,
  qout
);

  input [0:0] ce_1;
  input [0:0] clk_1;
  input [17:0] iin;
  input [17:0] qin;
  output [17:0] iout;
  output [17:0] qout;

  wire [17:0] addsub1_s_net_x0;
  wire [17:0] addsub1_s_net_x3;
  wire [17:0] addsub_s_net_x0;
  wire [17:0] addsub_s_net_x3;
  wire [0:0] ce_1_sg_x50;
  wire [0:0] clk_1_sg_x50;
  wire [0:0] inverter_op_net;
  wire [0:0] msb_y_net;
  wire [17:0] shift1_op_net;
  wire [17:0] shift_op_net;

  assign ce_1_sg_x50 = ce_1;
  assign clk_1_sg_x50 = clk_1;
  assign addsub_s_net_x3 = iin;
  assign iout = addsub_s_net_x0;
  assign addsub1_s_net_x3 = qin;
  assign qout = addsub1_s_net_x0;


  addsub_14dcc7ebeb  addsub (
    .a(addsub_s_net_x3),
    .b(shift_op_net),
    .ce(ce_1_sg_x50),
    .clk(clk_1_sg_x50),
    .clr(1'b0),
    .mode(msb_y_net),
    .s(addsub_s_net_x0)
  );

  addsub_14dcc7ebeb  addsub1 (
    .a(addsub1_s_net_x3),
    .b(shift1_op_net),
    .ce(ce_1_sg_x50),
    .clk(clk_1_sg_x50),
    .clr(1'b0),
    .mode(inverter_op_net),
    .s(addsub1_s_net_x0)
  );

  inverter_33a63b558a  inverter (
    .ce(ce_1_sg_x50),
    .clk(clk_1_sg_x50),
    .clr(1'b0),
    .ip(msb_y_net),
    .op(inverter_op_net)
  );

  xlslice #(

    .new_lsb(17),
    .new_msb(17),
    .x_width(18),
    .y_width(1))
  msb (
    .x(addsub1_s_net_x3),
    .y(msb_y_net)
  );

  shift_8a1f5c0a9e  shift (
    .ce(ce_1_sg_x50),
    .clk(clk_1_sg_x50),
    .clr(1'b0),
    .ip(addsub1_s_net_x3),
    .op(shift_op_net)
  );

  shift_8a1f5c0a9e  shift1 (
    .ce(ce_1_sg_x50),
    .clk(clk_1_sg_x50),
    .clr(1'b0),
    .ip(addsub_s_net_x3),
    .op(shift1_op_net)
  );
endmodule
// Generated from Simulink block "pc_cfr_spartan6_v1_2/pc_cfr_spartan6/pc_cfr_iteration_1/cordic_mag_sin_cos/cordic_stages/cordic_stage_5"

module cordic_stage_5_module_69d39221e8 (
  ce_1,
  clk_1,
  iin,
  iout,
  qin
);

  input [0:0] ce_1;
  input [0:0] clk_1;
  input [17:0] iin;
  input [17:0] qin;
  output [17:0] iout;

  wire [17:0] addsub1_s_net_x1;
  wire [17:0] addsub_s_net_x2;
  wire [17:0] addsub_s_net_x3;
  wire [0:0] ce_1_sg_x51;
  wire [0:0] clk_1_sg_x51;
  wire [0:0] msb_y_net;
  wire [17:0] shift_op_net;

  assign ce_1_sg_x51 = ce_1;
  assign clk_1_sg_x51 = clk_1;
  assign addsub_s_net_x2 = iin;
  assign iout = addsub_s_net_x3;
  assign addsub1_s_net_x1 = qin;


  addsub_14dcc7ebeb  addsub (
    .a(addsub_s_net_x2),
    .b(shift_op_net),
    .ce(ce_1_sg_x51),
    .clk(clk_1_sg_x51),
    .clr(1'b0),
    .mode(msb_y_net),
    .s(addsub_s_net_x3)
  );

  xlslice #(

    .new_lsb(17),
    .new_msb(17),
    .x_width(18),
    .y_width(1))
  msb (
    .x(addsub1_s_net_x1),
    .y(msb_y_net)
  );

  shift_783ce18d91  shift (
    .ce(ce_1_sg_x51),
    .clk(clk_1_sg_x51),
    .clr(1'b0),
    .ip(addsub1_s_net_x1),
    .op(shift_op_net)
  );
endmodule
// Generated from Simulink block "pc_cfr_spartan6_v1_2/pc_cfr_spartan6/pc_cfr_iteration_1/cordic_mag_sin_cos/cordic_stages/sin_cos_lut"

module sin_cos_lut_module_5ea32480ad (
  ce_1,
  clk_1,
  cos_out,
  msb1,
  msb2,
  msb3,
  msb4,
  msb5,
  sin_out
);

  input [0:0] ce_1;
  input [0:0] clk_1;
  input [17:0] msb1;
  input [17:0] msb2;
  input [17:0] msb3;
  input [17:0] msb4;
  input [17:0] msb5;
  output [13:0] cos_out;
  output [13:0] sin_out;

  wire [17:0] addsub1_s_net_x10;
  wire [17:0] addsub1_s_net_x6;
  wire [17:0] addsub1_s_net_x7;
  wire [17:0] addsub1_s_net_x8;
  wire [17:0] addsub1_s_net_x9;
  wire [0:0] ce_1_sg_x52;
  wire [0:0] clk_1_sg_x52;
  wire [4:0] concat_y_net;
  wire [13:0] cos_lut_data_net_x0;
  wire [0:0] delay1_q_net;
  wire [0:0] delay2_q_net;
  wire [0:0] delay3_q_net;
  wire [0:0] delay5_q_net;
  wire [0:0] delay_q_net;
  wire [0:0] msb_1_y_net;
  wire [0:0] msb_2_y_net;
  wire [0:0] msb_3_y_net;
  wire [0:0] msb_4_y_net;
  wire [0:0] msb_5_y_net;
  wire [13:0] sin_lut_data_net_x0;

  assign ce_1_sg_x52 = ce_1;
  assign clk_1_sg_x52 = clk_1;
  assign cos_out = cos_lut_data_net_x0;
  assign addsub1_s_net_x6 = msb1;
  assign addsub1_s_net_x7 = msb2;
  assign addsub1_s_net_x8 = msb3;
  assign addsub1_s_net_x9 = msb4;
  assign addsub1_s_net_x10 = msb5;
  assign sin_out = sin_lut_data_net_x0;


  concat_0f2a9029de  concat (
    .ce(1'b0),
    .clk(1'b0),
    .clr(1'b0),
    .in0(delay3_q_net),
    .in1(delay2_q_net),
    .in2(delay1_q_net),
    .in3(delay_q_net),
    .in4(delay5_q_net),
    .y(concat_y_net)
  );

  xlsprom_dist_pc_cfr_spartan6_v1_2 #(

    .addr_width(5),
    .c_address_width(5),
    .c_width(14),
    .core_name0("dmg_72_195596f332d57672"),
    .latency(1))
  cos_lut (
    .addr(concat_y_net),
    .ce(ce_1_sg_x52),
    .clk(clk_1_sg_x52),
    .en(1'b1),
    .data(cos_lut_data_net_x0)
  );

  delay_19fb89c202  delay (
    .ce(ce_1_sg_x52),
    .clk(clk_1_sg_x52),
    .clr(1'b0),
    .d(msb_4_y_net),
    .q(delay_q_net)
  );

  delay_e7915bbc50  delay1 (
    .ce(ce_1_sg_x52),
    .clk(clk_1_sg_x52),
    .clr(1'b0),
    .d(msb_3_y_net),
    .q(delay1_q_net)
  );

  delay_fb81ab31ae  delay2 (
    .ce(ce_1_sg_x52),
    .clk(clk_1_sg_x52),
    .clr(1'b0),
    .d(msb_2_y_net),
    .q(delay2_q_net)
  );

  delay_0512afa688  delay3 (
    .ce(ce_1_sg_x52),
    .clk(clk_1_sg_x52),
    .clr(1'b0),
    .d(msb_1_y_net),
    .q(delay3_q_net)
  );

  delay_211dcce0ef  delay5 (
    .ce(ce_1_sg_x52),
    .clk(clk_1_sg_x52),
    .clr(1'b0),
    .d(msb_5_y_net),
    .q(delay5_q_net)
  );

  xlslice #(

    .new_lsb(17),
    .new_msb(17),
    .x_width(18),
    .y_width(1))
  msb_1 (
    .x(addsub1_s_net_x6),
    .y(msb_1_y_net)
  );

  xlslice #(

    .new_lsb(17),
    .new_msb(17),
    .x_width(18),
    .y_width(1))
  msb_2 (
    .x(addsub1_s_net_x7),
    .y(msb_2_y_net)
  );

  xlslice #(

    .new_lsb(17),
    .new_msb(17),
    .x_width(18),
    .y_width(1))
  msb_3 (
    .x(addsub1_s_net_x8),
    .y(msb_3_y_net)
  );

  xlslice #(

    .new_lsb(17),
    .new_msb(17),
    .x_width(18),
    .y_width(1))
  msb_4 (
    .x(addsub1_s_net_x9),
    .y(msb_4_y_net)
  );

  xlslice #(

    .new_lsb(17),
    .new_msb(17),
    .x_width(18),
    .y_width(1))
  msb_5 (
    .x(addsub1_s_net_x10),
    .y(msb_5_y_net)
  );

  xlsprom_dist_pc_cfr_spartan6_v1_2 #(

    .addr_width(5),
    .c_address_width(5),
    .c_width(14),
    .core_name0("dmg_72_ad5060a4053d2208"),
    .latency(1))
  sin_lut (
    .addr(concat_y_net),
    .ce(ce_1_sg_x52),
    .clk(clk_1_sg_x52),
    .en(1'b1),
    .data(sin_lut_data_net_x0)
  );
endmodule
// Generated from Simulink block "pc_cfr_spartan6_v1_2/pc_cfr_spartan6/pc_cfr_iteration_1/cordic_mag_sin_cos/cordic_stages"

module cordic_stages_module_85040e1219 (
  ce_1,
  clk_1,
  cos_out,
  i_in,
  mag_out,
  q_in,
  sin_out
);

  input [0:0] ce_1;
  input [0:0] clk_1;
  input [15:0] i_in;
  input [15:0] q_in;
  output [13:0] cos_out;
  output [15:0] mag_out;
  output [13:0] sin_out;

  wire [17:0] addsub1_s_net_x10;
  wire [17:0] addsub1_s_net_x6;
  wire [17:0] addsub1_s_net_x7;
  wire [17:0] addsub1_s_net_x8;
  wire [17:0] addsub1_s_net_x9;
  wire [17:0] addsub_s_net_x1;
  wire [17:0] addsub_s_net_x2;
  wire [17:0] addsub_s_net_x3;
  wire [17:0] addsub_s_net_x4;
  wire [17:0] addsub_s_net_x5;
  wire [17:0] addsub_s_net_x6;
  wire [0:0] ce_1_sg_x53;
  wire [0:0] clk_1_sg_x53;
  wire [13:0] cos_lut_data_net_x1;
  wire [15:0] mux2_y_net_x1;
  wire [15:0] mux3_y_net_x1;
  wire [13:0] sin_lut_data_net_x1;
  wire [15:0] x16_msbs_y_net_x1;

  assign ce_1_sg_x53 = ce_1;
  assign clk_1_sg_x53 = clk_1;
  assign cos_out = cos_lut_data_net_x1;
  assign mux2_y_net_x1 = i_in;
  assign mag_out = x16_msbs_y_net_x1;
  assign mux3_y_net_x1 = q_in;
  assign sin_out = sin_lut_data_net_x1;


  cordic_gain_module_7a2558ea53  cordic_gain_7a2558ea53 (
    .ce_1(ce_1_sg_x53),
    .clk_1(clk_1_sg_x53),
    .x(addsub_s_net_x6),
    .y(x16_msbs_y_net_x1)
  );

  cordic_stage_0_module_c9f9cf8a85  cordic_stage_0_c9f9cf8a85 (
    .ce_1(ce_1_sg_x53),
    .clk_1(clk_1_sg_x53),
    .iin(mux2_y_net_x1),
    .qin(mux3_y_net_x1),
    .iout(addsub_s_net_x1),
    .qout(addsub1_s_net_x6)
  );

  cordic_stage_1_module_91b85e7a2b  cordic_stage_1_91b85e7a2b (
    .ce_1(ce_1_sg_x53),
    .clk_1(clk_1_sg_x53),
    .iin(addsub_s_net_x1),
    .qin(addsub1_s_net_x6),
    .iout(addsub_s_net_x3),
    .qout(addsub1_s_net_x7)
  );

  cordic_stage_2_module_3e2b1d4a28  cordic_stage_2_3e2b1d4a28 (
    .ce_1(ce_1_sg_x53),
    .clk_1(clk_1_sg_x53),
    .iin(addsub_s_net_x3),
    .qin(addsub1_s_net_x7),
    .iout(addsub_s_net_x2),
    .qout(addsub1_s_net_x8)
  );

  cordic_stage_3_module_fe2b530ff5  cordic_stage_3_fe2b530ff5 (
    .ce_1(ce_1_sg_x53),
    .clk_1(clk_1_sg_x53),
    .iin(addsub_s_net_x2),
    .qin(addsub1_s_net_x8),
    .iout(addsub_s_net_x4),
    .qout(addsub1_s_net_x9)
  );

  cordic_stage_4_module_7fb4fb458b  cordic_stage_4_7fb4fb458b (
    .ce_1(ce_1_sg_x53),
    .clk_1(clk_1_sg_x53),
    .iin(addsub_s_net_x4),
    .qin(addsub1_s_net_x9),
    .iout(addsub_s_net_x5),
    .qout(addsub1_s_net_x10)
  );

  cordic_stage_5_module_69d39221e8  cordic_stage_5_69d39221e8 (
    .ce_1(ce_1_sg_x53),
    .clk_1(clk_1_sg_x53),
    .iin(addsub_s_net_x5),
    .qin(addsub1_s_net_x10),
    .iout(addsub_s_net_x6)
  );

  sin_cos_lut_module_5ea32480ad  sin_cos_lut_5ea32480ad (
    .ce_1(ce_1_sg_x53),
    .clk_1(clk_1_sg_x53),
    .msb1(addsub1_s_net_x6),
    .msb2(addsub1_s_net_x7),
    .msb3(addsub1_s_net_x8),
    .msb4(addsub1_s_net_x9),
    .msb5(addsub1_s_net_x10),
    .cos_out(cos_lut_data_net_x1),
    .sin_out(sin_lut_data_net_x1)
  );
endmodule
// Generated from Simulink block "pc_cfr_spartan6_v1_2/pc_cfr_spartan6/pc_cfr_iteration_1/cordic_mag_sin_cos/demapper"

module demapper_module_3a06a25d13 (
  ce_1,
  clk_1,
  cos_in,
  cos_out,
  sign_i,
  sign_q,
  sin_in,
  sin_out,
  swap_iq
);

  input [0:0] ce_1;
  input [0:0] clk_1;
  input [13:0] cos_in;
  input [0:0] sign_i;
  input [0:0] sign_q;
  input [13:0] sin_in;
  input [0:0] swap_iq;
  output [13:0] cos_out;
  output [13:0] sin_out;

  wire [0:0] ce_1_sg_x54;
  wire [0:0] clk_1_sg_x54;
  wire [1:0] concat1_y_net;
  wire [1:0] concat_y_net;
  wire [13:0] cos_lut_data_net_x2;
  wire [0:0] delay1_q_net_x0;
  wire [0:0] delay2_q_net_x0;
  wire [0:0] delay4_q_net_x0;
  wire [13:0] mux1_y_net_x0;
  wire [13:0] mux2_y_net_x0;
  wire [13:0] negate1_op_net;
  wire [13:0] negate_op_net;
  wire [13:0] sin_lut_data_net_x2;

  assign ce_1_sg_x54 = ce_1;
  assign clk_1_sg_x54 = clk_1;
  assign cos_lut_data_net_x2 = cos_in;
  assign cos_out = mux1_y_net_x0;
  assign delay4_q_net_x0 = sign_i;
  assign delay1_q_net_x0 = sign_q;
  assign sin_lut_data_net_x2 = sin_in;
  assign sin_out = mux2_y_net_x0;
  assign delay2_q_net_x0 = swap_iq;


  concat_983f7013a1  concat (
    .ce(1'b0),
    .clk(1'b0),
    .clr(1'b0),
    .in0(delay4_q_net_x0),
    .in1(delay2_q_net_x0),
    .y(concat_y_net)
  );

  concat_983f7013a1  concat1 (
    .ce(1'b0),
    .clk(1'b0),
    .clr(1'b0),
    .in0(delay1_q_net_x0),
    .in1(delay2_q_net_x0),
    .y(concat1_y_net)
  );

  mux_4e39b191fc  mux1 (
    .ce(ce_1_sg_x54),
    .clk(clk_1_sg_x54),
    .clr(1'b0),
    .d0(cos_lut_data_net_x2),
    .d1(sin_lut_data_net_x2),
    .d2(negate_op_net),
    .d3(negate1_op_net),
    .sel(concat_y_net),
    .y(mux1_y_net_x0)
  );

  mux_4e39b191fc  mux2 (
    .ce(ce_1_sg_x54),
    .clk(clk_1_sg_x54),
    .clr(1'b0),
    .d0(sin_lut_data_net_x2),
    .d1(cos_lut_data_net_x2),
    .d2(negate1_op_net),
    .d3(negate_op_net),
    .sel(concat1_y_net),
    .y(mux2_y_net_x0)
  );

  negate_0035cd4950  negate (
    .ce(ce_1_sg_x54),
    .clk(clk_1_sg_x54),
    .clr(1'b0),
    .ip(cos_lut_data_net_x2),
    .op(negate_op_net)
  );

  negate_0035cd4950  negate1 (
    .ce(ce_1_sg_x54),
    .clk(clk_1_sg_x54),
    .clr(1'b0),
    .ip(sin_lut_data_net_x2),
    .op(negate1_op_net)
  );
endmodule
// Generated from Simulink block "pc_cfr_spartan6_v1_2/pc_cfr_spartan6/pc_cfr_iteration_1/cordic_mag_sin_cos/mapper"

module mapper_module_1126d9b305 (
  ce_1,
  clk_1,
  i_in,
  i_out,
  q_in,
  q_out,
  sign_i,
  sign_q,
  swap_iq
);

  input [0:0] ce_1;
  input [0:0] clk_1;
  input [15:0] i_in;
  input [15:0] q_in;
  output [15:0] i_out;
  output [15:0] q_out;
  output [0:0] sign_i;
  output [0:0] sign_q;
  output [0:0] swap_iq;

  wire [0:0] ce_1_sg_x55;
  wire [0:0] clk_1_sg_x55;
  wire [15:0] data_i_in_net_x0;
  wire [15:0] data_q_in_net_x0;
  wire [15:0] inverter1_op_net;
  wire [15:0] inverter_op_net;
  wire [0:0] msb_i_y_net;
  wire [0:0] msb_q_y_net;
  wire [15:0] mux1_y_net;
  wire [15:0] mux2_y_net_x2;
  wire [15:0] mux3_y_net_x2;
  wire [15:0] mux_y_net;
  wire [0:0] register1_q_net_x0;
  wire [0:0] register2_q_net_x0;
  wire [15:0] register3_q_net;
  wire [15:0] register4_q_net;
  wire [0:0] register_q_net_x0;
  wire [0:0] relational_op_net;

  assign ce_1_sg_x55 = ce_1;
  assign clk_1_sg_x55 = clk_1;
  assign data_i_in_net_x0 = i_in;
  assign i_out = mux2_y_net_x2;
  assign data_q_in_net_x0 = q_in;
  assign q_out = mux3_y_net_x2;
  assign sign_i = register2_q_net_x0;
  assign sign_q = register1_q_net_x0;
  assign swap_iq = register_q_net_x0;


  inverter_4b3f1c3888  inverter (
    .ce(ce_1_sg_x55),
    .clk(clk_1_sg_x55),
    .clr(1'b0),
    .ip(register3_q_net),
    .op(inverter_op_net)
  );

  inverter_4b3f1c3888  inverter1 (
    .ce(ce_1_sg_x55),
    .clk(clk_1_sg_x55),
    .clr(1'b0),
    .ip(register4_q_net),
    .op(inverter1_op_net)
  );

  xlslice #(

    .new_lsb(15),
    .new_msb(15),
    .x_width(16),
    .y_width(1))
  msb_i (
    .x(register3_q_net),
    .y(msb_i_y_net)
  );

  xlslice #(

    .new_lsb(15),
    .new_msb(15),
    .x_width(16),
    .y_width(1))
  msb_q (
    .x(register4_q_net),
    .y(msb_q_y_net)
  );

  mux_31d78b046f  mux (
    .ce(1'b0),
    .clk(1'b0),
    .clr(1'b0),
    .d0(register3_q_net),
    .d1(inverter_op_net),
    .sel(msb_i_y_net),
    .y(mux_y_net)
  );

  mux_31d78b046f  mux1 (
    .ce(1'b0),
    .clk(1'b0),
    .clr(1'b0),
    .d0(register4_q_net),
    .d1(inverter1_op_net),
    .sel(msb_q_y_net),
    .y(mux1_y_net)
  );

  mux_f3921567cd  mux2 (
    .ce(ce_1_sg_x55),
    .clk(clk_1_sg_x55),
    .clr(1'b0),
    .d0(mux_y_net),
    .d1(mux1_y_net),
    .sel(relational_op_net),
    .y(mux2_y_net_x2)
  );

  mux_f3921567cd  mux3 (
    .ce(ce_1_sg_x55),
    .clk(clk_1_sg_x55),
    .clr(1'b0),
    .d0(mux1_y_net),
    .d1(mux_y_net),
    .sel(relational_op_net),
    .y(mux3_y_net_x2)
  );

  xlregister #(

    .d_width(1),
    .init_value(1'b0))
  register1 (
    .ce(ce_1_sg_x55),
    .clk(clk_1_sg_x55),
    .d(msb_q_y_net),
    .en(1'b1),
    .rst(1'b0),
    .q(register1_q_net_x0)
  );

  xlregister #(

    .d_width(1),
    .init_value(1'b0))
  register2 (
    .ce(ce_1_sg_x55),
    .clk(clk_1_sg_x55),
    .d(msb_i_y_net),
    .en(1'b1),
    .rst(1'b0),
    .q(register2_q_net_x0)
  );

  xlregister #(

    .d_width(16),
    .init_value(16'b0000000000000000))
  register3 (
    .ce(ce_1_sg_x55),
    .clk(clk_1_sg_x55),
    .d(data_i_in_net_x0),
    .en(1'b1),
    .rst(1'b0),
    .q(register3_q_net)
  );

  xlregister #(

    .d_width(16),
    .init_value(16'b0000000000000000))
  register4 (
    .ce(ce_1_sg_x55),
    .clk(clk_1_sg_x55),
    .d(data_q_in_net_x0),
    .en(1'b1),
    .rst(1'b0),
    .q(register4_q_net)
  );

  xlregister #(

    .d_width(1),
    .init_value(1'b0))
  register_x0 (
    .ce(ce_1_sg_x55),
    .clk(clk_1_sg_x55),
    .d(relational_op_net),
    .en(1'b1),
    .rst(1'b0),
    .q(register_q_net_x0)
  );

  relational_3020c548d1  relational (
    .a(mux_y_net),
    .b(mux1_y_net),
    .ce(1'b0),
    .clk(1'b0),
    .clr(1'b0),
    .op(relational_op_net)
  );
endmodule
// Generated from Simulink block "pc_cfr_spartan6_v1_2/pc_cfr_spartan6/pc_cfr_iteration_1/cordic_mag_sin_cos"

module cordic_mag_sin_cos_module_dfa0640afd (
  ce_1,
  clk_1,
  cos_out,
  i_in,
  mag_out,
  q_in,
  sin_out
);

  input [0:0] ce_1;
  input [0:0] clk_1;
  input [15:0] i_in;
  input [15:0] q_in;
  output [13:0] cos_out;
  output [15:0] mag_out;
  output [13:0] sin_out;

  wire [0:0] ce_1_sg_x56;
  wire [0:0] clk_1_sg_x56;
  wire [13:0] cos_lut_data_net_x2;
  wire [15:0] data_i_in_net_x1;
  wire [15:0] data_q_in_net_x1;
  wire [0:0] delay1_q_net_x0;
  wire [0:0] delay2_q_net_x0;
  wire [0:0] delay4_q_net_x0;
  wire [13:0] mux1_y_net_x1;
  wire [13:0] mux2_y_net_x1;
  wire [15:0] mux2_y_net_x2;
  wire [15:0] mux3_y_net_x2;
  wire [0:0] register1_q_net_x0;
  wire [0:0] register2_q_net_x0;
  wire [0:0] register_q_net_x0;
  wire [13:0] sin_lut_data_net_x2;
  wire [15:0] x16_msbs_y_net_x2;

  assign ce_1_sg_x56 = ce_1;
  assign clk_1_sg_x56 = clk_1;
  assign cos_out = mux1_y_net_x1;
  assign data_i_in_net_x1 = i_in;
  assign mag_out = x16_msbs_y_net_x2;
  assign data_q_in_net_x1 = q_in;
  assign sin_out = mux2_y_net_x1;


  cordic_stages_module_85040e1219  cordic_stages_85040e1219 (
    .ce_1(ce_1_sg_x56),
    .clk_1(clk_1_sg_x56),
    .i_in(mux2_y_net_x2),
    .q_in(mux3_y_net_x2),
    .cos_out(cos_lut_data_net_x2),
    .mag_out(x16_msbs_y_net_x2),
    .sin_out(sin_lut_data_net_x2)
  );

  delay_0d84f57931  delay1 (
    .ce(ce_1_sg_x56),
    .clk(clk_1_sg_x56),
    .clr(1'b0),
    .d(register1_q_net_x0),
    .q(delay1_q_net_x0)
  );

  delay_0d84f57931  delay2 (
    .ce(ce_1_sg_x56),
    .clk(clk_1_sg_x56),
    .clr(1'b0),
    .d(register_q_net_x0),
    .q(delay2_q_net_x0)
  );

  delay_0d84f57931  delay4 (
    .ce(ce_1_sg_x56),
    .clk(clk_1_sg_x56),
    .clr(1'b0),
    .d(register2_q_net_x0),
    .q(delay4_q_net_x0)
  );

  demapper_module_3a06a25d13  demapper_3a06a25d13 (
    .ce_1(ce_1_sg_x56),
    .clk_1(clk_1_sg_x56),
    .cos_in(cos_lut_data_net_x2),
    .sign_i(delay4_q_net_x0),
    .sign_q(delay1_q_net_x0),
    .sin_in(sin_lut_data_net_x2),
    .swap_iq(delay2_q_net_x0),
    .cos_out(mux1_y_net_x1),
    .sin_out(mux2_y_net_x1)
  );

  mapper_module_1126d9b305  mapper_1126d9b305 (
    .ce_1(ce_1_sg_x56),
    .clk_1(clk_1_sg_x56),
    .i_in(data_i_in_net_x1),
    .q_in(data_q_in_net_x1),
    .i_out(mux2_y_net_x2),
    .q_out(mux3_y_net_x2),
    .sign_i(register2_q_net_x0),
    .sign_q(register1_q_net_x0),
    .swap_iq(register_q_net_x0)
  );
endmodule
// Generated from Simulink block "pc_cfr_spartan6_v1_2/pc_cfr_spartan6/pc_cfr_iteration_1/data_in_delay"

module data_in_delay_module_1d6b916bb7 (
  ce_1,
  clk_1,
  data_i_in,
  data_i_out,
  data_q_in,
  data_q_out,
  data_valid,
  numtaps,
  reset
);

  input [0:0] ce_1;
  input [0:0] clk_1;
  input [15:0] data_i_in;
  input [15:0] data_q_in;
  input [8:0] numtaps;
  input [0:0] reset;
  output [15:0] data_i_out;
  output [15:0] data_q_out;
  output [0:0] data_valid;

  wire [8:0] addsub_s_net;
  wire [0:0] bit_33_y_net_x0;
  wire [15:0] bits_15_0_y_net;
  wire [15:0] bits_31_16_y_net;
  wire [0:0] ce_1_sg_x57;
  wire [0:0] clk_1_sg_x57;
  wire [32:0] concat_y_net;
  wire [0:0] constant1_op_net;
  wire [32:0] constant2_op_net;
  wire [0:0] constant3_op_net;
  wire [8:0] constant4_op_net;
  wire [15:0] data_i_in_net_x2;
  wire [15:0] data_q_in_net_x2;
  wire [32:0] dual_port_ram_doutb_net;
  wire [8:0] filter_numtaps_net_x6;
  wire [8:0] read_addr;
  wire [0:0] register2_q_net_x25;
  wire [15:0] register3_q_net;
  wire [15:0] register4_q_net;
  wire [15:0] reinterpret1_output_port_net_x0;
  wire [15:0] reinterpret2_output_port_net_x0;
  wire [15:0] reinterpret3_output_port_net;
  wire [15:0] reinterpret4_output_port_net;
  wire [8:0] shift_op_net;
  wire [8:0] write_addr;

  assign ce_1_sg_x57 = ce_1;
  assign clk_1_sg_x57 = clk_1;
  assign data_i_in_net_x2 = data_i_in;
  assign data_i_out = reinterpret1_output_port_net_x0;
  assign data_q_in_net_x2 = data_q_in;
  assign data_q_out = reinterpret2_output_port_net_x0;
  assign data_valid = bit_33_y_net_x0;
  assign filter_numtaps_net_x6 = numtaps;
  assign register2_q_net_x25 = reset;


  addsub_c2009d8515  addsub (
    .a(shift_op_net),
    .b(constant4_op_net),
    .ce(ce_1_sg_x57),
    .clk(clk_1_sg_x57),
    .clr(1'b0),
    .s(addsub_s_net)
  );

  addsub_eb24e14176  addsub1 (
    .a(write_addr),
    .b(addsub_s_net),
    .ce(ce_1_sg_x57),
    .clk(clk_1_sg_x57),
    .clr(1'b0),
    .s(read_addr)
  );

  xlslice #(

    .new_lsb(32),
    .new_msb(32),
    .x_width(33),
    .y_width(1))
  bit_33 (
    .x(dual_port_ram_doutb_net),
    .y(bit_33_y_net_x0)
  );

  xlslice #(

    .new_lsb(0),
    .new_msb(15),
    .x_width(33),
    .y_width(16))
  bits_15_0 (
    .x(dual_port_ram_doutb_net),
    .y(bits_15_0_y_net)
  );

  xlslice #(

    .new_lsb(16),
    .new_msb(31),
    .x_width(33),
    .y_width(16))
  bits_31_16 (
    .x(dual_port_ram_doutb_net),
    .y(bits_31_16_y_net)
  );

  concat_dfdbb578d9  concat (
    .ce(1'b0),
    .clk(1'b0),
    .clr(1'b0),
    .in0(register2_q_net_x25),
    .in1(reinterpret3_output_port_net),
    .in2(reinterpret4_output_port_net),
    .y(concat_y_net)
  );

  constant_ae323e07fc  constant1 (
    .ce(1'b0),
    .clk(1'b0),
    .clr(1'b0),
    .op(constant1_op_net)
  );

  constant_fcde7055b5  constant2 (
    .ce(1'b0),
    .clk(1'b0),
    .clr(1'b0),
    .op(constant2_op_net)
  );

  constant_5e90e4a8ec  constant3 (
    .ce(1'b0),
    .clk(1'b0),
    .clr(1'b0),
    .op(constant3_op_net)
  );

  constant_aff0b31db3  constant4 (
    .ce(1'b0),
    .clk(1'b0),
    .clr(1'b0),
    .op(constant4_op_net)
  );

  counter_3635e3b440  counter (
    .ce(ce_1_sg_x57),
    .clk(clk_1_sg_x57),
    .clr(1'b0),
    .op(write_addr)
  );

  xldpram_pc_cfr_spartan6_v1_2 #(

    .c_address_width_a(9),
    .c_address_width_b(9),
    .c_width_a(33),
    .c_width_b(33),
    .core_name0("bmg_72_121f2feae115cb60"),
    .latency(1))
  dual_port_ram (
    .a_ce(ce_1_sg_x57),
    .a_clk(clk_1_sg_x57),
    .addra(write_addr),
    .addrb(read_addr),
    .b_ce(ce_1_sg_x57),
    .b_clk(clk_1_sg_x57),
    .dina(concat_y_net),
    .dinb(constant2_op_net),
    .ena(1'b1),
    .enb(1'b1),
    .rsta(1'b0),
    .rstb(1'b0),
    .wea(constant3_op_net),
    .web(constant1_op_net),
    .doutb(dual_port_ram_doutb_net)
  );

  xlregister #(

    .d_width(16),
    .init_value(16'b0000000000000000))
  register3 (
    .ce(ce_1_sg_x57),
    .clk(clk_1_sg_x57),
    .d(data_i_in_net_x2),
    .en(1'b1),
    .rst(1'b0),
    .q(register3_q_net)
  );

  xlregister #(

    .d_width(16),
    .init_value(16'b0000000000000000))
  register4 (
    .ce(ce_1_sg_x57),
    .clk(clk_1_sg_x57),
    .d(data_q_in_net_x2),
    .en(1'b1),
    .rst(1'b0),
    .q(register4_q_net)
  );

  reinterpret_dee95c6dbb  reinterpret1 (
    .ce(1'b0),
    .clk(1'b0),
    .clr(1'b0),
    .input_port(bits_31_16_y_net),
    .output_port(reinterpret1_output_port_net_x0)
  );

  reinterpret_dee95c6dbb  reinterpret2 (
    .ce(1'b0),
    .clk(1'b0),
    .clr(1'b0),
    .input_port(bits_15_0_y_net),
    .output_port(reinterpret2_output_port_net_x0)
  );

  reinterpret_2824f666f2  reinterpret3 (
    .ce(1'b0),
    .clk(1'b0),
    .clr(1'b0),
    .input_port(register3_q_net),
    .output_port(reinterpret3_output_port_net)
  );

  reinterpret_2824f666f2  reinterpret4 (
    .ce(1'b0),
    .clk(1'b0),
    .clr(1'b0),
    .input_port(register4_q_net),
    .output_port(reinterpret4_output_port_net)
  );

  shift_3c3ad6f4c6  shift (
    .ce(ce_1_sg_x57),
    .clk(clk_1_sg_x57),
    .clr(1'b0),
    .ip(filter_numtaps_net_x6),
    .op(shift_op_net)
  );
endmodule
// Generated from Simulink block "pc_cfr_spartan6_v1_2/pc_cfr_spartan6/pc_cfr_iteration_1/peak_align"

module peak_align_module_0b0f94fda9 (
  ce_1,
  clk_1,
  cp_locator,
  peak_delay,
  peak_indicator
);

  input [0:0] ce_1;
  input [0:0] clk_1;
  input [5:0] peak_delay;
  input [0:0] peak_indicator;
  output [0:0] cp_locator;

  wire [5:0] a_sub_b;
  wire [0:0] ce_1_sg_x58;
  wire [0:0] clk_1_sg_x58;
  wire [0:0] constant1_op_net;
  wire [0:0] constant2_op_net;
  wire [0:0] constant3_op_net;
  wire [5:0] constant_op_net;
  wire [0:0] cp_locator_x6;
  wire [0:0] dual_port_ram_doutb_net;
  wire [5:0] read_addr;
  wire [5:0] read_addr_x0;
  wire [0:0] register2_q_net;
  wire [0:0] register3_q_net;
  wire [0:0] register_q_net;
  wire [0:0] register_q_net_x2;
  wire [5:0] register_q_net_x3;
  wire [0:0] reinterpret_output_port_net;
  wire [5:0] write_addr;

  assign ce_1_sg_x58 = ce_1;
  assign clk_1_sg_x58 = clk_1;
  assign cp_locator = cp_locator_x6;
  assign register_q_net_x3 = peak_delay;
  assign register_q_net_x2 = peak_indicator;


  addsub_9d274f068b  addsub (
    .a(constant_op_net),
    .b(register_q_net_x3),
    .ce(ce_1_sg_x58),
    .clk(clk_1_sg_x58),
    .clr(1'b0),
    .s(a_sub_b)
  );

  addsub_52d6e01024  addsub1 (
    .a(a_sub_b),
    .b(read_addr),
    .ce(ce_1_sg_x58),
    .clk(clk_1_sg_x58),
    .clr(1'b0),
    .s(write_addr)
  );

  constant_5e90e4a8ec  constant1 (
    .ce(1'b0),
    .clk(1'b0),
    .clr(1'b0),
    .op(constant1_op_net)
  );

  constant_ae323e07fc  constant2 (
    .ce(1'b0),
    .clk(1'b0),
    .clr(1'b0),
    .op(constant2_op_net)
  );

  constant_5e90e4a8ec  constant3 (
    .ce(1'b0),
    .clk(1'b0),
    .clr(1'b0),
    .op(constant3_op_net)
  );

  constant_5c1f45c6b5  constant_x0 (
    .ce(1'b0),
    .clk(1'b0),
    .clr(1'b0),
    .op(constant_op_net)
  );

  xlconvert #(

    .bool_conversion(1),
    .din_arith(1),
    .din_bin_pt(0),
    .din_width(1),
    .dout_arith(1),
    .dout_bin_pt(0),
    .dout_width(1),
    .latency(0),
    .overflow(`xlWrap),
    .quantization(`xlTruncate))
  convert3 (
    .ce(ce_1_sg_x58),
    .clk(clk_1_sg_x58),
    .clr(1'b0),
    .din(register_q_net),
    .en(1'b1),
    .dout(cp_locator_x6)
  );

  counter_d2efb0480f  counter (
    .ce(ce_1_sg_x58),
    .clk(clk_1_sg_x58),
    .clr(1'b0),
    .op(read_addr)
  );

  xldpram_pc_cfr_spartan6_v1_2 #(

    .c_address_width_a(6),
    .c_address_width_b(6),
    .c_width_a(1),
    .c_width_b(1),
    .core_name0("bmg_72_02af306bc8bac7b8"),
    .latency(1))
  dual_port_ram (
    .a_ce(ce_1_sg_x58),
    .a_clk(clk_1_sg_x58),
    .addra(write_addr),
    .addrb(read_addr_x0),
    .b_ce(ce_1_sg_x58),
    .b_clk(clk_1_sg_x58),
    .dina(register2_q_net),
    .dinb(constant2_op_net),
    .ena(1'b1),
    .enb(1'b1),
    .rsta(1'b0),
    .rstb(1'b0),
    .wea(constant3_op_net),
    .web(constant1_op_net),
    .doutb(dual_port_ram_doutb_net)
  );

  xlregister #(

    .d_width(6),
    .init_value(6'b111111))
  register1 (
    .ce(ce_1_sg_x58),
    .clk(clk_1_sg_x58),
    .d(read_addr),
    .en(1'b1),
    .rst(1'b0),
    .q(read_addr_x0)
  );

  xlregister #(

    .d_width(1),
    .init_value(1'b0))
  register2 (
    .ce(ce_1_sg_x58),
    .clk(clk_1_sg_x58),
    .d(reinterpret_output_port_net),
    .en(1'b1),
    .rst(1'b0),
    .q(register2_q_net)
  );

  xlregister #(

    .d_width(1),
    .init_value(1'b0))
  register3 (
    .ce(ce_1_sg_x58),
    .clk(clk_1_sg_x58),
    .d(dual_port_ram_doutb_net),
    .en(1'b1),
    .rst(1'b0),
    .q(register3_q_net)
  );

  xlregister #(

    .d_width(1),
    .init_value(1'b0))
  register_x0 (
    .ce(ce_1_sg_x58),
    .clk(clk_1_sg_x58),
    .d(register3_q_net),
    .en(1'b1),
    .rst(1'b0),
    .q(register_q_net)
  );

  reinterpret_60dd3f961d  reinterpret (
    .ce(1'b0),
    .clk(1'b0),
    .clr(1'b0),
    .input_port(register_q_net_x2),
    .output_port(reinterpret_output_port_net)
  );
endmodule
// Generated from Simulink block "pc_cfr_spartan6_v1_2/pc_cfr_spartan6/pc_cfr_iteration_1/peak_detect/delay_counter/counter/reg_rst"

module reg_rst_module_17dbdcb8cd (
  ce_1,
  clk_1,
  d,
  q,
  rst
);

  input [0:0] ce_1;
  input [0:0] clk_1;
  input [5:0] d;
  input [0:0] rst;
  output [5:0] q;

  wire [0:0] ce_1_sg_x59;
  wire [0:0] clk_1_sg_x59;
  wire [5:0] constant1_op_net;
  wire [5:0] mux_y_net_x0;
  wire [5:0] mux_y_net_x1;
  wire [0:0] register2_q_net_x26;
  wire [5:0] register_q_net_x0;

  assign ce_1_sg_x59 = ce_1;
  assign clk_1_sg_x59 = clk_1;
  assign mux_y_net_x1 = d;
  assign q = register_q_net_x0;
  assign register2_q_net_x26 = rst;


  constant_bd962aec1b  constant1 (
    .ce(1'b0),
    .clk(1'b0),
    .clr(1'b0),
    .op(constant1_op_net)
  );

  mux_a6b0362cad  mux (
    .ce(1'b0),
    .clk(1'b0),
    .clr(1'b0),
    .d0(mux_y_net_x1),
    .d1(constant1_op_net),
    .sel(register2_q_net_x26),
    .y(mux_y_net_x0)
  );

  xlregister #(

    .d_width(6),
    .init_value(6'b000000))
  register_x0 (
    .ce(ce_1_sg_x59),
    .clk(clk_1_sg_x59),
    .d(mux_y_net_x0),
    .en(1'b1),
    .rst(1'b0),
    .q(register_q_net_x0)
  );
endmodule
// Generated from Simulink block "pc_cfr_spartan6_v1_2/pc_cfr_spartan6/pc_cfr_iteration_1/peak_detect/delay_counter/counter"

module counter_module_f6075b8cf2 (
  ce_1,
  clk_1,
  en,
  out_x0,
  reset,
  rst
);

  input [0:0] ce_1;
  input [0:0] clk_1;
  input [0:0] en;
  input [0:0] reset;
  input [0:0] rst;
  output [5:0] out_x0;

  wire [5:0] addsub_s_net;
  wire [0:0] ce_1_sg_x60;
  wire [0:0] clk_1_sg_x60;
  wire [1:0] concat_y_net;
  wire [5:0] constant1_op_net;
  wire [5:0] constant4_op_net;
  wire [0:0] inverter1_op_net_x0;
  wire [0:0] logical3_y_net_x0;
  wire [5:0] mux_y_net_x1;
  wire [0:0] register2_q_net_x27;
  wire [5:0] register_q_net_x1;

  assign ce_1_sg_x60 = ce_1;
  assign clk_1_sg_x60 = clk_1;
  assign inverter1_op_net_x0 = en;
  assign out_x0 = register_q_net_x1;
  assign register2_q_net_x27 = reset;
  assign logical3_y_net_x0 = rst;


  addsub_0db3d998f7  addsub (
    .a(constant4_op_net),
    .b(register_q_net_x1),
    .ce(ce_1_sg_x60),
    .clk(clk_1_sg_x60),
    .clr(1'b0),
    .s(addsub_s_net)
  );

  concat_983f7013a1  concat (
    .ce(1'b0),
    .clk(1'b0),
    .clr(1'b0),
    .in0(logical3_y_net_x0),
    .in1(inverter1_op_net_x0),
    .y(concat_y_net)
  );

  constant_bd962aec1b  constant1 (
    .ce(1'b0),
    .clk(1'b0),
    .clr(1'b0),
    .op(constant1_op_net)
  );

  constant_df40b9ce05  constant4 (
    .ce(1'b0),
    .clk(1'b0),
    .clr(1'b0),
    .op(constant4_op_net)
  );

  mux_f8a4f48eeb  mux (
    .ce(1'b0),
    .clk(1'b0),
    .clr(1'b0),
    .d0(register_q_net_x1),
    .d1(addsub_s_net),
    .d2(constant1_op_net),
    .d3(constant1_op_net),
    .sel(concat_y_net),
    .y(mux_y_net_x1)
  );

  reg_rst_module_17dbdcb8cd  reg_rst_17dbdcb8cd (
    .ce_1(ce_1_sg_x60),
    .clk_1(clk_1_sg_x60),
    .d(mux_y_net_x1),
    .rst(register2_q_net_x27),
    .q(register_q_net_x1)
  );
endmodule
// Generated from Simulink block "pc_cfr_spartan6_v1_2/pc_cfr_spartan6/pc_cfr_iteration_1/peak_detect/delay_counter/register"

module register_module_0fb430aca6 (
  ce_1,
  clk_1,
  d,
  out_x0,
  reset,
  rst
);

  input [0:0] ce_1;
  input [0:0] clk_1;
  input [0:0] d;
  input [0:0] reset;
  input [0:0] rst;
  output [0:0] out_x0;

  wire [0:0] ce_1_sg_x63;
  wire [0:0] clk_1_sg_x63;
  wire [0:0] constant4_op_net;
  wire [0:0] logical5_y_net_x0;
  wire [0:0] logical6_y_net_x0;
  wire [0:0] mux_y_net_x1;
  wire [0:0] register2_q_net_x30;
  wire [0:0] register_q_net_x1;

  assign ce_1_sg_x63 = ce_1;
  assign clk_1_sg_x63 = clk_1;
  assign logical5_y_net_x0 = d;
  assign out_x0 = register_q_net_x1;
  assign register2_q_net_x30 = reset;
  assign logical6_y_net_x0 = rst;


  constant_ae323e07fc  constant4 (
    .ce(1'b0),
    .clk(1'b0),
    .clr(1'b0),
    .op(constant4_op_net)
  );

  mux_c613b505f8  mux (
    .ce(1'b0),
    .clk(1'b0),
    .clr(1'b0),
    .d0(logical5_y_net_x0),
    .d1(constant4_op_net),
    .sel(logical6_y_net_x0),
    .y(mux_y_net_x1)
  );

  reg_rst_module_be99fbc343  reg_rst_2a9836cfae (
    .ce_1(ce_1_sg_x63),
    .clk_1(clk_1_sg_x63),
    .d(mux_y_net_x1),
    .rst(register2_q_net_x30),
    .q(register_q_net_x1)
  );
endmodule
// Generated from Simulink block "pc_cfr_spartan6_v1_2/pc_cfr_spartan6/pc_cfr_iteration_1/peak_detect/delay_counter/register1"

module register1_module_b4ec010bf9 (
  ce_1,
  clk_1,
  d,
  en,
  q,
  reset
);

  input [0:0] ce_1;
  input [0:0] clk_1;
  input [5:0] d;
  input [0:0] en;
  input [0:0] reset;
  output [5:0] q;

  wire [0:0] ce_1_sg_x65;
  wire [0:0] clk_1_sg_x65;
  wire [0:0] logical1_y_net_x1;
  wire [5:0] mux_y_net_x1;
  wire [0:0] register2_q_net_x32;
  wire [5:0] register_q_net_x5;
  wire [5:0] register_q_net_x6;

  assign ce_1_sg_x65 = ce_1;
  assign clk_1_sg_x65 = clk_1;
  assign register_q_net_x5 = d;
  assign logical1_y_net_x1 = en;
  assign q = register_q_net_x6;
  assign register2_q_net_x32 = reset;


  mux_a6b0362cad  mux (
    .ce(1'b0),
    .clk(1'b0),
    .clr(1'b0),
    .d0(register_q_net_x6),
    .d1(register_q_net_x5),
    .sel(logical1_y_net_x1),
    .y(mux_y_net_x1)
  );

  reg_rst_module_17dbdcb8cd  reg_rst_2c419d8540 (
    .ce_1(ce_1_sg_x65),
    .clk_1(clk_1_sg_x65),
    .d(mux_y_net_x1),
    .rst(register2_q_net_x32),
    .q(register_q_net_x6)
  );
endmodule
// Generated from Simulink block "pc_cfr_spartan6_v1_2/pc_cfr_spartan6/pc_cfr_iteration_1/peak_detect/delay_counter/rising_edge/reg_set"

module reg_set_module_dc78aa8cd1 (
  ce_1,
  clk_1,
  d,
  q,
  set
);

  input [0:0] ce_1;
  input [0:0] clk_1;
  input [0:0] d;
  input [0:0] set;
  output [0:0] q;

  wire [0:0] ce_1_sg_x66;
  wire [0:0] clk_1_sg_x66;
  wire [0:0] constant1_op_net;
  wire [0:0] msb_y_net_x0;
  wire [0:0] mux_y_net;
  wire [0:0] register2_q_net_x33;
  wire [0:0] register_q_net_x0;

  assign ce_1_sg_x66 = ce_1;
  assign clk_1_sg_x66 = clk_1;
  assign msb_y_net_x0 = d;
  assign q = register_q_net_x0;
  assign register2_q_net_x33 = set;


  constant_5e90e4a8ec  constant1 (
    .ce(1'b0),
    .clk(1'b0),
    .clr(1'b0),
    .op(constant1_op_net)
  );

  mux_c613b505f8  mux (
    .ce(1'b0),
    .clk(1'b0),
    .clr(1'b0),
    .d0(msb_y_net_x0),
    .d1(constant1_op_net),
    .sel(register2_q_net_x33),
    .y(mux_y_net)
  );

  xlregister #(

    .d_width(1),
    .init_value(1'b1))
  register_x0 (
    .ce(ce_1_sg_x66),
    .clk(clk_1_sg_x66),
    .d(mux_y_net),
    .en(1'b1),
    .rst(1'b0),
    .q(register_q_net_x0)
  );
endmodule
// Generated from Simulink block "pc_cfr_spartan6_v1_2/pc_cfr_spartan6/pc_cfr_iteration_1/peak_detect/delay_counter/rising_edge"

module rising_edge_module_4bfe2fbbda (
  ce_1,
  clk_1,
  in_x0,
  out_x0,
  reset
);

  input [0:0] ce_1;
  input [0:0] clk_1;
  input [0:0] in_x0;
  input [0:0] reset;
  output [0:0] out_x0;

  wire [0:0] ce_1_sg_x67;
  wire [0:0] clk_1_sg_x67;
  wire [0:0] inverter2_op_net;
  wire [0:0] logical6_y_net_x0;
  wire [0:0] msb_y_net_x1;
  wire [0:0] register2_q_net_x34;
  wire [0:0] register_q_net_x0;

  assign ce_1_sg_x67 = ce_1;
  assign clk_1_sg_x67 = clk_1;
  assign msb_y_net_x1 = in_x0;
  assign out_x0 = logical6_y_net_x0;
  assign register2_q_net_x34 = reset;


  inverter_33a63b558a  inverter2 (
    .ce(ce_1_sg_x67),
    .clk(clk_1_sg_x67),
    .clr(1'b0),
    .ip(register_q_net_x0),
    .op(inverter2_op_net)
  );

  logical_28d385d867  logical6 (
    .ce(1'b0),
    .clk(1'b0),
    .clr(1'b0),
    .d0(inverter2_op_net),
    .d1(msb_y_net_x1),
    .y(logical6_y_net_x0)
  );

  reg_set_module_dc78aa8cd1  reg_set_dc78aa8cd1 (
    .ce_1(ce_1_sg_x67),
    .clk_1(clk_1_sg_x67),
    .d(msb_y_net_x1),
    .set(register2_q_net_x34),
    .q(register_q_net_x0)
  );
endmodule
// Generated from Simulink block "pc_cfr_spartan6_v1_2/pc_cfr_spartan6/pc_cfr_iteration_1/peak_detect/delay_counter"

module delay_counter_module_4999aa2d5f (
  ce_1,
  clk_1,
  new_max,
  peak_delay,
  peak_indicator,
  reset,
  reset_search
);

  input [0:0] ce_1;
  input [0:0] clk_1;
  input [0:0] new_max;
  input [0:0] reset;
  input [0:0] reset_search;
  output [5:0] peak_delay;
  output [0:0] peak_indicator;

  wire [0:0] ce_1_sg_x70;
  wire [0:0] clk_1_sg_x70;
  wire [0:0] inverter1_op_net_x0;
  wire [0:0] inverter2_op_net;
  wire [0:0] logical1_y_net_x1;
  wire [0:0] logical2_y_net;
  wire [0:0] logical3_y_net_x0;
  wire [0:0] logical4_y_net;
  wire [0:0] logical5_y_net_x0;
  wire [0:0] logical6_y_net_x0;
  wire [0:0] logical6_y_net_x1;
  wire [0:0] msb_y_net_x1;
  wire [0:0] register2_q_net_x37;
  wire [0:0] register_q_net_x0;
  wire [0:0] register_q_net_x1;
  wire [5:0] register_q_net_x10;
  wire [5:0] register_q_net_x5;
  wire [0:0] register_q_net_x8;
  wire [0:0] register_q_net_x9;

  assign ce_1_sg_x70 = ce_1;
  assign clk_1_sg_x70 = clk_1;
  assign register_q_net_x0 = new_max;
  assign peak_delay = register_q_net_x10;
  assign peak_indicator = register_q_net_x9;
  assign register2_q_net_x37 = reset;
  assign register_q_net_x8 = reset_search;


  counter_module_f6075b8cf2  counter_f6075b8cf2 (
    .ce_1(ce_1_sg_x70),
    .clk_1(clk_1_sg_x70),
    .en(inverter1_op_net_x0),
    .reset(register2_q_net_x37),
    .rst(logical3_y_net_x0),
    .out_x0(register_q_net_x5)
  );

  inverter_33a63b558a  inverter1 (
    .ce(ce_1_sg_x70),
    .clk(clk_1_sg_x70),
    .clr(1'b0),
    .ip(logical4_y_net),
    .op(inverter1_op_net_x0)
  );

  inverter_33a63b558a  inverter2 (
    .ce(ce_1_sg_x70),
    .clk(clk_1_sg_x70),
    .clr(1'b0),
    .ip(msb_y_net_x1),
    .op(inverter2_op_net)
  );

  logical_7970a672aa  logical1 (
    .ce(1'b0),
    .clk(1'b0),
    .clr(1'b0),
    .d0(logical6_y_net_x0),
    .d1(logical2_y_net),
    .y(logical1_y_net_x1)
  );

  logical_a950764719  logical2 (
    .ce(1'b0),
    .clk(1'b0),
    .clr(1'b0),
    .d0(inverter2_op_net),
    .d1(logical6_y_net_x1),
    .d2(register_q_net_x1),
    .y(logical2_y_net)
  );

  logical_7970a672aa  logical3 (
    .ce(1'b0),
    .clk(1'b0),
    .clr(1'b0),
    .d0(register_q_net_x8),
    .d1(register_q_net_x0),
    .y(logical3_y_net_x0)
  );

  logical_7970a672aa  logical4 (
    .ce(1'b0),
    .clk(1'b0),
    .clr(1'b0),
    .d0(register_q_net_x0),
    .d1(msb_y_net_x1),
    .y(logical4_y_net)
  );

  logical_7970a672aa  logical5 (
    .ce(1'b0),
    .clk(1'b0),
    .clr(1'b0),
    .d0(register_q_net_x0),
    .d1(register_q_net_x1),
    .y(logical5_y_net_x0)
  );

  xlslice #(

    .new_lsb(5),
    .new_msb(5),
    .x_width(6),
    .y_width(1))
  msb (
    .x(register_q_net_x5),
    .y(msb_y_net_x1)
  );

  reg_rst_module_be99fbc343  reg_rst_8533f50403 (
    .ce_1(ce_1_sg_x70),
    .clk_1(clk_1_sg_x70),
    .d(logical1_y_net_x1),
    .rst(register2_q_net_x37),
    .q(register_q_net_x9)
  );

  register1_module_b4ec010bf9  register1_b4ec010bf9 (
    .ce_1(ce_1_sg_x70),
    .clk_1(clk_1_sg_x70),
    .d(register_q_net_x5),
    .en(logical1_y_net_x1),
    .reset(register2_q_net_x37),
    .q(register_q_net_x10)
  );

  register_module_0fb430aca6  register_0fb430aca6 (
    .ce_1(ce_1_sg_x70),
    .clk_1(clk_1_sg_x70),
    .d(logical5_y_net_x0),
    .reset(register2_q_net_x37),
    .rst(logical6_y_net_x1),
    .out_x0(register_q_net_x1)
  );

  rising_edge_module_4bfe2fbbda  rising_edge1_5289245851 (
    .ce_1(ce_1_sg_x70),
    .clk_1(clk_1_sg_x70),
    .in_x0(register_q_net_x8),
    .reset(register2_q_net_x37),
    .out_x0(logical6_y_net_x1)
  );

  rising_edge_module_4bfe2fbbda  rising_edge_4bfe2fbbda (
    .ce_1(ce_1_sg_x70),
    .clk_1(clk_1_sg_x70),
    .in_x0(msb_y_net_x1),
    .reset(register2_q_net_x37),
    .out_x0(logical6_y_net_x0)
  );
endmodule
// Generated from Simulink block "pc_cfr_spartan6_v1_2/pc_cfr_spartan6/pc_cfr_iteration_1/peak_detect/max_detect/register/reg_set"

module reg_set_module_07ff52cf13 (
  ce_1,
  clk_1,
  d,
  q,
  rst
);

  input [0:0] ce_1;
  input [0:0] clk_1;
  input [16:0] d;
  input [0:0] rst;
  output [16:0] q;

  wire [0:0] ce_1_sg_x73;
  wire [0:0] clk_1_sg_x73;
  wire [16:0] constant1_op_net;
  wire [16:0] mux_y_net_x0;
  wire [16:0] mux_y_net_x1;
  wire [0:0] register2_q_net_x40;
  wire [16:0] register_q_net_x0;

  assign ce_1_sg_x73 = ce_1;
  assign clk_1_sg_x73 = clk_1;
  assign mux_y_net_x1 = d;
  assign q = register_q_net_x0;
  assign register2_q_net_x40 = rst;


  constant_440fb70725  constant1 (
    .ce(1'b0),
    .clk(1'b0),
    .clr(1'b0),
    .op(constant1_op_net)
  );

  mux_2fa1417e01  mux (
    .ce(1'b0),
    .clk(1'b0),
    .clr(1'b0),
    .d0(mux_y_net_x1),
    .d1(constant1_op_net),
    .sel(register2_q_net_x40),
    .y(mux_y_net_x0)
  );

  xlregister #(

    .d_width(17),
    .init_value(17'b11111111111111111))
  register_x0 (
    .ce(ce_1_sg_x73),
    .clk(clk_1_sg_x73),
    .d(mux_y_net_x0),
    .en(1'b1),
    .rst(1'b0),
    .q(register_q_net_x0)
  );
endmodule
// Generated from Simulink block "pc_cfr_spartan6_v1_2/pc_cfr_spartan6/pc_cfr_iteration_1/peak_detect/max_detect/register"

module register_module_1e34838994 (
  ce_1,
  clk_1,
  d,
  en,
  q,
  reset
);

  input [0:0] ce_1;
  input [0:0] clk_1;
  input [16:0] d;
  input [0:0] en;
  input [0:0] reset;
  output [16:0] q;

  wire [0:0] ce_1_sg_x74;
  wire [0:0] clk_1_sg_x74;
  wire [0:0] logical2_y_net_x0;
  wire [16:0] mux_y_net_x0;
  wire [16:0] mux_y_net_x1;
  wire [0:0] register2_q_net_x41;
  wire [16:0] register_q_net_x1;

  assign ce_1_sg_x74 = ce_1;
  assign clk_1_sg_x74 = clk_1;
  assign mux_y_net_x0 = d;
  assign logical2_y_net_x0 = en;
  assign q = register_q_net_x1;
  assign register2_q_net_x41 = reset;


  mux_2fa1417e01  mux (
    .ce(1'b0),
    .clk(1'b0),
    .clr(1'b0),
    .d0(register_q_net_x1),
    .d1(mux_y_net_x0),
    .sel(logical2_y_net_x0),
    .y(mux_y_net_x1)
  );

  reg_set_module_07ff52cf13  reg_set_07ff52cf13 (
    .ce_1(ce_1_sg_x74),
    .clk_1(clk_1_sg_x74),
    .d(mux_y_net_x1),
    .rst(register2_q_net_x41),
    .q(register_q_net_x1)
  );
endmodule
// Generated from Simulink block "pc_cfr_spartan6_v1_2/pc_cfr_spartan6/pc_cfr_iteration_1/peak_detect/max_detect"

module max_detect_module_cace4564b0 (
  ce_1,
  clk_1,
  mag_in,
  new_max,
  reset,
  reset_search,
  threshold
);

  input [0:0] ce_1;
  input [0:0] clk_1;
  input [15:0] mag_in;
  input [0:0] reset;
  input [15:0] threshold;
  output [0:0] new_max;
  output [0:0] reset_search;

  wire [0:0] ce_1_sg_x75;
  wire [0:0] clk_1_sg_x75;
  wire [0:0] logical2_y_net_x0;
  wire [16:0] mux_y_net_x0;
  wire [0:0] new_max_x0;
  wire [0:0] register2_q_net_x42;
  wire [0:0] register_q_net_x10;
  wire [16:0] register_q_net_x2;
  wire [0:0] register_q_net_x3;
  wire [0:0] reset_search_x0;
  wire [15:0] thresh_tol;
  wire [16:0] threshold2;
  wire [15:0] threshold_net_x0;
  wire [15:0] x16_msbs_y_net_x3;

  assign ce_1_sg_x75 = ce_1;
  assign clk_1_sg_x75 = clk_1;
  assign x16_msbs_y_net_x3 = mag_in;
  assign new_max = register_q_net_x3;
  assign register2_q_net_x42 = reset;
  assign reset_search = register_q_net_x10;
  assign threshold_net_x0 = threshold;


  addsub_710287cc09  addsub (
    .a(threshold_net_x0),
    .b(thresh_tol),
    .ce(ce_1_sg_x75),
    .clk(clk_1_sg_x75),
    .clr(1'b0),
    .s(threshold2)
  );

  logical_7970a672aa  logical2 (
    .ce(1'b0),
    .clk(1'b0),
    .clr(1'b0),
    .d0(reset_search_x0),
    .d1(new_max_x0),
    .y(logical2_y_net_x0)
  );

  mux_272b8a229a  mux (
    .ce(1'b0),
    .clk(1'b0),
    .clr(1'b0),
    .d0(x16_msbs_y_net_x3),
    .d1(threshold2),
    .sel(reset_search_x0),
    .y(mux_y_net_x0)
  );

  reg_rst_module_be99fbc343  reg_rst_90decc2233 (
    .ce_1(ce_1_sg_x75),
    .clk_1(clk_1_sg_x75),
    .d(new_max_x0),
    .rst(register2_q_net_x42),
    .q(register_q_net_x3)
  );

  reg_set_module_dc78aa8cd1  reg_set_76f7ec2d2b (
    .ce_1(ce_1_sg_x75),
    .clk_1(clk_1_sg_x75),
    .d(reset_search_x0),
    .set(register2_q_net_x42),
    .q(register_q_net_x10)
  );

  register_module_1e34838994  register_1e34838994 (
    .ce_1(ce_1_sg_x75),
    .clk_1(clk_1_sg_x75),
    .d(mux_y_net_x0),
    .en(logical2_y_net_x0),
    .reset(register2_q_net_x42),
    .q(register_q_net_x2)
  );

  relational_c8292218b1  relational (
    .a(x16_msbs_y_net_x3),
    .b(register_q_net_x2),
    .ce(1'b0),
    .clk(1'b0),
    .clr(1'b0),
    .op(new_max_x0)
  );

  relational_a2b8e7c11c  relational1 (
    .a(threshold_net_x0),
    .b(x16_msbs_y_net_x3),
    .ce(1'b0),
    .clk(1'b0),
    .clr(1'b0),
    .op(reset_search_x0)
  );

  shift_f768896000  shift (
    .ce(ce_1_sg_x75),
    .clk(clk_1_sg_x75),
    .clr(1'b0),
    .ip(threshold_net_x0),
    .op(thresh_tol)
  );
endmodule
// Generated from Simulink block "pc_cfr_spartan6_v1_2/pc_cfr_spartan6/pc_cfr_iteration_1/peak_detect"

module peak_detect_module_7cb6a23d15 (
  ce_1,
  clk_1,
  mag_in,
  peak_delay,
  peak_indicator,
  register2,
  threshold
);

  input [0:0] ce_1;
  input [0:0] clk_1;
  input [15:0] mag_in;
  input [0:0] register2;
  input [15:0] threshold;
  output [5:0] peak_delay;
  output [0:0] peak_indicator;

  wire [0:0] ce_1_sg_x76;
  wire [0:0] clk_1_sg_x76;
  wire [0:0] register2_q_net_x43;
  wire [0:0] register_q_net_x11;
  wire [0:0] register_q_net_x12;
  wire [5:0] register_q_net_x13;
  wire [0:0] register_q_net_x3;
  wire [15:0] threshold_net_x1;
  wire [15:0] x16_msbs_y_net_x4;

  assign ce_1_sg_x76 = ce_1;
  assign clk_1_sg_x76 = clk_1;
  assign x16_msbs_y_net_x4 = mag_in;
  assign peak_delay = register_q_net_x13;
  assign peak_indicator = register_q_net_x12;
  assign register2_q_net_x43 = register2;
  assign threshold_net_x1 = threshold;


  delay_counter_module_4999aa2d5f  delay_counter_4999aa2d5f (
    .ce_1(ce_1_sg_x76),
    .clk_1(clk_1_sg_x76),
    .new_max(register_q_net_x3),
    .reset(register2_q_net_x43),
    .reset_search(register_q_net_x11),
    .peak_delay(register_q_net_x13),
    .peak_indicator(register_q_net_x12)
  );

  max_detect_module_cace4564b0  max_detect_cace4564b0 (
    .ce_1(ce_1_sg_x76),
    .clk_1(clk_1_sg_x76),
    .mag_in(x16_msbs_y_net_x4),
    .reset(register2_q_net_x43),
    .threshold(threshold_net_x1),
    .new_max(register_q_net_x3),
    .reset_search(register_q_net_x11)
  );
endmodule
// Generated from Simulink block "pc_cfr_spartan6_v1_2/pc_cfr_spartan6/pc_cfr_iteration_1/peak_scale"

module peak_scale_module_d797d0e9dd (
  ce_1,
  clk_1,
  cos_in,
  mag_in,
  peak_scale_i,
  peak_scale_q,
  sin_in,
  threshold
);

  input [0:0] ce_1;
  input [0:0] clk_1;
  input [13:0] cos_in;
  input [15:0] mag_in;
  input [13:0] sin_in;
  input [15:0] threshold;
  output [15:0] peak_scale_i;
  output [15:0] peak_scale_q;

  wire [16:0] addsub_s_net;
  wire [0:0] ce_1_sg_x77;
  wire [0:0] clk_1_sg_x77;
  wire [28:0] convert1_dout_net;
  wire [17:0] convert2_dout_net;
  wire [15:0] convert3_dout_net;
  wire [28:0] convert4_dout_net;
  wire [15:0] convert5_dout_net;
  wire [17:0] convert6_dout_net;
  wire [17:0] convert_dout_net;
  wire [47:0] dsp48a1_p_net;
  wire [47:0] dsp48a_p_net;
  wire [13:0] mux1_y_net_x2;
  wire [13:0] mux2_y_net_x2;
  wire [7:0] opmode1_op_net;
  wire [7:0] opmode_op_net;
  wire [15:0] register1_q_net_x0;
  wire [15:0] register_q_net_x0;
  wire [28:0] reinterpret1_output_port_net;
  wire [28:0] reinterpret_output_port_net;
  wire [15:0] threshold_net_x2;
  wire [15:0] x16_msbs_y_net_x5;

  assign ce_1_sg_x77 = ce_1;
  assign clk_1_sg_x77 = clk_1;
  assign mux1_y_net_x2 = cos_in;
  assign x16_msbs_y_net_x5 = mag_in;
  assign peak_scale_i = register1_q_net_x0;
  assign peak_scale_q = register_q_net_x0;
  assign mux2_y_net_x2 = sin_in;
  assign threshold_net_x2 = threshold;


  addsub_bae7b67bb9  addsub (
    .a(x16_msbs_y_net_x5),
    .b(threshold_net_x2),
    .ce(ce_1_sg_x77),
    .clk(clk_1_sg_x77),
    .clr(1'b0),
    .s(addsub_s_net)
  );

  xlconvert #(

    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(0),
    .din_width(17),
    .dout_arith(2),
    .dout_bin_pt(0),
    .dout_width(18),
    .latency(0),
    .overflow(`xlWrap),
    .quantization(`xlTruncate))
  convert (
    .ce(ce_1_sg_x77),
    .clk(clk_1_sg_x77),
    .clr(1'b0),
    .din(addsub_s_net),
    .en(1'b1),
    .dout(convert_dout_net)
  );

  xlconvert #(

    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(0),
    .din_width(48),
    .dout_arith(2),
    .dout_bin_pt(0),
    .dout_width(29),
    .latency(0),
    .overflow(`xlWrap),
    .quantization(`xlTruncate))
  convert1 (
    .ce(ce_1_sg_x77),
    .clk(clk_1_sg_x77),
    .clr(1'b0),
    .din(dsp48a_p_net),
    .en(1'b1),
    .dout(convert1_dout_net)
  );

  xlconvert #(

    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(0),
    .din_width(14),
    .dout_arith(2),
    .dout_bin_pt(0),
    .dout_width(18),
    .latency(0),
    .overflow(`xlWrap),
    .quantization(`xlTruncate))
  convert2 (
    .ce(ce_1_sg_x77),
    .clk(clk_1_sg_x77),
    .clr(1'b0),
    .din(mux2_y_net_x2),
    .en(1'b1),
    .dout(convert2_dout_net)
  );

  xlconvert #(

    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(13),
    .din_width(29),
    .dout_arith(2),
    .dout_bin_pt(0),
    .dout_width(16),
    .latency(0),
    .overflow(`xlWrap),
    .quantization(`xlTruncate))
  convert3 (
    .ce(ce_1_sg_x77),
    .clk(clk_1_sg_x77),
    .clr(1'b0),
    .din(reinterpret_output_port_net),
    .en(1'b1),
    .dout(convert3_dout_net)
  );

  xlconvert #(

    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(0),
    .din_width(48),
    .dout_arith(2),
    .dout_bin_pt(0),
    .dout_width(29),
    .latency(0),
    .overflow(`xlWrap),
    .quantization(`xlTruncate))
  convert4 (
    .ce(ce_1_sg_x77),
    .clk(clk_1_sg_x77),
    .clr(1'b0),
    .din(dsp48a1_p_net),
    .en(1'b1),
    .dout(convert4_dout_net)
  );

  xlconvert #(

    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(13),
    .din_width(29),
    .dout_arith(2),
    .dout_bin_pt(0),
    .dout_width(16),
    .latency(0),
    .overflow(`xlWrap),
    .quantization(`xlTruncate))
  convert5 (
    .ce(ce_1_sg_x77),
    .clk(clk_1_sg_x77),
    .clr(1'b0),
    .din(reinterpret1_output_port_net),
    .en(1'b1),
    .dout(convert5_dout_net)
  );

  xlconvert #(

    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(0),
    .din_width(14),
    .dout_arith(2),
    .dout_bin_pt(0),
    .dout_width(18),
    .latency(0),
    .overflow(`xlWrap),
    .quantization(`xlTruncate))
  convert6 (
    .ce(ce_1_sg_x77),
    .clk(clk_1_sg_x77),
    .clr(1'b0),
    .din(mux1_y_net_x2),
    .en(1'b1),
    .dout(convert6_dout_net)
  );

  xldsp48a #(

    .a0reg(1),
    .a1reg(0),
    .b0reg(1),
    .b1reg(0),
    .c_use_c(0),
    .c_use_cea(0),
    .c_use_ceb(0),
    .c_use_cec(0),
    .c_use_cecarryin(0),
    .c_use_ced(0),
    .c_use_cem(0),
    .c_use_ceopmode(0),
    .c_use_cep(0),
    .c_use_d(0),
    .c_use_en(0),
    .c_use_pcin(0),
    .c_use_rst(0),
    .c_use_rsta(0),
    .c_use_rstb(0),
    .c_use_rstc(0),
    .c_use_rstcarryin(0),
    .c_use_rstd(0),
    .c_use_rstm(0),
    .c_use_rstopmode(0),
    .c_use_rstp(0),
    .carryinreg(0),
    .carryinsel("OPMODE5"),
    .creg(0),
    .dreg(0),
    .mreg(1),
    .opmodereg(1),
    .preg(1),
    .use_c_port(0),
    .use_op(1))
  dsp48a (
    .a(convert_dout_net),
    .b(convert2_dout_net),
    .carryin(1'b0),
    .ce(ce_1_sg_x77),
    .cea(1'b1),
    .ceb(1'b1),
    .cec(1'b1),
    .cecarryin(1'b1),
    .ced(1'b1),
    .cem(1'b1),
    .ceopmode(1'b1),
    .cep(1'b1),
    .clk(clk_1_sg_x77),
    .en(1'b1),
    .op(opmode_op_net),
    .rst(1'b0),
    .rsta(1'b0),
    .rstb(1'b0),
    .rstc(1'b0),
    .rstcarryin(1'b0),
    .rstd(1'b0),
    .rstm(1'b0),
    .rstopmode(1'b0),
    .rstp(1'b0),
    .subtract(1'b0),
    .p(dsp48a_p_net)
  );

  xldsp48a #(

    .a0reg(1),
    .a1reg(0),
    .b0reg(1),
    .b1reg(0),
    .c_use_c(0),
    .c_use_cea(0),
    .c_use_ceb(0),
    .c_use_cec(0),
    .c_use_cecarryin(0),
    .c_use_ced(0),
    .c_use_cem(0),
    .c_use_ceopmode(0),
    .c_use_cep(0),
    .c_use_d(0),
    .c_use_en(0),
    .c_use_pcin(0),
    .c_use_rst(0),
    .c_use_rsta(0),
    .c_use_rstb(0),
    .c_use_rstc(0),
    .c_use_rstcarryin(0),
    .c_use_rstd(0),
    .c_use_rstm(0),
    .c_use_rstopmode(0),
    .c_use_rstp(0),
    .carryinreg(0),
    .carryinsel("OPMODE5"),
    .creg(0),
    .dreg(0),
    .mreg(1),
    .opmodereg(1),
    .preg(1),
    .use_c_port(0),
    .use_op(1))
  dsp48a1 (
    .a(convert_dout_net),
    .b(convert6_dout_net),
    .carryin(1'b0),
    .ce(ce_1_sg_x77),
    .cea(1'b1),
    .ceb(1'b1),
    .cec(1'b1),
    .cecarryin(1'b1),
    .ced(1'b1),
    .cem(1'b1),
    .ceopmode(1'b1),
    .cep(1'b1),
    .clk(clk_1_sg_x77),
    .en(1'b1),
    .op(opmode1_op_net),
    .rst(1'b0),
    .rsta(1'b0),
    .rstb(1'b0),
    .rstc(1'b0),
    .rstcarryin(1'b0),
    .rstd(1'b0),
    .rstm(1'b0),
    .rstopmode(1'b0),
    .rstp(1'b0),
    .subtract(1'b0),
    .p(dsp48a1_p_net)
  );

  opmode_5fb0570878  opmode (
    .ce(1'b0),
    .clk(1'b0),
    .clr(1'b0),
    .op(opmode_op_net)
  );

  opmode_5fb0570878  opmode1 (
    .ce(1'b0),
    .clk(1'b0),
    .clr(1'b0),
    .op(opmode1_op_net)
  );

  xlregister #(

    .d_width(16),
    .init_value(16'b0000000000000000))
  register1 (
    .ce(ce_1_sg_x77),
    .clk(clk_1_sg_x77),
    .d(convert5_dout_net),
    .en(1'b1),
    .rst(1'b0),
    .q(register1_q_net_x0)
  );

  xlregister #(

    .d_width(16),
    .init_value(16'b0000000000000000))
  register_x0 (
    .ce(ce_1_sg_x77),
    .clk(clk_1_sg_x77),
    .d(convert3_dout_net),
    .en(1'b1),
    .rst(1'b0),
    .q(register_q_net_x0)
  );

  reinterpret_286cd958f4  reinterpret (
    .ce(1'b0),
    .clk(1'b0),
    .clr(1'b0),
    .input_port(convert1_dout_net),
    .output_port(reinterpret_output_port_net)
  );

  reinterpret_286cd958f4  reinterpret1 (
    .ce(1'b0),
    .clk(1'b0),
    .clr(1'b0),
    .input_port(convert4_dout_net),
    .output_port(reinterpret1_output_port_net)
  );
endmodule
// Generated from Simulink block "pc_cfr_spartan6_v1_2/pc_cfr_spartan6/pc_cfr_iteration_1/peak_scale_delay"

module peak_scale_delay_module_3f14b5533c (
  ce_1,
  clk_1,
  data_i_in,
  data_i_out,
  data_q_in,
  data_q_out
);

  input [0:0] ce_1;
  input [0:0] clk_1;
  input [15:0] data_i_in;
  input [15:0] data_q_in;
  output [15:0] data_i_out;
  output [15:0] data_q_out;

  wire [0:0] ce_1_sg_x78;
  wire [0:0] clk_1_sg_x78;
  wire [31:0] concat_y_net;
  wire [0:0] constant1_op_net;
  wire [31:0] constant2_op_net;
  wire [0:0] constant3_op_net;
  wire [8:0] constant4_op_net;
  wire [31:0] dual_port_ram_doutb_net;
  wire [15:0] lsbs_y_net;
  wire [15:0] msbs_y_net;
  wire [8:0] read_addr;
  wire [15:0] register1_q_net_x1;
  wire [15:0] register_q_net_x1;
  wire [15:0] reinterpret1_output_port_net_x10;
  wire [15:0] reinterpret2_output_port_net_x10;
  wire [15:0] reinterpret3_output_port_net;
  wire [15:0] reinterpret4_output_port_net;
  wire [8:0] write_addr;

  assign ce_1_sg_x78 = ce_1;
  assign clk_1_sg_x78 = clk_1;
  assign register1_q_net_x1 = data_i_in;
  assign data_i_out = reinterpret1_output_port_net_x10;
  assign register_q_net_x1 = data_q_in;
  assign data_q_out = reinterpret2_output_port_net_x10;


  addsub_eb24e14176  addsub1 (
    .a(write_addr),
    .b(constant4_op_net),
    .ce(ce_1_sg_x78),
    .clk(clk_1_sg_x78),
    .clr(1'b0),
    .s(read_addr)
  );

  concat_7e18b92ffa  concat (
    .ce(1'b0),
    .clk(1'b0),
    .clr(1'b0),
    .in0(reinterpret3_output_port_net),
    .in1(reinterpret4_output_port_net),
    .y(concat_y_net)
  );

  constant_ae323e07fc  constant1 (
    .ce(1'b0),
    .clk(1'b0),
    .clr(1'b0),
    .op(constant1_op_net)
  );

  constant_07da815359  constant2 (
    .ce(1'b0),
    .clk(1'b0),
    .clr(1'b0),
    .op(constant2_op_net)
  );

  constant_5e90e4a8ec  constant3 (
    .ce(1'b0),
    .clk(1'b0),
    .clr(1'b0),
    .op(constant3_op_net)
  );

  constant_815959c413  constant4 (
    .ce(1'b0),
    .clk(1'b0),
    .clr(1'b0),
    .op(constant4_op_net)
  );

  counter_3635e3b440  counter (
    .ce(ce_1_sg_x78),
    .clk(clk_1_sg_x78),
    .clr(1'b0),
    .op(write_addr)
  );

  xldpram_pc_cfr_spartan6_v1_2 #(

    .c_address_width_a(9),
    .c_address_width_b(9),
    .c_width_a(32),
    .c_width_b(32),
    .core_name0("bmg_72_1071e1009a08056e"),
    .latency(1))
  dual_port_ram (
    .a_ce(ce_1_sg_x78),
    .a_clk(clk_1_sg_x78),
    .addra(write_addr),
    .addrb(read_addr),
    .b_ce(ce_1_sg_x78),
    .b_clk(clk_1_sg_x78),
    .dina(concat_y_net),
    .dinb(constant2_op_net),
    .ena(1'b1),
    .enb(1'b1),
    .rsta(1'b0),
    .rstb(1'b0),
    .wea(constant3_op_net),
    .web(constant1_op_net),
    .doutb(dual_port_ram_doutb_net)
  );

  xlslice #(

    .new_lsb(0),
    .new_msb(15),
    .x_width(32),
    .y_width(16))
  lsbs (
    .x(dual_port_ram_doutb_net),
    .y(lsbs_y_net)
  );

  xlslice #(

    .new_lsb(16),
    .new_msb(31),
    .x_width(32),
    .y_width(16))
  msbs (
    .x(dual_port_ram_doutb_net),
    .y(msbs_y_net)
  );

  reinterpret_dee95c6dbb  reinterpret1 (
    .ce(1'b0),
    .clk(1'b0),
    .clr(1'b0),
    .input_port(msbs_y_net),
    .output_port(reinterpret1_output_port_net_x10)
  );

  reinterpret_dee95c6dbb  reinterpret2 (
    .ce(1'b0),
    .clk(1'b0),
    .clr(1'b0),
    .input_port(lsbs_y_net),
    .output_port(reinterpret2_output_port_net_x10)
  );

  reinterpret_2824f666f2  reinterpret3 (
    .ce(1'b0),
    .clk(1'b0),
    .clr(1'b0),
    .input_port(register1_q_net_x1),
    .output_port(reinterpret3_output_port_net)
  );

  reinterpret_2824f666f2  reinterpret4 (
    .ce(1'b0),
    .clk(1'b0),
    .clr(1'b0),
    .input_port(register_q_net_x1),
    .output_port(reinterpret4_output_port_net)
  );
endmodule
// Generated from Simulink block "pc_cfr_spartan6_v1_2/pc_cfr_spartan6/pc_cfr_iteration_1/subtract"

module subtract_module_5a35c6809d (
  ce_1,
  clk_1,
  data_i_in,
  data_i_out,
  data_q_in,
  data_q_out,
  pulse_sum_i,
  pulse_sum_q
);

  input [0:0] ce_1;
  input [0:0] clk_1;
  input [15:0] data_i_in;
  input [15:0] data_q_in;
  input [15:0] pulse_sum_i;
  input [15:0] pulse_sum_q;
  output [15:0] data_i_out;
  output [15:0] data_q_out;

  wire [15:0] addsub1_s_net_x0;
  wire [15:0] addsub2_s_net_x0;
  wire [15:0] addsub5_s_net_x1;
  wire [15:0] addsub_s_net_x1;
  wire [0:0] ce_1_sg_x79;
  wire [0:0] clk_1_sg_x79;
  wire [15:0] reinterpret1_output_port_net_x1;
  wire [15:0] reinterpret2_output_port_net_x1;

  assign ce_1_sg_x79 = ce_1;
  assign clk_1_sg_x79 = clk_1;
  assign reinterpret1_output_port_net_x1 = data_i_in;
  assign data_i_out = addsub1_s_net_x0;
  assign reinterpret2_output_port_net_x1 = data_q_in;
  assign data_q_out = addsub2_s_net_x0;
  assign addsub5_s_net_x1 = pulse_sum_i;
  assign addsub_s_net_x1 = pulse_sum_q;


  addsub_c36a8bb0bd  addsub1 (
    .a(reinterpret1_output_port_net_x1),
    .b(addsub5_s_net_x1),
    .ce(ce_1_sg_x79),
    .clk(clk_1_sg_x79),
    .clr(1'b0),
    .s(addsub1_s_net_x0)
  );

  addsub_c36a8bb0bd  addsub2 (
    .a(reinterpret2_output_port_net_x1),
    .b(addsub_s_net_x1),
    .ce(ce_1_sg_x79),
    .clk(clk_1_sg_x79),
    .clr(1'b0),
    .s(addsub2_s_net_x0)
  );
endmodule
// Generated from Simulink block "pc_cfr_spartan6_v1_2/pc_cfr_spartan6/pc_cfr_iteration_1"

module pc_cfr_iteration_1_module_c0968a1ee6 (
  alloc_spacing,
  ce_1,
  clk_1,
  data_i_in,
  data_i_out,
  data_q_in,
  data_q_out,
  data_valid,
  filter_numtaps,
  filter_ram_addr,
  filter_ram_data,
  filter_ram_we,
  reset,
  threshold
);

  input [7:0] alloc_spacing;
  input [0:0] ce_1;
  input [0:0] clk_1;
  input [15:0] data_i_in;
  input [15:0] data_q_in;
  input [8:0] filter_numtaps;
  input [8:0] filter_ram_addr;
  input [31:0] filter_ram_data;
  input [0:0] filter_ram_we;
  input [0:0] reset;
  input [15:0] threshold;
  output [15:0] data_i_out;
  output [15:0] data_q_out;
  output [0:0] data_valid;

  wire [15:0] addsub1_s_net_x1;
  wire [15:0] addsub2_s_net_x1;
  wire [15:0] addsub5_s_net_x1;
  wire [15:0] addsub_s_net_x1;
  wire [7:0] alloc_spacing_net_x3;
  wire [0:0] bit_33_y_net_x1;
  wire [0:0] ce_1_sg_x80;
  wire [0:0] clk_1_sg_x80;
  wire [0:0] cp_locator_x6;
  wire [15:0] data_i_in_net_x3;
  wire [15:0] data_q_in_net_x3;
  wire [8:0] filter_numtaps_net_x7;
  wire [8:0] filter_ram_addr_net_x5;
  wire [31:0] filter_ram_data_net_x5;
  wire [0:0] filter_ram_we_net_x5;
  wire [13:0] mux1_y_net_x2;
  wire [13:0] mux2_y_net_x2;
  wire [15:0] register1_q_net_x1;
  wire [0:0] register2_q_net_x43;
  wire [15:0] register_q_net_x1;
  wire [0:0] register_q_net_x12;
  wire [5:0] register_q_net_x13;
  wire [15:0] reinterpret1_output_port_net_x1;
  wire [15:0] reinterpret1_output_port_net_x10;
  wire [15:0] reinterpret2_output_port_net_x1;
  wire [15:0] reinterpret2_output_port_net_x10;
  wire [0:0] reset_net_x0;
  wire [15:0] threshold_net_x3;
  wire [15:0] x16_msbs_y_net_x5;

  assign alloc_spacing_net_x3 = alloc_spacing;
  assign ce_1_sg_x80 = ce_1;
  assign clk_1_sg_x80 = clk_1;
  assign data_i_in_net_x3 = data_i_in;
  assign data_i_out = addsub1_s_net_x1;
  assign data_q_in_net_x3 = data_q_in;
  assign data_q_out = addsub2_s_net_x1;
  assign data_valid = bit_33_y_net_x1;
  assign filter_numtaps_net_x7 = filter_numtaps;
  assign filter_ram_addr_net_x5 = filter_ram_addr;
  assign filter_ram_data_net_x5 = filter_ram_data;
  assign filter_ram_we_net_x5 = filter_ram_we;
  assign reset_net_x0 = reset;
  assign threshold_net_x3 = threshold;


  c_pulses_module_e76cc1896f  c_pulses_e76cc1896f (
    .alloc_spacing(alloc_spacing_net_x3),
    .ce_1(ce_1_sg_x80),
    .clk_1(clk_1_sg_x80),
    .filter_numtaps(filter_numtaps_net_x7),
    .filter_ram_addr(filter_ram_addr_net_x5),
    .filter_ram_data(filter_ram_data_net_x5),
    .filter_ram_we(filter_ram_we_net_x5),
    .peak_indicator(cp_locator_x6),
    .peak_scale_i(reinterpret1_output_port_net_x10),
    .peak_scale_q(reinterpret2_output_port_net_x10),
    .register2(register2_q_net_x43),
    .pulse_sum_i(addsub5_s_net_x1),
    .pulse_sum_q(addsub_s_net_x1)
  );

  cordic_mag_sin_cos_module_dfa0640afd  cordic_mag_sin_cos_dfa0640afd (
    .ce_1(ce_1_sg_x80),
    .clk_1(clk_1_sg_x80),
    .i_in(data_i_in_net_x3),
    .q_in(data_q_in_net_x3),
    .cos_out(mux1_y_net_x2),
    .mag_out(x16_msbs_y_net_x5),
    .sin_out(mux2_y_net_x2)
  );

  data_in_delay_module_1d6b916bb7  data_in_delay_1d6b916bb7 (
    .ce_1(ce_1_sg_x80),
    .clk_1(clk_1_sg_x80),
    .data_i_in(data_i_in_net_x3),
    .data_q_in(data_q_in_net_x3),
    .numtaps(filter_numtaps_net_x7),
    .reset(register2_q_net_x43),
    .data_i_out(reinterpret1_output_port_net_x1),
    .data_q_out(reinterpret2_output_port_net_x1),
    .data_valid(bit_33_y_net_x1)
  );

  peak_align_module_0b0f94fda9  peak_align_0b0f94fda9 (
    .ce_1(ce_1_sg_x80),
    .clk_1(clk_1_sg_x80),
    .peak_delay(register_q_net_x13),
    .peak_indicator(register_q_net_x12),
    .cp_locator(cp_locator_x6)
  );

  peak_detect_module_7cb6a23d15  peak_detect_7cb6a23d15 (
    .ce_1(ce_1_sg_x80),
    .clk_1(clk_1_sg_x80),
    .mag_in(x16_msbs_y_net_x5),
    .register2(register2_q_net_x43),
    .threshold(threshold_net_x3),
    .peak_delay(register_q_net_x13),
    .peak_indicator(register_q_net_x12)
  );

  peak_scale_module_d797d0e9dd  peak_scale_d797d0e9dd (
    .ce_1(ce_1_sg_x80),
    .clk_1(clk_1_sg_x80),
    .cos_in(mux1_y_net_x2),
    .mag_in(x16_msbs_y_net_x5),
    .sin_in(mux2_y_net_x2),
    .threshold(threshold_net_x3),
    .peak_scale_i(register1_q_net_x1),
    .peak_scale_q(register_q_net_x1)
  );

  peak_scale_delay_module_3f14b5533c  peak_scale_delay_3f14b5533c (
    .ce_1(ce_1_sg_x80),
    .clk_1(clk_1_sg_x80),
    .data_i_in(register1_q_net_x1),
    .data_q_in(register_q_net_x1),
    .data_i_out(reinterpret1_output_port_net_x10),
    .data_q_out(reinterpret2_output_port_net_x10)
  );

  xlregister #(

    .d_width(1),
    .init_value(1'b0))
  register2 (
    .ce(ce_1_sg_x80),
    .clk(clk_1_sg_x80),
    .d(reset_net_x0),
    .en(1'b1),
    .rst(1'b0),
    .q(register2_q_net_x43)
  );

  subtract_module_5a35c6809d  subtract_5a35c6809d (
    .ce_1(ce_1_sg_x80),
    .clk_1(clk_1_sg_x80),
    .data_i_in(reinterpret1_output_port_net_x1),
    .data_q_in(reinterpret2_output_port_net_x1),
    .pulse_sum_i(addsub5_s_net_x1),
    .pulse_sum_q(addsub_s_net_x1),
    .data_i_out(addsub1_s_net_x1),
    .data_q_out(addsub2_s_net_x1)
  );
endmodule
// Generated from Simulink block "pc_cfr_spartan6_v1_2/pc_cfr_spartan6"

module pc_cfr_spartan6_module_cabd84500a (
  alloc_spacing,
  ce_1,
  clk_1,
  data_i_in,
  data_i_out,
  data_q_in,
  data_q_out,
  data_valid,
  filter_numtaps,
  filter_ram_addr,
  filter_ram_data,
  filter_ram_we,
  reset,
  threshold
);

  input [7:0] alloc_spacing;
  input [0:0] ce_1;
  input [0:0] clk_1;
  input [15:0] data_i_in;
  input [15:0] data_q_in;
  input [8:0] filter_numtaps;
  input [8:0] filter_ram_addr;
  input [31:0] filter_ram_data;
  input [0:0] filter_ram_we;
  input [0:0] reset;
  input [15:0] threshold;
  output [15:0] data_i_out;
  output [15:0] data_q_out;
  output [0:0] data_valid;

  wire [15:0] addsub1_s_net_x2;
  wire [15:0] addsub2_s_net_x2;
  wire [7:0] alloc_spacing_net_x4;
  wire [0:0] bit_33_y_net_x2;
  wire [0:0] ce_1_sg_x81;
  wire [0:0] clk_1_sg_x81;
  wire [15:0] data_i_in_net_x4;
  wire [15:0] data_q_in_net_x4;
  wire [8:0] filter_numtaps_net_x8;
  wire [8:0] filter_ram_addr_net_x6;
  wire [31:0] filter_ram_data_net_x6;
  wire [0:0] filter_ram_we_net_x6;
  wire [0:0] reset_net_x1;
  wire [15:0] threshold_net_x4;

  assign alloc_spacing_net_x4 = alloc_spacing;
  assign ce_1_sg_x81 = ce_1;
  assign clk_1_sg_x81 = clk_1;
  assign data_i_in_net_x4 = data_i_in;
  assign data_i_out = addsub1_s_net_x2;
  assign data_q_in_net_x4 = data_q_in;
  assign data_q_out = addsub2_s_net_x2;
  assign data_valid = bit_33_y_net_x2;
  assign filter_numtaps_net_x8 = filter_numtaps;
  assign filter_ram_addr_net_x6 = filter_ram_addr;
  assign filter_ram_data_net_x6 = filter_ram_data;
  assign filter_ram_we_net_x6 = filter_ram_we;
  assign reset_net_x1 = reset;
  assign threshold_net_x4 = threshold;


  pc_cfr_iteration_1_module_c0968a1ee6  pc_cfr_iteration_1_c0968a1ee6 (
    .alloc_spacing(alloc_spacing_net_x4),
    .ce_1(ce_1_sg_x81),
    .clk_1(clk_1_sg_x81),
    .data_i_in(data_i_in_net_x4),
    .data_q_in(data_q_in_net_x4),
    .filter_numtaps(filter_numtaps_net_x8),
    .filter_ram_addr(filter_ram_addr_net_x6),
    .filter_ram_data(filter_ram_data_net_x6),
    .filter_ram_we(filter_ram_we_net_x6),
    .reset(reset_net_x1),
    .threshold(threshold_net_x4),
    .data_i_out(addsub1_s_net_x2),
    .data_q_out(addsub2_s_net_x2),
    .data_valid(bit_33_y_net_x2)
  );
endmodule
// Generated from Simulink block "pc_cfr_spartan6_v1_2"

(* core_generation_info = "pc_cfr_spartan6_v1_2,sysgen_core,{clock_period=3.50000000,clocking=Clock_Enables,compilation=HDL_Netlist,sample_periods=1.00000000000,testbench=0,total_blocks=1039,xilinx_adder_subtracter_block=44,xilinx_arithmetic_relational_operator_block=8,xilinx_binary_shift_operator_block=17,xilinx_bit_slice_extractor_block=44,xilinx_bus_concatenator_block=11,xilinx_bus_multiplexer_block=42,xilinx_constant_block_block=51,xilinx_counter_block=3,xilinx_delay_block=16,xilinx_dsp48a_block=18,xilinx_dual_port_random_access_memory_block=7,xilinx_gateway_in_block=9,xilinx_gateway_out_block=27,xilinx_instruction_block_block=18,xilinx_inverter_block=17,xilinx_logical_block_block=13,xilinx_negate_block_block=2,xilinx_register_block=56,xilinx_single_port_read_only_memory_block=2,xilinx_system_generator_block=1,xilinx_type_converter_block=25,xilinx_type_reinterpreter_block=19,xilinx_wavescope_block=2,}" *)
module pc_cfr_spartan6_v1_2 (
  alloc_spacing,
  ce_1,
  clk_1,
  data_i_in,
  data_i_out,
  data_q_in,
  data_q_out,
  data_valid,
  filter_numtaps,
  filter_ram_addr,
  filter_ram_data,
  filter_ram_we,
  reset,
  threshold
);

  input [7:0] alloc_spacing;
  input [0:0] ce_1;
  input [0:0] clk_1;
  input [15:0] data_i_in;
  input [15:0] data_q_in;
  input [8:0] filter_numtaps;
  input [8:0] filter_ram_addr;
  input [31:0] filter_ram_data;
  input [0:0] filter_ram_we;
  input [0:0] reset;
  input [15:0] threshold;
  output [15:0] data_i_out;
  output [15:0] data_q_out;
  output [0:0] data_valid;

  wire [7:0] alloc_spacing_net;
  wire [0:0] ce_1_sg_x82;
  wire [0:0] clk_1_sg_x82;
  wire [15:0] data_i_in_net;
  wire [15:0] data_i_out_net;
  wire [15:0] data_q_in_net;
  wire [15:0] data_q_out_net;
  wire [0:0] data_valid_net;
  wire [8:0] filter_numtaps_net;
  wire [8:0] filter_ram_addr_net;
  wire [31:0] filter_ram_data_net;
  wire [0:0] filter_ram_we_net;
  wire [0:0] reset_net;
  wire [15:0] threshold_net;

  assign alloc_spacing_net = alloc_spacing;
  assign ce_1_sg_x82 = ce_1;
  assign clk_1_sg_x82 = clk_1;
  assign data_i_in_net = data_i_in;
  assign data_i_out = data_i_out_net;
  assign data_q_in_net = data_q_in;
  assign data_q_out = data_q_out_net;
  assign data_valid = data_valid_net;
  assign filter_numtaps_net = filter_numtaps;
  assign filter_ram_addr_net = filter_ram_addr;
  assign filter_ram_data_net = filter_ram_data;
  assign filter_ram_we_net = filter_ram_we;
  assign reset_net = reset;
  assign threshold_net = threshold;


  pc_cfr_spartan6_module_cabd84500a  pc_cfr_spartan6_cabd84500a (
    .alloc_spacing(alloc_spacing_net),
    .ce_1(ce_1_sg_x82),
    .clk_1(clk_1_sg_x82),
    .data_i_in(data_i_in_net),
    .data_q_in(data_q_in_net),
    .filter_numtaps(filter_numtaps_net),
    .filter_ram_addr(filter_ram_addr_net),
    .filter_ram_data(filter_ram_data_net),
    .filter_ram_we(filter_ram_we_net),
    .reset(reset_net),
    .threshold(threshold_net),
    .data_i_out(data_i_out_net),
    .data_q_out(data_q_out_net),
    .data_valid(data_valid_net)
  );
endmodule
