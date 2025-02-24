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

#define Anim_Count 4
uint8_t anim_play_state = 1;
uint8_t curr_num_num = 1;
void play_selected_animation(void);

void GPCDEF_IRQHandler(void);

int main()
{
		clk_config_init();
		pin_config_init();
		
	  GPIO_SetMode(LED5_PORT,LED5_PIN, GPIO_MODE_OUTPUT);
	  GPIO_SetMode(LED6_PORT,LED6_PIN, GPIO_MODE_OUTPUT);
	  GPIO_SetMode(LED7_PORT,LED7_PIN, GPIO_MODE_OUTPUT);
	  GPIO_SetMode(LED8_PORT,LED8_PIN, GPIO_MODE_OUTPUT);

	  GPIO_SetMode(BUTON_NEXT_PORT, BUTON_NEXT_PIN, GPIO_MODE_INPUT);	
	  GPIO_SetMode(BUTON_PREV_PORT, BUTON_PREV_PIN, GPIO_MODE_INPUT);	
	  GPIO_SetMode(BUTON_PLAY_PORT, BUTON_PLAY_PIN, GPIO_MODE_INPUT);	
	 // GPIO_SetMode(BUTON_STOP_PORT, BUTON_STOP_PIN, GPIO_MODE_INPUT);	
	
	    /* Configure PC.1 as Quasi-bidirection mode and enable interrupt by falling edge trigger */
    GPIO_SetMode(BUTON_STOP_PORT, BUTON_STOP_PIN, GPIO_MODE_INPUT);
    GPIO_EnableInt(BUTON_STOP_PORT, BUTON_STOP_PIN_NUM, GPIO_INT_RISING);
    NVIC_EnableIRQ(GPIO_PCPDPEPF_IRQn);

    /* Enable interrupt de-bounce function and select de-bounce sampling cycle time is 1024 clocks of LIRC clock */
    GPIO_SET_DEBOUNCE_TIME(GPIO_DBCTL_DBCLKSRC_LIRC, GPIO_DBCTL_DBCLKSEL_1024);
    GPIO_ENABLE_DEBOUNCE(BUTON_STOP_PORT, BUTON_STOP_PIN_NUM);
	

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
   // printf("Hello World\n");

	 uint8_t pu8TxBuf[] = "MERHABA MEKATRONIKCILER \n\t";

   UART_Write(UART0, pu8TxBuf, 30);
		
    while(1){
			
			if(anim_play_state){
				play_selected_animation();
			
			}
			
			if(!BUTON_NEXT){
				curr_num_num++;
				if(curr_num_num>4){
				curr_num_num=1;
				}
			}
			if(!BUTON_PREV){
				curr_num_num--;
				if(curr_num_num<1){
				curr_num_num=Anim_Count;
				}
			}

			if(!BUTON_PLAY){
			anim_play_state = 1;
			}
			
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

void play_selected_animation(void)
{
	if(curr_num_num == 1) {
	led_animasyon1();
	}
	if(curr_num_num == 2) {
	led_animasyon2();
	}
	if(curr_num_num == 3) {
	led_animasyon3();
	}
	if(curr_num_num == 4) {
	led_animasyon4();
	}
}

void GPCDEF_IRQHandler(void)
{
    volatile uint32_t temp;

    /* To check if PC.5 interrupt occurred */
    if(GPIO_GET_INT_FLAG(BUTON_STOP_PORT, BUTON_STOP_PIN))
    {
				anim_play_state=0;
			  led_write(0);
        GPIO_CLR_INT_FLAG(BUTON_STOP_PORT, BUTON_STOP_PIN);
        printf("PC.10 INT occurred.\n");
    }
    else
    {
        /* Un-expected interrupt. Just clear all PC interrupts */
        temp = PC->INTSRC;
        PC->INTSRC = temp;
        printf("Un-expected interrupts.\n");
    }
}

/*** (C) COPYRIGHT 2017 Nuvoton Technology Corp. ***/
