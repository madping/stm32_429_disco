################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/bsp/bsp.c \
../src/bsp/stm32f4xx_hal_msp.c \
../src/bsp/stm32f4xx_it.c \
../src/bsp/syscalls.c \
../src/bsp/sysmem.c \
../src/bsp/system_stm32f4xx.c 

OBJS += \
./src/bsp/bsp.o \
./src/bsp/stm32f4xx_hal_msp.o \
./src/bsp/stm32f4xx_it.o \
./src/bsp/syscalls.o \
./src/bsp/sysmem.o \
./src/bsp/system_stm32f4xx.o 

C_DEPS += \
./src/bsp/bsp.d \
./src/bsp/stm32f4xx_hal_msp.d \
./src/bsp/stm32f4xx_it.d \
./src/bsp/syscalls.d \
./src/bsp/sysmem.d \
./src/bsp/system_stm32f4xx.d 


# Each subdirectory must supply rules for building sources it contributes
src/bsp/bsp.o: ../src/bsp/bsp.c src/bsp/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32F429xx -c -I"C:/dev/stm_project/stm32429disco_my/src" -I"C:/dev/stm_project/stm32429disco_my/src/lib/cube_f429/Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc" -I"C:/dev/stm_project/stm32429disco_my/src/lib/cube_f429/Middlewares/ST/STM32_USB_Device_Library/Core/Inc" -I"C:/dev/stm_project/stm32429disco_my/src/lib/cube_f429/USB_DEVICE/App" -I"C:/dev/stm_project/stm32429disco_my/src/lib/cube_f429/USB_DEVICE/Target" -I"C:/dev/stm_project/stm32429disco_my/src/common/inc" -I"C:/dev/stm_project/stm32429disco_my/src/hw" -I"C:/dev/stm_project/stm32429disco_my/src/hw/inc" -I"C:/dev/stm_project/stm32429disco_my/src/lib/cube_f429/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"C:/dev/stm_project/stm32429disco_my/src/lib/cube_f429/Drivers/CMSIS/Include" -I"C:/dev/stm_project/stm32429disco_my/src/lib/cube_f429/Drivers/STM32F4xx_HAL_Driver/Inc" -I"C:/dev/stm_project/stm32429disco_my/src/common" -I"C:/dev/stm_project/stm32429disco_my/src/bsp" -I"C:/dev/stm_project/stm32429disco_my/src/lib" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"src/bsp/bsp.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
src/bsp/stm32f4xx_hal_msp.o: ../src/bsp/stm32f4xx_hal_msp.c src/bsp/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32F429xx -c -I"C:/dev/stm_project/stm32429disco_my/src" -I"C:/dev/stm_project/stm32429disco_my/src/lib/cube_f429/Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc" -I"C:/dev/stm_project/stm32429disco_my/src/lib/cube_f429/Middlewares/ST/STM32_USB_Device_Library/Core/Inc" -I"C:/dev/stm_project/stm32429disco_my/src/lib/cube_f429/USB_DEVICE/App" -I"C:/dev/stm_project/stm32429disco_my/src/lib/cube_f429/USB_DEVICE/Target" -I"C:/dev/stm_project/stm32429disco_my/src/common/inc" -I"C:/dev/stm_project/stm32429disco_my/src/hw" -I"C:/dev/stm_project/stm32429disco_my/src/hw/inc" -I"C:/dev/stm_project/stm32429disco_my/src/lib/cube_f429/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"C:/dev/stm_project/stm32429disco_my/src/lib/cube_f429/Drivers/CMSIS/Include" -I"C:/dev/stm_project/stm32429disco_my/src/lib/cube_f429/Drivers/STM32F4xx_HAL_Driver/Inc" -I"C:/dev/stm_project/stm32429disco_my/src/common" -I"C:/dev/stm_project/stm32429disco_my/src/bsp" -I"C:/dev/stm_project/stm32429disco_my/src/lib" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"src/bsp/stm32f4xx_hal_msp.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
src/bsp/stm32f4xx_it.o: ../src/bsp/stm32f4xx_it.c src/bsp/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32F429xx -c -I"C:/dev/stm_project/stm32429disco_my/src" -I"C:/dev/stm_project/stm32429disco_my/src/lib/cube_f429/Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc" -I"C:/dev/stm_project/stm32429disco_my/src/lib/cube_f429/Middlewares/ST/STM32_USB_Device_Library/Core/Inc" -I"C:/dev/stm_project/stm32429disco_my/src/lib/cube_f429/USB_DEVICE/App" -I"C:/dev/stm_project/stm32429disco_my/src/lib/cube_f429/USB_DEVICE/Target" -I"C:/dev/stm_project/stm32429disco_my/src/common/inc" -I"C:/dev/stm_project/stm32429disco_my/src/hw" -I"C:/dev/stm_project/stm32429disco_my/src/hw/inc" -I"C:/dev/stm_project/stm32429disco_my/src/lib/cube_f429/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"C:/dev/stm_project/stm32429disco_my/src/lib/cube_f429/Drivers/CMSIS/Include" -I"C:/dev/stm_project/stm32429disco_my/src/lib/cube_f429/Drivers/STM32F4xx_HAL_Driver/Inc" -I"C:/dev/stm_project/stm32429disco_my/src/common" -I"C:/dev/stm_project/stm32429disco_my/src/bsp" -I"C:/dev/stm_project/stm32429disco_my/src/lib" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"src/bsp/stm32f4xx_it.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
src/bsp/syscalls.o: ../src/bsp/syscalls.c src/bsp/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32F429xx -c -I"C:/dev/stm_project/stm32429disco_my/src" -I"C:/dev/stm_project/stm32429disco_my/src/lib/cube_f429/Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc" -I"C:/dev/stm_project/stm32429disco_my/src/lib/cube_f429/Middlewares/ST/STM32_USB_Device_Library/Core/Inc" -I"C:/dev/stm_project/stm32429disco_my/src/lib/cube_f429/USB_DEVICE/App" -I"C:/dev/stm_project/stm32429disco_my/src/lib/cube_f429/USB_DEVICE/Target" -I"C:/dev/stm_project/stm32429disco_my/src/common/inc" -I"C:/dev/stm_project/stm32429disco_my/src/hw" -I"C:/dev/stm_project/stm32429disco_my/src/hw/inc" -I"C:/dev/stm_project/stm32429disco_my/src/lib/cube_f429/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"C:/dev/stm_project/stm32429disco_my/src/lib/cube_f429/Drivers/CMSIS/Include" -I"C:/dev/stm_project/stm32429disco_my/src/lib/cube_f429/Drivers/STM32F4xx_HAL_Driver/Inc" -I"C:/dev/stm_project/stm32429disco_my/src/common" -I"C:/dev/stm_project/stm32429disco_my/src/bsp" -I"C:/dev/stm_project/stm32429disco_my/src/lib" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"src/bsp/syscalls.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
src/bsp/sysmem.o: ../src/bsp/sysmem.c src/bsp/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32F429xx -c -I"C:/dev/stm_project/stm32429disco_my/src" -I"C:/dev/stm_project/stm32429disco_my/src/lib/cube_f429/Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc" -I"C:/dev/stm_project/stm32429disco_my/src/lib/cube_f429/Middlewares/ST/STM32_USB_Device_Library/Core/Inc" -I"C:/dev/stm_project/stm32429disco_my/src/lib/cube_f429/USB_DEVICE/App" -I"C:/dev/stm_project/stm32429disco_my/src/lib/cube_f429/USB_DEVICE/Target" -I"C:/dev/stm_project/stm32429disco_my/src/common/inc" -I"C:/dev/stm_project/stm32429disco_my/src/hw" -I"C:/dev/stm_project/stm32429disco_my/src/hw/inc" -I"C:/dev/stm_project/stm32429disco_my/src/lib/cube_f429/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"C:/dev/stm_project/stm32429disco_my/src/lib/cube_f429/Drivers/CMSIS/Include" -I"C:/dev/stm_project/stm32429disco_my/src/lib/cube_f429/Drivers/STM32F4xx_HAL_Driver/Inc" -I"C:/dev/stm_project/stm32429disco_my/src/common" -I"C:/dev/stm_project/stm32429disco_my/src/bsp" -I"C:/dev/stm_project/stm32429disco_my/src/lib" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"src/bsp/sysmem.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
src/bsp/system_stm32f4xx.o: ../src/bsp/system_stm32f4xx.c src/bsp/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32F429xx -c -I"C:/dev/stm_project/stm32429disco_my/src" -I"C:/dev/stm_project/stm32429disco_my/src/lib/cube_f429/Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc" -I"C:/dev/stm_project/stm32429disco_my/src/lib/cube_f429/Middlewares/ST/STM32_USB_Device_Library/Core/Inc" -I"C:/dev/stm_project/stm32429disco_my/src/lib/cube_f429/USB_DEVICE/App" -I"C:/dev/stm_project/stm32429disco_my/src/lib/cube_f429/USB_DEVICE/Target" -I"C:/dev/stm_project/stm32429disco_my/src/common/inc" -I"C:/dev/stm_project/stm32429disco_my/src/hw" -I"C:/dev/stm_project/stm32429disco_my/src/hw/inc" -I"C:/dev/stm_project/stm32429disco_my/src/lib/cube_f429/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"C:/dev/stm_project/stm32429disco_my/src/lib/cube_f429/Drivers/CMSIS/Include" -I"C:/dev/stm_project/stm32429disco_my/src/lib/cube_f429/Drivers/STM32F4xx_HAL_Driver/Inc" -I"C:/dev/stm_project/stm32429disco_my/src/common" -I"C:/dev/stm_project/stm32429disco_my/src/bsp" -I"C:/dev/stm_project/stm32429disco_my/src/lib" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"src/bsp/system_stm32f4xx.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

