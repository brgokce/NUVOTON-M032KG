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
#include "pin_labels.h"

void gpio_init(void);
void adc_init(void);
void UART0_Init(void);

void UART_Open(UART_T *uart, uint32_t u32baudrate);
void led_animasyon1(void);
void led_animasyon2(void);
void led_animasyon3(void);
void led_animasyon4(void);
void ADC_IRQHandler(void);

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
uint8_t g_u8RecData[256]  = {0};

volatile int32_t g_bWait         = TRUE;
volatile uint32_t g_u32comRbytes = 0;
volatile uint32_t g_u32comRhead  = 0;
volatile uint32_t g_u32comRtail  = 0;

void play_selected_animation(void);
void UART02_IRQHandler(void);
void GPCDEF_IRQHandler(void);
void rx_avilable_callback(void);
void rxtx_avilable_callback(void);
volatile uint32_t g_u32AdcIntFlag;
int32_t  i32ConversionData;

int main()
{
		clk_config_init();
		pin_config_init();
	  gpio_init();
	  adc_init();
	  UART0_Init();
		
		LED5=0;
		LED6=0;
		LED7=0;
		LED8=0;
	
	


	  uint8_t pu8TxBuf[] = "MERHABA MEKATRONIKCILER \n\t";

    UART_Write(UART0, pu8TxBuf, 30);
	 
	 
	  uint8_t  u8Option;

	  printf("\n");
    printf("+----------------------------------------------------------------------+\n");
    printf("|                     MERHABA MEKATRONIKCILER                     |\n");
    printf("+----------------------------------------------------------------------+\n");

    /* Enable ADC converter */

	 
	  ADC_POWER_ON(ADC);
		
    while(1){
            /* Set input mode as single-end, Single mode, and select channel 3 */
            ADC_Open(ADC, ADC_ADCR_DIFFEN_SINGLE_END, ADC_ADCR_ADMD_SINGLE, BIT3);

            /* Clear the A/D interrupt flag for safe */
            ADC_CLR_INT_FLAG(ADC, ADC_ADF_INT);

            /* Enable the sample module interrupt */
            ADC_ENABLE_INT(ADC, ADC_ADF_INT);  /* Enable sample module A/D interrupt. */
            NVIC_EnableIRQ(ADC_IRQn);

            /* Reset the ADC interrupt indicator and trigger sample module 0 to start A/D conversion */
            g_u32AdcIntFlag = 0;
            ADC_START_CONV(ADC);

            /* Wait ADC interrupt (g_u32AdcIntFlag will be set at IRQ_Handler function) */
            while(g_u32AdcIntFlag == 0);

            /* Disable the sample module interrupt */
            ADC_DISABLE_INT(ADC, ADC_ADF_INT);

            /* Get the conversion result of ADC channel 2 */
            i32ConversionData = ADC_GET_CONVERSION_DATA(ADC, 3);
            printf("Conversion result of channel 3: 0x%X (%d)\n\n", i32ConversionData, i32ConversionData);
					
					//	ADC_Close(ADC); 
						
						// /* Set input mode as differential, Single mode, and select channel 2 */
            ADC_Open(ADC, ADC_ADCR_DIFFEN_SINGLE_END, ADC_ADCR_ADMD_SINGLE, BIT4);

            /* Clear the A/D interrupt flag for safe */
            ADC_CLR_INT_FLAG(ADC, ADC_ADF_INT);

            /* Enable the sample module interrupt */
            ADC_ENABLE_INT(ADC, ADC_ADF_INT);  /* Enable sample module A/D interrupt. */
            NVIC_EnableIRQ(ADC_IRQn);

            /* Reset the ADC indicator and trigger sample module to start A/D conversion */
            g_u32AdcIntFlag = 0;
            ADC_START_CONV(ADC);

            /* Wait ADC interrupt (g_u32AdcIntFlag will be set at IRQ_Handler function) */
            while(g_u32AdcIntFlag == 0);

            /* Disable the sample module interrupt */
            ADC_DISABLE_INT(ADC, ADC_ADF_INT);

            /* Get the conversion result of channel 2 */
            i32ConversionData = ADC_GET_CONVERSION_DATA(ADC, 4);
            printf("Conversion result of channel 4: 0x%X (%d)\n\n", i32ConversionData, i32ConversionData);
			//			ADC_Close(ADC); 

						delay();delay();
						delay();
						
		}
}


void ADC_IRQHandler(void)
{
    g_u32AdcIntFlag = 1;
    ADC_CLR_INT_FLAG(ADC, ADC_ADF_INT); /* Clear the A/D interrupt flag */
}

/*----------------------------------------------------------------------*/
/* Init UART0                                                           */
/*----------------------------------------------------------------------*/
void UART0_Init(void)
{
    /* Reset UART0 */
    SYS_ResetModule(UART0_RST);

    /* Configure UART0 and set UART0 baud rate */
    UART_Open(UART0, 115200);
			
		NVIC_EnableIRQ(UART02_IRQn);
		UART_EnableInt(UART0,  UART_INTEN_RDAIEN_Msk);
}


void gpio_init(void)
{

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
	
}

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

void UART02_IRQHandler(void)
{
		 rxtx_avilable_callback();
}



void rxtx_avilable_callback(void)
{
    uint8_t u8InChar = 0xFF;

    if (UART_GET_INT_FLAG(UART0,UART_INTSTS_RDAINT_Msk))
    {
			    //    printf("\nInput:");

        /* Get all the input characters */
        while(UART_IS_RX_READY(UART0))
        {
					/* Get the character from UART Buffer */
            u8InChar = UART_READ(UART0);

       //     printf("%c ", u8InChar);

//            if(u8InChar == '0')
//            {
//                g_bWait = FALSE;
//            }

            /* Check if buffer full */
            if(g_u32comRbytes < 256)
            {
                /* Enqueue the character */
                g_u8RecData[g_u32comRtail] = u8InChar;
                g_u32comRtail = (g_u32comRtail == (256 - 1)) ? 0 : (g_u32comRtail + 1);
                g_u32comRbytes++;
            }
        }
				
				UART_Write(UART0, g_u8RecData, 256);
        printf("\nTransmission Test:");
				}
		
		if (UART_GET_INT_FLAG(UART0,UART_INTSTS_THREINT_Msk))
    {
			
		}

}

void adc_init(void){
/* Set PB.2 - PB.3 to input mode */
    GPIO_SetMode(PB, BIT2|BIT3|BIT4|BIT5|BIT15, GPIO_MODE_INPUT);
	  GPIO_DISABLE_DIGITAL_PATH(PB, BIT2|BIT3|BIT4|BIT5|BIT15);
}


/*** (C) COPYRIGHT 2017 Nuvoton Technology Corp. ***/
