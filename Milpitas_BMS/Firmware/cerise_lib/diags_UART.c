/*
 * diags_UART.c
 *
 *  Created on: May 17, 2020
 *      Author: frwalsh
 */


#include "diags_UART.h"

void diagsUARTInit(UART_HandleTypeDef *huart)
{
	UART_Port = huart;
}

void debugToggleLED(GPIO_TypeDef* GPIOx, uint16_t GPIO_Pin)
{
	HAL_GPIO_TogglePin(GPIOx, GPIO_Pin);
}

void debugPrintLine(char _out[])
{
	HAL_UART_Transmit(UART_Port, (uint8_t*) _out, strlen(_out), 10);
	char newLine[2] = "\r\n";
	HAL_UART_Transmit(UART_Port, (uint8_t*) newLine, 2, 10);
}
