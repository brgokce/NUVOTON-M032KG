/****************************************************************************
 * @file     pin_config.c
 * @version  V1.33.0005
 * @Date     Mon Feb 24 2025 14:36:55 GMT+0300 (GMT+03:00)
 * @brief    NuMicro generated code file
 *
 * SPDX-License-Identifier: Apache-2.0
 *
 * Copyright (C) 2013-2025 Nuvoton Technology Corp. All rights reserved.
*****************************************************************************/

/********************
MCU:M032KG8AE(LQFP128)
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
    //SYS->GPB_MFPH = 0x00660000UL;
    //SYS->GPB_MFPL = 0x00000000UL;
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

    pin_config_init_ice();
    pin_config_init_pb();
    pin_config_init_pc();
    pin_config_init_pf();
    pin_config_init_uart0();

    return;
}

void pin_config_deinit(void)
{
    pin_config_deinit_ice();
    pin_config_deinit_pb();
    pin_config_deinit_pc();
    pin_config_deinit_pf();
    pin_config_deinit_uart0();

    return;
}

/*** (C) COPYRIGHT 2013-2025 Nuvoton Technology Corp. ***/
