EESchema Schematic File Version 4
LIBS:meme_shield_2019-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date "lun. 30 mars 2015"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Label 8950 1450 1    60   ~ 0
Vin
Text Label 9350 1450 1    60   ~ 0
IOREF
Text Label 8900 2500 0    60   ~ 0
A0
Text Label 8900 2600 0    60   ~ 0
A1
Text Label 8900 2700 0    60   ~ 0
A2
Text Label 8900 2800 0    60   ~ 0
A3
Text Label 8900 2900 0    60   ~ 0
A4(SDA)
Text Label 8900 3000 0    60   ~ 0
A5(SCL)
Text Label 10550 3000 0    60   ~ 0
0(Rx)
Text Label 10550 2800 0    60   ~ 0
2
Text Label 10550 2900 0    60   ~ 0
1(Tx)
Text Label 10550 2700 0    60   ~ 0
3(**)
Text Label 10550 2600 0    60   ~ 0
4
Text Label 10550 2500 0    60   ~ 0
5(**)
Text Label 10550 2400 0    60   ~ 0
6(**)
Text Label 10550 2300 0    60   ~ 0
7
Text Label 10550 2100 0    60   ~ 0
8
Text Label 10550 2000 0    60   ~ 0
9(**)
Text Label 10550 1900 0    60   ~ 0
10(**/SS)
Text Label 10550 1800 0    60   ~ 0
11(**/MOSI)
Text Label 10550 1700 0    60   ~ 0
12(MISO)
Text Label 10550 1600 0    60   ~ 0
13(SCK)
Text Label 10550 1400 0    60   ~ 0
AREF
NoConn ~ 9400 1600
Text Label 10550 1300 0    60   ~ 0
A4(SDA)
Text Label 10550 1200 0    60   ~ 0
A5(SCL)
Text Notes 10850 1000 0    60   ~ 0
Holes
Text Notes 8550 750  0    60   ~ 0
Shield for Arduino that uses\nthe same pin disposition\nlike "Uno" board Rev 3.
$Comp
L Connector_Generic:Conn_01x08 P1
U 1 1 56D70129
P 9600 1900
F 0 "P1" H 9600 2350 50  0000 C CNN
F 1 "Power" V 9700 1900 50  0000 C CNN
F 2 "Socket_Arduino_Uno:Socket_Strip_Arduino_1x08" V 9750 1900 20  0000 C CNN
F 3 "1528-1074-ND" H 9600 1900 50  0001 C CNN
	1    9600 1900
	1    0    0    -1  
$EndComp
Text Label 8650 1800 0    60   ~ 0
Reset
$Comp
L power:+3.3V #PWR01
U 1 1 56D70538
P 9150 1450
F 0 "#PWR01" H 9150 1300 50  0001 C CNN
F 1 "+3.3V" V 9150 1700 50  0000 C CNN
F 2 "" H 9150 1450 50  0000 C CNN
F 3 "" H 9150 1450 50  0000 C CNN
	1    9150 1450
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR02
U 1 1 56D707BB
P 9050 1350
F 0 "#PWR02" H 9050 1200 50  0001 C CNN
F 1 "+5V" V 9050 1550 50  0000 C CNN
F 2 "" H 9050 1350 50  0000 C CNN
F 3 "" H 9050 1350 50  0000 C CNN
	1    9050 1350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 56D70CC2
P 9300 3150
F 0 "#PWR03" H 9300 2900 50  0001 C CNN
F 1 "GND" H 9300 3000 50  0000 C CNN
F 2 "" H 9300 3150 50  0000 C CNN
F 3 "" H 9300 3150 50  0000 C CNN
	1    9300 3150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 56D70CFF
