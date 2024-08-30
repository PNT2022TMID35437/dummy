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
abfn_uart_1_sb_CoreUARTapb_0_0_COREUART
(
RESET_N
,
CLK
,
WEN
,
OEN
,
CSN
,
DATA_IN
,
RX
,
BAUD_VAL
,
BIT8
,
PARITY_EN
,
ODD_N_EVEN
,
PARITY_ERR
,
OVERFLOW
,
TXRDY
,
RXRDY
,
DATA_OUT
,
TX
,
FRAMING_ERR
,
BAUD_VAL_FRACTION
)
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
RX_LEGACY_MODE
=
0
;
parameter
FAMILY
=
15
;
parameter
BAUD_VAL_FRCTN_EN
=
0
;
input
RESET_N
;
input
CLK
;
input
WEN
;
input
OEN
;
input
CSN
;
input
[
7
:
0
]
DATA_IN
;
input
RX
;
input
[
12
:
0
]
BAUD_VAL
;
input
BIT8
;
input
PARITY_EN
;
input
ODD_N_EVEN
;
input
[
2
:
0
]
BAUD_VAL_FRACTION
;
output
PARITY_ERR
;
output
OVERFLOW
;
output
TXRDY
;
output
RXRDY
;
output
[
7
:
0
]
DATA_OUT
;
output
TX
;
output
FRAMING_ERR
;
`define CUARTIOI  \
2 \
'b \
00
`define CUARTlOI  \
2 \
'b \
01
`define CUARTOII  \
2 \
'b \
10
`define CUARTIII  \
2 \
'b \
11
wire
PARITY_ERR
;
wire
FRAMING_ERR
;
wire
OVERFLOW
;
wire
CUARTlII
;
wire
TXRDY
;
reg
RXRDY
;
wire
CUARTOlI
;
wire
CUARTIlI
;
wire
CUARTllI
;
reg
[
7
:
0
]
DATA_OUT
;
wire
TX
;
wire
CUARTll
;
wire
CUARTIl
;
wire
CUARTO0I
;
reg
[
7
:
0
]
CUARTI0I
;
wire
[
7
:
0
]
CUARTl0I
;
wire
[
7
:
0
]
CUARTO1I
;
wire
CUARTI1I
;
reg
[
7
:
0
]
CUARTl1I
;
wire
[
7
:
0
]
CUARTOOl
;
wire
[
7
:
0
]
CUARTIOl
;
wire
CUARTlOl
;
wire
CUARTOIl
;
reg
CUARTIIl
;
reg
CUARTlIl
;
wire
CUARTOll
;
wire
CUARTIll
;
wire
CUARTlll
;
wire
CUARTO0l
;
wire
CUARTI0l
;
wire
CUARTl0l
;
reg
CUARTO1l
;
reg
CUARTI1l
;
wire
CUARTl1l
;
reg
CUARTOO0
;
reg
CUARTIO0
;
reg
CUARTlO0
;
reg
CUARTOI0
;
reg
CUARTII0
;
reg
CUARTlI0
;
reg
[
1
:
0
]
CUARTOl0
;
reg
[
1
:
0
]
CUARTIl0
;
wire
CUARTll0
;
wire
CUARTO00
;
reg
CUARTI00
;
wire
CUARTl00
;
always
@
(
posedge
CLK
or
negedge
RESET_N
)
begin
:
CUARTO10
if
(
RESET_N
==
1
'b
0
)
begin
CUARTI0I
<=
{
8
{
1
'b
0
}
}
;
CUARTlIl
<=
1
'b
1
;
end
else
begin
CUARTlIl
<=
1
'b
1
;
if
(
CSN
==
1
'b
0
&
WEN
==
1
'b
0
)
begin
CUARTI0I
<=
DATA_IN
;
CUARTlIl
<=
1
'b
0
;
end
end
end
assign
CUARTO0I
=
WEN
==
1
'b
0
&
CSN
==
1
'b
0
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
CUARTOOl
or
CUARTl1I
or
PARITY_ERR
)
begin
if
(
RX_FIFO
==
1
'b
0
)
begin
DATA_OUT
=
CUARTOOl
;
end
else
begin
if
(
PARITY_ERR
==
1
'b
1
)
begin
DATA_OUT
=
CUARTOOl
;
end
else
begin
DATA_OUT
=
CUARTl1I
;
end
end
end
assign
CUARTI1I
=
(
RX_FIFO
==
1
'b
0
)
?
(
(
CSN
==
1
'b
0
&
OEN
==
1
'b
0
)
?
1
'b
1
:
1
'b
0
)
:
!
CUARTlll
;
assign
CUARTO0l
=
(
RX_FIFO
==
1
'b
0
)
?
(
(
CSN
==
1
'b
0
&
OEN
==
1
'b
0
)
?
1
'b
1
:
1
'b
0
)
:
CUARTI1l
;
assign
CUARTI0l
=
(
RX_FIFO
==
1
'b
0
)
?
(
(
CSN
==
1
'b
0
&
OEN
==
1
'b
0
)
?
1
'b
1
:
1
'b
0
)
:
CUARTIO0
;
assign
CUARTl00
=
(
CSN
==
1
'b
0
&
OEN
==
1
'b
0
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
CUARTIOl
=
(
PARITY_ERR
==
1
'b
0
)
?
CUARTOOl
:
8
'b
0
;
generate
if
(
RX_LEGACY_MODE
==
1
'b
1
)
begin
always
@
(
CUARTOlI
or
CUARTII0
)
begin
if
(
RX_FIFO
==
1
'b
0
)
begin
RXRDY
=
CUARTOlI
;
end
else
begin
RXRDY
=
!
CUARTII0
;
end
end
end
else
begin
always
@
(
posedge
CLK
or
negedge
RESET_N
)
begin
if
(
RESET_N
==
1
'b
0
)
begin
RXRDY
=
1
'b
0
;
end
else
begin
if
(
RX_FIFO
==
1
'b
0
)
begin
if
(
CUARTll0
==
1
'b
1
||
CUARTOlI
==
1
'b
0
)
begin
RXRDY
=
CUARTOlI
;
end
end
else
begin
if
(
CUARTll0
==
1
'b
1
||
(
CUARTII0
==
1
'b
1
)
||
(
(
CUARTII0
==
1
'b
0
)
&&
(
CUARTO00
==
1
'b
1
)
)
)
begin
RXRDY
=
!
CUARTII0
;
end
end
end
end
end
endgenerate
always
@
(
posedge
CLK
or
negedge
RESET_N
)
begin
if
(
RESET_N
==
1
'b
0
)
begin
CUARTI1l
<=
1
'b
0
;
CUARTO1l
<=
1
'b
0
;
end
else
begin
CUARTO1l
<=
CUARTl0l
;
CUARTI1l
<=
CUARTO1l
;
end
end
always
@
(
posedge
CLK
or
negedge
RESET_N
)
begin
if
(
RESET_N
==
1
'b
0
)
begin
CUARTIO0
<=
1
'b
0
;
CUARTOO0
<=
1
'b
0
;
end
else
begin
CUARTOO0
<=
CUARTl1l
;
CUARTIO0
<=
CUARTOO0
;
end
end
always
@
(
posedge
CLK
or
negedge
RESET_N
)
begin
if
(
RESET_N
==
1
'b
0
)
begin
CUARTOl0
<=
`CUARTIOI
;
end
else
begin
CUARTOl0
<=
CUARTIl0
;
end
end
always
@
(
CUARTOl0
,
CUARTII0
,
CUARTOIl
)
begin
CUARTIl0
=
CUARTOl0
;
CUARTIIl
=
1
'b
1
;
CUARTlO0
=
1
'b
0
;
case
(
CUARTOl0
)
`CUARTIOI
:
if
(
CUARTII0
==
1
'b
1
&&
CUARTOIl
==
1
'b
0
)
begin
CUARTIl0
=
`CUARTlOI
;
CUARTIIl
=
1
'b
0
;
end
`CUARTlOI
:
CUARTIl0
=
`CUARTOII
;
`CUARTOII
:
CUARTIl0
=
`CUARTIII
;
`CUARTIII
:
begin
CUARTIl0
=
`CUARTIOI
;
CUARTlO0
=
1
'b
1
;
end
endcase
end
always
@
(
posedge
CLK
or
negedge
RESET_N
)
begin
if
(
RESET_N
==
1
'b
0
)
begin
CUARTl1I
<=
{
8
{
1
'b
0
}
}
;
end
else
begin
if
(
CUARTlO0
==
1
'b
1
)
begin
CUARTl1I
<=
CUARTO1I
;
end
end
end
always
@
(
posedge
CLK
or
negedge
RESET_N
)
begin
if
(
RESET_N
==
1
'b
0
)
begin
CUARTII0
<=
1
'b
1
;
CUARTlI0
<=
1
'b
1
;
end
else
begin
if
(
CUARTlO0
==
1
'b
1
)
begin
CUARTII0
<=
1
'b
0
;
end
else
begin
if
(
CSN
==
1
'b
0
&&
OEN
==
1
'b
0
)
begin
CUARTII0
<=
1
'b
1
;
end
end
CUARTlI0
<=
CUARTII0
;
end
end
always
@
(
posedge
CLK
or
negedge
RESET_N
)
begin
if
(
RESET_N
==
1
'b
0
)
begin
CUARTI00
<=
1
'b
0
;
end
else
begin
if
(
CUARTllI
==
1
'b
0
&&
CUARTlll
==
1
'b
1
)
CUARTI00
<=
1
'b
1
;
else
if
(
CUARTl00
==
1
'b
1
)
CUARTI00
<=
1
'b
0
;
else
CUARTI00
<=
CUARTI00
;
end
end
assign
OVERFLOW
=
(
RX_FIFO
==
1
'b
0
)
?
CUARTlII
:
CUARTI00
;
assign
CUARTIlI
=
(
(
PARITY_ERR
==
1
'b
1
)
||
CUARTlll
==
1
'b
1
)
?
1
'b
1
:
CUARTllI
;
abfn_uart_1_sb_CoreUARTapb_0_0_Clock_gen
#
(
.BAUD_VAL_FRCTN_EN
(
BAUD_VAL_FRCTN_EN
)
)
CUARTI10
(
.CUARTII
(
CLK
)
,
.CUARTlI
(
RESET_N
)
,
.CUARTOl
(
BAUD_VAL
)
,
.CUARTIl
(
CUARTIl
)
,
.CUARTll
(
CUARTll
)
,
.BAUD_VAL_FRACTION
(
BAUD_VAL_FRACTION
)
)
;
abfn_uart_1_sb_CoreUARTapb_0_0_Tx_async
#
(
.TX_FIFO
(
TX_FIFO
)
)
CUARTl10
(
.CUARTII
(
CLK
)
,
.CUARTll
(
CUARTll
)
,
.CUARTlI
(
RESET_N
)
,
.CUARTO0I
(
CUARTO0I
)
,
.CUARTI0I
(
CUARTI0I
)
,
.CUARTl0I
(
CUARTl0I
)
,
.CUARTOO1
(
CUARTlOl
)
,
.CUARTIO1
(
CUARTIll
)
,
.CUARTlO1
(
BIT8
)
,
.CUARTOI1
(
PARITY_EN
)
,
.CUARTII1
(
ODD_N_EVEN
)
,
.CUARTlI1
(
TXRDY
)
,
.CUARTOl1
(
TX
)
,
.CUARTOll
(
CUARTOll
)
)
;
abfn_uart_1_sb_CoreUARTapb_0_0_Rx_async
#
(
.RX_FIFO
(
RX_FIFO
)
)
CUARTIl1
(
.CUARTII
(
CLK
)
,
.CUARTIl
(
CUARTIl
)
,
.CUARTlI
(
RESET_N
)
,
.CUARTlO1
(
BIT8
)
,
.CUARTOI1
(
PARITY_EN
)
,
.CUARTII1
(
ODD_N_EVEN
)
,
.CUARTI1I
(
CUARTI1I
)
,
.CUARTO0l
(
CUARTO0l
)
,
.CUARTll1
(
FRAMING_ERR
)
,
.CUARTI0l
(
CUARTI0l
)
,
.CUARTll0
(
CUARTll0
)
,
.CUARTO00
(
CUARTO00
)
,
.CUARTO01
(
RX
)
,
.CUARTI01
(
CUARTlII
)
,
.CUARTl01
(
PARITY_ERR
)
,
.CUARTl0l
(
CUARTl0l
)
,
.CUARTl1l
(
CUARTl1l
)
,
.CUARTOlI
(
CUARTOlI
)
,
.CUARTOOl
(
CUARTOOl
)
,
.CUARTllI
(
CUARTllI
)
)
;
generate
if
(
TX_FIFO
==
1
'b
1
)
begin
abfn_uart_1_sb_CoreUARTapb_0_0_fifo_256x8
CUARTO11
(
.CUARTI11
(
CUARTl0I
)
,
.CUARTl11
(
CLK
)
,
.CUARTOOOI
(
CLK
)
,
.CUARTIOOI
(
CUARTI0I
)
,
.WRB
(
CUARTlIl
)
,
.RDB
(
CUARTOll
)
,
.RESET
(
RESET_N
)
,
.FULL
(
CUARTIll
)
,
.EMPTY
(
CUARTlOl
)
)
;
end
endgenerate
generate
if
(
RX_FIFO
==
1
'b
1
)
begin
abfn_uart_1_sb_CoreUARTapb_0_0_fifo_256x8
CUARTlOOI
(
.CUARTI11
(
CUARTO1I
)
,
.CUARTl11
(
CLK
)
,
.CUARTOOOI
(
CLK
)
,
.CUARTIOOI
(
CUARTIOl
)
,
.WRB
(
CUARTIlI
)
,
.RDB
(
CUARTIIl
)
,
.RESET
(
RESET_N
)
,
.FULL
(
CUARTlll
)
,
.EMPTY
(
CUARTOIl
)
)
;
end
endgenerate
endmodule
