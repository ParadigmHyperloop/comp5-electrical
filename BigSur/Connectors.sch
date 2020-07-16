EESchema Schematic File Version 4
LIBS:BigSur-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 5
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
L Connector_Generic:Conn_01x02 J1
U 1 1 5D7C2574
P 1500 1650
AR Path="/5D71C3EA/5D7C2574" Ref="J1"  Part="1" 
AR Path="/5D7D29A6/5D7C2574" Ref="J?"  Part="1" 
F 0 "J1" H 1580 1642 50  0000 L CNN
F 1 "XT30PW-M" H 1580 1551 50  0000 L CNN
F 2 "BigSur:AMASS_XT30PW-M" H 1500 1650 50  0001 C CNN
F 3 "https://www.aliexpress.com/item/32689137918.html" H 1500 1650 50  0001 C CNN
F 4 "https://www.aliexpress.com/item/32689137918.html" H 1500 1650 50  0001 C CNN "AliExpress"
	1    1500 1650
	1    0    0    1   
$EndComp
Wire Wire Line
	1300 1550 1100 1550
Wire Wire Line
	1100 1550 1100 1450
Wire Wire Line
	1300 1650 1100 1650
Wire Wire Line
	1100 1650 1100 1750
$Comp
L power:+24V #PWR038
U 1 1 5D7C37EA
P 1100 1450
AR Path="/5D71C3EA/5D7C37EA" Ref="#PWR038"  Part="1" 
AR Path="/5D7D29A6/5D7C37EA" Ref="#PWR?"  Part="1" 
F 0 "#PWR038" H 1100 1300 50  0001 C CNN
F 1 "+24V" H 1115 1623 50  0000 C CNN
F 2 "" H 1100 1450 50  0001 C CNN
F 3 "" H 1100 1450 50  0001 C CNN
	1    1100 1450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR042
U 1 1 5D7C4463
P 1100 1750
AR Path="/5D71C3EA/5D7C4463" Ref="#PWR042"  Part="1" 
AR Path="/5D7D29A6/5D7C4463" Ref="#PWR?"  Part="1" 
F 0 "#PWR042" H 1100 1500 50  0001 C CNN
F 1 "GND" H 1105 1577 50  0000 C CNN
F 2 "" H 1100 1750 50  0001 C CNN
F 3 "" H 1100 1750 50  0001 C CNN
	1    1100 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 2400 1100 2400
Wire Wire Line
	1100 2400 1100 2300
Wire Wire Line
	1300 2500 1100 2500
Wire Wire Line
	1100 2500 1100 2600
$Comp
L power:GND #PWR047
U 1 1 5D7CEB4F
P 1100 2600
AR Path="/5D71C3EA/5D7CEB4F" Ref="#PWR047"  Part="1" 
AR Path="/5D7D29A6/5D7CEB4F" Ref="#PWR?"  Part="1" 
F 0 "#PWR047" H 1100 2350 50  0001 C CNN
F 1 "GND" H 1105 2427 50  0000 C CNN
F 2 "" H 1100 2600 50  0001 C CNN
F 3 "" H 1100 2600 50  0001 C CNN
	1    1100 2600
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR045
U 1 1 5D7CFD5E
P 1100 2300
AR Path="/5D71C3EA/5D7CFD5E" Ref="#PWR045"  Part="1" 
AR Path="/5D7D29A6/5D7CFD5E" Ref="#PWR?"  Part="1" 
F 0 "#PWR045" H 1100 2150 50  0001 C CNN
F 1 "+12V" H 1115 2473 50  0000 C CNN
F 2 "" H 1100 2300 50  0001 C CNN
F 3 "" H 1100 2300 50  0001 C CNN
	1    1100 2300
	1    0    0    -1  
$EndComp
Text Notes 850  1150 0    118  ~ 0
POWER INPUT
Text Notes 8450 1350 0    118  ~ 0
STRIDEUINO
Text Notes 4050 1150 0    118  ~ 0
SOLENOIDS
Wire Wire Line
	4700 1550 4500 1550
Wire Wire Line
	4500 1550 4500 1450
Wire Wire Line
	4700 1650 4500 1650
$Comp
L power:+24V #PWR039
U 1 1 5DEDB209
P 4500 1450
AR Path="/5D71C3EA/5DEDB209" Ref="#PWR039"  Part="1" 
AR Path="/5D7D29A6/5DEDB209" Ref="#PWR?"  Part="1" 
F 0 "#PWR039" H 4500 1300 50  0001 C CNN
F 1 "+24V" H 4515 1623 50  0000 C CNN
F 2 "" H 4500 1450 50  0001 C CNN
F 3 "" H 4500 1450 50  0001 C CNN
	1    4500 1450
	1    0    0    -1  
$EndComp
Text GLabel 4500 1650 0    50   BiDi ~ 0
SOLENOID_LS_CHANNEL_1
Wire Wire Line
	4700 2100 4500 2100
Wire Wire Line
	4500 2100 4500 2000
Wire Wire Line
	4700 2200 4500 2200
$Comp
L power:+24V #PWR044
U 1 1 5DEDFC57
P 4500 2000
AR Path="/5D71C3EA/5DEDFC57" Ref="#PWR044"  Part="1" 
AR Path="/5D7D29A6/5DEDFC57" Ref="#PWR?"  Part="1" 
F 0 "#PWR044" H 4500 1850 50  0001 C CNN
F 1 "+24V" H 4515 2173 50  0000 C CNN
F 2 "" H 4500 2000 50  0001 C CNN
F 3 "" H 4500 2000 50  0001 C CNN
	1    4500 2000
	1    0    0    -1  
$EndComp
Text GLabel 4500 2200 0    50   BiDi ~ 0
SOLENOID_LS_CHANNEL_2
Wire Wire Line
	4700 2650 4500 2650
Wire Wire Line
	4500 2650 4500 2550
Wire Wire Line
	4700 2750 4500 2750
$Comp
L power:+24V #PWR046
U 1 1 5DEE1770
P 4500 2550
AR Path="/5D71C3EA/5DEE1770" Ref="#PWR046"  Part="1" 
AR Path="/5D7D29A6/5DEE1770" Ref="#PWR?"  Part="1" 
F 0 "#PWR046" H 4500 2400 50  0001 C CNN
F 1 "+24V" H 4515 2723 50  0000 C CNN
F 2 "" H 4500 2550 50  0001 C CNN
F 3 "" H 4500 2550 50  0001 C CNN
	1    4500 2550
	1    0    0    -1  
$EndComp
Text GLabel 4500 2750 0    50   BiDi ~ 0
SOLENOID_LS_CHANNEL_3
Wire Wire Line
	4700 3200 4500 3200
Wire Wire Line
	4500 3200 4500 3100
Wire Wire Line
	4700 3300 4500 3300