P 10300 3150
F 0 "#PWR04" H 10300 2900 50  0001 C CNN
F 1 "GND" H 10300 3000 50  0000 C CNN
F 2 "" H 10300 3150 50  0000 C CNN
F 3 "" H 10300 3150 50  0000 C CNN
	1    10300 3150
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x06 P2
U 1 1 56D70DD8
P 9600 2700
F 0 "P2" H 9600 2300 50  0000 C CNN
F 1 "Analog" V 9700 2700 50  0000 C CNN
F 2 "Socket_Arduino_Uno:Socket_Strip_Arduino_1x06" V 9750 2750 20  0000 C CNN
F 3 "" H 9600 2700 50  0000 C CNN
	1    9600 2700
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 P5
U 1 1 56D71177
P 10800 650
F 0 "P5" V 10900 650 50  0000 C CNN
F 1 "CONN_01X01" V 10900 650 50  0001 C CNN
F 2 "Socket_Arduino_Uno:Arduino_1pin" H 10721 724 20  0000 C CNN
F 3 "" H 10800 650 50  0000 C CNN
	1    10800 650 
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 P6
U 1 1 56D71274
P 10900 650
F 0 "P6" V 11000 650 50  0000 C CNN
F 1 "CONN_01X01" V 11000 650 50  0001 C CNN
F 2 "Socket_Arduino_Uno:Arduino_1pin" H 10900 650 20  0001 C CNN
F 3 "" H 10900 650 50  0000 C CNN
	1    10900 650 
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 P7
U 1 1 56D712A8
P 11000 650
F 0 "P7" V 11100 650 50  0000 C CNN
F 1 "CONN_01X01" V 11100 650 50  0001 C CNN
F 2 "Socket_Arduino_Uno:Arduino_1pin" V 11000 650 20  0001 C CNN
F 3 "" H 11000 650 50  0000 C CNN
	1    11000 650 
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 P8
U 1 1 56D712DB
P 11100 650
F 0 "P8" V 11200 650 50  0000 C CNN
F 1 "CONN_01X01" V 11200 650 50  0001 C CNN
F 2 "Socket_Arduino_Uno:Arduino_1pin" H 11024 572 20  0000 C CNN
F 3 "" H 11100 650 50  0000 C CNN
	1    11100 650 
	0    -1   -1   0   
$EndComp
NoConn ~ 10800 850 
NoConn ~ 10900 850 
NoConn ~ 11000 850 
NoConn ~ 11100 850 
$Comp
L Connector_Generic:Conn_01x08 P4
U 1 1 56D7164F
P 10000 2600
F 0 "P4" H 10000 2100 50  0000 C CNN
F 1 "Digital" V 10100 2600 50  0000 C CNN
F 2 "Socket_Arduino_Uno:Socket_Strip_Arduino_1x08" V 10150 2550 20  0000 C CNN
F 3 "" H 10000 2600 50  0000 C CNN
	1    10000 2600
	-1   0    0    -1  
$EndComp
Wire Notes Line
	8525 825  9925 825 
Wire Notes Line
	9925 825  9925 475 
Wire Wire Line
	9350 1450 9350 1700
Wire Wire Line
	9350 1700 9400 1700
Wire Wire Line
	9400 1900 9150 1900
Wire Wire Line
	9400 2000 9050 2000
Wire Wire Line
	9400 2300 8950 2300
Wire Wire Line
	9400 2100 9300 2100
Wire Wire Line
	9400 2200 9300 2200
Connection ~ 9300 2200
Wire Wire Line
	8950 2300 8950 1450
Wire Wire Line
	9050 2000 9050 1350
Wire Wire Line
	9150 1900 9150 1450
Wire Wire Line
	9400 2500 8900 2500
Wire Wire Line
	9400 2600 8900 2600
Wire Wire Line
	9400 2700 8900 2700
Wire Wire Line
	9400 2800 8900 2800
Wire Wire Line
	9400 2900 8900 2900
Wire Wire Line
	9400 3000 8900 3000
$Comp
L Connector_Generic:Conn_01x10 P3
U 1 1 56D721E0
P 10000 1600
F 0 "P3" H 10000 2150 50  0000 C CNN
F 1 "Digital" V 10100 1600 50  0000 C CNN
F 2 "Socket_Arduino_Uno:Socket_Strip_Arduino_1x10" V 10150 1600 20  0000 C CNN
F 3 "" H 10000 1600 50  0000 C CNN
	1    10000 1600
	-1   0    0    -1  
$EndComp
Wire Wire Line
	10200 2100 10550 2100
Wire Wire Line
	10200 2000 10550 2000
Wire Wire Line
	10200 1900 10550 1900
Wire Wire Line
	10200 1800 10550 1800
Wire Wire Line
	10200 1700 10550 1700
Wire Wire Line
	10200 1600 10550 1600
Wire Wire Line
	10200 1400 10550 1400
Wire Wire Line
	10200 1300 10550 1300
Wire Wire Line
	10200 1200 10550 1200
Wire Wire Line
	10200 3000 10550 3000
