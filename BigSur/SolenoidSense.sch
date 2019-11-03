EESchema Schematic File Version 4
LIBS:BigSur-cache
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
L power:+3.3V #PWR081
U 1 1 5DA28059
P 2500 800
F 0 "#PWR081" H 2500 650 50  0001 C CNN
F 1 "+3.3V" H 2515 973 50  0000 C CNN
F 2 "" H 2500 800 50  0001 C CNN
F 3 "" H 2500 800 50  0001 C CNN
	1    2500 800 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR087
U 1 1 5DA3AF60
P 2300 1700
F 0 "#PWR087" H 2300 1450 50  0001 C CNN
F 1 "GND" H 2305 1527 50  0000 C CNN
F 2 "" H 2300 1700 50  0001 C CNN
F 3 "" H 2300 1700 50  0001 C CNN
	1    2300 1700
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR083
U 1 1 5DA3EB08
P 4800 1050
F 0 "#PWR083" H 4800 900 50  0001 C CNN
F 1 "+3.3V" H 4815 1223 50  0000 C CNN
F 2 "" H 4800 1050 50  0001 C CNN
F 3 "" H 4800 1050 50  0001 C CNN
	1    4800 1050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR085
U 1 1 5DA3F02D
P 4800 1450
F 0 "#PWR085" H 4800 1200 50  0001 C CNN
F 1 "GND" H 4805 1277 50  0000 C CNN
F 2 "" H 4800 1450 50  0001 C CNN
F 3 "" H 4800 1450 50  0001 C CNN
	1    4800 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 1050 4800 1100
Wire Wire Line
	4800 1400 4800 1450
Text GLabel 3500 1250 2    50   BiDi ~ 0
SOLENOID_CURRENT_SENSE_1
Wire Wire Line
	3100 1250 3050 1250
Text GLabel 1850 1100 0    50   BiDi ~ 0
SOLENOID_LS_CHANNEL_1_SENSE
Wire Wire Line
	1850 1100 1950 1100
Text GLabel 1850 1400 0    50   BiDi ~ 0
SOLENOID_LS_CHANNEL_1
Text GLabel 8700 1250 2    50   BiDi ~ 0
SOLENOID_ECONOMIZED_CURRENT_SENSE_1
Text GLabel 7050 1100 0    50   BiDi ~ 0
SOLENOID_ECONOMIZED_CHANNEL_1_SENSE
Text GLabel 7050 1400 0    50   BiDi ~ 0
SOLENOID_ECONOMIZED_CHANNEL_1
Wire Wire Line
	2300 1600 2300 1650
Wire Wire Line
	3050 1450 3150 1450
NoConn ~ 3150 1450
$Comp
L Device:C C?
U 1 1 5D99FB16
P 4800 1250
AR Path="/5D6EB2B2/5D99FB16" Ref="C?"  Part="1" 
AR Path="/5D71C3EA/5D99FB16" Ref="C?"  Part="1" 
AR Path="/5D765C4F/5D99FB16" Ref="C20"  Part="1" 
F 0 "C20" H 4915 1296 50  0000 L CNN
F 1 "0.1uF" H 4915 1205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4800 1250 50  0001 C CNN
F 3 "http://www.samsungsem.com/kr/support/product-search/mlcc/__icsFiles/afieldfile/2019/06/18/CL10B104KB8NNNC-19.pdf" H 4800 1250 50  0001 C CNN
F 4 "CL10B104KB8NNNC" H 4800 1250 50  0001 C CNN "Part Number"
F 5 "https://www.digikey.ca/product-detail/en/samsung-electro-mechanics/CL10B104KB8NNNC/1276-1000-1-ND/3889086" H 4800 1250 50  0001 C CNN "Digikey"
	1    4800 1250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5D9E3E31
P 3450 1500
AR Path="/5D6EB2B2/5D9E3E31" Ref="C?"  Part="1" 
AR Path="/5D71C3EA/5D9E3E31" Ref="C?"  Part="1" 
AR Path="/5D765C4F/5D9E3E31" Ref="C22"  Part="1" 
F 0 "C22" H 3565 1546 50  0000 L CNN
F 1 "0.1uF" H 3565 1455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3450 1500 50  0001 C CNN
F 3 "http://www.samsungsem.com/kr/support/product-search/mlcc/__icsFiles/afieldfile/2019/06/18/CL10B104KB8NNNC-19.pdf" H 3450 1500 50  0001 C CNN
F 4 "CL10B104KB8NNNC" H 3450 1500 50  0001 C CNN "Part Number"
F 5 "https://www.digikey.ca/product-detail/en/samsung-electro-mechanics/CL10B104KB8NNNC/1276-1000-1-ND/3889086" H 3450 1500 50  0001 C CNN "Digikey"
	1    3450 1500
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R33
U 1 1 5D9E4C94
P 3250 1250
F 0 "R33" V 3045 1250 50  0000 C CNN
F 1 "10K" V 3136 1250 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 3290 1240 50  0001 C CNN
F 3 "https://www.seielect.com/catalog/sei-rncp.pdf" H 3250 1250 50  0001 C CNN
F 4 "https://www.digikey.ca/product-detail/en/stackpole-electronics-inc/RNCP0603FTD10K0/RNCP0603FTD10K0CT-ND/2240478" V 3250 1250 50  0001 C CNN "Digikey"
F 5 "RNCP0603FTD10K0" V 3250 1250 50  0001 C CNN "Part Number"
	1    3250 1250
	0    1    1    0   
$EndComp
Wire Wire Line
	3400 1250 3450 1250
Wire Wire Line
	3450 1250 3450 1350
Connection ~ 3450 1250
Wire Wire Line
	3450 1250 3500 1250
$Comp
L power:GND #PWR089
U 1 1 5D9E6B65
P 3450 1750
F 0 "#PWR089" H 3450 1500 50  0001 C CNN
F 1 "GND" H 3455 1577 50  0000 C CNN
F 2 "" H 3450 1750 50  0001 C CNN
F 3 "" H 3450 1750 50  0001 C CNN
	1    3450 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 1750 3450 1650
Text Notes 600  7700 0    118  ~ 0
TODAY ON “THINGS JASPER DOESN’T UNDERSTAND,” FILTERS!\nOH, AND ALSO OPAMPS APPARRENTLY. GOOD TIMES.
Text Notes 6000 3900 0    50   ~ 0
WHEN BRAKING, THE TWO NO SOLENOIDS (THE ECONOMIZED ONES)\nARE UNPOWERED. DURING THE RUN THEY SHOULD BE POWERED.\nKILL THE INVERTER WHEN THEY ARE UNPOWERED, SINCE BRAKING.
$Comp
L BigSurLib:MCP6L02T-E_MS U10
U 1 1 5DA8E335
P 8500 4450
F 0 "U10" H 8500 4817 50  0000 C CNN
F 1 "MCP6L02T-E_MS" H 8500 4726 50  0000 C CNN
F 2 "Package_SO:MSOP-8_3x3mm_P0.65mm" H 8500 4450 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/22140b.pdf" H 8500 4450 50  0001 C CNN
F 4 "digikey.ca/product-detail/en/microchip-technology/MCP6L02T-E-MS/MCP6L02T-E-MSCT-ND/2060114" H 8500 4450 50  0001 C CNN "Digikey"
	1    8500 4450
	1    0    0    -1  
$EndComp
$Comp
L BigSurLib:MCP6L02T-E_MS U10
U 2 1 5DA8F0EF
P 8500 5050
F 0 "U10" H 8500 5417 50  0000 C CNN
F 1 "MCP6L02T-E_MS" H 8500 5326 50  0000 C CNN
F 2 "Package_SO:MSOP-8_3x3mm_P0.65mm" H 8500 5050 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/22140b.pdf" H 8500 5050 50  0001 C CNN
F 4 "digikey.ca/product-detail/en/microchip-technology/MCP6L02T-E-MS/MCP6L02T-E-MSCT-ND/2060114" H 8500 5050 50  0001 C CNN "Digikey"
	2    8500 5050
	1    0    0    -1  
$EndComp
$Comp
L BigSurLib:MCP6L02T-E_MS U10
U 3 1 5DA8FFC3
P 8000 5850
F 0 "U10" H 8058 5896 50  0000 L CNN
F 1 "MCP6L02T-E_MS" H 8058 5805 50  0000 L CNN
F 2 "Package_SO:MSOP-8_3x3mm_P0.65mm" H 8000 5850 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/22140b.pdf" H 8000 5850 50  0001 C CNN
F 4 "digikey.ca/product-detail/en/microchip-technology/MCP6L02T-E-MS/MCP6L02T-E-MSCT-ND/2060114" H 8000 5850 50  0001 C CNN "Digikey"
	3    8000 5850
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0111
U 1 1 5DA93EA9
P 8000 5500
F 0 "#PWR0111" H 8000 5350 50  0001 C CNN
F 1 "+3.3V" H 8015 5673 50  0000 C CNN
F 2 "" H 8000 5500 50  0001 C CNN
F 3 "" H 8000 5500 50  0001 C CNN
	1    8000 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 5500 8000 5550
Wire Wire Line
	8000 6150 8000 6200
$Comp
L power:GND #PWR0119
U 1 1 5DA97807
P 8000 6200
F 0 "#PWR0119" H 8000 5950 50  0001 C CNN
F 1 "GND" H 8005 6027 50  0000 C CNN
F 2 "" H 8000 6200 50  0001 C CNN
F 3 "" H 8000 6200 50  0001 C CNN
	1    8000 6200
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0113
U 1 1 5DA97CB5
P 7000 5650
F 0 "#PWR0113" H 7000 5500 50  0001 C CNN
F 1 "+3.3V" H 7015 5823 50  0000 C CNN
F 2 "" H 7000 5650 50  0001 C CNN
F 3 "" H 7000 5650 50  0001 C CNN
	1    7000 5650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0117
U 1 1 5DA97CBF
P 7450 6100
F 0 "#PWR0117" H 7450 5850 50  0001 C CNN
F 1 "GND" H 7455 5927 50  0000 C CNN
F 2 "" H 7450 6100 50  0001 C CNN
F 3 "" H 7450 6100 50  0001 C CNN
	1    7450 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 5750 7450 5750
Wire Wire Line
	7450 6050 7450 6100
$Comp
L Device:C C?
U 1 1 5DA97CCD
P 7450 5900
AR Path="/5D6EB2B2/5DA97CCD" Ref="C?"  Part="1" 
AR Path="/5D71C3EA/5DA97CCD" Ref="C?"  Part="1" 
AR Path="/5D765C4F/5DA97CCD" Ref="C33"  Part="1" 
F 0 "C33" H 7565 5946 50  0000 L CNN
F 1 "0.1uF" H 7565 5855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 7450 5900 50  0001 C CNN
F 3 "http://www.samsungsem.com/kr/support/product-search/mlcc/__icsFiles/afieldfile/2019/06/18/CL10B104KB8NNNC-19.pdf" H 7450 5900 50  0001 C CNN
F 4 "CL10B104KB8NNNC" H 7450 5900 50  0001 C CNN "Part Number"
F 5 "https://www.digikey.ca/product-detail/en/samsung-electro-mechanics/CL10B104KB8NNNC/1276-1000-1-ND/3889086" H 7450 5900 50  0001 C CNN "Digikey"
	1    7450 5900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5DA9B747
P 7000 5900
AR Path="/5D6EB2B2/5DA9B747" Ref="C?"  Part="1" 
AR Path="/5D71C3EA/5DA9B747" Ref="C?"  Part="1" 
AR Path="/5D765C4F/5DA9B747" Ref="C32"  Part="1" 
F 0 "C32" H 7115 5946 50  0000 L CNN
F 1 "2.2uF" H 7115 5855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 7000 5900 50  0001 C CNN
F 3 "http://www.samsungsem.com/kr/support/product-search/mlcc/__icsFiles/afieldfile/2019/05/10/19-CL10A225KP8NNNC.pdf" H 7000 5900 50  0001 C CNN
F 4 "CL10B104KB8NNNC" H 7000 5900 50  0001 C CNN "Part Number"
F 5 "https://www.digikey.ca/product-detail/en/samsung-electro-mechanics/CL10B104KB8NNNC/1276-1000-1-ND/3889086" H 7000 5900 50  0001 C CNN "Digikey"
	1    7000 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	7450 6050 7000 6050
Connection ~ 7450 6050
Connection ~ 7000 5750
Wire Wire Line
	7000 5650 7000 5750
Wire Wire Line
	6450 5150 8200 5150
Text Label 6800 4550 0    50   ~ 0
SOLENOID_OFF_VREF
Connection ~ 6450 4700
Wire Wire Line
	6450 4700 6450 5150
Wire Wire Line
	6450 4700 6450 4550
Text GLabel 8200 4350 0    50   BiDi ~ 0
SOLENOID_ECONOMIZED_CURRENT_SENSE_1
Text GLabel 8200 4950 0    50   BiDi ~ 0
SOLENOID_ECONOMIZED_CURRENT_SENSE_2
Wire Wire Line
	6450 4550 8200 4550
Wire Wire Line
	8800 4450 8950 4450
Wire Wire Line
	8950 4450 8950 4700
Wire Wire Line
	8800 5050 8950 5050
Wire Wire Line
	8950 5050 8950 4800
Wire Wire Line
	9600 4750 9750 4750
$Comp
L power:+3.3V #PWR0110
U 1 1 5DAF6490
P 9650 5450
F 0 "#PWR0110" H 9650 5300 50  0001 C CNN
F 1 "+3.3V" H 9665 5623 50  0000 C CNN
F 2 "" H 9650 5450 50  0001 C CNN
F 3 "" H 9650 5450 50  0001 C CNN
	1    9650 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	9650 5450 9650 5500
Wire Wire Line
	9650 6200 9650 6250
$Comp
L power:GND #PWR0120
U 1 1 5DAF8FA9
P 9650 6250
F 0 "#PWR0120" H 9650 6000 50  0001 C CNN
F 1 "GND" H 9655 6077 50  0000 C CNN
F 2 "" H 9650 6250 50  0001 C CNN
F 3 "" H 9650 6250 50  0001 C CNN
	1    9650 6250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0118
U 1 1 5DB0D1A1
P 9100 6100
F 0 "#PWR0118" H 9100 5850 50  0001 C CNN
F 1 "GND" H 9105 5927 50  0000 C CNN
F 2 "" H 9100 6100 50  0001 C CNN
F 3 "" H 9100 6100 50  0001 C CNN
	1    9100 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	9100 6050 9100 6100
$Comp
L Device:C C?
U 1 1 5DB0D1AF
P 9100 5900
AR Path="/5D6EB2B2/5DB0D1AF" Ref="C?"  Part="1" 
AR Path="/5D71C3EA/5DB0D1AF" Ref="C?"  Part="1" 
AR Path="/5D765C4F/5DB0D1AF" Ref="C34"  Part="1" 
F 0 "C34" H 9215 5946 50  0000 L CNN
F 1 "0.1uF" H 9215 5855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 9100 5900 50  0001 C CNN
F 3 "http://www.samsungsem.com/kr/support/product-search/mlcc/__icsFiles/afieldfile/2019/06/18/CL10B104KB8NNNC-19.pdf" H 9100 5900 50  0001 C CNN
F 4 "CL10B104KB8NNNC" H 9100 5900 50  0001 C CNN "Part Number"
F 5 "https://www.digikey.ca/product-detail/en/samsung-electro-mechanics/CL10B104KB8NNNC/1276-1000-1-ND/3889086" H 9100 5900 50  0001 C CNN "Digikey"
	1    9100 5900
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0114
U 1 1 5DB161C4
P 9100 5650
F 0 "#PWR0114" H 9100 5500 50  0001 C CNN
F 1 "+3.3V" H 9115 5823 50  0000 C CNN
F 2 "" H 9100 5650 50  0001 C CNN
F 3 "" H 9100 5650 50  0001 C CNN
	1    9100 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	9100 5650 9100 5750
Text GLabel 9850 4750 2    50   BiDi ~ 0
BRAKE_SOLENOID_LOW
$Comp
L BigSurLib:ACS70331EESATR-2P5U3 U5
U 1 1 5DB3C5DF
P 2500 1250
F 0 "U5" H 2900 1550 50  0000 C CNN
F 1 "ACS70331EESATR-2P5U3" H 1900 1550 50  0000 C CNN
F 2 "BigSur:Allegro_QFN_ACS70331EESATR" H 2850 1750 50  0001 C CNN
F 3 "https://www.allegromicro.com/~/media/Files/Datasheets/ACS70331-Datasheet.ashx" H 2350 1350 50  0001 C CNN
F 4 "https://www.digikey.ca/product-detail/en/allegro-microsystems/ACS70331EESATR-2P5U3/620-1890-1-ND/8120690" H 3100 1750 50  0001 C CNN "Digikey"
	1    2500 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 800  2500 900 
Wire Wire Line
	2300 1650 2400 1650
Wire Wire Line
	2400 1650 2400 1600
Connection ~ 2300 1650
Wire Wire Line
	2300 1650 2300 1700
Wire Wire Line
	2400 1650 2500 1650
Wire Wire Line
	2500 1650 2500 1600
Connection ~ 2400 1650
Wire Wire Line
	2500 1650 2600 1650
Wire Wire Line
	2600 1650 2600 1600
Connection ~ 2500 1650
Wire Wire Line
	2600 1650 2700 1650
Wire Wire Line
	2700 1650 2700 1600
Connection ~ 2600 1650
Wire Wire Line
	1850 1400 1950 1400
$Comp
L power:+3.3V #PWR091
U 1 1 5DB73C4D
P 2500 2350
F 0 "#PWR091" H 2500 2200 50  0001 C CNN
F 1 "+3.3V" H 2515 2523 50  0000 C CNN
F 2 "" H 2500 2350 50  0001 C CNN
F 3 "" H 2500 2350 50  0001 C CNN
	1    2500 2350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR097
U 1 1 5DB73C57
P 2300 3250
F 0 "#PWR097" H 2300 3000 50  0001 C CNN
F 1 "GND" H 2305 3077 50  0000 C CNN
F 2 "" H 2300 3250 50  0001 C CNN
F 3 "" H 2300 3250 50  0001 C CNN
	1    2300 3250
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR093
U 1 1 5DB73C61
P 4800 2600
F 0 "#PWR093" H 4800 2450 50  0001 C CNN
F 1 "+3.3V" H 4815 2773 50  0000 C CNN
F 2 "" H 4800 2600 50  0001 C CNN
F 3 "" H 4800 2600 50  0001 C CNN
	1    4800 2600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR095
U 1 1 5DB73C6B
P 4800 3000
F 0 "#PWR095" H 4800 2750 50  0001 C CNN
F 1 "GND" H 4805 2827 50  0000 C CNN
F 2 "" H 4800 3000 50  0001 C CNN
F 3 "" H 4800 3000 50  0001 C CNN
	1    4800 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 2600 4800 2650
Wire Wire Line
	4800 2950 4800 3000
Text GLabel 3500 2800 2    50   BiDi ~ 0
SOLENOID_CURRENT_SENSE_2
Wire Wire Line
	3100 2800 3050 2800
Text GLabel 1850 2650 0    50   BiDi ~ 0
SOLENOID_LS_CHANNEL_2_SENSE
Wire Wire Line
	1850 2650 1950 2650
Text GLabel 1850 2950 0    50   BiDi ~ 0
SOLENOID_LS_CHANNEL_2
Wire Wire Line
	2300 3150 2300 3200
Wire Wire Line
	3050 3000 3150 3000
NoConn ~ 3150 3000
$Comp
L Device:C C?
U 1 1 5DB73C81
P 4800 2800
AR Path="/5D6EB2B2/5DB73C81" Ref="C?"  Part="1" 
AR Path="/5D71C3EA/5DB73C81" Ref="C?"  Part="1" 
AR Path="/5D765C4F/5DB73C81" Ref="C24"  Part="1" 
F 0 "C24" H 4915 2846 50  0000 L CNN
F 1 "0.1uF" H 4915 2755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4800 2800 50  0001 C CNN
F 3 "http://www.samsungsem.com/kr/support/product-search/mlcc/__icsFiles/afieldfile/2019/06/18/CL10B104KB8NNNC-19.pdf" H 4800 2800 50  0001 C CNN
F 4 "CL10B104KB8NNNC" H 4800 2800 50  0001 C CNN "Part Number"
F 5 "https://www.digikey.ca/product-detail/en/samsung-electro-mechanics/CL10B104KB8NNNC/1276-1000-1-ND/3889086" H 4800 2800 50  0001 C CNN "Digikey"
	1    4800 2800
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5DB73C8D
P 3450 3050
AR Path="/5D6EB2B2/5DB73C8D" Ref="C?"  Part="1" 
AR Path="/5D71C3EA/5DB73C8D" Ref="C?"  Part="1" 
AR Path="/5D765C4F/5DB73C8D" Ref="C26"  Part="1" 
F 0 "C26" H 3565 3096 50  0000 L CNN
F 1 "0.1uF" H 3565 3005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3450 3050 50  0001 C CNN
F 3 "http://www.samsungsem.com/kr/support/product-search/mlcc/__icsFiles/afieldfile/2019/06/18/CL10B104KB8NNNC-19.pdf" H 3450 3050 50  0001 C CNN
F 4 "CL10B104KB8NNNC" H 3450 3050 50  0001 C CNN "Part Number"
F 5 "https://www.digikey.ca/product-detail/en/samsung-electro-mechanics/CL10B104KB8NNNC/1276-1000-1-ND/3889086" H 3450 3050 50  0001 C CNN "Digikey"
	1    3450 3050
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R35
U 1 1 5DB73C99
P 3250 2800
F 0 "R35" V 3045 2800 50  0000 C CNN
F 1 "10K" V 3136 2800 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 3290 2790 50  0001 C CNN
F 3 "https://www.seielect.com/catalog/sei-rncp.pdf" H 3250 2800 50  0001 C CNN
F 4 "https://www.digikey.ca/product-detail/en/stackpole-electronics-inc/RNCP0603FTD10K0/RNCP0603FTD10K0CT-ND/2240478" V 3250 2800 50  0001 C CNN "Digikey"
F 5 "RNCP0603FTD10K0" V 3250 2800 50  0001 C CNN "Part Number"
	1    3250 2800
	0    1    1    0   
$EndComp
Wire Wire Line
	3400 2800 3450 2800
Wire Wire Line
	3450 2800 3450 2900
Connection ~ 3450 2800
Wire Wire Line
	3450 2800 3500 2800
$Comp
L power:GND #PWR099
U 1 1 5DB73CA7
P 3450 3300
F 0 "#PWR099" H 3450 3050 50  0001 C CNN
F 1 "GND" H 3455 3127 50  0000 C CNN
F 2 "" H 3450 3300 50  0001 C CNN
F 3 "" H 3450 3300 50  0001 C CNN
	1    3450 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 3300 3450 3200
$Comp
L BigSurLib:ACS70331EESATR-2P5U3 U7
U 1 1 5DB73CB3
P 2500 2800
F 0 "U7" H 2900 3100 50  0000 C CNN
F 1 "ACS70331EESATR-2P5U3" H 1900 3100 50  0000 C CNN
F 2 "BigSur:Allegro_QFN_ACS70331EESATR" H 2850 3300 50  0001 C CNN
F 3 "https://www.allegromicro.com/~/media/Files/Datasheets/ACS70331-Datasheet.ashx" H 2350 2900 50  0001 C CNN
F 4 "https://www.digikey.ca/product-detail/en/allegro-microsystems/ACS70331EESATR-2P5U3/620-1890-1-ND/8120690" H 3100 3300 50  0001 C CNN "Digikey"
	1    2500 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 2350 2500 2450
Wire Wire Line
	2300 3200 2400 3200
Wire Wire Line
	2400 3200 2400 3150
Connection ~ 2300 3200
Wire Wire Line
	2300 3200 2300 3250
Wire Wire Line
	2400 3200 2500 3200
Wire Wire Line
	2500 3200 2500 3150
Connection ~ 2400 3200
Wire Wire Line
	2500 3200 2600 3200
Wire Wire Line
	2600 3200 2600 3150
Connection ~ 2500 3200
Wire Wire Line
	2600 3200 2700 3200
Wire Wire Line
	2700 3200 2700 3150
Connection ~ 2600 3200
Wire Wire Line
	1850 2950 1950 2950
$Comp
L power:+3.3V #PWR0102
U 1 1 5DB797C0
P 2500 3900
F 0 "#PWR0102" H 2500 3750 50  0001 C CNN
F 1 "+3.3V" H 2515 4073 50  0000 C CNN
F 2 "" H 2500 3900 50  0001 C CNN
F 3 "" H 2500 3900 50  0001 C CNN
	1    2500 3900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 5DB797CA
P 2300 4800
F 0 "#PWR0106" H 2300 4550 50  0001 C CNN
F 1 "GND" H 2305 4627 50  0000 C CNN
F 2 "" H 2300 4800 50  0001 C CNN
F 3 "" H 2300 4800 50  0001 C CNN
	1    2300 4800
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0103
U 1 1 5DB797D4
P 4800 4150
F 0 "#PWR0103" H 4800 4000 50  0001 C CNN
F 1 "+3.3V" H 4815 4323 50  0000 C CNN
F 2 "" H 4800 4150 50  0001 C CNN
F 3 "" H 4800 4150 50  0001 C CNN
	1    4800 4150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 5DB797DE
P 4800 4550
F 0 "#PWR0105" H 4800 4300 50  0001 C CNN
F 1 "GND" H 4805 4377 50  0000 C CNN
F 2 "" H 4800 4550 50  0001 C CNN
F 3 "" H 4800 4550 50  0001 C CNN
	1    4800 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 4150 4800 4200
Wire Wire Line
	4800 4500 4800 4550
Text GLabel 3500 4350 2    50   BiDi ~ 0
SOLENOID_CURRENT_SENSE_3
Wire Wire Line
	3100 4350 3050 4350
Text GLabel 1850 4200 0    50   BiDi ~ 0
SOLENOID_LS_CHANNEL_3_SENSE
Wire Wire Line
	1850 4200 1950 4200
Text GLabel 1850 4500 0    50   BiDi ~ 0
SOLENOID_LS_CHANNEL_3
Wire Wire Line
	2300 4700 2300 4750
Wire Wire Line
	3050 4550 3150 4550
NoConn ~ 3150 4550
$Comp
L Device:C C?
U 1 1 5DB797F4
P 4800 4350
AR Path="/5D6EB2B2/5DB797F4" Ref="C?"  Part="1" 
AR Path="/5D71C3EA/5DB797F4" Ref="C?"  Part="1" 
AR Path="/5D765C4F/5DB797F4" Ref="C28"  Part="1" 
F 0 "C28" H 4915 4396 50  0000 L CNN
F 1 "0.1uF" H 4915 4305 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4800 4350 50  0001 C CNN
F 3 "http://www.samsungsem.com/kr/support/product-search/mlcc/__icsFiles/afieldfile/2019/06/18/CL10B104KB8NNNC-19.pdf" H 4800 4350 50  0001 C CNN
F 4 "CL10B104KB8NNNC" H 4800 4350 50  0001 C CNN "Part Number"
F 5 "https://www.digikey.ca/product-detail/en/samsung-electro-mechanics/CL10B104KB8NNNC/1276-1000-1-ND/3889086" H 4800 4350 50  0001 C CNN "Digikey"
	1    4800 4350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5DB79800
P 3450 4600
AR Path="/5D6EB2B2/5DB79800" Ref="C?"  Part="1" 
AR Path="/5D71C3EA/5DB79800" Ref="C?"  Part="1" 
AR Path="/5D765C4F/5DB79800" Ref="C29"  Part="1" 
F 0 "C29" H 3565 4646 50  0000 L CNN
F 1 "0.1uF" H 3565 4555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3450 4600 50  0001 C CNN
F 3 "http://www.samsungsem.com/kr/support/product-search/mlcc/__icsFiles/afieldfile/2019/06/18/CL10B104KB8NNNC-19.pdf" H 3450 4600 50  0001 C CNN
F 4 "CL10B104KB8NNNC" H 3450 4600 50  0001 C CNN "Part Number"
F 5 "https://www.digikey.ca/product-detail/en/samsung-electro-mechanics/CL10B104KB8NNNC/1276-1000-1-ND/3889086" H 3450 4600 50  0001 C CNN "Digikey"
	1    3450 4600
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R38
U 1 1 5DB7980C
P 3250 4350
F 0 "R38" V 3045 4350 50  0000 C CNN
F 1 "10K" V 3136 4350 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 3290 4340 50  0001 C CNN
F 3 "https://www.seielect.com/catalog/sei-rncp.pdf" H 3250 4350 50  0001 C CNN
F 4 "https://www.digikey.ca/product-detail/en/stackpole-electronics-inc/RNCP0603FTD10K0/RNCP0603FTD10K0CT-ND/2240478" V 3250 4350 50  0001 C CNN "Digikey"
F 5 "RNCP0603FTD10K0" V 3250 4350 50  0001 C CNN "Part Number"
	1    3250 4350
	0    1    1    0   
$EndComp
Wire Wire Line
	3400 4350 3450 4350
Wire Wire Line
	3450 4350 3450 4450
Connection ~ 3450 4350
Wire Wire Line
	3450 4350 3500 4350
$Comp
L power:GND #PWR0107
U 1 1 5DB7981A
P 3450 4850
F 0 "#PWR0107" H 3450 4600 50  0001 C CNN
F 1 "GND" H 3455 4677 50  0000 C CNN
F 2 "" H 3450 4850 50  0001 C CNN
F 3 "" H 3450 4850 50  0001 C CNN
	1    3450 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 4850 3450 4750
$Comp
L BigSurLib:ACS70331EESATR-2P5U3 U9
U 1 1 5DB79826
P 2500 4350
F 0 "U9" H 2900 4650 50  0000 C CNN
F 1 "ACS70331EESATR-2P5U3" H 1900 4650 50  0000 C CNN
F 2 "BigSur:Allegro_QFN_ACS70331EESATR" H 2850 4850 50  0001 C CNN
F 3 "https://www.allegromicro.com/~/media/Files/Datasheets/ACS70331-Datasheet.ashx" H 2350 4450 50  0001 C CNN
F 4 "https://www.digikey.ca/product-detail/en/allegro-microsystems/ACS70331EESATR-2P5U3/620-1890-1-ND/8120690" H 3100 4850 50  0001 C CNN "Digikey"
	1    2500 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 3900 2500 4000
Wire Wire Line
	2300 4750 2400 4750
Wire Wire Line
	2400 4750 2400 4700
Connection ~ 2300 4750
Wire Wire Line
	2300 4750 2300 4800
Wire Wire Line
	2400 4750 2500 4750
Wire Wire Line
	2500 4750 2500 4700
Connection ~ 2400 4750
Wire Wire Line
	2500 4750 2600 4750
Wire Wire Line
	2600 4750 2600 4700
Connection ~ 2500 4750
Wire Wire Line
	2600 4750 2700 4750
Wire Wire Line
	2700 4750 2700 4700
Connection ~ 2600 4750
Wire Wire Line
	1850 4500 1950 4500
$Comp
L power:+3.3V #PWR0109
U 1 1 5DB7983F
P 2500 5450
F 0 "#PWR0109" H 2500 5300 50  0001 C CNN
F 1 "+3.3V" H 2515 5623 50  0000 C CNN
F 2 "" H 2500 5450 50  0001 C CNN
F 3 "" H 2500 5450 50  0001 C CNN
	1    2500 5450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0121
U 1 1 5DB79849
P 2300 6350
F 0 "#PWR0121" H 2300 6100 50  0001 C CNN
F 1 "GND" H 2305 6177 50  0000 C CNN
F 2 "" H 2300 6350 50  0001 C CNN
F 3 "" H 2300 6350 50  0001 C CNN
	1    2300 6350
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0115
U 1 1 5DB79853
P 4800 5700
F 0 "#PWR0115" H 4800 5550 50  0001 C CNN
F 1 "+3.3V" H 4815 5873 50  0000 C CNN
F 2 "" H 4800 5700 50  0001 C CNN
F 3 "" H 4800 5700 50  0001 C CNN
	1    4800 5700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0116
U 1 1 5DB7985D
P 4800 6100
F 0 "#PWR0116" H 4800 5850 50  0001 C CNN
F 1 "GND" H 4805 5927 50  0000 C CNN
F 2 "" H 4800 6100 50  0001 C CNN
F 3 "" H 4800 6100 50  0001 C CNN
	1    4800 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 5700 4800 5750
Wire Wire Line
	4800 6050 4800 6100
Text GLabel 3500 5900 2    50   BiDi ~ 0
SOLENOID_CURRENT_SENSE_4
Wire Wire Line
	3100 5900 3050 5900
Text GLabel 1850 5750 0    50   BiDi ~ 0
SOLENOID_LS_CHANNEL_4_SENSE
Wire Wire Line
	1850 5750 1950 5750
Text GLabel 1850 6050 0    50   BiDi ~ 0
SOLENOID_LS_CHANNEL_4
Wire Wire Line
	2300 6250 2300 6300
Wire Wire Line
	3050 6100 3150 6100
NoConn ~ 3150 6100
$Comp
L Device:C C?
U 1 1 5DB79873
P 4800 5900
AR Path="/5D6EB2B2/5DB79873" Ref="C?"  Part="1" 
AR Path="/5D71C3EA/5DB79873" Ref="C?"  Part="1" 
AR Path="/5D765C4F/5DB79873" Ref="C31"  Part="1" 
F 0 "C31" H 4915 5946 50  0000 L CNN
F 1 "0.1uF" H 4915 5855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4800 5900 50  0001 C CNN
F 3 "http://www.samsungsem.com/kr/support/product-search/mlcc/__icsFiles/afieldfile/2019/06/18/CL10B104KB8NNNC-19.pdf" H 4800 5900 50  0001 C CNN
F 4 "CL10B104KB8NNNC" H 4800 5900 50  0001 C CNN "Part Number"
F 5 "https://www.digikey.ca/product-detail/en/samsung-electro-mechanics/CL10B104KB8NNNC/1276-1000-1-ND/3889086" H 4800 5900 50  0001 C CNN "Digikey"
	1    4800 5900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5DB7987F
P 3450 6150
AR Path="/5D6EB2B2/5DB7987F" Ref="C?"  Part="1" 
AR Path="/5D71C3EA/5DB7987F" Ref="C?"  Part="1" 
AR Path="/5D765C4F/5DB7987F" Ref="C35"  Part="1" 
F 0 "C35" H 3565 6196 50  0000 L CNN
F 1 "0.1uF" H 3565 6105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3450 6150 50  0001 C CNN
F 3 "http://www.samsungsem.com/kr/support/product-search/mlcc/__icsFiles/afieldfile/2019/06/18/CL10B104KB8NNNC-19.pdf" H 3450 6150 50  0001 C CNN
F 4 "CL10B104KB8NNNC" H 3450 6150 50  0001 C CNN "Part Number"
F 5 "https://www.digikey.ca/product-detail/en/samsung-electro-mechanics/CL10B104KB8NNNC/1276-1000-1-ND/3889086" H 3450 6150 50  0001 C CNN "Digikey"
	1    3450 6150
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R41
U 1 1 5DB7988B
P 3250 5900
F 0 "R41" V 3045 5900 50  0000 C CNN
F 1 "10K" V 3136 5900 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 3290 5890 50  0001 C CNN
F 3 "https://www.seielect.com/catalog/sei-rncp.pdf" H 3250 5900 50  0001 C CNN
F 4 "https://www.digikey.ca/product-detail/en/stackpole-electronics-inc/RNCP0603FTD10K0/RNCP0603FTD10K0CT-ND/2240478" V 3250 5900 50  0001 C CNN "Digikey"
F 5 "RNCP0603FTD10K0" V 3250 5900 50  0001 C CNN "Part Number"
	1    3250 5900
	0    1    1    0   
$EndComp
Wire Wire Line
	3400 5900 3450 5900
Wire Wire Line
	3450 5900 3450 6000
Connection ~ 3450 5900
Wire Wire Line
	3450 5900 3500 5900
$Comp
L power:GND #PWR0122
U 1 1 5DB79899
P 3450 6400
F 0 "#PWR0122" H 3450 6150 50  0001 C CNN
F 1 "GND" H 3455 6227 50  0000 C CNN
F 2 "" H 3450 6400 50  0001 C CNN
F 3 "" H 3450 6400 50  0001 C CNN
	1    3450 6400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 6400 3450 6300
$Comp
L BigSurLib:ACS70331EESATR-2P5U3 U12
U 1 1 5DB798A5
P 2500 5900
F 0 "U12" H 2900 6200 50  0000 C CNN
F 1 "ACS70331EESATR-2P5U3" H 1900 6200 50  0000 C CNN
F 2 "BigSur:Allegro_QFN_ACS70331EESATR" H 2850 6400 50  0001 C CNN
F 3 "https://www.allegromicro.com/~/media/Files/Datasheets/ACS70331-Datasheet.ashx" H 2350 6000 50  0001 C CNN
F 4 "https://www.digikey.ca/product-detail/en/allegro-microsystems/ACS70331EESATR-2P5U3/620-1890-1-ND/8120690" H 3100 6400 50  0001 C CNN "Digikey"
	1    2500 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 5450 2500 5550
Wire Wire Line
	2300 6300 2400 6300
Wire Wire Line
	2400 6300 2400 6250
Connection ~ 2300 6300
Wire Wire Line
	2300 6300 2300 6350
Wire Wire Line
	2400 6300 2500 6300
Wire Wire Line
	2500 6300 2500 6250
Connection ~ 2400 6300
Wire Wire Line
	2500 6300 2600 6300
Wire Wire Line
	2600 6300 2600 6250
Connection ~ 2500 6300
Wire Wire Line
	2600 6300 2700 6300
Wire Wire Line
	2700 6300 2700 6250
Connection ~ 2600 6300
Wire Wire Line
	1850 6050 1950 6050
$Comp
L power:+3.3V #PWR082
U 1 1 5DB9F65F
P 7700 800
F 0 "#PWR082" H 7700 650 50  0001 C CNN
F 1 "+3.3V" H 7715 973 50  0000 C CNN
F 2 "" H 7700 800 50  0001 C CNN
F 3 "" H 7700 800 50  0001 C CNN
	1    7700 800 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR088
U 1 1 5DB9F669
P 7500 1700
F 0 "#PWR088" H 7500 1450 50  0001 C CNN
F 1 "GND" H 7505 1527 50  0000 C CNN
F 2 "" H 7500 1700 50  0001 C CNN
F 3 "" H 7500 1700 50  0001 C CNN
	1    7500 1700
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR084
U 1 1 5DB9F673
P 10550 1050
F 0 "#PWR084" H 10550 900 50  0001 C CNN
F 1 "+3.3V" H 10565 1223 50  0000 C CNN
F 2 "" H 10550 1050 50  0001 C CNN
F 3 "" H 10550 1050 50  0001 C CNN
	1    10550 1050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR086
U 1 1 5DB9F67D
P 10550 1450
F 0 "#PWR086" H 10550 1200 50  0001 C CNN
F 1 "GND" H 10555 1277 50  0000 C CNN
F 2 "" H 10550 1450 50  0001 C CNN
F 3 "" H 10550 1450 50  0001 C CNN
	1    10550 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	10550 1050 10550 1100
Wire Wire Line
	10550 1400 10550 1450
Wire Wire Line
	8300 1250 8250 1250
Wire Wire Line
	7050 1100 7150 1100
Wire Wire Line
	7500 1600 7500 1650
Wire Wire Line
	8250 1450 8350 1450
NoConn ~ 8350 1450
$Comp
L Device:C C?
U 1 1 5DB9F693
P 10550 1250
AR Path="/5D6EB2B2/5DB9F693" Ref="C?"  Part="1" 
AR Path="/5D71C3EA/5DB9F693" Ref="C?"  Part="1" 
AR Path="/5D765C4F/5DB9F693" Ref="C21"  Part="1" 
F 0 "C21" H 10665 1296 50  0000 L CNN
F 1 "0.1uF" H 10665 1205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 10550 1250 50  0001 C CNN
F 3 "http://www.samsungsem.com/kr/support/product-search/mlcc/__icsFiles/afieldfile/2019/06/18/CL10B104KB8NNNC-19.pdf" H 10550 1250 50  0001 C CNN
F 4 "CL10B104KB8NNNC" H 10550 1250 50  0001 C CNN "Part Number"
F 5 "https://www.digikey.ca/product-detail/en/samsung-electro-mechanics/CL10B104KB8NNNC/1276-1000-1-ND/3889086" H 10550 1250 50  0001 C CNN "Digikey"
	1    10550 1250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5DB9F69F
P 8650 1500
AR Path="/5D6EB2B2/5DB9F69F" Ref="C?"  Part="1" 
AR Path="/5D71C3EA/5DB9F69F" Ref="C?"  Part="1" 
AR Path="/5D765C4F/5DB9F69F" Ref="C23"  Part="1" 
F 0 "C23" H 8765 1546 50  0000 L CNN
F 1 "0.1uF" H 8765 1455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 8650 1500 50  0001 C CNN
F 3 "http://www.samsungsem.com/kr/support/product-search/mlcc/__icsFiles/afieldfile/2019/06/18/CL10B104KB8NNNC-19.pdf" H 8650 1500 50  0001 C CNN
F 4 "CL10B104KB8NNNC" H 8650 1500 50  0001 C CNN "Part Number"
F 5 "https://www.digikey.ca/product-detail/en/samsung-electro-mechanics/CL10B104KB8NNNC/1276-1000-1-ND/3889086" H 8650 1500 50  0001 C CNN "Digikey"
	1    8650 1500
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R34
U 1 1 5DB9F6AB
P 8450 1250
F 0 "R34" V 8245 1250 50  0000 C CNN
F 1 "10K" V 8336 1250 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 8490 1240 50  0001 C CNN
F 3 "https://www.seielect.com/catalog/sei-rncp.pdf" H 8450 1250 50  0001 C CNN
F 4 "https://www.digikey.ca/product-detail/en/stackpole-electronics-inc/RNCP0603FTD10K0/RNCP0603FTD10K0CT-ND/2240478" V 8450 1250 50  0001 C CNN "Digikey"
F 5 "RNCP0603FTD10K0" V 8450 1250 50  0001 C CNN "Part Number"
	1    8450 1250
	0    1    1    0   
$EndComp
Wire Wire Line
	8600 1250 8650 1250
Wire Wire Line
	8650 1250 8650 1350
Connection ~ 8650 1250
Wire Wire Line
	8650 1250 8700 1250
$Comp
L power:GND #PWR090
U 1 1 5DB9F6B9
P 8650 1750
F 0 "#PWR090" H 8650 1500 50  0001 C CNN
F 1 "GND" H 8655 1577 50  0000 C CNN
F 2 "" H 8650 1750 50  0001 C CNN
F 3 "" H 8650 1750 50  0001 C CNN
	1    8650 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	8650 1750 8650 1650
$Comp
L BigSurLib:ACS70331EESATR-2P5U3 U6
U 1 1 5DB9F6C5
P 7700 1250
F 0 "U6" H 8100 1550 50  0000 C CNN
F 1 "ACS70331EESATR-2P5U3" H 7100 1550 50  0000 C CNN
F 2 "BigSur:Allegro_QFN_ACS70331EESATR" H 8050 1750 50  0001 C CNN
F 3 "https://www.allegromicro.com/~/media/Files/Datasheets/ACS70331-Datasheet.ashx" H 7550 1350 50  0001 C CNN
F 4 "https://www.digikey.ca/product-detail/en/allegro-microsystems/ACS70331EESATR-2P5U3/620-1890-1-ND/8120690" H 8300 1750 50  0001 C CNN "Digikey"
	1    7700 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 800  7700 900 
Wire Wire Line
	7500 1650 7600 1650
Wire Wire Line
	7600 1650 7600 1600
Connection ~ 7500 1650
Wire Wire Line
	7500 1650 7500 1700
Wire Wire Line
	7600 1650 7700 1650
Wire Wire Line
	7700 1650 7700 1600
Connection ~ 7600 1650
Wire Wire Line
	7700 1650 7800 1650
Wire Wire Line
	7800 1650 7800 1600
Connection ~ 7700 1650
Wire Wire Line
	7800 1650 7900 1650
Wire Wire Line
	7900 1650 7900 1600
Connection ~ 7800 1650
Wire Wire Line
	7050 1400 7150 1400
$Comp
L power:+3.3V #PWR092
U 1 1 5DB9F6DE
P 7700 2350
F 0 "#PWR092" H 7700 2200 50  0001 C CNN
F 1 "+3.3V" H 7715 2523 50  0000 C CNN
F 2 "" H 7700 2350 50  0001 C CNN
F 3 "" H 7700 2350 50  0001 C CNN
	1    7700 2350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR098
U 1 1 5DB9F6E8
P 7500 3250
F 0 "#PWR098" H 7500 3000 50  0001 C CNN
F 1 "GND" H 7505 3077 50  0000 C CNN
F 2 "" H 7500 3250 50  0001 C CNN
F 3 "" H 7500 3250 50  0001 C CNN
	1    7500 3250
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR094
U 1 1 5DB9F6F2
P 10550 2600
F 0 "#PWR094" H 10550 2450 50  0001 C CNN
F 1 "+3.3V" H 10565 2773 50  0000 C CNN
F 2 "" H 10550 2600 50  0001 C CNN
F 3 "" H 10550 2600 50  0001 C CNN
	1    10550 2600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR096
U 1 1 5DB9F6FC
P 10550 3000
F 0 "#PWR096" H 10550 2750 50  0001 C CNN
F 1 "GND" H 10555 2827 50  0000 C CNN
F 2 "" H 10550 3000 50  0001 C CNN
F 3 "" H 10550 3000 50  0001 C CNN
	1    10550 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	10550 2600 10550 2650
Wire Wire Line
	10550 2950 10550 3000
Wire Wire Line
	8300 2800 8250 2800
Wire Wire Line
	7050 2650 7150 2650
Wire Wire Line
	7500 3150 7500 3200
Wire Wire Line
	8250 3000 8350 3000
NoConn ~ 8350 3000
$Comp
L Device:C C?
U 1 1 5DB9F712
P 10550 2800
AR Path="/5D6EB2B2/5DB9F712" Ref="C?"  Part="1" 
AR Path="/5D71C3EA/5DB9F712" Ref="C?"  Part="1" 
AR Path="/5D765C4F/5DB9F712" Ref="C25"  Part="1" 
F 0 "C25" H 10665 2846 50  0000 L CNN
F 1 "0.1uF" H 10665 2755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 10550 2800 50  0001 C CNN
F 3 "http://www.samsungsem.com/kr/support/product-search/mlcc/__icsFiles/afieldfile/2019/06/18/CL10B104KB8NNNC-19.pdf" H 10550 2800 50  0001 C CNN
F 4 "CL10B104KB8NNNC" H 10550 2800 50  0001 C CNN "Part Number"
F 5 "https://www.digikey.ca/product-detail/en/samsung-electro-mechanics/CL10B104KB8NNNC/1276-1000-1-ND/3889086" H 10550 2800 50  0001 C CNN "Digikey"
	1    10550 2800
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5DB9F71E
P 8650 3050
AR Path="/5D6EB2B2/5DB9F71E" Ref="C?"  Part="1" 
AR Path="/5D71C3EA/5DB9F71E" Ref="C?"  Part="1" 
AR Path="/5D765C4F/5DB9F71E" Ref="C27"  Part="1" 
F 0 "C27" H 8765 3096 50  0000 L CNN
F 1 "0.1uF" H 8765 3005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 8650 3050 50  0001 C CNN
F 3 "http://www.samsungsem.com/kr/support/product-search/mlcc/__icsFiles/afieldfile/2019/06/18/CL10B104KB8NNNC-19.pdf" H 8650 3050 50  0001 C CNN
F 4 "CL10B104KB8NNNC" H 8650 3050 50  0001 C CNN "Part Number"
F 5 "https://www.digikey.ca/product-detail/en/samsung-electro-mechanics/CL10B104KB8NNNC/1276-1000-1-ND/3889086" H 8650 3050 50  0001 C CNN "Digikey"
	1    8650 3050
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R36
U 1 1 5DB9F72A
P 8450 2800
F 0 "R36" V 8245 2800 50  0000 C CNN
F 1 "10K" V 8336 2800 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 8490 2790 50  0001 C CNN
F 3 "https://www.seielect.com/catalog/sei-rncp.pdf" H 8450 2800 50  0001 C CNN
F 4 "https://www.digikey.ca/product-detail/en/stackpole-electronics-inc/RNCP0603FTD10K0/RNCP0603FTD10K0CT-ND/2240478" V 8450 2800 50  0001 C CNN "Digikey"
F 5 "RNCP0603FTD10K0" V 8450 2800 50  0001 C CNN "Part Number"
	1    8450 2800
	0    1    1    0   
$EndComp
Wire Wire Line
	8600 2800 8650 2800
Wire Wire Line
	8650 2800 8650 2900
Connection ~ 8650 2800
Wire Wire Line
	8650 2800 8700 2800
$Comp
L power:GND #PWR0100
U 1 1 5DB9F738
P 8650 3300
F 0 "#PWR0100" H 8650 3050 50  0001 C CNN
F 1 "GND" H 8655 3127 50  0000 C CNN
F 2 "" H 8650 3300 50  0001 C CNN
F 3 "" H 8650 3300 50  0001 C CNN
	1    8650 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	8650 3300 8650 3200
$Comp
L BigSurLib:ACS70331EESATR-2P5U3 U8
U 1 1 5DB9F744
P 7700 2800
F 0 "U8" H 8100 3100 50  0000 C CNN
F 1 "ACS70331EESATR-2P5U3" H 7100 3100 50  0000 C CNN
F 2 "BigSur:Allegro_QFN_ACS70331EESATR" H 8050 3300 50  0001 C CNN
F 3 "https://www.allegromicro.com/~/media/Files/Datasheets/ACS70331-Datasheet.ashx" H 7550 2900 50  0001 C CNN
F 4 "https://www.digikey.ca/product-detail/en/allegro-microsystems/ACS70331EESATR-2P5U3/620-1890-1-ND/8120690" H 8300 3300 50  0001 C CNN "Digikey"
	1    7700 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 2350 7700 2450
Wire Wire Line
	7500 3200 7600 3200
Wire Wire Line
	7600 3200 7600 3150
Connection ~ 7500 3200
Wire Wire Line
	7500 3200 7500 3250
Wire Wire Line
	7600 3200 7700 3200
Wire Wire Line
	7700 3200 7700 3150
Connection ~ 7600 3200
Wire Wire Line
	7700 3200 7800 3200
Wire Wire Line
	7800 3200 7800 3150
Connection ~ 7700 3200
Wire Wire Line
	7800 3200 7900 3200
Wire Wire Line
	7900 3200 7900 3150
Connection ~ 7800 3200
Wire Wire Line
	7050 2950 7150 2950
Text GLabel 8700 2800 2    50   BiDi ~ 0
SOLENOID_ECONOMIZED_CURRENT_SENSE_2
Text GLabel 7050 2650 0    50   BiDi ~ 0
SOLENOID_ECONOMIZED_CHANNEL_2_SENSE
Text GLabel 7050 2950 0    50   BiDi ~ 0
SOLENOID_ECONOMIZED_CHANNEL_2
$Comp
L Device:LED D22
U 1 1 5DC1B64C
P 9750 4500
F 0 "D22" V 9789 4383 50  0000 R CNN
F 1 "QTLP651C4TR" V 9698 4383 50  0000 R CNN
F 2 "LED_SMD:LED_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 9750 4500 50  0001 C CNN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/Everlight%20PDFs/QTLP651C-2,3,4,7,B.pdf" H 9750 4500 50  0001 C CNN
F 4 "https://www.digikey.ca/product-detail/en/everlight-electronics-co-ltd/QTLP651C4TR/1080-1484-1-ND/7598723" V 9750 4500 50  0001 C CNN "Digikey"
	1    9750 4500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9750 4650 9750 4750
Connection ~ 9750 4750
Wire Wire Line
	9750 4750 9850 4750
$Comp
L Device:R_US R37
U 1 1 5DC2971E
P 9750 4100
F 0 "R37" H 9818 4146 50  0000 L CNN
F 1 "68" H 9818 4055 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 9790 4090 50  0001 C CNN
F 3 "https://www.rohm.com/datasheet/ESR01MZPF/esr-e" H 9750 4100 50  0001 C CNN
F 4 "https://www.digikey.ca/product-detail/en/rohm-semiconductor/ESR03EZPJ680/RHM68DCT-ND/4053812" H 9750 4100 50  0001 C CNN "Digikey"
F 5 "ESR03EZPJ680" H 9750 4100 50  0001 C CNN "Part Number"
	1    9750 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	9750 4250 9750 4350
$Comp
L power:+3.3V #PWR0101
U 1 1 5DC3736E
P 9750 3850
F 0 "#PWR0101" H 9750 3700 50  0001 C CNN
F 1 "+3.3V" H 9765 4023 50  0000 C CNN
F 2 "" H 9750 3850 50  0001 C CNN
F 3 "" H 9750 3850 50  0001 C CNN
	1    9750 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	9750 3850 9750 3950
Wire Wire Line
	6100 4700 6450 4700
$Comp
L Device:R_US R39
U 1 1 5DAAC33E
P 6100 4500
F 0 "R39" H 6168 4546 50  0000 L CNN
F 1 "10K" H 6168 4455 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 6140 4490 50  0001 C CNN
F 3 "https://www.seielect.com/catalog/sei-rncp.pdf" H 6100 4500 50  0001 C CNN
F 4 "RNCP0603FTD10K0" H 6100 4500 50  0001 C CNN "Part Number"
F 5 "https://www.digikey.ca/product-detail/en/stackpole-electronics-inc/RNCP0603FTD10K0/RNCP0603FTD10K0CT-ND/2240478" H 6100 4500 50  0001 C CNN "Digikey"
	1    6100 4500
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R40
U 1 1 5DAADB59
P 6100 4900
F 0 "R40" H 6168 4946 50  0000 L CNN
F 1 "1.1K" H 6168 4855 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 6140 4890 50  0001 C CNN
F 3 "https://www.seielect.com/catalog/sei-rmcf_rmcp.pdf" H 6100 4900 50  0001 C CNN
F 4 "https://www.digikey.ca/product-detail/en/stackpole-electronics-inc/RMCF0603FT1K10/RMCF0603FT1K10CT-ND/2417966" H 6100 4900 50  0001 C CNN "Digikey"
F 5 "RMCF0603FT1K10" H 6100 4900 50  0001 C CNN "Part Number"
	1    6100 4900
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0104
U 1 1 5DAAE3B5
P 6100 4250
F 0 "#PWR0104" H 6100 4100 50  0001 C CNN
F 1 "+3.3V" H 6115 4423 50  0000 C CNN
F 2 "" H 6100 4250 50  0001 C CNN
F 3 "" H 6100 4250 50  0001 C CNN
	1    6100 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 4250 6100 4350
Wire Wire Line
	6100 4650 6100 4700
Wire Wire Line
	6100 5050 6100 5150
$Comp
L power:GND #PWR0108
U 1 1 5DAB40A2
P 6100 5150
F 0 "#PWR0108" H 6100 4900 50  0001 C CNN
F 1 "GND" H 6105 4977 50  0000 C CNN
F 2 "" H 6100 5150 50  0001 C CNN
F 3 "" H 6100 5150 50  0001 C CNN
	1    6100 5150
	1    0    0    -1  
$EndComp
Connection ~ 6100 4700
Wire Wire Line
	6100 4700 6100 4750
$Comp
L Device:C C?
U 1 1 5DAC261B
P 6450 5350
AR Path="/5D6EB2B2/5DAC261B" Ref="C?"  Part="1" 
AR Path="/5D71C3EA/5DAC261B" Ref="C?"  Part="1" 
AR Path="/5D765C4F/5DAC261B" Ref="C30"  Part="1" 
F 0 "C30" H 6565 5396 50  0000 L CNN
F 1 "0.1uF" H 6565 5305 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 6450 5350 50  0001 C CNN
F 3 "http://www.samsungsem.com/kr/support/product-search/mlcc/__icsFiles/afieldfile/2019/06/18/CL10B104KB8NNNC-19.pdf" H 6450 5350 50  0001 C CNN
F 4 "CL10B104KB8NNNC" H 6450 5350 50  0001 C CNN "Part Number"
F 5 "https://www.digikey.ca/product-detail/en/samsung-electro-mechanics/CL10B104KB8NNNC/1276-1000-1-ND/3889086" H 6450 5350 50  0001 C CNN "Digikey"
	1    6450 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 5150 6450 5200
Connection ~ 6450 5150
Wire Wire Line
	6450 5500 6450 5600
$Comp
L power:GND #PWR0112
U 1 1 5DACFFE3
P 6450 5600
F 0 "#PWR0112" H 6450 5350 50  0001 C CNN
F 1 "GND" H 6455 5427 50  0000 C CNN
F 2 "" H 6450 5600 50  0001 C CNN
F 3 "" H 6450 5600 50  0001 C CNN
	1    6450 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	8950 4700 9050 4700
Wire Wire Line
	9050 4800 8950 4800
$Comp
L BigSurLib:74LVC1G08W5-7 U11
U 1 1 5DD472CB
P 9300 4750
F 0 "U11" H 9325 5017 50  0000 C CNN
F 1 "74LVC1G08W5-7" H 9325 4926 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 9350 4950 50  0001 C CNN
F 3 "https://www.diodes.com/assets/Datasheets/74LVC1G08.pdf" H 9350 4750 50  0001 C CNN
F 4 "https://www.digikey.ca/product-detail/en/diodes-incorporated/74LVC1G08W5-7/74LVC1G08W5-7DICT-ND/2330117" H 9550 5050 50  0001 C CNN "Digikey"
	1    9300 4750
	1    0    0    -1  
$EndComp
$Comp
L BigSurLib:74LVC1G08W5-7 U11
U 2 1 5DD4ED6F
P 9650 5850
F 0 "U11" H 9708 5896 50  0000 L CNN
F 1 "74LVC1G08W5-7" H 9708 5805 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 9700 6050 50  0001 C CNN
F 3 "https://www.diodes.com/assets/Datasheets/74LVC1G08.pdf" H 9700 5850 50  0001 C CNN
F 4 "https://www.digikey.ca/product-detail/en/diodes-incorporated/74LVC1G00W5-7/1034-74LVC1G00W5-7DICT-ND/5629187" H 9900 6150 50  0001 C CNN "Digikey"
	2    9650 5850
	1    0    0    -1  
$EndComp
$EndSCHEMATC
