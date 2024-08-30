################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/CoreGPIO/core_gpio.c 

OBJS += \
./drivers/CoreGPIO/core_gpio.o 

C_DEPS += \
./drivers/CoreGPIO/core_gpio.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/CoreGPIO/%.o: ../drivers/CoreGPIO/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -I../hal -I../hal/CortexM3 -I../hal/CortexM3/GNU -I../CMSIS -I../CMSIS/startup_gcc -I../drivers/mss_gpio -I../drivers/mss_pdma -I../drivers/mss_spi -I../drivers/w25q64fvssig -std=gnu11 --specs=cmsis.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


