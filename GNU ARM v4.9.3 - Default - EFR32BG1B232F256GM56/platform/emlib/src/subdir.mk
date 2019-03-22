################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../platform/emlib/src/em_adc.c \
../platform/emlib/src/em_cmu.c \
../platform/emlib/src/em_core.c \
../platform/emlib/src/em_cryotimer.c \
../platform/emlib/src/em_crypto.c \
../platform/emlib/src/em_emu.c \
../platform/emlib/src/em_gpio.c \
../platform/emlib/src/em_i2c.c \
../platform/emlib/src/em_letimer.c \
../platform/emlib/src/em_msc.c \
../platform/emlib/src/em_rmu.c \
../platform/emlib/src/em_rtcc.c \
../platform/emlib/src/em_system.c \
../platform/emlib/src/em_usart.c 

OBJS += \
./platform/emlib/src/em_adc.o \
./platform/emlib/src/em_cmu.o \
./platform/emlib/src/em_core.o \
./platform/emlib/src/em_cryotimer.o \
./platform/emlib/src/em_crypto.o \
./platform/emlib/src/em_emu.o \
./platform/emlib/src/em_gpio.o \
./platform/emlib/src/em_i2c.o \
./platform/emlib/src/em_letimer.o \
./platform/emlib/src/em_msc.o \
./platform/emlib/src/em_rmu.o \
./platform/emlib/src/em_rtcc.o \
./platform/emlib/src/em_system.o \
./platform/emlib/src/em_usart.o 

C_DEPS += \
./platform/emlib/src/em_adc.d \
./platform/emlib/src/em_cmu.d \
./platform/emlib/src/em_core.d \
./platform/emlib/src/em_cryotimer.d \
./platform/emlib/src/em_crypto.d \
./platform/emlib/src/em_emu.d \
./platform/emlib/src/em_gpio.d \
./platform/emlib/src/em_i2c.d \
./platform/emlib/src/em_letimer.d \
./platform/emlib/src/em_msc.d \
./platform/emlib/src/em_rmu.d \
./platform/emlib/src/em_rtcc.d \
./platform/emlib/src/em_system.d \
./platform/emlib/src/em_usart.d 


# Each subdirectory must supply rules for building sources it contributes
platform/emlib/src/em_adc.o: ../platform/emlib/src/em_adc.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m4 -mthumb -std=c99 '-D__HEAP_SIZE=0xD00' '-D__STACK_SIZE=0x800' '-DHAL_CONFIG=1' '-DEFR32BG1B232F256GM56=1' -I"/home/mehdi/SimplicityStudio/v4_workspace/BARK_v2" -O2 -Wall -c -fmessage-length=0 -ffunction-sections -fdata-sections -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -MMD -MP -MF"platform/emlib/src/em_adc.d" -MT"platform/emlib/src/em_adc.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

platform/emlib/src/em_cmu.o: ../platform/emlib/src/em_cmu.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m4 -mthumb -std=c99 '-D__HEAP_SIZE=0xD00' '-D__STACK_SIZE=0x800' '-DHAL_CONFIG=1' '-DEFR32BG1B232F256GM56=1' -I"/home/mehdi/SimplicityStudio/v4_workspace/BARK_v2" -O2 -Wall -c -fmessage-length=0 -ffunction-sections -fdata-sections -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -MMD -MP -MF"platform/emlib/src/em_cmu.d" -MT"platform/emlib/src/em_cmu.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

platform/emlib/src/em_core.o: ../platform/emlib/src/em_core.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m4 -mthumb -std=c99 '-D__HEAP_SIZE=0xD00' '-D__STACK_SIZE=0x800' '-DHAL_CONFIG=1' '-DEFR32BG1B232F256GM56=1' -I"/home/mehdi/SimplicityStudio/v4_workspace/BARK_v2" -O2 -Wall -c -fmessage-length=0 -ffunction-sections -fdata-sections -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -MMD -MP -MF"platform/emlib/src/em_core.d" -MT"platform/emlib/src/em_core.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

platform/emlib/src/em_cryotimer.o: ../platform/emlib/src/em_cryotimer.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m4 -mthumb -std=c99 '-D__HEAP_SIZE=0xD00' '-D__STACK_SIZE=0x800' '-DHAL_CONFIG=1' '-DEFR32BG1B232F256GM56=1' -I"/home/mehdi/SimplicityStudio/v4_workspace/BARK_v2" -O2 -Wall -c -fmessage-length=0 -ffunction-sections -fdata-sections -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -MMD -MP -MF"platform/emlib/src/em_cryotimer.d" -MT"platform/emlib/src/em_cryotimer.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

platform/emlib/src/em_crypto.o: ../platform/emlib/src/em_crypto.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m4 -mthumb -std=c99 '-D__HEAP_SIZE=0xD00' '-D__STACK_SIZE=0x800' '-DHAL_CONFIG=1' '-DEFR32BG1B232F256GM56=1' -I"/home/mehdi/SimplicityStudio/v4_workspace/BARK_v2" -O2 -Wall -c -fmessage-length=0 -ffunction-sections -fdata-sections -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -MMD -MP -MF"platform/emlib/src/em_crypto.d" -MT"platform/emlib/src/em_crypto.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