$Comp
L power:+24V #PWR048
U 1 1 5DEE1788
P 4500 3100
AR Path="/5D71C3EA/5DEE1788" Ref="#PWR048"  Part="1" 
AR Path="/5D7D29A6/5DEE1788" Ref="#PWR?"  Part="1" 
F 0 "#PWR048" H 4500 2950 50  0001 C CNN
F 1 "+24V" H 4515 3273 50  0000 C CNN
F 2 "" H 4500 3100 50  0001 C CNN
F 3 "" H 4500 3100 50  0001 C CNN
	1    4500 3100
	1    0    0    -1  
$EndComp
Text GLabel 4500 3300 0    50   BiDi ~ 0
SOLENOID_LS_CHANNEL_4
Wire Wire Line
	4700 3750 4500 3750
Wire Wire Line
	4500 3750 4500 3650
Wire Wire Line
	4700 3850 4500 3850
$Comp
L power:+24V #PWR050
U 1 1 5DEE50FE
P 4500 3650
AR Path="/5D71C3EA/5DEE50FE" Ref="#PWR050"  Part="1" 
AR Path="/5D7D29A6/5DEE50FE" Ref="#PWR?"  Part="1" 
F 0 "#PWR050" H 4500 3500 50  0001 C CNN
F 1 "+24V" H 4515 3823 50  0000 C CNN
F 2 "" H 4500 3650 50  0001 C CNN
F 3 "" H 4500 3650 50  0001 C CNN
	1    4500 3650
	1    0    0    -1  
$EndComp
Text GLabel 4500 3850 0    50   BiDi ~ 0
SOLENOID_ECONOMIZED_CHANNEL_1
Wire Wire Line
	4700 4300 4500 4300
Wire Wire Line
	4500 4300 4500 4200
Wire Wire Line
	4700 4400 4500 4400
$Comp
L power:+24V #PWR054
U 1 1 5DEE5116
P 4500 4200
AR Path="/5D71C3EA/5DEE5116" Ref="#PWR054"  Part="1" 
AR Path="/5D7D29A6/5DEE5116" Ref="#PWR?"  Part="1" 
F 0 "#PWR054" H 4500 4050 50  0001 C CNN
F 1 "+24V" H 4515 4373 50  0000 C CNN
F 2 "" H 4500 4200 50  0001 C CNN
F 3 "" H 4500 4200 50  0001 C CNN
	1    4500 4200
	1    0    0    -1  
$EndComp
Text GLabel 4500 4400 0    50   BiDi ~ 0
SOLENOID_ECONOMIZED_CHANNEL_2
Text Notes 1350 3300 0    118  ~ 0
PUMPS
Wire Wire Line
	1800 3700 1600 3700
Wire Wire Line
	1600 3700 1600 3600
Wire Wire Line
	1800 3800 1600 3800
$Comp
L power:+24V #PWR049
U 1 1 5DEECBB6
P 1600 3600
AR Path="/5D71C3EA/5DEECBB6" Ref="#PWR049"  Part="1" 
AR Path="/5D7D29A6/5DEECBB6" Ref="#PWR?"  Part="1" 
F 0 "#PWR049" H 1600 3450 50  0001 C CNN
F 1 "+24V" H 1615 3773 50  0000 C CNN
F 2 "" H 1600 3600 50  0001 C CNN
F 3 "" H 1600 3600 50  0001 C CNN
	1    1600 3600
	1    0    0    -1  
$EndComp
Text GLabel 1600 3800 0    50   BiDi ~ 0
PUMP_LS_CHANNEL_1
Wire Wire Line
	1800 4250 1600 4250
Wire Wire Line
	1600 4250 1600 4150
Wire Wire Line
	1800 4350 1600 4350
$Comp
L power:+24V #PWR053
U 1 1 5DEECBCE
P 1600 4150
AR Path="/5D71C3EA/5DEECBCE" Ref="#PWR053"  Part="1" 
AR Path="/5D7D29A6/5DEECBCE" Ref="#PWR?"  Part="1" 
F 0 "#PWR053" H 1600 4000 50  0001 C CNN
F 1 "+24V" H 1615 4323 50  0000 C CNN
F 2 "" H 1600 4150 50  0001 C CNN
F 3 "" H 1600 4150 50  0001 C CNN
	1    1600 4150
	1    0    0    -1  
$EndComp
Text GLabel 1600 4350 0    50   BiDi ~ 0
PUMP_LS_CHANNEL_2
Text Notes 7100 2100 2    50   ~ 0
DUTY CYCLE ADJ PINS PROBABLY\nWILL NOT BE CONNECTED, PUTTING\nTHEM ON DAC LINES JUST IN CASE\nWE DECIDE WE DO WANT TO USE THEM.
Text Notes 850  4900 0    118  ~ 0
POWER TEST POINTS
$Comp
L Connector:TestPoint TP1
U 1 1 5D9BE445
P 1400 5400
F 0 "TP1" H 1458 5518 50  0000 L CNN
F 1 "5015" H 1458 5427 50  0000 L CNN
F 2 "BigSur:Keystone_TP_SMD_5015" H 1600 5400 50  0001 C CNN
F 3 "https://www.keyelco.com/userAssets/file/M65p55.pdf" H 1600 5400 50  0001 C CNN
F 4 "https://www.digikey.ca/product-detail/en/keystone-electronics/5015/36-5015CT-ND/278886" H 1400 5400 50  0001 C CNN "Digikey"
	1    1400 5400
	1    0    0    -1  
$EndComp
$Comp
L power:+24V #PWR056
U 1 1 5D9BEB73
P 1250 5350
AR Path="/5D71C3EA/5D9BEB73" Ref="#PWR056"  Part="1" 
AR Path="/5D7D29A6/5D9BEB73" Ref="#PWR?"  Part="1" 
F 0 "#PWR056" H 1250 5200 50  0001 C CNN
F 1 "+24V" H 1265 5523 50  0000 C CNN
F 2 "" H 1250 5350 50  0001 C CNN
F 3 "" H 1250 5350 50  0001 C CNN
	1    1250 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 5350 1250 5500
Wire Wire Line
	1400 5400 1400 5500
Wire Wire Line
	1400 5500 1250 5500
$Comp
L power:GND #PWR058
U 1 1 5D9CDDE1
P 1900 5550
F 0 "#PWR058" H 1900 5300 50  0001 C CNN
F 1 "GND" H 1905 5377 50  0000 C CNN
F 2 "" H 1900 5550 50  0001 C CNN
F 3 "" H 1900 5550 50  0001 C CNN
	1    1900 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 5550 1900 5400
Wire Wire Line
	1250 5800 1250 5950
Wire Wire Line
	1400 5850 1400 5950
Wire Wire Line
	1400 5950 1250 5950
$Comp
L power:+12V #PWR060
U 1 1 5D9D9F04
P 1250 5800
F 0 "#PWR060" H 1250 5650 50  0001 C CNN
F 1 "+12V" H 1265 5973 50  0000 C CNN
F 2 "" H 1250 5800 50  0001 C CNN
F 3 "" H 1250 5800 50  0001 C CNN
	1    1250 5800
	1    0    0    -1  
$EndComp
Text Notes 2100 5950 0    50   ~ 0
NOT SURE IF WE NEED\nTEST POINTS ON THESE,\nCAN’T HURT THOUGH.
Text Notes 7600 4900 0    118  ~ 0
CAN
Text GLabel 7250 5250 2    50   BiDi ~ 0
CAN_H
Text GLabel 7250 6050 2    50   BiDi ~ 0
CAN_L
Wire Wire Line
	7250 6050 7100 6050
Wire Wire Line
	7250 5250 7100 5250
Text Notes 3250 4900 0    118  ~ 0
GENERAL PURPOSE RELAYS
Wire Wire Line
	4600 5150 4400 5150
Wire Wire Line
	4600 5250 4400 5250
Text GLabel 4400 5250 0    50   BiDi ~ 0
GP_RELAY_1_LOW
Text GLabel 4400 5150 0    50   BiDi ~ 0
GP_RELAY_1_HIGH
Text Notes 950  6350 0    118  ~ 0
MOUNTING HOLES
$Comp
L power:GNDPWR #PWR061
U 1 1 5DAB1B85
P 1150 7200
F 0 "#PWR061" H 1150 7000 50  0001 C CNN
F 1 "GNDPWR" H 1154 7046 50  0000 C CNN
F 2 "" H 1150 7150 50  0001 C CNN
F 3 "" H 1150 7150 50  0001 C CNN
	1    1150 7200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 6700 1150 6800
$Comp
L power:GNDPWR #PWR062
U 1 1 5DABBFF8
P 1500 7200
F 0 "#PWR062" H 1500 7000 50  0001 C CNN
F 1 "GNDPWR" H 1504 7046 50  0000 C CNN
F 2 "" H 1500 7150 50  0001 C CNN
F 3 "" H 1500 7150 50  0001 C CNN
	1    1500 7200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 6700 1500 6800
$Comp
L power:GNDPWR #PWR063
U 1 1 5DABF9B7
P 1850 7200
F 0 "#PWR063" H 1850 7000 50  0001 C CNN
F 1 "GNDPWR" H 1854 7046 50  0000 C CNN
F 2 "" H 1850 7150 50  0001 C CNN
F 3 "" H 1850 7150 50  0001 C CNN
	1    1850 7200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 6700 1850 6800
$Comp
L power:GNDPWR #PWR064
U 1 1 5DABF9CC
P 2200 7200
F 0 "#PWR064" H 2200 7000 50  0001 C CNN
F 1 "GNDPWR" H 2204 7046 50  0000 C CNN
F 2 "" H 2200 7150 50  0001 C CNN
F 3 "" H 2200 7150 50  0001 C CNN
	1    2200 7200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 6700 2200 6800
$Comp
L Device:D_TVS_x2_AAC D13
U 1 1 5D9D64FE
P 7100 5650
F 0 "D13" V 7054 5729 50  0000 L CNN
F 1 "NUP2105L" V 7145 5729 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 6950 5650 50  0001 C CNN
F 3 "https://www.onsemi.com/pub/Collateral/NUP2105L-D.PDF" H 6950 5650 50  0001 C CNN
F 4 "https://www.digikey.ca/product-detail/en/on-semiconductor/NUP2105LT1G/NUP2105LT1GOSCT-ND/1485001" V 7100 5650 50  0001 C CNN "Digikey"
	1    7100 5650
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR057
U 1 1 5D9DB0E6
P 6850 5650
F 0 "#PWR057" H 6850 5400 50  0001 C CNN
F 1 "GND" H 6855 5477 50  0000 C CNN
F 2 "" H 6850 5650 50  0001 C CNN
F 3 "" H 6850 5650 50  0001 C CNN
	1    6850 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 5650 6500 5700
Wire Wire Line
	6500 5650 6500 5600
Connection ~ 6500 5650
Wire Wire Line
	6500 5300 6500 5250
Wire Wire Line
	6500 5250 7100 5250
Wire Wire Line
	7100 5250 7100 5300
Wire Wire Line
	7100 6000 7100 6050
Wire Wire Line
	7100 6050 6500 6050
Wire Wire Line
	6500 6050 6500 6000
Connection ~ 7100 6050
Connection ~ 7100 5250
Wire Wire Line
	6500 5650 6850 5650
Connection ~ 6850 5650
Wire Wire Line
	6850 5650 6950 5650
$Comp
L Mechanical:MountingHole_Pad H1
U 1 1 5DA9FD3E
P 1150 6600
F 0 "H1" H 1250 6649 50  0000 L CNN
F 1 "Hole" H 1250 6558 50  0000 L CNN
F 2 "MountingHole:MountingHole_4.3mm_M4_Pad" H 1150 6600 50  0001 C CNN
F 3 "~" H 1150 6600 50  0001 C CNN
	1    1150 6600
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H2
U 1 1 5DAA48AE
P 1500 6600
F 0 "H2" H 1600 6649 50  0000 L CNN
F 1 "Hole" H 1600 6558 50  0000 L CNN
F 2 "MountingHole:MountingHole_4.3mm_M4_Pad" H 1500 6600 50  0001 C CNN
F 3 "~" H 1500 6600 50  0001 C CNN
	1    1500 6600
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H3
U 1 1 5DAA4B99
P 1850 6600
F 0 "H3" H 1950 6649 50  0000 L CNN
F 1 "Hole" H 1950 6558 50  0000 L CNN
F 2 "MountingHole:MountingHole_4.3mm_M4_Pad" H 1850 6600 50  0001 C CNN
F 3 "~" H 1850 6600 50  0001 C CNN
	1    1850 6600
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H4
U 1 1 5DAA4E4B
P 2200 6600
F 0 "H4" H 2300 6649 50  0000 L CNN
F 1 "Hole" H 2300 6558 50  0000 L CNN
F 2 "MountingHole:MountingHole_4.3mm_M4_Pad" H 2200 6600 50  0001 C CNN
F 3 "~" H 2200 6600 50  0001 C CNN
	1    2200 6600
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 1700 8000 1750
$Comp
L power:GND #PWR043
U 1 1 5DA29EA8
P 8000 1750
AR Path="/5D71C3EA/5DA29EA8" Ref="#PWR043"  Part="1" 
AR Path="/5D7D29A6/5DA29EA8" Ref="#PWR?"  Part="1" 
F 0 "#PWR043" H 8000 1500 50  0001 C CNN
F 1 "GND" H 8005 1577 50  0000 C CNN
F 2 "" H 8000 1750 50  0001 C CNN
F 3 "" H 8000 1750 50  0001 C CNN
	1    8000 1750
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR041
U 1 1 5DA477C3
P 8350 1650
F 0 "#PWR041" H 8350 1500 50  0001 C CNN
F 1 "+5V" H 8365 1823 50  0000 C CNN
F 2 "" H 8350 1650 50  0001 C CNN
F 3 "" H 8350 1650 50  0001 C CNN
	1    8350 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	8350 1650 8350 1800
Wire Wire Line
	8350 1800 8450 1800
$Comp
L power:+3.3V #PWR040
U 1 1 5DA6B18B
P 8150 1650
F 0 "#PWR040" H 8150 1500 50  0001 C CNN
F 1 "+3.3V" H 8165 1823 50  0000 C CNN
F 2 "" H 8150 1650 50  0001 C CNN
F 3 "" H 8150 1650 50  0001 C CNN
	1    8150 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	8450 1700 8000 1700
Wire Wire Line
	8150 1650 8150 1900
Wire Wire Line
	8150 1900 8450 1900
Wire Wire Line
	8450 2000 8250 2000
Text GLabel 8250 2000 0    50   BiDi ~ 0
DRV103_DUTY_CYCLE_ADJ_1
Wire Wire Line
	8450 2100 8250 2100
Text GLabel 8250 2100 0    50   BiDi ~ 0
DRV103_DUTY_CYCLE_ADJ_2
Wire Wire Line
	8450 2200 8250 2200
Wire Wire Line
	8450 2300 8250 2300
Wire Wire Line
	8450 2400 8250 2400
Text GLabel 8250 2200 0    50   BiDi ~ 0
SOLENOID_CURRENT_SENSE_4
Text GLabel 8250 2300 0    50   BiDi ~ 0
SOLENOID_ECONOMIZED_CURRENT_SENSE_1
Text GLabel 8250 2400 0    50   BiDi ~ 0
SOLENOID_ECONOMIZED_CURRENT_SENSE_2
Wire Wire Line
	8450 2500 8250 2500
NoConn ~ 8250 2500
Wire Wire Line
	8450 2600 8250 2600
NoConn ~ 8250 2600
Wire Wire Line
	8250 2700 8450 2700
Wire Wire Line
	8250 2800 8450 2800
Wire Wire Line
	8250 2900 8450 2900
Wire Wire Line
	8250 3000 8450 3000
Wire Wire Line
	8250 3100 8450 3100
Wire Wire Line
	8250 3200 8450 3200
Text GLabel 8250 3200 0    50   BiDi ~ 0
PUMP_INPUT_2
Wire Wire Line
	8250 3300 8450 3300
Text GLabel 8250 3300 0    50   BiDi ~ 0
PUMP_INPUT_1
Wire Wire Line
	8250 3400 8450 3400
Wire Wire Line
	8250 3500 8450 3500
Text GLabel 8250 3500 0    50   BiDi ~ 0
CAN_H
Text GLabel 8250 3400 0    50   BiDi ~ 0
CAN_L
Wire Wire Line
	8250 3600 8450 3600
Text GLabel 8250 3600 0    50   BiDi ~ 0
CAN_SHIELD
$Comp
L power:GNDPWR #PWR052
U 1 1 5DAD5851
P 7900 3900
F 0 "#PWR052" H 7900 3700 50  0001 C CNN
F 1 "GNDPWR" H 7900 3750 50  0000 C CNN
F 2 "" H 7900 3850 50  0001 C CNN
F 3 "" H 7900 3850 50  0001 C CNN
	1    7900 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	7900 3900 7900 3700
Wire Wire Line
	7900 3700 8450 3700
Wire Wire Line
	9450 1700 9650 1700
Text GLabel 9650 1700 2    50   BiDi ~ 0
SOLENOID_CURRENT_SENSE_3
Wire Wire Line
	9450 1800 9650 1800
Text GLabel 9650 1800 2    50   BiDi ~ 0
SOLENOID_CURRENT_SENSE_2
Wire Wire Line
	9450 1900 9650 1900
Text GLabel 9650 1900 2    50   BiDi ~ 0
SOLENOID_CURRENT_SENSE_1
Wire Wire Line
	9450 2000 9650 2000
NoConn ~ 9650 2000
Wire Wire Line
	9450 2100 9650 2100
NoConn ~ 9650 2100
Wire Wire Line
	9450 2200 9650 2200
NoConn ~ 9650 2200
Wire Wire Line
	9450 2300 9650 2300
NoConn ~ 9650 2300
Wire Wire Line
	9450 2400 9650 2400
NoConn ~ 9650 2400
Wire Wire Line
	9450 2500 9650 2500
NoConn ~ 9650 2500
Wire Wire Line
	9650 2600 9450 2600
Wire Wire Line
	9650 2700 9450 2700
Wire Wire Line
	9650 2800 9450 2800
Wire Wire Line
	9650 2900 9450 2900
Text GLabel 9650 2900 2    50   BiDi ~ 0
DRV8806_SERIAL_LATCH
Wire Wire Line
	9650 3000 9450 3000
Text GLabel 9650 3000 2    50   BiDi ~ 0
DRV8806_SERIAL_CLK
Wire Wire Line
	9650 3100 9450 3100
Text GLabel 9650 3100 2    50   BiDi ~ 0
DRV8806_SERIAL_DATIN
Wire Wire Line
	9650 3200 9450 3200
Wire Wire Line
	9650 3300 9450 3300
Text GLabel 9650 3300 2    50   BiDi ~ 0
DRV8806_nENBL
Wire Wire Line
	9650 3400 9450 3400
Text GLabel 9650 3400 2    50   BiDi ~ 0
DRV8806_RESET
Wire Wire Line
	9650 3600 9450 3600
Text GLabel 9650 3600 2    50   BiDi ~ 0
DRV103_INPUT_1
Wire Wire Line
	9650 3500 9450 3500
Text GLabel 9650 3500 2    50   BiDi ~ 0
DRV103_INPUT_2
Wire Wire Line
	10450 3700 10450 3650
$Comp
L power:+24V #PWR051
U 1 1 5DB51C9D
P 10450 3650
F 0 "#PWR051" H 10450 3500 50  0001 C CNN
F 1 "+24V" H 10465 3823 50  0000 C CNN
F 2 "" H 10450 3650 50  0001 C CNN
F 3 "" H 10450 3650 50  0001 C CNN
	1    10450 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	10450 3700 9450 3700
Text GLabel 9650 2800 2    50   BiDi ~ 0
DRV8806_nFAULT
Text GLabel 9650 3200 2    50   BiDi ~ 0
DRV8806_SERIAL_DATOUT_3.3V
Text GLabel 9650 2600 2    50   BiDi ~ 0
DRV103_nOK
$Comp
L Device:C C?
U 1 1 5DAA6B1E
P 6500 5450
AR Path="/5D6EB2B2/5DAA6B1E" Ref="C?"  Part="1" 
AR Path="/5D71C3EA/5DAA6B1E" Ref="C18"  Part="1" 
AR Path="/5D765C4F/5DAA6B1E" Ref="C?"  Part="1" 
F 0 "C18" H 6615 5496 50  0000 L CNN
F 1 "0.1uF" H 6615 5405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 6500 5450 50  0001 C CNN
F 3 "http://www.samsungsem.com/kr/support/product-search/mlcc/__icsFiles/afieldfile/2019/06/18/CL10B104KB8NNNC-19.pdf" H 6500 5450 50  0001 C CNN
F 4 "CL10B104KB8NNNC" H 6500 5450 50  0001 C CNN "Part Number"
F 5 "https://www.digikey.ca/product-detail/en/samsung-electro-mechanics/CL10B104KB8NNNC/1276-1000-1-ND/3889086" H 6500 5450 50  0001 C CNN "Digikey"
	1    6500 5450
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5DAAA19E
P 6500 5850
AR Path="/5D6EB2B2/5DAAA19E" Ref="C?"  Part="1" 
AR Path="/5D71C3EA/5DAAA19E" Ref="C19"  Part="1" 
AR Path="/5D765C4F/5DAAA19E" Ref="C?"  Part="1" 
F 0 "C19" H 6615 5896 50  0000 L CNN
F 1 "0.1uF" H 6615 5805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 6500 5850 50  0001 C CNN
F 3 "http://www.samsungsem.com/kr/support/product-search/mlcc/__icsFiles/afieldfile/2019/06/18/CL10B104KB8NNNC-19.pdf" H 6500 5850 50  0001 C CNN
F 4 "CL10B104KB8NNNC" H 6500 5850 50  0001 C CNN "Part Number"
F 5 "https://www.digikey.ca/product-detail/en/samsung-electro-mechanics/CL10B104KB8NNNC/1276-1000-1-ND/3889086" H 6500 5850 50  0001 C CNN "Digikey"
	1    6500 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 5500 4400 5500
Wire Wire Line
	4600 5600 4400 5600
Text GLabel 4400 5600 0    50   BiDi ~ 0
GP_RELAY_2_LOW
Text GLabel 4400 5500 0    50   BiDi ~ 0
GP_RELAY_2_HIGH
Wire Wire Line
	4600 5850 4400 5850
Wire Wire Line
	4600 5950 4400 5950
Text GLabel 4400 5950 0    50   BiDi ~ 0
GP_RELAY_3_LOW
Text GLabel 4400 5850 0    50   BiDi ~ 0
GP_RELAY_3_HIGH
Wire Wire Line
	4600 6200 4400 6200
Wire Wire Line
	4600 6300 4400 6300
Text GLabel 4400 6300 0    50   BiDi ~ 0
GP_RELAY_4_LOW
Text GLabel 4400 6200 0    50   BiDi ~ 0
GP_RELAY_4_HIGH
Text GLabel 8250 2800 0    50   BiDi ~ 0
GP_RELAY_1
Text GLabel 8250 2900 0    50   BiDi ~ 0
GP_RELAY_2
Text GLabel 8250 3000 0    50   BiDi ~ 0
GP_RELAY_3
Text GLabel 8250 3100 0    50   BiDi ~ 0
GP_RELAY_4
$Comp
L Connector:TestPoint TP3
U 1 1 5DA2F3C5
P 1400 5850
F 0 "TP3" H 1458 5968 50  0000 L CNN
F 1 "5015" H 1458 5877 50  0000 L CNN
F 2 "BigSur:Keystone_TP_SMD_5015" H 1600 5850 50  0001 C CNN
F 3 "https://www.keyelco.com/userAssets/file/M65p55.pdf" H 1600 5850 50  0001 C CNN
F 4 "https://www.digikey.ca/product-detail/en/keystone-electronics/5015/36-5015CT-ND/278886" H 1400 5850 50  0001 C CNN "Digikey"
	1    1400 5850
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP2
U 1 1 5DA2F64C
P 1900 5400
F 0 "TP2" H 1958 5518 50  0000 L CNN
F 1 "5015" H 1958 5427 50  0000 L CNN
F 2 "BigSur:Keystone_TP_SMD_5015" H 2100 5400 50  0001 C CNN
F 3 "https://www.keyelco.com/userAssets/file/M65p55.pdf" H 2100 5400 50  0001 C CNN
F 4 "https://www.digikey.ca/product-detail/en/keystone-electronics/5015/36-5015CT-ND/278886" H 1900 5400 50  0001 C CNN "Digikey"
	1    1900 5400
	1    0    0    -1  
$EndComp
Text Notes 9900 4100 0    50   ~ 0
SUPPLYING PARADUINO\nWITH 24V INPUT TO THIS\nBOARD. IT HAS ONBOARD\nREGUATION TO 5V AND 3.3V.
Text Notes 3450 6700 0    118  ~ 0
INVERTER KILL LINES
Text GLabel 8250 2700 0    50   BiDi ~ 0
SOFTWARE_INVERTER_KILL
$Comp
L Connector_Generic:Conn_01x03 J11
U 1 1 5DAB1B33
P 4800 6950
F 0 "J11" H 4880 6992 50  0000 L CNN
F 1 "Conn_01x03" H 4880 6901 50  0000 L CNN
F 2 "" H 4800 6950 50  0001 C CNN
F 3 "~" H 4800 6950 50  0001 C CNN
	1    4800 6950
	1    0    0    1   
$EndComp
Text GLabel 4500 6850 0    50   BiDi ~ 0
SOFTWARE_INVERTER_KILL
Wire Wire Line
	4500 6850 4600 6850
Wire Wire Line
	4600 6950 4500 6950
Text GLabel 4500 6950 0    50   BiDi ~ 0
BRAKE_SOLENOID_HIGH
Wire Wire Line
	4600 7050 4500 7050
Wire Wire Line
	4500 7050 4500 7100
$Comp
L power:GND #PWR055
U 1 1 5DABF7D4
P 4500 7100
F 0 "#PWR055" H 4500 6850 50  0001 C CNN
F 1 "GND" H 4505 6927 50  0000 C CNN
F 2 "" H 4500 7100 50  0001 C CNN
F 3 "" H 4500 7100 50  0001 C CNN
	1    4500 7100
	1    0    0    -1  
$EndComp
$Comp
L GeneralMCU-Example:SMD46 U4
U 1 1 5DAFFAE6
P 8950 2500
F 0 "U4" H 8950 3525 50  0000 C CNN
F 1 "SMD46" H 8950 3434 50  0000 C CNN
F 2 "GeneralMCU_Example:SMD42-FTP" H 8950 2500 50  0001 C CNN
F 3 "" H 8950 2500 50  0001 C CNN
	1    8950 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	8450 3800 8150 3800
Wire Wire Line
	8150 3800 8150 3900
$Comp
L power:GND #PWR0123
U 1 1 5DB0FAD7
P 8150 3900
F 0 "#PWR0123" H 8150 3650 50  0001 C CNN
F 1 "GND" H 8155 3727 50  0000 C CNN
F 2 "" H 8150 3900 50  0001 C CNN
F 3 "" H 8150 3900 50  0001 C CNN
	1    8150 3900
	1    0    0    -1  
$EndComp
NoConn ~ 8250 3900
Wire Wire Line
	8250 3900 8450 3900
Wire Wire Line
	9450 3900 9650 3900
NoConn ~ 9650 3900
Wire Wire Line
	9450 3800 9800 3800
Wire Wire Line
	9800 3800 9800 3900
$Comp
L power:GND #PWR0124
U 1 1 5DB38914
P 9800 3900
F 0 "#PWR0124" H 9800 3650 50  0001 C CNN
F 1 "GND" H 9805 3727 50  0000 C CNN
F 2 "" H 9800 3900 50  0001 C CNN
F 3 "" H 9800 3900 50  0001 C CNN
	1    9800 3900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C36
U 1 1 5DB83F87
P 1150 6950
F 0 "C36" H 1265 6996 50  0000 L CNN
F 1 "C" H 1265 6905 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 1188 6800 50  0001 C CNN
F 3 "~" H 1150 6950 50  0001 C CNN
	1    1150 6950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 7100 1150 7200
Wire Wire Line
	1500 7100 1500 7200
Wire Wire Line
	1850 7100 1850 7200
Wire Wire Line
	2200 7100 2200 7200
$Comp
L Device:C C37
U 1 1 5DBA8313
P 1500 6950
F 0 "C37" H 1615 6996 50  0000 L CNN
F 1 "C" H 1615 6905 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 1538 6800 50  0001 C CNN
F 3 "~" H 1500 6950 50  0001 C CNN
	1    1500 6950
	1    0    0    -1  
$EndComp
$Comp
L Device:C C38
U 1 1 5DBA8586
P 1850 6950
F 0 "C38" H 1965 6996 50  0000 L CNN
F 1 "C" H 1965 6905 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 1888 6800 50  0001 C CNN
F 3 "~" H 1850 6950 50  0001 C CNN
	1    1850 6950
	1    0    0    -1  
$EndComp
$Comp
L Device:C C39
U 1 1 5DBA8BBF
P 2200 6950
F 0 "C39" H 2315 6996 50  0000 L CNN
F 1 "C" H 2315 6905 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2238 6800 50  0001 C CNN
F 3 "~" H 2200 6950 50  0001 C CNN
	1    2200 6950
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 5350 8700 5350
$Comp
L power:GND #PWR059
U 1 1 5DA8653D
P 8600 5900
F 0 "#PWR059" H 8600 5650 50  0001 C CNN
F 1 "GND" H 8605 5727 50  0000 C CNN
F 2 "" H 8600 5900 50  0001 C CNN
F 3 "" H 8600 5900 50  0001 C CNN
	1    8600 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	8700 5450 8600 5450
Wire Wire Line
	8700 5650 8600 5650
Wire Wire Line
	8500 5800 8500 5750
Wire Wire Line
	8600 5800 8600 5900
Wire Wire Line
	8600 5650 8600 5800
Connection ~ 8600 5800
Wire Wire Line
	8600 5800 8500 5800
Connection ~ 8500 5550
Wire Wire Line
	8500 5550 8700 5550
Wire Wire Line
	8400 5550 8500 5550
$Comp
L Device:Jumper_NC_Small SB1
U 1 1 5DA6A1B1
P 8500 5650
F 0 "SB1" V 8500 5850 50  0000 R CNN
F 1 "Jumper_NC_Small" V 8400 6350 50  0000 R CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 8500 5650 50  0001 C CNN
F 3 "~" H 8500 5650 50  0001 C CNN
	1    8500 5650
	0    -1   -1   0   
$EndComp
Text GLabel 8400 5550 0    50   BiDi ~ 0
CAN_SHIELD
Text GLabel 8600 5350 0    50   BiDi ~ 0
CAN_H
Text GLabel 8600 5450 0    50   BiDi ~ 0
CAN_L
$Comp
L Connector_Generic:Conn_01x04 J13
U 1 1 5DA3E5B8
P 8900 5450
F 0 "J13" H 8980 5442 50  0000 L CNN
F 1 "Conn_01x04" H 8980 5351 50  0000 L CNN
F 2 "" H 8900 5450 50  0001 C CNN
F 3 "~" H 8900 5450 50  0001 C CNN
	1    8900 5450
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J4
U 1 1 5DC5E498
P 1500 2500
AR Path="/5D71C3EA/5DC5E498" Ref="J4"  Part="1" 
AR Path="/5D7D29A6/5DC5E498" Ref="J?"  Part="1" 
F 0 "J4" H 1580 2492 50  0000 L CNN
F 1 "XT30PW-M" H 1580 2401 50  0000 L CNN
F 2 "BigSur:AMASS_XT30PW-M" H 1500 2500 50  0001 C CNN
F 3 "https://www.aliexpress.com/item/32689137918.html" H 1500 2500 50  0001 C CNN
F 4 "https://www.aliexpress.com/item/32689137918.html" H 1500 2500 50  0001 C CNN "AliExpress"
	1    1500 2500
	1    0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J7
U 1 1 5DC635D0
P 2000 3800
AR Path="/5D71C3EA/5DC635D0" Ref="J7"  Part="1" 
AR Path="/5D7D29A6/5DC635D0" Ref="J?"  Part="1" 
F 0 "J7" H 2080 3792 50  0000 L CNN
F 1 "XT30PW-M" H 2080 3701 50  0000 L CNN
F 2 "BigSur:AMASS_XT30PW-M" H 2000 3800 50  0001 C CNN
F 3 "https://www.aliexpress.com/item/32689137918.html" H 2000 3800 50  0001 C CNN
F 4 "https://www.aliexpress.com/item/32689137918.html" H 2000 3800 50  0001 C CNN "AliExpress"
	1    2000 3800
	1    0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J9
U 1 1 5DC63BBB
P 2000 4350
AR Path="/5D71C3EA/5DC63BBB" Ref="J9"  Part="1" 
AR Path="/5D7D29A6/5DC63BBB" Ref="J?"  Part="1" 
F 0 "J9" H 2080 4342 50  0000 L CNN
F 1 "XT30PW-M" H 2080 4251 50  0000 L CNN
F 2 "BigSur:AMASS_XT30PW-M" H 2000 4350 50  0001 C CNN
F 3 "https://www.aliexpress.com/item/32689137918.html" H 2000 4350 50  0001 C CNN
F 4 "https://www.aliexpress.com/item/32689137918.html" H 2000 4350 50  0001 C CNN "AliExpress"
	1    2000 4350
	1    0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J2
U 1 1 5DC6919D
P 4900 1650
AR Path="/5D71C3EA/5DC6919D" Ref="J2"  Part="1" 
AR Path="/5D7D29A6/5DC6919D" Ref="J?"  Part="1" 
F 0 "J2" H 4980 1642 50  0000 L CNN
F 1 "XT30PW-M" H 4980 1551 50  0000 L CNN
F 2 "BigSur:AMASS_XT30PW-M" H 4900 1650 50  0001 C CNN
F 3 "https://www.aliexpress.com/item/32689137918.html" H 4900 1650 50  0001 C CNN
F 4 "https://www.aliexpress.com/item/32689137918.html" H 4900 1650 50  0001 C CNN "AliExpress"
	1    4900 1650
	1    0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J3
U 1 1 5DC69824
P 4900 2200
AR Path="/5D71C3EA/5DC69824" Ref="J3"  Part="1" 
AR Path="/5D7D29A6/5DC69824" Ref="J?"  Part="1" 
F 0 "J3" H 4980 2192 50  0000 L CNN
F 1 "XT30PW-M" H 4980 2101 50  0000 L CNN
F 2 "BigSur:AMASS_XT30PW-M" H 4900 2200 50  0001 C CNN
F 3 "https://www.aliexpress.com/item/32689137918.html" H 4900 2200 50  0001 C CNN
F 4 "https://www.aliexpress.com/item/32689137918.html" H 4900 2200 50  0001 C CNN "AliExpress"
	1    4900 2200
	1    0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J5
U 1 1 5DC6A309
P 4900 2750
AR Path="/5D71C3EA/5DC6A309" Ref="J5"  Part="1" 
AR Path="/5D7D29A6/5DC6A309" Ref="J?"  Part="1" 
F 0 "J5" H 4980 2742 50  0000 L CNN
F 1 "XT30PW-M" H 4980 2651 50  0000 L CNN
F 2 "BigSur:AMASS_XT30PW-M" H 4900 2750 50  0001 C CNN
F 3 "https://www.aliexpress.com/item/32689137918.html" H 4900 2750 50  0001 C CNN
F 4 "https://www.aliexpress.com/item/32689137918.html" H 4900 2750 50  0001 C CNN "AliExpress"
	1    4900 2750
	1    0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J6
U 1 1 5DC6A314
P 4900 3300
AR Path="/5D71C3EA/5DC6A314" Ref="J6"  Part="1" 
AR Path="/5D7D29A6/5DC6A314" Ref="J?"  Part="1" 
F 0 "J6" H 4980 3292 50  0000 L CNN
F 1 "XT30PW-M" H 4980 3201 50  0000 L CNN
F 2 "BigSur:AMASS_XT30PW-M" H 4900 3300 50  0001 C CNN
F 3 "https://www.aliexpress.com/item/32689137918.html" H 4900 3300 50  0001 C CNN
F 4 "https://www.aliexpress.com/item/32689137918.html" H 4900 3300 50  0001 C CNN "AliExpress"
	1    4900 3300
	1    0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J8
U 1 1 5DC6F566
P 4900 3850
AR Path="/5D71C3EA/5DC6F566" Ref="J8"  Part="1" 
AR Path="/5D7D29A6/5DC6F566" Ref="J?"  Part="1" 
F 0 "J8" H 4980 3842 50  0000 L CNN
F 1 "XT30PW-M" H 4980 3751 50  0000 L CNN
F 2 "BigSur:AMASS_XT30PW-M" H 4900 3850 50  0001 C CNN
F 3 "https://www.aliexpress.com/item/32689137918.html" H 4900 3850 50  0001 C CNN
F 4 "https://www.aliexpress.com/item/32689137918.html" H 4900 3850 50  0001 C CNN "AliExpress"
	1    4900 3850
	1    0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J10
U 1 1 5DC6F571
P 4900 4400
AR Path="/5D71C3EA/5DC6F571" Ref="J10"  Part="1" 
AR Path="/5D7D29A6/5DC6F571" Ref="J?"  Part="1" 
F 0 "J10" H 4980 4392 50  0000 L CNN
F 1 "XT30PW-M" H 4980 4301 50  0000 L CNN
F 2 "BigSur:AMASS_XT30PW-M" H 4900 4400 50  0001 C CNN
F 3 "https://www.aliexpress.com/item/32689137918.html" H 4900 4400 50  0001 C CNN
F 4 "https://www.aliexpress.com/item/32689137918.html" H 4900 4400 50  0001 C CNN "AliExpress"
	1    4900 4400
	1    0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J12
U 1 1 5DC79ABE
P 4800 5250
AR Path="/5D71C3EA/5DC79ABE" Ref="J12"  Part="1" 
AR Path="/5D7D29A6/5DC79ABE" Ref="J?"  Part="1" 
F 0 "J12" H 4880 5242 50  0000 L CNN
F 1 "XT30PW-M" H 4880 5151 50  0000 L CNN
F 2 "BigSur:AMASS_XT30PW-M" H 4800 5250 50  0001 C CNN
F 3 "https://www.aliexpress.com/item/32689137918.html" H 4800 5250 50  0001 C CNN
F 4 "https://www.aliexpress.com/item/32689137918.html" H 4800 5250 50  0001 C CNN "AliExpress"
	1    4800 5250
	1    0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J14
U 1 1 5DC7A437
P 4800 5600
AR Path="/5D71C3EA/5DC7A437" Ref="J14"  Part="1" 
AR Path="/5D7D29A6/5DC7A437" Ref="J?"  Part="1" 
F 0 "J14" H 4880 5592 50  0000 L CNN
F 1 "XT30PW-M" H 4880 5501 50  0000 L CNN
F 2 "BigSur:AMASS_XT30PW-M" H 4800 5600 50  0001 C CNN
F 3 "https://www.aliexpress.com/item/32689137918.html" H 4800 5600 50  0001 C CNN
F 4 "https://www.aliexpress.com/item/32689137918.html" H 4800 5600 50  0001 C CNN "AliExpress"
	1    4800 5600
	1    0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J15
U 1 1 5DC7A868
P 4800 5950
AR Path="/5D71C3EA/5DC7A868" Ref="J15"  Part="1" 
AR Path="/5D7D29A6/5DC7A868" Ref="J?"  Part="1" 
F 0 "J15" H 4880 5942 50  0000 L CNN
F 1 "XT30PW-M" H 4880 5851 50  0000 L CNN
F 2 "BigSur:AMASS_XT30PW-M" H 4800 5950 50  0001 C CNN
F 3 "https://www.aliexpress.com/item/32689137918.html" H 4800 5950 50  0001 C CNN
F 4 "https://www.aliexpress.com/item/32689137918.html" H 4800 5950 50  0001 C CNN "AliExpress"
	1    4800 5950
	1    0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J16
