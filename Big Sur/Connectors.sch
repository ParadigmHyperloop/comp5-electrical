EESchema Schematic File Version 4
LIBS:Big Sur-cache
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
P 1500 1800
AR Path="/5D71C3EA/5D7C2574" Ref="J1"  Part="1" 
AR Path="/5D7D29A6/5D7C2574" Ref="J?"  Part="1" 
F 0 "J1" H 1580 1792 50  0000 L CNN
F 1 "XT30" H 1580 1701 50  0000 L CNN
F 2 "" H 1500 1800 50  0001 C CNN
F 3 "~" H 1500 1800 50  0001 C CNN
	1    1500 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 1800 1100 1800
Wire Wire Line
	1100 1800 1100 1700
Wire Wire Line
	1300 1900 1100 1900
Wire Wire Line
	1100 1900 1100 2000
$Comp
L power:+24V #PWR024
U 1 1 5D7C37EA
P 1100 1700
AR Path="/5D71C3EA/5D7C37EA" Ref="#PWR024"  Part="1" 
AR Path="/5D7D29A6/5D7C37EA" Ref="#PWR?"  Part="1" 
F 0 "#PWR024" H 1100 1550 50  0001 C CNN
F 1 "+24V" H 1115 1873 50  0000 C CNN
F 2 "" H 1100 1700 50  0001 C CNN
F 3 "" H 1100 1700 50  0001 C CNN
	1    1100 1700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR026
U 1 1 5D7C4463
P 1100 2000
AR Path="/5D71C3EA/5D7C4463" Ref="#PWR026"  Part="1" 
AR Path="/5D7D29A6/5D7C4463" Ref="#PWR?"  Part="1" 
F 0 "#PWR026" H 1100 1750 50  0001 C CNN
F 1 "GND" H 1105 1827 50  0000 C CNN
F 2 "" H 1100 2000 50  0001 C CNN
F 3 "" H 1100 2000 50  0001 C CNN
	1    1100 2000
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J4
U 1 1 5D7CEB37
P 1500 2650
AR Path="/5D71C3EA/5D7CEB37" Ref="J4"  Part="1" 
AR Path="/5D7D29A6/5D7CEB37" Ref="J?"  Part="1" 
F 0 "J4" H 1580 2642 50  0000 L CNN
F 1 "XT30" H 1580 2551 50  0000 L CNN
F 2 "" H 1500 2650 50  0001 C CNN
F 3 "~" H 1500 2650 50  0001 C CNN
	1    1500 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 2650 1100 2650
Wire Wire Line
	1100 2650 1100 2550
Wire Wire Line
	1300 2750 1100 2750
Wire Wire Line
	1100 2750 1100 2850
$Comp
L power:GND #PWR031
U 1 1 5D7CEB4F
P 1100 2850
AR Path="/5D71C3EA/5D7CEB4F" Ref="#PWR031"  Part="1" 
AR Path="/5D7D29A6/5D7CEB4F" Ref="#PWR?"  Part="1" 
F 0 "#PWR031" H 1100 2600 50  0001 C CNN
F 1 "GND" H 1105 2677 50  0000 C CNN
F 2 "" H 1100 2850 50  0001 C CNN
F 3 "" H 1100 2850 50  0001 C CNN
	1    1100 2850
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR029
U 1 1 5D7CFD5E
P 1100 2550
AR Path="/5D71C3EA/5D7CFD5E" Ref="#PWR029"  Part="1" 
AR Path="/5D7D29A6/5D7CFD5E" Ref="#PWR?"  Part="1" 
F 0 "#PWR029" H 1100 2400 50  0001 C CNN
F 1 "+12V" H 1115 2723 50  0000 C CNN
F 2 "" H 1100 2550 50  0001 C CNN
F 3 "" H 1100 2550 50  0001 C CNN
	1    1100 2550
	1    0    0    -1  
