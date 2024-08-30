/*******************************************************************************
 * (c) Copyright 2015 Microsemi Corporation.  All rights reserved.
 *
 * This example program demonstrates the use of the SmartFusion2 MSS I2C driver
 * for master and Slave functions. It configures MSS I2C0 as master and MSS I2C1
 * as Slave. It provides a UART command line interface allowing the user to
 * select the I2C transaction type to perform and the parameters to use for the
 * transaction.
 * MSS I2C0 SDA pin is connected to MSS I2C1 SDA and MSS I2C0 SCL pin is
 * connected to MSS I2C1 SCL for testing this example Project.
 *
 * SVN $Revision: 7806 $
 * SVN $Date: 2015-09-14 19:24:30 +0530 (Mon, 14 Sep 2015) $
 */

#include "drivers/mss_uart/mss_uart.h"
#include "drivers/mss_i2c/mss_i2c.h"
#include "drivers_config/sys_config/sys_config.h"


#define SLAVE_SER_ADDR     0x40
const uint8_t current_register =0x07;


#define I2C_MASTER &g_mss_i2c1
#define DEMO_I2C_TIMEOUT 3000u

mss_i2c_status_t status;




int main()
{
     uint8_t current[24]={0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};
	  MSS_I2C_init(I2C_MASTER, SLAVE_SER_ADDR, MSS_I2C_BCLK_DIV_8);
	  mss_i2c_status_t status;
	  status = MSS_I2C_get_status(&g_mss_i2c1);

	  while(1)
	  {


		  	 {
		  		MSS_I2C_read(&g_mss_i2c1,0x07,current,sizeof(current),MSS_I2C_RELEASE_BUS);
		  	  status =MSS_I2C_wait_complete(I2C_MASTER, DEMO_I2C_TIMEOUT);
		  	 }


	  }

   return 0;
}


// Function to read a value from an INA226 register
