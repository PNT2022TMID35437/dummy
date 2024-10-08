/*******************************************************************************
 * (c) Copyright 2015 Microsemi SoC Products Group.  All rights reserved.
 *
 * CoreUARTapb interrupt driven transmit example.
 *
 * Please refer to the file README.txt for further details about this example.
 * 
 * SVN $Revision: 8013 $
 * SVN $Date: 2015-10-13 13:15:00 +0530 (Tue, 13 Oct 2015) $
 */
#include "hal.h"
#include "platform.h"
#include "core_uart_apb.h"
#include "m2sxxx.h"
#include "core_gpio.h"



/******************************************************************************
 * Baud value to achieve a 57600 baud rate with a 71MHz system clock.
 * This value is calculated using the following equation:
 *      BAUD_VALUE = (CLOCK / (16 * BAUD_RATE)) - 1
 *****************************************************************************/
#define BAUD_VALUE_57600    76

/******************************************************************************
 * CoreUARTapb instance data.
 *****************************************************************************/
UART_instance_t g_uart;
gpio_instance_t g_gpio;

/******************************************************************************
 * Global variable used to hold a pointer to the next block of data to transmit.
 *****************************************************************************/
volatile uint8_t* g_tx_buffer = 0;

/******************************************************************************
 * Global variable used to hold the number of characters left to be sent in the
 * data buffer pointed to by g_tx_buffer.
 *****************************************************************************/
volatile size_t g_tx_size = 0;

/******************************************************************************
 * This message will be transmitted over the UART to HyperTerminal.
 *****************************************************************************/



/******************************************************************************
 * Cortex-M3 interrupt handler for external interrupt 3.
 * This function is called when the Cortex-M3 IRQ3 signal is asserted.
 *****************************************************************************/
void FabricIrq3_IRQHandler( );
uint8_t rx_buffer[2];
/******************************************************************************
 * UART transmitter interrupt service routine.
 * This function is called by FabricIrq3_IRQHandler when the FabricIRQ3
 * signal is asserted.
 *****************************************************************************/


/******************************************************************************
 * is_tx_complete() is used to check if interrupt-driven transmission is
 * complete.
 *****************************************************************************/


/******************************************************************************
 * send_using_interrupt() is used to initiate interrupt-driven transmission.
 * It fills the UART FIFO and enable the TXRDY interrupt if there is data
 * remaining to be sent.
 *****************************************************************************/


/******************************************************************************
 * main function.
 *****************************************************************************/
int main( void )
{
	/**************************************************************************
	 * Initialize CoreUARTapb with its base address, baud value, and line
     * configuration.
	 *************************************************************************/
    UART_init( &g_uart, COREUARTAPB0_BASE_ADDR, BAUD_VALUE_57600, (DATA_8_BITS | NO_PARITY) );
    GPIO_init( &g_gpio,  0x30000000, GPIO_APB_32_BITS_BUS );
	/**************************************************************************
	 * Enable interrupts at the processor level

	 *************************************************************************/
    GPIO_config(&g_gpio,GPIO_0,GPIO_OUTPUT_MODE);
    NVIC_EnableIRQ(FabricIrq3_IRQn);
	/**************************************************************************
	 * Infinite Loop.
	 *************************************************************************/
    while(1)
    {
        /**********************************************************************
	     * Initiate message transmit.
	     *********************************************************************/
    	GPIO_set_output( &g_gpio, GPIO_0,1);



    }
}
void FabricIrq3_IRQHandler( void )
{
	if(rx_buffer[0]=='F')
			{
			GPIO_set_output( &g_gpio, GPIO_0,1 );
			}
}
