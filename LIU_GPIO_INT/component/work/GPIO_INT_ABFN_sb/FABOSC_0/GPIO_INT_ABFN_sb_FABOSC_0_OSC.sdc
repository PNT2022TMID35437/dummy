set_component GPIO_INT_ABFN_sb_FABOSC_0_OSC
# Microchip Technology Inc.
# Date: 2024-Aug-22 18:22:35
#

create_clock -ignore_errors -period 20 [ get_pins { I_RCOSC_25_50MHZ/CLKOUT } ]
