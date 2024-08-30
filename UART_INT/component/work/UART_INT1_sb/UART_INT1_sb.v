//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Thu Aug 22 15:21:35 2024
// Version: 2024.1 2024.1.0.3
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

// UART_INT1_sb
module UART_INT1_sb(
    // Inputs
    DEVRST_N,
    FAB_RESET_N,
    GPIO_IN,
    RX,
    // Outputs
    FAB_CCC_GL0,
    FAB_CCC_LOCK,
    GPIO_OE,
    GPIO_OUT,
    INIT_DONE,
    INT,
    MSS_READY,
    POWER_ON_RESET_N,
    RCOSC_25_50MHZ_O2F,
    TX
);

//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input        DEVRST_N;
input        FAB_RESET_N;
input  [0:0] GPIO_IN;
input        RX;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output       FAB_CCC_GL0;
output       FAB_CCC_LOCK;
output [0:0] GPIO_OE;
output [0:0] GPIO_OUT;
output       INIT_DONE;
output [0:0] INT;
output       MSS_READY;
output       POWER_ON_RESET_N;
output       RCOSC_25_50MHZ_O2F;
output       TX;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire          CoreAPB3_0_APBmslave0_PENABLE;
wire          CoreAPB3_0_APBmslave0_PREADY;
wire          CoreAPB3_0_APBmslave0_PSELx;
wire          CoreAPB3_0_APBmslave0_PSLVERR;
wire          CoreAPB3_0_APBmslave0_PWRITE;
wire          CoreAPB3_0_APBmslave1_PREADY;
wire          CoreAPB3_0_APBmslave1_PSELx;
wire          CoreAPB3_0_APBmslave1_PSLVERR;
wire          CORERESETP_0_RESET_N_F2M;
wire          CoreUARTapb_0_0_FRAMING_ERR;
wire          CoreUARTapb_0_0_intr_or_0_Y;
wire          CoreUARTapb_0_0_intr_or_1_Y;
wire          CoreUARTapb_0_0_intr_or_2_Y;
wire          CoreUARTapb_0_0_OVERFLOW;
wire          CoreUARTapb_0_0_PARITY_ERR;
wire          CoreUARTapb_0_0_RXRDY;
wire          CoreUARTapb_0_0_TXRDY;
wire          DEVRST_N;
wire          FAB_CCC_GL0_net_0;
wire          FAB_CCC_LOCK_net_0;
wire          FAB_RESET_N;
wire          FABOSC_0_RCOSC_25_50MHZ_CCC_OUT_RCOSC_25_50MHZ_CCC;
wire   [0:0]  GPIO_IN;
wire   [0:0]  GPIO_OE_net_0;
wire   [0:0]  GPIO_OUT_net_0;
wire          INIT_DONE_net_0;
wire   [0:0]  INT_net_0;
wire          MSS_READY_net_0;
wire          POWER_ON_RESET_N_net_0;
wire          RCOSC_25_50MHZ_O2F_net_0;
wire          RX;
wire          TX_net_0;
wire   [31:0] UART_INT1_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR;
wire          UART_INT1_sb_MSS_TMP_0_FIC_0_APB_MASTER_PENABLE;
wire   [31:0] UART_INT1_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA;
wire          UART_INT1_sb_MSS_TMP_0_FIC_0_APB_MASTER_PREADY;
wire          UART_INT1_sb_MSS_TMP_0_FIC_0_APB_MASTER_PSELx;
wire          UART_INT1_sb_MSS_TMP_0_FIC_0_APB_MASTER_PSLVERR;
wire   [31:0] UART_INT1_sb_MSS_TMP_0_FIC_0_APB_MASTER_PWDATA;
wire          UART_INT1_sb_MSS_TMP_0_FIC_0_APB_MASTER_PWRITE;
wire          UART_INT1_sb_MSS_TMP_0_FIC_2_APB_M_PRESET_N;
wire          UART_INT1_sb_MSS_TMP_0_MSS_RESET_N_M2F;
wire          POWER_ON_RESET_N_net_1;
wire          INIT_DONE_net_1;
wire          RCOSC_25_50MHZ_O2F_net_1;
wire          FAB_CCC_GL0_net_1;
wire          FAB_CCC_LOCK_net_1;
wire          MSS_READY_net_1;
wire   [0:0]  INT_net_1;
wire   [0:0]  GPIO_OUT_net_1;
wire   [0:0]  GPIO_OE_net_1;
wire          TX_net_1;
wire   [15:0] MSS_INT_F2M_net_0;
//--------------------------------------------------------------------
// TiedOff Nets
//--------------------------------------------------------------------
wire          VCC_net;
wire          GND_net;
wire   [7:2]  PADDR_const_net_0;
wire   [7:0]  PWDATA_const_net_0;
wire   [31:0] IADDR_const_net_0;
wire   [31:0] SDIF0_PRDATA_const_net_0;
wire   [31:0] SDIF1_PRDATA_const_net_0;
wire   [31:0] SDIF2_PRDATA_const_net_0;
wire   [31:0] SDIF3_PRDATA_const_net_0;
wire   [31:0] PRDATAS2_const_net_0;
wire   [31:0] PRDATAS3_const_net_0;
wire   [31:0] PRDATAS4_const_net_0;
wire   [31:0] PRDATAS5_const_net_0;
wire   [31:0] PRDATAS6_const_net_0;
wire   [31:0] PRDATAS7_const_net_0;
wire   [31:0] PRDATAS8_const_net_0;
wire   [31:0] PRDATAS9_const_net_0;
wire   [31:0] PRDATAS10_const_net_0;
wire   [31:0] PRDATAS11_const_net_0;
wire   [31:0] PRDATAS12_const_net_0;
wire   [31:0] PRDATAS13_const_net_0;
wire   [31:0] PRDATAS14_const_net_0;
wire   [31:0] PRDATAS15_const_net_0;
wire   [31:0] PRDATAS16_const_net_0;
wire   [31:0] FIC_2_APB_M_PRDATA_const_net_0;
//--------------------------------------------------------------------
// Bus Interface Nets Declarations - Unequal Pin Widths
//--------------------------------------------------------------------
wire   [31:0] CoreAPB3_0_APBmslave0_PADDR;
wire   [4:0]  CoreAPB3_0_APBmslave0_PADDR_0;
wire   [4:0]  CoreAPB3_0_APBmslave0_PADDR_0_4to0;
wire   [7:0]  CoreAPB3_0_APBmslave0_PADDR_1;
wire   [7:0]  CoreAPB3_0_APBmslave0_PADDR_1_7to0;
wire   [7:0]  CoreAPB3_0_APBmslave0_PRDATA;
wire   [31:0] CoreAPB3_0_APBmslave0_PRDATA_0;
wire   [31:8] CoreAPB3_0_APBmslave0_PRDATA_0_31to8;
wire   [7:0]  CoreAPB3_0_APBmslave0_PRDATA_0_7to0;
wire   [31:0] CoreAPB3_0_APBmslave0_PWDATA;
wire   [7:0]  CoreAPB3_0_APBmslave0_PWDATA_0;
wire   [7:0]  CoreAPB3_0_APBmslave0_PWDATA_0_7to0;
wire   [7:0]  CoreAPB3_0_APBmslave0_PWDATA_1;
wire   [7:0]  CoreAPB3_0_APBmslave0_PWDATA_1_7to0;
wire   [7:0]  CoreAPB3_0_APBmslave1_PRDATA;
wire   [31:0] CoreAPB3_0_APBmslave1_PRDATA_0;
wire   [31:8] CoreAPB3_0_APBmslave1_PRDATA_0_31to8;
wire   [7:0]  CoreAPB3_0_APBmslave1_PRDATA_0_7to0;
//--------------------------------------------------------------------
// Constant assignments
//--------------------------------------------------------------------
assign VCC_net                        = 1'b1;
assign GND_net                        = 1'b0;
assign PADDR_const_net_0              = 6'h00;
assign PWDATA_const_net_0             = 8'h00;
assign IADDR_const_net_0              = 32'h00000000;
assign SDIF0_PRDATA_const_net_0       = 32'h00000000;
assign SDIF1_PRDATA_const_net_0       = 32'h00000000;
assign SDIF2_PRDATA_const_net_0       = 32'h00000000;
assign SDIF3_PRDATA_const_net_0       = 32'h00000000;
assign PRDATAS2_const_net_0           = 32'h00000000;
assign PRDATAS3_const_net_0           = 32'h00000000;
assign PRDATAS4_const_net_0           = 32'h00000000;
assign PRDATAS5_const_net_0           = 32'h00000000;
assign PRDATAS6_const_net_0           = 32'h00000000;
assign PRDATAS7_const_net_0           = 32'h00000000;
assign PRDATAS8_const_net_0           = 32'h00000000;
assign PRDATAS9_const_net_0           = 32'h00000000;
assign PRDATAS10_const_net_0          = 32'h00000000;
assign PRDATAS11_const_net_0          = 32'h00000000;
assign PRDATAS12_const_net_0          = 32'h00000000;
assign PRDATAS13_const_net_0          = 32'h00000000;
assign PRDATAS14_const_net_0          = 32'h00000000;
assign PRDATAS15_const_net_0          = 32'h00000000;
assign PRDATAS16_const_net_0          = 32'h00000000;
assign FIC_2_APB_M_PRDATA_const_net_0 = 32'h00000000;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign POWER_ON_RESET_N_net_1   = POWER_ON_RESET_N_net_0;
assign POWER_ON_RESET_N         = POWER_ON_RESET_N_net_1;
assign INIT_DONE_net_1          = INIT_DONE_net_0;
assign INIT_DONE                = INIT_DONE_net_1;
assign RCOSC_25_50MHZ_O2F_net_1 = RCOSC_25_50MHZ_O2F_net_0;
assign RCOSC_25_50MHZ_O2F       = RCOSC_25_50MHZ_O2F_net_1;
assign FAB_CCC_GL0_net_1        = FAB_CCC_GL0_net_0;
assign FAB_CCC_GL0              = FAB_CCC_GL0_net_1;
assign FAB_CCC_LOCK_net_1       = FAB_CCC_LOCK_net_0;
assign FAB_CCC_LOCK             = FAB_CCC_LOCK_net_1;
assign MSS_READY_net_1          = MSS_READY_net_0;
assign MSS_READY                = MSS_READY_net_1;
assign INT_net_1[0]             = INT_net_0[0];
assign INT[0:0]                 = INT_net_1[0];
assign GPIO_OUT_net_1[0]        = GPIO_OUT_net_0[0];
assign GPIO_OUT[0:0]            = GPIO_OUT_net_1[0];
assign GPIO_OE_net_1[0]         = GPIO_OE_net_0[0];
assign GPIO_OE[0:0]             = GPIO_OE_net_1[0];
assign TX_net_1                 = TX_net_0;
assign TX                       = TX_net_1;
//--------------------------------------------------------------------
// Concatenation assignments
//--------------------------------------------------------------------
assign MSS_INT_F2M_net_0 = { 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , CoreUARTapb_0_0_intr_or_2_Y };
//--------------------------------------------------------------------
// Bus Interface Nets Assignments - Unequal Pin Widths
//--------------------------------------------------------------------
assign CoreAPB3_0_APBmslave0_PADDR_0 = { CoreAPB3_0_APBmslave0_PADDR_0_4to0 };
assign CoreAPB3_0_APBmslave0_PADDR_0_4to0 = CoreAPB3_0_APBmslave0_PADDR[4:0];
assign CoreAPB3_0_APBmslave0_PADDR_1 = { CoreAPB3_0_APBmslave0_PADDR_1_7to0 };
assign CoreAPB3_0_APBmslave0_PADDR_1_7to0 = CoreAPB3_0_APBmslave0_PADDR[7:0];

