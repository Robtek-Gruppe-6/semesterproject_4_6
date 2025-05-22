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
#include "PID.h"

/*****************************    Defines    ********************************/

#define INITIAL_STATE 0
#define THRESHOLD_STATE 1
#define SCALING_STATE 2
#define FINAL 3

/*****************************   Constants   ********************************/
const INT16U THRESHOLD = 1000;   // Threshold value for data processing
const INT16U CUTOFF = 2000;      // Cutoff value for data processing
const INT16U SCALE = 1;          // Scale factor for data processing
const INT16S MAX_VALUE = 32000;  // Maximum value for scaling
const INT16S MIN_VALUE = -32000; // Minimum value for scaling

/*****************************   Variables   ********************************/
INT16S adc0_value = 0; // Variable to store ADC0 value
INT16S adc1_value = 0; // Variable to store ADC1 value
INT8U state = 0;       // State variable for data processing
char message[50];      // Buffer to hold the formatted message
static pid_t pid0;
static pid_t pid1;

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

    // Initialize PID controllers (tune Kp, Ki, Kd as needed)
    PID_Init(&pid0, 1.0f, 0.05f, 0.01f);
    PID_Init(&pid1, 1.0f, 0.05f, 0.01f);
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

INT16S data_wrapper2(INT16S data, INT16U threshold, INT16U cutoff, INT16U scale)
/***************************************
 *     Input      : data, threshold, cutoff, scale
 *     Output     : Scaled data (INT16S)
 *     Function   : Wrapper function to scale data based on threshold and cutoff
 ****************************************/
{
    if (data > MAX_VALUE - cutoff)
    {
        // Send the formatted string via UART
        // UART0_Write_String("INITIAL STATE\r\n");
        data = MAX_VALUE; // Set to max value
        return data;      // Return the wrapped data
    }

    else if (data < MIN_VALUE + cutoff)
    {
        data = MIN_VALUE; // Set to min value
        return data;      // Return the wrapped data
    }

    if (data < threshold && data > -threshold)
    {
        data = 0;    // Set to 0 if below threshold
        return data; // Return the wrapped data
    }

    else
    {
        return data; // Return the wrapped data
    }
}

// Helper function to convert integer to string (supports negative numbers)
void int_to_str(INT16S value, char *str)
{
    char buf[16];
    int k = 0, j = 0;
    int is_negative = 0;

    if (value == 0)
    {
        str[0] = '0';
        str[1] = '\0';
        return;
    }

    if (value < 0)
    {
        is_negative = 1;
        value = -value;
    }

    while (value > 0)
    {
        buf[k++] = (value % 10) + '0';
        value /= 10;
    }

    if (is_negative)
    {
        buf[k++] = '-';
    }

    // Reverse the string
    while (k > 0)
    {
        str[j++] = buf[--k];
    }
    str[j] = '\0';
}

void adc_task(void *pvParameters)
/***************************************
 *     Input      : None
 *     Output     : None
 *     Function   : ADC task to read values from ADC0 and ADC1
 ****************************************/
{
    char adc0_str[16];
    char adc1_str[16];
    char msg[40];
    int k = 0;

    while (1)
    {
        INT16S raw0 = data_wrapper2(ADC_Read_Scaled(ADC0_Read()), THRESHOLD, CUTOFF, SCALE);
        INT16S raw1 = data_wrapper2(ADC_Read_Scaled(ADC1_Read()), THRESHOLD, CUTOFF, SCALE);

        // Scale to -255..255
        // float scaled_raw0 = ((float)raw0 * 255.0f) / 32000.0f;
        // float scaled_raw1 = ((float)raw1 * 255.0f) / 32000.0f;

        float setpoint0 = 0.0f; // Center
        float setpoint1 = 0.0f; // Center

        adc0_value = (INT16S)pid_controller(raw0, &pid0); // PID controller for ADC0
        adc1_value = (INT16S)pid_controller(raw1, &pid1); // PID controller for ADC1

        // INT16S rawADC = ADC0_Read(); //testing

        // Clamp to -255..255 if needed
        /*if(adc0_value < -255) adc0_value = -255;
        if(adc0_value > 255) adc0_value = 255;
        if(adc1_value < -255) adc1_value = -255;
        if(adc1_value > 255) adc1_value = 255;*/

        // Convert integers to strings
        int_to_str(adc0_value, adc0_str);
        int_to_str(adc1_value, adc1_str);

        // Build the message manually
        int idx = 0;
        // const char* prefix0 = "ADC0: ";
        // const char* prefix1 = ", ADC1: ";
        // for (k = 0; prefix0[k]; ++k) msg[idx++] = prefix0[k];
        for (k = 0; adc0_str[k]; ++k)
            msg[idx++] = adc0_str[k];
        // for (k = 0; prefix1[k]; ++k) msg[idx++] = prefix1[k];
        // for (k = 0; adc1_str[k]; ++k) msg[idx++] = adc1_str[k];
        msg[idx++] = '\r';
        msg[idx++] = '\n';
        msg[idx] = '\0';

        // Send the formatted string via UART
        UART0_Write_String(msg);

        // Send the formatted string via UART
        // UART0_Write_String("Test");

        vTaskDelay(100 / portTICK_RATE_MS); // Delay for 1000 ms //normalt 100ms
    }
}

/****************************** End Of Module ********************************/
