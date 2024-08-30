set_component gpio_sb_2_19_sb_CCC_0_FCCC
# Microchip Technology Inc.
# Date: 2024-Aug-19 10:23:02
#

create_clock -period 10 [ get_pins { CCC_INST/CLK0_PAD } ]
create_generated_clock -multiply_by 4 -divide_by 4 -source [ get_pins { CCC_INST/CLK0_PAD } ] -phase 0 [ get_pins { CCC_INST/GL0 } ]
