/****************************************************************************
 * @file     pin_config.h
 * @version  V1.33.0005
 * @Date     Tue Feb 18 2025 23:27:52 GMT+0300 (GMT+03:00)
 * @brief    NuMicro generated code file
 *
 * SPDX-License-Identifier: Apache-2.0
 *
 * Copyright (C) 2013-2025 Nuvoton Technology Corp. All rights reserved.
*****************************************************************************/

#ifndef __PIN_CONFIG_H__
#define __PIN_CONFIG_H__

#ifdef __cplusplus
extern "C"
{
#endif

#define LED5 					PF8
#define LED5_PORT 		PF
#define LED5_PIN 			BIT8
#define LED5_PIN_NUM 	8

#define LED6 					PF7
#define LED6_PORT 		PF
#define LED6_PIN 			BIT7
#define LED6_PIN_NUM 	7

#define LED7 					PF6
#define LED7_PORT 		PF
#define LED7_PIN 			BIT6
#define LED7_PIN_NUM 	6

#define LED8 					PF14
#define LED8_PORT 		PF
#define LED8_PIN 			BIT14
#define LED8_PIN_NUM 	14 

#define NEXT_BUTTON 					PB1
#define NEXT_BUTTON_PORT 			PB
#define NEXT_BUTTON_PIN 			BIT1
#define NEXT_BUTTON_PIN_NUM 	1 

#define PREV_BUTTON 					PC12
#define PREV_BUTTON_PORT 			PC
#define PREV_BUTTON_PIN 			BIT12
#define PREV_BUTTON_PIN_NUM 	12 

#define STOP_BUTTON 					PC10
#define STOP_BUTTON_PORT 			PC
#define STOP_BUTTON_PIN 			BIT10
#define STOP_BUTTON_PIN_NUM 	10 

#define PLAY_BUTTON 					PC11
#define PLAY_BUTTON_PORT 			PC
#define PLAY_BUTTON_PIN 			BIT11
#define PLAY_BUTTON_PIN_NUM 	11 


void pin_config_init_ice(void);
void pin_config_deinit_ice(void);
void pin_config_init_pb(void);
void pin_config_deinit_pb(void);
void pin_config_init_pc(void);
void pin_config_deinit_pc(void);
void pin_config_init_pf(void);
void pin_config_deinit_pf(void);
void pin_config_init(void);
void pin_config_deinit(void);
#ifdef __cplusplus
}
#endif
#endif /*__PIN_CONFIG_H__*/

/*** (C) COPYRIGHT 2013-2025 Nuvoton Technology Corp. ***/
