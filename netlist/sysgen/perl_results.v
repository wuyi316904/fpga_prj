
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
 

