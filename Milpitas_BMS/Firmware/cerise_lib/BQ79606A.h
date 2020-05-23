/*
 * BQ79606A.h
 *
 *  Created on: May 17, 2020
 *      Author: frwalsh
 */

#ifndef BQ79606A_H_
#define BQ79606A_H_


#include "stm32f3xx_hal.h"

UART_HandleTypeDef *BQ_UART_Port;

void initBQ79606A(UART_HandleTypeDef *huart);
void UARTCommsReset();
char* UARTSingleDeviceRead();

#endif /* BQ79606A_H_ */