platform/emlib/src/em_emu.o: ../platform/emlib/src/em_emu.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m4 -mthumb -std=c99 '-D__HEAP_SIZE=0xD00' '-D__STACK_SIZE=0x800' '-DHAL_CONFIG=1' '-DEFR32BG1B232F256GM56=1' -I"/home/mehdi/SimplicityStudio/v4_workspace/BARK_v2" -O2 -Wall -c -fmessage-length=0 -ffunction-sections -fdata-sections -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -MMD -MP -MF"platform/emlib/src/em_emu.d" -MT"platform/emlib/src/em_emu.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

platform/emlib/src/em_gpio.o: ../platform/emlib/src/em_gpio.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m4 -mthumb -std=c99 '-D__HEAP_SIZE=0xD00' '-D__STACK_SIZE=0x800' '-DHAL_CONFIG=1' '-DEFR32BG1B232F256GM56=1' -I"/home/mehdi/SimplicityStudio/v4_workspace/BARK_v2" -O2 -Wall -c -fmessage-length=0 -ffunction-sections -fdata-sections -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -MMD -MP -MF"platform/emlib/src/em_gpio.d" -MT"platform/emlib/src/em_gpio.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

platform/emlib/src/em_i2c.o: ../platform/emlib/src/em_i2c.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m4 -mthumb -std=c99 '-D__HEAP_SIZE=0xD00' '-D__STACK_SIZE=0x800' '-DHAL_CONFIG=1' '-DEFR32BG1B232F256GM56=1' -I"/home/mehdi/SimplicityStudio/v4_workspace/BARK_v2" -O2 -Wall -c -fmessage-length=0 -ffunction-sections -fdata-sections -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -MMD -MP -MF"platform/emlib/src/em_i2c.d" -MT"platform/emlib/src/em_i2c.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

platform/emlib/src/em_letimer.o: ../platform/emlib/src/em_letimer.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m4 -mthumb -std=c99 '-D__HEAP_SIZE=0xD00' '-D__STACK_SIZE=0x800' '-DHAL_CONFIG=1' '-DEFR32BG1B232F256GM56=1' -I"/home/mehdi/SimplicityStudio/v4_workspace/BARK_v2" -O2 -Wall -c -fmessage-length=0 -ffunction-sections -fdata-sections -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -MMD -MP -MF"platform/emlib/src/em_letimer.d" -MT"platform/emlib/src/em_letimer.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

platform/emlib/src/em_msc.o: ../platform/emlib/src/em_msc.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m4 -mthumb -std=c99 '-D__HEAP_SIZE=0xD00' '-D__STACK_SIZE=0x800' '-DHAL_CONFIG=1' '-DEFR32BG1B232F256GM56=1' -I"/home/mehdi/SimplicityStudio/v4_workspace/BARK_v2" -O2 -Wall -c -fmessage-length=0 -ffunction-sections -fdata-sections -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -MMD -MP -MF"platform/emlib/src/em_msc.d" -MT"platform/emlib/src/em_msc.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

platform/emlib/src/em_rmu.o: ../platform/emlib/src/em_rmu.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m4 -mthumb -std=c99 '-D__HEAP_SIZE=0xD00' '-D__STACK_SIZE=0x800' '-DHAL_CONFIG=1' '-DEFR32BG1B232F256GM56=1' -I"/home/mehdi/SimplicityStudio/v4_workspace/BARK_v2" -O2 -Wall -c -fmessage-length=0 -ffunction-sections -fdata-sections -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -MMD -MP -MF"platform/emlib/src/em_rmu.d" -MT"platform/emlib/src/em_rmu.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

platform/emlib/src/em_rtcc.o: ../platform/emlib/src/em_rtcc.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m4 -mthumb -std=c99 '-D__HEAP_SIZE=0xD00' '-D__STACK_SIZE=0x800' '-DHAL_CONFIG=1' '-DEFR32BG1B232F256GM56=1' -I"/home/mehdi/SimplicityStudio/v4_workspace/BARK_v2" -O2 -Wall -c -fmessage-length=0 -ffunction-sections -fdata-sections -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -MMD -MP -MF"platform/emlib/src/em_rtcc.d" -MT"platform/emlib/src/em_rtcc.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

platform/emlib/src/em_system.o: ../platform/emlib/src/em_system.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m4 -mthumb -std=c99 '-D__HEAP_SIZE=0xD00' '-D__STACK_SIZE=0x800' '-DHAL_CONFIG=1' '-DEFR32BG1B232F256GM56=1' -I"/home/mehdi/SimplicityStudio/v4_workspace/BARK_v2" -O2 -Wall -c -fmessage-length=0 -ffunction-sections -fdata-sections -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -MMD -MP -MF"platform/emlib/src/em_system.d" -MT"platform/emlib/src/em_system.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

platform/emlib/src/em_usart.o: ../platform/emlib/src/em_usart.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m4 -mthumb -std=c99 '-D__HEAP_SIZE=0xD00' '-D__STACK_SIZE=0x800' '-DHAL_CONFIG=1' '-DEFR32BG1B232F256GM56=1' -I"/home/mehdi/SimplicityStudio/v4_workspace/BARK_v2" -O2 -Wall -c -fmessage-length=0 -ffunction-sections -fdata-sections -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -MMD -MP -MF"platform/emlib/src/em_usart.d" -MT"platform/emlib/src/em_usart.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


