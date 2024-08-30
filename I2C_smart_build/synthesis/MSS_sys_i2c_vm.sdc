# Written by Synplify Pro version map202309act, Build 044R. Synopsys Run ID: sid1724657724 
# Top Level Design Parameters 

# Clocks 
create_clock -period 20.000 -waveform {0.000 10.000} -name {MSS_sys_i2c_sb_0/FABOSC_0/I_RCOSC_25_50MHZ/CLKOUT} [get_pins {MSS_sys_i2c_sb_0/FABOSC_0/I_RCOSC_25_50MHZ/CLKOUT}] 

# Virtual Clocks 

# Generated Clocks 
create_generated_clock -name {MSS_sys_i2c_sb_0/CCC_0/GL0} -multiply_by {4} -divide_by {2} -source [get_pins {MSS_sys_i2c_sb_0/CCC_0/CCC_INST/RCOSC_25_50MHZ}]  [get_pins {MSS_sys_i2c_sb_0/CCC_0/CCC_INST/GL0}] 

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
# set_false_path -through [get_nets { MSS_sys_i2c_sb_0.CORERESETP_0.ddr_settled MSS_sys_i2c_sb_0.CORERESETP_0.count_ddr_enable MSS_sys_i2c_sb_0.CORERESETP_0.release_sdif*_core MSS_sys_i2c_sb_0.CORERESETP_0.count_sdif*_enable }]
# set_false_path -from [get_cells { MSS_sys_i2c_sb_0.CORERESETP_0.MSS_HPMS_READY_int }] -to [get_cells { MSS_sys_i2c_sb_0.CORERESETP_0.sm0_areset_n_rcosc MSS_sys_i2c_sb_0.CORERESETP_0.sm0_areset_n_rcosc_q1 }]
# set_false_path -from [get_cells { MSS_sys_i2c_sb_0.CORERESETP_0.MSS_HPMS_READY_int MSS_sys_i2c_sb_0.CORERESETP_0.SDIF*_PERST_N_re }] -to [get_cells { MSS_sys_i2c_sb_0.CORERESETP_0.sdif*_areset_n_rcosc* }]
# set_false_path -through [get_nets { MSS_sys_i2c_sb_0.CORERESETP_0.CONFIG1_DONE MSS_sys_i2c_sb_0.CORERESETP_0.CONFIG2_DONE MSS_sys_i2c_sb_0.CORERESETP_0.SDIF*_PERST_N MSS_sys_i2c_sb_0.CORERESETP_0.SDIF*_PSEL MSS_sys_i2c_sb_0.CORERESETP_0.SDIF*_PWRITE MSS_sys_i2c_sb_0.CORERESETP_0.SDIF*_PRDATA[*] MSS_sys_i2c_sb_0.CORERESETP_0.SOFT_EXT_RESET_OUT MSS_sys_i2c_sb_0.CORERESETP_0.SOFT_RESET_F2M MSS_sys_i2c_sb_0.CORERESETP_0.SOFT_M3_RESET MSS_sys_i2c_sb_0.CORERESETP_0.SOFT_MDDR_DDR_AXI_S_CORE_RESET MSS_sys_i2c_sb_0.CORERESETP_0.SOFT_FDDR_CORE_RESET MSS_sys_i2c_sb_0.CORERESETP_0.SOFT_SDIF*_PHY_RESET MSS_sys_i2c_sb_0.CORERESETP_0.SOFT_SDIF*_CORE_RESET MSS_sys_i2c_sb_0.CORERESETP_0.SOFT_SDIF0_0_CORE_RESET MSS_sys_i2c_sb_0.CORERESETP_0.SOFT_SDIF0_1_CORE_RESET }]
# set_false_path -through [get_pins { MSS_sys_i2c_sb_0.MSS_sys_i2c_sb_MSS_0.MSS_ADLIB_INST.CONFIG_PRESET_N }]
# set_false_path -through [get_pins { MSS_sys_i2c_sb_0.SYSRESET_POR.POWER_ON_RESET_N }]


# Non-forward-annotatable constraints (intentionally commented out) 

# Block Path constraints 

