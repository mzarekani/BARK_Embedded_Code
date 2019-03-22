/*
 * letimer.h
 *
 *  Created on: Feb 1, 2018
 *      Author: matt
 */

#ifndef LETIMER_H_
#define LETIMER_H_

//***********************************************************************************
// Include files
//***********************************************************************************

#include <math.h>
#include "em_core.h"
#include "em_letimer.h"
#include "sleep.h"
#include "letimer.h"
#include "em_cmu.h"
#include "em_gpio.h"
#include "em_emu.h"
#include "native_gecko.h"
#include "servo.h"

//***********************************************************************************
// defines
//***********************************************************************************

#define LFXOFreq 32768
#define ULFRCOFreq 1000

#define COMP0_Interrupt_Enable		(0x1UL << 0)
#define COMP1_Interrupt_Enable		(0x1UL << 1)
#define Comp0_Match_Interrupt_Flag	(0x1UL << 0)



int letimer0_flag;
//***********************************************************************************
// function prototypes
//***********************************************************************************

void cmu_setup(void);
void leTimer0_enable(double, double);
void leTimer0_disable();
void sleep_mode(void);
void LETIMER0_IRQHandler();


#endif /* LETIMER_H_ */
