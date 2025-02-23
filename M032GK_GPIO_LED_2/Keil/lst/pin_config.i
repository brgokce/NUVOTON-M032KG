# 1 "../pin_config.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 382 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "../pin_config.c" 2
# 49 "../pin_config.c"
# 1 "../../M031BSP/Library/Device/Nuvoton/M031/Include\\M031Series.h" 1
# 74 "../../M031BSP/Library/Device/Nuvoton/M031/Include\\M031Series.h"
typedef enum IRQn
{

    NonMaskableInt_IRQn = -14,
    HardFault_IRQn = -13,
    SVCall_IRQn = -5,
    PendSV_IRQn = -2,
    SysTick_IRQn = -1,


    BOD_IRQn = 0,
    WDT_IRQn = 1,
    EINT024_IRQn = 2,
    EINT135_IRQn = 3,
    GPIO_PAPB_IRQn = 4,
    GPIO_PAPBPGPH_IRQn = 4,
    GPIO_PCPDPEPF_IRQn = 5,
    PWM0_IRQn = 6,
    PWM1_IRQn = 7,
    TMR0_IRQn = 8,
    TMR1_IRQn = 9,
    TMR2_IRQn = 10,
    TMR3_IRQn = 11,
    UART02_IRQn = 12,
    UART1_IRQn = 13,
    UART13_IRQn = 13,
    SPI0_IRQn = 14,
    QSPI0_IRQn = 15,
    ISP_IRQn = 16,
    UART57_IRQn = 17,
    I2C0_IRQn = 18,
    I2C1_IRQn = 19,
    BPWM0_IRQn = 20,
    BPWM1_IRQn = 21,
    USCI_IRQn = 22,
    USCI01_IRQn = 22,
    USBD_IRQn = 23,
    ACMP01_IRQn = 25,
    PDMA_IRQn = 26,
    UART46_IRQn = 27,
    PWRWU_IRQn = 28,
    ADC_IRQn = 29,
    CKFAIL_IRQn = 30,
    RTC_IRQn = 31
} IRQn_Type;
# 134 "../../M031BSP/Library/Device/Nuvoton/M031/Include\\M031Series.h"
# 1 "../../M031BSP/Library/CMSIS/Core/Include\\core_cm0.h" 1
# 27 "../../M031BSP/Library/CMSIS/Core/Include\\core_cm0.h" 3







# 1 "C:\\Users\\mgokce\\AppData\\Local\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdint.h" 1 3
# 56 "C:\\Users\\mgokce\\AppData\\Local\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdint.h" 3
typedef signed char int8_t;
typedef signed short int int16_t;
typedef signed int int32_t;
typedef signed long long int int64_t;


typedef unsigned char uint8_t;
typedef unsigned short int uint16_t;
typedef unsigned int uint32_t;
typedef unsigned long long int uint64_t;





typedef signed char int_least8_t;
typedef signed short int int_least16_t;
typedef signed int int_least32_t;
typedef signed long long int int_least64_t;


typedef unsigned char uint_least8_t;
typedef unsigned short int uint_least16_t;
typedef unsigned int uint_least32_t;
typedef unsigned long long int uint_least64_t;




typedef signed int int_fast8_t;
typedef signed int int_fast16_t;
typedef signed int int_fast32_t;
typedef signed long long int int_fast64_t;


typedef unsigned int uint_fast8_t;
typedef unsigned int uint_fast16_t;
typedef unsigned int uint_fast32_t;
typedef unsigned long long int uint_fast64_t;






typedef signed int intptr_t;
typedef unsigned int uintptr_t;



typedef signed long long intmax_t;
typedef unsigned long long uintmax_t;
# 35 "../../M031BSP/Library/CMSIS/Core/Include\\core_cm0.h" 2 3
# 63 "../../M031BSP/Library/CMSIS/Core/Include\\core_cm0.h" 3
# 1 "../../M031BSP/Library/CMSIS/Core/Include\\cmsis_version.h" 1 3
# 27 "../../M031BSP/Library/CMSIS/Core/Include\\cmsis_version.h" 3
# 64 "../../M031BSP/Library/CMSIS/Core/Include\\core_cm0.h" 2 3
# 116 "../../M031BSP/Library/CMSIS/Core/Include\\core_cm0.h" 3
# 1 "../../M031BSP/Library/CMSIS/Core/Include\\cmsis_compiler.h" 1 3
# 32 "../../M031BSP/Library/CMSIS/Core/Include\\cmsis_compiler.h" 3
# 1 "../../M031BSP/Library/CMSIS/Core/Include\\cmsis_armclang.h" 1 3
# 29 "../../M031BSP/Library/CMSIS/Core/Include\\cmsis_armclang.h" 3


# 1 "C:\\Users\\mgokce\\AppData\\Local\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\arm_acle.h" 1 3
# 45 "C:\\Users\\mgokce\\AppData\\Local\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\arm_acle.h" 3
static __inline__ void __attribute__((__always_inline__, __nodebug__)) __wfi(void) {
  __builtin_arm_wfi();
}



static __inline__ void __attribute__((__always_inline__, __nodebug__)) __wfe(void) {
  __builtin_arm_wfe();
}



static __inline__ void __attribute__((__always_inline__, __nodebug__)) __sev(void) {
  __builtin_arm_sev();
}



static __inline__ void __attribute__((__always_inline__, __nodebug__)) __sevl(void) {
  __builtin_arm_sevl();
}



static __inline__ void __attribute__((__always_inline__, __nodebug__)) __yield(void) {
  __builtin_arm_yield();
}







static __inline__ uint32_t __attribute__((__always_inline__, __nodebug__))
__swp(uint32_t __x, volatile uint32_t *__p) {
  uint32_t v;
  do
    v = __builtin_arm_ldrex(__p);
  while (__builtin_arm_strex(__x, __p));
  return v;
}
# 113 "C:\\Users\\mgokce\\AppData\\Local\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\arm_acle.h" 3
static __inline__ void __attribute__((__always_inline__, __nodebug__)) __nop(void) {
  __builtin_arm_nop();
}





static __inline__ uint32_t __attribute__((__always_inline__, __nodebug__))
__ror(uint32_t __x, uint32_t __y) {
  __y %= 32;
  if (__y == 0)
    return __x;
  return (__x >> __y) | (__x << (32 - __y));
}

static __inline__ uint64_t __attribute__((__always_inline__, __nodebug__))
__rorll(uint64_t __x, uint32_t __y) {
  __y %= 64;
  if (__y == 0)
    return __x;
  return (__x >> __y) | (__x << (64 - __y));
}

static __inline__ unsigned long __attribute__((__always_inline__, __nodebug__))
__rorl(unsigned long __x, uint32_t __y) {

  return __ror(__x, __y);



}



static __inline__ unsigned int __attribute__((__always_inline__, __nodebug__))
__clz(uint32_t __t) {
  return __builtin_arm_clz(__t);
}

static __inline__ unsigned int __attribute__((__always_inline__, __nodebug__))
__clzl(unsigned long __t) {

  return __builtin_arm_clz(__t);



}

static __inline__ unsigned int __attribute__((__always_inline__, __nodebug__))
__clzll(uint64_t __t) {
  return __builtin_arm_clz64(__t);
}


static __inline__ unsigned int __attribute__((__always_inline__, __nodebug__))
__cls(uint32_t __t) {
  return __builtin_arm_cls(__t);
}

static __inline__ unsigned int __attribute__((__always_inline__, __nodebug__))
__clsl(unsigned long __t) {

  return __builtin_arm_cls(__t);



}

static __inline__ unsigned int __attribute__((__always_inline__, __nodebug__))
__clsll(uint64_t __t) {
  return __builtin_arm_cls64(__t);
}


static __inline__ uint32_t __attribute__((__always_inline__, __nodebug__))
__rev(uint32_t __t) {
  return __builtin_bswap32(__t);
}

static __inline__ unsigned long __attribute__((__always_inline__, __nodebug__))
__revl(unsigned long __t) {

  return __builtin_bswap32(__t);



}

static __inline__ uint64_t __attribute__((__always_inline__, __nodebug__))
__revll(uint64_t __t) {
  return __builtin_bswap64(__t);
}


static __inline__ uint32_t __attribute__((__always_inline__, __nodebug__))
__rev16(uint32_t __t) {
  return __ror(__rev(__t), 16);
}

static __inline__ uint64_t __attribute__((__always_inline__, __nodebug__))
__rev16ll(uint64_t __t) {
  return (((uint64_t)__rev16(__t >> 32)) << 32) | (uint64_t)__rev16((uint32_t)__t);
}

static __inline__ unsigned long __attribute__((__always_inline__, __nodebug__))
__rev16l(unsigned long __t) {

    return __rev16(__t);



}


static __inline__ int16_t __attribute__((__always_inline__, __nodebug__))
__revsh(int16_t __t) {
  return (int16_t)__builtin_bswap16((uint16_t)__t);
}


static __inline__ uint32_t __attribute__((__always_inline__, __nodebug__))
__rbit(uint32_t __t) {
  return __builtin_arm_rbit(__t);
}

static __inline__ uint64_t __attribute__((__always_inline__, __nodebug__))
__rbitll(uint64_t __t) {

  return (((uint64_t)__builtin_arm_rbit(__t)) << 32) |
         __builtin_arm_rbit(__t >> 32);



}

static __inline__ unsigned long __attribute__((__always_inline__, __nodebug__))
__rbitl(unsigned long __t) {

  return __rbit(__t);



}
# 32 "../../M031BSP/Library/CMSIS/Core/Include\\cmsis_armclang.h" 2 3
# 71 "../../M031BSP/Library/CMSIS/Core/Include\\cmsis_armclang.h" 3
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wpacked"
  struct __attribute__((packed, aligned(1))) T_UINT16_WRITE { uint16_t v; };
#pragma clang diagnostic pop



#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wpacked"
  struct __attribute__((packed, aligned(1))) T_UINT16_READ { uint16_t v; };
#pragma clang diagnostic pop



#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wpacked"
  struct __attribute__((packed, aligned(1))) T_UINT32_WRITE { uint32_t v; };
#pragma clang diagnostic pop



#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wpacked"
  struct __attribute__((packed, aligned(1))) T_UINT32_READ { uint32_t v; };
#pragma clang diagnostic pop
# 282 "../../M031BSP/Library/CMSIS/Core/Include\\cmsis_armclang.h" 3
__attribute__((always_inline)) static inline int32_t __SSAT(int32_t val, uint32_t sat)
{
  if ((sat >= 1U) && (sat <= 32U))
  {
    const int32_t max = (int32_t)((1U << (sat - 1U)) - 1U);
    const int32_t min = -1 - max ;
    if (val > max)
    {
      return (max);
    }
    else if (val < min)
    {
      return (min);
    }
  }
  return (val);
}
# 308 "../../M031BSP/Library/CMSIS/Core/Include\\cmsis_armclang.h" 3
__attribute__((always_inline)) static inline uint32_t __USAT(int32_t val, uint32_t sat)
{
  if (sat <= 31U)
  {
    const uint32_t max = ((1U << sat) - 1U);
    if (val > (int32_t)max)
    {
      return (max);
    }
    else if (val < 0)
    {
      return (0U);
    }
  }
  return ((uint32_t)val);
}
# 621 "../../M031BSP/Library/CMSIS/Core/Include\\cmsis_armclang.h" 3
__attribute__((always_inline)) static inline void __enable_irq(void)
{
  __asm volatile ("cpsie i" : : : "memory");
}
# 634 "../../M031BSP/Library/CMSIS/Core/Include\\cmsis_armclang.h" 3
__attribute__((always_inline)) static inline void __disable_irq(void)
{
  __asm volatile ("cpsid i" : : : "memory");
}
# 670 "../../M031BSP/Library/CMSIS/Core/Include\\cmsis_armclang.h" 3
__attribute__((always_inline)) static inline uint32_t __get_FPSCR(void)
{



  return (0U);

}







__attribute__((always_inline)) static inline void __set_FPSCR(uint32_t fpscr)
{



  (void)fpscr;

}
# 702 "../../M031BSP/Library/CMSIS/Core/Include\\cmsis_armclang.h" 3
# 1 "../../M031BSP/Library/CMSIS/Core/Include\\./m-profile/cmsis_armclang_m.h" 1 3
# 27 "../../M031BSP/Library/CMSIS/Core/Include\\./m-profile/cmsis_armclang_m.h" 3
# 128 "../../M031BSP/Library/CMSIS/Core/Include\\./m-profile/cmsis_armclang_m.h" 3
__attribute__((always_inline)) static inline uint32_t __get_CONTROL(void)
{
  uint32_t result;

  __asm volatile ("MRS %0, control" : "=r" (result) );
  return (result);
}
# 158 "../../M031BSP/Library/CMSIS/Core/Include\\./m-profile/cmsis_armclang_m.h" 3
__attribute__((always_inline)) static inline void __set_CONTROL(uint32_t control)
{
  __asm volatile ("MSR control, %0" : : "r" (control) : "memory");
  __builtin_arm_isb(0xF);
}
# 184 "../../M031BSP/Library/CMSIS/Core/Include\\./m-profile/cmsis_armclang_m.h" 3
__attribute__((always_inline)) static inline uint32_t __get_IPSR(void)
{
  uint32_t result;

  __asm volatile ("MRS %0, ipsr" : "=r" (result) );
  return (result);
}







__attribute__((always_inline)) static inline uint32_t __get_APSR(void)
{
  uint32_t result;

  __asm volatile ("MRS %0, apsr" : "=r" (result) );
  return (result);
}







__attribute__((always_inline)) static inline uint32_t __get_xPSR(void)
{
  uint32_t result;

  __asm volatile ("MRS %0, xpsr" : "=r" (result) );
  return (result);
}







__attribute__((always_inline)) static inline uint32_t __get_PSP(void)
{
  uint32_t result;

  __asm volatile ("MRS %0, psp" : "=r" (result) );
  return (result);
}
# 256 "../../M031BSP/Library/CMSIS/Core/Include\\./m-profile/cmsis_armclang_m.h" 3
__attribute__((always_inline)) static inline void __set_PSP(uint32_t topOfProcStack)
{
  __asm volatile ("MSR psp, %0" : : "r" (topOfProcStack) : );
}
# 280 "../../M031BSP/Library/CMSIS/Core/Include\\./m-profile/cmsis_armclang_m.h" 3
__attribute__((always_inline)) static inline uint32_t __get_MSP(void)
{
  uint32_t result;

  __asm volatile ("MRS %0, msp" : "=r" (result) );
  return (result);
}
# 310 "../../M031BSP/Library/CMSIS/Core/Include\\./m-profile/cmsis_armclang_m.h" 3
__attribute__((always_inline)) static inline void __set_MSP(uint32_t topOfMainStack)
{
  __asm volatile ("MSR msp, %0" : : "r" (topOfMainStack) : );
}
# 361 "../../M031BSP/Library/CMSIS/Core/Include\\./m-profile/cmsis_armclang_m.h" 3
__attribute__((always_inline)) static inline uint32_t __get_PRIMASK(void)
{
  uint32_t result;

  __asm volatile ("MRS %0, primask" : "=r" (result) );
  return (result);
}
# 391 "../../M031BSP/Library/CMSIS/Core/Include\\./m-profile/cmsis_armclang_m.h" 3
__attribute__((always_inline)) static inline void __set_PRIMASK(uint32_t priMask)
{
  __asm volatile ("MSR primask, %0" : : "r" (priMask) : "memory");
}
# 703 "../../M031BSP/Library/CMSIS/Core/Include\\cmsis_armclang.h" 2 3
# 33 "../../M031BSP/Library/CMSIS/Core/Include\\cmsis_compiler.h" 2 3
# 117 "../../M031BSP/Library/CMSIS/Core/Include\\core_cm0.h" 2 3
# 200 "../../M031BSP/Library/CMSIS/Core/Include\\core_cm0.h" 3
typedef union
{
  struct
  {
    uint32_t _reserved0:28;
    uint32_t V:1;
    uint32_t C:1;
    uint32_t Z:1;
    uint32_t N:1;
  } b;
  uint32_t w;
} APSR_Type;
# 230 "../../M031BSP/Library/CMSIS/Core/Include\\core_cm0.h" 3
typedef union
{
  struct
  {
    uint32_t ISR:9;
    uint32_t _reserved0:23;
  } b;
  uint32_t w;
} IPSR_Type;
# 248 "../../M031BSP/Library/CMSIS/Core/Include\\core_cm0.h" 3
typedef union
{
  struct
  {
    uint32_t ISR:9;
    uint32_t _reserved0:15;
    uint32_t T:1;
    uint32_t _reserved1:3;
    uint32_t V:1;
    uint32_t C:1;
    uint32_t Z:1;
    uint32_t N:1;
  } b;
  uint32_t w;
} xPSR_Type;
# 287 "../../M031BSP/Library/CMSIS/Core/Include\\core_cm0.h" 3
typedef union
{
  struct
  {
    uint32_t _reserved0:1;
    uint32_t SPSEL:1;
    uint32_t _reserved1:30;
  } b;
  uint32_t w;
} CONTROL_Type;
# 315 "../../M031BSP/Library/CMSIS/Core/Include\\core_cm0.h" 3
typedef struct
{
  volatile uint32_t ISER[1U];
        uint32_t RESERVED0[31U];
  volatile uint32_t ICER[1U];
        uint32_t RESERVED1[31U];
  volatile uint32_t ISPR[1U];
        uint32_t RESERVED2[31U];
  volatile uint32_t ICPR[1U];
        uint32_t RESERVED3[31U];
        uint32_t RESERVED4[64U];
  volatile uint32_t IPR[8U];
} NVIC_Type;
# 342 "../../M031BSP/Library/CMSIS/Core/Include\\core_cm0.h" 3
typedef struct
{
  volatile const uint32_t CPUID;
  volatile uint32_t ICSR;
        uint32_t RESERVED0;
  volatile uint32_t AIRCR;
  volatile uint32_t SCR;
  volatile uint32_t CCR;
        uint32_t RESERVED1;
  volatile uint32_t SHPR[2U];
  volatile uint32_t SHCSR;
} SCB_Type;
# 449 "../../M031BSP/Library/CMSIS/Core/Include\\core_cm0.h" 3
typedef struct
{
  volatile uint32_t CTRL;
  volatile uint32_t LOAD;
  volatile uint32_t VAL;
  volatile const uint32_t CALIB;
} SysTick_Type;
# 639 "../../M031BSP/Library/CMSIS/Core/Include\\core_cm0.h" 3
static inline void __NVIC_EnableIRQ(IRQn_Type IRQn)
{
  if ((int32_t)(IRQn) >= 0)
  {
    __asm volatile("":::"memory");
    ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISER[0U] = (uint32_t)(1UL << (((uint32_t)IRQn) & 0x1FUL));
    __asm volatile("":::"memory");
  }
}
# 658 "../../M031BSP/Library/CMSIS/Core/Include\\core_cm0.h" 3
static inline uint32_t __NVIC_GetEnableIRQ(IRQn_Type IRQn)
{
  if ((int32_t)(IRQn) >= 0)
  {
    return((uint32_t)(((((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISER[0U] & (1UL << (((uint32_t)IRQn) & 0x1FUL))) != 0UL) ? 1UL : 0UL));
  }
  else
  {
    return(0U);
  }
}
# 677 "../../M031BSP/Library/CMSIS/Core/Include\\core_cm0.h" 3
static inline void __NVIC_DisableIRQ(IRQn_Type IRQn)
{
  if ((int32_t)(IRQn) >= 0)
  {
    ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ICER[0U] = (uint32_t)(1UL << (((uint32_t)IRQn) & 0x1FUL));
    __builtin_arm_dsb(0xF);
    __builtin_arm_isb(0xF);
  }
}
# 696 "../../M031BSP/Library/CMSIS/Core/Include\\core_cm0.h" 3
static inline uint32_t __NVIC_GetPendingIRQ(IRQn_Type IRQn)
{
  if ((int32_t)(IRQn) >= 0)
  {
    return((uint32_t)(((((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISPR[0U] & (1UL << (((uint32_t)IRQn) & 0x1FUL))) != 0UL) ? 1UL : 0UL));
  }
  else
  {
    return(0U);
  }
}
# 715 "../../M031BSP/Library/CMSIS/Core/Include\\core_cm0.h" 3
static inline void __NVIC_SetPendingIRQ(IRQn_Type IRQn)
{
  if ((int32_t)(IRQn) >= 0)
  {
    ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISPR[0U] = (uint32_t)(1UL << (((uint32_t)IRQn) & 0x1FUL));
  }
}
# 730 "../../M031BSP/Library/CMSIS/Core/Include\\core_cm0.h" 3
static inline void __NVIC_ClearPendingIRQ(IRQn_Type IRQn)
{
  if ((int32_t)(IRQn) >= 0)
  {
    ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ICPR[0U] = (uint32_t)(1UL << (((uint32_t)IRQn) & 0x1FUL));
  }
}
# 748 "../../M031BSP/Library/CMSIS/Core/Include\\core_cm0.h" 3
static inline void __NVIC_SetPriority(IRQn_Type IRQn, uint32_t priority)
{
  if ((int32_t)(IRQn) >= 0)
  {
    ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->IPR[( (((uint32_t)(int32_t)(IRQn)) >> 2UL) )] = ((uint32_t)(((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->IPR[( (((uint32_t)(int32_t)(IRQn)) >> 2UL) )] & ~(0xFFUL << ( ((((uint32_t)(int32_t)(IRQn)) ) & 0x03UL) * 8UL))) |
       (((priority << (8U - 2)) & (uint32_t)0xFFUL) << ( ((((uint32_t)(int32_t)(IRQn)) ) & 0x03UL) * 8UL)));
  }
  else
  {
    ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->SHPR[( (((((uint32_t)(int32_t)(IRQn)) & 0x0FUL)-8UL) >> 2UL) )] = ((uint32_t)(((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->SHPR[( (((((uint32_t)(int32_t)(IRQn)) & 0x0FUL)-8UL) >> 2UL) )] & ~(0xFFUL << ( ((((uint32_t)(int32_t)(IRQn)) ) & 0x03UL) * 8UL))) |
       (((priority << (8U - 2)) & (uint32_t)0xFFUL) << ( ((((uint32_t)(int32_t)(IRQn)) ) & 0x03UL) * 8UL)));
  }
}
# 772 "../../M031BSP/Library/CMSIS/Core/Include\\core_cm0.h" 3
static inline uint32_t __NVIC_GetPriority(IRQn_Type IRQn)
{

  if ((int32_t)(IRQn) >= 0)
  {
    return((uint32_t)(((((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->IPR[ ( (((uint32_t)(int32_t)(IRQn)) >> 2UL) )] >> ( ((((uint32_t)(int32_t)(IRQn)) ) & 0x03UL) * 8UL) ) & (uint32_t)0xFFUL) >> (8U - 2)));
  }
  else
  {
    return((uint32_t)(((((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->SHPR[( (((((uint32_t)(int32_t)(IRQn)) & 0x0FUL)-8UL) >> 2UL) )] >> ( ((((uint32_t)(int32_t)(IRQn)) ) & 0x03UL) * 8UL) ) & (uint32_t)0xFFUL) >> (8U - 2)));
  }
}
# 797 "../../M031BSP/Library/CMSIS/Core/Include\\core_cm0.h" 3
static inline uint32_t NVIC_EncodePriority (uint32_t PriorityGroup, uint32_t PreemptPriority, uint32_t SubPriority)
{
  uint32_t PriorityGroupTmp = (PriorityGroup & (uint32_t)0x07UL);
  uint32_t PreemptPriorityBits;
  uint32_t SubPriorityBits;

  PreemptPriorityBits = ((7UL - PriorityGroupTmp) > (uint32_t)(2)) ? (uint32_t)(2) : (uint32_t)(7UL - PriorityGroupTmp);
  SubPriorityBits = ((PriorityGroupTmp + (uint32_t)(2)) < (uint32_t)7UL) ? (uint32_t)0UL : (uint32_t)((PriorityGroupTmp - 7UL) + (uint32_t)(2));

  return (
           ((PreemptPriority & (uint32_t)((1UL << (PreemptPriorityBits)) - 1UL)) << SubPriorityBits) |
           ((SubPriority & (uint32_t)((1UL << (SubPriorityBits )) - 1UL)))
         );
}
# 824 "../../M031BSP/Library/CMSIS/Core/Include\\core_cm0.h" 3
static inline void NVIC_DecodePriority (uint32_t Priority, uint32_t PriorityGroup, uint32_t* const pPreemptPriority, uint32_t* const pSubPriority)
{
  uint32_t PriorityGroupTmp = (PriorityGroup & (uint32_t)0x07UL);
  uint32_t PreemptPriorityBits;
  uint32_t SubPriorityBits;

  PreemptPriorityBits = ((7UL - PriorityGroupTmp) > (uint32_t)(2)) ? (uint32_t)(2) : (uint32_t)(7UL - PriorityGroupTmp);
  SubPriorityBits = ((PriorityGroupTmp + (uint32_t)(2)) < (uint32_t)7UL) ? (uint32_t)0UL : (uint32_t)((PriorityGroupTmp - 7UL) + (uint32_t)(2));

  *pPreemptPriority = (Priority >> SubPriorityBits) & (uint32_t)((1UL << (PreemptPriorityBits)) - 1UL);
  *pSubPriority = (Priority ) & (uint32_t)((1UL << (SubPriorityBits )) - 1UL);
}
# 847 "../../M031BSP/Library/CMSIS/Core/Include\\core_cm0.h" 3
static inline void __NVIC_SetVector(IRQn_Type IRQn, uint32_t vector)
{
  uint32_t *vectors = (uint32_t *)(16 << 2);
  *(vectors + (int32_t)IRQn) = vector;

}
# 863 "../../M031BSP/Library/CMSIS/Core/Include\\core_cm0.h" 3
static inline uint32_t __NVIC_GetVector(IRQn_Type IRQn)
{
  uint32_t *vectors = (uint32_t *)(16 << 2);
  return *(vectors + (int32_t)IRQn);
}






__attribute__((__noreturn__)) static inline void __NVIC_SystemReset(void)
{
  __builtin_arm_dsb(0xF);

  ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR = ((0x5FAUL << 16U) |
                 (1UL << 2U));
  __builtin_arm_dsb(0xF);

  for(;;)
  {
    __nop();
  }
}
# 907 "../../M031BSP/Library/CMSIS/Core/Include\\core_cm0.h" 3
static inline uint32_t SCB_GetFPUType(void)
{
    return 0U;
}
# 938 "../../M031BSP/Library/CMSIS/Core/Include\\core_cm0.h" 3
static inline uint32_t SysTick_Config(uint32_t ticks)
{
  if ((ticks - 1UL) > (0xFFFFFFUL ))
  {
    return (1UL);
  }

  ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->LOAD = (uint32_t)(ticks - 1UL);
  __NVIC_SetPriority (SysTick_IRQn, (1UL << 2) - 1UL);
  ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->VAL = 0UL;
  ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->CTRL = (1UL << 2U) |
                   (1UL << 1U) |
                   (1UL );
  return (0UL);
}
# 135 "../../M031BSP/Library/Device/Nuvoton/M031/Include\\M031Series.h" 2
# 1 "../../M031BSP/Library/Device/Nuvoton/M031/Include\\system_M031Series.h" 1
# 50 "../../M031BSP/Library/Device/Nuvoton/M031/Include\\system_M031Series.h"
extern uint32_t SystemCoreClock;
extern uint32_t CyclesPerUs;
extern uint32_t PllClock;




typedef void(*VECTOR_TABLE_Type)(void);
# 89 "../../M031BSP/Library/Device/Nuvoton/M031/Include\\system_M031Series.h"
extern void SystemInit(void);
# 102 "../../M031BSP/Library/Device/Nuvoton/M031/Include\\system_M031Series.h"
extern void SystemCoreClockUpdate(void);
# 136 "../../M031BSP/Library/Device/Nuvoton/M031/Include\\M031Series.h" 2
# 152 "../../M031BSP/Library/Device/Nuvoton/M031/Include\\M031Series.h"
extern void SystemInit(void);







# 1 "../../M031BSP/Library/Device/Nuvoton/M031/Include\\acmp_reg.h" 1
# 26 "../../M031BSP/Library/Device/Nuvoton/M031/Include\\acmp_reg.h"
typedef struct
{
# 129 "../../M031BSP/Library/Device/Nuvoton/M031/Include\\acmp_reg.h"
    volatile uint32_t CTL[2];
    volatile uint32_t STATUS;
    volatile uint32_t VREF;
    volatile uint32_t CALCTL;
    volatile const uint32_t CALSR;

} ACMP_T;
# 161 "../../M031BSP/Library/Device/Nuvoton/M031/Include\\M031Series.h" 2
# 1 "../../M031BSP/Library/Device/Nuvoton/M031/Include\\adc_reg.h" 1
# 26 "../../M031BSP/Library/Device/Nuvoton/M031/Include\\adc_reg.h"
typedef struct
{
# 251 "../../M031BSP/Library/Device/Nuvoton/M031/Include\\adc_reg.h"
    volatile const uint32_t ADDR[30];
    volatile const uint32_t RESERVE1[2];
    volatile uint32_t ADCR;
    volatile uint32_t ADCHER;
    volatile uint32_t ADCMPR[2];
    volatile uint32_t ADSR0;
    volatile const uint32_t ADSR1;
    volatile const uint32_t ADSR2;
    volatile const uint32_t RESERVE2[1];
    volatile uint32_t ESMPCTL;
    volatile uint32_t CFDCTL;
    volatile const uint32_t RESERVE3[22];
    volatile const uint32_t ADPDMA;
    volatile const uint32_t RESERVE4[31];
    volatile uint32_t ADCALR;
    volatile uint32_t ADCALSTSR;
    volatile uint32_t ADCALDBR;
} ADC_T;
# 162 "../../M031BSP/Library/Device/Nuvoton/M031/Include\\M031Series.h" 2
# 1 "../../M031BSP/Library/Device/Nuvoton/M031/Include\\clk_reg.h" 1
# 26 "../../M031BSP/Library/Device/Nuvoton/M031/Include\\clk_reg.h"
typedef struct
{
# 520 "../../M031BSP/Library/Device/Nuvoton/M031/Include\\clk_reg.h"
    volatile uint32_t PWRCTL;
    volatile uint32_t AHBCLK;
    volatile uint32_t APBCLK0;
    volatile uint32_t APBCLK1;
    volatile uint32_t CLKSEL0;
    volatile uint32_t CLKSEL1;
    volatile uint32_t CLKSEL2;
    volatile uint32_t CLKSEL3;
    volatile uint32_t CLKDIV0;
    volatile const uint32_t RESERVE0[3];
    volatile uint32_t CLKDIV4;
    volatile uint32_t PCLKDIV;
    volatile const uint32_t RESERVE1[2];
    volatile uint32_t PLLCTL;
    volatile const uint32_t RESERVE2[3];
    volatile const uint32_t STATUS;
    volatile const uint32_t RESERVE3[3];
    volatile uint32_t CLKOCTL;
    volatile const uint32_t RESERVE4[3];
    volatile uint32_t CLKDCTL;
    volatile uint32_t CLKDSTS;
    volatile uint32_t CDUPB;
    volatile uint32_t CDLOWB;
    volatile uint32_t LDOCTL;
    volatile const uint32_t RESERVE5[12];
    volatile uint32_t HXTFSEL;
    volatile const uint32_t RESERVE9[14];
    volatile uint32_t TESTCLK;

} CLK_T;
# 163 "../../M031BSP/Library/Device/Nuvoton/M031/Include\\M031Series.h" 2
# 1 "../../M031BSP/Library/Device/Nuvoton/M031/Include\\crc_reg.h" 1
# 26 "../../M031BSP/Library/Device/Nuvoton/M031/Include\\crc_reg.h"
typedef struct
{
# 97 "../../M031BSP/Library/Device/Nuvoton/M031/Include\\crc_reg.h"
    volatile uint32_t CTL;
    volatile uint32_t DAT;
    volatile uint32_t SEED;
    volatile const uint32_t CHECKSUM;

} CRC_T;
# 164 "../../M031BSP/Library/Device/Nuvoton/M031/Include\\M031Series.h" 2
# 1 "../../M031BSP/Library/Device/Nuvoton/M031/Include\\ebi_reg.h" 1
# 26 "../../M031BSP/Library/Device/Nuvoton/M031/Include\\ebi_reg.h"
typedef struct
{
# 164 "../../M031BSP/Library/Device/Nuvoton/M031/Include\\ebi_reg.h"
    volatile uint32_t CTL0;
    volatile uint32_t TCTL0;
    volatile const uint32_t RESERVE0[2];
    volatile uint32_t CTL1;
    volatile uint32_t TCTL1;

} EBI_T;
# 165 "../../M031BSP/Library/Device/Nuvoton/M031/Include\\M031Series.h" 2
# 1 "../../M031BSP/Library/Device/Nuvoton/M031/Include\\fmc_reg.h" 1
# 26 "../../M031BSP/Library/Device/Nuvoton/M031/Include\\fmc_reg.h"
typedef struct
{
# 180 "../../M031BSP/Library/Device/Nuvoton/M031/Include\\fmc_reg.h"
    volatile uint32_t ISPCTL;
    volatile uint32_t ISPADDR;
    volatile uint32_t ISPDAT;
    volatile uint32_t ISPCMD;
    volatile uint32_t ISPTRG;
    volatile const uint32_t DFBA;
    volatile uint32_t FTCTL;
    volatile uint32_t ICPCTL;
    volatile const uint32_t RESERVE0[8];
    volatile uint32_t ISPSTS;
    volatile const uint32_t RESERVE1[15];
    volatile uint32_t MPDAT0;
    volatile uint32_t MPDAT1;
    volatile uint32_t MPDAT2;
    volatile uint32_t MPDAT3;
    volatile const uint32_t RESERVE2[12];
    volatile const uint32_t MPSTS;
    volatile const uint32_t MPADDR;
    volatile const uint32_t RESERVE3[0x3CD];
    volatile const uint32_t VERSION;
} FMC_T;
# 166 "../../M031BSP/Library/Device/Nuvoton/M031/Include\\M031Series.h" 2
# 1 "../../M031BSP/Library/Device/Nuvoton/M031/Include\\gpio_reg.h" 1
# 26 "../../M031BSP/Library/Device/Nuvoton/M031/Include\\gpio_reg.h"
typedef struct
{
# 154 "../../M031BSP/Library/Device/Nuvoton/M031/Include\\gpio_reg.h"
    volatile uint32_t MODE;
    volatile uint32_t DINOFF;
    volatile uint32_t DOUT;
    volatile uint32_t DATMSK;
    volatile const uint32_t PIN;
    volatile uint32_t DBEN;
    volatile uint32_t INTTYPE;
    volatile uint32_t INTEN;
    volatile uint32_t INTSRC;
} GPIO_T;

typedef struct
{
# 201 "../../M031BSP/Library/Device/Nuvoton/M031/Include\\gpio_reg.h"
    volatile uint32_t DBCTL;
} GPIO_DBCTL_T;
# 167 "../../M031BSP/Library/Device/Nuvoton/M031/Include\\M031Series.h" 2
# 1 "../../M031BSP/Library/Device/Nuvoton/M031/Include\\hdiv_reg.h" 1
# 26 "../../M031BSP/Library/Device/Nuvoton/M031/Include\\hdiv_reg.h"
typedef struct
{
# 40 "../../M031BSP/Library/Device/Nuvoton/M031/Include\\hdiv_reg.h"
    volatile uint32_t DIVIDEND;
# 53 "../../M031BSP/Library/Device/Nuvoton/M031/Include\\hdiv_reg.h"
    volatile uint32_t DIVISOR;
# 65 "../../M031BSP/Library/Device/Nuvoton/M031/Include\\hdiv_reg.h"
    volatile uint32_t QUOTIENT;
# 78 "../../M031BSP/Library/Device/Nuvoton/M031/Include\\hdiv_reg.h"
    volatile uint32_t REM;
# 94 "../../M031BSP/Library/Device/Nuvoton/M031/Include\\hdiv_reg.h"
    volatile const uint32_t STATUS;

} HDIV_T;
# 168 "../../M031BSP/Library/Device/Nuvoton/M031/Include\\M031Series.h" 2
# 1 "../../M031BSP/Library/Device/Nuvoton/M031/Include\\i2c_reg.h" 1
# 26 "../../M031BSP/Library/Device/Nuvoton/M031/Include\\i2c_reg.h"
typedef struct
{
# 481 "../../M031BSP/Library/Device/Nuvoton/M031/Include\\i2c_reg.h"
    volatile uint32_t CTL0;
    volatile uint32_t ADDR0;
    volatile uint32_t DAT;
    volatile const uint32_t STATUS0;
    volatile uint32_t CLKDIV;
    volatile uint32_t TOCTL;
    volatile uint32_t ADDR1;
    volatile uint32_t ADDR2;
    volatile uint32_t ADDR3;
    volatile uint32_t ADDRMSK0;
    volatile uint32_t ADDRMSK1;
    volatile uint32_t ADDRMSK2;
    volatile uint32_t ADDRMSK3;
    volatile const uint32_t RESERVE0[2];
    volatile uint32_t WKCTL;
    volatile uint32_t WKSTS;
    volatile uint32_t CTL1;
    volatile uint32_t STATUS1;
    volatile uint32_t TMCTL;
    volatile uint32_t BUSCTL;
    volatile uint32_t BUSTCTL;
    volatile uint32_t BUSSTS;
    volatile uint32_t PKTSIZE;
    volatile const uint32_t PKTCRC;
    volatile uint32_t BUSTOUT;
    volatile uint32_t CLKTOUT;
} I2C_T;
# 169 "../../M031BSP/Library/Device/Nuvoton/M031/Include\\M031Series.h" 2
# 1 "../../M031BSP/Library/Device/Nuvoton/M031/Include\\pdma_reg.h" 1
# 27 "../../M031BSP/Library/Device/Nuvoton/M031/Include\\pdma_reg.h"
typedef struct
{
# 113 "../../M031BSP/Library/Device/Nuvoton/M031/Include\\pdma_reg.h"
    volatile uint32_t CTL;
    volatile uint32_t SA;
    volatile uint32_t DA;
    volatile uint32_t NEXT;

} DSCT_T;


typedef struct
{
# 448 "../../M031BSP/Library/Device/Nuvoton/M031/Include\\pdma_reg.h"
    DSCT_T DSCT[9];
    volatile const uint32_t RESERVE0[28];
    volatile const uint32_t CURSCAT[9];
    volatile const uint32_t RESERVE1[183];
    volatile uint32_t CHCTL;
    volatile uint32_t PAUSE;
    volatile uint32_t SWREQ;
    volatile const uint32_t TRGSTS;
    volatile uint32_t PRISET;
    volatile uint32_t PRICLR;
    volatile uint32_t INTEN;
    volatile uint32_t INTSTS;
    volatile uint32_t ABTSTS;
    volatile uint32_t TDSTS;
    volatile uint32_t ALIGN;
    volatile const uint32_t TACTSTS;
    volatile uint32_t TOUTPSC;
    volatile uint32_t TOUTEN;
    volatile uint32_t TOUTIEN;
    volatile uint32_t SCATBA;
    volatile uint32_t TOC0_1;
    volatile const uint32_t RESERVE2[7];
    volatile uint32_t CHRST;
    volatile const uint32_t RESERVE3[7];
    volatile uint32_t REQSEL0_3;
    volatile uint32_t REQSEL4_7;
    volatile uint32_t REQSEL8;
} PDMA_T;
# 170 "../../M031BSP/Library/Device/Nuvoton/M031/Include\\M031Series.h" 2
# 1 "../../M031BSP/Library/Device/Nuvoton/M031/Include\\pwm_reg.h" 1
# 26 "../../M031BSP/Library/Device/Nuvoton/M031/Include\\pwm_reg.h"
typedef struct
{
# 1165 "../../M031BSP/Library/Device/Nuvoton/M031/Include\\pwm_reg.h"
    volatile uint32_t CTL0;
    volatile uint32_t CTL1;
    volatile const uint32_t RESERVE0[2];
    volatile uint32_t CLKSRC;
    volatile uint32_t CLKPSC[3];
    volatile uint32_t CNTEN;
    volatile uint32_t CNTCLR;
    volatile const uint32_t RESERVE1[2];
    volatile uint32_t PERIOD[6];
    volatile const uint32_t RESERVE2[2];
    volatile uint32_t CMPDAT[6];
    volatile const uint32_t RESERVE3[2];
    volatile uint32_t DTCTL[3];
    volatile const uint32_t RESERVE4[5];
    volatile const uint32_t CNT[6];
    volatile const uint32_t RESERVE5[2];
    volatile uint32_t WGCTL0;
    volatile uint32_t WGCTL1;
    volatile uint32_t MSKEN;
    volatile uint32_t MSK;
    volatile uint32_t BNF;
    volatile uint32_t FAILBRK;
    volatile uint32_t BRKCTL[3];
    volatile uint32_t POLCTL;
    volatile uint32_t POEN;
    volatile uint32_t SWBRK;
    volatile uint32_t INTEN0;
    volatile uint32_t INTEN1;
    volatile uint32_t INTSTS0;
    volatile uint32_t INTSTS1;
    volatile const uint32_t RESERVE6[2];
    volatile uint32_t ADCTS0;
    volatile uint32_t ADCTS1;
    volatile const uint32_t RESERVE7[4];
    volatile uint32_t SSCTL;
    volatile uint32_t SSTRG;
    volatile const uint32_t RESERVE8[2];
    volatile uint32_t STATUS;
    volatile const uint32_t RESERVE9[55];
    volatile uint32_t CAPINEN;
    volatile uint32_t CAPCTL;
    volatile const uint32_t CAPSTS;
    volatile const uint32_t RCAPDAT0;
    volatile const uint32_t FCAPDAT0;
    volatile const uint32_t RCAPDAT1;
    volatile const uint32_t FCAPDAT1;
    volatile const uint32_t RCAPDAT2;
    volatile const uint32_t FCAPDAT2;
    volatile const uint32_t RCAPDAT3;
    volatile const uint32_t FCAPDAT3;
    volatile const uint32_t RCAPDAT4;
    volatile const uint32_t FCAPDAT4;
    volatile const uint32_t RCAPDAT5;
    volatile const uint32_t FCAPDAT5;
    volatile uint32_t PDMACTL;
    volatile const uint32_t PDMACAP0_1;
    volatile const uint32_t PDMACAP2_3;
    volatile const uint32_t PDMACAP4_5;
    volatile const uint32_t RESERVE10[1];
    volatile uint32_t CAPIEN;
    volatile uint32_t CAPIF;
    volatile const uint32_t RESERVE11[43];
    volatile const uint32_t PBUF[6];
    volatile const uint32_t CMPBUF[6];
} PWM_T;
# 171 "../../M031BSP/Library/Device/Nuvoton/M031/Include\\M031Series.h" 2
# 1 "../../M031BSP/Library/Device/Nuvoton/M031/Include\\bpwm_reg.h" 1
# 26 "../../M031BSP/Library/Device/Nuvoton/M031/Include\\bpwm_reg.h"
typedef struct
{
# 44 "../../M031BSP/Library/Device/Nuvoton/M031/Include\\bpwm_reg.h"
    volatile uint32_t RCAPDAT;
    volatile uint32_t FCAPDAT;
} BCAPDAT_T;

typedef struct
{
# 1084 "../../M031BSP/Library/Device/Nuvoton/M031/Include\\bpwm_reg.h"
    volatile uint32_t CTL0;
    volatile uint32_t CTL1;
    volatile const uint32_t RESERVE0[2];
    volatile uint32_t CLKSRC;
    volatile uint32_t CLKPSC;
    volatile const uint32_t RESERVE1[2];
    volatile uint32_t CNTEN;
    volatile uint32_t CNTCLR;
    volatile const uint32_t RESERVE2[2];
    volatile uint32_t PERIOD;
    volatile const uint32_t RESERVE3[7];
    volatile uint32_t CMPDAT[6];
    volatile const uint32_t RESERVE4[10];
    volatile const uint32_t CNT;
    volatile const uint32_t RESERVE5[7];
    volatile uint32_t WGCTL0;
    volatile uint32_t WGCTL1;
    volatile uint32_t MSKEN;
    volatile uint32_t MSK;
    volatile const uint32_t RESERVE6[5];
    volatile uint32_t POLCTL;
    volatile uint32_t POEN;
    volatile const uint32_t RESERVE7[1];
    volatile uint32_t INTEN;
    volatile const uint32_t RESERVE8[1];
    volatile uint32_t INTSTS;
    volatile const uint32_t RESERVE9[3];
    volatile uint32_t EADCTS0;
    volatile uint32_t EADCTS1;
    volatile const uint32_t RESERVE10[4];
    volatile uint32_t SSCTL;
    volatile uint32_t SSTRG;
    volatile const uint32_t RESERVE11[2];
    volatile uint32_t STATUS;
    volatile const uint32_t RESERVE12[55];
    volatile uint32_t CAPINEN;
    volatile uint32_t CAPCTL;
    volatile const uint32_t CAPSTS;
    BCAPDAT_T CAPDAT[6];
    volatile const uint32_t RESERVE13[5];
    volatile uint32_t CAPIEN;
    volatile uint32_t CAPIF;
    volatile const uint32_t RESERVE14[43];
    volatile const uint32_t PBUF;
    volatile const uint32_t RESERVE15[5];
    volatile const uint32_t CMPBUF[6];

} BPWM_T;
# 172 "../../M031BSP/Library/Device/Nuvoton/M031/Include\\M031Series.h" 2
# 1 "../../M031BSP/Library/Device/Nuvoton/M031/Include\\qspi_reg.h" 1
# 25 "../../M031BSP/Library/Device/Nuvoton/M031/Include\\qspi_reg.h"
typedef struct
{
# 360 "../../M031BSP/Library/Device/Nuvoton/M031/Include\\qspi_reg.h"
    volatile uint32_t CTL;
    volatile uint32_t CLKDIV;
    volatile uint32_t SSCTL;
    volatile uint32_t PDMACTL;
    volatile uint32_t FIFOCTL;
    volatile uint32_t STATUS;
    volatile const uint32_t RESERVE0[2];
    volatile uint32_t TX;
    volatile const uint32_t RESERVE1[3];
    volatile const uint32_t RX;

} QSPI_T;
# 173 "../../M031BSP/Library/Device/Nuvoton/M031/Include\\M031Series.h" 2
# 1 "../../M031BSP/Library/Device/Nuvoton/M031/Include\\spi_reg.h" 1
# 26 "../../M031BSP/Library/Device/Nuvoton/M031/Include\\spi_reg.h"
typedef struct
{
# 481 "../../M031BSP/Library/Device/Nuvoton/M031/Include\\spi_reg.h"
    volatile uint32_t CTL;
    volatile uint32_t CLKDIV;
    volatile uint32_t SSCTL;
    volatile uint32_t PDMACTL;
    volatile uint32_t FIFOCTL;
    volatile uint32_t STATUS;
    volatile const uint32_t RESERVE0[2];
    volatile uint32_t TX;
    volatile const uint32_t RESERVE1[3];
    volatile const uint32_t RX;
    volatile const uint32_t RESERVE2[11];
    volatile uint32_t I2SCTL;
    volatile uint32_t I2SCLK;
    volatile uint32_t I2SSTS;

} SPI_T;
# 174 "../../M031BSP/Library/Device/Nuvoton/M031/Include\\M031Series.h" 2
# 1 "../../M031BSP/Library/Device/Nuvoton/M031/Include\\sys_reg.h" 1
# 26 "../../M031BSP/Library/Device/Nuvoton/M031/Include\\sys_reg.h"
typedef struct
{
# 579 "../../M031BSP/Library/Device/Nuvoton/M031/Include\\sys_reg.h"
    volatile const uint32_t PDID;
    volatile uint32_t RSTSTS;
    volatile uint32_t IPRST0;
    volatile uint32_t IPRST1;
    volatile uint32_t IPRST2;
    volatile const uint32_t RESERVE0[1];
    volatile uint32_t BODCTL;
    volatile const uint32_t RESERVE1[2];
    volatile uint32_t PORCTL;
    volatile const uint32_t RESERVE2[2];
    volatile uint32_t GPA_MFPL;
    volatile uint32_t GPA_MFPH;
    volatile uint32_t GPB_MFPL;
    volatile uint32_t GPB_MFPH;
    volatile uint32_t GPC_MFPL;
    volatile uint32_t GPC_MFPH;
    volatile uint32_t GPD_MFPL;
    volatile uint32_t GPD_MFPH;
    volatile uint32_t GPE_MFPL;
    volatile uint32_t GPE_MFPH;
    volatile uint32_t GPF_MFPL;
    volatile uint32_t GPF_MFPH;
    volatile uint32_t GPG_MFPL;
    volatile uint32_t GPG_MFPH;
    volatile uint32_t GPH_MFPL;
    volatile uint32_t GPH_MFPH;
    volatile const uint32_t RESERVE3[2];
    volatile uint32_t LPLDOCTL;
    volatile const uint32_t RESERVE4[17];
    volatile uint32_t MODCTL;
    volatile const uint32_t RESERVE5[3];
    volatile uint32_t SRAM_BISTCTL;
    volatile const uint32_t SRAM_BISTSTS;
    volatile uint32_t SRAM_PARITY;
    volatile uint32_t SRAM_INTCTL;
    volatile uint32_t SRAM_STATUS;
    volatile const uint32_t SRAM_ERRADDR;
    volatile const uint32_t RESERVE6[2];
    volatile uint32_t HIRCTRIMCTL;
    volatile uint32_t HIRCTRIMIEN;
    volatile uint32_t HIRCTRIMSTS;
    volatile const uint32_t RESERVE7[1];
    volatile uint32_t REGLCTL;
    volatile const uint32_t RESERVE8[5];
    volatile uint32_t HIRCADJ;
    volatile const uint32_t RESERVE9[1];
    volatile const uint32_t LDOTRIM;
    volatile const uint32_t LVR16TRIM;
    volatile const uint32_t RESERVE10[4];
    volatile const uint32_t LIRCT;
    volatile const uint32_t RESERVE11[5];
    volatile const uint32_t LVR17TRIM;
    volatile const uint32_t LVR20TRIM;
    volatile const uint32_t LVR25TRIM;
    volatile const uint32_t uLDOVITRIM;
    volatile uint32_t LVRITRIMSEL;
    volatile const uint32_t RESERVE12[9];
    volatile uint32_t HIRCTCTL;
    volatile uint32_t ADCCHIP;
    volatile uint32_t HXTTCTL;
    volatile const uint32_t RESERVE13[22];
    volatile uint32_t PORDISAN;
} SYS_T;

typedef struct
{
# 743 "../../M031BSP/Library/Device/Nuvoton/M031/Include\\sys_reg.h"
    volatile uint32_t NMIEN;
    volatile const uint32_t NMISTS;

} NMI_T;
# 175 "../../M031BSP/Library/Device/Nuvoton/M031/Include\\M031Series.h" 2
# 1 "../../M031BSP/Library/Device/Nuvoton/M031/Include\\rtc_reg.h" 1
# 24 "../../M031BSP/Library/Device/Nuvoton/M031/Include\\rtc_reg.h"
typedef struct
{
# 234 "../../M031BSP/Library/Device/Nuvoton/M031/Include\\rtc_reg.h"
    volatile uint32_t INIT;
    volatile const uint32_t RESERVE0[1];
    volatile uint32_t FREQADJ;
    volatile uint32_t TIME;
    volatile uint32_t CAL;
    volatile uint32_t CLKFMT;
    volatile uint32_t WEEKDAY;
    volatile uint32_t TALM;
    volatile uint32_t CALM;
    volatile const uint32_t LEAPYEAR;
    volatile uint32_t INTEN;
    volatile uint32_t INTSTS;
    volatile uint32_t TICK;
    volatile uint32_t TAMSK;
    volatile uint32_t CAMSK;
    volatile const uint32_t RESERVE1[49];
    volatile uint32_t LXTCTL;

} RTC_T;
# 176 "../../M031BSP/Library/Device/Nuvoton/M031/Include\\M031Series.h" 2
# 1 "../../M031BSP/Library/Device/Nuvoton/M031/Include\\timer_reg.h" 1
# 26 "../../M031BSP/Library/Device/Nuvoton/M031/Include\\timer_reg.h"
typedef struct
{
# 218 "../../M031BSP/Library/Device/Nuvoton/M031/Include\\timer_reg.h"
    volatile uint32_t CTL;
    volatile uint32_t CMP;
    volatile uint32_t INTSTS;
    volatile const uint32_t CNT;
    volatile const uint32_t CAP;
    volatile uint32_t EXTCTL;
    volatile uint32_t EINTSTS;
} TIMER_T;
# 177 "../../M031BSP/Library/Device/Nuvoton/M031/Include\\M031Series.h" 2
# 1 "../../M031BSP/Library/Device/Nuvoton/M031/Include\\uart_reg.h" 1
# 26 "../../M031BSP/Library/Device/Nuvoton/M031/Include\\uart_reg.h"
typedef struct
{
# 702 "../../M031BSP/Library/Device/Nuvoton/M031/Include\\uart_reg.h"
    volatile uint32_t DAT;
    volatile uint32_t INTEN;
    volatile uint32_t FIFO;
    volatile uint32_t LINE;
    volatile uint32_t MODEM;
    volatile uint32_t MODEMSTS;
    volatile uint32_t FIFOSTS;
    volatile uint32_t INTSTS;
    volatile uint32_t TOUT;
    volatile uint32_t BAUD;
    volatile uint32_t IRDA;
    volatile uint32_t ALTCTL;
    volatile uint32_t FUNCSEL;
    volatile const uint32_t RESERVE0[2];
    volatile uint32_t BRCOMP;
    volatile uint32_t WKCTL;
    volatile uint32_t WKSTS;
    volatile uint32_t DWKCOMP;

} UART_T;
# 178 "../../M031BSP/Library/Device/Nuvoton/M031/Include\\M031Series.h" 2
# 1 "../../M031BSP/Library/Device/Nuvoton/M031/Include\\ui2c_reg.h" 1
# 26 "../../M031BSP/Library/Device/Nuvoton/M031/Include\\ui2c_reg.h"
typedef struct
{
# 367 "../../M031BSP/Library/Device/Nuvoton/M031/Include\\ui2c_reg.h"
    volatile uint32_t CTL;
    volatile const uint32_t RESERVE0[1];
    volatile uint32_t BRGEN;
    volatile const uint32_t RESERVE1[8];
    volatile uint32_t LINECTL;
    volatile uint32_t TXDAT;
    volatile const uint32_t RXDAT;
    volatile const uint32_t RESERVE2[3];
    volatile uint32_t DEVADDR0;
    volatile uint32_t DEVADDR1;
    volatile uint32_t ADDRMSK0;
    volatile uint32_t ADDRMSK1;
    volatile uint32_t WKCTL;
    volatile uint32_t WKSTS;
    volatile uint32_t PROTCTL;
    volatile uint32_t PROTIEN;
    volatile uint32_t PROTSTS;
    volatile const uint32_t RESERVE3[8];
    volatile uint32_t ADMAT;
    volatile uint32_t TMCTL;

} UI2C_T;
# 179 "../../M031BSP/Library/Device/Nuvoton/M031/Include\\M031Series.h" 2
# 1 "../../M031BSP/Library/Device/Nuvoton/M031/Include\\usbd_reg.h" 1
# 28 "../../M031BSP/Library/Device/Nuvoton/M031/Include\\usbd_reg.h"
typedef struct
{
# 96 "../../M031BSP/Library/Device/Nuvoton/M031/Include\\usbd_reg.h"
    volatile uint32_t BUFSEG;
    volatile uint32_t MXPLD;
    volatile uint32_t CFG;
    volatile uint32_t CFGP;

} USBD_EP_T;

typedef struct
{
# 356 "../../M031BSP/Library/Device/Nuvoton/M031/Include\\usbd_reg.h"
    volatile uint32_t INTEN;
    volatile uint32_t INTSTS;
    volatile uint32_t FADDR;
    volatile const uint32_t EPSTS;
    volatile uint32_t ATTR;
    volatile const uint32_t VBUSDET;
    volatile uint32_t STBUFSEG;

    volatile const uint32_t RESERVE0[1];

    volatile const uint32_t EPSTS0;

    volatile const uint32_t RESERVE1[25];

    volatile const uint32_t LPMATTR;
    volatile const uint32_t FN;
    volatile uint32_t SE0;

    volatile const uint32_t RESERVE2[283];

    USBD_EP_T EP[8];

} USBD_T;
# 180 "../../M031BSP/Library/Device/Nuvoton/M031/Include\\M031Series.h" 2
# 1 "../../M031BSP/Library/Device/Nuvoton/M031/Include\\uspi_reg.h" 1
# 26 "../../M031BSP/Library/Device/Nuvoton/M031/Include\\uspi_reg.h"
typedef struct
{
# 433 "../../M031BSP/Library/Device/Nuvoton/M031/Include\\uspi_reg.h"
    volatile uint32_t CTL;
    volatile uint32_t INTEN;
    volatile uint32_t BRGEN;
    volatile const uint32_t RESERVE0[1];
    volatile uint32_t DATIN0;
    volatile const uint32_t RESERVE1[3];
    volatile uint32_t CTLIN0;
    volatile const uint32_t RESERVE2[1];
    volatile uint32_t CLKIN;
    volatile uint32_t LINECTL;
    volatile uint32_t TXDAT;
    volatile const uint32_t RXDAT;
    volatile uint32_t BUFCTL;
    volatile uint32_t BUFSTS;
    volatile uint32_t PDMACTL;
    volatile const uint32_t RESERVE3[4];
    volatile uint32_t WKCTL;
    volatile uint32_t WKSTS;
    volatile uint32_t PROTCTL;
    volatile uint32_t PROTIEN;
    volatile uint32_t PROTSTS;

} USPI_T;
# 181 "../../M031BSP/Library/Device/Nuvoton/M031/Include\\M031Series.h" 2
# 1 "../../M031BSP/Library/Device/Nuvoton/M031/Include\\uuart_reg.h" 1
# 26 "../../M031BSP/Library/Device/Nuvoton/M031/Include\\uuart_reg.h"
typedef struct
{
# 417 "../../M031BSP/Library/Device/Nuvoton/M031/Include\\uuart_reg.h"
    volatile uint32_t CTL;
    volatile uint32_t INTEN;
    volatile uint32_t BRGEN;
    volatile const uint32_t RESERVE0[1];
    volatile uint32_t DATIN0;
    volatile const uint32_t RESERVE1[3];
    volatile uint32_t CTLIN0;
    volatile const uint32_t RESERVE2[1];
    volatile uint32_t CLKIN;
    volatile uint32_t LINECTL;
    volatile uint32_t TXDAT;
    volatile const uint32_t RXDAT;
    volatile uint32_t BUFCTL;
    volatile uint32_t BUFSTS;
    volatile uint32_t PDMACTL;
    volatile const uint32_t RESERVE3[4];
    volatile uint32_t WKCTL;
    volatile uint32_t WKSTS;
    volatile uint32_t PROTCTL;
    volatile uint32_t PROTIEN;
    volatile uint32_t PROTSTS;

} UUART_T;
# 182 "../../M031BSP/Library/Device/Nuvoton/M031/Include\\M031Series.h" 2
# 1 "../../M031BSP/Library/Device/Nuvoton/M031/Include\\wdt_reg.h" 1
# 26 "../../M031BSP/Library/Device/Nuvoton/M031/Include\\wdt_reg.h"
typedef struct
{
# 118 "../../M031BSP/Library/Device/Nuvoton/M031/Include\\wdt_reg.h"
    volatile uint32_t CTL;
    volatile uint32_t ALTCTL;
    volatile uint32_t RSTCNT;

} WDT_T;
# 183 "../../M031BSP/Library/Device/Nuvoton/M031/Include\\M031Series.h" 2
# 1 "../../M031BSP/Library/Device/Nuvoton/M031/Include\\wwdt_reg.h" 1
# 26 "../../M031BSP/Library/Device/Nuvoton/M031/Include\\wwdt_reg.h"
typedef struct
{
# 101 "../../M031BSP/Library/Device/Nuvoton/M031/Include\\wwdt_reg.h"
    volatile uint32_t RLDCNT;
    volatile uint32_t CTL;
    volatile uint32_t STATUS;
    volatile const uint32_t CNT;

} WWDT_T;
# 184 "../../M031BSP/Library/Device/Nuvoton/M031/Include\\M031Series.h" 2
# 355 "../../M031BSP/Library/Device/Nuvoton/M031/Include\\M031Series.h"
typedef volatile unsigned char vu8;
typedef volatile unsigned long vu32;
typedef volatile unsigned short vu16;
# 563 "../../M031BSP/Library/Device/Nuvoton/M031/Include\\M031Series.h"
# 1 "../../M031BSP/Library/StdDriver/inc\\sys.h" 1
# 1343 "../../M031BSP/Library/StdDriver/inc\\sys.h"
static inline void SYS_UnlockReg(void)
{
    do {
        ((SYS_T *) ((( uint32_t)0x40000000) + 0x00000))->REGLCTL = 0x59;
        ((SYS_T *) ((( uint32_t)0x40000000) + 0x00000))->REGLCTL = 0x16;
        ((SYS_T *) ((( uint32_t)0x40000000) + 0x00000))->REGLCTL = 0x88;
    } while (((SYS_T *) ((( uint32_t)0x40000000) + 0x00000))->REGLCTL == 0);
}
# 1360 "../../M031BSP/Library/StdDriver/inc\\sys.h"
static inline void SYS_LockReg(void)
{
    ((SYS_T *) ((( uint32_t)0x40000000) + 0x00000))->REGLCTL = 0;
}


void SYS_ClearResetSrc(uint32_t u32Src);
uint32_t SYS_GetBODStatus(void);
uint32_t SYS_GetResetSrc(void);
uint32_t SYS_IsRegLocked(void);
uint32_t SYS_ReadPDID(void);
void SYS_ResetChip(void);
void SYS_ResetCPU(void);
void SYS_ResetModule(uint32_t u32ModuleIndex);
void SYS_EnableBOD(int32_t i32Mode, uint32_t u32BODLevel);
void SYS_DisableBOD(void);
# 564 "../../M031BSP/Library/Device/Nuvoton/M031/Include\\M031Series.h" 2
# 1 "../../M031BSP/Library/StdDriver/inc\\clk.h" 1
# 444 "../../M031BSP/Library/StdDriver/inc\\clk.h"
extern int32_t g_CLK_i32ErrCode;
# 461 "../../M031BSP/Library/StdDriver/inc\\clk.h"
static inline uint32_t CLK_GetPLLClockFreq(void)
{
    uint32_t u32PllFreq;
    uint32_t u32FIN, u32NF, u32NR, u32NO;
    uint8_t au8NoTbl[4] = {1, 2, 2, 4};
    uint32_t u32Reg;

    u32PllFreq = 0;
    u32Reg = ((CLK_T *) ((( uint32_t)0x40000000) + 0x00200))->PLLCTL;

    if ((u32Reg & ((0x1ul << (16)) | (0x1ul << (18)))) == 0)
    {

        if (u32Reg & (0x1ul << (19)))
        {
            u32FIN = ((48000000UL) >> 2);
        } else
            u32FIN = (32000000UL);

        if (u32Reg & (0x1ul << (17)))
        {

            u32PllFreq = u32FIN;
        }
        else
        {

            u32NO = au8NoTbl[((u32Reg & (0x3ul << (14))) >> (14))];
            u32NF = ((u32Reg & (0x1fful << (0))) >> (0)) + 2;
            u32NR = ((u32Reg & (0x1ful << (9))) >> (9)) + 2;

            u32PllFreq = (((u32FIN >> 2) * u32NF) / (u32NR * u32NO) << 2);
        }
    }

    return u32PllFreq;
}
# 511 "../../M031BSP/Library/StdDriver/inc\\clk.h"
static inline int32_t CLK_SysTickDelay(uint32_t us)
{

    uint32_t u32TimeOutCnt = SystemCoreClock * 2;

    ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->LOAD = us * CyclesPerUs;
    ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->VAL = (0x00);
    ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->CTRL = (1UL << 2U) | (1UL );


    while ((((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->CTRL & (1UL << 16U)) == 0)
    {
        if(--u32TimeOutCnt == 0)
        {
            break;
        }
    }


    ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->CTRL = 0;

    if(u32TimeOutCnt == 0)
        return (-1);
    else
        return 0;
}
# 545 "../../M031BSP/Library/StdDriver/inc\\clk.h"
static inline uint32_t CLK_GetUARTFreq(void)
{
    uint32_t u32Freqout, u32AHBDivider, u32ClkSel, PCLK0Div;

    u32Freqout = 0;
    u32ClkSel = ((CLK_T *) ((( uint32_t)0x40000000) + 0x00200))->CLKSEL1 & (0x7ul << (24)) ;

    if (u32ClkSel == (0x0UL<<(24)))
    {
        u32Freqout = (32000000UL);
    }
    else if(u32ClkSel == (0x1UL<<(24)))
    {
        u32Freqout = CLK_GetPLLClockFreq();
    }
    else if(u32ClkSel == (0x2UL<<(24)))
    {
        u32Freqout = (32768UL);
    }
    else if(u32ClkSel == (0x3UL<<(24)))
    {
        u32Freqout = (48000000UL);
    }
    else if(u32ClkSel == (0x4UL<<(24)))
    {
        PCLK0Div = (((CLK_T *) ((( uint32_t)0x40000000) + 0x00200))->PCLKDIV & (0x7ul << (0))) >> (0);
        u32Freqout = (SystemCoreClock >> PCLK0Div);
    }
    else if(u32ClkSel == (0x5UL<<(24)))
    {
        u32Freqout = (38400UL);
    }

    u32AHBDivider = (((CLK_T *) ((( uint32_t)0x40000000) + 0x00200))->CLKDIV0 & (0xful << (8))) + 1 ;

    return (u32Freqout/u32AHBDivider);
}


uint32_t CLK_WaitClockReady(uint32_t);
void CLK_DisableCKO(void);
void CLK_EnableCKO(uint32_t u32ClkSrc, uint32_t u32ClkDiv, uint32_t u32ClkDivBy1En);
uint32_t CLK_GetHCLKFreq(void);
uint32_t CLK_GetCPUFreq(void);
uint32_t CLK_GetLXTFreq(void);
uint32_t CLK_GetHXTFreq(void);
void CLK_SetHCLK(uint32_t u32ClkSrc, uint32_t u32ClkDiv);
uint32_t CLK_SetCoreClock(uint32_t u32Hclk);
uint32_t CLK_GetPCLK0Freq(void);
uint32_t CLK_GetPCLK1Freq(void);
void CLK_EnableXtalRC(uint32_t u32ClkMask);
void CLK_DisableXtalRC(uint32_t u32ClkMask);
void CLK_DisableModuleClock(uint32_t u32ModuleIdx);
void CLK_EnableModuleClock(uint32_t u32ModuleIdx);
void CLK_SetModuleClock(uint32_t u32ModuleIdx, uint32_t u32ClkSrc, uint32_t u32ClkDiv);
void CLK_DisablePLL(void);
uint32_t CLK_EnablePLL(uint32_t u32PllClkSrc, uint32_t u32PllFreq);
void CLK_SetSysTickClockSrc(uint32_t u32ClkSrc);
void CLK_DisableSysTick(void);
void CLK_EnableSysTick(uint32_t u32ClkSrc, uint32_t u32Count);
void CLK_PowerDown(void);
void CLK_Idle(void);
# 565 "../../M031BSP/Library/Device/Nuvoton/M031/Include\\M031Series.h" 2
# 1 "../../M031BSP/Library/StdDriver/inc\\acmp.h" 1
# 18 "../../M031BSP/Library/StdDriver/inc\\acmp.h"
# 1 "../../M031BSP/Library/Device/Nuvoton/M031/Include\\M031Series.h" 1
# 19 "../../M031BSP/Library/StdDriver/inc\\acmp.h" 2
# 383 "../../M031BSP/Library/StdDriver/inc\\acmp.h"
void ACMP_Open(ACMP_T *, uint32_t u32ChNum, uint32_t u32NegSrc, uint32_t u32HysteresisEn);
void ACMP_Close(ACMP_T *, uint32_t u32ChNum);
# 566 "../../M031BSP/Library/Device/Nuvoton/M031/Include\\M031Series.h" 2
# 1 "../../M031BSP/Library/StdDriver/inc\\adc.h" 1
# 109 "../../M031BSP/Library/StdDriver/inc\\adc.h"
extern int32_t g_ADC_i32ErrCode;
# 395 "../../M031BSP/Library/StdDriver/inc\\adc.h"
void ADC_Open(ADC_T *adc,
              uint32_t u32InputMode,
              uint32_t u32OpMode,
              uint32_t u32ChMask);
void ADC_Close(ADC_T *adc);
void ADC_EnableHWTrigger(ADC_T *adc,
                         uint32_t u32Source,
                         uint32_t u32Param);
void ADC_DisableHWTrigger(ADC_T *adc);
void ADC_EnableInt(ADC_T *adc, uint32_t u32Mask);
void ADC_DisableInt(ADC_T *adc, uint32_t u32Mask);
void ADC_SetExtendSampleTime(ADC_T *adc,
                             uint32_t u32ModuleNum,
                             uint32_t u32ExtendSampleTime);
# 567 "../../M031BSP/Library/Device/Nuvoton/M031/Include\\M031Series.h" 2
# 1 "../../M031BSP/Library/StdDriver/inc\\crc.h" 1
# 102 "../../M031BSP/Library/StdDriver/inc\\crc.h"
void CRC_Open(uint32_t u32Mode, uint32_t u32Attribute, uint32_t u32Seed, uint32_t u32DataLen);
uint32_t CRC_GetChecksum(void);
# 568 "../../M031BSP/Library/Device/Nuvoton/M031/Include\\M031Series.h" 2
# 1 "../../M031BSP/Library/StdDriver/inc\\ebi.h" 1
# 244 "../../M031BSP/Library/StdDriver/inc\\ebi.h"
void EBI_Open(uint32_t u32Bank, uint32_t u32DataWidth, uint32_t u32TimingClass, uint32_t u32BusMode, uint32_t u32CSActiveLevel);
void EBI_Close(uint32_t u32Bank);
void EBI_SetBusTiming(uint32_t u32Bank, uint32_t u32TimingConfig, uint32_t u32MclkDiv);
# 569 "../../M031BSP/Library/Device/Nuvoton/M031/Include\\M031Series.h" 2
# 1 "../../M031BSP/Library/StdDriver/inc\\fmc.h" 1
# 130 "../../M031BSP/Library/StdDriver/inc\\fmc.h"
extern int32_t g_FMC_i32ErrCode;







static inline uint32_t FMC_ReadCID(void);
static inline uint32_t FMC_ReadPID(void);
static inline uint32_t FMC_ReadUID(uint8_t u8Index);
static inline uint32_t FMC_ReadUCID(uint32_t u32Index);
static inline int32_t FMC_SetVectorPageAddr(uint32_t u32PageAddr);
static inline uint32_t FMC_GetVECMAP(void);
# 153 "../../M031BSP/Library/StdDriver/inc\\fmc.h"
static inline uint32_t FMC_GetVECMAP(void)
{
    return (((FMC_T *) ((( uint32_t)0x40000000) + 0x0C000))->ISPSTS & (0x1ffffful << (9)));
}
# 167 "../../M031BSP/Library/StdDriver/inc\\fmc.h"
static inline uint32_t FMC_ReadCID(void)
{
    uint32_t volatile tout = ((SystemCoreClock/10)/4);

    g_FMC_i32ErrCode = 0;

    ((FMC_T *) ((( uint32_t)0x40000000) + 0x0C000))->ISPCMD = 0x0BUL;
    ((FMC_T *) ((( uint32_t)0x40000000) + 0x0C000))->ISPADDR = 0x0u;
    ((FMC_T *) ((( uint32_t)0x40000000) + 0x0C000))->ISPTRG = (0x1ul << (0));



    while (tout-- > 0)
    {
        if (!(((FMC_T *) ((( uint32_t)0x40000000) + 0x0C000))->ISPTRG & (0x1ul << (0))))
        {
            if (((FMC_T *) ((( uint32_t)0x40000000) + 0x0C000))->ISPDAT != 0xDA)
                g_FMC_i32ErrCode = -1;
            return ((FMC_T *) ((( uint32_t)0x40000000) + 0x0C000))->ISPDAT;
        }
    }
    g_FMC_i32ErrCode = -1;
    return 0xFFFFFFFF;

}
# 202 "../../M031BSP/Library/StdDriver/inc\\fmc.h"
static inline uint32_t FMC_ReadPID(void)
{
    uint32_t volatile tout = ((SystemCoreClock/10)/4);

    g_FMC_i32ErrCode = 0;

    ((FMC_T *) ((( uint32_t)0x40000000) + 0x0C000))->ISPCMD = 0x0CUL;
    ((FMC_T *) ((( uint32_t)0x40000000) + 0x0C000))->ISPADDR = 0x04u;
    ((FMC_T *) ((( uint32_t)0x40000000) + 0x0C000))->ISPTRG = (0x1ul << (0));



    while (tout-- > 0)
    {
        if (!(((FMC_T *) ((( uint32_t)0x40000000) + 0x0C000))->ISPTRG & (0x1ul << (0))))
            return ((FMC_T *) ((( uint32_t)0x40000000) + 0x0C000))->ISPDAT;
    }
    g_FMC_i32ErrCode = -1;
    return 0xFFFFFFFF;
}
# 232 "../../M031BSP/Library/StdDriver/inc\\fmc.h"
static inline uint32_t FMC_ReadUID(uint8_t u8Index)
{
    uint32_t volatile tout = ((SystemCoreClock/10)/4);

    g_FMC_i32ErrCode = 0;

    ((FMC_T *) ((( uint32_t)0x40000000) + 0x0C000))->ISPCMD = 0x04UL;
    ((FMC_T *) ((( uint32_t)0x40000000) + 0x0C000))->ISPADDR = ((uint32_t)u8Index << 2u);
    ((FMC_T *) ((( uint32_t)0x40000000) + 0x0C000))->ISPDAT = 0u;
    ((FMC_T *) ((( uint32_t)0x40000000) + 0x0C000))->ISPTRG = 0x1u;



    while (tout-- > 0)
    {
        if (!(((FMC_T *) ((( uint32_t)0x40000000) + 0x0C000))->ISPTRG & (0x1ul << (0))))
            return ((FMC_T *) ((( uint32_t)0x40000000) + 0x0C000))->ISPDAT;
    }
    g_FMC_i32ErrCode = -1;
    return 0xFFFFFFFF;
}
# 263 "../../M031BSP/Library/StdDriver/inc\\fmc.h"
static inline uint32_t FMC_ReadUCID(uint32_t u32Index)
{
    uint32_t volatile tout = ((SystemCoreClock/10)/4);

    g_FMC_i32ErrCode = 0;

    ((FMC_T *) ((( uint32_t)0x40000000) + 0x0C000))->ISPCMD = 0x04UL;
    ((FMC_T *) ((( uint32_t)0x40000000) + 0x0C000))->ISPADDR = (0x04u * u32Index) + 0x10u;
    ((FMC_T *) ((( uint32_t)0x40000000) + 0x0C000))->ISPTRG = (0x1ul << (0));



    while (tout-- > 0)
    {
        if (!(((FMC_T *) ((( uint32_t)0x40000000) + 0x0C000))->ISPTRG & (0x1ul << (0))))
            return ((FMC_T *) ((( uint32_t)0x40000000) + 0x0C000))->ISPDAT;
    }
    g_FMC_i32ErrCode = -1;
    return 0xFFFFFFFF;
}
# 298 "../../M031BSP/Library/StdDriver/inc\\fmc.h"
static inline int32_t FMC_SetVectorPageAddr(uint32_t u32PageAddr)
{
    uint32_t volatile tout = ((SystemCoreClock/10)/4);

    g_FMC_i32ErrCode = 0;

    ((FMC_T *) ((( uint32_t)0x40000000) + 0x0C000))->ISPCMD = 0x2EUL;
    ((FMC_T *) ((( uint32_t)0x40000000) + 0x0C000))->ISPADDR = u32PageAddr;
    ((FMC_T *) ((( uint32_t)0x40000000) + 0x0C000))->ISPTRG = 0x1u;



    while (tout-- > 0)
    {
        if (!((FMC_T *) ((( uint32_t)0x40000000) + 0x0C000))->ISPTRG)
            return 0;
    }
    g_FMC_i32ErrCode = -1;
    return -1;
}






extern void FMC_Close(void);
extern int32_t FMC_Erase(uint32_t u32PageAddr);
extern int32_t FMC_Erase_SPROM(void);
extern int32_t FMC_Erase_Bank(uint32_t u32BankAddr);
extern int32_t FMC_GetBootSource(void);
extern void FMC_Open(void);
extern uint32_t FMC_Read(uint32_t u32Addr);
extern uint32_t FMC_ReadDataFlashBaseAddr(void);
extern void FMC_SetBootSource(int32_t i32BootSrc);
extern int32_t FMC_Write(uint32_t u32Addr, uint32_t u32Data);
extern int32_t FMC_Write8Bytes(uint32_t u32addr, uint32_t u32data0, uint32_t u32data1);
extern int32_t FMC_ReadConfig(uint32_t u32Config[], uint32_t u32Count);
extern int32_t FMC_WriteConfig(uint32_t u32Config[], uint32_t u32Count);
extern uint32_t FMC_GetChkSum(uint32_t u32addr, uint32_t u32count);
extern uint32_t FMC_CheckAllOne(uint32_t u32addr, uint32_t u32count);
extern int32_t FMC_WriteMultiple(uint32_t u32Addr, uint32_t pu32Buf[], uint32_t u32Len);
extern int32_t FMC_RemapBank(uint32_t u32BankIdx);
# 570 "../../M031BSP/Library/Device/Nuvoton/M031/Include\\M031Series.h" 2
# 1 "../../M031BSP/Library/StdDriver/inc\\gpio.h" 1
# 15 "../../M031BSP/Library/StdDriver/inc\\gpio.h"
# 1 "../../M031BSP/Library/Device/Nuvoton/M031/Include\\M031Series.h" 1
# 16 "../../M031BSP/Library/StdDriver/inc\\gpio.h" 2
# 464 "../../M031BSP/Library/StdDriver/inc\\gpio.h"
void GPIO_SetMode(GPIO_T *port, uint32_t u32PinMask, uint32_t u32Mode);
void GPIO_EnableInt(GPIO_T *port, uint32_t u32Pin, uint32_t u32IntAttribs);
void GPIO_DisableInt(GPIO_T *port, uint32_t u32Pin);
# 571 "../../M031BSP/Library/Device/Nuvoton/M031/Include\\M031Series.h" 2
# 1 "../../M031BSP/Library/StdDriver/inc\\i2c.h" 1
# 61 "../../M031BSP/Library/StdDriver/inc\\i2c.h"
extern int32_t g_I2C_i32ErrCode;
# 471 "../../M031BSP/Library/StdDriver/inc\\i2c.h"
static inline void I2C_STOP(I2C_T *i2c);
# 482 "../../M031BSP/Library/StdDriver/inc\\i2c.h"
static inline void I2C_STOP(I2C_T *i2c)
{
    uint32_t u32TimeOutCount = SystemCoreClock;

    (i2c)->CTL0 |= ((0x1ul << (3)) | (0x1ul << (4)));
    while(i2c->CTL0 & (0x1ul << (4)))
    {
        u32TimeOutCount--;
        if(u32TimeOutCount == 0) break;
    }
}

void I2C_ClearTimeoutFlag(I2C_T *i2c);
void I2C_Close(I2C_T *i2c);
void I2C_Trigger(I2C_T *i2c, uint8_t u8Start, uint8_t u8Stop, uint8_t u8Si, uint8_t u8Ack);
void I2C_DisableInt(I2C_T *i2c);
void I2C_EnableInt(I2C_T *i2c);
uint32_t I2C_GetBusClockFreq(I2C_T *i2c);
uint32_t I2C_GetIntFlag(I2C_T *i2c);
uint32_t I2C_GetStatus(I2C_T *i2c);
uint32_t I2C_Open(I2C_T *i2c, uint32_t u32BusClock);
uint8_t I2C_GetData(I2C_T *i2c);
void I2C_SetSlaveAddr(I2C_T *i2c, uint8_t u8SlaveNo, uint8_t u8SlaveAddr, uint8_t u8GCMode);
void I2C_SetSlaveAddrMask(I2C_T *i2c, uint8_t u8SlaveNo, uint8_t u8SlaveAddrMask);
uint32_t I2C_SetBusClockFreq(I2C_T *i2c, uint32_t u32BusClock);
void I2C_EnableTimeout(I2C_T *i2c, uint8_t u8LongTimeout);
void I2C_DisableTimeout(I2C_T *i2c);
void I2C_EnableWakeup(I2C_T *i2c);
void I2C_DisableWakeup(I2C_T *i2c);
void I2C_SetData(I2C_T *i2c, uint8_t u8Data);
uint8_t I2C_WriteByte(I2C_T *i2c, uint8_t u8SlaveAddr, uint8_t data);
uint32_t I2C_WriteMultiBytes(I2C_T *i2c, uint8_t u8SlaveAddr, uint8_t data[], uint32_t u32wLen);
uint8_t I2C_WriteByteOneReg(I2C_T *i2c, uint8_t u8SlaveAddr, uint8_t u8DataAddr, uint8_t data);
uint32_t I2C_WriteMultiBytesOneReg(I2C_T *i2c, uint8_t u8SlaveAddr, uint8_t u8DataAddr, uint8_t data[], uint32_t u32wLen);
uint8_t I2C_WriteByteTwoRegs(I2C_T *i2c, uint8_t u8SlaveAddr, uint16_t u16DataAddr, uint8_t data);
uint32_t I2C_WriteMultiBytesTwoRegs(I2C_T *i2c, uint8_t u8SlaveAddr, uint16_t u16DataAddr, uint8_t data[], uint32_t u32wLen);
uint8_t I2C_ReadByte(I2C_T *i2c, uint8_t u8SlaveAddr);
uint32_t I2C_ReadMultiBytes(I2C_T *i2c, uint8_t u8SlaveAddr, uint8_t rdata[], uint32_t u32rLen);
uint8_t I2C_ReadByteOneReg(I2C_T *i2c, uint8_t u8SlaveAddr, uint8_t u8DataAddr);
uint32_t I2C_ReadMultiBytesOneReg(I2C_T *i2c, uint8_t u8SlaveAddr, uint8_t u8DataAddr, uint8_t rdata[], uint32_t u32rLen);
uint8_t I2C_ReadByteTwoRegs(I2C_T *i2c, uint8_t u8SlaveAddr, uint16_t u16DataAddr);
uint32_t I2C_ReadMultiBytesTwoRegs(I2C_T *i2c, uint8_t u8SlaveAddr, uint16_t u16DataAddr, uint8_t rdata[], uint32_t u32rLen);
uint32_t I2C_SMBusGetStatus(I2C_T *i2c);
void I2C_SMBusClearInterruptFlag(I2C_T *i2c, uint8_t u8SMBusIntFlag);
void I2C_SMBusSetPacketByteCount(I2C_T *i2c, uint32_t u32PktSize);
void I2C_SMBusOpen(I2C_T *i2c, uint8_t u8HostDevice);
void I2C_SMBusClose(I2C_T *i2c);
void I2C_SMBusPECTxEnable(I2C_T *i2c, uint8_t u8PECTxEn);
uint8_t I2C_SMBusGetPECValue(I2C_T *i2c);
void I2C_SMBusIdleTimeout(I2C_T *i2c, uint32_t us, uint32_t u32Hclk);
void I2C_SMBusTimeout(I2C_T *i2c, uint32_t ms, uint32_t u32Pclk);
void I2C_SMBusClockLoTimeout(I2C_T *i2c, uint32_t ms, uint32_t u32Pclk);
# 572 "../../M031BSP/Library/Device/Nuvoton/M031/Include\\M031Series.h" 2
# 1 "../../M031BSP/Library/StdDriver/inc\\pdma.h" 1
# 332 "../../M031BSP/Library/StdDriver/inc\\pdma.h"
void PDMA_Open(PDMA_T *pdma, uint32_t u32Mask);
void PDMA_Close(PDMA_T *pdma);
void PDMA_SetTransferCnt(PDMA_T *pdma, uint32_t u32Ch, uint32_t u32Width, uint32_t u32TransCount);
void PDMA_SetTransferAddr(PDMA_T *pdma, uint32_t u32Ch, uint32_t u32SrcAddr, uint32_t u32SrcCtrl, uint32_t u32DstAddr, uint32_t u32DstCtrl);
void PDMA_SetTransferMode(PDMA_T *pdma, uint32_t u32Ch, uint32_t u32Peripheral, uint32_t u32ScatterEn, uint32_t u32DescAddr);
void PDMA_SetBurstType(PDMA_T *pdma, uint32_t u32Ch, uint32_t u32BurstType, uint32_t u32BurstSize);
void PDMA_EnableTimeout(PDMA_T *pdma, uint32_t u32Mask);
void PDMA_DisableTimeout(PDMA_T *pdma, uint32_t u32Mask);
void PDMA_SetTimeOut(PDMA_T *pdma, uint32_t u32Ch, uint32_t u32OnOff, uint32_t u32TimeOutCnt);
void PDMA_Trigger(PDMA_T *pdma, uint32_t u32Ch);
void PDMA_EnableInt(PDMA_T *pdma, uint32_t u32Ch, uint32_t u32Mask);
void PDMA_DisableInt(PDMA_T *pdma, uint32_t u32Ch, uint32_t u32Mask);
# 573 "../../M031BSP/Library/Device/Nuvoton/M031/Include\\M031Series.h" 2
# 1 "../../M031BSP/Library/StdDriver/inc\\pwm.h" 1
# 453 "../../M031BSP/Library/StdDriver/inc\\pwm.h"
uint32_t PWM_ConfigCaptureChannel(PWM_T *pwm, uint32_t u32ChannelNum, uint32_t u32UnitTimeNsec, uint32_t u32CaptureEdge);
uint32_t PWM_ConfigOutputChannel(PWM_T *pwm, uint32_t u32ChannelNum, uint32_t u32Frequency, uint32_t u32DutyCycle);
void PWM_Start(PWM_T *pwm, uint32_t u32ChannelMask);
void PWM_Stop(PWM_T *pwm, uint32_t u32ChannelMask);
void PWM_ForceStop(PWM_T *pwm, uint32_t u32ChannelMask);
void PWM_EnableADCTrigger(PWM_T *pwm, uint32_t u32ChannelNum, uint32_t u32Condition);
void PWM_DisableADCTrigger(PWM_T *pwm, uint32_t u32ChannelNum);
void PWM_ClearADCTriggerFlag(PWM_T *pwm, uint32_t u32ChannelNum, uint32_t u32Condition);
uint32_t PWM_GetADCTriggerFlag(PWM_T *pwm, uint32_t u32ChannelNum);
void PWM_EnableFaultBrake(PWM_T *pwm, uint32_t u32ChannelMask, uint32_t u32LevelMask, uint32_t u32BrakeSource);
void PWM_EnableCapture(PWM_T *pwm, uint32_t u32ChannelMask);
void PWM_DisableCapture(PWM_T *pwm, uint32_t u32ChannelMask);
void PWM_EnableOutput(PWM_T *pwm, uint32_t u32ChannelMask);
void PWM_DisableOutput(PWM_T *pwm, uint32_t u32ChannelMask);
void PWM_EnablePDMA(PWM_T *pwm, uint32_t u32ChannelNum, uint32_t u32RisingFirst, uint32_t u32Mode);
void PWM_DisablePDMA(PWM_T *pwm, uint32_t u32ChannelNum);
void PWM_EnableDeadZone(PWM_T *pwm, uint32_t u32ChannelNum, uint32_t u32Duration);
void PWM_DisableDeadZone(PWM_T *pwm, uint32_t u32ChannelNum);
void PWM_EnableCaptureInt(PWM_T *pwm, uint32_t u32ChannelNum, uint32_t u32Edge);
void PWM_DisableCaptureInt(PWM_T *pwm, uint32_t u32ChannelNum, uint32_t u32Edge);
void PWM_ClearCaptureIntFlag(PWM_T *pwm, uint32_t u32ChannelNum, uint32_t u32Edge);
uint32_t PWM_GetCaptureIntFlag(PWM_T *pwm, uint32_t u32ChannelNum);
void PWM_EnableDutyInt(PWM_T *pwm, uint32_t u32ChannelNum, uint32_t u32IntDutyType);
void PWM_DisableDutyInt(PWM_T *pwm, uint32_t u32ChannelNum);
void PWM_ClearDutyIntFlag(PWM_T *pwm, uint32_t u32ChannelNum);
uint32_t PWM_GetDutyIntFlag(PWM_T *pwm, uint32_t u32ChannelNum);
void PWM_EnableFaultBrakeInt(PWM_T *pwm, uint32_t u32BrakeSource);
void PWM_DisableFaultBrakeInt(PWM_T *pwm, uint32_t u32BrakeSource);
void PWM_ClearFaultBrakeIntFlag(PWM_T *pwm, uint32_t u32BrakeSource);
uint32_t PWM_GetFaultBrakeIntFlag(PWM_T *pwm, uint32_t u32BrakeSource);
void PWM_EnablePeriodInt(PWM_T *pwm, uint32_t u32ChannelNum, uint32_t u32IntPeriodType);
void PWM_DisablePeriodInt(PWM_T *pwm, uint32_t u32ChannelNum);
void PWM_ClearPeriodIntFlag(PWM_T *pwm, uint32_t u32ChannelNum);
uint32_t PWM_GetPeriodIntFlag(PWM_T *pwm, uint32_t u32ChannelNum);
void PWM_EnableZeroInt(PWM_T *pwm, uint32_t u32ChannelNum);
void PWM_DisableZeroInt(PWM_T *pwm, uint32_t u32ChannelNum);
void PWM_ClearZeroIntFlag(PWM_T *pwm, uint32_t u32ChannelNum);
uint32_t PWM_GetZeroIntFlag(PWM_T *pwm, uint32_t u32ChannelNum);
void PWM_EnableLoadMode(PWM_T *pwm, uint32_t u32ChannelNum, uint32_t u32LoadMode);
void PWM_DisableLoadMode(PWM_T *pwm, uint32_t u32ChannelNum, uint32_t u32LoadMode);
void PWM_SetClockSource(PWM_T *pwm, uint32_t u32ChannelNum, uint32_t u32ClkSrcSel);
void PWM_EnableBrakeNoiseFilter(PWM_T *pwm, uint32_t u32BrakePinNum, uint32_t u32ClkCnt, uint32_t u32ClkDivSel);
void PWM_DisableBrakeNoiseFilter(PWM_T *pwm, uint32_t u32BrakePinNum);
void PWM_EnableBrakePinInverse(PWM_T *pwm, uint32_t u32BrakePinNum);
void PWM_DisableBrakePinInverse(PWM_T *pwm, uint32_t u32BrakePinNum);
void PWM_SetBrakePinSource(PWM_T *pwm, uint32_t u32BrakePinNum, uint32_t u32SelAnotherModule);
uint32_t PWM_GetWrapAroundFlag(PWM_T *pwm, uint32_t u32ChannelNum);
void PWM_ClearWrapAroundFlag(PWM_T *pwm, uint32_t u32ChannelNum);
# 574 "../../M031BSP/Library/Device/Nuvoton/M031/Include\\M031Series.h" 2
# 1 "../../M031BSP/Library/StdDriver/inc\\bpwm.h" 1
# 331 "../../M031BSP/Library/StdDriver/inc\\bpwm.h"
uint32_t BPWM_ConfigCaptureChannel(BPWM_T *bpwm, uint32_t u32ChannelNum, uint32_t u32UnitTimeNsec, uint32_t u32CaptureEdge);
uint32_t BPWM_ConfigOutputChannel(BPWM_T *bpwm, uint32_t u32ChannelNum, uint32_t u32Frequency, uint32_t u32DutyCycle);
void BPWM_Start(BPWM_T *bpwm, uint32_t u32ChannelMask);
void BPWM_Stop(BPWM_T *bpwm, uint32_t u32ChannelMask);
void BPWM_ForceStop(BPWM_T *bpwm, uint32_t u32ChannelMask);
void BPWM_EnableADCTrigger(BPWM_T *bpwm, uint32_t u32ChannelNum, uint32_t u32Condition);
void BPWM_DisableADCTrigger(BPWM_T *bpwm, uint32_t u32ChannelNum);
void BPWM_ClearADCTriggerFlag(BPWM_T *bpwm, uint32_t u32ChannelNum, uint32_t u32Condition);
uint32_t BPWM_GetADCTriggerFlag(BPWM_T *bpwm, uint32_t u32ChannelNum);
void BPWM_EnableCapture(BPWM_T *bpwm, uint32_t u32ChannelMask);
void BPWM_DisableCapture(BPWM_T *bpwm, uint32_t u32ChannelMask);
void BPWM_EnableOutput(BPWM_T *bpwm, uint32_t u32ChannelMask);
void BPWM_DisableOutput(BPWM_T *bpwm, uint32_t u32ChannelMask);
void BPWM_EnableCaptureInt(BPWM_T *bpwm, uint32_t u32ChannelNum, uint32_t u32Edge);
void BPWM_DisableCaptureInt(BPWM_T *bpwm, uint32_t u32ChannelNum, uint32_t u32Edge);
void BPWM_ClearCaptureIntFlag(BPWM_T *bpwm, uint32_t u32ChannelNum, uint32_t u32Edge);
uint32_t BPWM_GetCaptureIntFlag(BPWM_T *bpwm, uint32_t u32ChannelNum);
void BPWM_EnableDutyInt(BPWM_T *bpwm, uint32_t u32ChannelNum, uint32_t u32IntDutyType);
void BPWM_DisableDutyInt(BPWM_T *bpwm, uint32_t u32ChannelNum);
void BPWM_ClearDutyIntFlag(BPWM_T *bpwm, uint32_t u32ChannelNum);
uint32_t BPWM_GetDutyIntFlag(BPWM_T *bpwm, uint32_t u32ChannelNum);
void BPWM_EnablePeriodInt(BPWM_T *bpwm, uint32_t u32ChannelNum, uint32_t u32IntPeriodType);
void BPWM_DisablePeriodInt(BPWM_T *bpwm, uint32_t u32ChannelNum);
void BPWM_ClearPeriodIntFlag(BPWM_T *bpwm, uint32_t u32ChannelNum);
uint32_t BPWM_GetPeriodIntFlag(BPWM_T *bpwm, uint32_t u32ChannelNum);
void BPWM_EnableZeroInt(BPWM_T *bpwm, uint32_t u32ChannelNum);
void BPWM_DisableZeroInt(BPWM_T *bpwm, uint32_t u32ChannelNum);
void BPWM_ClearZeroIntFlag(BPWM_T *bpwm, uint32_t u32ChannelNum);
uint32_t BPWM_GetZeroIntFlag(BPWM_T *bpwm, uint32_t u32ChannelNum);
void BPWM_EnableLoadMode(BPWM_T *bpwm, uint32_t u32ChannelNum, uint32_t u32LoadMode);
void BPWM_DisableLoadMode(BPWM_T *bpwm, uint32_t u32ChannelNum, uint32_t u32LoadMode);
void BPWM_SetClockSource(BPWM_T *bpwm, uint32_t u32ChannelNum, uint32_t u32ClkSrcSel);
uint32_t BPWM_GetWrapAroundFlag(BPWM_T *bpwm, uint32_t u32ChannelNum);
void BPWM_ClearWrapAroundFlag(BPWM_T *bpwm, uint32_t u32ChannelNum);
# 575 "../../M031BSP/Library/Device/Nuvoton/M031/Include\\M031Series.h" 2
# 1 "../../M031BSP/Library/StdDriver/inc\\qspi.h" 1
# 384 "../../M031BSP/Library/StdDriver/inc\\qspi.h"
uint32_t QSPI_Open(QSPI_T *qspi, uint32_t u32MasterSlave, uint32_t u32QSPIMode, uint32_t u32DataWidth, uint32_t u32BusClock);
void QSPI_Close(QSPI_T *qspi);
void QSPI_ClearRxFIFO(QSPI_T *qspi);
void QSPI_ClearTxFIFO(QSPI_T *qspi);
void QSPI_DisableAutoSS(QSPI_T *qspi);
void QSPI_EnableAutoSS(QSPI_T *qspi, uint32_t u32SSPinMask, uint32_t u32ActiveLevel);
uint32_t QSPI_SetBusClock(QSPI_T *qspi, uint32_t u32BusClock);
void QSPI_SetFIFO(QSPI_T *qspi, uint32_t u32TxThreshold, uint32_t u32RxThreshold);
uint32_t QSPI_GetBusClock(QSPI_T *qspi);
void QSPI_EnableInt(QSPI_T *qspi, uint32_t u32Mask);
void QSPI_DisableInt(QSPI_T *qspi, uint32_t u32Mask);
uint32_t QSPI_GetIntFlag(QSPI_T *qspi, uint32_t u32Mask);
void QSPI_ClearIntFlag(QSPI_T *qspi, uint32_t u32Mask);
uint32_t QSPI_GetStatus(QSPI_T *qspi, uint32_t u32Mask);
# 576 "../../M031BSP/Library/Device/Nuvoton/M031/Include\\M031Series.h" 2
# 1 "../../M031BSP/Library/StdDriver/inc\\spi.h" 1
# 314 "../../M031BSP/Library/StdDriver/inc\\spi.h"
static inline void SPII2S_ENABLE_TX_ZCD(SPI_T *i2s, uint32_t u32ChMask)
{
    if(u32ChMask == (0ul))
        i2s->I2SCTL |= (0x1ul << (16));
    else
        i2s->I2SCTL |= (0x1ul << (17));
}
# 331 "../../M031BSP/Library/StdDriver/inc\\spi.h"
static inline void SPII2S_DISABLE_TX_ZCD(SPI_T *i2s, uint32_t u32ChMask)
{
    if(u32ChMask == (0ul))
        i2s->I2SCTL &= ~(0x1ul << (16));
    else
        i2s->I2SCTL &= ~(0x1ul << (17));
}
# 444 "../../M031BSP/Library/StdDriver/inc\\spi.h"
static inline void SPII2S_SET_MONO_RX_CHANNEL(SPI_T *i2s, uint32_t u32Ch)
{
    u32Ch == (0x1ul << (23)) ?
    (i2s->I2SCTL |= (0x1ul << (23))) :
    (i2s->I2SCTL &= ~(0x1ul << (23)));
}
# 506 "../../M031BSP/Library/StdDriver/inc\\spi.h"
uint32_t SPI_Open(SPI_T *spi, uint32_t u32MasterSlave, uint32_t u32SPIMode, uint32_t u32DataWidth, uint32_t u32BusClock);
void SPI_Close(SPI_T *spi);
void SPI_ClearRxFIFO(SPI_T *spi);
void SPI_ClearTxFIFO(SPI_T *spi);
void SPI_DisableAutoSS(SPI_T *spi);
void SPI_EnableAutoSS(SPI_T *spi, uint32_t u32SSPinMask, uint32_t u32ActiveLevel);
uint32_t SPI_SetBusClock(SPI_T *spi, uint32_t u32BusClock);
void SPI_SetFIFO(SPI_T *spi, uint32_t u32TxThreshold, uint32_t u32RxThreshold);
uint32_t SPI_GetBusClock(SPI_T *spi);
void SPI_EnableInt(SPI_T *spi, uint32_t u32Mask);
void SPI_DisableInt(SPI_T *spi, uint32_t u32Mask);
uint32_t SPI_GetIntFlag(SPI_T *spi, uint32_t u32Mask);
void SPI_ClearIntFlag(SPI_T *spi, uint32_t u32Mask);
uint32_t SPI_GetStatus(SPI_T *spi, uint32_t u32Mask);

uint32_t SPII2S_Open(SPI_T *i2s, uint32_t u32MasterSlave, uint32_t u32SampleRate, uint32_t u32WordWidth, uint32_t u32Channels, uint32_t u32DataFormat);
void SPII2S_Close(SPI_T *i2s);
void SPII2S_EnableInt(SPI_T *i2s, uint32_t u32Mask);
void SPII2S_DisableInt(SPI_T *i2s, uint32_t u32Mask);
uint32_t SPII2S_EnableMCLK(SPI_T *i2s, uint32_t u32BusClock);
void SPII2S_DisableMCLK(SPI_T *i2s);
void SPII2S_SetFIFO(SPI_T *i2s, uint32_t u32TxThreshold, uint32_t u32RxThreshold);
# 577 "../../M031BSP/Library/Device/Nuvoton/M031/Include\\M031Series.h" 2
# 1 "../../M031BSP/Library/StdDriver/inc\\rtc.h" 1
# 126 "../../M031BSP/Library/StdDriver/inc\\rtc.h"
typedef struct
{
    uint32_t u32Year;
    uint32_t u32Month;
    uint32_t u32Day;
    uint32_t u32DayOfWeek;
    uint32_t u32Hour;
    uint32_t u32Minute;
    uint32_t u32Second;
    uint32_t u32TimeScale;
    uint32_t u32AmPm;
} S_RTC_TIME_DATA_T;
# 270 "../../M031BSP/Library/StdDriver/inc\\rtc.h"
int32_t RTC_Open(S_RTC_TIME_DATA_T *psPt);
void RTC_Close(void);
void RTC_32KCalibration(int32_t i32FrequencyX10000);
void RTC_GetDateAndTime(S_RTC_TIME_DATA_T *psPt);
void RTC_GetAlarmDateAndTime(S_RTC_TIME_DATA_T *psPt);
void RTC_SetDateAndTime(S_RTC_TIME_DATA_T *psPt);
void RTC_SetAlarmDateAndTime(S_RTC_TIME_DATA_T *psPt);
void RTC_SetDate(uint32_t u32Year, uint32_t u32Month, uint32_t u32Day, uint32_t u32DayOfWeek);
void RTC_SetTime(uint32_t u32Hour, uint32_t u32Minute, uint32_t u32Second, uint32_t u32TimeMode, uint32_t u32AmPm);
void RTC_SetAlarmDate(uint32_t u32Year, uint32_t u32Month, uint32_t u32Day);
void RTC_SetAlarmTime(uint32_t u32Hour, uint32_t u32Minute, uint32_t u32Second, uint32_t u32TimeMode, uint32_t u32AmPm);
void RTC_SetAlarmDateMask(uint8_t u8IsTenYMsk, uint8_t u8IsYMsk, uint8_t u8IsTenMMsk, uint8_t u8IsMMsk, uint8_t u8IsTenDMsk, uint8_t u8IsDMsk);
void RTC_SetAlarmTimeMask(uint8_t u8IsTenHMsk, uint8_t u8IsHMsk, uint8_t u8IsTenMMsk, uint8_t u8IsMMsk, uint8_t u8IsTenSMsk, uint8_t u8IsSMsk);
uint32_t RTC_GetDayOfWeek(void);
void RTC_SetTickPeriod(uint32_t u32TickSelection);
void RTC_EnableInt(uint32_t u32IntFlagMask);
void RTC_DisableInt(uint32_t u32IntFlagMask);
# 578 "../../M031BSP/Library/Device/Nuvoton/M031/Include\\M031Series.h" 2
# 1 "../../M031BSP/Library/StdDriver/inc\\hdiv.h" 1
# 43 "../../M031BSP/Library/StdDriver/inc\\hdiv.h"
static inline int32_t HDIV_Div(int32_t x, int16_t y)
{
    uint32_t *p32;

    p32 = (uint32_t *)((( uint32_t)0x40000000) + 0x14000);
    *p32++ = x;
    *p32++ = y;
 __nop();
    return *p32;
}
# 65 "../../M031BSP/Library/StdDriver/inc\\hdiv.h"
static inline int16_t HDIV_Mod(int32_t x, int16_t y)
{
    uint32_t *p32;

    p32 = (uint32_t *)((( uint32_t)0x40000000) + 0x14000);
    *p32++ = x;
    *p32++ = y;
    return p32[1];
}
# 579 "../../M031BSP/Library/Device/Nuvoton/M031/Include\\M031Series.h" 2
# 1 "../../M031BSP/Library/StdDriver/inc\\timer.h" 1
# 175 "../../M031BSP/Library/StdDriver/inc\\timer.h"
static inline void TIMER_Start(TIMER_T *timer)
{
    timer->CTL |= (0x1ul << (30));
}
# 191 "../../M031BSP/Library/StdDriver/inc\\timer.h"
static inline void TIMER_Stop(TIMER_T *timer)
{
    timer->CTL &= ~(0x1ul << (30));
}
# 209 "../../M031BSP/Library/StdDriver/inc\\timer.h"
static inline void TIMER_EnableWakeup(TIMER_T *timer)
{
    timer->CTL |= (0x1ul << (23));
}
# 225 "../../M031BSP/Library/StdDriver/inc\\timer.h"
static inline void TIMER_DisableWakeup(TIMER_T *timer)
{
    timer->CTL &= ~(0x1ul << (23));
}
# 241 "../../M031BSP/Library/StdDriver/inc\\timer.h"
static inline void TIMER_StartCapture(TIMER_T *timer)
{
    timer->EXTCTL |= (0x1ul << (3));
}
# 257 "../../M031BSP/Library/StdDriver/inc\\timer.h"
static inline void TIMER_StopCapture(TIMER_T *timer)
{
    timer->EXTCTL &= ~(0x1ul << (3));
}
# 273 "../../M031BSP/Library/StdDriver/inc\\timer.h"
static inline void TIMER_EnableCaptureDebounce(TIMER_T *timer)
{
    timer->EXTCTL |= (0x1ul << (6));
}
# 289 "../../M031BSP/Library/StdDriver/inc\\timer.h"
static inline void TIMER_DisableCaptureDebounce(TIMER_T *timer)
{
    timer->EXTCTL &= ~(0x1ul << (6));
}
# 305 "../../M031BSP/Library/StdDriver/inc\\timer.h"
static inline void TIMER_EnableEventCounterDebounce(TIMER_T *timer)
{
    timer->EXTCTL |= (0x1ul << (7));
}
# 321 "../../M031BSP/Library/StdDriver/inc\\timer.h"
static inline void TIMER_DisableEventCounterDebounce(TIMER_T *timer)
{
    timer->EXTCTL &= ~(0x1ul << (7));
}
# 337 "../../M031BSP/Library/StdDriver/inc\\timer.h"
static inline void TIMER_EnableInt(TIMER_T *timer)
{
    timer->CTL |= (0x1ul << (29));
}
# 353 "../../M031BSP/Library/StdDriver/inc\\timer.h"
static inline void TIMER_DisableInt(TIMER_T *timer)
{
    timer->CTL &= ~(0x1ul << (29));
}
# 369 "../../M031BSP/Library/StdDriver/inc\\timer.h"
static inline void TIMER_EnableCaptureInt(TIMER_T *timer)
{
    timer->EXTCTL |= (0x1ul << (5));
}
# 385 "../../M031BSP/Library/StdDriver/inc\\timer.h"
static inline void TIMER_DisableCaptureInt(TIMER_T *timer)
{
    timer->EXTCTL &= ~(0x1ul << (5));
}
# 402 "../../M031BSP/Library/StdDriver/inc\\timer.h"
static inline uint32_t TIMER_GetIntFlag(TIMER_T *timer)
{
    return ((timer->INTSTS & (0x1ul << (0))) ? 1 : 0);
}
# 418 "../../M031BSP/Library/StdDriver/inc\\timer.h"
static inline void TIMER_ClearIntFlag(TIMER_T *timer)
{
    timer->INTSTS = (0x1ul << (0));
}
# 435 "../../M031BSP/Library/StdDriver/inc\\timer.h"
static inline uint32_t TIMER_GetCaptureIntFlag(TIMER_T *timer)
{
    return timer->EINTSTS;
}
# 451 "../../M031BSP/Library/StdDriver/inc\\timer.h"
static inline void TIMER_ClearCaptureIntFlag(TIMER_T *timer)
{
    timer->EINTSTS = (0x1ul << (0));
}
# 468 "../../M031BSP/Library/StdDriver/inc\\timer.h"
static inline uint32_t TIMER_GetWakeupFlag(TIMER_T *timer)
{
    return (timer->INTSTS & (0x1ul << (1)) ? 1 : 0);
}
# 484 "../../M031BSP/Library/StdDriver/inc\\timer.h"
static inline void TIMER_ClearWakeupFlag(TIMER_T *timer)
{
    timer->INTSTS = (0x1ul << (1));
}
# 500 "../../M031BSP/Library/StdDriver/inc\\timer.h"
static inline uint32_t TIMER_GetCaptureData(TIMER_T *timer)
{
    return timer->CAP;
}
# 516 "../../M031BSP/Library/StdDriver/inc\\timer.h"
static inline uint32_t TIMER_GetCounter(TIMER_T *timer)
{
    return timer->CNT;
}

uint32_t TIMER_Open(TIMER_T *timer, uint32_t u32Mode, uint32_t u32Freq);
void TIMER_Close(TIMER_T *timer);
int32_t TIMER_Delay(TIMER_T *timer, uint32_t u32Usec);
void TIMER_EnableCapture(TIMER_T *timer, uint32_t u32CapMode, uint32_t u32Edge);
void TIMER_DisableCapture(TIMER_T *timer);
void TIMER_EnableEventCounter(TIMER_T *timer, uint32_t u32Edge);
void TIMER_DisableEventCounter(TIMER_T *timer);
uint32_t TIMER_GetModuleClock(TIMER_T *timer);
void TIMER_EnableFreqCounter(TIMER_T *timer,
                             uint32_t u32DropCount,
                             uint32_t u32Timeout,
                             uint32_t u32EnableInt);
void TIMER_DisableFreqCounter(TIMER_T *timer);
void TIMER_SetTriggerSource(TIMER_T *timer, uint32_t u32Src);
void TIMER_SetTriggerTarget(TIMER_T *timer, uint32_t u32Mask);
void TIMER_CaptureSelect(TIMER_T *timer, uint32_t u32Src);
int32_t TIMER_ResetCounter(TIMER_T *timer);
# 580 "../../M031BSP/Library/Device/Nuvoton/M031/Include\\M031Series.h" 2
# 1 "../../M031BSP/Library/StdDriver/inc\\uart.h" 1
# 431 "../../M031BSP/Library/StdDriver/inc\\uart.h"
static inline void UART_CLEAR_RTS(UART_T *uart);
static inline void UART_SET_RTS(UART_T *uart);
# 444 "../../M031BSP/Library/StdDriver/inc\\uart.h"
static inline void UART_CLEAR_RTS(UART_T *uart)
{
    uart->MODEM |= (0x1ul << (9));
    uart->MODEM &= ~(0x1ul << (1));
}
# 460 "../../M031BSP/Library/StdDriver/inc\\uart.h"
static inline void UART_SET_RTS(UART_T *uart)
{
    uart->MODEM |= (0x1ul << (9)) | (0x1ul << (1));
}


void UART_ClearIntFlag(UART_T *uart , uint32_t u32InterruptFlag);
void UART_Close(UART_T *uart);
void UART_DisableFlowCtrl(UART_T *uart);
void UART_DisableInt(UART_T *uart, uint32_t u32InterruptFlag);
void UART_EnableFlowCtrl(UART_T *uart);
void UART_EnableInt(UART_T *uart, uint32_t u32InterruptFlag);
void UART_Open(UART_T *uart, uint32_t u32baudrate);
uint32_t UART_Read(UART_T *uart, uint8_t pu8RxBuf[], uint32_t u32ReadBytes);
void UART_SetLine_Config(UART_T *uart, uint32_t u32baudrate, uint32_t u32data_width, uint32_t u32parity, uint32_t u32stop_bits);
void UART_SetTimeoutCnt(UART_T *uart, uint32_t u32TOC);
void UART_SelectIrDAMode(UART_T *uart, uint32_t u32Buadrate, uint32_t u32Direction);
void UART_SelectRS485Mode(UART_T *uart, uint32_t u32Mode, uint32_t u32Addr);
uint32_t UART_Write(UART_T *uart, uint8_t pu8TxBuf[], uint32_t u32WriteBytes);
void UART_SelectSingleWireMode(UART_T *uart);
# 581 "../../M031BSP/Library/Device/Nuvoton/M031/Include\\M031Series.h" 2
# 1 "../../M031BSP/Library/StdDriver/inc\\usbd.h" 1
# 33 "../../M031BSP/Library/StdDriver/inc\\usbd.h"
typedef struct s_usbd_info
{
    uint8_t *gu8DevDesc;
    uint8_t *gu8ConfigDesc;
    uint8_t **gu8StringDesc;
    uint8_t **gu8HidReportDesc;
    uint8_t *gu8BosDesc;
    uint32_t *gu32HidReportSize;
    uint32_t *gu32ConfigHidDescIdx;

} S_USBD_INFO_T;

extern const S_USBD_INFO_T gsInfo;
# 556 "../../M031BSP/Library/StdDriver/inc\\usbd.h"
static inline void USBD_MemCopy(uint8_t dest[], uint8_t src[], uint32_t size)
{
    uint32_t volatile i=0ul;

    while(size--)
    {
        dest[i] = src[i];
        i++;
    }
}
# 577 "../../M031BSP/Library/StdDriver/inc\\usbd.h"
static inline void USBD_SetStall(uint8_t epnum)
{
    uint32_t u32CfgAddr;
    uint32_t u32Cfg;
    uint32_t i;

    for(i = 0ul; i < 8ul; i++)
    {
        u32CfgAddr = (uint32_t)(i << 4) + (uint32_t)&((USBD_T *) ((( uint32_t)0x40000000) + 0xC0000))->EP[0].CFG;
        u32Cfg = *((volatile uint32_t *)(u32CfgAddr));

        if((u32Cfg & 0xful) == epnum)
        {
            u32CfgAddr = (uint32_t)(i << 4) + (uint32_t)&((USBD_T *) ((( uint32_t)0x40000000) + 0xC0000))->EP[0].CFGP;
            u32Cfg = *((volatile uint32_t *)(u32CfgAddr));

            *((volatile uint32_t *)(u32CfgAddr)) = (u32Cfg | (0x1ul << (1)));
            break;
        }
    }
}
# 608 "../../M031BSP/Library/StdDriver/inc\\usbd.h"
static inline void USBD_ClearStall(uint8_t epnum)
{
    uint32_t u32CfgAddr;
    uint32_t u32Cfg;
    uint32_t i;

    for(i = 0ul; i < 8ul; i++)
    {
        u32CfgAddr = (uint32_t)(i << 4) + (uint32_t)&((USBD_T *) ((( uint32_t)0x40000000) + 0xC0000))->EP[0].CFG;
        u32Cfg = *((volatile uint32_t *)(u32CfgAddr));

        if((u32Cfg & 0xful) == epnum)
        {
            u32CfgAddr = (uint32_t)(i << 4) + (uint32_t)&((USBD_T *) ((( uint32_t)0x40000000) + 0xC0000))->EP[0].CFGP;
            u32Cfg = *((volatile uint32_t *)(u32CfgAddr));

            *((volatile uint32_t *)(u32CfgAddr)) = (u32Cfg & ~(0x1ul << (1)));
            break;
        }
    }
}
# 641 "../../M031BSP/Library/StdDriver/inc\\usbd.h"
static inline uint32_t USBD_GetStall(uint8_t epnum)
{
    uint32_t u32CfgAddr;
    uint32_t u32Cfg;
    uint32_t i;

    for(i = 0ul; i < 8ul; i++)
    {
        u32CfgAddr = (uint32_t)(i << 4) + (uint32_t)&((USBD_T *) ((( uint32_t)0x40000000) + 0xC0000))->EP[0].CFG;
        u32Cfg = *((volatile uint32_t *)(u32CfgAddr));

        if((u32Cfg & 0xful) == epnum)
        {
            u32CfgAddr = (uint32_t)(i << 4) + (uint32_t)&((USBD_T *) ((( uint32_t)0x40000000) + 0xC0000))->EP[0].CFGP;
            break;
        }
    }

    return ((*((volatile uint32_t *)(u32CfgAddr))) & (0x1ul << (1)));
}


extern volatile uint8_t g_usbd_RemoteWakeupEn;


typedef void (*VENDOR_REQ)(void);
typedef void (*CLASS_REQ)(void);
typedef void (*SET_INTERFACE_REQ)(uint32_t u32AltInterface);
typedef void (*SET_CONFIG_CB)(void);



void USBD_Open(const S_USBD_INFO_T *param, CLASS_REQ pfnClassReq, SET_INTERFACE_REQ pfnSetInterface);
void USBD_Start(void);
void USBD_GetSetupPacket(uint8_t *buf);
void USBD_ProcessSetupPacket(void);
void USBD_StandardRequest(void);
void USBD_PrepareCtrlIn(uint8_t pu8Buf[], uint32_t u32Size);
void USBD_CtrlIn(void);
void USBD_PrepareCtrlOut(uint8_t *pu8Buf, uint32_t u32Size);
void USBD_CtrlOut(void);
void USBD_SwReset(void);
void USBD_SetVendorRequest(VENDOR_REQ pfnVendorReq);
void USBD_SetConfigCallback(SET_CONFIG_CB pfnSetConfigCallback);
void USBD_LockEpStall(uint32_t u32EpBitmap);
# 582 "../../M031BSP/Library/Device/Nuvoton/M031/Include\\M031Series.h" 2
# 1 "../../M031BSP/Library/StdDriver/inc\\usci_i2c.h" 1
# 33 "../../M031BSP/Library/StdDriver/inc\\usci_i2c.h"
enum UI2C_MASTER_EVENT
{
    MASTER_SEND_ADDRESS = 10u,
    MASTER_SEND_H_WR_ADDRESS,
    MASTER_SEND_H_RD_ADDRESS,
    MASTER_SEND_L_ADDRESS,
    MASTER_SEND_DATA,
    MASTER_SEND_REPEAT_START,
    MASTER_READ_DATA,
    MASTER_STOP,
    MASTER_SEND_START
};




enum UI2C_SLAVE_EVENT
{
    SLAVE_ADDRESS_ACK = 100u,
    SLAVE_H_WR_ADDRESS_ACK,
    SLAVE_L_WR_ADDRESS_ACK,
    SLAVE_GET_DATA,
    SLAVE_SEND_DATA,
    SLAVE_H_RD_ADDRESS_ACK,
    SLAVE_L_RD_ADDRESS_ACK
};
# 99 "../../M031BSP/Library/StdDriver/inc\\usci_i2c.h"
extern int32_t g_UI2C_i32ErrCode;
# 296 "../../M031BSP/Library/StdDriver/inc\\usci_i2c.h"
uint32_t UI2C_Open(UI2C_T *ui2c, uint32_t u32BusClock);
void UI2C_Close(UI2C_T *ui2c);
void UI2C_ClearTimeoutFlag(UI2C_T *ui2c);
void UI2C_Trigger(UI2C_T *ui2c, uint8_t u8Start, uint8_t u8Stop, uint8_t u8Ptrg, uint8_t u8Ack);
void UI2C_DisableInt(UI2C_T *ui2c, uint32_t u32Mask);
void UI2C_EnableInt(UI2C_T *ui2c, uint32_t u32Mask);
uint32_t UI2C_GetBusClockFreq(UI2C_T *ui2c);
uint32_t UI2C_SetBusClockFreq(UI2C_T *ui2c, uint32_t u32BusClock);
uint32_t UI2C_GetIntFlag(UI2C_T *ui2c, uint32_t u32Mask);
void UI2C_ClearIntFlag(UI2C_T *ui2c , uint32_t u32Mask);
uint32_t UI2C_GetData(UI2C_T *ui2c);
void UI2C_SetData(UI2C_T *ui2c, uint8_t u8Data);
void UI2C_SetSlaveAddr(UI2C_T *ui2c, uint8_t u8SlaveNo, uint16_t u16SlaveAddr, uint8_t u8GCMode);
void UI2C_SetSlaveAddrMask(UI2C_T *ui2c, uint8_t u8SlaveNo, uint16_t u16SlaveAddrMask);
void UI2C_EnableTimeout(UI2C_T *ui2c, uint32_t u32TimeoutCnt);
void UI2C_DisableTimeout(UI2C_T *ui2c);
void UI2C_EnableWakeup(UI2C_T *ui2c, uint8_t u8WakeupMode);
void UI2C_DisableWakeup(UI2C_T *ui2c);
uint8_t UI2C_WriteByte(UI2C_T *ui2c, uint8_t u8SlaveAddr, const uint8_t data);
uint32_t UI2C_WriteMultiBytes(UI2C_T *ui2c, uint8_t u8SlaveAddr, const uint8_t *data, uint32_t u32wLen);
uint8_t UI2C_WriteByteOneReg(UI2C_T *ui2c, uint8_t u8SlaveAddr, uint8_t u8DataAddr, const uint8_t data);
uint32_t UI2C_WriteMultiBytesOneReg(UI2C_T *ui2c, uint8_t u8SlaveAddr, uint8_t u8DataAddr, const uint8_t *data, uint32_t u32wLen);
uint8_t UI2C_WriteByteTwoRegs(UI2C_T *ui2c, uint8_t u8SlaveAddr, uint16_t u16DataAddr, const uint8_t data);
uint32_t UI2C_WriteMultiBytesTwoRegs(UI2C_T *ui2c, uint8_t u8SlaveAddr, uint16_t u16DataAddr, const uint8_t *data, uint32_t u32wLen);
uint8_t UI2C_ReadByte(UI2C_T *ui2c, uint8_t u8SlaveAddr);
uint32_t UI2C_ReadMultiBytes(UI2C_T *ui2c, uint8_t u8SlaveAddr, uint8_t *rdata, uint32_t u32rLen);
uint8_t UI2C_ReadByteOneReg(UI2C_T *ui2c, uint8_t u8SlaveAddr, uint8_t u8DataAddr);
uint32_t UI2C_ReadMultiBytesOneReg(UI2C_T *ui2c, uint8_t u8SlaveAddr, uint8_t u8DataAddr, uint8_t *rdata, uint32_t u32rLen);
uint8_t UI2C_ReadByteTwoRegs(UI2C_T *ui2c, uint8_t u8SlaveAddr, uint16_t u16DataAddr);
uint32_t UI2C_ReadMultiBytesTwoRegs(UI2C_T *ui2c, uint8_t u8SlaveAddr, uint16_t u16DataAddr, uint8_t *rdata, uint32_t u32rLen);
# 583 "../../M031BSP/Library/Device/Nuvoton/M031/Include\\M031Series.h" 2
# 1 "../../M031BSP/Library/StdDriver/inc\\usci_spi.h" 1
# 399 "../../M031BSP/Library/StdDriver/inc\\usci_spi.h"
uint32_t USPI_Open(USPI_T *uspi, uint32_t u32MasterSlave, uint32_t u32SPIMode, uint32_t u32DataWidth, uint32_t u32BusClock);
void USPI_Close(USPI_T *uspi);
void USPI_ClearRxBuf(USPI_T *uspi);
void USPI_ClearTxBuf(USPI_T *uspi);
void USPI_DisableAutoSS(USPI_T *uspi);
void USPI_EnableAutoSS(USPI_T *uspi, uint32_t u32SSPinMask, uint32_t u32ActiveLevel);
uint32_t USPI_SetBusClock(USPI_T *uspi, uint32_t u32BusClock);
uint32_t USPI_GetBusClock(USPI_T *uspi);
void USPI_EnableInt(USPI_T *uspi, uint32_t u32Mask);
void USPI_DisableInt(USPI_T *uspi, uint32_t u32Mask);
uint32_t USPI_GetIntFlag(USPI_T *uspi, uint32_t u32Mask);
void USPI_ClearIntFlag(USPI_T *uspi, uint32_t u32Mask);
uint32_t USPI_GetStatus(USPI_T *uspi, uint32_t u32Mask);
void USPI_EnableWakeup(USPI_T *uspi);
void USPI_DisableWakeup(USPI_T *uspi);
# 584 "../../M031BSP/Library/Device/Nuvoton/M031/Include\\M031Series.h" 2
# 1 "../../M031BSP/Library/StdDriver/inc\\usci_uart.h" 1
# 496 "../../M031BSP/Library/StdDriver/inc\\usci_uart.h"
void UUART_ClearIntFlag(UUART_T* uuart, uint32_t u32Mask);
uint32_t UUART_GetIntFlag(UUART_T* uuart, uint32_t u32Mask);
void UUART_Close(UUART_T* uuart);
void UUART_DisableInt(UUART_T* uuart, uint32_t u32Mask);
void UUART_EnableInt(UUART_T* uuart, uint32_t u32Mask);
uint32_t UUART_Open(UUART_T* uuart, uint32_t u32baudrate);
uint32_t UUART_Read(UUART_T* uuart, uint8_t pu8RxBuf[], uint32_t u32ReadBytes);
uint32_t UUART_SetLine_Config(UUART_T* uuart, uint32_t u32baudrate, uint32_t u32data_width, uint32_t u32parity, uint32_t u32stop_bits);
uint32_t UUART_Write(UUART_T* uuart, uint8_t pu8TxBuf[], uint32_t u32WriteBytes);
void UUART_EnableWakeup(UUART_T* uuart, uint32_t u32WakeupMode);
void UUART_DisableWakeup(UUART_T* uuart);
void UUART_EnableFlowCtrl(UUART_T* uuart);
void UUART_DisableFlowCtrl(UUART_T* uuart);
# 585 "../../M031BSP/Library/Device/Nuvoton/M031/Include\\M031Series.h" 2
# 1 "../../M031BSP/Library/StdDriver/inc\\wdt.h" 1
# 155 "../../M031BSP/Library/StdDriver/inc\\wdt.h"
static inline int32_t WDT_Close(void);
static inline int32_t WDT_EnableInt(void);
static inline void WDT_DisableInt(void);
# 168 "../../M031BSP/Library/StdDriver/inc\\wdt.h"
static inline int32_t WDT_Close(void)
{
    uint32_t u32TimeOutCount = SystemCoreClock / 400;
    ((WDT_T *) ((( uint32_t)0x40000000) + 0x40000))->CTL = 0UL;
    while(((WDT_T *) ((( uint32_t)0x40000000) + 0x40000))->CTL & (0x1ul << (30)))
  {
        if(u32TimeOutCount == 0) return -1;
        u32TimeOutCount--;
  }
    return 0;
}
# 190 "../../M031BSP/Library/StdDriver/inc\\wdt.h"
static inline int32_t WDT_EnableInt(void)
{
    uint32_t u32TimeOutCount = SystemCoreClock / 400;
    ((WDT_T *) ((( uint32_t)0x40000000) + 0x40000))->CTL |= (0x1ul << (6));
    while(((WDT_T *) ((( uint32_t)0x40000000) + 0x40000))->CTL & (0x1ul << (30)))
  {
        if(u32TimeOutCount == 0) return -1;
        u32TimeOutCount--;
  }
    return 0;
}
# 211 "../../M031BSP/Library/StdDriver/inc\\wdt.h"
static inline void WDT_DisableInt(void)
{

    ((WDT_T *) ((( uint32_t)0x40000000) + 0x40000))->CTL &= ~((0x1ul << (6)) | (0x1ul << (2)) | (0x1ul << (3)) | (0x1ul << (5)));
    return;
}

void WDT_Open(uint32_t u32TimeoutInterval, uint32_t u32ResetDelay, uint32_t u32EnableReset, uint32_t u32EnableWakeup);
# 586 "../../M031BSP/Library/Device/Nuvoton/M031/Include\\M031Series.h" 2
# 1 "../../M031BSP/Library/StdDriver/inc\\wwdt.h" 1
# 141 "../../M031BSP/Library/StdDriver/inc\\wwdt.h"
void WWDT_Open(uint32_t u32PreScale, uint32_t u32CmpValue, uint32_t u32EnableInt);
# 587 "../../M031BSP/Library/Device/Nuvoton/M031/Include\\M031Series.h" 2
# 50 "../pin_config.c" 2
# 1 "..\\pin_config.h" 1
# 61 "..\\pin_config.h"
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
# 51 "../pin_config.c" 2



void pin_config_init_ice(void)
{
    ((SYS_T *) ((( uint32_t)0x40000000) + 0x00000))->GPF_MFPL &= ~((0xful << (4)) | (0xful << (0)));
    ((SYS_T *) ((( uint32_t)0x40000000) + 0x00000))->GPF_MFPL |= ((0x0EUL<<(4)) | (0x0EUL<<(0)));

    return;
}

void pin_config_deinit_ice(void)
{
    ((SYS_T *) ((( uint32_t)0x40000000) + 0x00000))->GPF_MFPL &= ~((0xful << (4)) | (0xful << (0)));

    return;
}

void pin_config_init_pb(void)
{
    ((SYS_T *) ((( uint32_t)0x40000000) + 0x00000))->GPB_MFPL &= ~((0xful << (4)));
    ((SYS_T *) ((( uint32_t)0x40000000) + 0x00000))->GPB_MFPL |= ((0x00UL<<(4)));

    return;
}

void pin_config_deinit_pb(void)
{
    ((SYS_T *) ((( uint32_t)0x40000000) + 0x00000))->GPB_MFPL &= ~((0xful << (4)));


    return;
}

void pin_config_init_pc(void)
{
    ((SYS_T *) ((( uint32_t)0x40000000) + 0x00000))->GPC_MFPH &= ~((0xful << (16)) | (0xful << (12)) | (0xful << (8)));
    ((SYS_T *) ((( uint32_t)0x40000000) + 0x00000))->GPC_MFPH |= ((0x00UL<<(16)) | (0x00UL<<(12)) | (0x00UL<<(8)));

    return;
}

void pin_config_deinit_pc(void)
{
    ((SYS_T *) ((( uint32_t)0x40000000) + 0x00000))->GPC_MFPH &= ~((0xful << (16)) | (0xful << (12)) | (0xful << (8)));

    return;
}

void pin_config_init_pf(void)
{
    ((SYS_T *) ((( uint32_t)0x40000000) + 0x00000))->GPF_MFPH &= ~((0xful << (24)) | (0xful << (0)));
    ((SYS_T *) ((( uint32_t)0x40000000) + 0x00000))->GPF_MFPH |= ((0x00UL<<(24)) | (0x00UL<<(0)));
    ((SYS_T *) ((( uint32_t)0x40000000) + 0x00000))->GPF_MFPL &= ~((0xful << (28)) | (0xful << (24)));
    ((SYS_T *) ((( uint32_t)0x40000000) + 0x00000))->GPF_MFPL |= ((0x00UL<<(28)) | (0x00UL<<(24)));

    return;
}

void pin_config_deinit_pf(void)
{
    ((SYS_T *) ((( uint32_t)0x40000000) + 0x00000))->GPF_MFPH &= ~((0xful << (24)) | (0xful << (0)));
    ((SYS_T *) ((( uint32_t)0x40000000) + 0x00000))->GPF_MFPL &= ~((0xful << (28)) | (0xful << (24)));

    return;
}

void pin_config_init(void)
{
# 137 "../pin_config.c"
    pin_config_init_ice();
    pin_config_init_pb();
    pin_config_init_pc();
    pin_config_init_pf();

    return;
}

void pin_config_deinit(void)
{
    pin_config_deinit_ice();
    pin_config_deinit_pb();
    pin_config_deinit_pc();
    pin_config_deinit_pf();

    return;
}
