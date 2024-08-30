//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Tue Aug 27 11:30:09 2024
// Version: 2024.1 2024.1.0.3
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

// MSS_sys_i2c
module MSS_sys_i2c(
    // Inputs
    DEVRST_N,
    // Inouts
    COREI2C_0_0_SCL_IO,
    COREI2C_0_0_SDA_IO,
    I2C_1_SCL,
    I2C_1_SDA
);

//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input  DEVRST_N;
//--------------------------------------------------------------------
// Inout
//--------------------------------------------------------------------
inout  COREI2C_0_0_SCL_IO;
inout  COREI2C_0_0_SDA_IO;
inout  I2C_1_SCL;
inout  I2C_1_SDA;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire   COREI2C_0_0_SCL_IO;
wire   COREI2C_0_0_SDA_IO;
wire   DEVRST_N;
wire   I2C_1_SCL;
wire   I2C_1_SDA;
//--------------------------------------------------------------------
// TiedOff Nets
//--------------------------------------------------------------------
wire   VCC_net;
//--------------------------------------------------------------------
// Constant assignments
//--------------------------------------------------------------------
assign VCC_net = 1'b1;
//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------MSS_sys_i2c_sb
MSS_sys_i2c_sb MSS_sys_i2c_sb_0(
        // Inputs
        .FAB_RESET_N        ( VCC_net ), // tied to 1'b1 from definition
        .DEVRST_N           ( DEVRST_N ),
        // Outputs
        .POWER_ON_RESET_N   (  ),
        .INIT_DONE          (  ),
        .RCOSC_25_50MHZ_O2F (  ),
        .FAB_CCC_GL0        (  ),
        .FAB_CCC_LOCK       (  ),
        .MSS_READY          (  ),
        // Inouts
        .I2C_1_SDA          ( I2C_1_SDA ),
        .I2C_1_SCL          ( I2C_1_SCL ),
        .COREI2C_0_0_SDA_IO ( COREI2C_0_0_SDA_IO ),
        .COREI2C_0_0_SCL_IO ( COREI2C_0_0_SCL_IO ) 
        );


endmodule
