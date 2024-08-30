//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Thu Aug 29 16:52:30 2024
// Version: 2024.1 2024.1.0.3
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

// SPI
module SPI(
    // Inputs
    DEVRST_N,
    MMUART_0_RXD,
    SPI_0_DI,
    // Outputs
    MMUART_0_TXD,
    SPI_0_DO,
    // Inouts
    SPI_0_CLK,
    SPI_0_SS0
);

//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input  DEVRST_N;
input  MMUART_0_RXD;
input  SPI_0_DI;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output MMUART_0_TXD;
output SPI_0_DO;
//--------------------------------------------------------------------
// Inout
//--------------------------------------------------------------------
inout  SPI_0_CLK;
inout  SPI_0_SS0;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire   DEVRST_N;
wire   MMUART_0_RXD;
wire   MMUART_0_TXD_net_0;
wire   OSC_C0_0_RCOSC_25_50MHZ_O2F;
wire   SPI_0_CLK;
wire   SPI_0_DI;
wire   SPI_0_DO_net_0;
wire   SPI_0_SS0;
wire   SYSRESET_0_POWER_ON_RESET_N;
wire   SPI_0_DO_net_1;
wire   MMUART_0_TXD_net_1;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign SPI_0_DO_net_1     = SPI_0_DO_net_0;
assign SPI_0_DO           = SPI_0_DO_net_1;
assign MMUART_0_TXD_net_1 = MMUART_0_TXD_net_0;
assign MMUART_0_TXD       = MMUART_0_TXD_net_1;
//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------OSC_C0
OSC_C0 OSC_C0_0(
        // Outputs
        .RCOSC_25_50MHZ_O2F ( OSC_C0_0_RCOSC_25_50MHZ_O2F ) 
        );

//--------SPI_MSS
SPI_MSS SPI_MSS_0(
        // Inputs
        .SPI_0_DI        ( SPI_0_DI ),
        .MCCC_CLK_BASE   ( OSC_C0_0_RCOSC_25_50MHZ_O2F ),
        .MMUART_0_RXD    ( MMUART_0_RXD ),
        .MSS_RESET_N_F2M ( SYSRESET_0_POWER_ON_RESET_N ),
        // Outputs
        .SPI_0_DO        ( SPI_0_DO_net_0 ),
        .MMUART_0_TXD    ( MMUART_0_TXD_net_0 ),
        // Inouts
        .SPI_0_CLK       ( SPI_0_CLK ),
        .SPI_0_SS0       ( SPI_0_SS0 ) 
        );

//--------SYSRESET
SYSRESET SYSRESET_0(
        // Inputs
        .DEVRST_N         ( DEVRST_N ),
        // Outputs
        .POWER_ON_RESET_N ( SYSRESET_0_POWER_ON_RESET_N ) 
        );


endmodule
