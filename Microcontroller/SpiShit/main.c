#include <stdint.h>
#include "tm4c123gh6pm.h"
#include "SPI.h"

int main(void)
{
    SPI0_init();
    while(1){

        /*SPI0_Write(0xff);
        Delay_ms(1);
        SPI0_Write(0x00);
        Delay_ms(1);
        SPI0_Write(0x1a);
        Delay_ms(1);*/
        SPI0_Write(0x2b);
        Delay_ms(1);
    }

	return 0;
}
