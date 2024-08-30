# Written by Synplify Pro version map202309act, Build 044R. Synopsys Run ID: sid1724238936 
# Top Level Design Parameters 

# Clocks 
create_clock -period 20.000 -waveform {0.000 10.000} -name {peripherals_sb_0/FABOSC_0/I_RCOSC_25_50MHZ/CLKOUT} [get_pins {peripherals_sb_0/FABOSC_0/I_RCOSC_25_50MHZ/CLKOUT}] 

# Virtual Clocks 

# Generated Clocks 
create_generated_clock -name {peripherals_sb_0/CCC_0/GL0} -multiply_by {4} -divide_by {2} -source [get_pins {peripherals_sb_0/CCC_0/CCC_INST/RCOSC_25_50MHZ}]  [get_pins {peripherals_sb_0/CCC_0/CCC_INST/GL0}] 

# Paths Between Clocks 

# Multicycle Constraints 

# Point-to-point Delay Constraints 

# False Path Constraints 

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
# set_false_path -through [get_nets { peripherals_sb_0.CORERESETP_0.ddr_settled peripherals_sb_0.CORERESETP_0.count_ddr_enable peripherals_sb_0.CORERESETP_0.release_sdif*_core peripherals_sb_0.CORERESETP_0.count_sdif*_enable }]
# set_false_path -from [get_cells { peripherals_sb_0.CORERESETP_0.MSS_HPMS_READY_int }] -to [get_cells { peripherals_sb_0.CORERESETP_0.sm0_areset_n_rcosc peripherals_sb_0.CORERESETP_0.sm0_areset_n_rcosc_q1 }]
# set_false_path -from [get_cells { peripherals_sb_0.CORERESETP_0.MSS_HPMS_READY_int peripherals_sb_0.CORERESETP_0.SDIF*_PERST_N_re }] -to [get_cells { peripherals_sb_0.CORERESETP_0.sdif*_areset_n_rcosc* }]
# set_false_path -through [get_nets { peripherals_sb_0.CORERESETP_0.CONFIG1_DONE peripherals_sb_0.CORERESETP_0.CONFIG2_DONE peripherals_sb_0.CORERESETP_0.SDIF*_PERST_N peripherals_sb_0.CORERESETP_0.SDIF*_PSEL peripherals_sb_0.CORERESETP_0.SDIF*_PWRITE peripherals_sb_0.CORERESETP_0.SDIF*_PRDATA[*] peripherals_sb_0.CORERESETP_0.SOFT_EXT_RESET_OUT peripherals_sb_0.CORERESETP_0.SOFT_RESET_F2M peripherals_sb_0.CORERESETP_0.SOFT_M3_RESET peripherals_sb_0.CORERESETP_0.SOFT_MDDR_DDR_AXI_S_CORE_RESET peripherals_sb_0.CORERESETP_0.SOFT_FDDR_CORE_RESET peripherals_sb_0.CORERESETP_0.SOFT_SDIF*_PHY_RESET peripherals_sb_0.CORERESETP_0.SOFT_SDIF*_CORE_RESET peripherals_sb_0.CORERESETP_0.SOFT_SDIF0_0_CORE_RESET peripherals_sb_0.CORERESETP_0.SOFT_SDIF0_1_CORE_RESET }]
# set_false_path -through [get_pins { peripherals_sb_0.peripherals_sb_MSS_0.MSS_ADLIB_INST.CONFIG_PRESET_N }]
# set_false_path -through [get_pins { peripherals_sb_0.SYSRESET_POR.POWER_ON_RESET_N }]


# Non-forward-annotatable constraints (intentionally commented out) 

# Block Path constraints 

