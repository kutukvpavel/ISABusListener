# Copyright (C) 1991-2013 Altera Corporation
# Your use of Altera Corporation's design tools, logic functions 
# and other software and tools, and its AMPP partner logic 
# functions, and any output files from any of the foregoing 
# (including device programming or simulation files), and any 
# associated documentation or information are expressly subject 
# to the terms and conditions of the Altera Program License 
# Subscription Agreement, Altera MegaCore Function License 
# Agreement, or other applicable license agreement, including, 
# without limitation, that your use is for the sole purpose of 
# programming logic devices manufactured by Altera and sold by 
# Altera or its authorized distributors.  Please refer to the 
# applicable agreement for further details.

# Quartus II: Generate Tcl File for Project
# File: DiamantISAListener.tcl
# Generated on: Sun Jan 10 05:34:44 2021

# Load Quartus II Tcl Project package
package require ::quartus::project

set need_to_close_project 0
set make_assignments 1

# Check that the right project is open
if {[is_project_open]} {
	if {[string compare $quartus(project) "DiamantISAListener"]} {
		puts "Project DiamantISAListener is not open"
		set make_assignments 0
	}
} else {
	# Only open if not already open
	if {[project_exists DiamantISAListener]} {
		project_open -revision DiamantISAListener DiamantISAListener
	} else {
		project_new -revision DiamantISAListener DiamantISAListener
	}
	set need_to_close_project 1
}

