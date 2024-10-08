// Actel Corporation Proprietary and Confidential
//  Copyright 2008 Actel Corporation.  All rights reserved.
// ANY USE OR REDISTRIBUTION IN PART OR IN WHOLE MUST BE HANDLED IN
// ACCORDANCE WITH THE ACTEL LICENSE AGREEMENT AND MUST BE APPROVED
// IN ADVANCE IN WRITING.
//  Revision Information:
// Jun09    Revision 4.1
// Aug10    Revision 4.2
// SVN Revision Information:
// SVN $Revision: 8508 $
// SVN $Date: 2009-06-15 16:49:49 -0700 (Mon, 15 Jun 2009) $
`timescale 1ns/1ns
module
abfn_uart_1_sb_CoreUARTapb_0_1_CoreUARTapb
(
PCLK
,
PRESETN
,
PADDR
,
PSEL
,
PENABLE
,
PWRITE
,
PWDATA
,
PRDATA
,
PREADY
,
PSLVERR
,
TXRDY
,
RXRDY
,
PARITY_ERR
,
FRAMING_ERR
,
OVERFLOW
,
RX
,
TX
)
;
parameter
FAMILY
=
15
;
parameter
TX_FIFO
=
0
;
parameter
RX_FIFO
=
0
;
parameter
BAUD_VALUE
=
0
;
parameter
FIXEDMODE
=
0
;
parameter
PRG_BIT8
=
0
;
parameter
PRG_PARITY
=
0
;
parameter
RX_LEGACY_MODE
=
0
;
parameter
BAUD_VAL_FRCTN
=
0
;
parameter
BAUD_VAL_FRCTN_EN
=
0
;
input
PCLK
;
input
PRESETN
;
input
[
4
:
0
]
PADDR
;
input
PSEL
;
input
PENABLE
;
input
PWRITE
;
input
[
7
:
0
]
PWDATA
;
output
[
7
:
0
]
PRDATA
;
output
PREADY
;
output
PSLVERR
;
output
TXRDY
;
output
RXRDY
;
input
RX
;
output
TX
;
output
FRAMING_ERR
;
output
PARITY_ERR
;
output
OVERFLOW
;
`define CUARTOIOI  \
3 \
'b \
000
`define CUARTIIOI  \
3 \
'b \
001
`define CUARTlIOI  \
3 \
'b \
010
`define CUARTOlOI  \
3 \
'b \
011
`define CUARTIlOI  \
3 \
'b \
100
`define CUARTllOI  \
3 \
'b \
101
wire
PCLK
;
wire
PRESETN
;
wire
[
4
:
0
]
PADDR
;
wire
PSEL
;
wire
PENABLE
;
wire
PWRITE
;
wire
[
7
:
0
]
PWDATA
;
wire
[
7
:
0
]
PRDATA
;
wire
TXRDY
;
wire
RXRDY
;
wire
RX
;
wire
TX
;
wire
PREADY
;
wire
PSLVERR
;
reg
[
7
:
0
]
CUARTO0OI
;
reg
[
7
:
0
]
CUARTI0OI
;
reg
[
2
:
0
]
CUARTl0OI
;
reg
[
7
:
0
]
CUARTO1OI
;
reg
[
7
:
0
]
CUARTI1OI
;
wire
CUARTl1OI
;
wire
[
7
:
0
]
CUARTOOII
;
wire
[
7
:
0
]
CUARTIOII
;
wire
[
12
:
0
]
CUARTOl
;
wire
CUARTlO1
;
wire
CUARTOI1
;
wire
CUARTII1
;
wire
CUARTlOII
;
wire
CUARTOIII
;
wire
CUARTIIII
;
wire
OVERFLOW
;
wire
PARITY_ERR
;
wire
[
1
:
0
]
CUARTlIII
;
wire
CUARTOlII
;
wire
CUARTIlII
;
wire
FRAMING_ERR
;
wire
[
2
:
0
]
CUARTllII
;
wire
[
2
:
0
]
CUARTO0II
;
assign
PREADY
=
1
'b
1
;
assign
PSLVERR
=
1
'b
0
;
assign
CUARTlOII
=
!
(
PENABLE
&&
PWRITE
&&
(
PADDR
[
4
:
2
]
==
`CUARTOIOI
)
)
;
assign
CUARTOIII
=
!
(
PENABLE
&&
!
PWRITE
&&
(
PADDR
[
4
:
2
]
==
`CUARTIIOI
)
)
;
assign
CUARTIIII
=
!
PSEL
;
assign
CUARTOOII
=
PWDATA
;
assign
CUARTl1OI
=
(
PSEL
&
!
PWRITE
&
!
PENABLE
)
;
always
@
(
PADDR
or
CUARTl1OI
or
CUARTI1OI
or
CUARTIOII
or
CUARTO0OI
or
CUARTI0OI
or
OVERFLOW
or
PARITY_ERR
or
RXRDY
or
TXRDY
or
FRAMING_ERR
or
CUARTl0OI
)
begin
:
CUARTI0II
if
(
CUARTl1OI
)
case
(
PADDR
[
4
:
2
]
)
`CUARTOIOI
:
CUARTO1OI
=
8
'b
0
;
`CUARTIIOI
:
CUARTO1OI
=
CUARTIOII
;
`CUARTlIOI
:
CUARTO1OI
=
CUARTO0OI
;
`CUARTOlOI
:
CUARTO1OI
=
CUARTI0OI
;
`CUARTIlOI
:
CUARTO1OI
=
{
3
'b
0
,
FRAMING_ERR
,
OVERFLOW
,
PARITY_ERR
,
RXRDY
,
TXRDY
}
;
`CUARTllOI
:
CUARTO1OI
=
{
5
'b
0
,
CUARTl0OI
}
;
default
:
CUARTO1OI
=
CUARTI1OI
;
endcase
else
CUARTO1OI
=
CUARTI1OI
;
end
assign
CUARTlIII
=
PRG_PARITY
;
assign
CUARTOlII
=
(
CUARTlIII
==
2
'd
1
||
CUARTlIII
==
2
'd
2
)
?
1
'b
1
:
1
'b
0
;
assign
CUARTIlII
=
(
CUARTlIII
==
2
'd
1
)
?
1
'b
1
:
1
'b
0
;
always
@
(
posedge
PCLK
or
negedge
PRESETN
)
begin
:
CUARTl0II
if
(
!
PRESETN
)
CUARTI1OI
<=
8
'b
0
;
else
CUARTI1OI
<=
CUARTO1OI
;
end
assign
PRDATA
=
CUARTI1OI
;
always
@
(
posedge
PCLK
or
negedge
PRESETN
)
begin
:
CUARTO1II
if
(
!
PRESETN
)
CUARTO0OI
<=
8
'b
0
;
else
if
(
PSEL
&&
PENABLE
&&
PWRITE
&&
(
PADDR
[
4
:
2
]
==
`CUARTlIOI
)
)
CUARTO0OI
<=
PWDATA
;
else
CUARTO0OI
<=
CUARTO0OI
;
end
assign
CUARTOl
=
FIXEDMODE
?
BAUD_VALUE
:
{
CUARTI0OI
[
7
:
3
]
,
CUARTO0OI
}
;
always
@
(
posedge
PCLK
or
negedge
PRESETN
)
begin
:
CUARTI1II
if
(
!
PRESETN
)
CUARTI0OI
<=
8
'b
0
;
else
if
(
PSEL
&&
PENABLE
&&
PWRITE
&&
(
PADDR
[
4
:
2
]
==
`CUARTOlOI
)
)
CUARTI0OI
<=
PWDATA
[
7
:
0
]
;
else
CUARTI0OI
<=
CUARTI0OI
;
end
generate
if
(
BAUD_VAL_FRCTN_EN
==
1
)
begin
always
@
(
posedge
PCLK
or
negedge
PRESETN
)
begin
:
CUARTl1II
if
(
!
PRESETN
)
CUARTl0OI
<=
3
'b
0
;
else
if
(
PSEL
&&
PENABLE
&&
PWRITE
&&
(
PADDR
[
4
:
2
]
==
`CUARTllOI
)
)
CUARTl0OI
<=
PWDATA
[
2
:
0
]
;
else
CUARTl0OI
<=
CUARTl0OI
;
end
end
endgenerate
assign
CUARTllII
=
(
BAUD_VAL_FRCTN
==
0
)
?
3
'b
000
:
(
BAUD_VAL_FRCTN
==
1
)
?
3
'b
001
:
(
BAUD_VAL_FRCTN
==
2
)
?
3
'b
010
:
(
BAUD_VAL_FRCTN
==
3
)
?
3
'b
011
:
(
BAUD_VAL_FRCTN
==
4
)
?
3
'b
100
:
(
BAUD_VAL_FRCTN
==
5
)
?
3
'b
101
:
(
BAUD_VAL_FRCTN
==
6
)
?
3
'b
110
:
(
BAUD_VAL_FRCTN
==
7
)
?
3
'b
111
:
3
'b
000
;
assign
CUARTlO1
=
FIXEDMODE
?
PRG_BIT8
:
CUARTI0OI
[
0
]
;
assign
CUARTOI1
=
FIXEDMODE
?
CUARTOlII
:
CUARTI0OI
[
1
]
;
assign
CUARTII1
=
FIXEDMODE
?
CUARTIlII
:
CUARTI0OI
[
2
]
;
assign
CUARTO0II
=
FIXEDMODE
?
CUARTllII
:
BAUD_VAL_FRCTN_EN
?
CUARTl0OI
:
3
'b
000
;
abfn_uart_1_sb_CoreUARTapb_0_1_COREUART
#
(
.TX_FIFO
(
TX_FIFO
)
,
.RX_FIFO
(
RX_FIFO
)
,
.RX_LEGACY_MODE
(
RX_LEGACY_MODE
)
,
.BAUD_VAL_FRCTN_EN
(
BAUD_VAL_FRCTN_EN
)
)
CUARTOOlI
(
.RESET_N
(
PRESETN
)
,
.CLK
(
PCLK
)
,
.WEN
(
CUARTlOII
)
,
.OEN
(
CUARTOIII
)
,
.CSN
(
CUARTIIII
)
,
.DATA_IN
(
CUARTOOII
)
,
.RX
(
RX
)
,
.BAUD_VAL
(
CUARTOl
)
,
.BIT8
(
CUARTlO1
)
,
.PARITY_EN
(
CUARTOI1
)
,
.ODD_N_EVEN
(
CUARTII1
)
,
.FRAMING_ERR
(
FRAMING_ERR
)
,
.PARITY_ERR
(
PARITY_ERR
)
,
.OVERFLOW
(
OVERFLOW
)
,
.TXRDY
(
TXRDY
)
,
.RXRDY
(
RXRDY
)
,
.DATA_OUT
(
CUARTIOII
)
,
.TX
(
TX
)
,
.BAUD_VAL_FRACTION
(
CUARTO0II
)
)
;
endmodule
