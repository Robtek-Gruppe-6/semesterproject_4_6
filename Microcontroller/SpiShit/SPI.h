/*
 * SPI.h
 *
 *  Created on: 19 Mar 2025
 *      Author: evmgm
 */

#ifndef SPI_H_
#define SPI_H_

void SPI0_init(void);
void SPI0_Write(unsigned char data);
unsigned char SPI0_Read(void);
void Delay_ms(int time_ms);


#endif /* SPI_H_ */
