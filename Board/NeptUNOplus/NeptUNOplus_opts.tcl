# Project-Wide Assignments
# ========================
set_global_assignment -name ORIGINAL_QUARTUS_VERSION 17.1.0
set_global_assignment -name LAST_QUARTUS_VERSION "17.1.0 Lite Edition"
set_global_assignment -name PROJECT_OUTPUT_DIRECTORY output_files
set_global_assignment -name TOP_LEVEL_ENTITY neptunoplus_top
set_global_assignment -name NUM_PARALLEL_PROCESSORS ALL

# Pin & Location Assignments
# ==========================

# Timing Assignments
# ==================
set_global_assignment -name IGNORE_CLOCK_SETTINGS ON
set_global_assignment -name TPD_REQUIREMENT "5 ns"
set_global_assignment -name TSU_REQUIREMENT "5 ns"
set_global_assignment -name TCO_REQUIREMENT "5 ns"
set_global_assignment -name TH_REQUIREMENT "5 ns"
set_global_assignment -name FMAX_REQUIREMENT "101.58 MHz"

# Analysis & Synthesis Assignments
# ================================
set_global_assignment -name DEVICE EP4CGX150DF27I7
set_global_assignment -name FAMILY "Cyclone IV GX"
set_global_assignment -name CYCLONEIII_CONFIGURATION_SCHEME "PASSIVE SERIAL"                                                                           
set_global_assignment -name FORCE_CONFIGURATION_VCCIO ON                                                                           
set_global_assignment -name STRATIX_DEVICE_IO_STANDARD "3.3-V LVTTL"                                                                           
set_global_assignment -name CRC_ERROR_OPEN_DRAIN OFF                                                                           
set_global_assignment -name RESERVE_DATA0_AFTER_CONFIGURATION "USE AS REGULAR IO"                                                                           
set_global_assignment -name RESERVE_DATA1_AFTER_CONFIGURATION "USE AS REGULAR IO"                                                                           
set_global_assignment -name RESERVE_FLASH_NCE_AFTER_CONFIGURATION "USE AS REGULAR IO"                                                                           
set_global_assignment -name RESERVE_DCLK_AFTER_CONFIGURATION "USE AS REGULAR IO"                                                                           
set_global_assignment -name CYCLONEII_RESERVE_NCEO_AFTER_CONFIGURATION "USE AS REGULAR IO"                                                                           
set_global_assignment -name OPTIMIZE_HOLD_TIMING "ALL PATHS"                                                                           
set_global_assignment -name OPTIMIZE_MULTI_CORNER_TIMING ON                                                                           
set_global_assignment -name FITTER_EFFORT "AUTO FIT"                       


# Assembler Assignments
# =====================

set_global_assignment -name GENERATE_RBF_FILE ON
set_global_assignment -name PROJECT_OUTPUT_DIRECTORY output_files
set_global_assignment -name ENABLE_DRC_SETTINGS OFF
set_global_assignment -name ENABLE_CLOCK_LATENCY ON
set_global_assignment -name ENABLE_RECOVERY_REMOVAL_ANALYSIS ON
set_global_assignment -name IGNORE_LCELL_BUFFERS ON
set_global_assignment -name ROUTER_TIMING_OPTIMIZATION_LEVEL MAXIMUM
set_global_assignment -name OPTIMIZE_HOLD_TIMING "ALL PATHS"
set_global_assignment -name FITTER_EFFORT "STANDARD FIT"
set_global_assignment -name PLACEMENT_EFFORT_MULTIPLIER 4.0
set_global_assignment -name ROUTER_EFFORT_MULTIPLIER 2.0
set_global_assignment -name OPTIMIZE_TIMING "NORMAL COMPILATION"
set_global_assignment -name FINAL_PLACEMENT_OPTIMIZATION ALWAYS
set_global_assignment -name AUTO_GLOBAL_MEMORY_CONTROLS ON
set_global_assignment -name AUTO_PACKED_REGISTERS "MINIMIZE AREA"
set_global_assignment -name ALLOW_ANY_RAM_SIZE_FOR_RECOGNITION OFF
set_global_assignment -name ALLOW_ANY_ROM_SIZE_FOR_RECOGNITION OFF
set_global_assignment -name ADD_PASS_THROUGH_LOGIC_TO_INFERRED_RAMS OFF
set_global_assignment -name IGNORE_CARRY_BUFFERS OFF
set_global_assignment -name IGNORE_CASCADE_BUFFERS OFF
set_global_assignment -name AUTO_GLOBAL_CLOCK ON
set_global_assignment -name AUTO_RAM_RECOGNITION ON
set_global_assignment -name AUTO_SHIFT_REGISTER_RECOGNITION AUTO
set_global_assignment -name STATE_MACHINE_PROCESSING AUTO
set_global_assignment -name FMAX_REQUIREMENT "34 MHz" -section_id clk32
set_global_assignment -name BLOCK_RAM_AND_MLAB_EQUIVALENT_PAUSED_READ_CAPABILITIES "DONT CARE"
set_global_assignment -name MIN_CORE_JUNCTION_TEMP 0
set_global_assignment -name MAX_CORE_JUNCTION_TEMP 85
set_global_assignment -name DEVICE_FILTER_PACKAGE TQFP

set_global_assignment -name USE_CONFIGURATION_DEVICE OFF
set_global_assignment -name CYCLONEII_RESERVE_NCEO_AFTER_CONFIGURATION "USE AS REGULAR IO"
set_global_assignment -name OPTIMIZE_POWER_DURING_FITTING OFF
set_global_assignment -name ADV_NETLIST_OPT_SYNTH_WYSIWYG_REMAP OFF
set_global_assignment -name PHYSICAL_SYNTHESIS_EFFORT NORMAL
set_global_assignment -name SEED 1
set_global_assignment -name OPTIMIZE_POWER_DURING_SYNTHESIS "NORMAL COMPILATION"
set_global_assignment -name PRE_MAPPING_RESYNTHESIS ON

if {[info exists optimizeforspeed] && ($optimizeforspeed==1)} {
	set_global_assignment -name OPTIMIZATION_MODE "AGGRESSIVE PERFORMANCE"
	set_global_assignment -name CYCLONEII_OPTIMIZATION_TECHNIQUE SPEED
} else {
	set_global_assignment -name OPTIMIZATION_MODE BALANCED
	set_global_assignment -name CYCLONEII_OPTIMIZATION_TECHNIQUE BALANCED
}

set_global_assignment -name PARTITION_NETLIST_TYPE SOURCE -section_id Top
set_global_assignment -name PARTITION_FITTER_PRESERVATION_LEVEL PLACEMENT_AND_ROUTING -section_id Top
set_global_assignment -name PARTITION_COLOR 16764057 -section_id Top

set_instance_assignment -name PARTITION_HIERARCHY root_partition -to | -section_id Top

