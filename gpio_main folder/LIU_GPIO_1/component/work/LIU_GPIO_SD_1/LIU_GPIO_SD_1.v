//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Mon Aug 19 11:39:08 2024
// Version: 2024.1 2024.1.0.3
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

// LIU_GPIO_SD_1
module LIU_GPIO_SD_1(
    // Inputs
    CLK0_PAD,
    DEVRST_N,
    GPIO_IN,
    RX,
    // Outputs
    GPIO_OUT,
    TX
);

//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input         CLK0_PAD;
input         DEVRST_N;
input  [31:0] GPIO_IN;
input         RX;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output [31:0] GPIO_OUT;
output        TX;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire          CLK0_PAD;
wire          DEVRST_N;
wire   [31:0] GPIO_IN;
wire   [31:0] GPIO_OUT_net_0;
wire          RX;
wire          TX_net_0;
wire          TX_net_1;
wire   [31:0] GPIO_OUT_net_1;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign TX_net_1       = TX_net_0;
assign TX             = TX_net_1;
assign GPIO_OUT_net_1 = GPIO_OUT_net_0;
assign GPIO_OUT[31:0] = GPIO_OUT_net_1;
//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------LIU_GPIO_SB_1
LIU_GPIO_SB_1 LIU_GPIO_SB_1_0(
        // Inputs
        .CLK0_PAD ( CLK0_PAD ),
        .DEVRST_N ( DEVRST_N ),
        .RX       ( RX ),
        .GPIO_IN  ( GPIO_IN ),
        // Outputs
        .TX       ( TX_net_0 ),
        .GPIO_OUT ( GPIO_OUT_net_0 ) 
        );


endmodule