assign CoreAPB3_0_APBmslave0_PRDATA_0 = { CoreAPB3_0_APBmslave0_PRDATA_0_31to8, CoreAPB3_0_APBmslave0_PRDATA_0_7to0 };
assign CoreAPB3_0_APBmslave0_PRDATA_0_31to8 = 24'h0;
assign CoreAPB3_0_APBmslave0_PRDATA_0_7to0 = CoreAPB3_0_APBmslave0_PRDATA[7:0];

assign CoreAPB3_0_APBmslave0_PWDATA_0 = { CoreAPB3_0_APBmslave0_PWDATA_0_7to0 };
assign CoreAPB3_0_APBmslave0_PWDATA_0_7to0 = CoreAPB3_0_APBmslave0_PWDATA[7:0];
assign CoreAPB3_0_APBmslave0_PWDATA_1 = { CoreAPB3_0_APBmslave0_PWDATA_1_7to0 };
assign CoreAPB3_0_APBmslave0_PWDATA_1_7to0 = CoreAPB3_0_APBmslave0_PWDATA[7:0];

assign CoreAPB3_0_APBmslave1_PRDATA_0 = { CoreAPB3_0_APBmslave1_PRDATA_0_31to8, CoreAPB3_0_APBmslave1_PRDATA_0_7to0 };
assign CoreAPB3_0_APBmslave1_PRDATA_0_31to8 = 24'h0;
assign CoreAPB3_0_APBmslave1_PRDATA_0_7to0 = CoreAPB3_0_APBmslave1_PRDATA[7:0];

