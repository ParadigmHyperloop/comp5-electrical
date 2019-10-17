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
F 1 "MMBT3904-7-F" H 2491 2255 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23_Handsoldering" H 2500 2400 50  0001 C CNN
F 3 "https://www.diodes.com/assets/Datasheets/ds30036.pdf" H 2300 2300 50  0001 C CNN
F 4 "https://www.digikey.ca/product-detail/en/diodes-incorporated/MMBT3904-7-F/MMBT3904-FDICT-ND/815727" H 2300 2300 50  0001 C CNN "Digikey"
	1    2300 2300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR067
U 1 1 5DA8AD58
P 2400 2700
F 0 "#PWR067" H 2400 2450 50  0001 C CNN
F 1 "GND" H 2405 2527 50  0000 C CNN
F 2 "" H 2400 2700 50  0001 C CNN
F 3 "" H 2400 2700 50  0001 C CNN
	1    2400 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 2500 2400 2700
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
	2400 2000 2400 2050
Wire Wire Line
	2400 1300 2400 1350
$Comp
L power:+12V #PWR064
U 1 1 5DA90131
P 2400 1300
F 0 "#PWR064" H 2400 1150 50  0001 C CNN
F 1 "+12V" H 2415 1473 50  0000 C CNN
F 2 "" H 2400 1300 50  0001 C CNN
F 3 "" H 2400 1300 50  0001 C CNN
	1    2400 1300
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R21
U 1 1 5DA91CE3
P 1850 2300
F 0 "R21" V 1645 2300 50  0000 C CNN
F 1 "1K" V 1736 2300 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 1890 2290 50  0001 C CNN
F 3 "https://www.seielect.com/catalog/sei-rmcf_rmcp.pdf" H 1850 2300 50  0001 C CNN
F 4 "https://www.digikey.ca/product-detail/en/stackpole-electronics-inc/RMCF0603JJ1K00/RMCF0603JJ1K00CT-ND/6053833" V 1850 2300 50  0001 C CNN "Digikey"
F 5 "RMCF0603JJ1K00" V 1850 2300 50  0001 C CNN "Part Number"
	1    1850 2300
	0    1    1    0   
$EndComp
Wire Wire Line
	1700 2300 1650 2300
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
Text Notes 600  750  0    118  ~ 0
TODAY ON “JASPER DOESN’T KNOW ELECTRONICS,” BJTS! AND RELAYS!
$Comp
L Device:Q_NPN_BCE Q5
U 1 1 5DA0A5EA
P 2300 4250
F 0 "Q5" H 2491 4296 50  0000 L CNN
F 1 "MMBT3904-7-F" H 2491 4205 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23_Handsoldering" H 2500 4350 50  0001 C CNN
F 3 "https://www.diodes.com/assets/Datasheets/ds30036.pdf" H 2300 4250 50  0001 C CNN
F 4 "https://www.digikey.ca/product-detail/en/diodes-incorporated/MMBT3904-7-F/MMBT3904-FDICT-ND/815727" H 2300 4250 50  0001 C CNN "Digikey"
	1    2300 4250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR073
U 1 1 5DA0A5F4
P 2400 4650
F 0 "#PWR073" H 2400 4400 50  0001 C CNN
F 1 "GND" H 2405 4477 50  0000 C CNN
F 2 "" H 2400 4650 50  0001 C CNN
F 3 "" H 2400 4650 50  0001 C CNN
	1    2400 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 4450 2400 4650
$Comp
L BigSurLib:G5LE-1A-VDDC12 K3
U 1 1 5DA0A600
P 2600 3650
F 0 "K3" H 3030 3696 50  0000 L CNN
F 1 "G5LE-1A-VDDC12" H 3030 3605 50  0000 L CNN
F 2 "BigSur:OMRON_RELAY_G5LE-1A-VDDC12" H 2600 3650 50  0001 C CNN
F 3 "https://omronfs.omron.com/en_US/ecb/products/pdf/en-g5le.pdf" H 2600 3650 50  0001 C CNN
F 4 "https://www.digikey.ca/product-detail/en/omron-electronics-inc-emc-div/G5LE-1A-VDDC12/Z8454-ND/1815672" H 3030 3559 50  0001 L CNN "Digikey"
	1    2600 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 3950 2400 4000
