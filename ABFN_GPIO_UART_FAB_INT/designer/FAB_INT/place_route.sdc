# Microchip Technology Inc.
# Date: 2024-Aug-22 17:59:04
# This file was generated based on the following SDC source files:
#   D:/libero_tests/ABFN_GPIO_UART_FAB_INT/constraint/FAB_INT_derived_constraints.sdc
#

create_clock -name {FAB_INT_sb_0/FABOSC_0/I_RCOSC_25_50MHZ/CLKOUT} -period 20 [ get_pins { FAB_INT_sb_0/FABOSC_0/I_RCOSC_25_50MHZ/CLKOUT } ]
create_generated_clock -name {FAB_INT_sb_0/CCC_0/GL0} -multiply_by 4 -divide_by 2 -source [ get_pins { FAB_INT_sb_0/CCC_0/CCC_INST/INST_CCC_IP/RCOSC_25_50MHZ } ] -phase 0 [ get_pins { FAB_INT_sb_0/CCC_0/CCC_INST/INST_CCC_IP/GL0 } ]
set_false_path -through [ get_pins { FAB_INT_sb_0/FAB_INT_sb_MSS_0/MSS_ADLIB_INST/INST_MSS_005_IP/CONFIG_PRESET_N } ]
set_false_path -through [ get_pins { FAB_INT_sb_0/SYSRESET_POR/POWER_ON_RESET_N } ]
