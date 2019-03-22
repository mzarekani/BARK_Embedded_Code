/*
 * servo.c
 *
 *  Created on: Mar 31, 2018
 *      Author: matt
 */

#include "servo.h"

void servo_setup(){

	//GPIO_DriveStrengthSet(SERVO_POWER_PORT, gpioDriveStrengthStrongAlternateStrong);
	GPIO_PinModeSet(SERVO_PWM_PORT, SERVO_PWM_PIN, gpioModePushPull, 0); //p3

	GPIO_DriveStrengthSet(LED_POWER_PORT, gpioDriveStrengthStrongAlternateStrong);
	//GPIO_PinModeSet(LED_POWER_PORT, LED_POWER_PIN, gpioModePushPull, 1); //p5
	//GPIO_PinOutSet(SERVO_PWM_PORT, SERVO_PWM_PIN);
	servoWait = 0; // Servo ready to be moved
	servo_wait_left = 0;
	servo_wait_right = 0;
	servo_center_correction = 0;
}

void servo_turn_left(){
	if(servoWait == 0 && servo_wait_left == 0){
		display_scheduler |= lcd_display_servo_left;
		display_scheduler &= ~lcd_display_servo_right;
		display_scheduler &= ~lcd_display_servo_center;
		displayLCD();
		bark_save_servo_location(servo_location_left);

		// Turn further if servo is not in the middle
		if(servo_wait_center == 1){
			servoPulses = 60;
		}else{
			servoPulses = 90;
		}
		servoWait = 1;
		servo_wait_left = 1;
		servo_wait_right = 0;
		servo_wait_center = 0;
		GPIO_PinOutSet(SERVO_PWM_PORT, SERVO_PWM_PIN);
		leTimer0_enable(PERIOD, PULSE_WIDTH_CCW);
	}
}

void servo_turn_right(){
	if(servoWait == 0 && servo_wait_right == 0){

		display_scheduler &= ~lcd_display_servo_left;
		display_scheduler |= lcd_display_servo_right;
		display_scheduler &= ~lcd_display_servo_center;
		displayLCD();
		bark_save_servo_location(servo_location_right);

		// Turn further if servo is not in the middle
		if(servo_wait_center == 1){
			servoPulses = 80;
		}else{
			servoPulses = 130;
		}
		servoWait = 1;
		servo_wait_left = 0;
		servo_wait_right = 1;
		servo_wait_center = 0;
		GPIO_PinOutSet(SERVO_PWM_PORT, SERVO_PWM_PIN);
		leTimer0_enable(PERIOD, PULSE_WIDTH_CW);
	}
}

void servo_turn_center(){
	if(servoWait == 0){

		display_scheduler &= ~lcd_display_servo_left;
		display_scheduler &= ~lcd_display_servo_right;
		display_scheduler |= lcd_display_servo_center;
		displayLCD();
		bark_save_servo_location(servo_location_center);

		servoPulses = 150;
		servoWait = 1;
		servo_wait_left = 0;
		servo_wait_right = 0;
		servo_wait_center = 1;
		servo_center_correction = 1; // Need to correct left
		GPIO_PinOutSet(SERVO_PWM_PORT, SERVO_PWM_PIN);
		leTimer0_enable(PERIOD, PULSE_WIDTH_CENTER);
	}
}

// Center turn is not precise and so needs slight adjustment
void servo_turn_center_right_correction(){
	if(servoWait == 0){

		servoPulses = 30;
		servoWait = 1;
		servo_wait_left = 0;
		servo_wait_right = 0;
		servo_center_correction = 0; // Done correcting
		GPIO_PinOutSet(SERVO_PWM_PORT, SERVO_PWM_PIN);
		leTimer0_enable(PERIOD, PULSE_WIDTH_CW);
	}
}

void turn_light_on(){
	GPIO_PinModeSet(LED_POWER_PORT, LED_POWER_PIN, gpioModePushPull, 1); //p5
	display_scheduler |= lcd_display_light_on;
	display_scheduler &= ~lcd_display_light_off;
	displayLCD();
}

void turn_light_off(){
	GPIO_PinOutClear(LED_POWER_PORT, LED_POWER_PIN);
	display_scheduler |= lcd_display_light_off;
	display_scheduler &= ~lcd_display_light_on;
	displayLCD();
}
