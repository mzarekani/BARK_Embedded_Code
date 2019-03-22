################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../hardware/kit/common/drivers/display.c \
../hardware/kit/common/drivers/displayls013b7dh03.c \
../hardware/kit/common/drivers/displaypalemlib.c \
../hardware/kit/common/drivers/i2cspm.c \
../hardware/kit/common/drivers/mx25flash_spi.c \
../hardware/kit/common/drivers/si7013.c \
../hardware/kit/common/drivers/tempsens.c \
../hardware/kit/common/drivers/udelay.c 

OBJS += \
./hardware/kit/common/drivers/display.o \
./hardware/kit/common/drivers/displayls013b7dh03.o \
./hardware/kit/common/drivers/displaypalemlib.o \
./hardware/kit/common/drivers/i2cspm.o \
./hardware/kit/common/drivers/mx25flash_spi.o \
./hardware/kit/common/drivers/si7013.o \
./hardware/kit/common/drivers/tempsens.o \
./hardware/kit/common/drivers/udelay.o 

C_DEPS += \
./hardware/kit/common/drivers/display.d \
./hardware/kit/common/drivers/displayls013b7dh03.d \
./hardware/kit/common/drivers/displaypalemlib.d \
./hardware/kit/common/drivers/i2cspm.d \
./hardware/kit/common/drivers/mx25flash_spi.d \
./hardware/kit/common/drivers/si7013.d \
./hardware/kit/common/drivers/tempsens.d \
./hardware/kit/common/drivers/udelay.d 


# Each subdirectory must supply rules for building sources it contributes
hardware/kit/common/drivers/display.o: ../hardware/kit/common/drivers/display.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m4 -mthumb -std=c99 '-D__HEAP_SIZE=0xD00' '-D__STACK_SIZE=0x800' '-DHAL_CONFIG=1' '-DEFR32BG1B232F256GM56=1' -I"/home/mehdi/SimplicityStudio/v4_workspace/BARK_v2" -O2 -Wall -c -fmessage-length=0 -ffunction-sections -fdata-sections -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -MMD -MP -MF"hardware/kit/common/drivers/display.d" -MT"hardware/kit/common/drivers/display.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

hardware/kit/common/drivers/displayls013b7dh03.o: ../hardware/kit/common/drivers/displayls013b7dh03.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m4 -mthumb -std=c99 '-D__HEAP_SIZE=0xD00' '-D__STACK_SIZE=0x800' '-DHAL_CONFIG=1' '-DEFR32BG1B232F256GM56=1' -I"/home/mehdi/SimplicityStudio/v4_workspace/BARK_v2" -O2 -Wall -c -fmessage-length=0 -ffunction-sections -fdata-sections -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -MMD -MP -MF"hardware/kit/common/drivers/displayls013b7dh03.d" -MT"hardware/kit/common/drivers/displayls013b7dh03.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

hardware/kit/common/drivers/displaypalemlib.o: ../hardware/kit/common/drivers/displaypalemlib.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m4 -mthumb -std=c99 '-D__HEAP_SIZE=0xD00' '-D__STACK_SIZE=0x800' '-DHAL_CONFIG=1' '-DEFR32BG1B232F256GM56=1' -I"/home/mehdi/SimplicityStudio/v4_workspace/BARK_v2" -O2 -Wall -c -fmessage-length=0 -ffunction-sections -fdata-sections -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -MMD -MP -MF"hardware/kit/common/drivers/displaypalemlib.d" -MT"hardware/kit/common/drivers/displaypalemlib.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

hardware/kit/common/drivers/i2cspm.o: ../hardware/kit/common/drivers/i2cspm.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m4 -mthumb -std=c99 '-D__HEAP_SIZE=0xD00' '-D__STACK_SIZE=0x800' '-DHAL_CONFIG=1' '-DEFR32BG1B232F256GM56=1' -I"/home/mehdi/SimplicityStudio/v4_workspace/BARK_v2" -O2 -Wall -c -fmessage-length=0 -ffunction-sections -fdata-sections -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -MMD -MP -MF"hardware/kit/common/drivers/i2cspm.d" -MT"hardware/kit/common/drivers/i2cspm.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

hardware/kit/common/drivers/mx25flash_spi.o: ../hardware/kit/common/drivers/mx25flash_spi.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m4 -mthumb -std=c99 '-D__HEAP_SIZE=0xD00' '-D__STACK_SIZE=0x800' '-DHAL_CONFIG=1' '-DEFR32BG1B232F256GM56=1' -I"/home/mehdi/SimplicityStudio/v4_workspace/BARK_v2" -O2 -Wall -c -fmessage-length=0 -ffunction-sections -fdata-sections -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -MMD -MP -MF"hardware/kit/common/drivers/mx25flash_spi.d" -MT"hardware/kit/common/drivers/mx25flash_spi.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

hardware/kit/common/drivers/si7013.o: ../hardware/kit/common/drivers/si7013.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m4 -mthumb -std=c99 '-D__HEAP_SIZE=0xD00' '-D__STACK_SIZE=0x800' '-DHAL_CONFIG=1' '-DEFR32BG1B232F256GM56=1' -I"/home/mehdi/SimplicityStudio/v4_workspace/BARK_v2" -O2 -Wall -c -fmessage-length=0 -ffunction-sections -fdata-sections -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -MMD -MP -MF"hardware/kit/common/drivers/si7013.d" -MT"hardware/kit/common/drivers/si7013.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

hardware/kit/common/drivers/tempsens.o: ../hardware/kit/common/drivers/tempsens.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m4 -mthumb -std=c99 '-D__HEAP_SIZE=0xD00' '-D__STACK_SIZE=0x800' '-DHAL_CONFIG=1' '-DEFR32BG1B232F256GM56=1' -I"/home/mehdi/SimplicityStudio/v4_workspace/BARK_v2" -O2 -Wall -c -fmessage-length=0 -ffunction-sections -fdata-sections -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -MMD -MP -MF"hardware/kit/common/drivers/tempsens.d" -MT"hardware/kit/common/drivers/tempsens.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

hardware/kit/common/drivers/udelay.o: ../hardware/kit/common/drivers/udelay.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m4 -mthumb -std=c99 '-D__HEAP_SIZE=0xD00' '-D__STACK_SIZE=0x800' '-DHAL_CONFIG=1' '-DEFR32BG1B232F256GM56=1' -I"/home/mehdi/SimplicityStudio/v4_workspace/BARK_v2" -O2 -Wall -c -fmessage-length=0 -ffunction-sections -fdata-sections -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -MMD -MP -MF"hardware/kit/common/drivers/udelay.d" -MT"hardware/kit/common/drivers/udelay.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


