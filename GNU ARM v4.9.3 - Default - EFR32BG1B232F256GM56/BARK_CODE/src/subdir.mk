################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../BARK_CODE/src/adc.c \
../BARK_CODE/src/bark_flash.c \
../BARK_CODE/src/display_bark.c \
../BARK_CODE/src/flash.c \
../BARK_CODE/src/gpio.c \
../BARK_CODE/src/letimer.c \
../BARK_CODE/src/servo.c \
../BARK_CODE/src/spi.c 

OBJS += \
./BARK_CODE/src/adc.o \
./BARK_CODE/src/bark_flash.o \
./BARK_CODE/src/display_bark.o \
./BARK_CODE/src/flash.o \
./BARK_CODE/src/gpio.o \
./BARK_CODE/src/letimer.o \
./BARK_CODE/src/servo.o \
./BARK_CODE/src/spi.o 

C_DEPS += \
./BARK_CODE/src/adc.d \
./BARK_CODE/src/bark_flash.d \
./BARK_CODE/src/display_bark.d \
./BARK_CODE/src/flash.d \
./BARK_CODE/src/gpio.d \
./BARK_CODE/src/letimer.d \
./BARK_CODE/src/servo.d \
./BARK_CODE/src/spi.d 


# Each subdirectory must supply rules for building sources it contributes
BARK_CODE/src/adc.o: ../BARK_CODE/src/adc.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m4 -mthumb -std=c99 '-D__HEAP_SIZE=0xD00' '-D__STACK_SIZE=0x800' '-DHAL_CONFIG=1' '-DEFR32BG1B232F256GM56=1' -I"/home/mehdi/SimplicityStudio/v4_workspace/BARK_v2" -O2 -Wall -c -fmessage-length=0 -ffunction-sections -fdata-sections -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -MMD -MP -MF"BARK_CODE/src/adc.d" -MT"BARK_CODE/src/adc.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

BARK_CODE/src/bark_flash.o: ../BARK_CODE/src/bark_flash.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m4 -mthumb -std=c99 '-D__HEAP_SIZE=0xD00' '-D__STACK_SIZE=0x800' '-DHAL_CONFIG=1' '-DEFR32BG1B232F256GM56=1' -I"/home/mehdi/SimplicityStudio/v4_workspace/BARK_v2" -O2 -Wall -c -fmessage-length=0 -ffunction-sections -fdata-sections -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -MMD -MP -MF"BARK_CODE/src/bark_flash.d" -MT"BARK_CODE/src/bark_flash.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

BARK_CODE/src/display_bark.o: ../BARK_CODE/src/display_bark.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m4 -mthumb -std=c99 '-D__HEAP_SIZE=0xD00' '-D__STACK_SIZE=0x800' '-DHAL_CONFIG=1' '-DEFR32BG1B232F256GM56=1' -I"/home/mehdi/SimplicityStudio/v4_workspace/BARK_v2" -O2 -Wall -c -fmessage-length=0 -ffunction-sections -fdata-sections -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -MMD -MP -MF"BARK_CODE/src/display_bark.d" -MT"BARK_CODE/src/display_bark.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

BARK_CODE/src/flash.o: ../BARK_CODE/src/flash.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m4 -mthumb -std=c99 '-D__HEAP_SIZE=0xD00' '-D__STACK_SIZE=0x800' '-DHAL_CONFIG=1' '-DEFR32BG1B232F256GM56=1' -I"/home/mehdi/SimplicityStudio/v4_workspace/BARK_v2" -O2 -Wall -c -fmessage-length=0 -ffunction-sections -fdata-sections -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -MMD -MP -MF"BARK_CODE/src/flash.d" -MT"BARK_CODE/src/flash.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

BARK_CODE/src/gpio.o: ../BARK_CODE/src/gpio.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m4 -mthumb -std=c99 '-D__HEAP_SIZE=0xD00' '-D__STACK_SIZE=0x800' '-DHAL_CONFIG=1' '-DEFR32BG1B232F256GM56=1' -I"/home/mehdi/SimplicityStudio/v4_workspace/BARK_v2" -O2 -Wall -c -fmessage-length=0 -ffunction-sections -fdata-sections -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -MMD -MP -MF"BARK_CODE/src/gpio.d" -MT"BARK_CODE/src/gpio.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

BARK_CODE/src/letimer.o: ../BARK_CODE/src/letimer.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m4 -mthumb -std=c99 '-D__HEAP_SIZE=0xD00' '-D__STACK_SIZE=0x800' '-DHAL_CONFIG=1' '-DEFR32BG1B232F256GM56=1' -I"/home/mehdi/SimplicityStudio/v4_workspace/BARK_v2" -O2 -Wall -c -fmessage-length=0 -ffunction-sections -fdata-sections -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -MMD -MP -MF"BARK_CODE/src/letimer.d" -MT"BARK_CODE/src/letimer.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

BARK_CODE/src/servo.o: ../BARK_CODE/src/servo.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m4 -mthumb -std=c99 '-D__HEAP_SIZE=0xD00' '-D__STACK_SIZE=0x800' '-DHAL_CONFIG=1' '-DEFR32BG1B232F256GM56=1' -I"/home/mehdi/SimplicityStudio/v4_workspace/BARK_v2" -O2 -Wall -c -fmessage-length=0 -ffunction-sections -fdata-sections -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -MMD -MP -MF"BARK_CODE/src/servo.d" -MT"BARK_CODE/src/servo.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

BARK_CODE/src/spi.o: ../BARK_CODE/src/spi.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m4 -mthumb -std=c99 '-D__HEAP_SIZE=0xD00' '-D__STACK_SIZE=0x800' '-DHAL_CONFIG=1' '-DEFR32BG1B232F256GM56=1' -I"/home/mehdi/SimplicityStudio/v4_workspace/BARK_v2" -O2 -Wall -c -fmessage-length=0 -ffunction-sections -fdata-sections -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -MMD -MP -MF"BARK_CODE/src/spi.d" -MT"BARK_CODE/src/spi.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