//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------UART_INT1_sb_CCC_0_FCCC   -   Actel:SgCore:FCCC:2.0.201
UART_INT1_sb_CCC_0_FCCC CCC_0(
        // Inputs
        .RCOSC_25_50MHZ ( FABOSC_0_RCOSC_25_50MHZ_CCC_OUT_RCOSC_25_50MHZ_CCC ),
        // Outputs
        .GL0            ( FAB_CCC_GL0_net_0 ),
        .LOCK           ( FAB_CCC_LOCK_net_0 ) 
        );

//--------CoreAPB3   -   Actel:DirectCore:CoreAPB3:4.1.100
CoreAPB3 #( 
        .APB_DWIDTH      ( 32 ),
        .APBSLOT0ENABLE  ( 1 ),
        .APBSLOT1ENABLE  ( 1 ),
        .APBSLOT2ENABLE  ( 0 ),
        .APBSLOT3ENABLE  ( 0 ),
        .APBSLOT4ENABLE  ( 0 ),
        .APBSLOT5ENABLE  ( 0 ),
        .APBSLOT6ENABLE  ( 0 ),
        .APBSLOT7ENABLE  ( 0 ),
        .APBSLOT8ENABLE  ( 0 ),
        .APBSLOT9ENABLE  ( 0 ),
        .APBSLOT10ENABLE ( 0 ),
        .APBSLOT11ENABLE ( 0 ),
        .APBSLOT12ENABLE ( 0 ),
        .APBSLOT13ENABLE ( 0 ),
        .APBSLOT14ENABLE ( 0 ),
        .APBSLOT15ENABLE ( 0 ),
        .FAMILY          ( 19 ),
        .IADDR_OPTION    ( 0 ),
        .MADDR_BITS      ( 16 ),
        .SC_0            ( 0 ),
        .SC_1            ( 0 ),
        .SC_2            ( 0 ),
        .SC_3            ( 0 ),
        .SC_4            ( 0 ),
        .SC_5            ( 0 ),
        .SC_6            ( 0 ),
        .SC_7            ( 0 ),
        .SC_8            ( 0 ),
        .SC_9            ( 0 ),
        .SC_10           ( 0 ),
        .SC_11           ( 0 ),
        .SC_12           ( 0 ),
        .SC_13           ( 0 ),
        .SC_14           ( 0 ),
        .SC_15           ( 0 ),
        .UPR_NIBBLE_POSN ( 3 ) )
