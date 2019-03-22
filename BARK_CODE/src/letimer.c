/*
 * letimer.c
 *
 *  Created on: Feb 1, 2018
 *      Author: matt
 */

#include "letimer.h"

int prescaler;

void cmu_setup(){
	  CMU_OscillatorEnable(cmuOsc_LFXO, true, true);
	  CMU_ClockSelectSet(cmuClock_LFA, cmuSelect_LFXO);
	  prescaler = 2;
      // Set the prescalar
	  CMU_ClockEnable(cmuClock_CORELE, true);
	  CMU_ClockEnable(cmuClock_LETIMER0, true);
}
void leTimer0_init(){

}
void leTimer0_enable(double period, double onTime){
	  LETIMER_Init_TypeDef LETIMER_INIT_DEFAULT_ = LETIMER_INIT_DEFAULT;
	  LETIMER_INIT_DEFAULT_.comp0Top = true;
	  LETIMER_Init(LETIMER0, &LETIMER_INIT_DEFAULT_);
	  LETIMER0->IFC = 0b11111; // Clear Interrupt register
	  LETIMER_CompareSet(LETIMER0, 0,period * LFXOFreq / (double)pow(2, prescaler));
	  LETIMER_CompareSet(LETIMER0, 1, onTime * LFXOFreq / (double)pow(2, prescaler));
	  while(LETIMER0->SYNCBUSY); //Wait for clock to synchronize
	  LETIMER0->CNT = period * LFXOFreq / (double)pow(2, prescaler);

	  LETIMER0->IEN = COMP0_Interrupt_Enable | COMP1_Interrupt_Enable; // Enable Comp0 interrupts
	//  NVIC_EnableIRQ(LETIMER0_IRQn); // Enable interrupt to CPU
	 // LETIMER0->COMP0 = 10000;
	  LETIMER_Enable(LETIMER0, true); // Start letimer
	 // NVIC_SetPriority(LETIMER0_IRQn, 1);

	  CORE_ATOMIC_IRQ_DISABLE();
	  // Polling in order to get precise PWM
	  while(servoPulses){
		  if (((LETIMER0->IF & LETIMER_IF_COMP0) == LETIMER_IF_COMP0) || ((LETIMER0->IF & LETIMER_IF_COMP1) == LETIMER_IF_COMP1)){
				letimer0_flag = LETIMER0->IF;
				LETIMER0->IFC = letimer0_flag; // Clear Interrupt register

				GPIO_PinOutToggle(SERVO_PWM_PORT, SERVO_PWM_PIN);
				servoPulses--;
		  }
	  }
		if(servoPulses == 0){
			gecko_external_signal(1); // Clear sevo pwm pin
			  servoWait = 0;
			  LETIMER0->IEN = 0; // Disable Comp0 interrupts
		      GPIO_PinModeSet(SERVO_PWM_PORT, SERVO_PWM_PIN, gpioModePushPull, 0); // Off
		}
		CORE_ATOMIC_IRQ_ENABLE();
}

/*void LETIMER0_IRQHandler(){
 	CORE_ATOMIC_IRQ_DISABLE();
	letimer0_flag = LETIMER0->IF;
	LETIMER0->IFC = letimer0_flag; // Clear Interrupt register
	if(servoPulses == 0){
	//	gecko_external_signal(1); // Clear sevo pwm pin
		  servoWait = 0;
		  LETIMER0->IEN = 0; // Disable Comp0 interrupts
	}
	GPIO_PinOutToggle(SERVO_PWM_PORT, SERVO_PWM_PIN);
	servoPulses--;

	CORE_ATOMIC_IRQ_ENABLE();
}*/
