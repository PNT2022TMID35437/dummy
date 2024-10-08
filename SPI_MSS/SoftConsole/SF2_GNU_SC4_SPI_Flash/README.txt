================================================================================
                      SmartFusion2 MSS SPI Flash example
================================================================================

This example project demonstrates the use of the SmartFusion2 MSS SPI hardware
block. It reads and writes the content of an external SPI flash device.

--------------------------------------------------------------------------------
                            How to use this example
--------------------------------------------------------------------------------
Run the example project using a debugger. Place watches on buffers
g_flash_wr_buf and g_flash_rd_buf. You will then be able to observe the content
of g_flash_wr_buf being written into external flash and read back into the
g_flash_rd_buf buffer.

--------------------------------------------------------------------------------
                                Target hardware
--------------------------------------------------------------------------------
This example project is targeted at a SmartFusion2 Eval Kit with MSS SPI0
connected to the external SPI flash device. User need to connect GPIO-0 an 
GPIO-1 to SPI_WP and SPI_RESET pin of SPI Flash as mentioned below:

SmartFusion2 EVAL Kit:
    MSS_GPIO0:  connected to SPI_WP using SmartFusion2 pin L16
    MSS_GPIO1:  connected to SPI_RESET using SmartFusion2 pin K15
    
The test design for this used a 166MHz CPU clock and a very conservative divide
by 8 for the SPI clock. These values may be adjusted but please note that
drivers_config/sys_config/sys_config_mss_clocks.h may need to be edited to match
the new design.

!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
                          Silicon revision dependencies
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
This example is built to execute on an M2S090 die. You will need to overwrite
this example project's "drivers_config/sys_config" and "CMSIS" folders with the
one generated by Libero for your hardware design if using a newer silicon
revision.
The "drivers_config/sys_config" folder contains information about your hardware
design. This information is used by the CMSIS to initialize clock frequencies in
global variables which are used by the SmartFusion2 drivers to derive baud
rates. The CMSIS boot code may also complete the device's clock configuration
depending on the silicon version. The "CMSIS" and "drivers_config/sys_config"
for your design can be found in the "firmware" folder of your Libero design.
