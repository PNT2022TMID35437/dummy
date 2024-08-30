set_component MSS_sys_i2c_sb_FABOSC_0_OSC
# Microchip Technology Inc.
# Date: 2024-Aug-27 11:18:51
#

create_clock -ignore_errors -period 20 [ get_pins { I_RCOSC_25_50MHZ/CLKOUT } ]
