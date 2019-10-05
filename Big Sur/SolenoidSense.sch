EESchema Schematic File Version 4
LIBS:Big Sur-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 5
Title "Big Sur Actuation Board"
Date ""
Rev "A"
Comp "Paradigm Hyperloop"
Comment1 ""
Comment2 "x"
Comment3 "x"
Comment4 "Jasper Rubin"
$EndDescr
$Comp
L power:+3.3V #PWR046
U 1 1 5DA28059
P 2450 800
F 0 "#PWR046" H 2450 650 50  0001 C CNN
F 1 "+3.3V" H 2465 973 50  0000 C CNN
F 2 "" H 2450 800 50  0001 C CNN
F 3 "" H 2450 800 50  0001 C CNN
	1    2450 800 
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 900  2450 800 
$Comp
L power:GND #PWR052
U 1 1 5DA3AF60
P 2450 1700
F 0 "#PWR052" H 2450 1450 50  0001 C CNN
F 1 "GND" H 2455 1527 50  0000 C CNN
F 2 "" H 2450 1700 50  0001 C CNN
F 3 "" H 2450 1700 50  0001 C CNN
	1    2450 1700
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR048
U 1 1 5DA3EB08
P 4300 1050
F 0 "#PWR048" H 4300 900 50  0001 C CNN
F 1 "+3.3V" H 4315 1223 50  0000 C CNN
F 2 "" H 4300 1050 50  0001 C CNN
F 3 "" H 4300 1050 50  0001 C CNN
	1    4300 1050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR050
U 1 1 5DA3F02D
P 4300 1450
F 0 "#PWR050" H 4300 1200 50  0001 C CNN
F 1 "GND" H 4305 1277 50  0000 C CNN
F 2 "" H 4300 1450 50  0001 C CNN
F 3 "" H 4300 1450 50  0001 C CNN
	1    4300 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 1050 4300 1100
Wire Wire Line
	4300 1400 4300 1450
$Comp
L BigSurLib:ACS70331EOLCTR U4
U 1 1 5DA8B798
P 2450 1250
F 0 "U4" H 2600 1550 50  0000 C CNN
F 1 "ACS70331EOLCTR" H 2050 1550 50  0000 C CNN
F 2 "Big Sur:Allegro_SOIC_6.2x5.0mm_P1.27mm" H 2450 1350 50  0001 C CNN
F 3 "https://www.allegromicro.com/~/media/Files/Datasheets/ACS70331-Datasheet.ashx" H 2450 1350 50  0001 C CNN
	1    2450 1250
	1    0    0    -1  
$EndComp
Text GLabel 2950 1250 2    50   BiDi ~ 0
SOLENOID_CURRENT_SENSE_1
Wire Wire Line
	2950 1250 2850 1250
Text GLabel 1900 1400 0    50   BiDi ~ 0
SOLENOID_LS_CHANNEL_1_SENSE
Wire Wire Line
	1900 1100 2050 1100
Wire Wire Line
	1900 1400 2050 1400
Text GLabel 1900 1100 0    50   BiDi ~ 0
SOLENOID_LS_CHANNEL_1
$Comp
L power:+3.3V #PWR054
U 1 1 5DC16BB4
P 2450 2200
F 0 "#PWR054" H 2450 2050 50  0001 C CNN
F 1 "+3.3V" H 2465 2373 50  0000 C CNN
F 2 "" H 2450 2200 50  0001 C CNN
F 3 "" H 2450 2200 50  0001 C CNN
	1    2450 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 2300 2450 2200
$Comp
L power:GND #PWR060
U 1 1 5DC16BC0
P 2450 3100
F 0 "#PWR060" H 2450 2850 50  0001 C CNN
F 1 "GND" H 2455 2927 50  0000 C CNN
F 2 "" H 2450 3100 50  0001 C CNN
F 3 "" H 2450 3100 50  0001 C CNN
	1    2450 3100
	1    0    0    -1  
