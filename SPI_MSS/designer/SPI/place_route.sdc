# Microchip Technology Inc.
# Date: 2024-Aug-29 16:53:32
# This file was generated based on the following SDC source files:
#   D:/libero_tests/SPI_MSS/constraint/SPI_derived_constraints.sdc
#

create_clock -name {OSC_C0_0/OSC_C0_0/I_RCOSC_25_50MHZ/CLKOUT} -period 20 [ get_pins { OSC_C0_0/OSC_C0_0/I_RCOSC_25_50MHZ/CLKOUT } ]
set_false_path -through [ get_pins { SYSRESET_0/POWER_ON_RESET_N } ]
