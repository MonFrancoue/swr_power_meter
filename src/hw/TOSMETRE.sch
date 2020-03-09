EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L power:GNDREF #PWR03
U 1 1 5A3C3EAC
P 8150 5250
F 0 "#PWR03" H 8150 5000 50  0001 C CNN
F 1 "GNDREF" H 8150 5100 50  0000 C CNN
F 2 "" H 8150 5250 50  0001 C CNN
F 3 "" H 8150 5250 50  0001 C CNN
	1    8150 5250
	1    0    0    -1  
$EndComp
Text Notes 7100 4360 2    60   ~ 0
FWD
Text Notes 7100 4260 2    60   ~ 0
REF
$Comp
L power:GNDREF #PWR010
U 1 1 5B1453B6
P 10600 4150
F 0 "#PWR010" H 10600 3900 50  0001 C CNN
F 1 "GNDREF" H 10600 4000 50  0000 C CNN
F 2 "" H 10600 4150 50  0001 C CNN
F 3 "" H 10600 4150 50  0001 C CNN
	1    10600 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	8150 4600 8150 5200
Wire Wire Line
	8250 5200 8150 5200
Wire Wire Line
	8250 4600 8250 5200
Connection ~ 8150 5200
Wire Wire Line
	10800 4000 10600 4000
Wire Wire Line
	8150 5200 8150 5250
$Comp
L Connector:Conn_01x02_Male J2
U 1 1 5CF58592
P 6700 4350
F 0 "J2" H 6637 4307 50  0000 C CNN
F 1 "Mesure" H 6821 4182 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 6700 4350 50  0001 C CNN
F 3 "~" H 6700 4350 50  0001 C CNN
	1    6700 4350
	-1   0    0    1   
$EndComp
Text Notes 10550 900  1    39   ~ 0
vss
$Comp
L Connector:Conn_01x08_Male J4
U 1 1 5CF65409
P 10200 950
F 0 "J4" V 9900 900 50  0000 C CNN
F 1 "LCD 4x20" V 10000 900 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 10200 950 50  0001 C CNN
F 3 "~" H 10200 950 50  0001 C CNN
	1    10200 950 
	0    1    1    0   
$EndComp
Text Notes 10450 900  1    39   ~ 0
D7
Text Notes 10350 900  1    39   ~ 0
D6
Text Notes 10250 900  1    39   ~ 0
D5
Text Notes 10100 900  1    39   ~ 0
D4
Text Notes 10000 900  1    39   ~ 0
RS
Text Notes 9900 900  1    39   ~ 0
E
Text Notes 9800 900  1    39   ~ 0
VDD
Wire Wire Line
	10600 4000 10600 4150
$Comp
L 16F88:18F1320 U1
U 1 1 5CF66128
P 8150 4100
F 0 "U1" V 8196 3470 50  0000 R CNN
F 1 "18F1320" V 8105 3470 50  0000 R CNN
F 2 "Package_SO:SSOP-20_4.4x6.5mm_P0.65mm" H 6700 3800 50  0001 L CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/21919e.pdf" H 7950 3500 50  0001 C CNN
	1    8150 4100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8350 5150 8350 4600
Wire Wire Line
	5800 4350 6500 4350
Wire Wire Line
	8450 3250 8450 3600
Wire Wire Line
	8550 3350 8550 3600
Wire Wire Line
	8650 3450 8650 3600
$Comp
L Connector:Conn_01x04_Male J3
U 1 1 5CFBE9AE
P 11000 3900
F 0 "J3" H 10972 3782 50  0000 R CNN
F 1 "PRG PIC" H 10972 3873 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 11000 3900 50  0001 C CNN
F 3 "~" H 11000 3900 50  0001 C CNN
	1    11000 3900
	-1   0    0    1   
$EndComp
Wire Wire Line
	8150 1150 9800 1150
$Comp
L 16F88:MAX11100 U4
U 1 1 5CFD76E0
P 5800 2250
F 0 "U4" V 6317 2577 50  0000 L CNN
F 1 "MAX11100" V 6395 2457 50  0000 L CNN
F 2 "Package_SO:MSOP-10_3x3mm_P0.5mm" V 6450 2600 50  0001 C CNN
F 3 "" V 5500 2550 50  0001 C CNN
	1    5800 2250
	0    1    1    0   
$EndComp
$Comp
L 16F88:MAX4624 U3
U 1 1 5CFD8181
P 4550 4250
F 0 "U3" V 4837 4521 50  0000 C CNN
F 1 "MAX4624" V 4903 4518 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6" V 5050 4500 50  0001 C CNN
F 3 "" V 4900 4300 50  0001 C CNN
	1    4550 4250
	0    1    1    0   
