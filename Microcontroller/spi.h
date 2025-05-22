/*****************************************************************************
 * University of Southern Denmark
 * Embedded C Programming (ECP)
 *
 * MODULENAME.: spi.h
 *
 * PROJECT....: SEMESTERPROJECT
 *
 * DESCRIPTION: Test.
 *
 * Change Log:
 ******************************************************************************
 * Date    Id    Change
 * YYMMDD
 * --------------------
 * 250319  EVMGM    Module created.
 *
 *****************************************************************************/
#ifndef SPI_H_
#define SPI_H_

/***************************** Include files ********************************/

/*****************************    Defines    ********************************/

/*****************************   Constants   ********************************/

/*****************************   Functions   ********************************/

void SPI0_init(void);
/***************************************
 *     Input      : None
 *     Output     : None
 *     Function   : Initialize SPI0 (SSI0) on GPIOA (PA2-PA5)
 ****************************************/


void SPI0_Write(uint16_t data);
/***************************************
 *     Input      : data to be sent
 *     Output     : None
 *     Function   : Write data to SPI0 (SSI0)
 ****************************************/

uint16_t SPI0_Read(void);
/***************************************
 *     Input      : None
 *     Output     : data received from SPI0 (SSI0)
 *     Function   : Read data from SPI0 (SSI0)
 ****************************************/

void spi_task_write(void *pvParameters);

void spi_task_rw(void *pvParameters);
/***************************************
 *     Input      : None
 *     Output     : None
 *     Function   : SPI task to read data from SPI0 (SSI0)
 ****************************************/

void spi_task_rw(void *pvParameters);

void SPI_test_task(void *pvParameters);

// void Delay_ms(int time_ms);

#endif /* SPI_H_ */
