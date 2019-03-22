################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../platform/middleware/glib/dmd/display/dmd_display.c 

OBJS += \
./platform/middleware/glib/dmd/display/dmd_display.o 

C_DEPS += \
./platform/middleware/glib/dmd/display/dmd_display.d 


# Each subdirectory must supply rules for building sources it contributes
platform/middleware/glib/dmd/display/dmd_display.o: ../platform/middleware/glib/dmd/display/dmd_display.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m4 -mthumb -std=c99 '-DHAL_CONFIG=1' '-D__HEAP_SIZE=0xD00' '-D__STACK_SIZE=0x800' '-DEFR32BG13P632F512GM48=1' -I"/home/mehdi/SimplicityStudio/v4_workspace/BARK_v2/BARK_CODE/inc" -I"/home/mehdi/SimplicityStudio/v4_workspace/BARK_v2/platform/emlib/inc" -I"/home/mehdi/SimplicityStudio/v4_workspace/BARK_v2/BARK_CODE" -I"/home/mehdi/SimplicityStudio/v4_workspace/BARK_v2" -I"/home/mehdi/SimplicityStudio/v4_workspace/BARK_v2/platform/Device/SiliconLabs/EFR32BG13P/Include" -I"/home/mehdi/SimplicityStudio/v4_workspace/BARK_v2/hardware/kit/common/bsp" -I"/home/mehdi/SimplicityStudio/v4_workspace/BARK_v2/platform/middleware/glib/glib" -I"/home/mehdi/SimplicityStudio/v4_workspace/BARK_v2/platform/emlib/src" -I"/home/mehdi/SimplicityStudio/v4_workspace/BARK_v2/hardware/kit/common/drivers" -I"/home/mehdi/SimplicityStudio/v4_workspace/BARK_v2/platform/CMSIS/Include" -I"/home/mehdi/SimplicityStudio/v4_workspace/BARK_v2/hardware/kit/EFR32BG13_BRD4104A/config" -I"/home/mehdi/SimplicityStudio/v4_workspace/BARK_v2/platform/middleware/glib" -I"/home/mehdi/SimplicityStudio/v4_workspace/BARK_v2/platform/halconfig/inc/hal-config" -I"/home/mehdi/SimplicityStudio/v4_workspace/BARK_v2/hardware/kit/common/halconfig" -I"/home/mehdi/SimplicityStudio/v4_workspace/BARK_v2/protocol/bluetooth_2.7/ble_stack/inc/common" -I"/home/mehdi/SimplicityStudio/v4_workspace/BARK_v2/platform/emdrv/tempdrv/inc" -I"/home/mehdi/SimplicityStudio/v4_workspace/BARK_v2/platform/middleware/glib/dmd/ssd2119" -I"/home/mehdi/SimplicityStudio/v4_workspace/BARK_v2/platform/Device/SiliconLabs/EFR32BG13P/Source" -I"/home/mehdi/SimplicityStudio/v4_workspace/BARK_v2/platform/emdrv/sleep/src" -I"/home/mehdi/SimplicityStudio/v4_workspace/BARK_v2/protocol/bluetooth_2.7/ble_stack/inc/soc" -I"/home/mehdi/SimplicityStudio/v4_workspace/BARK_v2/app/bluetooth_2.7/common/stack_bridge" -I"/home/mehdi/SimplicityStudio/v4_workspace/BARK_v2/platform/emdrv/common/inc" -I"/home/mehdi/SimplicityStudio/v4_workspace/BARK_v2/platform/emdrv/sleep/inc" -I"/home/mehdi/SimplicityStudio/v4_workspace/BARK_v2/platform/middleware/glib/dmd" -I"/home/mehdi/SimplicityStudio/v4_workspace/BARK_v2/platform/bootloader/api" -I"/home/mehdi/SimplicityStudio/v4_workspace/BARK_v2/platform/emdrv/tempdrv/src" -I"/home/mehdi/SimplicityStudio/v4_workspace/BARK_v2/platform/emdrv/uartdrv/inc" -I"/home/mehdi/SimplicityStudio/v4_workspace/BARK_v2/platform/emdrv/gpiointerrupt/inc" -I"/home/mehdi/SimplicityStudio/v4_workspace/BARK_v2/platform/middleware/glib/dmd/display" -I"/home/mehdi/SimplicityStudio/v4_workspace/BARK_v2/platform/Device/SiliconLabs/EFR32BG13P/Source/GCC" -I"/home/mehdi/SimplicityStudio/v4_workspace/BARK_v2/platform/radio/rail_lib/chip/efr32" -I"/home/mehdi/SimplicityStudio/v4_workspace/BARK_v2/platform/radio/rail_lib/common" -I"/home/mehdi/SimplicityStudio/v4_workspace/BARK_v2/platform/bootloader" -O0 -Wall -c -fmessage-length=0 -ffunction-sections -fdata-sections -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -MMD -MP -MF"platform/middleware/glib/dmd/display/dmd_display.d" -MT"platform/middleware/glib/dmd/display/dmd_display.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