$EndComp
$Comp
L BigSurLib:ACS70331EOLCTR U6
U 1 1 5DC16BEA
P 2450 2650
F 0 "U6" H 2600 2950 50  0000 C CNN
F 1 "ACS70331EOLCTR" H 2050 2950 50  0000 C CNN
F 2 "Big Sur:Allegro_SOIC_6.2x5.0mm_P1.27mm" H 2450 2750 50  0001 C CNN
F 3 "https://www.allegromicro.com/~/media/Files/Datasheets/ACS70331-Datasheet.ashx" H 2450 2750 50  0001 C CNN
	1    2450 2650
	1    0    0    -1  
$EndComp
Text GLabel 2950 2650 2    50   BiDi ~ 0
SOLENOID_CURRENT_SENSE_2
Wire Wire Line
	2950 2650 2850 2650
Text GLabel 1900 2800 0    50   BiDi ~ 0
SOLENOID_LS_CHANNEL_2_SENSE
Wire Wire Line
	1900 2500 2050 2500
Wire Wire Line
	1900 2800 2050 2800
Text GLabel 1900 2500 0    50   BiDi ~ 0
SOLENOID_LS_CHANNEL_2
$Comp
L power:+3.3V #PWR062
U 1 1 5DC1B95D
P 2450 3600
F 0 "#PWR062" H 2450 3450 50  0001 C CNN
F 1 "+3.3V" H 2465 3773 50  0000 C CNN
F 2 "" H 2450 3600 50  0001 C CNN
F 3 "" H 2450 3600 50  0001 C CNN
	1    2450 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 3700 2450 3600
$Comp
L power:GND #PWR065
U 1 1 5DC1B969
P 2450 4500
F 0 "#PWR065" H 2450 4250 50  0001 C CNN
F 1 "GND" H 2455 4327 50  0000 C CNN
F 2 "" H 2450 4500 50  0001 C CNN
F 3 "" H 2450 4500 50  0001 C CNN
	1    2450 4500
	1    0    0    -1  
$EndComp
$Comp
L BigSurLib:ACS70331EOLCTR U8
U 1 1 5DC1B993
P 2450 4050
F 0 "U8" H 2600 4350 50  0000 C CNN
F 1 "ACS70331EOLCTR" H 2050 4350 50  0000 C CNN
F 2 "Big Sur:Allegro_SOIC_6.2x5.0mm_P1.27mm" H 2450 4150 50  0001 C CNN
F 3 "https://www.allegromicro.com/~/media/Files/Datasheets/ACS70331-Datasheet.ashx" H 2450 4150 50  0001 C CNN
	1    2450 4050
	1    0    0    -1  
$EndComp
Text GLabel 2950 4050 2    50   BiDi ~ 0
SOLENOID_CURRENT_SENSE_3
Wire Wire Line
	2950 4050 2850 4050
Text GLabel 1900 4200 0    50   BiDi ~ 0
SOLENOID_LS_CHANNEL_3_SENSE
Wire Wire Line
	1900 3900 2050 3900
Wire Wire Line
	1900 4200 2050 4200
Text GLabel 1900 3900 0    50   BiDi ~ 0
SOLENOID_LS_CHANNEL_3
$Comp
L power:+3.3V #PWR066
U 1 1 5DC1B9A8
P 2450 5000
F 0 "#PWR066" H 2450 4850 50  0001 C CNN
F 1 "+3.3V" H 2465 5173 50  0000 C CNN
F 2 "" H 2450 5000 50  0001 C CNN
F 3 "" H 2450 5000 50  0001 C CNN
	1    2450 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 5100 2450 5000
$Comp
L power:GND #PWR069
U 1 1 5DC1B9B4
P 2450 5900
F 0 "#PWR069" H 2450 5650 50  0001 C CNN
F 1 "GND" H 2455 5727 50  0000 C CNN
F 2 "" H 2450 5900 50  0001 C CNN
F 3 "" H 2450 5900 50  0001 C CNN
	1    2450 5900
	1    0    0    -1  
