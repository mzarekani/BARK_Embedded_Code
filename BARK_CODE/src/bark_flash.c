/*
 * bark_flash.c
 *
 *  Created on: Apr 2, 2018
 *      Author: matt
 */

#include "bark_flash.h"

void bark_save_servo_location(uint8 location){
	gecko_cmd_flash_ps_save(0x4000, 1, (uint8*)&location);
}

uint8 bark_load_servo_location(){
	struct gecko_msg_flash_ps_load_rsp_t *load_result;
	load_result = gecko_cmd_flash_ps_load(0x4000);
	uint8 mem_result = load_result->value.data[0];
	if(mem_result == ps_key_not_found){
		servo_turn_center();
		bark_save_servo_location(servo_location_center);
		return servo_location_center;
	}else{
		return mem_result;
	}
}
