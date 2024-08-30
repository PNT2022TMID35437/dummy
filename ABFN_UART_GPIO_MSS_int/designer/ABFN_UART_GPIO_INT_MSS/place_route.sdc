# Microchip Technology Inc.
# Date: 2024-Aug-21 15:00:29
# This file was generated based on the following SDC source files:
#   D:/libero_tests/ABFN_UART_GPIO_MSS_int/constraint/ABFN_UART_GPIO_INT_MSS_derived_constraints.sdc
#

create_clock -name {ABFN_UART_GPIO_INT_MSS_sb_0/FABOSC_0/I_RCOSC_25_50MHZ/CLKOUT} -period 20 [ get_pins { ABFN_UART_GPIO_INT_MSS_sb_0/FABOSC_0/I_RCOSC_25_50MHZ/CLKOUT } ]
create_generated_clock -name {ABFN_UART_GPIO_INT_MSS_sb_0/CCC_0/GL0} -multiply_by 4 -divide_by 2 -source [ get_pins { ABFN_UART_GPIO_INT_MSS_sb_0/CCC_0/CCC_INST/INST_CCC_IP/RCOSC_25_50MHZ } ] -phase 0 [ get_pins { ABFN_UART_GPIO_INT_MSS_sb_0/CCC_0/CCC_INST/INST_CCC_IP/GL0 } ]