$EndComp
Text Notes 850  1400 0    118  ~ 0
Power Input
$Comp
L Connector_Generic:Conn_02x21_Counter_Clockwise J6
U 1 1 5D85E3A4
P 9150 3150
F 0 "J6" H 9200 4367 50  0000 C CNN
F 1 "SMD CASTELLATION PKG" H 9200 4276 50  0000 C CNN
F 2 "" H 9150 3150 50  0001 C CNN
F 3 "~" H 9150 3150 50  0001 C CNN
	1    9150 3150
	1    0    0    -1  
$EndComp
Text Notes 8700 1800 0    118  ~ 0
Strideduino
Wire Wire Line
	8750 2150 8950 2150
NoConn ~ 8750 2150
Text Notes 8700 2150 2    50   ~ 0
CHASSIS GROUND… WHAT TO DO WITH YOU?
Wire Wire Line
	8950 2250 8500 2250
Wire Wire Line
	8500 2250 8500 2300
$Comp
L power:GND #PWR028
U 1 1 5D896FCF
P 8500 2300
F 0 "#PWR028" H 8500 2050 50  0001 C CNN
F 1 "GND" H 8505 2127 50  0000 C CNN
F 2 "" H 8500 2300 50  0001 C CNN
F 3 "" H 8500 2300 50  0001 C CNN
	1    8500 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	8950 2350 8750 2350
Wire Wire Line
	8950 2450 8750 2450
Wire Wire Line
	8950 2550 8750 2550
Wire Wire Line
	8950 2650 8750 2650
Wire Wire Line
	8950 2750 8750 2750
Wire Wire Line
	8950 2850 8750 2850
Wire Wire Line
	8950 3250 8750 3250
Wire Wire Line
	8950 3350 8750 3350
Wire Wire Line
	8950 3450 8750 3450
Wire Wire Line
	8950 3550 8750 3550
Wire Wire Line
	8950 3650 8750 3650
Wire Wire Line
	8950 3750 8750 3750
Wire Wire Line
	8950 3850 8750 3850
Wire Wire Line
	8950 3950 8750 3950
Wire Wire Line
	8950 4050 8750 4050
Wire Wire Line
	8950 4150 8750 4150
Wire Wire Line
	9650 2350 9450 2350
Wire Wire Line
	9650 2450 9450 2450
Wire Wire Line
	9650 2550 9450 2550
Wire Wire Line
	9650 2650 9450 2650
Wire Wire Line
	9650 2750 9450 2750
Wire Wire Line
	9650 2850 9450 2850
Wire Wire Line
	9650 2950 9450 2950
Wire Wire Line
	9650 3050 9450 3050
Wire Wire Line
	9650 3150 9450 3150
Wire Wire Line
	9650 3250 9450 3250
Wire Wire Line
	9650 3350 9450 3350
Wire Wire Line
	9650 3450 9450 3450
Wire Wire Line
	9650 3550 9450 3550
Wire Wire Line
	9650 3650 9450 3650
Wire Wire Line
	9650 3750 9450 3750
Wire Wire Line
	9650 3850 9450 3850
Wire Wire Line
	9650 3950 9450 3950
Wire Wire Line
	9650 4050 9450 4050
Wire Wire Line
	9650 4150 9450 4150
Wire Wire Line
	9650 2150 9450 2150
Wire Wire Line
	9650 2250 9450 2250
NoConn ~ 9650 2150
NoConn ~ 9650 2250
NoConn ~ 9650 2650
NoConn ~ 9650 2750
NoConn ~ 9650 2850
NoConn ~ 9650 3950
NoConn ~ 9650 4050
NoConn ~ 9650 4150
NoConn ~ 8750 4150
NoConn ~ 8750 4050
NoConn ~ 8750 3950
NoConn ~ 8750 3850
NoConn ~ 8750 2650
NoConn ~ 8750 2550
NoConn ~ 8750 2450
NoConn ~ 8750 2350
$Comp
L power:+5V #PWR033
U 1 1 5D8BF1CA
P 7150 2900
F 0 "#PWR033" H 7150 2750 50  0001 C CNN
F 1 "+5V" H 7165 3073 50  0000 C CNN
F 2 "" H 7150 2900 50  0001 C CNN
F 3 "" H 7150 2900 50  0001 C CNN
	1    7150 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 2900 7150 3050
