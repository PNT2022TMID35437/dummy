#include "platform.h"
#include "drivers/CoreGPIO/core_gpio.h"
#include "hal.h"
#include "core_uart_apb.h"
#include "m2sxxx.h"
#include <stdio.h>

#define SystemCoreClock 50000000

static void delay(void);
void blink();
static void sleep();

gpio_instance_t g_gpio;
gpio_instance_t g_gpio_1;

/*
 * CoreUART instance data.
 */
UART_instance_t g_uart;

/*-------------------------------------------------------------------------*//**
 * main() function.
 */
int main()
{
	uint8_t  rx_buffer[2];
	unsigned char  tx_buffer[]="lights on";
	unsigned char  tx_buffer1[]="lights off";
	unsigned char  tx_buffer2[]="blinking completed";

	size_t a=0;
    
    /**************************************************************************
     * Initialize the CoreGPIO driver with the base address of the CoreGPIO
     * instance to use and the initial state of the outputs. 
     *************************************************************************/ 
    GPIO_init( &g_gpio, COREGPIO_BASE_ADDR, GPIO_APB_8_BITS_BUS );
    GPIO_init( &g_gpio_1, COREGPIO_BASE_ADDR_1 , GPIO_APB_8_BITS_BUS );
    UART_init(&g_uart,0x30002000,53,(DATA_8_BITS | NO_PARITY));
    /**************************************************************************
     * Configure the GPIOs.
     *************************************************************************/     
    //GPIO_config( &g_gpio, GPIO_30, GPIO_OUTPUT_MODE );
    GPIO_config( &g_gpio, GPIO_0, GPIO_INOUT_MODE );
    GPIO_config( &g_gpio_1, GPIO_0, GPIO_INPUT_MODE );
//    GPIO_config( &g_gpio, GPIO_3, GPIO_OUTPUT_MODE );
//    GPIO_config( &g_gpio, GPIO_4, GPIO_INPUT_MODE );
//    GPIO_config( &g_gpio, GPIO_5, GPIO_INPUT_MODE );
//
    /*
     * Set initial delay used to blink the LED.
     */

    /*
     * Infinite loop.
     */
    for(;;)
    {
    	UART_get_rx(&g_uart,rx_buffer,5);

    	sleep(100);

    	if (rx_buffer[0]=='O')
    	{
    		GPIO_set_output(&g_gpio,GPIO_0,1);
    		UART_send(&g_uart,tx_buffer,9);
    		delay();

    	}

    	else if(rx_buffer[0]=='F')
    	{
            GPIO_set_output(&g_gpio,GPIO_0,0);
            UART_send(&g_uart,tx_buffer1,10);
            delay();

    	}
    	else if(rx_buffer[0]=='B')
    	{
    		blink(rx_buffer[1]);
    		UART_send(&g_uart,tx_buffer2,18);

    	}
    	rx_buffer[0]=0;
    	rx_buffer[1]=0;
		}

        }

static void delay(void)
{
    volatile uint32_t delay_count = 10000000u;

    while(delay_count > 0u)
    {
        --delay_count;
    }
}

void blink(int m)
{
	if (GPIO_get_inputs(&g_gpio_1))
	{
		for(int i=0;i<m;i++)
		{
		delay();
		GPIO_set_output(&g_gpio,GPIO_0,1);
		delay();
		GPIO_set_output(&g_gpio,GPIO_0,0);
		}
	}


}

static void sleep(uint32_t n)
{
    volatile uint32_t delay_count = n*5000u;

    while(delay_count > 0u)
    {
        --delay_count;
    }
}