CoreAPB3_0(
        // Inputs
        .PRESETN    ( GND_net ), // tied to 1'b0 from definition
        .PCLK       ( GND_net ), // tied to 1'b0 from definition
        .PADDR      ( UART_INT1_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR ),
        .PWRITE     ( UART_INT1_sb_MSS_TMP_0_FIC_0_APB_MASTER_PWRITE ),
        .PENABLE    ( UART_INT1_sb_MSS_TMP_0_FIC_0_APB_MASTER_PENABLE ),
        .PWDATA     ( UART_INT1_sb_MSS_TMP_0_FIC_0_APB_MASTER_PWDATA ),
        .PSEL       ( UART_INT1_sb_MSS_TMP_0_FIC_0_APB_MASTER_PSELx ),
        .PRDATAS0   ( CoreAPB3_0_APBmslave0_PRDATA_0 ),
        .PREADYS0   ( CoreAPB3_0_APBmslave0_PREADY ),
        .PSLVERRS0  ( CoreAPB3_0_APBmslave0_PSLVERR ),
        .PRDATAS1   ( CoreAPB3_0_APBmslave1_PRDATA_0 ),
        .PREADYS1   ( CoreAPB3_0_APBmslave1_PREADY ),
        .PSLVERRS1  ( CoreAPB3_0_APBmslave1_PSLVERR ),
        .PRDATAS2   ( PRDATAS2_const_net_0 ), // tied to 32'h00000000 from definition
        .PREADYS2   ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS2  ( GND_net ), // tied to 1'b0 from definition
        .PRDATAS3   ( PRDATAS3_const_net_0 ), // tied to 32'h00000000 from definition
        .PREADYS3   ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS3  ( GND_net ), // tied to 1'b0 from definition
        .PRDATAS4   ( PRDATAS4_const_net_0 ), // tied to 32'h00000000 from definition
        .PREADYS4   ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS4  ( GND_net ), // tied to 1'b0 from definition
        .PRDATAS5   ( PRDATAS5_const_net_0 ), // tied to 32'h00000000 from definition
        .PREADYS5   ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS5  ( GND_net ), // tied to 1'b0 from definition
        .PRDATAS6   ( PRDATAS6_const_net_0 ), // tied to 32'h00000000 from definition
        .PREADYS6   ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS6  ( GND_net ), // tied to 1'b0 from definition
        .PRDATAS7   ( PRDATAS7_const_net_0 ), // tied to 32'h00000000 from definition
        .PREADYS7   ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS7  ( GND_net ), // tied to 1'b0 from definition
        .PRDATAS8   ( PRDATAS8_const_net_0 ), // tied to 32'h00000000 from definition
        .PREADYS8   ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS8  ( GND_net ), // tied to 1'b0 from definition
        .PRDATAS9   ( PRDATAS9_const_net_0 ), // tied to 32'h00000000 from definition
        .PREADYS9   ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS9  ( GND_net ), // tied to 1'b0 from definition
        .PRDATAS10  ( PRDATAS10_const_net_0 ), // tied to 32'h00000000 from definition
        .PREADYS10  ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS10 ( GND_net ), // tied to 1'b0 from definition
        .PRDATAS11  ( PRDATAS11_const_net_0 ), // tied to 32'h00000000 from definition
        .PREADYS11  ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS11 ( GND_net ), // tied to 1'b0 from definition
        .PRDATAS12  ( PRDATAS12_const_net_0 ), // tied to 32'h00000000 from definition
        .PREADYS12  ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS12 ( GND_net ), // tied to 1'b0 from definition
        .PRDATAS13  ( PRDATAS13_const_net_0 ), // tied to 32'h00000000 from definition
        .PREADYS13  ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS13 ( GND_net ), // tied to 1'b0 from definition
        .PRDATAS14  ( PRDATAS14_const_net_0 ), // tied to 32'h00000000 from definition
        .PREADYS14  ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS14 ( GND_net ), // tied to 1'b0 from definition
        .PRDATAS15  ( PRDATAS15_const_net_0 ), // tied to 32'h00000000 from definition
        .PREADYS15  ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS15 ( GND_net ), // tied to 1'b0 from definition
        .PRDATAS16  ( PRDATAS16_const_net_0 ), // tied to 32'h00000000 from definition
        .PREADYS16  ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS16 ( GND_net ), // tied to 1'b0 from definition
        .IADDR      ( IADDR_const_net_0 ), // tied to 32'h00000000 from definition
        // Outputs
        .PRDATA     ( UART_INT1_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA ),
        .PREADY     ( UART_INT1_sb_MSS_TMP_0_FIC_0_APB_MASTER_PREADY ),
        .PSLVERR    ( UART_INT1_sb_MSS_TMP_0_FIC_0_APB_MASTER_PSLVERR ),
        .PADDRS     ( CoreAPB3_0_APBmslave0_PADDR ),
        .PWRITES    ( CoreAPB3_0_APBmslave0_PWRITE ),
        .PENABLES   ( CoreAPB3_0_APBmslave0_PENABLE ),
        .PWDATAS    ( CoreAPB3_0_APBmslave0_PWDATA ),
        .PSELS0     ( CoreAPB3_0_APBmslave0_PSELx ),
        .PSELS1     ( CoreAPB3_0_APBmslave1_PSELx ),
        .PSELS2     (  ),
        .PSELS3     (  ),
        .PSELS4     (  ),
        .PSELS5     (  ),
        .PSELS6     (  ),
        .PSELS7     (  ),
        .PSELS8     (  ),
        .PSELS9     (  ),
        .PSELS10    (  ),
        .PSELS11    (  ),
        .PSELS12    (  ),
        .PSELS13    (  ),
        .PSELS14    (  ),
        .PSELS15    (  ),
        .PSELS16    (  ) 
        );

