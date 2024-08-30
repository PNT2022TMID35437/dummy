# Microchip Technology Inc.
# Date: 2024-Aug-22 11:08:44
# This file was generated based on the following SDC source files:
#   D:/libero_tests/ABFN_GPIO_UART_FAB/component/work/UART_GPIO_FAB_SB_sb/CCC_0/UART_GPIO_FAB_SB_sb_CCC_0_FCCC.sdc
#   C:/Microchip/Libero_SoC_v2024.1/Designer/data/aPA4M/cores/constraints/coreresetp.sdc
#   D:/libero_tests/ABFN_GPIO_UART_FAB/component/work/UART_GPIO_FAB_SB_sb/FABOSC_0/UART_GPIO_FAB_SB_sb_FABOSC_0_OSC.sdc
#   D:/libero_tests/ABFN_GPIO_UART_FAB/component/work/UART_GPIO_FAB_SB_sb_MSS/UART_GPIO_FAB_SB_sb_MSS.sdc
#   C:/Microchip/Libero_SoC_v2024.1/Designer/data/aPA4M/cores/constraints/sysreset.sdc
# *** Any modifications to this file will be lost if derived constraints is re-run. ***
#

create_clock -ignore_errors -name {UART_GPIO_FAB_SB_sb_0/FABOSC_0/I_RCOSC_25_50MHZ/CLKOUT} -period 20 [ get_pins { UART_GPIO_FAB_SB_sb_0/FABOSC_0/I_RCOSC_25_50MHZ/CLKOUT } ]
create_generated_clock -name {UART_GPIO_FAB_SB_sb_0/CCC_0/GL0} -multiply_by 4 -divide_by 2 -source [ get_pins { UART_GPIO_FAB_SB_sb_0/CCC_0/CCC_INST/RCOSC_25_50MHZ } ] -phase 0 [ get_pins { UART_GPIO_FAB_SB_sb_0/CCC_0/CCC_INST/GL0 } ]
set_false_path -ignore_errors -through [ get_nets { UART_GPIO_FAB_SB_sb_0/CORERESETP_0/ddr_settled UART_GPIO_FAB_SB_sb_0/CORERESETP_0/count_ddr_enable UART_GPIO_FAB_SB_sb_0/CORERESETP_0/release_sdif*_core UART_GPIO_FAB_SB_sb_0/CORERESETP_0/count_sdif*_enable } ]
set_false_path -ignore_errors -from [ get_cells { UART_GPIO_FAB_SB_sb_0/CORERESETP_0/MSS_HPMS_READY_int } ] -to [ get_cells { UART_GPIO_FAB_SB_sb_0/CORERESETP_0/sm0_areset_n_rcosc UART_GPIO_FAB_SB_sb_0/CORERESETP_0/sm0_areset_n_rcosc_q1 } ]
set_false_path -ignore_errors -from [ get_cells { UART_GPIO_FAB_SB_sb_0/CORERESETP_0/MSS_HPMS_READY_int UART_GPIO_FAB_SB_sb_0/CORERESETP_0/SDIF*_PERST_N_re } ] -to [ get_cells { UART_GPIO_FAB_SB_sb_0/CORERESETP_0/sdif*_areset_n_rcosc* } ]
set_false_path -ignore_errors -through [ get_nets { UART_GPIO_FAB_SB_sb_0/CORERESETP_0/CONFIG1_DONE UART_GPIO_FAB_SB_sb_0/CORERESETP_0/CONFIG2_DONE UART_GPIO_FAB_SB_sb_0/CORERESETP_0/SDIF*_PERST_N UART_GPIO_FAB_SB_sb_0/CORERESETP_0/SDIF*_PSEL UART_GPIO_FAB_SB_sb_0/CORERESETP_0/SDIF*_PWRITE UART_GPIO_FAB_SB_sb_0/CORERESETP_0/SDIF*_PRDATA[*] UART_GPIO_FAB_SB_sb_0/CORERESETP_0/SOFT_EXT_RESET_OUT UART_GPIO_FAB_SB_sb_0/CORERESETP_0/SOFT_RESET_F2M UART_GPIO_FAB_SB_sb_0/CORERESETP_0/SOFT_M3_RESET UART_GPIO_FAB_SB_sb_0/CORERESETP_0/SOFT_MDDR_DDR_AXI_S_CORE_RESET UART_GPIO_FAB_SB_sb_0/CORERESETP_0/SOFT_FDDR_CORE_RESET UART_GPIO_FAB_SB_sb_0/CORERESETP_0/SOFT_SDIF*_PHY_RESET UART_GPIO_FAB_SB_sb_0/CORERESETP_0/SOFT_SDIF*_CORE_RESET UART_GPIO_FAB_SB_sb_0/CORERESETP_0/SOFT_SDIF0_0_CORE_RESET UART_GPIO_FAB_SB_sb_0/CORERESETP_0/SOFT_SDIF0_1_CORE_RESET } ]
set_false_path -ignore_errors -through [ get_pins { UART_GPIO_FAB_SB_sb_0/UART_GPIO_FAB_SB_sb_MSS_0/MSS_ADLIB_INST/CONFIG_PRESET_N } ]
set_false_path -ignore_errors -through [ get_pins { UART_GPIO_FAB_SB_sb_0/SYSRESET_POR/POWER_ON_RESET_N } ]
