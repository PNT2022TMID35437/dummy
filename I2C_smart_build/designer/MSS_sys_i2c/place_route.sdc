# Microchip Technology Inc.
# Date: 2024-Aug-26 13:05:53
# This file was generated based on the following SDC source files:
#   D:/libero_tests/I2C_smart_build/constraint/MSS_sys_i2c_derived_constraints.sdc
#

create_clock -name {MSS_sys_i2c_sb_0/FABOSC_0/I_RCOSC_25_50MHZ/CLKOUT} -period 20 [ get_pins { MSS_sys_i2c_sb_0/FABOSC_0/I_RCOSC_25_50MHZ/CLKOUT } ]
create_generated_clock -name {MSS_sys_i2c_sb_0/CCC_0/GL0} -multiply_by 4 -divide_by 2 -source [ get_pins { MSS_sys_i2c_sb_0/CCC_0/CCC_INST/INST_CCC_IP/RCOSC_25_50MHZ } ] -phase 0 [ get_pins { MSS_sys_i2c_sb_0/CCC_0/CCC_INST/INST_CCC_IP/GL0 } ]
set_false_path -through [ get_pins { MSS_sys_i2c_sb_0/MSS_sys_i2c_sb_MSS_0/MSS_ADLIB_INST/INST_MSS_005_IP/CONFIG_PRESET_N } ]