$EndComp
$Comp
L BigSurLib:ACS70331EOLCTR U9
U 1 1 5DC1B9DE
P 2450 5450
F 0 "U9" H 2600 5750 50  0000 C CNN
F 1 "ACS70331EOLCTR" H 2050 5750 50  0000 C CNN
F 2 "Big Sur:Allegro_SOIC_6.2x5.0mm_P1.27mm" H 2450 5550 50  0001 C CNN
F 3 "https://www.allegromicro.com/~/media/Files/Datasheets/ACS70331-Datasheet.ashx" H 2450 5550 50  0001 C CNN
	1    2450 5450
	1    0    0    -1  
$EndComp
Text GLabel 2950 5450 2    50   BiDi ~ 0
SOLENOID_CURRENT_SENSE_4
Wire Wire Line
	2950 5450 2850 5450
Text GLabel 1900 5600 0    50   BiDi ~ 0
SOLENOID_LS_CHANNEL_4_SENSE
Wire Wire Line
	1900 5300 2050 5300
Wire Wire Line
	1900 5600 2050 5600
Text GLabel 1900 5300 0    50   BiDi ~ 0
SOLENOID_LS_CHANNEL_4
$Comp
L power:+3.3V #PWR047
U 1 1 5DC2E2F5
P 7500 850
F 0 "#PWR047" H 7500 700 50  0001 C CNN
F 1 "+3.3V" H 7515 1023 50  0000 C CNN
F 2 "" H 7500 850 50  0001 C CNN
F 3 "" H 7500 850 50  0001 C CNN
	1    7500 850 
	1    0    0    -1  
$EndComp
Wire Wire Line
	7500 950  7500 850 
$Comp
L power:GND #PWR053
U 1 1 5DC2E301
P 7500 1750
F 0 "#PWR053" H 7500 1500 50  0001 C CNN
F 1 "GND" H 7505 1577 50  0000 C CNN
F 2 "" H 7500 1750 50  0001 C CNN
F 3 "" H 7500 1750 50  0001 C CNN
	1    7500 1750
	1    0    0    -1  
$EndComp
$Comp
L BigSurLib:ACS70331EOLCTR U5
U 1 1 5DC2E32B
P 7500 1300
F 0 "U5" H 7650 1600 50  0000 C CNN
F 1 "ACS70331EOLCTR" H 7100 1600 50  0000 C CNN
F 2 "Big Sur:Allegro_SOIC_6.2x5.0mm_P1.27mm" H 7500 1400 50  0001 C CNN
F 3 "https://www.allegromicro.com/~/media/Files/Datasheets/ACS70331-Datasheet.ashx" H 7500 1400 50  0001 C CNN
	1    7500 1300
	1    0    0    -1  
$EndComp
Text GLabel 8000 1300 2    50   BiDi ~ 0
SOLENOID_ECONOMIZED_CURRENT_SENSE_1
Wire Wire Line
	8000 1300 7900 1300
Text GLabel 6950 1450 0    50   BiDi ~ 0
SOLENOID_ECONOMIZED_CHANNEL_1_SENSE
Wire Wire Line
	6950 1150 7100 1150
Wire Wire Line
	6950 1450 7100 1450
Text GLabel 6950 1150 0    50   BiDi ~ 0
SOLENOID_ECONOMIZED_CHANNEL_1
$Comp
L power:+3.3V #PWR055
U 1 1 5DC2E340
P 7500 2300
F 0 "#PWR055" H 7500 2150 50  0001 C CNN
F 1 "+3.3V" H 7515 2473 50  0000 C CNN
F 2 "" H 7500 2300 50  0001 C CNN
F 3 "" H 7500 2300 50  0001 C CNN
	1    7500 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7500 2400 7500 2300
$Comp
L power:GND #PWR061
U 1 1 5DC2E34C
P 7500 3200
F 0 "#PWR061" H 7500 2950 50  0001 C CNN
F 1 "GND" H 7505 3027 50  0000 C CNN
F 2 "" H 7500 3200 50  0001 C CNN
F 3 "" H 7500 3200 50  0001 C CNN
	1    7500 3200
	1    0    0    -1  
