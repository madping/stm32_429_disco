/*
 * led.h
 *
 *  Created on: 2021. 8. 15.
 *      Author: otaru
 */

#ifndef SRC_HW_INC_LED_H_
#define SRC_HW_INC_LED_H_

#include "bsp.h"
#include "def.h"
#

#define LED_MAX_CH  2

bool ledInit(void);
void ledOn(uint8_t ch);
void ledOff(uint8_t ch);
void ledToggle(uint8_t ch);




#endif /* SRC_HW_INC_LED_H_ */
