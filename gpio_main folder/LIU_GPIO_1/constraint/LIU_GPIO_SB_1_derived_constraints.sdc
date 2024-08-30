# Microchip Technology Inc.
# Date: 2024-Aug-19 11:39:32
# This file was generated based on the following SDC source files:
#   D:/libero_tests/LIU_GPIO_1/component/work/LIU_GPIO_SB_1_sb/CCC_0/LIU_GPIO_SB_1_sb_CCC_0_FCCC.sdc
#   C:/Microchip/Libero_SoC_v2024.1/Designer/data/aPA4M/cores/constraints/coreresetp.sdc
#   D:/libero_tests/LIU_GPIO_1/component/work/LIU_GPIO_SB_1_sb/FABOSC_0/LIU_GPIO_SB_1_sb_FABOSC_0_OSC.sdc
#   D:/libero_tests/LIU_GPIO_1/component/work/LIU_GPIO_SB_1_sb_MSS/LIU_GPIO_SB_1_sb_MSS.sdc
#   C:/Microchip/Libero_SoC_v2024.1/Designer/data/aPA4M/cores/constraints/sysreset.sdc
# *** Any modifications to this file will be lost if derived constraints is re-run. ***
#

create_clock -name {CLK0_PAD} -period 10 [ get_ports { CLK0_PAD } ]
create_clock -ignore_errors -name {LIU_GPIO_SB_1_sb_0/FABOSC_0/I_RCOSC_25_50MHZ/CLKOUT} -period 20 [ get_pins { LIU_GPIO_SB_1_sb_0/FABOSC_0/I_RCOSC_25_50MHZ/CLKOUT } ]
create_generated_clock -name {LIU_GPIO_SB_1_sb_0/CCC_0/GL0} -multiply_by 7 -divide_by 224 -source [ get_pins { LIU_GPIO_SB_1_sb_0/CCC_0/CCC_INST/CLK0_PAD } ] -phase 0 [ get_pins { LIU_GPIO_SB_1_sb_0/CCC_0/CCC_INST/GL0 } ]
set_false_path -ignore_errors -through [ get_nets { LIU_GPIO_SB_1_sb_0/CORERESETP_0/ddr_settled LIU_GPIO_SB_1_sb_0/CORERESETP_0/count_ddr_enable LIU_GPIO_SB_1_sb_0/CORERESETP_0/release_sdif*_core LIU_GPIO_SB_1_sb_0/CORERESETP_0/count_sdif*_enable } ]
set_false_path -ignore_errors -from [ get_cells { LIU_GPIO_SB_1_sb_0/CORERESETP_0/MSS_HPMS_READY_int } ] -to [ get_cells { LIU_GPIO_SB_1_sb_0/CORERESETP_0/sm0_areset_n_rcosc LIU_GPIO_SB_1_sb_0/CORERESETP_0/sm0_areset_n_rcosc_q1 } ]
set_false_path -ignore_errors -from [ get_cells { LIU_GPIO_SB_1_sb_0/CORERESETP_0/MSS_HPMS_READY_int LIU_GPIO_SB_1_sb_0/CORERESETP_0/SDIF*_PERST_N_re } ] -to [ get_cells { LIU_GPIO_SB_1_sb_0/CORERESETP_0/sdif*_areset_n_rcosc* } ]
set_false_path -ignore_errors -through [ get_nets { LIU_GPIO_SB_1_sb_0/CORERESETP_0/CONFIG1_DONE LIU_GPIO_SB_1_sb_0/CORERESETP_0/CONFIG2_DONE LIU_GPIO_SB_1_sb_0/CORERESETP_0/SDIF*_PERST_N LIU_GPIO_SB_1_sb_0/CORERESETP_0/SDIF*_PSEL LIU_GPIO_SB_1_sb_0/CORERESETP_0/SDIF*_PWRITE LIU_GPIO_SB_1_sb_0/CORERESETP_0/SDIF*_PRDATA[*] LIU_GPIO_SB_1_sb_0/CORERESETP_0/SOFT_EXT_RESET_OUT LIU_GPIO_SB_1_sb_0/CORERESETP_0/SOFT_RESET_F2M LIU_GPIO_SB_1_sb_0/CORERESETP_0/SOFT_M3_RESET LIU_GPIO_SB_1_sb_0/CORERESETP_0/SOFT_MDDR_DDR_AXI_S_CORE_RESET LIU_GPIO_SB_1_sb_0/CORERESETP_0/SOFT_FDDR_CORE_RESET LIU_GPIO_SB_1_sb_0/CORERESETP_0/SOFT_SDIF*_PHY_RESET LIU_GPIO_SB_1_sb_0/CORERESETP_0/SOFT_SDIF*_CORE_RESET LIU_GPIO_SB_1_sb_0/CORERESETP_0/SOFT_SDIF0_0_CORE_RESET LIU_GPIO_SB_1_sb_0/CORERESETP_0/SOFT_SDIF0_1_CORE_RESET } ]
set_false_path -ignore_errors -through [ get_pins { LIU_GPIO_SB_1_sb_0/LIU_GPIO_SB_1_sb_MSS_0/MSS_ADLIB_INST/CONFIG_PRESET_N } ]
set_false_path -ignore_errors -through [ get_pins { LIU_GPIO_SB_1_sb_0/SYSRESET_POR/POWER_ON_RESET_N } ]