//--------CoreGPIO   -   Actel:DirectCore:CoreGPIO:3.0.120
CoreGPIO #( 
        .APB_WIDTH       ( 8 ),
        .FAMILY          ( 11 ),
        .FIXED_CONFIG_0  ( 1 ),
        .FIXED_CONFIG_1  ( 0 ),
        .FIXED_CONFIG_2  ( 0 ),
        .FIXED_CONFIG_3  ( 0 ),
        .FIXED_CONFIG_4  ( 0 ),
        .FIXED_CONFIG_5  ( 0 ),
        .FIXED_CONFIG_6  ( 0 ),
        .FIXED_CONFIG_7  ( 0 ),
        .FIXED_CONFIG_8  ( 0 ),
        .FIXED_CONFIG_9  ( 0 ),
        .FIXED_CONFIG_10 ( 0 ),
        .FIXED_CONFIG_11 ( 0 ),
        .FIXED_CONFIG_12 ( 0 ),
        .FIXED_CONFIG_13 ( 0 ),
        .FIXED_CONFIG_14 ( 0 ),
        .FIXED_CONFIG_15 ( 0 ),
        .FIXED_CONFIG_16 ( 0 ),
        .FIXED_CONFIG_17 ( 0 ),
        .FIXED_CONFIG_18 ( 0 ),
        .FIXED_CONFIG_19 ( 0 ),
        .FIXED_CONFIG_20 ( 0 ),
        .FIXED_CONFIG_21 ( 0 ),
        .FIXED_CONFIG_22 ( 0 ),
        .FIXED_CONFIG_23 ( 0 ),
        .FIXED_CONFIG_24 ( 0 ),
        .FIXED_CONFIG_25 ( 0 ),
        .FIXED_CONFIG_26 ( 0 ),
        .FIXED_CONFIG_27 ( 0 ),
        .FIXED_CONFIG_28 ( 0 ),
        .FIXED_CONFIG_29 ( 0 ),
        .FIXED_CONFIG_30 ( 0 ),
        .FIXED_CONFIG_31 ( 0 ),
        .INT_BUS         ( 0 ),
        .IO_INT_TYPE_0   ( 7 ),
        .IO_INT_TYPE_1   ( 7 ),
        .IO_INT_TYPE_2   ( 7 ),
        .IO_INT_TYPE_3   ( 7 ),
        .IO_INT_TYPE_4   ( 7 ),
        .IO_INT_TYPE_5   ( 7 ),
        .IO_INT_TYPE_6   ( 7 ),
        .IO_INT_TYPE_7   ( 7 ),
        .IO_INT_TYPE_8   ( 7 ),
        .IO_INT_TYPE_9   ( 7 ),
        .IO_INT_TYPE_10  ( 7 ),
        .IO_INT_TYPE_11  ( 7 ),
        .IO_INT_TYPE_12  ( 7 ),
        .IO_INT_TYPE_13  ( 7 ),
        .IO_INT_TYPE_14  ( 7 ),
        .IO_INT_TYPE_15  ( 7 ),
        .IO_INT_TYPE_16  ( 7 ),
        .IO_INT_TYPE_17  ( 7 ),
        .IO_INT_TYPE_18  ( 7 ),
        .IO_INT_TYPE_19  ( 7 ),
        .IO_INT_TYPE_20  ( 7 ),
        .IO_INT_TYPE_21  ( 7 ),
        .IO_INT_TYPE_22  ( 7 ),
        .IO_INT_TYPE_23  ( 7 ),
        .IO_INT_TYPE_24  ( 7 ),
        .IO_INT_TYPE_25  ( 7 ),
        .IO_INT_TYPE_26  ( 7 ),
        .IO_INT_TYPE_27  ( 7 ),
        .IO_INT_TYPE_28  ( 7 ),
        .IO_INT_TYPE_29  ( 7 ),
        .IO_INT_TYPE_30  ( 7 ),
        .IO_INT_TYPE_31  ( 7 ),
        .IO_NUM          ( 1 ),
        .IO_TYPE_0       ( 1 ),
        .IO_TYPE_1       ( 0 ),
        .IO_TYPE_2       ( 0 ),
        .IO_TYPE_3       ( 0 ),
        .IO_TYPE_4       ( 0 ),
        .IO_TYPE_5       ( 0 ),
        .IO_TYPE_6       ( 0 ),
        .IO_TYPE_7       ( 0 ),
        .IO_TYPE_8       ( 0 ),
        .IO_TYPE_9       ( 0 ),
        .IO_TYPE_10      ( 0 ),
        .IO_TYPE_11      ( 0 ),
        .IO_TYPE_12      ( 0 ),
        .IO_TYPE_13      ( 0 ),
        .IO_TYPE_14      ( 0 ),
        .IO_TYPE_15      ( 0 ),
        .IO_TYPE_16      ( 0 ),
        .IO_TYPE_17      ( 0 ),
        .IO_TYPE_18      ( 0 ),
        .IO_TYPE_19      ( 0 ),
        .IO_TYPE_20      ( 0 ),
        .IO_TYPE_21      ( 0 ),
        .IO_TYPE_22      ( 0 ),
        .IO_TYPE_23      ( 0 ),
        .IO_TYPE_24      ( 0 ),
        .IO_TYPE_25      ( 0 ),
        .IO_TYPE_26      ( 0 ),
        .IO_TYPE_27      ( 0 ),
        .IO_TYPE_28      ( 0 ),
        .IO_TYPE_29      ( 0 ),
        .IO_TYPE_30      ( 0 ),
        .IO_TYPE_31      ( 0 ),
        .IO_VAL_0        ( 0 ),
        .IO_VAL_1        ( 0 ),
        .IO_VAL_2        ( 0 ),
        .IO_VAL_3        ( 0 ),
        .IO_VAL_4        ( 0 ),
        .IO_VAL_5        ( 0 ),
        .IO_VAL_6        ( 0 ),
        .IO_VAL_7        ( 0 ),
        .IO_VAL_8        ( 0 ),
        .IO_VAL_9        ( 0 ),
        .IO_VAL_10       ( 0 ),
        .IO_VAL_11       ( 0 ),
        .IO_VAL_12       ( 0 ),
        .IO_VAL_13       ( 0 ),
        .IO_VAL_14       ( 0 ),
        .IO_VAL_15       ( 0 ),
        .IO_VAL_16       ( 0 ),
        .IO_VAL_17       ( 0 ),
        .IO_VAL_18       ( 0 ),
        .IO_VAL_19       ( 0 ),
        .IO_VAL_20       ( 0 ),
        .IO_VAL_21       ( 0 ),
        .IO_VAL_22       ( 0 ),
        .IO_VAL_23       ( 0 ),
        .IO_VAL_24       ( 0 ),
        .IO_VAL_25       ( 0 ),
        .IO_VAL_26       ( 0 ),
        .IO_VAL_27       ( 0 ),
        .IO_VAL_28       ( 0 ),
        .IO_VAL_29       ( 0 ),
        .IO_VAL_30       ( 0 ),
        .IO_VAL_31       ( 0 ),
        .OE_TYPE         ( 0 ) )
