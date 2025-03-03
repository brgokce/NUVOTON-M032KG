/****************************************************************************
 * @file     pin_config.c
 * @version  V1.33.0005
 * @Date     Mon Mar 03 2025 15:04:28 GMT+0300 (GMT+03:00)
 * @brief    NuMicro generated code file
 *
 * SPDX-License-Identifier: Apache-2.0
 *
 * Copyright (C) 2013-2025 Nuvoton Technology Corp. All rights reserved.
*****************************************************************************/

/********************
MCU:M032KG8AE(LQFP128)
Pin Configuration:
Pin1:POT3
Pin2:POT2
Pin3:POT1
Pin4:NTC
Pin5:PREV_BUTTON
Pin6:PLAY_BUTTON
Pin7:STOP_BUTTON
Pin9:NEXT_BUTTON
Pin27:LED5
Pin28:LED6
Pin29:LED7
Pin30:LED8
Pin65:ICE_DAT
Pin66:ICE_CLK
Pin116:LDR
Pin118:UART0_TXD
Pin119:UART0_RXD
Module Configuration:
LDR(Pin:116)
NTC(Pin:4)
POT1(Pin:3)
POT2(Pin:2)
POT3(Pin:1)
PLAY_BUTTON(Pin:6)
PREV_BUTTON(Pin:5)
STOP_BUTTON(Pin:7)
NEXT_BUTTON(Pin:9)
LED5(Pin:27)
LED6(Pin:28)
LED7(Pin:29)
LED8(Pin:30)
ICE_CLK(Pin:66)
ICE_DAT(Pin:65)
UART0_RXD(Pin:119)
UART0_TXD(Pin:118)
GPIO Configuration:
PB.1:NEXT_BUTTON(Pin:9)
PB.2:NTC(Pin:4)
PB.3:POT1(Pin:3)
PB.4:POT2(Pin:2)
PB.5:POT3(Pin:1)
PB.12:UART0_RXD(Pin:119)
PB.13:UART0_TXD(Pin:118)
PB.15:LDR(Pin:116)
PC.10:STOP_BUTTON(Pin:7)
PC.11:PLAY_BUTTON(Pin:6)
PC.12:PREV_BUTTON(Pin:5)
PF.0:ICE_DAT(Pin:65)
PF.1:ICE_CLK(Pin:66)
PF.6:LED7(Pin:29)
PF.7:LED6(Pin:28)
PF.8:LED5(Pin:27)
PF.14:LED8(Pin:30)
********************/

#include "M031Series.h"

/* User-defined pins */
#define LED5 PF8
#define LED6 PF7
#define LED7 PF6
#define LED8 PF14
#define NEXT_BUTTON PB1
#define PREV_BUTTON PC12
#define STOP_BUTTON PC10
#define PLAY_BUTTON PC11
#define POT1 ADC0_CH3
#define POT2 ADC0_CH4
#define POT3 ADC0_CH5
#define NTC ADC0_CH2
#define LDR ADC0_CH15
void pin_config_init_adc0(void)
{
    SYS->GPB_MFPH &= ~(SYS_GPB_MFPH_PB15MFP_Msk);
    SYS->GPB_MFPH |= (SYS_GPB_MFPH_PB15MFP_ADC0_CH15);
    SYS->GPB_MFPL &= ~(SYS_GPB_MFPL_PB5MFP_Msk | SYS_GPB_MFPL_PB4MFP_Msk | SYS_GPB_MFPL_PB3MFP_Msk | SYS_GPB_MFPL_PB2MFP_Msk);
    SYS->GPB_MFPL |= (SYS_GPB_MFPL_PB5MFP_ADC0_CH5 | SYS_GPB_MFPL_PB4MFP_ADC0_CH4 | SYS_GPB_MFPL_PB3MFP_ADC0_CH3 | SYS_GPB_MFPL_PB2MFP_ADC0_CH2);

    return;
}

void pin_config_deinit_adc0(void)
{
    SYS->GPB_MFPH &= ~(SYS_GPB_MFPH_PB15MFP_Msk);
    SYS->GPB_MFPL &= ~(SYS_GPB_MFPL_PB5MFP_Msk | SYS_GPB_MFPL_PB4MFP_Msk | SYS_GPB_MFPL_PB3MFP_Msk | SYS_GPB_MFPL_PB2MFP_Msk);

    return;
}

void pin_config_init_ice(void)
{
    SYS->GPF_MFPL &= ~(SYS_GPF_MFPL_PF1MFP_Msk | SYS_GPF_MFPL_PF0MFP_Msk);
    SYS->GPF_MFPL |= (SYS_GPF_MFPL_PF1MFP_ICE_CLK | SYS_GPF_MFPL_PF0MFP_ICE_DAT);

    return;
}

void pin_config_deinit_ice(void)
{
    SYS->GPF_MFPL &= ~(SYS_GPF_MFPL_PF1MFP_Msk | SYS_GPF_MFPL_PF0MFP_Msk);

    return;
}

void pin_config_init_pb(void)
{
    SYS->GPB_MFPL &= ~(SYS_GPB_MFPL_PB1MFP_Msk);
    SYS->GPB_MFPL |= (SYS_GPB_MFPL_PB1MFP_GPIO);

    return;
}

void pin_config_deinit_pb(void)
{
    SYS->GPB_MFPL &= ~(SYS_GPB_MFPL_PB1MFP_Msk);

    return;
}

void pin_config_init_pc(void)
{
    SYS->GPC_MFPH &= ~(SYS_GPC_MFPH_PC12MFP_Msk | SYS_GPC_MFPH_PC11MFP_Msk | SYS_GPC_MFPH_PC10MFP_Msk);
    SYS->GPC_MFPH |= (SYS_GPC_MFPH_PC12MFP_GPIO | SYS_GPC_MFPH_PC11MFP_GPIO | SYS_GPC_MFPH_PC10MFP_GPIO);

    return;
}

void pin_config_deinit_pc(void)
{
    SYS->GPC_MFPH &= ~(SYS_GPC_MFPH_PC12MFP_Msk | SYS_GPC_MFPH_PC11MFP_Msk | SYS_GPC_MFPH_PC10MFP_Msk);

    return;
}

void pin_config_init_pf(void)
{
    SYS->GPF_MFPH &= ~(SYS_GPF_MFPH_PF14MFP_Msk | SYS_GPF_MFPH_PF8MFP_Msk);
    SYS->GPF_MFPH |= (SYS_GPF_MFPH_PF14MFP_GPIO | SYS_GPF_MFPH_PF8MFP_GPIO);
    SYS->GPF_MFPL &= ~(SYS_GPF_MFPL_PF7MFP_Msk | SYS_GPF_MFPL_PF6MFP_Msk);
    SYS->GPF_MFPL |= (SYS_GPF_MFPL_PF7MFP_GPIO | SYS_GPF_MFPL_PF6MFP_GPIO);

    return;
}

void pin_config_deinit_pf(void)
{
    SYS->GPF_MFPH &= ~(SYS_GPF_MFPH_PF14MFP_Msk | SYS_GPF_MFPH_PF8MFP_Msk);
    SYS->GPF_MFPL &= ~(SYS_GPF_MFPL_PF7MFP_Msk | SYS_GPF_MFPL_PF6MFP_Msk);

    return;
}

void pin_config_init_uart0(void)
{
    SYS->GPB_MFPH &= ~(SYS_GPB_MFPH_PB13MFP_Msk | SYS_GPB_MFPH_PB12MFP_Msk);
    SYS->GPB_MFPH |= (SYS_GPB_MFPH_PB13MFP_UART0_TXD | SYS_GPB_MFPH_PB12MFP_UART0_RXD);

    return;
}

void pin_config_deinit_uart0(void)
{
    SYS->GPB_MFPH &= ~(SYS_GPB_MFPH_PB13MFP_Msk | SYS_GPB_MFPH_PB12MFP_Msk);

    return;
}

void pin_config_init(void)
{
    //SYS->GPA_MFPH = 0x00000000UL;
    //SYS->GPA_MFPL = 0x00000000UL;
    //SYS->GPB_MFPH = 0x10660000UL;
    //SYS->GPB_MFPL = 0x00111100UL;
    //SYS->GPC_MFPH = 0x00000000UL;
    //SYS->GPC_MFPL = 0x00000000UL;
    //SYS->GPD_MFPH = 0x00000000UL;
    //SYS->GPD_MFPL = 0x00000000UL;
    //SYS->GPE_MFPH = 0x00000000UL;
    //SYS->GPE_MFPL = 0x00000000UL;
    //SYS->GPF_MFPH = 0x00000000UL;
    //SYS->GPF_MFPL = 0x000000EEUL;
    //SYS->GPG_MFPH = 0x00000000UL;
    //SYS->GPG_MFPL = 0x00000000UL;
    //SYS->GPH_MFPH = 0x00000000UL;
    //SYS->GPH_MFPL = 0x00000000UL;

    pin_config_init_adc0();
    pin_config_init_ice();
    pin_config_init_pb();
    pin_config_init_pc();
    pin_config_init_pf();
    pin_config_init_uart0();

    return;
}

void pin_config_deinit(void)
{
    pin_config_deinit_adc0();
    pin_config_deinit_ice();
    pin_config_deinit_pb();
    pin_config_deinit_pc();
    pin_config_deinit_pf();
    pin_config_deinit_uart0();

    return;
}

/*** (C) COPYRIGHT 2013-2025 Nuvoton Technology Corp. ***/
