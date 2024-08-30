//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Thu Aug 22 17:57:31 2024
// Version: 2024.1 2024.1.0.3
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

// FAB_INT
module FAB_INT(
    // Inputs
    DEVRST_N,
    GPIO_IN,
    RX,
    // Outputs
    GPIO_OUT,
    INT,
    TX
);

//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input        DEVRST_N;
input  [1:0] GPIO_IN;
input        RX;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output [1:0] GPIO_OUT;
output [1:0] INT;
output       TX;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire         DEVRST_N;
wire   [1:0] GPIO_IN;
wire   [1:0] GPIO_OUT_net_0;
wire   [1:0] INT_net_0;
wire         RX;
wire         TX_net_0;
wire         TX_net_1;
wire   [1:0] GPIO_OUT_net_1;
wire   [1:0] INT_net_1;
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
assign TX_net_1       = TX_net_0;
assign TX             = TX_net_1;
assign GPIO_OUT_net_1 = GPIO_OUT_net_0;
assign GPIO_OUT[1:0]  = GPIO_OUT_net_1;
assign INT_net_1      = INT_net_0;
assign INT[1:0]       = INT_net_1;
//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------FAB_INT_sb
FAB_INT_sb FAB_INT_sb_0(
        // Inputs
        .FAB_RESET_N        ( VCC_net ), // tied to 1'b1 from definition
        .DEVRST_N           ( DEVRST_N ),
        .GPIO_IN            ( GPIO_IN ),
        .RX                 ( RX ),
        // Outputs
        .POWER_ON_RESET_N   (  ),
        .INIT_DONE          (  ),
        .RCOSC_25_50MHZ_O2F (  ),
        .FAB_CCC_GL0        (  ),
        .FAB_CCC_LOCK       (  ),
        .MSS_READY          (  ),
        .INT                ( INT_net_0 ),
        .GPIO_OUT           ( GPIO_OUT_net_0 ),
        .GPIO_OE            (  ),
        .TX                 ( TX_net_0 ) 
        );


endmodule
