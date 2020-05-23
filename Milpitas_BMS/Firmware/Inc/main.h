/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.h
  * @brief          : Header for main.c file.
  *                   This file contains the common defines of the application.
  ******************************************************************************
  * @attention
  *
  * <h2><center>&copy; Copyright (c) 2020 STMicroelectronics.
  * All rights reserved.</center></h2>
  *
  * This software component is licensed by ST under BSD 3-Clause license,
  * the "License"; You may not use this file except in compliance with the
  * License. You may obtain a copy of the License at:
  *                        opensource.org/licenses/BSD-3-Clause
  *
  ******************************************************************************
  */
/* USER CODE END Header */

/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __MAIN_H
#define __MAIN_H

#ifdef __cplusplus
extern "C" {
#endif

/* Includes ------------------------------------------------------------------*/
#include "stm32f3xx_hal.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */
#include "diags_UART.h"
#include "BQ79606A.h"
/* USER CODE END Includes */

/* Exported types ------------------------------------------------------------*/
/* USER CODE BEGIN ET */

/* USER CODE END ET */

/* Exported constants --------------------------------------------------------*/
/* USER CODE BEGIN EC */

/* USER CODE END EC */

/* Exported macro ------------------------------------------------------------*/
/* USER CODE BEGIN EM */

/* USER CODE END EM */

/* Exported functions prototypes ---------------------------------------------*/
void Error_Handler(void);

/* USER CODE BEGIN EFP */

/* USER CODE END EFP */

/* Private defines -----------------------------------------------------------*/
#define I_CHG_Pin GPIO_PIN_0
#define I_CHG_GPIO_Port GPIOC
#define V_CHG_Pin GPIO_PIN_1
#define V_CHG_GPIO_Port GPIOC
#define I_DIS_Pin GPIO_PIN_0
#define I_DIS_GPIO_Port GPIOA
#define V_DIS_Pin GPIO_PIN_1
#define V_DIS_GPIO_Port GPIOA
#define I_BATT_Pin GPIO_PIN_2
#define I_BATT_GPIO_Port GPIOA
#define V_BATT_Pin GPIO_PIN_3
#define V_BATT_GPIO_Port GPIOA
#define DIAGS_P_Pin GPIO_PIN_4
#define DIAGS_P_GPIO_Port GPIOC
#define DIAGS_N_Pin GPIO_PIN_5
#define DIAGS_N_GPIO_Port GPIOC
#define USER_BUTTON_Pin GPIO_PIN_0
#define USER_BUTTON_GPIO_Port GPIOB
#define BMS_WAKE_N_Pin GPIO_PIN_1
#define BMS_WAKE_N_GPIO_Port GPIOB
#define BMS_UART_N_Pin GPIO_PIN_10
#define BMS_UART_N_GPIO_Port GPIOB
#define BMS_UART_P_Pin GPIO_PIN_11
#define BMS_UART_P_GPIO_Port GPIOB
#define BATT_LED_Pin GPIO_PIN_8
#define BATT_LED_GPIO_Port GPIOC
#define CHG_LED_Pin GPIO_PIN_9
#define CHG_LED_GPIO_Port GPIOC
#define DIS_LED_Pin GPIO_PIN_8
#define DIS_LED_GPIO_Port GPIOA
#define SM0_LED_Pin GPIO_PIN_9
#define SM0_LED_GPIO_Port GPIOA
#define SM1_OUTPUT_Pin GPIO_PIN_10
#define SM1_OUTPUT_GPIO_Port GPIOA
#define BATT_ON_Pin GPIO_PIN_10
#define BATT_ON_GPIO_Port GPIOC
#define BATT_FAULT_Pin GPIO_PIN_11
#define BATT_FAULT_GPIO_Port GPIOC
#define DIS_ON_Pin GPIO_PIN_12
#define DIS_ON_GPIO_Port GPIOC
#define DIS_FAULT_Pin GPIO_PIN_2
#define DIS_FAULT_GPIO_Port GPIOD
#define CHG_ON_Pin GPIO_PIN_5
#define CHG_ON_GPIO_Port GPIOB
#define CHG_FAULT_Pin GPIO_PIN_6
#define CHG_FAULT_GPIO_Port GPIOB
/* USER CODE BEGIN Private defines */

/* USER CODE END Private defines */

#ifdef __cplusplus
}
#endif

#endif /* __MAIN_H */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
