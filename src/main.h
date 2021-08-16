/*
 * main.h
 *
 *  Created on: Aug 10, 2021
 *      Author: otaru
 */

#ifndef SRC_MAIN_H_
#define SRC_MAIN_H_

#include "bsp.h"
#include "i2c_scan.h"
#include "i2c.h"
#include "led.h"

extern uint8_t CDC_Transmit_HS(uint8_t* Buf, uint16_t Len);

#endif /* SRC_MAIN_H_ */
