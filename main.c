#include "init_mcu.h"
#include "init_board.h"
#include "init_app.h"
#include "ble-configuration.h"
#include "board_features.h"

/* BG stack headers */
#include "bg_types.h"
//#include "ncp_gecko.h"
#include "native_gecko.h"
#include "gatt_db.h"
//#include "ncp_usart.h"
#include "em_core.h"

/* libraries containing default gecko configuration values */
#include "em_emu.h"
#include "em_cmu.h"

/* Device initialization header */
#include "hal-config.h"

#ifdef FEATURE_BOARD_DETECTED
#if defined(HAL_CONFIG)
#include "bsphalconfig.h"
#else
#include "bspconfig.h"
#endif // HAL_CONFIG
#endif // FEATURE_BOARD_DETECTED

//***********************************************************************************
// Include files
//***********************************************************************************
#include "em_gpio.h"
#include "em_adc.h"
//#include "graphics.h"
//#include "ncp_gecko.h"
#include "letimer.h"
#include "ble.h"
#include "display_bark.h"
#include "adc.h"
#include "servo.h"
#include "bark_flash.h"


//***********************************************************************************
// Global Variables
//***********************************************************************************

struct light_position lightPosition = {0};
struct light_power lightPower = {0};
struct intruder_detected intruderDetected = {0};
bool intruder_detected_overload_check = false;
bool adc_on = true;

struct gecko_msg_gatt_server_read_attribute_value_rsp_t* attribute;


#ifndef MAX_CONNECTIONS
#define MAX_CONNECTIONS 8
#endif
#ifndef MAX_ADVERTISERS
#define MAX_ADVERTISERS 2
#endif
uint8_t bluetooth_stack_heap[DEFAULT_BLUETOOTH_HEAP(MAX_CONNECTIONS)];

// Gecko configuration parameters (see gecko_configuration.h)
static const gecko_configuration_t config = {
  .config_flags = 0,
  .sleep.flags = SLEEP_FLAGS_DEEP_SLEEP_ENABLE,
  .bluetooth.max_connections = MAX_CONNECTIONS,
  .bluetooth.heap = bluetooth_stack_heap,
  .bluetooth.heap_size = sizeof(bluetooth_stack_heap),
  .bluetooth.sleep_clock_accuracy = 100, // ppm
  .gattdb = &bg_gattdb_data,
  .ota.flags = 0,
  .ota.device_name_len = 3,
  .ota.device_name_ptr = "OTA",
#if (HAL_PA_ENABLE) && defined(FEATURE_PA_HIGH_POWER)
  .pa.config_enable = 1, // Enable high power PA
  .pa.input = GECKO_RADIO_PA_INPUT_VBAT, // Configure PA input to VBAT
#endif // (HAL_PA_ENABLE) && defined(FEATURE_PA_HIGH_POWER)
};


