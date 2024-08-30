/*******************************************************************************
 * (c) Copyright 2015 Microsemi SoC Products Group.  All rights reserved.
 *
 *  This sample program demonstrates the use of interrupts that can be generated
 *  by CoreGPIO ports configured as inputs.
 *
 * Please refer to the file README.txt for further details about this example.
 *
 *  SVN $Revision: 8017 $
 *  SVN $Date: 2015-10-13 13:19:09 +0530 (Tue, 13 Oct 2015) $
 */
#include "platform.h"
#include "hal/hal.h"
#include "drivers/CoreGPIO/core_gpio.h"
#include "core_uart_apb.h"
#include "m2sxxx.h"

/*
 * Delay loop down counter load value.
 */

/*
 * Value written to the GPIO outputs in order to switch on the LEDs attached to
 * the CoreGPIO outputs.
 */
//#define LEDS_ON   0x00000000
static void sleep();
void FabricIrq1_IRQHandler( void );

gpio_instance_t g_gpio;
UART_instance_t g_uart;
unsigned char tx[] ="Hi";
unsigned char tx_b[] ="INTERRUPT ";
/*
 * Delay down counter used to time the blinking rate of the LED. This delay
 * counter is decremented in the program's foreground loop. It is reloaded in
 * the foreground loop when it reaches 0. It is also be reloaded within the
 * GPIO interrupt serive routines to affect the LED blinking rate.
 */

/*-------------------------------------------------------------------------*//**
 * main() function.
 */
int main()
{
    NVIC_SetPriority(FabricIrq1_IRQn, 5u);

    NVIC_ClearPendingIRQ(FabricIrq1_IRQn);


    GPIO_init( &g_gpio, 0x30000000, GPIO_APB_32_BITS_BUS );
    

    GPIO_config( &g_gpio, GPIO_0, GPIO_OUTPUT_MODE );
    GPIO_config( &g_gpio, GPIO_1, GPIO_INPUT_MODE | GPIO_IRQ_LEVEL_HIGH );


    GPIO_set_output( &g_gpio, GPIO_0 ,1);

    GPIO_enable_irq( &g_gpio, GPIO_1 );

    NVIC_EnableIRQ(FabricIrq1_IRQn);


    for(;;)
    {

//            GPIO_disable_irq( &g_gpio, GPIO_0 );
//            GPIO_disable_irq( &g_gpio, GPIO_1 );
//


            GPIO_set_output( &g_gpio, GPIO_0 ,1);
            sleep(1000);
            GPIO_set_output( &g_gpio, GPIO_0 ,0);
            sleep(1000);
//           //// UART_send(&g_uart,tx,2);
//
//                         GPIO_enable_irq( &g_gpio, GPIO_1 );

    }

}

/*-------------------------------------------------------------------------*//**
 * GPIO 0 and  GPIO 1  interrupt service routine is FabricIrq4 ISR.
 *
 * GPIO 0: This interrupt service routine function will be called when the SW1
 * button is pressed. It will keep getting called as long as the SW1 button
 * is pressed because the GPIO 0 input is configured as a level interrupt source.
 *
 * GPIO 1 : This interrupt service routine function will be called when the SW2
 * button is pressed. It will only be called once even if the SW2 button is
 * kept pressed because the GPIO 1 input is configured as a rising edge interrupt
 * source. The SW2 button needs to be released and pressed again in order create
 * a new rising edge on the GPIO 1 input and this function to be called again.
 */
void FabricIrq1_IRQHandler( void )
{

    GPIO_set_output( &g_gpio,GPIO_0,1);
    ////UART_send(&g_uart,tx_b,10);

//    GPIO_clear_irq( &g_gpio, GPIO_0 );
    GPIO_clear_irq( &g_gpio, GPIO_1 );
    /*
     * Clear the interrupt in the Cortex-M3 NVIC.
     */
    NVIC_ClearPendingIRQ(FabricIrq1_IRQn);
}

static void sleep(uint32_t n)
{
    volatile uint32_t delay_count = n*5000u;

    while(delay_count > 0u)
    {
        --delay_count;
    }
}

