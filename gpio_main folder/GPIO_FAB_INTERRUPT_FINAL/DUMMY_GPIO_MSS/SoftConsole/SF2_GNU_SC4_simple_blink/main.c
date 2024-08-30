/*******************************************************************************
 * (c) Copyright 2015 Microsemi SoC Products Group.  All rights reserved.
 *
 *  Simple CoreGPIO example program flashing LEDs on the target hardware.
 *
 * Please refer to the file README.txt for further details about this example.
 *
 * SVN $Revision: 8017 $
 * SVN $Date: 2015-10-13 13:19:09 +0530 (Tue, 13 Oct 2015) $
 */
#include "platform.h"
#include "drivers/CoreGPIO/core_gpio.h"
#include "m2sxxx.h"

gpio_instance_t g_gpio;

//static void sleep();
void FabricIrq1_IRQHandler( void );


/*-------------------------------------------------------------------------*//**
 * main() function.
 */
int main()
{



    GPIO_init( &g_gpio, COREGPIO_BASE_ADDR, GPIO_APB_32_BITS_BUS );
    
    NVIC_SetPriority(FabricIrq1_IRQn, 5u);

    NVIC_ClearPendingIRQ(FabricIrq1_IRQn);

    /**************************************************************************
     * Configure the GPIOs.
     *************************************************************************/     
    GPIO_config( &g_gpio, GPIO_0, GPIO_OUTPUT_MODE );
    GPIO_config( &g_gpio, GPIO_1, GPIO_INPUT_MODE | GPIO_IRQ_LEVEL_HIGH );
    /*
     * Set initial delay used to blink the LED.
     */
    GPIO_enable_irq( &g_gpio, GPIO_1 );

    NVIC_EnableIRQ(FabricIrq1_IRQn);


    /*
     * Infinite loop.
     */
    for(;;)
    {

    	GPIO_set_output( &g_gpio,GPIO_0,0);

    }
    
}

void FabricIrq1_IRQHandler( void )
{

     GPIO_set_output( &g_gpio,GPIO_0,1);

    GPIO_clear_irq( &g_gpio, GPIO_1 );

    NVIC_ClearPendingIRQ(FabricIrq1_IRQn);
}

//static void sleep(uint32_t n)
//{
//    volatile uint32_t delay_count = n*5000u;
//
//    while(delay_count > 0u)
//    {
//        --delay_count;
//    }
//}