# Make assignments
if {$make_assignments} {
	set_global_assignment -name FAMILY "Cyclone II"
	set_global_assignment -name DEVICE EP2C5T144C8
	set_global_assignment -name ORIGINAL_QUARTUS_VERSION "13.0 SP1"
	set_global_assignment -name PROJECT_CREATION_TIME_DATE "21:54:45  JANUARY 03, 2021"
	set_global_assignment -name LAST_QUARTUS_VERSION "13.0 SP1"
	set_global_assignment -name PROJECT_OUTPUT_DIRECTORY output_files
	set_global_assignment -name MIN_CORE_JUNCTION_TEMP 0
	set_global_assignment -name MAX_CORE_JUNCTION_TEMP 85
	set_global_assignment -name ERROR_CHECK_FREQUENCY_DIVISOR 1
	set_global_assignment -name EDA_DESIGN_ENTRY_SYNTHESIS_TOOL "Design Compiler"
	set_global_assignment -name EDA_INPUT_VCC_NAME VDD -section_id eda_design_synthesis
	set_global_assignment -name EDA_LMF_FILE altsyn.lmf -section_id eda_design_synthesis
	set_global_assignment -name EDA_INPUT_DATA_FORMAT "VERILOG HDL" -section_id eda_design_synthesis
	set_global_assignment -name EDA_SIMULATION_TOOL "ModelSim-Altera (Verilog)"
	set_global_assignment -name EDA_OUTPUT_DATA_FORMAT "VERILOG HDL" -section_id eda_simulation
	set_global_assignment -name PARTITION_NETLIST_TYPE SOURCE -section_id Top
	set_global_assignment -name PARTITION_FITTER_PRESERVATION_LEVEL PLACEMENT_AND_ROUTING -section_id Top
	set_global_assignment -name PARTITION_COLOR 16764057 -section_id Top
	set_global_assignment -name VERILOG_TEST_BENCH_FILE simulation/modelsim/DiamantISAListener.vt
	set_global_assignment -name VERILOG_FILE DiamantISAListener.v
	set_global_assignment -name QIP_FILE Memory.qip
	set_global_assignment -name POWER_PRESET_COOLING_SOLUTION "23 MM HEAT SINK WITH 200 LFPM AIRFLOW"
	set_global_assignment -name POWER_BOARD_THERMAL_MODEL "NONE (CONSERVATIVE)"
	set_global_assignment -name STRATIX_DEVICE_IO_STANDARD "3.3-V LVTTL"
	set_global_assignment -name SDC_FILE SDC1.sdc
	set_location_assignment PIN_17 -to Clock50MHz
	set_location_assignment PIN_73 -to DataOut[0]
	set_location_assignment PIN_74 -to DataOut[1]
	set_location_assignment PIN_75 -to DataOut[2]
	set_location_assignment PIN_69 -to DataOut[3]
	set_location_assignment PIN_79 -to DataOut[4]
	set_location_assignment PIN_80 -to DataOut[5]
	set_location_assignment PIN_81 -to DataOut[6]
	set_location_assignment PIN_86 -to DataOut[7]
	set_location_assignment PIN_87 -to DataOut[8]
	set_location_assignment PIN_92 -to DataOut[9]
	set_location_assignment PIN_93 -to DataOut[10]
	set_location_assignment PIN_94 -to DataOut[11]
	set_location_assignment PIN_96 -to DataOut[12]
	set_location_assignment PIN_97 -to DataOut[13]
	set_location_assignment PIN_99 -to DataOut[14]
	set_location_assignment PIN_100 -to DataOut[15]
	set_location_assignment PIN_101 -to DataOut[16]
	set_location_assignment PIN_103 -to DataOut[17]
	set_location_assignment PIN_104 -to DataOut[18]
	set_location_assignment PIN_112 -to DataOut[19]
	set_location_assignment PIN_113 -to DataOut[20]
	set_location_assignment PIN_114 -to DataOut[21]
	set_location_assignment PIN_115 -to DataOut[22]
	set_location_assignment PIN_118 -to DataOut[23]
	set_location_assignment PIN_119 -to DataOut[24]
	set_location_assignment PIN_120 -to DataOut[25]
	set_location_assignment PIN_40 -to SA[0]
	set_location_assignment PIN_41 -to SA[1]
	set_location_assignment PIN_42 -to SA[2]
	set_location_assignment PIN_43 -to SA[3]
	set_location_assignment PIN_44 -to SA[4]
	set_location_assignment PIN_45 -to SA[5]
	set_location_assignment PIN_47 -to SA[6]
	set_location_assignment PIN_48 -to SA[7]
	set_location_assignment PIN_51 -to SA[8]
	set_location_assignment PIN_52 -to SA[9]
	set_location_assignment PIN_53 -to SA[10]
	set_location_assignment PIN_55 -to SA[11]
	set_location_assignment PIN_57 -to SA[12]
	set_location_assignment PIN_58 -to SA[13]
	set_location_assignment PIN_59 -to SA[14]
	set_location_assignment PIN_60 -to SA[15]
	set_location_assignment PIN_63 -to SA[16]
	set_location_assignment PIN_64 -to SA[17]
	set_location_assignment PIN_65 -to SA[18]
	set_location_assignment PIN_67 -to SA[19]
	set_location_assignment PIN_70 -to ReadClock
	set_location_assignment PIN_72 -to Reset
	set_location_assignment PIN_71 -to Ready
	set_location_assignment PIN_31 -to SD[0]
	set_location_assignment PIN_32 -to SD[1]
	set_location_assignment PIN_3 -to SD[2]
	set_location_assignment PIN_4 -to SD[3]
	set_location_assignment PIN_7 -to SD[4]
	set_location_assignment PIN_8 -to SD[5]
	set_location_assignment PIN_9 -to SD[6]
	set_location_assignment PIN_18 -to SD[7]
	set_location_assignment PIN_21 -to SD[8]
	set_location_assignment PIN_22 -to SD[9]
	set_location_assignment PIN_24 -to SD[10]
	set_location_assignment PIN_25 -to SD[11]
	set_location_assignment PIN_26 -to SD[12]
	set_location_assignment PIN_27 -to SD[13]
	set_location_assignment PIN_28 -to SD[14]
	set_location_assignment PIN_30 -to SD[15]
	set_location_assignment PIN_129 -to nIOCS16
	set_location_assignment PIN_126 -to nMEMCS16
	set_location_assignment PIN_141 -to nCS[0]
	set_location_assignment PIN_142 -to nCS[1]
	set_location_assignment PIN_143 -to nCS[2]
	set_location_assignment PIN_144 -to nCS[3]
	set_location_assignment PIN_139 -to nIOR
	set_location_assignment PIN_137 -to nIOW
	set_location_assignment PIN_136 -to nMEMR
	set_location_assignment PIN_135 -to nMEMW
	set_location_assignment PIN_134 -to SBHE
	set_location_assignment PIN_133 -to BALE
	set_location_assignment PIN_132 -to AEN
	set_instance_assignment -name PARTITION_HIERARCHY root_partition -to | -section_id Top

	# Commit assignments
	export_assignments

	# Close project
	if {$need_to_close_project} {
		project_close
	}
}