$EndComp
$Comp
L Device:C C4
U 1 1 5CFDE822
P 6750 2900
F 0 "C4" H 6775 3000 50  0000 L CNN
F 1 "C" H 6775 2800 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 6788 2750 50  0001 C CNN
F 3 "" H 6750 2900 50  0001 C CNN
	1    6750 2900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 5CFDED1A
P 7050 2900
F 0 "C6" H 7075 3000 50  0000 L CNN
F 1 "C" H 7075 2800 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 7088 2750 50  0001 C CNN
F 3 "" H 7050 2900 50  0001 C CNN
	1    7050 2900
	1    0    0    -1  
$EndComp
Text Notes 7100 2550 0    50   ~ 0
+5V
Text Notes 6750 1750 0    50   ~ 0
VREF
Wire Wire Line
	6650 2650 6750 2650
Wire Wire Line
	6750 2650 6750 2750
Wire Wire Line
	6750 2650 6750 1750
Connection ~ 6750 2650
Wire Wire Line
	6750 3050 6750 3450
Wire Wire Line
	6750 3450 7050 3450
Wire Wire Line
	7550 3450 7550 2450
Wire Wire Line
	7550 2450 6650 2450
Wire Wire Line
	6750 3450 6200 3450
Connection ~ 6750 3450
Wire Wire Line
	6650 2550 7050 2550
Wire Wire Line
	7050 2550 7050 2750
Connection ~ 7050 2550
Wire Wire Line
	7050 3050 7050 3450
Connection ~ 7050 3450
Wire Wire Line
	7050 3450 7550 3450
Wire Wire Line
	6200 3650 6200 3450
Connection ~ 6200 3450
Connection ~ 8150 1150
Wire Wire Line
	7050 1150 7050 2550
Wire Wire Line
	8250 3600 8250 3150
Wire Wire Line
	8250 3150 8150 3150
Connection ~ 8150 3150
Wire Wire Line
	8150 3150 8150 3600
Wire Wire Line
	10750 1150 10500 1150
$Comp
L power:GNDREF #PWR02
U 1 1 5A343C5D
P 10750 1150
F 0 "#PWR02" H 10750 900 50  0001 C CNN
F 1 "GNDREF" V 10673 936 50  0000 L BNN
F 2 "" H 10750 1150 50  0001 C CNN
F 3 "" H 10750 1150 50  0001 C CNN
	1    10750 1150
	0    -1   -1   0   
$EndComp
$Comp
L power:GNDREF #PWR0102
U 1 1 5D11E244
P 6200 3650
F 0 "#PWR0102" H 6200 3400 50  0001 C CNN
F 1 "GNDREF" H 6205 3477 50  0000 C CNN
F 2 "" H 6200 3650 50  0001 C CNN
F 3 "" H 6200 3650 50  0001 C CNN
	1    6200 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 3600 7750 2700
Wire Wire Line
	7750 2700 9900 2700
Wire Wire Line
	9900 2700 9900 1150
Wire Wire Line
	8350 5150 10400 5150
Wire Wire Line
	10400 5150 10400 1150
Wire Wire Line
	8650 3450 10300 3450
Wire Wire Line
	10300 3450 10300 1150
Wire Wire Line
	8550 3350 9450 3350
Wire Wire Line
	10200 3350 10200 1150
Wire Wire Line
	8450 3250 9600 3250
Wire Wire Line
	10100 3250 10100 1150
Wire Wire Line
	8350 3150 9750 3150
Wire Wire Line
	10000 3150 10000 1150
Wire Wire Line
	9750 3700 9750 3150
Wire Wire Line
	9750 3700 10800 3700
Connection ~ 9750 3150
Wire Wire Line
	9750 3150 10000 3150
Wire Wire Line
	9600 3800 9600 3250
Wire Wire Line
	9600 3800 10800 3800
Connection ~ 9600 3250
Wire Wire Line
	9600 3250 10100 3250
Wire Wire Line
	9450 3900 9450 3350
Wire Wire Line
	9450 3900 10800 3900
Connection ~ 9450 3350
Wire Wire Line
	9450 3350 10200 3350
Connection ~ 8150 2300
Wire Wire Line
	8150 2300 8150 3150
Wire Wire Line
	8150 1150 8150 2300
Wire Wire Line
	7850 2300 7750 2300
Wire Wire Line
	8050 2300 8150 2300