Wire Wire Line
	7150 3050 8950 3050
Wire Wire Line
	6950 2900 6950 3150
Wire Wire Line
	6950 3150 8950 3150
$Comp
L power:+3.3V #PWR032
U 1 1 5DA3CFA8
P 6950 2900
F 0 "#PWR032" H 6950 2750 50  0001 C CNN
F 1 "+3.3V" H 6965 3073 50  0000 C CNN
F 2 "" H 6950 2900 50  0001 C CNN
F 3 "" H 6950 2900 50  0001 C CNN
	1    6950 2900
	1    0    0    -1  
$EndComp
Text Notes 4050 1400 0    118  ~ 0
Solenoids
$Comp
L Connector_Generic:Conn_01x02 J2
U 1 1 5DEDB1FB
P 4900 1800
AR Path="/5D71C3EA/5DEDB1FB" Ref="J2"  Part="1" 
AR Path="/5D7D29A6/5DEDB1FB" Ref="J?"  Part="1" 
F 0 "J2" H 4980 1792 50  0000 L CNN
F 1 "XT30" H 4980 1701 50  0000 L CNN
F 2 "" H 4900 1800 50  0001 C CNN
F 3 "~" H 4900 1800 50  0001 C CNN
	1    4900 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 1800 4500 1800
Wire Wire Line
	4500 1800 4500 1700
Wire Wire Line
	4700 1900 4500 1900
$Comp
L power:+24V #PWR025
U 1 1 5DEDB209
P 4500 1700
AR Path="/5D71C3EA/5DEDB209" Ref="#PWR025"  Part="1" 
AR Path="/5D7D29A6/5DEDB209" Ref="#PWR?"  Part="1" 
F 0 "#PWR025" H 4500 1550 50  0001 C CNN
F 1 "+24V" H 4515 1873 50  0000 C CNN
F 2 "" H 4500 1700 50  0001 C CNN
F 3 "" H 4500 1700 50  0001 C CNN
	1    4500 1700
	1    0    0    -1  
$EndComp
Text GLabel 4500 1900 0    50   BiDi ~ 0
SOLENOID_LS_CHANNEL_1
$Comp
L Connector_Generic:Conn_01x02 J3
U 1 1 5DEDFC4A
P 4900 2350
AR Path="/5D71C3EA/5DEDFC4A" Ref="J3"  Part="1" 
AR Path="/5D7D29A6/5DEDFC4A" Ref="J?"  Part="1" 
F 0 "J3" H 4980 2342 50  0000 L CNN
F 1 "XT30" H 4980 2251 50  0000 L CNN
F 2 "" H 4900 2350 50  0001 C CNN
F 3 "~" H 4900 2350 50  0001 C CNN
	1    4900 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 2350 4500 2350
Wire Wire Line
	4500 2350 4500 2250
Wire Wire Line
	4700 2450 4500 2450
$Comp
L power:+24V #PWR027
U 1 1 5DEDFC57
P 4500 2250
AR Path="/5D71C3EA/5DEDFC57" Ref="#PWR027"  Part="1" 
AR Path="/5D7D29A6/5DEDFC57" Ref="#PWR?"  Part="1" 
F 0 "#PWR027" H 4500 2100 50  0001 C CNN
F 1 "+24V" H 4515 2423 50  0000 C CNN
F 2 "" H 4500 2250 50  0001 C CNN
F 3 "" H 4500 2250 50  0001 C CNN
	1    4500 2250
	1    0    0    -1  
