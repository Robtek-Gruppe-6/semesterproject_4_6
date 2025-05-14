/*****************************************************************************
 * University of Southern Denmark
 * Embedded C Programming (ECP)
 *
 * MODULENAME.: adc.c
 *
 * PROJECT....: SEMESTERPROJECT
 *
 * DESCRIPTION: See module specification file (.h-file).
 *
 * Change Log:
 ******************************************************************************
 * Date    Id    Change
 * YYMMDD
 * --------------------
 * 250326  LV    Module created.
 *
 *****************************************************************************/

/***************************** Include files ********************************/
#include <stdio.h>
#include "adc.h"
#include "emp_type.h"
#include "tm4c123gh6pm.h"
#include "FreeRTOS.h"

/*****************************    Defines    ********************************/

#define INITIAL_STATE 0
#define THRESHOLD_STATE 1
#define SCALING_STATE 2
#define FINAL 3

/*****************************   Constants   ********************************/
const INT16U THRESHOLD = 1000; // Threshold value for data processing
const INT16U CUTOFF = 2000;    // Cutoff value for data processing
const INT16U SCALE = 1;        // Scale factor for data processing

/*****************************   Variables   ********************************/
INT16S adc0_value = 0; // Variable to store ADC0 value
INT16S adc1_value = 0; // Variable to store ADC1 value
INT8U state = 0;       // State variable for data processing
char message[50]; // Buffer to hold the formatted message

/*****************************   Functions   ********************************/

void adc_init(void)
/***************************************
 *     Input      : None
 *     Output     : None
 *     Function   : Initialize ADCs
 ****************************************/
{
    // Initialize ADC0 and ADC1
    ADC0_Init();
    ADC1_Init();
}

void ADC0_Init(void)
/***************************************
 *     Input      : None
 *     Output     : None
 *     Function   : Initialize ADC0 on PE3
 ****************************************/
{
    SYSCTL_RCGCADC_R |= 0x01;  // Enable clock for ADC0
    SYSCTL_RCGCGPIO_R |= 0x10; // Enable clock for Port E
    while ((SYSCTL_PRGPIO_R & 0x10) == 0)
    {
    } // Wait for Port E to be ready

    GPIO_PORTE_AFSEL_R |= 0x08; // Enable alternate function on PE3
    GPIO_PORTE_DEN_R &= ~0x08;  // Disable digital function on PE3
    GPIO_PORTE_AMSEL_R |= 0x08; // Enable analog mode on PE3

    ADC0_ACTSS_R &= ~0x08;  // Disable SS3 during configuration
    ADC0_EMUX_R &= ~0xF000; // Software trigger conversion
    ADC0_SSMUX3_R = 0x00;   // Select AIN0 (PE3) as input
    ADC0_SSCTL3_R = 0x06;   // Single-ended, one sample, enable interrupt
    ADC0_ACTSS_R |= 0x08;   // Enable SS3
}

void ADC1_Init(void)
/***************************************
 *     Input      : None
 *     Output     : None
 *     Function   : Initialize ADC1 on PE2
 ****************************************/
{
    SYSCTL_RCGCADC_R |= 0x02;  // Enable clock for ADC1
    SYSCTL_RCGCGPIO_R |= 0x10; // Enable clock for Port E
    while ((SYSCTL_PRGPIO_R & 0x10) == 0)
    {
    } // Wait for Port E to be ready

    GPIO_PORTE_AFSEL_R |= 0x04; // Enable alternate function on PE2
    GPIO_PORTE_DEN_R &= ~0x04;  // Disable digital function on PE2
    GPIO_PORTE_AMSEL_R |= 0x04; // Enable analog mode on PE2

    ADC1_ACTSS_R &= ~0x08;  // Disable SS3 during configuration
    ADC1_EMUX_R &= ~0xF000; // Software trigger conversion
    ADC1_SSMUX3_R = 0x01;   // Select AIN1 (PE2) as input
    ADC1_SSCTL3_R = 0x06;   // Single-ended, one sample, enable interrupt
    ADC1_ACTSS_R |= 0x08;   // Enable SS3
}

