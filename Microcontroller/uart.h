/*****************************************************************************
 * University of Southern Denmark
 * Embedded C Programming (ECP)
 *
 * MODULENAME.: uart.h
 *
 * PROJECT....: SEMESTERPROJECT
 *
 * DESCRIPTION: Header file for UART module.
 *
 * Change Log:
 ******************************************************************************
 * Date    Id    Change
 * YYMMDD
 * --------------------
 * 250502  SBT    Module created.
 *
 *****************************************************************************/

#ifndef UART_H_
#define UART_H_

/***************************** Include files ********************************/
#include <stdint.h>

/*****************************    Defines    ********************************/

/*****************************   Constants   ********************************/

/*****************************   Functions   ********************************/

void UART0_Init(void);
/***************************************
 *     Input      : None
 *     Output     : None
 *     Function   : Initialize UART0 on PA0 and PA1
 ****************************************/

void int_to_str(INT16U value, char *str);
/***************************************
 *     Input      : value (INT16U), str (char*)
 *     Output     : str (char*) containing the string representation of value
 *     Function   : Convert an integer to a string
 ****************************************/

void UART0_Write(char data);
/***************************************
 *     Input      : data to be sent
 *     Output     : None
 *     Function   : Write a single character to UART0
 ****************************************/

void UART0_Write_String(char *str);
/***************************************
 *     Input      : String to be sent
 *     Output     : None
 *     Function   : Write a string to UART0
 ****************************************/

void UART_Debug(char *message);
/***************************************
 *     Input      : Debug message string
 *     Output     : None
 *     Function   : Send a debug message over UART in a thread-safe manner
 ****************************************/

/****************************** End Of Module ********************************/

#endif /* UART_H_ */
