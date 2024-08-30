# Microchip Technology Inc.
# Date: 2024-Aug-22 18:38:23
# This file was generated based on the following SDC source files:
#   D:/libero_tests/LIU_GPIO_INT/constraint/GPIO_INT_ABFN_derived_constraints.sdc
#

create_clock -name {GPIO_INT_ABFN_sb_0/FABOSC_0/I_RCOSC_25_50MHZ/CLKOUT} -period 20 [ get_pins { GPIO_INT_ABFN_sb_0/FABOSC_0/I_RCOSC_25_50MHZ/CLKOUT } ]
create_generated_clock -name {GPIO_INT_ABFN_sb_0/CCC_0/GL0} -multiply_by 4 -divide_by 2 -source [ get_pins { GPIO_INT_ABFN_sb_0/CCC_0/CCC_INST/INST_CCC_IP/RCOSC_25_50MHZ } ] -phase 0 [ get_pins { GPIO_INT_ABFN_sb_0/CCC_0/CCC_INST/INST_CCC_IP/GL0 } ]
set_false_path -through [ get_pins { GPIO_INT_ABFN_sb_0/GPIO_INT_ABFN_sb_MSS_0/MSS_ADLIB_INST/INST_MSS_005_IP/CONFIG_PRESET_N } ]
set_false_path -through [ get_pins { GPIO_INT_ABFN_sb_0/SYSRESET_POR/POWER_ON_RESET_N } ]
