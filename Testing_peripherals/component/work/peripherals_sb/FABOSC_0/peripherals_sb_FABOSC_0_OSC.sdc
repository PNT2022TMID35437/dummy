set_component peripherals_sb_FABOSC_0_OSC
# Microchip Technology Inc.
# Date: 2024-Aug-21 16:44:36
#

create_clock -ignore_errors -period 20 [ get_pins { I_RCOSC_25_50MHZ/CLKOUT } ]
