EESchema Schematic File Version 4
LIBS:Milpitas-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 6
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 2550 2350 1800 1100
U 5D5027B2
F0 "powerInput" 50
F1 "powerInput.sch" 50
F2 "HP_CTL" I R 4350 3350 50 
F3 "I_ADC_SDA" I R 4350 3250 50 
F4 "I_ADC_SCL" I R 4350 3150 50 
F5 "LowPowerRail" I R 4350 2650 50 
F6 "HighPowerRail" I R 4350 2550 50 
$EndSheet
Text Notes 2900 3000 0    118  ~ 24
INPUT STAGE
$Sheet
S 5050 2350 1800 1100
U 5D5053D4
F0 "conversionAndIsolation" 50
F1 "conversionAndIsolation.sch" 50
F2 "HighPowerRail" I L 5050 2550 50 
F3 "LowPowerRail" I L 5050 2650 50 
F4 "24V_OUTPUT" I R 6850 2550 50 
F5 "24V_MCU_CTL" I R 6850 3150 50 
F6 "12V_OUTPUT" I R 6850 2650 50 
F7 "12V_MCU_CTL" I R 6850 3250 50 
F8 "5V_OUTPUT" I R 6850 2750 50 
F9 "5V_MCU_CTL" I R 6850 3350 50 
$EndSheet
Text Notes 5400 3000 0    118  ~ 24
CONVERSION\n
$Sheet
S 7550 2350 1800 1100
U 5D5053DA
F0 "powerOutput" 50
F1 "powerOutput.sch" 50
$EndSheet
Text Notes 7800 3000 0    118  ~ 24
OUTPUT STAGE\n
$Sheet
S 7550 4000 1800 1100
U 5D5FABAB
F0 "paraduino" 50
F1 "paraduino.sch" 50
$EndSheet
Text Notes 7950 4650 0    118  ~ 24
PARADUINO\n
Wire Wire Line
	4350 2550 5050 2550
Wire Wire Line
	4350 2650 5050 2650
Wire Notes Line
	6000 3050 3600 3050
Wire Notes Line
	3600 3050 3600 3950
Text Notes 6100 2050 0    50   ~ 0
ISOLATION BARRIER
$Comp
L power:+5VP #PWR?
U 1 1 5DD759BA
P 3150 1650
F 0 "#PWR?" H 3150 1500 50  0001 C CNN
F 1 "+5VP" H 3165 1823 50  0000 C CNN
F 2 "" H 3150 1650 50  0001 C CNN
F 3 "" H 3150 1650 50  0001 C CNN
	1    3150 1650
	1    0    0    -1  
$EndComp
$Comp
L power:GNDS #PWR?
U 1 1 5DD75A22
P 3500 1500
F 0 "#PWR?" H 3500 1250 50  0001 C CNN
F 1 "GNDS" H 3505 1327 50  0000 C CNN
F 2 "" H 3500 1500 50  0001 C CNN
F 3 "" H 3500 1500 50  0001 C CNN
	1    3500 1500
	1    0    0    -1  
$EndComp
Wire Notes Line
	3000 1400 3000 1800
Wire Notes Line
	3000 1800 3650 1800
Wire Notes Line
	3650 1800 3650 1400
Wire Notes Line
	3650 1400 3000 1400
Text Notes 2850 1350 0    50   ~ 0
INPUT SIDE POWER FLAGS\n
Wire Notes Line
	6000 500  6000 3050
Wire Notes Line
	3600 3950 500  3950
$EndSCHEMATC
