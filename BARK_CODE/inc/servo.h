/*
 * servo.h

 *  Created on: Mar 31, 2018
 *      Author: matt
 */

#ifndef SERVO_H_
#define SERVO_H_

//***********************************************************************************
// Include files
//***********************************************************************************

#include "letimer.h"
#include "display_bark.h"
//***********************************************************************************
// Defines
//***********************************************************************************

/*
#define SERVO_POWER_PORT	gpioPortF
#define SERVO_POWER_PIN		7
*/

#define LED_POWER_PORT	gpioPortC
#define LED_POWER_PIN		9

#define SERVO_PWM_PORT		gpioPortC
#define SERVO_PWM_PIN		7

#define PERIOD 			0.020 // seconds
/*
#define PULSE_WIDTH_CCW	0.0005 // seconds
#define PULSE_WIDTH_CW	0.002 // seconds
*/
#define PULSE_WIDTH_CCW	0.0010 // seconds*/
#define PULSE_WIDTH_CENTER	0.005 // seconds

#define PULSE_WIDTH_CW	0.008 // seconds


typedef enum {
	servo_location_left = 0,
	servo_location_right = 1,
	servo_location_center = 2,
}servoLocation;
//***********************************************************************************
// Global Variables
//***********************************************************************************

int servoPulses;
uint8 servoWait, servo_wait_left, servo_wait_right, servo_wait_center;
int servo_center_correction;

//***********************************************************************************
// function prototypes
//***********************************************************************************

void servo_setup(void);
void servo_turn_left(void);
void servo_turn_right(void);
void servo_turn_center(void);
void turn_light_on(void);
void turn_light_off(void);

#endif /* SERVO_H_ */
