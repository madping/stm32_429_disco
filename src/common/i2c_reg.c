/*
 * i2c_reg.c
 *
 *  Created on: 2021. 8. 14.
 *      Author: otaru
 */


// SDA -> PB7
// SCL -> PB6

#include "bsp.h"
#include "i2c_reg.h"


void I2C_Config(void)
{
  //Enable I2C CLOCK and GPIO CLOCK
  RCC->APB1ENR |= (1<<21); //enable I2C CLOCK
  RCC->AHB1ENR |= (1<<1);  //enable GPIOB CLOCK

  //Configuration I2C PINs for Alternate Function
  GPIOB->MODER |= (2<<12)|(2<<14);
  GPIOB->OTYPER |= (1<<6)|(1<<7);   // bit6=1, bit7=1 output open drain
  GPIOB->OSPEEDR |= (3<<12)|(3<<14);
  GPIOB->PUPDR |= (1<<12)|(1<<14);  // pull up
  GPIOB->AFR[0] |= (4<<24)|(4<<28);  //AF[0]=> PORT0~7, AF4(I2C)
                                     //AF[1]=> port8~15

  //Reset I2C
  I2C1->CR1 |= (1<<15);
  I2C1->CR1 &= ~(1<<15);

  I2C1->CR2 |= (45<<0); //PCLK1 FREQUENCY in MHZ

  I2C1->CCR = 255<0;
  I2C1->TRISE = 46;  // rise time

  I2C1->CR1 |= (1<<0);  //Enable I2C
}


void I2C_Start(void)
{
  I2C1->CR1 |= (1<<10); //Enable ACK
  I2C1->CR1 |= (1<<8); //Generate START
  while(!(I2C1->SR1 & (1<<0))); //Wait
}


void I2C_Write(uint8_t data)
{
  while(!(I2C1->SR1 & (1<<7))); // wait for TXE bit to set
  I2C1->DR = data;
  while(!(I2C1->SR1 & (1<<2))); // wait for BTF bit to set
}


void I2C_Address(uint8_t Address)
{
  I2C1->DR = Address; // send address
  while(!(I2C1->SR1 & (1<<1))); // wait for ADDR bit to set
  uint8_t temp = I2C1->SR1 | I2C1->SR2; // read SR1 and SR2 to clear ADDR bit
}


void I2C_Stop(void)
{
  I2C1->CR1 |= (1<<9);
}


void I2C_WriteMulti(uint8_t *data, uint8_t size)
{
  while(!(I2C1->SR1 & (1<<7)));
  while(size)
  {
    while(!(I2C1->SR1 & (1<<7)));
    I2C1->DR = (uint32_t)*data++; //send data
    size--;
  }
  while(!(I2C1->SR1 & (1<<2)));
}


void I2C_Read(uint8_t Address, uint8_t *buffer, uint8_t size)
{
  int remaining = size;

  // STEP 1
  if(size==1)
  {
    // STEP 1-A
    I2C1->DR = Address;
    while(!(I2C1->SR1 & (1<<1)));

    //STEP 1-B
    I2C1->CR1 &= ~(1<<10);
    uint8_t temp = I2C1->SR1 | I2C1->SR2;
    I2C1->CR1 |= (1<<9); //stop i2c

    //STEP 1-C
    while(!(I2C1->SR1 & (1<<6))); // wait for RxNE to set

    //STEP 1-D
    buffer[size - remaining] = I2C1->DR;
  }

  // STEP 2
  else
  {
    /**** STEP 2-a ****/
    I2C1->DR = Address;  //  send the address
    while (!(I2C1->SR1 & (1<<1)));  // wait for ADDR bit to set

    /**** STEP 2-b ****/
    uint8_t temp = I2C1->SR1 | I2C1->SR2;  // read SR1 and SR2 to clear the ADDR bit

    while (remaining>2)
    {
      /**** STEP 2-c ****/
      while (!(I2C1->SR1 & (1<<6)));  // wait for RxNE to set

      /**** STEP 2-d ****/
      buffer[size-remaining] = I2C1->DR;  // copy the data into the buffer

      /**** STEP 2-e ****/
      I2C1->CR1 |= 1<<10;  // Set the ACK bit to Acknowledge the data received

      remaining--;
    }

    // Read the SECOND LAST BYTE
    while (!(I2C1->SR1 & (1<<6)));  // wait for RxNE to set
    buffer[size-remaining] = I2C1->DR;

    /**** STEP 2-f ****/
    I2C1->CR1 &= ~(1<<10);  // clear the ACK bit

    /**** STEP 2-g ****/
    I2C1->CR1 |= (1<<9);  // Stop I2C

    remaining--;

    // Read the Last BYTE
    while (!(I2C1->SR1 & (1<<6)));  // wait for RxNE to set
    buffer[size-remaining] = I2C1->DR;  // copy the data into the buffer
  }
}
