/*****************************************************************************
 * University of Southern Denmark
 * Embedded C Programming (ECP)
 *
 * MODULENAME.: main.c
 *
 * PROJECT....: SEMESTERPROJECT
 *
 * DESCRIPTION:
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
#include <stdlib.h>
#include "tm4c123gh6pm.h"
#include "emp_type.h"
#include "systick_frt.h"
#include "FreeRTOS.h"
#include "task.h"
#include "queue.h"
#include "semphr.h"

#include "status_led.h"
#include "adc.h"
#include "spi.h"
#include "uart.h"
#include "shared_resources.h"

/*****************************    Defines    ********************************/
#define USERTASK_STACK_SIZE configMINIMAL_STACK_SIZE
#define IDLE_PRIO 0
#define LOW_PRIO 1
#define MED_PRIO 2
#define HIGH_PRIO 3

/*****************************   Constants   ********************************/

/*****************************   Variables   ********************************/

/*****************************   Functions   ********************************/
static void setupHardware(void)
/*****************************************************************************
 *  Input    :  -
 *  Output   :  -
 * *  Function :  Set up the hardware for the project.
 ******************************************************************************/
{
    // Set up the hardware here (GPIO, UART, etc.)
    // Do we need to set up the system clock like in previous project now that it is ignored?
    init_systick();    // Initialize the systick timer
    status_led_init(); // Initialize the status LED
    adc_init();        // Initialize the ADCs
    SPI0_init();       // Initialize the SPI interface
    UART0_Init();      // Initialize the UART interface
    // OTHER INITIALIZATIONS HERE
}

int main(void)
/*****************************************************************************
 * *  Input    :    -
 * *  Output   :    -
 * *  Function :  Main function for the project.
 * ******************************************************************************/
{

    setupHardware(); // Set up the hardware

    TaskResources_t* resources = pvPortMalloc(sizeof(TaskResources_t));

    resources->spi_rx_queue = xQueueCreate(32, sizeof(uint16_t));
    resources->spi_tx_queue = xQueueCreate(32, sizeof(uint16_t));
    resources->adc0_queue = xQueueCreate(8, sizeof(uint16_t));
    resources->adc1_queue = xQueueCreate(8, sizeof(uint16_t));

    xTaskCreate(status_led_task, "Status LED", USERTASK_STACK_SIZE, NULL, LOW_PRIO, NULL);
    //xTaskCreate(adc_task, "ADC Task", USERTASK_STACK_SIZE, NULL, LOW_PRIO, NULL);
    //xTaskCreate(spi_task_read, "SPI Task Read", USERTASK_STACK_SIZE, NULL, LOW_PRIO, NULL);
    //xTaskCreate(spi_task_write, "SPI Task Write", USERTASK_STACK_SIZE, NULL, LOW_PRIO, NULL);

    vTaskStartScheduler(); // Start the FreeRTOS scheduler
    // The scheduler should never return, but if it does, we can handle it here
    return 0;
}

/****************************** End Of Module *******************************/
