//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Wed Aug 28 14:30:31 2024
// Version: 2024.1 2024.1.0.3
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

// TEMP
module TEMP(
    // Inputs
    DEVRST_N,
    GPIO_IN,
    GPIO_IN_0,
    MMUART_0_RXD,
    // Outputs
    GPIO_OUT,
    MMUART_0_TXD,
    // Inouts
    COREI2C_0_0_SCL_IO,
    COREI2C_0_0_SDA_IO,
    I2C_1_SCL,
    I2C_1_SDA
);

//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input        DEVRST_N;
input        GPIO_IN;
input        GPIO_IN_0;
input        MMUART_0_RXD;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output [1:0] GPIO_OUT;
output       MMUART_0_TXD;
//--------------------------------------------------------------------
// Inout
//--------------------------------------------------------------------
inout        COREI2C_0_0_SCL_IO;
inout        COREI2C_0_0_SDA_IO;
inout        I2C_1_SCL;
inout        I2C_1_SDA;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire         COREI2C_0_0_SCL_IO;
wire         COREI2C_0_0_SDA_IO;
wire         DEVRST_N;
wire         GPIO_IN;
wire         GPIO_IN_0;
wire   [1:0] GPIO_OUT_net_0;
wire         I2C_1_SCL;
wire         I2C_1_SDA;
wire         MMUART_0_RXD;
wire         MMUART_0_TXD_net_0;
wire         MMUART_0_TXD_net_1;
wire   [1:0] GPIO_OUT_net_1;
wire   [1:0] GPIO_IN_net_0;
//--------------------------------------------------------------------
// TiedOff Nets
//--------------------------------------------------------------------
wire         VCC_net;
//--------------------------------------------------------------------
// Constant assignments
//--------------------------------------------------------------------
assign VCC_net = 1'b1;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign MMUART_0_TXD_net_1 = MMUART_0_TXD_net_0;
assign MMUART_0_TXD       = MMUART_0_TXD_net_1;
assign GPIO_OUT_net_1     = GPIO_OUT_net_0;
assign GPIO_OUT[1:0]      = GPIO_OUT_net_1;
//--------------------------------------------------------------------
// Concatenation assignments
//--------------------------------------------------------------------
assign GPIO_IN_net_0 = { GPIO_IN , GPIO_IN_0 };
//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------TEMP_sb
TEMP_sb TEMP_sb_0(
        // Inputs
        .MMUART_0_RXD       ( MMUART_0_RXD ),
        .FAB_RESET_N        ( VCC_net ), // tied to 1'b1 from definition
        .DEVRST_N           ( DEVRST_N ),
        .GPIO_IN            ( GPIO_IN_net_0 ),
        // Outputs
        .MMUART_0_TXD       ( MMUART_0_TXD_net_0 ),
        .POWER_ON_RESET_N   (  ),
        .INIT_DONE          (  ),
        .RCOSC_25_50MHZ_O2F (  ),
        .FAB_CCC_GL0        (  ),
        .FAB_CCC_LOCK       (  ),
        .MSS_READY          (  ),
        .INT                (  ),
        .GPIO_OUT           ( GPIO_OUT_net_0 ),
        .GPIO_OE            (  ),
        // Inouts
        .I2C_1_SDA          ( I2C_1_SDA ),
        .I2C_1_SCL          ( I2C_1_SCL ),
        .COREI2C_0_0_SDA_IO ( COREI2C_0_0_SDA_IO ),
        .COREI2C_0_0_SCL_IO ( COREI2C_0_0_SCL_IO ) 
        );


endmodule
