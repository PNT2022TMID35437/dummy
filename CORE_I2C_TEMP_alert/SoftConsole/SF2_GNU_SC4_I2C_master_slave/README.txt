================================================================================
                      SmartFusion2 CoreI2C Master/Slave example
================================================================================

This example project demonstrates the use of the CoreI2C IP in a SmartFusion2
Eval Kit(090) system. It demonstrates reading and writing data between a pair
of CoreI2Cs configured as a master and a slave.

The operation of the CoreI2Cs is controlled via a serial console.

--------------------------------------------------------------------------------
                            How to use this example
--------------------------------------------------------------------------------
Connect the IO pins for the SDA and SCL of the two CoreI2Cs together using
flying leads as described below.

Connect a serial cable between the SmartFusion2 Eval Kit(090) and the PC and use
your serial terminal software of choice, configured for 57600bps, no parity and
one stop bit, to exercise the CoreI2Cs via the provided menu system. 

Alternatively, connect the SmartFusion2 Eval Kit and the PC using the USB MINI B
connection using the same serial communications settings. In this case the
serial port to use will be 4th serial port provided by the 4232H device and may
be labelled "USB Serial Converter D".

Use menu option 1 to write between 0 and 32 bytes of data from the Master I2C
device to the slave I2C device. Any data received by the slave is written to
the slave_tx_buffer[] array and overwrites some or all of the default contents 
- "<<-------Slave Tx data ------->>". 0 byte transfers are allowed with this
option but not with option 3 below.

Use menu option 2 to read the 32 bytes of data from the Slave I2C 
slave_tx_buffer[] via I2C and display it on the console.

Use menu option 3 to write between 1 and 32 bytes of data to the slave and read
it back in the same operation (uses repeat start between read and write). 

Use menu option 4 to terminate the demo.

To demonstrate the error detection and time out features of the driver, follow
these steps:

1. Error: Disconnect the SDA line by removing the flying lead or Jumper 
   from H1 pin 7. Attempt to write some data to the slave via menu option 1
   and observe the "Data Write Failed!" message.
   
2. Time out: Connect the flying lead or Jumper removed from H1 in the previous
   step to gnd (e.g. H1 pin 9). Attempt to write some data to the slave via menu
   option 1 and observe the "Data Write Timed Out!" message after 3 seconds.
   
--------------------------------------------------------------------------------
                                Target hardware
--------------------------------------------------------------------------------
This example project is targeted at a SmartFusion2 Eval Kit(090) with 2 
CoreI2C instantiated in the fabric (CoreI2C_0 and CoreI2C_1) and 4 BIBUFS.

The CPU clock in the example is 160MHz, the APB clocks are 80MHz and the FIC
clocks are set to 20MHz to ensure the design timing is SMBUS compatible (see
CoreI2C Hand Book page 14 note for details).

The CoreI2C instances were configured for "Full Master RX/TX, Slave RX/TX Modes"
with single channels. CoreI2C_0 int[0] connects to MSS_INT_F2M[0] and CoreI2C_1
int[0] connects to MSS_INT_F2M[1].

CoreI2C_0 registers are located at 0x30000000 and CoreI2C_1 registers are located
at 0x30001000. If your design differs, the COREI2C_0 and COREI2C_1 macros in 
platform.h will need to be modified to match your design.

The BIBUFs are connected as follows to provide the required Open Drain type
operation for I2C communications.

               +---------------------+
         I/O---| PAD               Y |--SCLI/SDAI
               |                     |
         gnd---| D                   |
               |                     |
SCLO/SDAO---|>O| E                   |
               +---------------------+

The SCLO and SDAO signals are inverted and fed to the BIBUF enable whilst the
BIBUF D pin is connected to ground. This way when the signal is high, the
output is disabled (tri stated) and is pulled high by an external resistor and
when the signal is low, the output is actively pulled to ground.


It is a good idea to set the drive current for the I2C I/O to the maximum
allowed so that the fall time for the I2C pins is minimised. This will help to
improve the reliability of the I2C communications.

Connect the I/O as follows:

 1. COREI2C_0 SCL - Pin G16   
 2. COREI2C_0 SDA - Pin G17
 3. COREI2C_1 SCL - Pin R22
 4. COREI2C_1 SDA - Pin P22
 
The following jumper settings are required on the SmartFusion2 Eval Kit board.
Please check your design if you have a different revision of the board.

 1. Connect H1 pin 11 to H1 pin 7 via a Jumper (SDA 0 to SDA 1). 
 2. Connect H1 pin 10 to H1 pin 6 via a Jumper (SCL 0 to SCL 1).


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