$EndComp
Text GLabel 4500 2450 0    50   BiDi ~ 0
SOLENOID_LS_CHANNEL_2
$Comp
L Connector_Generic:Conn_01x02 J5
U 1 1 5DEE1763
P 4900 2900
AR Path="/5D71C3EA/5DEE1763" Ref="J5"  Part="1" 
AR Path="/5D7D29A6/5DEE1763" Ref="J?"  Part="1" 
F 0 "J5" H 4980 2892 50  0000 L CNN
F 1 "XT30" H 4980 2801 50  0000 L CNN
F 2 "" H 4900 2900 50  0001 C CNN
F 3 "~" H 4900 2900 50  0001 C CNN
	1    4900 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 2900 4500 2900
Wire Wire Line
	4500 2900 4500 2800
Wire Wire Line
	4700 3000 4500 3000
$Comp
L power:+24V #PWR030
U 1 1 5DEE1770
P 4500 2800
AR Path="/5D71C3EA/5DEE1770" Ref="#PWR030"  Part="1" 
AR Path="/5D7D29A6/5DEE1770" Ref="#PWR?"  Part="1" 
F 0 "#PWR030" H 4500 2650 50  0001 C CNN
F 1 "+24V" H 4515 2973 50  0000 C CNN
F 2 "" H 4500 2800 50  0001 C CNN
F 3 "" H 4500 2800 50  0001 C CNN
	1    4500 2800
	1    0    0    -1  
$EndComp
Text GLabel 4500 3000 0    50   BiDi ~ 0
SOLENOID_LS_CHANNEL_3
$Comp
L Connector_Generic:Conn_01x02 J7
U 1 1 5DEE177B
P 4900 3450
AR Path="/5D71C3EA/5DEE177B" Ref="J7"  Part="1" 
AR Path="/5D7D29A6/5DEE177B" Ref="J?"  Part="1" 
F 0 "J7" H 4980 3442 50  0000 L CNN
F 1 "XT30" H 4980 3351 50  0000 L CNN
F 2 "" H 4900 3450 50  0001 C CNN
F 3 "~" H 4900 3450 50  0001 C CNN
	1    4900 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 3450 4500 3450
Wire Wire Line
	4500 3450 4500 3350
Wire Wire Line
	4700 3550 4500 3550
$Comp
L power:+24V #PWR035
U 1 1 5DEE1788
P 4500 3350
AR Path="/5D71C3EA/5DEE1788" Ref="#PWR035"  Part="1" 
AR Path="/5D7D29A6/5DEE1788" Ref="#PWR?"  Part="1" 
F 0 "#PWR035" H 4500 3200 50  0001 C CNN
F 1 "+24V" H 4515 3523 50  0000 C CNN
F 2 "" H 4500 3350 50  0001 C CNN
F 3 "" H 4500 3350 50  0001 C CNN
	1    4500 3350
	1    0    0    -1  
$EndComp
Text GLabel 4500 3550 0    50   BiDi ~ 0
SOLENOID_LS_CHANNEL_4
$Comp
L Connector_Generic:Conn_01x02 J9
U 1 1 5DEE50F1
P 4900 4000
AR Path="/5D71C3EA/5DEE50F1" Ref="J9"  Part="1" 
AR Path="/5D7D29A6/5DEE50F1" Ref="J?"  Part="1" 
F 0 "J9" H 4980 3992 50  0000 L CNN
F 1 "XT30" H 4980 3901 50  0000 L CNN
F 2 "" H 4900 4000 50  0001 C CNN
F 3 "~" H 4900 4000 50  0001 C CNN
	1    4900 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 4000 4500 4000
Wire Wire Line
	4500 4000 4500 3900
Wire Wire Line
	4700 4100 4500 4100
$Comp
L power:+24V #PWR037
U 1 1 5DEE50FE
P 4500 3900
AR Path="/5D71C3EA/5DEE50FE" Ref="#PWR037"  Part="1" 
AR Path="/5D7D29A6/5DEE50FE" Ref="#PWR?"  Part="1" 
F 0 "#PWR037" H 4500 3750 50  0001 C CNN
F 1 "+24V" H 4515 4073 50  0000 C CNN
F 2 "" H 4500 3900 50  0001 C CNN
F 3 "" H 4500 3900 50  0001 C CNN
	1    4500 3900
	1    0    0    -1  