U 1 1 5DC7AD69
P 4800 6300
AR Path="/5D71C3EA/5DC7AD69" Ref="J16"  Part="1" 
AR Path="/5D7D29A6/5DC7AD69" Ref="J?"  Part="1" 
F 0 "J16" H 4880 6292 50  0000 L CNN
F 1 "XT30PW-M" H 4880 6201 50  0000 L CNN
F 2 "BigSur:AMASS_XT30PW-M" H 4800 6300 50  0001 C CNN
F 3 "https://www.aliexpress.com/item/32689137918.html" H 4800 6300 50  0001 C CNN
F 4 "https://www.aliexpress.com/item/32689137918.html" H 4800 6300 50  0001 C CNN "AliExpress"
	1    4800 6300
	1    0    0    1   
$EndComp
$Comp
L Device:LED D?
U 1 1 5DC6BC2D
P 2250 1750
AR Path="/5D6EB2B2/5DC6BC2D" Ref="D?"  Part="1" 
AR Path="/5D71C3EA/5DC6BC2D" Ref="D23"  Part="1" 
F 0 "D23" V 2350 1750 50  0000 R CNN
F 1 "QTLP651C4TR" H 2500 1850 50  0000 R CNN
F 2 "LED_SMD:LED_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 2250 1750 50  0001 C CNN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/Everlight%20PDFs/QTLP651C-2,3,4,7,B.pdf" H 2250 1750 50  0001 C CNN
F 4 "https://www.digikey.ca/product-detail/en/everlight-electronics-co-ltd/QTLP651C4TR/1080-1484-1-ND/7598723" V 2250 1750 50  0001 C CNN "Digikey"
	1    2250 1750
	0    -1   -1   0   
$EndComp
$Comp
L power:+24V #PWR0125
U 1 1 5DC71029
P 2250 1550
AR Path="/5D71C3EA/5DC71029" Ref="#PWR0125"  Part="1" 
AR Path="/5D7D29A6/5DC71029" Ref="#PWR?"  Part="1" 
F 0 "#PWR0125" H 2250 1400 50  0001 C CNN
F 1 "+24V" H 2265 1723 50  0000 C CNN
F 2 "" H 2250 1550 50  0001 C CNN
F 3 "" H 2250 1550 50  0001 C CNN
	1    2250 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 1550 2250 1600
$Comp
L Device:R_US R42
U 1 1 5DC76705
P 2250 2150
F 0 "R42" H 2318 2196 50  0000 L CNN
F 1 "2K" H 2318 2105 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 2290 2140 50  0001 C CNN
F 3 "https://www.rohm.com/datasheet/ESR01MZPF/esr-e" H 2250 2150 50  0001 C CNN
F 4 "ESR03EZPJ202" H 2250 2150 50  0001 C CNN "Part Number"
F 5 "https://www.digikey.ca/product-detail/en/rohm-semiconductor/ESR03EZPJ202/RHM2.0KDCT-ND/1762928" H 2250 2150 50  0001 C CNN "Digikey"
	1    2250 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 1900 2250 2000
Wire Wire Line
	2250 2300 2250 2350
$Comp
L power:GND #PWR0127
U 1 1 5DC808D4
P 2250 2350
AR Path="/5D71C3EA/5DC808D4" Ref="#PWR0127"  Part="1" 
AR Path="/5D7D29A6/5DC808D4" Ref="#PWR?"  Part="1" 
F 0 "#PWR0127" H 2250 2100 50  0001 C CNN
F 1 "GND" H 2255 2177 50  0000 C CNN
F 2 "" H 2250 2350 50  0001 C CNN
F 3 "" H 2250 2350 50  0001 C CNN
	1    2250 2350
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 5DC97B38
P 2750 1750
AR Path="/5D6EB2B2/5DC97B38" Ref="D?"  Part="1" 
AR Path="/5D71C3EA/5DC97B38" Ref="D24"  Part="1" 
F 0 "D24" V 2850 1750 50  0000 R CNN
F 1 "QTLP651C4TR" H 3000 1850 50  0000 R CNN
F 2 "LED_SMD:LED_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 2750 1750 50  0001 C CNN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/Everlight%20PDFs/QTLP651C-2,3,4,7,B.pdf" H 2750 1750 50  0001 C CNN
F 4 "https://www.digikey.ca/product-detail/en/everlight-electronics-co-ltd/QTLP651C4TR/1080-1484-1-ND/7598723" V 2750 1750 50  0001 C CNN "Digikey"
	1    2750 1750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2750 1550 2750 1600
$Comp
L Device:R_US R43
U 1 1 5DC97B4D
P 2750 2150
F 0 "R43" H 2818 2196 50  0000 L CNN
F 1 "1K" H 2818 2105 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 2790 2140 50  0001 C CNN
F 3 "https://www.seielect.com/catalog/sei-rmcf_rmcp.pdf" H 2750 2150 50  0001 C CNN
F 4 "https://www.digikey.ca/product-detail/en/stackpole-electronics-inc/RMCF0603JJ1K00/RMCF0603JJ1K00CT-ND/6053833" H 2750 2150 50  0001 C CNN "Digikey"
F 5 "RMCF0603JJ1K00" H 2750 2150 50  0001 C CNN "Part Number"
	1    2750 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 1900 2750 2000
Wire Wire Line
	2750 2300 2750 2350
$Comp
L power:GND #PWR0128
U 1 1 5DC97B59
P 2750 2350
AR Path="/5D71C3EA/5DC97B59" Ref="#PWR0128"  Part="1" 
AR Path="/5D7D29A6/5DC97B59" Ref="#PWR?"  Part="1" 
F 0 "#PWR0128" H 2750 2100 50  0001 C CNN
F 1 "GND" H 2755 2177 50  0000 C CNN
F 2 "" H 2750 2350 50  0001 C CNN
F 3 "" H 2750 2350 50  0001 C CNN
	1    2750 2350
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR0126
U 1 1 5DC9E390
P 2750 1550
AR Path="/5D71C3EA/5DC9E390" Ref="#PWR0126"  Part="1" 
AR Path="/5D7D29A6/5DC9E390" Ref="#PWR?"  Part="1" 
F 0 "#PWR0126" H 2750 1400 50  0001 C CNN
F 1 "+12V" H 2765 1723 50  0000 C CNN
F 2 "" H 2750 1550 50  0001 C CNN
F 3 "" H 2750 1550 50  0001 C CNN
	1    2750 1550
	1    0    0    -1  
$EndComp
NoConn ~ 9650 2700
$EndSCHEMATC