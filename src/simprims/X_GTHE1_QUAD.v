///////////////////////////////////////////////////////
//  Copyright (c) 2010 Xilinx Inc.
//  All Right Reserved.
///////////////////////////////////////////////////////
//
//   ____   ___
//  /   /\/   / 
// /___/  \  /     Vendor      : Xilinx 
// \  \    \/      Version     : 13.2
//  \  \           Description : Xilinx Functional Simulation Library Component
//  /  /                         Gigabit Transceiver
// /__/   /\       Filename    : X_GTHE1_QUAD.v
// \  \  /  \ 
//  \__\/\__ \                    
//                                 
//  Revision:		1.0
//  05/29/09 - CR523112 - Initial version
//  06/16/09 - CR523112 - Parameter update in YML
//  06/24/09 - CR523112 - YML update
//  07/14/09 - CR527136 - Complete simprim wrapper
//  09/01/09 - CR531818 - Replace B_X_GTHE1_QUAD with B_GTHE1_QUAD - writer bug
//  09/01/09 - CR532172 - Delay YML update
//  10/01/09 - CR534680 - YML Attribute updates
//  01/26/10 - CR546178 - YML new output pins & parameter default update
//  03/22/10 - CR552516 - DRC checks added
//  03/22/11 - CR602582 - YML attribute updates
//  05/16/11 - CR610451 - YML attribute default updates
//  11/16/11 - CR629921 - DRC checks updated
///////////////////////////////////////////////////////////////////

`timescale 1 ps / 1 ps

module X_GTHE1_QUAD (
  DRDY,
  DRPDO,
  GTHINITDONE,
  MGMTPCSRDACK,
  MGMTPCSRDDATA,
  RXCODEERR0,
  RXCODEERR1,
  RXCODEERR2,
  RXCODEERR3,
  RXCTRL0,
  RXCTRL1,
  RXCTRL2,
  RXCTRL3,
  RXCTRLACK0,
  RXCTRLACK1,
  RXCTRLACK2,
  RXCTRLACK3,
  RXDATA0,
  RXDATA1,
  RXDATA2,
  RXDATA3,
  RXDATATAP0,
  RXDATATAP1,
  RXDATATAP2,
  RXDATATAP3,
  RXDISPERR0,
  RXDISPERR1,
  RXDISPERR2,
  RXDISPERR3,
  RXPCSCLKSMPL0,
  RXPCSCLKSMPL1,
  RXPCSCLKSMPL2,
  RXPCSCLKSMPL3,
  RXUSERCLKOUT0,
  RXUSERCLKOUT1,
  RXUSERCLKOUT2,
  RXUSERCLKOUT3,
  RXVALID0,
  RXVALID1,
  RXVALID2,
  RXVALID3,
  TSTPATH,
  TSTREFCLKFAB,
  TSTREFCLKOUT,
  TXCTRLACK0,
  TXCTRLACK1,
  TXCTRLACK2,
  TXCTRLACK3,
  TXDATATAP10,
  TXDATATAP11,
  TXDATATAP12,
  TXDATATAP13,
  TXDATATAP20,
  TXDATATAP21,
  TXDATATAP22,
  TXDATATAP23,
  TXN0,
  TXN1,
  TXN2,
  TXN3,
  TXP0,
  TXP1,
  TXP2,
  TXP3,
  TXPCSCLKSMPL0,
  TXPCSCLKSMPL1,
  TXPCSCLKSMPL2,
  TXPCSCLKSMPL3,
  TXUSERCLKOUT0,
  TXUSERCLKOUT1,
  TXUSERCLKOUT2,
  TXUSERCLKOUT3,

  DADDR,
  DCLK,
  DEN,
  DFETRAINCTRL0,
  DFETRAINCTRL1,
  DFETRAINCTRL2,
  DFETRAINCTRL3,
  DI,
  DISABLEDRP,
  DWE,
  GTHINIT,
  GTHRESET,
  GTHX2LANE01,
  GTHX2LANE23,
  GTHX4LANE,
  MGMTPCSLANESEL,
  MGMTPCSMMDADDR,
  MGMTPCSREGADDR,
  MGMTPCSREGRD,
  MGMTPCSREGWR,
  MGMTPCSWRDATA,
  PLLPCSCLKDIV,
  PLLREFCLKSEL,
  POWERDOWN0,
  POWERDOWN1,
  POWERDOWN2,
  POWERDOWN3,
  REFCLK,
  RXBUFRESET0,
  RXBUFRESET1,
  RXBUFRESET2,
  RXBUFRESET3,
  RXENCOMMADET0,
  RXENCOMMADET1,
  RXENCOMMADET2,
  RXENCOMMADET3,
  RXN0,
  RXN1,
  RXN2,
  RXN3,
  RXP0,
  RXP1,
  RXP2,
  RXP3,
  RXPOLARITY0,
  RXPOLARITY1,
  RXPOLARITY2,
  RXPOLARITY3,
  RXPOWERDOWN0,
  RXPOWERDOWN1,
  RXPOWERDOWN2,
  RXPOWERDOWN3,
  RXRATE0,
  RXRATE1,
  RXRATE2,
  RXRATE3,
  RXSLIP0,
  RXSLIP1,
  RXSLIP2,
  RXSLIP3,
  RXUSERCLKIN0,
  RXUSERCLKIN1,
  RXUSERCLKIN2,
  RXUSERCLKIN3,
  SAMPLERATE0,
  SAMPLERATE1,
  SAMPLERATE2,
  SAMPLERATE3,
  TXBUFRESET0,
  TXBUFRESET1,
  TXBUFRESET2,
  TXBUFRESET3,
  TXCTRL0,
  TXCTRL1,
  TXCTRL2,
  TXCTRL3,
  TXDATA0,
  TXDATA1,
  TXDATA2,
  TXDATA3,
  TXDATAMSB0,
  TXDATAMSB1,
  TXDATAMSB2,
  TXDATAMSB3,
  TXDEEMPH0,
  TXDEEMPH1,
  TXDEEMPH2,
  TXDEEMPH3,
  TXMARGIN0,
  TXMARGIN1,
  TXMARGIN2,
  TXMARGIN3,
  TXPOWERDOWN0,
  TXPOWERDOWN1,
  TXPOWERDOWN2,
  TXPOWERDOWN3,
  TXRATE0,
  TXRATE1,
  TXRATE2,
  TXRATE3,
  TXUSERCLKIN0,
  TXUSERCLKIN1,
  TXUSERCLKIN2,
  TXUSERCLKIN3
);

  parameter LOC = "UNPLACED";
  parameter [15:0] BER_CONST_PTRN0 = 16'h0000;
  parameter [15:0] BER_CONST_PTRN1 = 16'h0000;
  parameter [15:0] BUFFER_CONFIG_LANE0 = 16'h4004;
  parameter [15:0] BUFFER_CONFIG_LANE1 = 16'h4004;
  parameter [15:0] BUFFER_CONFIG_LANE2 = 16'h4004;
  parameter [15:0] BUFFER_CONFIG_LANE3 = 16'h4004;
  parameter [15:0] DFE_TRAIN_CTRL_LANE0 = 16'h0000;
  parameter [15:0] DFE_TRAIN_CTRL_LANE1 = 16'h0000;
  parameter [15:0] DFE_TRAIN_CTRL_LANE2 = 16'h0000;
  parameter [15:0] DFE_TRAIN_CTRL_LANE3 = 16'h0000;
  parameter [15:0] DLL_CFG0 = 16'h8202;
  parameter [15:0] DLL_CFG1 = 16'h0000;
  parameter [15:0] E10GBASEKR_LD_COEFF_UPD_LANE0 = 16'h0000;
  parameter [15:0] E10GBASEKR_LD_COEFF_UPD_LANE1 = 16'h0000;
  parameter [15:0] E10GBASEKR_LD_COEFF_UPD_LANE2 = 16'h0000;
  parameter [15:0] E10GBASEKR_LD_COEFF_UPD_LANE3 = 16'h0000;
  parameter [15:0] E10GBASEKR_LP_COEFF_UPD_LANE0 = 16'h0000;
  parameter [15:0] E10GBASEKR_LP_COEFF_UPD_LANE1 = 16'h0000;
  parameter [15:0] E10GBASEKR_LP_COEFF_UPD_LANE2 = 16'h0000;
  parameter [15:0] E10GBASEKR_LP_COEFF_UPD_LANE3 = 16'h0000;
  parameter [15:0] E10GBASEKR_PMA_CTRL_LANE0 = 16'h0002;
  parameter [15:0] E10GBASEKR_PMA_CTRL_LANE1 = 16'h0002;
  parameter [15:0] E10GBASEKR_PMA_CTRL_LANE2 = 16'h0002;
  parameter [15:0] E10GBASEKR_PMA_CTRL_LANE3 = 16'h0002;
  parameter [15:0] E10GBASEKX_CTRL_LANE0 = 16'h0000;
  parameter [15:0] E10GBASEKX_CTRL_LANE1 = 16'h0000;
  parameter [15:0] E10GBASEKX_CTRL_LANE2 = 16'h0000;
  parameter [15:0] E10GBASEKX_CTRL_LANE3 = 16'h0000;
  parameter [15:0] E10GBASER_PCS_CFG_LANE0 = 16'h070C;
  parameter [15:0] E10GBASER_PCS_CFG_LANE1 = 16'h070C;
  parameter [15:0] E10GBASER_PCS_CFG_LANE2 = 16'h070C;
  parameter [15:0] E10GBASER_PCS_CFG_LANE3 = 16'h070C;
  parameter [15:0] E10GBASER_PCS_SEEDA0_LANE0 = 16'h0001;
  parameter [15:0] E10GBASER_PCS_SEEDA0_LANE1 = 16'h0001;
  parameter [15:0] E10GBASER_PCS_SEEDA0_LANE2 = 16'h0001;
  parameter [15:0] E10GBASER_PCS_SEEDA0_LANE3 = 16'h0001;
  parameter [15:0] E10GBASER_PCS_SEEDA1_LANE0 = 16'h0000;
  parameter [15:0] E10GBASER_PCS_SEEDA1_LANE1 = 16'h0000;
  parameter [15:0] E10GBASER_PCS_SEEDA1_LANE2 = 16'h0000;
  parameter [15:0] E10GBASER_PCS_SEEDA1_LANE3 = 16'h0000;
  parameter [15:0] E10GBASER_PCS_SEEDA2_LANE0 = 16'h0000;
  parameter [15:0] E10GBASER_PCS_SEEDA2_LANE1 = 16'h0000;
  parameter [15:0] E10GBASER_PCS_SEEDA2_LANE2 = 16'h0000;
  parameter [15:0] E10GBASER_PCS_SEEDA2_LANE3 = 16'h0000;
  parameter [15:0] E10GBASER_PCS_SEEDA3_LANE0 = 16'h0000;
  parameter [15:0] E10GBASER_PCS_SEEDA3_LANE1 = 16'h0000;
  parameter [15:0] E10GBASER_PCS_SEEDA3_LANE2 = 16'h0000;
  parameter [15:0] E10GBASER_PCS_SEEDA3_LANE3 = 16'h0000;
  parameter [15:0] E10GBASER_PCS_SEEDB0_LANE0 = 16'h0001;
  parameter [15:0] E10GBASER_PCS_SEEDB0_LANE1 = 16'h0001;
  parameter [15:0] E10GBASER_PCS_SEEDB0_LANE2 = 16'h0001;
  parameter [15:0] E10GBASER_PCS_SEEDB0_LANE3 = 16'h0001;
  parameter [15:0] E10GBASER_PCS_SEEDB1_LANE0 = 16'h0000;
  parameter [15:0] E10GBASER_PCS_SEEDB1_LANE1 = 16'h0000;
  parameter [15:0] E10GBASER_PCS_SEEDB1_LANE2 = 16'h0000;
  parameter [15:0] E10GBASER_PCS_SEEDB1_LANE3 = 16'h0000;
  parameter [15:0] E10GBASER_PCS_SEEDB2_LANE0 = 16'h0000;
  parameter [15:0] E10GBASER_PCS_SEEDB2_LANE1 = 16'h0000;
  parameter [15:0] E10GBASER_PCS_SEEDB2_LANE2 = 16'h0000;
  parameter [15:0] E10GBASER_PCS_SEEDB2_LANE3 = 16'h0000;
  parameter [15:0] E10GBASER_PCS_SEEDB3_LANE0 = 16'h0000;
  parameter [15:0] E10GBASER_PCS_SEEDB3_LANE1 = 16'h0000;
  parameter [15:0] E10GBASER_PCS_SEEDB3_LANE2 = 16'h0000;
  parameter [15:0] E10GBASER_PCS_SEEDB3_LANE3 = 16'h0000;
  parameter [15:0] E10GBASER_PCS_TEST_CTRL_LANE0 = 16'h0000;
  parameter [15:0] E10GBASER_PCS_TEST_CTRL_LANE1 = 16'h0000;
  parameter [15:0] E10GBASER_PCS_TEST_CTRL_LANE2 = 16'h0000;
  parameter [15:0] E10GBASER_PCS_TEST_CTRL_LANE3 = 16'h0000;
  parameter [15:0] E10GBASEX_PCS_TSTCTRL_LANE0 = 16'h0000;
  parameter [15:0] E10GBASEX_PCS_TSTCTRL_LANE1 = 16'h0000;
  parameter [15:0] E10GBASEX_PCS_TSTCTRL_LANE2 = 16'h0000;
  parameter [15:0] E10GBASEX_PCS_TSTCTRL_LANE3 = 16'h0000;
  parameter [15:0] GLBL0_NOISE_CTRL = 16'hF0B8;
  parameter [15:0] GLBL_AMON_SEL = 16'h0000;
  parameter [15:0] GLBL_DMON_SEL = 16'h0200;
  parameter [15:0] GLBL_PWR_CTRL = 16'h0000;
  parameter [0:0] GTH_CFG_PWRUP_LANE0 = 1'b1;
  parameter [0:0] GTH_CFG_PWRUP_LANE1 = 1'b1;
  parameter [0:0] GTH_CFG_PWRUP_LANE2 = 1'b1;
  parameter [0:0] GTH_CFG_PWRUP_LANE3 = 1'b1;
  parameter [15:0] LANE_AMON_SEL = 16'h00F0;
  parameter [15:0] LANE_DMON_SEL = 16'h0000;
  parameter [15:0] LANE_LNK_CFGOVRD = 16'h0000;
  parameter [15:0] LANE_PWR_CTRL_LANE0 = 16'h0400;
  parameter [15:0] LANE_PWR_CTRL_LANE1 = 16'h0400;
  parameter [15:0] LANE_PWR_CTRL_LANE2 = 16'h0400;
  parameter [15:0] LANE_PWR_CTRL_LANE3 = 16'h0400;
  parameter [15:0] LNK_TRN_CFG_LANE0 = 16'h0000;
  parameter [15:0] LNK_TRN_CFG_LANE1 = 16'h0000;
  parameter [15:0] LNK_TRN_CFG_LANE2 = 16'h0000;
  parameter [15:0] LNK_TRN_CFG_LANE3 = 16'h0000;
  parameter [15:0] LNK_TRN_COEFF_REQ_LANE0 = 16'h0000;
  parameter [15:0] LNK_TRN_COEFF_REQ_LANE1 = 16'h0000;
  parameter [15:0] LNK_TRN_COEFF_REQ_LANE2 = 16'h0000;
  parameter [15:0] LNK_TRN_COEFF_REQ_LANE3 = 16'h0000;
  parameter [15:0] MISC_CFG = 16'h0008;
  parameter [15:0] MODE_CFG1 = 16'h0000;
  parameter [15:0] MODE_CFG2 = 16'h0000;
  parameter [15:0] MODE_CFG3 = 16'h0000;
  parameter [15:0] MODE_CFG4 = 16'h0000;
  parameter [15:0] MODE_CFG5 = 16'h0000;
  parameter [15:0] MODE_CFG6 = 16'h0000;
  parameter [15:0] MODE_CFG7 = 16'h0000;
  parameter [15:0] PCS_ABILITY_LANE0 = 16'h0010;
  parameter [15:0] PCS_ABILITY_LANE1 = 16'h0010;
  parameter [15:0] PCS_ABILITY_LANE2 = 16'h0010;
  parameter [15:0] PCS_ABILITY_LANE3 = 16'h0010;
  parameter [15:0] PCS_CTRL1_LANE0 = 16'h2040;
  parameter [15:0] PCS_CTRL1_LANE1 = 16'h2040;
  parameter [15:0] PCS_CTRL1_LANE2 = 16'h2040;
  parameter [15:0] PCS_CTRL1_LANE3 = 16'h2040;
  parameter [15:0] PCS_CTRL2_LANE0 = 16'h0000;
  parameter [15:0] PCS_CTRL2_LANE1 = 16'h0000;
  parameter [15:0] PCS_CTRL2_LANE2 = 16'h0000;
  parameter [15:0] PCS_CTRL2_LANE3 = 16'h0000;
  parameter [15:0] PCS_MISC_CFG_0_LANE0 = 16'h1116;
  parameter [15:0] PCS_MISC_CFG_0_LANE1 = 16'h1116;
  parameter [15:0] PCS_MISC_CFG_0_LANE2 = 16'h1116;
  parameter [15:0] PCS_MISC_CFG_0_LANE3 = 16'h1116;
  parameter [15:0] PCS_MISC_CFG_1_LANE0 = 16'h0000;
  parameter [15:0] PCS_MISC_CFG_1_LANE1 = 16'h0000;
  parameter [15:0] PCS_MISC_CFG_1_LANE2 = 16'h0000;
  parameter [15:0] PCS_MISC_CFG_1_LANE3 = 16'h0000;
  parameter [15:0] PCS_MODE_LANE0 = 16'h0000;
  parameter [15:0] PCS_MODE_LANE1 = 16'h0000;
  parameter [15:0] PCS_MODE_LANE2 = 16'h0000;
  parameter [15:0] PCS_MODE_LANE3 = 16'h0000;
  parameter [15:0] PCS_RESET_1_LANE0 = 16'h0002;
  parameter [15:0] PCS_RESET_1_LANE1 = 16'h0002;
  parameter [15:0] PCS_RESET_1_LANE2 = 16'h0002;
  parameter [15:0] PCS_RESET_1_LANE3 = 16'h0002;
  parameter [15:0] PCS_RESET_LANE0 = 16'h0000;
  parameter [15:0] PCS_RESET_LANE1 = 16'h0000;
  parameter [15:0] PCS_RESET_LANE2 = 16'h0000;
  parameter [15:0] PCS_RESET_LANE3 = 16'h0000;
  parameter [15:0] PCS_TYPE_LANE0 = 16'h002C;
  parameter [15:0] PCS_TYPE_LANE1 = 16'h002C;
  parameter [15:0] PCS_TYPE_LANE2 = 16'h002C;
  parameter [15:0] PCS_TYPE_LANE3 = 16'h002C;
  parameter [15:0] PLL_CFG0 = 16'h95DF;
  parameter [15:0] PLL_CFG1 = 16'h81C0;
  parameter [15:0] PLL_CFG2 = 16'h0424;
  parameter [15:0] PMA_CTRL1_LANE0 = 16'h0000;
  parameter [15:0] PMA_CTRL1_LANE1 = 16'h0000;
  parameter [15:0] PMA_CTRL1_LANE2 = 16'h0000;
  parameter [15:0] PMA_CTRL1_LANE3 = 16'h0000;
  parameter [15:0] PMA_CTRL2_LANE0 = 16'h000B;
  parameter [15:0] PMA_CTRL2_LANE1 = 16'h000B;
  parameter [15:0] PMA_CTRL2_LANE2 = 16'h000B;
  parameter [15:0] PMA_CTRL2_LANE3 = 16'h000B;
  parameter [15:0] PMA_LPBK_CTRL_LANE0 = 16'h0004;
  parameter [15:0] PMA_LPBK_CTRL_LANE1 = 16'h0004;
  parameter [15:0] PMA_LPBK_CTRL_LANE2 = 16'h0004;
  parameter [15:0] PMA_LPBK_CTRL_LANE3 = 16'h0004;
  parameter [15:0] PRBS_BER_CFG0_LANE0 = 16'h0000;
  parameter [15:0] PRBS_BER_CFG0_LANE1 = 16'h0000;
  parameter [15:0] PRBS_BER_CFG0_LANE2 = 16'h0000;
  parameter [15:0] PRBS_BER_CFG0_LANE3 = 16'h0000;
  parameter [15:0] PRBS_BER_CFG1_LANE0 = 16'h0000;
  parameter [15:0] PRBS_BER_CFG1_LANE1 = 16'h0000;
  parameter [15:0] PRBS_BER_CFG1_LANE2 = 16'h0000;
  parameter [15:0] PRBS_BER_CFG1_LANE3 = 16'h0000;
  parameter [15:0] PRBS_CFG_LANE0 = 16'h000A;
  parameter [15:0] PRBS_CFG_LANE1 = 16'h000A;
  parameter [15:0] PRBS_CFG_LANE2 = 16'h000A;
  parameter [15:0] PRBS_CFG_LANE3 = 16'h000A;
  parameter [15:0] PTRN_CFG0_LSB = 16'h5555;
  parameter [15:0] PTRN_CFG0_MSB = 16'h5555;
  parameter [15:0] PTRN_LEN_CFG = 16'h001F;
  parameter [15:0] PWRUP_DLY = 16'h0000;
  parameter [15:0] RX_AEQ_VAL0_LANE0 = 16'h03C0;
  parameter [15:0] RX_AEQ_VAL0_LANE1 = 16'h03C0;
  parameter [15:0] RX_AEQ_VAL0_LANE2 = 16'h03C0;
  parameter [15:0] RX_AEQ_VAL0_LANE3 = 16'h03C0;
  parameter [15:0] RX_AEQ_VAL1_LANE0 = 16'h0000;
  parameter [15:0] RX_AEQ_VAL1_LANE1 = 16'h0000;
  parameter [15:0] RX_AEQ_VAL1_LANE2 = 16'h0000;
  parameter [15:0] RX_AEQ_VAL1_LANE3 = 16'h0000;
  parameter [15:0] RX_AGC_CTRL_LANE0 = 16'h0000;
  parameter [15:0] RX_AGC_CTRL_LANE1 = 16'h0000;
  parameter [15:0] RX_AGC_CTRL_LANE2 = 16'h0000;
  parameter [15:0] RX_AGC_CTRL_LANE3 = 16'h0000;
  parameter [15:0] RX_CDR_CTRL0_LANE0 = 16'h0005;
  parameter [15:0] RX_CDR_CTRL0_LANE1 = 16'h0005;
  parameter [15:0] RX_CDR_CTRL0_LANE2 = 16'h0005;
  parameter [15:0] RX_CDR_CTRL0_LANE3 = 16'h0005;
  parameter [15:0] RX_CDR_CTRL1_LANE0 = 16'h4200;
  parameter [15:0] RX_CDR_CTRL1_LANE1 = 16'h4200;
  parameter [15:0] RX_CDR_CTRL1_LANE2 = 16'h4200;
  parameter [15:0] RX_CDR_CTRL1_LANE3 = 16'h4200;
  parameter [15:0] RX_CDR_CTRL2_LANE0 = 16'h2000;
  parameter [15:0] RX_CDR_CTRL2_LANE1 = 16'h2000;
  parameter [15:0] RX_CDR_CTRL2_LANE2 = 16'h2000;
  parameter [15:0] RX_CDR_CTRL2_LANE3 = 16'h2000;
  parameter [15:0] RX_CFG0_LANE0 = 16'h0500;
  parameter [15:0] RX_CFG0_LANE1 = 16'h0500;
  parameter [15:0] RX_CFG0_LANE2 = 16'h0500;
  parameter [15:0] RX_CFG0_LANE3 = 16'h0500;
  parameter [15:0] RX_CFG1_LANE0 = 16'h821F;
  parameter [15:0] RX_CFG1_LANE1 = 16'h821F;
  parameter [15:0] RX_CFG1_LANE2 = 16'h821F;
  parameter [15:0] RX_CFG1_LANE3 = 16'h821F;
  parameter [15:0] RX_CFG2_LANE0 = 16'h1001;
  parameter [15:0] RX_CFG2_LANE1 = 16'h1001;
  parameter [15:0] RX_CFG2_LANE2 = 16'h1001;
  parameter [15:0] RX_CFG2_LANE3 = 16'h1001;
  parameter [15:0] RX_CTLE_CTRL_LANE0 = 16'h008F;
  parameter [15:0] RX_CTLE_CTRL_LANE1 = 16'h008F;
  parameter [15:0] RX_CTLE_CTRL_LANE2 = 16'h008F;
  parameter [15:0] RX_CTLE_CTRL_LANE3 = 16'h008F;
  parameter [15:0] RX_CTRL_OVRD_LANE0 = 16'h000C;
  parameter [15:0] RX_CTRL_OVRD_LANE1 = 16'h000C;
  parameter [15:0] RX_CTRL_OVRD_LANE2 = 16'h000C;
  parameter [15:0] RX_CTRL_OVRD_LANE3 = 16'h000C;
  parameter integer RX_FABRIC_WIDTH0 = 6466;
  parameter integer RX_FABRIC_WIDTH1 = 6466;
  parameter integer RX_FABRIC_WIDTH2 = 6466;
  parameter integer RX_FABRIC_WIDTH3 = 6466;
  parameter [15:0] RX_LOOP_CTRL_LANE0 = 16'h007F;
  parameter [15:0] RX_LOOP_CTRL_LANE1 = 16'h007F;
  parameter [15:0] RX_LOOP_CTRL_LANE2 = 16'h007F;
  parameter [15:0] RX_LOOP_CTRL_LANE3 = 16'h007F;
  parameter [15:0] RX_MVAL0_LANE0 = 16'h0000;
  parameter [15:0] RX_MVAL0_LANE1 = 16'h0000;
  parameter [15:0] RX_MVAL0_LANE2 = 16'h0000;
  parameter [15:0] RX_MVAL0_LANE3 = 16'h0000;
  parameter [15:0] RX_MVAL1_LANE0 = 16'h0000;
  parameter [15:0] RX_MVAL1_LANE1 = 16'h0000;
  parameter [15:0] RX_MVAL1_LANE2 = 16'h0000;
  parameter [15:0] RX_MVAL1_LANE3 = 16'h0000;
  parameter [15:0] RX_P0S_CTRL = 16'h1206;
  parameter [15:0] RX_P0_CTRL = 16'h11F0;
  parameter [15:0] RX_P1_CTRL = 16'h120F;
  parameter [15:0] RX_P2_CTRL = 16'h0E0F;
  parameter [15:0] RX_PI_CTRL0 = 16'hD2F0;
  parameter [15:0] RX_PI_CTRL1 = 16'h0080;
  parameter integer SIM_GTHRESET_SPEEDUP = 1;
  parameter SIM_VERSION = "1.0";
  parameter [15:0] SLICE_CFG = 16'h0000;
  parameter [15:0] SLICE_NOISE_CTRL_0_LANE01 = 16'h0000;
  parameter [15:0] SLICE_NOISE_CTRL_0_LANE23 = 16'h0000;
  parameter [15:0] SLICE_NOISE_CTRL_1_LANE01 = 16'h0000;
  parameter [15:0] SLICE_NOISE_CTRL_1_LANE23 = 16'h0000;
  parameter [15:0] SLICE_NOISE_CTRL_2_LANE01 = 16'h7FFF;
  parameter [15:0] SLICE_NOISE_CTRL_2_LANE23 = 16'h7FFF;
  parameter [15:0] SLICE_TX_RESET_LANE01 = 16'h0000;
  parameter [15:0] SLICE_TX_RESET_LANE23 = 16'h0000;
  parameter [15:0] TERM_CTRL_LANE0 = 16'h5007;
  parameter [15:0] TERM_CTRL_LANE1 = 16'h5007;
  parameter [15:0] TERM_CTRL_LANE2 = 16'h5007;
  parameter [15:0] TERM_CTRL_LANE3 = 16'h5007;
  parameter [15:0] TX_CFG0_LANE0 = 16'h203D;
  parameter [15:0] TX_CFG0_LANE1 = 16'h203D;
  parameter [15:0] TX_CFG0_LANE2 = 16'h203D;
  parameter [15:0] TX_CFG0_LANE3 = 16'h203D;
  parameter [15:0] TX_CFG1_LANE0 = 16'h0F00;
  parameter [15:0] TX_CFG1_LANE1 = 16'h0F00;
  parameter [15:0] TX_CFG1_LANE2 = 16'h0F00;
  parameter [15:0] TX_CFG1_LANE3 = 16'h0F00;
  parameter [15:0] TX_CFG2_LANE0 = 16'h0081;
  parameter [15:0] TX_CFG2_LANE1 = 16'h0081;
  parameter [15:0] TX_CFG2_LANE2 = 16'h0081;
  parameter [15:0] TX_CFG2_LANE3 = 16'h0081;
  parameter [15:0] TX_CLK_SEL0_LANE0 = 16'h2121;
  parameter [15:0] TX_CLK_SEL0_LANE1 = 16'h2121;
  parameter [15:0] TX_CLK_SEL0_LANE2 = 16'h2121;
  parameter [15:0] TX_CLK_SEL0_LANE3 = 16'h2121;
  parameter [15:0] TX_CLK_SEL1_LANE0 = 16'h2121;
  parameter [15:0] TX_CLK_SEL1_LANE1 = 16'h2121;
  parameter [15:0] TX_CLK_SEL1_LANE2 = 16'h2121;
  parameter [15:0] TX_CLK_SEL1_LANE3 = 16'h2121;
  parameter [15:0] TX_DISABLE_LANE0 = 16'h0000;
  parameter [15:0] TX_DISABLE_LANE1 = 16'h0000;
  parameter [15:0] TX_DISABLE_LANE2 = 16'h0000;
  parameter [15:0] TX_DISABLE_LANE3 = 16'h0000;
  parameter integer TX_FABRIC_WIDTH0 = 6466;
  parameter integer TX_FABRIC_WIDTH1 = 6466;
  parameter integer TX_FABRIC_WIDTH2 = 6466;
  parameter integer TX_FABRIC_WIDTH3 = 6466;
  parameter [15:0] TX_P0P0S_CTRL = 16'h060C;
  parameter [15:0] TX_P1P2_CTRL = 16'h0C39;
  parameter [15:0] TX_PREEMPH_LANE0 = 16'h00A1;
  parameter [15:0] TX_PREEMPH_LANE1 = 16'h00A1;
  parameter [15:0] TX_PREEMPH_LANE2 = 16'h00A1;
  parameter [15:0] TX_PREEMPH_LANE3 = 16'h00A1;
  parameter [15:0] TX_PWR_RATE_OVRD_LANE0 = 16'h0060;
  parameter [15:0] TX_PWR_RATE_OVRD_LANE1 = 16'h0060;
  parameter [15:0] TX_PWR_RATE_OVRD_LANE2 = 16'h0060;
  parameter [15:0] TX_PWR_RATE_OVRD_LANE3 = 16'h0060;
  
  localparam in_delay = 0;
  localparam out_delay = 0;
  localparam INCLK_DELAY = 0;
  localparam OUTCLK_DELAY = 0;

  output DRDY;
  output GTHINITDONE;
  output MGMTPCSRDACK;
  output RXCTRLACK0;
  output RXCTRLACK1;
  output RXCTRLACK2;
  output RXCTRLACK3;
  output RXDATATAP0;
  output RXDATATAP1;
  output RXDATATAP2;
  output RXDATATAP3;
  output RXPCSCLKSMPL0;
  output RXPCSCLKSMPL1;
  output RXPCSCLKSMPL2;
  output RXPCSCLKSMPL3;
  output RXUSERCLKOUT0;
  output RXUSERCLKOUT1;
  output RXUSERCLKOUT2;
  output RXUSERCLKOUT3;
  output TSTPATH;
  output TSTREFCLKFAB;
  output TSTREFCLKOUT;
  output TXCTRLACK0;
  output TXCTRLACK1;
  output TXCTRLACK2;
  output TXCTRLACK3;
  output TXDATATAP10;
  output TXDATATAP11;
  output TXDATATAP12;
  output TXDATATAP13;
  output TXDATATAP20;
  output TXDATATAP21;
  output TXDATATAP22;
  output TXDATATAP23;
  output TXN0;
  output TXN1;
  output TXN2;
  output TXN3;
  output TXP0;
  output TXP1;
  output TXP2;
  output TXP3;
  output TXPCSCLKSMPL0;
  output TXPCSCLKSMPL1;
  output TXPCSCLKSMPL2;
  output TXPCSCLKSMPL3;
  output TXUSERCLKOUT0;
  output TXUSERCLKOUT1;
  output TXUSERCLKOUT2;
  output TXUSERCLKOUT3;
  output [15:0] DRPDO;
  output [15:0] MGMTPCSRDDATA;
  output [63:0] RXDATA0;
  output [63:0] RXDATA1;
  output [63:0] RXDATA2;
  output [63:0] RXDATA3;
  output [7:0] RXCODEERR0;
  output [7:0] RXCODEERR1;
  output [7:0] RXCODEERR2;
  output [7:0] RXCODEERR3;
  output [7:0] RXCTRL0;
  output [7:0] RXCTRL1;
  output [7:0] RXCTRL2;
  output [7:0] RXCTRL3;
  output [7:0] RXDISPERR0;
  output [7:0] RXDISPERR1;
  output [7:0] RXDISPERR2;
  output [7:0] RXDISPERR3;
  output [7:0] RXVALID0;
  output [7:0] RXVALID1;
  output [7:0] RXVALID2;
  output [7:0] RXVALID3;

  input DCLK;
  input DEN;
  input DFETRAINCTRL0;
  input DFETRAINCTRL1;
  input DFETRAINCTRL2;
  input DFETRAINCTRL3;
  input DISABLEDRP;
  input DWE;
  input GTHINIT;
  input GTHRESET;
  input GTHX2LANE01;
  input GTHX2LANE23;
  input GTHX4LANE;
  input MGMTPCSREGRD;
  input MGMTPCSREGWR;
  input POWERDOWN0;
  input POWERDOWN1;
  input POWERDOWN2;
  input POWERDOWN3;
  input REFCLK;
  input RXBUFRESET0;
  input RXBUFRESET1;
  input RXBUFRESET2;
  input RXBUFRESET3;
  input RXENCOMMADET0;
  input RXENCOMMADET1;
  input RXENCOMMADET2;
  input RXENCOMMADET3;
  input RXN0;
  input RXN1;
  input RXN2;
  input RXN3;
  input RXP0;
  input RXP1;
  input RXP2;
  input RXP3;
  input RXPOLARITY0;
  input RXPOLARITY1;
  input RXPOLARITY2;
  input RXPOLARITY3;
  input RXSLIP0;
  input RXSLIP1;
  input RXSLIP2;
  input RXSLIP3;
  input RXUSERCLKIN0;
  input RXUSERCLKIN1;
  input RXUSERCLKIN2;
  input RXUSERCLKIN3;
  input TXBUFRESET0;
  input TXBUFRESET1;
  input TXBUFRESET2;
  input TXBUFRESET3;
  input TXDEEMPH0;
  input TXDEEMPH1;
  input TXDEEMPH2;
  input TXDEEMPH3;
  input TXUSERCLKIN0;
  input TXUSERCLKIN1;
  input TXUSERCLKIN2;
  input TXUSERCLKIN3;
  input [15:0] DADDR;
  input [15:0] DI;
  input [15:0] MGMTPCSREGADDR;
  input [15:0] MGMTPCSWRDATA;
  input [1:0] RXPOWERDOWN0;
  input [1:0] RXPOWERDOWN1;
  input [1:0] RXPOWERDOWN2;
  input [1:0] RXPOWERDOWN3;
  input [1:0] RXRATE0;
  input [1:0] RXRATE1;
  input [1:0] RXRATE2;
  input [1:0] RXRATE3;
  input [1:0] TXPOWERDOWN0;
  input [1:0] TXPOWERDOWN1;
  input [1:0] TXPOWERDOWN2;
  input [1:0] TXPOWERDOWN3;
  input [1:0] TXRATE0;
  input [1:0] TXRATE1;
  input [1:0] TXRATE2;
  input [1:0] TXRATE3;
  input [2:0] PLLREFCLKSEL;
  input [2:0] SAMPLERATE0;
  input [2:0] SAMPLERATE1;
  input [2:0] SAMPLERATE2;
  input [2:0] SAMPLERATE3;
  input [2:0] TXMARGIN0;
  input [2:0] TXMARGIN1;
  input [2:0] TXMARGIN2;
  input [2:0] TXMARGIN3;
  input [3:0] MGMTPCSLANESEL;
  input [4:0] MGMTPCSMMDADDR;
  input [5:0] PLLPCSCLKDIV;
  input [63:0] TXDATA0;
  input [63:0] TXDATA1;
  input [63:0] TXDATA2;
  input [63:0] TXDATA3;
  input [7:0] TXCTRL0;
  input [7:0] TXCTRL1;
  input [7:0] TXCTRL2;
  input [7:0] TXCTRL3;
  input [7:0] TXDATAMSB0;
  input [7:0] TXDATAMSB1;
  input [7:0] TXDATAMSB2;
  input [7:0] TXDATAMSB3;

  reg SIM_GTHRESET_SPEEDUP_BINARY;
  reg SIM_VERSION_BINARY;
  reg [0:0] GTH_CFG_PWRUP_LANE0_BINARY;
  reg [0:0] GTH_CFG_PWRUP_LANE1_BINARY;
  reg [0:0] GTH_CFG_PWRUP_LANE2_BINARY;
  reg [0:0] GTH_CFG_PWRUP_LANE3_BINARY;
  reg [2:0] RX_FABRIC_WIDTH0_BINARY;
  reg [2:0] RX_FABRIC_WIDTH1_BINARY;
  reg [2:0] RX_FABRIC_WIDTH2_BINARY;
  reg [2:0] RX_FABRIC_WIDTH3_BINARY;
  reg [2:0] TX_FABRIC_WIDTH0_BINARY;
  reg [2:0] TX_FABRIC_WIDTH1_BINARY;
  reg [2:0] TX_FABRIC_WIDTH2_BINARY;
  reg [2:0] TX_FABRIC_WIDTH3_BINARY;

  tri0 GSR = glbl.GSR;
  reg notifier;

  wire DRDY_OUT;
  wire GTHINITDONE_OUT;
  wire MGMTPCSRDACK_OUT;
  wire RXCTRLACK0_OUT;
  wire RXCTRLACK1_OUT;
  wire RXCTRLACK2_OUT;
  wire RXCTRLACK3_OUT;
  wire RXDATATAP0_OUT;
  wire RXDATATAP1_OUT;
  wire RXDATATAP2_OUT;
  wire RXDATATAP3_OUT;
  wire RXPCSCLKSMPL0_OUT;
  wire RXPCSCLKSMPL1_OUT;
  wire RXPCSCLKSMPL2_OUT;
  wire RXPCSCLKSMPL3_OUT;
  wire RXUSERCLKOUT0_OUT;
  wire RXUSERCLKOUT1_OUT;
  wire RXUSERCLKOUT2_OUT;
  wire RXUSERCLKOUT3_OUT;
  wire TSTPATH_OUT;
  wire TSTREFCLKFAB_OUT;
  wire TSTREFCLKOUT_OUT;
  wire TXCTRLACK0_OUT;
  wire TXCTRLACK1_OUT;
  wire TXCTRLACK2_OUT;
  wire TXCTRLACK3_OUT;
  wire TXDATATAP10_OUT;
  wire TXDATATAP11_OUT;
  wire TXDATATAP12_OUT;
  wire TXDATATAP13_OUT;
  wire TXDATATAP20_OUT;
  wire TXDATATAP21_OUT;
  wire TXDATATAP22_OUT;
  wire TXDATATAP23_OUT;
  wire TXN0_OUT;
  wire TXN1_OUT;
  wire TXN2_OUT;
  wire TXN3_OUT;
  wire TXP0_OUT;
  wire TXP1_OUT;
  wire TXP2_OUT;
  wire TXP3_OUT;
  wire TXPCSCLKSMPL0_OUT;
  wire TXPCSCLKSMPL1_OUT;
  wire TXPCSCLKSMPL2_OUT;
  wire TXPCSCLKSMPL3_OUT;
  wire TXUSERCLKOUT0_OUT;
  wire TXUSERCLKOUT1_OUT;
  wire TXUSERCLKOUT2_OUT;
  wire TXUSERCLKOUT3_OUT;
  wire [15:0] DRPDO_OUT;
  wire [15:0] MGMTPCSRDDATA_OUT;
  wire [63:0] RXDATA0_OUT;
  wire [63:0] RXDATA1_OUT;
  wire [63:0] RXDATA2_OUT;
  wire [63:0] RXDATA3_OUT;
  wire [7:0] RXCODEERR0_OUT;
  wire [7:0] RXCODEERR1_OUT;
  wire [7:0] RXCODEERR2_OUT;
  wire [7:0] RXCODEERR3_OUT;
  wire [7:0] RXCTRL0_OUT;
  wire [7:0] RXCTRL1_OUT;
  wire [7:0] RXCTRL2_OUT;
  wire [7:0] RXCTRL3_OUT;
  wire [7:0] RXDISPERR0_OUT;
  wire [7:0] RXDISPERR1_OUT;
  wire [7:0] RXDISPERR2_OUT;
  wire [7:0] RXDISPERR3_OUT;
  wire [7:0] RXVALID0_OUT;
  wire [7:0] RXVALID1_OUT;
  wire [7:0] RXVALID2_OUT;
  wire [7:0] RXVALID3_OUT;

  wire DCLK_IN;
  wire DEN_IN;
  wire DFETRAINCTRL0_IN;
  wire DFETRAINCTRL1_IN;
  wire DFETRAINCTRL2_IN;
  wire DFETRAINCTRL3_IN;
  wire DISABLEDRP_IN;
  wire DWE_IN;
  wire GTHINIT_IN;
  wire GTHRESET_IN;
  wire GTHX2LANE01_IN;
  wire GTHX2LANE23_IN;
  wire GTHX4LANE_IN;
  wire MGMTPCSREGRD_IN;
  wire MGMTPCSREGWR_IN;
  wire POWERDOWN0_IN;
  wire POWERDOWN1_IN;
  wire POWERDOWN2_IN;
  wire POWERDOWN3_IN;
  wire REFCLK_IN;
  wire RXBUFRESET0_IN;
  wire RXBUFRESET1_IN;
  wire RXBUFRESET2_IN;
  wire RXBUFRESET3_IN;
  wire RXENCOMMADET0_IN;
  wire RXENCOMMADET1_IN;
  wire RXENCOMMADET2_IN;
  wire RXENCOMMADET3_IN;
  wire RXN0_IN;
  wire RXN1_IN;
  wire RXN2_IN;
  wire RXN3_IN;
  wire RXP0_IN;
  wire RXP1_IN;
  wire RXP2_IN;
  wire RXP3_IN;
  wire RXPOLARITY0_IN;
  wire RXPOLARITY1_IN;
  wire RXPOLARITY2_IN;
  wire RXPOLARITY3_IN;
  wire RXSLIP0_IN;
  wire RXSLIP1_IN;
  wire RXSLIP2_IN;
  wire RXSLIP3_IN;
  wire RXUSERCLKIN0_IN;
  wire RXUSERCLKIN1_IN;
  wire RXUSERCLKIN2_IN;
  wire RXUSERCLKIN3_IN;
  wire TXBUFRESET0_IN;
  wire TXBUFRESET1_IN;
  wire TXBUFRESET2_IN;
  wire TXBUFRESET3_IN;
  wire TXDEEMPH0_IN;
  wire TXDEEMPH1_IN;
  wire TXDEEMPH2_IN;
  wire TXDEEMPH3_IN;
  wire TXUSERCLKIN0_IN;
  wire TXUSERCLKIN1_IN;
  wire TXUSERCLKIN2_IN;
  wire TXUSERCLKIN3_IN;
  wire [15:0] DADDR_IN;
  wire [15:0] DI_IN;
  wire [15:0] MGMTPCSREGADDR_IN;
  wire [15:0] MGMTPCSWRDATA_IN;
  wire [1:0] RXPOWERDOWN0_IN;
  wire [1:0] RXPOWERDOWN1_IN;
  wire [1:0] RXPOWERDOWN2_IN;
  wire [1:0] RXPOWERDOWN3_IN;
  wire [1:0] RXRATE0_IN;
  wire [1:0] RXRATE1_IN;
  wire [1:0] RXRATE2_IN;
  wire [1:0] RXRATE3_IN;
  wire [1:0] TXPOWERDOWN0_IN;
  wire [1:0] TXPOWERDOWN1_IN;
  wire [1:0] TXPOWERDOWN2_IN;
  wire [1:0] TXPOWERDOWN3_IN;
  wire [1:0] TXRATE0_IN;
  wire [1:0] TXRATE1_IN;
  wire [1:0] TXRATE2_IN;
  wire [1:0] TXRATE3_IN;
  wire [2:0] PLLREFCLKSEL_IN;
  wire [2:0] SAMPLERATE0_IN;
  wire [2:0] SAMPLERATE1_IN;
  wire [2:0] SAMPLERATE2_IN;
  wire [2:0] SAMPLERATE3_IN;
  wire [2:0] TXMARGIN0_IN;
  wire [2:0] TXMARGIN1_IN;
  wire [2:0] TXMARGIN2_IN;
  wire [2:0] TXMARGIN3_IN;
  wire [3:0] MGMTPCSLANESEL_IN;
  wire [4:0] MGMTPCSMMDADDR_IN;
  wire [5:0] PLLPCSCLKDIV_IN;
  wire [63:0] TXDATA0_IN;
  wire [63:0] TXDATA1_IN;
  wire [63:0] TXDATA2_IN;
  wire [63:0] TXDATA3_IN;
  wire [7:0] TXCTRL0_IN;
  wire [7:0] TXCTRL1_IN;
  wire [7:0] TXCTRL2_IN;
  wire [7:0] TXCTRL3_IN;
  wire [7:0] TXDATAMSB0_IN;
  wire [7:0] TXDATAMSB1_IN;
  wire [7:0] TXDATAMSB2_IN;
  wire [7:0] TXDATAMSB3_IN;
  wire DCLK_INDELAY;
  wire DEN_INDELAY;
  wire DFETRAINCTRL0_INDELAY;
  wire DFETRAINCTRL1_INDELAY;
  wire DFETRAINCTRL2_INDELAY;
  wire DFETRAINCTRL3_INDELAY;
  wire DISABLEDRP_INDELAY;
  wire DWE_INDELAY;
  wire GTHINIT_INDELAY;
  wire GTHRESET_INDELAY;
  wire GTHX2LANE01_INDELAY;
  wire GTHX2LANE23_INDELAY;
  wire GTHX4LANE_INDELAY;
  wire MGMTPCSREGRD_INDELAY;
  wire MGMTPCSREGWR_INDELAY;
  wire POWERDOWN0_INDELAY;
  wire POWERDOWN1_INDELAY;
  wire POWERDOWN2_INDELAY;
  wire POWERDOWN3_INDELAY;
  wire REFCLK_INDELAY;
  wire RXBUFRESET0_INDELAY;
  wire RXBUFRESET1_INDELAY;
  wire RXBUFRESET2_INDELAY;
  wire RXBUFRESET3_INDELAY;
  wire RXENCOMMADET0_INDELAY;
  wire RXENCOMMADET1_INDELAY;
  wire RXENCOMMADET2_INDELAY;
  wire RXENCOMMADET3_INDELAY;
  wire RXN0_INDELAY;
  wire RXN1_INDELAY;
  wire RXN2_INDELAY;
  wire RXN3_INDELAY;
  wire RXP0_INDELAY;
  wire RXP1_INDELAY;
  wire RXP2_INDELAY;
  wire RXP3_INDELAY;
  wire RXPOLARITY0_INDELAY;
  wire RXPOLARITY1_INDELAY;
  wire RXPOLARITY2_INDELAY;
  wire RXPOLARITY3_INDELAY;
  wire RXSLIP0_INDELAY;
  wire RXSLIP1_INDELAY;
  wire RXSLIP2_INDELAY;
  wire RXSLIP3_INDELAY;
  wire RXUSERCLKIN0_INDELAY;
  wire RXUSERCLKIN1_INDELAY;
  wire RXUSERCLKIN2_INDELAY;
  wire RXUSERCLKIN3_INDELAY;
  wire TXBUFRESET0_INDELAY;
  wire TXBUFRESET1_INDELAY;
  wire TXBUFRESET2_INDELAY;
  wire TXBUFRESET3_INDELAY;
  wire TXDEEMPH0_INDELAY;
  wire TXDEEMPH1_INDELAY;
  wire TXDEEMPH2_INDELAY;
  wire TXDEEMPH3_INDELAY;
  wire TXUSERCLKIN0_INDELAY;
  wire TXUSERCLKIN1_INDELAY;
  wire TXUSERCLKIN2_INDELAY;
  wire TXUSERCLKIN3_INDELAY;
  wire [15:0] DADDR_INDELAY;
  wire [15:0] DI_INDELAY;
  wire [15:0] MGMTPCSREGADDR_INDELAY;
  wire [15:0] MGMTPCSWRDATA_INDELAY;
  wire [1:0] RXPOWERDOWN0_INDELAY;
  wire [1:0] RXPOWERDOWN1_INDELAY;
  wire [1:0] RXPOWERDOWN2_INDELAY;
  wire [1:0] RXPOWERDOWN3_INDELAY;
  wire [1:0] RXRATE0_INDELAY;
  wire [1:0] RXRATE1_INDELAY;
  wire [1:0] RXRATE2_INDELAY;
  wire [1:0] RXRATE3_INDELAY;
  wire [1:0] TXPOWERDOWN0_INDELAY;
  wire [1:0] TXPOWERDOWN1_INDELAY;
  wire [1:0] TXPOWERDOWN2_INDELAY;
  wire [1:0] TXPOWERDOWN3_INDELAY;
  wire [1:0] TXRATE0_INDELAY;
  wire [1:0] TXRATE1_INDELAY;
  wire [1:0] TXRATE2_INDELAY;
  wire [1:0] TXRATE3_INDELAY;
  wire [2:0] PLLREFCLKSEL_INDELAY;
  wire [2:0] SAMPLERATE0_INDELAY;
  wire [2:0] SAMPLERATE1_INDELAY;
  wire [2:0] SAMPLERATE2_INDELAY;
  wire [2:0] SAMPLERATE3_INDELAY;
  wire [2:0] TXMARGIN0_INDELAY;
  wire [2:0] TXMARGIN1_INDELAY;
  wire [2:0] TXMARGIN2_INDELAY;
  wire [2:0] TXMARGIN3_INDELAY;
  wire [3:0] MGMTPCSLANESEL_INDELAY;
  wire [4:0] MGMTPCSMMDADDR_INDELAY;
  wire [5:0] PLLPCSCLKDIV_INDELAY;
  wire [63:0] TXDATA0_INDELAY;
  wire [63:0] TXDATA1_INDELAY;
  wire [63:0] TXDATA2_INDELAY;
  wire [63:0] TXDATA3_INDELAY;
  wire [7:0] TXCTRL0_INDELAY;
  wire [7:0] TXCTRL1_INDELAY;
  wire [7:0] TXCTRL2_INDELAY;
  wire [7:0] TXCTRL3_INDELAY;
  wire [7:0] TXDATAMSB0_INDELAY;
  wire [7:0] TXDATAMSB1_INDELAY;
  wire [7:0] TXDATAMSB2_INDELAY;
  wire [7:0] TXDATAMSB3_INDELAY;

// Start DRC checks
   
   always @(PLLPCSCLKDIV) begin

      // DRC Checks SET 1 - DRC Error for PLLPCSCLKDIV = 6'b32

      if (((PLLPCSCLKDIV == 6'd32) || (PLLPCSCLKDIV == 6'b100000)) && !(((PCS_MODE_LANE0[7:4] == 4'b0001) && (RX_FABRIC_WIDTH0 == 6466)) || (PCS_MODE_LANE0[7:4] == 4'b1100))) begin
	 $display("DRC Error: When PLLPCSCLKDIV is set to 6'b32, PCS_MODE_LANE0[7:4] %b or RX_FABRIC_WIDTH0 %d is not valid for instance %m of GTHE1_QUAD.", PCS_MODE_LANE0[7:4], RX_FABRIC_WIDTH0);
	 $finish;
      end
      if (((PLLPCSCLKDIV == 6'd32) || (PLLPCSCLKDIV == 6'b100000)) && !(((PCS_MODE_LANE0[3:0] == 4'b0001) && (TX_FABRIC_WIDTH0 == 6466)) || (PCS_MODE_LANE0[3:0] == 4'b1100))) begin
   	 $display("DRC Error : When PLLPCSCLKDIV is set to 6'b32, PCS_MODE_LANE0[3:0] %b or TX_FABRIC_WIDTH0 %d is not valid for instance %m of GTHE1_QUAD.", PCS_MODE_LANE0[3:0], TX_FABRIC_WIDTH0);
	 $finish;
      end
      if (((PLLPCSCLKDIV == 6'd32) || (PLLPCSCLKDIV == 6'b100000)) && !(((PCS_MODE_LANE1[7:4] == 4'b0001) && (RX_FABRIC_WIDTH1 == 6466)) || (PCS_MODE_LANE1[7:4] == 4'b1100))) begin
    	 $display("DRC Error : When PLLPCSCLKDIV is set to 6'b32, PCS_MODE_LANE1[7:4] %b or RX_FABRIC_WIDTH1 %d is not valid for instance %m of GTHE1_QUAD.", PCS_MODE_LANE1[7:4], RX_FABRIC_WIDTH1);
	 $finish;
      end
      if (((PLLPCSCLKDIV == 6'd32) || (PLLPCSCLKDIV == 6'b100000)) && !(((PCS_MODE_LANE1[3:0] == 4'b0001) && (TX_FABRIC_WIDTH1 == 6466)) || (PCS_MODE_LANE1[3:0] == 4'b1100))) begin
	 $display("DRC Error : When PLLPCSCLKDIV is set to 6'b32, PCS_MODE_LANE1[3:0] %b or TX_FABRIC_WIDTH1 %d is not valid for instance %m of GTHE1_QUAD.", PCS_MODE_LANE1[3:0], TX_FABRIC_WIDTH1);
	 $finish;
      end
      if (((PLLPCSCLKDIV == 6'd32) || (PLLPCSCLKDIV == 6'b100000)) && !(((PCS_MODE_LANE2[7:4] == 4'b0001) && (RX_FABRIC_WIDTH2 == 6466)) || (PCS_MODE_LANE2[7:4] == 4'b1100))) begin
	 $display("DRC Error : When PLLPCSCLKDIV is set to 6'b32, PCS_MODE_LANE2[7:4] %b or RX_FABRIC_WIDTH2 %d is not valid for instance %m of GTHE1_QUAD.", PCS_MODE_LANE2[7:4], RX_FABRIC_WIDTH2);
	 $finish;
      end
      if (((PLLPCSCLKDIV == 6'd32) || (PLLPCSCLKDIV == 6'b100000)) && !(((PCS_MODE_LANE2[3:0] == 4'b0001) && (TX_FABRIC_WIDTH2 == 6466)) || (PCS_MODE_LANE2[3:0] == 4'b1100))) begin
	 $display("DRC Error : When PLLPCSCLKDIV is set to 6'b32, PCS_MODE_LANE2[3:0] %b or TX_FABRIC_WIDTH2 %d is not valid for instance %m of GTHE1_QUAD.", PCS_MODE_LANE2[3:0], TX_FABRIC_WIDTH2);
	 $finish;
      end
      if (((PLLPCSCLKDIV == 6'd32) || (PLLPCSCLKDIV == 6'b100000)) && !(((PCS_MODE_LANE3[7:4] == 4'b0001) && (RX_FABRIC_WIDTH3 == 6466)) || (PCS_MODE_LANE3[7:4] == 4'b1100))) begin
	 $display("DRC Error : When PLLPCSCLKDIV is set to 6'b32, PCS_MODE_LANE3[7:4] %b or RX_FABRIC_WIDTH3 %d is not valid for instance %m of GTHE1_QUAD.", PCS_MODE_LANE3[7:4], RX_FABRIC_WIDTH3);
	 $finish;
      end
      if (((PLLPCSCLKDIV == 6'd32) || (PLLPCSCLKDIV == 6'b100000)) && !(((PCS_MODE_LANE3[3:0] == 4'b0001) && (TX_FABRIC_WIDTH3 == 6466)) || (PCS_MODE_LANE3[3:0] == 4'b1100))) begin
	 $display("DRC Error : When PLLPCSCLKDIV is set to 6'b32, PCS_MODE_LANE3[3:0] %b or TX_FABRIC_WIDTH3 %d is not valid for instance %m of GTHE1_QUAD.", PCS_MODE_LANE3[3:0], TX_FABRIC_WIDTH3);
	 $finish;
      end
      
      // DRC Checks SET 2 - DRC Error for PLLPCSCLKDIV = 6'b7
      
      if (((PLLPCSCLKDIV == 6'd7) || (PLLPCSCLKDIV == 6'b000111)) && !((PCS_MODE_LANE0[7:4] == 4'b1100) ||((PCS_MODE_LANE0[7:4] == 4'b1000) && (RX_FABRIC_WIDTH0 == 8 ||RX_FABRIC_WIDTH0 ==16 ||RX_FABRIC_WIDTH0==32 || RX_FABRIC_WIDTH0 ==64)) ||   ((PCS_MODE_LANE0[7:4] == 4'b1010) && (RX_FABRIC_WIDTH0 ==16 ||RX_FABRIC_WIDTH0==32 ||RX_FABRIC_WIDTH0 ==64 )))) begin
	 $display("DRC Error : When PLLPCSCLKDIV is set to 6'b7, PCS_MODE_LANE0[7:4] %b and RX_FABRIC_WIDTH0 %d is not valid for instance %m of GTHE1_QUAD.", PCS_MODE_LANE0[7:4], RX_FABRIC_WIDTH0);
	 $finish;
      end
      
      if (((PLLPCSCLKDIV == 6'd7) || (PLLPCSCLKDIV == 6'b000111)) && !((PCS_MODE_LANE0[3:0] == 4'b1100) ||((PCS_MODE_LANE0[3:0] == 4'b1000) && (TX_FABRIC_WIDTH0 == 8 ||TX_FABRIC_WIDTH0 ==16 ||TX_FABRIC_WIDTH0==32 || TX_FABRIC_WIDTH0 ==64)) ||   ((PCS_MODE_LANE0[3:0] == 4'b1010) && (TX_FABRIC_WIDTH0 ==16 ||TX_FABRIC_WIDTH0==32 ||TX_FABRIC_WIDTH0 ==64 )))) begin
	 $display("DRC Error : When PLLPCSCLKDIV is set to 6'b7, PCS_MODE_LANE0[3:0] %b and TX_FABRIC_WIDTH0 %d is not valid for instance %m of GTHE1_QUAD.", PCS_MODE_LANE0[3:0], TX_FABRIC_WIDTH0);
	 $finish;
      end
      
      if (((PLLPCSCLKDIV == 6'd7) || (PLLPCSCLKDIV == 6'b000111)) && !((PCS_MODE_LANE1[7:4] == 4'b1100) ||((PCS_MODE_LANE1[7:4] == 4'b1000) && (RX_FABRIC_WIDTH1 == 8 ||RX_FABRIC_WIDTH1 ==16 ||RX_FABRIC_WIDTH1==32 || RX_FABRIC_WIDTH1 ==64)) ||   ((PCS_MODE_LANE1[7:4] == 4'b1010) && (RX_FABRIC_WIDTH1 ==16 ||RX_FABRIC_WIDTH1==32 ||RX_FABRIC_WIDTH1 ==64 )))) begin
	 $display("DRC Error : When PLLPCSCLKDIV is set to 6'b7, PCS_MODE_LANE1[7:4] %b and RX_FABRIC_WIDTH1 %d is not valid for instance %m of GTHE1_QUAD.", PCS_MODE_LANE1[7:4], RX_FABRIC_WIDTH1);
	 $finish;
      end
      
      if (((PLLPCSCLKDIV == 6'd7) || (PLLPCSCLKDIV == 6'b000111)) && !((PCS_MODE_LANE1[3:0] == 4'b1100) ||((PCS_MODE_LANE1[3:0] == 4'b1000) && (TX_FABRIC_WIDTH1 == 8 ||TX_FABRIC_WIDTH1 ==16 ||TX_FABRIC_WIDTH1==32 || TX_FABRIC_WIDTH1 ==64)) ||   ((PCS_MODE_LANE1[3:0] == 4'b1010) && (TX_FABRIC_WIDTH1 ==16 ||TX_FABRIC_WIDTH1==32 ||TX_FABRIC_WIDTH1 ==64 )))) begin
	 $display("DRC Error : When PLLPCSCLKDIV is set to 6'b7, PCS_MODE_LANE1[3:0] %b and TX_FABRIC_WIDTH1 %d is not valid for instance %m of GTHE1_QUAD.", PCS_MODE_LANE1[3:0], TX_FABRIC_WIDTH1);
	 $finish;
      end
      
      if (((PLLPCSCLKDIV == 6'd7) || (PLLPCSCLKDIV == 6'b000111)) && !((PCS_MODE_LANE2[7:4] == 4'b1100) ||((PCS_MODE_LANE2[7:4] == 4'b1000) && (RX_FABRIC_WIDTH2 == 8 ||RX_FABRIC_WIDTH2 ==16 ||RX_FABRIC_WIDTH2==32 || RX_FABRIC_WIDTH2 ==64)) ||   ((PCS_MODE_LANE2[7:4] == 4'b1010) && (RX_FABRIC_WIDTH2 ==16 ||RX_FABRIC_WIDTH2==32 ||RX_FABRIC_WIDTH2 ==64 )))) begin
	 $display("DRC Error : When PLLPCSCLKDIV is set to 6'b7, PCS_MODE_LANE2[7:4] %b and RX_FABRIC_WIDTH2 %d is not valid for instance %m of GTHE1_QUAD.", PCS_MODE_LANE2[7:4], RX_FABRIC_WIDTH2);
	 $finish;
      end
      
      if (((PLLPCSCLKDIV == 6'd7) || (PLLPCSCLKDIV == 6'b000111)) && !((PCS_MODE_LANE2[3:0] == 4'b1100) ||((PCS_MODE_LANE2[3:0] == 4'b1000) && (TX_FABRIC_WIDTH2 == 8 ||TX_FABRIC_WIDTH2 ==16 ||TX_FABRIC_WIDTH2==32 || TX_FABRIC_WIDTH2 ==64)) ||   ((PCS_MODE_LANE2[3:0] == 4'b1010) && (TX_FABRIC_WIDTH2 ==16 ||TX_FABRIC_WIDTH2==32 ||TX_FABRIC_WIDTH2 ==64 )))) begin
	 $display("DRC Error : When PLLPCSCLKDIV is set to 6'b7, PCS_MODE_LANE2[3:0] %b and TX_FABRIC_WIDTH2 %d is not valid for instance %m of GTHE1_QUAD.", PCS_MODE_LANE2[3:0], TX_FABRIC_WIDTH2);
	 $finish;
      end
      
      if (((PLLPCSCLKDIV == 6'd7) || (PLLPCSCLKDIV == 6'b000111)) && !((PCS_MODE_LANE3[7:4] == 4'b1100) ||((PCS_MODE_LANE3[7:4] == 4'b1000) && (RX_FABRIC_WIDTH3 == 8 ||RX_FABRIC_WIDTH3 ==16 ||RX_FABRIC_WIDTH3==32 || RX_FABRIC_WIDTH3 ==64)) ||   ((PCS_MODE_LANE3[7:4] == 4'b1010) && (RX_FABRIC_WIDTH3 ==16 ||RX_FABRIC_WIDTH3==32 ||RX_FABRIC_WIDTH3 ==64 )))) begin
	 $display("DRC Error : When PLLPCSCLKDIV is set to 6'b7, PCS_MODE_LANE3[7:4] %b and RX_FABRIC_WIDTH3 %d is not valid for instance %m of GTHE1_QUAD.", PCS_MODE_LANE3[7:4], RX_FABRIC_WIDTH3);
	 $finish;
      end
      
      if (((PLLPCSCLKDIV == 6'd7) || (PLLPCSCLKDIV == 6'b000111)) && !((PCS_MODE_LANE3[3:0] == 4'b1100) ||((PCS_MODE_LANE3[3:0] == 4'b1000) && (TX_FABRIC_WIDTH3 == 8 ||TX_FABRIC_WIDTH3 ==16 ||TX_FABRIC_WIDTH3==32 || TX_FABRIC_WIDTH3 ==64)) ||   ((PCS_MODE_LANE3[3:0] == 4'b1010) && (TX_FABRIC_WIDTH3 ==16 ||TX_FABRIC_WIDTH3==32 ||TX_FABRIC_WIDTH3 ==64 )))) begin
	 $display("DRC Error : When PLLPCSCLKDIV is set to 6'b7, PCS_MODE_LANE3[3:0] %b and TX_FABRIC_WIDTH3 %d is not valid for instance %m of GTHE1_QUAD.", PCS_MODE_LANE3[3:0], TX_FABRIC_WIDTH3);
	 $finish;
      end

      //DRC Checks Set 3 -  DRC Error for PLLPCSCLKDIV = 6'b9
      
      if (((PLLPCSCLKDIV == 6'd9) || (PLLPCSCLKDIV ==  6'b001001)) && !((PCS_MODE_LANE0[7:4] == 4'b1100) ||((PCS_MODE_LANE0[7:4] == 4'b1011) && (RX_FABRIC_WIDTH0==20 || RX_FABRIC_WIDTH0 ==40 || RX_FABRIC_WIDTH0 ==80)) ||   ((PCS_MODE_LANE0[7:4] == 4'b0111) && (RX_FABRIC_WIDTH0 ==16 ||RX_FABRIC_WIDTH0==32 ||RX_FABRIC_WIDTH0 ==64 )))) begin
	 $display("DRC Error : When PLLPCSCLKDIV is set to 6'b9, PCS_MODE_LANE0[7:4] %b and RX_FABRIC_WIDTH0 %d is not valid for instance %m of GTHE1_QUAD.", PCS_MODE_LANE0[7:4], RX_FABRIC_WIDTH0);
	 $finish;
      end
      
      if (((PLLPCSCLKDIV == 6'd9) || (PLLPCSCLKDIV ==  6'b001001)) && !((PCS_MODE_LANE0[3:0] == 4'b1100) ||((PCS_MODE_LANE0[3:0] == 4'b1011) && (TX_FABRIC_WIDTH0==20 || TX_FABRIC_WIDTH0 ==40 || TX_FABRIC_WIDTH0 ==80)) ||   ((PCS_MODE_LANE0[3:0] == 4'b0111) && (TX_FABRIC_WIDTH0 ==16 ||TX_FABRIC_WIDTH0==32 ||TX_FABRIC_WIDTH0 ==64 )))) begin
	 $display("DRC Error : When PLLPCSCLKDIV is set to 6'b9, PCS_MODE_LANE0[3:0] %b and TX_FABRIC_WIDTH0 %d is not valid for instance %m of GTHE1_QUAD.", PCS_MODE_LANE0[3:0], TX_FABRIC_WIDTH0);
	 $finish;
      end
      
      if (((PLLPCSCLKDIV == 6'd9) || (PLLPCSCLKDIV ==  6'b001001)) && !((PCS_MODE_LANE1[7:4] == 4'b1100) ||((PCS_MODE_LANE1[7:4] == 4'b1011) && (RX_FABRIC_WIDTH1==20 || RX_FABRIC_WIDTH1 ==40 || RX_FABRIC_WIDTH1 ==80)) ||   ((PCS_MODE_LANE1[7:4] == 4'b0111) && (RX_FABRIC_WIDTH1 ==16 ||RX_FABRIC_WIDTH1==32 ||RX_FABRIC_WIDTH1 ==64 )))) begin
	 $display("DRC Error : When PLLPCSCLKDIV is set to 6'b9, PCS_MODE_LANE1[7:4] %b and RX_FABRIC_WIDTH1 %d is not valid for instance %m of GTHE1_QUAD.", PCS_MODE_LANE1[7:4], RX_FABRIC_WIDTH1);
	 $finish;
      end
      
      if (((PLLPCSCLKDIV == 6'd9) || (PLLPCSCLKDIV ==  6'b001001)) && !((PCS_MODE_LANE1[3:0] == 4'b1100) ||((PCS_MODE_LANE1[3:0] == 4'b1011) && (TX_FABRIC_WIDTH1==20 || TX_FABRIC_WIDTH1 ==40 || TX_FABRIC_WIDTH1 ==80)) ||   ((PCS_MODE_LANE1[3:0] == 4'b0111) && (TX_FABRIC_WIDTH1 ==16 ||TX_FABRIC_WIDTH1==32 ||TX_FABRIC_WIDTH1 ==64 )))) begin
	 $display("DRC Error : When PLLPCSCLKDIV is set to 6'b9, PCS_MODE_LANE1[3:0] %b and TX_FABRIC_WIDTH1 %d is not valid for instance %m of GTHE1_QUAD.", PCS_MODE_LANE1[3:0], TX_FABRIC_WIDTH1);
	 $finish;
      end
      
      if (((PLLPCSCLKDIV == 6'd9) || (PLLPCSCLKDIV ==  6'b001001)) && !((PCS_MODE_LANE2[7:4] == 4'b1100) ||((PCS_MODE_LANE2[7:4] == 4'b1011) && (RX_FABRIC_WIDTH2==20 || RX_FABRIC_WIDTH2 ==40 || RX_FABRIC_WIDTH2 ==80)) ||   ((PCS_MODE_LANE2[7:4] == 4'b0111) && (RX_FABRIC_WIDTH2 ==16 ||RX_FABRIC_WIDTH2==32 ||RX_FABRIC_WIDTH2 ==64 )))) begin
	 $display("DRC Error : When PLLPCSCLKDIV is set to 6'b9, PCS_MODE_LANE2[7:4] %b and RX_FABRIC_WIDTH2 %d is not valid for instance %m of GTHE1_QUAD.", PCS_MODE_LANE2[7:4], RX_FABRIC_WIDTH2);
	 $finish;
      end
      
      if (((PLLPCSCLKDIV == 6'd9) || (PLLPCSCLKDIV ==  6'b001001)) && !((PCS_MODE_LANE2[3:0] == 4'b1100) ||((PCS_MODE_LANE2[3:0] == 4'b1011) && (TX_FABRIC_WIDTH2==20 || TX_FABRIC_WIDTH2 ==40 || TX_FABRIC_WIDTH2 ==80)) ||   ((PCS_MODE_LANE2[3:0] == 4'b0111) && (TX_FABRIC_WIDTH2 ==16 ||TX_FABRIC_WIDTH2==32 ||TX_FABRIC_WIDTH2 ==64 )))) begin
	 $display("DRC Error : When PLLPCSCLKDIV is set to 6'b9, PCS_MODE_LANE2[3:0] %b and TX_FABRIC_WIDTH2 %d is not valid for instance %m of GTHE1_QUAD.", PCS_MODE_LANE2[3:0], TX_FABRIC_WIDTH2);
	 $finish;
      end
      
      if (((PLLPCSCLKDIV == 6'd9) || (PLLPCSCLKDIV ==  6'b001001)) && !((PCS_MODE_LANE3[7:4] == 4'b1100) ||((PCS_MODE_LANE3[7:4] == 4'b1011) && (RX_FABRIC_WIDTH3==20 || RX_FABRIC_WIDTH3 ==40 || RX_FABRIC_WIDTH3 ==80)) ||   ((PCS_MODE_LANE3[7:4] == 4'b0111) && (RX_FABRIC_WIDTH3 ==16 ||RX_FABRIC_WIDTH3==32 ||RX_FABRIC_WIDTH3 ==64 )))) begin
	 $display("DRC Error : When PLLPCSCLKDIV is set to 6'b9, PCS_MODE_LANE3[7:4] %b and RX_FABRIC_WIDTH3 %d is not valid for instance %m of GTHE1_QUAD.", PCS_MODE_LANE3[7:4], RX_FABRIC_WIDTH3);
	 $finish;
      end
      
      if (((PLLPCSCLKDIV == 6'd9) || (PLLPCSCLKDIV ==  6'b001001)) && !((PCS_MODE_LANE3[3:0] == 4'b1100) ||((PCS_MODE_LANE3[3:0] == 4'b1011) && (TX_FABRIC_WIDTH3==20 || TX_FABRIC_WIDTH3 ==40 || TX_FABRIC_WIDTH3 ==80)) ||   ((PCS_MODE_LANE3[3:0] == 4'b0111) && (TX_FABRIC_WIDTH3 ==16 ||TX_FABRIC_WIDTH3==32 ||TX_FABRIC_WIDTH3 ==64 )))) begin
    	 $display("DRC Error : When PLLPCSCLKDIV is set to 6'b9, PCS_MODE_LANE3[3:0] %b and TX_FABRIC_WIDTH3 %d is not valid for instance %m of GTHE1_QUAD.", PCS_MODE_LANE3[3:0], TX_FABRIC_WIDTH3);
	 $finish;
      end
      
   end // always @ (PLLPCSCLKDIV)
   
   // End DRC checks
   
  initial begin
    case (RX_FABRIC_WIDTH0)
      6466 : RX_FABRIC_WIDTH0_BINARY = 3'b111;
      8 : RX_FABRIC_WIDTH0_BINARY = 3'b000;
      10 : RX_FABRIC_WIDTH0_BINARY = 3'b000;
      16 : RX_FABRIC_WIDTH0_BINARY = 3'b000;
      20 : RX_FABRIC_WIDTH0_BINARY = 3'b000;
      32 : RX_FABRIC_WIDTH0_BINARY = 3'b011;
      40 : RX_FABRIC_WIDTH0_BINARY = 3'b101;
      64 : RX_FABRIC_WIDTH0_BINARY = 3'b010;
      80 : RX_FABRIC_WIDTH0_BINARY = 3'b110;
      default : begin
        $display("Attribute Syntax Error : The Attribute RX_FABRIC_WIDTH0 on X_GTHE1_QUAD instance %m is set to %d.  Legal values for this attribute are 8 to 6466.", RX_FABRIC_WIDTH0, 6466);
        $finish;
      end
    endcase

    case (RX_FABRIC_WIDTH1)
      6466 : RX_FABRIC_WIDTH1_BINARY = 3'b111;
      8 : RX_FABRIC_WIDTH1_BINARY = 3'b000;
      10 : RX_FABRIC_WIDTH1_BINARY = 3'b000;
      16 : RX_FABRIC_WIDTH1_BINARY = 3'b000;
      20 : RX_FABRIC_WIDTH1_BINARY = 3'b000;
      32 : RX_FABRIC_WIDTH1_BINARY = 3'b011;
      40 : RX_FABRIC_WIDTH1_BINARY = 3'b101;
      64 : RX_FABRIC_WIDTH1_BINARY = 3'b010;
      80 : RX_FABRIC_WIDTH1_BINARY = 3'b110;
      default : begin
        $display("Attribute Syntax Error : The Attribute RX_FABRIC_WIDTH1 on X_GTHE1_QUAD instance %m is set to %d.  Legal values for this attribute are 8 to 6466.", RX_FABRIC_WIDTH1, 6466);
        $finish;
      end
    endcase

    case (RX_FABRIC_WIDTH2)
      6466 : RX_FABRIC_WIDTH2_BINARY = 3'b111;
      8 : RX_FABRIC_WIDTH2_BINARY = 3'b000;
      10 : RX_FABRIC_WIDTH2_BINARY = 3'b000;
      16 : RX_FABRIC_WIDTH2_BINARY = 3'b000;
      20 : RX_FABRIC_WIDTH2_BINARY = 3'b000;
      32 : RX_FABRIC_WIDTH2_BINARY = 3'b011;
      40 : RX_FABRIC_WIDTH2_BINARY = 3'b101;
      64 : RX_FABRIC_WIDTH2_BINARY = 3'b010;
      80 : RX_FABRIC_WIDTH2_BINARY = 3'b110;
      default : begin
        $display("Attribute Syntax Error : The Attribute RX_FABRIC_WIDTH2 on X_GTHE1_QUAD instance %m is set to %d.  Legal values for this attribute are 8 to 6466.", RX_FABRIC_WIDTH2, 6466);
        $finish;
      end
    endcase

    case (RX_FABRIC_WIDTH3)
      6466 : RX_FABRIC_WIDTH3_BINARY = 3'b111;
      8 : RX_FABRIC_WIDTH3_BINARY = 3'b000;
      10 : RX_FABRIC_WIDTH3_BINARY = 3'b000;
      16 : RX_FABRIC_WIDTH3_BINARY = 3'b000;
      20 : RX_FABRIC_WIDTH3_BINARY = 3'b000;
      32 : RX_FABRIC_WIDTH3_BINARY = 3'b011;
      40 : RX_FABRIC_WIDTH3_BINARY = 3'b101;
      64 : RX_FABRIC_WIDTH3_BINARY = 3'b010;
      80 : RX_FABRIC_WIDTH3_BINARY = 3'b110;
      default : begin
        $display("Attribute Syntax Error : The Attribute RX_FABRIC_WIDTH3 on X_GTHE1_QUAD instance %m is set to %d.  Legal values for this attribute are 8 to 6466.", RX_FABRIC_WIDTH3, 6466);
        $finish;
      end
    endcase

    case (TX_FABRIC_WIDTH0)
      6466 : TX_FABRIC_WIDTH0_BINARY = 3'b111;
      8 : TX_FABRIC_WIDTH0_BINARY = 3'b000;
      10 : TX_FABRIC_WIDTH0_BINARY = 3'b000;
      16 : TX_FABRIC_WIDTH0_BINARY = 3'b000;
      20 : TX_FABRIC_WIDTH0_BINARY = 3'b000;
      32 : TX_FABRIC_WIDTH0_BINARY = 3'b011;
      40 : TX_FABRIC_WIDTH0_BINARY = 3'b101;
      64 : TX_FABRIC_WIDTH0_BINARY = 3'b010;
      80 : TX_FABRIC_WIDTH0_BINARY = 3'b110;
      default : begin
        $display("Attribute Syntax Error : The Attribute TX_FABRIC_WIDTH0 on X_GTHE1_QUAD instance %m is set to %d.  Legal values for this attribute are 8 to 6466.", TX_FABRIC_WIDTH0, 6466);
        $finish;
      end
    endcase

    case (TX_FABRIC_WIDTH1)
      6466 : TX_FABRIC_WIDTH1_BINARY = 3'b111;
      8 : TX_FABRIC_WIDTH1_BINARY = 3'b000;
      10 : TX_FABRIC_WIDTH1_BINARY = 3'b000;
      16 : TX_FABRIC_WIDTH1_BINARY = 3'b000;
      20 : TX_FABRIC_WIDTH1_BINARY = 3'b000;
      32 : TX_FABRIC_WIDTH1_BINARY = 3'b011;
      40 : TX_FABRIC_WIDTH1_BINARY = 3'b101;
      64 : TX_FABRIC_WIDTH1_BINARY = 3'b010;
      80 : TX_FABRIC_WIDTH1_BINARY = 3'b110;
      default : begin
        $display("Attribute Syntax Error : The Attribute TX_FABRIC_WIDTH1 on X_GTHE1_QUAD instance %m is set to %d.  Legal values for this attribute are 8 to 6466.", TX_FABRIC_WIDTH1, 6466);
        $finish;
      end
    endcase

    case (TX_FABRIC_WIDTH2)
      6466 : TX_FABRIC_WIDTH2_BINARY = 3'b111;
      8 : TX_FABRIC_WIDTH2_BINARY = 3'b000;
      10 : TX_FABRIC_WIDTH2_BINARY = 3'b000;
      16 : TX_FABRIC_WIDTH2_BINARY = 3'b000;
      20 : TX_FABRIC_WIDTH2_BINARY = 3'b000;
      32 : TX_FABRIC_WIDTH2_BINARY = 3'b011;
      40 : TX_FABRIC_WIDTH2_BINARY = 3'b101;
      64 : TX_FABRIC_WIDTH2_BINARY = 3'b010;
      80 : TX_FABRIC_WIDTH2_BINARY = 3'b110;
      default : begin
        $display("Attribute Syntax Error : The Attribute TX_FABRIC_WIDTH2 on X_GTHE1_QUAD instance %m is set to %d.  Legal values for this attribute are 8 to 6466.", TX_FABRIC_WIDTH2, 6466);
        $finish;
      end
    endcase

    case (TX_FABRIC_WIDTH3)
      6466 : TX_FABRIC_WIDTH3_BINARY = 3'b111;
      8 : TX_FABRIC_WIDTH3_BINARY = 3'b000;
      10 : TX_FABRIC_WIDTH3_BINARY = 3'b000;
      16 : TX_FABRIC_WIDTH3_BINARY = 3'b000;
      20 : TX_FABRIC_WIDTH3_BINARY = 3'b000;
      32 : TX_FABRIC_WIDTH3_BINARY = 3'b011;
      40 : TX_FABRIC_WIDTH3_BINARY = 3'b101;
      64 : TX_FABRIC_WIDTH3_BINARY = 3'b010;
      80 : TX_FABRIC_WIDTH3_BINARY = 3'b110;
      default : begin
        $display("Attribute Syntax Error : The Attribute TX_FABRIC_WIDTH3 on X_GTHE1_QUAD instance %m is set to %d.  Legal values for this attribute are 8 to 6466.", TX_FABRIC_WIDTH3, 6466);
        $finish;
      end
    endcase

    if ((GTH_CFG_PWRUP_LANE0 >= 1'b0) && (GTH_CFG_PWRUP_LANE0 <= 1'b1))
      GTH_CFG_PWRUP_LANE0_BINARY = GTH_CFG_PWRUP_LANE0;
    else begin
      $display("Attribute Syntax Error : The Attribute GTH_CFG_PWRUP_LANE0 on X_GTHE1_QUAD instance %m is set to %b.  Legal values for this attribute are 1'b0 to 1'b1.", GTH_CFG_PWRUP_LANE0);
      $finish;
    end

    if ((GTH_CFG_PWRUP_LANE1 >= 1'b0) && (GTH_CFG_PWRUP_LANE1 <= 1'b1))
      GTH_CFG_PWRUP_LANE1_BINARY = GTH_CFG_PWRUP_LANE1;
    else begin
      $display("Attribute Syntax Error : The Attribute GTH_CFG_PWRUP_LANE1 on X_GTHE1_QUAD instance %m is set to %b.  Legal values for this attribute are 1'b0 to 1'b1.", GTH_CFG_PWRUP_LANE1);
      $finish;
    end

    if ((GTH_CFG_PWRUP_LANE2 >= 1'b0) && (GTH_CFG_PWRUP_LANE2 <= 1'b1))
      GTH_CFG_PWRUP_LANE2_BINARY = GTH_CFG_PWRUP_LANE2;
    else begin
      $display("Attribute Syntax Error : The Attribute GTH_CFG_PWRUP_LANE2 on X_GTHE1_QUAD instance %m is set to %b.  Legal values for this attribute are 1'b0 to 1'b1.", GTH_CFG_PWRUP_LANE2);
      $finish;
    end

    if ((GTH_CFG_PWRUP_LANE3 >= 1'b0) && (GTH_CFG_PWRUP_LANE3 <= 1'b1))
      GTH_CFG_PWRUP_LANE3_BINARY = GTH_CFG_PWRUP_LANE3;
    else begin
      $display("Attribute Syntax Error : The Attribute GTH_CFG_PWRUP_LANE3 on X_GTHE1_QUAD instance %m is set to %b.  Legal values for this attribute are 1'b0 to 1'b1.", GTH_CFG_PWRUP_LANE3);
      $finish;
    end

  end


  buf B_DRDY (DRDY, DRDY_OUT);
  buf B_DRPDO0 (DRPDO[0], DRPDO_OUT[0]);
  buf B_DRPDO1 (DRPDO[1], DRPDO_OUT[1]);
  buf B_DRPDO10 (DRPDO[10], DRPDO_OUT[10]);
  buf B_DRPDO11 (DRPDO[11], DRPDO_OUT[11]);
  buf B_DRPDO12 (DRPDO[12], DRPDO_OUT[12]);
  buf B_DRPDO13 (DRPDO[13], DRPDO_OUT[13]);
  buf B_DRPDO14 (DRPDO[14], DRPDO_OUT[14]);
  buf B_DRPDO15 (DRPDO[15], DRPDO_OUT[15]);
  buf B_DRPDO2 (DRPDO[2], DRPDO_OUT[2]);
  buf B_DRPDO3 (DRPDO[3], DRPDO_OUT[3]);
  buf B_DRPDO4 (DRPDO[4], DRPDO_OUT[4]);
  buf B_DRPDO5 (DRPDO[5], DRPDO_OUT[5]);
  buf B_DRPDO6 (DRPDO[6], DRPDO_OUT[6]);
  buf B_DRPDO7 (DRPDO[7], DRPDO_OUT[7]);
  buf B_DRPDO8 (DRPDO[8], DRPDO_OUT[8]);
  buf B_DRPDO9 (DRPDO[9], DRPDO_OUT[9]);
  buf B_GTHINITDONE (GTHINITDONE, GTHINITDONE_OUT);
  buf B_MGMTPCSRDACK (MGMTPCSRDACK, MGMTPCSRDACK_OUT);
  buf B_MGMTPCSRDDATA0 (MGMTPCSRDDATA[0], MGMTPCSRDDATA_OUT[0]);
  buf B_MGMTPCSRDDATA1 (MGMTPCSRDDATA[1], MGMTPCSRDDATA_OUT[1]);
  buf B_MGMTPCSRDDATA10 (MGMTPCSRDDATA[10], MGMTPCSRDDATA_OUT[10]);
  buf B_MGMTPCSRDDATA11 (MGMTPCSRDDATA[11], MGMTPCSRDDATA_OUT[11]);
  buf B_MGMTPCSRDDATA12 (MGMTPCSRDDATA[12], MGMTPCSRDDATA_OUT[12]);
  buf B_MGMTPCSRDDATA13 (MGMTPCSRDDATA[13], MGMTPCSRDDATA_OUT[13]);
  buf B_MGMTPCSRDDATA14 (MGMTPCSRDDATA[14], MGMTPCSRDDATA_OUT[14]);
  buf B_MGMTPCSRDDATA15 (MGMTPCSRDDATA[15], MGMTPCSRDDATA_OUT[15]);
  buf B_MGMTPCSRDDATA2 (MGMTPCSRDDATA[2], MGMTPCSRDDATA_OUT[2]);
  buf B_MGMTPCSRDDATA3 (MGMTPCSRDDATA[3], MGMTPCSRDDATA_OUT[3]);
  buf B_MGMTPCSRDDATA4 (MGMTPCSRDDATA[4], MGMTPCSRDDATA_OUT[4]);
  buf B_MGMTPCSRDDATA5 (MGMTPCSRDDATA[5], MGMTPCSRDDATA_OUT[5]);
  buf B_MGMTPCSRDDATA6 (MGMTPCSRDDATA[6], MGMTPCSRDDATA_OUT[6]);
  buf B_MGMTPCSRDDATA7 (MGMTPCSRDDATA[7], MGMTPCSRDDATA_OUT[7]);
  buf B_MGMTPCSRDDATA8 (MGMTPCSRDDATA[8], MGMTPCSRDDATA_OUT[8]);
  buf B_MGMTPCSRDDATA9 (MGMTPCSRDDATA[9], MGMTPCSRDDATA_OUT[9]);
  buf B_RXCODEERR00 (RXCODEERR0[0], RXCODEERR0_OUT[0]);
  buf B_RXCODEERR01 (RXCODEERR0[1], RXCODEERR0_OUT[1]);
  buf B_RXCODEERR02 (RXCODEERR0[2], RXCODEERR0_OUT[2]);
  buf B_RXCODEERR03 (RXCODEERR0[3], RXCODEERR0_OUT[3]);
  buf B_RXCODEERR04 (RXCODEERR0[4], RXCODEERR0_OUT[4]);
  buf B_RXCODEERR05 (RXCODEERR0[5], RXCODEERR0_OUT[5]);
  buf B_RXCODEERR06 (RXCODEERR0[6], RXCODEERR0_OUT[6]);
  buf B_RXCODEERR07 (RXCODEERR0[7], RXCODEERR0_OUT[7]);
  buf B_RXCODEERR10 (RXCODEERR1[0], RXCODEERR1_OUT[0]);
  buf B_RXCODEERR11 (RXCODEERR1[1], RXCODEERR1_OUT[1]);
  buf B_RXCODEERR12 (RXCODEERR1[2], RXCODEERR1_OUT[2]);
  buf B_RXCODEERR13 (RXCODEERR1[3], RXCODEERR1_OUT[3]);
  buf B_RXCODEERR14 (RXCODEERR1[4], RXCODEERR1_OUT[4]);
  buf B_RXCODEERR15 (RXCODEERR1[5], RXCODEERR1_OUT[5]);
  buf B_RXCODEERR16 (RXCODEERR1[6], RXCODEERR1_OUT[6]);
  buf B_RXCODEERR17 (RXCODEERR1[7], RXCODEERR1_OUT[7]);
  buf B_RXCODEERR20 (RXCODEERR2[0], RXCODEERR2_OUT[0]);
  buf B_RXCODEERR21 (RXCODEERR2[1], RXCODEERR2_OUT[1]);
  buf B_RXCODEERR22 (RXCODEERR2[2], RXCODEERR2_OUT[2]);
  buf B_RXCODEERR23 (RXCODEERR2[3], RXCODEERR2_OUT[3]);
  buf B_RXCODEERR24 (RXCODEERR2[4], RXCODEERR2_OUT[4]);
  buf B_RXCODEERR25 (RXCODEERR2[5], RXCODEERR2_OUT[5]);
  buf B_RXCODEERR26 (RXCODEERR2[6], RXCODEERR2_OUT[6]);
  buf B_RXCODEERR27 (RXCODEERR2[7], RXCODEERR2_OUT[7]);
  buf B_RXCODEERR30 (RXCODEERR3[0], RXCODEERR3_OUT[0]);
  buf B_RXCODEERR31 (RXCODEERR3[1], RXCODEERR3_OUT[1]);
  buf B_RXCODEERR32 (RXCODEERR3[2], RXCODEERR3_OUT[2]);
  buf B_RXCODEERR33 (RXCODEERR3[3], RXCODEERR3_OUT[3]);
  buf B_RXCODEERR34 (RXCODEERR3[4], RXCODEERR3_OUT[4]);
  buf B_RXCODEERR35 (RXCODEERR3[5], RXCODEERR3_OUT[5]);
  buf B_RXCODEERR36 (RXCODEERR3[6], RXCODEERR3_OUT[6]);
  buf B_RXCODEERR37 (RXCODEERR3[7], RXCODEERR3_OUT[7]);
  buf B_RXCTRL00 (RXCTRL0[0], RXCTRL0_OUT[0]);
  buf B_RXCTRL01 (RXCTRL0[1], RXCTRL0_OUT[1]);
  buf B_RXCTRL02 (RXCTRL0[2], RXCTRL0_OUT[2]);
  buf B_RXCTRL03 (RXCTRL0[3], RXCTRL0_OUT[3]);
  buf B_RXCTRL04 (RXCTRL0[4], RXCTRL0_OUT[4]);
  buf B_RXCTRL05 (RXCTRL0[5], RXCTRL0_OUT[5]);
  buf B_RXCTRL06 (RXCTRL0[6], RXCTRL0_OUT[6]);
  buf B_RXCTRL07 (RXCTRL0[7], RXCTRL0_OUT[7]);
  buf B_RXCTRL10 (RXCTRL1[0], RXCTRL1_OUT[0]);
  buf B_RXCTRL11 (RXCTRL1[1], RXCTRL1_OUT[1]);
  buf B_RXCTRL12 (RXCTRL1[2], RXCTRL1_OUT[2]);
  buf B_RXCTRL13 (RXCTRL1[3], RXCTRL1_OUT[3]);
  buf B_RXCTRL14 (RXCTRL1[4], RXCTRL1_OUT[4]);
  buf B_RXCTRL15 (RXCTRL1[5], RXCTRL1_OUT[5]);
  buf B_RXCTRL16 (RXCTRL1[6], RXCTRL1_OUT[6]);
  buf B_RXCTRL17 (RXCTRL1[7], RXCTRL1_OUT[7]);
  buf B_RXCTRL20 (RXCTRL2[0], RXCTRL2_OUT[0]);
  buf B_RXCTRL21 (RXCTRL2[1], RXCTRL2_OUT[1]);
  buf B_RXCTRL22 (RXCTRL2[2], RXCTRL2_OUT[2]);
  buf B_RXCTRL23 (RXCTRL2[3], RXCTRL2_OUT[3]);
  buf B_RXCTRL24 (RXCTRL2[4], RXCTRL2_OUT[4]);
  buf B_RXCTRL25 (RXCTRL2[5], RXCTRL2_OUT[5]);
  buf B_RXCTRL26 (RXCTRL2[6], RXCTRL2_OUT[6]);
  buf B_RXCTRL27 (RXCTRL2[7], RXCTRL2_OUT[7]);
  buf B_RXCTRL30 (RXCTRL3[0], RXCTRL3_OUT[0]);
  buf B_RXCTRL31 (RXCTRL3[1], RXCTRL3_OUT[1]);
  buf B_RXCTRL32 (RXCTRL3[2], RXCTRL3_OUT[2]);
  buf B_RXCTRL33 (RXCTRL3[3], RXCTRL3_OUT[3]);
  buf B_RXCTRL34 (RXCTRL3[4], RXCTRL3_OUT[4]);
  buf B_RXCTRL35 (RXCTRL3[5], RXCTRL3_OUT[5]);
  buf B_RXCTRL36 (RXCTRL3[6], RXCTRL3_OUT[6]);
  buf B_RXCTRL37 (RXCTRL3[7], RXCTRL3_OUT[7]);
  buf B_RXCTRLACK0 (RXCTRLACK0, RXCTRLACK0_OUT);
  buf B_RXCTRLACK1 (RXCTRLACK1, RXCTRLACK1_OUT);
  buf B_RXCTRLACK2 (RXCTRLACK2, RXCTRLACK2_OUT);
  buf B_RXCTRLACK3 (RXCTRLACK3, RXCTRLACK3_OUT);
  buf B_RXDATA00 (RXDATA0[0], RXDATA0_OUT[0]);
  buf B_RXDATA01 (RXDATA0[1], RXDATA0_OUT[1]);
  buf B_RXDATA010 (RXDATA0[10], RXDATA0_OUT[10]);
  buf B_RXDATA011 (RXDATA0[11], RXDATA0_OUT[11]);
  buf B_RXDATA012 (RXDATA0[12], RXDATA0_OUT[12]);
  buf B_RXDATA013 (RXDATA0[13], RXDATA0_OUT[13]);
  buf B_RXDATA014 (RXDATA0[14], RXDATA0_OUT[14]);
  buf B_RXDATA015 (RXDATA0[15], RXDATA0_OUT[15]);
  buf B_RXDATA016 (RXDATA0[16], RXDATA0_OUT[16]);
  buf B_RXDATA017 (RXDATA0[17], RXDATA0_OUT[17]);
  buf B_RXDATA018 (RXDATA0[18], RXDATA0_OUT[18]);
  buf B_RXDATA019 (RXDATA0[19], RXDATA0_OUT[19]);
  buf B_RXDATA02 (RXDATA0[2], RXDATA0_OUT[2]);
  buf B_RXDATA020 (RXDATA0[20], RXDATA0_OUT[20]);
  buf B_RXDATA021 (RXDATA0[21], RXDATA0_OUT[21]);
  buf B_RXDATA022 (RXDATA0[22], RXDATA0_OUT[22]);
  buf B_RXDATA023 (RXDATA0[23], RXDATA0_OUT[23]);
  buf B_RXDATA024 (RXDATA0[24], RXDATA0_OUT[24]);
  buf B_RXDATA025 (RXDATA0[25], RXDATA0_OUT[25]);
  buf B_RXDATA026 (RXDATA0[26], RXDATA0_OUT[26]);
  buf B_RXDATA027 (RXDATA0[27], RXDATA0_OUT[27]);
  buf B_RXDATA028 (RXDATA0[28], RXDATA0_OUT[28]);
  buf B_RXDATA029 (RXDATA0[29], RXDATA0_OUT[29]);
  buf B_RXDATA03 (RXDATA0[3], RXDATA0_OUT[3]);
  buf B_RXDATA030 (RXDATA0[30], RXDATA0_OUT[30]);
  buf B_RXDATA031 (RXDATA0[31], RXDATA0_OUT[31]);
  buf B_RXDATA032 (RXDATA0[32], RXDATA0_OUT[32]);
  buf B_RXDATA033 (RXDATA0[33], RXDATA0_OUT[33]);
  buf B_RXDATA034 (RXDATA0[34], RXDATA0_OUT[34]);
  buf B_RXDATA035 (RXDATA0[35], RXDATA0_OUT[35]);
  buf B_RXDATA036 (RXDATA0[36], RXDATA0_OUT[36]);
  buf B_RXDATA037 (RXDATA0[37], RXDATA0_OUT[37]);
  buf B_RXDATA038 (RXDATA0[38], RXDATA0_OUT[38]);
  buf B_RXDATA039 (RXDATA0[39], RXDATA0_OUT[39]);
  buf B_RXDATA04 (RXDATA0[4], RXDATA0_OUT[4]);
  buf B_RXDATA040 (RXDATA0[40], RXDATA0_OUT[40]);
  buf B_RXDATA041 (RXDATA0[41], RXDATA0_OUT[41]);
  buf B_RXDATA042 (RXDATA0[42], RXDATA0_OUT[42]);
  buf B_RXDATA043 (RXDATA0[43], RXDATA0_OUT[43]);
  buf B_RXDATA044 (RXDATA0[44], RXDATA0_OUT[44]);
  buf B_RXDATA045 (RXDATA0[45], RXDATA0_OUT[45]);
  buf B_RXDATA046 (RXDATA0[46], RXDATA0_OUT[46]);
  buf B_RXDATA047 (RXDATA0[47], RXDATA0_OUT[47]);
  buf B_RXDATA048 (RXDATA0[48], RXDATA0_OUT[48]);
  buf B_RXDATA049 (RXDATA0[49], RXDATA0_OUT[49]);
  buf B_RXDATA05 (RXDATA0[5], RXDATA0_OUT[5]);
  buf B_RXDATA050 (RXDATA0[50], RXDATA0_OUT[50]);
  buf B_RXDATA051 (RXDATA0[51], RXDATA0_OUT[51]);
  buf B_RXDATA052 (RXDATA0[52], RXDATA0_OUT[52]);
  buf B_RXDATA053 (RXDATA0[53], RXDATA0_OUT[53]);
  buf B_RXDATA054 (RXDATA0[54], RXDATA0_OUT[54]);
  buf B_RXDATA055 (RXDATA0[55], RXDATA0_OUT[55]);
  buf B_RXDATA056 (RXDATA0[56], RXDATA0_OUT[56]);
  buf B_RXDATA057 (RXDATA0[57], RXDATA0_OUT[57]);
  buf B_RXDATA058 (RXDATA0[58], RXDATA0_OUT[58]);
  buf B_RXDATA059 (RXDATA0[59], RXDATA0_OUT[59]);
  buf B_RXDATA06 (RXDATA0[6], RXDATA0_OUT[6]);
  buf B_RXDATA060 (RXDATA0[60], RXDATA0_OUT[60]);
  buf B_RXDATA061 (RXDATA0[61], RXDATA0_OUT[61]);
  buf B_RXDATA062 (RXDATA0[62], RXDATA0_OUT[62]);
  buf B_RXDATA063 (RXDATA0[63], RXDATA0_OUT[63]);
  buf B_RXDATA07 (RXDATA0[7], RXDATA0_OUT[7]);
  buf B_RXDATA08 (RXDATA0[8], RXDATA0_OUT[8]);
  buf B_RXDATA09 (RXDATA0[9], RXDATA0_OUT[9]);
  buf B_RXDATA10 (RXDATA1[0], RXDATA1_OUT[0]);
  buf B_RXDATA11 (RXDATA1[1], RXDATA1_OUT[1]);
  buf B_RXDATA110 (RXDATA1[10], RXDATA1_OUT[10]);
  buf B_RXDATA111 (RXDATA1[11], RXDATA1_OUT[11]);
  buf B_RXDATA112 (RXDATA1[12], RXDATA1_OUT[12]);
  buf B_RXDATA113 (RXDATA1[13], RXDATA1_OUT[13]);
  buf B_RXDATA114 (RXDATA1[14], RXDATA1_OUT[14]);
  buf B_RXDATA115 (RXDATA1[15], RXDATA1_OUT[15]);
  buf B_RXDATA116 (RXDATA1[16], RXDATA1_OUT[16]);
  buf B_RXDATA117 (RXDATA1[17], RXDATA1_OUT[17]);
  buf B_RXDATA118 (RXDATA1[18], RXDATA1_OUT[18]);
  buf B_RXDATA119 (RXDATA1[19], RXDATA1_OUT[19]);
  buf B_RXDATA12 (RXDATA1[2], RXDATA1_OUT[2]);
  buf B_RXDATA120 (RXDATA1[20], RXDATA1_OUT[20]);
  buf B_RXDATA121 (RXDATA1[21], RXDATA1_OUT[21]);
  buf B_RXDATA122 (RXDATA1[22], RXDATA1_OUT[22]);
  buf B_RXDATA123 (RXDATA1[23], RXDATA1_OUT[23]);
  buf B_RXDATA124 (RXDATA1[24], RXDATA1_OUT[24]);
  buf B_RXDATA125 (RXDATA1[25], RXDATA1_OUT[25]);
  buf B_RXDATA126 (RXDATA1[26], RXDATA1_OUT[26]);
  buf B_RXDATA127 (RXDATA1[27], RXDATA1_OUT[27]);
  buf B_RXDATA128 (RXDATA1[28], RXDATA1_OUT[28]);
  buf B_RXDATA129 (RXDATA1[29], RXDATA1_OUT[29]);
  buf B_RXDATA13 (RXDATA1[3], RXDATA1_OUT[3]);
  buf B_RXDATA130 (RXDATA1[30], RXDATA1_OUT[30]);
  buf B_RXDATA131 (RXDATA1[31], RXDATA1_OUT[31]);
  buf B_RXDATA132 (RXDATA1[32], RXDATA1_OUT[32]);
  buf B_RXDATA133 (RXDATA1[33], RXDATA1_OUT[33]);
  buf B_RXDATA134 (RXDATA1[34], RXDATA1_OUT[34]);
  buf B_RXDATA135 (RXDATA1[35], RXDATA1_OUT[35]);
  buf B_RXDATA136 (RXDATA1[36], RXDATA1_OUT[36]);
  buf B_RXDATA137 (RXDATA1[37], RXDATA1_OUT[37]);
  buf B_RXDATA138 (RXDATA1[38], RXDATA1_OUT[38]);
  buf B_RXDATA139 (RXDATA1[39], RXDATA1_OUT[39]);
  buf B_RXDATA14 (RXDATA1[4], RXDATA1_OUT[4]);
  buf B_RXDATA140 (RXDATA1[40], RXDATA1_OUT[40]);
  buf B_RXDATA141 (RXDATA1[41], RXDATA1_OUT[41]);
  buf B_RXDATA142 (RXDATA1[42], RXDATA1_OUT[42]);
  buf B_RXDATA143 (RXDATA1[43], RXDATA1_OUT[43]);
  buf B_RXDATA144 (RXDATA1[44], RXDATA1_OUT[44]);
  buf B_RXDATA145 (RXDATA1[45], RXDATA1_OUT[45]);
  buf B_RXDATA146 (RXDATA1[46], RXDATA1_OUT[46]);
  buf B_RXDATA147 (RXDATA1[47], RXDATA1_OUT[47]);
  buf B_RXDATA148 (RXDATA1[48], RXDATA1_OUT[48]);
  buf B_RXDATA149 (RXDATA1[49], RXDATA1_OUT[49]);
  buf B_RXDATA15 (RXDATA1[5], RXDATA1_OUT[5]);
  buf B_RXDATA150 (RXDATA1[50], RXDATA1_OUT[50]);
  buf B_RXDATA151 (RXDATA1[51], RXDATA1_OUT[51]);
  buf B_RXDATA152 (RXDATA1[52], RXDATA1_OUT[52]);
  buf B_RXDATA153 (RXDATA1[53], RXDATA1_OUT[53]);
  buf B_RXDATA154 (RXDATA1[54], RXDATA1_OUT[54]);
  buf B_RXDATA155 (RXDATA1[55], RXDATA1_OUT[55]);
  buf B_RXDATA156 (RXDATA1[56], RXDATA1_OUT[56]);
  buf B_RXDATA157 (RXDATA1[57], RXDATA1_OUT[57]);
  buf B_RXDATA158 (RXDATA1[58], RXDATA1_OUT[58]);
  buf B_RXDATA159 (RXDATA1[59], RXDATA1_OUT[59]);
  buf B_RXDATA16 (RXDATA1[6], RXDATA1_OUT[6]);
  buf B_RXDATA160 (RXDATA1[60], RXDATA1_OUT[60]);
  buf B_RXDATA161 (RXDATA1[61], RXDATA1_OUT[61]);
  buf B_RXDATA162 (RXDATA1[62], RXDATA1_OUT[62]);
  buf B_RXDATA163 (RXDATA1[63], RXDATA1_OUT[63]);
  buf B_RXDATA17 (RXDATA1[7], RXDATA1_OUT[7]);
  buf B_RXDATA18 (RXDATA1[8], RXDATA1_OUT[8]);
  buf B_RXDATA19 (RXDATA1[9], RXDATA1_OUT[9]);
  buf B_RXDATA20 (RXDATA2[0], RXDATA2_OUT[0]);
  buf B_RXDATA21 (RXDATA2[1], RXDATA2_OUT[1]);
  buf B_RXDATA210 (RXDATA2[10], RXDATA2_OUT[10]);
  buf B_RXDATA211 (RXDATA2[11], RXDATA2_OUT[11]);
  buf B_RXDATA212 (RXDATA2[12], RXDATA2_OUT[12]);
  buf B_RXDATA213 (RXDATA2[13], RXDATA2_OUT[13]);
  buf B_RXDATA214 (RXDATA2[14], RXDATA2_OUT[14]);
  buf B_RXDATA215 (RXDATA2[15], RXDATA2_OUT[15]);
  buf B_RXDATA216 (RXDATA2[16], RXDATA2_OUT[16]);
  buf B_RXDATA217 (RXDATA2[17], RXDATA2_OUT[17]);
  buf B_RXDATA218 (RXDATA2[18], RXDATA2_OUT[18]);
  buf B_RXDATA219 (RXDATA2[19], RXDATA2_OUT[19]);
  buf B_RXDATA22 (RXDATA2[2], RXDATA2_OUT[2]);
  buf B_RXDATA220 (RXDATA2[20], RXDATA2_OUT[20]);
  buf B_RXDATA221 (RXDATA2[21], RXDATA2_OUT[21]);
  buf B_RXDATA222 (RXDATA2[22], RXDATA2_OUT[22]);
  buf B_RXDATA223 (RXDATA2[23], RXDATA2_OUT[23]);
  buf B_RXDATA224 (RXDATA2[24], RXDATA2_OUT[24]);
  buf B_RXDATA225 (RXDATA2[25], RXDATA2_OUT[25]);
  buf B_RXDATA226 (RXDATA2[26], RXDATA2_OUT[26]);
  buf B_RXDATA227 (RXDATA2[27], RXDATA2_OUT[27]);
  buf B_RXDATA228 (RXDATA2[28], RXDATA2_OUT[28]);
  buf B_RXDATA229 (RXDATA2[29], RXDATA2_OUT[29]);
  buf B_RXDATA23 (RXDATA2[3], RXDATA2_OUT[3]);
  buf B_RXDATA230 (RXDATA2[30], RXDATA2_OUT[30]);
  buf B_RXDATA231 (RXDATA2[31], RXDATA2_OUT[31]);
  buf B_RXDATA232 (RXDATA2[32], RXDATA2_OUT[32]);
  buf B_RXDATA233 (RXDATA2[33], RXDATA2_OUT[33]);
  buf B_RXDATA234 (RXDATA2[34], RXDATA2_OUT[34]);
  buf B_RXDATA235 (RXDATA2[35], RXDATA2_OUT[35]);
  buf B_RXDATA236 (RXDATA2[36], RXDATA2_OUT[36]);
  buf B_RXDATA237 (RXDATA2[37], RXDATA2_OUT[37]);
  buf B_RXDATA238 (RXDATA2[38], RXDATA2_OUT[38]);
  buf B_RXDATA239 (RXDATA2[39], RXDATA2_OUT[39]);
  buf B_RXDATA24 (RXDATA2[4], RXDATA2_OUT[4]);
  buf B_RXDATA240 (RXDATA2[40], RXDATA2_OUT[40]);
  buf B_RXDATA241 (RXDATA2[41], RXDATA2_OUT[41]);
  buf B_RXDATA242 (RXDATA2[42], RXDATA2_OUT[42]);
  buf B_RXDATA243 (RXDATA2[43], RXDATA2_OUT[43]);
  buf B_RXDATA244 (RXDATA2[44], RXDATA2_OUT[44]);
  buf B_RXDATA245 (RXDATA2[45], RXDATA2_OUT[45]);
  buf B_RXDATA246 (RXDATA2[46], RXDATA2_OUT[46]);
  buf B_RXDATA247 (RXDATA2[47], RXDATA2_OUT[47]);
  buf B_RXDATA248 (RXDATA2[48], RXDATA2_OUT[48]);
  buf B_RXDATA249 (RXDATA2[49], RXDATA2_OUT[49]);
  buf B_RXDATA25 (RXDATA2[5], RXDATA2_OUT[5]);
  buf B_RXDATA250 (RXDATA2[50], RXDATA2_OUT[50]);
  buf B_RXDATA251 (RXDATA2[51], RXDATA2_OUT[51]);
  buf B_RXDATA252 (RXDATA2[52], RXDATA2_OUT[52]);
  buf B_RXDATA253 (RXDATA2[53], RXDATA2_OUT[53]);
  buf B_RXDATA254 (RXDATA2[54], RXDATA2_OUT[54]);
  buf B_RXDATA255 (RXDATA2[55], RXDATA2_OUT[55]);
  buf B_RXDATA256 (RXDATA2[56], RXDATA2_OUT[56]);
  buf B_RXDATA257 (RXDATA2[57], RXDATA2_OUT[57]);
  buf B_RXDATA258 (RXDATA2[58], RXDATA2_OUT[58]);
  buf B_RXDATA259 (RXDATA2[59], RXDATA2_OUT[59]);
  buf B_RXDATA26 (RXDATA2[6], RXDATA2_OUT[6]);
  buf B_RXDATA260 (RXDATA2[60], RXDATA2_OUT[60]);
  buf B_RXDATA261 (RXDATA2[61], RXDATA2_OUT[61]);
  buf B_RXDATA262 (RXDATA2[62], RXDATA2_OUT[62]);
  buf B_RXDATA263 (RXDATA2[63], RXDATA2_OUT[63]);
  buf B_RXDATA27 (RXDATA2[7], RXDATA2_OUT[7]);
  buf B_RXDATA28 (RXDATA2[8], RXDATA2_OUT[8]);
  buf B_RXDATA29 (RXDATA2[9], RXDATA2_OUT[9]);
  buf B_RXDATA30 (RXDATA3[0], RXDATA3_OUT[0]);
  buf B_RXDATA31 (RXDATA3[1], RXDATA3_OUT[1]);
  buf B_RXDATA310 (RXDATA3[10], RXDATA3_OUT[10]);
  buf B_RXDATA311 (RXDATA3[11], RXDATA3_OUT[11]);
  buf B_RXDATA312 (RXDATA3[12], RXDATA3_OUT[12]);
  buf B_RXDATA313 (RXDATA3[13], RXDATA3_OUT[13]);
  buf B_RXDATA314 (RXDATA3[14], RXDATA3_OUT[14]);
  buf B_RXDATA315 (RXDATA3[15], RXDATA3_OUT[15]);
  buf B_RXDATA316 (RXDATA3[16], RXDATA3_OUT[16]);
  buf B_RXDATA317 (RXDATA3[17], RXDATA3_OUT[17]);
  buf B_RXDATA318 (RXDATA3[18], RXDATA3_OUT[18]);
  buf B_RXDATA319 (RXDATA3[19], RXDATA3_OUT[19]);
  buf B_RXDATA32 (RXDATA3[2], RXDATA3_OUT[2]);
  buf B_RXDATA320 (RXDATA3[20], RXDATA3_OUT[20]);
  buf B_RXDATA321 (RXDATA3[21], RXDATA3_OUT[21]);
  buf B_RXDATA322 (RXDATA3[22], RXDATA3_OUT[22]);
  buf B_RXDATA323 (RXDATA3[23], RXDATA3_OUT[23]);
  buf B_RXDATA324 (RXDATA3[24], RXDATA3_OUT[24]);
  buf B_RXDATA325 (RXDATA3[25], RXDATA3_OUT[25]);
  buf B_RXDATA326 (RXDATA3[26], RXDATA3_OUT[26]);
  buf B_RXDATA327 (RXDATA3[27], RXDATA3_OUT[27]);
  buf B_RXDATA328 (RXDATA3[28], RXDATA3_OUT[28]);
  buf B_RXDATA329 (RXDATA3[29], RXDATA3_OUT[29]);
  buf B_RXDATA33 (RXDATA3[3], RXDATA3_OUT[3]);
  buf B_RXDATA330 (RXDATA3[30], RXDATA3_OUT[30]);
  buf B_RXDATA331 (RXDATA3[31], RXDATA3_OUT[31]);
  buf B_RXDATA332 (RXDATA3[32], RXDATA3_OUT[32]);
  buf B_RXDATA333 (RXDATA3[33], RXDATA3_OUT[33]);
  buf B_RXDATA334 (RXDATA3[34], RXDATA3_OUT[34]);
  buf B_RXDATA335 (RXDATA3[35], RXDATA3_OUT[35]);
  buf B_RXDATA336 (RXDATA3[36], RXDATA3_OUT[36]);
  buf B_RXDATA337 (RXDATA3[37], RXDATA3_OUT[37]);
  buf B_RXDATA338 (RXDATA3[38], RXDATA3_OUT[38]);
  buf B_RXDATA339 (RXDATA3[39], RXDATA3_OUT[39]);
  buf B_RXDATA34 (RXDATA3[4], RXDATA3_OUT[4]);
  buf B_RXDATA340 (RXDATA3[40], RXDATA3_OUT[40]);
  buf B_RXDATA341 (RXDATA3[41], RXDATA3_OUT[41]);
  buf B_RXDATA342 (RXDATA3[42], RXDATA3_OUT[42]);
  buf B_RXDATA343 (RXDATA3[43], RXDATA3_OUT[43]);
  buf B_RXDATA344 (RXDATA3[44], RXDATA3_OUT[44]);
  buf B_RXDATA345 (RXDATA3[45], RXDATA3_OUT[45]);
  buf B_RXDATA346 (RXDATA3[46], RXDATA3_OUT[46]);
  buf B_RXDATA347 (RXDATA3[47], RXDATA3_OUT[47]);
  buf B_RXDATA348 (RXDATA3[48], RXDATA3_OUT[48]);
  buf B_RXDATA349 (RXDATA3[49], RXDATA3_OUT[49]);
  buf B_RXDATA35 (RXDATA3[5], RXDATA3_OUT[5]);
  buf B_RXDATA350 (RXDATA3[50], RXDATA3_OUT[50]);
  buf B_RXDATA351 (RXDATA3[51], RXDATA3_OUT[51]);
  buf B_RXDATA352 (RXDATA3[52], RXDATA3_OUT[52]);
  buf B_RXDATA353 (RXDATA3[53], RXDATA3_OUT[53]);
  buf B_RXDATA354 (RXDATA3[54], RXDATA3_OUT[54]);
  buf B_RXDATA355 (RXDATA3[55], RXDATA3_OUT[55]);
  buf B_RXDATA356 (RXDATA3[56], RXDATA3_OUT[56]);
  buf B_RXDATA357 (RXDATA3[57], RXDATA3_OUT[57]);
  buf B_RXDATA358 (RXDATA3[58], RXDATA3_OUT[58]);
  buf B_RXDATA359 (RXDATA3[59], RXDATA3_OUT[59]);
  buf B_RXDATA36 (RXDATA3[6], RXDATA3_OUT[6]);
  buf B_RXDATA360 (RXDATA3[60], RXDATA3_OUT[60]);
  buf B_RXDATA361 (RXDATA3[61], RXDATA3_OUT[61]);
  buf B_RXDATA362 (RXDATA3[62], RXDATA3_OUT[62]);
  buf B_RXDATA363 (RXDATA3[63], RXDATA3_OUT[63]);
  buf B_RXDATA37 (RXDATA3[7], RXDATA3_OUT[7]);
  buf B_RXDATA38 (RXDATA3[8], RXDATA3_OUT[8]);
  buf B_RXDATA39 (RXDATA3[9], RXDATA3_OUT[9]);
  buf B_RXDATATAP0 (RXDATATAP0, RXDATATAP0_OUT);
  buf B_RXDATATAP1 (RXDATATAP1, RXDATATAP1_OUT);
  buf B_RXDATATAP2 (RXDATATAP2, RXDATATAP2_OUT);
  buf B_RXDATATAP3 (RXDATATAP3, RXDATATAP3_OUT);
  buf B_RXDISPERR00 (RXDISPERR0[0], RXDISPERR0_OUT[0]);
  buf B_RXDISPERR01 (RXDISPERR0[1], RXDISPERR0_OUT[1]);
  buf B_RXDISPERR02 (RXDISPERR0[2], RXDISPERR0_OUT[2]);
  buf B_RXDISPERR03 (RXDISPERR0[3], RXDISPERR0_OUT[3]);
  buf B_RXDISPERR04 (RXDISPERR0[4], RXDISPERR0_OUT[4]);
  buf B_RXDISPERR05 (RXDISPERR0[5], RXDISPERR0_OUT[5]);
  buf B_RXDISPERR06 (RXDISPERR0[6], RXDISPERR0_OUT[6]);
  buf B_RXDISPERR07 (RXDISPERR0[7], RXDISPERR0_OUT[7]);
  buf B_RXDISPERR10 (RXDISPERR1[0], RXDISPERR1_OUT[0]);
  buf B_RXDISPERR11 (RXDISPERR1[1], RXDISPERR1_OUT[1]);
  buf B_RXDISPERR12 (RXDISPERR1[2], RXDISPERR1_OUT[2]);
  buf B_RXDISPERR13 (RXDISPERR1[3], RXDISPERR1_OUT[3]);
  buf B_RXDISPERR14 (RXDISPERR1[4], RXDISPERR1_OUT[4]);
  buf B_RXDISPERR15 (RXDISPERR1[5], RXDISPERR1_OUT[5]);
  buf B_RXDISPERR16 (RXDISPERR1[6], RXDISPERR1_OUT[6]);
  buf B_RXDISPERR17 (RXDISPERR1[7], RXDISPERR1_OUT[7]);
  buf B_RXDISPERR20 (RXDISPERR2[0], RXDISPERR2_OUT[0]);
  buf B_RXDISPERR21 (RXDISPERR2[1], RXDISPERR2_OUT[1]);
  buf B_RXDISPERR22 (RXDISPERR2[2], RXDISPERR2_OUT[2]);
  buf B_RXDISPERR23 (RXDISPERR2[3], RXDISPERR2_OUT[3]);
  buf B_RXDISPERR24 (RXDISPERR2[4], RXDISPERR2_OUT[4]);
  buf B_RXDISPERR25 (RXDISPERR2[5], RXDISPERR2_OUT[5]);
  buf B_RXDISPERR26 (RXDISPERR2[6], RXDISPERR2_OUT[6]);
  buf B_RXDISPERR27 (RXDISPERR2[7], RXDISPERR2_OUT[7]);
  buf B_RXDISPERR30 (RXDISPERR3[0], RXDISPERR3_OUT[0]);
  buf B_RXDISPERR31 (RXDISPERR3[1], RXDISPERR3_OUT[1]);
  buf B_RXDISPERR32 (RXDISPERR3[2], RXDISPERR3_OUT[2]);
  buf B_RXDISPERR33 (RXDISPERR3[3], RXDISPERR3_OUT[3]);
  buf B_RXDISPERR34 (RXDISPERR3[4], RXDISPERR3_OUT[4]);
  buf B_RXDISPERR35 (RXDISPERR3[5], RXDISPERR3_OUT[5]);
  buf B_RXDISPERR36 (RXDISPERR3[6], RXDISPERR3_OUT[6]);
  buf B_RXDISPERR37 (RXDISPERR3[7], RXDISPERR3_OUT[7]);
  buf B_RXPCSCLKSMPL0 (RXPCSCLKSMPL0, RXPCSCLKSMPL0_OUT);
  buf B_RXPCSCLKSMPL1 (RXPCSCLKSMPL1, RXPCSCLKSMPL1_OUT);
  buf B_RXPCSCLKSMPL2 (RXPCSCLKSMPL2, RXPCSCLKSMPL2_OUT);
  buf B_RXPCSCLKSMPL3 (RXPCSCLKSMPL3, RXPCSCLKSMPL3_OUT);
  buf B_RXUSERCLKOUT0 (RXUSERCLKOUT0, RXUSERCLKOUT0_OUT);
  buf B_RXUSERCLKOUT1 (RXUSERCLKOUT1, RXUSERCLKOUT1_OUT);
  buf B_RXUSERCLKOUT2 (RXUSERCLKOUT2, RXUSERCLKOUT2_OUT);
  buf B_RXUSERCLKOUT3 (RXUSERCLKOUT3, RXUSERCLKOUT3_OUT);
  buf B_RXVALID00 (RXVALID0[0], RXVALID0_OUT[0]);
  buf B_RXVALID01 (RXVALID0[1], RXVALID0_OUT[1]);
  buf B_RXVALID02 (RXVALID0[2], RXVALID0_OUT[2]);
  buf B_RXVALID03 (RXVALID0[3], RXVALID0_OUT[3]);
  buf B_RXVALID04 (RXVALID0[4], RXVALID0_OUT[4]);
  buf B_RXVALID05 (RXVALID0[5], RXVALID0_OUT[5]);
  buf B_RXVALID06 (RXVALID0[6], RXVALID0_OUT[6]);
  buf B_RXVALID07 (RXVALID0[7], RXVALID0_OUT[7]);
  buf B_RXVALID10 (RXVALID1[0], RXVALID1_OUT[0]);
  buf B_RXVALID11 (RXVALID1[1], RXVALID1_OUT[1]);
  buf B_RXVALID12 (RXVALID1[2], RXVALID1_OUT[2]);
  buf B_RXVALID13 (RXVALID1[3], RXVALID1_OUT[3]);
  buf B_RXVALID14 (RXVALID1[4], RXVALID1_OUT[4]);
  buf B_RXVALID15 (RXVALID1[5], RXVALID1_OUT[5]);
  buf B_RXVALID16 (RXVALID1[6], RXVALID1_OUT[6]);
  buf B_RXVALID17 (RXVALID1[7], RXVALID1_OUT[7]);
  buf B_RXVALID20 (RXVALID2[0], RXVALID2_OUT[0]);
  buf B_RXVALID21 (RXVALID2[1], RXVALID2_OUT[1]);
  buf B_RXVALID22 (RXVALID2[2], RXVALID2_OUT[2]);
  buf B_RXVALID23 (RXVALID2[3], RXVALID2_OUT[3]);
  buf B_RXVALID24 (RXVALID2[4], RXVALID2_OUT[4]);
  buf B_RXVALID25 (RXVALID2[5], RXVALID2_OUT[5]);
  buf B_RXVALID26 (RXVALID2[6], RXVALID2_OUT[6]);
  buf B_RXVALID27 (RXVALID2[7], RXVALID2_OUT[7]);
  buf B_RXVALID30 (RXVALID3[0], RXVALID3_OUT[0]);
  buf B_RXVALID31 (RXVALID3[1], RXVALID3_OUT[1]);
  buf B_RXVALID32 (RXVALID3[2], RXVALID3_OUT[2]);
  buf B_RXVALID33 (RXVALID3[3], RXVALID3_OUT[3]);
  buf B_RXVALID34 (RXVALID3[4], RXVALID3_OUT[4]);
  buf B_RXVALID35 (RXVALID3[5], RXVALID3_OUT[5]);
  buf B_RXVALID36 (RXVALID3[6], RXVALID3_OUT[6]);
  buf B_RXVALID37 (RXVALID3[7], RXVALID3_OUT[7]);
  buf B_TSTPATH (TSTPATH, TSTPATH_OUT);
  buf B_TSTREFCLKFAB (TSTREFCLKFAB, TSTREFCLKFAB_OUT);
  buf B_TSTREFCLKOUT (TSTREFCLKOUT, TSTREFCLKOUT_OUT);
  buf B_TXCTRLACK0 (TXCTRLACK0, TXCTRLACK0_OUT);
  buf B_TXCTRLACK1 (TXCTRLACK1, TXCTRLACK1_OUT);
  buf B_TXCTRLACK2 (TXCTRLACK2, TXCTRLACK2_OUT);
  buf B_TXCTRLACK3 (TXCTRLACK3, TXCTRLACK3_OUT);
  buf B_TXDATATAP10 (TXDATATAP10, TXDATATAP10_OUT);
  buf B_TXDATATAP11 (TXDATATAP11, TXDATATAP11_OUT);
  buf B_TXDATATAP12 (TXDATATAP12, TXDATATAP12_OUT);
  buf B_TXDATATAP13 (TXDATATAP13, TXDATATAP13_OUT);
  buf B_TXDATATAP20 (TXDATATAP20, TXDATATAP20_OUT);
  buf B_TXDATATAP21 (TXDATATAP21, TXDATATAP21_OUT);
  buf B_TXDATATAP22 (TXDATATAP22, TXDATATAP22_OUT);
  buf B_TXDATATAP23 (TXDATATAP23, TXDATATAP23_OUT);
  buf B_TXN0 (TXN0, TXN0_OUT);
  buf B_TXN1 (TXN1, TXN1_OUT);
  buf B_TXN2 (TXN2, TXN2_OUT);
  buf B_TXN3 (TXN3, TXN3_OUT);
  buf B_TXP0 (TXP0, TXP0_OUT);
  buf B_TXP1 (TXP1, TXP1_OUT);
  buf B_TXP2 (TXP2, TXP2_OUT);
  buf B_TXP3 (TXP3, TXP3_OUT);
  buf B_TXPCSCLKSMPL0 (TXPCSCLKSMPL0, TXPCSCLKSMPL0_OUT);
  buf B_TXPCSCLKSMPL1 (TXPCSCLKSMPL1, TXPCSCLKSMPL1_OUT);
  buf B_TXPCSCLKSMPL2 (TXPCSCLKSMPL2, TXPCSCLKSMPL2_OUT);
  buf B_TXPCSCLKSMPL3 (TXPCSCLKSMPL3, TXPCSCLKSMPL3_OUT);
  buf B_TXUSERCLKOUT0 (TXUSERCLKOUT0, TXUSERCLKOUT0_OUT);
  buf B_TXUSERCLKOUT1 (TXUSERCLKOUT1, TXUSERCLKOUT1_OUT);
  buf B_TXUSERCLKOUT2 (TXUSERCLKOUT2, TXUSERCLKOUT2_OUT);
  buf B_TXUSERCLKOUT3 (TXUSERCLKOUT3, TXUSERCLKOUT3_OUT);

  buf B_DADDR0 (DADDR_IN[0], DADDR[0]);
  buf B_DADDR1 (DADDR_IN[1], DADDR[1]);
  buf B_DADDR10 (DADDR_IN[10], DADDR[10]);
  buf B_DADDR11 (DADDR_IN[11], DADDR[11]);
  buf B_DADDR12 (DADDR_IN[12], DADDR[12]);
  buf B_DADDR13 (DADDR_IN[13], DADDR[13]);
  buf B_DADDR14 (DADDR_IN[14], DADDR[14]);
  buf B_DADDR15 (DADDR_IN[15], DADDR[15]);
  buf B_DADDR2 (DADDR_IN[2], DADDR[2]);
  buf B_DADDR3 (DADDR_IN[3], DADDR[3]);
  buf B_DADDR4 (DADDR_IN[4], DADDR[4]);
  buf B_DADDR5 (DADDR_IN[5], DADDR[5]);
  buf B_DADDR6 (DADDR_IN[6], DADDR[6]);
  buf B_DADDR7 (DADDR_IN[7], DADDR[7]);
  buf B_DADDR8 (DADDR_IN[8], DADDR[8]);
  buf B_DADDR9 (DADDR_IN[9], DADDR[9]);
  buf B_DCLK (DCLK_IN, DCLK);
  buf B_DEN (DEN_IN, DEN);
  buf B_DFETRAINCTRL0 (DFETRAINCTRL0_IN, DFETRAINCTRL0);
  buf B_DFETRAINCTRL1 (DFETRAINCTRL1_IN, DFETRAINCTRL1);
  buf B_DFETRAINCTRL2 (DFETRAINCTRL2_IN, DFETRAINCTRL2);
  buf B_DFETRAINCTRL3 (DFETRAINCTRL3_IN, DFETRAINCTRL3);
  buf B_DI0 (DI_IN[0], DI[0]);
  buf B_DI1 (DI_IN[1], DI[1]);
  buf B_DI10 (DI_IN[10], DI[10]);
  buf B_DI11 (DI_IN[11], DI[11]);
  buf B_DI12 (DI_IN[12], DI[12]);
  buf B_DI13 (DI_IN[13], DI[13]);
  buf B_DI14 (DI_IN[14], DI[14]);
  buf B_DI15 (DI_IN[15], DI[15]);
  buf B_DI2 (DI_IN[2], DI[2]);
  buf B_DI3 (DI_IN[3], DI[3]);
  buf B_DI4 (DI_IN[4], DI[4]);
  buf B_DI5 (DI_IN[5], DI[5]);
  buf B_DI6 (DI_IN[6], DI[6]);
  buf B_DI7 (DI_IN[7], DI[7]);
  buf B_DI8 (DI_IN[8], DI[8]);
  buf B_DI9 (DI_IN[9], DI[9]);
  buf B_DISABLEDRP (DISABLEDRP_IN, DISABLEDRP);
  buf B_DWE (DWE_IN, DWE);
  buf B_GTHINIT (GTHINIT_IN, GTHINIT);
  buf B_GTHRESET (GTHRESET_IN, GTHRESET);
  buf B_GTHX2LANE01 (GTHX2LANE01_IN, GTHX2LANE01);
  buf B_GTHX2LANE23 (GTHX2LANE23_IN, GTHX2LANE23);
  buf B_GTHX4LANE (GTHX4LANE_IN, GTHX4LANE);
  buf B_MGMTPCSLANESEL0 (MGMTPCSLANESEL_IN[0], MGMTPCSLANESEL[0]);
  buf B_MGMTPCSLANESEL1 (MGMTPCSLANESEL_IN[1], MGMTPCSLANESEL[1]);
  buf B_MGMTPCSLANESEL2 (MGMTPCSLANESEL_IN[2], MGMTPCSLANESEL[2]);
  buf B_MGMTPCSLANESEL3 (MGMTPCSLANESEL_IN[3], MGMTPCSLANESEL[3]);
  buf B_MGMTPCSMMDADDR0 (MGMTPCSMMDADDR_IN[0], MGMTPCSMMDADDR[0]);
  buf B_MGMTPCSMMDADDR1 (MGMTPCSMMDADDR_IN[1], MGMTPCSMMDADDR[1]);
  buf B_MGMTPCSMMDADDR2 (MGMTPCSMMDADDR_IN[2], MGMTPCSMMDADDR[2]);
  buf B_MGMTPCSMMDADDR3 (MGMTPCSMMDADDR_IN[3], MGMTPCSMMDADDR[3]);
  buf B_MGMTPCSMMDADDR4 (MGMTPCSMMDADDR_IN[4], MGMTPCSMMDADDR[4]);
  buf B_MGMTPCSREGADDR0 (MGMTPCSREGADDR_IN[0], MGMTPCSREGADDR[0]);
  buf B_MGMTPCSREGADDR1 (MGMTPCSREGADDR_IN[1], MGMTPCSREGADDR[1]);
  buf B_MGMTPCSREGADDR10 (MGMTPCSREGADDR_IN[10], MGMTPCSREGADDR[10]);
  buf B_MGMTPCSREGADDR11 (MGMTPCSREGADDR_IN[11], MGMTPCSREGADDR[11]);
  buf B_MGMTPCSREGADDR12 (MGMTPCSREGADDR_IN[12], MGMTPCSREGADDR[12]);
  buf B_MGMTPCSREGADDR13 (MGMTPCSREGADDR_IN[13], MGMTPCSREGADDR[13]);
  buf B_MGMTPCSREGADDR14 (MGMTPCSREGADDR_IN[14], MGMTPCSREGADDR[14]);
  buf B_MGMTPCSREGADDR15 (MGMTPCSREGADDR_IN[15], MGMTPCSREGADDR[15]);
  buf B_MGMTPCSREGADDR2 (MGMTPCSREGADDR_IN[2], MGMTPCSREGADDR[2]);
  buf B_MGMTPCSREGADDR3 (MGMTPCSREGADDR_IN[3], MGMTPCSREGADDR[3]);
  buf B_MGMTPCSREGADDR4 (MGMTPCSREGADDR_IN[4], MGMTPCSREGADDR[4]);
  buf B_MGMTPCSREGADDR5 (MGMTPCSREGADDR_IN[5], MGMTPCSREGADDR[5]);
  buf B_MGMTPCSREGADDR6 (MGMTPCSREGADDR_IN[6], MGMTPCSREGADDR[6]);
  buf B_MGMTPCSREGADDR7 (MGMTPCSREGADDR_IN[7], MGMTPCSREGADDR[7]);
  buf B_MGMTPCSREGADDR8 (MGMTPCSREGADDR_IN[8], MGMTPCSREGADDR[8]);
  buf B_MGMTPCSREGADDR9 (MGMTPCSREGADDR_IN[9], MGMTPCSREGADDR[9]);
  buf B_MGMTPCSREGRD (MGMTPCSREGRD_IN, MGMTPCSREGRD);
  buf B_MGMTPCSREGWR (MGMTPCSREGWR_IN, MGMTPCSREGWR);
  buf B_MGMTPCSWRDATA0 (MGMTPCSWRDATA_IN[0], MGMTPCSWRDATA[0]);
  buf B_MGMTPCSWRDATA1 (MGMTPCSWRDATA_IN[1], MGMTPCSWRDATA[1]);
  buf B_MGMTPCSWRDATA10 (MGMTPCSWRDATA_IN[10], MGMTPCSWRDATA[10]);
  buf B_MGMTPCSWRDATA11 (MGMTPCSWRDATA_IN[11], MGMTPCSWRDATA[11]);
  buf B_MGMTPCSWRDATA12 (MGMTPCSWRDATA_IN[12], MGMTPCSWRDATA[12]);
  buf B_MGMTPCSWRDATA13 (MGMTPCSWRDATA_IN[13], MGMTPCSWRDATA[13]);
  buf B_MGMTPCSWRDATA14 (MGMTPCSWRDATA_IN[14], MGMTPCSWRDATA[14]);
  buf B_MGMTPCSWRDATA15 (MGMTPCSWRDATA_IN[15], MGMTPCSWRDATA[15]);
  buf B_MGMTPCSWRDATA2 (MGMTPCSWRDATA_IN[2], MGMTPCSWRDATA[2]);
  buf B_MGMTPCSWRDATA3 (MGMTPCSWRDATA_IN[3], MGMTPCSWRDATA[3]);
  buf B_MGMTPCSWRDATA4 (MGMTPCSWRDATA_IN[4], MGMTPCSWRDATA[4]);
  buf B_MGMTPCSWRDATA5 (MGMTPCSWRDATA_IN[5], MGMTPCSWRDATA[5]);
  buf B_MGMTPCSWRDATA6 (MGMTPCSWRDATA_IN[6], MGMTPCSWRDATA[6]);
  buf B_MGMTPCSWRDATA7 (MGMTPCSWRDATA_IN[7], MGMTPCSWRDATA[7]);
  buf B_MGMTPCSWRDATA8 (MGMTPCSWRDATA_IN[8], MGMTPCSWRDATA[8]);
  buf B_MGMTPCSWRDATA9 (MGMTPCSWRDATA_IN[9], MGMTPCSWRDATA[9]);
  buf B_PLLPCSCLKDIV0 (PLLPCSCLKDIV_IN[0], PLLPCSCLKDIV[0]);
  buf B_PLLPCSCLKDIV1 (PLLPCSCLKDIV_IN[1], PLLPCSCLKDIV[1]);
  buf B_PLLPCSCLKDIV2 (PLLPCSCLKDIV_IN[2], PLLPCSCLKDIV[2]);
  buf B_PLLPCSCLKDIV3 (PLLPCSCLKDIV_IN[3], PLLPCSCLKDIV[3]);
  buf B_PLLPCSCLKDIV4 (PLLPCSCLKDIV_IN[4], PLLPCSCLKDIV[4]);
  buf B_PLLPCSCLKDIV5 (PLLPCSCLKDIV_IN[5], PLLPCSCLKDIV[5]);
  buf B_PLLREFCLKSEL0 (PLLREFCLKSEL_IN[0], PLLREFCLKSEL[0]);
  buf B_PLLREFCLKSEL1 (PLLREFCLKSEL_IN[1], PLLREFCLKSEL[1]);
  buf B_PLLREFCLKSEL2 (PLLREFCLKSEL_IN[2], PLLREFCLKSEL[2]);
  buf B_POWERDOWN0 (POWERDOWN0_IN, POWERDOWN0);
  buf B_POWERDOWN1 (POWERDOWN1_IN, POWERDOWN1);
  buf B_POWERDOWN2 (POWERDOWN2_IN, POWERDOWN2);
  buf B_POWERDOWN3 (POWERDOWN3_IN, POWERDOWN3);
  buf B_REFCLK (REFCLK_IN, REFCLK);
  buf B_RXBUFRESET0 (RXBUFRESET0_IN, RXBUFRESET0);
  buf B_RXBUFRESET1 (RXBUFRESET1_IN, RXBUFRESET1);
  buf B_RXBUFRESET2 (RXBUFRESET2_IN, RXBUFRESET2);
  buf B_RXBUFRESET3 (RXBUFRESET3_IN, RXBUFRESET3);
  buf B_RXENCOMMADET0 (RXENCOMMADET0_IN, RXENCOMMADET0);
  buf B_RXENCOMMADET1 (RXENCOMMADET1_IN, RXENCOMMADET1);
  buf B_RXENCOMMADET2 (RXENCOMMADET2_IN, RXENCOMMADET2);
  buf B_RXENCOMMADET3 (RXENCOMMADET3_IN, RXENCOMMADET3);
  buf B_RXN0 (RXN0_IN, RXN0);
  buf B_RXN1 (RXN1_IN, RXN1);
  buf B_RXN2 (RXN2_IN, RXN2);
  buf B_RXN3 (RXN3_IN, RXN3);
  buf B_RXP0 (RXP0_IN, RXP0);
  buf B_RXP1 (RXP1_IN, RXP1);
  buf B_RXP2 (RXP2_IN, RXP2);
  buf B_RXP3 (RXP3_IN, RXP3);
  buf B_RXPOLARITY0 (RXPOLARITY0_IN, RXPOLARITY0);
  buf B_RXPOLARITY1 (RXPOLARITY1_IN, RXPOLARITY1);
  buf B_RXPOLARITY2 (RXPOLARITY2_IN, RXPOLARITY2);
  buf B_RXPOLARITY3 (RXPOLARITY3_IN, RXPOLARITY3);
  buf B_RXPOWERDOWN00 (RXPOWERDOWN0_IN[0], RXPOWERDOWN0[0]);
  buf B_RXPOWERDOWN01 (RXPOWERDOWN0_IN[1], RXPOWERDOWN0[1]);
  buf B_RXPOWERDOWN10 (RXPOWERDOWN1_IN[0], RXPOWERDOWN1[0]);
  buf B_RXPOWERDOWN11 (RXPOWERDOWN1_IN[1], RXPOWERDOWN1[1]);
  buf B_RXPOWERDOWN20 (RXPOWERDOWN2_IN[0], RXPOWERDOWN2[0]);
  buf B_RXPOWERDOWN21 (RXPOWERDOWN2_IN[1], RXPOWERDOWN2[1]);
  buf B_RXPOWERDOWN30 (RXPOWERDOWN3_IN[0], RXPOWERDOWN3[0]);
  buf B_RXPOWERDOWN31 (RXPOWERDOWN3_IN[1], RXPOWERDOWN3[1]);
  buf B_RXRATE00 (RXRATE0_IN[0], RXRATE0[0]);
  buf B_RXRATE01 (RXRATE0_IN[1], RXRATE0[1]);
  buf B_RXRATE10 (RXRATE1_IN[0], RXRATE1[0]);
  buf B_RXRATE11 (RXRATE1_IN[1], RXRATE1[1]);
  buf B_RXRATE20 (RXRATE2_IN[0], RXRATE2[0]);
  buf B_RXRATE21 (RXRATE2_IN[1], RXRATE2[1]);
  buf B_RXRATE30 (RXRATE3_IN[0], RXRATE3[0]);
  buf B_RXRATE31 (RXRATE3_IN[1], RXRATE3[1]);
  buf B_RXSLIP0 (RXSLIP0_IN, RXSLIP0);
  buf B_RXSLIP1 (RXSLIP1_IN, RXSLIP1);
  buf B_RXSLIP2 (RXSLIP2_IN, RXSLIP2);
  buf B_RXSLIP3 (RXSLIP3_IN, RXSLIP3);
  buf B_RXUSERCLKIN0 (RXUSERCLKIN0_IN, RXUSERCLKIN0);
  buf B_RXUSERCLKIN1 (RXUSERCLKIN1_IN, RXUSERCLKIN1);
  buf B_RXUSERCLKIN2 (RXUSERCLKIN2_IN, RXUSERCLKIN2);
  buf B_RXUSERCLKIN3 (RXUSERCLKIN3_IN, RXUSERCLKIN3);
  buf B_SAMPLERATE00 (SAMPLERATE0_IN[0], SAMPLERATE0[0]);
  buf B_SAMPLERATE01 (SAMPLERATE0_IN[1], SAMPLERATE0[1]);
  buf B_SAMPLERATE02 (SAMPLERATE0_IN[2], SAMPLERATE0[2]);
  buf B_SAMPLERATE10 (SAMPLERATE1_IN[0], SAMPLERATE1[0]);
  buf B_SAMPLERATE11 (SAMPLERATE1_IN[1], SAMPLERATE1[1]);
  buf B_SAMPLERATE12 (SAMPLERATE1_IN[2], SAMPLERATE1[2]);
  buf B_SAMPLERATE20 (SAMPLERATE2_IN[0], SAMPLERATE2[0]);
  buf B_SAMPLERATE21 (SAMPLERATE2_IN[1], SAMPLERATE2[1]);
  buf B_SAMPLERATE22 (SAMPLERATE2_IN[2], SAMPLERATE2[2]);
  buf B_SAMPLERATE30 (SAMPLERATE3_IN[0], SAMPLERATE3[0]);
  buf B_SAMPLERATE31 (SAMPLERATE3_IN[1], SAMPLERATE3[1]);
  buf B_SAMPLERATE32 (SAMPLERATE3_IN[2], SAMPLERATE3[2]);
  buf B_TXBUFRESET0 (TXBUFRESET0_IN, TXBUFRESET0);
  buf B_TXBUFRESET1 (TXBUFRESET1_IN, TXBUFRESET1);
  buf B_TXBUFRESET2 (TXBUFRESET2_IN, TXBUFRESET2);
  buf B_TXBUFRESET3 (TXBUFRESET3_IN, TXBUFRESET3);
  buf B_TXCTRL00 (TXCTRL0_IN[0], TXCTRL0[0]);
  buf B_TXCTRL01 (TXCTRL0_IN[1], TXCTRL0[1]);
  buf B_TXCTRL02 (TXCTRL0_IN[2], TXCTRL0[2]);
  buf B_TXCTRL03 (TXCTRL0_IN[3], TXCTRL0[3]);
  buf B_TXCTRL04 (TXCTRL0_IN[4], TXCTRL0[4]);
  buf B_TXCTRL05 (TXCTRL0_IN[5], TXCTRL0[5]);
  buf B_TXCTRL06 (TXCTRL0_IN[6], TXCTRL0[6]);
  buf B_TXCTRL07 (TXCTRL0_IN[7], TXCTRL0[7]);
  buf B_TXCTRL10 (TXCTRL1_IN[0], TXCTRL1[0]);
  buf B_TXCTRL11 (TXCTRL1_IN[1], TXCTRL1[1]);
  buf B_TXCTRL12 (TXCTRL1_IN[2], TXCTRL1[2]);
  buf B_TXCTRL13 (TXCTRL1_IN[3], TXCTRL1[3]);
  buf B_TXCTRL14 (TXCTRL1_IN[4], TXCTRL1[4]);
  buf B_TXCTRL15 (TXCTRL1_IN[5], TXCTRL1[5]);
  buf B_TXCTRL16 (TXCTRL1_IN[6], TXCTRL1[6]);
  buf B_TXCTRL17 (TXCTRL1_IN[7], TXCTRL1[7]);
  buf B_TXCTRL20 (TXCTRL2_IN[0], TXCTRL2[0]);
  buf B_TXCTRL21 (TXCTRL2_IN[1], TXCTRL2[1]);
  buf B_TXCTRL22 (TXCTRL2_IN[2], TXCTRL2[2]);
  buf B_TXCTRL23 (TXCTRL2_IN[3], TXCTRL2[3]);
  buf B_TXCTRL24 (TXCTRL2_IN[4], TXCTRL2[4]);
  buf B_TXCTRL25 (TXCTRL2_IN[5], TXCTRL2[5]);
  buf B_TXCTRL26 (TXCTRL2_IN[6], TXCTRL2[6]);
  buf B_TXCTRL27 (TXCTRL2_IN[7], TXCTRL2[7]);
  buf B_TXCTRL30 (TXCTRL3_IN[0], TXCTRL3[0]);
  buf B_TXCTRL31 (TXCTRL3_IN[1], TXCTRL3[1]);
  buf B_TXCTRL32 (TXCTRL3_IN[2], TXCTRL3[2]);
  buf B_TXCTRL33 (TXCTRL3_IN[3], TXCTRL3[3]);
  buf B_TXCTRL34 (TXCTRL3_IN[4], TXCTRL3[4]);
  buf B_TXCTRL35 (TXCTRL3_IN[5], TXCTRL3[5]);
  buf B_TXCTRL36 (TXCTRL3_IN[6], TXCTRL3[6]);
  buf B_TXCTRL37 (TXCTRL3_IN[7], TXCTRL3[7]);
  buf B_TXDATA00 (TXDATA0_IN[0], TXDATA0[0]);
  buf B_TXDATA01 (TXDATA0_IN[1], TXDATA0[1]);
  buf B_TXDATA010 (TXDATA0_IN[10], TXDATA0[10]);
  buf B_TXDATA011 (TXDATA0_IN[11], TXDATA0[11]);
  buf B_TXDATA012 (TXDATA0_IN[12], TXDATA0[12]);
  buf B_TXDATA013 (TXDATA0_IN[13], TXDATA0[13]);
  buf B_TXDATA014 (TXDATA0_IN[14], TXDATA0[14]);
  buf B_TXDATA015 (TXDATA0_IN[15], TXDATA0[15]);
  buf B_TXDATA016 (TXDATA0_IN[16], TXDATA0[16]);
  buf B_TXDATA017 (TXDATA0_IN[17], TXDATA0[17]);
  buf B_TXDATA018 (TXDATA0_IN[18], TXDATA0[18]);
  buf B_TXDATA019 (TXDATA0_IN[19], TXDATA0[19]);
  buf B_TXDATA02 (TXDATA0_IN[2], TXDATA0[2]);
  buf B_TXDATA020 (TXDATA0_IN[20], TXDATA0[20]);
  buf B_TXDATA021 (TXDATA0_IN[21], TXDATA0[21]);
  buf B_TXDATA022 (TXDATA0_IN[22], TXDATA0[22]);
  buf B_TXDATA023 (TXDATA0_IN[23], TXDATA0[23]);
  buf B_TXDATA024 (TXDATA0_IN[24], TXDATA0[24]);
  buf B_TXDATA025 (TXDATA0_IN[25], TXDATA0[25]);
  buf B_TXDATA026 (TXDATA0_IN[26], TXDATA0[26]);
  buf B_TXDATA027 (TXDATA0_IN[27], TXDATA0[27]);
  buf B_TXDATA028 (TXDATA0_IN[28], TXDATA0[28]);
  buf B_TXDATA029 (TXDATA0_IN[29], TXDATA0[29]);
  buf B_TXDATA03 (TXDATA0_IN[3], TXDATA0[3]);
  buf B_TXDATA030 (TXDATA0_IN[30], TXDATA0[30]);
  buf B_TXDATA031 (TXDATA0_IN[31], TXDATA0[31]);
  buf B_TXDATA032 (TXDATA0_IN[32], TXDATA0[32]);
  buf B_TXDATA033 (TXDATA0_IN[33], TXDATA0[33]);
  buf B_TXDATA034 (TXDATA0_IN[34], TXDATA0[34]);
  buf B_TXDATA035 (TXDATA0_IN[35], TXDATA0[35]);
  buf B_TXDATA036 (TXDATA0_IN[36], TXDATA0[36]);
  buf B_TXDATA037 (TXDATA0_IN[37], TXDATA0[37]);
  buf B_TXDATA038 (TXDATA0_IN[38], TXDATA0[38]);
  buf B_TXDATA039 (TXDATA0_IN[39], TXDATA0[39]);
  buf B_TXDATA04 (TXDATA0_IN[4], TXDATA0[4]);
  buf B_TXDATA040 (TXDATA0_IN[40], TXDATA0[40]);
  buf B_TXDATA041 (TXDATA0_IN[41], TXDATA0[41]);
  buf B_TXDATA042 (TXDATA0_IN[42], TXDATA0[42]);
  buf B_TXDATA043 (TXDATA0_IN[43], TXDATA0[43]);
  buf B_TXDATA044 (TXDATA0_IN[44], TXDATA0[44]);
  buf B_TXDATA045 (TXDATA0_IN[45], TXDATA0[45]);
  buf B_TXDATA046 (TXDATA0_IN[46], TXDATA0[46]);
  buf B_TXDATA047 (TXDATA0_IN[47], TXDATA0[47]);
  buf B_TXDATA048 (TXDATA0_IN[48], TXDATA0[48]);
  buf B_TXDATA049 (TXDATA0_IN[49], TXDATA0[49]);
  buf B_TXDATA05 (TXDATA0_IN[5], TXDATA0[5]);
  buf B_TXDATA050 (TXDATA0_IN[50], TXDATA0[50]);
  buf B_TXDATA051 (TXDATA0_IN[51], TXDATA0[51]);
  buf B_TXDATA052 (TXDATA0_IN[52], TXDATA0[52]);
  buf B_TXDATA053 (TXDATA0_IN[53], TXDATA0[53]);
  buf B_TXDATA054 (TXDATA0_IN[54], TXDATA0[54]);
  buf B_TXDATA055 (TXDATA0_IN[55], TXDATA0[55]);
  buf B_TXDATA056 (TXDATA0_IN[56], TXDATA0[56]);
  buf B_TXDATA057 (TXDATA0_IN[57], TXDATA0[57]);
  buf B_TXDATA058 (TXDATA0_IN[58], TXDATA0[58]);
  buf B_TXDATA059 (TXDATA0_IN[59], TXDATA0[59]);
  buf B_TXDATA06 (TXDATA0_IN[6], TXDATA0[6]);
  buf B_TXDATA060 (TXDATA0_IN[60], TXDATA0[60]);
  buf B_TXDATA061 (TXDATA0_IN[61], TXDATA0[61]);
  buf B_TXDATA062 (TXDATA0_IN[62], TXDATA0[62]);
  buf B_TXDATA063 (TXDATA0_IN[63], TXDATA0[63]);
  buf B_TXDATA07 (TXDATA0_IN[7], TXDATA0[7]);
  buf B_TXDATA08 (TXDATA0_IN[8], TXDATA0[8]);
  buf B_TXDATA09 (TXDATA0_IN[9], TXDATA0[9]);
  buf B_TXDATA10 (TXDATA1_IN[0], TXDATA1[0]);
  buf B_TXDATA11 (TXDATA1_IN[1], TXDATA1[1]);
  buf B_TXDATA110 (TXDATA1_IN[10], TXDATA1[10]);
  buf B_TXDATA111 (TXDATA1_IN[11], TXDATA1[11]);
  buf B_TXDATA112 (TXDATA1_IN[12], TXDATA1[12]);
  buf B_TXDATA113 (TXDATA1_IN[13], TXDATA1[13]);
  buf B_TXDATA114 (TXDATA1_IN[14], TXDATA1[14]);
  buf B_TXDATA115 (TXDATA1_IN[15], TXDATA1[15]);
  buf B_TXDATA116 (TXDATA1_IN[16], TXDATA1[16]);
  buf B_TXDATA117 (TXDATA1_IN[17], TXDATA1[17]);
  buf B_TXDATA118 (TXDATA1_IN[18], TXDATA1[18]);
  buf B_TXDATA119 (TXDATA1_IN[19], TXDATA1[19]);
  buf B_TXDATA12 (TXDATA1_IN[2], TXDATA1[2]);
  buf B_TXDATA120 (TXDATA1_IN[20], TXDATA1[20]);
  buf B_TXDATA121 (TXDATA1_IN[21], TXDATA1[21]);
  buf B_TXDATA122 (TXDATA1_IN[22], TXDATA1[22]);
  buf B_TXDATA123 (TXDATA1_IN[23], TXDATA1[23]);
  buf B_TXDATA124 (TXDATA1_IN[24], TXDATA1[24]);
  buf B_TXDATA125 (TXDATA1_IN[25], TXDATA1[25]);
  buf B_TXDATA126 (TXDATA1_IN[26], TXDATA1[26]);
  buf B_TXDATA127 (TXDATA1_IN[27], TXDATA1[27]);
  buf B_TXDATA128 (TXDATA1_IN[28], TXDATA1[28]);
  buf B_TXDATA129 (TXDATA1_IN[29], TXDATA1[29]);
  buf B_TXDATA13 (TXDATA1_IN[3], TXDATA1[3]);
  buf B_TXDATA130 (TXDATA1_IN[30], TXDATA1[30]);
  buf B_TXDATA131 (TXDATA1_IN[31], TXDATA1[31]);
  buf B_TXDATA132 (TXDATA1_IN[32], TXDATA1[32]);
  buf B_TXDATA133 (TXDATA1_IN[33], TXDATA1[33]);
  buf B_TXDATA134 (TXDATA1_IN[34], TXDATA1[34]);
  buf B_TXDATA135 (TXDATA1_IN[35], TXDATA1[35]);
  buf B_TXDATA136 (TXDATA1_IN[36], TXDATA1[36]);
  buf B_TXDATA137 (TXDATA1_IN[37], TXDATA1[37]);
  buf B_TXDATA138 (TXDATA1_IN[38], TXDATA1[38]);
  buf B_TXDATA139 (TXDATA1_IN[39], TXDATA1[39]);
  buf B_TXDATA14 (TXDATA1_IN[4], TXDATA1[4]);
  buf B_TXDATA140 (TXDATA1_IN[40], TXDATA1[40]);
  buf B_TXDATA141 (TXDATA1_IN[41], TXDATA1[41]);
  buf B_TXDATA142 (TXDATA1_IN[42], TXDATA1[42]);
  buf B_TXDATA143 (TXDATA1_IN[43], TXDATA1[43]);
  buf B_TXDATA144 (TXDATA1_IN[44], TXDATA1[44]);
  buf B_TXDATA145 (TXDATA1_IN[45], TXDATA1[45]);
  buf B_TXDATA146 (TXDATA1_IN[46], TXDATA1[46]);
  buf B_TXDATA147 (TXDATA1_IN[47], TXDATA1[47]);
  buf B_TXDATA148 (TXDATA1_IN[48], TXDATA1[48]);
  buf B_TXDATA149 (TXDATA1_IN[49], TXDATA1[49]);
  buf B_TXDATA15 (TXDATA1_IN[5], TXDATA1[5]);
  buf B_TXDATA150 (TXDATA1_IN[50], TXDATA1[50]);
  buf B_TXDATA151 (TXDATA1_IN[51], TXDATA1[51]);
  buf B_TXDATA152 (TXDATA1_IN[52], TXDATA1[52]);
  buf B_TXDATA153 (TXDATA1_IN[53], TXDATA1[53]);
  buf B_TXDATA154 (TXDATA1_IN[54], TXDATA1[54]);
  buf B_TXDATA155 (TXDATA1_IN[55], TXDATA1[55]);
  buf B_TXDATA156 (TXDATA1_IN[56], TXDATA1[56]);
  buf B_TXDATA157 (TXDATA1_IN[57], TXDATA1[57]);
  buf B_TXDATA158 (TXDATA1_IN[58], TXDATA1[58]);
  buf B_TXDATA159 (TXDATA1_IN[59], TXDATA1[59]);
  buf B_TXDATA16 (TXDATA1_IN[6], TXDATA1[6]);
  buf B_TXDATA160 (TXDATA1_IN[60], TXDATA1[60]);
  buf B_TXDATA161 (TXDATA1_IN[61], TXDATA1[61]);
  buf B_TXDATA162 (TXDATA1_IN[62], TXDATA1[62]);
  buf B_TXDATA163 (TXDATA1_IN[63], TXDATA1[63]);
  buf B_TXDATA17 (TXDATA1_IN[7], TXDATA1[7]);
  buf B_TXDATA18 (TXDATA1_IN[8], TXDATA1[8]);
  buf B_TXDATA19 (TXDATA1_IN[9], TXDATA1[9]);
  buf B_TXDATA20 (TXDATA2_IN[0], TXDATA2[0]);
  buf B_TXDATA21 (TXDATA2_IN[1], TXDATA2[1]);
  buf B_TXDATA210 (TXDATA2_IN[10], TXDATA2[10]);
  buf B_TXDATA211 (TXDATA2_IN[11], TXDATA2[11]);
  buf B_TXDATA212 (TXDATA2_IN[12], TXDATA2[12]);
  buf B_TXDATA213 (TXDATA2_IN[13], TXDATA2[13]);
  buf B_TXDATA214 (TXDATA2_IN[14], TXDATA2[14]);
  buf B_TXDATA215 (TXDATA2_IN[15], TXDATA2[15]);
  buf B_TXDATA216 (TXDATA2_IN[16], TXDATA2[16]);
  buf B_TXDATA217 (TXDATA2_IN[17], TXDATA2[17]);
  buf B_TXDATA218 (TXDATA2_IN[18], TXDATA2[18]);
  buf B_TXDATA219 (TXDATA2_IN[19], TXDATA2[19]);
  buf B_TXDATA22 (TXDATA2_IN[2], TXDATA2[2]);
  buf B_TXDATA220 (TXDATA2_IN[20], TXDATA2[20]);
  buf B_TXDATA221 (TXDATA2_IN[21], TXDATA2[21]);
  buf B_TXDATA222 (TXDATA2_IN[22], TXDATA2[22]);
  buf B_TXDATA223 (TXDATA2_IN[23], TXDATA2[23]);
  buf B_TXDATA224 (TXDATA2_IN[24], TXDATA2[24]);
  buf B_TXDATA225 (TXDATA2_IN[25], TXDATA2[25]);
  buf B_TXDATA226 (TXDATA2_IN[26], TXDATA2[26]);
  buf B_TXDATA227 (TXDATA2_IN[27], TXDATA2[27]);
  buf B_TXDATA228 (TXDATA2_IN[28], TXDATA2[28]);
  buf B_TXDATA229 (TXDATA2_IN[29], TXDATA2[29]);
  buf B_TXDATA23 (TXDATA2_IN[3], TXDATA2[3]);
  buf B_TXDATA230 (TXDATA2_IN[30], TXDATA2[30]);
  buf B_TXDATA231 (TXDATA2_IN[31], TXDATA2[31]);
  buf B_TXDATA232 (TXDATA2_IN[32], TXDATA2[32]);
  buf B_TXDATA233 (TXDATA2_IN[33], TXDATA2[33]);
  buf B_TXDATA234 (TXDATA2_IN[34], TXDATA2[34]);
  buf B_TXDATA235 (TXDATA2_IN[35], TXDATA2[35]);
  buf B_TXDATA236 (TXDATA2_IN[36], TXDATA2[36]);
  buf B_TXDATA237 (TXDATA2_IN[37], TXDATA2[37]);
  buf B_TXDATA238 (TXDATA2_IN[38], TXDATA2[38]);
  buf B_TXDATA239 (TXDATA2_IN[39], TXDATA2[39]);
  buf B_TXDATA24 (TXDATA2_IN[4], TXDATA2[4]);
  buf B_TXDATA240 (TXDATA2_IN[40], TXDATA2[40]);
  buf B_TXDATA241 (TXDATA2_IN[41], TXDATA2[41]);
  buf B_TXDATA242 (TXDATA2_IN[42], TXDATA2[42]);
  buf B_TXDATA243 (TXDATA2_IN[43], TXDATA2[43]);
  buf B_TXDATA244 (TXDATA2_IN[44], TXDATA2[44]);
  buf B_TXDATA245 (TXDATA2_IN[45], TXDATA2[45]);
  buf B_TXDATA246 (TXDATA2_IN[46], TXDATA2[46]);
  buf B_TXDATA247 (TXDATA2_IN[47], TXDATA2[47]);
  buf B_TXDATA248 (TXDATA2_IN[48], TXDATA2[48]);
  buf B_TXDATA249 (TXDATA2_IN[49], TXDATA2[49]);
  buf B_TXDATA25 (TXDATA2_IN[5], TXDATA2[5]);
  buf B_TXDATA250 (TXDATA2_IN[50], TXDATA2[50]);
  buf B_TXDATA251 (TXDATA2_IN[51], TXDATA2[51]);
  buf B_TXDATA252 (TXDATA2_IN[52], TXDATA2[52]);
  buf B_TXDATA253 (TXDATA2_IN[53], TXDATA2[53]);
  buf B_TXDATA254 (TXDATA2_IN[54], TXDATA2[54]);
  buf B_TXDATA255 (TXDATA2_IN[55], TXDATA2[55]);
  buf B_TXDATA256 (TXDATA2_IN[56], TXDATA2[56]);
  buf B_TXDATA257 (TXDATA2_IN[57], TXDATA2[57]);
  buf B_TXDATA258 (TXDATA2_IN[58], TXDATA2[58]);
  buf B_TXDATA259 (TXDATA2_IN[59], TXDATA2[59]);
  buf B_TXDATA26 (TXDATA2_IN[6], TXDATA2[6]);
  buf B_TXDATA260 (TXDATA2_IN[60], TXDATA2[60]);
  buf B_TXDATA261 (TXDATA2_IN[61], TXDATA2[61]);
  buf B_TXDATA262 (TXDATA2_IN[62], TXDATA2[62]);
  buf B_TXDATA263 (TXDATA2_IN[63], TXDATA2[63]);
  buf B_TXDATA27 (TXDATA2_IN[7], TXDATA2[7]);
  buf B_TXDATA28 (TXDATA2_IN[8], TXDATA2[8]);
  buf B_TXDATA29 (TXDATA2_IN[9], TXDATA2[9]);
  buf B_TXDATA30 (TXDATA3_IN[0], TXDATA3[0]);
  buf B_TXDATA31 (TXDATA3_IN[1], TXDATA3[1]);
  buf B_TXDATA310 (TXDATA3_IN[10], TXDATA3[10]);
  buf B_TXDATA311 (TXDATA3_IN[11], TXDATA3[11]);
  buf B_TXDATA312 (TXDATA3_IN[12], TXDATA3[12]);
  buf B_TXDATA313 (TXDATA3_IN[13], TXDATA3[13]);
  buf B_TXDATA314 (TXDATA3_IN[14], TXDATA3[14]);
  buf B_TXDATA315 (TXDATA3_IN[15], TXDATA3[15]);
  buf B_TXDATA316 (TXDATA3_IN[16], TXDATA3[16]);
  buf B_TXDATA317 (TXDATA3_IN[17], TXDATA3[17]);
  buf B_TXDATA318 (TXDATA3_IN[18], TXDATA3[18]);
  buf B_TXDATA319 (TXDATA3_IN[19], TXDATA3[19]);
  buf B_TXDATA32 (TXDATA3_IN[2], TXDATA3[2]);
  buf B_TXDATA320 (TXDATA3_IN[20], TXDATA3[20]);
  buf B_TXDATA321 (TXDATA3_IN[21], TXDATA3[21]);
  buf B_TXDATA322 (TXDATA3_IN[22], TXDATA3[22]);
  buf B_TXDATA323 (TXDATA3_IN[23], TXDATA3[23]);
  buf B_TXDATA324 (TXDATA3_IN[24], TXDATA3[24]);
  buf B_TXDATA325 (TXDATA3_IN[25], TXDATA3[25]);
  buf B_TXDATA326 (TXDATA3_IN[26], TXDATA3[26]);
  buf B_TXDATA327 (TXDATA3_IN[27], TXDATA3[27]);
  buf B_TXDATA328 (TXDATA3_IN[28], TXDATA3[28]);
  buf B_TXDATA329 (TXDATA3_IN[29], TXDATA3[29]);
  buf B_TXDATA33 (TXDATA3_IN[3], TXDATA3[3]);
  buf B_TXDATA330 (TXDATA3_IN[30], TXDATA3[30]);
  buf B_TXDATA331 (TXDATA3_IN[31], TXDATA3[31]);
  buf B_TXDATA332 (TXDATA3_IN[32], TXDATA3[32]);
  buf B_TXDATA333 (TXDATA3_IN[33], TXDATA3[33]);
  buf B_TXDATA334 (TXDATA3_IN[34], TXDATA3[34]);
  buf B_TXDATA335 (TXDATA3_IN[35], TXDATA3[35]);
  buf B_TXDATA336 (TXDATA3_IN[36], TXDATA3[36]);
  buf B_TXDATA337 (TXDATA3_IN[37], TXDATA3[37]);
  buf B_TXDATA338 (TXDATA3_IN[38], TXDATA3[38]);
  buf B_TXDATA339 (TXDATA3_IN[39], TXDATA3[39]);
  buf B_TXDATA34 (TXDATA3_IN[4], TXDATA3[4]);
  buf B_TXDATA340 (TXDATA3_IN[40], TXDATA3[40]);
  buf B_TXDATA341 (TXDATA3_IN[41], TXDATA3[41]);
  buf B_TXDATA342 (TXDATA3_IN[42], TXDATA3[42]);
  buf B_TXDATA343 (TXDATA3_IN[43], TXDATA3[43]);
  buf B_TXDATA344 (TXDATA3_IN[44], TXDATA3[44]);
  buf B_TXDATA345 (TXDATA3_IN[45], TXDATA3[45]);
  buf B_TXDATA346 (TXDATA3_IN[46], TXDATA3[46]);
  buf B_TXDATA347 (TXDATA3_IN[47], TXDATA3[47]);
  buf B_TXDATA348 (TXDATA3_IN[48], TXDATA3[48]);
  buf B_TXDATA349 (TXDATA3_IN[49], TXDATA3[49]);
  buf B_TXDATA35 (TXDATA3_IN[5], TXDATA3[5]);
  buf B_TXDATA350 (TXDATA3_IN[50], TXDATA3[50]);
  buf B_TXDATA351 (TXDATA3_IN[51], TXDATA3[51]);
  buf B_TXDATA352 (TXDATA3_IN[52], TXDATA3[52]);
  buf B_TXDATA353 (TXDATA3_IN[53], TXDATA3[53]);
  buf B_TXDATA354 (TXDATA3_IN[54], TXDATA3[54]);
  buf B_TXDATA355 (TXDATA3_IN[55], TXDATA3[55]);
  buf B_TXDATA356 (TXDATA3_IN[56], TXDATA3[56]);
  buf B_TXDATA357 (TXDATA3_IN[57], TXDATA3[57]);
  buf B_TXDATA358 (TXDATA3_IN[58], TXDATA3[58]);
  buf B_TXDATA359 (TXDATA3_IN[59], TXDATA3[59]);
  buf B_TXDATA36 (TXDATA3_IN[6], TXDATA3[6]);
  buf B_TXDATA360 (TXDATA3_IN[60], TXDATA3[60]);
  buf B_TXDATA361 (TXDATA3_IN[61], TXDATA3[61]);
  buf B_TXDATA362 (TXDATA3_IN[62], TXDATA3[62]);
  buf B_TXDATA363 (TXDATA3_IN[63], TXDATA3[63]);
  buf B_TXDATA37 (TXDATA3_IN[7], TXDATA3[7]);
  buf B_TXDATA38 (TXDATA3_IN[8], TXDATA3[8]);
  buf B_TXDATA39 (TXDATA3_IN[9], TXDATA3[9]);
  buf B_TXDATAMSB00 (TXDATAMSB0_IN[0], TXDATAMSB0[0]);
  buf B_TXDATAMSB01 (TXDATAMSB0_IN[1], TXDATAMSB0[1]);
  buf B_TXDATAMSB02 (TXDATAMSB0_IN[2], TXDATAMSB0[2]);
  buf B_TXDATAMSB03 (TXDATAMSB0_IN[3], TXDATAMSB0[3]);
  buf B_TXDATAMSB04 (TXDATAMSB0_IN[4], TXDATAMSB0[4]);
  buf B_TXDATAMSB05 (TXDATAMSB0_IN[5], TXDATAMSB0[5]);
  buf B_TXDATAMSB06 (TXDATAMSB0_IN[6], TXDATAMSB0[6]);
  buf B_TXDATAMSB07 (TXDATAMSB0_IN[7], TXDATAMSB0[7]);
  buf B_TXDATAMSB10 (TXDATAMSB1_IN[0], TXDATAMSB1[0]);
  buf B_TXDATAMSB11 (TXDATAMSB1_IN[1], TXDATAMSB1[1]);
  buf B_TXDATAMSB12 (TXDATAMSB1_IN[2], TXDATAMSB1[2]);
  buf B_TXDATAMSB13 (TXDATAMSB1_IN[3], TXDATAMSB1[3]);
  buf B_TXDATAMSB14 (TXDATAMSB1_IN[4], TXDATAMSB1[4]);
  buf B_TXDATAMSB15 (TXDATAMSB1_IN[5], TXDATAMSB1[5]);
  buf B_TXDATAMSB16 (TXDATAMSB1_IN[6], TXDATAMSB1[6]);
  buf B_TXDATAMSB17 (TXDATAMSB1_IN[7], TXDATAMSB1[7]);
  buf B_TXDATAMSB20 (TXDATAMSB2_IN[0], TXDATAMSB2[0]);
  buf B_TXDATAMSB21 (TXDATAMSB2_IN[1], TXDATAMSB2[1]);
  buf B_TXDATAMSB22 (TXDATAMSB2_IN[2], TXDATAMSB2[2]);
  buf B_TXDATAMSB23 (TXDATAMSB2_IN[3], TXDATAMSB2[3]);
  buf B_TXDATAMSB24 (TXDATAMSB2_IN[4], TXDATAMSB2[4]);
  buf B_TXDATAMSB25 (TXDATAMSB2_IN[5], TXDATAMSB2[5]);
  buf B_TXDATAMSB26 (TXDATAMSB2_IN[6], TXDATAMSB2[6]);
  buf B_TXDATAMSB27 (TXDATAMSB2_IN[7], TXDATAMSB2[7]);
  buf B_TXDATAMSB30 (TXDATAMSB3_IN[0], TXDATAMSB3[0]);
  buf B_TXDATAMSB31 (TXDATAMSB3_IN[1], TXDATAMSB3[1]);
  buf B_TXDATAMSB32 (TXDATAMSB3_IN[2], TXDATAMSB3[2]);
  buf B_TXDATAMSB33 (TXDATAMSB3_IN[3], TXDATAMSB3[3]);
  buf B_TXDATAMSB34 (TXDATAMSB3_IN[4], TXDATAMSB3[4]);
  buf B_TXDATAMSB35 (TXDATAMSB3_IN[5], TXDATAMSB3[5]);
  buf B_TXDATAMSB36 (TXDATAMSB3_IN[6], TXDATAMSB3[6]);
  buf B_TXDATAMSB37 (TXDATAMSB3_IN[7], TXDATAMSB3[7]);
  buf B_TXDEEMPH0 (TXDEEMPH0_IN, TXDEEMPH0);
  buf B_TXDEEMPH1 (TXDEEMPH1_IN, TXDEEMPH1);
  buf B_TXDEEMPH2 (TXDEEMPH2_IN, TXDEEMPH2);
  buf B_TXDEEMPH3 (TXDEEMPH3_IN, TXDEEMPH3);
  buf B_TXMARGIN00 (TXMARGIN0_IN[0], TXMARGIN0[0]);
  buf B_TXMARGIN01 (TXMARGIN0_IN[1], TXMARGIN0[1]);
  buf B_TXMARGIN02 (TXMARGIN0_IN[2], TXMARGIN0[2]);
  buf B_TXMARGIN10 (TXMARGIN1_IN[0], TXMARGIN1[0]);
  buf B_TXMARGIN11 (TXMARGIN1_IN[1], TXMARGIN1[1]);
  buf B_TXMARGIN12 (TXMARGIN1_IN[2], TXMARGIN1[2]);
  buf B_TXMARGIN20 (TXMARGIN2_IN[0], TXMARGIN2[0]);
  buf B_TXMARGIN21 (TXMARGIN2_IN[1], TXMARGIN2[1]);
  buf B_TXMARGIN22 (TXMARGIN2_IN[2], TXMARGIN2[2]);
  buf B_TXMARGIN30 (TXMARGIN3_IN[0], TXMARGIN3[0]);
  buf B_TXMARGIN31 (TXMARGIN3_IN[1], TXMARGIN3[1]);
  buf B_TXMARGIN32 (TXMARGIN3_IN[2], TXMARGIN3[2]);
  buf B_TXPOWERDOWN00 (TXPOWERDOWN0_IN[0], TXPOWERDOWN0[0]);
  buf B_TXPOWERDOWN01 (TXPOWERDOWN0_IN[1], TXPOWERDOWN0[1]);
  buf B_TXPOWERDOWN10 (TXPOWERDOWN1_IN[0], TXPOWERDOWN1[0]);
  buf B_TXPOWERDOWN11 (TXPOWERDOWN1_IN[1], TXPOWERDOWN1[1]);
  buf B_TXPOWERDOWN20 (TXPOWERDOWN2_IN[0], TXPOWERDOWN2[0]);
  buf B_TXPOWERDOWN21 (TXPOWERDOWN2_IN[1], TXPOWERDOWN2[1]);
  buf B_TXPOWERDOWN30 (TXPOWERDOWN3_IN[0], TXPOWERDOWN3[0]);
  buf B_TXPOWERDOWN31 (TXPOWERDOWN3_IN[1], TXPOWERDOWN3[1]);
  buf B_TXRATE00 (TXRATE0_IN[0], TXRATE0[0]);
  buf B_TXRATE01 (TXRATE0_IN[1], TXRATE0[1]);
  buf B_TXRATE10 (TXRATE1_IN[0], TXRATE1[0]);
  buf B_TXRATE11 (TXRATE1_IN[1], TXRATE1[1]);
  buf B_TXRATE20 (TXRATE2_IN[0], TXRATE2[0]);
  buf B_TXRATE21 (TXRATE2_IN[1], TXRATE2[1]);
  buf B_TXRATE30 (TXRATE3_IN[0], TXRATE3[0]);
  buf B_TXRATE31 (TXRATE3_IN[1], TXRATE3[1]);
  buf B_TXUSERCLKIN0 (TXUSERCLKIN0_IN, TXUSERCLKIN0);
  buf B_TXUSERCLKIN1 (TXUSERCLKIN1_IN, TXUSERCLKIN1);
  buf B_TXUSERCLKIN2 (TXUSERCLKIN2_IN, TXUSERCLKIN2);
  buf B_TXUSERCLKIN3 (TXUSERCLKIN3_IN, TXUSERCLKIN3);

  wire [15:0] delay_DRPDO;
  wire [15:0] delay_MGMTPCSRDDATA;
  wire [63:0] delay_RXDATA0;
  wire [63:0] delay_RXDATA1;
  wire [63:0] delay_RXDATA2;
  wire [63:0] delay_RXDATA3;
  wire [7:0] delay_RXCODEERR0;
  wire [7:0] delay_RXCODEERR1;
  wire [7:0] delay_RXCODEERR2;
  wire [7:0] delay_RXCODEERR3;
  wire [7:0] delay_RXCTRL0;
  wire [7:0] delay_RXCTRL1;
  wire [7:0] delay_RXCTRL2;
  wire [7:0] delay_RXCTRL3;
  wire [7:0] delay_RXDISPERR0;
  wire [7:0] delay_RXDISPERR1;
  wire [7:0] delay_RXDISPERR2;
  wire [7:0] delay_RXDISPERR3;
  wire [7:0] delay_RXVALID0;
  wire [7:0] delay_RXVALID1;
  wire [7:0] delay_RXVALID2;
  wire [7:0] delay_RXVALID3;
  wire delay_DRDY;
  wire delay_GTHINITDONE;
  wire delay_MGMTPCSRDACK;
  wire delay_RXCTRLACK0;
  wire delay_RXCTRLACK1;
  wire delay_RXCTRLACK2;
  wire delay_RXCTRLACK3;
  wire delay_RXDATATAP0;
  wire delay_RXDATATAP1;
  wire delay_RXDATATAP2;
  wire delay_RXDATATAP3;
  wire delay_RXPCSCLKSMPL0;
  wire delay_RXPCSCLKSMPL1;
  wire delay_RXPCSCLKSMPL2;
  wire delay_RXPCSCLKSMPL3;
  wire delay_RXUSERCLKOUT0;
  wire delay_RXUSERCLKOUT1;
  wire delay_RXUSERCLKOUT2;
  wire delay_RXUSERCLKOUT3;
  wire delay_TSTPATH;
  wire delay_TSTREFCLKFAB;
  wire delay_TSTREFCLKOUT;
  wire delay_TXCTRLACK0;
  wire delay_TXCTRLACK1;
  wire delay_TXCTRLACK2;
  wire delay_TXCTRLACK3;
  wire delay_TXDATATAP10;
  wire delay_TXDATATAP11;
  wire delay_TXDATATAP12;
  wire delay_TXDATATAP13;
  wire delay_TXDATATAP20;
  wire delay_TXDATATAP21;
  wire delay_TXDATATAP22;
  wire delay_TXDATATAP23;
  wire delay_TXN0;
  wire delay_TXN1;
  wire delay_TXN2;
  wire delay_TXN3;
  wire delay_TXP0;
  wire delay_TXP1;
  wire delay_TXP2;
  wire delay_TXP3;
  wire delay_TXPCSCLKSMPL0;
  wire delay_TXPCSCLKSMPL1;
  wire delay_TXPCSCLKSMPL2;
  wire delay_TXPCSCLKSMPL3;
  wire delay_TXUSERCLKOUT0;
  wire delay_TXUSERCLKOUT1;
  wire delay_TXUSERCLKOUT2;
  wire delay_TXUSERCLKOUT3;

  wire [15:0] delay_DADDR;
  wire [15:0] delay_DI;
  wire [15:0] delay_MGMTPCSREGADDR;
  wire [15:0] delay_MGMTPCSWRDATA;
  wire [1:0] delay_RXPOWERDOWN0;
  wire [1:0] delay_RXPOWERDOWN1;
  wire [1:0] delay_RXPOWERDOWN2;
  wire [1:0] delay_RXPOWERDOWN3;
  wire [1:0] delay_RXRATE0;
  wire [1:0] delay_RXRATE1;
  wire [1:0] delay_RXRATE2;
  wire [1:0] delay_RXRATE3;
  wire [1:0] delay_TXPOWERDOWN0;
  wire [1:0] delay_TXPOWERDOWN1;
  wire [1:0] delay_TXPOWERDOWN2;
  wire [1:0] delay_TXPOWERDOWN3;
  wire [1:0] delay_TXRATE0;
  wire [1:0] delay_TXRATE1;
  wire [1:0] delay_TXRATE2;
  wire [1:0] delay_TXRATE3;
  wire [2:0] delay_PLLREFCLKSEL;
  wire [2:0] delay_SAMPLERATE0;
  wire [2:0] delay_SAMPLERATE1;
  wire [2:0] delay_SAMPLERATE2;
  wire [2:0] delay_SAMPLERATE3;
  wire [2:0] delay_TXMARGIN0;
  wire [2:0] delay_TXMARGIN1;
  wire [2:0] delay_TXMARGIN2;
  wire [2:0] delay_TXMARGIN3;
  wire [3:0] delay_MGMTPCSLANESEL;
  wire [4:0] delay_MGMTPCSMMDADDR;
  wire [5:0] delay_PLLPCSCLKDIV;
  wire [63:0] delay_TXDATA0;
  wire [63:0] delay_TXDATA1;
  wire [63:0] delay_TXDATA2;
  wire [63:0] delay_TXDATA3;
  wire [7:0] delay_TXCTRL0;
  wire [7:0] delay_TXCTRL1;
  wire [7:0] delay_TXCTRL2;
  wire [7:0] delay_TXCTRL3;
  wire [7:0] delay_TXDATAMSB0;
  wire [7:0] delay_TXDATAMSB1;
  wire [7:0] delay_TXDATAMSB2;
  wire [7:0] delay_TXDATAMSB3;
  wire delay_DCLK;
  wire delay_DEN;
  wire delay_DFETRAINCTRL0;
  wire delay_DFETRAINCTRL1;
  wire delay_DFETRAINCTRL2;
  wire delay_DFETRAINCTRL3;
  wire delay_DISABLEDRP;
  wire delay_DWE;
  wire delay_GTHINIT;
  wire delay_GTHRESET;
  wire delay_GTHX2LANE01;
  wire delay_GTHX2LANE23;
  wire delay_GTHX4LANE;
  wire delay_MGMTPCSREGRD;
  wire delay_MGMTPCSREGWR;
  wire delay_POWERDOWN0;
  wire delay_POWERDOWN1;
  wire delay_POWERDOWN2;
  wire delay_POWERDOWN3;
  wire delay_REFCLK;
  wire delay_RXBUFRESET0;
  wire delay_RXBUFRESET1;
  wire delay_RXBUFRESET2;
  wire delay_RXBUFRESET3;
  wire delay_RXENCOMMADET0;
  wire delay_RXENCOMMADET1;
  wire delay_RXENCOMMADET2;
  wire delay_RXENCOMMADET3;
  wire delay_RXN0;
  wire delay_RXN1;
  wire delay_RXN2;
  wire delay_RXN3;
  wire delay_RXP0;
  wire delay_RXP1;
  wire delay_RXP2;
  wire delay_RXP3;
  wire delay_RXPOLARITY0;
  wire delay_RXPOLARITY1;
  wire delay_RXPOLARITY2;
  wire delay_RXPOLARITY3;
  wire delay_RXSLIP0;
  wire delay_RXSLIP1;
  wire delay_RXSLIP2;
  wire delay_RXSLIP3;
  wire delay_RXUSERCLKIN0;
  wire delay_RXUSERCLKIN1;
  wire delay_RXUSERCLKIN2;
  wire delay_RXUSERCLKIN3;
  wire delay_TXBUFRESET0;
  wire delay_TXBUFRESET1;
  wire delay_TXBUFRESET2;
  wire delay_TXBUFRESET3;
  wire delay_TXDEEMPH0;
  wire delay_TXDEEMPH1;
  wire delay_TXDEEMPH2;
  wire delay_TXDEEMPH3;
  wire delay_TXUSERCLKIN0;
  wire delay_TXUSERCLKIN1;
  wire delay_TXUSERCLKIN2;
  wire delay_TXUSERCLKIN3;

  assign #(OUTCLK_DELAY) RXUSERCLKOUT0_OUT = delay_RXUSERCLKOUT0;
  assign #(OUTCLK_DELAY) RXUSERCLKOUT1_OUT = delay_RXUSERCLKOUT1;
  assign #(OUTCLK_DELAY) RXUSERCLKOUT2_OUT = delay_RXUSERCLKOUT2;
  assign #(OUTCLK_DELAY) RXUSERCLKOUT3_OUT = delay_RXUSERCLKOUT3;
  assign #(OUTCLK_DELAY) TSTPATH_OUT = delay_TSTPATH;
  assign #(OUTCLK_DELAY) TSTREFCLKFAB_OUT = delay_TSTREFCLKFAB;
  assign #(OUTCLK_DELAY) TSTREFCLKOUT_OUT = delay_TSTREFCLKOUT;
  assign #(OUTCLK_DELAY) TXUSERCLKOUT0_OUT = delay_TXUSERCLKOUT0;
  assign #(OUTCLK_DELAY) TXUSERCLKOUT1_OUT = delay_TXUSERCLKOUT1;
  assign #(OUTCLK_DELAY) TXUSERCLKOUT2_OUT = delay_TXUSERCLKOUT2;
  assign #(OUTCLK_DELAY) TXUSERCLKOUT3_OUT = delay_TXUSERCLKOUT3;

  assign #(out_delay) DRDY_OUT = delay_DRDY;
  assign #(out_delay) DRPDO_OUT = delay_DRPDO;
  assign #(out_delay) GTHINITDONE_OUT = delay_GTHINITDONE;
  assign #(out_delay) MGMTPCSRDACK_OUT = delay_MGMTPCSRDACK;
  assign #(out_delay) MGMTPCSRDDATA_OUT = delay_MGMTPCSRDDATA;
  assign #(out_delay) RXCODEERR0_OUT = delay_RXCODEERR0;
  assign #(out_delay) RXCODEERR1_OUT = delay_RXCODEERR1;
  assign #(out_delay) RXCODEERR2_OUT = delay_RXCODEERR2;
  assign #(out_delay) RXCODEERR3_OUT = delay_RXCODEERR3;
  assign #(out_delay) RXCTRL0_OUT = delay_RXCTRL0;
  assign #(out_delay) RXCTRL1_OUT = delay_RXCTRL1;
  assign #(out_delay) RXCTRL2_OUT = delay_RXCTRL2;
  assign #(out_delay) RXCTRL3_OUT = delay_RXCTRL3;
  assign #(out_delay) RXCTRLACK0_OUT = delay_RXCTRLACK0;
  assign #(out_delay) RXCTRLACK1_OUT = delay_RXCTRLACK1;
  assign #(out_delay) RXCTRLACK2_OUT = delay_RXCTRLACK2;
  assign #(out_delay) RXCTRLACK3_OUT = delay_RXCTRLACK3;
  assign #(out_delay) RXDATA0_OUT = delay_RXDATA0;
  assign #(out_delay) RXDATA1_OUT = delay_RXDATA1;
  assign #(out_delay) RXDATA2_OUT = delay_RXDATA2;
  assign #(out_delay) RXDATA3_OUT = delay_RXDATA3;
  assign #(out_delay) RXDATATAP0_OUT = delay_RXDATATAP0;
  assign #(out_delay) RXDATATAP1_OUT = delay_RXDATATAP1;
  assign #(out_delay) RXDATATAP2_OUT = delay_RXDATATAP2;
  assign #(out_delay) RXDATATAP3_OUT = delay_RXDATATAP3;
  assign #(out_delay) RXDISPERR0_OUT = delay_RXDISPERR0;
  assign #(out_delay) RXDISPERR1_OUT = delay_RXDISPERR1;
  assign #(out_delay) RXDISPERR2_OUT = delay_RXDISPERR2;
  assign #(out_delay) RXDISPERR3_OUT = delay_RXDISPERR3;
  assign #(out_delay) RXPCSCLKSMPL0_OUT = delay_RXPCSCLKSMPL0;
  assign #(out_delay) RXPCSCLKSMPL1_OUT = delay_RXPCSCLKSMPL1;
  assign #(out_delay) RXPCSCLKSMPL2_OUT = delay_RXPCSCLKSMPL2;
  assign #(out_delay) RXPCSCLKSMPL3_OUT = delay_RXPCSCLKSMPL3;
  assign #(out_delay) RXVALID0_OUT = delay_RXVALID0;
  assign #(out_delay) RXVALID1_OUT = delay_RXVALID1;
  assign #(out_delay) RXVALID2_OUT = delay_RXVALID2;
  assign #(out_delay) RXVALID3_OUT = delay_RXVALID3;
  assign #(out_delay) TXCTRLACK0_OUT = delay_TXCTRLACK0;
  assign #(out_delay) TXCTRLACK1_OUT = delay_TXCTRLACK1;
  assign #(out_delay) TXCTRLACK2_OUT = delay_TXCTRLACK2;
  assign #(out_delay) TXCTRLACK3_OUT = delay_TXCTRLACK3;
  assign #(out_delay) TXDATATAP10_OUT = delay_TXDATATAP10;
  assign #(out_delay) TXDATATAP11_OUT = delay_TXDATATAP11;
  assign #(out_delay) TXDATATAP12_OUT = delay_TXDATATAP12;
  assign #(out_delay) TXDATATAP13_OUT = delay_TXDATATAP13;
  assign #(out_delay) TXDATATAP20_OUT = delay_TXDATATAP20;
  assign #(out_delay) TXDATATAP21_OUT = delay_TXDATATAP21;
  assign #(out_delay) TXDATATAP22_OUT = delay_TXDATATAP22;
  assign #(out_delay) TXDATATAP23_OUT = delay_TXDATATAP23;
  assign #(out_delay) TXN0_OUT = delay_TXN0;
  assign #(out_delay) TXN1_OUT = delay_TXN1;
  assign #(out_delay) TXN2_OUT = delay_TXN2;
  assign #(out_delay) TXN3_OUT = delay_TXN3;
  assign #(out_delay) TXP0_OUT = delay_TXP0;
  assign #(out_delay) TXP1_OUT = delay_TXP1;
  assign #(out_delay) TXP2_OUT = delay_TXP2;
  assign #(out_delay) TXP3_OUT = delay_TXP3;
  assign #(out_delay) TXPCSCLKSMPL0_OUT = delay_TXPCSCLKSMPL0;
  assign #(out_delay) TXPCSCLKSMPL1_OUT = delay_TXPCSCLKSMPL1;
  assign #(out_delay) TXPCSCLKSMPL2_OUT = delay_TXPCSCLKSMPL2;
  assign #(out_delay) TXPCSCLKSMPL3_OUT = delay_TXPCSCLKSMPL3;

  assign #(INCLK_DELAY) DCLK_INDELAY = DCLK_IN;
  assign #(INCLK_DELAY) REFCLK_INDELAY = REFCLK_IN;
  assign #(INCLK_DELAY) RXUSERCLKIN0_INDELAY = RXUSERCLKIN0_IN;
  assign #(INCLK_DELAY) RXUSERCLKIN1_INDELAY = RXUSERCLKIN1_IN;
  assign #(INCLK_DELAY) RXUSERCLKIN2_INDELAY = RXUSERCLKIN2_IN;
  assign #(INCLK_DELAY) RXUSERCLKIN3_INDELAY = RXUSERCLKIN3_IN;
  assign #(INCLK_DELAY) TXUSERCLKIN0_INDELAY = TXUSERCLKIN0_IN;
  assign #(INCLK_DELAY) TXUSERCLKIN1_INDELAY = TXUSERCLKIN1_IN;
  assign #(INCLK_DELAY) TXUSERCLKIN2_INDELAY = TXUSERCLKIN2_IN;
  assign #(INCLK_DELAY) TXUSERCLKIN3_INDELAY = TXUSERCLKIN3_IN;

  assign #(in_delay) DADDR_INDELAY = DADDR_IN;
  assign #(in_delay) DEN_INDELAY = DEN_IN;
  assign #(in_delay) DFETRAINCTRL0_INDELAY = DFETRAINCTRL0_IN;
  assign #(in_delay) DFETRAINCTRL1_INDELAY = DFETRAINCTRL1_IN;
  assign #(in_delay) DFETRAINCTRL2_INDELAY = DFETRAINCTRL2_IN;
  assign #(in_delay) DFETRAINCTRL3_INDELAY = DFETRAINCTRL3_IN;
  assign #(in_delay) DISABLEDRP_INDELAY = DISABLEDRP_IN;
  assign #(in_delay) DI_INDELAY = DI_IN;
  assign #(in_delay) DWE_INDELAY = DWE_IN;
  assign #(in_delay) GTHINIT_INDELAY = GTHINIT_IN;
  assign #(in_delay) GTHRESET_INDELAY = GTHRESET_IN;
  assign #(in_delay) GTHX2LANE01_INDELAY = GTHX2LANE01_IN;
  assign #(in_delay) GTHX2LANE23_INDELAY = GTHX2LANE23_IN;
  assign #(in_delay) GTHX4LANE_INDELAY = GTHX4LANE_IN;
  assign #(in_delay) MGMTPCSLANESEL_INDELAY = MGMTPCSLANESEL_IN;
  assign #(in_delay) MGMTPCSMMDADDR_INDELAY = MGMTPCSMMDADDR_IN;
  assign #(in_delay) MGMTPCSREGADDR_INDELAY = MGMTPCSREGADDR_IN;
  assign #(in_delay) MGMTPCSREGRD_INDELAY = MGMTPCSREGRD_IN;
  assign #(in_delay) MGMTPCSREGWR_INDELAY = MGMTPCSREGWR_IN;
  assign #(in_delay) MGMTPCSWRDATA_INDELAY = MGMTPCSWRDATA_IN;
  assign #(in_delay) PLLPCSCLKDIV_INDELAY = PLLPCSCLKDIV_IN;
  assign #(in_delay) PLLREFCLKSEL_INDELAY = PLLREFCLKSEL_IN;
  assign #(in_delay) POWERDOWN0_INDELAY = POWERDOWN0_IN;
  assign #(in_delay) POWERDOWN1_INDELAY = POWERDOWN1_IN;
  assign #(in_delay) POWERDOWN2_INDELAY = POWERDOWN2_IN;
  assign #(in_delay) POWERDOWN3_INDELAY = POWERDOWN3_IN;
  assign #(in_delay) RXBUFRESET0_INDELAY = RXBUFRESET0_IN;
  assign #(in_delay) RXBUFRESET1_INDELAY = RXBUFRESET1_IN;
  assign #(in_delay) RXBUFRESET2_INDELAY = RXBUFRESET2_IN;
  assign #(in_delay) RXBUFRESET3_INDELAY = RXBUFRESET3_IN;
  assign #(in_delay) RXENCOMMADET0_INDELAY = RXENCOMMADET0_IN;
  assign #(in_delay) RXENCOMMADET1_INDELAY = RXENCOMMADET1_IN;
  assign #(in_delay) RXENCOMMADET2_INDELAY = RXENCOMMADET2_IN;
  assign #(in_delay) RXENCOMMADET3_INDELAY = RXENCOMMADET3_IN;
  assign #(in_delay) RXN0_INDELAY = RXN0_IN;
  assign #(in_delay) RXN1_INDELAY = RXN1_IN;
  assign #(in_delay) RXN2_INDELAY = RXN2_IN;
  assign #(in_delay) RXN3_INDELAY = RXN3_IN;
  assign #(in_delay) RXP0_INDELAY = RXP0_IN;
  assign #(in_delay) RXP1_INDELAY = RXP1_IN;
  assign #(in_delay) RXP2_INDELAY = RXP2_IN;
  assign #(in_delay) RXP3_INDELAY = RXP3_IN;
  assign #(in_delay) RXPOLARITY0_INDELAY = RXPOLARITY0_IN;
  assign #(in_delay) RXPOLARITY1_INDELAY = RXPOLARITY1_IN;
  assign #(in_delay) RXPOLARITY2_INDELAY = RXPOLARITY2_IN;
  assign #(in_delay) RXPOLARITY3_INDELAY = RXPOLARITY3_IN;
  assign #(in_delay) RXPOWERDOWN0_INDELAY = RXPOWERDOWN0_IN;
  assign #(in_delay) RXPOWERDOWN1_INDELAY = RXPOWERDOWN1_IN;
  assign #(in_delay) RXPOWERDOWN2_INDELAY = RXPOWERDOWN2_IN;
  assign #(in_delay) RXPOWERDOWN3_INDELAY = RXPOWERDOWN3_IN;
  assign #(in_delay) RXRATE0_INDELAY = RXRATE0_IN;
  assign #(in_delay) RXRATE1_INDELAY = RXRATE1_IN;
  assign #(in_delay) RXRATE2_INDELAY = RXRATE2_IN;
  assign #(in_delay) RXRATE3_INDELAY = RXRATE3_IN;
  assign #(in_delay) RXSLIP0_INDELAY = RXSLIP0_IN;
  assign #(in_delay) RXSLIP1_INDELAY = RXSLIP1_IN;
  assign #(in_delay) RXSLIP2_INDELAY = RXSLIP2_IN;
  assign #(in_delay) RXSLIP3_INDELAY = RXSLIP3_IN;
  assign #(in_delay) SAMPLERATE0_INDELAY = SAMPLERATE0_IN;
  assign #(in_delay) SAMPLERATE1_INDELAY = SAMPLERATE1_IN;
  assign #(in_delay) SAMPLERATE2_INDELAY = SAMPLERATE2_IN;
  assign #(in_delay) SAMPLERATE3_INDELAY = SAMPLERATE3_IN;
  assign #(in_delay) TXBUFRESET0_INDELAY = TXBUFRESET0_IN;
  assign #(in_delay) TXBUFRESET1_INDELAY = TXBUFRESET1_IN;
  assign #(in_delay) TXBUFRESET2_INDELAY = TXBUFRESET2_IN;
  assign #(in_delay) TXBUFRESET3_INDELAY = TXBUFRESET3_IN;
  assign #(in_delay) TXCTRL0_INDELAY = TXCTRL0_IN;
  assign #(in_delay) TXCTRL1_INDELAY = TXCTRL1_IN;
  assign #(in_delay) TXCTRL2_INDELAY = TXCTRL2_IN;
  assign #(in_delay) TXCTRL3_INDELAY = TXCTRL3_IN;
  assign #(in_delay) TXDATA0_INDELAY = TXDATA0_IN;
  assign #(in_delay) TXDATA1_INDELAY = TXDATA1_IN;
  assign #(in_delay) TXDATA2_INDELAY = TXDATA2_IN;
  assign #(in_delay) TXDATA3_INDELAY = TXDATA3_IN;
  assign #(in_delay) TXDATAMSB0_INDELAY = TXDATAMSB0_IN;
  assign #(in_delay) TXDATAMSB1_INDELAY = TXDATAMSB1_IN;
  assign #(in_delay) TXDATAMSB2_INDELAY = TXDATAMSB2_IN;
  assign #(in_delay) TXDATAMSB3_INDELAY = TXDATAMSB3_IN;
  assign #(in_delay) TXDEEMPH0_INDELAY = TXDEEMPH0_IN;
  assign #(in_delay) TXDEEMPH1_INDELAY = TXDEEMPH1_IN;
  assign #(in_delay) TXDEEMPH2_INDELAY = TXDEEMPH2_IN;
  assign #(in_delay) TXDEEMPH3_INDELAY = TXDEEMPH3_IN;
  assign #(in_delay) TXMARGIN0_INDELAY = TXMARGIN0_IN;
  assign #(in_delay) TXMARGIN1_INDELAY = TXMARGIN1_IN;
  assign #(in_delay) TXMARGIN2_INDELAY = TXMARGIN2_IN;
  assign #(in_delay) TXMARGIN3_INDELAY = TXMARGIN3_IN;
  assign #(in_delay) TXPOWERDOWN0_INDELAY = TXPOWERDOWN0_IN;
  assign #(in_delay) TXPOWERDOWN1_INDELAY = TXPOWERDOWN1_IN;
  assign #(in_delay) TXPOWERDOWN2_INDELAY = TXPOWERDOWN2_IN;
  assign #(in_delay) TXPOWERDOWN3_INDELAY = TXPOWERDOWN3_IN;
  assign #(in_delay) TXRATE0_INDELAY = TXRATE0_IN;
  assign #(in_delay) TXRATE1_INDELAY = TXRATE1_IN;
  assign #(in_delay) TXRATE2_INDELAY = TXRATE2_IN;
  assign #(in_delay) TXRATE3_INDELAY = TXRATE3_IN;
  assign delay_GTHRESET = GTHRESET_INDELAY;
  assign delay_GTHX2LANE01 = GTHX2LANE01_INDELAY;
  assign delay_GTHX2LANE23 = GTHX2LANE23_INDELAY;
  assign delay_GTHX4LANE = GTHX4LANE_INDELAY;
  assign delay_PLLREFCLKSEL = PLLREFCLKSEL_INDELAY;
  assign delay_POWERDOWN0 = POWERDOWN0_INDELAY;
  assign delay_POWERDOWN1 = POWERDOWN1_INDELAY;
  assign delay_POWERDOWN2 = POWERDOWN2_INDELAY;
  assign delay_POWERDOWN3 = POWERDOWN3_INDELAY;
  assign delay_REFCLK = REFCLK_INDELAY;
  assign delay_RXN0 = RXN0_INDELAY;
  assign delay_RXN1 = RXN1_INDELAY;
  assign delay_RXN2 = RXN2_INDELAY;
  assign delay_RXN3 = RXN3_INDELAY;
  assign delay_RXP0 = RXP0_INDELAY;
  assign delay_RXP1 = RXP1_INDELAY;
  assign delay_RXP2 = RXP2_INDELAY;
  assign delay_RXP3 = RXP3_INDELAY;
  assign delay_RXSLIP0 = RXSLIP0_INDELAY;
  assign delay_RXSLIP1 = RXSLIP1_INDELAY;
  assign delay_RXSLIP2 = RXSLIP2_INDELAY;
  assign delay_RXSLIP3 = RXSLIP3_INDELAY;

  B_GTHE1_QUAD #(
    .BER_CONST_PTRN0 (BER_CONST_PTRN0),
    .BER_CONST_PTRN1 (BER_CONST_PTRN1),
    .BUFFER_CONFIG_LANE0 (BUFFER_CONFIG_LANE0),
    .BUFFER_CONFIG_LANE1 (BUFFER_CONFIG_LANE1),
    .BUFFER_CONFIG_LANE2 (BUFFER_CONFIG_LANE2),
    .BUFFER_CONFIG_LANE3 (BUFFER_CONFIG_LANE3),
    .DFE_TRAIN_CTRL_LANE0 (DFE_TRAIN_CTRL_LANE0),
    .DFE_TRAIN_CTRL_LANE1 (DFE_TRAIN_CTRL_LANE1),
    .DFE_TRAIN_CTRL_LANE2 (DFE_TRAIN_CTRL_LANE2),
    .DFE_TRAIN_CTRL_LANE3 (DFE_TRAIN_CTRL_LANE3),
    .DLL_CFG0 (DLL_CFG0),
    .DLL_CFG1 (DLL_CFG1),
    .E10GBASEKR_LD_COEFF_UPD_LANE0 (E10GBASEKR_LD_COEFF_UPD_LANE0),
    .E10GBASEKR_LD_COEFF_UPD_LANE1 (E10GBASEKR_LD_COEFF_UPD_LANE1),
    .E10GBASEKR_LD_COEFF_UPD_LANE2 (E10GBASEKR_LD_COEFF_UPD_LANE2),
    .E10GBASEKR_LD_COEFF_UPD_LANE3 (E10GBASEKR_LD_COEFF_UPD_LANE3),
    .E10GBASEKR_LP_COEFF_UPD_LANE0 (E10GBASEKR_LP_COEFF_UPD_LANE0),
    .E10GBASEKR_LP_COEFF_UPD_LANE1 (E10GBASEKR_LP_COEFF_UPD_LANE1),
    .E10GBASEKR_LP_COEFF_UPD_LANE2 (E10GBASEKR_LP_COEFF_UPD_LANE2),
    .E10GBASEKR_LP_COEFF_UPD_LANE3 (E10GBASEKR_LP_COEFF_UPD_LANE3),
    .E10GBASEKR_PMA_CTRL_LANE0 (E10GBASEKR_PMA_CTRL_LANE0),
    .E10GBASEKR_PMA_CTRL_LANE1 (E10GBASEKR_PMA_CTRL_LANE1),
    .E10GBASEKR_PMA_CTRL_LANE2 (E10GBASEKR_PMA_CTRL_LANE2),
    .E10GBASEKR_PMA_CTRL_LANE3 (E10GBASEKR_PMA_CTRL_LANE3),
    .E10GBASEKX_CTRL_LANE0 (E10GBASEKX_CTRL_LANE0),
    .E10GBASEKX_CTRL_LANE1 (E10GBASEKX_CTRL_LANE1),
    .E10GBASEKX_CTRL_LANE2 (E10GBASEKX_CTRL_LANE2),
    .E10GBASEKX_CTRL_LANE3 (E10GBASEKX_CTRL_LANE3),
    .E10GBASER_PCS_CFG_LANE0 (E10GBASER_PCS_CFG_LANE0),
    .E10GBASER_PCS_CFG_LANE1 (E10GBASER_PCS_CFG_LANE1),
    .E10GBASER_PCS_CFG_LANE2 (E10GBASER_PCS_CFG_LANE2),
    .E10GBASER_PCS_CFG_LANE3 (E10GBASER_PCS_CFG_LANE3),
    .E10GBASER_PCS_SEEDA0_LANE0 (E10GBASER_PCS_SEEDA0_LANE0),
    .E10GBASER_PCS_SEEDA0_LANE1 (E10GBASER_PCS_SEEDA0_LANE1),
    .E10GBASER_PCS_SEEDA0_LANE2 (E10GBASER_PCS_SEEDA0_LANE2),
    .E10GBASER_PCS_SEEDA0_LANE3 (E10GBASER_PCS_SEEDA0_LANE3),
    .E10GBASER_PCS_SEEDA1_LANE0 (E10GBASER_PCS_SEEDA1_LANE0),
    .E10GBASER_PCS_SEEDA1_LANE1 (E10GBASER_PCS_SEEDA1_LANE1),
    .E10GBASER_PCS_SEEDA1_LANE2 (E10GBASER_PCS_SEEDA1_LANE2),
    .E10GBASER_PCS_SEEDA1_LANE3 (E10GBASER_PCS_SEEDA1_LANE3),
    .E10GBASER_PCS_SEEDA2_LANE0 (E10GBASER_PCS_SEEDA2_LANE0),
    .E10GBASER_PCS_SEEDA2_LANE1 (E10GBASER_PCS_SEEDA2_LANE1),
    .E10GBASER_PCS_SEEDA2_LANE2 (E10GBASER_PCS_SEEDA2_LANE2),
    .E10GBASER_PCS_SEEDA2_LANE3 (E10GBASER_PCS_SEEDA2_LANE3),
    .E10GBASER_PCS_SEEDA3_LANE0 (E10GBASER_PCS_SEEDA3_LANE0),
    .E10GBASER_PCS_SEEDA3_LANE1 (E10GBASER_PCS_SEEDA3_LANE1),
    .E10GBASER_PCS_SEEDA3_LANE2 (E10GBASER_PCS_SEEDA3_LANE2),
    .E10GBASER_PCS_SEEDA3_LANE3 (E10GBASER_PCS_SEEDA3_LANE3),
    .E10GBASER_PCS_SEEDB0_LANE0 (E10GBASER_PCS_SEEDB0_LANE0),
    .E10GBASER_PCS_SEEDB0_LANE1 (E10GBASER_PCS_SEEDB0_LANE1),
    .E10GBASER_PCS_SEEDB0_LANE2 (E10GBASER_PCS_SEEDB0_LANE2),
    .E10GBASER_PCS_SEEDB0_LANE3 (E10GBASER_PCS_SEEDB0_LANE3),
    .E10GBASER_PCS_SEEDB1_LANE0 (E10GBASER_PCS_SEEDB1_LANE0),
    .E10GBASER_PCS_SEEDB1_LANE1 (E10GBASER_PCS_SEEDB1_LANE1),
    .E10GBASER_PCS_SEEDB1_LANE2 (E10GBASER_PCS_SEEDB1_LANE2),
    .E10GBASER_PCS_SEEDB1_LANE3 (E10GBASER_PCS_SEEDB1_LANE3),
    .E10GBASER_PCS_SEEDB2_LANE0 (E10GBASER_PCS_SEEDB2_LANE0),
    .E10GBASER_PCS_SEEDB2_LANE1 (E10GBASER_PCS_SEEDB2_LANE1),
    .E10GBASER_PCS_SEEDB2_LANE2 (E10GBASER_PCS_SEEDB2_LANE2),
    .E10GBASER_PCS_SEEDB2_LANE3 (E10GBASER_PCS_SEEDB2_LANE3),
    .E10GBASER_PCS_SEEDB3_LANE0 (E10GBASER_PCS_SEEDB3_LANE0),
    .E10GBASER_PCS_SEEDB3_LANE1 (E10GBASER_PCS_SEEDB3_LANE1),
    .E10GBASER_PCS_SEEDB3_LANE2 (E10GBASER_PCS_SEEDB3_LANE2),
    .E10GBASER_PCS_SEEDB3_LANE3 (E10GBASER_PCS_SEEDB3_LANE3),
    .E10GBASER_PCS_TEST_CTRL_LANE0 (E10GBASER_PCS_TEST_CTRL_LANE0),
    .E10GBASER_PCS_TEST_CTRL_LANE1 (E10GBASER_PCS_TEST_CTRL_LANE1),
    .E10GBASER_PCS_TEST_CTRL_LANE2 (E10GBASER_PCS_TEST_CTRL_LANE2),
    .E10GBASER_PCS_TEST_CTRL_LANE3 (E10GBASER_PCS_TEST_CTRL_LANE3),
    .E10GBASEX_PCS_TSTCTRL_LANE0 (E10GBASEX_PCS_TSTCTRL_LANE0),
    .E10GBASEX_PCS_TSTCTRL_LANE1 (E10GBASEX_PCS_TSTCTRL_LANE1),
    .E10GBASEX_PCS_TSTCTRL_LANE2 (E10GBASEX_PCS_TSTCTRL_LANE2),
    .E10GBASEX_PCS_TSTCTRL_LANE3 (E10GBASEX_PCS_TSTCTRL_LANE3),
    .GLBL0_NOISE_CTRL (GLBL0_NOISE_CTRL),
    .GLBL_AMON_SEL (GLBL_AMON_SEL),
    .GLBL_DMON_SEL (GLBL_DMON_SEL),
    .GLBL_PWR_CTRL (GLBL_PWR_CTRL),
    .GTH_CFG_PWRUP_LANE0 (GTH_CFG_PWRUP_LANE0),
    .GTH_CFG_PWRUP_LANE1 (GTH_CFG_PWRUP_LANE1),
    .GTH_CFG_PWRUP_LANE2 (GTH_CFG_PWRUP_LANE2),
    .GTH_CFG_PWRUP_LANE3 (GTH_CFG_PWRUP_LANE3),
    .LANE_AMON_SEL (LANE_AMON_SEL),
    .LANE_DMON_SEL (LANE_DMON_SEL),
    .LANE_LNK_CFGOVRD (LANE_LNK_CFGOVRD),
    .LANE_PWR_CTRL_LANE0 (LANE_PWR_CTRL_LANE0),
    .LANE_PWR_CTRL_LANE1 (LANE_PWR_CTRL_LANE1),
    .LANE_PWR_CTRL_LANE2 (LANE_PWR_CTRL_LANE2),
    .LANE_PWR_CTRL_LANE3 (LANE_PWR_CTRL_LANE3),
    .LNK_TRN_CFG_LANE0 (LNK_TRN_CFG_LANE0),
    .LNK_TRN_CFG_LANE1 (LNK_TRN_CFG_LANE1),
    .LNK_TRN_CFG_LANE2 (LNK_TRN_CFG_LANE2),
    .LNK_TRN_CFG_LANE3 (LNK_TRN_CFG_LANE3),
    .LNK_TRN_COEFF_REQ_LANE0 (LNK_TRN_COEFF_REQ_LANE0),
    .LNK_TRN_COEFF_REQ_LANE1 (LNK_TRN_COEFF_REQ_LANE1),
    .LNK_TRN_COEFF_REQ_LANE2 (LNK_TRN_COEFF_REQ_LANE2),
    .LNK_TRN_COEFF_REQ_LANE3 (LNK_TRN_COEFF_REQ_LANE3),
    .MISC_CFG (MISC_CFG),
    .MODE_CFG1 (MODE_CFG1),
    .MODE_CFG2 (MODE_CFG2),
    .MODE_CFG3 (MODE_CFG3),
    .MODE_CFG4 (MODE_CFG4),
    .MODE_CFG5 (MODE_CFG5),
    .MODE_CFG6 (MODE_CFG6),
    .MODE_CFG7 (MODE_CFG7),
    .PCS_ABILITY_LANE0 (PCS_ABILITY_LANE0),
    .PCS_ABILITY_LANE1 (PCS_ABILITY_LANE1),
    .PCS_ABILITY_LANE2 (PCS_ABILITY_LANE2),
    .PCS_ABILITY_LANE3 (PCS_ABILITY_LANE3),
    .PCS_CTRL1_LANE0 (PCS_CTRL1_LANE0),
    .PCS_CTRL1_LANE1 (PCS_CTRL1_LANE1),
    .PCS_CTRL1_LANE2 (PCS_CTRL1_LANE2),
    .PCS_CTRL1_LANE3 (PCS_CTRL1_LANE3),
    .PCS_CTRL2_LANE0 (PCS_CTRL2_LANE0),
    .PCS_CTRL2_LANE1 (PCS_CTRL2_LANE1),
    .PCS_CTRL2_LANE2 (PCS_CTRL2_LANE2),
    .PCS_CTRL2_LANE3 (PCS_CTRL2_LANE3),
    .PCS_MISC_CFG_0_LANE0 (PCS_MISC_CFG_0_LANE0),
    .PCS_MISC_CFG_0_LANE1 (PCS_MISC_CFG_0_LANE1),
    .PCS_MISC_CFG_0_LANE2 (PCS_MISC_CFG_0_LANE2),
    .PCS_MISC_CFG_0_LANE3 (PCS_MISC_CFG_0_LANE3),
    .PCS_MISC_CFG_1_LANE0 (PCS_MISC_CFG_1_LANE0),
    .PCS_MISC_CFG_1_LANE1 (PCS_MISC_CFG_1_LANE1),
    .PCS_MISC_CFG_1_LANE2 (PCS_MISC_CFG_1_LANE2),
    .PCS_MISC_CFG_1_LANE3 (PCS_MISC_CFG_1_LANE3),
    .PCS_MODE_LANE0 (PCS_MODE_LANE0),
    .PCS_MODE_LANE1 (PCS_MODE_LANE1),
    .PCS_MODE_LANE2 (PCS_MODE_LANE2),
    .PCS_MODE_LANE3 (PCS_MODE_LANE3),
    .PCS_RESET_1_LANE0 (PCS_RESET_1_LANE0),
    .PCS_RESET_1_LANE1 (PCS_RESET_1_LANE1),
    .PCS_RESET_1_LANE2 (PCS_RESET_1_LANE2),
    .PCS_RESET_1_LANE3 (PCS_RESET_1_LANE3),
    .PCS_RESET_LANE0 (PCS_RESET_LANE0),
    .PCS_RESET_LANE1 (PCS_RESET_LANE1),
    .PCS_RESET_LANE2 (PCS_RESET_LANE2),
    .PCS_RESET_LANE3 (PCS_RESET_LANE3),
    .PCS_TYPE_LANE0 (PCS_TYPE_LANE0),
    .PCS_TYPE_LANE1 (PCS_TYPE_LANE1),
    .PCS_TYPE_LANE2 (PCS_TYPE_LANE2),
    .PCS_TYPE_LANE3 (PCS_TYPE_LANE3),
    .PLL_CFG0 (PLL_CFG0),
    .PLL_CFG1 (PLL_CFG1),
    .PLL_CFG2 (PLL_CFG2),
    .PMA_CTRL1_LANE0 (PMA_CTRL1_LANE0),
    .PMA_CTRL1_LANE1 (PMA_CTRL1_LANE1),
    .PMA_CTRL1_LANE2 (PMA_CTRL1_LANE2),
    .PMA_CTRL1_LANE3 (PMA_CTRL1_LANE3),
    .PMA_CTRL2_LANE0 (PMA_CTRL2_LANE0),
    .PMA_CTRL2_LANE1 (PMA_CTRL2_LANE1),
    .PMA_CTRL2_LANE2 (PMA_CTRL2_LANE2),
    .PMA_CTRL2_LANE3 (PMA_CTRL2_LANE3),
    .PMA_LPBK_CTRL_LANE0 (PMA_LPBK_CTRL_LANE0),
    .PMA_LPBK_CTRL_LANE1 (PMA_LPBK_CTRL_LANE1),
    .PMA_LPBK_CTRL_LANE2 (PMA_LPBK_CTRL_LANE2),
    .PMA_LPBK_CTRL_LANE3 (PMA_LPBK_CTRL_LANE3),
    .PRBS_BER_CFG0_LANE0 (PRBS_BER_CFG0_LANE0),
    .PRBS_BER_CFG0_LANE1 (PRBS_BER_CFG0_LANE1),
    .PRBS_BER_CFG0_LANE2 (PRBS_BER_CFG0_LANE2),
    .PRBS_BER_CFG0_LANE3 (PRBS_BER_CFG0_LANE3),
    .PRBS_BER_CFG1_LANE0 (PRBS_BER_CFG1_LANE0),
    .PRBS_BER_CFG1_LANE1 (PRBS_BER_CFG1_LANE1),
    .PRBS_BER_CFG1_LANE2 (PRBS_BER_CFG1_LANE2),
    .PRBS_BER_CFG1_LANE3 (PRBS_BER_CFG1_LANE3),
    .PRBS_CFG_LANE0 (PRBS_CFG_LANE0),
    .PRBS_CFG_LANE1 (PRBS_CFG_LANE1),
    .PRBS_CFG_LANE2 (PRBS_CFG_LANE2),
    .PRBS_CFG_LANE3 (PRBS_CFG_LANE3),
    .PTRN_CFG0_LSB (PTRN_CFG0_LSB),
    .PTRN_CFG0_MSB (PTRN_CFG0_MSB),
    .PTRN_LEN_CFG (PTRN_LEN_CFG),
    .PWRUP_DLY (PWRUP_DLY),
    .RX_AEQ_VAL0_LANE0 (RX_AEQ_VAL0_LANE0),
    .RX_AEQ_VAL0_LANE1 (RX_AEQ_VAL0_LANE1),
    .RX_AEQ_VAL0_LANE2 (RX_AEQ_VAL0_LANE2),
    .RX_AEQ_VAL0_LANE3 (RX_AEQ_VAL0_LANE3),
    .RX_AEQ_VAL1_LANE0 (RX_AEQ_VAL1_LANE0),
    .RX_AEQ_VAL1_LANE1 (RX_AEQ_VAL1_LANE1),
    .RX_AEQ_VAL1_LANE2 (RX_AEQ_VAL1_LANE2),
    .RX_AEQ_VAL1_LANE3 (RX_AEQ_VAL1_LANE3),
    .RX_AGC_CTRL_LANE0 (RX_AGC_CTRL_LANE0),
    .RX_AGC_CTRL_LANE1 (RX_AGC_CTRL_LANE1),
    .RX_AGC_CTRL_LANE2 (RX_AGC_CTRL_LANE2),
    .RX_AGC_CTRL_LANE3 (RX_AGC_CTRL_LANE3),
    .RX_CDR_CTRL0_LANE0 (RX_CDR_CTRL0_LANE0),
    .RX_CDR_CTRL0_LANE1 (RX_CDR_CTRL0_LANE1),
    .RX_CDR_CTRL0_LANE2 (RX_CDR_CTRL0_LANE2),
    .RX_CDR_CTRL0_LANE3 (RX_CDR_CTRL0_LANE3),
    .RX_CDR_CTRL1_LANE0 (RX_CDR_CTRL1_LANE0),
    .RX_CDR_CTRL1_LANE1 (RX_CDR_CTRL1_LANE1),
    .RX_CDR_CTRL1_LANE2 (RX_CDR_CTRL1_LANE2),
    .RX_CDR_CTRL1_LANE3 (RX_CDR_CTRL1_LANE3),
    .RX_CDR_CTRL2_LANE0 (RX_CDR_CTRL2_LANE0),
    .RX_CDR_CTRL2_LANE1 (RX_CDR_CTRL2_LANE1),
    .RX_CDR_CTRL2_LANE2 (RX_CDR_CTRL2_LANE2),
    .RX_CDR_CTRL2_LANE3 (RX_CDR_CTRL2_LANE3),
    .RX_CFG0_LANE0 (RX_CFG0_LANE0),
    .RX_CFG0_LANE1 (RX_CFG0_LANE1),
    .RX_CFG0_LANE2 (RX_CFG0_LANE2),
    .RX_CFG0_LANE3 (RX_CFG0_LANE3),
    .RX_CFG1_LANE0 (RX_CFG1_LANE0),
    .RX_CFG1_LANE1 (RX_CFG1_LANE1),
    .RX_CFG1_LANE2 (RX_CFG1_LANE2),
    .RX_CFG1_LANE3 (RX_CFG1_LANE3),
    .RX_CFG2_LANE0 (RX_CFG2_LANE0),
    .RX_CFG2_LANE1 (RX_CFG2_LANE1),
    .RX_CFG2_LANE2 (RX_CFG2_LANE2),
    .RX_CFG2_LANE3 (RX_CFG2_LANE3),
    .RX_CTLE_CTRL_LANE0 (RX_CTLE_CTRL_LANE0),
    .RX_CTLE_CTRL_LANE1 (RX_CTLE_CTRL_LANE1),
    .RX_CTLE_CTRL_LANE2 (RX_CTLE_CTRL_LANE2),
    .RX_CTLE_CTRL_LANE3 (RX_CTLE_CTRL_LANE3),
    .RX_CTRL_OVRD_LANE0 (RX_CTRL_OVRD_LANE0),
    .RX_CTRL_OVRD_LANE1 (RX_CTRL_OVRD_LANE1),
    .RX_CTRL_OVRD_LANE2 (RX_CTRL_OVRD_LANE2),
    .RX_CTRL_OVRD_LANE3 (RX_CTRL_OVRD_LANE3),
    .RX_FABRIC_WIDTH0 (RX_FABRIC_WIDTH0),
    .RX_FABRIC_WIDTH1 (RX_FABRIC_WIDTH1),
    .RX_FABRIC_WIDTH2 (RX_FABRIC_WIDTH2),
    .RX_FABRIC_WIDTH3 (RX_FABRIC_WIDTH3),
    .RX_LOOP_CTRL_LANE0 (RX_LOOP_CTRL_LANE0),
    .RX_LOOP_CTRL_LANE1 (RX_LOOP_CTRL_LANE1),
    .RX_LOOP_CTRL_LANE2 (RX_LOOP_CTRL_LANE2),
    .RX_LOOP_CTRL_LANE3 (RX_LOOP_CTRL_LANE3),
    .RX_MVAL0_LANE0 (RX_MVAL0_LANE0),
    .RX_MVAL0_LANE1 (RX_MVAL0_LANE1),
    .RX_MVAL0_LANE2 (RX_MVAL0_LANE2),
    .RX_MVAL0_LANE3 (RX_MVAL0_LANE3),
    .RX_MVAL1_LANE0 (RX_MVAL1_LANE0),
    .RX_MVAL1_LANE1 (RX_MVAL1_LANE1),
    .RX_MVAL1_LANE2 (RX_MVAL1_LANE2),
    .RX_MVAL1_LANE3 (RX_MVAL1_LANE3),
    .RX_P0S_CTRL (RX_P0S_CTRL),
    .RX_P0_CTRL (RX_P0_CTRL),
    .RX_P1_CTRL (RX_P1_CTRL),
    .RX_P2_CTRL (RX_P2_CTRL),
    .RX_PI_CTRL0 (RX_PI_CTRL0),
    .RX_PI_CTRL1 (RX_PI_CTRL1),
    .SIM_GTHRESET_SPEEDUP (SIM_GTHRESET_SPEEDUP),
    .SIM_VERSION (SIM_VERSION),
    .SLICE_CFG (SLICE_CFG),
    .SLICE_NOISE_CTRL_0_LANE01 (SLICE_NOISE_CTRL_0_LANE01),
    .SLICE_NOISE_CTRL_0_LANE23 (SLICE_NOISE_CTRL_0_LANE23),
    .SLICE_NOISE_CTRL_1_LANE01 (SLICE_NOISE_CTRL_1_LANE01),
    .SLICE_NOISE_CTRL_1_LANE23 (SLICE_NOISE_CTRL_1_LANE23),
    .SLICE_NOISE_CTRL_2_LANE01 (SLICE_NOISE_CTRL_2_LANE01),
    .SLICE_NOISE_CTRL_2_LANE23 (SLICE_NOISE_CTRL_2_LANE23),
    .SLICE_TX_RESET_LANE01 (SLICE_TX_RESET_LANE01),
    .SLICE_TX_RESET_LANE23 (SLICE_TX_RESET_LANE23),
    .TERM_CTRL_LANE0 (TERM_CTRL_LANE0),
    .TERM_CTRL_LANE1 (TERM_CTRL_LANE1),
    .TERM_CTRL_LANE2 (TERM_CTRL_LANE2),
    .TERM_CTRL_LANE3 (TERM_CTRL_LANE3),
    .TX_CFG0_LANE0 (TX_CFG0_LANE0),
    .TX_CFG0_LANE1 (TX_CFG0_LANE1),
    .TX_CFG0_LANE2 (TX_CFG0_LANE2),
    .TX_CFG0_LANE3 (TX_CFG0_LANE3),
    .TX_CFG1_LANE0 (TX_CFG1_LANE0),
    .TX_CFG1_LANE1 (TX_CFG1_LANE1),
    .TX_CFG1_LANE2 (TX_CFG1_LANE2),
    .TX_CFG1_LANE3 (TX_CFG1_LANE3),
    .TX_CFG2_LANE0 (TX_CFG2_LANE0),
    .TX_CFG2_LANE1 (TX_CFG2_LANE1),
    .TX_CFG2_LANE2 (TX_CFG2_LANE2),
    .TX_CFG2_LANE3 (TX_CFG2_LANE3),
    .TX_CLK_SEL0_LANE0 (TX_CLK_SEL0_LANE0),
    .TX_CLK_SEL0_LANE1 (TX_CLK_SEL0_LANE1),
    .TX_CLK_SEL0_LANE2 (TX_CLK_SEL0_LANE2),
    .TX_CLK_SEL0_LANE3 (TX_CLK_SEL0_LANE3),
    .TX_CLK_SEL1_LANE0 (TX_CLK_SEL1_LANE0),
    .TX_CLK_SEL1_LANE1 (TX_CLK_SEL1_LANE1),
    .TX_CLK_SEL1_LANE2 (TX_CLK_SEL1_LANE2),
    .TX_CLK_SEL1_LANE3 (TX_CLK_SEL1_LANE3),
    .TX_DISABLE_LANE0 (TX_DISABLE_LANE0),
    .TX_DISABLE_LANE1 (TX_DISABLE_LANE1),
    .TX_DISABLE_LANE2 (TX_DISABLE_LANE2),
    .TX_DISABLE_LANE3 (TX_DISABLE_LANE3),
    .TX_FABRIC_WIDTH0 (TX_FABRIC_WIDTH0),
    .TX_FABRIC_WIDTH1 (TX_FABRIC_WIDTH1),
    .TX_FABRIC_WIDTH2 (TX_FABRIC_WIDTH2),
    .TX_FABRIC_WIDTH3 (TX_FABRIC_WIDTH3),
    .TX_P0P0S_CTRL (TX_P0P0S_CTRL),
    .TX_P1P2_CTRL (TX_P1P2_CTRL),
    .TX_PREEMPH_LANE0 (TX_PREEMPH_LANE0),
    .TX_PREEMPH_LANE1 (TX_PREEMPH_LANE1),
    .TX_PREEMPH_LANE2 (TX_PREEMPH_LANE2),
    .TX_PREEMPH_LANE3 (TX_PREEMPH_LANE3),
    .TX_PWR_RATE_OVRD_LANE0 (TX_PWR_RATE_OVRD_LANE0),
    .TX_PWR_RATE_OVRD_LANE1 (TX_PWR_RATE_OVRD_LANE1),
    .TX_PWR_RATE_OVRD_LANE2 (TX_PWR_RATE_OVRD_LANE2),
    .TX_PWR_RATE_OVRD_LANE3 (TX_PWR_RATE_OVRD_LANE3))

    B_GTHE1_QUAD_INST (
    .DRDY (delay_DRDY),
    .DRPDO (delay_DRPDO),
    .GTHINITDONE (delay_GTHINITDONE),
    .MGMTPCSRDACK (delay_MGMTPCSRDACK),
    .MGMTPCSRDDATA (delay_MGMTPCSRDDATA),
    .RXCODEERR0 (delay_RXCODEERR0),
    .RXCODEERR1 (delay_RXCODEERR1),
    .RXCODEERR2 (delay_RXCODEERR2),
    .RXCODEERR3 (delay_RXCODEERR3),
    .RXCTRL0 (delay_RXCTRL0),
    .RXCTRL1 (delay_RXCTRL1),
    .RXCTRL2 (delay_RXCTRL2),
    .RXCTRL3 (delay_RXCTRL3),
    .RXCTRLACK0 (delay_RXCTRLACK0),
    .RXCTRLACK1 (delay_RXCTRLACK1),
    .RXCTRLACK2 (delay_RXCTRLACK2),
    .RXCTRLACK3 (delay_RXCTRLACK3),
    .RXDATA0 (delay_RXDATA0),
    .RXDATA1 (delay_RXDATA1),
    .RXDATA2 (delay_RXDATA2),
    .RXDATA3 (delay_RXDATA3),
    .RXDATATAP0 (delay_RXDATATAP0),
    .RXDATATAP1 (delay_RXDATATAP1),
    .RXDATATAP2 (delay_RXDATATAP2),
    .RXDATATAP3 (delay_RXDATATAP3),
    .RXDISPERR0 (delay_RXDISPERR0),
    .RXDISPERR1 (delay_RXDISPERR1),
    .RXDISPERR2 (delay_RXDISPERR2),
    .RXDISPERR3 (delay_RXDISPERR3),
    .RXPCSCLKSMPL0 (delay_RXPCSCLKSMPL0),
    .RXPCSCLKSMPL1 (delay_RXPCSCLKSMPL1),
    .RXPCSCLKSMPL2 (delay_RXPCSCLKSMPL2),
    .RXPCSCLKSMPL3 (delay_RXPCSCLKSMPL3),
    .RXUSERCLKOUT0 (delay_RXUSERCLKOUT0),
    .RXUSERCLKOUT1 (delay_RXUSERCLKOUT1),
    .RXUSERCLKOUT2 (delay_RXUSERCLKOUT2),
    .RXUSERCLKOUT3 (delay_RXUSERCLKOUT3),
    .RXVALID0 (delay_RXVALID0),
    .RXVALID1 (delay_RXVALID1),
    .RXVALID2 (delay_RXVALID2),
    .RXVALID3 (delay_RXVALID3),
    .TSTPATH (delay_TSTPATH),
    .TSTREFCLKFAB (delay_TSTREFCLKFAB),
    .TSTREFCLKOUT (delay_TSTREFCLKOUT),
    .TXCTRLACK0 (delay_TXCTRLACK0),
    .TXCTRLACK1 (delay_TXCTRLACK1),
    .TXCTRLACK2 (delay_TXCTRLACK2),
    .TXCTRLACK3 (delay_TXCTRLACK3),
    .TXDATATAP10 (delay_TXDATATAP10),
    .TXDATATAP11 (delay_TXDATATAP11),
    .TXDATATAP12 (delay_TXDATATAP12),
    .TXDATATAP13 (delay_TXDATATAP13),
    .TXDATATAP20 (delay_TXDATATAP20),
    .TXDATATAP21 (delay_TXDATATAP21),
    .TXDATATAP22 (delay_TXDATATAP22),
    .TXDATATAP23 (delay_TXDATATAP23),
    .TXN0 (delay_TXN0),
    .TXN1 (delay_TXN1),
    .TXN2 (delay_TXN2),
    .TXN3 (delay_TXN3),
    .TXP0 (delay_TXP0),
    .TXP1 (delay_TXP1),
    .TXP2 (delay_TXP2),
    .TXP3 (delay_TXP3),
    .TXPCSCLKSMPL0 (delay_TXPCSCLKSMPL0),
    .TXPCSCLKSMPL1 (delay_TXPCSCLKSMPL1),
    .TXPCSCLKSMPL2 (delay_TXPCSCLKSMPL2),
    .TXPCSCLKSMPL3 (delay_TXPCSCLKSMPL3),
    .TXUSERCLKOUT0 (delay_TXUSERCLKOUT0),
    .TXUSERCLKOUT1 (delay_TXUSERCLKOUT1),
    .TXUSERCLKOUT2 (delay_TXUSERCLKOUT2),
    .TXUSERCLKOUT3 (delay_TXUSERCLKOUT3),
    .DADDR (delay_DADDR),
    .DCLK (delay_DCLK),
    .DEN (delay_DEN),
    .DFETRAINCTRL0 (delay_DFETRAINCTRL0),
    .DFETRAINCTRL1 (delay_DFETRAINCTRL1),
    .DFETRAINCTRL2 (delay_DFETRAINCTRL2),
    .DFETRAINCTRL3 (delay_DFETRAINCTRL3),
    .DI (delay_DI),
    .DISABLEDRP (delay_DISABLEDRP),
    .DWE (delay_DWE),
    .GTHINIT (delay_GTHINIT),
    .GTHRESET (delay_GTHRESET),
    .GTHX2LANE01 (delay_GTHX2LANE01),
    .GTHX2LANE23 (delay_GTHX2LANE23),
    .GTHX4LANE (delay_GTHX4LANE),
    .MGMTPCSLANESEL (delay_MGMTPCSLANESEL),
    .MGMTPCSMMDADDR (delay_MGMTPCSMMDADDR),
    .MGMTPCSREGADDR (delay_MGMTPCSREGADDR),
    .MGMTPCSREGRD (delay_MGMTPCSREGRD),
    .MGMTPCSREGWR (delay_MGMTPCSREGWR),
    .MGMTPCSWRDATA (delay_MGMTPCSWRDATA),
    .PLLPCSCLKDIV (delay_PLLPCSCLKDIV),
    .PLLREFCLKSEL (delay_PLLREFCLKSEL),
    .POWERDOWN0 (delay_POWERDOWN0),
    .POWERDOWN1 (delay_POWERDOWN1),
    .POWERDOWN2 (delay_POWERDOWN2),
    .POWERDOWN3 (delay_POWERDOWN3),
    .REFCLK (delay_REFCLK),
    .RXBUFRESET0 (delay_RXBUFRESET0),
    .RXBUFRESET1 (delay_RXBUFRESET1),
    .RXBUFRESET2 (delay_RXBUFRESET2),
    .RXBUFRESET3 (delay_RXBUFRESET3),
    .RXENCOMMADET0 (delay_RXENCOMMADET0),
    .RXENCOMMADET1 (delay_RXENCOMMADET1),
    .RXENCOMMADET2 (delay_RXENCOMMADET2),
    .RXENCOMMADET3 (delay_RXENCOMMADET3),
    .RXN0 (delay_RXN0),
    .RXN1 (delay_RXN1),
    .RXN2 (delay_RXN2),
    .RXN3 (delay_RXN3),
    .RXP0 (delay_RXP0),
    .RXP1 (delay_RXP1),
    .RXP2 (delay_RXP2),
    .RXP3 (delay_RXP3),
    .RXPOLARITY0 (delay_RXPOLARITY0),
    .RXPOLARITY1 (delay_RXPOLARITY1),
    .RXPOLARITY2 (delay_RXPOLARITY2),
    .RXPOLARITY3 (delay_RXPOLARITY3),
    .RXPOWERDOWN0 (delay_RXPOWERDOWN0),
    .RXPOWERDOWN1 (delay_RXPOWERDOWN1),
    .RXPOWERDOWN2 (delay_RXPOWERDOWN2),
    .RXPOWERDOWN3 (delay_RXPOWERDOWN3),
    .RXRATE0 (delay_RXRATE0),
    .RXRATE1 (delay_RXRATE1),
    .RXRATE2 (delay_RXRATE2),
    .RXRATE3 (delay_RXRATE3),
    .RXSLIP0 (delay_RXSLIP0),
    .RXSLIP1 (delay_RXSLIP1),
    .RXSLIP2 (delay_RXSLIP2),
    .RXSLIP3 (delay_RXSLIP3),
    .RXUSERCLKIN0 (delay_RXUSERCLKIN0),
    .RXUSERCLKIN1 (delay_RXUSERCLKIN1),
    .RXUSERCLKIN2 (delay_RXUSERCLKIN2),
    .RXUSERCLKIN3 (delay_RXUSERCLKIN3),
    .SAMPLERATE0 (delay_SAMPLERATE0),
    .SAMPLERATE1 (delay_SAMPLERATE1),
    .SAMPLERATE2 (delay_SAMPLERATE2),
    .SAMPLERATE3 (delay_SAMPLERATE3),
    .TXBUFRESET0 (delay_TXBUFRESET0),
    .TXBUFRESET1 (delay_TXBUFRESET1),
    .TXBUFRESET2 (delay_TXBUFRESET2),
    .TXBUFRESET3 (delay_TXBUFRESET3),
    .TXCTRL0 (delay_TXCTRL0),
    .TXCTRL1 (delay_TXCTRL1),
    .TXCTRL2 (delay_TXCTRL2),
    .TXCTRL3 (delay_TXCTRL3),
    .TXDATA0 (delay_TXDATA0),
    .TXDATA1 (delay_TXDATA1),
    .TXDATA2 (delay_TXDATA2),
    .TXDATA3 (delay_TXDATA3),
    .TXDATAMSB0 (delay_TXDATAMSB0),
    .TXDATAMSB1 (delay_TXDATAMSB1),
    .TXDATAMSB2 (delay_TXDATAMSB2),
    .TXDATAMSB3 (delay_TXDATAMSB3),
    .TXDEEMPH0 (delay_TXDEEMPH0),
    .TXDEEMPH1 (delay_TXDEEMPH1),
    .TXDEEMPH2 (delay_TXDEEMPH2),
    .TXDEEMPH3 (delay_TXDEEMPH3),
    .TXMARGIN0 (delay_TXMARGIN0),
    .TXMARGIN1 (delay_TXMARGIN1),
    .TXMARGIN2 (delay_TXMARGIN2),
    .TXMARGIN3 (delay_TXMARGIN3),
    .TXPOWERDOWN0 (delay_TXPOWERDOWN0),
    .TXPOWERDOWN1 (delay_TXPOWERDOWN1),
    .TXPOWERDOWN2 (delay_TXPOWERDOWN2),
    .TXPOWERDOWN3 (delay_TXPOWERDOWN3),
    .TXRATE0 (delay_TXRATE0),
    .TXRATE1 (delay_TXRATE1),
    .TXRATE2 (delay_TXRATE2),
    .TXRATE3 (delay_TXRATE3),
    .TXUSERCLKIN0 (delay_TXUSERCLKIN0),
    .TXUSERCLKIN1 (delay_TXUSERCLKIN1),
    .TXUSERCLKIN2 (delay_TXUSERCLKIN2),
    .TXUSERCLKIN3 (delay_TXUSERCLKIN3),
    .GSR(GSR)
  );

  specify
    $period (posedge DCLK, 0:0:0, notifier);
    $period (posedge REFCLK, 0:0:0, notifier);
    $period (posedge RXUSERCLKIN0, 0:0:0, notifier);
    $period (posedge RXUSERCLKIN1, 0:0:0, notifier);
    $period (posedge RXUSERCLKIN2, 0:0:0, notifier);
    $period (posedge RXUSERCLKIN3, 0:0:0, notifier);
    $period (posedge RXUSERCLKOUT0, 0:0:0, notifier);
    $period (posedge RXUSERCLKOUT1, 0:0:0, notifier);
    $period (posedge RXUSERCLKOUT2, 0:0:0, notifier);
    $period (posedge RXUSERCLKOUT3, 0:0:0, notifier);
    $period (posedge TSTREFCLKFAB, 0:0:0, notifier);
    $period (posedge TSTREFCLKOUT, 0:0:0, notifier);
    $period (posedge TXUSERCLKIN0, 0:0:0, notifier);
    $period (posedge TXUSERCLKIN1, 0:0:0, notifier);
    $period (posedge TXUSERCLKIN2, 0:0:0, notifier);
    $period (posedge TXUSERCLKIN3, 0:0:0, notifier);
    $period (posedge TXUSERCLKOUT0, 0:0:0, notifier);
    $period (posedge TXUSERCLKOUT1, 0:0:0, notifier);
    $period (posedge TXUSERCLKOUT2, 0:0:0, notifier);
    $period (posedge TXUSERCLKOUT3, 0:0:0, notifier);
    $setuphold (posedge DCLK, negedge DADDR[0], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_DADDR[0]);
    $setuphold (posedge DCLK, negedge DADDR[10], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_DADDR[10]);
    $setuphold (posedge DCLK, negedge DADDR[11], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_DADDR[11]);
    $setuphold (posedge DCLK, negedge DADDR[12], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_DADDR[12]);
    $setuphold (posedge DCLK, negedge DADDR[13], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_DADDR[13]);
    $setuphold (posedge DCLK, negedge DADDR[14], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_DADDR[14]);
    $setuphold (posedge DCLK, negedge DADDR[15], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_DADDR[15]);
    $setuphold (posedge DCLK, negedge DADDR[1], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_DADDR[1]);
    $setuphold (posedge DCLK, negedge DADDR[2], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_DADDR[2]);
    $setuphold (posedge DCLK, negedge DADDR[3], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_DADDR[3]);
    $setuphold (posedge DCLK, negedge DADDR[4], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_DADDR[4]);
    $setuphold (posedge DCLK, negedge DADDR[5], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_DADDR[5]);
    $setuphold (posedge DCLK, negedge DADDR[6], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_DADDR[6]);
    $setuphold (posedge DCLK, negedge DADDR[7], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_DADDR[7]);
    $setuphold (posedge DCLK, negedge DADDR[8], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_DADDR[8]);
    $setuphold (posedge DCLK, negedge DADDR[9], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_DADDR[9]);
    $setuphold (posedge DCLK, negedge DEN, 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_DEN);
    $setuphold (posedge DCLK, negedge DFETRAINCTRL0, 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_DFETRAINCTRL0);
    $setuphold (posedge DCLK, negedge DFETRAINCTRL1, 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_DFETRAINCTRL1);
    $setuphold (posedge DCLK, negedge DFETRAINCTRL2, 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_DFETRAINCTRL2);
    $setuphold (posedge DCLK, negedge DFETRAINCTRL3, 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_DFETRAINCTRL3);
    $setuphold (posedge DCLK, negedge DISABLEDRP, 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_DISABLEDRP);
    $setuphold (posedge DCLK, negedge DI[0], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_DI[0]);
    $setuphold (posedge DCLK, negedge DI[10], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_DI[10]);
    $setuphold (posedge DCLK, negedge DI[11], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_DI[11]);
    $setuphold (posedge DCLK, negedge DI[12], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_DI[12]);
    $setuphold (posedge DCLK, negedge DI[13], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_DI[13]);
    $setuphold (posedge DCLK, negedge DI[14], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_DI[14]);
    $setuphold (posedge DCLK, negedge DI[15], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_DI[15]);
    $setuphold (posedge DCLK, negedge DI[1], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_DI[1]);
    $setuphold (posedge DCLK, negedge DI[2], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_DI[2]);
    $setuphold (posedge DCLK, negedge DI[3], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_DI[3]);
    $setuphold (posedge DCLK, negedge DI[4], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_DI[4]);
    $setuphold (posedge DCLK, negedge DI[5], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_DI[5]);
    $setuphold (posedge DCLK, negedge DI[6], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_DI[6]);
    $setuphold (posedge DCLK, negedge DI[7], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_DI[7]);
    $setuphold (posedge DCLK, negedge DI[8], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_DI[8]);
    $setuphold (posedge DCLK, negedge DI[9], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_DI[9]);
    $setuphold (posedge DCLK, negedge DWE, 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_DWE);
    $setuphold (posedge DCLK, negedge GTHINIT, 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_GTHINIT);
    $setuphold (posedge DCLK, negedge MGMTPCSLANESEL[0], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_MGMTPCSLANESEL[0]);
    $setuphold (posedge DCLK, negedge MGMTPCSLANESEL[1], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_MGMTPCSLANESEL[1]);
    $setuphold (posedge DCLK, negedge MGMTPCSLANESEL[2], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_MGMTPCSLANESEL[2]);
    $setuphold (posedge DCLK, negedge MGMTPCSLANESEL[3], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_MGMTPCSLANESEL[3]);
    $setuphold (posedge DCLK, negedge MGMTPCSMMDADDR[0], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_MGMTPCSMMDADDR[0]);
    $setuphold (posedge DCLK, negedge MGMTPCSMMDADDR[1], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_MGMTPCSMMDADDR[1]);
    $setuphold (posedge DCLK, negedge MGMTPCSMMDADDR[2], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_MGMTPCSMMDADDR[2]);
    $setuphold (posedge DCLK, negedge MGMTPCSMMDADDR[3], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_MGMTPCSMMDADDR[3]);
    $setuphold (posedge DCLK, negedge MGMTPCSMMDADDR[4], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_MGMTPCSMMDADDR[4]);
    $setuphold (posedge DCLK, negedge MGMTPCSREGADDR[0], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_MGMTPCSREGADDR[0]);
    $setuphold (posedge DCLK, negedge MGMTPCSREGADDR[10], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_MGMTPCSREGADDR[10]);
    $setuphold (posedge DCLK, negedge MGMTPCSREGADDR[11], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_MGMTPCSREGADDR[11]);
    $setuphold (posedge DCLK, negedge MGMTPCSREGADDR[12], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_MGMTPCSREGADDR[12]);
    $setuphold (posedge DCLK, negedge MGMTPCSREGADDR[13], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_MGMTPCSREGADDR[13]);
    $setuphold (posedge DCLK, negedge MGMTPCSREGADDR[14], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_MGMTPCSREGADDR[14]);
    $setuphold (posedge DCLK, negedge MGMTPCSREGADDR[15], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_MGMTPCSREGADDR[15]);
    $setuphold (posedge DCLK, negedge MGMTPCSREGADDR[1], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_MGMTPCSREGADDR[1]);
    $setuphold (posedge DCLK, negedge MGMTPCSREGADDR[2], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_MGMTPCSREGADDR[2]);
    $setuphold (posedge DCLK, negedge MGMTPCSREGADDR[3], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_MGMTPCSREGADDR[3]);
    $setuphold (posedge DCLK, negedge MGMTPCSREGADDR[4], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_MGMTPCSREGADDR[4]);
    $setuphold (posedge DCLK, negedge MGMTPCSREGADDR[5], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_MGMTPCSREGADDR[5]);
    $setuphold (posedge DCLK, negedge MGMTPCSREGADDR[6], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_MGMTPCSREGADDR[6]);
    $setuphold (posedge DCLK, negedge MGMTPCSREGADDR[7], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_MGMTPCSREGADDR[7]);
    $setuphold (posedge DCLK, negedge MGMTPCSREGADDR[8], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_MGMTPCSREGADDR[8]);
    $setuphold (posedge DCLK, negedge MGMTPCSREGADDR[9], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_MGMTPCSREGADDR[9]);
    $setuphold (posedge DCLK, negedge MGMTPCSREGRD, 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_MGMTPCSREGRD);
    $setuphold (posedge DCLK, negedge MGMTPCSREGWR, 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_MGMTPCSREGWR);
    $setuphold (posedge DCLK, negedge MGMTPCSWRDATA[0], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_MGMTPCSWRDATA[0]);
    $setuphold (posedge DCLK, negedge MGMTPCSWRDATA[10], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_MGMTPCSWRDATA[10]);
    $setuphold (posedge DCLK, negedge MGMTPCSWRDATA[11], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_MGMTPCSWRDATA[11]);
    $setuphold (posedge DCLK, negedge MGMTPCSWRDATA[12], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_MGMTPCSWRDATA[12]);
    $setuphold (posedge DCLK, negedge MGMTPCSWRDATA[13], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_MGMTPCSWRDATA[13]);
    $setuphold (posedge DCLK, negedge MGMTPCSWRDATA[14], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_MGMTPCSWRDATA[14]);
    $setuphold (posedge DCLK, negedge MGMTPCSWRDATA[15], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_MGMTPCSWRDATA[15]);
    $setuphold (posedge DCLK, negedge MGMTPCSWRDATA[1], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_MGMTPCSWRDATA[1]);
    $setuphold (posedge DCLK, negedge MGMTPCSWRDATA[2], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_MGMTPCSWRDATA[2]);
    $setuphold (posedge DCLK, negedge MGMTPCSWRDATA[3], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_MGMTPCSWRDATA[3]);
    $setuphold (posedge DCLK, negedge MGMTPCSWRDATA[4], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_MGMTPCSWRDATA[4]);
    $setuphold (posedge DCLK, negedge MGMTPCSWRDATA[5], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_MGMTPCSWRDATA[5]);
    $setuphold (posedge DCLK, negedge MGMTPCSWRDATA[6], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_MGMTPCSWRDATA[6]);
    $setuphold (posedge DCLK, negedge MGMTPCSWRDATA[7], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_MGMTPCSWRDATA[7]);
    $setuphold (posedge DCLK, negedge MGMTPCSWRDATA[8], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_MGMTPCSWRDATA[8]);
    $setuphold (posedge DCLK, negedge MGMTPCSWRDATA[9], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_MGMTPCSWRDATA[9]);
    $setuphold (posedge DCLK, negedge PLLPCSCLKDIV[0], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_PLLPCSCLKDIV[0]);
    $setuphold (posedge DCLK, negedge PLLPCSCLKDIV[1], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_PLLPCSCLKDIV[1]);
    $setuphold (posedge DCLK, negedge PLLPCSCLKDIV[2], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_PLLPCSCLKDIV[2]);
    $setuphold (posedge DCLK, negedge PLLPCSCLKDIV[3], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_PLLPCSCLKDIV[3]);
    $setuphold (posedge DCLK, negedge PLLPCSCLKDIV[4], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_PLLPCSCLKDIV[4]);
    $setuphold (posedge DCLK, negedge PLLPCSCLKDIV[5], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_PLLPCSCLKDIV[5]);
    $setuphold (posedge DCLK, posedge DADDR[0], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_DADDR[0]);
    $setuphold (posedge DCLK, posedge DADDR[10], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_DADDR[10]);
    $setuphold (posedge DCLK, posedge DADDR[11], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_DADDR[11]);
    $setuphold (posedge DCLK, posedge DADDR[12], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_DADDR[12]);
    $setuphold (posedge DCLK, posedge DADDR[13], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_DADDR[13]);
    $setuphold (posedge DCLK, posedge DADDR[14], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_DADDR[14]);
    $setuphold (posedge DCLK, posedge DADDR[15], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_DADDR[15]);
    $setuphold (posedge DCLK, posedge DADDR[1], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_DADDR[1]);
    $setuphold (posedge DCLK, posedge DADDR[2], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_DADDR[2]);
    $setuphold (posedge DCLK, posedge DADDR[3], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_DADDR[3]);
    $setuphold (posedge DCLK, posedge DADDR[4], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_DADDR[4]);
    $setuphold (posedge DCLK, posedge DADDR[5], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_DADDR[5]);
    $setuphold (posedge DCLK, posedge DADDR[6], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_DADDR[6]);
    $setuphold (posedge DCLK, posedge DADDR[7], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_DADDR[7]);
    $setuphold (posedge DCLK, posedge DADDR[8], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_DADDR[8]);
    $setuphold (posedge DCLK, posedge DADDR[9], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_DADDR[9]);
    $setuphold (posedge DCLK, posedge DEN, 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_DEN);
    $setuphold (posedge DCLK, posedge DFETRAINCTRL0, 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_DFETRAINCTRL0);
    $setuphold (posedge DCLK, posedge DFETRAINCTRL1, 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_DFETRAINCTRL1);
    $setuphold (posedge DCLK, posedge DFETRAINCTRL2, 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_DFETRAINCTRL2);
    $setuphold (posedge DCLK, posedge DFETRAINCTRL3, 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_DFETRAINCTRL3);
    $setuphold (posedge DCLK, posedge DISABLEDRP, 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_DISABLEDRP);
    $setuphold (posedge DCLK, posedge DI[0], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_DI[0]);
    $setuphold (posedge DCLK, posedge DI[10], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_DI[10]);
    $setuphold (posedge DCLK, posedge DI[11], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_DI[11]);
    $setuphold (posedge DCLK, posedge DI[12], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_DI[12]);
    $setuphold (posedge DCLK, posedge DI[13], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_DI[13]);
    $setuphold (posedge DCLK, posedge DI[14], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_DI[14]);
    $setuphold (posedge DCLK, posedge DI[15], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_DI[15]);
    $setuphold (posedge DCLK, posedge DI[1], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_DI[1]);
    $setuphold (posedge DCLK, posedge DI[2], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_DI[2]);
    $setuphold (posedge DCLK, posedge DI[3], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_DI[3]);
    $setuphold (posedge DCLK, posedge DI[4], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_DI[4]);
    $setuphold (posedge DCLK, posedge DI[5], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_DI[5]);
    $setuphold (posedge DCLK, posedge DI[6], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_DI[6]);
    $setuphold (posedge DCLK, posedge DI[7], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_DI[7]);
    $setuphold (posedge DCLK, posedge DI[8], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_DI[8]);
    $setuphold (posedge DCLK, posedge DI[9], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_DI[9]);
    $setuphold (posedge DCLK, posedge DWE, 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_DWE);
    $setuphold (posedge DCLK, posedge GTHINIT, 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_GTHINIT);
    $setuphold (posedge DCLK, posedge MGMTPCSLANESEL[0], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_MGMTPCSLANESEL[0]);
    $setuphold (posedge DCLK, posedge MGMTPCSLANESEL[1], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_MGMTPCSLANESEL[1]);
    $setuphold (posedge DCLK, posedge MGMTPCSLANESEL[2], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_MGMTPCSLANESEL[2]);
    $setuphold (posedge DCLK, posedge MGMTPCSLANESEL[3], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_MGMTPCSLANESEL[3]);
    $setuphold (posedge DCLK, posedge MGMTPCSMMDADDR[0], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_MGMTPCSMMDADDR[0]);
    $setuphold (posedge DCLK, posedge MGMTPCSMMDADDR[1], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_MGMTPCSMMDADDR[1]);
    $setuphold (posedge DCLK, posedge MGMTPCSMMDADDR[2], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_MGMTPCSMMDADDR[2]);
    $setuphold (posedge DCLK, posedge MGMTPCSMMDADDR[3], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_MGMTPCSMMDADDR[3]);
    $setuphold (posedge DCLK, posedge MGMTPCSMMDADDR[4], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_MGMTPCSMMDADDR[4]);
    $setuphold (posedge DCLK, posedge MGMTPCSREGADDR[0], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_MGMTPCSREGADDR[0]);
    $setuphold (posedge DCLK, posedge MGMTPCSREGADDR[10], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_MGMTPCSREGADDR[10]);
    $setuphold (posedge DCLK, posedge MGMTPCSREGADDR[11], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_MGMTPCSREGADDR[11]);
    $setuphold (posedge DCLK, posedge MGMTPCSREGADDR[12], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_MGMTPCSREGADDR[12]);
    $setuphold (posedge DCLK, posedge MGMTPCSREGADDR[13], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_MGMTPCSREGADDR[13]);
    $setuphold (posedge DCLK, posedge MGMTPCSREGADDR[14], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_MGMTPCSREGADDR[14]);
    $setuphold (posedge DCLK, posedge MGMTPCSREGADDR[15], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_MGMTPCSREGADDR[15]);
    $setuphold (posedge DCLK, posedge MGMTPCSREGADDR[1], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_MGMTPCSREGADDR[1]);
    $setuphold (posedge DCLK, posedge MGMTPCSREGADDR[2], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_MGMTPCSREGADDR[2]);
    $setuphold (posedge DCLK, posedge MGMTPCSREGADDR[3], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_MGMTPCSREGADDR[3]);
    $setuphold (posedge DCLK, posedge MGMTPCSREGADDR[4], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_MGMTPCSREGADDR[4]);
    $setuphold (posedge DCLK, posedge MGMTPCSREGADDR[5], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_MGMTPCSREGADDR[5]);
    $setuphold (posedge DCLK, posedge MGMTPCSREGADDR[6], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_MGMTPCSREGADDR[6]);
    $setuphold (posedge DCLK, posedge MGMTPCSREGADDR[7], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_MGMTPCSREGADDR[7]);
    $setuphold (posedge DCLK, posedge MGMTPCSREGADDR[8], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_MGMTPCSREGADDR[8]);
    $setuphold (posedge DCLK, posedge MGMTPCSREGADDR[9], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_MGMTPCSREGADDR[9]);
    $setuphold (posedge DCLK, posedge MGMTPCSREGRD, 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_MGMTPCSREGRD);
    $setuphold (posedge DCLK, posedge MGMTPCSREGWR, 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_MGMTPCSREGWR);
    $setuphold (posedge DCLK, posedge MGMTPCSWRDATA[0], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_MGMTPCSWRDATA[0]);
    $setuphold (posedge DCLK, posedge MGMTPCSWRDATA[10], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_MGMTPCSWRDATA[10]);
    $setuphold (posedge DCLK, posedge MGMTPCSWRDATA[11], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_MGMTPCSWRDATA[11]);
    $setuphold (posedge DCLK, posedge MGMTPCSWRDATA[12], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_MGMTPCSWRDATA[12]);
    $setuphold (posedge DCLK, posedge MGMTPCSWRDATA[13], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_MGMTPCSWRDATA[13]);
    $setuphold (posedge DCLK, posedge MGMTPCSWRDATA[14], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_MGMTPCSWRDATA[14]);
    $setuphold (posedge DCLK, posedge MGMTPCSWRDATA[15], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_MGMTPCSWRDATA[15]);
    $setuphold (posedge DCLK, posedge MGMTPCSWRDATA[1], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_MGMTPCSWRDATA[1]);
    $setuphold (posedge DCLK, posedge MGMTPCSWRDATA[2], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_MGMTPCSWRDATA[2]);
    $setuphold (posedge DCLK, posedge MGMTPCSWRDATA[3], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_MGMTPCSWRDATA[3]);
    $setuphold (posedge DCLK, posedge MGMTPCSWRDATA[4], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_MGMTPCSWRDATA[4]);
    $setuphold (posedge DCLK, posedge MGMTPCSWRDATA[5], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_MGMTPCSWRDATA[5]);
    $setuphold (posedge DCLK, posedge MGMTPCSWRDATA[6], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_MGMTPCSWRDATA[6]);
    $setuphold (posedge DCLK, posedge MGMTPCSWRDATA[7], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_MGMTPCSWRDATA[7]);
    $setuphold (posedge DCLK, posedge MGMTPCSWRDATA[8], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_MGMTPCSWRDATA[8]);
    $setuphold (posedge DCLK, posedge MGMTPCSWRDATA[9], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_MGMTPCSWRDATA[9]);
    $setuphold (posedge DCLK, posedge PLLPCSCLKDIV[0], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_PLLPCSCLKDIV[0]);
    $setuphold (posedge DCLK, posedge PLLPCSCLKDIV[1], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_PLLPCSCLKDIV[1]);
    $setuphold (posedge DCLK, posedge PLLPCSCLKDIV[2], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_PLLPCSCLKDIV[2]);
    $setuphold (posedge DCLK, posedge PLLPCSCLKDIV[3], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_PLLPCSCLKDIV[3]);
    $setuphold (posedge DCLK, posedge PLLPCSCLKDIV[4], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_PLLPCSCLKDIV[4]);
    $setuphold (posedge DCLK, posedge PLLPCSCLKDIV[5], 0:0:0, 0:0:0, notifier,,, delay_DCLK, delay_PLLPCSCLKDIV[5]);
    $setuphold (posedge RXUSERCLKIN0, negedge RXBUFRESET0, 0:0:0, 0:0:0, notifier,,, delay_RXUSERCLKIN0, delay_RXBUFRESET0);
    $setuphold (posedge RXUSERCLKIN0, negedge RXENCOMMADET0, 0:0:0, 0:0:0, notifier,,, delay_RXUSERCLKIN0, delay_RXENCOMMADET0);
    $setuphold (posedge RXUSERCLKIN0, negedge RXPOLARITY0, 0:0:0, 0:0:0, notifier,,, delay_RXUSERCLKIN0, delay_RXPOLARITY0);
    $setuphold (posedge RXUSERCLKIN0, posedge RXBUFRESET0, 0:0:0, 0:0:0, notifier,,, delay_RXUSERCLKIN0, delay_RXBUFRESET0);
    $setuphold (posedge RXUSERCLKIN0, posedge RXENCOMMADET0, 0:0:0, 0:0:0, notifier,,, delay_RXUSERCLKIN0, delay_RXENCOMMADET0);
    $setuphold (posedge RXUSERCLKIN0, posedge RXPOLARITY0, 0:0:0, 0:0:0, notifier,,, delay_RXUSERCLKIN0, delay_RXPOLARITY0);
    $setuphold (posedge RXUSERCLKIN1, negedge RXBUFRESET1, 0:0:0, 0:0:0, notifier,,, delay_RXUSERCLKIN1, delay_RXBUFRESET1);
    $setuphold (posedge RXUSERCLKIN1, negedge RXENCOMMADET1, 0:0:0, 0:0:0, notifier,,, delay_RXUSERCLKIN1, delay_RXENCOMMADET1);
    $setuphold (posedge RXUSERCLKIN1, negedge RXPOLARITY1, 0:0:0, 0:0:0, notifier,,, delay_RXUSERCLKIN1, delay_RXPOLARITY1);
    $setuphold (posedge RXUSERCLKIN1, posedge RXBUFRESET1, 0:0:0, 0:0:0, notifier,,, delay_RXUSERCLKIN1, delay_RXBUFRESET1);
    $setuphold (posedge RXUSERCLKIN1, posedge RXENCOMMADET1, 0:0:0, 0:0:0, notifier,,, delay_RXUSERCLKIN1, delay_RXENCOMMADET1);
    $setuphold (posedge RXUSERCLKIN1, posedge RXPOLARITY1, 0:0:0, 0:0:0, notifier,,, delay_RXUSERCLKIN1, delay_RXPOLARITY1);
    $setuphold (posedge RXUSERCLKIN2, negedge RXBUFRESET2, 0:0:0, 0:0:0, notifier,,, delay_RXUSERCLKIN2, delay_RXBUFRESET2);
    $setuphold (posedge RXUSERCLKIN2, negedge RXENCOMMADET2, 0:0:0, 0:0:0, notifier,,, delay_RXUSERCLKIN2, delay_RXENCOMMADET2);
    $setuphold (posedge RXUSERCLKIN2, negedge RXPOLARITY2, 0:0:0, 0:0:0, notifier,,, delay_RXUSERCLKIN2, delay_RXPOLARITY2);
    $setuphold (posedge RXUSERCLKIN2, posedge RXBUFRESET2, 0:0:0, 0:0:0, notifier,,, delay_RXUSERCLKIN2, delay_RXBUFRESET2);
    $setuphold (posedge RXUSERCLKIN2, posedge RXENCOMMADET2, 0:0:0, 0:0:0, notifier,,, delay_RXUSERCLKIN2, delay_RXENCOMMADET2);
    $setuphold (posedge RXUSERCLKIN2, posedge RXPOLARITY2, 0:0:0, 0:0:0, notifier,,, delay_RXUSERCLKIN2, delay_RXPOLARITY2);
    $setuphold (posedge RXUSERCLKIN3, negedge RXBUFRESET3, 0:0:0, 0:0:0, notifier,,, delay_RXUSERCLKIN3, delay_RXBUFRESET3);
    $setuphold (posedge RXUSERCLKIN3, negedge RXENCOMMADET3, 0:0:0, 0:0:0, notifier,,, delay_RXUSERCLKIN3, delay_RXENCOMMADET3);
    $setuphold (posedge RXUSERCLKIN3, negedge RXPOLARITY3, 0:0:0, 0:0:0, notifier,,, delay_RXUSERCLKIN3, delay_RXPOLARITY3);
    $setuphold (posedge RXUSERCLKIN3, posedge RXBUFRESET3, 0:0:0, 0:0:0, notifier,,, delay_RXUSERCLKIN3, delay_RXBUFRESET3);
    $setuphold (posedge RXUSERCLKIN3, posedge RXENCOMMADET3, 0:0:0, 0:0:0, notifier,,, delay_RXUSERCLKIN3, delay_RXENCOMMADET3);
    $setuphold (posedge RXUSERCLKIN3, posedge RXPOLARITY3, 0:0:0, 0:0:0, notifier,,, delay_RXUSERCLKIN3, delay_RXPOLARITY3);
    $setuphold (posedge TXUSERCLKIN0, negedge RXPOWERDOWN0[0], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_RXPOWERDOWN0[0]);
    $setuphold (posedge TXUSERCLKIN0, negedge RXPOWERDOWN0[1], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_RXPOWERDOWN0[1]);
    $setuphold (posedge TXUSERCLKIN0, negedge RXRATE0[0], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_RXRATE0[0]);
    $setuphold (posedge TXUSERCLKIN0, negedge RXRATE0[1], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_RXRATE0[1]);
    $setuphold (posedge TXUSERCLKIN0, negedge SAMPLERATE0[0], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_SAMPLERATE0[0]);
    $setuphold (posedge TXUSERCLKIN0, negedge SAMPLERATE0[1], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_SAMPLERATE0[1]);
    $setuphold (posedge TXUSERCLKIN0, negedge SAMPLERATE0[2], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_SAMPLERATE0[2]);
    $setuphold (posedge TXUSERCLKIN0, negedge TXBUFRESET0, 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXBUFRESET0);
    $setuphold (posedge TXUSERCLKIN0, negedge TXCTRL0[0], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXCTRL0[0]);
    $setuphold (posedge TXUSERCLKIN0, negedge TXCTRL0[1], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXCTRL0[1]);
    $setuphold (posedge TXUSERCLKIN0, negedge TXCTRL0[2], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXCTRL0[2]);
    $setuphold (posedge TXUSERCLKIN0, negedge TXCTRL0[3], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXCTRL0[3]);
    $setuphold (posedge TXUSERCLKIN0, negedge TXCTRL0[4], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXCTRL0[4]);
    $setuphold (posedge TXUSERCLKIN0, negedge TXCTRL0[5], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXCTRL0[5]);
    $setuphold (posedge TXUSERCLKIN0, negedge TXCTRL0[6], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXCTRL0[6]);
    $setuphold (posedge TXUSERCLKIN0, negedge TXCTRL0[7], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXCTRL0[7]);
    $setuphold (posedge TXUSERCLKIN0, negedge TXDATA0[0], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXDATA0[0]);
    $setuphold (posedge TXUSERCLKIN0, negedge TXDATA0[10], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXDATA0[10]);
    $setuphold (posedge TXUSERCLKIN0, negedge TXDATA0[11], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXDATA0[11]);
    $setuphold (posedge TXUSERCLKIN0, negedge TXDATA0[12], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXDATA0[12]);
    $setuphold (posedge TXUSERCLKIN0, negedge TXDATA0[13], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXDATA0[13]);
    $setuphold (posedge TXUSERCLKIN0, negedge TXDATA0[14], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXDATA0[14]);
    $setuphold (posedge TXUSERCLKIN0, negedge TXDATA0[15], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXDATA0[15]);
    $setuphold (posedge TXUSERCLKIN0, negedge TXDATA0[16], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXDATA0[16]);
    $setuphold (posedge TXUSERCLKIN0, negedge TXDATA0[17], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXDATA0[17]);
    $setuphold (posedge TXUSERCLKIN0, negedge TXDATA0[18], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXDATA0[18]);
    $setuphold (posedge TXUSERCLKIN0, negedge TXDATA0[19], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXDATA0[19]);
    $setuphold (posedge TXUSERCLKIN0, negedge TXDATA0[1], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXDATA0[1]);
    $setuphold (posedge TXUSERCLKIN0, negedge TXDATA0[20], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXDATA0[20]);
    $setuphold (posedge TXUSERCLKIN0, negedge TXDATA0[21], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXDATA0[21]);
    $setuphold (posedge TXUSERCLKIN0, negedge TXDATA0[22], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXDATA0[22]);
    $setuphold (posedge TXUSERCLKIN0, negedge TXDATA0[23], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXDATA0[23]);
    $setuphold (posedge TXUSERCLKIN0, negedge TXDATA0[24], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXDATA0[24]);
    $setuphold (posedge TXUSERCLKIN0, negedge TXDATA0[25], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXDATA0[25]);
    $setuphold (posedge TXUSERCLKIN0, negedge TXDATA0[26], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXDATA0[26]);
    $setuphold (posedge TXUSERCLKIN0, negedge TXDATA0[27], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXDATA0[27]);
    $setuphold (posedge TXUSERCLKIN0, negedge TXDATA0[28], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXDATA0[28]);
    $setuphold (posedge TXUSERCLKIN0, negedge TXDATA0[29], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXDATA0[29]);
    $setuphold (posedge TXUSERCLKIN0, negedge TXDATA0[2], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXDATA0[2]);
    $setuphold (posedge TXUSERCLKIN0, negedge TXDATA0[30], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXDATA0[30]);
    $setuphold (posedge TXUSERCLKIN0, negedge TXDATA0[31], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXDATA0[31]);
    $setuphold (posedge TXUSERCLKIN0, negedge TXDATA0[32], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXDATA0[32]);
    $setuphold (posedge TXUSERCLKIN0, negedge TXDATA0[33], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXDATA0[33]);
    $setuphold (posedge TXUSERCLKIN0, negedge TXDATA0[34], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXDATA0[34]);
    $setuphold (posedge TXUSERCLKIN0, negedge TXDATA0[35], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXDATA0[35]);
    $setuphold (posedge TXUSERCLKIN0, negedge TXDATA0[36], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXDATA0[36]);
    $setuphold (posedge TXUSERCLKIN0, negedge TXDATA0[37], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXDATA0[37]);
    $setuphold (posedge TXUSERCLKIN0, negedge TXDATA0[38], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXDATA0[38]);
    $setuphold (posedge TXUSERCLKIN0, negedge TXDATA0[39], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXDATA0[39]);
    $setuphold (posedge TXUSERCLKIN0, negedge TXDATA0[3], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXDATA0[3]);
    $setuphold (posedge TXUSERCLKIN0, negedge TXDATA0[40], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXDATA0[40]);
    $setuphold (posedge TXUSERCLKIN0, negedge TXDATA0[41], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXDATA0[41]);
    $setuphold (posedge TXUSERCLKIN0, negedge TXDATA0[42], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXDATA0[42]);
    $setuphold (posedge TXUSERCLKIN0, negedge TXDATA0[43], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXDATA0[43]);
    $setuphold (posedge TXUSERCLKIN0, negedge TXDATA0[44], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXDATA0[44]);
    $setuphold (posedge TXUSERCLKIN0, negedge TXDATA0[45], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXDATA0[45]);
    $setuphold (posedge TXUSERCLKIN0, negedge TXDATA0[46], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXDATA0[46]);
    $setuphold (posedge TXUSERCLKIN0, negedge TXDATA0[47], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXDATA0[47]);
    $setuphold (posedge TXUSERCLKIN0, negedge TXDATA0[48], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXDATA0[48]);
    $setuphold (posedge TXUSERCLKIN0, negedge TXDATA0[49], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXDATA0[49]);
    $setuphold (posedge TXUSERCLKIN0, negedge TXDATA0[4], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXDATA0[4]);
    $setuphold (posedge TXUSERCLKIN0, negedge TXDATA0[50], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXDATA0[50]);
    $setuphold (posedge TXUSERCLKIN0, negedge TXDATA0[51], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXDATA0[51]);
    $setuphold (posedge TXUSERCLKIN0, negedge TXDATA0[52], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXDATA0[52]);
    $setuphold (posedge TXUSERCLKIN0, negedge TXDATA0[53], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXDATA0[53]);
    $setuphold (posedge TXUSERCLKIN0, negedge TXDATA0[54], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXDATA0[54]);
    $setuphold (posedge TXUSERCLKIN0, negedge TXDATA0[55], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXDATA0[55]);
    $setuphold (posedge TXUSERCLKIN0, negedge TXDATA0[56], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXDATA0[56]);
    $setuphold (posedge TXUSERCLKIN0, negedge TXDATA0[57], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXDATA0[57]);
    $setuphold (posedge TXUSERCLKIN0, negedge TXDATA0[58], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXDATA0[58]);
    $setuphold (posedge TXUSERCLKIN0, negedge TXDATA0[59], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXDATA0[59]);
    $setuphold (posedge TXUSERCLKIN0, negedge TXDATA0[5], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXDATA0[5]);
    $setuphold (posedge TXUSERCLKIN0, negedge TXDATA0[60], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXDATA0[60]);
    $setuphold (posedge TXUSERCLKIN0, negedge TXDATA0[61], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXDATA0[61]);
    $setuphold (posedge TXUSERCLKIN0, negedge TXDATA0[62], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXDATA0[62]);
    $setuphold (posedge TXUSERCLKIN0, negedge TXDATA0[63], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXDATA0[63]);
    $setuphold (posedge TXUSERCLKIN0, negedge TXDATA0[6], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXDATA0[6]);
    $setuphold (posedge TXUSERCLKIN0, negedge TXDATA0[7], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXDATA0[7]);
    $setuphold (posedge TXUSERCLKIN0, negedge TXDATA0[8], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXDATA0[8]);
    $setuphold (posedge TXUSERCLKIN0, negedge TXDATA0[9], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXDATA0[9]);
    $setuphold (posedge TXUSERCLKIN0, negedge TXDATAMSB0[0], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXDATAMSB0[0]);
    $setuphold (posedge TXUSERCLKIN0, negedge TXDATAMSB0[1], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXDATAMSB0[1]);
    $setuphold (posedge TXUSERCLKIN0, negedge TXDATAMSB0[2], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXDATAMSB0[2]);
    $setuphold (posedge TXUSERCLKIN0, negedge TXDATAMSB0[3], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXDATAMSB0[3]);
    $setuphold (posedge TXUSERCLKIN0, negedge TXDATAMSB0[4], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXDATAMSB0[4]);
    $setuphold (posedge TXUSERCLKIN0, negedge TXDATAMSB0[5], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXDATAMSB0[5]);
    $setuphold (posedge TXUSERCLKIN0, negedge TXDATAMSB0[6], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXDATAMSB0[6]);
    $setuphold (posedge TXUSERCLKIN0, negedge TXDATAMSB0[7], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXDATAMSB0[7]);
    $setuphold (posedge TXUSERCLKIN0, negedge TXDEEMPH0, 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXDEEMPH0);
    $setuphold (posedge TXUSERCLKIN0, negedge TXMARGIN0[0], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXMARGIN0[0]);
    $setuphold (posedge TXUSERCLKIN0, negedge TXMARGIN0[1], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXMARGIN0[1]);
    $setuphold (posedge TXUSERCLKIN0, negedge TXMARGIN0[2], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXMARGIN0[2]);
    $setuphold (posedge TXUSERCLKIN0, negedge TXPOWERDOWN0[0], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXPOWERDOWN0[0]);
    $setuphold (posedge TXUSERCLKIN0, negedge TXPOWERDOWN0[1], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXPOWERDOWN0[1]);
    $setuphold (posedge TXUSERCLKIN0, negedge TXRATE0[0], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXRATE0[0]);
    $setuphold (posedge TXUSERCLKIN0, negedge TXRATE0[1], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXRATE0[1]);
    $setuphold (posedge TXUSERCLKIN0, posedge RXPOWERDOWN0[0], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_RXPOWERDOWN0[0]);
    $setuphold (posedge TXUSERCLKIN0, posedge RXPOWERDOWN0[1], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_RXPOWERDOWN0[1]);
    $setuphold (posedge TXUSERCLKIN0, posedge RXRATE0[0], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_RXRATE0[0]);
    $setuphold (posedge TXUSERCLKIN0, posedge RXRATE0[1], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_RXRATE0[1]);
    $setuphold (posedge TXUSERCLKIN0, posedge SAMPLERATE0[0], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_SAMPLERATE0[0]);
    $setuphold (posedge TXUSERCLKIN0, posedge SAMPLERATE0[1], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_SAMPLERATE0[1]);
    $setuphold (posedge TXUSERCLKIN0, posedge SAMPLERATE0[2], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_SAMPLERATE0[2]);
    $setuphold (posedge TXUSERCLKIN0, posedge TXBUFRESET0, 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXBUFRESET0);
    $setuphold (posedge TXUSERCLKIN0, posedge TXCTRL0[0], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXCTRL0[0]);
    $setuphold (posedge TXUSERCLKIN0, posedge TXCTRL0[1], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXCTRL0[1]);
    $setuphold (posedge TXUSERCLKIN0, posedge TXCTRL0[2], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXCTRL0[2]);
    $setuphold (posedge TXUSERCLKIN0, posedge TXCTRL0[3], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXCTRL0[3]);
    $setuphold (posedge TXUSERCLKIN0, posedge TXCTRL0[4], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXCTRL0[4]);
    $setuphold (posedge TXUSERCLKIN0, posedge TXCTRL0[5], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXCTRL0[5]);
    $setuphold (posedge TXUSERCLKIN0, posedge TXCTRL0[6], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXCTRL0[6]);
    $setuphold (posedge TXUSERCLKIN0, posedge TXCTRL0[7], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXCTRL0[7]);
    $setuphold (posedge TXUSERCLKIN0, posedge TXDATA0[0], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXDATA0[0]);
    $setuphold (posedge TXUSERCLKIN0, posedge TXDATA0[10], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXDATA0[10]);
    $setuphold (posedge TXUSERCLKIN0, posedge TXDATA0[11], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXDATA0[11]);
    $setuphold (posedge TXUSERCLKIN0, posedge TXDATA0[12], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXDATA0[12]);
    $setuphold (posedge TXUSERCLKIN0, posedge TXDATA0[13], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXDATA0[13]);
    $setuphold (posedge TXUSERCLKIN0, posedge TXDATA0[14], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXDATA0[14]);
    $setuphold (posedge TXUSERCLKIN0, posedge TXDATA0[15], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXDATA0[15]);
    $setuphold (posedge TXUSERCLKIN0, posedge TXDATA0[16], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXDATA0[16]);
    $setuphold (posedge TXUSERCLKIN0, posedge TXDATA0[17], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXDATA0[17]);
    $setuphold (posedge TXUSERCLKIN0, posedge TXDATA0[18], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXDATA0[18]);
    $setuphold (posedge TXUSERCLKIN0, posedge TXDATA0[19], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXDATA0[19]);
    $setuphold (posedge TXUSERCLKIN0, posedge TXDATA0[1], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXDATA0[1]);
    $setuphold (posedge TXUSERCLKIN0, posedge TXDATA0[20], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXDATA0[20]);
    $setuphold (posedge TXUSERCLKIN0, posedge TXDATA0[21], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXDATA0[21]);
    $setuphold (posedge TXUSERCLKIN0, posedge TXDATA0[22], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXDATA0[22]);
    $setuphold (posedge TXUSERCLKIN0, posedge TXDATA0[23], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXDATA0[23]);
    $setuphold (posedge TXUSERCLKIN0, posedge TXDATA0[24], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXDATA0[24]);
    $setuphold (posedge TXUSERCLKIN0, posedge TXDATA0[25], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXDATA0[25]);
    $setuphold (posedge TXUSERCLKIN0, posedge TXDATA0[26], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXDATA0[26]);
    $setuphold (posedge TXUSERCLKIN0, posedge TXDATA0[27], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXDATA0[27]);
    $setuphold (posedge TXUSERCLKIN0, posedge TXDATA0[28], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXDATA0[28]);
    $setuphold (posedge TXUSERCLKIN0, posedge TXDATA0[29], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXDATA0[29]);
    $setuphold (posedge TXUSERCLKIN0, posedge TXDATA0[2], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXDATA0[2]);
    $setuphold (posedge TXUSERCLKIN0, posedge TXDATA0[30], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXDATA0[30]);
    $setuphold (posedge TXUSERCLKIN0, posedge TXDATA0[31], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXDATA0[31]);
    $setuphold (posedge TXUSERCLKIN0, posedge TXDATA0[32], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXDATA0[32]);
    $setuphold (posedge TXUSERCLKIN0, posedge TXDATA0[33], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXDATA0[33]);
    $setuphold (posedge TXUSERCLKIN0, posedge TXDATA0[34], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXDATA0[34]);
    $setuphold (posedge TXUSERCLKIN0, posedge TXDATA0[35], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXDATA0[35]);
    $setuphold (posedge TXUSERCLKIN0, posedge TXDATA0[36], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXDATA0[36]);
    $setuphold (posedge TXUSERCLKIN0, posedge TXDATA0[37], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXDATA0[37]);
    $setuphold (posedge TXUSERCLKIN0, posedge TXDATA0[38], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXDATA0[38]);
    $setuphold (posedge TXUSERCLKIN0, posedge TXDATA0[39], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXDATA0[39]);
    $setuphold (posedge TXUSERCLKIN0, posedge TXDATA0[3], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXDATA0[3]);
    $setuphold (posedge TXUSERCLKIN0, posedge TXDATA0[40], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXDATA0[40]);
    $setuphold (posedge TXUSERCLKIN0, posedge TXDATA0[41], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXDATA0[41]);
    $setuphold (posedge TXUSERCLKIN0, posedge TXDATA0[42], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXDATA0[42]);
    $setuphold (posedge TXUSERCLKIN0, posedge TXDATA0[43], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXDATA0[43]);
    $setuphold (posedge TXUSERCLKIN0, posedge TXDATA0[44], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXDATA0[44]);
    $setuphold (posedge TXUSERCLKIN0, posedge TXDATA0[45], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXDATA0[45]);
    $setuphold (posedge TXUSERCLKIN0, posedge TXDATA0[46], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXDATA0[46]);
    $setuphold (posedge TXUSERCLKIN0, posedge TXDATA0[47], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXDATA0[47]);
    $setuphold (posedge TXUSERCLKIN0, posedge TXDATA0[48], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXDATA0[48]);
    $setuphold (posedge TXUSERCLKIN0, posedge TXDATA0[49], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXDATA0[49]);
    $setuphold (posedge TXUSERCLKIN0, posedge TXDATA0[4], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXDATA0[4]);
    $setuphold (posedge TXUSERCLKIN0, posedge TXDATA0[50], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXDATA0[50]);
    $setuphold (posedge TXUSERCLKIN0, posedge TXDATA0[51], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXDATA0[51]);
    $setuphold (posedge TXUSERCLKIN0, posedge TXDATA0[52], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXDATA0[52]);
    $setuphold (posedge TXUSERCLKIN0, posedge TXDATA0[53], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXDATA0[53]);
    $setuphold (posedge TXUSERCLKIN0, posedge TXDATA0[54], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXDATA0[54]);
    $setuphold (posedge TXUSERCLKIN0, posedge TXDATA0[55], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXDATA0[55]);
    $setuphold (posedge TXUSERCLKIN0, posedge TXDATA0[56], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXDATA0[56]);
    $setuphold (posedge TXUSERCLKIN0, posedge TXDATA0[57], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXDATA0[57]);
    $setuphold (posedge TXUSERCLKIN0, posedge TXDATA0[58], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXDATA0[58]);
    $setuphold (posedge TXUSERCLKIN0, posedge TXDATA0[59], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXDATA0[59]);
    $setuphold (posedge TXUSERCLKIN0, posedge TXDATA0[5], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXDATA0[5]);
    $setuphold (posedge TXUSERCLKIN0, posedge TXDATA0[60], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXDATA0[60]);
    $setuphold (posedge TXUSERCLKIN0, posedge TXDATA0[61], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXDATA0[61]);
    $setuphold (posedge TXUSERCLKIN0, posedge TXDATA0[62], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXDATA0[62]);
    $setuphold (posedge TXUSERCLKIN0, posedge TXDATA0[63], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXDATA0[63]);
    $setuphold (posedge TXUSERCLKIN0, posedge TXDATA0[6], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXDATA0[6]);
    $setuphold (posedge TXUSERCLKIN0, posedge TXDATA0[7], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXDATA0[7]);
    $setuphold (posedge TXUSERCLKIN0, posedge TXDATA0[8], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXDATA0[8]);
    $setuphold (posedge TXUSERCLKIN0, posedge TXDATA0[9], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXDATA0[9]);
    $setuphold (posedge TXUSERCLKIN0, posedge TXDATAMSB0[0], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXDATAMSB0[0]);
    $setuphold (posedge TXUSERCLKIN0, posedge TXDATAMSB0[1], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXDATAMSB0[1]);
    $setuphold (posedge TXUSERCLKIN0, posedge TXDATAMSB0[2], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXDATAMSB0[2]);
    $setuphold (posedge TXUSERCLKIN0, posedge TXDATAMSB0[3], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXDATAMSB0[3]);
    $setuphold (posedge TXUSERCLKIN0, posedge TXDATAMSB0[4], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXDATAMSB0[4]);
    $setuphold (posedge TXUSERCLKIN0, posedge TXDATAMSB0[5], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXDATAMSB0[5]);
    $setuphold (posedge TXUSERCLKIN0, posedge TXDATAMSB0[6], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXDATAMSB0[6]);
    $setuphold (posedge TXUSERCLKIN0, posedge TXDATAMSB0[7], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXDATAMSB0[7]);
    $setuphold (posedge TXUSERCLKIN0, posedge TXDEEMPH0, 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXDEEMPH0);
    $setuphold (posedge TXUSERCLKIN0, posedge TXMARGIN0[0], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXMARGIN0[0]);
    $setuphold (posedge TXUSERCLKIN0, posedge TXMARGIN0[1], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXMARGIN0[1]);
    $setuphold (posedge TXUSERCLKIN0, posedge TXMARGIN0[2], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXMARGIN0[2]);
    $setuphold (posedge TXUSERCLKIN0, posedge TXPOWERDOWN0[0], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXPOWERDOWN0[0]);
    $setuphold (posedge TXUSERCLKIN0, posedge TXPOWERDOWN0[1], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXPOWERDOWN0[1]);
    $setuphold (posedge TXUSERCLKIN0, posedge TXRATE0[0], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXRATE0[0]);
    $setuphold (posedge TXUSERCLKIN0, posedge TXRATE0[1], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN0, delay_TXRATE0[1]);
    $setuphold (posedge TXUSERCLKIN1, negedge RXPOWERDOWN1[0], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_RXPOWERDOWN1[0]);
    $setuphold (posedge TXUSERCLKIN1, negedge RXPOWERDOWN1[1], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_RXPOWERDOWN1[1]);
    $setuphold (posedge TXUSERCLKIN1, negedge RXRATE1[0], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_RXRATE1[0]);
    $setuphold (posedge TXUSERCLKIN1, negedge RXRATE1[1], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_RXRATE1[1]);
    $setuphold (posedge TXUSERCLKIN1, negedge SAMPLERATE1[0], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_SAMPLERATE1[0]);
    $setuphold (posedge TXUSERCLKIN1, negedge SAMPLERATE1[1], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_SAMPLERATE1[1]);
    $setuphold (posedge TXUSERCLKIN1, negedge SAMPLERATE1[2], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_SAMPLERATE1[2]);
    $setuphold (posedge TXUSERCLKIN1, negedge TXBUFRESET1, 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXBUFRESET1);
    $setuphold (posedge TXUSERCLKIN1, negedge TXCTRL1[0], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXCTRL1[0]);
    $setuphold (posedge TXUSERCLKIN1, negedge TXCTRL1[1], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXCTRL1[1]);
    $setuphold (posedge TXUSERCLKIN1, negedge TXCTRL1[2], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXCTRL1[2]);
    $setuphold (posedge TXUSERCLKIN1, negedge TXCTRL1[3], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXCTRL1[3]);
    $setuphold (posedge TXUSERCLKIN1, negedge TXCTRL1[4], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXCTRL1[4]);
    $setuphold (posedge TXUSERCLKIN1, negedge TXCTRL1[5], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXCTRL1[5]);
    $setuphold (posedge TXUSERCLKIN1, negedge TXCTRL1[6], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXCTRL1[6]);
    $setuphold (posedge TXUSERCLKIN1, negedge TXCTRL1[7], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXCTRL1[7]);
    $setuphold (posedge TXUSERCLKIN1, negedge TXDATA1[0], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXDATA1[0]);
    $setuphold (posedge TXUSERCLKIN1, negedge TXDATA1[10], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXDATA1[10]);
    $setuphold (posedge TXUSERCLKIN1, negedge TXDATA1[11], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXDATA1[11]);
    $setuphold (posedge TXUSERCLKIN1, negedge TXDATA1[12], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXDATA1[12]);
    $setuphold (posedge TXUSERCLKIN1, negedge TXDATA1[13], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXDATA1[13]);
    $setuphold (posedge TXUSERCLKIN1, negedge TXDATA1[14], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXDATA1[14]);
    $setuphold (posedge TXUSERCLKIN1, negedge TXDATA1[15], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXDATA1[15]);
    $setuphold (posedge TXUSERCLKIN1, negedge TXDATA1[16], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXDATA1[16]);
    $setuphold (posedge TXUSERCLKIN1, negedge TXDATA1[17], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXDATA1[17]);
    $setuphold (posedge TXUSERCLKIN1, negedge TXDATA1[18], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXDATA1[18]);
    $setuphold (posedge TXUSERCLKIN1, negedge TXDATA1[19], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXDATA1[19]);
    $setuphold (posedge TXUSERCLKIN1, negedge TXDATA1[1], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXDATA1[1]);
    $setuphold (posedge TXUSERCLKIN1, negedge TXDATA1[20], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXDATA1[20]);
    $setuphold (posedge TXUSERCLKIN1, negedge TXDATA1[21], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXDATA1[21]);
    $setuphold (posedge TXUSERCLKIN1, negedge TXDATA1[22], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXDATA1[22]);
    $setuphold (posedge TXUSERCLKIN1, negedge TXDATA1[23], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXDATA1[23]);
    $setuphold (posedge TXUSERCLKIN1, negedge TXDATA1[24], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXDATA1[24]);
    $setuphold (posedge TXUSERCLKIN1, negedge TXDATA1[25], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXDATA1[25]);
    $setuphold (posedge TXUSERCLKIN1, negedge TXDATA1[26], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXDATA1[26]);
    $setuphold (posedge TXUSERCLKIN1, negedge TXDATA1[27], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXDATA1[27]);
    $setuphold (posedge TXUSERCLKIN1, negedge TXDATA1[28], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXDATA1[28]);
    $setuphold (posedge TXUSERCLKIN1, negedge TXDATA1[29], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXDATA1[29]);
    $setuphold (posedge TXUSERCLKIN1, negedge TXDATA1[2], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXDATA1[2]);
    $setuphold (posedge TXUSERCLKIN1, negedge TXDATA1[30], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXDATA1[30]);
    $setuphold (posedge TXUSERCLKIN1, negedge TXDATA1[31], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXDATA1[31]);
    $setuphold (posedge TXUSERCLKIN1, negedge TXDATA1[32], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXDATA1[32]);
    $setuphold (posedge TXUSERCLKIN1, negedge TXDATA1[33], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXDATA1[33]);
    $setuphold (posedge TXUSERCLKIN1, negedge TXDATA1[34], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXDATA1[34]);
    $setuphold (posedge TXUSERCLKIN1, negedge TXDATA1[35], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXDATA1[35]);
    $setuphold (posedge TXUSERCLKIN1, negedge TXDATA1[36], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXDATA1[36]);
    $setuphold (posedge TXUSERCLKIN1, negedge TXDATA1[37], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXDATA1[37]);
    $setuphold (posedge TXUSERCLKIN1, negedge TXDATA1[38], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXDATA1[38]);
    $setuphold (posedge TXUSERCLKIN1, negedge TXDATA1[39], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXDATA1[39]);
    $setuphold (posedge TXUSERCLKIN1, negedge TXDATA1[3], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXDATA1[3]);
    $setuphold (posedge TXUSERCLKIN1, negedge TXDATA1[40], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXDATA1[40]);
    $setuphold (posedge TXUSERCLKIN1, negedge TXDATA1[41], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXDATA1[41]);
    $setuphold (posedge TXUSERCLKIN1, negedge TXDATA1[42], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXDATA1[42]);
    $setuphold (posedge TXUSERCLKIN1, negedge TXDATA1[43], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXDATA1[43]);
    $setuphold (posedge TXUSERCLKIN1, negedge TXDATA1[44], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXDATA1[44]);
    $setuphold (posedge TXUSERCLKIN1, negedge TXDATA1[45], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXDATA1[45]);
    $setuphold (posedge TXUSERCLKIN1, negedge TXDATA1[46], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXDATA1[46]);
    $setuphold (posedge TXUSERCLKIN1, negedge TXDATA1[47], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXDATA1[47]);
    $setuphold (posedge TXUSERCLKIN1, negedge TXDATA1[48], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXDATA1[48]);
    $setuphold (posedge TXUSERCLKIN1, negedge TXDATA1[49], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXDATA1[49]);
    $setuphold (posedge TXUSERCLKIN1, negedge TXDATA1[4], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXDATA1[4]);
    $setuphold (posedge TXUSERCLKIN1, negedge TXDATA1[50], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXDATA1[50]);
    $setuphold (posedge TXUSERCLKIN1, negedge TXDATA1[51], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXDATA1[51]);
    $setuphold (posedge TXUSERCLKIN1, negedge TXDATA1[52], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXDATA1[52]);
    $setuphold (posedge TXUSERCLKIN1, negedge TXDATA1[53], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXDATA1[53]);
    $setuphold (posedge TXUSERCLKIN1, negedge TXDATA1[54], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXDATA1[54]);
    $setuphold (posedge TXUSERCLKIN1, negedge TXDATA1[55], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXDATA1[55]);
    $setuphold (posedge TXUSERCLKIN1, negedge TXDATA1[56], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXDATA1[56]);
    $setuphold (posedge TXUSERCLKIN1, negedge TXDATA1[57], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXDATA1[57]);
    $setuphold (posedge TXUSERCLKIN1, negedge TXDATA1[58], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXDATA1[58]);
    $setuphold (posedge TXUSERCLKIN1, negedge TXDATA1[59], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXDATA1[59]);
    $setuphold (posedge TXUSERCLKIN1, negedge TXDATA1[5], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXDATA1[5]);
    $setuphold (posedge TXUSERCLKIN1, negedge TXDATA1[60], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXDATA1[60]);
    $setuphold (posedge TXUSERCLKIN1, negedge TXDATA1[61], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXDATA1[61]);
    $setuphold (posedge TXUSERCLKIN1, negedge TXDATA1[62], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXDATA1[62]);
    $setuphold (posedge TXUSERCLKIN1, negedge TXDATA1[63], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXDATA1[63]);
    $setuphold (posedge TXUSERCLKIN1, negedge TXDATA1[6], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXDATA1[6]);
    $setuphold (posedge TXUSERCLKIN1, negedge TXDATA1[7], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXDATA1[7]);
    $setuphold (posedge TXUSERCLKIN1, negedge TXDATA1[8], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXDATA1[8]);
    $setuphold (posedge TXUSERCLKIN1, negedge TXDATA1[9], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXDATA1[9]);
    $setuphold (posedge TXUSERCLKIN1, negedge TXDATAMSB1[0], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXDATAMSB1[0]);
    $setuphold (posedge TXUSERCLKIN1, negedge TXDATAMSB1[1], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXDATAMSB1[1]);
    $setuphold (posedge TXUSERCLKIN1, negedge TXDATAMSB1[2], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXDATAMSB1[2]);
    $setuphold (posedge TXUSERCLKIN1, negedge TXDATAMSB1[3], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXDATAMSB1[3]);
    $setuphold (posedge TXUSERCLKIN1, negedge TXDATAMSB1[4], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXDATAMSB1[4]);
    $setuphold (posedge TXUSERCLKIN1, negedge TXDATAMSB1[5], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXDATAMSB1[5]);
    $setuphold (posedge TXUSERCLKIN1, negedge TXDATAMSB1[6], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXDATAMSB1[6]);
    $setuphold (posedge TXUSERCLKIN1, negedge TXDATAMSB1[7], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXDATAMSB1[7]);
    $setuphold (posedge TXUSERCLKIN1, negedge TXDEEMPH1, 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXDEEMPH1);
    $setuphold (posedge TXUSERCLKIN1, negedge TXMARGIN1[0], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXMARGIN1[0]);
    $setuphold (posedge TXUSERCLKIN1, negedge TXMARGIN1[1], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXMARGIN1[1]);
    $setuphold (posedge TXUSERCLKIN1, negedge TXMARGIN1[2], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXMARGIN1[2]);
    $setuphold (posedge TXUSERCLKIN1, negedge TXPOWERDOWN1[0], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXPOWERDOWN1[0]);
    $setuphold (posedge TXUSERCLKIN1, negedge TXPOWERDOWN1[1], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXPOWERDOWN1[1]);
    $setuphold (posedge TXUSERCLKIN1, negedge TXRATE1[0], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXRATE1[0]);
    $setuphold (posedge TXUSERCLKIN1, negedge TXRATE1[1], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXRATE1[1]);
    $setuphold (posedge TXUSERCLKIN1, posedge RXPOWERDOWN1[0], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_RXPOWERDOWN1[0]);
    $setuphold (posedge TXUSERCLKIN1, posedge RXPOWERDOWN1[1], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_RXPOWERDOWN1[1]);
    $setuphold (posedge TXUSERCLKIN1, posedge RXRATE1[0], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_RXRATE1[0]);
    $setuphold (posedge TXUSERCLKIN1, posedge RXRATE1[1], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_RXRATE1[1]);
    $setuphold (posedge TXUSERCLKIN1, posedge SAMPLERATE1[0], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_SAMPLERATE1[0]);
    $setuphold (posedge TXUSERCLKIN1, posedge SAMPLERATE1[1], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_SAMPLERATE1[1]);
    $setuphold (posedge TXUSERCLKIN1, posedge SAMPLERATE1[2], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_SAMPLERATE1[2]);
    $setuphold (posedge TXUSERCLKIN1, posedge TXBUFRESET1, 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXBUFRESET1);
    $setuphold (posedge TXUSERCLKIN1, posedge TXCTRL1[0], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXCTRL1[0]);
    $setuphold (posedge TXUSERCLKIN1, posedge TXCTRL1[1], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXCTRL1[1]);
    $setuphold (posedge TXUSERCLKIN1, posedge TXCTRL1[2], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXCTRL1[2]);
    $setuphold (posedge TXUSERCLKIN1, posedge TXCTRL1[3], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXCTRL1[3]);
    $setuphold (posedge TXUSERCLKIN1, posedge TXCTRL1[4], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXCTRL1[4]);
    $setuphold (posedge TXUSERCLKIN1, posedge TXCTRL1[5], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXCTRL1[5]);
    $setuphold (posedge TXUSERCLKIN1, posedge TXCTRL1[6], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXCTRL1[6]);
    $setuphold (posedge TXUSERCLKIN1, posedge TXCTRL1[7], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXCTRL1[7]);
    $setuphold (posedge TXUSERCLKIN1, posedge TXDATA1[0], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXDATA1[0]);
    $setuphold (posedge TXUSERCLKIN1, posedge TXDATA1[10], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXDATA1[10]);
    $setuphold (posedge TXUSERCLKIN1, posedge TXDATA1[11], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXDATA1[11]);
    $setuphold (posedge TXUSERCLKIN1, posedge TXDATA1[12], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXDATA1[12]);
    $setuphold (posedge TXUSERCLKIN1, posedge TXDATA1[13], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXDATA1[13]);
    $setuphold (posedge TXUSERCLKIN1, posedge TXDATA1[14], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXDATA1[14]);
    $setuphold (posedge TXUSERCLKIN1, posedge TXDATA1[15], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXDATA1[15]);
    $setuphold (posedge TXUSERCLKIN1, posedge TXDATA1[16], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXDATA1[16]);
    $setuphold (posedge TXUSERCLKIN1, posedge TXDATA1[17], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXDATA1[17]);
    $setuphold (posedge TXUSERCLKIN1, posedge TXDATA1[18], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXDATA1[18]);
    $setuphold (posedge TXUSERCLKIN1, posedge TXDATA1[19], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXDATA1[19]);
    $setuphold (posedge TXUSERCLKIN1, posedge TXDATA1[1], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXDATA1[1]);
    $setuphold (posedge TXUSERCLKIN1, posedge TXDATA1[20], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXDATA1[20]);
    $setuphold (posedge TXUSERCLKIN1, posedge TXDATA1[21], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXDATA1[21]);
    $setuphold (posedge TXUSERCLKIN1, posedge TXDATA1[22], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXDATA1[22]);
    $setuphold (posedge TXUSERCLKIN1, posedge TXDATA1[23], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXDATA1[23]);
    $setuphold (posedge TXUSERCLKIN1, posedge TXDATA1[24], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXDATA1[24]);
    $setuphold (posedge TXUSERCLKIN1, posedge TXDATA1[25], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXDATA1[25]);
    $setuphold (posedge TXUSERCLKIN1, posedge TXDATA1[26], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXDATA1[26]);
    $setuphold (posedge TXUSERCLKIN1, posedge TXDATA1[27], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXDATA1[27]);
    $setuphold (posedge TXUSERCLKIN1, posedge TXDATA1[28], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXDATA1[28]);
    $setuphold (posedge TXUSERCLKIN1, posedge TXDATA1[29], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXDATA1[29]);
    $setuphold (posedge TXUSERCLKIN1, posedge TXDATA1[2], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXDATA1[2]);
    $setuphold (posedge TXUSERCLKIN1, posedge TXDATA1[30], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXDATA1[30]);
    $setuphold (posedge TXUSERCLKIN1, posedge TXDATA1[31], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXDATA1[31]);
    $setuphold (posedge TXUSERCLKIN1, posedge TXDATA1[32], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXDATA1[32]);
    $setuphold (posedge TXUSERCLKIN1, posedge TXDATA1[33], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXDATA1[33]);
    $setuphold (posedge TXUSERCLKIN1, posedge TXDATA1[34], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXDATA1[34]);
    $setuphold (posedge TXUSERCLKIN1, posedge TXDATA1[35], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXDATA1[35]);
    $setuphold (posedge TXUSERCLKIN1, posedge TXDATA1[36], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXDATA1[36]);
    $setuphold (posedge TXUSERCLKIN1, posedge TXDATA1[37], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXDATA1[37]);
    $setuphold (posedge TXUSERCLKIN1, posedge TXDATA1[38], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXDATA1[38]);
    $setuphold (posedge TXUSERCLKIN1, posedge TXDATA1[39], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXDATA1[39]);
    $setuphold (posedge TXUSERCLKIN1, posedge TXDATA1[3], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXDATA1[3]);
    $setuphold (posedge TXUSERCLKIN1, posedge TXDATA1[40], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXDATA1[40]);
    $setuphold (posedge TXUSERCLKIN1, posedge TXDATA1[41], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXDATA1[41]);
    $setuphold (posedge TXUSERCLKIN1, posedge TXDATA1[42], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXDATA1[42]);
    $setuphold (posedge TXUSERCLKIN1, posedge TXDATA1[43], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXDATA1[43]);
    $setuphold (posedge TXUSERCLKIN1, posedge TXDATA1[44], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXDATA1[44]);
    $setuphold (posedge TXUSERCLKIN1, posedge TXDATA1[45], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXDATA1[45]);
    $setuphold (posedge TXUSERCLKIN1, posedge TXDATA1[46], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXDATA1[46]);
    $setuphold (posedge TXUSERCLKIN1, posedge TXDATA1[47], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXDATA1[47]);
    $setuphold (posedge TXUSERCLKIN1, posedge TXDATA1[48], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXDATA1[48]);
    $setuphold (posedge TXUSERCLKIN1, posedge TXDATA1[49], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXDATA1[49]);
    $setuphold (posedge TXUSERCLKIN1, posedge TXDATA1[4], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXDATA1[4]);
    $setuphold (posedge TXUSERCLKIN1, posedge TXDATA1[50], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXDATA1[50]);
    $setuphold (posedge TXUSERCLKIN1, posedge TXDATA1[51], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXDATA1[51]);
    $setuphold (posedge TXUSERCLKIN1, posedge TXDATA1[52], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXDATA1[52]);
    $setuphold (posedge TXUSERCLKIN1, posedge TXDATA1[53], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXDATA1[53]);
    $setuphold (posedge TXUSERCLKIN1, posedge TXDATA1[54], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXDATA1[54]);
    $setuphold (posedge TXUSERCLKIN1, posedge TXDATA1[55], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXDATA1[55]);
    $setuphold (posedge TXUSERCLKIN1, posedge TXDATA1[56], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXDATA1[56]);
    $setuphold (posedge TXUSERCLKIN1, posedge TXDATA1[57], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXDATA1[57]);
    $setuphold (posedge TXUSERCLKIN1, posedge TXDATA1[58], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXDATA1[58]);
    $setuphold (posedge TXUSERCLKIN1, posedge TXDATA1[59], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXDATA1[59]);
    $setuphold (posedge TXUSERCLKIN1, posedge TXDATA1[5], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXDATA1[5]);
    $setuphold (posedge TXUSERCLKIN1, posedge TXDATA1[60], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXDATA1[60]);
    $setuphold (posedge TXUSERCLKIN1, posedge TXDATA1[61], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXDATA1[61]);
    $setuphold (posedge TXUSERCLKIN1, posedge TXDATA1[62], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXDATA1[62]);
    $setuphold (posedge TXUSERCLKIN1, posedge TXDATA1[63], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXDATA1[63]);
    $setuphold (posedge TXUSERCLKIN1, posedge TXDATA1[6], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXDATA1[6]);
    $setuphold (posedge TXUSERCLKIN1, posedge TXDATA1[7], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXDATA1[7]);
    $setuphold (posedge TXUSERCLKIN1, posedge TXDATA1[8], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXDATA1[8]);
    $setuphold (posedge TXUSERCLKIN1, posedge TXDATA1[9], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXDATA1[9]);
    $setuphold (posedge TXUSERCLKIN1, posedge TXDATAMSB1[0], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXDATAMSB1[0]);
    $setuphold (posedge TXUSERCLKIN1, posedge TXDATAMSB1[1], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXDATAMSB1[1]);
    $setuphold (posedge TXUSERCLKIN1, posedge TXDATAMSB1[2], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXDATAMSB1[2]);
    $setuphold (posedge TXUSERCLKIN1, posedge TXDATAMSB1[3], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXDATAMSB1[3]);
    $setuphold (posedge TXUSERCLKIN1, posedge TXDATAMSB1[4], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXDATAMSB1[4]);
    $setuphold (posedge TXUSERCLKIN1, posedge TXDATAMSB1[5], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXDATAMSB1[5]);
    $setuphold (posedge TXUSERCLKIN1, posedge TXDATAMSB1[6], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXDATAMSB1[6]);
    $setuphold (posedge TXUSERCLKIN1, posedge TXDATAMSB1[7], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXDATAMSB1[7]);
    $setuphold (posedge TXUSERCLKIN1, posedge TXDEEMPH1, 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXDEEMPH1);
    $setuphold (posedge TXUSERCLKIN1, posedge TXMARGIN1[0], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXMARGIN1[0]);
    $setuphold (posedge TXUSERCLKIN1, posedge TXMARGIN1[1], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXMARGIN1[1]);
    $setuphold (posedge TXUSERCLKIN1, posedge TXMARGIN1[2], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXMARGIN1[2]);
    $setuphold (posedge TXUSERCLKIN1, posedge TXPOWERDOWN1[0], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXPOWERDOWN1[0]);
    $setuphold (posedge TXUSERCLKIN1, posedge TXPOWERDOWN1[1], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXPOWERDOWN1[1]);
    $setuphold (posedge TXUSERCLKIN1, posedge TXRATE1[0], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXRATE1[0]);
    $setuphold (posedge TXUSERCLKIN1, posedge TXRATE1[1], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN1, delay_TXRATE1[1]);
    $setuphold (posedge TXUSERCLKIN2, negedge RXPOWERDOWN2[0], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_RXPOWERDOWN2[0]);
    $setuphold (posedge TXUSERCLKIN2, negedge RXPOWERDOWN2[1], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_RXPOWERDOWN2[1]);
    $setuphold (posedge TXUSERCLKIN2, negedge RXRATE2[0], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_RXRATE2[0]);
    $setuphold (posedge TXUSERCLKIN2, negedge RXRATE2[1], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_RXRATE2[1]);
    $setuphold (posedge TXUSERCLKIN2, negedge SAMPLERATE2[0], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_SAMPLERATE2[0]);
    $setuphold (posedge TXUSERCLKIN2, negedge SAMPLERATE2[1], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_SAMPLERATE2[1]);
    $setuphold (posedge TXUSERCLKIN2, negedge SAMPLERATE2[2], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_SAMPLERATE2[2]);
    $setuphold (posedge TXUSERCLKIN2, negedge TXBUFRESET2, 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXBUFRESET2);
    $setuphold (posedge TXUSERCLKIN2, negedge TXCTRL2[0], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXCTRL2[0]);
    $setuphold (posedge TXUSERCLKIN2, negedge TXCTRL2[1], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXCTRL2[1]);
    $setuphold (posedge TXUSERCLKIN2, negedge TXCTRL2[2], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXCTRL2[2]);
    $setuphold (posedge TXUSERCLKIN2, negedge TXCTRL2[3], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXCTRL2[3]);
    $setuphold (posedge TXUSERCLKIN2, negedge TXCTRL2[4], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXCTRL2[4]);
    $setuphold (posedge TXUSERCLKIN2, negedge TXCTRL2[5], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXCTRL2[5]);
    $setuphold (posedge TXUSERCLKIN2, negedge TXCTRL2[6], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXCTRL2[6]);
    $setuphold (posedge TXUSERCLKIN2, negedge TXCTRL2[7], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXCTRL2[7]);
    $setuphold (posedge TXUSERCLKIN2, negedge TXDATA2[0], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXDATA2[0]);
    $setuphold (posedge TXUSERCLKIN2, negedge TXDATA2[10], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXDATA2[10]);
    $setuphold (posedge TXUSERCLKIN2, negedge TXDATA2[11], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXDATA2[11]);
    $setuphold (posedge TXUSERCLKIN2, negedge TXDATA2[12], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXDATA2[12]);
    $setuphold (posedge TXUSERCLKIN2, negedge TXDATA2[13], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXDATA2[13]);
    $setuphold (posedge TXUSERCLKIN2, negedge TXDATA2[14], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXDATA2[14]);
    $setuphold (posedge TXUSERCLKIN2, negedge TXDATA2[15], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXDATA2[15]);
    $setuphold (posedge TXUSERCLKIN2, negedge TXDATA2[16], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXDATA2[16]);
    $setuphold (posedge TXUSERCLKIN2, negedge TXDATA2[17], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXDATA2[17]);
    $setuphold (posedge TXUSERCLKIN2, negedge TXDATA2[18], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXDATA2[18]);
    $setuphold (posedge TXUSERCLKIN2, negedge TXDATA2[19], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXDATA2[19]);
    $setuphold (posedge TXUSERCLKIN2, negedge TXDATA2[1], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXDATA2[1]);
    $setuphold (posedge TXUSERCLKIN2, negedge TXDATA2[20], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXDATA2[20]);
    $setuphold (posedge TXUSERCLKIN2, negedge TXDATA2[21], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXDATA2[21]);
    $setuphold (posedge TXUSERCLKIN2, negedge TXDATA2[22], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXDATA2[22]);
    $setuphold (posedge TXUSERCLKIN2, negedge TXDATA2[23], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXDATA2[23]);
    $setuphold (posedge TXUSERCLKIN2, negedge TXDATA2[24], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXDATA2[24]);
    $setuphold (posedge TXUSERCLKIN2, negedge TXDATA2[25], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXDATA2[25]);
    $setuphold (posedge TXUSERCLKIN2, negedge TXDATA2[26], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXDATA2[26]);
    $setuphold (posedge TXUSERCLKIN2, negedge TXDATA2[27], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXDATA2[27]);
    $setuphold (posedge TXUSERCLKIN2, negedge TXDATA2[28], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXDATA2[28]);
    $setuphold (posedge TXUSERCLKIN2, negedge TXDATA2[29], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXDATA2[29]);
    $setuphold (posedge TXUSERCLKIN2, negedge TXDATA2[2], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXDATA2[2]);
    $setuphold (posedge TXUSERCLKIN2, negedge TXDATA2[30], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXDATA2[30]);
    $setuphold (posedge TXUSERCLKIN2, negedge TXDATA2[31], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXDATA2[31]);
    $setuphold (posedge TXUSERCLKIN2, negedge TXDATA2[32], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXDATA2[32]);
    $setuphold (posedge TXUSERCLKIN2, negedge TXDATA2[33], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXDATA2[33]);
    $setuphold (posedge TXUSERCLKIN2, negedge TXDATA2[34], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXDATA2[34]);
    $setuphold (posedge TXUSERCLKIN2, negedge TXDATA2[35], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXDATA2[35]);
    $setuphold (posedge TXUSERCLKIN2, negedge TXDATA2[36], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXDATA2[36]);
    $setuphold (posedge TXUSERCLKIN2, negedge TXDATA2[37], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXDATA2[37]);
    $setuphold (posedge TXUSERCLKIN2, negedge TXDATA2[38], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXDATA2[38]);
    $setuphold (posedge TXUSERCLKIN2, negedge TXDATA2[39], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXDATA2[39]);
    $setuphold (posedge TXUSERCLKIN2, negedge TXDATA2[3], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXDATA2[3]);
    $setuphold (posedge TXUSERCLKIN2, negedge TXDATA2[40], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXDATA2[40]);
    $setuphold (posedge TXUSERCLKIN2, negedge TXDATA2[41], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXDATA2[41]);
    $setuphold (posedge TXUSERCLKIN2, negedge TXDATA2[42], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXDATA2[42]);
    $setuphold (posedge TXUSERCLKIN2, negedge TXDATA2[43], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXDATA2[43]);
    $setuphold (posedge TXUSERCLKIN2, negedge TXDATA2[44], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXDATA2[44]);
    $setuphold (posedge TXUSERCLKIN2, negedge TXDATA2[45], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXDATA2[45]);
    $setuphold (posedge TXUSERCLKIN2, negedge TXDATA2[46], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXDATA2[46]);
    $setuphold (posedge TXUSERCLKIN2, negedge TXDATA2[47], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXDATA2[47]);
    $setuphold (posedge TXUSERCLKIN2, negedge TXDATA2[48], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXDATA2[48]);
    $setuphold (posedge TXUSERCLKIN2, negedge TXDATA2[49], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXDATA2[49]);
    $setuphold (posedge TXUSERCLKIN2, negedge TXDATA2[4], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXDATA2[4]);
    $setuphold (posedge TXUSERCLKIN2, negedge TXDATA2[50], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXDATA2[50]);
    $setuphold (posedge TXUSERCLKIN2, negedge TXDATA2[51], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXDATA2[51]);
    $setuphold (posedge TXUSERCLKIN2, negedge TXDATA2[52], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXDATA2[52]);
    $setuphold (posedge TXUSERCLKIN2, negedge TXDATA2[53], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXDATA2[53]);
    $setuphold (posedge TXUSERCLKIN2, negedge TXDATA2[54], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXDATA2[54]);
    $setuphold (posedge TXUSERCLKIN2, negedge TXDATA2[55], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXDATA2[55]);
    $setuphold (posedge TXUSERCLKIN2, negedge TXDATA2[56], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXDATA2[56]);
    $setuphold (posedge TXUSERCLKIN2, negedge TXDATA2[57], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXDATA2[57]);
    $setuphold (posedge TXUSERCLKIN2, negedge TXDATA2[58], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXDATA2[58]);
    $setuphold (posedge TXUSERCLKIN2, negedge TXDATA2[59], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXDATA2[59]);
    $setuphold (posedge TXUSERCLKIN2, negedge TXDATA2[5], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXDATA2[5]);
    $setuphold (posedge TXUSERCLKIN2, negedge TXDATA2[60], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXDATA2[60]);
    $setuphold (posedge TXUSERCLKIN2, negedge TXDATA2[61], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXDATA2[61]);
    $setuphold (posedge TXUSERCLKIN2, negedge TXDATA2[62], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXDATA2[62]);
    $setuphold (posedge TXUSERCLKIN2, negedge TXDATA2[63], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXDATA2[63]);
    $setuphold (posedge TXUSERCLKIN2, negedge TXDATA2[6], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXDATA2[6]);
    $setuphold (posedge TXUSERCLKIN2, negedge TXDATA2[7], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXDATA2[7]);
    $setuphold (posedge TXUSERCLKIN2, negedge TXDATA2[8], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXDATA2[8]);
    $setuphold (posedge TXUSERCLKIN2, negedge TXDATA2[9], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXDATA2[9]);
    $setuphold (posedge TXUSERCLKIN2, negedge TXDATAMSB2[0], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXDATAMSB2[0]);
    $setuphold (posedge TXUSERCLKIN2, negedge TXDATAMSB2[1], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXDATAMSB2[1]);
    $setuphold (posedge TXUSERCLKIN2, negedge TXDATAMSB2[2], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXDATAMSB2[2]);
    $setuphold (posedge TXUSERCLKIN2, negedge TXDATAMSB2[3], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXDATAMSB2[3]);
    $setuphold (posedge TXUSERCLKIN2, negedge TXDATAMSB2[4], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXDATAMSB2[4]);
    $setuphold (posedge TXUSERCLKIN2, negedge TXDATAMSB2[5], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXDATAMSB2[5]);
    $setuphold (posedge TXUSERCLKIN2, negedge TXDATAMSB2[6], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXDATAMSB2[6]);
    $setuphold (posedge TXUSERCLKIN2, negedge TXDATAMSB2[7], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXDATAMSB2[7]);
    $setuphold (posedge TXUSERCLKIN2, negedge TXDEEMPH2, 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXDEEMPH2);
    $setuphold (posedge TXUSERCLKIN2, negedge TXMARGIN2[0], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXMARGIN2[0]);
    $setuphold (posedge TXUSERCLKIN2, negedge TXMARGIN2[1], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXMARGIN2[1]);
    $setuphold (posedge TXUSERCLKIN2, negedge TXMARGIN2[2], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXMARGIN2[2]);
    $setuphold (posedge TXUSERCLKIN2, negedge TXPOWERDOWN2[0], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXPOWERDOWN2[0]);
    $setuphold (posedge TXUSERCLKIN2, negedge TXPOWERDOWN2[1], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXPOWERDOWN2[1]);
    $setuphold (posedge TXUSERCLKIN2, negedge TXRATE2[0], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXRATE2[0]);
    $setuphold (posedge TXUSERCLKIN2, negedge TXRATE2[1], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXRATE2[1]);
    $setuphold (posedge TXUSERCLKIN2, posedge RXPOWERDOWN2[0], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_RXPOWERDOWN2[0]);
    $setuphold (posedge TXUSERCLKIN2, posedge RXPOWERDOWN2[1], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_RXPOWERDOWN2[1]);
    $setuphold (posedge TXUSERCLKIN2, posedge RXRATE2[0], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_RXRATE2[0]);
    $setuphold (posedge TXUSERCLKIN2, posedge RXRATE2[1], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_RXRATE2[1]);
    $setuphold (posedge TXUSERCLKIN2, posedge SAMPLERATE2[0], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_SAMPLERATE2[0]);
    $setuphold (posedge TXUSERCLKIN2, posedge SAMPLERATE2[1], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_SAMPLERATE2[1]);
    $setuphold (posedge TXUSERCLKIN2, posedge SAMPLERATE2[2], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_SAMPLERATE2[2]);
    $setuphold (posedge TXUSERCLKIN2, posedge TXBUFRESET2, 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXBUFRESET2);
    $setuphold (posedge TXUSERCLKIN2, posedge TXCTRL2[0], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXCTRL2[0]);
    $setuphold (posedge TXUSERCLKIN2, posedge TXCTRL2[1], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXCTRL2[1]);
    $setuphold (posedge TXUSERCLKIN2, posedge TXCTRL2[2], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXCTRL2[2]);
    $setuphold (posedge TXUSERCLKIN2, posedge TXCTRL2[3], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXCTRL2[3]);
    $setuphold (posedge TXUSERCLKIN2, posedge TXCTRL2[4], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXCTRL2[4]);
    $setuphold (posedge TXUSERCLKIN2, posedge TXCTRL2[5], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXCTRL2[5]);
    $setuphold (posedge TXUSERCLKIN2, posedge TXCTRL2[6], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXCTRL2[6]);
    $setuphold (posedge TXUSERCLKIN2, posedge TXCTRL2[7], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXCTRL2[7]);
    $setuphold (posedge TXUSERCLKIN2, posedge TXDATA2[0], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXDATA2[0]);
    $setuphold (posedge TXUSERCLKIN2, posedge TXDATA2[10], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXDATA2[10]);
    $setuphold (posedge TXUSERCLKIN2, posedge TXDATA2[11], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXDATA2[11]);
    $setuphold (posedge TXUSERCLKIN2, posedge TXDATA2[12], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXDATA2[12]);
    $setuphold (posedge TXUSERCLKIN2, posedge TXDATA2[13], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXDATA2[13]);
    $setuphold (posedge TXUSERCLKIN2, posedge TXDATA2[14], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXDATA2[14]);
    $setuphold (posedge TXUSERCLKIN2, posedge TXDATA2[15], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXDATA2[15]);
    $setuphold (posedge TXUSERCLKIN2, posedge TXDATA2[16], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXDATA2[16]);
    $setuphold (posedge TXUSERCLKIN2, posedge TXDATA2[17], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXDATA2[17]);
    $setuphold (posedge TXUSERCLKIN2, posedge TXDATA2[18], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXDATA2[18]);
    $setuphold (posedge TXUSERCLKIN2, posedge TXDATA2[19], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXDATA2[19]);
    $setuphold (posedge TXUSERCLKIN2, posedge TXDATA2[1], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXDATA2[1]);
    $setuphold (posedge TXUSERCLKIN2, posedge TXDATA2[20], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXDATA2[20]);
    $setuphold (posedge TXUSERCLKIN2, posedge TXDATA2[21], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXDATA2[21]);
    $setuphold (posedge TXUSERCLKIN2, posedge TXDATA2[22], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXDATA2[22]);
    $setuphold (posedge TXUSERCLKIN2, posedge TXDATA2[23], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXDATA2[23]);
    $setuphold (posedge TXUSERCLKIN2, posedge TXDATA2[24], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXDATA2[24]);
    $setuphold (posedge TXUSERCLKIN2, posedge TXDATA2[25], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXDATA2[25]);
    $setuphold (posedge TXUSERCLKIN2, posedge TXDATA2[26], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXDATA2[26]);
    $setuphold (posedge TXUSERCLKIN2, posedge TXDATA2[27], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXDATA2[27]);
    $setuphold (posedge TXUSERCLKIN2, posedge TXDATA2[28], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXDATA2[28]);
    $setuphold (posedge TXUSERCLKIN2, posedge TXDATA2[29], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXDATA2[29]);
    $setuphold (posedge TXUSERCLKIN2, posedge TXDATA2[2], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXDATA2[2]);
    $setuphold (posedge TXUSERCLKIN2, posedge TXDATA2[30], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXDATA2[30]);
    $setuphold (posedge TXUSERCLKIN2, posedge TXDATA2[31], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXDATA2[31]);
    $setuphold (posedge TXUSERCLKIN2, posedge TXDATA2[32], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXDATA2[32]);
    $setuphold (posedge TXUSERCLKIN2, posedge TXDATA2[33], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXDATA2[33]);
    $setuphold (posedge TXUSERCLKIN2, posedge TXDATA2[34], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXDATA2[34]);
    $setuphold (posedge TXUSERCLKIN2, posedge TXDATA2[35], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXDATA2[35]);
    $setuphold (posedge TXUSERCLKIN2, posedge TXDATA2[36], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXDATA2[36]);
    $setuphold (posedge TXUSERCLKIN2, posedge TXDATA2[37], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXDATA2[37]);
    $setuphold (posedge TXUSERCLKIN2, posedge TXDATA2[38], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXDATA2[38]);
    $setuphold (posedge TXUSERCLKIN2, posedge TXDATA2[39], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXDATA2[39]);
    $setuphold (posedge TXUSERCLKIN2, posedge TXDATA2[3], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXDATA2[3]);
    $setuphold (posedge TXUSERCLKIN2, posedge TXDATA2[40], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXDATA2[40]);
    $setuphold (posedge TXUSERCLKIN2, posedge TXDATA2[41], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXDATA2[41]);
    $setuphold (posedge TXUSERCLKIN2, posedge TXDATA2[42], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXDATA2[42]);
    $setuphold (posedge TXUSERCLKIN2, posedge TXDATA2[43], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXDATA2[43]);
    $setuphold (posedge TXUSERCLKIN2, posedge TXDATA2[44], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXDATA2[44]);
    $setuphold (posedge TXUSERCLKIN2, posedge TXDATA2[45], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXDATA2[45]);
    $setuphold (posedge TXUSERCLKIN2, posedge TXDATA2[46], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXDATA2[46]);
    $setuphold (posedge TXUSERCLKIN2, posedge TXDATA2[47], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXDATA2[47]);
    $setuphold (posedge TXUSERCLKIN2, posedge TXDATA2[48], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXDATA2[48]);
    $setuphold (posedge TXUSERCLKIN2, posedge TXDATA2[49], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXDATA2[49]);
    $setuphold (posedge TXUSERCLKIN2, posedge TXDATA2[4], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXDATA2[4]);
    $setuphold (posedge TXUSERCLKIN2, posedge TXDATA2[50], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXDATA2[50]);
    $setuphold (posedge TXUSERCLKIN2, posedge TXDATA2[51], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXDATA2[51]);
    $setuphold (posedge TXUSERCLKIN2, posedge TXDATA2[52], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXDATA2[52]);
    $setuphold (posedge TXUSERCLKIN2, posedge TXDATA2[53], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXDATA2[53]);
    $setuphold (posedge TXUSERCLKIN2, posedge TXDATA2[54], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXDATA2[54]);
    $setuphold (posedge TXUSERCLKIN2, posedge TXDATA2[55], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXDATA2[55]);
    $setuphold (posedge TXUSERCLKIN2, posedge TXDATA2[56], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXDATA2[56]);
    $setuphold (posedge TXUSERCLKIN2, posedge TXDATA2[57], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXDATA2[57]);
    $setuphold (posedge TXUSERCLKIN2, posedge TXDATA2[58], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXDATA2[58]);
    $setuphold (posedge TXUSERCLKIN2, posedge TXDATA2[59], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXDATA2[59]);
    $setuphold (posedge TXUSERCLKIN2, posedge TXDATA2[5], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXDATA2[5]);
    $setuphold (posedge TXUSERCLKIN2, posedge TXDATA2[60], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXDATA2[60]);
    $setuphold (posedge TXUSERCLKIN2, posedge TXDATA2[61], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXDATA2[61]);
    $setuphold (posedge TXUSERCLKIN2, posedge TXDATA2[62], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXDATA2[62]);
    $setuphold (posedge TXUSERCLKIN2, posedge TXDATA2[63], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXDATA2[63]);
    $setuphold (posedge TXUSERCLKIN2, posedge TXDATA2[6], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXDATA2[6]);
    $setuphold (posedge TXUSERCLKIN2, posedge TXDATA2[7], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXDATA2[7]);
    $setuphold (posedge TXUSERCLKIN2, posedge TXDATA2[8], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXDATA2[8]);
    $setuphold (posedge TXUSERCLKIN2, posedge TXDATA2[9], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXDATA2[9]);
    $setuphold (posedge TXUSERCLKIN2, posedge TXDATAMSB2[0], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXDATAMSB2[0]);
    $setuphold (posedge TXUSERCLKIN2, posedge TXDATAMSB2[1], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXDATAMSB2[1]);
    $setuphold (posedge TXUSERCLKIN2, posedge TXDATAMSB2[2], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXDATAMSB2[2]);
    $setuphold (posedge TXUSERCLKIN2, posedge TXDATAMSB2[3], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXDATAMSB2[3]);
    $setuphold (posedge TXUSERCLKIN2, posedge TXDATAMSB2[4], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXDATAMSB2[4]);
    $setuphold (posedge TXUSERCLKIN2, posedge TXDATAMSB2[5], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXDATAMSB2[5]);
    $setuphold (posedge TXUSERCLKIN2, posedge TXDATAMSB2[6], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXDATAMSB2[6]);
    $setuphold (posedge TXUSERCLKIN2, posedge TXDATAMSB2[7], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXDATAMSB2[7]);
    $setuphold (posedge TXUSERCLKIN2, posedge TXDEEMPH2, 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXDEEMPH2);
    $setuphold (posedge TXUSERCLKIN2, posedge TXMARGIN2[0], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXMARGIN2[0]);
    $setuphold (posedge TXUSERCLKIN2, posedge TXMARGIN2[1], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXMARGIN2[1]);
    $setuphold (posedge TXUSERCLKIN2, posedge TXMARGIN2[2], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXMARGIN2[2]);
    $setuphold (posedge TXUSERCLKIN2, posedge TXPOWERDOWN2[0], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXPOWERDOWN2[0]);
    $setuphold (posedge TXUSERCLKIN2, posedge TXPOWERDOWN2[1], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXPOWERDOWN2[1]);
    $setuphold (posedge TXUSERCLKIN2, posedge TXRATE2[0], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXRATE2[0]);
    $setuphold (posedge TXUSERCLKIN2, posedge TXRATE2[1], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN2, delay_TXRATE2[1]);
    $setuphold (posedge TXUSERCLKIN3, negedge RXPOWERDOWN3[0], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_RXPOWERDOWN3[0]);
    $setuphold (posedge TXUSERCLKIN3, negedge RXPOWERDOWN3[1], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_RXPOWERDOWN3[1]);
    $setuphold (posedge TXUSERCLKIN3, negedge RXRATE3[0], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_RXRATE3[0]);
    $setuphold (posedge TXUSERCLKIN3, negedge RXRATE3[1], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_RXRATE3[1]);
    $setuphold (posedge TXUSERCLKIN3, negedge SAMPLERATE3[0], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_SAMPLERATE3[0]);
    $setuphold (posedge TXUSERCLKIN3, negedge SAMPLERATE3[1], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_SAMPLERATE3[1]);
    $setuphold (posedge TXUSERCLKIN3, negedge SAMPLERATE3[2], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_SAMPLERATE3[2]);
    $setuphold (posedge TXUSERCLKIN3, negedge TXBUFRESET3, 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXBUFRESET3);
    $setuphold (posedge TXUSERCLKIN3, negedge TXCTRL3[0], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXCTRL3[0]);
    $setuphold (posedge TXUSERCLKIN3, negedge TXCTRL3[1], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXCTRL3[1]);
    $setuphold (posedge TXUSERCLKIN3, negedge TXCTRL3[2], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXCTRL3[2]);
    $setuphold (posedge TXUSERCLKIN3, negedge TXCTRL3[3], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXCTRL3[3]);
    $setuphold (posedge TXUSERCLKIN3, negedge TXCTRL3[4], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXCTRL3[4]);
    $setuphold (posedge TXUSERCLKIN3, negedge TXCTRL3[5], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXCTRL3[5]);
    $setuphold (posedge TXUSERCLKIN3, negedge TXCTRL3[6], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXCTRL3[6]);
    $setuphold (posedge TXUSERCLKIN3, negedge TXCTRL3[7], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXCTRL3[7]);
    $setuphold (posedge TXUSERCLKIN3, negedge TXDATA3[0], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXDATA3[0]);
    $setuphold (posedge TXUSERCLKIN3, negedge TXDATA3[10], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXDATA3[10]);
    $setuphold (posedge TXUSERCLKIN3, negedge TXDATA3[11], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXDATA3[11]);
    $setuphold (posedge TXUSERCLKIN3, negedge TXDATA3[12], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXDATA3[12]);
    $setuphold (posedge TXUSERCLKIN3, negedge TXDATA3[13], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXDATA3[13]);
    $setuphold (posedge TXUSERCLKIN3, negedge TXDATA3[14], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXDATA3[14]);
    $setuphold (posedge TXUSERCLKIN3, negedge TXDATA3[15], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXDATA3[15]);
    $setuphold (posedge TXUSERCLKIN3, negedge TXDATA3[16], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXDATA3[16]);
    $setuphold (posedge TXUSERCLKIN3, negedge TXDATA3[17], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXDATA3[17]);
    $setuphold (posedge TXUSERCLKIN3, negedge TXDATA3[18], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXDATA3[18]);
    $setuphold (posedge TXUSERCLKIN3, negedge TXDATA3[19], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXDATA3[19]);
    $setuphold (posedge TXUSERCLKIN3, negedge TXDATA3[1], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXDATA3[1]);
    $setuphold (posedge TXUSERCLKIN3, negedge TXDATA3[20], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXDATA3[20]);
    $setuphold (posedge TXUSERCLKIN3, negedge TXDATA3[21], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXDATA3[21]);
    $setuphold (posedge TXUSERCLKIN3, negedge TXDATA3[22], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXDATA3[22]);
    $setuphold (posedge TXUSERCLKIN3, negedge TXDATA3[23], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXDATA3[23]);
    $setuphold (posedge TXUSERCLKIN3, negedge TXDATA3[24], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXDATA3[24]);
    $setuphold (posedge TXUSERCLKIN3, negedge TXDATA3[25], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXDATA3[25]);
    $setuphold (posedge TXUSERCLKIN3, negedge TXDATA3[26], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXDATA3[26]);
    $setuphold (posedge TXUSERCLKIN3, negedge TXDATA3[27], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXDATA3[27]);
    $setuphold (posedge TXUSERCLKIN3, negedge TXDATA3[28], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXDATA3[28]);
    $setuphold (posedge TXUSERCLKIN3, negedge TXDATA3[29], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXDATA3[29]);
    $setuphold (posedge TXUSERCLKIN3, negedge TXDATA3[2], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXDATA3[2]);
    $setuphold (posedge TXUSERCLKIN3, negedge TXDATA3[30], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXDATA3[30]);
    $setuphold (posedge TXUSERCLKIN3, negedge TXDATA3[31], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXDATA3[31]);
    $setuphold (posedge TXUSERCLKIN3, negedge TXDATA3[32], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXDATA3[32]);
    $setuphold (posedge TXUSERCLKIN3, negedge TXDATA3[33], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXDATA3[33]);
    $setuphold (posedge TXUSERCLKIN3, negedge TXDATA3[34], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXDATA3[34]);
    $setuphold (posedge TXUSERCLKIN3, negedge TXDATA3[35], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXDATA3[35]);
    $setuphold (posedge TXUSERCLKIN3, negedge TXDATA3[36], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXDATA3[36]);
    $setuphold (posedge TXUSERCLKIN3, negedge TXDATA3[37], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXDATA3[37]);
    $setuphold (posedge TXUSERCLKIN3, negedge TXDATA3[38], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXDATA3[38]);
    $setuphold (posedge TXUSERCLKIN3, negedge TXDATA3[39], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXDATA3[39]);
    $setuphold (posedge TXUSERCLKIN3, negedge TXDATA3[3], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXDATA3[3]);
    $setuphold (posedge TXUSERCLKIN3, negedge TXDATA3[40], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXDATA3[40]);
    $setuphold (posedge TXUSERCLKIN3, negedge TXDATA3[41], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXDATA3[41]);
    $setuphold (posedge TXUSERCLKIN3, negedge TXDATA3[42], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXDATA3[42]);
    $setuphold (posedge TXUSERCLKIN3, negedge TXDATA3[43], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXDATA3[43]);
    $setuphold (posedge TXUSERCLKIN3, negedge TXDATA3[44], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXDATA3[44]);
    $setuphold (posedge TXUSERCLKIN3, negedge TXDATA3[45], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXDATA3[45]);
    $setuphold (posedge TXUSERCLKIN3, negedge TXDATA3[46], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXDATA3[46]);
    $setuphold (posedge TXUSERCLKIN3, negedge TXDATA3[47], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXDATA3[47]);
    $setuphold (posedge TXUSERCLKIN3, negedge TXDATA3[48], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXDATA3[48]);
    $setuphold (posedge TXUSERCLKIN3, negedge TXDATA3[49], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXDATA3[49]);
    $setuphold (posedge TXUSERCLKIN3, negedge TXDATA3[4], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXDATA3[4]);
    $setuphold (posedge TXUSERCLKIN3, negedge TXDATA3[50], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXDATA3[50]);
    $setuphold (posedge TXUSERCLKIN3, negedge TXDATA3[51], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXDATA3[51]);
    $setuphold (posedge TXUSERCLKIN3, negedge TXDATA3[52], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXDATA3[52]);
    $setuphold (posedge TXUSERCLKIN3, negedge TXDATA3[53], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXDATA3[53]);
    $setuphold (posedge TXUSERCLKIN3, negedge TXDATA3[54], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXDATA3[54]);
    $setuphold (posedge TXUSERCLKIN3, negedge TXDATA3[55], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXDATA3[55]);
    $setuphold (posedge TXUSERCLKIN3, negedge TXDATA3[56], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXDATA3[56]);
    $setuphold (posedge TXUSERCLKIN3, negedge TXDATA3[57], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXDATA3[57]);
    $setuphold (posedge TXUSERCLKIN3, negedge TXDATA3[58], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXDATA3[58]);
    $setuphold (posedge TXUSERCLKIN3, negedge TXDATA3[59], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXDATA3[59]);
    $setuphold (posedge TXUSERCLKIN3, negedge TXDATA3[5], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXDATA3[5]);
    $setuphold (posedge TXUSERCLKIN3, negedge TXDATA3[60], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXDATA3[60]);
    $setuphold (posedge TXUSERCLKIN3, negedge TXDATA3[61], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXDATA3[61]);
    $setuphold (posedge TXUSERCLKIN3, negedge TXDATA3[62], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXDATA3[62]);
    $setuphold (posedge TXUSERCLKIN3, negedge TXDATA3[63], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXDATA3[63]);
    $setuphold (posedge TXUSERCLKIN3, negedge TXDATA3[6], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXDATA3[6]);
    $setuphold (posedge TXUSERCLKIN3, negedge TXDATA3[7], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXDATA3[7]);
    $setuphold (posedge TXUSERCLKIN3, negedge TXDATA3[8], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXDATA3[8]);
    $setuphold (posedge TXUSERCLKIN3, negedge TXDATA3[9], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXDATA3[9]);
    $setuphold (posedge TXUSERCLKIN3, negedge TXDATAMSB3[0], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXDATAMSB3[0]);
    $setuphold (posedge TXUSERCLKIN3, negedge TXDATAMSB3[1], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXDATAMSB3[1]);
    $setuphold (posedge TXUSERCLKIN3, negedge TXDATAMSB3[2], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXDATAMSB3[2]);
    $setuphold (posedge TXUSERCLKIN3, negedge TXDATAMSB3[3], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXDATAMSB3[3]);
    $setuphold (posedge TXUSERCLKIN3, negedge TXDATAMSB3[4], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXDATAMSB3[4]);
    $setuphold (posedge TXUSERCLKIN3, negedge TXDATAMSB3[5], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXDATAMSB3[5]);
    $setuphold (posedge TXUSERCLKIN3, negedge TXDATAMSB3[6], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXDATAMSB3[6]);
    $setuphold (posedge TXUSERCLKIN3, negedge TXDATAMSB3[7], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXDATAMSB3[7]);
    $setuphold (posedge TXUSERCLKIN3, negedge TXDEEMPH3, 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXDEEMPH3);
    $setuphold (posedge TXUSERCLKIN3, negedge TXMARGIN3[0], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXMARGIN3[0]);
    $setuphold (posedge TXUSERCLKIN3, negedge TXMARGIN3[1], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXMARGIN3[1]);
    $setuphold (posedge TXUSERCLKIN3, negedge TXMARGIN3[2], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXMARGIN3[2]);
    $setuphold (posedge TXUSERCLKIN3, negedge TXPOWERDOWN3[0], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXPOWERDOWN3[0]);
    $setuphold (posedge TXUSERCLKIN3, negedge TXPOWERDOWN3[1], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXPOWERDOWN3[1]);
    $setuphold (posedge TXUSERCLKIN3, negedge TXRATE3[0], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXRATE3[0]);
    $setuphold (posedge TXUSERCLKIN3, negedge TXRATE3[1], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXRATE3[1]);
    $setuphold (posedge TXUSERCLKIN3, posedge RXPOWERDOWN3[0], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_RXPOWERDOWN3[0]);
    $setuphold (posedge TXUSERCLKIN3, posedge RXPOWERDOWN3[1], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_RXPOWERDOWN3[1]);
    $setuphold (posedge TXUSERCLKIN3, posedge RXRATE3[0], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_RXRATE3[0]);
    $setuphold (posedge TXUSERCLKIN3, posedge RXRATE3[1], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_RXRATE3[1]);
    $setuphold (posedge TXUSERCLKIN3, posedge SAMPLERATE3[0], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_SAMPLERATE3[0]);
    $setuphold (posedge TXUSERCLKIN3, posedge SAMPLERATE3[1], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_SAMPLERATE3[1]);
    $setuphold (posedge TXUSERCLKIN3, posedge SAMPLERATE3[2], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_SAMPLERATE3[2]);
    $setuphold (posedge TXUSERCLKIN3, posedge TXBUFRESET3, 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXBUFRESET3);
    $setuphold (posedge TXUSERCLKIN3, posedge TXCTRL3[0], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXCTRL3[0]);
    $setuphold (posedge TXUSERCLKIN3, posedge TXCTRL3[1], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXCTRL3[1]);
    $setuphold (posedge TXUSERCLKIN3, posedge TXCTRL3[2], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXCTRL3[2]);
    $setuphold (posedge TXUSERCLKIN3, posedge TXCTRL3[3], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXCTRL3[3]);
    $setuphold (posedge TXUSERCLKIN3, posedge TXCTRL3[4], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXCTRL3[4]);
    $setuphold (posedge TXUSERCLKIN3, posedge TXCTRL3[5], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXCTRL3[5]);
    $setuphold (posedge TXUSERCLKIN3, posedge TXCTRL3[6], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXCTRL3[6]);
    $setuphold (posedge TXUSERCLKIN3, posedge TXCTRL3[7], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXCTRL3[7]);
    $setuphold (posedge TXUSERCLKIN3, posedge TXDATA3[0], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXDATA3[0]);
    $setuphold (posedge TXUSERCLKIN3, posedge TXDATA3[10], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXDATA3[10]);
    $setuphold (posedge TXUSERCLKIN3, posedge TXDATA3[11], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXDATA3[11]);
    $setuphold (posedge TXUSERCLKIN3, posedge TXDATA3[12], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXDATA3[12]);
    $setuphold (posedge TXUSERCLKIN3, posedge TXDATA3[13], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXDATA3[13]);
    $setuphold (posedge TXUSERCLKIN3, posedge TXDATA3[14], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXDATA3[14]);
    $setuphold (posedge TXUSERCLKIN3, posedge TXDATA3[15], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXDATA3[15]);
    $setuphold (posedge TXUSERCLKIN3, posedge TXDATA3[16], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXDATA3[16]);
    $setuphold (posedge TXUSERCLKIN3, posedge TXDATA3[17], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXDATA3[17]);
    $setuphold (posedge TXUSERCLKIN3, posedge TXDATA3[18], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXDATA3[18]);
    $setuphold (posedge TXUSERCLKIN3, posedge TXDATA3[19], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXDATA3[19]);
    $setuphold (posedge TXUSERCLKIN3, posedge TXDATA3[1], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXDATA3[1]);
    $setuphold (posedge TXUSERCLKIN3, posedge TXDATA3[20], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXDATA3[20]);
    $setuphold (posedge TXUSERCLKIN3, posedge TXDATA3[21], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXDATA3[21]);
    $setuphold (posedge TXUSERCLKIN3, posedge TXDATA3[22], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXDATA3[22]);
    $setuphold (posedge TXUSERCLKIN3, posedge TXDATA3[23], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXDATA3[23]);
    $setuphold (posedge TXUSERCLKIN3, posedge TXDATA3[24], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXDATA3[24]);
    $setuphold (posedge TXUSERCLKIN3, posedge TXDATA3[25], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXDATA3[25]);
    $setuphold (posedge TXUSERCLKIN3, posedge TXDATA3[26], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXDATA3[26]);
    $setuphold (posedge TXUSERCLKIN3, posedge TXDATA3[27], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXDATA3[27]);
    $setuphold (posedge TXUSERCLKIN3, posedge TXDATA3[28], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXDATA3[28]);
    $setuphold (posedge TXUSERCLKIN3, posedge TXDATA3[29], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXDATA3[29]);
    $setuphold (posedge TXUSERCLKIN3, posedge TXDATA3[2], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXDATA3[2]);
    $setuphold (posedge TXUSERCLKIN3, posedge TXDATA3[30], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXDATA3[30]);
    $setuphold (posedge TXUSERCLKIN3, posedge TXDATA3[31], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXDATA3[31]);
    $setuphold (posedge TXUSERCLKIN3, posedge TXDATA3[32], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXDATA3[32]);
    $setuphold (posedge TXUSERCLKIN3, posedge TXDATA3[33], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXDATA3[33]);
    $setuphold (posedge TXUSERCLKIN3, posedge TXDATA3[34], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXDATA3[34]);
    $setuphold (posedge TXUSERCLKIN3, posedge TXDATA3[35], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXDATA3[35]);
    $setuphold (posedge TXUSERCLKIN3, posedge TXDATA3[36], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXDATA3[36]);
    $setuphold (posedge TXUSERCLKIN3, posedge TXDATA3[37], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXDATA3[37]);
    $setuphold (posedge TXUSERCLKIN3, posedge TXDATA3[38], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXDATA3[38]);
    $setuphold (posedge TXUSERCLKIN3, posedge TXDATA3[39], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXDATA3[39]);
    $setuphold (posedge TXUSERCLKIN3, posedge TXDATA3[3], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXDATA3[3]);
    $setuphold (posedge TXUSERCLKIN3, posedge TXDATA3[40], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXDATA3[40]);
    $setuphold (posedge TXUSERCLKIN3, posedge TXDATA3[41], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXDATA3[41]);
    $setuphold (posedge TXUSERCLKIN3, posedge TXDATA3[42], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXDATA3[42]);
    $setuphold (posedge TXUSERCLKIN3, posedge TXDATA3[43], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXDATA3[43]);
    $setuphold (posedge TXUSERCLKIN3, posedge TXDATA3[44], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXDATA3[44]);
    $setuphold (posedge TXUSERCLKIN3, posedge TXDATA3[45], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXDATA3[45]);
    $setuphold (posedge TXUSERCLKIN3, posedge TXDATA3[46], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXDATA3[46]);
    $setuphold (posedge TXUSERCLKIN3, posedge TXDATA3[47], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXDATA3[47]);
    $setuphold (posedge TXUSERCLKIN3, posedge TXDATA3[48], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXDATA3[48]);
    $setuphold (posedge TXUSERCLKIN3, posedge TXDATA3[49], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXDATA3[49]);
    $setuphold (posedge TXUSERCLKIN3, posedge TXDATA3[4], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXDATA3[4]);
    $setuphold (posedge TXUSERCLKIN3, posedge TXDATA3[50], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXDATA3[50]);
    $setuphold (posedge TXUSERCLKIN3, posedge TXDATA3[51], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXDATA3[51]);
    $setuphold (posedge TXUSERCLKIN3, posedge TXDATA3[52], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXDATA3[52]);
    $setuphold (posedge TXUSERCLKIN3, posedge TXDATA3[53], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXDATA3[53]);
    $setuphold (posedge TXUSERCLKIN3, posedge TXDATA3[54], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXDATA3[54]);
    $setuphold (posedge TXUSERCLKIN3, posedge TXDATA3[55], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXDATA3[55]);
    $setuphold (posedge TXUSERCLKIN3, posedge TXDATA3[56], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXDATA3[56]);
    $setuphold (posedge TXUSERCLKIN3, posedge TXDATA3[57], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXDATA3[57]);
    $setuphold (posedge TXUSERCLKIN3, posedge TXDATA3[58], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXDATA3[58]);
    $setuphold (posedge TXUSERCLKIN3, posedge TXDATA3[59], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXDATA3[59]);
    $setuphold (posedge TXUSERCLKIN3, posedge TXDATA3[5], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXDATA3[5]);
    $setuphold (posedge TXUSERCLKIN3, posedge TXDATA3[60], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXDATA3[60]);
    $setuphold (posedge TXUSERCLKIN3, posedge TXDATA3[61], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXDATA3[61]);
    $setuphold (posedge TXUSERCLKIN3, posedge TXDATA3[62], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXDATA3[62]);
    $setuphold (posedge TXUSERCLKIN3, posedge TXDATA3[63], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXDATA3[63]);
    $setuphold (posedge TXUSERCLKIN3, posedge TXDATA3[6], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXDATA3[6]);
    $setuphold (posedge TXUSERCLKIN3, posedge TXDATA3[7], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXDATA3[7]);
    $setuphold (posedge TXUSERCLKIN3, posedge TXDATA3[8], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXDATA3[8]);
    $setuphold (posedge TXUSERCLKIN3, posedge TXDATA3[9], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXDATA3[9]);
    $setuphold (posedge TXUSERCLKIN3, posedge TXDATAMSB3[0], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXDATAMSB3[0]);
    $setuphold (posedge TXUSERCLKIN3, posedge TXDATAMSB3[1], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXDATAMSB3[1]);
    $setuphold (posedge TXUSERCLKIN3, posedge TXDATAMSB3[2], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXDATAMSB3[2]);
    $setuphold (posedge TXUSERCLKIN3, posedge TXDATAMSB3[3], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXDATAMSB3[3]);
    $setuphold (posedge TXUSERCLKIN3, posedge TXDATAMSB3[4], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXDATAMSB3[4]);
    $setuphold (posedge TXUSERCLKIN3, posedge TXDATAMSB3[5], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXDATAMSB3[5]);
    $setuphold (posedge TXUSERCLKIN3, posedge TXDATAMSB3[6], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXDATAMSB3[6]);
    $setuphold (posedge TXUSERCLKIN3, posedge TXDATAMSB3[7], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXDATAMSB3[7]);
    $setuphold (posedge TXUSERCLKIN3, posedge TXDEEMPH3, 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXDEEMPH3);
    $setuphold (posedge TXUSERCLKIN3, posedge TXMARGIN3[0], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXMARGIN3[0]);
    $setuphold (posedge TXUSERCLKIN3, posedge TXMARGIN3[1], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXMARGIN3[1]);
    $setuphold (posedge TXUSERCLKIN3, posedge TXMARGIN3[2], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXMARGIN3[2]);
    $setuphold (posedge TXUSERCLKIN3, posedge TXPOWERDOWN3[0], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXPOWERDOWN3[0]);
    $setuphold (posedge TXUSERCLKIN3, posedge TXPOWERDOWN3[1], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXPOWERDOWN3[1]);
    $setuphold (posedge TXUSERCLKIN3, posedge TXRATE3[0], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXRATE3[0]);
    $setuphold (posedge TXUSERCLKIN3, posedge TXRATE3[1], 0:0:0, 0:0:0, notifier,,, delay_TXUSERCLKIN3, delay_TXRATE3[1]);
    ( DCLK => DRDY) = (100:100:100, 100:100:100);
    ( DCLK => DRPDO[0]) = (100:100:100, 100:100:100);
    ( DCLK => DRPDO[10]) = (100:100:100, 100:100:100);
    ( DCLK => DRPDO[11]) = (100:100:100, 100:100:100);
    ( DCLK => DRPDO[12]) = (100:100:100, 100:100:100);
    ( DCLK => DRPDO[13]) = (100:100:100, 100:100:100);
    ( DCLK => DRPDO[14]) = (100:100:100, 100:100:100);
    ( DCLK => DRPDO[15]) = (100:100:100, 100:100:100);
    ( DCLK => DRPDO[1]) = (100:100:100, 100:100:100);
    ( DCLK => DRPDO[2]) = (100:100:100, 100:100:100);
    ( DCLK => DRPDO[3]) = (100:100:100, 100:100:100);
    ( DCLK => DRPDO[4]) = (100:100:100, 100:100:100);
    ( DCLK => DRPDO[5]) = (100:100:100, 100:100:100);
    ( DCLK => DRPDO[6]) = (100:100:100, 100:100:100);
    ( DCLK => DRPDO[7]) = (100:100:100, 100:100:100);
    ( DCLK => DRPDO[8]) = (100:100:100, 100:100:100);
    ( DCLK => DRPDO[9]) = (100:100:100, 100:100:100);
    ( DCLK => GTHINITDONE) = (100:100:100, 100:100:100);
    ( DCLK => MGMTPCSRDACK) = (100:100:100, 100:100:100);
    ( DCLK => MGMTPCSRDDATA[0]) = (100:100:100, 100:100:100);
    ( DCLK => MGMTPCSRDDATA[10]) = (100:100:100, 100:100:100);
    ( DCLK => MGMTPCSRDDATA[11]) = (100:100:100, 100:100:100);
    ( DCLK => MGMTPCSRDDATA[12]) = (100:100:100, 100:100:100);
    ( DCLK => MGMTPCSRDDATA[13]) = (100:100:100, 100:100:100);
    ( DCLK => MGMTPCSRDDATA[14]) = (100:100:100, 100:100:100);
    ( DCLK => MGMTPCSRDDATA[15]) = (100:100:100, 100:100:100);
    ( DCLK => MGMTPCSRDDATA[1]) = (100:100:100, 100:100:100);
    ( DCLK => MGMTPCSRDDATA[2]) = (100:100:100, 100:100:100);
    ( DCLK => MGMTPCSRDDATA[3]) = (100:100:100, 100:100:100);
    ( DCLK => MGMTPCSRDDATA[4]) = (100:100:100, 100:100:100);
    ( DCLK => MGMTPCSRDDATA[5]) = (100:100:100, 100:100:100);
    ( DCLK => MGMTPCSRDDATA[6]) = (100:100:100, 100:100:100);
    ( DCLK => MGMTPCSRDDATA[7]) = (100:100:100, 100:100:100);
    ( DCLK => MGMTPCSRDDATA[8]) = (100:100:100, 100:100:100);
    ( DCLK => MGMTPCSRDDATA[9]) = (100:100:100, 100:100:100);
    ( REFCLK => TSTREFCLKFAB) = (100:100:100, 100:100:100);
    ( REFCLK => TSTREFCLKOUT) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN0 => RXCODEERR0[0]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN0 => RXCODEERR0[1]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN0 => RXCODEERR0[2]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN0 => RXCODEERR0[3]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN0 => RXCODEERR0[4]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN0 => RXCODEERR0[5]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN0 => RXCODEERR0[6]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN0 => RXCODEERR0[7]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN0 => RXCTRL0[0]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN0 => RXCTRL0[1]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN0 => RXCTRL0[2]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN0 => RXCTRL0[3]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN0 => RXCTRL0[4]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN0 => RXCTRL0[5]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN0 => RXCTRL0[6]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN0 => RXCTRL0[7]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN0 => RXDATA0[0]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN0 => RXDATA0[10]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN0 => RXDATA0[11]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN0 => RXDATA0[12]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN0 => RXDATA0[13]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN0 => RXDATA0[14]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN0 => RXDATA0[15]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN0 => RXDATA0[16]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN0 => RXDATA0[17]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN0 => RXDATA0[18]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN0 => RXDATA0[19]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN0 => RXDATA0[1]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN0 => RXDATA0[20]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN0 => RXDATA0[21]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN0 => RXDATA0[22]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN0 => RXDATA0[23]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN0 => RXDATA0[24]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN0 => RXDATA0[25]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN0 => RXDATA0[26]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN0 => RXDATA0[27]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN0 => RXDATA0[28]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN0 => RXDATA0[29]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN0 => RXDATA0[2]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN0 => RXDATA0[30]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN0 => RXDATA0[31]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN0 => RXDATA0[32]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN0 => RXDATA0[33]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN0 => RXDATA0[34]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN0 => RXDATA0[35]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN0 => RXDATA0[36]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN0 => RXDATA0[37]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN0 => RXDATA0[38]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN0 => RXDATA0[39]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN0 => RXDATA0[3]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN0 => RXDATA0[40]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN0 => RXDATA0[41]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN0 => RXDATA0[42]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN0 => RXDATA0[43]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN0 => RXDATA0[44]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN0 => RXDATA0[45]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN0 => RXDATA0[46]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN0 => RXDATA0[47]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN0 => RXDATA0[48]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN0 => RXDATA0[49]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN0 => RXDATA0[4]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN0 => RXDATA0[50]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN0 => RXDATA0[51]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN0 => RXDATA0[52]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN0 => RXDATA0[53]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN0 => RXDATA0[54]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN0 => RXDATA0[55]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN0 => RXDATA0[56]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN0 => RXDATA0[57]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN0 => RXDATA0[58]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN0 => RXDATA0[59]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN0 => RXDATA0[5]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN0 => RXDATA0[60]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN0 => RXDATA0[61]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN0 => RXDATA0[62]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN0 => RXDATA0[63]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN0 => RXDATA0[6]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN0 => RXDATA0[7]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN0 => RXDATA0[8]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN0 => RXDATA0[9]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN0 => RXDISPERR0[0]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN0 => RXDISPERR0[1]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN0 => RXDISPERR0[2]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN0 => RXDISPERR0[3]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN0 => RXDISPERR0[4]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN0 => RXDISPERR0[5]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN0 => RXDISPERR0[6]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN0 => RXDISPERR0[7]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN0 => RXVALID0[0]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN0 => RXVALID0[1]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN0 => RXVALID0[2]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN0 => RXVALID0[3]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN0 => RXVALID0[4]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN0 => RXVALID0[5]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN0 => RXVALID0[6]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN0 => RXVALID0[7]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN1 => RXCODEERR1[0]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN1 => RXCODEERR1[1]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN1 => RXCODEERR1[2]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN1 => RXCODEERR1[3]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN1 => RXCODEERR1[4]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN1 => RXCODEERR1[5]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN1 => RXCODEERR1[6]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN1 => RXCODEERR1[7]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN1 => RXCTRL1[0]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN1 => RXCTRL1[1]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN1 => RXCTRL1[2]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN1 => RXCTRL1[3]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN1 => RXCTRL1[4]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN1 => RXCTRL1[5]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN1 => RXCTRL1[6]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN1 => RXCTRL1[7]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN1 => RXDATA1[0]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN1 => RXDATA1[10]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN1 => RXDATA1[11]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN1 => RXDATA1[12]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN1 => RXDATA1[13]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN1 => RXDATA1[14]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN1 => RXDATA1[15]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN1 => RXDATA1[16]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN1 => RXDATA1[17]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN1 => RXDATA1[18]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN1 => RXDATA1[19]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN1 => RXDATA1[1]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN1 => RXDATA1[20]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN1 => RXDATA1[21]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN1 => RXDATA1[22]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN1 => RXDATA1[23]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN1 => RXDATA1[24]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN1 => RXDATA1[25]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN1 => RXDATA1[26]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN1 => RXDATA1[27]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN1 => RXDATA1[28]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN1 => RXDATA1[29]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN1 => RXDATA1[2]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN1 => RXDATA1[30]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN1 => RXDATA1[31]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN1 => RXDATA1[32]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN1 => RXDATA1[33]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN1 => RXDATA1[34]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN1 => RXDATA1[35]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN1 => RXDATA1[36]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN1 => RXDATA1[37]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN1 => RXDATA1[38]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN1 => RXDATA1[39]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN1 => RXDATA1[3]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN1 => RXDATA1[40]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN1 => RXDATA1[41]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN1 => RXDATA1[42]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN1 => RXDATA1[43]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN1 => RXDATA1[44]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN1 => RXDATA1[45]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN1 => RXDATA1[46]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN1 => RXDATA1[47]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN1 => RXDATA1[48]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN1 => RXDATA1[49]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN1 => RXDATA1[4]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN1 => RXDATA1[50]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN1 => RXDATA1[51]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN1 => RXDATA1[52]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN1 => RXDATA1[53]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN1 => RXDATA1[54]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN1 => RXDATA1[55]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN1 => RXDATA1[56]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN1 => RXDATA1[57]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN1 => RXDATA1[58]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN1 => RXDATA1[59]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN1 => RXDATA1[5]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN1 => RXDATA1[60]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN1 => RXDATA1[61]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN1 => RXDATA1[62]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN1 => RXDATA1[63]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN1 => RXDATA1[6]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN1 => RXDATA1[7]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN1 => RXDATA1[8]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN1 => RXDATA1[9]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN1 => RXDISPERR1[0]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN1 => RXDISPERR1[1]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN1 => RXDISPERR1[2]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN1 => RXDISPERR1[3]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN1 => RXDISPERR1[4]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN1 => RXDISPERR1[5]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN1 => RXDISPERR1[6]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN1 => RXDISPERR1[7]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN1 => RXVALID1[0]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN1 => RXVALID1[1]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN1 => RXVALID1[2]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN1 => RXVALID1[3]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN1 => RXVALID1[4]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN1 => RXVALID1[5]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN1 => RXVALID1[6]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN1 => RXVALID1[7]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN2 => RXCODEERR2[0]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN2 => RXCODEERR2[1]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN2 => RXCODEERR2[2]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN2 => RXCODEERR2[3]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN2 => RXCODEERR2[4]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN2 => RXCODEERR2[5]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN2 => RXCODEERR2[6]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN2 => RXCODEERR2[7]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN2 => RXCTRL2[0]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN2 => RXCTRL2[1]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN2 => RXCTRL2[2]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN2 => RXCTRL2[3]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN2 => RXCTRL2[4]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN2 => RXCTRL2[5]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN2 => RXCTRL2[6]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN2 => RXCTRL2[7]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN2 => RXDATA2[0]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN2 => RXDATA2[10]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN2 => RXDATA2[11]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN2 => RXDATA2[12]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN2 => RXDATA2[13]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN2 => RXDATA2[14]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN2 => RXDATA2[15]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN2 => RXDATA2[16]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN2 => RXDATA2[17]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN2 => RXDATA2[18]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN2 => RXDATA2[19]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN2 => RXDATA2[1]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN2 => RXDATA2[20]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN2 => RXDATA2[21]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN2 => RXDATA2[22]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN2 => RXDATA2[23]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN2 => RXDATA2[24]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN2 => RXDATA2[25]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN2 => RXDATA2[26]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN2 => RXDATA2[27]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN2 => RXDATA2[28]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN2 => RXDATA2[29]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN2 => RXDATA2[2]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN2 => RXDATA2[30]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN2 => RXDATA2[31]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN2 => RXDATA2[32]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN2 => RXDATA2[33]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN2 => RXDATA2[34]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN2 => RXDATA2[35]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN2 => RXDATA2[36]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN2 => RXDATA2[37]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN2 => RXDATA2[38]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN2 => RXDATA2[39]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN2 => RXDATA2[3]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN2 => RXDATA2[40]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN2 => RXDATA2[41]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN2 => RXDATA2[42]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN2 => RXDATA2[43]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN2 => RXDATA2[44]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN2 => RXDATA2[45]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN2 => RXDATA2[46]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN2 => RXDATA2[47]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN2 => RXDATA2[48]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN2 => RXDATA2[49]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN2 => RXDATA2[4]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN2 => RXDATA2[50]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN2 => RXDATA2[51]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN2 => RXDATA2[52]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN2 => RXDATA2[53]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN2 => RXDATA2[54]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN2 => RXDATA2[55]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN2 => RXDATA2[56]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN2 => RXDATA2[57]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN2 => RXDATA2[58]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN2 => RXDATA2[59]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN2 => RXDATA2[5]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN2 => RXDATA2[60]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN2 => RXDATA2[61]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN2 => RXDATA2[62]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN2 => RXDATA2[63]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN2 => RXDATA2[6]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN2 => RXDATA2[7]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN2 => RXDATA2[8]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN2 => RXDATA2[9]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN2 => RXDISPERR2[0]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN2 => RXDISPERR2[1]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN2 => RXDISPERR2[2]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN2 => RXDISPERR2[3]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN2 => RXDISPERR2[4]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN2 => RXDISPERR2[5]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN2 => RXDISPERR2[6]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN2 => RXDISPERR2[7]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN2 => RXVALID2[0]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN2 => RXVALID2[1]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN2 => RXVALID2[2]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN2 => RXVALID2[3]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN2 => RXVALID2[4]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN2 => RXVALID2[5]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN2 => RXVALID2[6]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN2 => RXVALID2[7]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN3 => RXCODEERR3[0]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN3 => RXCODEERR3[1]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN3 => RXCODEERR3[2]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN3 => RXCODEERR3[3]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN3 => RXCODEERR3[4]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN3 => RXCODEERR3[5]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN3 => RXCODEERR3[6]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN3 => RXCODEERR3[7]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN3 => RXCTRL3[0]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN3 => RXCTRL3[1]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN3 => RXCTRL3[2]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN3 => RXCTRL3[3]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN3 => RXCTRL3[4]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN3 => RXCTRL3[5]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN3 => RXCTRL3[6]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN3 => RXCTRL3[7]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN3 => RXDATA3[0]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN3 => RXDATA3[10]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN3 => RXDATA3[11]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN3 => RXDATA3[12]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN3 => RXDATA3[13]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN3 => RXDATA3[14]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN3 => RXDATA3[15]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN3 => RXDATA3[16]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN3 => RXDATA3[17]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN3 => RXDATA3[18]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN3 => RXDATA3[19]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN3 => RXDATA3[1]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN3 => RXDATA3[20]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN3 => RXDATA3[21]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN3 => RXDATA3[22]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN3 => RXDATA3[23]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN3 => RXDATA3[24]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN3 => RXDATA3[25]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN3 => RXDATA3[26]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN3 => RXDATA3[27]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN3 => RXDATA3[28]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN3 => RXDATA3[29]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN3 => RXDATA3[2]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN3 => RXDATA3[30]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN3 => RXDATA3[31]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN3 => RXDATA3[32]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN3 => RXDATA3[33]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN3 => RXDATA3[34]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN3 => RXDATA3[35]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN3 => RXDATA3[36]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN3 => RXDATA3[37]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN3 => RXDATA3[38]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN3 => RXDATA3[39]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN3 => RXDATA3[3]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN3 => RXDATA3[40]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN3 => RXDATA3[41]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN3 => RXDATA3[42]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN3 => RXDATA3[43]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN3 => RXDATA3[44]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN3 => RXDATA3[45]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN3 => RXDATA3[46]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN3 => RXDATA3[47]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN3 => RXDATA3[48]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN3 => RXDATA3[49]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN3 => RXDATA3[4]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN3 => RXDATA3[50]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN3 => RXDATA3[51]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN3 => RXDATA3[52]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN3 => RXDATA3[53]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN3 => RXDATA3[54]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN3 => RXDATA3[55]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN3 => RXDATA3[56]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN3 => RXDATA3[57]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN3 => RXDATA3[58]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN3 => RXDATA3[59]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN3 => RXDATA3[5]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN3 => RXDATA3[60]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN3 => RXDATA3[61]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN3 => RXDATA3[62]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN3 => RXDATA3[63]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN3 => RXDATA3[6]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN3 => RXDATA3[7]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN3 => RXDATA3[8]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN3 => RXDATA3[9]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN3 => RXDISPERR3[0]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN3 => RXDISPERR3[1]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN3 => RXDISPERR3[2]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN3 => RXDISPERR3[3]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN3 => RXDISPERR3[4]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN3 => RXDISPERR3[5]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN3 => RXDISPERR3[6]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN3 => RXDISPERR3[7]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN3 => RXVALID3[0]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN3 => RXVALID3[1]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN3 => RXVALID3[2]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN3 => RXVALID3[3]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN3 => RXVALID3[4]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN3 => RXVALID3[5]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN3 => RXVALID3[6]) = (100:100:100, 100:100:100);
    ( RXUSERCLKIN3 => RXVALID3[7]) = (100:100:100, 100:100:100);
    ( TXUSERCLKIN0 => RXCTRLACK0) = (100:100:100, 100:100:100);
    ( TXUSERCLKIN0 => TXCTRLACK0) = (100:100:100, 100:100:100);
    ( TXUSERCLKIN1 => RXCTRLACK1) = (100:100:100, 100:100:100);
    ( TXUSERCLKIN1 => TXCTRLACK1) = (100:100:100, 100:100:100);
    ( TXUSERCLKIN2 => RXCTRLACK2) = (100:100:100, 100:100:100);
    ( TXUSERCLKIN2 => TXCTRLACK2) = (100:100:100, 100:100:100);
    ( TXUSERCLKIN3 => RXCTRLACK3) = (100:100:100, 100:100:100);
    ( TXUSERCLKIN3 => TXCTRLACK3) = (100:100:100, 100:100:100);

    specparam PATHPULSE$ = 0;
  endspecify
endmodule