Wire Wire Line
	2400 3250 2400 3300
$Comp
L power:+12V #PWR070
U 1 1 5DA0A60C
P 2400 3250
F 0 "#PWR070" H 2400 3100 50  0001 C CNN
F 1 "+12V" H 2415 3423 50  0000 C CNN
F 2 "" H 2400 3250 50  0001 C CNN
F 3 "" H 2400 3250 50  0001 C CNN
	1    2400 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 4250 2050 4250
Wire Wire Line
	1700 4250 1650 4250
Text GLabel 1650 4250 0    50   BiDi ~ 0
GP_RELAY_2
Wire Wire Line
	2900 3350 2900 3200
Wire Wire Line
	2900 3200 3050 3200
Wire Wire Line
	3050 4050 2800 4050
Wire Wire Line
	2800 4050 2800 3950
Text GLabel 3050 4050 2    50   BiDi ~ 0
GP_RELAY_2_LOW
Text GLabel 3050 3200 2    50   BiDi ~ 0
GP_RELAY_2_HIGH
$Comp
L Device:Q_NPN_BCE Q4
U 1 1 5DA0EF10
P 5250 2300
F 0 "Q4" H 5441 2346 50  0000 L CNN
F 1 "MMBT3904-7-F" H 5441 2255 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23_Handsoldering" H 5450 2400 50  0001 C CNN
F 3 "https://www.diodes.com/assets/Datasheets/ds30036.pdf" H 5250 2300 50  0001 C CNN
F 4 "https://www.digikey.ca/product-detail/en/diodes-incorporated/MMBT3904-7-F/MMBT3904-FDICT-ND/815727" H 5250 2300 50  0001 C CNN "Digikey"
	1    5250 2300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR069
U 1 1 5DA0EF1A
P 5350 2700
F 0 "#PWR069" H 5350 2450 50  0001 C CNN
F 1 "GND" H 5355 2527 50  0000 C CNN
F 2 "" H 5350 2700 50  0001 C CNN
F 3 "" H 5350 2700 50  0001 C CNN
	1    5350 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 2500 5350 2700
$Comp
L BigSurLib:G5LE-1A-VDDC12 K2
U 1 1 5DA0EF26
P 5550 1700
F 0 "K2" H 5980 1746 50  0000 L CNN
F 1 "G5LE-1A-VDDC12" H 5980 1655 50  0000 L CNN
F 2 "BigSur:OMRON_RELAY_G5LE-1A-VDDC12" H 5550 1700 50  0001 C CNN
F 3 "https://omronfs.omron.com/en_US/ecb/products/pdf/en-g5le.pdf" H 5550 1700 50  0001 C CNN
F 4 "https://www.digikey.ca/product-detail/en/omron-electronics-inc-emc-div/G5LE-1A-VDDC12/Z8454-ND/1815672" H 5980 1609 50  0001 L CNN "Digikey"
	1    5550 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 2000 5350 2050
Wire Wire Line
	5350 1300 5350 1350
$Comp
L power:+12V #PWR065
U 1 1 5DA0EF32
P 5350 1300
F 0 "#PWR065" H 5350 1150 50  0001 C CNN
F 1 "+12V" H 5365 1473 50  0000 C CNN
F 2 "" H 5350 1300 50  0001 C CNN
F 3 "" H 5350 1300 50  0001 C CNN
	1    5350 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 2300 5000 2300
Wire Wire Line
	4650 2300 4600 2300
Text GLabel 4600 2300 0    50   BiDi ~ 0
GP_RELAY_3
Wire Wire Line
	5850 1400 5850 1250
Wire Wire Line
	5850 1250 6000 1250
Wire Wire Line
	6000 2100 5750 2100
Wire Wire Line
	5750 2100 5750 2000
