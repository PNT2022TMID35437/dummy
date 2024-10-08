================================================================================
                    SmartFusion2 CoreGPIO simple gpio example
================================================================================
This example project reads the state of the GPIO inputs and writes the input state
back to the outputs. This would result in a change in the state of input
switches to be reflected in the state of LEDs.

                                Target hardware
--------------------------------------------------------------------------------
This example project is targeted at a Cortex-M3 design running on the SmartFusion2
Eval Kit board(090). The design should have an instance of CoreGPIO version 3.1 located
at address 0x30000000 with GPIOs 0 to 3 connected to LEDs and GPIOs 4 and 5 
connected to DIP switch(SW5- dip1 and dip2). The example project is built for a
design using a SmartFusion2 MSS APB clock frequency of 71MHz.

!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
                          Silicon revision dependencies
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
This example is built to execute on an M2S090T die. You will need to overwrite
this example project's "drivers_config/sys_config" and "CMSIS" folders with the
one generated by Libero for your hardware design if using a newer silicon revision.
The "drivers_config/sys_config" folder contains information about your hardware
design. This information is used by the CMSIS to initialize clock frequencies
global variables which are used by the SmartFusion2 drivers to derive baud
rates. The CMSIS boot code may also complete the device's clock configuration
depending on silicon version. The "CMSIS" and "drivers_config/sys_config" for
your design can be found in the "firmware" folder of your Libero design.