Wire Wire Line
	10200 2900 10550 2900
Wire Wire Line
	10200 2800 10550 2800
Wire Wire Line
	10200 2700 10550 2700
Wire Wire Line
	10200 2600 10550 2600
Wire Wire Line
	10200 2500 10550 2500
Wire Wire Line
	10200 2400 10550 2400
Wire Wire Line
	10200 2300 10550 2300
Wire Wire Line
	10200 1500 10300 1500
Wire Wire Line
	10300 1500 10300 3150
Wire Wire Line
	9300 2100 9300 2200
Wire Wire Line
	9300 2200 9300 3150
Wire Notes Line
	8500 500  8500 3450
Wire Notes Line
	8500 3450 11200 3450
Wire Wire Line
	9400 1800 8650 1800
Text Notes 9700 1600 0    60   ~ 0
1
Wire Notes Line
	11200 1000 10700 1000
Wire Notes Line
	10700 1000 10700 500 
$Comp
L Connector:USB_A J1
U 1 1 5D37F857
P 2100 1450
F 0 "J1" H 2157 1917 50  0000 C CNN
F 1 "USB_A" H 2157 1826 50  0000 C CNN
F 2 "Connectors:USB_A" H 2250 1400 50  0001 C CNN
F 3 "380-1412-ND" H 2250 1400 50  0001 C CNN
	1    2100 1450
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0101
U 1 1 5D380FEB
P 2500 1150
F 0 "#PWR0101" H 2500 1000 50  0001 C CNN
F 1 "+5V" V 2500 1350 50  0000 C CNN
F 2 "" H 2500 1150 50  0000 C CNN
F 3 "" H 2500 1150 50  0000 C CNN
	1    2500 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 1150 2500 1250
Wire Wire Line
	2500 1250 2400 1250
$Comp
L power:GND #PWR0102
U 1 1 5D382742
P 2100 1950
F 0 "#PWR0102" H 2100 1700 50  0001 C CNN
F 1 "GND" H 2100 1800 50  0000 C CNN
F 2 "" H 2100 1950 50  0000 C CNN
F 3 "" H 2100 1950 50  0000 C CNN
	1    2100 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 1950 2100 1900
Wire Wire Line
	2000 1850 2000 1900
Wire Wire Line
	2000 1900 2100 1900
Connection ~ 2100 1900
Wire Wire Line
	2100 1900 2100 1850
NoConn ~ 2400 1450
NoConn ~ 2400 1550
$Comp
L LED:WS2812 D1
U 1 1 5D3888FB
P 3500 1500
F 0 "D1" H 3800 1350 50  0000 L CNN
F 1 "WS2812" H 3800 1250 50  0000 L CNN
F 2 "LED_SMD:LED_WS2812_PLCC6_5.0x5.0mm_P1.6mm" H 3550 1200 50  0001 L TNN
F 3 "1568-1800-ND" H 3600 1125 50  0001 L TNN
	1    3500 1500
	1    0    0    -1  
$EndComp
NoConn ~ 3800 1500
Text Label 2950 1500 0    60   ~ 0
3(**)
Wire Wire Line
	2950 1500 3200 1500
$Comp
L power:GND #PWR0103
U 1 1 5D38D982
P 3500 1900
F 0 "#PWR0103" H 3500 1650 50  0001 C CNN
F 1 "GND" H 3500 1750 50  0000 C CNN
F 2 "" H 3500 1900 50  0000 C CNN
F 3 "" H 3500 1900 50  0000 C CNN
	1    3500 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 1900 3500 1800
$Comp
L power:+5V #PWR0104
U 1 1 5D38EC84
P 3400 900
F 0 "#PWR0104" H 3400 750 50  0001 C CNN
F 1 "+5V" V 3400 1100 50  0000 C CNN
F 2 "" H 3400 900 50  0000 C CNN
F 3 "" H 3400 900 50  0000 C CNN
	1    3400 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 900  3400 1200
$Comp
L Device:R R1
U 1 1 5D3948DA
P 3900 900
F 0 "R1" H 3830 854 50  0000 R CNN
F 1 "150" H 3830 945 50  0000 R CNN
F 2 "" V 3830 900 50  0001 C CNN
F 3 "311-150ARCT-ND" H 3900 900 50  0001 C CNN
	1    3900 900 
	-1   0    0    1   