Text GLabel 6000 2100 2    50   BiDi ~ 0
GP_RELAY_3_LOW
Text GLabel 6000 1250 2    50   BiDi ~ 0
GP_RELAY_3_HIGH
$Comp
L Device:Q_NPN_BCE Q6
U 1 1 5DA0EF50
P 5250 4250
F 0 "Q6" H 5441 4296 50  0000 L CNN
F 1 "MMBT3904-7-F" H 5441 4205 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23_Handsoldering" H 5450 4350 50  0001 C CNN
F 3 "https://www.diodes.com/assets/Datasheets/ds30036.pdf" H 5250 4250 50  0001 C CNN
F 4 "https://www.digikey.ca/product-detail/en/diodes-incorporated/MMBT3904-7-F/MMBT3904-FDICT-ND/815727" H 5250 4250 50  0001 C CNN "Digikey"
	1    5250 4250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR075
U 1 1 5DA0EF5A
P 5350 4650
F 0 "#PWR075" H 5350 4400 50  0001 C CNN
F 1 "GND" H 5355 4477 50  0000 C CNN
F 2 "" H 5350 4650 50  0001 C CNN
F 3 "" H 5350 4650 50  0001 C CNN
	1    5350 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 4450 5350 4650
$Comp
L BigSurLib:G5LE-1A-VDDC12 K4
U 1 1 5DA0EF66
P 5550 3650
F 0 "K4" H 5980 3696 50  0000 L CNN
F 1 "G5LE-1A-VDDC12" H 5980 3605 50  0000 L CNN
F 2 "BigSur:OMRON_RELAY_G5LE-1A-VDDC12" H 5550 3650 50  0001 C CNN
F 3 "https://omronfs.omron.com/en_US/ecb/products/pdf/en-g5le.pdf" H 5550 3650 50  0001 C CNN
F 4 "https://www.digikey.ca/product-detail/en/omron-electronics-inc-emc-div/G5LE-1A-VDDC12/Z8454-ND/1815672" H 5980 3559 50  0001 L CNN "Digikey"
	1    5550 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 3950 5350 4000
Wire Wire Line
	5350 3250 5350 3300
$Comp
L power:+12V #PWR071
U 1 1 5DA0EF72
P 5350 3250
F 0 "#PWR071" H 5350 3100 50  0001 C CNN
F 1 "+12V" H 5365 3423 50  0000 C CNN
F 2 "" H 5350 3250 50  0001 C CNN
F 3 "" H 5350 3250 50  0001 C CNN
	1    5350 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 4250 5000 4250
Wire Wire Line
	4650 4250 4600 4250
Text GLabel 4600 4250 0    50   BiDi ~ 0
GP_RELAY_4
Wire Wire Line
	5850 3350 5850 3200
Wire Wire Line
	5850 3200 6000 3200
Wire Wire Line
	6000 4050 5750 4050
Wire Wire Line
	5750 4050 5750 3950
Text GLabel 6000 4050 2    50   BiDi ~ 0
GP_RELAY_4_LOW
Text GLabel 6000 3200 2    50   BiDi ~ 0
GP_RELAY_4_HIGH
Text Notes 650  1200 0    50   ~ 0
ADDING FOUR OF THESE,\nTWO CAN BE USED FOR INVERTER\nCONTROL IF WE NEED THAT.
Wire Wire Line
	2000 2300 2050 2300
Wire Wire Line
	2050 2300 2050 2350
Connection ~ 2050 2300
Wire Wire Line
	2050 2300 2100 2300
Wire Wire Line
	2050 2650 2050 2700
$Comp
L power:GND #PWR066
U 1 1 5DA1E817
P 2050 2700
F 0 "#PWR066" H 2050 2450 50  0001 C CNN
F 1 "GND" H 2055 2527 50  0000 C CNN
F 2 "" H 2050 2700 50  0001 C CNN
F 3 "" H 2050 2700 50  0001 C CNN
	1    2050 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 4600 2050 4650
$Comp
L power:GND #PWR072
U 1 1 5DA20717
P 2050 4650
F 0 "#PWR072" H 2050 4400 50  0001 C CNN
F 1 "GND" H 2055 4477 50  0000 C CNN
F 2 "" H 2050 4650 50  0001 C CNN
F 3 "" H 2050 4650 50  0001 C CNN
	1    2050 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 4250 2050 4300
