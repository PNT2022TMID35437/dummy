# Written by Synplify Pro version map202309act, Build 044R. Synopsys Run ID: sid1724047829 
# Top Level Design Parameters 

# Clocks 
create_clock -period 10.000 -waveform {0.000 5.000} -name {CLK0_PAD} [get_ports {CLK0_PAD}] 

# Virtual Clocks 

# Generated Clocks 
create_generated_clock -name {LIU_GPIO_SB_1_sb_0/CCC_0/GL0} -multiply_by {7} -divide_by {224} -source [get_pins {LIU_GPIO_SB_1_sb_0/CCC_0/CCC_INST/CLK0_PAD}]  [get_pins {LIU_GPIO_SB_1_sb_0/CCC_0/CCC_INST/GL0}] 

# Paths Between Clocks 

# Multicycle Constraints 

# Point-to-point Delay Constraints 

# False Path Constraints 
set_false_path -through [get_pins {LIU_GPIO_SB_1_sb_0/SYSRESET_POR/POWER_ON_RESET_N}] 

# Output Load Constraints 

# Driving Cell Constraints 

# Input Delay Constraints 

# Output Delay Constraints 

# Wire Loads 

# Other Constraints 

# syn_hier Attributes 

# set_case Attributes 

# Clock Delay Constraints 

# syn_mode Attributes 

# Cells 

# Port DRC Rules 

# Input Transition Constraints 

# Unused constraints (intentionally commented out) 
# create_clock -name LIU_GPIO_SB_1_sb_0/FABOSC_0/I_RCOSC_25_50MHZ/CLKOUT -period 20 [get_pins { LIU_GPIO_SB_1_sb_0.FABOSC_0.I_RCOSC_25_50MHZ.CLKOUT }]
# set_false_path -through [get_nets { LIU_GPIO_SB_1_sb_0.CORERESETP_0.ddr_settled LIU_GPIO_SB_1_sb_0.CORERESETP_0.count_ddr_enable LIU_GPIO_SB_1_sb_0.CORERESETP_0.release_sdif*_core LIU_GPIO_SB_1_sb_0.CORERESETP_0.count_sdif*_enable }]
# set_false_path -from [get_cells { LIU_GPIO_SB_1_sb_0.CORERESETP_0.MSS_HPMS_READY_int }] -to [get_cells { LIU_GPIO_SB_1_sb_0.CORERESETP_0.sm0_areset_n_rcosc LIU_GPIO_SB_1_sb_0.CORERESETP_0.sm0_areset_n_rcosc_q1 }]
# set_false_path -from [get_cells { LIU_GPIO_SB_1_sb_0.CORERESETP_0.MSS_HPMS_READY_int LIU_GPIO_SB_1_sb_0.CORERESETP_0.SDIF*_PERST_N_re }] -to [get_cells { LIU_GPIO_SB_1_sb_0.CORERESETP_0.sdif*_areset_n_rcosc* }]
# set_false_path -through [get_nets { LIU_GPIO_SB_1_sb_0.CORERESETP_0.CONFIG1_DONE LIU_GPIO_SB_1_sb_0.CORERESETP_0.CONFIG2_DONE LIU_GPIO_SB_1_sb_0.CORERESETP_0.SDIF*_PERST_N LIU_GPIO_SB_1_sb_0.CORERESETP_0.SDIF*_PSEL LIU_GPIO_SB_1_sb_0.CORERESETP_0.SDIF*_PWRITE LIU_GPIO_SB_1_sb_0.CORERESETP_0.SDIF*_PRDATA[*] LIU_GPIO_SB_1_sb_0.CORERESETP_0.SOFT_EXT_RESET_OUT LIU_GPIO_SB_1_sb_0.CORERESETP_0.SOFT_RESET_F2M LIU_GPIO_SB_1_sb_0.CORERESETP_0.SOFT_M3_RESET LIU_GPIO_SB_1_sb_0.CORERESETP_0.SOFT_MDDR_DDR_AXI_S_CORE_RESET LIU_GPIO_SB_1_sb_0.CORERESETP_0.SOFT_FDDR_CORE_RESET LIU_GPIO_SB_1_sb_0.CORERESETP_0.SOFT_SDIF*_PHY_RESET LIU_GPIO_SB_1_sb_0.CORERESETP_0.SOFT_SDIF*_CORE_RESET LIU_GPIO_SB_1_sb_0.CORERESETP_0.SOFT_SDIF0_0_CORE_RESET LIU_GPIO_SB_1_sb_0.CORERESETP_0.SOFT_SDIF0_1_CORE_RESET }]
# set_false_path -through [get_pins { LIU_GPIO_SB_1_sb_0.LIU_GPIO_SB_1_sb_MSS_0.MSS_ADLIB_INST.CONFIG_PRESET_N }]


# Non-forward-annotatable constraints (intentionally commented out) 

# Block Path constraints 

