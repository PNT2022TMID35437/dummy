----------------------------------------------------------------------
-- Created by SmartDesign Thu Aug 22 19:46:20 2024
-- Version: 2024.1 2024.1.0.3
----------------------------------------------------------------------

----------------------------------------------------------------------
-- Component Description (Tcl) 
----------------------------------------------------------------------
--# Exporting Component Description of CoreInterrupt_C0 to TCL
--# Family: SmartFusion2
--# Part Number: M2S005-VF400I
--# Create and Configure the core component CoreInterrupt_C0
--create_and_configure_core -core_vlnv {Actel:DirectCore:CoreInterrupt:1.1.101} -component_name {CoreInterrupt_C0} -params {\
--"FIQPOLARITY:0"  \
--"IRQPOLARITY:0"  \
--"NUMFIQSRC:1"  \
--"NUMIRQSRC:2"   }
--# Exporting Component Description of CoreInterrupt_C0 to TCL done

----------------------------------------------------------------------
-- Libraries
----------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

library smartfusion2;
use smartfusion2.all;
----------------------------------------------------------------------
-- CoreInterrupt_C0 entity declaration
----------------------------------------------------------------------
entity CoreInterrupt_C0 is
    -- Port list
    port(
        -- Inputs
        PADDR       : in  std_logic_vector(5 downto 2);
        PCLK        : in  std_logic;
        PENABLE     : in  std_logic;
        PRESETn     : in  std_logic;
        PSEL        : in  std_logic;
        PWDATA      : in  std_logic_vector(31 downto 0);
        PWRITE      : in  std_logic;
        fiqSource0  : in  std_logic;
        fiqSource1  : in  std_logic;
        fiqSource2  : in  std_logic;
        fiqSource3  : in  std_logic;
        fiqSource4  : in  std_logic;
        fiqSource5  : in  std_logic;
        fiqSource6  : in  std_logic;
        fiqSource7  : in  std_logic;
        irqSource0  : in  std_logic;
        irqSource1  : in  std_logic;
        irqSource10 : in  std_logic;
        irqSource11 : in  std_logic;
        irqSource12 : in  std_logic;
        irqSource13 : in  std_logic;
        irqSource14 : in  std_logic;
        irqSource15 : in  std_logic;
        irqSource16 : in  std_logic;
        irqSource17 : in  std_logic;
        irqSource18 : in  std_logic;
        irqSource19 : in  std_logic;
        irqSource2  : in  std_logic;
        irqSource20 : in  std_logic;
        irqSource21 : in  std_logic;
        irqSource22 : in  std_logic;
        irqSource23 : in  std_logic;
        irqSource24 : in  std_logic;
        irqSource25 : in  std_logic;
        irqSource26 : in  std_logic;
        irqSource27 : in  std_logic;
        irqSource28 : in  std_logic;
        irqSource29 : in  std_logic;
        irqSource3  : in  std_logic;
        irqSource30 : in  std_logic;
        irqSource31 : in  std_logic;
        irqSource4  : in  std_logic;
        irqSource5  : in  std_logic;
        irqSource6  : in  std_logic;
        irqSource7  : in  std_logic;
        irqSource8  : in  std_logic;
        irqSource9  : in  std_logic;
        -- Outputs
        FIQ         : out std_logic;
        IRQ         : out std_logic;
        PRDATA      : out std_logic_vector(31 downto 0)
        );
end CoreInterrupt_C0;
----------------------------------------------------------------------
-- CoreInterrupt_C0 architecture body
----------------------------------------------------------------------
architecture RTL of CoreInterrupt_C0 is
----------------------------------------------------------------------
-- Component declarations
----------------------------------------------------------------------
-- CoreInterrupt   -   Actel:DirectCore:CoreInterrupt:1.1.101
component CoreInterrupt
    generic( 
        FIQPOLARITY : integer := 0 ;
        IRQPOLARITY : integer := 0 ;
        NUMFIQSRC   : integer := 1 ;
        NUMIRQSRC   : integer := 2 
        );
    -- Port list
    port(
        -- Inputs
        PADDR       : in  std_logic_vector(5 downto 2);
        PCLK        : in  std_logic;
        PENABLE     : in  std_logic;
        PRESETn     : in  std_logic;
        PSEL        : in  std_logic;
        PWDATA      : in  std_logic_vector(31 downto 0);
        PWRITE      : in  std_logic;
        fiqSource0  : in  std_logic;
        fiqSource1  : in  std_logic;
        fiqSource2  : in  std_logic;
        fiqSource3  : in  std_logic;
        fiqSource4  : in  std_logic;
        fiqSource5  : in  std_logic;
        fiqSource6  : in  std_logic;
        fiqSource7  : in  std_logic;
        irqSource0  : in  std_logic;
        irqSource1  : in  std_logic;
        irqSource10 : in  std_logic;
        irqSource11 : in  std_logic;
        irqSource12 : in  std_logic;
        irqSource13 : in  std_logic;
        irqSource14 : in  std_logic;
        irqSource15 : in  std_logic;
        irqSource16 : in  std_logic;
        irqSource17 : in  std_logic;
        irqSource18 : in  std_logic;
        irqSource19 : in  std_logic;
        irqSource2  : in  std_logic;
        irqSource20 : in  std_logic;
        irqSource21 : in  std_logic;
        irqSource22 : in  std_logic;
        irqSource23 : in  std_logic;
        irqSource24 : in  std_logic;
        irqSource25 : in  std_logic;
        irqSource26 : in  std_logic;
        irqSource27 : in  std_logic;
        irqSource28 : in  std_logic;
        irqSource29 : in  std_logic;
        irqSource3  : in  std_logic;
        irqSource30 : in  std_logic;
        irqSource31 : in  std_logic;
        irqSource4  : in  std_logic;
        irqSource5  : in  std_logic;
        irqSource6  : in  std_logic;
        irqSource7  : in  std_logic;
        irqSource8  : in  std_logic;
        irqSource9  : in  std_logic;
        -- Outputs
        FIQ         : out std_logic;
        IRQ         : out std_logic;
        PRDATA      : out std_logic_vector(31 downto 0)
        );
