set_component LIU_GPIO_SB_1_sb_CCC_0_FCCC
# Microchip Technology Inc.
# Date: 2024-Aug-19 11:35:22
#

create_clock -period 10 [ get_pins { CCC_INST/CLK0_PAD } ]
create_generated_clock -multiply_by 7 -divide_by 224 -source [ get_pins { CCC_INST/CLK0_PAD } ] -phase 0 [ get_pins { CCC_INST/GL0 } ]
