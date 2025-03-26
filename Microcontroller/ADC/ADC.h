/*
 * ADC.h
 *
 *  Created on: 26 Mar 2025
 *      Author: Lukas
 */

#ifndef ADC_H_
#define ADC_H_

#include <stdint.h>
#include "tm4c123gh6pm.h"

/***************************************
*     Input      : None
*     Output     : None
*     Function   : Initialize ADC0 on PE3
****************************************/
void ADC0_Init(void);

/***************************************
*     Input      : None
*     Output     : ADC result (uint16_t)
*     Function   : Read a value from ADC0
****************************************/
uint16_t ADC0_Read(void);

/***************************************
*     Input      : None
*     Output     : None
*     Function   : Initialize ADC1 on PE2
****************************************/
void ADC1_Init(void);

/***************************************
*     Input      : None
*     Output     : ADC result (uint16_t)
*     Function   : Read a value from ADC1
****************************************/
uint16_t ADC1_Read(void);

#endif /* ADC_H_ */
