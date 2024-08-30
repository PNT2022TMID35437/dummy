----------------------------------------------------------------------
-- Created by SmartDesign Fri Aug 23 10:39:21 2024
-- Version: 2024.1 2024.1.0.3
----------------------------------------------------------------------

----------------------------------------------------------------------
-- Libraries
----------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

library smartfusion2;
use smartfusion2.all;
----------------------------------------------------------------------
-- ABFN_GPIO_INT entity declaration
----------------------------------------------------------------------
entity ABFN_GPIO_INT is
    -- Port list
    port(
        -- Inputs
        DEVRST_N : in  std_logic;
        GPIO_IN  : in  std_logic_vector(1 downto 0);
        -- Outputs
        GPIO_OUT : out std_logic_vector(1 downto 0)
        );
end ABFN_GPIO_INT;
----------------------------------------------------------------------
-- ABFN_GPIO_INT architecture body
----------------------------------------------------------------------
architecture RTL of ABFN_GPIO_INT is
----------------------------------------------------------------------
-- Component declarations
----------------------------------------------------------------------
-- ABFN_GPIO_INT_MSS
component ABFN_GPIO_INT_MSS
    -- Port list
    port(
        -- Inputs
        FIC_0_APB_M_PRDATA  : in  std_logic_vector(31 downto 0);
        FIC_0_APB_M_PREADY  : in  std_logic;
        FIC_0_APB_M_PSLVERR : in  std_logic;
        MCCC_CLK_BASE       : in  std_logic;
        MSS_INT_F2M         : in  std_logic_vector(15 downto 0);
        MSS_RESET_N_F2M     : in  std_logic;
        -- Outputs
        FIC_0_APB_M_PADDR   : out std_logic_vector(31 downto 0);
        FIC_0_APB_M_PENABLE : out std_logic;
        FIC_0_APB_M_PSEL    : out std_logic;
        FIC_0_APB_M_PWDATA  : out std_logic_vector(31 downto 0);
        FIC_0_APB_M_PWRITE  : out std_logic
        );
end component;
-- CoreAPB3_C1
component CoreAPB3_C1
    -- Port list
    port(
        -- Inputs
        PADDR     : in  std_logic_vector(31 downto 0);
        PENABLE   : in  std_logic;
        PRDATAS0  : in  std_logic_vector(31 downto 0);
        PREADYS0  : in  std_logic;
        PSEL      : in  std_logic;
        PSLVERRS0 : in  std_logic;
        PWDATA    : in  std_logic_vector(31 downto 0);
        PWRITE    : in  std_logic;
        -- Outputs
        PADDRS    : out std_logic_vector(31 downto 0);
        PENABLES  : out std_logic;
        PRDATA    : out std_logic_vector(31 downto 0);
        PREADY    : out std_logic;
        PSELS0    : out std_logic;
        PSLVERR   : out std_logic;
        PWDATAS   : out std_logic_vector(31 downto 0);
        PWRITES   : out std_logic
        );
end component;
-- CoreGPIO_C0
component CoreGPIO_C0
    -- Port list
    port(
        -- Inputs
        GPIO_IN  : in  std_logic_vector(1 downto 0);
        PADDR    : in  std_logic_vector(7 downto 0);
        PCLK     : in  std_logic;
        PENABLE  : in  std_logic;
        PRESETN  : in  std_logic;
        PSEL     : in  std_logic;
        PWDATA   : in  std_logic_vector(31 downto 0);
        PWRITE   : in  std_logic;
        -- Outputs
        GPIO_OE  : out std_logic_vector(1 downto 0);
        GPIO_OUT : out std_logic_vector(1 downto 0);
        INT      : out std_logic_vector(1 downto 0);
        INT_OR   : out std_logic;
        PRDATA   : out std_logic_vector(31 downto 0);
        PREADY   : out std_logic;
        PSLVERR  : out std_logic
        );
end component;
-- OSC_C0
component OSC_C0
    -- Port list
    port(
        -- Outputs
        RCOSC_25_50MHZ_O2F : out std_logic
        );
end component;
-- SYSRESET
component SYSRESET
    -- Port list
    port(
        -- Inputs
        DEVRST_N         : in  std_logic;
        -- Outputs
        POWER_ON_RESET_N : out std_logic
        );
