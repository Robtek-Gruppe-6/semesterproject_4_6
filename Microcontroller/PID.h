/*****************************************************************************
 * University of Southern Denmark
 * Embedded C Programming (ECP)
 *
 * MODULENAME.: PID.h
 *
 * PROJECT....: SEMESTERPROJECT
 *
 * DESCRIPTION: Header file for PID controller module.
 *
 * Change Log:
 ******************************************************************************
 * Date    Id    Change
 * YYMMDD
 * --------------------
 * 250514  <YourID>    Module created.
 *
 *****************************************************************************/

#ifndef PID_H_
#define PID_H_

/***************************** Include files ********************************/
#include <stdint.h>

/*****************************    Defines    ********************************/
typedef struct
{
    float Kp;
    float Ki;
    float Kd;
    float integral_sum;
    float prev_error;
    float output;
} pid_t;

/*****************************   Constants   ********************************/

/*****************************   Functions   ********************************/

void PID_Init(pid_t* pid, float Kp, float Ki, float Kd);
/***************************************
 *     Input      : PID struct pointer, Kp, Ki, Kd
 *     Output     : None
 *     Function   : Initialize PID controller
 ****************************************/

float pid_controller(float measured_value, pid_t *pid);
/***************************************
 *     Input      : measured_value, PID struct pointer
 *     Output     : PID output
 *     Function   : Calculate PID output (error = measured_value)
 ****************************************/

/****************************** End Of Module ********************************/
#endif /* PID_H_ */