CoreGPIO_0_0(
        // Inputs
        .PRESETN  ( MSS_READY_net_0 ),
        .PCLK     ( FAB_CCC_GL0_net_0 ),
        .PSEL     ( CoreAPB3_0_APBmslave1_PSELx ),
        .PENABLE  ( CoreAPB3_0_APBmslave0_PENABLE ),
        .PWRITE   ( CoreAPB3_0_APBmslave0_PWRITE ),
        .PADDR    ( CoreAPB3_0_APBmslave0_PADDR_1 ),
        .PWDATA   ( CoreAPB3_0_APBmslave0_PWDATA_1 ),
        .GPIO_IN  ( GPIO_IN ),
        // Outputs
        .PSLVERR  ( CoreAPB3_0_APBmslave1_PSLVERR ),
        .PREADY   ( CoreAPB3_0_APBmslave1_PREADY ),
        .PRDATA   ( CoreAPB3_0_APBmslave1_PRDATA ),
        .INT      ( INT_net_0 ),
        .INT_OR   (  ),
        .GPIO_OUT ( GPIO_OUT_net_0 ),
        .GPIO_OE  ( GPIO_OE_net_0 ) 
        );

//--------CoreResetP   -   Actel:DirectCore:CoreResetP:7.1.100
CoreResetP #( 
        .DDR_WAIT            ( 200 ),
        .DEVICE_090          ( 0 ),
        .DEVICE_VOLTAGE      ( 2 ),
        .ENABLE_SOFT_RESETS  ( 0 ),
        .EXT_RESET_CFG       ( 0 ),
        .FDDR_IN_USE         ( 0 ),
        .MDDR_IN_USE         ( 0 ),
        .SDIF0_IN_USE        ( 0 ),
        .SDIF0_PCIE          ( 0 ),
        .SDIF0_PCIE_HOTRESET ( 1 ),
        .SDIF0_PCIE_L2P2     ( 1 ),
        .SDIF1_IN_USE        ( 0 ),
        .SDIF1_PCIE          ( 0 ),
        .SDIF1_PCIE_HOTRESET ( 1 ),
        .SDIF1_PCIE_L2P2     ( 1 ),
        .SDIF2_IN_USE        ( 0 ),
        .SDIF2_PCIE          ( 0 ),
        .SDIF2_PCIE_HOTRESET ( 1 ),
        .SDIF2_PCIE_L2P2     ( 1 ),
        .SDIF3_IN_USE        ( 0 ),
        .SDIF3_PCIE          ( 0 ),
        .SDIF3_PCIE_HOTRESET ( 1 ),
        .SDIF3_PCIE_L2P2     ( 1 ) )
