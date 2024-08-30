//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Fri Aug 23 16:34:07 2024
// Version: 2024.1 2024.1.0.3
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

// GPIOOOO
module GPIOOOO(
    // Inputs
    DEVRST_N,
    GPIO_IN,
    // Outputs
    GPIO_OUT
);

//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input        DEVRST_N;
input  [1:0] GPIO_IN;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output [1:0] GPIO_OUT;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire          CoreAPB3_C0_0_APBmslave0_PENABLE;
wire   [31:0] CoreAPB3_C0_0_APBmslave0_PRDATA;
wire          CoreAPB3_C0_0_APBmslave0_PREADY;
wire          CoreAPB3_C0_0_APBmslave0_PSELx;
wire          CoreAPB3_C0_0_APBmslave0_PSLVERR;
wire   [31:0] CoreAPB3_C0_0_APBmslave0_PWDATA;
wire          CoreAPB3_C0_0_APBmslave0_PWRITE;
wire          CoreGPIO_C0_0_INT_OR;
wire          DEVRST_N;
wire   [1:0]  GPIO_IN;
wire   [1:0]  GPIO_OUT_net_0;
wire   [31:0] GPIOOOO_MSS_0_FIC_0_APB_MASTER_PADDR;
wire          GPIOOOO_MSS_0_FIC_0_APB_MASTER_PENABLE;
wire   [31:0] GPIOOOO_MSS_0_FIC_0_APB_MASTER_PRDATA;
wire          GPIOOOO_MSS_0_FIC_0_APB_MASTER_PREADY;
wire          GPIOOOO_MSS_0_FIC_0_APB_MASTER_PSELx;
wire          GPIOOOO_MSS_0_FIC_0_APB_MASTER_PSLVERR;
wire   [31:0] GPIOOOO_MSS_0_FIC_0_APB_MASTER_PWDATA;
wire          GPIOOOO_MSS_0_FIC_0_APB_MASTER_PWRITE;
wire          OSC_C0_0_RCOSC_25_50MHZ_O2F;
wire          SYSRESET_0_POWER_ON_RESET_N;
wire   [1:0]  GPIO_OUT_net_1;
wire   [15:0] MSS_INT_F2M_net_0;
//--------------------------------------------------------------------
// TiedOff Nets
//--------------------------------------------------------------------
wire          GND_net;
//--------------------------------------------------------------------
// Bus Interface Nets Declarations - Unequal Pin Widths
//--------------------------------------------------------------------
wire   [31:0] CoreAPB3_C0_0_APBmslave0_PADDR;
wire   [7:0]  CoreAPB3_C0_0_APBmslave0_PADDR_0;
wire   [7:0]  CoreAPB3_C0_0_APBmslave0_PADDR_0_7to0;
//--------------------------------------------------------------------
// Constant assignments
//--------------------------------------------------------------------
assign GND_net     = 1'b0;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign GPIO_OUT_net_1 = GPIO_OUT_net_0;
assign GPIO_OUT[1:0]  = GPIO_OUT_net_1;
//--------------------------------------------------------------------
// Concatenation assignments
//--------------------------------------------------------------------
assign MSS_INT_F2M_net_0 = { 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , CoreGPIO_C0_0_INT_OR , 1'b0 };
//--------------------------------------------------------------------
// Bus Interface Nets Assignments - Unequal Pin Widths
//--------------------------------------------------------------------
assign CoreAPB3_C0_0_APBmslave0_PADDR_0 = { CoreAPB3_C0_0_APBmslave0_PADDR_0_7to0 };
assign CoreAPB3_C0_0_APBmslave0_PADDR_0_7to0 = CoreAPB3_C0_0_APBmslave0_PADDR[7:0];

//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------CoreAPB3_C0
CoreAPB3_C0 CoreAPB3_C0_0(
        // Inputs
        .PSEL      ( GPIOOOO_MSS_0_FIC_0_APB_MASTER_PSELx ),
        .PENABLE   ( GPIOOOO_MSS_0_FIC_0_APB_MASTER_PENABLE ),
        .PWRITE    ( GPIOOOO_MSS_0_FIC_0_APB_MASTER_PWRITE ),
        .PREADYS0  ( CoreAPB3_C0_0_APBmslave0_PREADY ),
        .PSLVERRS0 ( CoreAPB3_C0_0_APBmslave0_PSLVERR ),
        .PADDR     ( GPIOOOO_MSS_0_FIC_0_APB_MASTER_PADDR ),
        .PWDATA    ( GPIOOOO_MSS_0_FIC_0_APB_MASTER_PWDATA ),
        .PRDATAS0  ( CoreAPB3_C0_0_APBmslave0_PRDATA ),
        // Outputs
        .PREADY    ( GPIOOOO_MSS_0_FIC_0_APB_MASTER_PREADY ),
        .PSLVERR   ( GPIOOOO_MSS_0_FIC_0_APB_MASTER_PSLVERR ),
        .PSELS0    ( CoreAPB3_C0_0_APBmslave0_PSELx ),
        .PENABLES  ( CoreAPB3_C0_0_APBmslave0_PENABLE ),
        .PWRITES   ( CoreAPB3_C0_0_APBmslave0_PWRITE ),
        .PRDATA    ( GPIOOOO_MSS_0_FIC_0_APB_MASTER_PRDATA ),
        .PADDRS    ( CoreAPB3_C0_0_APBmslave0_PADDR ),
        .PWDATAS   ( CoreAPB3_C0_0_APBmslave0_PWDATA ) 
        );

//--------CoreGPIO_C0
CoreGPIO_C0 CoreGPIO_C0_0(
        // Inputs
        .PRESETN  ( SYSRESET_0_POWER_ON_RESET_N ),
        .PCLK     ( OSC_C0_0_RCOSC_25_50MHZ_O2F ),
        .PSEL     ( CoreAPB3_C0_0_APBmslave0_PSELx ),
        .PENABLE  ( CoreAPB3_C0_0_APBmslave0_PENABLE ),
        .PWRITE   ( CoreAPB3_C0_0_APBmslave0_PWRITE ),
        .GPIO_IN  ( GPIO_IN ),
        .PADDR    ( CoreAPB3_C0_0_APBmslave0_PADDR_0 ),
        .PWDATA   ( CoreAPB3_C0_0_APBmslave0_PWDATA ),
        // Outputs
        .INT_OR   ( CoreGPIO_C0_0_INT_OR ),
        .PREADY   ( CoreAPB3_C0_0_APBmslave0_PREADY ),
        .PSLVERR  ( CoreAPB3_C0_0_APBmslave0_PSLVERR ),
        .INT      (  ),
        .GPIO_OUT ( GPIO_OUT_net_0 ),
        .GPIO_OE  (  ),
        .PRDATA   ( CoreAPB3_C0_0_APBmslave0_PRDATA ) 
        );

//--------GPIOOOO_MSS
GPIOOOO_MSS GPIOOOO_MSS_0(
        // Inputs
        .MCCC_CLK_BASE       ( OSC_C0_0_RCOSC_25_50MHZ_O2F ),
        .FIC_0_APB_M_PREADY  ( GPIOOOO_MSS_0_FIC_0_APB_MASTER_PREADY ),
        .FIC_0_APB_M_PSLVERR ( GPIOOOO_MSS_0_FIC_0_APB_MASTER_PSLVERR ),
        .MSS_RESET_N_F2M     ( SYSRESET_0_POWER_ON_RESET_N ),
        .FIC_0_APB_M_PRDATA  ( GPIOOOO_MSS_0_FIC_0_APB_MASTER_PRDATA ),
        .MSS_INT_F2M         ( MSS_INT_F2M_net_0 ),
        // Outputs
        .FIC_0_APB_M_PSEL    ( GPIOOOO_MSS_0_FIC_0_APB_MASTER_PSELx ),
        .FIC_0_APB_M_PWRITE  ( GPIOOOO_MSS_0_FIC_0_APB_MASTER_PWRITE ),
        .FIC_0_APB_M_PENABLE ( GPIOOOO_MSS_0_FIC_0_APB_MASTER_PENABLE ),
        .FIC_0_APB_M_PADDR   ( GPIOOOO_MSS_0_FIC_0_APB_MASTER_PADDR ),
        .FIC_0_APB_M_PWDATA  ( GPIOOOO_MSS_0_FIC_0_APB_MASTER_PWDATA ) 
        );

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


endmodule
