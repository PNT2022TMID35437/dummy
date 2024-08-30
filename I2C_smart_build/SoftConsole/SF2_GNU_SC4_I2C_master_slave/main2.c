//#include <stdint.h>
//#include "mss_i2c.h"
//#include <stdio.h>
//#include "drivers/corei2c/core_i2c.h"
//#include "drivers/mss_uart/mss_uart.h"
//#include "drivers_config/sys_config/sys_config.h"
//
//
//#define INA226_I2C_ADDRESS 0x40
//#define Temp_Addr    0b1001110
//#define COREI2C_0    0x30000000U
//
//#define INA226_REG_CURRENT 0x01
//i2c_instance_t g_core_i2c0;
//#define TX_LENGTH            16u
//   #define RX_LENGTH            8u
//static void sleep();
//
//void I2C_Init(void) {
//    MSS_I2C_init(&g_mss_i2c1,0x40, MSS_I2C_PCLK_DIV_256);
//}
//
//
//uint8_t INA226_ReadRegister16(uint8_t reg, uint32_t *value) {
//    uint8_t data[2]={0,0};
//    uint8_t returned_value_0;
//
//    MSS_I2C_write_read(
//        &g_mss_i2c1,
//        INA226_I2C_ADDRESS,
//        &reg,
//        1,
//        data,
//        sizeof(data),
//        MSS_I2C_RELEASE_BUS
//  );
//
//    mss_i2c_status_t status =MSS_I2C_wait_complete(&g_mss_i2c1,0);
//    status=MSS_I2C_get_status(&g_mss_i2c1);
//
//    if (status == MSS_I2C_SUCCESS) {
//        *value = (data[0] << 8) | data[1];  // Combine 3 bytes into a 24-bit value
//        return 1;  // Success
//    } else {
//        return 0;  // Failure
//    }
//}
//
//uint8_t Temp_ReadRegister16(uint8_t reg, uint32_t *value) {
//    uint8_t data[1]={0};
//    uint8_t returned_value_0;
//
//    I2C_write_read(
//        &g_core_i2c0,
//        Temp_Addr,
//        &reg,
//        1,
//        data,
//        sizeof(data),
//        I2C_RELEASE_BUS
//  );
//
//
//
//  i2c_status_t status=I2C_wait_complete(&g_core_i2c0,3000u);
//     status=I2C_get_status(&g_core_i2c0);
//
//
//    if (status == I2C_SUCCESS) {
//        *value = (data[0] << 8) | data[1];  // Combine 3 bytes into a 24-bit value
//        return 1;  // Success
//    } else {
//        return 0;  // Failure
//    }
//}
//uint8_t INA226_WriteRegister(uint8_t reg, uint16_t value) {
//    uint8_t data[3];
//    uint8_t a;
//    data[0] = reg;
//    data[1] = (value >> 8);
//    data[2] = value & 0xFF;
//
//    mss_i2c_status_t status = MSS_I2C_write(
//        &g_mss_i2c1,
//        INA226_I2C_ADDRESS,
//        data,
//        sizeof(data),
//        MSS_I2C_RELEASE_BUS
//    );
//    a=MSS_I2C_wait_complete(&g_mss_i2c1,0);
//
//    status=MSS_I2C_get_status(&g_mss_i2c1);
//    return (status == MSS_I2C_SUCCESS) ? 1 : 0;
//}
//uint32_t Current_Cal()
//{
//	 	uint32_t shunt_volt_value;
//	    uint8_t write_buf[2];
//	    uint32_t config_value,cal_val;
//	    uint32_t current_val=0;
//	    uint8_t b=0;
//	INA226_ReadRegister16(0x00,&config_value);
//
//    INA226_ReadRegister16(INA226_REG_CURRENT, &shunt_volt_value);
//
//    INA226_ReadRegister16(0x05,&cal_val);
//    b=INA226_WriteRegister(0x05, 0x3E);
//
//    INA226_ReadRegister16(0x05,&cal_val);
//    INA226_ReadRegister16(0x04,&current_val);
//
//    return current_val;
//}
//
//int main(void) {
//	uint32_t arr=0;
//
//	  i2c_instance_t g_i2c_inst;
//	    uint8_t  rx_buffer[RX_LENGTH]={0,0,0,0,0,0,0,0};
//	    uint8_t  read_length = RX_LENGTH;
//	    uint8_t  tx_buffer[TX_LENGTH]={0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};
//	    uint8_t  write_length = TX_LENGTH;
//
//
//	I2C_init(&g_core_i2c0, COREI2C_0, Temp_Addr, I2C_PCLK_DIV_256);
//	 I2C_write_read( &g_core_i2c0, Temp_Addr, tx_buffer, write_length,
//	                        rx_buffer, read_length, I2C_RELEASE_BUS );
//	i2c_status_t status=I2C_wait_complete(&g_core_i2c0,3000u);
//
//	//Temp_ReadRegister16(0x00,&arr);
//
//	status=I2C_get_status(&g_core_i2c0);
//    while (1)
//    {
//
//
//    	}
//
//    return 0;
//
//}
//
//static void sleep(uint32_t n)
//{
//    volatile uint32_t delay_count = n*5000u;
//
//    while(delay_count > 0u)
//    {
//        --delay_count;
//    }
//}
