# Microchip Technology Inc.
# Date: 2024-Aug-27 11:30:44
# This file was generated based on the following SDC source files:
#   D:/libero_tests/I2C_smart_build/constraint/MSS_sys_i2c_sb_derived_constraints.sdc
#

create_clock -name {FABOSC_0/I_RCOSC_25_50MHZ/CLKOUT} -period 20 [ get_pins { FABOSC_0/I_RCOSC_25_50MHZ/CLKOUT } ]
create_generated_clock -name {CCC_0/GL0} -multiply_by 4 -divide_by 2 -source [ get_pins { CCC_0/CCC_INST/INST_CCC_IP/RCOSC_25_50MHZ } ] -phase 0 [ get_pins { CCC_0/CCC_INST/INST_CCC_IP/GL0 } ]
set_false_path -through [ get_nets { CORERESETP_0/ddr_settled CORERESETP_0/release_sdif*_core } ]
set_false_path -from [ get_cells { CORERESETP_0/MSS_HPMS_READY_int } ] -to [ get_cells { CORERESETP_0/sm0_areset_n_rcosc CORERESETP_0/sm0_areset_n_rcosc_q1 } ]
set_false_path -from [ get_cells { CORERESETP_0/MSS_HPMS_READY_int } ] -to [ get_cells { CORERESETP_0/sdif*_areset_n_rcosc* } ]
set_false_path -through [ get_pins { MSS_sys_i2c_sb_MSS_0/MSS_ADLIB_INST/INST_MSS_005_IP/CONFIG_PRESET_N } ]
set_false_path -through [ get_pins { SYSRESET_POR/POWER_ON_RESET_N } ]