Connection ~ 2050 4250
Wire Wire Line
	2050 4250 2000 4250
Wire Wire Line
	5000 2650 5000 2700
$Comp
L power:GND #PWR068
U 1 1 5DA259CA
P 5000 2700
F 0 "#PWR068" H 5000 2450 50  0001 C CNN
F 1 "GND" H 5005 2527 50  0000 C CNN
F 2 "" H 5000 2700 50  0001 C CNN
F 3 "" H 5000 2700 50  0001 C CNN
	1    5000 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 2300 5000 2350
Connection ~ 5000 2300
Wire Wire Line
	5000 2300 4950 2300
Wire Wire Line
	5000 4600 5000 4650
$Comp
L power:GND #PWR074
U 1 1 5DA2AFFE
P 5000 4650
F 0 "#PWR074" H 5000 4400 50  0001 C CNN
F 1 "GND" H 5005 4477 50  0000 C CNN
F 2 "" H 5000 4650 50  0001 C CNN
F 3 "" H 5000 4650 50  0001 C CNN
	1    5000 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 4250 5000 4300
Connection ~ 5000 4250
Wire Wire Line
	5000 4250 4950 4250
$Comp
L Device:R_US R?
U 1 1 5DA90C43
P 2050 2500
AR Path="/5D6EB2B2/5DA90C43" Ref="R?"  Part="1" 
AR Path="/5D71C3EA/5DA90C43" Ref="R?"  Part="1" 
AR Path="/5D765C4F/5DA90C43" Ref="R?"  Part="1" 
AR Path="/5D7D29A6/5DA90C43" Ref="R23"  Part="1" 
F 0 "R23" H 2118 2546 50  0000 L CNN
F 1 "10K" H 2118 2455 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 2090 2490 50  0001 C CNN
F 3 "https://www.seielect.com/catalog/sei-rncp.pdf" H 2050 2500 50  0001 C CNN
F 4 "https://www.digikey.ca/product-detail/en/stackpole-electronics-inc/RNCP0603FTD10K0/RNCP0603FTD10K0CT-ND/2240478" H 2050 2500 50  0001 C CNN "Digikey"
F 5 "RNCP0603FTD10K0" H 2050 2500 50  0001 C CNN "Part Number"
	1    2050 2500
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R?
U 1 1 5DA947A5
P 2050 4450
AR Path="/5D6EB2B2/5DA947A5" Ref="R?"  Part="1" 
AR Path="/5D71C3EA/5DA947A5" Ref="R?"  Part="1" 
AR Path="/5D765C4F/5DA947A5" Ref="R?"  Part="1" 
AR Path="/5D7D29A6/5DA947A5" Ref="R27"  Part="1" 
F 0 "R27" H 2118 4496 50  0000 L CNN
F 1 "10K" H 2118 4405 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 2090 4440 50  0001 C CNN
F 3 "https://www.seielect.com/catalog/sei-rncp.pdf" H 2050 4450 50  0001 C CNN
F 4 "https://www.digikey.ca/product-detail/en/stackpole-electronics-inc/RNCP0603FTD10K0/RNCP0603FTD10K0CT-ND/2240478" H 2050 4450 50  0001 C CNN "Digikey"
F 5 "RNCP0603FTD10K0" H 2050 4450 50  0001 C CNN "Part Number"
	1    2050 4450
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R?
U 1 1 5DA94E94
P 5000 4450
AR Path="/5D6EB2B2/5DA94E94" Ref="R?"  Part="1" 
AR Path="/5D71C3EA/5DA94E94" Ref="R?"  Part="1" 
AR Path="/5D765C4F/5DA94E94" Ref="R?"  Part="1" 
AR Path="/5D7D29A6/5DA94E94" Ref="R28"  Part="1" 
F 0 "R28" H 5068 4496 50  0000 L CNN
F 1 "10K" H 5068 4405 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 5040 4440 50  0001 C CNN
F 3 "https://www.seielect.com/catalog/sei-rncp.pdf" H 5000 4450 50  0001 C CNN
F 4 "https://www.digikey.ca/product-detail/en/stackpole-electronics-inc/RNCP0603FTD10K0/RNCP0603FTD10K0CT-ND/2240478" H 5000 4450 50  0001 C CNN "Digikey"
F 5 "RNCP0603FTD10K0" H 5000 4450 50  0001 C CNN "Part Number"
	1    5000 4450
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R?
U 1 1 5DA95317
P 5000 2500
AR Path="/5D6EB2B2/5DA95317" Ref="R?"  Part="1" 
AR Path="/5D71C3EA/5DA95317" Ref="R?"  Part="1" 
AR Path="/5D765C4F/5DA95317" Ref="R?"  Part="1" 
AR Path="/5D7D29A6/5DA95317" Ref="R24"  Part="1" 
F 0 "R24" H 5068 2546 50  0000 L CNN
F 1 "10K" H 5068 2455 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 5040 2490 50  0001 C CNN
F 3 "https://www.seielect.com/catalog/sei-rncp.pdf" H 5000 2500 50  0001 C CNN
F 4 "https://www.digikey.ca/product-detail/en/stackpole-electronics-inc/RNCP0603FTD10K0/RNCP0603FTD10K0CT-ND/2240478" H 5000 2500 50  0001 C CNN "Digikey"
F 5 "RNCP0603FTD10K0" H 5000 2500 50  0001 C CNN "Part Number"
	1    5000 2500
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R22
U 1 1 5DA990D2
P 4800 2300
F 0 "R22" V 4595 2300 50  0000 C CNN
F 1 "1K" V 4686 2300 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 4840 2290 50  0001 C CNN
F 3 "https://www.seielect.com/catalog/sei-rmcf_rmcp.pdf" H 4800 2300 50  0001 C CNN
F 4 "https://www.digikey.ca/product-detail/en/stackpole-electronics-inc/RMCF0603JJ1K00/RMCF0603JJ1K00CT-ND/6053833" V 4800 2300 50  0001 C CNN "Digikey"
F 5 "RMCF0603JJ1K00" V 4800 2300 50  0001 C CNN "Part Number"
	1    4800 2300
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R26
U 1 1 5DA99973
P 4800 4250
F 0 "R26" V 4595 4250 50  0000 C CNN
F 1 "1K" V 4686 4250 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 4840 4240 50  0001 C CNN
F 3 "https://www.seielect.com/catalog/sei-rmcf_rmcp.pdf" H 4800 4250 50  0001 C CNN
F 4 "https://www.digikey.ca/product-detail/en/stackpole-electronics-inc/RMCF0603JJ1K00/RMCF0603JJ1K00CT-ND/6053833" V 4800 4250 50  0001 C CNN "Digikey"
F 5 "RMCF0603JJ1K00" V 4800 4250 50  0001 C CNN "Part Number"
	1    4800 4250
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R25
U 1 1 5DA9A1F5
P 1850 4250
F 0 "R25" V 1645 4250 50  0000 C CNN
F 1 "1K" V 1736 4250 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 1890 4240 50  0001 C CNN
F 3 "https://www.seielect.com/catalog/sei-rmcf_rmcp.pdf" H 1850 4250 50  0001 C CNN
F 4 "https://www.digikey.ca/product-detail/en/stackpole-electronics-inc/RMCF0603JJ1K00/RMCF0603JJ1K00CT-ND/6053833" V 1850 4250 50  0001 C CNN "Digikey"
F 5 "RMCF0603JJ1K00" V 1850 4250 50  0001 C CNN "Part Number"
	1    1850 4250
	0    1    1    0   
