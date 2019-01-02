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
