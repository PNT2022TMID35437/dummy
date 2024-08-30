# Microchip Technology Inc.
# Date: 2024-Aug-29 16:52:36
# This file was generated based on the following SDC source files:
#   D:/libero_tests/SPI_MSS/component/work/OSC_C0/OSC_C0_0/OSC_C0_OSC_C0_0_OSC.sdc
#   C:/Microchip/Libero_SoC_v2024.1/Designer/data/aPA4M/cores/constraints/sysreset.sdc
# *** Any modifications to this file will be lost if derived constraints is re-run. ***
#

create_clock -ignore_errors -name {OSC_C0_0/OSC_C0_0/I_RCOSC_25_50MHZ/CLKOUT} -period 20 [ get_pins { OSC_C0_0/OSC_C0_0/I_RCOSC_25_50MHZ/CLKOUT } ]
set_false_path -ignore_errors -through [ get_pins { SYSRESET_0/POWER_ON_RESET_N } ]
