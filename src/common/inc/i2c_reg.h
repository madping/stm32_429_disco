/*
 * i2c_reg.h
 *
 *  Created on: 2021. 8. 14.
 *      Author: otaru
 */

#ifndef SRC_COMMON_INC_I2C_REG_H_
#define SRC_COMMON_INC_I2C_REG_H_

#include "def.h"

void I2C_Config(void);

void I2C_Start(void);

void I2C_Write(uint8_t data);

void I2C_Address(uint8_t Address);

void I2C_Stop(void);

void I2C_WriteMulti(uint8_t *data, uint8_t size);

void I2C_Read(uint8_t Address, uint8_t *buffer, uint8_t size);

#endif /* SRC_COMMON_INC_I2C_REG_H_ */
