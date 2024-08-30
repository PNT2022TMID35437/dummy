//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Thu Aug 22 11:08:28 2024
// Version: 2024.1 2024.1.0.3
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

// UART_GPIO_FAB_SB
module UART_GPIO_FAB_SB(
    // Inputs
    DEVRST_N,
    GPIO_IN,
    GPIO_IN_0,
    RX,
    // Outputs
    GPIO_OUT,
    GPIO_OUT_0,
    INT_0,
    TX
);

//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input        DEVRST_N;
input  [0:0] GPIO_IN;
input  [0:0] GPIO_IN_0;
input        RX;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output [0:0] GPIO_OUT;
output [0:0] GPIO_OUT_0;
output [0:0] INT_0;
output       TX;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire         DEVRST_N;
wire   [0:0] GPIO_IN;
wire   [0:0] GPIO_IN_0;
wire   [0:0] GPIO_OUT_net_0;
wire   [0:0] GPIO_OUT_0_net_0;
wire   [0:0] INT_0_net_0;
wire         RX;
wire         TX_net_0;
wire         TX_net_1;
wire   [0:0] GPIO_OUT_net_1;
wire   [0:0] GPIO_OUT_0_net_1;
wire   [0:0] INT_0_net_1;
//--------------------------------------------------------------------
// TiedOff Nets
//--------------------------------------------------------------------
wire         VCC_net;
wire   [31:0]AMBA_MASTER_0_PADDR_const_net_0;
wire         GND_net;
wire   [31:0]AMBA_MASTER_0_PWDATA_const_net_0;
//--------------------------------------------------------------------
// Constant assignments
//--------------------------------------------------------------------
assign VCC_net                          = 1'b1;
assign AMBA_MASTER_0_PADDR_const_net_0  = 32'h00000000;
assign GND_net                          = 1'b0;
assign AMBA_MASTER_0_PWDATA_const_net_0 = 32'h00000000;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign TX_net_1            = TX_net_0;
assign TX                  = TX_net_1;
assign GPIO_OUT_net_1[0]   = GPIO_OUT_net_0[0];
assign GPIO_OUT[0:0]       = GPIO_OUT_net_1[0];
assign GPIO_OUT_0_net_1[0] = GPIO_OUT_0_net_0[0];
assign GPIO_OUT_0[0:0]     = GPIO_OUT_0_net_1[0];
assign INT_0_net_1[0]      = INT_0_net_0[0];
assign INT_0[0:0]          = INT_0_net_1[0];
//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------UART_GPIO_FAB_SB_sb
UART_GPIO_FAB_SB_sb UART_GPIO_FAB_SB_sb_0(
        // Inputs
        .FAB_RESET_N           ( VCC_net ), // tied to 1'b1 from definition
        .AMBA_MASTER_0_PADDR   ( AMBA_MASTER_0_PADDR_const_net_0 ), // tied to 32'h00000000 from definition
        .AMBA_MASTER_0_PSEL    ( GND_net ), // tied to 1'b0 from definition
        .AMBA_MASTER_0_PENABLE ( GND_net ), // tied to 1'b0 from definition
        .AMBA_MASTER_0_PWRITE  ( GND_net ), // tied to 1'b0 from definition
        .AMBA_MASTER_0_PWDATA  ( AMBA_MASTER_0_PWDATA_const_net_0 ), // tied to 32'h00000000 from definition
        .DEVRST_N              ( DEVRST_N ),
        .GPIO_IN               ( GPIO_IN ),
        .GPIO_IN_0             ( GPIO_IN_0 ),
        .RX                    ( RX ),
        // Outputs
        .POWER_ON_RESET_N      (  ),
        .INIT_DONE             (  ),
        .RCOSC_25_50MHZ_O2F    (  ),
        .FIC_0_CLK             (  ),
        .FIC_0_LOCK            (  ),
        .MSS_READY             (  ),
        .AMBA_MASTER_0_PRDATA  (  ),
        .AMBA_MASTER_0_PREADY  (  ),
        .AMBA_MASTER_0_PSLVERR (  ),
        .INT                   (  ),
        .GPIO_OUT              ( GPIO_OUT_net_0 ),
        .GPIO_OE               (  ),
        .INT_0                 ( INT_0_net_0 ),
        .GPIO_OUT_0            ( GPIO_OUT_0_net_0 ),
        .GPIO_OE_0             (  ),
        .TX                    ( TX_net_0 ) 
        );


endmodule
