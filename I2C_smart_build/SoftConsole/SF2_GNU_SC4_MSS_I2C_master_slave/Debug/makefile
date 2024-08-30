################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include hal/CortexM3/GNU/subdir.mk
-include hal/CortexM3/subdir.mk
-include drivers_config/sys_config/subdir.mk
-include drivers/mss_uart/subdir.mk
-include drivers/mss_sys_services/subdir.mk
-include drivers/mss_nvm/subdir.mk
-include drivers/mss_i2c/subdir.mk
-include drivers/mss_hpdma/subdir.mk
-include CMSIS/startup_gcc/subdir.mk
-include CMSIS/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(ASM_DEPS)),)
-include $(ASM_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
SECONDARY_FLASH += \
MSS_I2C_master_slave.hex \

SECONDARY_SIZE += \
MSS_I2C_master_slave.siz \


# All Target
all: MSS_I2C_master_slave.elf secondary-outputs

# Tool invocations
MSS_I2C_master_slave.elf: $(OBJS) $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: Cross ARM C Linker'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -T ../CMSIS/startup_gcc/debug-in-microsemi-smartfusion2-esram.ld -Xlinker --gc-sections -Wl,-Map,"MSS_I2C_master_slave.map" -o "MSS_I2C_master_slave.elf" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '

MSS_I2C_master_slave.hex: MSS_I2C_master_slave.elf
	@echo 'Invoking: Cross ARM GNU Create Flash Image'
	arm-none-eabi-objcopy -O ihex "MSS_I2C_master_slave.elf"  "MSS_I2C_master_slave.hex"
	@echo 'Finished building: $@'
	@echo ' '

MSS_I2C_master_slave.siz: MSS_I2C_master_slave.elf
	@echo 'Invoking: Cross ARM GNU Print Size'
	arm-none-eabi-size --format=berkeley "MSS_I2C_master_slave.elf"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(OBJS)$(SECONDARY_FLASH)$(SECONDARY_SIZE)$(ASM_DEPS)$(S_UPPER_DEPS)$(C_DEPS) MSS_I2C_master_slave.elf
	-@echo ' '

secondary-outputs: $(SECONDARY_FLASH) $(SECONDARY_SIZE)

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets
