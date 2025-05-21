#ifndef SHARED_RESOURCES_H
#define SHARED_RESOURCES_H

// Global includes
#include <stdint.h>
#include <stdbool.h>
#include "FreeRTOS.h"
#include "Task.h"
#include "queue.h"
#include "semphr.h"
#include "tm4c123gh6pm.h"


typedef struct {
    // UART
    QueueHandle_t uart_rx;
    QueueHandle_t uart_tx;

    // SPI
    QueueHandle_t spi_rx_queue;                       // Queue for spi receive data
    QueueHandle_t spi_tx_queue;                       // Queue for spi transmit data
    SemaphoreHandle_t spi_mutex;

    // ADC
    QueueHandle_t adc0_queue;                    // Queue for ADC0
    QueueHandle_t adc1_queue;                    // Queue for ADC1
    


} TaskResources_t;

#endif // SHARED_RESOURCES_H
