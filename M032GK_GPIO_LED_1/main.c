/******************************************************************************
 * @file     main.c
 * @version  V1.00
 * @brief    A project template for M031 MCU.
 *
 * SPDX-License-Identifier: Apache-2.0
 * Copyright (C) 2017 Nuvoton Technology Corp. All rights reserved.
*****************************************************************************/
#include <stdio.h>
#include "NuMicro.h"
#include "clk_config.h"
#include "pin_config.h"

void UART_Open(UART_T *uart, uint32_t u32baudrate);


static void delay(){
CLK_SysTickDelay(100000); // 100ms
}

int main()
{
		clk_config_init();
		pin_config_init();
		
	  GPIO_SetMode(LED5_PORT,LED5_PIN, GPIO_MODE_OUTPUT);
	  GPIO_SetMode(LED6_PORT,LED6_PIN, GPIO_MODE_OUTPUT);
	  GPIO_SetMode(LED7_PORT,LED7_PIN, GPIO_MODE_OUTPUT);
	  GPIO_SetMode(LED8_PORT,LED8_PIN, GPIO_MODE_OUTPUT);
	
		LED5=0;
		LED6=0;
		LED7=0;
		LED8=0;
	
    /* Init UART0 to 115200-8n1 for print message */
    UART_Open(UART0, 115200);

    /* Connect UART to PC, and open a terminal tool to receive following message */
    printf("Hello World\n");

		
    while(1){
			LED5 = 1;
			delay();
			LED6 = 1;
			delay();
			LED7 = 1;
			delay();
			LED8 = 1;
			delay();
			LED5 = 0;
			delay();
			LED6 = 0;
			delay();
			LED7 = 0;
			delay();
			LED8 = 0;
			delay();
			
		}
}


/*** (C) COPYRIGHT 2017 Nuvoton Technology Corp. ***/