end component;
----------------------------------------------------------------------
-- Signal declarations
----------------------------------------------------------------------
signal APBslave_PRDATA       : std_logic_vector(31 downto 0);
signal FIQ_net_0             : std_logic;
signal IRQ_net_0             : std_logic;
signal FIQ_net_1             : std_logic;
signal IRQ_net_1             : std_logic;
signal APBslave_PRDATA_net_0 : std_logic_vector(31 downto 0);

begin
----------------------------------------------------------------------
-- Top level output port assignments
----------------------------------------------------------------------
 FIQ_net_1             <= FIQ_net_0;
 FIQ                   <= FIQ_net_1;
 IRQ_net_1             <= IRQ_net_0;
 IRQ                   <= IRQ_net_1;
 APBslave_PRDATA_net_0 <= APBslave_PRDATA;
 PRDATA(31 downto 0)   <= APBslave_PRDATA_net_0;
----------------------------------------------------------------------
-- Component instances
----------------------------------------------------------------------
-- CoreInterrupt_C0_0   -   Actel:DirectCore:CoreInterrupt:1.1.101
CoreInterrupt_C0_0 : CoreInterrupt
    generic map( 
        FIQPOLARITY => ( 0 ),
        IRQPOLARITY => ( 0 ),
        NUMFIQSRC   => ( 1 ),
        NUMIRQSRC   => ( 2 )
        )
    port map( 
        -- Inputs
        PCLK        => PCLK,
        PRESETn     => PRESETn,
        PSEL        => PSEL,
        PWRITE      => PWRITE,
        PENABLE     => PENABLE,
        fiqSource0  => fiqSource0,
        fiqSource1  => fiqSource1,
        fiqSource2  => fiqSource2,
        fiqSource3  => fiqSource3,
        fiqSource4  => fiqSource4,
        fiqSource5  => fiqSource5,
        fiqSource6  => fiqSource6,
        fiqSource7  => fiqSource7,
        irqSource0  => irqSource0,
        irqSource1  => irqSource1,
        irqSource2  => irqSource2,
        irqSource3  => irqSource3,
        irqSource4  => irqSource4,
        irqSource5  => irqSource5,
        irqSource6  => irqSource6,
        irqSource7  => irqSource7,
        irqSource8  => irqSource8,
        irqSource9  => irqSource9,
        irqSource10 => irqSource10,
        irqSource11 => irqSource11,
        irqSource12 => irqSource12,
        irqSource13 => irqSource13,
        irqSource14 => irqSource14,
        irqSource15 => irqSource15,
        irqSource16 => irqSource16,
        irqSource17 => irqSource17,
        irqSource18 => irqSource18,
        irqSource19 => irqSource19,
        irqSource20 => irqSource20,
        irqSource21 => irqSource21,
        irqSource22 => irqSource22,
        irqSource23 => irqSource23,
        irqSource24 => irqSource24,
        irqSource25 => irqSource25,
        irqSource26 => irqSource26,
        irqSource27 => irqSource27,
        irqSource28 => irqSource28,
        irqSource29 => irqSource29,
        irqSource30 => irqSource30,
        irqSource31 => irqSource31,
        PADDR       => PADDR,
        PWDATA      => PWDATA,
        -- Outputs
        FIQ         => FIQ_net_0,
        IRQ         => IRQ_net_0,
        PRDATA      => APBslave_PRDATA 
        );

end RTL;
