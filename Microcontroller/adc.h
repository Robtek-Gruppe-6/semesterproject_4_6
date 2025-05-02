/*****************************************************************************
 * University of Southern Denmark
 * Embedded C Programming (ECP)
 *
 * MODULENAME.: adc.h
 *
 * PROJECT....: SEMESTERPROJECT
 *
 * DESCRIPTION: Test.
 *
 * Change Log:
 ******************************************************************************
 * Date    Id    Change
 * YYMMDD
 * --------------------
 * 250328  LV    Module created.
 *
 *****************************************************************************/

#ifndef ADC_H_
#define ADC_H_

/***************************** Include files ********************************/
#include <stdint.h>
#include "tm4c123gh6pm.h"

/*****************************    Defines    ********************************/

/*****************************   Constants   ********************************/

/*****************************   Functions   ********************************/

void adc_init(void);
/***************************************
 *     Input      : None
 *     Output     : None
 *     Function   : Initialize ADCs
 ****************************************/

void ADC0_Init(void);
/***************************************
 *     Input      : None
 *     Output     : None
 *     Function   : Initialize ADC0 on PE3
 ****************************************/

uint16_t ADC0_Read(void);
/***************************************
 *     Input      : None
 *     Output     : ADC result (uint16_t)
 *     Function   : Read a value from ADC0
 ****************************************/

int16_t ADC0_Read_Scaled(void);
/***************************************
 *     Input      : None
 *     Output     : Signed ADC result (int16_t) scaled from -1000 to 1000
 *     Function   : Read a value from ADC0 and scale it
 ****************************************/

void ADC1_Init(void);
/***************************************
 *     Input      : None
 *     Output     : None
 *     Function   : Initialize ADC1 on PE2
 ****************************************/

uint16_t ADC1_Read(void);
/***************************************
 *     Input      : None
 *     Output     : ADC result (uint16_t)
 *     Function   : Read a value from ADC1
 ****************************************/

int16_t ADC1_Read_Scaled(void);
/***************************************
 *     Input      : None
 *     Output     : Signed ADC result (int16_t) scaled from -1000 to 1000
 *     Function   : Read a value from ADC1 and scale it
 ****************************************/

void adc_task(void *pvParameters);
/***************************************
 *     Input      : None
 *     Output     : None
 *     Function   : ADC task for FreeRTOS
 ****************************************/

/****************************** End Of Module ********************************/

#endif /* ADC_H_ */