CORERESETP_0(
        // Inputs
        .RESET_N_M2F                    ( UART_INT1_sb_MSS_TMP_0_MSS_RESET_N_M2F ),
        .FIC_2_APB_M_PRESET_N           ( UART_INT1_sb_MSS_TMP_0_FIC_2_APB_M_PRESET_N ),
        .POWER_ON_RESET_N               ( POWER_ON_RESET_N_net_0 ),
        .FAB_RESET_N                    ( FAB_RESET_N ),
        .RCOSC_25_50MHZ                 ( RCOSC_25_50MHZ_O2F_net_0 ),
        .CLK_BASE                       ( FAB_CCC_GL0_net_0 ),
        .CLK_LTSSM                      ( GND_net ), // tied to 1'b0 from definition
        .FPLL_LOCK                      ( VCC_net ), // tied to 1'b1 from definition
        .SDIF0_SPLL_LOCK                ( VCC_net ), // tied to 1'b1 from definition
        .SDIF1_SPLL_LOCK                ( VCC_net ), // tied to 1'b1 from definition
        .SDIF2_SPLL_LOCK                ( VCC_net ), // tied to 1'b1 from definition
        .SDIF3_SPLL_LOCK                ( VCC_net ), // tied to 1'b1 from definition
        .CONFIG1_DONE                   ( VCC_net ),
        .CONFIG2_DONE                   ( VCC_net ),
        .SDIF0_PERST_N                  ( VCC_net ), // tied to 1'b1 from definition
        .SDIF1_PERST_N                  ( VCC_net ), // tied to 1'b1 from definition
        .SDIF2_PERST_N                  ( VCC_net ), // tied to 1'b1 from definition
        .SDIF3_PERST_N                  ( VCC_net ), // tied to 1'b1 from definition
        .SDIF0_PSEL                     ( GND_net ), // tied to 1'b0 from definition
        .SDIF0_PWRITE                   ( VCC_net ), // tied to 1'b1 from definition
        .SDIF0_PRDATA                   ( SDIF0_PRDATA_const_net_0 ), // tied to 32'h00000000 from definition
        .SDIF1_PSEL                     ( GND_net ), // tied to 1'b0 from definition
        .SDIF1_PWRITE                   ( VCC_net ), // tied to 1'b1 from definition
        .SDIF1_PRDATA                   ( SDIF1_PRDATA_const_net_0 ), // tied to 32'h00000000 from definition
        .SDIF2_PSEL                     ( GND_net ), // tied to 1'b0 from definition
        .SDIF2_PWRITE                   ( VCC_net ), // tied to 1'b1 from definition
        .SDIF2_PRDATA                   ( SDIF2_PRDATA_const_net_0 ), // tied to 32'h00000000 from definition
        .SDIF3_PSEL                     ( GND_net ), // tied to 1'b0 from definition
        .SDIF3_PWRITE                   ( VCC_net ), // tied to 1'b1 from definition
        .SDIF3_PRDATA                   ( SDIF3_PRDATA_const_net_0 ), // tied to 32'h00000000 from definition
        .SOFT_EXT_RESET_OUT             ( GND_net ), // tied to 1'b0 from definition
        .SOFT_RESET_F2M                 ( GND_net ), // tied to 1'b0 from definition
        .SOFT_M3_RESET                  ( GND_net ), // tied to 1'b0 from definition
        .SOFT_MDDR_DDR_AXI_S_CORE_RESET ( GND_net ), // tied to 1'b0 from definition
        .SOFT_FDDR_CORE_RESET           ( GND_net ), // tied to 1'b0 from definition
        .SOFT_SDIF0_PHY_RESET           ( GND_net ), // tied to 1'b0 from definition
        .SOFT_SDIF0_CORE_RESET          ( GND_net ), // tied to 1'b0 from definition
        .SOFT_SDIF0_0_CORE_RESET        ( GND_net ), // tied to 1'b0 from definition
        .SOFT_SDIF0_1_CORE_RESET        ( GND_net ), // tied to 1'b0 from definition
        .SOFT_SDIF1_PHY_RESET           ( GND_net ), // tied to 1'b0 from definition
        .SOFT_SDIF1_CORE_RESET          ( GND_net ), // tied to 1'b0 from definition
        .SOFT_SDIF2_PHY_RESET           ( GND_net ), // tied to 1'b0 from definition
        .SOFT_SDIF2_CORE_RESET          ( GND_net ), // tied to 1'b0 from definition
        .SOFT_SDIF3_PHY_RESET           ( GND_net ), // tied to 1'b0 from definition
        .SOFT_SDIF3_CORE_RESET          ( GND_net ), // tied to 1'b0 from definition
        // Outputs
        .MSS_HPMS_READY                 ( MSS_READY_net_0 ),
        .DDR_READY                      (  ),
        .SDIF_READY                     (  ),
        .RESET_N_F2M                    ( CORERESETP_0_RESET_N_F2M ),
        .M3_RESET_N                     (  ),
        .EXT_RESET_OUT                  (  ),
        .MDDR_DDR_AXI_S_CORE_RESET_N    (  ),
        .FDDR_CORE_RESET_N              (  ),
        .SDIF0_CORE_RESET_N             (  ),
        .SDIF0_0_CORE_RESET_N           (  ),
        .SDIF0_1_CORE_RESET_N           (  ),
        .SDIF0_PHY_RESET_N              (  ),
        .SDIF1_CORE_RESET_N             (  ),
        .SDIF1_PHY_RESET_N              (  ),
        .SDIF2_CORE_RESET_N             (  ),
        .SDIF2_PHY_RESET_N              (  ),
        .SDIF3_CORE_RESET_N             (  ),
        .SDIF3_PHY_RESET_N              (  ),
        .SDIF_RELEASED                  (  ),
        .INIT_DONE                      ( INIT_DONE_net_0 ) 
        );

//--------UART_INT1_sb_CoreUARTapb_0_0_CoreUARTapb   -   Actel:DirectCore:CoreUARTapb:5.2.2
UART_INT1_sb_CoreUARTapb_0_0_CoreUARTapb #( 
        .BAUD_VAL_FRCTN    ( 0 ),
        .BAUD_VAL_FRCTN_EN ( 0 ),
        .BAUD_VALUE        ( 1 ),
        .FAMILY            ( 19 ),
        .FIXEDMODE         ( 0 ),
        .PRG_BIT8          ( 0 ),
        .PRG_PARITY        ( 0 ),
        .RX_FIFO           ( 1 ),
        .RX_LEGACY_MODE    ( 0 ),
        .TX_FIFO           ( 1 ) )
CoreUARTapb_0_0(
        // Inputs
        .PCLK        ( FAB_CCC_GL0_net_0 ),
        .PRESETN     ( MSS_READY_net_0 ),
        .PADDR       ( CoreAPB3_0_APBmslave0_PADDR_0 ),
        .PSEL        ( CoreAPB3_0_APBmslave0_PSELx ),
        .PENABLE     ( CoreAPB3_0_APBmslave0_PENABLE ),
        .PWRITE      ( CoreAPB3_0_APBmslave0_PWRITE ),
        .PWDATA      ( CoreAPB3_0_APBmslave0_PWDATA_0 ),
        .RX          ( RX ),
        // Outputs
        .PRDATA      ( CoreAPB3_0_APBmslave0_PRDATA ),
        .TXRDY       ( CoreUARTapb_0_0_TXRDY ),
        .RXRDY       ( CoreUARTapb_0_0_RXRDY ),
        .PARITY_ERR  ( CoreUARTapb_0_0_PARITY_ERR ),
        .OVERFLOW    ( CoreUARTapb_0_0_OVERFLOW ),
        .TX          ( TX_net_0 ),
        .PREADY      ( CoreAPB3_0_APBmslave0_PREADY ),
        .PSLVERR     ( CoreAPB3_0_APBmslave0_PSLVERR ),
        .FRAMING_ERR ( CoreUARTapb_0_0_FRAMING_ERR ) 
        );

