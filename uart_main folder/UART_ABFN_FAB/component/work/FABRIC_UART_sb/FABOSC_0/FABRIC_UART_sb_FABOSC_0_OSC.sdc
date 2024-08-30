set_component FABRIC_UART_sb_FABOSC_0_OSC
# Microchip Technology Inc.
# Date: 2024-Aug-20 10:15:36
#

create_clock -ignore_errors -period 20 [ get_pins { I_RCOSC_25_50MHZ/CLKOUT } ]
