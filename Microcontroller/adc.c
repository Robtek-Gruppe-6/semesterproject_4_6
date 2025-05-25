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
#include "uart.h"
#include "shared_resources.h"

/*****************************    Defines    ********************************/

#define INITIAL_STATE 0
#define THRESHOLD_STATE 1
#define SCALING_STATE 2
#define FINAL 3

/*****************************   Constants   ********************************/
const INT16U THRESHOLD = 40;    // Threshold value for data processing
const INT16U CUTOFF = 60;       // Cutoff value for data processing
const INT16U SCALE = 1;         // Scale factor for data processing
const INT16S MAX_VALUE = 300;  // Maximum value for scaling
const INT16S MIN_VALUE = -300; // Minimum value for scaling
const INT16U CENTERING = 1024;  // Centering value for scaling

/*****************************   Variables   ********************************/
INT16S adc0_value = 0; // Variable to store ADC0 value
INT16S adc1_value = 0; // Variable to store ADC1 value
INT8U state = 0;       // State variable for data processing
char message[50];      // Buffer to hold the formatted message
static pid_t pid0;
static pid_t pid1;
INT8U motor = 0;         // Motor variable for data processing
INT16U framed_data0 = 0; // Variable to hold framed data for motor 0
INT16U framed_data1 = 0; // Variable to hold framed data for motor 1

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
    PID_Init(&pid0, 0.5f, 0.0f, 0.0005f); //Tilt P=0.5 I=0.0 D=0.0005
    PID_Init(&pid1, 1.0f, 0.0f, 0.02f); //Pan P=1 I=0 D=0.02
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

INT16S ADC_Read_Scaled(INT16S data)
/***************************************
 *     Input      : data (INT16U)
 *     Output     : Signed 11-bit ADC result
 *     Function   : Read a value from ADC and scale it
 ****************************************/
{
    data = (data >> 1) - CENTERING; // Scale the ADC value to signed 11-bit
        if (data < THRESHOLD && data > -THRESHOLD)
        {
            data = 0; // Set to 0 if below threshold
        }
   return data;
}

INT16S data_wrapper(INT16S data, INT16U threshold, INT16U cutoff, INT16U scale)
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
    }

    else if (data < MIN_VALUE + cutoff)
    {
        data = MIN_VALUE; // Set to min value
    }

    if (data < threshold && data > -threshold)
    {
        data = 0; // Set to 0 if below threshold
    }
    return data; // Return the wrapped data
}

INT16U signed11_to_unsigned16(INT16S value)
/***************************************
 *     Input      : value (INT16S)
 *     Output     : Unsigned 16-bit representation
 *     Function   : Convert signed 11-bit value to unsigned 16-bit
 ****************************************/
{
    if (value < 0)
    {
        value -= 22; // blanket fix on all negative values
    }

    return ((value&0x8000) >> 5) | (value&0x03FF); // move sign to bit 11
}

INT16U data_framer(INT16U data, INT8U motor)
/***************************************
 *     Input      : data, motor
 *     Output     : Framed data (INT16S)
 *     Function   : Frame data for transmission
 ****************************************/
{
    // data *= -1;
    //data &= ~(1 << 15);
    if (motor == 1)
    {
        data |= (1 << 15); // 0 is pan, 1 is tilt
    }
    else
    {
        data |= (0 << 15); // 0 is pan, 1 is tilt
    }
    return data;
}

void adc_task(void *pvParameters)
/***************************************
 *     Input      : None
 *     Output     : None
 *     Function   : ADC task to read values from ADC0 and ADC1
 ****************************************/
{
    //    char adc0_str[16];
    //    char adc1_str[16];
    //    char msg[40];
    //    int k = 0;
    //
    while (1)
    {
        INT16S raw0 = ADC_Read_Scaled(ADC0_Read());
        INT16S raw1 = ADC_Read_Scaled(ADC1_Read());

        adc0_value = (INT16S)pid_controller(raw0, &pid0); // PID controller for ADC0
        adc1_value = (INT16S)pid_controller(raw1, &pid1); // PID controller for ADC1

        // inverted for direction
        raw0 = signed11_to_unsigned16(data_wrapper(-adc0_value, THRESHOLD, CUTOFF, SCALE)); // Convert to unsigned 16-bit
        raw1 = signed11_to_unsigned16(data_wrapper(-adc1_value, THRESHOLD, CUTOFF, SCALE)); // Convert to unsigned 16-bit

        // Apply data framing
        framed_data0 = data_framer(raw0, 1); // Frame data for motor 0
        framed_data1 = data_framer(raw1, 0); // Frame data for motor 1

        //        // Convert integers to strings
        //        int_to_str(rawraw, adc0_str);
        //        int_to_str(framed_data1, adc1_str);
        //
        //        // Build the message manually
        //        int idx = 0;
        //        // const char* prefix0 = "ADC0: ";
        //        // const char* prefix1 = ", ADC1: ";
        //        // for (k = 0; prefix0[k]; ++k) msg[idx++] = prefix0[k];
        //        for (k = 0; adc0_str[k]; ++k)
        //            msg[idx++] = adc0_str[k];
        //        // for (k = 0; prefix1[k]; ++k) msg[idx++] = prefix1[k];
        //        // for (k = 0; adc1_str[k]; ++k) msg[idx++] = adc1_str[k];
        //        msg[idx++] = '\r';
        //        msg[idx++] = '\n';
        //        msg[idx] = '\0';
        //
        //        // Send the formatted string via UART
        //        UART0_Write_String(msg);

        xQueueSendToBack(((TaskResources_t *)pvParameters)->spi_tx_queue, &framed_data1, 10);
        xQueueSendToBack(((TaskResources_t *)pvParameters)->spi_tx_queue, &framed_data0, 10);

        vTaskDelay(20 / portTICK_RATE_MS); // Delay for 1000 ms //normalt 100ms
    }
}

/****************************** End Of Module ********************************/
