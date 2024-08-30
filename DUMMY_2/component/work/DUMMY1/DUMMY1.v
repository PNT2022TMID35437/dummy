//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Fri Aug 23 13:08:54 2024
// Version: 2024.1 2024.1.0.3
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

// DUMMY1
module DUMMY1(
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
wire          CoreAPB3_C3_0_APBmslave0_PENABLE;
wire          CoreAPB3_C3_0_APBmslave0_PREADY;
wire          CoreAPB3_C3_0_APBmslave0_PSELx;
wire          CoreAPB3_C3_0_APBmslave0_PSLVERR;
wire          CoreAPB3_C3_0_APBmslave0_PWRITE;
wire          CoreGPIO_C0_0_INT_OR;
wire          DEVRST_N;
wire   [31:0] DUMMY1_MSS_0_FIC_0_APB_MASTER_PADDR;
wire          DUMMY1_MSS_0_FIC_0_APB_MASTER_PENABLE;
wire   [31:0] DUMMY1_MSS_0_FIC_0_APB_MASTER_PRDATA;
wire          DUMMY1_MSS_0_FIC_0_APB_MASTER_PREADY;
wire          DUMMY1_MSS_0_FIC_0_APB_MASTER_PSELx;
wire          DUMMY1_MSS_0_FIC_0_APB_MASTER_PSLVERR;
wire   [31:0] DUMMY1_MSS_0_FIC_0_APB_MASTER_PWDATA;
wire          DUMMY1_MSS_0_FIC_0_APB_MASTER_PWRITE;
wire          DUMMY1_MSS_0_MSS_RESET_N_M2F;
wire   [1:0]  GPIO_IN;
wire   [1:0]  GPIO_OUT_net_0;
wire          OSC_C0_0_RCOSC_25_50MHZ_O2F;
wire          SYSRESET_0_POWER_ON_RESET_N;
wire   [1:0]  GPIO_OUT_net_1;
wire   [15:0] MSS_INT_F2M_net_0;
//--------------------------------------------------------------------
// TiedOff Nets
//--------------------------------------------------------------------
wire          VCC_net;
//--------------------------------------------------------------------
// Bus Interface Nets Declarations - Unequal Pin Widths
//--------------------------------------------------------------------
wire   [31:0] CoreAPB3_C3_0_APBmslave0_PADDR;
wire   [7:0]  CoreAPB3_C3_0_APBmslave0_PADDR_0;
wire   [7:0]  CoreAPB3_C3_0_APBmslave0_PADDR_0_7to0;
wire   [7:0]  CoreAPB3_C3_0_APBmslave0_PRDATA;
wire   [31:0] CoreAPB3_C3_0_APBmslave0_PRDATA_0;
wire   [31:8] CoreAPB3_C3_0_APBmslave0_PRDATA_0_31to8;
wire   [7:0]  CoreAPB3_C3_0_APBmslave0_PRDATA_0_7to0;
wire   [31:0] CoreAPB3_C3_0_APBmslave0_PWDATA;
wire   [7:0]  CoreAPB3_C3_0_APBmslave0_PWDATA_0;
wire   [7:0]  CoreAPB3_C3_0_APBmslave0_PWDATA_0_7to0;
//--------------------------------------------------------------------
// Constant assignments
//--------------------------------------------------------------------
assign VCC_net     = 1'b1;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign GPIO_OUT_net_1 = GPIO_OUT_net_0;
assign GPIO_OUT[1:0]  = GPIO_OUT_net_1;
//--------------------------------------------------------------------
// Concatenation assignments
//--------------------------------------------------------------------
assign MSS_INT_F2M_net_0 = { 1'b1 , 1'b1 , 1'b1 , 1'b1 , 1'b1 , 1'b1 , 1'b1 , 1'b1 , 1'b1 , 1'b1 , 1'b1 , 1'b1 , 1'b1 , 1'b1 , 1'b1 , CoreGPIO_C0_0_INT_OR };
//--------------------------------------------------------------------
// Bus Interface Nets Assignments - Unequal Pin Widths
//--------------------------------------------------------------------
assign CoreAPB3_C3_0_APBmslave0_PADDR_0 = { CoreAPB3_C3_0_APBmslave0_PADDR_0_7to0 };
assign CoreAPB3_C3_0_APBmslave0_PADDR_0_7to0 = CoreAPB3_C3_0_APBmslave0_PADDR[7:0];

assign CoreAPB3_C3_0_APBmslave0_PRDATA_0 = { CoreAPB3_C3_0_APBmslave0_PRDATA_0_31to8, CoreAPB3_C3_0_APBmslave0_PRDATA_0_7to0 };
assign CoreAPB3_C3_0_APBmslave0_PRDATA_0_31to8 = 24'h0;
assign CoreAPB3_C3_0_APBmslave0_PRDATA_0_7to0 = CoreAPB3_C3_0_APBmslave0_PRDATA[7:0];

assign CoreAPB3_C3_0_APBmslave0_PWDATA_0 = { CoreAPB3_C3_0_APBmslave0_PWDATA_0_7to0 };
assign CoreAPB3_C3_0_APBmslave0_PWDATA_0_7to0 = CoreAPB3_C3_0_APBmslave0_PWDATA[7:0];

//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------CoreAPB3_C3
CoreAPB3_C3 CoreAPB3_C3_0(
        // Inputs
        .PADDR     ( DUMMY1_MSS_0_FIC_0_APB_MASTER_PADDR ),
        .PSEL      ( DUMMY1_MSS_0_FIC_0_APB_MASTER_PSELx ),
        .PENABLE   ( DUMMY1_MSS_0_FIC_0_APB_MASTER_PENABLE ),
        .PWRITE    ( DUMMY1_MSS_0_FIC_0_APB_MASTER_PWRITE ),
        .PWDATA    ( DUMMY1_MSS_0_FIC_0_APB_MASTER_PWDATA ),
        .PRDATAS0  ( CoreAPB3_C3_0_APBmslave0_PRDATA_0 ),
        .PREADYS0  ( CoreAPB3_C3_0_APBmslave0_PREADY ),
        .PSLVERRS0 ( CoreAPB3_C3_0_APBmslave0_PSLVERR ),
        // Outputs
        .PRDATA    ( DUMMY1_MSS_0_FIC_0_APB_MASTER_PRDATA ),
        .PREADY    ( DUMMY1_MSS_0_FIC_0_APB_MASTER_PREADY ),
        .PSLVERR   ( DUMMY1_MSS_0_FIC_0_APB_MASTER_PSLVERR ),
        .PADDRS    ( CoreAPB3_C3_0_APBmslave0_PADDR ),
        .PSELS0    ( CoreAPB3_C3_0_APBmslave0_PSELx ),
        .PENABLES  ( CoreAPB3_C3_0_APBmslave0_PENABLE ),
        .PWRITES   ( CoreAPB3_C3_0_APBmslave0_PWRITE ),
        .PWDATAS   ( CoreAPB3_C3_0_APBmslave0_PWDATA ) 
        );

//--------CoreGPIO_C0
CoreGPIO_C0 CoreGPIO_C0_0(
        // Inputs
        .PRESETN  ( DUMMY1_MSS_0_MSS_RESET_N_M2F ),
        .PCLK     ( OSC_C0_0_RCOSC_25_50MHZ_O2F ),
        .GPIO_IN  ( GPIO_IN ),
        .PADDR    ( CoreAPB3_C3_0_APBmslave0_PADDR_0 ),
        .PSEL     ( CoreAPB3_C3_0_APBmslave0_PSELx ),
        .PENABLE  ( CoreAPB3_C3_0_APBmslave0_PENABLE ),
        .PWRITE   ( CoreAPB3_C3_0_APBmslave0_PWRITE ),
        .PWDATA   ( CoreAPB3_C3_0_APBmslave0_PWDATA_0 ),
        // Outputs
        .INT_OR   ( CoreGPIO_C0_0_INT_OR ),
        .INT      (  ),
        .GPIO_OUT ( GPIO_OUT_net_0 ),
        .GPIO_OE  (  ),
        .PRDATA   ( CoreAPB3_C3_0_APBmslave0_PRDATA ),
        .PREADY   ( CoreAPB3_C3_0_APBmslave0_PREADY ),
        .PSLVERR  ( CoreAPB3_C3_0_APBmslave0_PSLVERR ) 
        );

//--------DUMMY1_MSS
DUMMY1_MSS DUMMY1_MSS_0(
        // Inputs
        .MCCC_CLK_BASE       ( OSC_C0_0_RCOSC_25_50MHZ_O2F ),
        .MSS_RESET_N_F2M     ( SYSRESET_0_POWER_ON_RESET_N ),
        .FIC_0_APB_M_PREADY  ( DUMMY1_MSS_0_FIC_0_APB_MASTER_PREADY ),
        .FIC_0_APB_M_PSLVERR ( DUMMY1_MSS_0_FIC_0_APB_MASTER_PSLVERR ),
        .MSS_INT_F2M         ( MSS_INT_F2M_net_0 ),
        .FIC_0_APB_M_PRDATA  ( DUMMY1_MSS_0_FIC_0_APB_MASTER_PRDATA ),
        // Outputs
        .MSS_RESET_N_M2F     ( DUMMY1_MSS_0_MSS_RESET_N_M2F ),
        .FIC_0_APB_M_PSEL    ( DUMMY1_MSS_0_FIC_0_APB_MASTER_PSELx ),
        .FIC_0_APB_M_PWRITE  ( DUMMY1_MSS_0_FIC_0_APB_MASTER_PWRITE ),
        .FIC_0_APB_M_PENABLE ( DUMMY1_MSS_0_FIC_0_APB_MASTER_PENABLE ),
        .FIC_0_APB_M_PADDR   ( DUMMY1_MSS_0_FIC_0_APB_MASTER_PADDR ),
        .FIC_0_APB_M_PWDATA  ( DUMMY1_MSS_0_FIC_0_APB_MASTER_PWDATA ) 
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
