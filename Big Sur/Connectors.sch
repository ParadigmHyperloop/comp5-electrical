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
Comment2 ""
Comment3 ""
Comment4 "Jasper Rubin"
$EndDescr
$Comp
L Connector_Generic:Conn_01x02 J1
U 1 1 5D7C2574
P 2350 2000
AR Path="/5D71C3EA/5D7C2574" Ref="J1"  Part="1" 
AR Path="/5D7D29A6/5D7C2574" Ref="J?"  Part="1" 
F 0 "J1" H 2430 1992 50  0000 L CNN
F 1 "XT90" H 2430 1901 50  0000 L CNN
F 2 "" H 2350 2000 50  0001 C CNN
F 3 "~" H 2350 2000 50  0001 C CNN
	1    2350 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 2000 1950 2000
Wire Wire Line
	1950 2000 1950 1900
Wire Wire Line
	2150 2100 1950 2100
Wire Wire Line
	1950 2100 1950 2200
$Comp
L power:+24V #PWR027
U 1 1 5D7C37EA
P 1950 1900
AR Path="/5D71C3EA/5D7C37EA" Ref="#PWR027"  Part="1" 
AR Path="/5D7D29A6/5D7C37EA" Ref="#PWR?"  Part="1" 
F 0 "#PWR027" H 1950 1750 50  0001 C CNN
F 1 "+24V" H 1965 2073 50  0000 C CNN
F 2 "" H 1950 1900 50  0001 C CNN
F 3 "" H 1950 1900 50  0001 C CNN
	1    1950 1900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR028
U 1 1 5D7C4463
P 1950 2200
AR Path="/5D71C3EA/5D7C4463" Ref="#PWR028"  Part="1" 
AR Path="/5D7D29A6/5D7C4463" Ref="#PWR?"  Part="1" 
F 0 "#PWR028" H 1950 1950 50  0001 C CNN
F 1 "GND" H 1955 2027 50  0000 C CNN
F 2 "" H 1950 2200 50  0001 C CNN
F 3 "" H 1950 2200 50  0001 C CNN
	1    1950 2200
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J2
U 1 1 5D7CEB37
P 2350 2850
AR Path="/5D71C3EA/5D7CEB37" Ref="J2"  Part="1" 
AR Path="/5D7D29A6/5D7CEB37" Ref="J?"  Part="1" 
F 0 "J2" H 2430 2842 50  0000 L CNN
F 1 "XT90" H 2430 2751 50  0000 L CNN
F 2 "" H 2350 2850 50  0001 C CNN
F 3 "~" H 2350 2850 50  0001 C CNN
	1    2350 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 2850 1950 2850
Wire Wire Line
	1950 2850 1950 2750
Wire Wire Line
	2150 2950 1950 2950
Wire Wire Line
	1950 2950 1950 3050
$Comp
L power:GND #PWR030
U 1 1 5D7CEB4F
P 1950 3050
AR Path="/5D71C3EA/5D7CEB4F" Ref="#PWR030"  Part="1" 
AR Path="/5D7D29A6/5D7CEB4F" Ref="#PWR?"  Part="1" 
F 0 "#PWR030" H 1950 2800 50  0001 C CNN
F 1 "GND" H 1955 2877 50  0000 C CNN
F 2 "" H 1950 3050 50  0001 C CNN
F 3 "" H 1950 3050 50  0001 C CNN
	1    1950 3050
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR029
U 1 1 5D7CFD5E
P 1950 2750
AR Path="/5D71C3EA/5D7CFD5E" Ref="#PWR029"  Part="1" 
AR Path="/5D7D29A6/5D7CFD5E" Ref="#PWR?"  Part="1" 
F 0 "#PWR029" H 1950 2600 50  0001 C CNN
F 1 "+12V" H 1965 2923 50  0000 C CNN
F 2 "" H 1950 2750 50  0001 C CNN
F 3 "" H 1950 2750 50  0001 C CNN
	1    1950 2750
	1    0    0    -1  
$EndComp
Text Notes 1700 1600 0    118  ~ 0
Power Input
$EndSCHEMATC
