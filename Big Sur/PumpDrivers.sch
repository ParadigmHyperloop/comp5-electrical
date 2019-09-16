EESchema Schematic File Version 4
LIBS:Big Sur-cache
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
Comment2 ""
Comment3 ""
Comment4 "Jasper Rubin"
$EndDescr
$Comp
L Device:Q_NMOS_GDS Q1
U 1 1 5D7D3E10
P 2400 1900
F 0 "Q1" H 2606 1946 50  0000 L CNN
F 1 "TSM900N10" H 2606 1855 50  0000 L CNN
F 2 "" H 2600 2000 50  0001 C CNN
F 3 "https://www.taiwansemi.com/products/datasheet/TSM900N10_A15.pdf" H 2400 1900 50  0001 C CNN
F 4 "https://www.digikey.ca/product-detail/en/taiwan-semiconductor-corporation/TSM900N10CP-ROG/TSM900N10CPROGCT-ND/7360607" H 2400 1900 50  0001 C CNN "Digikey"
	1    2400 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 2100 2500 2350
$Comp
L power:GND #PWR033
U 1 1 5D7D4C28
P 2500 2350
F 0 "#PWR033" H 2500 2100 50  0001 C CNN
F 1 "GND" H 2505 2177 50  0000 C CNN
F 2 "" H 2500 2350 50  0001 C CNN
F 3 "" H 2500 2350 50  0001 C CNN
	1    2500 2350
	1    0    0    -1  
$EndComp
Text Notes 2650 2450 0    50   ~ 0
Designing these to be low-side drivers cause why n-\nwait, why aren't we just using motor driver ICs for pumps\nlike we are for solenoids? They have safety features.\nAnd serial control. And blackjack. And hookers.\nOkay maybe not all of those, but still.
Wire Wire Line
	2500 1700 2500 1600
Wire Wire Line
	2500 1600 2650 1600
Text GLabel 2650 1600 2    50   BiDi ~ 0
PUMP_LS_CHANNEL_1
Connection ~ 2500 1600
Wire Wire Line
	2200 1900 2000 1900
Wire Wire Line
	2000 1900 2000 1950
Connection ~ 2000 1900
Wire Wire Line
	2000 1900 1700 1900
$Comp
L Device:R_US R20
U 1 1 5D7D75FE
P 2000 2100
F 0 "R20" H 2068 2146 50  0000 L CNN
F 1 "100K" H 2068 2055 50  0000 L CNN
F 2 "" V 2040 2090 50  0001 C CNN
F 3 "~" H 2000 2100 50  0001 C CNN
	1    2000 2100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR032
U 1 1 5D7D85EE
P 2000 2350
F 0 "#PWR032" H 2000 2100 50  0001 C CNN
F 1 "GND" H 2005 2177 50  0000 C CNN
F 2 "" H 2000 2350 50  0001 C CNN
F 3 "" H 2000 2350 50  0001 C CNN
	1    2000 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 2350 2000 2250
Wire Wire Line
	2500 1550 2500 1600
$Comp
L power:+24V #PWR031
U 1 1 5D6DC51E
P 2500 1150
F 0 "#PWR031" H 2500 1000 50  0001 C CNN
F 1 "+24V" H 2515 1323 50  0000 C CNN
F 2 "" H 2500 1150 50  0001 C CNN
F 3 "" H 2500 1150 50  0001 C CNN
	1    2500 1150
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Schottky D3
U 1 1 5D6DD7E1
P 2500 1400
F 0 "D3" V 2454 1479 50  0000 L CNN
F 1 "NTS12120EMFST1G" V 2545 1479 50  0000 L CNN
F 2 "" H 2500 1400 50  0001 C CNN
F 3 "https://www.onsemi.com/pub/Collateral/NTS12120EMFS-D.PDF" H 2500 1400 50  0001 C CNN
F 4 "https://www.digikey.ca/product-detail/en/on-semiconductor/NTS12120EMFST1G/NTS12120EMFST1GOSCT-ND/8538813" V 2500 1400 50  0001 C CNN "Digikey"
	1    2500 1400
	0    1    1    0   
$EndComp
Wire Wire Line
	2500 1150 2500 1250
Text GLabel 1700 1900 0    50   BiDi ~ 0
PUMP_INPUT_1
$EndSCHEMATC
