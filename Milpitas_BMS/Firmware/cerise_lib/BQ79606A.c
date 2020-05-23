/*
 * BQ79606A.c
 *
 *  Created on: May 17, 2020
 *      Author: frwalsh
 */

#include "BQ79606A.h"

void initBQ79606A(UART_HandleTypeDef *huart)
{
	BQ_UART_Port = huart;
}


