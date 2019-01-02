`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Design Name: 
// Module Name: 
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module pc_cfr_spartan6_v1_2_cw_stub
(
  alloc_spacing,
  ce,
  clk,// clock period = 3.5 ns (285.7142857142857 Mhz)
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
  input  ce;
  input  clk;// clock period = 3.5 ns (285.7142857142857 Mhz)
  input [15:0] data_i_in;
  output [15:0] data_i_out;
  input [15:0] data_q_in;
  output [15:0] data_q_out;
  output [0:0] data_valid;
  input [8:0] filter_numtaps;
  input [8:0] filter_ram_addr;
  input [31:0] filter_ram_data;
  input [0:0] filter_ram_we;
  input [0:0] reset;
  input [15:0] threshold;

pc_cfr_spartan6_v1_2_cw pc_cfr_spartan6_v1_2_cw_i (
  .alloc_spacing(alloc_spacing),
  .ce(ce),
  .clk(clk),
  .data_i_in(data_i_in),
  .data_i_out(data_i_out),
  .data_q_in(data_q_in),
  .data_q_out(data_q_out),
  .data_valid(data_valid),
  .filter_numtaps(filter_numtaps),
  .filter_ram_addr(filter_ram_addr),
  .filter_ram_data(filter_ram_data),
  .filter_ram_we(filter_ram_we),
  .reset(reset),
  .threshold(threshold));

endmodule 
