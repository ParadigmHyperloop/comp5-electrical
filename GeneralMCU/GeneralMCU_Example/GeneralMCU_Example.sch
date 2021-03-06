EESchema Schematic File Version 4
LIBS:GeneralMCU_Example-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Label 5020 2610 0    50   ~ 0
PA4
Wire Wire Line
	5020 2610 5230 2610
Text Label 5020 2710 0    50   ~ 0
PA5
Wire Wire Line
	5020 2710 5230 2710
Text Label 5020 2810 0    50   ~ 0
PA6
Wire Wire Line
	5020 2810 5230 2810
Text Label 5020 2910 0    50   ~ 0
PA7
Wire Wire Line
	5020 2910 5230 2910
Text Label 5020 3110 0    50   ~ 0
PC5
Wire Wire Line
	5020 3110 5230 3110
Text Label 5020 3010 0    50   ~ 0
PC4
Wire Wire Line
	5020 3010 5230 3010
Text Label 5020 3210 0    50   ~ 0
PB0
Wire Wire Line
	5230 3210 5020 3210
Text Label 5020 3610 0    50   ~ 0
PB1
Wire Wire Line
	5230 3310 5020 3310
Text Label 5020 3510 0    50   ~ 0
PB2
Wire Wire Line
	5230 3410 5020 3410
Text Label 5020 3410 0    50   ~ 0
PB10
Wire Wire Line
	5230 3510 5020 3510
Text Label 5020 3310 0    50   ~ 0
PB11
Wire Wire Line
	5230 3610 5020 3610
Text Label 5020 3710 0    50   ~ 0
PB12
Wire Wire Line
	5230 3710 5020 3710
Text Label 5020 3810 0    50   ~ 0
PB13
Wire Wire Line
	5230 3810 5020 3810
Text Label 5020 3910 0    50   ~ 0
PB14
Wire Wire Line
	5230 3910 5020 3910
Wire Wire Line
	5230 4210 4980 4210
Text Label 4980 4110 0    39   ~ 0
CANH
Text Label 4980 4010 0    39   ~ 0
CANL
Wire Wire Line
	4980 4110 5230 4110
Wire Wire Line
	4980 4010 5230 4010
Text Label 4980 4210 0    30   ~ 0
CAN_Shield
Wire Wire Line
	4830 2310 4830 2400
Wire Wire Line
	4830 2310 5230 2310
Wire Wire Line
	6520 3110 6230 3110
Wire Wire Line
	6230 3010 6520 3010
Text Label 6520 3110 2    39   ~ 0
I2C1_SCL
Text Label 6520 3010 2    39   ~ 0
I2C1_SDA
Wire Wire Line
	6440 3410 6230 3410
Text Label 6440 3410 2    50   ~ 0
PC10
Wire Wire Line
	6440 3310 6230 3310
Text Label 6440 3310 2    50   ~ 0
PC11
Wire Wire Line
	6440 3210 6230 3210
Text Label 6440 3210 2    50   ~ 0
PC12
Wire Wire Line
	6230 4210 6440 4210
Text Label 6440 4210 2    50   ~ 0
PA10
Wire Wire Line
	6230 2310 6440 2310
Text Label 6440 2310 2    50   ~ 0
PA2
Wire Wire Line
	6230 2410 6440 2410
Text Label 6440 2410 2    50   ~ 0
PA1
Wire Wire Line
	6230 2510 6440 2510
Text Label 6440 2510 2    50   ~ 0
PA0
Wire Wire Line
	6230 2910 6440 2910
Text Label 6440 2910 2    50   ~ 0
PC0
Wire Wire Line
	6440 2810 6230 2810
Text Label 6440 2810 2    50   ~ 0
PC1
Wire Wire Line
	6440 2710 6230 2710
Text Label 6440 2710 2    50   ~ 0
PC2
Wire Wire Line
	6440 2610 6230 2610
Text Label 6440 2610 2    50   ~ 0
PC3
Wire Wire Line
	6230 4110 6440 4110
Text Label 6440 4110 2    50   ~ 0
PA9
Wire Wire Line
	6230 4010 6440 4010
