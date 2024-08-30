//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Thu Aug  8 13:03:11 2024
// Version: 2024.1 2024.1.0.3
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

// UART_ABFN
module UART_ABFN(
    // Inputs
    DEVRST_N,
    MMUART_0_RXD,
    // Outputs
    MMUART_0_TXD
);

//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input  DEVRST_N;
input  MMUART_0_RXD;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output MMUART_0_TXD;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire   DEVRST_N;
wire   MMUART_0_RXD;
wire   MMUART_0_TXD_net_0;
wire   OSC_C0_0_RCOSC_25_50MHZ_O2F;
wire   SYSRESET_0_POWER_ON_RESET_N;
wire   MMUART_0_TXD_net_1;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
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

//--------SYSRESET
SYSRESET SYSRESET_0(
        // Inputs
        .DEVRST_N         ( DEVRST_N ),
        // Outputs
        .POWER_ON_RESET_N ( SYSRESET_0_POWER_ON_RESET_N ) 
        );

//--------UART_MSS
UART_MSS UART_MSS_0(
        // Inputs
        .MCCC_CLK_BASE   ( OSC_C0_0_RCOSC_25_50MHZ_O2F ),
        .MMUART_0_RXD    ( MMUART_0_RXD ),
        .MSS_RESET_N_F2M ( SYSRESET_0_POWER_ON_RESET_N ),
        // Outputs
        .MMUART_0_TXD    ( MMUART_0_TXD_net_0 ) 
        );


endmodule
