# Written by Synplify Pro version map202309act, Build 044R. Synopsys Run ID: sid1724854833 
# Top Level Design Parameters 

# Clocks 
create_clock -period 20.000 -waveform {0.000 10.000} -name {OSC_C0_0/OSC_C0_0/I_RCOSC_25_50MHZ/CLKOUT} [get_pins {OSC_C0_0/OSC_C0_0/I_RCOSC_25_50MHZ/CLKOUT}] 
create_clock -period 10.000 -waveform {0.000 5.000} -name {eth_dummy|MAC_MII_TX_CLK} [get_ports {MAC_MII_TX_CLK}] 
create_clock -period 10.000 -waveform {0.000 5.000} -name {eth_dummy|MAC_MII_RX_CLK} [get_ports {MAC_MII_RX_CLK}] 

# Virtual Clocks 

# Generated Clocks 

# Paths Between Clocks 

# Multicycle Constraints 

# Point-to-point Delay Constraints 

# False Path Constraints 

# Output Load Constraints 

# Driving Cell Constraints 

# Input Delay Constraints 

# Output Delay Constraints 

# Wire Loads 

# Other Constraints 

# syn_hier Attributes 

# set_case Attributes 

# Clock Delay Constraints 
set_clock_groups -asynchronous -group [get_clocks {eth_dummy|MAC_MII_TX_CLK}]
set_clock_groups -asynchronous -group [get_clocks {eth_dummy|MAC_MII_RX_CLK}]

# syn_mode Attributes 

# Cells 

# Port DRC Rules 

# Input Transition Constraints 

# Unused constraints (intentionally commented out) 


# Non-forward-annotatable constraints (intentionally commented out) 

# Block Path constraints 

