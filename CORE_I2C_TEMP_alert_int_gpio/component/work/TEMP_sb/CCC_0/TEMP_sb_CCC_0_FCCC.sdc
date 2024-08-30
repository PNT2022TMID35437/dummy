set_component TEMP_sb_CCC_0_FCCC
# Microchip Technology Inc.
# Date: 2024-Aug-29 10:41:50
#

create_clock -period 20 [ get_pins { CCC_INST/RCOSC_25_50MHZ } ]
create_generated_clock -multiply_by 2 -divide_by 4 -source [ get_pins { CCC_INST/RCOSC_25_50MHZ } ] -phase 0 [ get_pins { CCC_INST/GL0 } ]
