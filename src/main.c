/*
 * main.c
 *
 *  Created on: Aug 10, 2021
 *      Author: otaru
 */


#include "main.h"




int main(void)
{
  bspInit();
  ledInit();
  //i2c_scanner();

  //I2C_Config();

  while(1)
  {

    ledToggle(1);
    delay(500);
  }

  return 0;
}
