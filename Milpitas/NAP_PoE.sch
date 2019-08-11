EESchema Schematic File Version 4
LIBS:Milpitas-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 6
Title "\"Milpitas\" - LVDC Distribution Board"
Date "2019-08-11"
Rev "0"
Comp "Paradigm Hyperloop"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector:RJ45 J?
U 1 1 5E076C78
P 3750 3600
F 0 "J?" H 3420 3604 50  0000 R CNN
F 1 "RJ45" H 3420 3695 50  0000 R CNN
F 2 "" V 3750 3625 50  0001 C CNN
F 3 "~" V 3750 3625 50  0001 C CNN
	1    3750 3600
	1    0    0    1   
$EndComp
$Comp
L Connector:RJ45 J?
U 1 1 5E076CC0
P 5700 3600
F 0 "J?" H 5370 3604 50  0000 R CNN
F 1 "RJ45" H 5370 3695 50  0000 R CNN
F 2 "" V 5700 3625 50  0001 C CNN
F 3 "~" V 5700 3625 50  0001 C CNN
	1    5700 3600
	-1   0    0    1   
$EndComp
Wire Wire Line
	4150 3300 5300 3300
Wire Wire Line
	4150 3400 5300 3400
Wire Wire Line
	4150 3500 5300 3500
Wire Wire Line
	4150 3800 5300 3800
Wire Wire Line
	5300 3700 5150 3700
Wire Wire Line
	5150 3700 5150 3600
Wire Wire Line
	5150 3050 4900 3050
Wire Wire Line
	5300 3600 5150 3600
Connection ~ 5150 3600
Wire Wire Line
	5150 3600 5150 3050
Wire Wire Line
	5300 3900 5150 3900
Wire Wire Line
	5150 3900 5150 4000
Wire Wire Line
	5300 4000 5150 4000
Connection ~ 5150 4000
Wire Wire Line
	5150 4000 5150 4300
$Comp
L power:GND #PWR?
U 1 1 5E07711E
P 5150 4300
F 0 "#PWR?" H 5150 4050 50  0001 C CNN
F 1 "GND" H 5155 4127 50  0000 C CNN
F 2 "" H 5150 4300 50  0001 C CNN
F 3 "" H 5150 4300 50  0001 C CNN
	1    5150 4300
	1    0    0    -1  
$EndComp
Text HLabel 4900 3050 0    39   Input ~ 8
24V_OUTPUT
Text Label 4500 3300 0    39   ~ 0
RX+
Text Label 4500 3400 0    39   ~ 0
RX-
Text Label 4500 3500 0    39   ~ 0
TX+
Text Label 4500 3800 0    39   ~ 0
TX-
$EndSCHEMATC
