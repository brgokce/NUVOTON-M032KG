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
void led_animasyon1(void);
void led_animasyon2(void);
void led_animasyon3(void);
void led_animasyon4(void);

static void delay(){
CLK_SysTickDelay(100000); // 100ms
}
static void delay50(){
CLK_SysTickDelay(100000); // 100ms
}
enum{
	LED_5_MASK = 0X01,
	LED_6_MASK = 0X02,
	LED_7_MASK = 0X04,
	LED_8_MASK = 0X08
};
	
void led_write(uint8_t mask){

	LED5 = (mask & LED_5_MASK) ? 1 : 0;
	LED6 = (mask & LED_6_MASK) ? 1 : 0;
	LED7 = (mask & LED_7_MASK) ? 1 : 0;
	LED8 = (mask & LED_8_MASK) ? 1 : 0;
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
	
	
    /* Set de-bounce function */
  //  GPIO_SET_DEBOUNCE_TIME(GPIO_DBCTL_DBCLKSRC_LIRC, GPIO_DBCTL_DBCLKSEL_512);
  //  GPIO_ENABLE_DEBOUNCE(PB, BIT1);
		
    /* Init UART0 to 115200-8n1 for print message */
    UART_Open(UART0, 115200);

    /* Connect UART to PC, and open a terminal tool to receive following message */
    printf("Hello World\n");

		
    while(1){
			led_animasyon1();			
		}
}

//void led_animasyon1(){
//	int position = 1;
//		led_write(position);	
//		delay();
//		led_write(position<<1);
//    delay();
//		led_write(position<<2);	
//    delay();
//		led_write(position<<3);
//    delay();
//		led_write(position<<3);
//    delay();
//		led_write(position<<2);    
//		delay();
//		led_write(position<<1);
//    delay();
//		led_write(position);	
//}


void led_animasyon1(){
	int position = 1;
	int direction = 1;
	for(uint8_t i=0; i<16; i++)
	{
			//(1 veya 2)
			led_write(position | (position<<1)); 

		delay();		
		
		led_write((position<<2) | (position<<3)); 	
		delay();
	}
}

void led_animasyon2(){
	int position = 1;
		led_write(position | (position<<1));
    delay50();
    led_write(0);
	  delay50();
		led_write(position | (position<<1));
    delay50();
		led_write(position | (position<<1));
    delay50();
    led_write(0);
	  delay50();
		led_write(position | (position<<1));
    delay();
		led_write((position<<3)| (position<<2));
    delay50();
		led_write(0);
		delay50();
		led_write((position<<3)| (position<<2));
    delay50();
	  led_write((position<<3)| (position<<2));
    delay50();
		led_write(0);
		delay50();
		led_write((position<<3)| (position<<2));
    delay();
}

void led_animasyon3(){
	int position = 1;
		led_write(LED_5_MASK| LED_8_MASK);
    delay();
    led_write(LED_5_MASK| LED_6_MASK | LED_7_MASK| LED_8_MASK);
	  delay();
		led_write(LED_5_MASK| LED_8_MASK);
    delay();
	  led_write(0x00);
	delay();
}

void led_animasyon4(){
	int position = 1;
	
	for(uint8_t i=0; i<4; i++)
	{
			led_write(position << i);
			delay();		
	}
	//delay();
	for(uint8_t i=3; i>0; i--)
	{
			led_write(position << i);
			delay();		
	}	
}

/*** (C) COPYRIGHT 2017 Nuvoton Technology Corp. ***/
