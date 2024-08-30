# Microchip Technology Inc.
# Date: 2024-Aug-28 11:49:41
# This file was generated based on the following SDC source files:
#   D:/libero_tests/CORE_I2C_TEMP/component/work/TEMP_sb/CCC_0/TEMP_sb_CCC_0_FCCC.sdc
#   C:/Microchip/Libero_SoC_v2024.1/Designer/data/aPA4M/cores/constraints/coreresetp.sdc
#   D:/libero_tests/CORE_I2C_TEMP/component/work/TEMP_sb/FABOSC_0/TEMP_sb_FABOSC_0_OSC.sdc
#   D:/libero_tests/CORE_I2C_TEMP/component/work/TEMP_sb_MSS/TEMP_sb_MSS.sdc
#   C:/Microchip/Libero_SoC_v2024.1/Designer/data/aPA4M/cores/constraints/sysreset.sdc
# *** Any modifications to this file will be lost if derived constraints is re-run. ***
#

create_clock -ignore_errors -name {TEMP_sb_0/FABOSC_0/I_RCOSC_25_50MHZ/CLKOUT} -period 20 [ get_pins { TEMP_sb_0/FABOSC_0/I_RCOSC_25_50MHZ/CLKOUT } ]
create_generated_clock -name {TEMP_sb_0/CCC_0/GL0} -multiply_by 2 -divide_by 4 -source [ get_pins { TEMP_sb_0/CCC_0/CCC_INST/RCOSC_25_50MHZ } ] -phase 0 [ get_pins { TEMP_sb_0/CCC_0/CCC_INST/GL0 } ]
set_false_path -ignore_errors -through [ get_nets { TEMP_sb_0/CORERESETP_0/ddr_settled TEMP_sb_0/CORERESETP_0/count_ddr_enable TEMP_sb_0/CORERESETP_0/release_sdif*_core TEMP_sb_0/CORERESETP_0/count_sdif*_enable } ]
set_false_path -ignore_errors -from [ get_cells { TEMP_sb_0/CORERESETP_0/MSS_HPMS_READY_int } ] -to [ get_cells { TEMP_sb_0/CORERESETP_0/sm0_areset_n_rcosc TEMP_sb_0/CORERESETP_0/sm0_areset_n_rcosc_q1 } ]
set_false_path -ignore_errors -from [ get_cells { TEMP_sb_0/CORERESETP_0/MSS_HPMS_READY_int TEMP_sb_0/CORERESETP_0/SDIF*_PERST_N_re } ] -to [ get_cells { TEMP_sb_0/CORERESETP_0/sdif*_areset_n_rcosc* } ]
set_false_path -ignore_errors -through [ get_nets { TEMP_sb_0/CORERESETP_0/CONFIG1_DONE TEMP_sb_0/CORERESETP_0/CONFIG2_DONE TEMP_sb_0/CORERESETP_0/SDIF*_PERST_N TEMP_sb_0/CORERESETP_0/SDIF*_PSEL TEMP_sb_0/CORERESETP_0/SDIF*_PWRITE TEMP_sb_0/CORERESETP_0/SDIF*_PRDATA[*] TEMP_sb_0/CORERESETP_0/SOFT_EXT_RESET_OUT TEMP_sb_0/CORERESETP_0/SOFT_RESET_F2M TEMP_sb_0/CORERESETP_0/SOFT_M3_RESET TEMP_sb_0/CORERESETP_0/SOFT_MDDR_DDR_AXI_S_CORE_RESET TEMP_sb_0/CORERESETP_0/SOFT_FDDR_CORE_RESET TEMP_sb_0/CORERESETP_0/SOFT_SDIF*_PHY_RESET TEMP_sb_0/CORERESETP_0/SOFT_SDIF*_CORE_RESET TEMP_sb_0/CORERESETP_0/SOFT_SDIF0_0_CORE_RESET TEMP_sb_0/CORERESETP_0/SOFT_SDIF0_1_CORE_RESET } ]
set_false_path -ignore_errors -through [ get_pins { TEMP_sb_0/TEMP_sb_MSS_0/MSS_ADLIB_INST/CONFIG_PRESET_N } ]
set_false_path -ignore_errors -through [ get_pins { TEMP_sb_0/SYSRESET_POR/POWER_ON_RESET_N } ]