end component;
----------------------------------------------------------------------
-- Signal declarations
----------------------------------------------------------------------
signal ABFN_GPIO_INT_MSS_0_FIC_0_APB_MASTER_PADDR   : std_logic_vector(31 downto 0);
signal ABFN_GPIO_INT_MSS_0_FIC_0_APB_MASTER_PENABLE : std_logic;
signal ABFN_GPIO_INT_MSS_0_FIC_0_APB_MASTER_PRDATA  : std_logic_vector(31 downto 0);
signal ABFN_GPIO_INT_MSS_0_FIC_0_APB_MASTER_PREADY  : std_logic;
signal ABFN_GPIO_INT_MSS_0_FIC_0_APB_MASTER_PSELx   : std_logic;
signal ABFN_GPIO_INT_MSS_0_FIC_0_APB_MASTER_PSLVERR : std_logic;
signal ABFN_GPIO_INT_MSS_0_FIC_0_APB_MASTER_PWDATA  : std_logic_vector(31 downto 0);
signal ABFN_GPIO_INT_MSS_0_FIC_0_APB_MASTER_PWRITE  : std_logic;
signal CoreAPB3_C1_0_APBmslave0_PENABLE             : std_logic;
signal CoreAPB3_C1_0_APBmslave0_PRDATA              : std_logic_vector(31 downto 0);
signal CoreAPB3_C1_0_APBmslave0_PREADY              : std_logic;
signal CoreAPB3_C1_0_APBmslave0_PSELx               : std_logic;
signal CoreAPB3_C1_0_APBmslave0_PSLVERR             : std_logic;
signal CoreAPB3_C1_0_APBmslave0_PWDATA              : std_logic_vector(31 downto 0);
signal CoreAPB3_C1_0_APBmslave0_PWRITE              : std_logic;
signal CoreGPIO_C0_0_INT_OR                         : std_logic;
signal GPIO_OUT_net_0                               : std_logic_vector(1 downto 0);
signal OSC_C0_0_RCOSC_25_50MHZ_O2F                  : std_logic;
signal SYSRESET_0_POWER_ON_RESET_N                  : std_logic;
signal GPIO_OUT_net_1                               : std_logic_vector(1 downto 0);
signal MSS_INT_F2M_net_0                            : std_logic_vector(15 downto 0);
----------------------------------------------------------------------
-- TiedOff Signals
----------------------------------------------------------------------
signal VCC_net                                      : std_logic;
----------------------------------------------------------------------
-- Bus Interface Nets Declarations - Unequal Pin Widths
----------------------------------------------------------------------
signal CoreAPB3_C1_0_APBmslave0_PADDR               : std_logic_vector(31 downto 0);
signal CoreAPB3_C1_0_APBmslave0_PADDR_0             : std_logic_vector(7 downto 0);
signal CoreAPB3_C1_0_APBmslave0_PADDR_0_7to0        : std_logic_vector(7 downto 0);


begin
----------------------------------------------------------------------
-- Constant assignments
----------------------------------------------------------------------
 VCC_net     <= '1';
----------------------------------------------------------------------
-- Top level output port assignments
----------------------------------------------------------------------
 GPIO_OUT_net_1       <= GPIO_OUT_net_0;
 GPIO_OUT(1 downto 0) <= GPIO_OUT_net_1;
----------------------------------------------------------------------
-- Concatenation assignments
----------------------------------------------------------------------
 MSS_INT_F2M_net_0 <= ( '1' & '1' & '1' & '1' & '1' & '1' & '1' & '1' & '1' & '1' & '1' & '1' & '1' & '1' & '1' & CoreGPIO_C0_0_INT_OR );
----------------------------------------------------------------------
-- Bus Interface Nets Assignments - Unequal Pin Widths
----------------------------------------------------------------------
 CoreAPB3_C1_0_APBmslave0_PADDR_0(7 downto 0) <= ( CoreAPB3_C1_0_APBmslave0_PADDR_0_7to0(7 downto 0) );
 CoreAPB3_C1_0_APBmslave0_PADDR_0_7to0(7 downto 0) <= CoreAPB3_C1_0_APBmslave0_PADDR(7 downto 0);

