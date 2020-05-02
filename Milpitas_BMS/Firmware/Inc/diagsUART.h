#include "string.h"
#include "stm32f3xx_hal.h"

typedef struct
{

	void (* printLine)(UART_HandleTypeDef *huart, char _out[]);


}diagsPort;
