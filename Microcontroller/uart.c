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

// #define UART_QUEUE_LENGTH 10              // Length of the UART queue
// #define UART_QUEUE_ITEM_SIZE sizeof(char) // Size of each item in the queue

// QueueHandle_t uartQueue; // Queue handle for UART

static SemaphoreHandle_t uartMutex; // Declare a mutex for UART
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

    // Create the mutex for UART
    uartMutex = xSemaphoreCreateMutex();
}

void int_to_str(INT16S value, char *str)
/***************************************
 *     Input      : value (INT16U), str (char*)
 *     Output     : str (char*) containing the string representation of value
 *     Function   : Convert an integer to a string
 ****************************************/
{
    char buf[16];
    int k = 0, j = 0;

    if (value == 0)
    {
        str[0] = '0';
        str[1] = '\0';
        return;
    }

    if(value >= 0){
        while (value > 0)
        {
            buf[k++] = (value % 10) + '0';
            value /= 10;
        }
    } else if(value < 0) {
        value *= -1;
        while (value > 0)
        {
            buf[k++] = (value % 10) + '0';
            value /= 10;
        }
        buf[k++] = '-';
    }

    // Reverse the string
    while (k > 0)
    {
        str[j++] = buf[--k];
    }
    str[j] = '\0';
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

// void UART_Debug(char *message)
/***************************************
 *     Input      : Debug message string
 *     Output     : None
 *     Function   : Send a debug message over UART
 ****************************************/
/*{
    if (xSemaphoreTake(uartMutex, portMAX_DELAY) == pdTRUE)
    {
        UART0_Write_String(message); // Send the debug message
        xSemaphoreGive(uartMutex);  // Release the mutex
    }
}*/

/****************************** End Of Module *******************************/
