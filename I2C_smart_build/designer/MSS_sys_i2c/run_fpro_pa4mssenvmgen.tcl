set_device \
    -fam SmartFusion2 \
    -die PA4M500 \
    -pkg vf400
set_input_cfg \
	-path {D:/libero_tests/I2C_smart_build/component/work/MSS_sys_i2c_sb_MSS/ENVM.cfg}
set_output_efc \
    -path {D:\libero_tests\I2C_smart_build\designer\MSS_sys_i2c\MSS_sys_i2c.efc}
set_proj_dir \
    -path {D:\libero_tests\I2C_smart_build}
set_is_relative_path \
    -value {FALSE}
set_root_path_dir \
    -path {}
gen_prg -use_init false
