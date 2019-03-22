/*
 * display.c
 *
 *  Created on: Apr 2, 2018
 *      Author: matt
 *
 */

#include "display_bark.h"


void display_initialize(){
	display_scheduler = 0;
	char *irrelevant = "hello";
	graphInit(irrelevant);
	GRAPHICS_Init();
	GRAPHICS_Clear();
}

void display_passkey(int passkey){

	GRAPHICS_Clear();
	char buffer[sizeof(int) * 4 + 1];
	char temp, temp2;
    sprintf(buffer, "%d", passkey);
/*    if(passkey < 100000){
    	temp = buffer[0];
    	buffer[0] = 0;
    	for(int i = 1; i < 6; i++){
    		temp2 = buffer[i];
    		buffer[i] = temp;
    		temp = temp2;
    	}
    }*/
	GRAPHICS_AppendString("Passkey: \n");
	GRAPHICS_AppendString(buffer);

	GRAPHICS_Update();
}
void displayLCD(){

	GRAPHICS_Clear();
	if((display_scheduler & lcd_display_name) == lcd_display_name){
		GRAPHICS_AppendString("B - luetooth\n");
		GRAPHICS_AppendString("A - anti\n");
		GRAPHICS_AppendString("R - obber\n");
		GRAPHICS_AppendString("K - it\n");
	}
	if((display_scheduler & lcd_display_disconnected) == lcd_display_disconnected){
		GRAPHICS_AppendString("Status\n");
		GRAPHICS_AppendString("   DisConnected\n");
	}
	if((display_scheduler & lcd_display_connected) == lcd_display_connected){
		GRAPHICS_AppendString("Status\n");
		GRAPHICS_AppendString("   Connected\n");
	}
	if((display_scheduler & lcd_display_servo_left) == lcd_display_servo_left){
		GRAPHICS_AppendString("Servo: Left\n");
	}
	if((display_scheduler & lcd_display_servo_right) == lcd_display_servo_right){
		GRAPHICS_AppendString("Servo: Right\n");
	}
	if((display_scheduler & lcd_display_servo_center) == lcd_display_servo_center){
		GRAPHICS_AppendString("Servo: Center\n");
	}
	if((display_scheduler & lcd_display_light_on) == lcd_display_light_on){
		GRAPHICS_AppendString("Light: On\n");
	}
	if((display_scheduler & lcd_display_light_off) == lcd_display_light_off){
		GRAPHICS_AppendString("Light: Off\n");
	}
	GRAPHICS_Update();

}
