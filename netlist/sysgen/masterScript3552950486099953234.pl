
open(PIDFILE, '> pidfile.txt') || die 'Couldn\'t write process ID to file.';
print PIDFILE "$$\n";
close(PIDFILE);

eval {
  # Call script(s).
  my $instrs;
  my $results = [];
$ENV{'SYSGEN'} = 'D:/Xilinx/14.7/ISE_DS/ISE/sysgen';
  use Sg;
  $instrs = {
    'HDLCodeGenStatus' => 0.0,
    'HDL_PATH' => 'D:/work/cfr_spartan6_V1_2',
    'Impl_file' => 'ISE Defaults',
    'Impl_file_sgadvanced' => '',
    'Synth_file' => 'XST Defaults',
    'Synth_file_sgadvanced' => '',
    'TEMP' => 'C:/Users/ADMINI~1.000/AppData/Local/Temp',
    'TMP' => 'C:/Users/ADMINI~1.000/AppData/Local/Temp',
    'Temp' => 'C:/Users/ADMINI~1.000/AppData/Local/Temp',
    'Tmp' => 'C:/Users/ADMINI~1.000/AppData/Local/Temp',
    'base_system_period_hardware' => 3.5,
    'base_system_period_simulink' => 1.0,
    'block_icon_display' => 'Default',
    'block_type' => 'sysgen',
    'block_version' => '',
    'ce_clr' => 0.0,
    'clock_domain' => 'default',
    'clock_loc' => '',
    'clock_wrapper' => 'Clock Enables',
    'clock_wrapper_sgadvanced' => '',
    'compilation' => 'HDL Netlist',
    'compilation_lut' => {
      'keys' => [ 'HDL Netlist', ],
      'values' => [ 'target1', ],
    },
    'compilation_target' => 'HDL Netlist',
    'core_generation' => 1.0,
    'core_generation_sgadvanced' => '',
    'core_is_deployed' => 0.0,
    'coregen_core_generation_tmpdir' => 'C:/Users/ADMINI~1.000/AppData/Local/Temp/sysgentmp-Administrator/cg_wk/ce29d3b589ac52b24',
    'coregen_part_family' => 'spartan6',
    'createTestbench' => 0,
    'create_interface_document' => 'off',
    'dbl_ovrd' => -1.0,
    'dbl_ovrd_sgadvanced' => '',
    'dcm_input_clock_period' => 10.0,
    'deprecated_control' => 'off',
    'deprecated_control_sgadvanced' => '',
    'design' => 'pc_cfr_spartan6_v1_2',
    'design_full_path' => 'D:\\work\\cfr_spartan6_V1_2\\pc_cfr_spartan6_v1_2.slx',
    'device' => 'xc6slx150-3fgg484',
    'device_speed' => '-3',
    'directory' => 'D:/work/cfr_spartan6_V1_2/netlist',
    'dsp_cache_root_path' => 'C:/Users/ADMINI~1.000/AppData/Local/Temp/sysgentmp-Administrator',
    'eval_field' => '0',
    'fileDeliveryDefaults' => [
      [
        '(?i)\\.vhd$',
        { 'fileName' => 'D:/work/cfr_spartan6_V1_2/netlist/sysgen/perl_results.vhd', },
      ],
      [
        '(?i)\\.v$',
        { 'fileName' => 'D:/work/cfr_spartan6_V1_2/netlist/sysgen/perl_results.v', },
      ],
    ],
    'fxdptinstalled' => 1.0,
    'generateUsing71FrontEnd' => 1,
    'generating_island_subsystem_handle' => 2078.00048828125,
    'generating_subsystem_handle' => 2078.00048828125,
    'generation_directory' => './netlist',
    'has_advanced_control' => '0',
    'hdlDir' => 'D:/Xilinx/14.7/ISE_DS/ISE/sysgen/hdl',
    'hdlKind' => 'verilog',
    'hdl_path' => 'D:/work/cfr_spartan6_V1_2',
    'impl_file' => 'ISE Defaults*',
    'incr_netlist' => 'off',
    'incr_netlist_sgadvanced' => '',
    'infoedit' => ' System Generator',
    'isdeployed' => 0,
    'ise_version' => '14.7i',
    'master_sysgen_token_handle' => 2079.322021484375,
    'matlab' => 'D:/Program Files/MATLAB/R2013a',
    'matlab_fixedpoint' => 1.0,
    'mdlHandle' => 2078.00048828125,
    'mdlPath' => 'D:/work/cfr_spartan6_V1_2/pc_cfr_spartan6_v1_2.mdl',
    'modelDiagnostics' => [
      {
        'count' => 1039.0,
        'isMask' => 0.0,
        'type' => 'pc_cfr_spartan6_v1_2 Total blocks',
      },
      {
        'count' => 5.0,
        'isMask' => 0.0,
        'type' => 'Constant',
      },
      {
        'count' => 2.0,
        'isMask' => 0.0,
        'type' => 'DataTypeDuplicate',
      },
      {
        'count' => 2.0,
        'isMask' => 0.0,
        'type' => 'DiscretePulseGenerator',
      },
      {
        'count' => 3.0,
        'isMask' => 0.0,
        'type' => 'FrameConversion',
      },
      {
        'count' => 33.0,
        'isMask' => 0.0,
        'type' => 'From',
      },
      {
        'count' => 3.0,
        'isMask' => 0.0,
        'type' => 'FromWorkspace',
      },
      {
        'count' => 6.0,
        'isMask' => 0.0,
        'type' => 'Goto',
      },
      {
        'count' => 6.0,
        'isMask' => 0.0,
        'type' => 'GotoTagVisibility',
      },
      {
        'count' => 228.0,
        'isMask' => 0.0,
        'type' => 'Inport',
      },
      {
        'count' => 1.0,
        'isMask' => 0.0,
        'type' => 'InportShadow',
      },
      {
        'count' => 1.0,
        'isMask' => 0.0,
        'type' => 'Logic',
      },
      {
        'count' => 154.0,
        'isMask' => 0.0,
        'type' => 'Outport',
      },
      {
        'count' => 452.0,
        'isMask' => 0.0,
        'type' => 'S-Function',
      },
      {
        'count' => 1.0,
        'isMask' => 0.0,
        'type' => 'SignalSpecification',
      },
      {
        'count' => 3.0,
        'isMask' => 0.0,
        'type' => 'Step',
      },
      {
        'count' => 91.0,
        'isMask' => 0.0,
        'type' => 'SubSystem',
      },
      {
        'count' => 1.0,
        'isMask' => 0.0,
        'type' => 'Sum',
      },
      {
        'count' => 1.0,
        'isMask' => 0.0,
        'type' => 'Switch',
      },
      {
        'count' => 18.0,
        'isMask' => 0.0,
        'type' => 'Terminator',
      },
      {
        'count' => 27.0,
        'isMask' => 0.0,
        'type' => 'ToWorkspace',
      },
      {
        'count' => 1.0,
        'isMask' => 0.0,
        'type' => 'UnitDelay',
      },
      {
        'count' => 1.0,
        'isMask' => 1.0,
        'type' => 'Counter Free-Running',
      },
      {
        'count' => 1.0,
        'isMask' => 1.0,
        'type' => 'Data Type Propagation',
      },
      {
        'count' => 1.0,
        'isMask' => 1.0,
        'type' => 'Real World Value Increment',
      },
      {
        'count' => 3.0,
        'isMask' => 1.0,
        'type' => 'Signal From Workspace',
      },
      {
        'count' => 1.0,
        'isMask' => 1.0,
        'type' => 'Wrap To Zero',
      },
      {
        'count' => 44.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Adder/Subtracter Block',
      },
      {
        'count' => 8.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Arithmetic Relational Operator Block',
      },
      {
        'count' => 17.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Binary Shift Operator Block',
      },
      {
        'count' => 44.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Bit Slice Extractor Block',
      },
      {
        'count' => 11.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Bus Concatenator Block',
      },
      {
        'count' => 42.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Bus Multiplexer Block',
      },
      {
        'count' => 51.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Constant Block Block',
      },
      {
        'count' => 3.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Counter Block',
      },
      {
        'count' => 18.0,
        'isMask' => 1.0,
        'type' => 'Xilinx DSP48A Block',
      },
      {
        'count' => 16.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Delay Block',
      },
      {
        'count' => 7.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Dual Port Random Access Memory Block',
      },
      {
        'count' => 9.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Gateway In Block',
      },
      {
        'count' => 27.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Gateway Out Block',
      },
      {
        'count' => 18.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Instruction Block Block',
      },
      {
        'count' => 17.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Inverter Block',
      },
      {
        'count' => 13.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Logical Block Block',
      },
      {
        'count' => 2.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Negate Block Block',
      },
      {
        'count' => 56.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Register Block',
      },
      {
        'count' => 2.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Single Port Read-Only Memory Block',
      },
      {
        'count' => 1.0,
        'isMask' => 1.0,
        'type' => 'Xilinx System Generator Block',
      },
      {
        'count' => 25.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Type Converter Block',
      },
      {
        'count' => 19.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Type Reinterpreter Block',
      },
      {
        'count' => 2.0,
        'isMask' => 1.0,
        'type' => 'Xilinx WaveScope Block',
      },
    ],
    'model_globals_initialized' => 1.0,
    'model_path' => 'D:/work/cfr_spartan6_V1_2/pc_cfr_spartan6_v1_2.mdl',
    'myxilinx' => 'D:/Xilinx/14.7/ISE_DS/ISE',
    'ngc_files' => [ 'xlpersistentdff.ngc', ],
    'num_sim_cycles' => '200000',
    'package' => 'fgg484',
    'part' => 'xc6slx150',
    'partFamily' => 'spartan6',
    'port_data_types_enabled' => 1.0,
    'preserve_hierarchy' => 0.0,
    'proj_type' => 'Project Navigator',
    'proj_type_sgadvanced' => '',
    'run_coregen' => 'off',
    'run_coregen_sgadvanced' => '',
    'sample_time_colors_enabled' => 0.0,
    'sampletimecolors' => 0.0,
    'sg_blockgui_xml' => '',
    'sg_icon_stat' => '50,50,-1,-1,token,white,0,07734,right,,[ ],[ ]',
    'sg_list_contents' => '',
    'sg_mask_display' => 'fprintf(\'\',\'COMMENT: begin icon graphics\');
patch([0 50 50 0 0 ],[0 0 50 50 0 ],[1 1 1 ]);
patch([1.6375 16.81 27.31 37.81 48.31 27.31 12.1375 1.6375 ],[36.655 36.655 47.155 36.655 47.155 47.155 47.155 36.655 ],[0.933333 0.203922 0.141176 ]);
patch([12.1375 27.31 16.81 1.6375 12.1375 ],[26.155 26.155 36.655 36.655 26.155 ],[0.698039 0.0313725 0.219608 ]);
patch([1.6375 16.81 27.31 12.1375 1.6375 ],[15.655 15.655 26.155 26.155 15.655 ],[0.933333 0.203922 0.141176 ]);
patch([12.1375 48.31 37.81 27.31 16.81 1.6375 12.1375 ],[5.155 5.155 15.655 5.155 15.655 15.655 5.155 ],[0.698039 0.0313725 0.219608 ]);
fprintf(\'\',\'COMMENT: end icon graphics\');
fprintf(\'\',\'COMMENT: begin icon text\');
fprintf(\'\',\'COMMENT: end icon text\');',
    'sg_version' => '',
    'sggui_pos' => '-1,-1,-1,-1',
    'simulation_island_subsystem_handle' => 2078.00048828125,
    'simulink_accelerator_running' => 0.0,
    'simulink_debugger_running' => 0.0,
    'simulink_period' => 1.0,
    'speed' => '-3',
    'synth_file' => 'XST Defaults*',
    'synthesisTool' => 'XST',
    'synthesis_language' => 'verilog',
    'synthesis_tool' => 'XST',
    'synthesis_tool_sgadvanced' => '',
    'sysclk_period' => 3.5,
    'sysgen' => 'D:/Xilinx/14.7/ISE_DS/ISE/sysgen',
    'sysgenRoot' => 'D:/Xilinx/14.7/ISE_DS/ISE/sysgen',
    'sysgenTokenSettings' => {
      'Impl_file' => 'ISE Defaults',
      'Impl_file_sgadvanced' => '',
      'Synth_file' => 'XST Defaults',
      'Synth_file_sgadvanced' => '',
      'base_system_period_hardware' => 3.5,
      'base_system_period_simulink' => 1.0,
      'block_icon_display' => 'Default',
      'block_type' => 'sysgen',
      'block_version' => '',
      'ce_clr' => 0.0,
      'clock_loc' => '',
      'clock_wrapper' => 'Clock Enables',
      'clock_wrapper_sgadvanced' => '',
      'compilation' => 'HDL Netlist',
      'compilation_lut' => {
        'keys' => [ 'HDL Netlist', ],
        'values' => [ 'target1', ],
      },
      'core_generation' => 1.0,
      'core_generation_sgadvanced' => '',
      'coregen_part_family' => 'spartan6',
      'create_interface_document' => 'off',
      'dbl_ovrd' => -1.0,
      'dbl_ovrd_sgadvanced' => '',
      'dcm_input_clock_period' => 10.0,
      'deprecated_control' => 'off',
      'deprecated_control_sgadvanced' => '',
      'directory' => './netlist',
      'eval_field' => '0',
      'has_advanced_control' => '0',
      'impl_file' => 'ISE Defaults*',
      'incr_netlist' => 'off',
      'incr_netlist_sgadvanced' => '',
      'infoedit' => ' System Generator',
      'master_sysgen_token_handle' => 2079.322021484375,
      'package' => 'fgg484',
      'part' => 'xc6slx150',
      'preserve_hierarchy' => 0.0,
      'proj_type' => 'Project Navigator',
      'proj_type_sgadvanced' => '',
      'run_coregen' => 'off',
      'run_coregen_sgadvanced' => '',
      'sg_blockgui_xml' => '',
      'sg_icon_stat' => '50,50,-1,-1,token,white,0,07734,right,,[ ],[ ]',
      'sg_list_contents' => '',
      'sg_mask_display' => 'fprintf(\'\',\'COMMENT: begin icon graphics\');
patch([0 50 50 0 0 ],[0 0 50 50 0 ],[1 1 1 ]);
patch([1.6375 16.81 27.31 37.81 48.31 27.31 12.1375 1.6375 ],[36.655 36.655 47.155 36.655 47.155 47.155 47.155 36.655 ],[0.933333 0.203922 0.141176 ]);
patch([12.1375 27.31 16.81 1.6375 12.1375 ],[26.155 26.155 36.655 36.655 26.155 ],[0.698039 0.0313725 0.219608 ]);
patch([1.6375 16.81 27.31 12.1375 1.6375 ],[15.655 15.655 26.155 26.155 15.655 ],[0.933333 0.203922 0.141176 ]);
patch([12.1375 48.31 37.81 27.31 16.81 1.6375 12.1375 ],[5.155 5.155 15.655 5.155 15.655 15.655 5.155 ],[0.698039 0.0313725 0.219608 ]);
fprintf(\'\',\'COMMENT: end icon graphics\');
fprintf(\'\',\'COMMENT: begin icon text\');
fprintf(\'\',\'COMMENT: end icon text\');',
      'sggui_pos' => '-1,-1,-1,-1',
      'simulation_island_subsystem_handle' => 2078.00048828125,
      'simulink_period' => 1.0,
      'speed' => '-3',
      'synth_file' => 'XST Defaults*',
      'synthesis_language' => 'verilog',
      'synthesis_tool' => 'XST',
      'synthesis_tool_sgadvanced' => '',
      'sysclk_period' => 3.5,
      'testbench' => 0,
      'testbench_sgadvanced' => '',
      'trim_vbits' => 1.0,
      'trim_vbits_sgadvanced' => '',
      'xilinx_device' => 'xc6slx150-3fgg484',
      'xilinxfamily' => 'spartan6',
    },
    'sysgen_Root' => 'D:/Xilinx/14.7/ISE_DS/ISE/sysgen',
    'systemClockPeriod' => 3.5,
    'tempdir' => 'C:/Users/ADMINI~1.000/AppData/Local/Temp',
    'testbench' => 0,
    'testbench_sgadvanced' => '',
    'tmpDir' => 'D:/work/cfr_spartan6_V1_2/netlist/sysgen',
    'trim_vbits' => 1.0,
    'trim_vbits_sgadvanced' => '',
    'use_strict_names' => 1,
    'user_tips_enabled' => 0.0,
    'usertemp' => 'C:/Users/ADMINI~1.000/AppData/Local/Temp/sysgentmp-Administrator',
    'using71Netlister' => 1,
    'verilog_files' => [
      'conv_pkg.v',
      'synth_reg.v',
      'synth_reg_w_init.v',
      'convert_type.v',
    ],
    'version' => '',
    'vhdl_files' => [
      'conv_pkg.vhd',
      'synth_reg.vhd',
      'synth_reg_w_init.vhd',
    ],
    'vsimtime' => '770275.000000 ns',
    'xilinx' => 'D:/Xilinx/14.7/ISE_DS/ISE',
    'xilinx_device' => 'xc6slx150-3fgg484',
    'xilinx_family' => 'spartan6',
    'xilinx_package' => 'fgg484',
    'xilinx_part' => 'xc6slx150',
    'xilinxdevice' => 'xc6slx150-3fgg484',
    'xilinxfamily' => 'spartan6',
    'xilinxpart' => 'xc6slx150',
  };
  push(@$results, &Sg::setAttributes($instrs));
  use SgDeliverFile;
  $instrs = {
    'collaborationName' => 'conv_pkg.v',
    'sourceFile' => 'hdl/conv_pkg.v',
    'templateKeyValues' => {},
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'collaborationName' => 'synth_reg.v',
    'sourceFile' => 'hdl/synth_reg.v',
    'templateKeyValues' => {},
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'collaborationName' => 'synth_reg_w_init.v',
    'sourceFile' => 'hdl/synth_reg_w_init.v',
    'templateKeyValues' => {},
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'collaborationName' => 'convert_type.v',
    'sourceFile' => 'hdl/convert_type.v',
    'templateKeyValues' => {},
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'collaborationName' => 'xlpersistentdff.ngc',
    'sourceFile' => 'hdl/xlpersistentdff.ngc',
    'templateKeyValues' => {},
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '60c233b12989bdc730a08acb4267d324',
    'sourceFile' => 'hdl/xlmcode.v',
    'templateKeyValues' => {
      'crippled_module' => '(
  input [(16 - 1):0] a,
  input [(1 - 1):0] b,
  output [(16 - 1):0] s,
  input clk,
  input ce,
  input clr);
  wire [(16 - 1):0] a_17_32;
  wire [(1 - 1):0] b_17_35;
  localparam signed [(16 - 1):0] const_value = 16\'sb0000000000000000;
  reg signed [(16 - 1):0] op_mem_91_20[0:(1 - 1)];
  initial
    begin
      op_mem_91_20[0] = 16\'b0000000000000000;
    end
  wire signed [(16 - 1):0] op_mem_91_20_front_din;
  wire signed [(16 - 1):0] op_mem_91_20_back;
  wire op_mem_91_20_push_front_pop_back_en;
  localparam [(1 - 1):0] const_value_x_000000 = 1\'b0;
  reg [(1 - 1):0] cout_mem_92_22[0:(1 - 1)];
  initial
    begin
      cout_mem_92_22[0] = 1\'b0;
    end
  wire [(1 - 1):0] cout_mem_92_22_front_din;
  wire [(1 - 1):0] cout_mem_92_22_back;
  wire cout_mem_92_22_push_front_pop_back_en;
  wire [(3 - 1):0] prev_mode_93_22_next;
  wire [(3 - 1):0] prev_mode_93_22;
  wire [(3 - 1):0] prev_mode_93_22_reg_i;
  wire [(3 - 1):0] prev_mode_93_22_reg_o;
  localparam [(1 - 1):0] const_value_x_000001 = 1\'b0;
  localparam [(1 - 1):0] const_value_x_000002 = 1\'b1;
  localparam [(1 - 1):0] const_value_x_000003 = 1\'b0;
  localparam [(1 - 1):0] const_value_x_000004 = 1\'b0;
  wire [(17 - 1):0] cast_69_18;
  wire [(17 - 1):0] cast_69_22;
  wire [(17 - 1):0] internal_s_69_5_addsub;
  localparam [(1 - 1):0] const_value_x_000005 = 1\'b0;
  wire signed [(16 - 1):0] cast_internal_s_83_3_convert;
  localparam [(1 - 1):0] const_value_x_000006 = 1\'b0;
  localparam [(3 - 1):0] const_value_x_000007 = 3\'b000;
  assign a_17_32 = a;
  assign b_17_35 = b;
  assign op_mem_91_20_back = op_mem_91_20[0];
  always @(posedge clk)
    begin:proc_op_mem_91_20
      integer i;
      if (((ce == 1\'b1) && (op_mem_91_20_push_front_pop_back_en == 1\'b1)))
        begin
          op_mem_91_20[0] <= op_mem_91_20_front_din;
        end
    end
  assign cout_mem_92_22_back = cout_mem_92_22[0];
  always @(posedge clk)
    begin:proc_cout_mem_92_22
      integer i_x_000000;
      if (((ce == 1\'b1) && (cout_mem_92_22_push_front_pop_back_en == 1\'b1)))
        begin
          cout_mem_92_22[0] <= cout_mem_92_22_front_din;
        end
    end
  assign prev_mode_93_22_reg_i = prev_mode_93_22_next;
  assign prev_mode_93_22 = prev_mode_93_22_reg_o;
  defparam prev_mode_93_22_reg_inst.init_index = 2;
  defparam prev_mode_93_22_reg_inst.init_value = 3\'b010;
  defparam prev_mode_93_22_reg_inst.latency = 1;
  defparam prev_mode_93_22_reg_inst.width = 3;
  synth_reg_w_init prev_mode_93_22_reg_inst(.ce(ce), .clk(clk), .clr(clr), .i(prev_mode_93_22_reg_i), .o(prev_mode_93_22_reg_o));
  assign cast_69_18 = {1\'b0, a_17_32[15:0]};
  assign cast_69_22 = {16\'b0000000000000000, b_17_35};
  assign internal_s_69_5_addsub = cast_69_18 + cast_69_22;
  assign cast_internal_s_83_3_convert = {internal_s_69_5_addsub[15:0]};
  assign op_mem_91_20_front_din = cast_internal_s_83_3_convert;
  assign op_mem_91_20_push_front_pop_back_en = 1\'b1;
  assign cout_mem_92_22_front_din = const_value_x_000006;
  assign cout_mem_92_22_push_front_pop_back_en = 1\'b1;
  assign prev_mode_93_22_next = const_value_x_000007;
  assign s = op_mem_91_20_back;
endmodule
',
      'entity_name' => 'addsub_f4effc1419',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'e30800c61d17324ae7320f726a55a159',
    'sourceFile' => 'D:/Xilinx/14.7/ISE_DS/ISE/sysgen/hdl/xlslice.v',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '7a6e61899aa5fabbf9498eddade6539f',
    'sourceFile' => 'D:/Xilinx/14.7/ISE_DS/ISE/sysgen/hdl/xlslice.v',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '6137ac27e96fed67a9e14845be344ddf',
    'sourceFile' => 'D:/Xilinx/14.7/ISE_DS/ISE/sysgen/hdl/xlconvert.v',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '7f76b21136a90ef5de390b90a00b8fbf',
    'sourceFile' => 'D:/Xilinx/14.7/ISE_DS/ISE/sysgen/hdl/xldsp48a.v',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'be111a083128911e113682b5721da3f9',
    'sourceFile' => 'D:/Xilinx/14.7/ISE_DS/ISE/sysgen/hdl/xldsp48a.v',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '6b231cd047ed45496688b9b52524594e',
    'sourceFile' => 'hdl/xlmcode.v',
    'templateKeyValues' => {
      'crippled_module' => '(
  output [(8 - 1):0] op,
  input clk,
  input ce,
  input clr);
  localparam [(1 - 1):0] const_value = 1\'b0;
  localparam [(8 - 1):0] const_value_x_000000 = 8\'b10000101;
  localparam [(2 - 1):0] const_value_x_000001 = 2\'b10;
  localparam [(5 - 1):0] const_value_x_000002 = 5\'b00101;
  localparam [(8 - 1):0] const_value_x_000003 = 8\'b10000101;
  assign op = 8\'b10000101;
endmodule
',
      'entity_name' => 'opmode_2165f420d9',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '3e4a099a28f036d6e2c16293bbc31c5f',
    'sourceFile' => 'hdl/xlmcode.v',
    'templateKeyValues' => {
      'crippled_module' => '(
  output [(8 - 1):0] op,
  input clk,
  input ce,
  input clr);
  localparam [(1 - 1):0] const_value = 1\'b0;
  localparam [(8 - 1):0] const_value_x_000000 = 8\'b00000001;
  localparam [(2 - 1):0] const_value_x_000001 = 2\'b00;
  localparam [(5 - 1):0] const_value_x_000002 = 5\'b00001;
  localparam [(8 - 1):0] const_value_x_000003 = 8\'b00000001;
  assign op = 8\'b00000001;
endmodule
',
      'entity_name' => 'opmode_5fb0570878',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'd639260d90944f614f7514dd8d01ee61',
    'sourceFile' => 'hdl/xlmcode.v',
    'templateKeyValues' => {
      'crippled_module' => '(
  output [(8 - 1):0] op,
  input clk,
  input ce,
  input clr);
  localparam [(1 - 1):0] const_value = 1\'b0;
  localparam [(8 - 1):0] const_value_x_000000 = 8\'b00000101;
  localparam [(2 - 1):0] const_value_x_000001 = 2\'b00;
  localparam [(5 - 1):0] const_value_x_000002 = 5\'b00101;
  localparam [(8 - 1):0] const_value_x_000003 = 8\'b00000101;
  assign op = 8\'b00000101;
endmodule
',
      'entity_name' => 'opmode_bb63313631',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '63eebdcd6358df4f33781d71c138b660',
    'sourceFile' => 'D:/Xilinx/14.7/ISE_DS/ISE/sysgen/hdl/xlregister.v',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '535ab8279e33aea364093a0db2f1fa37',
    'sourceFile' => 'D:/Xilinx/14.7/ISE_DS/ISE/sysgen/hdl/xlregister.v',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '7aa50f7036962d5d2546d15a9c53652f',
    'sourceFile' => 'hdl/xlmcode.v',
    'templateKeyValues' => {
      'crippled_module' => '(
  output [(8 - 1):0] op,
  input clk,
  input ce,
  input clr);
  assign op = 8\'b00000000;
endmodule
',
      'entity_name' => 'constant_2226f4eb84',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'fdf62b794d3511150ab7ad6f1605a89b',
    'sourceFile' => 'hdl/xlmcode.v',
    'templateKeyValues' => {
      'crippled_module' => '(
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
        1\'b0 :
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
',
      'entity_name' => 'mux_200bef452f',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '82fc41c57074143fa61ec2c66d27422b',
    'sourceFile' => 'D:/Xilinx/14.7/ISE_DS/ISE/sysgen/hdl/xlregister.v',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '7b9ede050cb0bd4f90c292e9c6bfca6a',
    'sourceFile' => 'hdl/xlmcode.v',
    'templateKeyValues' => {
      'crippled_module' => '(
  input [(8 - 1):0] a,
  input [(8 - 1):0] b,
  output [(8 - 1):0] s,
  input clk,
  input ce,
  input clr);
  wire [(8 - 1):0] a_17_32;
  wire [(8 - 1):0] b_17_35;
  localparam [(8 - 1):0] const_value = 8\'b00000000;
  reg [(8 - 1):0] op_mem_91_20[0:(1 - 1)];
  initial
    begin
      op_mem_91_20[0] = 8\'b00000000;
    end
  wire [(8 - 1):0] op_mem_91_20_front_din;
  wire [(8 - 1):0] op_mem_91_20_back;
  wire op_mem_91_20_push_front_pop_back_en;
  localparam [(1 - 1):0] const_value_x_000000 = 1\'b0;
  reg [(1 - 1):0] cout_mem_92_22[0:(1 - 1)];
  initial
    begin
      cout_mem_92_22[0] = 1\'b0;
    end
  wire [(1 - 1):0] cout_mem_92_22_front_din;
  wire [(1 - 1):0] cout_mem_92_22_back;
  wire cout_mem_92_22_push_front_pop_back_en;
  wire [(3 - 1):0] prev_mode_93_22_next;
  wire [(3 - 1):0] prev_mode_93_22;
  wire [(3 - 1):0] prev_mode_93_22_reg_i;
  wire [(3 - 1):0] prev_mode_93_22_reg_o;
  localparam [(1 - 1):0] const_value_x_000001 = 1\'b0;
  localparam [(1 - 1):0] const_value_x_000002 = 1\'b1;
  localparam [(1 - 1):0] const_value_x_000003 = 1\'b0;
  localparam [(1 - 1):0] const_value_x_000004 = 1\'b0;
  wire [(9 - 1):0] cast_69_18;
  wire [(9 - 1):0] cast_69_22;
  wire [(9 - 1):0] internal_s_69_5_addsub;
  localparam [(1 - 1):0] const_value_x_000005 = 1\'b0;
  wire [(8 - 1):0] cast_internal_s_83_3_convert;
  localparam [(1 - 1):0] const_value_x_000006 = 1\'b0;
  localparam [(3 - 1):0] const_value_x_000007 = 3\'b000;
  assign a_17_32 = a;
  assign b_17_35 = b;
  assign op_mem_91_20_back = op_mem_91_20[0];
  always @(posedge clk)
    begin:proc_op_mem_91_20
      integer i;
      if (((ce == 1\'b1) && (op_mem_91_20_push_front_pop_back_en == 1\'b1)))
        begin
          op_mem_91_20[0] <= op_mem_91_20_front_din;
        end
    end
  assign cout_mem_92_22_back = cout_mem_92_22[0];
  always @(posedge clk)
    begin:proc_cout_mem_92_22
      integer i_x_000000;
      if (((ce == 1\'b1) && (cout_mem_92_22_push_front_pop_back_en == 1\'b1)))
        begin
          cout_mem_92_22[0] <= cout_mem_92_22_front_din;
        end
    end
  assign prev_mode_93_22_reg_i = prev_mode_93_22_next;
  assign prev_mode_93_22 = prev_mode_93_22_reg_o;
  defparam prev_mode_93_22_reg_inst.init_index = 2;
  defparam prev_mode_93_22_reg_inst.init_value = 3\'b010;
  defparam prev_mode_93_22_reg_inst.latency = 1;
  defparam prev_mode_93_22_reg_inst.width = 3;
  synth_reg_w_init prev_mode_93_22_reg_inst(.ce(ce), .clk(clk), .clr(clr), .i(prev_mode_93_22_reg_i), .o(prev_mode_93_22_reg_o));
  assign cast_69_18 = {1\'b0, a_17_32[7:0]};
  assign cast_69_22 = {1\'b0, b_17_35[7:0]};
  assign internal_s_69_5_addsub = cast_69_18 + cast_69_22;
  assign cast_internal_s_83_3_convert = {internal_s_69_5_addsub[7:0]};
  assign op_mem_91_20_push_front_pop_back_en = 1\'b0;
  assign cout_mem_92_22_push_front_pop_back_en = 1\'b0;
  assign prev_mode_93_22_next = const_value_x_000007;
  assign s = cast_internal_s_83_3_convert;
endmodule
',
      'entity_name' => 'addsub_4a36ae9713',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '9a661c195ed5d6fe4e38720d88f58017',
    'sourceFile' => 'hdl/xlmcode.v',
    'templateKeyValues' => {
      'crippled_module' => '(
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
',
      'entity_name' => 'concat_983f7013a1',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '155ba7b3b385bae8eb4a4031f50d4ed3',
    'sourceFile' => 'hdl/xlmcode.v',
    'templateKeyValues' => {
      'crippled_module' => '(
  output [(8 - 1):0] op,
  input clk,
  input ce,
  input clr);
  assign op = 8\'b00000001;
endmodule
',
      'entity_name' => 'constant_667e01fdca',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'a42eda3c23ce2165b86825298f9dea2a',
    'sourceFile' => 'hdl/xlmcode.v',
    'templateKeyValues' => {
      'crippled_module' => '(
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
        2\'b00 :
          begin
            unregy_join_6_1 = d0_1_24;
          end
        2\'b01 :
          begin
            unregy_join_6_1 = d1_1_27;
          end
        2\'b10 :
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
',
      'entity_name' => 'mux_cec3ff20dd',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'a9df897f6e2ec588227083c8774ca956',
    'sourceFile' => 'hdl/xlmcode.v',
    'templateKeyValues' => {
      'crippled_module' => '(
  input [(1 - 1):0] ip,
  output [(1 - 1):0] op,
  input clk,
  input ce,
  input clr);
  wire ip_1_26;
  reg op_mem_22_20[0:(1 - 1)];
  initial
    begin
      op_mem_22_20[0] = 1\'b0;
    end
  wire op_mem_22_20_front_din;
  wire op_mem_22_20_back;
  wire op_mem_22_20_push_front_pop_back_en;
  localparam [(1 - 1):0] const_value = 1\'b1;
  wire internal_ip_12_1_bitnot;
  assign ip_1_26 = ip;
  assign op_mem_22_20_back = op_mem_22_20[0];
  always @(posedge clk)
    begin:proc_op_mem_22_20
      integer i;
      if (((ce == 1\'b1) && (op_mem_22_20_push_front_pop_back_en == 1\'b1)))
        begin
          op_mem_22_20[0] <= op_mem_22_20_front_din;
        end
    end
  assign internal_ip_12_1_bitnot = ~ip_1_26;
  assign op_mem_22_20_push_front_pop_back_en = 1\'b0;
  assign op = internal_ip_12_1_bitnot;
endmodule
',
      'entity_name' => 'inverter_33a63b558a',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '3e783914fe65a09d875fe987659aefef',
    'sourceFile' => 'hdl/xlmcode.v',
    'templateKeyValues' => {
      'crippled_module' => '(
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
',
      'entity_name' => 'logical_eb4558179a',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '023f0bec91d8762ec4d2f106a372184e',
    'sourceFile' => 'hdl/xlmcode.v',
    'templateKeyValues' => {
      'crippled_module' => '(
  input [(8 - 1):0] a,
  input [(8 - 1):0] b,
  output [(1 - 1):0] op,
  input clk,
  input ce,
  input clr);
  wire [(8 - 1):0] a_1_31;
  wire [(8 - 1):0] b_1_34;
  localparam [(1 - 1):0] const_value = 1\'b1;
  wire result_16_3_rel;
  assign a_1_31 = a;
  assign b_1_34 = b;
  assign result_16_3_rel = a_1_31 < b_1_34;
  assign op = result_16_3_rel;
endmodule
',
      'entity_name' => 'relational_05044e5b4f',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '43ade11ddd7024795d1409d95919d550',
    'sourceFile' => 'hdl/xlmcode.v',
    'templateKeyValues' => {
      'crippled_module' => '(
  output [(9 - 1):0] op,
  input clk,
  input ce,
  input clr);
  assign op = 9\'b111111111;
endmodule
',
      'entity_name' => 'constant_8492578f79',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '8b13fb40f2579f6dc6a6eedcb64a86f8',
    'sourceFile' => 'hdl/xlmcode.v',
    'templateKeyValues' => {
      'crippled_module' => '(
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
        1\'b0 :
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
',
      'entity_name' => 'mux_8cff345167',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'f15f46674fdabd8c5c13058b894335c0',
    'sourceFile' => 'D:/Xilinx/14.7/ISE_DS/ISE/sysgen/hdl/xlregister.v',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '55f525fde21b753e7a1c7140376e11db',
    'sourceFile' => 'hdl/xlmcode.v',
    'templateKeyValues' => {
      'crippled_module' => '(
  input [(9 - 1):0] a,
  input [(9 - 1):0] b,
  output [(9 - 1):0] s,
  input clk,
  input ce,
  input clr);
  wire [(9 - 1):0] a_17_32;
  wire [(9 - 1):0] b_17_35;
  localparam [(9 - 1):0] const_value = 9\'b000000000;
  reg [(9 - 1):0] op_mem_91_20[0:(1 - 1)];
  initial
    begin
      op_mem_91_20[0] = 9\'b000000000;
    end
  wire [(9 - 1):0] op_mem_91_20_front_din;
  wire [(9 - 1):0] op_mem_91_20_back;
  wire op_mem_91_20_push_front_pop_back_en;
  localparam [(1 - 1):0] const_value_x_000000 = 1\'b0;
  reg [(1 - 1):0] cout_mem_92_22[0:(1 - 1)];
  initial
    begin
      cout_mem_92_22[0] = 1\'b0;
    end
  wire [(1 - 1):0] cout_mem_92_22_front_din;
  wire [(1 - 1):0] cout_mem_92_22_back;
  wire cout_mem_92_22_push_front_pop_back_en;
  wire [(3 - 1):0] prev_mode_93_22_next;
  wire [(3 - 1):0] prev_mode_93_22;
  wire [(3 - 1):0] prev_mode_93_22_reg_i;
  wire [(3 - 1):0] prev_mode_93_22_reg_o;
  localparam [(1 - 1):0] const_value_x_000001 = 1\'b0;
  localparam [(1 - 1):0] const_value_x_000002 = 1\'b1;
  localparam [(1 - 1):0] const_value_x_000003 = 1\'b0;
  localparam [(1 - 1):0] const_value_x_000004 = 1\'b0;
  wire [(10 - 1):0] cast_69_18;
  wire [(10 - 1):0] cast_69_22;
  wire [(10 - 1):0] internal_s_69_5_addsub;
  localparam [(1 - 1):0] const_value_x_000005 = 1\'b0;
  wire [(9 - 1):0] cast_internal_s_83_3_convert;
  localparam [(1 - 1):0] const_value_x_000006 = 1\'b0;
  localparam [(3 - 1):0] const_value_x_000007 = 3\'b000;
  assign a_17_32 = a;
  assign b_17_35 = b;
  assign op_mem_91_20_back = op_mem_91_20[0];
  always @(posedge clk)
    begin:proc_op_mem_91_20
      integer i;
      if (((ce == 1\'b1) && (op_mem_91_20_push_front_pop_back_en == 1\'b1)))
        begin
          op_mem_91_20[0] <= op_mem_91_20_front_din;
        end
    end
  assign cout_mem_92_22_back = cout_mem_92_22[0];
  always @(posedge clk)
    begin:proc_cout_mem_92_22
      integer i_x_000000;
      if (((ce == 1\'b1) && (cout_mem_92_22_push_front_pop_back_en == 1\'b1)))
        begin
          cout_mem_92_22[0] <= cout_mem_92_22_front_din;
        end
    end
  assign prev_mode_93_22_reg_i = prev_mode_93_22_next;
  assign prev_mode_93_22 = prev_mode_93_22_reg_o;
  defparam prev_mode_93_22_reg_inst.init_index = 2;
  defparam prev_mode_93_22_reg_inst.init_value = 3\'b010;
  defparam prev_mode_93_22_reg_inst.latency = 1;
  defparam prev_mode_93_22_reg_inst.width = 3;
  synth_reg_w_init prev_mode_93_22_reg_inst(.ce(ce), .clk(clk), .clr(clr), .i(prev_mode_93_22_reg_i), .o(prev_mode_93_22_reg_o));
  assign cast_69_18 = {1\'b0, a_17_32[8:0]};
  assign cast_69_22 = {1\'b0, b_17_35[8:0]};
  assign internal_s_69_5_addsub = cast_69_18 + cast_69_22;
  assign cast_internal_s_83_3_convert = {internal_s_69_5_addsub[8:0]};
  assign op_mem_91_20_push_front_pop_back_en = 1\'b0;
  assign cout_mem_92_22_push_front_pop_back_en = 1\'b0;
  assign prev_mode_93_22_next = const_value_x_000007;
  assign s = cast_internal_s_83_3_convert;
endmodule
',
      'entity_name' => 'addsub_c2009d8515',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'dc4a6504d80db0c25d3cabb5cc30f162',
    'sourceFile' => 'hdl/xlmcode.v',
    'templateKeyValues' => {
      'crippled_module' => '(
  output [(9 - 1):0] op,
  input clk,
  input ce,
  input clr);
  assign op = 9\'b000000000;
endmodule
',
      'entity_name' => 'constant_f12266ed24',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '816857de86079867772b0b9a5ddf9e20',
    'sourceFile' => 'hdl/xlmcode.v',
    'templateKeyValues' => {
      'crippled_module' => '(
  output [(9 - 1):0] op,
  input clk,
  input ce,
  input clr);
  assign op = 9\'b000000001;
endmodule
',
      'entity_name' => 'constant_04e831922d',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'f600d53a93d9314798379af2f7b92d48',
    'sourceFile' => 'hdl/xlmcode.v',
    'templateKeyValues' => {
      'crippled_module' => '(
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
        2\'b00 :
          begin
            unregy_join_6_1 = d0_1_24;
          end
        2\'b01 :
          begin
            unregy_join_6_1 = d1_1_27;
          end
        2\'b10 :
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
',
      'entity_name' => 'mux_3e1d71756d',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'c18f5815d5f19daae7aa03906c6c6e7a',
    'sourceFile' => 'hdl/xlmcode.v',
    'templateKeyValues' => {
      'crippled_module' => '(
  input [(9 - 1):0] a,
  input [(9 - 1):0] b,
  output [(1 - 1):0] op,
  input clk,
  input ce,
  input clr);
  wire [(9 - 1):0] a_1_31;
  wire [(9 - 1):0] b_1_34;
  localparam [(1 - 1):0] const_value = 1\'b1;
  wire result_16_3_rel;
  assign a_1_31 = a;
  assign b_1_34 = b;
  assign result_16_3_rel = a_1_31 < b_1_34;
  assign op = result_16_3_rel;
endmodule
',
      'entity_name' => 'relational_0d4f3bb1f9',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '05c56fa8eb50c7a8bce27c62c1bc91ff',
    'sourceFile' => 'hdl/xlmcode.v',
    'templateKeyValues' => {
      'crippled_module' => '(
  output [(1 - 1):0] op,
  input clk,
  input ce,
  input clr);
  assign op = 1\'b0;
endmodule
',
      'entity_name' => 'constant_ae323e07fc',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '9b1fd1250906113c9e380200b13a2d6e',
    'sourceFile' => 'hdl/xlmcode.v',
    'templateKeyValues' => {
      'crippled_module' => '(
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
        1\'b0 :
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
',
      'entity_name' => 'mux_c613b505f8',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'a09582a4010da019b99726ecfae97d7f',
    'sourceFile' => 'hdl/xlmcode.v',
    'templateKeyValues' => {
      'crippled_module' => '(
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
        1\'b0 :
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
',
      'entity_name' => 'mux_31d78b046f',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'b87ab8f772a9470ec60c16051ac4a6c5',
    'sourceFile' => 'hdl/xlmcode.v',
    'templateKeyValues' => {
      'crippled_module' => '(
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
',
      'entity_name' => 'logical_a950764719',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'eb0c6cb740a7e975fa480f41d34e74d9',
    'sourceFile' => 'hdl/xlmcode.v',
    'templateKeyValues' => {
      'crippled_module' => '(
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
',
      'entity_name' => 'logical_818bd6d54b',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'd708a0f28c7a4177e0cea98af1a33645',
    'sourceFile' => 'hdl/xlmcode.v',
    'templateKeyValues' => {
      'crippled_module' => '(
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
',
      'entity_name' => 'logical_ce5967518d',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '034251cdd45091a6ac17a8cd16a0f414',
    'sourceFile' => 'hdl/xlmcode.v',
    'templateKeyValues' => {
      'crippled_module' => '(
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
',
      'entity_name' => 'logical_7ffc9c41e8',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '7550558fcfd8d272c1175b86e8077fdc',
    'sourceFile' => 'hdl/xlmcode.v',
    'templateKeyValues' => {
      'crippled_module' => '(
  output [(32 - 1):0] op,
  input clk,
  input ce,
  input clr);
  assign op = 32\'b00000000000000000000000000000000;
endmodule
',
      'entity_name' => 'constant_07da815359',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  use SgGenerateCores;
  $instrs = [
    'SELECT Block_Memory_Generator spartan6 Xilinx,_Inc. 7.2',
    '# 14.7_P.79',
    '# DEVICE spartan6',
    '# VERILOG',
    'CSET algorithm = Minimum_Area',
    'CSET assume_synchronous_clk = true',
    'CSET byte_size = 9',
    'CSET coe_file = [
',
    '  MEMORY_INITIALIZATION_RADIX = 16;',
    '  MEMORY_INITIALIZATION_VECTOR = 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;',
    '
]',
    'CSET collision_warnings = ALL',
    'CSET disable_collision_warnings = false',
    'CSET ecc = false',
    'CSET enable_a = Use_ENA_Pin',
    'CSET enable_b = Use_ENB_Pin',
    'CSET error_injection_type = Single_Bit_Error_Injection',
    'CSET fill_remaining_memory_locations = false',
    'CSET load_init_file = TRUE',
    'CSET memory_type = True_Dual_Port_RAM',
    'CSET operating_mode_a = WRITE_FIRST',
    'CSET operating_mode_b = WRITE_FIRST',
    'CSET output_reset_value_a = 0',
    'CSET output_reset_value_b = 0',
    'CSET pipeline_stages = 0',
    'CSET primitive = 8kx2',
    'CSET read_width_a = 32',
    'CSET read_width_b = 32',
    'CSET register_porta_output_of_memory_core = false',
    'CSET register_porta_output_of_memory_primitives = true',
    'CSET register_portb_output_of_memory_core = false',
    'CSET register_portb_output_of_memory_primitives = true',
    'CSET remaining_memory_locations = 0',
    'CSET reset_type = SYNC',
    'CSET use_byte_write_enable = false',
    'CSET use_error_injection_pins = false',
    'CSET use_regcea_pin = false',
    'CSET use_regceb_pin = false',
    'CSET use_rsta_pin = false',
    'CSET use_rstb_pin = false',
    'CSET write_depth_a = 512',
    'CSET write_width_a = 32',
    'CSET write_width_b = 32',
    'CSET component_name = bmg_72_1a6cb457801618b3',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '1a76c612a3130c314529430796c9d75f',
    'sourceFile' => 'hdl/xldpram.v',
    'templateKeyValues' => {
      'core_component_def' => ' (addra, clka, addrb, clkb, dina, wea, dinb, web, ena, enb, douta, doutb)/* synthesis syn_black_box */;
      input [8:0] addra;
      input [8:0] addrb;
      input [31:0] dina;
      input [31:0] dinb;
      input clka, wea, ena;
      input clkb, web, enb;
      output [31:0] douta;
      output [31:0] doutb;',
      'core_instance_text' => '      .addra(core_addra),
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
      .doutb(core_doutb)',
      'core_name0' => 'bmg_72_1a6cb457801618b3',
      'entityName' => 'xldpram_pc_cfr_spartan6_v1_2',
      'entity_name.0' => 'xldpram',
      'needs_core' => 1,
      'vivado_flow' => 0,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'a6222d149f3a0d341a65263282767983',
    'sourceFile' => 'D:/Xilinx/14.7/ISE_DS/ISE/sysgen/hdl/xlslice.v',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '97da20821ec255f6a93e977fb4b87a02',
    'sourceFile' => 'D:/Xilinx/14.7/ISE_DS/ISE/sysgen/hdl/xlslice.v',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'c7b119821d27b13746c3d0698ec84dc0',
    'sourceFile' => 'hdl/xlmcode.v',
    'templateKeyValues' => {
      'crippled_module' => '(
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
',
      'entity_name' => 'reinterpret_dee95c6dbb',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = [
    'SELECT Adder_Subtracter spartan6 Xilinx,_Inc. 11.0',
    '# 14.7_P.79',
    '# DEVICE spartan6',
    '# VERILOG',
    'CSET AINIT_Value = 0',
    'CSET A_Type = Signed',
    'CSET A_Width = 17',
    'CSET Add_Mode = Add',
    'CSET B_Constant = false',
    'CSET B_Type = Signed',
    'CSET B_Value = 0',
    'CSET B_Width = 17',
    'CSET Borrow_Sense = Active_Low',
    'CSET Bypass = false',
    'CSET Bypass_CE_Priority = Bypass_Overrides_CE',
    'CSET Bypass_Sense = Active_Low',
    'CSET CE = true',
    'CSET C_In = false',
    'CSET C_Out = false',
    'CSET Implementation = Fabric',
    'CSET Latency = 1',
    'CSET Out_Width = 17',
    'CSET SCLR = false',
    'CSET SINIT = false',
    'CSET SINIT_Value = 0',
    'CSET SSET = false',
    'CSET Sync_CE_Priority = Sync_Overrides_CE',
    'CSET Sync_Ctrl_Priority = Reset_Overrides_Set',
    'SET simulationfiles = Structural',
    'CSET component_name = addsb_11_0_775dc3edc6782f4e',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => 'd2d10cfcae7c1f11b5a563b5ba14adf7',
    'sourceFile' => 'hdl/xladdsub.v',
    'templateKeyValues' => {
      'core_component_def' => '(A, CLK, CE, S, B) /* synthesis syn_black_box */;
      input[16:0] A;
     input CLK;
     input CE;
     output[16:0] S;
     input[16:0] B;',
      'core_instance_text' => '         .a(full_a),
         .clk(clk),
         .ce(internal_ce),
         .s(core_s),
         .b(full_b)',
      'core_name0' => 'addsb_11_0_775dc3edc6782f4e',
      'entityName' => 'xladdsub_pc_cfr_spartan6_v1_2',
      'entity_name.0' => 'xladdsub',
      'needs_core' => 1,
      'vivado_flow' => 0,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Adder_Subtracter spartan6 Xilinx,_Inc. 11.0',
    '# 14.7_P.79',
    '# DEVICE spartan6',
    '# VERILOG',
    'CSET AINIT_Value = 0',
    'CSET A_Type = Signed',
    'CSET A_Width = 17',
    'CSET Add_Mode = Add',
    'CSET B_Constant = false',
    'CSET B_Type = Signed',
    'CSET B_Value = 0',
    'CSET B_Width = 17',
    'CSET Borrow_Sense = Active_Low',
    'CSET Bypass = false',
    'CSET Bypass_CE_Priority = Bypass_Overrides_CE',
    'CSET Bypass_Sense = Active_Low',
    'CSET CE = false',
    'CSET C_In = false',
    'CSET C_Out = false',
    'CSET Implementation = Fabric',
    'CSET Latency = 0',
    'CSET Out_Width = 17',
    'CSET SCLR = false',
    'CSET SINIT = false',
    'CSET SINIT_Value = 0',
    'CSET SSET = false',
    'CSET Sync_CE_Priority = Sync_Overrides_CE',
    'CSET Sync_Ctrl_Priority = Reset_Overrides_Set',
    'SET simulationfiles = Structural',
    'CSET component_name = addsb_11_0_232ff08b73742c1b',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => 'f7b881732f4c2ba8c1b433ff707152da',
    'sourceFile' => 'hdl/xladdsub.v',
    'templateKeyValues' => {
      'core_component_def' => '(A, S, B) /* synthesis syn_black_box */;
      input[16:0] A;
     output[16:0] S;
     input[16:0] B;',
      'core_instance_text' => '         .a(full_a),
         .s(core_s),
         .b(full_b)',
      'core_name0' => 'addsb_11_0_232ff08b73742c1b',
      'entityName' => 'xladdsub_pc_cfr_spartan6_v1_2',
      'entity_name.0' => 'xladdsub',
      'needs_core' => 1,
      'vivado_flow' => 0,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '440810f3b5e3d487f5f086d1896e9109',
    'sourceFile' => 'hdl/xlmcode.v',
    'templateKeyValues' => {
      'crippled_module' => '(
  input [(16 - 1):0] d,
  output [(16 - 1):0] q,
  input clk,
  input ce,
  input clr);
  wire [(16 - 1):0] d_1_22;
  localparam [(16 - 1):0] const_value = 16\'b0000000000000000;
  reg [(16 - 1):0] op_mem_20_24[0:(3 - 1)];
  initial
    begin
      op_mem_20_24[0] = 16\'b0000000000000000;
      op_mem_20_24[1] = 16\'b0000000000000000;
      op_mem_20_24[2] = 16\'b0000000000000000;
    end
  wire [(16 - 1):0] op_mem_20_24_front_din;
  wire [(16 - 1):0] op_mem_20_24_back;
  wire op_mem_20_24_push_front_pop_back_en;
  localparam [(2 - 1):0] const_value_x_000000 = 2\'b11;
  assign d_1_22 = d;
  assign op_mem_20_24_back = op_mem_20_24[2];
  always @(posedge clk)
    begin:proc_op_mem_20_24
      integer i;
      if (((ce == 1\'b1) && (op_mem_20_24_push_front_pop_back_en == 1\'b1)))
        begin
          for (i=2; i>=1; i=i-1)
            begin
              op_mem_20_24[i] <= op_mem_20_24[i-1];
            end
          op_mem_20_24[0] <= op_mem_20_24_front_din;
        end
    end
  assign op_mem_20_24_front_din = d_1_22;
  assign op_mem_20_24_push_front_pop_back_en = 1\'b1;
  assign q = op_mem_20_24_back;
endmodule
',
      'entity_name' => 'delay_7d3a088f82',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '19008d4e666e4ca8533f55ac92c0204b',
    'sourceFile' => 'D:/Xilinx/14.7/ISE_DS/ISE/sysgen/hdl/xlslice.v',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '0c008b684c4bbb65a9d054d1b50d6090',
    'sourceFile' => 'hdl/xlmcode.v',
    'templateKeyValues' => {
      'crippled_module' => '(
  input [(26 - 1):0] a,
  input [(26 - 1):0] b,
  output [(26 - 1):0] s,
  input clk,
  input ce,
  input clr);
  wire signed [(26 - 1):0] a_17_32;
  wire signed [(26 - 1):0] b_17_35;
  localparam signed [(26 - 1):0] const_value = 26\'sb00000000000000000000000000;
  reg signed [(26 - 1):0] op_mem_91_20[0:(1 - 1)];
  initial
    begin
      op_mem_91_20[0] = 26\'b00000000000000000000000000;
    end
  wire signed [(26 - 1):0] op_mem_91_20_front_din;
  wire signed [(26 - 1):0] op_mem_91_20_back;
  wire op_mem_91_20_push_front_pop_back_en;
  localparam [(1 - 1):0] const_value_x_000000 = 1\'b0;
  reg [(1 - 1):0] cout_mem_92_22[0:(1 - 1)];
  initial
    begin
      cout_mem_92_22[0] = 1\'b0;
    end
  wire [(1 - 1):0] cout_mem_92_22_front_din;
  wire [(1 - 1):0] cout_mem_92_22_back;
  wire cout_mem_92_22_push_front_pop_back_en;
  wire [(3 - 1):0] prev_mode_93_22_next;
  wire [(3 - 1):0] prev_mode_93_22;
  wire [(3 - 1):0] prev_mode_93_22_reg_i;
  wire [(3 - 1):0] prev_mode_93_22_reg_o;
  localparam [(1 - 1):0] const_value_x_000001 = 1\'b0;
  localparam [(1 - 1):0] const_value_x_000002 = 1\'b1;
  localparam [(1 - 1):0] const_value_x_000003 = 1\'b0;
  localparam [(1 - 1):0] const_value_x_000004 = 1\'b0;
  wire signed [(27 - 1):0] cast_71_18;
  wire signed [(27 - 1):0] cast_71_22;
  wire signed [(27 - 1):0] internal_s_71_5_addsub;
  localparam [(1 - 1):0] const_value_x_000005 = 1\'b0;
  wire signed [(26 - 1):0] cast_internal_s_83_3_convert;
  localparam [(1 - 1):0] const_value_x_000006 = 1\'b0;
  localparam [(3 - 1):0] const_value_x_000007 = 3\'b000;
  assign a_17_32 = a;
  assign b_17_35 = b;
  assign op_mem_91_20_back = op_mem_91_20[0];
  always @(posedge clk)
    begin:proc_op_mem_91_20
      integer i;
      if (((ce == 1\'b1) && (op_mem_91_20_push_front_pop_back_en == 1\'b1)))
        begin
          op_mem_91_20[0] <= op_mem_91_20_front_din;
        end
    end
  assign cout_mem_92_22_back = cout_mem_92_22[0];
  always @(posedge clk)
    begin:proc_cout_mem_92_22
      integer i_x_000000;
      if (((ce == 1\'b1) && (cout_mem_92_22_push_front_pop_back_en == 1\'b1)))
        begin
          cout_mem_92_22[0] <= cout_mem_92_22_front_din;
        end
    end
  assign prev_mode_93_22_reg_i = prev_mode_93_22_next;
  assign prev_mode_93_22 = prev_mode_93_22_reg_o;
  defparam prev_mode_93_22_reg_inst.init_index = 2;
  defparam prev_mode_93_22_reg_inst.init_value = 3\'b010;
  defparam prev_mode_93_22_reg_inst.latency = 1;
  defparam prev_mode_93_22_reg_inst.width = 3;
  synth_reg_w_init prev_mode_93_22_reg_inst(.ce(ce), .clk(clk), .clr(clr), .i(prev_mode_93_22_reg_i), .o(prev_mode_93_22_reg_o));
  assign cast_71_18 = {{1{a_17_32[25]}}, a_17_32[25:0]};
  assign cast_71_22 = {{1{b_17_35[25]}}, b_17_35[25:0]};
  assign internal_s_71_5_addsub = cast_71_18 - cast_71_22;
  assign cast_internal_s_83_3_convert = {internal_s_71_5_addsub[25:0]};
  assign op_mem_91_20_front_din = cast_internal_s_83_3_convert;
  assign op_mem_91_20_push_front_pop_back_en = 1\'b1;
  assign cout_mem_92_22_front_din = const_value_x_000006;
  assign cout_mem_92_22_push_front_pop_back_en = 1\'b1;
  assign prev_mode_93_22_next = const_value_x_000007;
  assign s = op_mem_91_20_back;
endmodule
',
      'entity_name' => 'addsub_c1ccc3be8a',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'b8b1929caaeaf8f95963ac329ed7d928',
    'sourceFile' => 'hdl/xlmcode.v',
    'templateKeyValues' => {
      'crippled_module' => '(
  input [(26 - 1):0] a,
  input [(26 - 1):0] b,
  output [(25 - 1):0] s,
  input clk,
  input ce,
  input clr);
  wire signed [(26 - 1):0] a_17_32;
  wire signed [(26 - 1):0] b_17_35;
  localparam [(25 - 1):0] const_value = 25\'b0000000000000000000000000;
  reg [(25 - 1):0] op_mem_91_20[0:(1 - 1)];
  initial
    begin
      op_mem_91_20[0] = 25\'b0000000000000000000000000;
    end
  wire [(25 - 1):0] op_mem_91_20_front_din;
  wire [(25 - 1):0] op_mem_91_20_back;
  wire op_mem_91_20_push_front_pop_back_en;
  localparam [(1 - 1):0] const_value_x_000000 = 1\'b0;
  reg [(1 - 1):0] cout_mem_92_22[0:(1 - 1)];
  initial
    begin
      cout_mem_92_22[0] = 1\'b0;
    end
  wire [(1 - 1):0] cout_mem_92_22_front_din;
  wire [(1 - 1):0] cout_mem_92_22_back;
  wire cout_mem_92_22_push_front_pop_back_en;
  wire [(3 - 1):0] prev_mode_93_22_next;
  wire [(3 - 1):0] prev_mode_93_22;
  wire [(3 - 1):0] prev_mode_93_22_reg_i;
  wire [(3 - 1):0] prev_mode_93_22_reg_o;
  localparam [(1 - 1):0] const_value_x_000001 = 1\'b0;
  localparam [(1 - 1):0] const_value_x_000002 = 1\'b1;
  localparam [(1 - 1):0] const_value_x_000003 = 1\'b0;
  localparam [(1 - 1):0] const_value_x_000004 = 1\'b0;
  wire signed [(27 - 1):0] cast_69_18;
  wire signed [(27 - 1):0] cast_69_22;
  wire signed [(27 - 1):0] internal_s_69_5_addsub;
  localparam [(1 - 1):0] const_value_x_000005 = 1\'b0;
  wire [(25 - 1):0] cast_internal_s_83_3_convert;
  localparam [(1 - 1):0] const_value_x_000006 = 1\'b0;
  localparam [(3 - 1):0] const_value_x_000007 = 3\'b000;
  assign a_17_32 = a;
  assign b_17_35 = b;
  assign op_mem_91_20_back = op_mem_91_20[0];
  always @(posedge clk)
    begin:proc_op_mem_91_20
      integer i;
      if (((ce == 1\'b1) && (op_mem_91_20_push_front_pop_back_en == 1\'b1)))
        begin
          op_mem_91_20[0] <= op_mem_91_20_front_din;
        end
    end
  assign cout_mem_92_22_back = cout_mem_92_22[0];
  always @(posedge clk)
    begin:proc_cout_mem_92_22
      integer i_x_000000;
      if (((ce == 1\'b1) && (cout_mem_92_22_push_front_pop_back_en == 1\'b1)))
        begin
          cout_mem_92_22[0] <= cout_mem_92_22_front_din;
        end
    end
  assign prev_mode_93_22_reg_i = prev_mode_93_22_next;
  assign prev_mode_93_22 = prev_mode_93_22_reg_o;
  defparam prev_mode_93_22_reg_inst.init_index = 2;
  defparam prev_mode_93_22_reg_inst.init_value = 3\'b010;
  defparam prev_mode_93_22_reg_inst.latency = 1;
  defparam prev_mode_93_22_reg_inst.width = 3;
  synth_reg_w_init prev_mode_93_22_reg_inst(.ce(ce), .clk(clk), .clr(clr), .i(prev_mode_93_22_reg_i), .o(prev_mode_93_22_reg_o));
  assign cast_69_18 = {{1{a_17_32[25]}}, a_17_32[25:0]};
  assign cast_69_22 = {{1{b_17_35[25]}}, b_17_35[25:0]};
  assign internal_s_69_5_addsub = cast_69_18 + cast_69_22;
  assign cast_internal_s_83_3_convert = {internal_s_69_5_addsub[24:0]};
  assign op_mem_91_20_front_din = cast_internal_s_83_3_convert;
  assign op_mem_91_20_push_front_pop_back_en = 1\'b1;
  assign cout_mem_92_22_front_din = const_value_x_000006;
  assign cout_mem_92_22_push_front_pop_back_en = 1\'b1;
  assign prev_mode_93_22_next = const_value_x_000007;
  assign s = op_mem_91_20_back;
endmodule
',
      'entity_name' => 'addsub_43d22903cb',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '2f6225ec97c0c945d7f48d7686a7800b',
    'sourceFile' => 'D:/Xilinx/14.7/ISE_DS/ISE/sysgen/hdl/xlconvert.v',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '6cb6ac99832c150dc4ea29dc27ece714',
    'sourceFile' => 'hdl/xlmcode.v',
    'templateKeyValues' => {
      'crippled_module' => '(
  input [(18 - 1):0] ip,
  output [(26 - 1):0] op,
  input clk,
  input ce,
  input clr);
  wire signed [(18 - 1):0] ip_1_23;
  localparam signed [(26 - 1):0] const_value = 26\'sb00000000000000000000000000;
  reg signed [(26 - 1):0] op_mem_46_20[0:(1 - 1)];
  initial
    begin
      op_mem_46_20[0] = 26\'b00000000000000000000000000;
    end
  wire signed [(26 - 1):0] op_mem_46_20_front_din;
  wire signed [(26 - 1):0] op_mem_46_20_back;
  wire op_mem_46_20_push_front_pop_back_en;
  localparam [(1 - 1):0] const_value_x_000000 = 1\'b1;
  wire signed [(26 - 1):0] cast_internal_ip_25_3_lsh;
  assign ip_1_23 = ip;
  assign op_mem_46_20_back = op_mem_46_20[0];
  always @(posedge clk)
    begin:proc_op_mem_46_20
      integer i;
      if (((ce == 1\'b1) && (op_mem_46_20_push_front_pop_back_en == 1\'b1)))
        begin
          op_mem_46_20[0] <= op_mem_46_20_front_din;
        end
    end
  assign cast_internal_ip_25_3_lsh = {ip_1_23[17:0], 8\'b00000000};
  assign op_mem_46_20_push_front_pop_back_en = 1\'b0;
  assign op = cast_internal_ip_25_3_lsh;
endmodule
',
      'entity_name' => 'shift_83be7e67ad',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '79ed56d2274931e3988065a0a32623b2',
    'sourceFile' => 'hdl/xlmcode.v',
    'templateKeyValues' => {
      'crippled_module' => '(
  input [(18 - 1):0] ip,
  output [(26 - 1):0] op,
  input clk,
  input ce,
  input clr);
  wire signed [(18 - 1):0] ip_1_23;
  localparam signed [(26 - 1):0] const_value = 26\'sb00000000000000000000000000;
  reg signed [(26 - 1):0] op_mem_46_20[0:(1 - 1)];
  initial
    begin
      op_mem_46_20[0] = 26\'b00000000000000000000000000;
    end
  wire signed [(26 - 1):0] op_mem_46_20_front_din;
  wire signed [(26 - 1):0] op_mem_46_20_back;
  wire op_mem_46_20_push_front_pop_back_en;
  localparam [(1 - 1):0] const_value_x_000000 = 1\'b1;
  wire signed [(24 - 1):0] cast_internal_ip_25_3_lsh;
  wire signed [(26 - 1):0] cast_internal_ip_33_3_convert;
  assign ip_1_23 = ip;
  assign op_mem_46_20_back = op_mem_46_20[0];
  always @(posedge clk)
    begin:proc_op_mem_46_20
      integer i;
      if (((ce == 1\'b1) && (op_mem_46_20_push_front_pop_back_en == 1\'b1)))
        begin
          op_mem_46_20[0] <= op_mem_46_20_front_din;
        end
    end
  assign cast_internal_ip_25_3_lsh = {ip_1_23[17:0], 6\'b000000};
  assign cast_internal_ip_33_3_convert = {{2{cast_internal_ip_25_3_lsh[23]}}, cast_internal_ip_25_3_lsh[23:0]};
  assign op_mem_46_20_push_front_pop_back_en = 1\'b0;
  assign op = cast_internal_ip_33_3_convert;
endmodule
',
      'entity_name' => 'shift_65a35a0ba3',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '897c002a485da0963584bba18843b530',
    'sourceFile' => 'hdl/xlmcode.v',
    'templateKeyValues' => {
      'crippled_module' => '(
  input [(18 - 1):0] ip,
  output [(26 - 1):0] op,
  input clk,
  input ce,
  input clr);
  wire signed [(18 - 1):0] ip_1_23;
  localparam signed [(26 - 1):0] const_value = 26\'sb00000000000000000000000000;
  reg signed [(26 - 1):0] op_mem_46_20[0:(1 - 1)];
  initial
    begin
      op_mem_46_20[0] = 26\'b00000000000000000000000000;
    end
  wire signed [(26 - 1):0] op_mem_46_20_front_din;
  wire signed [(26 - 1):0] op_mem_46_20_back;
  wire op_mem_46_20_push_front_pop_back_en;
  localparam [(1 - 1):0] const_value_x_000000 = 1\'b1;
  wire signed [(21 - 1):0] cast_internal_ip_25_3_lsh;
  wire signed [(26 - 1):0] cast_internal_ip_33_3_convert;
  assign ip_1_23 = ip;
  assign op_mem_46_20_back = op_mem_46_20[0];
  always @(posedge clk)
    begin:proc_op_mem_46_20
      integer i;
      if (((ce == 1\'b1) && (op_mem_46_20_push_front_pop_back_en == 1\'b1)))
        begin
          op_mem_46_20[0] <= op_mem_46_20_front_din;
        end
    end
  assign cast_internal_ip_25_3_lsh = {ip_1_23[17:0], 3\'b000};
  assign cast_internal_ip_33_3_convert = {{5{cast_internal_ip_25_3_lsh[20]}}, cast_internal_ip_25_3_lsh[20:0]};
  assign op_mem_46_20_push_front_pop_back_en = 1\'b0;
  assign op = cast_internal_ip_33_3_convert;
endmodule
',
      'entity_name' => 'shift_41579f67e2',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '1115eccf85d17550adeaf62fa257ae63',
    'sourceFile' => 'hdl/xlmcode.v',
    'templateKeyValues' => {
      'crippled_module' => '(
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
  localparam signed [(18 - 1):0] const_value = 18\'sb000000000000000000;
  reg signed [(18 - 1):0] op_mem_91_20[0:(1 - 1)];
  initial
    begin
      op_mem_91_20[0] = 18\'b000000000000000000;
    end
  wire signed [(18 - 1):0] op_mem_91_20_front_din;
  wire signed [(18 - 1):0] op_mem_91_20_back;
  wire op_mem_91_20_push_front_pop_back_en;
  localparam [(1 - 1):0] const_value_x_000000 = 1\'b0;
  reg [(1 - 1):0] cout_mem_92_22[0:(1 - 1)];
  initial
    begin
      cout_mem_92_22[0] = 1\'b0;
    end
  wire [(1 - 1):0] cout_mem_92_22_front_din;
  wire [(1 - 1):0] cout_mem_92_22_back;
  wire cout_mem_92_22_push_front_pop_back_en;
  wire [(3 - 1):0] prev_mode_93_22_next;
  wire [(3 - 1):0] prev_mode_93_22;
  wire [(3 - 1):0] prev_mode_93_22_reg_i;
  wire [(3 - 1):0] prev_mode_93_22_reg_o;
  localparam [(1 - 1):0] const_value_x_000001 = 1\'b0;
  localparam [(1 - 1):0] const_value_x_000002 = 1\'b1;
  localparam [(1 - 1):0] const_value_x_000003 = 1\'b0;
  localparam [(1 - 1):0] const_value_x_000004 = 1\'b0;
  wire not_68_25;
  wire bool_68_25;
  wire bool_68_7;
  wire signed [(17 - 1):0] cast_internal_s_69_5_addsub_a;
  wire signed [(17 - 1):0] cast_internal_s_69_5_addsub_b;
  reg signed [(17 - 1):0] internal_s_69_5_addsub;
  localparam [(1 - 1):0] const_value_x_000005 = 1\'b0;
  wire signed [(18 - 1):0] cast_internal_s_83_3_convert;
  localparam [(1 - 1):0] const_value_x_000006 = 1\'b0;
  wire [(3 - 1):0] prev_mode_93_22_next_x_000000;
  assign a_17_32 = a;
  assign b_17_35 = b;
  assign mode_17_48 = mode;
  assign op_mem_91_20_back = op_mem_91_20[0];
  always @(posedge clk)
    begin:proc_op_mem_91_20
      integer i;
      if (((ce == 1\'b1) && (op_mem_91_20_push_front_pop_back_en == 1\'b1)))
        begin
          op_mem_91_20[0] <= op_mem_91_20_front_din;
        end
    end
  assign cout_mem_92_22_back = cout_mem_92_22[0];
  always @(posedge clk)
    begin:proc_cout_mem_92_22
      integer i_x_000000;
      if (((ce == 1\'b1) && (cout_mem_92_22_push_front_pop_back_en == 1\'b1)))
        begin
          cout_mem_92_22[0] <= cout_mem_92_22_front_din;
        end
    end
  assign prev_mode_93_22_reg_i = prev_mode_93_22_next;
  assign prev_mode_93_22 = prev_mode_93_22_reg_o;
  defparam prev_mode_93_22_reg_inst.init_index = 2;
  defparam prev_mode_93_22_reg_inst.init_value = 3\'b010;
  defparam prev_mode_93_22_reg_inst.latency = 1;
  defparam prev_mode_93_22_reg_inst.width = 3;
  synth_reg_w_init prev_mode_93_22_reg_inst(.ce(ce), .clk(clk), .clr(clr), .i(prev_mode_93_22_reg_i), .o(prev_mode_93_22_reg_o));
  assign not_68_25 = !mode_17_48;
  assign bool_68_25 = not_68_25 && 1\'b1;
  assign bool_68_7 = 1\'b0 || bool_68_25;
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
  assign op_mem_91_20_push_front_pop_back_en = 1\'b1;
  assign cout_mem_92_22_front_din = const_value_x_000006;
  assign cout_mem_92_22_push_front_pop_back_en = 1\'b1;
  assign prev_mode_93_22_next_x_000000 = {2\'b00, mode_17_48};
  assign prev_mode_93_22_next = prev_mode_93_22_next_x_000000;
  assign s = op_mem_91_20_back;
endmodule
',
      'entity_name' => 'addsub_d546b3de9d',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'a1de531692c02395c0c30beef2a3862c',
    'sourceFile' => 'D:/Xilinx/14.7/ISE_DS/ISE/sysgen/hdl/xlslice.v',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '806a4980f5fc4e673ae3f29aef7ebd9b',
    'sourceFile' => 'hdl/xlmcode.v',
    'templateKeyValues' => {
      'crippled_module' => '(
  input [(16 - 1):0] ip,
  output [(16 - 1):0] op,
  input clk,
  input ce,
  input clr);
  wire signed [(16 - 1):0] ip_1_23;
  localparam signed [(16 - 1):0] const_value = 16\'sb0000000000000000;
  reg signed [(16 - 1):0] op_mem_46_20[0:(1 - 1)];
  initial
    begin
      op_mem_46_20[0] = 16\'b0000000000000000;
    end
  wire signed [(16 - 1):0] op_mem_46_20_front_din;
  wire signed [(16 - 1):0] op_mem_46_20_back;
  wire op_mem_46_20_push_front_pop_back_en;
  localparam [(1 - 1):0] const_value_x_000000 = 1\'b1;
  assign ip_1_23 = ip;
  assign op_mem_46_20_back = op_mem_46_20[0];
  always @(posedge clk)
    begin:proc_op_mem_46_20
      integer i;
      if (((ce == 1\'b1) && (op_mem_46_20_push_front_pop_back_en == 1\'b1)))
        begin
          op_mem_46_20[0] <= op_mem_46_20_front_din;
        end
    end
  assign op_mem_46_20_push_front_pop_back_en = 1\'b0;
  assign op = ip_1_23;
endmodule
',
      'entity_name' => 'shift_242a713649',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '788b92fd274ee51c017fccf377e50852',
    'sourceFile' => 'hdl/xlmcode.v',
    'templateKeyValues' => {
      'crippled_module' => '(
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
  localparam signed [(18 - 1):0] const_value = 18\'sb000000000000000000;
  reg signed [(18 - 1):0] op_mem_91_20[0:(1 - 1)];
  initial
    begin
      op_mem_91_20[0] = 18\'b000000000000000000;
    end
  wire signed [(18 - 1):0] op_mem_91_20_front_din;
  wire signed [(18 - 1):0] op_mem_91_20_back;
  wire op_mem_91_20_push_front_pop_back_en;
  localparam [(1 - 1):0] const_value_x_000000 = 1\'b0;
  reg [(1 - 1):0] cout_mem_92_22[0:(1 - 1)];
  initial
    begin
      cout_mem_92_22[0] = 1\'b0;
    end
  wire [(1 - 1):0] cout_mem_92_22_front_din;
  wire [(1 - 1):0] cout_mem_92_22_back;
  wire cout_mem_92_22_push_front_pop_back_en;
  wire [(3 - 1):0] prev_mode_93_22_next;
  wire [(3 - 1):0] prev_mode_93_22;
  wire [(3 - 1):0] prev_mode_93_22_reg_i;
  wire [(3 - 1):0] prev_mode_93_22_reg_o;
  localparam [(1 - 1):0] const_value_x_000001 = 1\'b0;
  localparam [(1 - 1):0] const_value_x_000002 = 1\'b1;
  localparam [(1 - 1):0] const_value_x_000003 = 1\'b0;
  localparam [(1 - 1):0] const_value_x_000004 = 1\'b0;
  wire not_68_25;
  wire bool_68_25;
  wire bool_68_7;
  wire signed [(19 - 1):0] cast_internal_s_69_5_addsub_a;
  wire signed [(19 - 1):0] cast_internal_s_69_5_addsub_b;
  reg signed [(19 - 1):0] internal_s_69_5_addsub;
  localparam [(1 - 1):0] const_value_x_000005 = 1\'b0;
  wire signed [(18 - 1):0] cast_internal_s_83_3_convert;
  localparam [(1 - 1):0] const_value_x_000006 = 1\'b0;
  wire [(3 - 1):0] prev_mode_93_22_next_x_000000;
  assign a_17_32 = a;
  assign b_17_35 = b;
  assign mode_17_48 = mode;
  assign op_mem_91_20_back = op_mem_91_20[0];
  always @(posedge clk)
    begin:proc_op_mem_91_20
      integer i;
      if (((ce == 1\'b1) && (op_mem_91_20_push_front_pop_back_en == 1\'b1)))
        begin
          op_mem_91_20[0] <= op_mem_91_20_front_din;
        end
    end
  assign cout_mem_92_22_back = cout_mem_92_22[0];
  always @(posedge clk)
    begin:proc_cout_mem_92_22
      integer i_x_000000;
      if (((ce == 1\'b1) && (cout_mem_92_22_push_front_pop_back_en == 1\'b1)))
        begin
          cout_mem_92_22[0] <= cout_mem_92_22_front_din;
        end
    end
  assign prev_mode_93_22_reg_i = prev_mode_93_22_next;
  assign prev_mode_93_22 = prev_mode_93_22_reg_o;
  defparam prev_mode_93_22_reg_inst.init_index = 2;
  defparam prev_mode_93_22_reg_inst.init_value = 3\'b010;
  defparam prev_mode_93_22_reg_inst.latency = 1;
  defparam prev_mode_93_22_reg_inst.width = 3;
  synth_reg_w_init prev_mode_93_22_reg_inst(.ce(ce), .clk(clk), .clr(clr), .i(prev_mode_93_22_reg_i), .o(prev_mode_93_22_reg_o));
  assign not_68_25 = !mode_17_48;
  assign bool_68_25 = not_68_25 && 1\'b1;
  assign bool_68_7 = 1\'b0 || bool_68_25;
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
  assign op_mem_91_20_push_front_pop_back_en = 1\'b1;
  assign cout_mem_92_22_front_din = const_value_x_000006;
  assign cout_mem_92_22_push_front_pop_back_en = 1\'b1;
  assign prev_mode_93_22_next_x_000000 = {2\'b00, mode_17_48};
  assign prev_mode_93_22_next = prev_mode_93_22_next_x_000000;
  assign s = op_mem_91_20_back;
endmodule
',
      'entity_name' => 'addsub_14dcc7ebeb',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '7eef5ce894dfde29b2ea0aa8fd2c3be7',
    'sourceFile' => 'D:/Xilinx/14.7/ISE_DS/ISE/sysgen/hdl/xlslice.v',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '016d3b9d2ddc8fa0a236dd6b66dcd563',
    'sourceFile' => 'hdl/xlmcode.v',
    'templateKeyValues' => {
      'crippled_module' => '(
  input [(18 - 1):0] ip,
  output [(18 - 1):0] op,
  input clk,
  input ce,
  input clr);
  wire signed [(18 - 1):0] ip_1_23;
  localparam signed [(18 - 1):0] const_value = 18\'sb000000000000000000;
  reg signed [(18 - 1):0] op_mem_46_20[0:(1 - 1)];
  initial
    begin
      op_mem_46_20[0] = 18\'b000000000000000000;
    end
  wire signed [(18 - 1):0] op_mem_46_20_front_din;
  wire signed [(18 - 1):0] op_mem_46_20_back;
  wire op_mem_46_20_push_front_pop_back_en;
  localparam [(1 - 1):0] const_value_x_000000 = 1\'b1;
  wire signed [(18 - 1):0] cast_internal_ip_36_3_convert;
  assign ip_1_23 = ip;
  assign op_mem_46_20_back = op_mem_46_20[0];
  always @(posedge clk)
    begin:proc_op_mem_46_20
      integer i;
      if (((ce == 1\'b1) && (op_mem_46_20_push_front_pop_back_en == 1\'b1)))
        begin
          op_mem_46_20[0] <= op_mem_46_20_front_din;
        end
    end
  assign cast_internal_ip_36_3_convert = {{1{ip_1_23[17]}}, ip_1_23[17:1]};
  assign op_mem_46_20_push_front_pop_back_en = 1\'b0;
  assign op = cast_internal_ip_36_3_convert;
endmodule
',
      'entity_name' => 'shift_5423e932f0',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '58af55b399c0a497be91c15ace2da63d',
    'sourceFile' => 'hdl/xlmcode.v',
    'templateKeyValues' => {
      'crippled_module' => '(
  input [(18 - 1):0] ip,
  output [(18 - 1):0] op,
  input clk,
  input ce,
  input clr);
  wire signed [(18 - 1):0] ip_1_23;
  localparam signed [(18 - 1):0] const_value = 18\'sb000000000000000000;
  reg signed [(18 - 1):0] op_mem_46_20[0:(1 - 1)];
  initial
    begin
      op_mem_46_20[0] = 18\'b000000000000000000;
    end
  wire signed [(18 - 1):0] op_mem_46_20_front_din;
  wire signed [(18 - 1):0] op_mem_46_20_back;
  wire op_mem_46_20_push_front_pop_back_en;
  localparam [(1 - 1):0] const_value_x_000000 = 1\'b1;
  wire signed [(18 - 1):0] cast_internal_ip_36_3_convert;
  assign ip_1_23 = ip;
  assign op_mem_46_20_back = op_mem_46_20[0];
  always @(posedge clk)
    begin:proc_op_mem_46_20
      integer i;
      if (((ce == 1\'b1) && (op_mem_46_20_push_front_pop_back_en == 1\'b1)))
        begin
          op_mem_46_20[0] <= op_mem_46_20_front_din;
        end
    end
  assign cast_internal_ip_36_3_convert = {{2{ip_1_23[17]}}, ip_1_23[17:2]};
  assign op_mem_46_20_push_front_pop_back_en = 1\'b0;
  assign op = cast_internal_ip_36_3_convert;
endmodule
',
      'entity_name' => 'shift_69c26659b1',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'd40f4eb2197008ee57bf9d3d372873e0',
    'sourceFile' => 'hdl/xlmcode.v',
    'templateKeyValues' => {
      'crippled_module' => '(
  input [(18 - 1):0] ip,
  output [(18 - 1):0] op,
  input clk,
  input ce,
  input clr);
  wire signed [(18 - 1):0] ip_1_23;
  localparam signed [(18 - 1):0] const_value = 18\'sb000000000000000000;
  reg signed [(18 - 1):0] op_mem_46_20[0:(1 - 1)];
  initial
    begin
      op_mem_46_20[0] = 18\'b000000000000000000;
    end
  wire signed [(18 - 1):0] op_mem_46_20_front_din;
  wire signed [(18 - 1):0] op_mem_46_20_back;
  wire op_mem_46_20_push_front_pop_back_en;
  localparam [(1 - 1):0] const_value_x_000000 = 1\'b1;
  wire signed [(18 - 1):0] cast_internal_ip_36_3_convert;
  assign ip_1_23 = ip;
  assign op_mem_46_20_back = op_mem_46_20[0];
  always @(posedge clk)
    begin:proc_op_mem_46_20
      integer i;
      if (((ce == 1\'b1) && (op_mem_46_20_push_front_pop_back_en == 1\'b1)))
        begin
          op_mem_46_20[0] <= op_mem_46_20_front_din;
        end
    end
  assign cast_internal_ip_36_3_convert = {{3{ip_1_23[17]}}, ip_1_23[17:3]};
  assign op_mem_46_20_push_front_pop_back_en = 1\'b0;
  assign op = cast_internal_ip_36_3_convert;
endmodule
',
      'entity_name' => 'shift_bf37e7e608',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '0137f9aa683109e2745c993757ecf457',
    'sourceFile' => 'hdl/xlmcode.v',
    'templateKeyValues' => {
      'crippled_module' => '(
  input [(18 - 1):0] ip,
  output [(18 - 1):0] op,
  input clk,
  input ce,
  input clr);
  wire signed [(18 - 1):0] ip_1_23;
  localparam signed [(18 - 1):0] const_value = 18\'sb000000000000000000;
  reg signed [(18 - 1):0] op_mem_46_20[0:(1 - 1)];
  initial
    begin
      op_mem_46_20[0] = 18\'b000000000000000000;
    end
  wire signed [(18 - 1):0] op_mem_46_20_front_din;
  wire signed [(18 - 1):0] op_mem_46_20_back;
  wire op_mem_46_20_push_front_pop_back_en;
  localparam [(1 - 1):0] const_value_x_000000 = 1\'b1;
  wire signed [(18 - 1):0] cast_internal_ip_36_3_convert;
  assign ip_1_23 = ip;
  assign op_mem_46_20_back = op_mem_46_20[0];
  always @(posedge clk)
    begin:proc_op_mem_46_20
      integer i;
      if (((ce == 1\'b1) && (op_mem_46_20_push_front_pop_back_en == 1\'b1)))
        begin
          op_mem_46_20[0] <= op_mem_46_20_front_din;
        end
    end
  assign cast_internal_ip_36_3_convert = {{4{ip_1_23[17]}}, ip_1_23[17:4]};
  assign op_mem_46_20_push_front_pop_back_en = 1\'b0;
  assign op = cast_internal_ip_36_3_convert;
endmodule
',
      'entity_name' => 'shift_8a1f5c0a9e',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '53bb6ecb6ae7113aa3f033237b304a83',
    'sourceFile' => 'hdl/xlmcode.v',
    'templateKeyValues' => {
      'crippled_module' => '(
  input [(18 - 1):0] ip,
  output [(18 - 1):0] op,
  input clk,
  input ce,
  input clr);
  wire signed [(18 - 1):0] ip_1_23;
  localparam signed [(18 - 1):0] const_value = 18\'sb000000000000000000;
  reg signed [(18 - 1):0] op_mem_46_20[0:(1 - 1)];
  initial
    begin
      op_mem_46_20[0] = 18\'b000000000000000000;
    end
  wire signed [(18 - 1):0] op_mem_46_20_front_din;
  wire signed [(18 - 1):0] op_mem_46_20_back;
  wire op_mem_46_20_push_front_pop_back_en;
  localparam [(1 - 1):0] const_value_x_000000 = 1\'b1;
  wire signed [(18 - 1):0] cast_internal_ip_36_3_convert;
  assign ip_1_23 = ip;
  assign op_mem_46_20_back = op_mem_46_20[0];
  always @(posedge clk)
    begin:proc_op_mem_46_20
      integer i;
      if (((ce == 1\'b1) && (op_mem_46_20_push_front_pop_back_en == 1\'b1)))
        begin
          op_mem_46_20[0] <= op_mem_46_20_front_din;
        end
    end
  assign cast_internal_ip_36_3_convert = {{5{ip_1_23[17]}}, ip_1_23[17:5]};
  assign op_mem_46_20_push_front_pop_back_en = 1\'b0;
  assign op = cast_internal_ip_36_3_convert;
endmodule
',
      'entity_name' => 'shift_783ce18d91',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'd83ce32fea745eceb736716347a364e8',
    'sourceFile' => 'hdl/xlmcode.v',
    'templateKeyValues' => {
      'crippled_module' => '(
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
',
      'entity_name' => 'concat_0f2a9029de',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'd0fbade77184301c800396e7ca433ef8',
    'sourceFile' => 'hdl/xlmcode.v',
    'templateKeyValues' => {
      'crippled_module' => '(
  input [(1 - 1):0] d,
  output [(1 - 1):0] q,
  input clk,
  input ce,
  input clr);
  wire d_1_22;
  reg op_mem_20_24[0:(2 - 1)];
  initial
    begin
      op_mem_20_24[0] = 1\'b0;
      op_mem_20_24[1] = 1\'b0;
    end
  wire op_mem_20_24_front_din;
  wire op_mem_20_24_back;
  wire op_mem_20_24_push_front_pop_back_en;
  localparam [(2 - 1):0] const_value = 2\'b10;
  assign d_1_22 = d;
  assign op_mem_20_24_back = op_mem_20_24[1];
  always @(posedge clk)
    begin:proc_op_mem_20_24
      integer i;
      if (((ce == 1\'b1) && (op_mem_20_24_push_front_pop_back_en == 1\'b1)))
        begin
          for (i=1; i>=1; i=i-1)
            begin
              op_mem_20_24[i] <= op_mem_20_24[i-1];
            end
          op_mem_20_24[0] <= op_mem_20_24_front_din;
        end
    end
  assign op_mem_20_24_front_din = d_1_22;
  assign op_mem_20_24_push_front_pop_back_en = 1\'b1;
  assign q = op_mem_20_24_back;
endmodule
',
      'entity_name' => 'delay_19fb89c202',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'f1b3e55e7b7802cd62303ba243b80361',
    'sourceFile' => 'hdl/xlmcode.v',
    'templateKeyValues' => {
      'crippled_module' => '(
  input [(1 - 1):0] d,
  output [(1 - 1):0] q,
  input clk,
  input ce,
  input clr);
  wire d_1_22;
  reg op_mem_20_24[0:(3 - 1)];
  initial
    begin
      op_mem_20_24[0] = 1\'b0;
      op_mem_20_24[1] = 1\'b0;
      op_mem_20_24[2] = 1\'b0;
    end
  wire op_mem_20_24_front_din;
  wire op_mem_20_24_back;
  wire op_mem_20_24_push_front_pop_back_en;
  localparam [(2 - 1):0] const_value = 2\'b11;
  assign d_1_22 = d;
  assign op_mem_20_24_back = op_mem_20_24[2];
  always @(posedge clk)
    begin:proc_op_mem_20_24
      integer i;
      if (((ce == 1\'b1) && (op_mem_20_24_push_front_pop_back_en == 1\'b1)))
        begin
          for (i=2; i>=1; i=i-1)
            begin
              op_mem_20_24[i] <= op_mem_20_24[i-1];
            end
          op_mem_20_24[0] <= op_mem_20_24_front_din;
        end
    end
  assign op_mem_20_24_front_din = d_1_22;
  assign op_mem_20_24_push_front_pop_back_en = 1\'b1;
  assign q = op_mem_20_24_back;
endmodule
',
      'entity_name' => 'delay_e7915bbc50',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '314c852ae1cfae13fb7df3f04cc5d6ba',
    'sourceFile' => 'hdl/xlmcode.v',
    'templateKeyValues' => {
      'crippled_module' => '(
  input [(1 - 1):0] d,
  output [(1 - 1):0] q,
  input clk,
  input ce,
  input clr);
  wire d_1_22;
  reg op_mem_20_24[0:(4 - 1)];
  initial
    begin
      op_mem_20_24[0] = 1\'b0;
      op_mem_20_24[1] = 1\'b0;
      op_mem_20_24[2] = 1\'b0;
      op_mem_20_24[3] = 1\'b0;
    end
  wire op_mem_20_24_front_din;
  wire op_mem_20_24_back;
  wire op_mem_20_24_push_front_pop_back_en;
  localparam [(3 - 1):0] const_value = 3\'b100;
  assign d_1_22 = d;
  assign op_mem_20_24_back = op_mem_20_24[3];
  always @(posedge clk)
    begin:proc_op_mem_20_24
      integer i;
      if (((ce == 1\'b1) && (op_mem_20_24_push_front_pop_back_en == 1\'b1)))
        begin
          for (i=3; i>=1; i=i-1)
            begin
              op_mem_20_24[i] <= op_mem_20_24[i-1];
            end
          op_mem_20_24[0] <= op_mem_20_24_front_din;
        end
    end
  assign op_mem_20_24_front_din = d_1_22;
  assign op_mem_20_24_push_front_pop_back_en = 1\'b1;
  assign q = op_mem_20_24_back;
endmodule
',
      'entity_name' => 'delay_fb81ab31ae',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '5a1f40f352bc6e7a9ec8843d06b678a9',
    'sourceFile' => 'hdl/xlmcode.v',
    'templateKeyValues' => {
      'crippled_module' => '(
  input [(1 - 1):0] d,
  output [(1 - 1):0] q,
  input clk,
  input ce,
  input clr);
  wire d_1_22;
  reg op_mem_20_24[0:(5 - 1)];
  initial
    begin
      op_mem_20_24[0] = 1\'b0;
      op_mem_20_24[1] = 1\'b0;
      op_mem_20_24[2] = 1\'b0;
      op_mem_20_24[3] = 1\'b0;
      op_mem_20_24[4] = 1\'b0;
    end
  wire op_mem_20_24_front_din;
  wire op_mem_20_24_back;
  wire op_mem_20_24_push_front_pop_back_en;
  localparam [(3 - 1):0] const_value = 3\'b101;
  assign d_1_22 = d;
  assign op_mem_20_24_back = op_mem_20_24[4];
  always @(posedge clk)
    begin:proc_op_mem_20_24
      integer i;
      if (((ce == 1\'b1) && (op_mem_20_24_push_front_pop_back_en == 1\'b1)))
        begin
          for (i=4; i>=1; i=i-1)
            begin
              op_mem_20_24[i] <= op_mem_20_24[i-1];
            end
          op_mem_20_24[0] <= op_mem_20_24_front_din;
        end
    end
  assign op_mem_20_24_front_din = d_1_22;
  assign op_mem_20_24_push_front_pop_back_en = 1\'b1;
  assign q = op_mem_20_24_back;
endmodule
',
      'entity_name' => 'delay_0512afa688',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '5a993107f98c18aebe56459356247c2d',
    'sourceFile' => 'hdl/xlmcode.v',
    'templateKeyValues' => {
      'crippled_module' => '(
  input [(1 - 1):0] d,
  output [(1 - 1):0] q,
  input clk,
  input ce,
  input clr);
  wire d_1_22;
  reg op_mem_20_24[0:(1 - 1)];
  initial
    begin
      op_mem_20_24[0] = 1\'b0;
    end
  wire op_mem_20_24_front_din;
  wire op_mem_20_24_back;
  wire op_mem_20_24_push_front_pop_back_en;
  localparam [(1 - 1):0] const_value = 1\'b1;
  assign d_1_22 = d;
  assign op_mem_20_24_back = op_mem_20_24[0];
  always @(posedge clk)
    begin:proc_op_mem_20_24
      integer i;
      if (((ce == 1\'b1) && (op_mem_20_24_push_front_pop_back_en == 1\'b1)))
        begin
          op_mem_20_24[0] <= op_mem_20_24_front_din;
        end
    end
  assign op_mem_20_24_front_din = d_1_22;
  assign op_mem_20_24_push_front_pop_back_en = 1\'b1;
  assign q = op_mem_20_24_back;
endmodule
',
      'entity_name' => 'delay_211dcce0ef',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = [
    'SELECT Distributed_Memory_Generator spartan6 Xilinx,_Inc. 7.2',
    '# 14.7_P.79',
    '# DEVICE spartan6',
    '# VERILOG',
    'CSET ce_overrides = sync_controls_overrides_ce',
    'CSET coefficient_file = [
',
    '  MEMORY_INITIALIZATION_RADIX = 16;',
    '  MEMORY_INITIALIZATION_VECTOR = 3B7F, 3D7B, 3F7A, 179, 36F, 56A, 75E, 94C, AEF, CCA, E98, 1058, 1200, 139E, 1528, 169D, 16A4, 1803, 1948, 1A75, 1B83, 1C7A, 1D55, 1E13, 1E9F, 1F24, 1F8A, 1FD1, 1FF7, 1FFF, 1FE7, 1FAE;',
    '
]',
    'CSET common_output_ce = false',
    'CSET common_output_clk = false',
    'CSET data_width = 14',
    'CSET default_data = 0',
    'CSET default_data_radix = 16',
    'CSET depth = 32',
    'CSET dual_port_address = non_registered',
    'CSET dual_port_output_clock_enable = false',
    'CSET input_clock_enable = false',
    'CSET input_options = non_registered',
    'CSET memory_type = rom',
    'CSET output_options = registered',
    'CSET qualify_we_with_i_ce = false',
    'CSET reset_qdpo = false',
    'CSET reset_qspo = false',
    'CSET single_port_output_clock_enable = true',
    'CSET sync_reset_qdpo = false',
    'CSET sync_reset_qspo = false',
    'CSET component_name = dmg_72_195596f332d57672',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '834228e6c8b4e69b740c1aa488705210',
    'sourceFile' => 'hdl/xlsprom_dist.v',
    'templateKeyValues' => {
      'core_instance_text' => '         .a(core_addr),
        .clk(clk),
        .qspo_ce(core_ce),
        .qspo(core_data_out)',
      'core_name0' => 'dmg_72_195596f332d57672',
      'entityName' => 'xlsprom_dist_pc_cfr_spartan6_v1_2',
      'entity_name.0' => 'xlsprom_dist',
      'needs_core' => 1,
      'vivado_flow' => 0,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Distributed_Memory_Generator spartan6 Xilinx,_Inc. 7.2',
    '# 14.7_P.79',
    '# DEVICE spartan6',
    '# VERILOG',
    'CSET ce_overrides = sync_controls_overrides_ce',
    'CSET coefficient_file = [
',
    '  MEMORY_INITIALIZATION_RADIX = 16;',
    '  MEMORY_INITIALIZATION_VECTOR = 1FAE, 1FE7, 1FFF, 1FF7, 1FD1, 1F8A, 1F24, 1E9F, 1E13, 1D55, 1C7A, 1B83, 1A75, 1948, 1803, 16A4, 169D, 1528, 139E, 1200, 1058, E98, CCA, AEF, 94C, 75E, 56A, 36F, 179, 3F7A, 3D7B, 3B7F;',
    '
]',
    'CSET common_output_ce = false',
    'CSET common_output_clk = false',
    'CSET data_width = 14',
    'CSET default_data = 0',
    'CSET default_data_radix = 16',
    'CSET depth = 32',
    'CSET dual_port_address = non_registered',
    'CSET dual_port_output_clock_enable = false',
    'CSET input_clock_enable = false',
    'CSET input_options = non_registered',
    'CSET memory_type = rom',
    'CSET output_options = registered',
    'CSET qualify_we_with_i_ce = false',
    'CSET reset_qdpo = false',
    'CSET reset_qspo = false',
    'CSET single_port_output_clock_enable = true',
    'CSET sync_reset_qdpo = false',
    'CSET sync_reset_qspo = false',
    'CSET component_name = dmg_72_ad5060a4053d2208',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => 'b34f733215e05030ac45a4df1fd984a1',
    'sourceFile' => 'hdl/xlsprom_dist.v',
    'templateKeyValues' => {
      'core_instance_text' => '         .a(core_addr),
        .clk(clk),
        .qspo_ce(core_ce),
        .qspo(core_data_out)',
      'core_name0' => 'dmg_72_ad5060a4053d2208',
      'entityName' => 'xlsprom_dist_pc_cfr_spartan6_v1_2',
      'entity_name.0' => 'xlsprom_dist',
      'needs_core' => 1,
      'vivado_flow' => 0,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '6718d82f81edbc7f528a18b83b329021',
    'sourceFile' => 'hdl/xlmcode.v',
    'templateKeyValues' => {
      'crippled_module' => '(
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
  localparam [(14 - 1):0] const_value = 14\'b00000000000000;
  reg [(14 - 1):0] pipe_20_22[0:(1 - 1)];
  initial
    begin
      pipe_20_22[0] = 14\'b00000000000000;
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
      if (((ce == 1\'b1) && (pipe_20_22_push_front_pop_back_en == 1\'b1)))
        begin
          pipe_20_22[0] <= pipe_20_22_front_din;
        end
    end
  always @(d0_1_24 or d1_1_27 or d2_1_30 or d3_1_33 or sel_1_20)
    begin:proc_switch_6_1
      case (sel_1_20)
        2\'b00 :
          begin
            unregy_join_6_1 = d0_1_24;
          end
        2\'b01 :
          begin
            unregy_join_6_1 = d1_1_27;
          end
        2\'b10 :
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
  assign pipe_20_22_push_front_pop_back_en = 1\'b1;
  assign y = pipe_20_22_back;
endmodule
',
      'entity_name' => 'mux_4e39b191fc',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '6bb4efffe36d18661752b75bf04bfde0',
    'sourceFile' => 'hdl/xlmcode.v',
    'templateKeyValues' => {
      'crippled_module' => '(
  input [(14 - 1):0] ip,
  output [(14 - 1):0] op,
  input clk,
  input ce,
  input clr);
  wire signed [(14 - 1):0] ip_18_25;
  localparam signed [(14 - 1):0] const_value = 14\'sb00000000000000;
  reg signed [(14 - 1):0] op_mem_48_20[0:(1 - 1)];
  initial
    begin
      op_mem_48_20[0] = 14\'b00000000000000;
    end
  wire signed [(14 - 1):0] op_mem_48_20_front_din;
  wire signed [(14 - 1):0] op_mem_48_20_back;
  wire op_mem_48_20_push_front_pop_back_en;
  localparam [(1 - 1):0] const_value_x_000000 = 1\'b1;
  localparam [(1 - 1):0] const_value_x_000001 = 1\'b0;
  wire signed [(15 - 1):0] cast_35_24;
  wire signed [(15 - 1):0] internal_ip_35_9_neg;
  reg signed [(15 - 1):0] internal_ip_join_30_1;
  localparam signed [(15 - 1):0] const_value_x_000002 = 15\'sb000000000000000;
  wire signed [(14 - 1):0] cast_internal_ip_40_3_convert;
  assign ip_18_25 = ip;
  assign op_mem_48_20_back = op_mem_48_20[0];
  always @(posedge clk)
    begin:proc_op_mem_48_20
      integer i;
      if (((ce == 1\'b1) && (op_mem_48_20_push_front_pop_back_en == 1\'b1)))
        begin
          op_mem_48_20[0] <= op_mem_48_20_front_din;
        end
    end
  assign cast_35_24 = {{1{ip_18_25[13]}}, ip_18_25[13:0]};
  assign internal_ip_35_9_neg = -cast_35_24;
  always @(internal_ip_35_9_neg)
    begin:proc_if_30_1
      if (1\'b0)
        begin
          internal_ip_join_30_1 = const_value_x_000002;
        end
      else 
        begin
          internal_ip_join_30_1 = internal_ip_35_9_neg;
        end
    end
  assign cast_internal_ip_40_3_convert = {internal_ip_join_30_1[13:0]};
  assign op_mem_48_20_push_front_pop_back_en = 1\'b0;
  assign op = cast_internal_ip_40_3_convert;
endmodule
',
      'entity_name' => 'negate_0035cd4950',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'b0530aef37793d5524f9043c52229fa9',
    'sourceFile' => 'hdl/xlmcode.v',
    'templateKeyValues' => {
      'crippled_module' => '(
  input [(16 - 1):0] ip,
  output [(16 - 1):0] op,
  input clk,
  input ce,
  input clr);
  wire signed [(16 - 1):0] ip_1_26;
  localparam signed [(16 - 1):0] const_value = 16\'sb0000000000000000;
  reg signed [(16 - 1):0] op_mem_22_20[0:(1 - 1)];
  initial
    begin
      op_mem_22_20[0] = 16\'b0000000000000000;
    end
  wire signed [(16 - 1):0] op_mem_22_20_front_din;
  wire signed [(16 - 1):0] op_mem_22_20_back;
  wire op_mem_22_20_push_front_pop_back_en;
  localparam [(1 - 1):0] const_value_x_000000 = 1\'b1;
  wire signed [(16 - 1):0] internal_ip_12_1_bitnot;
  assign ip_1_26 = ip;
  assign op_mem_22_20_back = op_mem_22_20[0];
  always @(posedge clk)
    begin:proc_op_mem_22_20
      integer i;
      if (((ce == 1\'b1) && (op_mem_22_20_push_front_pop_back_en == 1\'b1)))
        begin
          op_mem_22_20[0] <= op_mem_22_20_front_din;
        end
    end
  assign internal_ip_12_1_bitnot = ~ip_1_26;
  assign op_mem_22_20_push_front_pop_back_en = 1\'b0;
  assign op = internal_ip_12_1_bitnot;
endmodule
',
      'entity_name' => 'inverter_4b3f1c3888',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '2d2d46459f8df18f99ec03a501992463',
    'sourceFile' => 'hdl/xlmcode.v',
    'templateKeyValues' => {
      'crippled_module' => '(
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
  localparam [(16 - 1):0] const_value = 16\'b0000000000000000;
  reg [(16 - 1):0] pipe_16_22[0:(1 - 1)];
  initial
    begin
      pipe_16_22[0] = 16\'b0000000000000000;
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
      if (((ce == 1\'b1) && (pipe_16_22_push_front_pop_back_en == 1\'b1)))
        begin
          pipe_16_22[0] <= pipe_16_22_front_din;
        end
    end
  assign sel_internal_2_1_convert = {sel_1_20};
  always @(d0_1_24 or d1_1_27 or sel_internal_2_1_convert)
    begin:proc_switch_6_1
      case (sel_internal_2_1_convert)
        1\'b0 :
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
  assign pipe_16_22_push_front_pop_back_en = 1\'b1;
  assign y = pipe_16_22_back;
endmodule
',
      'entity_name' => 'mux_f3921567cd',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '957e2748aa861533f4ea17d0b02a159f',
    'sourceFile' => 'hdl/xlmcode.v',
    'templateKeyValues' => {
      'crippled_module' => '(
  input [(16 - 1):0] a,
  input [(16 - 1):0] b,
  output [(1 - 1):0] op,
  input clk,
  input ce,
  input clr);
  wire signed [(16 - 1):0] a_1_31;
  wire signed [(16 - 1):0] b_1_34;
  localparam [(1 - 1):0] const_value = 1\'b1;
  wire result_20_3_rel;
  assign a_1_31 = a;
  assign b_1_34 = b;
  assign result_20_3_rel = a_1_31 <= b_1_34;
  assign op = result_20_3_rel;
endmodule
',
      'entity_name' => 'relational_3020c548d1',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '11bb217fe9338eb3c9badb7ff98f8f3d',
    'sourceFile' => 'hdl/xlmcode.v',
    'templateKeyValues' => {
      'crippled_module' => '(
  input [(1 - 1):0] d,
  output [(1 - 1):0] q,
  input clk,
  input ce,
  input clr);
  wire d_1_22;
  reg op_mem_20_24[0:(7 - 1)];
  initial
    begin
      op_mem_20_24[0] = 1\'b0;
      op_mem_20_24[1] = 1\'b0;
      op_mem_20_24[2] = 1\'b0;
      op_mem_20_24[3] = 1\'b0;
      op_mem_20_24[4] = 1\'b0;
      op_mem_20_24[5] = 1\'b0;
      op_mem_20_24[6] = 1\'b0;
    end
  wire op_mem_20_24_front_din;
  wire op_mem_20_24_back;
  wire op_mem_20_24_push_front_pop_back_en;
  localparam [(3 - 1):0] const_value = 3\'b111;
  assign d_1_22 = d;
  assign op_mem_20_24_back = op_mem_20_24[6];
  always @(posedge clk)
    begin:proc_op_mem_20_24
      integer i;
      if (((ce == 1\'b1) && (op_mem_20_24_push_front_pop_back_en == 1\'b1)))
        begin
          for (i=6; i>=1; i=i-1)
            begin
              op_mem_20_24[i] <= op_mem_20_24[i-1];
            end
          op_mem_20_24[0] <= op_mem_20_24_front_din;
        end
    end
  assign op_mem_20_24_front_din = d_1_22;
  assign op_mem_20_24_push_front_pop_back_en = 1\'b1;
  assign q = op_mem_20_24_back;
endmodule
',
      'entity_name' => 'delay_0d84f57931',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '7deb4364d0ace42726113aab2180b0fc',
    'sourceFile' => 'hdl/xlmcode.v',
    'templateKeyValues' => {
      'crippled_module' => '(
  input [(9 - 1):0] a,
  input [(9 - 1):0] b,
  output [(9 - 1):0] s,
  input clk,
  input ce,
  input clr);
  wire [(9 - 1):0] a_17_32;
  wire [(9 - 1):0] b_17_35;
  localparam [(9 - 1):0] const_value = 9\'b000000000;
  reg [(9 - 1):0] op_mem_91_20[0:(1 - 1)];
  initial
    begin
      op_mem_91_20[0] = 9\'b000000000;
    end
  wire [(9 - 1):0] op_mem_91_20_front_din;
  wire [(9 - 1):0] op_mem_91_20_back;
  wire op_mem_91_20_push_front_pop_back_en;
  localparam [(1 - 1):0] const_value_x_000000 = 1\'b0;
  reg [(1 - 1):0] cout_mem_92_22[0:(1 - 1)];
  initial
    begin
      cout_mem_92_22[0] = 1\'b0;
    end
  wire [(1 - 1):0] cout_mem_92_22_front_din;
  wire [(1 - 1):0] cout_mem_92_22_back;
  wire cout_mem_92_22_push_front_pop_back_en;
  wire [(3 - 1):0] prev_mode_93_22_next;
  wire [(3 - 1):0] prev_mode_93_22;
  wire [(3 - 1):0] prev_mode_93_22_reg_i;
  wire [(3 - 1):0] prev_mode_93_22_reg_o;
  localparam [(1 - 1):0] const_value_x_000001 = 1\'b0;
  localparam [(1 - 1):0] const_value_x_000002 = 1\'b1;
  localparam [(1 - 1):0] const_value_x_000003 = 1\'b0;
  localparam [(1 - 1):0] const_value_x_000004 = 1\'b0;
  wire signed [(11 - 1):0] cast_71_18;
  wire signed [(11 - 1):0] cast_71_22;
  wire signed [(11 - 1):0] internal_s_71_5_addsub;
  localparam [(1 - 1):0] const_value_x_000005 = 1\'b0;
  wire [(9 - 1):0] cast_internal_s_83_3_convert;
  localparam [(1 - 1):0] const_value_x_000006 = 1\'b0;
  localparam [(3 - 1):0] const_value_x_000007 = 3\'b000;
  assign a_17_32 = a;
  assign b_17_35 = b;
  assign op_mem_91_20_back = op_mem_91_20[0];
  always @(posedge clk)
    begin:proc_op_mem_91_20
      integer i;
      if (((ce == 1\'b1) && (op_mem_91_20_push_front_pop_back_en == 1\'b1)))
        begin
          op_mem_91_20[0] <= op_mem_91_20_front_din;
        end
    end
  assign cout_mem_92_22_back = cout_mem_92_22[0];
  always @(posedge clk)
    begin:proc_cout_mem_92_22
      integer i_x_000000;
      if (((ce == 1\'b1) && (cout_mem_92_22_push_front_pop_back_en == 1\'b1)))
        begin
          cout_mem_92_22[0] <= cout_mem_92_22_front_din;
        end
    end
  assign prev_mode_93_22_reg_i = prev_mode_93_22_next;
  assign prev_mode_93_22 = prev_mode_93_22_reg_o;
  defparam prev_mode_93_22_reg_inst.init_index = 2;
  defparam prev_mode_93_22_reg_inst.init_value = 3\'b010;
  defparam prev_mode_93_22_reg_inst.latency = 1;
  defparam prev_mode_93_22_reg_inst.width = 3;
  synth_reg_w_init prev_mode_93_22_reg_inst(.ce(ce), .clk(clk), .clr(clr), .i(prev_mode_93_22_reg_i), .o(prev_mode_93_22_reg_o));
  assign cast_71_18 = {2\'b00, a_17_32[8:0]};
  assign cast_71_22 = {2\'b00, b_17_35[8:0]};
  assign internal_s_71_5_addsub = cast_71_18 - cast_71_22;
  assign cast_internal_s_83_3_convert = {internal_s_71_5_addsub[8:0]};
  assign op_mem_91_20_front_din = cast_internal_s_83_3_convert;
  assign op_mem_91_20_push_front_pop_back_en = 1\'b1;
  assign cout_mem_92_22_front_din = const_value_x_000006;
  assign cout_mem_92_22_push_front_pop_back_en = 1\'b1;
  assign prev_mode_93_22_next = const_value_x_000007;
  assign s = op_mem_91_20_back;
endmodule
',
      'entity_name' => 'addsub_eb24e14176',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'f975ad6e624a158a9266ba21cabd904c',
    'sourceFile' => 'D:/Xilinx/14.7/ISE_DS/ISE/sysgen/hdl/xlslice.v',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'a73e908debb370436b49d1b9640de702',
    'sourceFile' => 'D:/Xilinx/14.7/ISE_DS/ISE/sysgen/hdl/xlslice.v',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'df7de9124956a578d763f0e1f7eab670',
    'sourceFile' => 'D:/Xilinx/14.7/ISE_DS/ISE/sysgen/hdl/xlslice.v',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '7b06addb175d287d459e7a0eeec7bc1e',
    'sourceFile' => 'hdl/xlmcode.v',
    'templateKeyValues' => {
      'crippled_module' => '(
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
',
      'entity_name' => 'concat_dfdbb578d9',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'f3a953007d45c5aa20d4af73cc683329',
    'sourceFile' => 'hdl/xlmcode.v',
    'templateKeyValues' => {
      'crippled_module' => '(
  output [(33 - 1):0] op,
  input clk,
  input ce,
  input clr);
  assign op = 33\'b000000000000000000000000000000000;
endmodule
',
      'entity_name' => 'constant_fcde7055b5',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '28dbd6b73312aed03ea951727c54b8a6',
    'sourceFile' => 'hdl/xlmcode.v',
    'templateKeyValues' => {
      'crippled_module' => '(
  output [(1 - 1):0] op,
  input clk,
  input ce,
  input clr);
  assign op = 1\'b1;
endmodule
',
      'entity_name' => 'constant_5e90e4a8ec',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'bcdea98046a2435f3b9f6de3a3bd2ba8',
    'sourceFile' => 'hdl/xlmcode.v',
    'templateKeyValues' => {
      'crippled_module' => '(
  output [(9 - 1):0] op,
  input clk,
  input ce,
  input clr);
  assign op = 9\'b000111010;
endmodule
',
      'entity_name' => 'constant_aff0b31db3',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'aa5962043fc90fdb45c9066810139280',
    'sourceFile' => 'hdl/xlmcode.v',
    'templateKeyValues' => {
      'crippled_module' => '(
  output [(9 - 1):0] op,
  input clk,
  input ce,
  input clr);
  reg [(9 - 1):0] count_reg_20_23 = 9\'b000000000;
  localparam [(1 - 1):0] const_value = 1\'b1;
  localparam [(2 - 1):0] const_value_x_000000 = 2\'b10;
  localparam [(9 - 1):0] const_value_x_000001 = 9\'b000000001;
  localparam [(9 - 1):0] const_value_x_000002 = 9\'b000000000;
  localparam [(9 - 1):0] const_value_x_000003 = 9\'b000000001;
  always @(posedge clk)
    begin:proc_count_reg_20_23
      if ((ce == 1\'b1))
        begin
          count_reg_20_23 <= count_reg_20_23 + const_value_x_000003;
        end
    end
  assign op = count_reg_20_23;
endmodule
',
      'entity_name' => 'counter_3635e3b440',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = [
    'SELECT Block_Memory_Generator spartan6 Xilinx,_Inc. 7.2',
    '# 14.7_P.79',
    '# DEVICE spartan6',
    '# VERILOG',
    'CSET algorithm = Minimum_Area',
    'CSET assume_synchronous_clk = true',
    'CSET byte_size = 9',
    'CSET coe_file = [
',
    '  MEMORY_INITIALIZATION_RADIX = 16;',
    '  MEMORY_INITIALIZATION_VECTOR = 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;',
    '
]',
    'CSET collision_warnings = ALL',
    'CSET disable_collision_warnings = false',
    'CSET ecc = false',
    'CSET enable_a = Use_ENA_Pin',
    'CSET enable_b = Use_ENB_Pin',
    'CSET error_injection_type = Single_Bit_Error_Injection',
    'CSET fill_remaining_memory_locations = false',
    'CSET load_init_file = TRUE',
    'CSET memory_type = True_Dual_Port_RAM',
    'CSET operating_mode_a = READ_FIRST',
    'CSET operating_mode_b = READ_FIRST',
    'CSET output_reset_value_a = 0',
    'CSET output_reset_value_b = 0',
    'CSET pipeline_stages = 0',
    'CSET primitive = 8kx2',
    'CSET read_width_a = 33',
    'CSET read_width_b = 33',
    'CSET register_porta_output_of_memory_core = false',
    'CSET register_portb_output_of_memory_core = false',
    'CSET register_portb_output_of_memory_primitives = false',
    'CSET register_portb_output_of_memory_primitives = false',
    'CSET remaining_memory_locations = 0',
    'CSET reset_type = SYNC',
    'CSET use_byte_write_enable = false',
    'CSET use_error_injection_pins = false',
    'CSET use_regcea_pin = false',
    'CSET use_regceb_pin = false',
    'CSET use_rsta_pin = false',
    'CSET use_rstb_pin = false',
    'CSET write_depth_a = 512',
    'CSET write_width_a = 33',
    'CSET write_width_b = 33',
    'CSET component_name = bmg_72_121f2feae115cb60',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '87f088ce7bfc2a8004ab56646a042c9a',
    'sourceFile' => 'hdl/xldpram.v',
    'templateKeyValues' => {
      'core_component_def' => ' (addra, clka, addrb, clkb, dina, wea, dinb, web, ena, enb, douta, doutb)/* synthesis syn_black_box */;
      input [8:0] addra;
      input [8:0] addrb;
      input [32:0] dina;
      input [32:0] dinb;
      input clka, wea, ena;
      input clkb, web, enb;
      output [32:0] douta;
      output [32:0] doutb;',
      'core_instance_text' => '      .addra(core_addra),
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
      .doutb(core_doutb)',
      'core_name0' => 'bmg_72_121f2feae115cb60',
      'entityName' => 'xldpram_pc_cfr_spartan6_v1_2',
      'entity_name.0' => 'xldpram',
      'needs_core' => 1,
      'vivado_flow' => 0,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '877f86216f0b7f4500ded5c7a51f0606',
    'sourceFile' => 'hdl/xlmcode.v',
    'templateKeyValues' => {
      'crippled_module' => '(
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
',
      'entity_name' => 'reinterpret_2824f666f2',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '31f377f6233a49e89fd52ff881a6820f',
    'sourceFile' => 'hdl/xlmcode.v',
    'templateKeyValues' => {
      'crippled_module' => '(
  input [(9 - 1):0] ip,
  output [(9 - 1):0] op,
  input clk,
  input ce,
  input clr);
  wire [(9 - 1):0] ip_1_23;
  localparam [(9 - 1):0] const_value = 9\'b000000000;
  reg [(9 - 1):0] op_mem_46_20[0:(1 - 1)];
  initial
    begin
      op_mem_46_20[0] = 9\'b000000000;
    end
  wire [(9 - 1):0] op_mem_46_20_front_din;
  wire [(9 - 1):0] op_mem_46_20_back;
  wire op_mem_46_20_push_front_pop_back_en;
  localparam [(1 - 1):0] const_value_x_000000 = 1\'b1;
  wire [(9 - 1):0] cast_internal_ip_36_3_convert;
  assign ip_1_23 = ip;
  assign op_mem_46_20_back = op_mem_46_20[0];
  always @(posedge clk)
    begin:proc_op_mem_46_20
      integer i;
      if (((ce == 1\'b1) && (op_mem_46_20_push_front_pop_back_en == 1\'b1)))
        begin
          op_mem_46_20[0] <= op_mem_46_20_front_din;
        end
    end
  assign cast_internal_ip_36_3_convert = {1\'b0, ip_1_23[8:1]};
  assign op_mem_46_20_push_front_pop_back_en = 1\'b0;
  assign op = cast_internal_ip_36_3_convert;
endmodule
',
      'entity_name' => 'shift_3c3ad6f4c6',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '89c8ae52c62438b85fa62c9b9e9faa78',
    'sourceFile' => 'hdl/xlmcode.v',
    'templateKeyValues' => {
      'crippled_module' => '(
  input [(6 - 1):0] a,
  input [(6 - 1):0] b,
  output [(6 - 1):0] s,
  input clk,
  input ce,
  input clr);
  wire [(6 - 1):0] a_17_32;
  wire [(6 - 1):0] b_17_35;
  localparam [(6 - 1):0] const_value = 6\'b000000;
  reg [(6 - 1):0] op_mem_91_20[0:(1 - 1)];
  initial
    begin
      op_mem_91_20[0] = 6\'b000000;
    end
  wire [(6 - 1):0] op_mem_91_20_front_din;
  wire [(6 - 1):0] op_mem_91_20_back;
  wire op_mem_91_20_push_front_pop_back_en;
  localparam [(1 - 1):0] const_value_x_000000 = 1\'b0;
  reg [(1 - 1):0] cout_mem_92_22[0:(1 - 1)];
  initial
    begin
      cout_mem_92_22[0] = 1\'b0;
    end
  wire [(1 - 1):0] cout_mem_92_22_front_din;
  wire [(1 - 1):0] cout_mem_92_22_back;
  wire cout_mem_92_22_push_front_pop_back_en;
  wire [(3 - 1):0] prev_mode_93_22_next;
  wire [(3 - 1):0] prev_mode_93_22;
  wire [(3 - 1):0] prev_mode_93_22_reg_i;
  wire [(3 - 1):0] prev_mode_93_22_reg_o;
  localparam [(1 - 1):0] const_value_x_000001 = 1\'b0;
  localparam [(1 - 1):0] const_value_x_000002 = 1\'b1;
  localparam [(1 - 1):0] const_value_x_000003 = 1\'b0;
  localparam [(1 - 1):0] const_value_x_000004 = 1\'b0;
  wire signed [(8 - 1):0] cast_71_18;
  wire signed [(8 - 1):0] cast_71_22;
  wire signed [(8 - 1):0] internal_s_71_5_addsub;
  localparam [(1 - 1):0] const_value_x_000005 = 1\'b0;
  wire [(6 - 1):0] cast_internal_s_83_3_convert;
  localparam [(1 - 1):0] const_value_x_000006 = 1\'b0;
  localparam [(3 - 1):0] const_value_x_000007 = 3\'b000;
  assign a_17_32 = a;
  assign b_17_35 = b;
  assign op_mem_91_20_back = op_mem_91_20[0];
  always @(posedge clk)
    begin:proc_op_mem_91_20
      integer i;
      if (((ce == 1\'b1) && (op_mem_91_20_push_front_pop_back_en == 1\'b1)))
        begin
          op_mem_91_20[0] <= op_mem_91_20_front_din;
        end
    end
  assign cout_mem_92_22_back = cout_mem_92_22[0];
  always @(posedge clk)
    begin:proc_cout_mem_92_22
      integer i_x_000000;
      if (((ce == 1\'b1) && (cout_mem_92_22_push_front_pop_back_en == 1\'b1)))
        begin
          cout_mem_92_22[0] <= cout_mem_92_22_front_din;
        end
    end
  assign prev_mode_93_22_reg_i = prev_mode_93_22_next;
  assign prev_mode_93_22 = prev_mode_93_22_reg_o;
  defparam prev_mode_93_22_reg_inst.init_index = 2;
  defparam prev_mode_93_22_reg_inst.init_value = 3\'b010;
  defparam prev_mode_93_22_reg_inst.latency = 1;
  defparam prev_mode_93_22_reg_inst.width = 3;
  synth_reg_w_init prev_mode_93_22_reg_inst(.ce(ce), .clk(clk), .clr(clr), .i(prev_mode_93_22_reg_i), .o(prev_mode_93_22_reg_o));
  assign cast_71_18 = {2\'b00, a_17_32[5:0]};
  assign cast_71_22 = {2\'b00, b_17_35[5:0]};
  assign internal_s_71_5_addsub = cast_71_18 - cast_71_22;
  assign cast_internal_s_83_3_convert = {internal_s_71_5_addsub[5:0]};
  assign op_mem_91_20_push_front_pop_back_en = 1\'b0;
  assign cout_mem_92_22_push_front_pop_back_en = 1\'b0;
  assign prev_mode_93_22_next = const_value_x_000007;
  assign s = cast_internal_s_83_3_convert;
endmodule
',
      'entity_name' => 'addsub_9d274f068b',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'fc5a29a50561da664b20bc33a03502c5',
    'sourceFile' => 'hdl/xlmcode.v',
    'templateKeyValues' => {
      'crippled_module' => '(
  input [(6 - 1):0] a,
  input [(6 - 1):0] b,
  output [(6 - 1):0] s,
  input clk,
  input ce,
  input clr);
  wire [(6 - 1):0] a_17_32;
  wire [(6 - 1):0] b_17_35;
  localparam [(6 - 1):0] const_value = 6\'b000000;
  reg [(6 - 1):0] op_mem_91_20[0:(1 - 1)];
  initial
    begin
      op_mem_91_20[0] = 6\'b000000;
    end
  wire [(6 - 1):0] op_mem_91_20_front_din;
  wire [(6 - 1):0] op_mem_91_20_back;
  wire op_mem_91_20_push_front_pop_back_en;
  localparam [(1 - 1):0] const_value_x_000000 = 1\'b0;
  reg [(1 - 1):0] cout_mem_92_22[0:(1 - 1)];
  initial
    begin
      cout_mem_92_22[0] = 1\'b0;
    end
  wire [(1 - 1):0] cout_mem_92_22_front_din;
  wire [(1 - 1):0] cout_mem_92_22_back;
  wire cout_mem_92_22_push_front_pop_back_en;
  wire [(3 - 1):0] prev_mode_93_22_next;
  wire [(3 - 1):0] prev_mode_93_22;
  wire [(3 - 1):0] prev_mode_93_22_reg_i;
  wire [(3 - 1):0] prev_mode_93_22_reg_o;
  localparam [(1 - 1):0] const_value_x_000001 = 1\'b0;
  localparam [(1 - 1):0] const_value_x_000002 = 1\'b1;
  localparam [(1 - 1):0] const_value_x_000003 = 1\'b0;
  localparam [(1 - 1):0] const_value_x_000004 = 1\'b0;
  wire [(7 - 1):0] cast_69_18;
  wire [(7 - 1):0] cast_69_22;
  wire [(7 - 1):0] internal_s_69_5_addsub;
  localparam [(1 - 1):0] const_value_x_000005 = 1\'b0;
  wire [(6 - 1):0] cast_internal_s_83_3_convert;
  localparam [(1 - 1):0] const_value_x_000006 = 1\'b0;
  localparam [(3 - 1):0] const_value_x_000007 = 3\'b000;
  assign a_17_32 = a;
  assign b_17_35 = b;
  assign op_mem_91_20_back = op_mem_91_20[0];
  always @(posedge clk)
    begin:proc_op_mem_91_20
      integer i;
      if (((ce == 1\'b1) && (op_mem_91_20_push_front_pop_back_en == 1\'b1)))
        begin
          op_mem_91_20[0] <= op_mem_91_20_front_din;
        end
    end
  assign cout_mem_92_22_back = cout_mem_92_22[0];
  always @(posedge clk)
    begin:proc_cout_mem_92_22
      integer i_x_000000;
      if (((ce == 1\'b1) && (cout_mem_92_22_push_front_pop_back_en == 1\'b1)))
        begin
          cout_mem_92_22[0] <= cout_mem_92_22_front_din;
        end
    end
  assign prev_mode_93_22_reg_i = prev_mode_93_22_next;
  assign prev_mode_93_22 = prev_mode_93_22_reg_o;
  defparam prev_mode_93_22_reg_inst.init_index = 2;
  defparam prev_mode_93_22_reg_inst.init_value = 3\'b010;
  defparam prev_mode_93_22_reg_inst.latency = 1;
  defparam prev_mode_93_22_reg_inst.width = 3;
  synth_reg_w_init prev_mode_93_22_reg_inst(.ce(ce), .clk(clk), .clr(clr), .i(prev_mode_93_22_reg_i), .o(prev_mode_93_22_reg_o));
  assign cast_69_18 = {1\'b0, a_17_32[5:0]};
  assign cast_69_22 = {1\'b0, b_17_35[5:0]};
  assign internal_s_69_5_addsub = cast_69_18 + cast_69_22;
  assign cast_internal_s_83_3_convert = {internal_s_69_5_addsub[5:0]};
  assign op_mem_91_20_front_din = cast_internal_s_83_3_convert;
  assign op_mem_91_20_push_front_pop_back_en = 1\'b1;
  assign cout_mem_92_22_front_din = const_value_x_000006;
  assign cout_mem_92_22_push_front_pop_back_en = 1\'b1;
  assign prev_mode_93_22_next = const_value_x_000007;
  assign s = op_mem_91_20_back;
endmodule
',
      'entity_name' => 'addsub_52d6e01024',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '03946608f0caa2446df01d45de097107',
    'sourceFile' => 'hdl/xlmcode.v',
    'templateKeyValues' => {
      'crippled_module' => '(
  output [(6 - 1):0] op,
  input clk,
  input ce,
  input clr);
  assign op = 6\'b100001;
endmodule
',
      'entity_name' => 'constant_5c1f45c6b5',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '1ba07eaaf484ea1fb202e690b23b299b',
    'sourceFile' => 'D:/Xilinx/14.7/ISE_DS/ISE/sysgen/hdl/xlconvert.v',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '06d76aafebd3bf24939e84bcbe80d90d',
    'sourceFile' => 'hdl/xlmcode.v',
    'templateKeyValues' => {
      'crippled_module' => '(
  output [(6 - 1):0] op,
  input clk,
  input ce,
  input clr);
  reg [(6 - 1):0] count_reg_20_23 = 6\'b000000;
  localparam [(1 - 1):0] const_value = 1\'b1;
  localparam [(2 - 1):0] const_value_x_000000 = 2\'b10;
  localparam [(6 - 1):0] const_value_x_000001 = 6\'b000001;
  localparam [(6 - 1):0] const_value_x_000002 = 6\'b000000;
  localparam [(6 - 1):0] const_value_x_000003 = 6\'b000001;
  always @(posedge clk)
    begin:proc_count_reg_20_23
      if ((ce == 1\'b1))
        begin
          count_reg_20_23 <= count_reg_20_23 + const_value_x_000003;
        end
    end
  assign op = count_reg_20_23;
endmodule
',
      'entity_name' => 'counter_d2efb0480f',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = [
    'SELECT Block_Memory_Generator spartan6 Xilinx,_Inc. 7.2',
    '# 14.7_P.79',
    '# DEVICE spartan6',
    '# VERILOG',
    'CSET algorithm = Minimum_Area',
    'CSET assume_synchronous_clk = true',
    'CSET byte_size = 9',
    'CSET coe_file = [
',
    '  MEMORY_INITIALIZATION_RADIX = 16;',
    '  MEMORY_INITIALIZATION_VECTOR = 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;',
    '
]',
    'CSET collision_warnings = ALL',
    'CSET disable_collision_warnings = false',
    'CSET ecc = false',
    'CSET enable_a = Use_ENA_Pin',
    'CSET enable_b = Use_ENB_Pin',
    'CSET error_injection_type = Single_Bit_Error_Injection',
    'CSET fill_remaining_memory_locations = false',
    'CSET load_init_file = TRUE',
    'CSET memory_type = True_Dual_Port_RAM',
    'CSET operating_mode_a = READ_FIRST',
    'CSET operating_mode_b = READ_FIRST',
    'CSET output_reset_value_a = 0',
    'CSET output_reset_value_b = 0',
    'CSET pipeline_stages = 0',
    'CSET primitive = 8kx2',
    'CSET read_width_a = 1',
    'CSET read_width_b = 1',
    'CSET register_porta_output_of_memory_core = false',
    'CSET register_portb_output_of_memory_core = false',
    'CSET register_portb_output_of_memory_primitives = false',
    'CSET register_portb_output_of_memory_primitives = false',
    'CSET remaining_memory_locations = 0',
    'CSET reset_type = SYNC',
    'CSET use_byte_write_enable = false',
    'CSET use_error_injection_pins = false',
    'CSET use_regcea_pin = false',
    'CSET use_regceb_pin = false',
    'CSET use_rsta_pin = false',
    'CSET use_rstb_pin = false',
    'CSET write_depth_a = 64',
    'CSET write_width_a = 1',
    'CSET write_width_b = 1',
    'CSET component_name = bmg_72_02af306bc8bac7b8',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => 'b260598fee202d92088c3f015de870a3',
    'sourceFile' => 'hdl/xldpram.v',
    'templateKeyValues' => {
      'core_component_def' => ' (addra, clka, addrb, clkb, dina, wea, dinb, web, ena, enb, douta, doutb)/* synthesis syn_black_box */;
      input [5:0] addra;
      input [5:0] addrb;
      input [0:0] dina;
      input [0:0] dinb;
      input clka, wea, ena;
      input clkb, web, enb;
      output [0:0] douta;
      output [0:0] doutb;',
      'core_instance_text' => '      .addra(core_addra),
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
      .doutb(core_doutb)',
      'core_name0' => 'bmg_72_02af306bc8bac7b8',
      'entityName' => 'xldpram_pc_cfr_spartan6_v1_2',
      'entity_name.0' => 'xldpram',
      'needs_core' => 1,
      'vivado_flow' => 0,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '836860180141fc2e1cb804df7fae9944',
    'sourceFile' => 'D:/Xilinx/14.7/ISE_DS/ISE/sysgen/hdl/xlregister.v',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'ff448b220f9bf83f95a6b3308c8a683b',
    'sourceFile' => 'hdl/xlmcode.v',
    'templateKeyValues' => {
      'crippled_module' => '(
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
',
      'entity_name' => 'reinterpret_60dd3f961d',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'db26464aa4b35554162e82c896ed74f9',
    'sourceFile' => 'hdl/xlmcode.v',
    'templateKeyValues' => {
      'crippled_module' => '(
  output [(6 - 1):0] op,
  input clk,
  input ce,
  input clr);
  assign op = 6\'b000000;
endmodule
',
      'entity_name' => 'constant_bd962aec1b',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'c2f9a3e38060ce2df6dee2a416953e8b',
    'sourceFile' => 'hdl/xlmcode.v',
    'templateKeyValues' => {
      'crippled_module' => '(
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
        1\'b0 :
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
',
      'entity_name' => 'mux_a6b0362cad',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '365e5d77e7eb3384c6c7338df2e44471',
    'sourceFile' => 'D:/Xilinx/14.7/ISE_DS/ISE/sysgen/hdl/xlregister.v',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'ea172c2aff019fdb7984eafcba5ad695',
    'sourceFile' => 'hdl/xlmcode.v',
    'templateKeyValues' => {
      'crippled_module' => '(
  input [(6 - 1):0] a,
  input [(6 - 1):0] b,
  output [(6 - 1):0] s,
  input clk,
  input ce,
  input clr);
  wire [(6 - 1):0] a_17_32;
  wire [(6 - 1):0] b_17_35;
  localparam [(6 - 1):0] const_value = 6\'b000000;
  reg [(6 - 1):0] op_mem_91_20[0:(1 - 1)];
  initial
    begin
      op_mem_91_20[0] = 6\'b000000;
    end
  wire [(6 - 1):0] op_mem_91_20_front_din;
  wire [(6 - 1):0] op_mem_91_20_back;
  wire op_mem_91_20_push_front_pop_back_en;
  localparam [(1 - 1):0] const_value_x_000000 = 1\'b0;
  reg [(1 - 1):0] cout_mem_92_22[0:(1 - 1)];
  initial
    begin
      cout_mem_92_22[0] = 1\'b0;
    end
  wire [(1 - 1):0] cout_mem_92_22_front_din;
  wire [(1 - 1):0] cout_mem_92_22_back;
  wire cout_mem_92_22_push_front_pop_back_en;
  wire [(3 - 1):0] prev_mode_93_22_next;
  wire [(3 - 1):0] prev_mode_93_22;
  wire [(3 - 1):0] prev_mode_93_22_reg_i;
  wire [(3 - 1):0] prev_mode_93_22_reg_o;
  localparam [(1 - 1):0] const_value_x_000001 = 1\'b0;
  localparam [(1 - 1):0] const_value_x_000002 = 1\'b1;
  localparam [(1 - 1):0] const_value_x_000003 = 1\'b0;
  localparam [(1 - 1):0] const_value_x_000004 = 1\'b0;
  wire [(7 - 1):0] cast_69_18;
  wire [(7 - 1):0] cast_69_22;
  wire [(7 - 1):0] internal_s_69_5_addsub;
  localparam [(1 - 1):0] const_value_x_000005 = 1\'b0;
  wire [(6 - 1):0] cast_internal_s_83_3_convert;
  localparam [(1 - 1):0] const_value_x_000006 = 1\'b0;
  localparam [(3 - 1):0] const_value_x_000007 = 3\'b000;
  assign a_17_32 = a;
  assign b_17_35 = b;
  assign op_mem_91_20_back = op_mem_91_20[0];
  always @(posedge clk)
    begin:proc_op_mem_91_20
      integer i;
      if (((ce == 1\'b1) && (op_mem_91_20_push_front_pop_back_en == 1\'b1)))
        begin
          op_mem_91_20[0] <= op_mem_91_20_front_din;
        end
    end
  assign cout_mem_92_22_back = cout_mem_92_22[0];
  always @(posedge clk)
    begin:proc_cout_mem_92_22
      integer i_x_000000;
      if (((ce == 1\'b1) && (cout_mem_92_22_push_front_pop_back_en == 1\'b1)))
        begin
          cout_mem_92_22[0] <= cout_mem_92_22_front_din;
        end
    end
  assign prev_mode_93_22_reg_i = prev_mode_93_22_next;
  assign prev_mode_93_22 = prev_mode_93_22_reg_o;
  defparam prev_mode_93_22_reg_inst.init_index = 2;
  defparam prev_mode_93_22_reg_inst.init_value = 3\'b010;
  defparam prev_mode_93_22_reg_inst.latency = 1;
  defparam prev_mode_93_22_reg_inst.width = 3;
  synth_reg_w_init prev_mode_93_22_reg_inst(.ce(ce), .clk(clk), .clr(clr), .i(prev_mode_93_22_reg_i), .o(prev_mode_93_22_reg_o));
  assign cast_69_18 = {1\'b0, a_17_32[5:0]};
  assign cast_69_22 = {1\'b0, b_17_35[5:0]};
  assign internal_s_69_5_addsub = cast_69_18 + cast_69_22;
  assign cast_internal_s_83_3_convert = {internal_s_69_5_addsub[5:0]};
  assign op_mem_91_20_push_front_pop_back_en = 1\'b0;
  assign cout_mem_92_22_push_front_pop_back_en = 1\'b0;
  assign prev_mode_93_22_next = const_value_x_000007;
  assign s = cast_internal_s_83_3_convert;
endmodule
',
      'entity_name' => 'addsub_0db3d998f7',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'f5e00041df0e648cf981635120d9f89d',
    'sourceFile' => 'hdl/xlmcode.v',
    'templateKeyValues' => {
      'crippled_module' => '(
  output [(6 - 1):0] op,
  input clk,
  input ce,
  input clr);
  assign op = 6\'b000001;
endmodule
',
      'entity_name' => 'constant_df40b9ce05',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '0bec9b30c35a423d56ab58da096a2e30',
    'sourceFile' => 'hdl/xlmcode.v',
    'templateKeyValues' => {
      'crippled_module' => '(
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
        2\'b00 :
          begin
            unregy_join_6_1 = d0_1_24;
          end
        2\'b01 :
          begin
            unregy_join_6_1 = d1_1_27;
          end
        2\'b10 :
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
',
      'entity_name' => 'mux_f8a4f48eeb',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '3f1dc372c867e751addc0cc105d7296f',
    'sourceFile' => 'D:/Xilinx/14.7/ISE_DS/ISE/sysgen/hdl/xlregister.v',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '037aa4e3bdde0bf789f40038aaefdbdf',
    'sourceFile' => 'hdl/xlmcode.v',
    'templateKeyValues' => {
      'crippled_module' => '(
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
',
      'entity_name' => 'logical_28d385d867',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '2c970ece40fb1dbc42063da69c3a8b6a',
    'sourceFile' => 'hdl/xlmcode.v',
    'templateKeyValues' => {
      'crippled_module' => '(
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
',
      'entity_name' => 'logical_7970a672aa',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'b68bed7a69729ad946828ce5469657f0',
    'sourceFile' => 'D:/Xilinx/14.7/ISE_DS/ISE/sysgen/hdl/xlslice.v',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'ed2947beb4337ba45da8d68dbb37e7b3',
    'sourceFile' => 'hdl/xlmcode.v',
    'templateKeyValues' => {
      'crippled_module' => '(
  output [(17 - 1):0] op,
  input clk,
  input ce,
  input clr);
  assign op = 17\'b11111111111111111;
endmodule
',
      'entity_name' => 'constant_440fb70725',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'fa7e48e7679a2b7cfc5e79fe7c1c0b9f',
    'sourceFile' => 'hdl/xlmcode.v',
    'templateKeyValues' => {
      'crippled_module' => '(
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
        1\'b0 :
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
',
      'entity_name' => 'mux_2fa1417e01',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '91c285938952f3f0cc9e386157d03042',
    'sourceFile' => 'D:/Xilinx/14.7/ISE_DS/ISE/sysgen/hdl/xlregister.v',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '92749315d6c4f356d3561196ff79bc69',
    'sourceFile' => 'hdl/xlmcode.v',
    'templateKeyValues' => {
      'crippled_module' => '(
  input [(16 - 1):0] a,
  input [(16 - 1):0] b,
  output [(17 - 1):0] s,
  input clk,
  input ce,
  input clr);
  wire [(16 - 1):0] a_17_32;
  wire [(16 - 1):0] b_17_35;
  localparam [(17 - 1):0] const_value = 17\'b00000000000000000;
  reg [(17 - 1):0] op_mem_91_20[0:(1 - 1)];
  initial
    begin
      op_mem_91_20[0] = 17\'b00000000000000000;
    end
  wire [(17 - 1):0] op_mem_91_20_front_din;
  wire [(17 - 1):0] op_mem_91_20_back;
  wire op_mem_91_20_push_front_pop_back_en;
  localparam [(1 - 1):0] const_value_x_000000 = 1\'b0;
  reg [(1 - 1):0] cout_mem_92_22[0:(1 - 1)];
  initial
    begin
      cout_mem_92_22[0] = 1\'b0;
    end
  wire [(1 - 1):0] cout_mem_92_22_front_din;
  wire [(1 - 1):0] cout_mem_92_22_back;
  wire cout_mem_92_22_push_front_pop_back_en;
  wire [(3 - 1):0] prev_mode_93_22_next;
  wire [(3 - 1):0] prev_mode_93_22;
  wire [(3 - 1):0] prev_mode_93_22_reg_i;
  wire [(3 - 1):0] prev_mode_93_22_reg_o;
  localparam [(1 - 1):0] const_value_x_000001 = 1\'b0;
  localparam [(1 - 1):0] const_value_x_000002 = 1\'b1;
  localparam [(1 - 1):0] const_value_x_000003 = 1\'b0;
  localparam [(1 - 1):0] const_value_x_000004 = 1\'b0;
  wire [(17 - 1):0] cast_69_18;
  wire [(17 - 1):0] cast_69_22;
  wire [(17 - 1):0] internal_s_69_5_addsub;
  localparam [(1 - 1):0] const_value_x_000005 = 1\'b0;
  localparam [(1 - 1):0] const_value_x_000006 = 1\'b0;
  localparam [(3 - 1):0] const_value_x_000007 = 3\'b000;
  assign a_17_32 = a;
  assign b_17_35 = b;
  assign op_mem_91_20_back = op_mem_91_20[0];
  always @(posedge clk)
    begin:proc_op_mem_91_20
      integer i;
      if (((ce == 1\'b1) && (op_mem_91_20_push_front_pop_back_en == 1\'b1)))
        begin
          op_mem_91_20[0] <= op_mem_91_20_front_din;
        end
    end
  assign cout_mem_92_22_back = cout_mem_92_22[0];
  always @(posedge clk)
    begin:proc_cout_mem_92_22
      integer i_x_000000;
      if (((ce == 1\'b1) && (cout_mem_92_22_push_front_pop_back_en == 1\'b1)))
        begin
          cout_mem_92_22[0] <= cout_mem_92_22_front_din;
        end
    end
  assign prev_mode_93_22_reg_i = prev_mode_93_22_next;
  assign prev_mode_93_22 = prev_mode_93_22_reg_o;
  defparam prev_mode_93_22_reg_inst.init_index = 2;
  defparam prev_mode_93_22_reg_inst.init_value = 3\'b010;
  defparam prev_mode_93_22_reg_inst.latency = 1;
  defparam prev_mode_93_22_reg_inst.width = 3;
  synth_reg_w_init prev_mode_93_22_reg_inst(.ce(ce), .clk(clk), .clr(clr), .i(prev_mode_93_22_reg_i), .o(prev_mode_93_22_reg_o));
  assign cast_69_18 = {1\'b0, a_17_32[15:0]};
  assign cast_69_22 = {1\'b0, b_17_35[15:0]};
  assign internal_s_69_5_addsub = cast_69_18 + cast_69_22;
  assign op_mem_91_20_push_front_pop_back_en = 1\'b0;
  assign cout_mem_92_22_push_front_pop_back_en = 1\'b0;
  assign prev_mode_93_22_next = const_value_x_000007;
  assign s = internal_s_69_5_addsub;
endmodule
',
      'entity_name' => 'addsub_710287cc09',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '0283114ece734d91f5d89f9f2dd96657',
    'sourceFile' => 'hdl/xlmcode.v',
    'templateKeyValues' => {
      'crippled_module' => '(
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
        1\'b0 :
          begin
            unregy_join_6_1 = {1\'b0, d0_1_24[15:0]};
          end
        default:
          begin
            unregy_join_6_1 = d1_1_27;
          end
      endcase
    end
  assign y = unregy_join_6_1;
endmodule
',
      'entity_name' => 'mux_272b8a229a',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '3d024fb50f4132c9f5374cf6a6f01c2d',
    'sourceFile' => 'hdl/xlmcode.v',
    'templateKeyValues' => {
      'crippled_module' => '(
  input [(16 - 1):0] a,
  input [(17 - 1):0] b,
  output [(1 - 1):0] op,
  input clk,
  input ce,
  input clr);
  wire [(16 - 1):0] a_1_31;
  wire [(17 - 1):0] b_1_34;
  localparam [(1 - 1):0] const_value = 1\'b1;
  wire [(17 - 1):0] cast_22_12;
  wire result_22_3_rel;
  assign a_1_31 = a;
  assign b_1_34 = b;
  assign cast_22_12 = {1\'b0, a_1_31[15:0]};
  assign result_22_3_rel = cast_22_12 >= b_1_34;
  assign op = result_22_3_rel;
endmodule
',
      'entity_name' => 'relational_c8292218b1',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '66054526a78de7d9090724f30c432200',
    'sourceFile' => 'hdl/xlmcode.v',
    'templateKeyValues' => {
      'crippled_module' => '(
  input [(16 - 1):0] a,
  input [(16 - 1):0] b,
  output [(1 - 1):0] op,
  input clk,
  input ce,
  input clr);
  wire [(16 - 1):0] a_1_31;
  wire [(16 - 1):0] b_1_34;
  localparam [(1 - 1):0] const_value = 1\'b1;
  wire result_18_3_rel;
  assign a_1_31 = a;
  assign b_1_34 = b;
  assign result_18_3_rel = a_1_31 > b_1_34;
  assign op = result_18_3_rel;
endmodule
',
      'entity_name' => 'relational_a2b8e7c11c',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '67f5e3f8db1abe05ceb366cf019eec5f',
    'sourceFile' => 'hdl/xlmcode.v',
    'templateKeyValues' => {
      'crippled_module' => '(
  input [(16 - 1):0] ip,
  output [(16 - 1):0] op,
  input clk,
  input ce,
  input clr);
  wire [(16 - 1):0] ip_1_23;
  localparam [(16 - 1):0] const_value = 16\'b0000000000000000;
  reg [(16 - 1):0] op_mem_46_20[0:(1 - 1)];
  initial
    begin
      op_mem_46_20[0] = 16\'b0000000000000000;
    end
  wire [(16 - 1):0] op_mem_46_20_front_din;
  wire [(16 - 1):0] op_mem_46_20_back;
  wire op_mem_46_20_push_front_pop_back_en;
  localparam [(1 - 1):0] const_value_x_000000 = 1\'b1;
  wire [(16 - 1):0] cast_internal_ip_36_3_convert;
  assign ip_1_23 = ip;
  assign op_mem_46_20_back = op_mem_46_20[0];
  always @(posedge clk)
    begin:proc_op_mem_46_20
      integer i;
      if (((ce == 1\'b1) && (op_mem_46_20_push_front_pop_back_en == 1\'b1)))
        begin
          op_mem_46_20[0] <= op_mem_46_20_front_din;
        end
    end
  assign cast_internal_ip_36_3_convert = {8\'b00000000, ip_1_23[15:8]};
  assign op_mem_46_20_push_front_pop_back_en = 1\'b0;
  assign op = cast_internal_ip_36_3_convert;
endmodule
',
      'entity_name' => 'shift_f768896000',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '0bf4cbf9a8c925f6e86e2f1ab9f69781',
    'sourceFile' => 'hdl/xlmcode.v',
    'templateKeyValues' => {
      'crippled_module' => '(
  input [(16 - 1):0] a,
  input [(16 - 1):0] b,
  output [(17 - 1):0] s,
  input clk,
  input ce,
  input clr);
  wire [(16 - 1):0] a_17_32;
  wire [(16 - 1):0] b_17_35;
  localparam signed [(17 - 1):0] const_value = 17\'sb00000000000000000;
  reg signed [(17 - 1):0] op_mem_91_20[0:(1 - 1)];
  initial
    begin
      op_mem_91_20[0] = 17\'b00000000000000000;
    end
  wire signed [(17 - 1):0] op_mem_91_20_front_din;
  wire signed [(17 - 1):0] op_mem_91_20_back;
  wire op_mem_91_20_push_front_pop_back_en;
  localparam [(1 - 1):0] const_value_x_000000 = 1\'b0;
  reg [(1 - 1):0] cout_mem_92_22[0:(1 - 1)];
  initial
    begin
      cout_mem_92_22[0] = 1\'b0;
    end
  wire [(1 - 1):0] cout_mem_92_22_front_din;
  wire [(1 - 1):0] cout_mem_92_22_back;
  wire cout_mem_92_22_push_front_pop_back_en;
  wire [(3 - 1):0] prev_mode_93_22_next;
  wire [(3 - 1):0] prev_mode_93_22;
  wire [(3 - 1):0] prev_mode_93_22_reg_i;
  wire [(3 - 1):0] prev_mode_93_22_reg_o;
  localparam [(1 - 1):0] const_value_x_000001 = 1\'b0;
  localparam [(1 - 1):0] const_value_x_000002 = 1\'b1;
  localparam [(1 - 1):0] const_value_x_000003 = 1\'b0;
  localparam [(1 - 1):0] const_value_x_000004 = 1\'b0;
  wire signed [(18 - 1):0] cast_71_18;
  wire signed [(18 - 1):0] cast_71_22;
  wire signed [(18 - 1):0] internal_s_71_5_addsub;
  localparam [(1 - 1):0] const_value_x_000005 = 1\'b0;
  wire signed [(17 - 1):0] cast_internal_s_83_3_convert;
  localparam [(1 - 1):0] const_value_x_000006 = 1\'b0;
  localparam [(3 - 1):0] const_value_x_000007 = 3\'b000;
  assign a_17_32 = a;
  assign b_17_35 = b;
  assign op_mem_91_20_back = op_mem_91_20[0];
  always @(posedge clk)
    begin:proc_op_mem_91_20
      integer i;
      if (((ce == 1\'b1) && (op_mem_91_20_push_front_pop_back_en == 1\'b1)))
        begin
          op_mem_91_20[0] <= op_mem_91_20_front_din;
        end
    end
  assign cout_mem_92_22_back = cout_mem_92_22[0];
  always @(posedge clk)
    begin:proc_cout_mem_92_22
      integer i_x_000000;
      if (((ce == 1\'b1) && (cout_mem_92_22_push_front_pop_back_en == 1\'b1)))
        begin
          cout_mem_92_22[0] <= cout_mem_92_22_front_din;
        end
    end
  assign prev_mode_93_22_reg_i = prev_mode_93_22_next;
  assign prev_mode_93_22 = prev_mode_93_22_reg_o;
  defparam prev_mode_93_22_reg_inst.init_index = 2;
  defparam prev_mode_93_22_reg_inst.init_value = 3\'b010;
  defparam prev_mode_93_22_reg_inst.latency = 1;
  defparam prev_mode_93_22_reg_inst.width = 3;
  synth_reg_w_init prev_mode_93_22_reg_inst(.ce(ce), .clk(clk), .clr(clr), .i(prev_mode_93_22_reg_i), .o(prev_mode_93_22_reg_o));
  assign cast_71_18 = {2\'b00, a_17_32[15:0]};
  assign cast_71_22 = {2\'b00, b_17_35[15:0]};
  assign internal_s_71_5_addsub = cast_71_18 - cast_71_22;
  assign cast_internal_s_83_3_convert = {internal_s_71_5_addsub[16:0]};
  assign op_mem_91_20_front_din = cast_internal_s_83_3_convert;
  assign op_mem_91_20_push_front_pop_back_en = 1\'b1;
  assign cout_mem_92_22_front_din = const_value_x_000006;
  assign cout_mem_92_22_push_front_pop_back_en = 1\'b1;
  assign prev_mode_93_22_next = const_value_x_000007;
  assign s = op_mem_91_20_back;
endmodule
',
      'entity_name' => 'addsub_bae7b67bb9',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '88fc3893a592d702a637a8f70131ee3b',
    'sourceFile' => 'D:/Xilinx/14.7/ISE_DS/ISE/sysgen/hdl/xlconvert.v',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '7e572a2b34a752956fd164b927c0b3ab',
    'sourceFile' => 'D:/Xilinx/14.7/ISE_DS/ISE/sysgen/hdl/xlconvert.v',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '715f404b0721ce66ab9965da6e2baa94',
    'sourceFile' => 'D:/Xilinx/14.7/ISE_DS/ISE/sysgen/hdl/xlconvert.v',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'c9d4343a4092de819842e3c191181a1d',
    'sourceFile' => 'D:/Xilinx/14.7/ISE_DS/ISE/sysgen/hdl/xlconvert.v',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '589f72a670f01c3bed9f27a7a940705f',
    'sourceFile' => 'D:/Xilinx/14.7/ISE_DS/ISE/sysgen/hdl/xldsp48a.v',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '31132110a4c1d27125045709f3cc8cbb',
    'sourceFile' => 'hdl/xlmcode.v',
    'templateKeyValues' => {
      'crippled_module' => '(
  input [(29 - 1):0] input_port,
  output [(29 - 1):0] output_port,
  input clk,
  input ce,
  input clr);
  wire signed [(29 - 1):0] input_port_1_40;
  assign input_port_1_40 = input_port;
  assign output_port = input_port_1_40;
endmodule
',
      'entity_name' => 'reinterpret_286cd958f4',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '9b7ef4c69737f2f39d92e1cbf28f70f1',
    'sourceFile' => 'hdl/xlmcode.v',
    'templateKeyValues' => {
      'crippled_module' => '(
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
',
      'entity_name' => 'concat_7e18b92ffa',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'b90a7aec5f581163e6b5bf725d01caec',
    'sourceFile' => 'hdl/xlmcode.v',
    'templateKeyValues' => {
      'crippled_module' => '(
  output [(9 - 1):0] op,
  input clk,
  input ce,
  input clr);
  assign op = 9\'b000100001;
endmodule
',
      'entity_name' => 'constant_815959c413',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = [
    'SELECT Block_Memory_Generator spartan6 Xilinx,_Inc. 7.2',
    '# 14.7_P.79',
    '# DEVICE spartan6',
    '# VERILOG',
    'CSET algorithm = Minimum_Area',
    'CSET assume_synchronous_clk = true',
    'CSET byte_size = 9',
    'CSET coe_file = [
',
    '  MEMORY_INITIALIZATION_RADIX = 16;',
    '  MEMORY_INITIALIZATION_VECTOR = 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;',
    '
]',
    'CSET collision_warnings = ALL',
    'CSET disable_collision_warnings = false',
    'CSET ecc = false',
    'CSET enable_a = Use_ENA_Pin',
    'CSET enable_b = Use_ENB_Pin',
    'CSET error_injection_type = Single_Bit_Error_Injection',
    'CSET fill_remaining_memory_locations = false',
    'CSET load_init_file = TRUE',
    'CSET memory_type = True_Dual_Port_RAM',
    'CSET operating_mode_a = READ_FIRST',
    'CSET operating_mode_b = READ_FIRST',
    'CSET output_reset_value_a = 0',
    'CSET output_reset_value_b = 0',
    'CSET pipeline_stages = 0',
    'CSET primitive = 8kx2',
    'CSET read_width_a = 32',
    'CSET read_width_b = 32',
    'CSET register_porta_output_of_memory_core = false',
    'CSET register_portb_output_of_memory_core = false',
    'CSET register_portb_output_of_memory_primitives = false',
    'CSET register_portb_output_of_memory_primitives = false',
    'CSET remaining_memory_locations = 0',
    'CSET reset_type = SYNC',
    'CSET use_byte_write_enable = false',
    'CSET use_error_injection_pins = false',
    'CSET use_regcea_pin = false',
    'CSET use_regceb_pin = false',
    'CSET use_rsta_pin = false',
    'CSET use_rstb_pin = false',
    'CSET write_depth_a = 512',
    'CSET write_width_a = 32',
    'CSET write_width_b = 32',
    'CSET component_name = bmg_72_1071e1009a08056e',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => 'dd7362f15f6b06512fb6259d67214bea',
    'sourceFile' => 'hdl/xldpram.v',
    'templateKeyValues' => {
      'core_component_def' => ' (addra, clka, addrb, clkb, dina, wea, dinb, web, ena, enb, douta, doutb)/* synthesis syn_black_box */;
      input [8:0] addra;
      input [8:0] addrb;
      input [31:0] dina;
      input [31:0] dinb;
      input clka, wea, ena;
      input clkb, web, enb;
      output [31:0] douta;
      output [31:0] doutb;',
      'core_instance_text' => '      .addra(core_addra),
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
      .doutb(core_doutb)',
      'core_name0' => 'bmg_72_1071e1009a08056e',
      'entityName' => 'xldpram_pc_cfr_spartan6_v1_2',
      'entity_name.0' => 'xldpram',
      'needs_core' => 1,
      'vivado_flow' => 0,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '641249bcc109a0bc5305aa77569b72ef',
    'sourceFile' => 'hdl/xlmcode.v',
    'templateKeyValues' => {
      'crippled_module' => '(
  input [(16 - 1):0] a,
  input [(16 - 1):0] b,
  output [(16 - 1):0] s,
  input clk,
  input ce,
  input clr);
  wire signed [(16 - 1):0] a_17_32;
  wire signed [(16 - 1):0] b_17_35;
  localparam signed [(16 - 1):0] const_value = 16\'sb0000000000000000;
  reg signed [(16 - 1):0] op_mem_91_20[0:(1 - 1)];
  initial
    begin
      op_mem_91_20[0] = 16\'b0000000000000000;
    end
  wire signed [(16 - 1):0] op_mem_91_20_front_din;
  wire signed [(16 - 1):0] op_mem_91_20_back;
  wire op_mem_91_20_push_front_pop_back_en;
  localparam [(1 - 1):0] const_value_x_000000 = 1\'b0;
  reg [(1 - 1):0] cout_mem_92_22[0:(1 - 1)];
  initial
    begin
      cout_mem_92_22[0] = 1\'b0;
    end
  wire [(1 - 1):0] cout_mem_92_22_front_din;
  wire [(1 - 1):0] cout_mem_92_22_back;
  wire cout_mem_92_22_push_front_pop_back_en;
  wire [(3 - 1):0] prev_mode_93_22_next;
  wire [(3 - 1):0] prev_mode_93_22;
  wire [(3 - 1):0] prev_mode_93_22_reg_i;
  wire [(3 - 1):0] prev_mode_93_22_reg_o;
  localparam [(1 - 1):0] const_value_x_000001 = 1\'b0;
  localparam [(1 - 1):0] const_value_x_000002 = 1\'b1;
  localparam [(1 - 1):0] const_value_x_000003 = 1\'b0;
  localparam [(1 - 1):0] const_value_x_000004 = 1\'b0;
  wire signed [(17 - 1):0] cast_71_18;
  wire signed [(17 - 1):0] cast_71_22;
  wire signed [(17 - 1):0] internal_s_71_5_addsub;
  localparam [(1 - 1):0] const_value_x_000005 = 1\'b0;
  wire signed [(16 - 1):0] cast_internal_s_83_3_convert;
  localparam [(1 - 1):0] const_value_x_000006 = 1\'b0;
  localparam [(3 - 1):0] const_value_x_000007 = 3\'b000;
  assign a_17_32 = a;
  assign b_17_35 = b;
  assign op_mem_91_20_back = op_mem_91_20[0];
  always @(posedge clk)
    begin:proc_op_mem_91_20
      integer i;
      if (((ce == 1\'b1) && (op_mem_91_20_push_front_pop_back_en == 1\'b1)))
        begin
          op_mem_91_20[0] <= op_mem_91_20_front_din;
        end
    end
  assign cout_mem_92_22_back = cout_mem_92_22[0];
  always @(posedge clk)
    begin:proc_cout_mem_92_22
      integer i_x_000000;
      if (((ce == 1\'b1) && (cout_mem_92_22_push_front_pop_back_en == 1\'b1)))
        begin
          cout_mem_92_22[0] <= cout_mem_92_22_front_din;
        end
    end
  assign prev_mode_93_22_reg_i = prev_mode_93_22_next;
  assign prev_mode_93_22 = prev_mode_93_22_reg_o;
  defparam prev_mode_93_22_reg_inst.init_index = 2;
  defparam prev_mode_93_22_reg_inst.init_value = 3\'b010;
  defparam prev_mode_93_22_reg_inst.latency = 1;
  defparam prev_mode_93_22_reg_inst.width = 3;
  synth_reg_w_init prev_mode_93_22_reg_inst(.ce(ce), .clk(clk), .clr(clr), .i(prev_mode_93_22_reg_i), .o(prev_mode_93_22_reg_o));
  assign cast_71_18 = {{1{a_17_32[15]}}, a_17_32[15:0]};
  assign cast_71_22 = {{1{b_17_35[15]}}, b_17_35[15:0]};
  assign internal_s_71_5_addsub = cast_71_18 - cast_71_22;
  assign cast_internal_s_83_3_convert = {internal_s_71_5_addsub[15:0]};
  assign op_mem_91_20_front_din = cast_internal_s_83_3_convert;
  assign op_mem_91_20_push_front_pop_back_en = 1\'b1;
  assign cout_mem_92_22_front_din = const_value_x_000006;
  assign cout_mem_92_22_push_front_pop_back_en = 1\'b1;
  assign prev_mode_93_22_next = const_value_x_000007;
  assign s = op_mem_91_20_back;
endmodule
',
      'entity_name' => 'addsub_c36a8bb0bd',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  local *wrapup = $Sg::{'wrapup'};
  push(@$results, &Sg::wrapup())   if (defined(&wrapup));
  local *wrapup = $SgDeliverFile::{'wrapup'};
  push(@$results, &SgDeliverFile::wrapup())   if (defined(&wrapup));
  local *wrapup = $SgGenerateCores::{'wrapup'};
  push(@$results, &SgGenerateCores::wrapup())   if (defined(&wrapup));
  use Carp qw(croak);
  $ENV{'SYSGEN'} = 'D:/Xilinx/14.7/ISE_DS/ISE/sysgen';
  open(RESULTS, '> D:/work/cfr_spartan6_V1_2/netlist/sysgen/script_results7405289800403569140') || 
    croak 'couldn\'t open D:/work/cfr_spartan6_V1_2/netlist/sysgen/script_results7405289800403569140';
  binmode(RESULTS);
  print RESULTS &Sg::toString($results) . "\n";
  close(RESULTS) || 
    croak 'trouble writing D:/work/cfr_spartan6_V1_2/netlist/sysgen/script_results7405289800403569140';
};

if ($@) {
  open(RESULTS, '> D:/work/cfr_spartan6_V1_2/netlist/sysgen/script_results7405289800403569140') || 
    croak 'couldn\'t open D:/work/cfr_spartan6_V1_2/netlist/sysgen/script_results7405289800403569140';
  binmode(RESULTS);
  print RESULTS $@ . "\n";
  close(RESULTS) || 
    croak 'trouble writing D:/work/cfr_spartan6_V1_2/netlist/sysgen/script_results7405289800403569140';
  exit(1);
}

exit(0);
