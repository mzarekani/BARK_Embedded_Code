/*
 * adc.c
 *
 *  Created on: Apr 7, 2018
 *      Author: matt
 */

#include "adc.h"
#include "letimer.h"

void adc_init(void){
	CMU_ClockEnable(cmuClock_ADC0, 1);
	ADC_InitScanInput_TypeDef scanInput;

	// Configure ADC to sample at desired frequency
	ADC_Init_TypeDef init = ADC_INIT_DEFAULT;
	ADC_Init(ADC0, &init);

	init.timebase = ADC_TimebaseCalc(0);
	init.ovsRateSel = adcOvsRateSel4;
	// Set prescale for desired sample frequency
	//prescale = ADC0_ClockFreq / (sampleFreq * (ACQTIME + ADC_RESOLUTION + 1))
	init.prescale =
	(CMU_ClockFreqGet(cmuClock_ADC0)) / (LFXOFreq * (8 + 12 + 1));

	init.warmUpMode = adcWarmupKeepADCWarm;
	ADC_Init(ADC0, &init);

	// Configure ADC Scan sample mode
	ADC_InitScan_TypeDef scanInit = ADC_INITSCAN_DEFAULT;

	scanInit.reference = adcRef5V; // 5V
	ADC0->SCANCTRL |= ADC_SCANCTRL_REF_VDD;

	scanInit.fifoOverwrite = true;

	scanInit.diff = false;

	scanInput.scanInputSel = _ADC_SCANINPUTSEL_INPUT0TO7SEL_APORT1CH16TO23; //PF0 to PF7
	scanInput.scanInputEn =  _ADC_SCANMASK_SCANINPUTEN_INPUT4 | _ADC_SCANMASK_SCANINPUTEN_INPUT6;
	scanInit.scanInputConfig = scanInput;
	/* Setup scan channels, define DEBUG_EFM in debug build to identify invalid channel range */
	ADC_ScanSingleEndedInputAdd(&scanInit, adcScanInputGroup1, adcPosSelAPORT1XCH22);
	ADC_ScanSingleEndedInputAdd(&scanInit, adcScanInputGroup1, adcPosSelAPORT1XCH20);

	// Loop continuously
	scanInit.rep = true;

	// Initialize Scan Parameters
	ADC_InitScan(ADC0, &scanInit);

	// Enable comparisons
	ADC0->SCANCTRL |= ADC_SCANCTRL_CMPEN;

	ADC0->CMPTHR = 0x76c0000;
}

void adc_enable(){
	  CMU_ClockEnable(cmuClock_ADC0, 1);
	  ADC0->IEN = ADC_IEN_SCANCMP;

	  NVIC_EnableIRQ(ADC0_IRQn);

	  GPIO_PinModeSet(gpioPortF, 6, gpioModeDisabled, 0);   // P34
	  GPIO_PinModeSet(gpioPortF, 4, gpioModeDisabled, 0);	// P30

	  ADC0->SCANFIFOCLEAR = 1;
	  ADC0->IFC = 0xffffffff;
	  ADC_Start(ADC0, adcStartScan);
}

void adc_disable(){
	  ADC_Reset(ADC0);
	  ADC0->IEN = 0;
	  ADC0->SCANFIFOCLEAR = 1;
	  ADC0->IFC = 0xffffffff;
	  CMU_ClockEnable(cmuClock_ADC0, 0);
}

void ADC0_IRQHandler(void){
	CORE_ATOMIC_IRQ_DISABLE();
	ADC0->CMD = ADC_CMD_SCANSTOP;
	ADC0->IEN = 0;;
	uint32 adc0_flagADC0 = ADC0->IF;
	ADC0->IFC = adc0_flagADC0;
	gecko_external_signal(3);
	CORE_ATOMIC_IRQ_ENABLE();

}
