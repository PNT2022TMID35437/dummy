set_component LIU_GPIO_SB_1_sb_FABOSC_0_OSC
# Microchip Technology Inc.
# Date: 2024-Aug-19 11:35:22
#

create_clock -ignore_errors -period 20 [ get_pins { I_RCOSC_25_50MHZ/CLKOUT } ]
