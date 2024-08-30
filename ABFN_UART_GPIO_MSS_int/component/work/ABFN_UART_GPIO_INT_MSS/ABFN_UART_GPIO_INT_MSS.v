//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Wed Aug 21 14:59:09 2024
// Version: 2024.1 2024.1.0.3
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

// ABFN_UART_GPIO_INT_MSS
module ABFN_UART_GPIO_INT_MSS(
    // Inputs
    DEVRST_N,
    GPIO_31_IN,
    MMUART_0_RXD,
    // Outputs
    GPIO_30_OUT,
    MMUART_0_TXD
);

//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input  DEVRST_N;
input  GPIO_31_IN;
input  MMUART_0_RXD;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output GPIO_30_OUT;
output MMUART_0_TXD;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire   DEVRST_N;
wire   GPIO_30_OUT_net_0;
wire   GPIO_31_IN;
wire   MMUART_0_RXD;
wire   MMUART_0_TXD_net_0;
wire   MMUART_0_TXD_net_1;
wire   GPIO_30_OUT_net_1;
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
assign MMUART_0_TXD_net_1 = MMUART_0_TXD_net_0;
assign MMUART_0_TXD       = MMUART_0_TXD_net_1;
assign GPIO_30_OUT_net_1  = GPIO_30_OUT_net_0;
assign GPIO_30_OUT        = GPIO_30_OUT_net_1;
//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------ABFN_UART_GPIO_INT_MSS_sb
ABFN_UART_GPIO_INT_MSS_sb ABFN_UART_GPIO_INT_MSS_sb_0(
        // Inputs
        .MMUART_0_RXD     ( MMUART_0_RXD ),
        .FAB_RESET_N      ( VCC_net ), // tied to 1'b1 from definition
        .GPIO_31_IN       ( GPIO_31_IN ),
        .DEVRST_N         ( DEVRST_N ),
        // Outputs
        .MMUART_0_TXD     ( MMUART_0_TXD_net_0 ),
        .POWER_ON_RESET_N (  ),
        .INIT_DONE        (  ),
        .GPIO_30_OUT      ( GPIO_30_OUT_net_0 ),
        .FAB_CCC_GL0      (  ),
        .FAB_CCC_LOCK     (  ),
        .MSS_READY        (  ) 
        );


endmodule