$Comp
L Device:CP_Small C5
U 1 1 5AA53058
P 7950 2300
F 0 "C5" H 7960 2370 50  0000 L CNN
F 1 "CP_Small" H 7960 2220 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 7950 2300 50  0001 C CNN
F 3 "" H 7950 2300 50  0001 C CNN
	1    7950 2300
	0    1    1    0   
$EndComp
$Comp
L power:GNDREF #PWR01
U 1 1 5A343ADA
P 7750 2300
F 0 "#PWR01" H 7750 2050 50  0001 C CNN
F 1 "GNDREF" H 7750 2150 50  0000 C CNN
F 2 "" H 7750 2300 50  0001 C CNN
F 3 "" H 7750 2300 50  0001 C CNN
	1    7750 2300
	0    1    1    0   
$EndComp
Wire Wire Line
	5200 4450 5800 4450
Wire Wire Line
	5800 4450 5800 4350
Wire Wire Line
	5200 4250 6500 4250
Wire Wire Line
	5400 4350 5200 4350
$Comp
L power:GNDREF #PWR0103
U 1 1 5D2549F1
P 5400 4350
F 0 "#PWR0103" H 5400 4100 50  0001 C CNN
F 1 "GNDREF" V 5405 4059 50  0000 C CNN
F 2 "" H 5400 4350 50  0001 C CNN
F 3 "" H 5400 4350 50  0001 C CNN
	1    5400 4350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4250 4450 4450 4450
$Comp
L power:GNDREF #PWR0104
U 1 1 5D25B703
P 4250 4450
F 0 "#PWR0104" H 4250 4200 50  0001 C CNN
F 1 "GNDREF" V 4255 4159 50  0000 C CNN
F 2 "" H 4250 4450 50  0001 C CNN
F 3 "" H 4250 4450 50  0001 C CNN
	1    4250 4450
	0    1    1    0   
$EndComp
Wire Wire Line
	7050 1150 8150 1150
Wire Wire Line
	4450 4350 4200 4350
Wire Wire Line
	7750 4600 7750 4800
Wire Wire Line
	7750 4800 7200 4800
Wire Wire Line
	7200 4800 7200 3950
Wire Wire Line
	7200 3950 4400 3950
Wire Wire Line
	4400 3950 4400 4250
Wire Wire Line
	4400 4250 4450 4250
Connection ~ 7050 1150
Wire Wire Line
	6200 3450 5300 3450
Wire Wire Line
	5300 3450 4900 3450
Connection ~ 5300 3450
Wire Wire Line
	8350 3150 8350 3600
Wire Wire Line
	4500 1150 5300 1150
Connection ~ 4500 1150
Wire Wire Line
	4500 2150 4500 1150
Wire Wire Line
	4200 2150 4500 2150
Wire Wire Line
	4200 4350 4200 2150
Wire Wire Line
	5300 1150 7050 1150
Wire Wire Line
	4150 1150 4500 1150
Connection ~ 5300 1150
Wire Wire Line
	5527 2542 5527 2569
Wire Wire Line
	5711 2542 5527 2542
Wire Wire Line
	5300 1150 5300 2450
$Comp
L power:GNDREF #PWR0101
U 1 1 5D025151
P 5527 2569
F 0 "#PWR0101" H 5527 2319 50  0001 C CNN
F 1 "GNDREF" H 5532 2396 50  0000 C CNN
F 2 "" H 5527 2569 50  0001 C CNN
F 3 "" H 5527 2569 50  0001 C CNN
	1    5527 2569
	1    0    0    -1  
$EndComp
Connection ~ 5300 2450
Wire Wire Line
	5300 3250 5300 3450
Wire Wire Line
	5300 2450 5300 2950
Wire Wire Line
	5700 2450 5300 2450
Wire Wire Line
	4900 2350 5700 2350
Wire Wire Line
	4900 3450 4900 2350
Text Notes 5100 2500 0    50   ~ 0
+5V
$Comp
L Device:C C3
U 1 1 5CFDD413
P 5300 3100
F 0 "C3" H 5325 3200 50  0000 L CNN
F 1 "C" H 5325 3000 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 5338 2950 50  0001 C CNN
F 3 "" H 5300 3100 50  0001 C CNN
	1    5300 3100
	-1   0    0    1   
$EndComp
Connection ~ 2600 1650
Connection ~ 3750 1150
Connection ~ 1400 1400
$Comp
L Connector:Conn_01x02_Male J1
U 1 1 5CF5834C
P 1050 1150
F 0 "J1" H 967 1108 50  0000 C CNN
F 1 "Alim" H 1123 999 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 1050 1150 50  0001 C CNN
F 3 "~" H 1050 1150 50  0001 C CNN
	1    1050 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 1150 3750 1150
