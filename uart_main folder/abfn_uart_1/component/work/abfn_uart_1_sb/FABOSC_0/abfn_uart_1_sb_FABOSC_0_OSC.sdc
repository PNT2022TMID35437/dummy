set_component abfn_uart_1_sb_FABOSC_0_OSC
# Microchip Technology Inc.
# Date: 2024-Aug-16 11:56:29
#

create_clock -ignore_errors -period 20 [ get_pins { I_RCOSC_25_50MHZ/CLKOUT } ]