----------------------------------------------------------------------
-- Component instances
----------------------------------------------------------------------
-- ABFN_GPIO_INT_MSS_0
ABFN_GPIO_INT_MSS_0 : ABFN_GPIO_INT_MSS
    port map( 
        -- Inputs
        MCCC_CLK_BASE       => OSC_C0_0_RCOSC_25_50MHZ_O2F,
        MSS_RESET_N_F2M     => SYSRESET_0_POWER_ON_RESET_N,
        FIC_0_APB_M_PREADY  => ABFN_GPIO_INT_MSS_0_FIC_0_APB_MASTER_PREADY,
        FIC_0_APB_M_PSLVERR => ABFN_GPIO_INT_MSS_0_FIC_0_APB_MASTER_PSLVERR,
        FIC_0_APB_M_PRDATA  => ABFN_GPIO_INT_MSS_0_FIC_0_APB_MASTER_PRDATA,
        MSS_INT_F2M         => MSS_INT_F2M_net_0,
        -- Outputs
        FIC_0_APB_M_PSEL    => ABFN_GPIO_INT_MSS_0_FIC_0_APB_MASTER_PSELx,
        FIC_0_APB_M_PWRITE  => ABFN_GPIO_INT_MSS_0_FIC_0_APB_MASTER_PWRITE,
        FIC_0_APB_M_PENABLE => ABFN_GPIO_INT_MSS_0_FIC_0_APB_MASTER_PENABLE,
        FIC_0_APB_M_PADDR   => ABFN_GPIO_INT_MSS_0_FIC_0_APB_MASTER_PADDR,
        FIC_0_APB_M_PWDATA  => ABFN_GPIO_INT_MSS_0_FIC_0_APB_MASTER_PWDATA 
        );
-- CoreAPB3_C1_0
CoreAPB3_C1_0 : CoreAPB3_C1
    port map( 
        -- Inputs
        PSEL      => ABFN_GPIO_INT_MSS_0_FIC_0_APB_MASTER_PSELx,
        PENABLE   => ABFN_GPIO_INT_MSS_0_FIC_0_APB_MASTER_PENABLE,
        PWRITE    => ABFN_GPIO_INT_MSS_0_FIC_0_APB_MASTER_PWRITE,
        PREADYS0  => CoreAPB3_C1_0_APBmslave0_PREADY,
        PSLVERRS0 => CoreAPB3_C1_0_APBmslave0_PSLVERR,
        PADDR     => ABFN_GPIO_INT_MSS_0_FIC_0_APB_MASTER_PADDR,
        PWDATA    => ABFN_GPIO_INT_MSS_0_FIC_0_APB_MASTER_PWDATA,
        PRDATAS0  => CoreAPB3_C1_0_APBmslave0_PRDATA,
        -- Outputs
        PREADY    => ABFN_GPIO_INT_MSS_0_FIC_0_APB_MASTER_PREADY,
        PSLVERR   => ABFN_GPIO_INT_MSS_0_FIC_0_APB_MASTER_PSLVERR,
        PSELS0    => CoreAPB3_C1_0_APBmslave0_PSELx,
        PENABLES  => CoreAPB3_C1_0_APBmslave0_PENABLE,
        PWRITES   => CoreAPB3_C1_0_APBmslave0_PWRITE,
        PRDATA    => ABFN_GPIO_INT_MSS_0_FIC_0_APB_MASTER_PRDATA,
        PADDRS    => CoreAPB3_C1_0_APBmslave0_PADDR,
        PWDATAS   => CoreAPB3_C1_0_APBmslave0_PWDATA 
        );
-- CoreGPIO_C0_0
CoreGPIO_C0_0 : CoreGPIO_C0
    port map( 
        -- Inputs
        PRESETN  => SYSRESET_0_POWER_ON_RESET_N,
        PCLK     => OSC_C0_0_RCOSC_25_50MHZ_O2F,
        PSEL     => CoreAPB3_C1_0_APBmslave0_PSELx,
        PENABLE  => CoreAPB3_C1_0_APBmslave0_PENABLE,
        PWRITE   => CoreAPB3_C1_0_APBmslave0_PWRITE,
        GPIO_IN  => GPIO_IN,
        PADDR    => CoreAPB3_C1_0_APBmslave0_PADDR_0,
        PWDATA   => CoreAPB3_C1_0_APBmslave0_PWDATA,
        -- Outputs
        INT_OR   => CoreGPIO_C0_0_INT_OR,
        PREADY   => CoreAPB3_C1_0_APBmslave0_PREADY,
        PSLVERR  => CoreAPB3_C1_0_APBmslave0_PSLVERR,
        INT      => OPEN,
        GPIO_OUT => GPIO_OUT_net_0,
        GPIO_OE  => OPEN,
        PRDATA   => CoreAPB3_C1_0_APBmslave0_PRDATA 
        );
-- OSC_C0_0
OSC_C0_0 : OSC_C0
    port map( 
        -- Outputs
        RCOSC_25_50MHZ_O2F => OSC_C0_0_RCOSC_25_50MHZ_O2F 
        );
-- SYSRESET_0
SYSRESET_0 : SYSRESET
    port map( 
        -- Inputs
        DEVRST_N         => DEVRST_N,
        -- Outputs
        POWER_ON_RESET_N => SYSRESET_0_POWER_ON_RESET_N 
        );

end RTL;