Wire Wire Line
	2600 1150 3150 1150
Wire Wire Line
	3750 1150 4150 1150
Connection ~ 4150 1150
Wire Wire Line
	4150 1250 4150 1150
Wire Wire Line
	4150 1550 4150 1650
Wire Wire Line
	1400 1250 1250 1250
Wire Wire Line
	1400 1400 1400 1250
Wire Wire Line
	2600 1650 2600 1550
Connection ~ 2600 1150
Wire Wire Line
	2600 1150 2600 1250
Wire Wire Line
	3450 1450 3450 1650
Wire Wire Line
	2200 1150 2600 1150
Wire Wire Line
	1250 1150 1900 1150
$Comp
L power:GNDREF #PWR09
U 1 1 5AAD17B7
P 4150 1650
F 0 "#PWR09" H 4150 1400 50  0001 C CNN
F 1 "GNDREF" H 4150 1500 50  0000 C CNN
F 2 "" H 4150 1650 50  0001 C CNN
F 3 "" H 4150 1650 50  0001 C CNN
	1    4150 1650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 5AACE979
P 4150 1400
F 0 "C2" H 4175 1500 50  0000 L CNN
F 1 "C" H 4175 1300 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 4188 1250 50  0001 C CNN
F 3 "" H 4150 1400 50  0001 C CNN
	1    4150 1400
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR08
U 1 1 5AA93D13
P 1400 1400
F 0 "#PWR08" H 1400 1150 50  0001 C CNN
F 1 "GNDREF" H 1400 1250 50  0000 C CNN
F 2 "" H 1400 1400 50  0001 C CNN
F 3 "" H 1400 1400 50  0001 C CNN
	1    1400 1400
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR07
U 1 1 5AA93D0C
P 1400 1400
F 0 "#PWR07" H 1400 1150 50  0001 C CNN
F 1 "GNDREF" H 1400 1250 50  0000 C CNN
F 2 "" H 1400 1400 50  0001 C CNN
F 3 "" H 1400 1400 50  0001 C CNN
	1    1400 1400
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR06
U 1 1 5AA44E43
P 2600 1650
F 0 "#PWR06" H 2600 1400 50  0001 C CNN
F 1 "GNDREF" H 2600 1500 50  0000 C CNN
F 2 "" H 2600 1650 50  0001 C CNN
F 3 "" H 2600 1650 50  0001 C CNN
	1    2600 1650
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR05
U 1 1 5AA44D09
P 2600 1650
F 0 "#PWR05" H 2600 1400 50  0001 C CNN
F 1 "GNDREF" H 2600 1500 50  0000 C CNN
F 2 "" H 2600 1650 50  0001 C CNN
F 3 "" H 2600 1650 50  0001 C CNN
	1    2600 1650
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR04
U 1 1 5AA42E24
P 3450 1650
F 0 "#PWR04" H 3450 1400 50  0001 C CNN
F 1 "GNDREF" H 3450 1500 50  0000 C CNN
F 2 "" H 3450 1650 50  0001 C CNN
F 3 "" H 3450 1650 50  0001 C CNN
	1    3450 1650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 5A3C3936
P 2600 1400
F 0 "C1" H 2625 1500 50  0000 L CNN
F 1 "C" H 2625 1300 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 2638 1250 50  0001 C CNN
F 3 "" H 2600 1400 50  0001 C CNN
	1    2600 1400
	1    0    0    -1  
$EndComp
$Comp
L TOSMETRE-rescue:L7805-TOSMETRE-rescue-TOSMETRE-rescue U2
U 1 1 5A33E692
P 3450 1150
F 0 "U2" H 3300 1275 50  0000 C CNN
F 1 "L7805" H 3450 1275 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Horizontal_TabDown" H 3475 1000 50  0001 L CIN
F 3 "" H 3450 1100 50  0001 C CNN
	1    3450 1150
	1    0    0    -1  
$EndComp
$Comp
L Device:D D1
U 1 1 5A324E39
P 2050 1150
F 0 "D1" H 2050 1250 50  0000 C CNN
F 1 "D" H 2050 1050 50  0000 C CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 2050 1150 50  0001 C CNN
F 3 "" H 2050 1150 50  0001 C CNN
	1    2050 1150
	-1   0    0    1   
$EndComp
$EndSCHEMATC