$EndComp
$Comp
L BigSurLib:ACS70331EOLCTR U7
U 1 1 5DC2E376
P 7500 2750
F 0 "U7" H 7650 3050 50  0000 C CNN
F 1 "ACS70331EOLCTR" H 7100 3050 50  0000 C CNN
F 2 "Big Sur:Allegro_SOIC_6.2x5.0mm_P1.27mm" H 7500 2850 50  0001 C CNN
F 3 "https://www.allegromicro.com/~/media/Files/Datasheets/ACS70331-Datasheet.ashx" H 7500 2850 50  0001 C CNN
	1    7500 2750
	1    0    0    -1  
$EndComp
Text GLabel 8000 2750 2    50   BiDi ~ 0
SOLENOID_ECONOMIZED_CURRENT_SENSE_2
Wire Wire Line
	8000 2750 7900 2750
Wire Wire Line
	6950 2600 7100 2600
Wire Wire Line
	6950 2900 7100 2900
Text GLabel 6950 2600 0    50   BiDi ~ 0
SOLENOID_ECONOMIZED_CHANNEL_2
Wire Wire Line
	2450 1600 2450 1700
Wire Wire Line
	2450 3000 2450 3100
Wire Wire Line
	2850 1450 2950 1450
NoConn ~ 2950 1450
Wire Wire Line
	2450 4400 2450 4500
Wire Wire Line
	2450 5800 2450 5900
Wire Wire Line
	2850 2850 2950 2850
NoConn ~ 2950 2850
NoConn ~ 2950 4250
NoConn ~ 2950 5650
Wire Wire Line
	2850 5650 2950 5650
Wire Wire Line
	2850 4250 2950 4250
Wire Wire Line
	7500 1650 7500 1750
Wire Wire Line
	7900 1500 8000 1500
NoConn ~ 8000 1500
Wire Wire Line
	7500 3100 7500 3200
Wire Wire Line
	7900 2950 8000 2950
NoConn ~ 8000 2950
Text GLabel 6950 2900 0    50   BiDi ~ 0
SOLENOID_ECONOMIZED_CHANNEL_2_SENSE
$Comp
L Device:C C?
U 1 1 5D99FB16
P 4300 1250
AR Path="/5D6EB2B2/5D99FB16" Ref="C?"  Part="1" 
AR Path="/5D71C3EA/5D99FB16" Ref="C?"  Part="1" 
AR Path="/5D765C4F/5D99FB16" Ref="C16"  Part="1" 
F 0 "C16" H 4415 1296 50  0000 L CNN
F 1 "0.1uF" H 4415 1205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4300 1250 50  0001 C CNN
F 3 "http://www.samsungsem.com/kr/support/product-search/mlcc/__icsFiles/afieldfile/2019/06/18/CL10B104KB8NNNC-19.pdf" H 4300 1250 50  0001 C CNN
F 4 "CL10B104KB8NNNC" H 4300 1250 50  0001 C CNN "Part Number"
F 5 "https://www.digikey.ca/product-detail/en/samsung-electro-mechanics/CL10B104KB8NNNC/1276-1000-1-ND/3889086" H 4300 1250 50  0001 C CNN "Digikey"
	1    4300 1250
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR056
U 1 1 5D9B00B3
P 4300 2450
F 0 "#PWR056" H 4300 2300 50  0001 C CNN
F 1 "+3.3V" H 4315 2623 50  0000 C CNN
F 2 "" H 4300 2450 50  0001 C CNN
F 3 "" H 4300 2450 50  0001 C CNN
	1    4300 2450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR058
U 1 1 5D9B00B9
P 4300 2850
F 0 "#PWR058" H 4300 2600 50  0001 C CNN
F 1 "GND" H 4305 2677 50  0000 C CNN
F 2 "" H 4300 2850 50  0001 C CNN
F 3 "" H 4300 2850 50  0001 C CNN
	1    4300 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 2450 4300 2500
Wire Wire Line
	4300 2800 4300 2850
$Comp
L Device:C C?
U 1 1 5D9B00C3
P 4300 2650
AR Path="/5D6EB2B2/5D9B00C3" Ref="C?"  Part="1" 
AR Path="/5D71C3EA/5D9B00C3" Ref="C?"  Part="1" 
AR Path="/5D765C4F/5D9B00C3" Ref="C18"  Part="1" 
F 0 "C18" H 4415 2696 50  0000 L CNN
F 1 "0.1uF" H 4415 2605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4300 2650 50  0001 C CNN
F 3 "http://www.samsungsem.com/kr/support/product-search/mlcc/__icsFiles/afieldfile/2019/06/18/CL10B104KB8NNNC-19.pdf" H 4300 2650 50  0001 C CNN
F 4 "CL10B104KB8NNNC" H 4300 2650 50  0001 C CNN "Part Number"
F 5 "https://www.digikey.ca/product-detail/en/samsung-electro-mechanics/CL10B104KB8NNNC/1276-1000-1-ND/3889086" H 4300 2650 50  0001 C CNN "Digikey"
	1    4300 2650
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR063
U 1 1 5D9B13C2
P 4300 3850
F 0 "#PWR063" H 4300 3700 50  0001 C CNN
F 1 "+3.3V" H 4315 4023 50  0000 C CNN
F 2 "" H 4300 3850 50  0001 C CNN
F 3 "" H 4300 3850 50  0001 C CNN
	1    4300 3850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR064
U 1 1 5D9B13C8
P 4300 4250
F 0 "#PWR064" H 4300 4000 50  0001 C CNN
F 1 "GND" H 4305 4077 50  0000 C CNN
F 2 "" H 4300 4250 50  0001 C CNN
F 3 "" H 4300 4250 50  0001 C CNN
	1    4300 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 3850 4300 3900
Wire Wire Line
	4300 4200 4300 4250
$Comp
L Device:C C?
U 1 1 5D9B13D2
P 4300 4050
AR Path="/5D6EB2B2/5D9B13D2" Ref="C?"  Part="1" 
AR Path="/5D71C3EA/5D9B13D2" Ref="C?"  Part="1" 
AR Path="/5D765C4F/5D9B13D2" Ref="C20"  Part="1" 
F 0 "C20" H 4415 4096 50  0000 L CNN
F 1 "0.1uF" H 4415 4005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4300 4050 50  0001 C CNN
F 3 "http://www.samsungsem.com/kr/support/product-search/mlcc/__icsFiles/afieldfile/2019/06/18/CL10B104KB8NNNC-19.pdf" H 4300 4050 50  0001 C CNN
F 4 "CL10B104KB8NNNC" H 4300 4050 50  0001 C CNN "Part Number"
F 5 "https://www.digikey.ca/product-detail/en/samsung-electro-mechanics/CL10B104KB8NNNC/1276-1000-1-ND/3889086" H 4300 4050 50  0001 C CNN "Digikey"
	1    4300 4050
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR067
U 1 1 5D9B2921
P 4300 5250
F 0 "#PWR067" H 4300 5100 50  0001 C CNN
F 1 "+3.3V" H 4315 5423 50  0000 C CNN
F 2 "" H 4300 5250 50  0001 C CNN
F 3 "" H 4300 5250 50  0001 C CNN
	1    4300 5250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR068
U 1 1 5D9B2927
P 4300 5650
F 0 "#PWR068" H 4300 5400 50  0001 C CNN
F 1 "GND" H 4305 5477 50  0000 C CNN
F 2 "" H 4300 5650 50  0001 C CNN
F 3 "" H 4300 5650 50  0001 C CNN
	1    4300 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 5250 4300 5300
Wire Wire Line
	4300 5600 4300 5650
$Comp
L Device:C C?
U 1 1 5D9B2931
P 4300 5450
AR Path="/5D6EB2B2/5D9B2931" Ref="C?"  Part="1" 
AR Path="/5D71C3EA/5D9B2931" Ref="C?"  Part="1" 
AR Path="/5D765C4F/5D9B2931" Ref="C21"  Part="1" 
F 0 "C21" H 4415 5496 50  0000 L CNN
F 1 "0.1uF" H 4415 5405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4300 5450 50  0001 C CNN
F 3 "http://www.samsungsem.com/kr/support/product-search/mlcc/__icsFiles/afieldfile/2019/06/18/CL10B104KB8NNNC-19.pdf" H 4300 5450 50  0001 C CNN
F 4 "CL10B104KB8NNNC" H 4300 5450 50  0001 C CNN "Part Number"
F 5 "https://www.digikey.ca/product-detail/en/samsung-electro-mechanics/CL10B104KB8NNNC/1276-1000-1-ND/3889086" H 4300 5450 50  0001 C CNN "Digikey"
	1    4300 5450
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR049
U 1 1 5D9BC089
P 9950 1100
F 0 "#PWR049" H 9950 950 50  0001 C CNN
F 1 "+3.3V" H 9965 1273 50  0000 C CNN
F 2 "" H 9950 1100 50  0001 C CNN
F 3 "" H 9950 1100 50  0001 C CNN
	1    9950 1100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR051
U 1 1 5D9BC093
P 9950 1500
F 0 "#PWR051" H 9950 1250 50  0001 C CNN
F 1 "GND" H 9955 1327 50  0000 C CNN
F 2 "" H 9950 1500 50  0001 C CNN
F 3 "" H 9950 1500 50  0001 C CNN
	1    9950 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	9950 1100 9950 1150
Wire Wire Line
	9950 1450 9950 1500
$Comp
L Device:C C?
U 1 1 5D9BC0A1
P 9950 1300
AR Path="/5D6EB2B2/5D9BC0A1" Ref="C?"  Part="1" 
AR Path="/5D71C3EA/5D9BC0A1" Ref="C?"  Part="1" 
AR Path="/5D765C4F/5D9BC0A1" Ref="C17"  Part="1" 
F 0 "C17" H 10065 1346 50  0000 L CNN
F 1 "0.1uF" H 10065 1255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 9950 1300 50  0001 C CNN
F 3 "http://www.samsungsem.com/kr/support/product-search/mlcc/__icsFiles/afieldfile/2019/06/18/CL10B104KB8NNNC-19.pdf" H 9950 1300 50  0001 C CNN
F 4 "CL10B104KB8NNNC" H 9950 1300 50  0001 C CNN "Part Number"
F 5 "https://www.digikey.ca/product-detail/en/samsung-electro-mechanics/CL10B104KB8NNNC/1276-1000-1-ND/3889086" H 9950 1300 50  0001 C CNN "Digikey"
	1    9950 1300
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR057
U 1 1 5D9BC0AB
P 9950 2550
F 0 "#PWR057" H 9950 2400 50  0001 C CNN
F 1 "+3.3V" H 9965 2723 50  0000 C CNN
F 2 "" H 9950 2550 50  0001 C CNN
F 3 "" H 9950 2550 50  0001 C CNN
	1    9950 2550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR059
U 1 1 5D9BC0B5
P 9950 2950
F 0 "#PWR059" H 9950 2700 50  0001 C CNN
F 1 "GND" H 9955 2777 50  0000 C CNN
F 2 "" H 9950 2950 50  0001 C CNN
F 3 "" H 9950 2950 50  0001 C CNN
	1    9950 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	9950 2550 9950 2600
Wire Wire Line
	9950 2900 9950 2950
$Comp
L Device:C C?
U 1 1 5D9BC0C3
P 9950 2750
AR Path="/5D6EB2B2/5D9BC0C3" Ref="C?"  Part="1" 
AR Path="/5D71C3EA/5D9BC0C3" Ref="C?"  Part="1" 
AR Path="/5D765C4F/5D9BC0C3" Ref="C19"  Part="1" 
F 0 "C19" H 10065 2796 50  0000 L CNN
F 1 "0.1uF" H 10065 2705 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 9950 2750 50  0001 C CNN
F 3 "http://www.samsungsem.com/kr/support/product-search/mlcc/__icsFiles/afieldfile/2019/06/18/CL10B104KB8NNNC-19.pdf" H 9950 2750 50  0001 C CNN
F 4 "CL10B104KB8NNNC" H 9950 2750 50  0001 C CNN "Part Number"
F 5 "https://www.digikey.ca/product-detail/en/samsung-electro-mechanics/CL10B104KB8NNNC/1276-1000-1-ND/3889086" H 9950 2750 50  0001 C CNN "Digikey"
	1    9950 2750
	1    0    0    -1  
$EndComp
$EndSCHEMATC
