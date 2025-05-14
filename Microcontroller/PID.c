/*****************************************************************************
 * University of Southern Denmark
 * Embedded C Programming (ECP)
 *
 * MODULENAME.: PID.c
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
 * 250514  LV, CBJ    Module created.
 *
 *****************************************************************************/

/***************************** Include files ********************************/
#include "PID.h"
#include "emp_type.h"
#include <stdint.h>

/*****************************    Defines    ********************************/
#define TIME_STEP 0.01f // Time step in seconds, float

/*****************************   Constants   ********************************/

/*****************************   Variables   ********************************/

/*****************************   Functions   ********************************/

float pid_controller(float measured_value, pid_t *pid)

{
    float error = measured_value;

    float P = pid->Kp * error;

    pid->integral_sum += ((error + pid->prev_error) / 2.0f) * TIME_STEP;
    float I = pid->Ki * pid->integral_sum;

    float derivative = (error - pid->prev_error) / TIME_STEP;
    float D = pid->Kd * derivative;

    // Save current error for next iteration
    pid->prev_error = error;

    // Calculate output
    pid->output = P + I + D;

    return pid->output;
}

/****************************** End Of Module ********************************/