$EndComp
Text GLabel 4500 4100 0    50   BiDi ~ 0
SOLENOID_ECONOMIZED_CHANNEL_1
$Comp
L Connector_Generic:Conn_01x02 J11
U 1 1 5DEE5109
P 4900 4550
AR Path="/5D71C3EA/5DEE5109" Ref="J11"  Part="1" 
AR Path="/5D7D29A6/5DEE5109" Ref="J?"  Part="1" 
F 0 "J11" H 4980 4542 50  0000 L CNN
F 1 "XT30" H 4980 4451 50  0000 L CNN
F 2 "" H 4900 4550 50  0001 C CNN
F 3 "~" H 4900 4550 50  0001 C CNN
	1    4900 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 4550 4500 4550
Wire Wire Line
	4500 4550 4500 4450
Wire Wire Line
	4700 4650 4500 4650
$Comp
L power:+24V #PWR039
U 1 1 5DEE5116
P 4500 4450
AR Path="/5D71C3EA/5DEE5116" Ref="#PWR039"  Part="1" 
AR Path="/5D7D29A6/5DEE5116" Ref="#PWR?"  Part="1" 
F 0 "#PWR039" H 4500 4300 50  0001 C CNN
F 1 "+24V" H 4515 4623 50  0000 C CNN
F 2 "" H 4500 4450 50  0001 C CNN
F 3 "" H 4500 4450 50  0001 C CNN
	1    4500 4450
	1    0    0    -1  
$EndComp
Text GLabel 4500 4650 0    50   BiDi ~ 0
SOLENOID_ECONOMIZED_CHANNEL_2
Text Notes 600  850  0    118  ~ 0
“Just do XT30 for everything” -Shane
Text Notes 1350 3550 0    118  ~ 0
Pumps
$Comp
L Connector_Generic:Conn_01x02 J8
U 1 1 5DEECBA9
P 2000 3950
AR Path="/5D71C3EA/5DEECBA9" Ref="J8"  Part="1" 
AR Path="/5D7D29A6/5DEECBA9" Ref="J?"  Part="1" 
F 0 "J8" H 2080 3942 50  0000 L CNN
F 1 "XT30" H 2080 3851 50  0000 L CNN
F 2 "" H 2000 3950 50  0001 C CNN
F 3 "~" H 2000 3950 50  0001 C CNN
	1    2000 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 3950 1600 3950
Wire Wire Line
	1600 3950 1600 3850
Wire Wire Line
	1800 4050 1600 4050
$Comp
L power:+24V #PWR036
U 1 1 5DEECBB6
P 1600 3850
AR Path="/5D71C3EA/5DEECBB6" Ref="#PWR036"  Part="1" 
AR Path="/5D7D29A6/5DEECBB6" Ref="#PWR?"  Part="1" 
F 0 "#PWR036" H 1600 3700 50  0001 C CNN
F 1 "+24V" H 1615 4023 50  0000 C CNN
F 2 "" H 1600 3850 50  0001 C CNN
F 3 "" H 1600 3850 50  0001 C CNN
	1    1600 3850
	1    0    0    -1  
$EndComp
Text GLabel 1600 4050 0    50   BiDi ~ 0
PUMP_LS_CHANNEL_1
$Comp
L Connector_Generic:Conn_01x02 J10
U 1 1 5DEECBC1
P 2000 4500
AR Path="/5D71C3EA/5DEECBC1" Ref="J10"  Part="1" 
AR Path="/5D7D29A6/5DEECBC1" Ref="J?"  Part="1" 
F 0 "J10" H 2080 4492 50  0000 L CNN
F 1 "XT30" H 2080 4401 50  0000 L CNN
F 2 "" H 2000 4500 50  0001 C CNN
F 3 "~" H 2000 4500 50  0001 C CNN
	1    2000 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 4500 1600 4500
Wire Wire Line
	1600 4500 1600 4400
