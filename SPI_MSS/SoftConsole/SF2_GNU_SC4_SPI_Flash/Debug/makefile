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
-include drivers/w25q64fvssig/subdir.mk
-include drivers/mss_uart/subdir.mk
-include drivers/mss_sys_services/subdir.mk
-include drivers/mss_spi/subdir.mk
-include drivers/mss_pdma/subdir.mk
-include drivers/mss_nvm/subdir.mk
-include drivers/mss_hpdma/subdir.mk
-include drivers/mss_gpio/subdir.mk
-include drivers/CoreGPIO/subdir.mk
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
spi_flash_pdma_example.hex \

SECONDARY_SIZE += \
spi_flash_pdma_example.siz \


# All Target
all: spi_flash_pdma_example.elf secondary-outputs

# Tool invocations
spi_flash_pdma_example.elf: $(OBJS) $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: Cross ARM C Linker'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -T ../CMSIS/startup_gcc/debug-in-microsemi-smartfusion2-esram.ld -Xlinker --gc-sections -Wl,-Map,"spi_flash_pdma_example.map" -o "spi_flash_pdma_example.elf" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '

spi_flash_pdma_example.hex: spi_flash_pdma_example.elf
	@echo 'Invoking: Cross ARM GNU Create Flash Image'
	arm-none-eabi-objcopy -O ihex "spi_flash_pdma_example.elf"  "spi_flash_pdma_example.hex"
	@echo 'Finished building: $@'
	@echo ' '

spi_flash_pdma_example.siz: spi_flash_pdma_example.elf
	@echo 'Invoking: Cross ARM GNU Print Size'
	arm-none-eabi-size --format=berkeley "spi_flash_pdma_example.elf"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(OBJS)$(SECONDARY_FLASH)$(SECONDARY_SIZE)$(ASM_DEPS)$(S_UPPER_DEPS)$(C_DEPS) spi_flash_pdma_example.elf
	-@echo ' '

secondary-outputs: $(SECONDARY_FLASH) $(SECONDARY_SIZE)

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets
