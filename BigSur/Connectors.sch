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
P 1500 1550
AR Path="/5D71C3EA/5D7C2574" Ref="J1"  Part="1" 
AR Path="/5D7D29A6/5D7C2574" Ref="J?"  Part="1" 
F 0 "J1" H 1580 1542 50  0000 L CNN
F 1 "XT30" H 1580 1451 50  0000 L CNN
F 2 "" H 1500 1550 50  0001 C CNN
F 3 "~" H 1500 1550 50  0001 C CNN
	1    1500 1550
	1    0    0    -1  
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
$Comp
L Connector_Generic:Conn_01x02 J4
U 1 1 5D7CEB37
P 1500 2400
AR Path="/5D71C3EA/5D7CEB37" Ref="J4"  Part="1" 
AR Path="/5D7D29A6/5D7CEB37" Ref="J?"  Part="1" 
F 0 "J4" H 1580 2392 50  0000 L CNN
F 1 "XT30" H 1580 2301 50  0000 L CNN
F 2 "" H 1500 2400 50  0001 C CNN
F 3 "~" H 1500 2400 50  0001 C CNN
	1    1500 2400
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
$Comp
L Connector_Generic:Conn_01x02 J2
U 1 1 5DEDB1FB
P 4900 1550
AR Path="/5D71C3EA/5DEDB1FB" Ref="J2"  Part="1" 
AR Path="/5D7D29A6/5DEDB1FB" Ref="J?"  Part="1" 
F 0 "J2" H 4980 1542 50  0000 L CNN
F 1 "XT30" H 4980 1451 50  0000 L CNN
F 2 "" H 4900 1550 50  0001 C CNN
F 3 "~" H 4900 1550 50  0001 C CNN
	1    4900 1550
	1    0    0    -1  
$EndComp
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
$Comp
L Connector_Generic:Conn_01x02 J3
U 1 1 5DEDFC4A
P 4900 2100
AR Path="/5D71C3EA/5DEDFC4A" Ref="J3"  Part="1" 
AR Path="/5D7D29A6/5DEDFC4A" Ref="J?"  Part="1" 
F 0 "J3" H 4980 2092 50  0000 L CNN
F 1 "XT30" H 4980 2001 50  0000 L CNN
F 2 "" H 4900 2100 50  0001 C CNN
F 3 "~" H 4900 2100 50  0001 C CNN
	1    4900 2100
	1    0    0    -1  
$EndComp
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
$Comp
L Connector_Generic:Conn_01x02 J5
U 1 1 5DEE1763
P 4900 2650
AR Path="/5D71C3EA/5DEE1763" Ref="J5"  Part="1" 
AR Path="/5D7D29A6/5DEE1763" Ref="J?"  Part="1" 
F 0 "J5" H 4980 2642 50  0000 L CNN
F 1 "XT30" H 4980 2551 50  0000 L CNN
F 2 "" H 4900 2650 50  0001 C CNN
F 3 "~" H 4900 2650 50  0001 C CNN
	1    4900 2650
	1    0    0    -1  
$EndComp
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
$Comp
L Connector_Generic:Conn_01x02 J6
U 1 1 5DEE177B
P 4900 3200
AR Path="/5D71C3EA/5DEE177B" Ref="J6"  Part="1" 
AR Path="/5D7D29A6/5DEE177B" Ref="J?"  Part="1" 
F 0 "J6" H 4980 3192 50  0000 L CNN
F 1 "XT30" H 4980 3101 50  0000 L CNN
F 2 "" H 4900 3200 50  0001 C CNN
F 3 "~" H 4900 3200 50  0001 C CNN
	1    4900 3200
	1    0    0    -1  
$EndComp
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
$Comp
L Connector_Generic:Conn_01x02 J8
U 1 1 5DEE50F1
P 4900 3750
AR Path="/5D71C3EA/5DEE50F1" Ref="J8"  Part="1" 
AR Path="/5D7D29A6/5DEE50F1" Ref="J?"  Part="1" 
F 0 "J8" H 4980 3742 50  0000 L CNN
F 1 "XT30" H 4980 3651 50  0000 L CNN
F 2 "" H 4900 3750 50  0001 C CNN
F 3 "~" H 4900 3750 50  0001 C CNN
	1    4900 3750
	1    0    0    -1  
$EndComp
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
$Comp
L Connector_Generic:Conn_01x02 J10
U 1 1 5DEE5109
P 4900 4300
AR Path="/5D71C3EA/5DEE5109" Ref="J10"  Part="1" 
AR Path="/5D7D29A6/5DEE5109" Ref="J?"  Part="1" 
F 0 "J10" H 4980 4292 50  0000 L CNN
F 1 "XT30" H 4980 4201 50  0000 L CNN
F 2 "" H 4900 4300 50  0001 C CNN
F 3 "~" H 4900 4300 50  0001 C CNN
	1    4900 4300
	1    0    0    -1  
$EndComp
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
Pumps
$Comp
L Connector_Generic:Conn_01x02 J7
U 1 1 5DEECBA9
P 2000 3700
AR Path="/5D71C3EA/5DEECBA9" Ref="J7"  Part="1" 
AR Path="/5D7D29A6/5DEECBA9" Ref="J?"  Part="1" 
F 0 "J7" H 2080 3692 50  0000 L CNN
F 1 "XT30" H 2080 3601 50  0000 L CNN
F 2 "" H 2000 3700 50  0001 C CNN
F 3 "~" H 2000 3700 50  0001 C CNN
	1    2000 3700
	1    0    0    -1  
$EndComp
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
$Comp
L Connector_Generic:Conn_01x02 J9
U 1 1 5DEECBC1
P 2000 4250
AR Path="/5D71C3EA/5DEECBC1" Ref="J9"  Part="1" 
AR Path="/5D7D29A6/5DEECBC1" Ref="J?"  Part="1" 
F 0 "J9" H 2080 4242 50  0000 L CNN
F 1 "XT30" H 2080 4151 50  0000 L CNN
F 2 "" H 2000 4250 50  0001 C CNN
F 3 "~" H 2000 4250 50  0001 C CNN
	1    2000 4250
	1    0    0    -1  
$EndComp
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
Text Notes 7100 2150 2    50   ~ 0
DUTY CYCLE ADJ PINS PROBABLY\nWILL NOT BE CONNECTED, PUTTING\nTHEM ON DAC LINES JUST IN CASE\nWE DECIDE WE DO WANT TO USE THEM.
Text Notes 850  5250 0    118  ~ 0
POWER TEST POINTS
$Comp
L Connector:TestPoint TP1
U 1 1 5D9BE445
P 1400 5750
F 0 "TP1" H 1458 5868 50  0000 L CNN
F 1 "5015" H 1458 5777 50  0000 L CNN
F 2 "BigSur:Keystone_TP_SMD_5015" H 1600 5750 50  0001 C CNN
F 3 "https://www.keyelco.com/userAssets/file/M65p55.pdf" H 1600 5750 50  0001 C CNN
F 4 "https://www.digikey.ca/product-detail/en/keystone-electronics/5015/36-5015CT-ND/278886" H 1400 5750 50  0001 C CNN "Digikey"
	1    1400 5750
	1    0    0    -1  
$EndComp
$Comp
L power:+24V #PWR055
U 1 1 5D9BEB73
P 1250 5700
AR Path="/5D71C3EA/5D9BEB73" Ref="#PWR055"  Part="1" 
AR Path="/5D7D29A6/5D9BEB73" Ref="#PWR?"  Part="1" 
F 0 "#PWR055" H 1250 5550 50  0001 C CNN
F 1 "+24V" H 1265 5873 50  0000 C CNN
F 2 "" H 1250 5700 50  0001 C CNN
F 3 "" H 1250 5700 50  0001 C CNN
	1    1250 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 5700 1250 5850
Wire Wire Line
	1400 5750 1400 5850
Wire Wire Line
	1400 5850 1250 5850
$Comp
L power:GND #PWR057
U 1 1 5D9CDDE1
P 1900 5900
F 0 "#PWR057" H 1900 5650 50  0001 C CNN
F 1 "GND" H 1905 5727 50  0000 C CNN
F 2 "" H 1900 5900 50  0001 C CNN
F 3 "" H 1900 5900 50  0001 C CNN
	1    1900 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 5900 1900 5750
Wire Wire Line
	1250 6150 1250 6300
Wire Wire Line
	1400 6200 1400 6300
Wire Wire Line
	1400 6300 1250 6300
$Comp
L power:+12V #PWR059
U 1 1 5D9D9F04
P 1250 6150
F 0 "#PWR059" H 1250 6000 50  0001 C CNN
F 1 "+12V" H 1265 6323 50  0000 C CNN
F 2 "" H 1250 6150 50  0001 C CNN
F 3 "" H 1250 6150 50  0001 C CNN
	1    1250 6150
	1    0    0    -1  
$EndComp
Text Notes 2100 6300 0    50   ~ 0
NOT SURE IF WE NEED\nTEST POINTS ON THESE,\nCAN’T HURT THOUGH.
Text Notes 9000 5000 0    118  ~ 0
CAN
Text GLabel 8650 5350 2    50   BiDi ~ 0
CAN_H
Text GLabel 8650 6150 2    50   BiDi ~ 0
CAN_L
Text GLabel 9800 5650 0    50   BiDi ~ 0
CAN_SHIELD
Wire Wire Line
	8650 6150 8500 6150
Wire Wire Line
	8650 5350 8500 5350
$Comp
L GeneralMCU-Example:SMD42 U4
U 1 1 5D9D5514
P 8950 2500
F 0 "U4" H 8950 3525 50  0000 C CNN
F 1 "SMD42" H 8950 3434 50  0000 C CNN
F 2 "GeneralMCU_Example:SMD42-FTP" H 8950 2500 50  0001 C CNN
F 3 "" H 8950 2500 50  0001 C CNN
	1    8950 2500
	1    0    0    -1  
$EndComp
Text Notes 3650 5250 0    118  ~ 0
GENERAL PURPOSE RELAYS
$Comp
L Connector_Generic:Conn_01x02 J11
U 1 1 5DA968D2
P 5200 5500
AR Path="/5D71C3EA/5DA968D2" Ref="J11"  Part="1" 
AR Path="/5D7D29A6/5DA968D2" Ref="J?"  Part="1" 
F 0 "J11" H 5280 5492 50  0000 L CNN
F 1 "XT30" H 5280 5401 50  0000 L CNN
F 2 "" H 5200 5500 50  0001 C CNN
F 3 "~" H 5200 5500 50  0001 C CNN
	1    5200 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 5500 4800 5500
Wire Wire Line
	5000 5600 4800 5600
Text GLabel 4800 5600 0    50   BiDi ~ 0
GP_RELAY_1_LOW
Text GLabel 4800 5500 0    50   BiDi ~ 0
GP_RELAY_1_HIGH
Text Notes 950  6700 0    118  ~ 0
MOUNTING HOLES
$Comp
L power:GNDPWR #PWR060
U 1 1 5DAB1B85
P 1150 7200
F 0 "#PWR060" H 1150 7000 50  0001 C CNN
F 1 "GNDPWR" H 1154 7046 50  0000 C CNN
F 2 "" H 1150 7150 50  0001 C CNN
F 3 "" H 1150 7150 50  0001 C CNN
	1    1150 7200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 7050 1150 7200
$Comp
L power:GNDPWR #PWR061
U 1 1 5DABBFF8
P 1500 7200
F 0 "#PWR061" H 1500 7000 50  0001 C CNN
F 1 "GNDPWR" H 1504 7046 50  0000 C CNN
F 2 "" H 1500 7150 50  0001 C CNN
F 3 "" H 1500 7150 50  0001 C CNN
	1    1500 7200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 7050 1500 7200
$Comp
L power:GNDPWR #PWR062
U 1 1 5DABF9B7
P 1850 7200
F 0 "#PWR062" H 1850 7000 50  0001 C CNN
F 1 "GNDPWR" H 1854 7046 50  0000 C CNN
F 2 "" H 1850 7150 50  0001 C CNN
F 3 "" H 1850 7150 50  0001 C CNN
	1    1850 7200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 7050 1850 7200
$Comp
L power:GNDPWR #PWR063
U 1 1 5DABF9CC
P 2200 7200
F 0 "#PWR063" H 2200 7000 50  0001 C CNN
F 1 "GNDPWR" H 2204 7046 50  0000 C CNN
F 2 "" H 2200 7150 50  0001 C CNN
F 3 "" H 2200 7150 50  0001 C CNN
	1    2200 7200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 7050 2200 7200
$Comp
L Device:D_TVS_x2_AAC D13
U 1 1 5D9D64FE
P 8500 5750
F 0 "D13" V 8454 5829 50  0000 L CNN
F 1 "NUP2105L" V 8545 5829 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 8350 5750 50  0001 C CNN
F 3 "https://www.onsemi.com/pub/Collateral/NUP2105L-D.PDF" H 8350 5750 50  0001 C CNN
F 4 "https://www.digikey.ca/product-detail/en/on-semiconductor/NUP2105LT1G/NUP2105LT1GOSCT-ND/1485001" V 8500 5750 50  0001 C CNN "Digikey"
	1    8500 5750
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR056
U 1 1 5D9DB0E6
P 8250 5750
F 0 "#PWR056" H 8250 5500 50  0001 C CNN
F 1 "GND" H 8255 5577 50  0000 C CNN
F 2 "" H 8250 5750 50  0001 C CNN
F 3 "" H 8250 5750 50  0001 C CNN
	1    8250 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	7900 5750 7900 5800
Wire Wire Line
	7900 5750 7900 5700
Connection ~ 7900 5750
Wire Wire Line
	7900 5400 7900 5350
Wire Wire Line
	7900 5350 8500 5350
Wire Wire Line
	8500 5350 8500 5400
Wire Wire Line
	8500 6100 8500 6150
Wire Wire Line
	8500 6150 7900 6150
Wire Wire Line
	7900 6150 7900 6100
Connection ~ 8500 6150
Connection ~ 8500 5350
Wire Wire Line
	7900 5750 8250 5750
Connection ~ 8250 5750
Wire Wire Line
	8250 5750 8350 5750
$Comp
L Connector_Generic:Conn_01x04 J12
U 1 1 5DA3E5B8
P 10300 5550
F 0 "J12" H 10380 5542 50  0000 L CNN
F 1 "Conn_01x04" H 10380 5451 50  0000 L CNN
F 2 "" H 10300 5550 50  0001 C CNN
F 3 "~" H 10300 5550 50  0001 C CNN
	1    10300 5550
	1    0    0    -1  
$EndComp
Text GLabel 10000 5450 0    50   BiDi ~ 0
CAN_H
Wire Wire Line
	10000 5450 10100 5450
Wire Wire Line
	10100 5550 10000 5550
Text GLabel 10000 5550 0    50   BiDi ~ 0
CAN_L
Wire Wire Line
	10100 5750 10000 5750
Wire Wire Line
	9800 5650 9900 5650
$Comp
L Device:Jumper_NC_Small SB1
U 1 1 5DA6A1B1
P 9900 5750
F 0 "SB1" V 9900 5950 50  0000 R CNN
F 1 "Jumper_NC_Small" V 9800 6450 50  0000 R CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 9900 5750 50  0001 C CNN
F 3 "~" H 9900 5750 50  0001 C CNN
	1    9900 5750
	0    -1   -1   0   
$EndComp
Connection ~ 9900 5650
Wire Wire Line
	9900 5650 10100 5650
Wire Wire Line
	10000 5750 10000 5900
Wire Wire Line
	10000 5900 9900 5900
Wire Wire Line
	9900 5900 9900 5850
Wire Wire Line
	10000 5900 10000 6000
Connection ~ 10000 5900
$Comp
L power:GND #PWR058
U 1 1 5DA8653D
P 10000 6000
F 0 "#PWR058" H 10000 5750 50  0001 C CNN
F 1 "GND" H 10005 5827 50  0000 C CNN
F 2 "" H 10000 6000 50  0001 C CNN
F 3 "" H 10000 6000 50  0001 C CNN
	1    10000 6000
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H1
U 1 1 5DA9FD3E
P 1150 6950
F 0 "H1" H 1250 6999 50  0000 L CNN
F 1 "Hole" H 1250 6908 50  0000 L CNN
F 2 "MountingHole:MountingHole_4.3mm_M4_Pad" H 1150 6950 50  0001 C CNN
F 3 "~" H 1150 6950 50  0001 C CNN
	1    1150 6950
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H2
U 1 1 5DAA48AE
P 1500 6950
F 0 "H2" H 1600 6999 50  0000 L CNN
F 1 "Hole" H 1600 6908 50  0000 L CNN
F 2 "MountingHole:MountingHole_4.3mm_M4_Pad" H 1500 6950 50  0001 C CNN
F 3 "~" H 1500 6950 50  0001 C CNN
	1    1500 6950
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H3
U 1 1 5DAA4B99
P 1850 6950
F 0 "H3" H 1950 6999 50  0000 L CNN
F 1 "Hole" H 1950 6908 50  0000 L CNN
F 2 "MountingHole:MountingHole_4.3mm_M4_Pad" H 1850 6950 50  0001 C CNN
F 3 "~" H 1850 6950 50  0001 C CNN
	1    1850 6950
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H4
U 1 1 5DAA4E4B
P 2200 6950
F 0 "H4" H 2300 6999 50  0000 L CNN
F 1 "Hole" H 2300 6908 50  0000 L CNN
F 2 "MountingHole:MountingHole_4.3mm_M4_Pad" H 2200 6950 50  0001 C CNN
F 3 "~" H 2200 6950 50  0001 C CNN
	1    2200 6950
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
P 8350 3750
F 0 "#PWR052" H 8350 3550 50  0001 C CNN
F 1 "GNDPWR" H 8354 3596 50  0000 C CNN
F 2 "" H 8350 3700 50  0001 C CNN
F 3 "" H 8350 3700 50  0001 C CNN
	1    8350 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	8350 3750 8350 3700