$EndComp
$Comp
L Device:D D14
U 1 1 5DC73A46
P 2000 1700
F 0 "D14" V 1950 1550 50  0000 L CNN
F 1 "BAS16LT1G" V 2050 1200 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23_Handsoldering" H 2000 1700 50  0001 C CNN
F 3 "https://www.onsemi.com/pub/Collateral/BAS16LT1-D.PDF" H 2000 1700 50  0001 C CNN
F 4 "https://www.digikey.ca/product-detail/en/on-semiconductor/BAS16LT1G/BAS16LT1GOSCT-ND/917796" V 2000 1700 50  0001 C CNN "Digikey"
	1    2000 1700
	0    1    1    0   
$EndComp
Wire Wire Line
	2400 1350 2000 1350
Wire Wire Line
	2000 1350 2000 1550
Connection ~ 2400 1350
Wire Wire Line
	2400 1350 2400 1400
Wire Wire Line
	2000 2050 2400 2050
Wire Wire Line
	2000 1850 2000 2050
Connection ~ 2400 2050
Wire Wire Line
	2400 2050 2400 2100
$Comp
L Device:D D15
U 1 1 5DC7A8DA
P 4950 1700
F 0 "D15" V 4900 1550 50  0000 L CNN
F 1 "BAS16LT1G" V 5000 1200 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23_Handsoldering" H 4950 1700 50  0001 C CNN
F 3 "https://www.onsemi.com/pub/Collateral/BAS16LT1-D.PDF" H 4950 1700 50  0001 C CNN
F 4 "https://www.digikey.ca/product-detail/en/on-semiconductor/BAS16LT1G/BAS16LT1GOSCT-ND/917796" V 4950 1700 50  0001 C CNN "Digikey"
	1    4950 1700
	0    1    1    0   
