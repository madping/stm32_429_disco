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
  //ledInit();
  //i2c_scanner();

  //I2C_Config();

  while(1)
  {

    //ledToggle(0);
    //ledToggle(1);
    //delay(1000);
    CDC_Transmit_HS("hello\n", 7);
    delay(1000);
  }

  return 0;
}
