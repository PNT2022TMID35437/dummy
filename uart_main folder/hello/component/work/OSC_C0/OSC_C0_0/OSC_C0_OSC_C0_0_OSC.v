`timescale 1 ns/100 ps
// Version: 2024.1 2024.1.0.3


module OSC_C0_OSC_C0_0_OSC(
       XTL,
       RCOSC_25_50MHZ_CCC,
       RCOSC_25_50MHZ_O2F,
       RCOSC_1MHZ_CCC,
       RCOSC_1MHZ_O2F,
       XTLOSC_CCC,
       XTLOSC_O2F
    );
input  XTL;
output RCOSC_25_50MHZ_CCC;
output RCOSC_25_50MHZ_O2F;
output RCOSC_1MHZ_CCC;
output RCOSC_1MHZ_O2F;
output XTLOSC_CCC;
output XTLOSC_O2F;

    
    RCOSC_1MHZ I_RCOSC_1MHZ (.CLKOUT(RCOSC_1MHZ_CCC));
    
endmodule
