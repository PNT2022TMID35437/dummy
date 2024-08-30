//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Fri Aug 23 16:27:52 2024
// Version: 2024.1 2024.1.0.3
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

//////////////////////////////////////////////////////////////////////
// Component Description (Tcl) 
//////////////////////////////////////////////////////////////////////
/*
# Exporting Component Description of CORERESET_PF_C0 to TCL
# Family: SmartFusion2
# Part Number: M2S005-VF400I
# Create and Configure the core component CORERESET_PF_C0
create_and_configure_core -core_vlnv {Actel:DirectCore:CORERESET_PF:2.1.100} -component_name {CORERESET_PF_C0} -params { }
# Exporting Component Description of CORERESET_PF_C0 to TCL done
*/

// CORERESET_PF_C0
module CORERESET_PF_C0(
    // Inputs
    CLK,
    EXT_RST_N,
    FF_US_RESTORE,
    INIT_DONE,
    PLL_LOCK,
    SS_BUSY,
    // Outputs
    FABRIC_RESET_N
);

//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input  CLK;
input  EXT_RST_N;
input  FF_US_RESTORE;
input  INIT_DONE;
input  PLL_LOCK;
input  SS_BUSY;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output FABRIC_RESET_N;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire   CLK;
wire   EXT_RST_N;
wire   FABRIC_RESET_N_net_0;
wire   FF_US_RESTORE;
wire   INIT_DONE;
wire   PLL_LOCK;
wire   SS_BUSY;
wire   FABRIC_RESET_N_net_1;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign FABRIC_RESET_N_net_1 = FABRIC_RESET_N_net_0;
assign FABRIC_RESET_N       = FABRIC_RESET_N_net_1;
//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------CORERESET_PF_C0_CORERESET_PF_C0_0_CORERESET_PF   -   Actel:DirectCore:CORERESET_PF:2.1.100
CORERESET_PF_C0_CORERESET_PF_C0_0_CORERESET_PF CORERESET_PF_C0_0(
        // Inputs
        .CLK            ( CLK ),
        .EXT_RST_N      ( EXT_RST_N ),
        .PLL_LOCK       ( PLL_LOCK ),
        .SS_BUSY        ( SS_BUSY ),
        .INIT_DONE      ( INIT_DONE ),
        .FF_US_RESTORE  ( FF_US_RESTORE ),
        // Outputs
        .FABRIC_RESET_N ( FABRIC_RESET_N_net_0 ) 
        );


endmodule