Wire Wire Line
	1800 4600 1600 4600
$Comp
L power:+24V #PWR038
U 1 1 5DEECBCE
P 1600 4400
AR Path="/5D71C3EA/5DEECBCE" Ref="#PWR038"  Part="1" 
AR Path="/5D7D29A6/5DEECBCE" Ref="#PWR?"  Part="1" 
F 0 "#PWR038" H 1600 4250 50  0001 C CNN
F 1 "+24V" H 1615 4573 50  0000 C CNN
F 2 "" H 1600 4400 50  0001 C CNN
F 3 "" H 1600 4400 50  0001 C CNN
	1    1600 4400
	1    0    0    -1  
$EndComp
Text GLabel 1600 4600 0    50   BiDi ~ 0
PUMP_LS_CHANNEL_2
Text GLabel 8750 2750 0    50   BiDi ~ 0
SOLENOID_CURRENT_SENSE_1
Text GLabel 8750 2850 0    50   BiDi ~ 0
SOLENOID_CURRENT_SENSE_2
Text GLabel 8750 3250 0    50   BiDi ~ 0
SOLENOID_CURRENT_SENSE_3
Text GLabel 8750 3550 0    50   BiDi ~ 0
SOLENOID_CURRENT_SENSE_4
Text GLabel 8750 3650 0    50   BiDi ~ 0
SOLENOID_ECONOMIZED_CURRENT_SENSE_1
Text GLabel 8750 3750 0    50   BiDi ~ 0
SOLENOID_ECONOMIZED_CURRENT_SENSE_2
Text GLabel 8750 3350 0    50   BiDi ~ 0
DRV103_DUTY_CYCLE_ADJ_1
Text GLabel 8750 3450 0    50   BiDi ~ 0
DRV103_DUTY_CYCLE_ADJ_2
Text Notes 7550 3550 2    50   ~ 0
DUTY CYCLE ADJ PINS PROBABLY\nWILL NOT BE CONNECTED, PUTTING\nTHEM ON DAC LINES JUST IN CASE\nWE DECIDE WE DO WANT TO USE THEM.
Wire Wire Line
	7350 2950 7350 2900
Wire Wire Line
	7350 2950 8950 2950
$Comp
L power:+24V #PWR034
U 1 1 5D9B6A5F
P 7350 2900
F 0 "#PWR034" H 7350 2750 50  0001 C CNN
F 1 "+24V" H 7365 3073 50  0000 C CNN
F 2 "" H 7350 2900 50  0001 C CNN
F 3 "" H 7350 2900 50  0001 C CNN
	1    7350 2900
	1    0    0    -1  
$EndComp
Text GLabel 9650 2350 2    50   BiDi ~ 0
DRV103_nOK
Text GLabel 9650 2450 2    50   BiDi ~ 0
DRV8806_SERIAL_DATOUT_3.3V
Text GLabel 9650 2550 2    50   BiDi ~ 0
DRV8806_nFAULT
Text GLabel 9650 2950 2    50   BiDi ~ 0
DRV103_INPUT_1
Text GLabel 9650 3050 2    50   BiDi ~ 0
DRV103_INPUT_2
Text GLabel 9650 3650 2    50   BiDi ~ 0
DRV8806_SERIAL_LATCH
Text GLabel 9650 3550 2    50   BiDi ~ 0
DRV8806_SERIAL_CLK
Text GLabel 9650 3450 2    50   BiDi ~ 0
DRV8806_SERIAL_DATIN
Text GLabel 9650 3250 2    50   BiDi ~ 0
DRV8806_nENBL
Text GLabel 9650 3150 2    50   BiDi ~ 0
DRV8806_RESET
Text GLabel 9650 3350 2    50   BiDi ~ 0
DRV8806_SERIAL_DATOUT
Text GLabel 9650 3750 2    50   BiDi ~ 0
PUMP_INPUT_1
Text GLabel 9650 3850 2    50   BiDi ~ 0
PUMP_INPUT_1
$EndSCHEMATC
