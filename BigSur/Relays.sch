EESchema Schematic File Version 4
LIBS:BigSur-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 5
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
L Device:Q_NPN_BCE Q3
U 1 1 5DA8A6CB
P 2300 2300
F 0 "Q3" H 2491 2346 50  0000 L CNN
F 1 "Q_NPN_BCE" H 2491 2255 50  0000 L CNN
F 2 "" H 2500 2400 50  0001 C CNN
F 3 "~" H 2300 2300 50  0001 C CNN
	1    2300 2300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR084
U 1 1 5DA8AD58
P 2400 2650
F 0 "#PWR084" H 2400 2400 50  0001 C CNN
F 1 "GND" H 2405 2477 50  0000 C CNN
F 2 "" H 2400 2650 50  0001 C CNN
F 3 "" H 2400 2650 50  0001 C CNN
	1    2400 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 2500 2400 2650
$Comp
L BigSurLib:G5LE-1A-VDDC12 K1
U 1 1 5DA8E591
P 2600 1700
F 0 "K1" H 3030 1746 50  0000 L CNN
F 1 "G5LE-1A-VDDC12" H 3030 1655 50  0000 L CNN
F 2 "BigSur:OMRON_RELAY_G5LE-1A-VDDC12" H 2600 1700 50  0001 C CNN
F 3 "https://omronfs.omron.com/en_US/ecb/products/pdf/en-g5le.pdf" H 2600 1700 50  0001 C CNN
F 4 "https://www.digikey.ca/product-detail/en/omron-electronics-inc-emc-div/G5LE-1A-VDDC12/Z8454-ND/1815672" H 3030 1609 50  0001 L CNN "Digikey"
	1    2600 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 2000 2400 2100
Wire Wire Line
	2400 1350 2400 1400
$Comp
L power:+12V #PWR083
U 1 1 5DA90131
P 2400 1350
F 0 "#PWR083" H 2400 1200 50  0001 C CNN
F 1 "+12V" H 2415 1523 50  0000 C CNN
F 2 "" H 2400 1350 50  0001 C CNN
F 3 "" H 2400 1350 50  0001 C CNN
	1    2400 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 2300 2050 2300
$Comp
L Device:R_US R19
U 1 1 5DA91CE3
P 1900 2300
F 0 "R19" V 1695 2300 50  0000 C CNN
F 1 "4.7K" V 1786 2300 50  0000 C CNN
F 2 "" V 1940 2290 50  0001 C CNN
F 3 "~" H 1900 2300 50  0001 C CNN
	1    1900 2300
	0    1    1    0   
$EndComp
Wire Wire Line
	1750 2300 1650 2300
Text GLabel 1650 2300 0    50   BiDi ~ 0
GP_RELAY_1
Wire Wire Line
	2900 1400 2900 1250
Wire Wire Line
	2900 1250 3050 1250
Wire Wire Line
	3050 2100 2800 2100
Wire Wire Line
	2800 2100 2800 2000
Text GLabel 3050 2100 2    50   BiDi ~ 0
GP_RELAY_1_LOW
Text GLabel 3050 1250 2    50   BiDi ~ 0
GP_RELAY_1_HIGH
$EndSCHEMATC
