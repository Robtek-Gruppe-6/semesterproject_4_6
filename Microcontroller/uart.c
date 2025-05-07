/*****************************************************************************
 * University of Southern Denmark
 * Embedded C Programming (ECP)
 *
 * MODULENAME.: uart.c
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
 * 250502  SBT    Module created.
 *
 *****************************************************************************/

/***************************** Include files ********************************/
#include <stdint.h>
#include "tm4c123gh6pm.h"
#include "FreeRTOS.h"
#include "task.h"
#include "queue.h"
#include "semphr.h"
#include "emp_type.h"
#include "uart.h"

/*****************************    Defines    ********************************/

#define UART_QUEUE_LENGTH 10              // Length of the UART queue
#define UART_QUEUE_ITEM_SIZE sizeof(char) // Size of each item in the queue

QueueHandle_t uartQueue; // Queue handle for UART
/*****************************   Constants   ********************************/

/*****************************   Variables   ********************************/

/*****************************   Functions   ********************************/
void UART0_Init(void)
/***************************************
 *     Input      : None
 *     Output     : None
 *     Function   : Initialize UART0 on PA0 and PA1
 ****************************************/
{
    SYSCTL_RCGCUART_R |= 0x01; // Enable clock for UART0
    SYSCTL_RCGCGPIO_R |= 0x01; // Enable clock for Port A
    while ((SYSCTL_PRGPIO_R & 0x01) == 0)
    {
    } // Wait for Port A to be ready

    GPIO_PORTA_AFSEL_R |= 0x03;                                                  // Enable alternate function on PA0 and PA1
    GPIO_PORTA_DEN_R |= 0x03;                                                    // Enable digital function on PA0 and PA1
    GPIO_PORTA_PCTL_R = (GPIO_PORTA_PCTL_R & ~0x000000FF) | (1 << 0) | (1 << 4); // Set PA0 and PA1 as UART

    UART0_CTL_R &= ~UART_CTL_UARTEN;                                // Disable UART before configuration
    UART0_IBRD_R = 104;                                             // Set baud rate to 9600 (16MHz / (16 * 9600))
    UART0_FBRD_R = 11;                                              // Fractional part of baud rate
    UART0_LCRH_R = (UART_LCRH_WLEN_8 | UART_LCRH_FEN);              // 8 data bits, no parity, one stop bit, enable FIFO
    UART0_CTL_R |= (UART_CTL_UARTEN | UART_CTL_TXE | UART_CTL_RXE); // Enable UART, TX, RX
}

void UART0_Write(char data)
/***************************************
 *     Input      : data to be sent
 *     Output     : None
 *     Function   : Write data to UART0
 ****************************************/
{
    while ((UART0_FR_R & UART_FR_TXFF) != 0)
        ;              // Wait until TX FIFO is not full
    UART0_DR_R = data; // Transmit data
}

void UART0_Write_String(char *str)
/***************************************
 *     Input      : String to be sent
 *     Output     : None
 *     Function   : Write a string to UART0
 ****************************************/
{
    while (*str != '\0')
    {
        UART0_Write(*str++); // Transmit each character in the string
    }
}

void UART_Task(void *pvParameters)
/***************************************
 *     Input      : None
 *     Output     : None
 *     Function   : UART task to send and receive data
 ****************************************/
{
    char receivedData;
    while (1)
    {
        if (xQueueReceive(uartQueue, &receivedData, portMAX_DELAY) == pdTRUE)
        {
            UART0_Write(receivedData); // Send received data over UART0
        }
    }
}

/****************************** End Of Module *******************************/