//--------OR3
OR3 CoreUARTapb_0_0_intr_or_0(
        // Inputs
        .A ( CoreUARTapb_0_0_FRAMING_ERR ),
        .B ( CoreUARTapb_0_0_OVERFLOW ),
        .C ( CoreUARTapb_0_0_PARITY_ERR ),
        // Outputs
        .Y ( CoreUARTapb_0_0_intr_or_0_Y ) 
        );

//--------OR3
OR3 CoreUARTapb_0_0_intr_or_1(
        // Inputs
        .A ( CoreUARTapb_0_0_RXRDY ),
        .B ( CoreUARTapb_0_0_TXRDY ),
        .C ( GND_net ),
        // Outputs
        .Y ( CoreUARTapb_0_0_intr_or_1_Y ) 
        );

//--------OR3
OR3 CoreUARTapb_0_0_intr_or_2(
        // Inputs
        .A ( CoreUARTapb_0_0_intr_or_1_Y ),
        .B ( CoreUARTapb_0_0_intr_or_0_Y ),
        .C ( GND_net ),
        // Outputs
        .Y ( CoreUARTapb_0_0_intr_or_2_Y ) 
        );

//--------UART_INT1_sb_FABOSC_0_OSC   -   Actel:SgCore:OSC:2.0.101
UART_INT1_sb_FABOSC_0_OSC FABOSC_0(
        // Inputs
        .XTL                ( GND_net ), // tied to 1'b0 from definition
        // Outputs
        .RCOSC_25_50MHZ_CCC ( FABOSC_0_RCOSC_25_50MHZ_CCC_OUT_RCOSC_25_50MHZ_CCC ),
        .RCOSC_25_50MHZ_O2F ( RCOSC_25_50MHZ_O2F_net_0 ),
        .RCOSC_1MHZ_CCC     (  ),
        .RCOSC_1MHZ_O2F     (  ),
        .XTLOSC_CCC         (  ),
        .XTLOSC_O2F         (  ) 
        );

//--------SYSRESET
SYSRESET SYSRESET_POR(
        // Inputs
        .DEVRST_N         ( DEVRST_N ),
        // Outputs
        .POWER_ON_RESET_N ( POWER_ON_RESET_N_net_0 ) 
        );

//--------UART_INT1_sb_MSS
UART_INT1_sb_MSS UART_INT1_sb_MSS_0(
        // Inputs
        .MCCC_CLK_BASE          ( FAB_CCC_GL0_net_0 ),
        .MCCC_CLK_BASE_PLL_LOCK ( FAB_CCC_LOCK_net_0 ),
        .MSS_RESET_N_F2M        ( CORERESETP_0_RESET_N_F2M ),
        .FIC_0_APB_M_PREADY     ( UART_INT1_sb_MSS_TMP_0_FIC_0_APB_MASTER_PREADY ),
        .FIC_0_APB_M_PSLVERR    ( UART_INT1_sb_MSS_TMP_0_FIC_0_APB_MASTER_PSLVERR ),
        .FIC_2_APB_M_PREADY     ( VCC_net ), // tied to 1'b1 from definition
        .FIC_2_APB_M_PSLVERR    ( GND_net ), // tied to 1'b0 from definition
        .MSS_INT_F2M            ( MSS_INT_F2M_net_0 ),
        .FIC_0_APB_M_PRDATA     ( UART_INT1_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA ),
        .FIC_2_APB_M_PRDATA     ( FIC_2_APB_M_PRDATA_const_net_0 ), // tied to 32'h00000000 from definition
        // Outputs
        .MSS_RESET_N_M2F        ( UART_INT1_sb_MSS_TMP_0_MSS_RESET_N_M2F ),
        .FIC_0_APB_M_PSEL       ( UART_INT1_sb_MSS_TMP_0_FIC_0_APB_MASTER_PSELx ),
        .FIC_0_APB_M_PWRITE     ( UART_INT1_sb_MSS_TMP_0_FIC_0_APB_MASTER_PWRITE ),
        .FIC_0_APB_M_PENABLE    ( UART_INT1_sb_MSS_TMP_0_FIC_0_APB_MASTER_PENABLE ),
        .FIC_2_APB_M_PRESET_N   ( UART_INT1_sb_MSS_TMP_0_FIC_2_APB_M_PRESET_N ),
        .FIC_2_APB_M_PCLK       (  ),
        .FIC_2_APB_M_PWRITE     (  ),
        .FIC_2_APB_M_PENABLE    (  ),
        .FIC_2_APB_M_PSEL       (  ),
        .FIC_0_APB_M_PADDR      ( UART_INT1_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR ),
        .FIC_0_APB_M_PWDATA     ( UART_INT1_sb_MSS_TMP_0_FIC_0_APB_MASTER_PWDATA ),
        .FIC_2_APB_M_PADDR      (  ),
        .FIC_2_APB_M_PWDATA     (  ) 
        );


endmodule