$EndComp
Wire Wire Line
	5350 1350 4950 1350
Wire Wire Line
	4950 1350 4950 1550
Wire Wire Line
	4950 2050 5350 2050
Wire Wire Line
	4950 1850 4950 2050
Connection ~ 5350 1350
Wire Wire Line
	5350 1350 5350 1400
Connection ~ 5350 2050
Wire Wire Line
	5350 2050 5350 2100
$Comp
L Device:D D16
U 1 1 5DC7DB2D
P 2000 3650
F 0 "D16" V 1950 3500 50  0000 L CNN
F 1 "BAS16LT1G" V 2050 3150 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23_Handsoldering" H 2000 3650 50  0001 C CNN
F 3 "https://www.onsemi.com/pub/Collateral/BAS16LT1-D.PDF" H 2000 3650 50  0001 C CNN
F 4 "https://www.digikey.ca/product-detail/en/on-semiconductor/BAS16LT1G/BAS16LT1GOSCT-ND/917796" V 2000 3650 50  0001 C CNN "Digikey"
	1    2000 3650
	0    1    1    0   
$EndComp
Wire Wire Line
	2400 3300 2000 3300
Wire Wire Line
	2000 3300 2000 3500
Wire Wire Line
	2000 4000 2400 4000
Wire Wire Line
	2000 3800 2000 4000
$Comp
L Device:D D17
U 1 1 5DC7F716
P 4950 3650
F 0 "D17" V 4900 3500 50  0000 L CNN
F 1 "BAS16LT1G" V 5000 3150 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23_Handsoldering" H 4950 3650 50  0001 C CNN
F 3 "https://www.onsemi.com/pub/Collateral/BAS16LT1-D.PDF" H 4950 3650 50  0001 C CNN
F 4 "https://www.digikey.ca/product-detail/en/on-semiconductor/BAS16LT1G/BAS16LT1GOSCT-ND/917796" V 4950 3650 50  0001 C CNN "Digikey"
	1    4950 3650
	0    1    1    0   
$EndComp
Wire Wire Line
	5350 3300 4950 3300
Wire Wire Line
	4950 3300 4950 3500
Wire Wire Line
	4950 4000 5350 4000
Wire Wire Line
	4950 3800 4950 4000
Connection ~ 5350 3300
Wire Wire Line
	5350 3300 5350 3350
Connection ~ 5350 4000
Wire Wire Line
	5350 4000 5350 4050
Connection ~ 2400 4000
Wire Wire Line
	2400 4000 2400 4050
Connection ~ 2400 3300
Wire Wire Line
	2400 3300 2400 3350
$EndSCHEMATC
