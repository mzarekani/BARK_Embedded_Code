################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include protocol/bluetooth_2.7/lib/EFR32BG13P/GCC/subdir.mk
-include platform/middleware/glib/glib/subdir.mk
-include platform/middleware/glib/dmd/display/subdir.mk
-include platform/emlib/src/subdir.mk
-include platform/emdrv/tempdrv/src/subdir.mk
-include platform/emdrv/sleep/src/subdir.mk
-include platform/Device/SiliconLabs/EFR32BG13P/Source/GCC/subdir.mk
-include platform/Device/SiliconLabs/EFR32BG13P/Source/subdir.mk
-include hardware/kit/common/drivers/subdir.mk
-include hardware/kit/common/bsp/subdir.mk
-include BARK_CODE/src/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 

# All Target
all: BARK_v2.axf

# Tool invocations
BARK_v2.axf: $(OBJS) $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: GNU ARM C Linker'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m4 -mthumb -T "/home/mehdi/SimplicityStudio/v4_workspace/BARK_v2/efr32bg13p632f512gm48.ld" -Xlinker --gc-sections -Xlinker -Map="BARK_v2.map" -mfpu=fpv4-sp-d16 -mfloat-abi=softfp --specs=nano.specs -o BARK_v2.axf -Wl,--start-group "./BARK_CODE/src/adc.o" "./BARK_CODE/src/bark_flash.o" "./BARK_CODE/src/display_bark.o" "./BARK_CODE/src/letimer.o" "./BARK_CODE/src/servo.o" "./advertisement.o" "./app.o" "./app_hw.o" "./app_ui.o" "./application_properties.o" "./beacon.o" "./gatt_db.o" "./graphics.o" "./ia.o" "./init_app.o" "./init_board.o" "./init_mcu.o" "./main.o" "./pti.o" "./hardware/kit/common/bsp/bsp_stk.o" "./hardware/kit/common/bsp/bsp_stk_leds.o" "./hardware/kit/common/drivers/display.o" "./hardware/kit/common/drivers/displayls013b7dh03.o" "./hardware/kit/common/drivers/displaypalemlib.o" "./hardware/kit/common/drivers/i2cspm.o" "./hardware/kit/common/drivers/mx25flash_spi.o" "./hardware/kit/common/drivers/si7013.o" "./hardware/kit/common/drivers/tempsens.o" "./hardware/kit/common/drivers/udelay.o" "./platform/Device/SiliconLabs/EFR32BG13P/Source/GCC/startup_efr32bg13p.o" "./platform/Device/SiliconLabs/EFR32BG13P/Source/system_efr32bg13p.o" "./platform/emdrv/sleep/src/sleep.o" "./platform/emdrv/tempdrv/src/tempdrv.o" "./platform/emlib/src/em_adc.o" "./platform/emlib/src/em_cmu.o" "./platform/emlib/src/em_core.o" "./platform/emlib/src/em_cryotimer.o" "./platform/emlib/src/em_crypto.o" "./platform/emlib/src/em_emu.o" "./platform/emlib/src/em_gpio.o" "./platform/emlib/src/em_i2c.o" "./platform/emlib/src/em_letimer.o" "./platform/emlib/src/em_msc.o" "./platform/emlib/src/em_rmu.o" "./platform/emlib/src/em_rtcc.o" "./platform/emlib/src/em_system.o" "./platform/emlib/src/em_usart.o" "./platform/middleware/glib/dmd/display/dmd_display.o" "./platform/middleware/glib/glib/bmp.o" "./platform/middleware/glib/glib/glib.o" "./platform/middleware/glib/glib/glib_bitmap.o" "./platform/middleware/glib/glib/glib_circle.o" "./platform/middleware/glib/glib/glib_font_narrow_6x8.o" "./platform/middleware/glib/glib/glib_font_normal_8x8.o" "./platform/middleware/glib/glib/glib_font_number_16x20.o" "./platform/middleware/glib/glib/glib_line.o" "./platform/middleware/glib/glib/glib_polygon.o" "./platform/middleware/glib/glib/glib_rectangle.o" "./platform/middleware/glib/glib/glib_string.o" "/home/mehdi/SimplicityStudio/v4_workspace/BARK_v2/protocol/bluetooth_2.7/lib/EFR32BG13P/GCC/libmbedtls.a" "/home/mehdi/SimplicityStudio/v4_workspace/BARK_v2/protocol/bluetooth_2.7/lib/EFR32BG13P/GCC/libbluetooth.a" "/home/mehdi/SimplicityStudio/v4_workspace/BARK_v2/protocol/bluetooth_2.7/lib/EFR32BG13P/GCC/binapploader.o" "/home/mehdi/SimplicityStudio/v4_workspace/BARK_v2/protocol/bluetooth_2.7/lib/EFR32BG13P/GCC/libpsstore.a" "/home/mehdi/SimplicityStudio/v4_workspace/BARK_v2/platform/radio/rail_lib/autogen/librail_release/librail_efr32xg13_gcc_release.a" -lm -Wl,--end-group -Wl,--start-group -lgcc -lc -lnosys -Wl,--end-group
	@echo 'Finished building target: $@'
	@echo ' '

	@echo 'Building hex file: BARK_v2.hex'
	arm-none-eabi-objcopy -O ihex "BARK_v2.axf" "BARK_v2.hex"
	@echo ' '

	@echo 'Building bin file: BARK_v2.bin'
	arm-none-eabi-objcopy -O binary "BARK_v2.axf" "BARK_v2.bin"
	@echo ' '

	@echo 'Building s37 file: BARK_v2.s37'
	arm-none-eabi-objcopy -O srec "BARK_v2.axf" "BARK_v2.s37"
	@echo ' '

	@echo 'Running size tool'
	arm-none-eabi-size "BARK_v2.axf"
	@echo ' '

# Other Targets
clean:
	-$(RM) $(EXECUTABLES)$(OBJS)$(C_DEPS) BARK_v2.axf
	-@echo ' '

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets
