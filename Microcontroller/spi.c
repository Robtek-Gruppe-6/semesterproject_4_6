/*****************************************************************************
 * University of Southern Denmark
 * Embedded C Programming (ECP)
 *
 * MODULENAME.: spi.c
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
 * 250319  EVMGM    Module created.
 *
 *****************************************************************************/

/***************************** Include files ********************************/
#include <stdint.h>
#include "tm4c123gh6pm.h"
#include "FreeRTOS.h"
#include "spi.h"
#include "emp_type.h"

/*****************************    Defines    ********************************/

/*****************************   Constants   ********************************/

/*****************************   Variables   ********************************/

/*****************************   Functions   ********************************/
void SPI0_init(void)
/***************************************
 *     Input      : None
 *     Output     : None
 *     Function   : Initialize SPI0 (SSI0) on GPIOA (PA2-PA5)
 ****************************************/
{
    /* Enable clock to SPI0 and GPIOA */
    SYSCTL_RCGCGPIO_R |= (1 << 0); // Enable clock for GPIOA
    SYSCTL_RCGCSSI_R |= (1 << 0);  // Enable clock for SSI0
    while ((SYSCTL_PRGPIO_R & (1 << 0)) == 0)
        ; // Wait until GPIOA is ready

    /* Configure GPIOA for SPI0 (PA2 - PA5) */
    GPIO_PORTA_AFSEL_R |= 0x3C;                                                                         // Enable alternate function on PA2-PA5
    GPIO_PORTA_PCTL_R = (GPIO_PORTA_PCTL_R & ~0xFFFF00) | (2 << 8) | (2 << 12) | (2 << 16) | (2 << 20); // Set PA2-PA5 as SSI0
    GPIO_PORTA_DEN_R |= 0x3C;                                                                           // Enable digital function
    GPIO_PORTA_DIR_R |= 0x2C;                                                                           // Set PA2 (CLK), PA3 (SS), PA5 (MOSI) as output

    /* Configure SPI0 (SSI0) */
    SSI0_CR1_R &= ~SSI_CR1_SSE; // Disable SSI0 before configuration
    SSI0_CR1_R = 0x00000000;    // Set SSI0 as master
    SSI0_CC_R = 0x0;            // Use system clock
    SSI0_CPSR_R = 0x08;         // Set clock divider (0x10=16 0x80=128)
    SSI0_CR0_R = 0x07;          // 8-bit data, Freescale SPI mode
    SSI0_CR1_R |= SSI_CR1_SSE;  // Enable SSI0
}

void SPI0_Write(unsigned char data)
/***************************************
 *     Input      : Data to be transmitted
 *     Output     : None
 *     Function   : Transmit data over SPI0 (SSI0)
 ****************************************/
{
    GPIO_PORTA_DATA_R &= ~(1 << 3); /* Make PA3 Selection line (SS) low */
    while ((SSI0_SR_R & (1 << 1)) == 0)
        ;             /* wait untill Tx FIFO is not full */
    SSI0_DR_R = data; /* transmit byte over SSI0Tx line */
    while (SSI0_SR_R & (1 << 4))
        ;                          /* wait until transmit complete */
    GPIO_PORTA_DATA_R |= (1 << 3); /* keep selection line (PA3) high in idle condition */
}

unsigned char SPI0_Read(void)
/***************************************
 *     Input      : None
 *     Output     : Received data (unsigned char)
 *     Function   : Receive data over SPI0 (SSI0)
 ****************************************/
{
    unsigned char receivedData;
    GPIO_PORTA_DATA_R &= ~(1 << 3); /* Make PA3 Selection line (SS) low */
    while ((SSI0_SR_R & (1 << 2)) == 0)
        ;                          /* Wait until Rx FIFO is not empty */
    receivedData = SSI0_DR_R;      /* Read received data from SSI0Rx line */
    GPIO_PORTA_DATA_R |= (1 << 3); /* Keep selection line (PA3) high in idle condition */
    return receivedData;
}

void spi_task_read(void *pvParameters)
/***************************************
 *     Input      : None
 *     Output     : None
 *     Function   : SPI task to transmit and receive data
 ****************************************/
{
    while (1)
    {
        unsigned char receivedData = SPI0_Read(); // Receive data
        vTaskDelay(100 / portTICK_RATE_MS);       // Delay for 100 ms
    }
}

void spi_task_write(void *pvParameters)
/***************************************
 *     Input      : None
 *     Output     : None
 *     Function   : SPI task to transmit data
 ****************************************/
{
    while (1)
    {
        unsigned char dataToSend = 0xAA;    // Example data to send
        SPI0_Write(dataToSend);             // Transmit data
        vTaskDelay(100 / portTICK_RATE_MS); // Delay for 100 ms
    }
}

// /* This function generates delay in ms */
// /* calculations are based on 16MHz system clock frequency */
//
// void Delay_ms(int time_ms)
// {
//     int i, j;
//     for (i = 0; i < time_ms; i++)
//         for (j = 0; j < 3180; j++)
//         {
//         } /* excute NOP for 1ms */
// }

/****************************** End Of Module *******************************/