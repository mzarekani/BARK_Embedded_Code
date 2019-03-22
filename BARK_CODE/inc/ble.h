/*
 * ble.h
 *
 *  Created on: Mar 31, 2018
 *      Author: matt
 */

#ifndef BLE_H_
#define BLE_H_

//***********************************************************************************
// Include Files
//***********************************************************************************

//#include "ncp_gecko.h"
#include "native_gecko.h"

//***********************************************************************************
// Global Variables
//***********************************************************************************

PACKSTRUCT (struct light_position
{
    uint8               position;
});

PACKSTRUCT (struct light_power
{
    uint8               power;
});

PACKSTRUCT (struct intruder_detected
{
    uint8               detected;
});

#endif /* BLE_H_ */
