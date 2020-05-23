/*
 * diags_UART.h
 *
 *  Created on: May 17, 2020
 *      Author: frwalsh
 */

#ifndef DIAGS_UART_H_
#define DIAGS_UART_H_

#include "stm32f3xx_hal.h"
#include "string.h"

UART_HandleTypeDef *UART_Port;

void diagsUARTInit(UART_HandleTypeDef *huart);
void debugToggleLED(GPIO_TypeDef* GPIOx, uint16_t GPIO_Pin);
void debugPrintLine(char _out[]);


#endif /* DIAGS_UART_H_ */