void main(void)
{
	uint8 activeConnectionId;
	// Initialize device
	initMcu();
	// Initialize board
	initBoard();
	// Initialize application
	initApp();

	// Initialize stack
	gecko_init(&config);

	// NCP USART init
	//ncp_usart_init();

	CMU_OscillatorEnable(cmuOsc_HFXO, true, true);
	CMU_ClockEnable(cmuClock_GPIO, true);

	cmu_setup();
	servo_setup();



	adc_init();
	adc_enable();

	uint32 adc_sensor_port[15];
	uint32 adc_sensor_value[15];
	uint8 adc_sensor_index = 0;

	uint32 result;
	uint8 resultsIndex = 0;
	uint32 results[15];

	gecko_cmd_hardware_set_soft_timer(0, 3, 0); // This timer is on for some reason. Manually turn off

	// Start timer for ADC, 200ms seconds, 1 ms slack
	gecko_cmd_hardware_set_lazy_soft_timer(32768 / 5, 32768 / 1000, 1, 0);


	display_initialize();
	display_scheduler |= lcd_display_name;
	display_scheduler |= lcd_display_disconnected;
	display_scheduler |= lcd_display_light_off;

	// Load last known location of servo from persistent memory and update LCD
	uint8 last_location = bark_load_servo_location();
	lightPosition.position = last_location;
	if(last_location == servo_location_left){
		display_scheduler |= lcd_display_servo_left;
		display_scheduler &= ~lcd_display_servo_right;
		display_scheduler &= ~lcd_display_servo_center;
		servo_wait_left = 1;
		servo_wait_right = 0;
		servo_wait_center = 0;
	}else if(last_location == servo_location_right){
		display_scheduler &= ~lcd_display_servo_left;
		display_scheduler |= lcd_display_servo_right;
		display_scheduler &= ~lcd_display_servo_center;
		servo_wait_left = 0;
		servo_wait_right = 1;
		servo_wait_center = 0;
	}else if(last_location == servo_location_center){
		display_scheduler &= ~lcd_display_servo_left;
		display_scheduler &= ~lcd_display_servo_right;
		display_scheduler |= lcd_display_servo_center;
		servo_wait_left = 0;
		servo_wait_right = 0;
		servo_wait_center = 1;
	}
	displayLCD();

	while(1){
	 /* Event pointer for handling events */
	     struct gecko_cmd_packet* evt;

	     /* Check for stack event. */
	     evt = gecko_wait_event();

	     /* Handle events */
	     switch (BGLIB_MSG_ID(evt->header)) {
			/* This boot event is generated when the system boots up after reset.
			* Do not call any stack commands before receiving the boot event.
			* Here the system is set to start advertising immediately after boot procedure. */
			case gecko_evt_system_boot_id:
				gecko_cmd_sm_delete_bondings();

				gecko_cmd_sm_configure(0x0F, sm_io_capability_displayonly); /* Numeric comparison */


				/* enable bondable to accommodate certain mobile OS */

				gecko_cmd_sm_set_bondable_mode(1);


			 /* Set advertising parameters. 100ms advertisement interval. All channels used.
			  * The first two parameters are minimum and maximum advertising interval, both in
			  * units of (milliseconds * 1.6). The third parameter '7' sets advertising on all channels. */
			 gecko_cmd_le_gap_set_adv_parameters(539, 539, 7);

			 /* Start general advertising and enable connections. */
			 gecko_cmd_le_gap_set_mode(le_gap_general_discoverable, le_gap_undirected_connectable);

			  // Start timer for light, 5 seconds, 10 ms slack
	          gecko_cmd_hardware_set_lazy_soft_timer(32768 * 5, 32768 / 100, 0, 0);

			 break;

			// Get Connection id
			case gecko_evt_le_connection_opened_id:
				  activeConnectionId = evt->data.evt_le_connection_opened.connection;

				 //  The HTM service typically indicates and indications cannot be given an encrypted property so

				   // force encryption immediately after connecting

					// Time = Value x 1.25 ms
				  gecko_cmd_le_connection_set_parameters(activeConnectionId, 61, 61, 5, 150);

			//	  gecko_cmd_sm_increase_security(activeConnectionId);

					display_scheduler &= ~lcd_display_disconnected;
					display_scheduler |= lcd_display_connected;
					displayLCD();

				  // Disable sensors while bonding
				  NVIC_DisableIRQ(ADC0_IRQn);
				  ADC0->IFC = 0xffffffff;


			   break;

			case gecko_evt_sm_bonded_id:
				// Enable sensor after bonding
				NVIC_EnableIRQ(ADC0_IRQn);
				  // Start timer for light/LCD, 5 seconds, 10 ms slack
		          gecko_cmd_hardware_set_lazy_soft_timer(32768 * 5, 32768 / 100 , 0, 0);
					display_scheduler &= ~lcd_display_disconnected;
					display_scheduler |= lcd_display_connected;
					displayLCD();
				break;
			case gecko_evt_sm_passkey_display_id:
				// Stop timer for light, 5 seconds, 10 ms slack
		        gecko_cmd_hardware_set_lazy_soft_timer(0,0, 0, 0);
				DMD_wakeUp();
				display_passkey(evt->data.evt_sm_passkey_display.passkey);
			    break;

			case gecko_evt_sm_bonding_failed_id:
				display_scheduler |= lcd_display_disconnected;
				display_scheduler &= ~lcd_display_connected;
				displayLCD();
				gecko_cmd_le_connection_close(activeConnectionId);
				NVIC_EnableIRQ(ADC0_IRQn);
				break;
			// Non-bluetooth interrupt
			case gecko_evt_system_external_signal_id:
				if(evt->data.evt_system_external_signal.extsignals == 1){ // Turn off power to servo PWM pin
					GPIO_PinOutClear(SERVO_PWM_PORT, SERVO_PWM_PIN);
					if(servo_center_correction == 1){
					  servo_turn_center_right_correction();
					}
				}
				// This event handles which IR sensor was triggered
				if(evt->data.evt_system_external_signal.extsignals == 3){
				  turn_light_on();
				  DMD_wakeUp(); // Wake up LCD
				  results[resultsIndex] = (ADC0->SCANDATAX);
				  adc_sensor_port[adc_sensor_index] = (results[resultsIndex] & 0xffff0000) >> 16;
				  adc_sensor_value[adc_sensor_index] = (results[resultsIndex] & 0xffff);
				  adc_sensor_index++;
				  resultsIndex++;
				  results[resultsIndex] = (ADC0->SCANDATAX);
				  adc_sensor_port[adc_sensor_index] = (results[resultsIndex] & 0xffff0000) >> 16;
				  adc_sensor_value[adc_sensor_index] = (results[resultsIndex] & 0xffff);

				  adc_sensor_index++;
				  resultsIndex++;
				  results[resultsIndex] = (ADC0->SCANDATAX);
				  adc_sensor_port[adc_sensor_index] = (results[resultsIndex] & 0xffff0000) >> 16;
				  adc_sensor_value[adc_sensor_index] = (results[resultsIndex] & 0xffff);

				  adc_sensor_index++;
				  resultsIndex++;
				  results[resultsIndex] = (ADC0->SCANDATAX);
				  adc_sensor_port[adc_sensor_index] = (results[resultsIndex] & 0xffff0000) >> 16;
				  adc_sensor_value[adc_sensor_index] = (results[resultsIndex] & 0xffff);

				  // The sensor which had the max value is the one that tripped
				  int maxVal = 0;
				  uint8_t maxIndex = 0;
				  for(int j = 0; j < 4; j++)
				  {
					  if(adc_sensor_value[j] > maxVal)
					  {
						  maxVal = adc_sensor_value[j];
						  maxIndex = j;
					  }
				  }
				  if(adc_sensor_port[maxIndex] == 4)
				  {
					  servo_turn_left();
					  intruderDetected.detected = 1;
					  lightPosition.position = servo_location_left;

					  if (intruder_detected_overload_check == false){ // Don't overload the app with notification
						  gecko_cmd_gatt_server_send_characteristic_notification(activeConnectionId, gattdb_intruder_detected,
													 sizeof(struct intruder_detected), (uint8*)&intruderDetected);

						  intruder_detected_overload_check = true;
					  }
				  }
				  else if(adc_sensor_port[maxIndex] == 6)
				  {
					  servo_turn_right();
					  intruderDetected.detected = 1;
					  lightPosition.position = servo_location_right;

					  if (intruder_detected_overload_check == false){ // Don't overload the app with notification
						  gecko_cmd_gatt_server_send_characteristic_notification(activeConnectionId, gattdb_intruder_detected,
													 sizeof(struct intruder_detected), (uint8*)&intruderDetected);

						  intruder_detected_overload_check = true;
					  }

				  }
				  adc_sensor_index = 0;
				  resultsIndex =0;


				  ADC0->SCANFIFOCLEAR = 1;
				  ADC0->IEN = ADC_IEN_SCANCMP;
				  ADC_Start(ADC0, adcStartScan);
				  // Start timer to turn off light/LCD after 5 seconds, 10 ms slack
		          gecko_cmd_hardware_set_lazy_soft_timer(32768 * 5, 32768 / 100, 0, 0);
				}


			   break;

			case gecko_evt_hardware_soft_timer_id:
		        if(evt->data.evt_hardware_soft_timer.handle == 0){    // Light off handle
		        	turn_light_off();
		        	intruderDetected.detected = 0;
		        	if (intruder_detected_overload_check == true){ // Don't overload the app with notification
					    gecko_cmd_gatt_server_send_characteristic_notification(0xFF, gattdb_intruder_detected,
												 sizeof(struct intruder_detected), (uint8*)&intruderDetected);
		        		intruder_detected_overload_check = false;
		        	}
		        	DMD_sleep(); // Put LCD to sleep
			        gecko_cmd_hardware_set_lazy_soft_timer(0,0, 0, 0);
		        }
		        if(evt->data.evt_hardware_soft_timer.handle == 1){ // ADC on handle
		        	gecko_cmd_hardware_set_lazy_soft_timer(32768/100,32768/200, 2, 1);
			        adc_init();
			        adc_enable();
		        }
		        if(evt->data.evt_hardware_soft_timer.handle == 2){ // ADC off handle
		        	adc_disable();
		        }
			break;

			// RSSI data ready
			case gecko_evt_le_connection_rssi_id:
			   break;
			/* This event is generated when a connected client has either
			* 1) changed a Characteristic Client Configuration, meaning that they have enabled
			* or disabled Notifications or Indications, or
			* 2) sent a confirmation upon a successful reception of the indication. */
			case gecko_evt_gatt_server_characteristic_status_id:
			break;

			case gecko_evt_le_connection_closed_id:
				/* Start general advertising and enable connections. */
				gecko_cmd_le_gap_set_mode(le_gap_general_discoverable, le_gap_undirected_connectable);
				display_scheduler |= lcd_display_disconnected;
				display_scheduler &= ~lcd_display_connected;
				displayLCD();
				break;

			// Receive commands from Client
			case gecko_evt_gatt_server_attribute_value_id:
				  DMD_wakeUp(); // Wake up LCD
				if(evt->data.evt_gatt_server_user_write_request.characteristic == gattdb_light_position){
					attribute = gecko_cmd_gatt_server_read_attribute_value(gattdb_light_position,0);
					lightPosition.position = attribute->value.data[0];
					if(lightPosition.position == servo_location_left){
						servo_turn_left();
					}else if (lightPosition.position == servo_location_right){
						servo_turn_right();
					}else if (lightPosition.position == servo_location_center){
						servo_turn_center();
					}
				}

				if(evt->data.evt_gatt_server_user_write_request.characteristic == gattdb_light_power){
					attribute = gecko_cmd_gatt_server_read_attribute_value(gattdb_light_power,0);
					lightPower.power = attribute->value.data[0];
					if(lightPower.power == 0){
						turn_light_off();
					}else if(lightPower.power == 1){
						turn_light_on();
					}
				}
				break;

			default:
			 break;
	   }
	}
}

/** @} (end addtogroup app) */
/** @} (end addtogroup Application) */