Wire Wire Line
	8350 3700 8450 3700
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
Text GLabel 9650 3200 2    50   BiDi ~ 0
DRV8806_SERIAL_DATOUT
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
Text GLabel 9650 2700 2    50   BiDi ~ 0
DRV8806_SERIAL_DATOUT_3.3V
Text GLabel 9650 2600 2    50   BiDi ~ 0
DRV103_nOK
$Comp
L Device:C C?
U 1 1 5DAA6B1E
P 7900 5550
AR Path="/5D6EB2B2/5DAA6B1E" Ref="C?"  Part="1" 
AR Path="/5D71C3EA/5DAA6B1E" Ref="C18"  Part="1" 
AR Path="/5D765C4F/5DAA6B1E" Ref="C?"  Part="1" 
F 0 "C18" H 8015 5596 50  0000 L CNN
F 1 "0.1uF" H 8015 5505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 7900 5550 50  0001 C CNN
F 3 "http://www.samsungsem.com/kr/support/product-search/mlcc/__icsFiles/afieldfile/2019/06/18/CL10B104KB8NNNC-19.pdf" H 7900 5550 50  0001 C CNN
F 4 "CL10B104KB8NNNC" H 7900 5550 50  0001 C CNN "Part Number"
F 5 "https://www.digikey.ca/product-detail/en/samsung-electro-mechanics/CL10B104KB8NNNC/1276-1000-1-ND/3889086" H 7900 5550 50  0001 C CNN "Digikey"
	1    7900 5550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5DAAA19E
P 7900 5950
AR Path="/5D6EB2B2/5DAAA19E" Ref="C?"  Part="1" 
AR Path="/5D71C3EA/5DAAA19E" Ref="C19"  Part="1" 
AR Path="/5D765C4F/5DAAA19E" Ref="C?"  Part="1" 
F 0 "C19" H 8015 5996 50  0000 L CNN
F 1 "0.1uF" H 8015 5905 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 7900 5950 50  0001 C CNN
F 3 "http://www.samsungsem.com/kr/support/product-search/mlcc/__icsFiles/afieldfile/2019/06/18/CL10B104KB8NNNC-19.pdf" H 7900 5950 50  0001 C CNN
F 4 "CL10B104KB8NNNC" H 7900 5950 50  0001 C CNN "Part Number"
F 5 "https://www.digikey.ca/product-detail/en/samsung-electro-mechanics/CL10B104KB8NNNC/1276-1000-1-ND/3889086" H 7900 5950 50  0001 C CNN "Digikey"
	1    7900 5950
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J13
U 1 1 5DAE47FD
P 5200 5850
AR Path="/5D71C3EA/5DAE47FD" Ref="J13"  Part="1" 
AR Path="/5D7D29A6/5DAE47FD" Ref="J?"  Part="1" 
F 0 "J13" H 5280 5842 50  0000 L CNN
F 1 "XT30" H 5280 5751 50  0000 L CNN
F 2 "" H 5200 5850 50  0001 C CNN
F 3 "~" H 5200 5850 50  0001 C CNN
	1    5200 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 5850 4800 5850
Wire Wire Line
	5000 5950 4800 5950
Text GLabel 4800 5950 0    50   BiDi ~ 0
GP_RELAY_2_LOW
Text GLabel 4800 5850 0    50   BiDi ~ 0
GP_RELAY_2_HIGH
$Comp
L Connector_Generic:Conn_01x02 J14
U 1 1 5DAE81B4
P 5200 6200
AR Path="/5D71C3EA/5DAE81B4" Ref="J14"  Part="1" 
AR Path="/5D7D29A6/5DAE81B4" Ref="J?"  Part="1" 
F 0 "J14" H 5280 6192 50  0000 L CNN
F 1 "XT30" H 5280 6101 50  0000 L CNN
F 2 "" H 5200 6200 50  0001 C CNN
F 3 "~" H 5200 6200 50  0001 C CNN
	1    5200 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 6200 4800 6200
