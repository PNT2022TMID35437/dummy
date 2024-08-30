set_component ABFN_UART_GPIO_INT_MSS_sb_FABOSC_0_OSC
# Microchip Technology Inc.
# Date: 2024-Aug-21 14:58:35
#

create_clock -ignore_errors -period 20 [ get_pins { I_RCOSC_25_50MHZ/CLKOUT } ]
