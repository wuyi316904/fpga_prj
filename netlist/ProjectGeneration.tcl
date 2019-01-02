#
# Created by System Generator     Sun Nov 11 08:53:41 2018
#
# Note: This file is produced automatically, and will be overwritten the next
# time you press "Generate" in System Generator.
#

namespace eval ::xilinx::dsptool::iseproject::param {
    set SynthStrategyName {XST Defaults*}
    set ImplStrategyName {ISE Defaults*}
    set Compilation {HDL Netlist}
    set Project {pc_cfr_spartan6_v1_2_cw}
    set DSPFamily {Spartan6}
    set DSPDevice {xc6slx150}
    set DSPPackage {fgg484}
    set DSPSpeed {-3}
    set HDLLanguage {verilog}
    set SynthesisTool {XST}
    set Simulator {Modelsim-SE}
    set ReadCores {False}
    set MapEffortLevel {High}
    set ParEffortLevel {High}
    set Frequency {285.714285714286}
    set CreateInterfaceDocument {off}
    set NewXSTParser {1}
	if { [ string equal $Compilation {IP Packager} ] == 1 } {
		set PostProjectCreationProc {dsp_package_for_vivado_ip_integrator}
		set IP_Library_Text {SysGen}
		set IP_Vendor_Text {Xilinx}
		set IP_Version_Text {1.0}
		set IP_Categories_Text {System Generator for DSP}
		set IP_Common_Repos {0}
		set IP_Dir {}
		set IP_LifeCycle_Menu {1}
		set IP_Description    {}
		
	}
    set ProjectFiles {
        {{pc_cfr_spartan6_v1_2_cw.v} -view All}
        {{pc_cfr_spartan6_v1_2.v} -view All}
        {{pc_cfr_spartan6_v1_2_cw.ucf}}
        {{pc_cfr_spartan6_v1_2_cw.xdc}}
        {{bmg_72_02af306bc8bac7b8.mif}}
        {{bmg_72_1071e1009a08056e.mif}}
        {{bmg_72_121f2feae115cb60.mif}}
        {{bmg_72_1a6cb457801618b3.mif}}
        {{dmg_72_195596f332d57672.mif}}
        {{dmg_72_ad5060a4053d2208.mif}}
        {{D:\work\cfr_spartan6_V1_2\pc_cfr_spartan6_v1_2.slx}}
    }
    set TopLevelModule {pc_cfr_spartan6_v1_2_cw}
    set SynthesisConstraintsFile {pc_cfr_spartan6_v1_2_cw.xcf}
    set ImplementationStopView {Structural}
    set ProjectGenerator {SysgenDSP}
}
    source SgIseProject.tcl
    ::xilinx::dsptool::iseproject::create
