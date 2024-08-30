//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Wed Aug 21 16:45:02 2024
// Version: 2024.1 2024.1.0.3
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

// peripherals
module peripherals(
    // Inputs
    DEVRST_N,
    MMUART_0_RXD,
    MMUART_1_RXD,
    SPI_0_DI,
    // Outputs
    MMUART_0_TXD,
    MMUART_1_TXD,
    SPI_0_DO,
    // Inouts
    I2C_0_SCL,
    I2C_0_SDA,
    I2C_1_SCL,
    I2C_1_SDA,
    SPI_0_CLK,
    SPI_0_SS0
);

//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input  DEVRST_N;
input  MMUART_0_RXD;
input  MMUART_1_RXD;
input  SPI_0_DI;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output MMUART_0_TXD;
output MMUART_1_TXD;
output SPI_0_DO;
//--------------------------------------------------------------------
// Inout
//--------------------------------------------------------------------
inout  I2C_0_SCL;
inout  I2C_0_SDA;
inout  I2C_1_SCL;
inout  I2C_1_SDA;
inout  SPI_0_CLK;
inout  SPI_0_SS0;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire   DEVRST_N;
wire   I2C_0_SCL;
wire   I2C_0_SDA;
wire   I2C_1_SCL;
wire   I2C_1_SDA;
wire   MMUART_0_RXD;
wire   MMUART_0_TXD_net_0;
wire   MMUART_1_RXD;
wire   MMUART_1_TXD_net_0;
wire   SPI_0_CLK;
wire   SPI_0_DI;
wire   SPI_0_DO_net_0;
wire   SPI_0_SS0;
wire   SPI_0_DO_net_1;
wire   MMUART_1_TXD_net_1;
wire   MMUART_0_TXD_net_1;
//--------------------------------------------------------------------
// TiedOff Nets
//--------------------------------------------------------------------
wire   VCC_net;
//--------------------------------------------------------------------
// Constant assignments
//--------------------------------------------------------------------
assign VCC_net = 1'b1;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign SPI_0_DO_net_1     = SPI_0_DO_net_0;
assign SPI_0_DO           = SPI_0_DO_net_1;
assign MMUART_1_TXD_net_1 = MMUART_1_TXD_net_0;
assign MMUART_1_TXD       = MMUART_1_TXD_net_1;
assign MMUART_0_TXD_net_1 = MMUART_0_TXD_net_0;
assign MMUART_0_TXD       = MMUART_0_TXD_net_1;
//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------peripherals_sb
peripherals_sb peripherals_sb_0(
        // Inputs
        .SPI_0_DI         ( SPI_0_DI ),
        .MMUART_1_RXD     ( MMUART_1_RXD ),
        .MMUART_0_RXD     ( MMUART_0_RXD ),
        .FAB_RESET_N      ( VCC_net ), // tied to 1'b1 from definition
        .DEVRST_N         ( DEVRST_N ),
        // Outputs
        .SPI_0_DO         ( SPI_0_DO_net_0 ),
        .MMUART_1_TXD     ( MMUART_1_TXD_net_0 ),
        .MMUART_0_TXD     ( MMUART_0_TXD_net_0 ),
        .POWER_ON_RESET_N (  ),
        .INIT_DONE        (  ),
        .FAB_CCC_GL0      (  ),
        .FAB_CCC_LOCK     (  ),
        .MSS_READY        (  ),
        // Inouts
        .I2C_0_SDA        ( I2C_0_SDA ),
        .I2C_0_SCL        ( I2C_0_SCL ),
        .I2C_1_SDA        ( I2C_1_SDA ),
        .I2C_1_SCL        ( I2C_1_SCL ),
        .SPI_0_CLK        ( SPI_0_CLK ),
        .SPI_0_SS0        ( SPI_0_SS0 ) 
        );


endmodule