INT16U ADC0_Read(void)
/***************************************
 *     Input      : None
 *     Output     : ADC result (INT16U)
 *     Function   : Read a value from ADC0
 ****************************************/
{
    ADC0_PSSI_R = 0x08; // Start conversion on SS3
    while ((ADC0_RIS_R & 0x08) == 0)
        ;                           // Wait for conversion to complete
    INT16U result = ADC0_SSFIFO3_R; // Read result
    ADC0_ISC_R = 0x08;              // Clear completion flag
    return result;
}

INT16U ADC1_Read(void)
/***************************************
 *     Input      : None
 *     Output     : ADC result (INT16U)
 *     Function   : Read a value from ADC1
 ****************************************/
{
    ADC1_PSSI_R = 0x08; // Start conversion on SS3
    while ((ADC1_RIS_R & 0x08) == 0)
        ;                           // Wait for conversion to complete
    INT16U result = ADC1_SSFIFO3_R; // Read result
    ADC1_ISC_R = 0x08;              // Clear completion flag
    return result;
}

INT16S ADC_Read_Scaled(INT16U data)
/***************************************
 *     Input      : data (INT16U)
 *     Output     : Signed ADC result (INT16S) scaled from -32000 to 32000
 *     Function   : Read a value from ADC and scale it
 ****************************************/
{
    INT16S raw_value = data - 2048; // Center around 0
    return (raw_value * 32000) / 2048;
}

INT16S data_wrapper(INT16S data, INT16U threshold, INT16U cutoff, INT16U scale)
/***************************************
 *     Input      : data, threshold, cutoff, scale
 *     Output     : Scaled data (INT16S)
 *     Function   : Wrapper function to scale data based on threshold and cutoff
 ****************************************/
{
    switch (state)
    {
    case INITIAL_STATE: // Initial state
        if (data > cutoff)
        {
            data = cutoff;
            state = SCALING_STATE; // Move to scaling state
        }
        else if (data < -cutoff)
        {
            data = -cutoff;
            state = SCALING_STATE; // Move to scaling state
        }
        else
        {
            state = THRESHOLD_STATE; // Move to threshold state
        }
        break;

    case THRESHOLD_STATE: //
        if (data < threshold)
        {
            data = 0;      // Find out what to set it to
            state = FINAL; // Move to final state
        }
        else if (data > -threshold)
        {
            data = 0;      // Find out what to set it to
            state = FINAL; // Move to final state
        }
        else
        {
            state = SCALING_STATE; // Move to scaling state
        }
        break;

    case SCALING_STATE:      // Scaling state
        data = data * scale; // Scale the data (1 for no scaling)
        state = FINAL;       // Move to final state
        break;

    case FINAL:                // Final state
        state = INITIAL_STATE; // Reset state to initial
        return data;           // Return the wrapped data
        break;

    default:
        break;
    }
}

void adc_task(void *pvParameters)
/***************************************
 *     Input      : None
 *     Output     : None
 *     Function   : ADC task to read values from ADC0 and ADC1
 ****************************************/
{
    while (1)
    {
        // Read ADC values and process them as needed
        adc0_value = data_wrapper(ADC_Read_Scaled(ADC0_Read()), THRESHOLD, CUTOFF, SCALE);
        adc1_value = data_wrapper(ADC_Read_Scaled(ADC1_Read()), THRESHOLD, CUTOFF, SCALE);

        // Format the ADC values into a string
        sprintf(message, "ADC0: %d, ADC1: %d\n", adc0_value, adc1_value);

        // Send the formatted string via UART
        //UART_Debug(message);

        vTaskDelay(100 / portTICK_RATE_MS); // Delay for 100 ms
    }
}

/****************************** End Of Module ********************************/
