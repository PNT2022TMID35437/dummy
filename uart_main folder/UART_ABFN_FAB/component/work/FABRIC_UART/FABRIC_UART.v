//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Tue Aug 20 10:13:46 2024
// Version: 2024.1 2024.1.0.3
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

// FABRIC_UART
module FABRIC_UART(
    // Inputs
    DEVRST_N,
    RX,
    // Outputs
    TX
);

//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input  DEVRST_N;
input  RX;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output TX;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire   DEVRST_N;
wire   RX;
wire   TX_net_0;
wire   TX_net_1;
//--------------------------------------------------------------------
// TiedOff Nets
//--------------------------------------------------------------------
wire   VCC_net;
wire   [31:0]AMBA_MASTER_0_PADDR_const_net_0;
wire   GND_net;
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
assign TX_net_1 = TX_net_0;
assign TX       = TX_net_1;
//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------FABRIC_UART_sb
FABRIC_UART_sb FABRIC_UART_sb_0(
        // Inputs
        .FAB_RESET_N           ( VCC_net ), // tied to 1'b1 from definition
        .AMBA_MASTER_0_PSEL    ( GND_net ), // tied to 1'b0 from definition
        .AMBA_MASTER_0_PENABLE ( GND_net ), // tied to 1'b0 from definition
        .AMBA_MASTER_0_PWRITE  ( GND_net ), // tied to 1'b0 from definition
        .DEVRST_N              ( DEVRST_N ),
        .RX                    ( RX ),
        .AMBA_MASTER_0_PADDR   ( AMBA_MASTER_0_PADDR_const_net_0 ), // tied to 32'h00000000 from definition
        .AMBA_MASTER_0_PWDATA  ( AMBA_MASTER_0_PWDATA_const_net_0 ), // tied to 32'h00000000 from definition
        // Outputs
        .POWER_ON_RESET_N      (  ),
        .INIT_DONE             (  ),
        .RCOSC_25_50MHZ_O2F    (  ),
        .FIC_0_CLK             (  ),
        .FIC_0_LOCK            (  ),
        .MSS_READY             (  ),
        .AMBA_MASTER_0_PREADY  (  ),
        .AMBA_MASTER_0_PSLVERR (  ),
        .TX                    ( TX_net_0 ),
        .AMBA_MASTER_0_PRDATA  (  ) 
        );


endmodule