Text Label 6440 4010 2    50   ~ 0
PA8
Wire Wire Line
	6440 3610 6230 3610
Text Label 6440 3610 2    50   ~ 0
PC6
Wire Wire Line
	6440 3710 6230 3710
Text Label 6440 3710 2    50   ~ 0
PC7
Wire Wire Line
	6440 3810 6230 3810
Text Label 6440 3810 2    50   ~ 0
PC8
Wire Wire Line
	6440 3910 6230 3910
Text Label 6440 3910 2    50   ~ 0
PC9
Wire Wire Line
	6230 3510 6440 3510
Text Label 6440 3510 2    50   ~ 0
PB15
$Comp
L GeneralMCU-Example:SMD46 U1
U 1 1 5DA3B5F1
P 5730 3110
F 0 "U1" H 5730 4135 50  0000 C CNN
F 1 "SMD46" H 5730 4044 50  0000 C CNN
F 2 "GeneralMCU_Example:SMD42-FTP" H 5730 3110 50  0001 C CNN
F 3 "" H 5730 3110 50  0001 C CNN
	1    5730 3110
	1    0    0    -1  
$EndComp
NoConn ~ 6230 4510
NoConn ~ 5230 4510
$Comp
L power:GND #PWR0101
U 1 1 5DA42B5F
P 4830 2400
F 0 "#PWR0101" H 4830 2150 50  0001 C CNN
F 1 "GND" H 4835 2227 50  0000 C CNN
F 2 "" H 4830 2400 50  0001 C CNN
F 3 "" H 4830 2400 50  0001 C CNN
	1    4830 2400
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0102
U 1 1 5DA44F15
P 5230 2410
F 0 "#PWR0102" H 5230 2260 50  0001 C CNN
F 1 "+5V" V 5245 2538 50  0000 L CNN
F 2 "" H 5230 2410 50  0001 C CNN
F 3 "" H 5230 2410 50  0001 C CNN
	1    5230 2410
	0    -1   -1   0   
$EndComp
$Comp
L power:+3V3 #PWR0103
U 1 1 5DA45501
P 5230 2510
F 0 "#PWR0103" H 5230 2360 50  0001 C CNN
F 1 "+3V3" V 5245 2638 50  0000 L CNN
F 2 "" H 5230 2510 50  0001 C CNN
F 3 "" H 5230 2510 50  0001 C CNN
	1    5230 2510
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 5DA46D68
P 5230 4410
F 0 "#PWR0104" H 5230 4160 50  0001 C CNN
F 1 "GND" V 5235 4282 50  0000 R CNN
F 2 "" H 5230 4410 50  0001 C CNN
F 3 "" H 5230 4410 50  0001 C CNN
	1    5230 4410
	0    1    1    0   
$EndComp
$Comp
L u104_KICAD_pwr:CHASSIS #PWR0105
U 1 1 5DA47970
P 5230 4310
F 0 "#PWR0105" H 5230 4310 10  0001 C CNN
F 1 "CHASSIS" V 5220 3870 50  0000 L CNN
F 2 "" H 5230 4260 50  0000 C CNN
F 3 "" H 5230 4260 50  0000 C CNN
	1    5230 4310
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 5DA489C3
P 6230 4410
F 0 "#PWR0106" H 6230 4160 50  0001 C CNN
F 1 "GND" V 6235 4282 50  0000 R CNN
F 2 "" H 6230 4410 50  0001 C CNN
F 3 "" H 6230 4410 50  0001 C CNN
	1    6230 4410
	0    -1   -1   0   
$EndComp
$Comp
L u104_KICAD_pwr:+V #PWR0107
U 1 1 5DA49332
P 6230 4310
F 0 "#PWR0107" H 6230 4310 10  0001 C CNN
F 1 "+V" V 6230 4482 40  0000 L CNN
F 2 "" H 6230 4310 60  0000 C CNN
F 3 "" H 6230 4310 60  0000 C CNN
	1    6230 4310
	0    1    1    0   
$EndComp
$EndSCHEMATC
