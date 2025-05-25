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
#include <stdlib.h>

#include "tm4c123gh6pm.h"
#include "emp_type.h"
#include "systick_frt.h"
#include "FreeRTOS.h"
#include "task.h"
#include "queue.h"
#include "semphr.h"
#include "spi.h"
#include "shared_resources.h"
#include "uart.h"

/*****************************    Defines    ********************************/

/*****************************   Constants   ********************************/

/*****************************   Variables   ********************************/

SemaphoreHandle_t spi_mutex; // Add this at the top, after includes

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
    SSI0_CPSR_R = 0x10;         // Set clock divider (0x10=16 0x80=128)
    SSI0_CR0_R = 0x0F;          // 16-bit data, Freescale SPI mode
    SSI0_CR1_R |= SSI_CR1_SSE;  // Enable SSI0
}



void SPI0_Write(uint16_t data)
{
    //xSemaphoreTake(spi_mutex, portMAX_DELAY); // Lock mutex

    while ((SSI0_SR_R & (1 << 1)) == 0);             /* wait untill Tx FIFO is not full */
    SSI0_DR_R = data; /* transmit byte over SSI0Tx line */
    while (SSI0_SR_R & (1 << 4));

    //xSemaphoreGive(spi_mutex); // Unlock mutex
}

uint16_t SPI0_Read(void)
{
    xSemaphoreTake(spi_mutex, portMAX_DELAY); // Lock mutex

    unsigned char receivedData;
    GPIO_PORTA_DATA_R &= ~(1 << 3); /* Make PA3 Selection line (SS) low */
    while ((SSI0_SR_R & (1 << 2)) == 0)
        ;                          /* Wait until Rx FIFO is not empty */
    receivedData = SSI0_DR_R;      /* Read received data from SSI0Rx line */
    GPIO_PORTA_DATA_R |= (1 << 3); /* Keep selection line (PA3) high in idle condition */

    xSemaphoreGive(spi_mutex); // Unlock mutex
    return receivedData;
}

void spi_task_read(void *pvParameters)
/***************************************
 *     Input      : None
 *     Output     : None
 *     Function   : SPI task to transmit and receive data
 ****************************************/
{
    TaskResources_t* resources = (TaskResources_t*) pvParameters;
    QueueHandle_t spi_rx_queue = resources->spi_rx_queue;

    while (1)
    {
        uint16_t receivedData = SPI0_Read(); // Receive data

        xQueueSendToBack(spi_rx_queue, &receivedData, 0); // Send received data to queue

        vTaskDelay(100 / portTICK_RATE_MS);       // Delay for 100 ms
    }
}

void spi_task_write(void *pvParameters)
/***************************************
 *     Input      : None
 *     Ou   tput     : None
 *     Function   : SPI task to transmit data
 ****************************************/
{
    TaskResources_t* resources = (TaskResources_t*) pvParameters;
    //QueueHandle_t spi_tx_queue = resources->spi_tx_queue;

    while (1)
    {
        uint16_t dataToSend = 0;
        //SPI0_Write(dataToSend);
        while (xQueueReceive(resources->spi_tx_queue, &dataToSend, 1) == pdTRUE)
        {
            SPI0_Write(dataToSend);             // Transmit data

            char data_str[16];
            char msg[40];

            int_to_str(dataToSend, data_str);

            // Build the message manually
            int k, idx = 0;
            for (k = 0; data_str[k]; ++k)
                msg[idx++] = data_str[k];
            msg[idx++] = '\r';
            msg[idx++] = '\n';
            msg[idx] = '\0';

            // Send the formatted string via UART
            UART0_Write_String(msg);


        }
        vTaskDelay(50 / portTICK_RATE_MS); // Short delay
    }
}

void spi_task_rw(void *pvParameters)
/***************************************
 *     Input      : None
 *     Output     : None
 *     Function   : SPI task to transmit and receive data
 ****************************************/
{
    TaskResources_t* resources = (TaskResources_t*) pvParameters;
    //QueueHandle_t spi_rx_queue = resources->spi_rx_queue;
    QueueHandle_t spi_tx_queue = resources->spi_tx_queue;

    while (1)
    {
        uint16_t dataToSend = 0;
        //uint16_t receivedData = 0;

        // If there is data to send, transmit and read response
        if (xQueueReceive(spi_tx_queue, &dataToSend, 10) == pdTRUE)
        {
            SPI0_Write(dataToSend);
            //receivedData = SPI0_Read(); // Read response after write
            //xQueueSendToBack(spi_rx_queue, &receivedData, 0);
            vTaskDelay(10 / portTICK_RATE_MS);
        }
        else
        {
            // Optionally, you can skip reading if nothing to send
            vTaskDelay(10 / portTICK_RATE_MS);
        }
    }
}

void SPI_test_task(void *pvParameters)
{
    TaskResources_t* resources = (TaskResources_t*) pvParameters;
    //QueueHandle_t spi_tx_queue = resources->spi_tx_queue;
    uint16_t testData = 0b0000000000000000; // Example test value 0b1000010011001000
    // Clear all bits
    testData &= ~(0xFFFF << 0);

    // Set bit 15 (motor select = 1)
    testData |= (1 << 15); //0 is pan 1 is tilt

    // Set bit 10 (sign)
    int sign = 0;
    testData |= (sign << 10); //CW OR CCW 0 is not complemented 1 is twos complemented

    int duty = 200; //duty in 0.0%

    if(sign){
        // Set duty cycle (bits 9–0)
        testData |= 1024-duty; //first 24 is ignored range from 24-1024 is 100.0%
    }
    else
    {
        testData |= duty;
    }

    while (1)
    {
        xQueueSend(resources->spi_tx_queue, &testData, 10);
        vTaskDelay(500 / portTICK_RATE_MS); // Send every 500 ms
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
