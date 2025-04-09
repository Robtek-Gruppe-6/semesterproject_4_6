/*
 * ADC.c
 *
 *  Created on: 26 Mar 2025
 *      Author: Lukas
 */

#include "ADC.h"

/***************************************
*     Input      : None
*     Output     : None
*     Function   : Initialize ADC0 on PE3
****************************************/
void ADC0_Init(void) {
    SYSCTL_RCGCADC_R |= 0x01;  // Enable clock for ADC0
    SYSCTL_RCGCGPIO_R |= 0x10; // Enable clock for Port E
    while ((SYSCTL_PRGPIO_R & 0x10) == 0) {} // Wait for Port E to be ready

    GPIO_PORTE_AFSEL_R |= 0x08; // Enable alternate function on PE3
    GPIO_PORTE_DEN_R &= ~0x08;  // Disable digital function on PE3
    GPIO_PORTE_AMSEL_R |= 0x08; // Enable analog mode on PE3

    ADC0_ACTSS_R &= ~0x08;     // Disable SS3 during configuration
    ADC0_EMUX_R &= ~0xF000;    // Software trigger conversion
    ADC0_SSMUX3_R = 0x00;      // Select AIN0 (PE3) as input
    ADC0_SSCTL3_R = 0x06;      // Single-ended, one sample, enable interrupt
    ADC0_ACTSS_R |= 0x08;      // Enable SS3
}

/***************************************
*     Input      : None
*     Output     : ADC result (uint16_t)
*     Function   : Read a value from ADC0
****************************************/
uint16_t ADC0_Read(void) {
    ADC0_PSSI_R = 0x08;            // Start conversion on SS3
    while ((ADC0_RIS_R & 0x08) == 0); // Wait for conversion to complete
    uint16_t result = ADC0_SSFIFO3_R; // Read result
    ADC0_ISC_R = 0x08;            // Clear completion flag
    return result;
}

/***************************************
*     Input      : None
*     Output     : Signed ADC result (int16_t) scaled from -32000 to 32000
*     Function   : Read a value from ADC0 and scale it
****************************************/
int16_t ADC0_Read_Scaled(void) {
    int32_t raw_value = ADC0_Read() - 2048; // Center around 0
    return (raw_value * 32000) / 2048;
}

/***************************************
*     Input      : None
*     Output     : None
*     Function   : Initialize ADC1 on PE2
****************************************/
void ADC1_Init(void) {
    SYSCTL_RCGCADC_R |= 0x02;  // Enable clock for ADC1
    SYSCTL_RCGCGPIO_R |= 0x10; // Enable clock for Port E
    while ((SYSCTL_PRGPIO_R & 0x10) == 0) {} // Wait for Port E to be ready

    GPIO_PORTE_AFSEL_R |= 0x04; // Enable alternate function on PE2
    GPIO_PORTE_DEN_R &= ~0x04;  // Disable digital function on PE2
    GPIO_PORTE_AMSEL_R |= 0x04; // Enable analog mode on PE2

    ADC1_ACTSS_R &= ~0x08;     // Disable SS3 during configuration
    ADC1_EMUX_R &= ~0xF000;    // Software trigger conversion
    ADC1_SSMUX3_R = 0x01;      // Select AIN1 (PE2) as input
    ADC1_SSCTL3_R = 0x06;      // Single-ended, one sample, enable interrupt
    ADC1_ACTSS_R |= 0x08;      // Enable SS3
}

/***************************************
*     Input      : None
*     Output     : ADC result (uint16_t)
*     Function   : Read a value from ADC1
****************************************/
uint16_t ADC1_Read(void) {
    ADC1_PSSI_R = 0x08;            // Start conversion on SS3
    while ((ADC1_RIS_R & 0x08) == 0); // Wait for conversion to complete
    uint16_t result = ADC1_SSFIFO3_R; // Read result
    ADC1_ISC_R = 0x08;            // Clear completion flag
    return result;
}

/***************************************
*     Input      : None
*     Output     : Signed ADC result (int16_t) scaled from -32000 to 32000
*     Function   : Read a value from ADC1 and scale it
****************************************/
int16_t ADC1_Read_Scaled(void) {
    int32_t raw_value = ADC1_Read() - 2048; // Center around 0
    return (raw_value * 32000) / 2048;
}
