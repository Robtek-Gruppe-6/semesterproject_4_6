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
#include "emp_type.h"

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

void ADC1_Init(void);
/***************************************
 *     Input      : None
 *     Output     : None
 *     Function   : Initialize ADC1 on PE2
 ****************************************/

INT16U ADC0_Read(void);
/***************************************
 *     Input      : None
 *     Output     : ADC result (INT16U)
 *     Function   : Read a value from ADC0
 ****************************************/

INT16U ADC1_Read(void);
/***************************************
 *     Input      : None
 *     Output     : ADC result (INT16U)
 *     Function   : Read a value from ADC1
 ****************************************/

INT16S ADC_Read_Scaled(INT16U data);
/***************************************
 *     Input      : None
 *     Output     : Signed ADC result (INT16U) scaled from -1000 to 1000
 *     Function   : Read a value from ADC0 and scale it
 ****************************************/

INT16S data_wrapper(INT16S data, INT16U threshold, INT16U cutoff, INT16U scale);
/***************************************
 *     Input      : data, threshold, cutoff, scale
 *     Output     : Scaled data (INT16S)
 *     Function   : Wrapper function to scale data based on threshold and cutoff
 ****************************************/

INT16U signed11_to_unsigned16(INT16S value);
/***************************************
 *     Input      : value (INT16S)
 *     Output     : Unsigned 16-bit representation
 *     Function   : Convert signed 11-bit value to unsigned 16-bit
 ****************************************/

INT16U data_framer(INT16U data, INT8U motor);
/***************************************
 *     Input      : data, motor
 *     Output     : Framed data (INT16S)
 *     Function   : Frame data for transmission
 ****************************************/

void adc_task(void *pvParameters);
/***************************************
 *     Input      : None
 *     Output     : None
 *     Function   : ADC task for FreeRTOS
 ****************************************/

/****************************** End Of Module ********************************/
#endif /* ADC_H_ */
