/*
 * display_bark.h
 *
 *  Created on: Apr 2, 2018
 *      Author: mehdi
 */

#ifndef DISPLAY_BARK_H_
#define DISPLAY_BARK_H_

//***********************************************************************************
// Include files
//***********************************************************************************

#include "graphics.h"
#include "bg_types.h"
//***********************************************************************************
// Defines
//***********************************************************************************

#define lcd_display_name  0x1
#define lcd_display_disconnected 0x2
#define lcd_display_connected 0x4
#define lcd_display_light_on 0x8
#define lcd_display_light_off 0x10
#define lcd_display_servo_left 0x20
#define lcd_display_servo_right 0x40
#define lcd_display_servo_center 0x80


//***********************************************************************************
// Global Variables
//***********************************************************************************
uint32 display_scheduler;

//***********************************************************************************
// function prototypes
//***********************************************************************************

void display_initialize(void);
void display_disconnected(void);
void display_connected(void);
void display_light_on();
void display_light_off();
void displayLCD();


#endif /* DISPLAY_BARK_H_ */
