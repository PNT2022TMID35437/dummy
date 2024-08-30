set_component gpio_sb_2_19_sb_FABOSC_0_OSC
# Microchip Technology Inc.
# Date: 2024-Aug-19 10:23:04
#

create_clock -ignore_errors -period 20 [ get_pins { I_RCOSC_25_50MHZ/CLKOUT } ]
