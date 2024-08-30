set_component ABFN_UART_GPIO_INT_MSS_sb_CCC_0_FCCC
# Microchip Technology Inc.
# Date: 2024-Aug-21 14:58:34
#

create_clock -period 20 [ get_pins { CCC_INST/RCOSC_25_50MHZ } ]
create_generated_clock -multiply_by 4 -divide_by 2 -source [ get_pins { CCC_INST/RCOSC_25_50MHZ } ] -phase 0 [ get_pins { CCC_INST/GL0 } ]