Wire Wire Line
	5000 6300 4800 6300
Text GLabel 4800 6300 0    50   BiDi ~ 0
GP_RELAY_3_LOW
Text GLabel 4800 6200 0    50   BiDi ~ 0
GP_RELAY_3_HIGH
$Comp
L Connector_Generic:Conn_01x02 J15
U 1 1 5DAE81C2
P 5200 6550
AR Path="/5D71C3EA/5DAE81C2" Ref="J15"  Part="1" 
AR Path="/5D7D29A6/5DAE81C2" Ref="J?"  Part="1" 
F 0 "J15" H 5280 6542 50  0000 L CNN
F 1 "XT30" H 5280 6451 50  0000 L CNN
F 2 "" H 5200 6550 50  0001 C CNN
F 3 "~" H 5200 6550 50  0001 C CNN
	1    5200 6550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 6550 4800 6550
Wire Wire Line
	5000 6650 4800 6650
Text GLabel 4800 6650 0    50   BiDi ~ 0
GP_RELAY_4_LOW
Text GLabel 4800 6550 0    50   BiDi ~ 0
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
P 1400 6200
F 0 "TP3" H 1458 6318 50  0000 L CNN
F 1 "5015" H 1458 6227 50  0000 L CNN
F 2 "BigSur:Keystone_TP_SMD_5015" H 1600 6200 50  0001 C CNN
F 3 "https://www.keyelco.com/userAssets/file/M65p55.pdf" H 1600 6200 50  0001 C CNN
F 4 "https://www.digikey.ca/product-detail/en/keystone-electronics/5015/36-5015CT-ND/278886" H 1400 6200 50  0001 C CNN "Digikey"
	1    1400 6200
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP2
U 1 1 5DA2F64C
P 1900 5750
F 0 "TP2" H 1958 5868 50  0000 L CNN
F 1 "5015" H 1958 5777 50  0000 L CNN
F 2 "BigSur:Keystone_TP_SMD_5015" H 2100 5750 50  0001 C CNN
F 3 "https://www.keyelco.com/userAssets/file/M65p55.pdf" H 2100 5750 50  0001 C CNN
F 4 "https://www.digikey.ca/product-detail/en/keystone-electronics/5015/36-5015CT-ND/278886" H 1900 5750 50  0001 C CNN "Digikey"
	1    1900 5750
	1    0    0    -1  
$EndComp
Text Notes 9650 4100 0    50   ~ 0
SUPPLYING PARADUINO\nWITH 24V INPUT TO THIS\nBOARD. IT HAS ONBOARD\nREGUATION TO 5V AND 3.3V.
Text Notes 6000 4100 0    118  ~ 0
INVERTER KILL LINES
Text GLabel 8250 2700 0    50   BiDi ~ 0
SOFTWARE_INVERTER_KILL
$Comp
L Connector_Generic:Conn_01x03 J16
U 1 1 5DAB1B33
P 7300 4500
F 0 "J16" H 7380 4542 50  0000 L CNN
F 1 "Conn_01x03" H 7380 4451 50  0000 L CNN
F 2 "" H 7300 4500 50  0001 C CNN
F 3 "~" H 7300 4500 50  0001 C CNN
	1    7300 4500
	1    0    0    -1  
$EndComp
Text GLabel 7000 4400 0    50   BiDi ~ 0
SOFTWARE_INVERTER_KILL
Wire Wire Line
	7000 4400 7100 4400
Wire Wire Line
	7100 4500 7000 4500
Text GLabel 7000 4500 0    50   BiDi ~ 0
BRAKE_SOLENOID_HIGH
Wire Wire Line
	7100 4600 7000 4600
Wire Wire Line
	7000 4600 7000 4650
$Comp
L power:GND #PWR0118
U 1 1 5DABF7D4
P 7000 4650
F 0 "#PWR0118" H 7000 4400 50  0001 C CNN
F 1 "GND" H 7005 4477 50  0000 C CNN
F 2 "" H 7000 4650 50  0001 C CNN
F 3 "" H 7000 4650 50  0001 C CNN
	1    7000 4650
	1    0    0    -1  
$EndComp
$EndSCHEMATC
