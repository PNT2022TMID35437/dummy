set_component UART_GPIO_FAB_SB_sb_FABOSC_0_OSC
# Microchip Technology Inc.
# Date: 2024-Aug-22 11:06:14
#

create_clock -ignore_errors -period 20 [ get_pins { I_RCOSC_25_50MHZ/CLKOUT } ]
