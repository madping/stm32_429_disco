################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/lib/cube_f429/Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Src/usbd_cdc.c 

OBJS += \
./src/lib/cube_f429/Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Src/usbd_cdc.o 

C_DEPS += \
./src/lib/cube_f429/Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Src/usbd_cdc.d 


# Each subdirectory must supply rules for building sources it contributes
src/lib/cube_f429/Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Src/usbd_cdc.o: ../src/lib/cube_f429/Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Src/usbd_cdc.c src/lib/cube_f429/Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32F429xx -c -I"C:/dev/stm_project/stm32429disco_my/src" -I"C:/dev/stm_project/stm32429disco_my/src/lib/cube_f429/Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc" -I"C:/dev/stm_project/stm32429disco_my/src/lib/cube_f429/Middlewares/ST/STM32_USB_Device_Library/Core/Inc" -I"C:/dev/stm_project/stm32429disco_my/src/lib/cube_f429/USB_DEVICE/App" -I"C:/dev/stm_project/stm32429disco_my/src/lib/cube_f429/USB_DEVICE/Target" -I"C:/dev/stm_project/stm32429disco_my/src/common/inc" -I"C:/dev/stm_project/stm32429disco_my/src/hw" -I"C:/dev/stm_project/stm32429disco_my/src/hw/inc" -I"C:/dev/stm_project/stm32429disco_my/src/lib/cube_f429/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"C:/dev/stm_project/stm32429disco_my/src/lib/cube_f429/Drivers/CMSIS/Include" -I"C:/dev/stm_project/stm32429disco_my/src/lib/cube_f429/Drivers/STM32F4xx_HAL_Driver/Inc" -I"C:/dev/stm_project/stm32429disco_my/src/common" -I"C:/dev/stm_project/stm32429disco_my/src/bsp" -I"C:/dev/stm_project/stm32429disco_my/src/lib" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"src/lib/cube_f429/Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Src/usbd_cdc.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

