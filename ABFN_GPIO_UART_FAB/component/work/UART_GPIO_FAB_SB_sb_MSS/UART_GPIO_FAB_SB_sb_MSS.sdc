set_component UART_GPIO_FAB_SB_sb_MSS
# Microchip Technology Inc.
# Date: 2024-Aug-22 11:06:11
#

create_clock -period 40 [ get_pins { MSS_ADLIB_INST/CLK_CONFIG_APB } ]
set_false_path -ignore_errors -through [ get_pins { MSS_ADLIB_INST/CONFIG_PRESET_N } ]