$EndComp
$Comp
L Device:C C1
U 1 1 5D394D65
P 3900 1200
F 0 "C1" H 4015 1246 50  0000 L CNN
F 1 "1u" H 4015 1155 50  0000 L CNN
F 2 "" H 3938 1050 50  0001 C CNN
F 3 "1276-1066-1-ND" H 3900 1200 50  0001 C CNN
	1    3900 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 1050 3500 1050
Wire Wire Line
	3500 1050 3500 1200
$Comp
L power:+5V #PWR0105
U 1 1 5D39C49D
P 3900 750
F 0 "#PWR0105" H 3900 600 50  0001 C CNN
F 1 "+5V" V 3900 950 50  0000 C CNN
F 2 "" H 3900 750 50  0000 C CNN
F 3 "" H 3900 750 50  0000 C CNN
	1    3900 750 
	1    0    0    -1  
$EndComp
Connection ~ 3900 1050
$Comp
L power:GND #PWR0106
U 1 1 5D39D628
P 3900 1350
F 0 "#PWR0106" H 3900 1100 50  0001 C CNN
F 1 "GND" H 4050 1300 50  0000 C CNN
F 2 "" H 3900 1350 50  0000 C CNN
F 3 "" H 3900 1350 50  0000 C CNN
	1    3900 1350
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole logo1
U 1 1 5D39EFDB
P 4650 900
F 0 "logo1" H 4750 946 50  0000 L CNN
F 1 "meme" H 4750 855 50  0000 L CNN
F 2 "hyperloop 2020:14553 Cerise Ave Hawthorne, CA 90250" H 4650 900 50  0001 C CNN
F 3 "~" H 4650 900 50  0001 C CNN
	1    4650 900 
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole logo2
U 1 1 5D39F485
P 4650 1150
F 0 "logo2" H 4750 1196 50  0000 L CNN
F 1 "meme" H 4750 1105 50  0000 L CNN
F 2 "hyperloop 2020:Blocked" H 4650 1150 50  0001 C CNN
F 3 "~" H 4650 1150 50  0001 C CNN
	1    4650 1150
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole logo3
U 1 1 5D39F6DE
P 4650 1400
F 0 "logo3" H 4750 1446 50  0000 L CNN
F 1 "meme" H 4750 1355 50  0000 L CNN
F 2 "hyperloop 2020:ExplodingGT" H 4650 1400 50  0001 C CNN
F 3 "~" H 4650 1400 50  0001 C CNN
	1    4650 1400
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole logo4
U 1 1 5D39FA9D
P 4650 1650
F 0 "logo4" H 4750 1696 50  0000 L CNN
F 1 "meme" H 4750 1605 50  0000 L CNN
F 2 "hyperloop 2020:FLoko" H 4650 1650 50  0001 C CNN
F 3 "~" H 4650 1650 50  0001 C CNN
	1    4650 1650
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole logo5
U 1 1 5D39FFDE
P 5150 900
F 0 "logo5" H 5250 946 50  0000 L CNN
F 1 "meme" H 5250 855 50  0000 L CNN
F 2 "hyperloop 2020:juul_logo" H 5150 900 50  0001 C CNN
F 3 "~" H 5150 900 50  0001 C CNN
	1    5150 900 
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole logo6
U 1 1 5D3A056A
P 5150 1150
F 0 "logo6" H 5250 1196 50  0000 L CNN
F 1 "meme" H 5250 1105 50  0000 L CNN
F 2 "hyperloop 2020:juul_Silk" H 5150 1150 50  0001 C CNN
F 3 "~" H 5150 1150 50  0001 C CNN
	1    5150 1150
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole logo7
U 1 1 5D3A094E
P 5150 1400
F 0 "logo7" H 5250 1446 50  0000 L CNN
F 1 "meme" H 5250 1355 50  0000 L CNN
F 2 "hyperloop 2020:TidePod_Silk" H 5150 1400 50  0001 C CNN
F 3 "~" H 5150 1400 50  0001 C CNN
	1    5150 1400
	1    0    0    -1  
$EndComp
Text Notes 5200 1800 0    50   ~ 0
add kicad, and paradigm, and white SN
Text Notes 7600 6700 0    79   ~ 16
Prime Minister of Dank Memes, Mitch\n
Text Notes 3100 1900 0    50   ~ 0
Bottom\nMount
$EndSCHEMATC
