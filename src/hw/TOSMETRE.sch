EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A3 16535 11693
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
L power:GNDREF #PWR010
U 1 1 5B1453B6
P 0 0
F 0 "#PWR010" H 50  50  50  0001 C CNN
F 1 "GNDREF" V 13200 3050 50  0000 R CNN
F 2 "" H 13200 3200 50  0001 C CNN
F 3 "" H 13200 3200 50  0001 C CNN
	1    0    0   
	0    1    1    0   
$EndComp
Connection ~ 3100 6400
Wire Wire Line
	3500 6400 3700 6400
Connection ~ 3500 6400
Wire Wire Line
	5400 5900 5600 5900
Wire Wire Line
	5400 6000 5700 6000
Wire Wire Line
	3950 6200 4400 6200
Wire Wire Line
	4050 6100 4050 4950
Wire Wire Line
	4400 6100 4050 6100
Wire Wire Line
	4150 6000 4150 4850
Wire Wire Line
	4400 6000 4150 6000
Wire Wire Line
	4250 5900 4250 4750
Wire Wire Line
	4400 5900 4250 5900
NoConn ~ 4400 6700
NoConn ~ 4400 6800
NoConn ~ 4400 6500
NoConn ~ 4400 6600
$Comp
L power:GNDREF #PWR0129
U 1 1 5EDAE57E
P 3550 4200
F 0 "#PWR0129" H 3550 3950 50  0001 C CNN
F 1 "GNDREF" V 3555 4072 50  0000 R CNN
F 2 "" H 3550 4200 50  0001 C CNN
F 3 "" H 3550 4200 50  0001 C CNN
	1    3550 4200
	-1   0    0    1   
$EndComp
Wire Wire Line
	3500 6700 3500 6850
Wire Wire Line
	3100 6850 3100 6700
$Comp
L power:GNDREF #PWR0131
U 1 1 5ED33557
P 3100 6850
F 0 "#PWR0131" H 3100 6600 50  0001 C CNN
F 1 "GNDREF" V 3105 6677 50  0000 R CNN
F 2 "" H 3100 6850 50  0001 C CNN
F 3 "" H 3100 6850 50  0001 C CNN
	1    3100 6850
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR0130
U 1 1 5ED33551
P 3500 6850
F 0 "#PWR0130" H 3500 6600 50  0001 C CNN
F 1 "GNDREF" V 3505 6677 50  0000 R CNN
F 2 "" H 3500 6850 50  0001 C CNN
F 3 "" H 3500 6850 50  0001 C CNN
	1    3500 6850
	1    0    0    -1  
$EndComp
$Comp
L Device:C C25
U 1 1 5ED3354B
P 3100 6550
F 0 "C25" H 3125 6650 50  0000 L CNN
F 1 "10µF" H 3125 6450 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 3138 6400 50  0001 C CNN
F 3 "" H 3100 6550 50  0001 C CNN
	1    3100 6550
	-1   0    0    1   
$EndComp
$Comp
L Device:C C26
U 1 1 5ED33545
P 3500 6550
F 0 "C26" H 3525 6650 50  0000 L CNN
F 1 "100nF" H 3525 6450 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 3538 6400 50  0001 C CNN
F 3 "" H 3500 6550 50  0001 C CNN
	1    3500 6550
	-1   0    0    1   
$EndComp
Wire Wire Line
	2250 6700 2250 6800
Wire Wire Line
	4400 6300 3950 6300
Wire Wire Line
	3950 6400 4400 6400
Connection ~ 3950 6400
Wire Wire Line
	3950 6300 3950 6400
Wire Wire Line
	2250 6400 3100 6400
$Comp
L power:GNDREF #PWR01
U 1 1 5A343ADA
P 2250 6800
F 0 "#PWR01" H 2250 6550 50  0001 C CNN
F 1 "GNDREF" V 2250 6650 50  0000 R CNN
F 2 "" H 2250 6800 50  0001 C CNN
F 3 "" H 2250 6800 50  0001 C CNN
	1    2250 6800
	1    0    0    -1  
$EndComp
$Comp
L Device:CP_Small C5
U 1 1 5AA53058
P 2250 6600
F 0 "C5" H 2260 6670 50  0000 L CNN
F 1 "CP_Small" H 2260 6520 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 2250 6600 50  0001 C CNN
F 3 "" H 2250 6600 50  0001 C CNN
	1    2250 6600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 6500 2250 6400
$Comp
L Device:R R3
U 1 1 5EC330C0
P 10750 4500
F 0 "R3" V 10750 4450 50  0000 L CNN
F 1 "50" H 10820 4455 50  0000 L CNN
F 2 "" V 10680 4500 50  0001 C CNN
F 3 "~" H 10750 4500 50  0001 C CNN
	1    10750 4500
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C12
U 1 1 5EC5241B
P 10100 4900
F 0 "C12" H 10125 5000 50  0000 L CNN
F 1 "2nF" H 10125 4800 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 10138 4750 50  0001 C CNN
F 3 "" H 10100 4900 50  0001 C CNN
	1    10100 4900
	0    -1   -1   0   
$EndComp
$Comp
L power:GNDREF #PWR0103
U 1 1 5EC558FE
P 10350 4900
F 0 "#PWR0103" H 10350 4650 50  0001 C CNN
F 1 "GNDREF" H 10355 4727 50  0000 C CNN
F 2 "" H 10350 4900 50  0001 C CNN
F 3 "" H 10350 4900 50  0001 C CNN
	1    10350 4900
	0    -1   -1   0   
$EndComp
$Comp
L power:GNDREF #PWR0116
U 1 1 5ECF284C
P 7350 5050
F 0 "#PWR0116" H 7350 4800 50  0001 C CNN
F 1 "GNDREF" H 7355 4877 50  0000 C CNN
F 2 "" H 7350 5050 50  0001 C CNN
F 3 "" H 7350 5050 50  0001 C CNN
	1    7350 5050
	-1   0    0    1   
$EndComp
$Comp
L power:GNDREF #PWR0117
U 1 1 5ECF2856
P 7750 5050
F 0 "#PWR0117" H 7750 4800 50  0001 C CNN
F 1 "GNDREF" H 7755 4877 50  0000 C CNN
F 2 "" H 7750 5050 50  0001 C CNN
F 3 "" H 7750 5050 50  0001 C CNN
	1    7750 5050
	-1   0    0    1   
$EndComp
$Comp
L power:GNDREF #PWR0118
U 1 1 5ED1B749
P 8100 5050
F 0 "#PWR0118" H 8100 4800 50  0001 C CNN
F 1 "GNDREF" H 8105 4877 50  0000 C CNN
F 2 "" H 8100 5050 50  0001 C CNN
F 3 "" H 8100 5050 50  0001 C CNN
	1    8100 5050
	-1   0    0    1   
$EndComp
$Comp
L power:GNDREF #PWR0122
U 1 1 5ED35516
P 7050 5050
F 0 "#PWR0122" H 7050 4800 50  0001 C CNN
F 1 "GNDREF" H 7055 4877 50  0000 C CNN
F 2 "" H 7050 5050 50  0001 C CNN
F 3 "" H 7050 5050 50  0001 C CNN
	1    7050 5050
	-1   0    0    1   
$EndComp
Connection ~ 10000 6000
Wire Wire Line
	9750 6000 10000 6000
$Comp
L Device:C C9
U 1 1 5ED2AB54
P 10400 6150
F 0 "C9" H 10425 6250 50  0000 L CNN
F 1 "100nF" H 10425 6050 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 10438 6000 50  0001 C CNN
F 3 "" H 10400 6150 50  0001 C CNN
	1    10400 6150
	-1   0    0    1   
$EndComp
$Comp
L power:GNDREF #PWR0119
U 1 1 5ED2AB5A
P 10400 6450
F 0 "#PWR0119" H 10400 6200 50  0001 C CNN
F 1 "GNDREF" H 10405 6277 50  0000 C CNN
F 2 "" H 10400 6450 50  0001 C CNN
F 3 "" H 10400 6450 50  0001 C CNN
	1    10400 6450
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR0120
U 1 1 5ED2AB60
P 10000 6450
F 0 "#PWR0120" H 10000 6200 50  0001 C CNN
F 1 "GNDREF" H 10005 6277 50  0000 C CNN
F 2 "" H 10000 6450 50  0001 C CNN
F 3 "" H 10000 6450 50  0001 C CNN
	1    10000 6450
	1    0    0    -1  
$EndComp
Wire Wire Line
	10400 6300 10400 6450
Wire Wire Line
	10000 6000 10400 6000
Wire Wire Line
	10000 6450 10000 6300
$Comp
L Device:C C4
U 1 1 5ED2AB6B
P 10000 6150
F 0 "C4" H 10025 6250 50  0000 L CNN
F 1 "10µF" H 10025 6050 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 10038 6000 50  0001 C CNN
F 3 "" H 10000 6150 50  0001 C CNN
	1    10000 6150
	-1   0    0    1   
$EndComp
Connection ~ 8500 5800
Wire Wire Line
	8950 5800 8500 5800
$Comp
L Device:C C24
U 1 1 5ED64B7D
P 8100 5950
F 0 "C24" H 8125 6050 50  0000 L CNN
F 1 "10µF" H 8125 5850 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 8138 5800 50  0001 C CNN
F 3 "" H 8100 5950 50  0001 C CNN
	1    8100 5950
	-1   0    0    1   
$EndComp
Wire Wire Line
	8100 6250 8100 6100
Wire Wire Line
	8100 5800 8500 5800
Wire Wire Line
	8500 6100 8500 6250
$Comp
L power:GNDREF #PWR0134
U 1 1 5ED64B72
P 8100 6250
F 0 "#PWR0134" H 8100 6000 50  0001 C CNN
F 1 "GNDREF" H 8105 6077 50  0000 C CNN
F 2 "" H 8100 6250 50  0001 C CNN
F 3 "" H 8100 6250 50  0001 C CNN
	1    8100 6250
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR0133
U 1 1 5ED64B6C
P 8500 6250
F 0 "#PWR0133" H 8500 6000 50  0001 C CNN
F 1 "GNDREF" H 8505 6077 50  0000 C CNN
F 2 "" H 8500 6250 50  0001 C CNN
F 3 "" H 8500 6250 50  0001 C CNN
	1    8500 6250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C23
U 1 1 5ED64B66
P 8500 5950
F 0 "C23" H 8525 6050 50  0000 L CNN
F 1 "100nF" H 8525 5850 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 8538 5800 50  0001 C CNN
F 3 "" H 8500 5950 50  0001 C CNN
	1    8500 5950
	-1   0    0    1   
$EndComp
Wire Wire Line
	8850 5900 8700 5900
Connection ~ 8850 5900
Wire Wire Line
	8850 6000 8950 6000
Wire Wire Line
	8850 5900 8850 6000
Wire Wire Line
	8700 5900 8700 5950
Wire Wire Line
	8950 5900 8850 5900
$Comp
L power:GNDREF #PWR0132
U 1 1 5ED415C0
P 8700 5950
F 0 "#PWR0132" H 8700 5700 50  0001 C CNN
F 1 "GNDREF" V 8705 5822 50  0000 R CNN
F 2 "" H 8700 5950 50  0001 C CNN
F 3 "" H 8700 5950 50  0001 C CNN
	1    8700 5950
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR0121
U 1 1 5ED2F594
P 10050 5700
F 0 "#PWR0121" H 10050 5450 50  0001 C CNN
F 1 "GNDREF" V 10055 5527 50  0000 R CNN
F 2 "" H 10050 5700 50  0001 C CNN
F 3 "" H 10050 5700 50  0001 C CNN
	1    10050 5700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10050 5700 9750 5700
Wire Wire Line
	7050 5700 7050 5050
Wire Wire Line
	7350 5600 7350 5500
Connection ~ 7750 5600
Wire Wire Line
	7750 5500 7750 5600
Wire Wire Line
	7350 5600 7750 5600
$Comp
L Device:C C15
U 1 1 5ED1B751
P 8100 5350
F 0 "C15" H 8125 5450 50  0000 L CNN
F 1 "2.2µF" H 8125 5250 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 8138 5200 50  0001 C CNN
F 3 "" H 8100 5350 50  0001 C CNN
	1    8100 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8100 5050 8100 5200
$Comp
L Device:C C14
U 1 1 5ECF2842
P 7750 5350
F 0 "C14" H 7775 5450 50  0000 L CNN
F 1 "10µF" H 7775 5250 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 7788 5200 50  0001 C CNN
F 3 "" H 7750 5350 50  0001 C CNN
	1    7750 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 5050 7750 5200
$Comp
L librairie_projet:LTC2305 U5
U 1 1 5EBEB456
P 9350 5750
F 0 "U5" H 9350 6217 50  0000 C CNN
F 1 "LTC2305" H 9350 6126 50  0000 C CNN
F 2 "Package_SO:MSOP-8_3x3mm_P0.65mm" H 8400 5400 50  0001 C CNN
F 3 "http://datasheets.maximintegrated.com/en/ds/MAX31826.pdf" H 9150 5600 50  0001 C CNN
	1    9350 5750
	-1   0    0    1   
$EndComp
Wire Wire Line
	7350 5200 7350 5050
$Comp
L Device:C C13
U 1 1 5ECF2838
P 7350 5350
F 0 "C13" H 7375 5450 50  0000 L CNN
F 1 "100nF" H 7375 5250 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 7388 5200 50  0001 C CNN
F 3 "" H 7350 5350 50  0001 C CNN
	1    7350 5350
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Male J1
U 1 1 5CF5834C
P 2050 8500
F 0 "J1" H 1967 8458 50  0000 C CNN
F 1 "Alim" H 2123 8349 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 2050 8500 50  0001 C CNN
F 3 "~" H 2050 8500 50  0001 C CNN
	1    2050 8500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 8600 3700 8500
Wire Wire Line
	2800 8500 2800 8600
$Comp
L power:GNDREF #PWR09
U 1 1 5AAD17B7
P 3700 9050
F 0 "#PWR09" H 3700 8800 50  0001 C CNN
F 1 "GNDREF" H 3700 8900 50  0000 C CNN
F 2 "" H 3700 9050 50  0001 C CNN
F 3 "" H 3700 9050 50  0001 C CNN
	1    3700 9050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 5AACE979
P 3700 8750
F 0 "C2" H 3725 8850 50  0000 L CNN
F 1 "C" H 3725 8650 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 3738 8600 50  0001 C CNN
F 3 "" H 3700 8750 50  0001 C CNN
	1    3700 8750
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR07
U 1 1 5AA93D0C
P 2400 9050
F 0 "#PWR07" H 2400 8800 50  0001 C CNN
F 1 "GNDREF" H 2400 8900 50  0000 C CNN
F 2 "" H 2400 9050 50  0001 C CNN
F 3 "" H 2400 9050 50  0001 C CNN
	1    2400 9050
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR05
U 1 1 5AA44D09
P 2800 9050
F 0 "#PWR05" H 2800 8800 50  0001 C CNN
F 1 "GNDREF" H 2800 8900 50  0000 C CNN
F 2 "" H 2800 9050 50  0001 C CNN
F 3 "" H 2800 9050 50  0001 C CNN
	1    2800 9050
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR04
U 1 1 5AA42E24
P 3250 9050
F 0 "#PWR04" H 3250 8800 50  0001 C CNN
F 1 "GNDREF" H 3250 8900 50  0000 C CNN
F 2 "" H 3250 9050 50  0001 C CNN
F 3 "" H 3250 9050 50  0001 C CNN
	1    3250 9050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 5A3C3936
P 2800 8750
F 0 "C1" H 2825 8850 50  0000 L CNN
F 1 "C" H 2825 8650 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 2838 8600 50  0001 C CNN
F 3 "" H 2800 8750 50  0001 C CNN
	1    2800 8750
	1    0    0    -1  
$EndComp
$Comp
L TOSMETRE-rescue:L7805-TOSMETRE-rescue-TOSMETRE-rescue U2
U 1 1 5A33E692
P 3250 8500
F 0 "U2" H 3100 8625 50  0000 C CNN
F 1 "L7805" H 3250 8625 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Horizontal_TabDown" H 3275 8350 50  0001 L CIN
F 3 "" H 3250 8450 50  0001 C CNN
	1    3250 8500
	1    0    0    -1  
$EndComp
$Comp
L Device:D D1
U 1 1 5A324E39
P 2550 8500
F 0 "D1" H 2550 8600 50  0000 C CNN
F 1 "D" H 2550 8400 50  0000 C CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 2550 8500 50  0001 C CNN
F 3 "" H 2550 8500 50  0001 C CNN
	1    2550 8500
	-1   0    0    1   
$EndComp
Wire Wire Line
	3700 8500 3550 8500
Wire Wire Line
	2700 8500 2800 8500
Connection ~ 2800 8500
Wire Wire Line
	2800 8500 2950 8500
Wire Wire Line
	2250 8500 2400 8500
Wire Wire Line
	2250 8600 2400 8600
Wire Wire Line
	2400 8600 2400 9050
Wire Wire Line
	2800 8900 2800 9050
Wire Wire Line
	3250 8800 3250 9050
Wire Wire Line
	3700 8900 3700 9050
$Comp
L power:GNDREF #PWR0135
U 1 1 5EE52F5B
P 9200 3450
F 0 "#PWR0135" H 9200 3200 50  0001 C CNN
F 1 "GNDREF" H 9205 3277 50  0000 C CNN
F 2 "" H 9200 3450 50  0001 C CNN
F 3 "" H 9200 3450 50  0001 C CNN
	1    9200 3450
	-1   0    0    1   
$EndComp
Wire Wire Line
	10250 2800 9950 2800
Connection ~ 9950 2800
$Comp
L Device:C C8
U 1 1 5EAEBEF7
P 9150 1750
F 0 "C8" H 9175 1850 50  0000 L CNN
F 1 "47n" H 9175 1650 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 9188 1600 50  0001 C CNN
F 3 "" H 9150 1750 50  0001 C CNN
	1    9150 1750
	0    1    1    0   
$EndComp
Wire Wire Line
	9100 4350 9100 4500
$Comp
L power:GNDREF #PWR0136
U 1 1 5EE8A394
P 9100 4500
F 0 "#PWR0136" H 9100 4250 50  0001 C CNN
F 1 "GNDREF" V 9105 4372 50  0000 R CNN
F 2 "" H 9100 4500 50  0001 C CNN
F 3 "" H 9100 4500 50  0001 C CNN
	1    9100 4500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5EC33B75
P 9600 3200
F 0 "R1" V 9600 3150 50  0000 L CNN
F 1 "625" H 9670 3155 50  0000 L CNN
F 2 "" V 9530 3200 50  0001 C CNN
F 3 "~" H 9600 3200 50  0001 C CNN
	1    9600 3200
	0    1    1    0   
$EndComp
$Comp
L Device:R R5
U 1 1 5EC90FB8
P 9200 3050
F 0 "R5" V 9200 3000 50  0000 L CNN
F 1 " " H 9270 3005 50  0000 L CNN
F 2 "" V 9130 3050 50  0001 C CNN
F 3 "~" H 9200 3050 50  0001 C CNN
	1    9200 3050
	0    1    1    0   
$EndComp
$Comp
L Device:C C19
U 1 1 5ED297B2
P 10250 2650
F 0 "C19" H 10275 2750 50  0000 L CNN
F 1 "10µF" H 10275 2550 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 10288 2500 50  0001 C CNN
F 3 "" H 10250 2650 50  0001 C CNN
	1    10250 2650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C20
U 1 1 5ED297B8
P 9950 2650
F 0 "C20" H 9975 2750 50  0000 L CNN
F 1 "100nF" H 9975 2550 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 9988 2500 50  0001 C CNN
F 3 "" H 9950 2650 50  0001 C CNN
	1    9950 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	9950 2350 9950 2500
Wire Wire Line
	10250 2350 10250 2500
Wire Wire Line
	9200 1050 8950 1050
$Comp
L power:GNDREF #PWR0125
U 1 1 5ED297C4
P 10250 2350
F 0 "#PWR0125" H 10250 2100 50  0001 C CNN
F 1 "GNDREF" H 10255 2177 50  0000 C CNN
F 2 "" H 10250 2350 50  0001 C CNN
F 3 "" H 10250 2350 50  0001 C CNN
	1    10250 2350
	-1   0    0    1   
$EndComp
$Comp
L power:GNDREF #PWR0124
U 1 1 5ED297BE
P 9950 2350
F 0 "#PWR0124" H 9950 2100 50  0001 C CNN
F 1 "GNDREF" H 9955 2177 50  0000 C CNN
F 2 "" H 9950 2350 50  0001 C CNN
F 3 "" H 9950 2350 50  0001 C CNN
	1    9950 2350
	-1   0    0    1   
$EndComp
Wire Wire Line
	9600 2800 9950 2800
Wire Wire Line
	9600 2650 9600 2800
Connection ~ 9400 1750
Wire Wire Line
	9400 1750 9400 2050
Wire Wire Line
	9000 1750 8950 1750
$Comp
L power:GNDREF #PWR0111
U 1 1 5ECE04D2
P 8950 1750
F 0 "#PWR0111" H 8950 1500 50  0001 C CNN
F 1 "GNDREF" H 8955 1577 50  0000 C CNN
F 2 "" H 8950 1750 50  0001 C CNN
F 3 "" H 8950 1750 50  0001 C CNN
	1    8950 1750
	0    1    1    0   
$EndComp
Wire Wire Line
	9400 1750 9300 1750
Wire Wire Line
	9400 1600 9400 1750
Wire Wire Line
	9400 1250 9400 1300
Wire Wire Line
	9500 2050 9500 1900
$Comp
L power:GNDREF #PWR0114
U 1 1 5ECDE620
P 9500 1900
F 0 "#PWR0114" H 9500 1650 50  0001 C CNN
F 1 "GNDREF" V 9505 1772 50  0000 R CNN
F 2 "" H 9500 1900 50  0001 C CNN
F 3 "" H 9500 1900 50  0001 C CNN
	1    9500 1900
	-1   0    0    1   
$EndComp
Wire Wire Line
	10000 4050 10000 3850
Wire Wire Line
	10400 4050 10400 3850
$Comp
L power:GNDREF #PWR0112
U 1 1 5EC9F2EF
P 10000 4050
F 0 "#PWR0112" H 10000 3800 50  0001 C CNN
F 1 "GNDREF" H 10005 3877 50  0000 C CNN
F 2 "" H 10000 4050 50  0001 C CNN
F 3 "" H 10000 4050 50  0001 C CNN
	1    10000 4050
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR0110
U 1 1 5EC9F2E9
P 10400 4050
F 0 "#PWR0110" H 10400 3800 50  0001 C CNN
F 1 "GNDREF" H 10405 3877 50  0000 C CNN
F 2 "" H 10400 4050 50  0001 C CNN
F 3 "" H 10400 4050 50  0001 C CNN
	1    10400 4050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 5EC80826
P 10400 3700
F 0 "C6" H 10425 3800 50  0000 L CNN
F 1 "100nF" H 10425 3600 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 10438 3550 50  0001 C CNN
F 3 "" H 10400 3700 50  0001 C CNN
	1    10400 3700
	-1   0    0    1   
$EndComp
$Comp
L Device:C C11
U 1 1 5EC7D875
P 10000 3700
F 0 "C11" H 10025 3800 50  0000 L CNN
F 1 "10µF" H 10025 3600 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 10038 3550 50  0001 C CNN
F 3 "" H 10000 3700 50  0001 C CNN
	1    10000 3700
	-1   0    0    1   
$EndComp
$Comp
L power:GNDREF #PWR0106
U 1 1 5EC5A302
P 8600 3550
F 0 "#PWR0106" H 8600 3300 50  0001 C CNN
F 1 "GNDREF" H 8605 3377 50  0000 C CNN
F 2 "" H 8600 3550 50  0001 C CNN
F 3 "" H 8600 3550 50  0001 C CNN
	1    8600 3550
	0    1    1    0   
$EndComp
Wire Wire Line
	9000 3550 9100 3550
$Comp
L Device:C C3
U 1 1 5EC4D6FA
P 8850 3550
F 0 "C3" H 8875 3650 50  0000 L CNN
F 1 "1µF" H 8875 3450 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 8888 3400 50  0001 C CNN
F 3 "" H 8850 3550 50  0001 C CNN
	1    8850 3550
	0    -1   -1   0   
$EndComp
$Comp
L librairie_projet:BAT54XV2 D3
U 1 1 5EAD20A2
P 9400 1450
F 0 "D3" H 9400 1667 50  0000 C CNN
F 1 "BAT54XV2" H 9400 1576 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-523" H 9400 1275 50  0001 C CNN
F 3 "https://www.diodes.com/assets/Datasheets/ds30396.pdf" H 9400 1450 50  0001 C CNN
	1    9400 1450
	0    -1   -1   0   
$EndComp
$Comp
L power:GNDREF #PWR0109
U 1 1 5EAA45E2
P 8950 1050
F 0 "#PWR0109" H 8950 800 50  0001 C CNN
F 1 "GNDREF" H 8955 877 50  0000 C CNN
F 2 "" H 8950 1050 50  0001 C CNN
F 3 "" H 8950 1050 50  0001 C CNN
	1    8950 1050
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_Coaxial J2
U 1 1 5EA8D686
P 9400 1050
F 0 "J2" H 9500 932 50  0000 L CNN
F 1 "Conn_Coaxial" H 9150 1200 50  0000 L CNN
F 2 "Connector_Coaxial:SMA_Amphenol_132203-12_Horizontal" H 9400 1050 50  0001 C CNN
F 3 " ~" H 9400 1050 50  0001 C CNN
	1    9400 1050
	0    1    -1   0   
$EndComp
$Comp
L librairie_projet:AD5175 U4
U 1 1 5EBDF7FE
P 9300 3950
F 0 "U4" H 9300 4417 50  0000 C CNN
F 1 "AD5175" H 9300 4326 50  0000 C CNN
F 2 "Package_SO:MSOP-10_3x3mm_P0.5mm" H 9400 4450 50  0001 C CNN
F 3 "" H 9300 3950 50  0001 C CNN
	1    9300 3950
	0    1    1    0   
$EndComp
$Comp
L librairie_projet:LT1818 U3
U 1 1 5EBDDABC
P 9500 2050
F 0 "U3" H 9800 2392 50  0000 C CNN
F 1 "LT1818" H 9800 2301 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:TSOT-23-5" H 9800 2375 50  0001 C CIN
F 3 "http://www.st.com/internet/com/TECHNICAL_RESOURCES/TECHNICAL_LITERATURE/DATASHEET/CD00003395.pdf" H 9800 2100 50  0001 C CNN
	1    9500 2050
	0    1    1    0   
$EndComp
Wire Wire Line
	8600 3050 8900 3050
Wire Wire Line
	9350 3050 9400 3050
Connection ~ 9400 3050
Wire Wire Line
	9400 3050 9400 3200
Wire Wire Line
	9300 3550 9300 3200
Wire Wire Line
	9300 3200 8900 3200
Wire Wire Line
	8900 3200 8900 3050
Connection ~ 8900 3050
Wire Wire Line
	8900 3050 9050 3050
Wire Wire Line
	9400 2650 9400 3050
Wire Wire Line
	9750 3200 9950 3200
$Comp
L power:GNDREF #PWR0101
U 1 1 5EC348CB
P 9950 3200
F 0 "#PWR0101" H 9950 2950 50  0001 C CNN
F 1 "GNDREF" H 9955 3027 50  0000 C CNN
F 2 "" H 9950 3200 50  0001 C CNN
F 3 "" H 9950 3200 50  0001 C CNN
	1    9950 3200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9450 3200 9400 3200
Connection ~ 9400 3200
Wire Wire Line
	9400 3200 9400 3550
$Comp
L Connector:Conn_01x08_Male J3
U 1 1 5F1F0796
P 3200 4750
F 0 "J3" H 3172 4632 50  0000 R CNN
F 1 "Conn_01x08_Male" H 3172 4723 50  0000 R CNN
F 2 "" H 3200 4750 50  0001 C CNN
F 3 "~" H 3200 4750 50  0001 C CNN
	1    3200 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 5150 3400 6400
Wire Wire Line
	3500 6400 3400 6400
Connection ~ 3400 6400
Wire Wire Line
	3400 6400 3100 6400
Wire Wire Line
	3400 5050 3950 5050
Wire Wire Line
	3950 5050 3950 6200
Wire Wire Line
	3400 4950 4050 4950
Wire Wire Line
	3400 4850 4150 4850
Wire Wire Line
	3400 4750 4250 4750
Wire Wire Line
	3400 4650 5600 4650
Wire Wire Line
	5600 5900 5600 4650
Wire Wire Line
	3400 4550 5700 4550
Wire Wire Line
	5700 6000 5700 4550
Wire Wire Line
	3400 4450 3550 4450
Wire Wire Line
	3550 4450 3550 4200
$Comp
L power:GNDREF #PWR0137
U 1 1 5F282A68
P 5550 6400
F 0 "#PWR0137" H 5550 6150 50  0001 C CNN
F 1 "GNDREF" V 5555 6272 50  0000 R CNN
F 2 "" H 5550 6400 50  0001 C CNN
F 3 "" H 5550 6400 50  0001 C CNN
	1    5550 6400
	0    -1   -1   0   
$EndComp
$Comp
L power:GNDREF #PWR0138
U 1 1 5F284546
P 5550 6300
F 0 "#PWR0138" H 5550 6050 50  0001 C CNN
F 1 "GNDREF" V 5555 6172 50  0000 R CNN
F 2 "" H 5550 6300 50  0001 C CNN
F 3 "" H 5550 6300 50  0001 C CNN
	1    5550 6300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10250 2800 10400 2800
Wire Wire Line
	10400 2800 10400 3550
Connection ~ 10250 2800
Wire Wire Line
	10400 3550 10000 3550
Connection ~ 10400 3550
Connection ~ 10000 3550
Wire Wire Line
	9500 3550 10000 3550
Wire Wire Line
	9500 3900 9500 3550
Connection ~ 9500 3550
Wire Wire Line
	8600 2300 9600 2300
Wire Wire Line
	9600 2300 9600 2050
Wire Wire Line
	3700 8500 3700 6400
Wire Wire Line
	3700 6400 3950 6400
Connection ~ 3700 8500
Connection ~ 3700 6400
Wire Wire Line
	8600 2300 8600 3050
Wire Wire Line
	2250 3250 2250 6400
Connection ~ 2250 6400
$Comp
L Device:C C27
U 1 1 5FBA6F52
P 10800 7550
F 0 "C27" H 10825 7650 50  0000 L CNN
F 1 "100nF" H 10825 7450 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 10838 7400 50  0001 C CNN
F 3 "" H 10800 7550 50  0001 C CNN
	1    10800 7550
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C28
U 1 1 5FBA5295
P 10800 7800
F 0 "C28" H 10825 7900 50  0000 L CNN
F 1 "10µF" H 10825 7700 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 10838 7650 50  0001 C CNN
F 3 "" H 10800 7800 50  0001 C CNN
	1    10800 7800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7100 3250 2250 3250
$Comp
L power:GNDREF #PWR0102
U 1 1 5EC35FE3
P 9300 8900
F 0 "#PWR0102" H 9300 8650 50  0001 C CNN
F 1 "GNDREF" V 9300 8450 50  0000 L CNN
F 2 "" H 9300 8900 50  0001 C CNN
F 3 "" H 9300 8900 50  0001 C CNN
	1    9300 8900
	0    1    1    0   
$EndComp
$Comp
L Device:R R6
U 1 1 5ECBB13D
P 9850 9000
F 0 "R6" V 9850 9050 50  0000 R CNN
F 1 " " V 9734 9000 50  0000 C CNN
F 2 "" V 9780 9000 50  0001 C CNN
F 3 "~" H 9850 9000 50  0001 C CNN
	1    9850 9000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9900 8500 9900 8400
$Comp
L power:GNDREF #PWR0139
U 1 1 5EEC4B5A
P 9900 8500
F 0 "#PWR0139" H 9900 8250 50  0001 C CNN
F 1 "GNDREF" V 9905 8372 50  0000 R CNN
F 2 "" H 9900 8500 50  0001 C CNN
F 3 "" H 9900 8500 50  0001 C CNN
	1    9900 8500
	1    0    0    -1  
$EndComp
Wire Wire Line
	10000 7600 10000 7450
$Comp
L power:GNDREF #PWR0140
U 1 1 5EE91ECF
P 10000 7450
F 0 "#PWR0140" H 10000 7200 50  0001 C CNN
F 1 "GNDREF" V 10005 7322 50  0000 R CNN
F 2 "" H 10000 7450 50  0001 C CNN
F 3 "" H 10000 7450 50  0001 C CNN
	1    10000 7450
	-1   0    0    1   
$EndComp
$Comp
L librairie_projet:AD5175 U7
U 1 1 5EB81854
P 9800 8000
F 0 "U7" H 9800 8467 50  0000 C CNN
F 1 "AD5175" H 9800 8376 50  0000 C CNN
F 2 "Package_SO:MSOP-10_3x3mm_P0.5mm" H 9900 8500 50  0001 C CNN
F 3 "" H 9800 8000 50  0001 C CNN
	1    9800 8000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8700 8500 9100 8500
Wire Wire Line
	8750 9150 9150 9150
Connection ~ 9150 9150
Connection ~ 9700 10100
$Comp
L power:GNDREF #PWR0128
U 1 1 5ED90549
P 10200 10800
F 0 "#PWR0128" H 10200 10550 50  0001 C CNN
F 1 "GNDREF" H 10205 10627 50  0000 C CNN
F 2 "" H 10200 10800 50  0001 C CNN
F 3 "" H 10200 10800 50  0001 C CNN
	1    10200 10800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9900 10800 10200 10800
Wire Wire Line
	10200 10100 10150 10100
Wire Wire Line
	9150 9450 9150 9600
Wire Wire Line
	8750 9600 8750 9450
$Comp
L power:GNDREF #PWR0127
U 1 1 5ED3F834
P 8750 9600
F 0 "#PWR0127" H 8750 9350 50  0001 C CNN
F 1 "GNDREF" V 8755 9427 50  0000 R CNN
F 2 "" H 8750 9600 50  0001 C CNN
F 3 "" H 8750 9600 50  0001 C CNN
	1    8750 9600
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR0126
U 1 1 5ED3F82E
P 9150 9600
F 0 "#PWR0126" H 9150 9350 50  0001 C CNN
F 1 "GNDREF" V 9155 9427 50  0000 R CNN
F 2 "" H 9150 9600 50  0001 C CNN
F 3 "" H 9150 9600 50  0001 C CNN
	1    9150 9600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C21
U 1 1 5ED3F828
P 8750 9300
F 0 "C21" H 8775 9400 50  0000 L CNN
F 1 "10µF" H 8775 9200 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 8788 9150 50  0001 C CNN
F 3 "" H 8750 9300 50  0001 C CNN
	1    8750 9300
	-1   0    0    1   
$EndComp
$Comp
L Device:C C22
U 1 1 5ED3F822
P 9150 9300
F 0 "C22" H 9175 9400 50  0000 L CNN
F 1 "100nF" H 9175 9200 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 9188 9150 50  0001 C CNN
F 3 "" H 9150 9300 50  0001 C CNN
	1    9150 9300
	-1   0    0    1   
$EndComp
Wire Wire Line
	9500 9150 9150 9150
Wire Wire Line
	9500 9200 9500 9150
Wire Wire Line
	9700 10100 9700 9800
$Comp
L power:GNDREF #PWR0123
U 1 1 5ECF7657
P 10200 10100
F 0 "#PWR0123" H 10200 9850 50  0001 C CNN
F 1 "GNDREF" H 10205 9927 50  0000 C CNN
F 2 "" H 10200 10100 50  0001 C CNN
F 3 "" H 10200 10100 50  0001 C CNN
	1    10200 10100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9700 10100 9850 10100
Wire Wire Line
	9700 10200 9700 10100
Wire Wire Line
	9700 10600 9700 10500
Wire Wire Line
	9600 10000 9600 9800
$Comp
L power:GNDREF #PWR0113
U 1 1 5ECBD33E
P 9600 10000
F 0 "#PWR0113" H 9600 9750 50  0001 C CNN
F 1 "GNDREF" V 9605 9872 50  0000 R CNN
F 2 "" H 9600 10000 50  0001 C CNN
F 3 "" H 9600 10000 50  0001 C CNN
	1    9600 10000
	1    0    0    -1  
$EndComp
Wire Wire Line
	8700 8200 8700 8150
$Comp
L power:GNDREF #PWR0108
U 1 1 5EC975AD
P 9100 8150
F 0 "#PWR0108" H 9100 7900 50  0001 C CNN
F 1 "GNDREF" V 9105 7977 50  0000 R CNN
F 2 "" H 9100 8150 50  0001 C CNN
F 3 "" H 9100 8150 50  0001 C CNN
	1    9100 8150
	-1   0    0    1   
$EndComp
$Comp
L power:GNDREF #PWR0107
U 1 1 5EC97236
P 8700 8150
F 0 "#PWR0107" H 8700 7900 50  0001 C CNN
F 1 "GNDREF" V 8705 7977 50  0000 R CNN
F 2 "" H 8700 8150 50  0001 C CNN
F 3 "" H 8700 8150 50  0001 C CNN
	1    8700 8150
	-1   0    0    1   
$EndComp
$Comp
L Device:C C16
U 1 1 5EC86622
P 9100 8350
F 0 "C16" H 9125 8450 50  0000 L CNN
F 1 "10µF" H 9125 8250 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 9138 8200 50  0001 C CNN
F 3 "" H 9100 8350 50  0001 C CNN
	1    9100 8350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C17
U 1 1 5EC8384E
P 8700 8350
F 0 "C17" H 8725 8450 50  0000 L CNN
F 1 "100nF" H 8725 8250 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 8738 8200 50  0001 C CNN
F 3 "" H 8700 8350 50  0001 C CNN
	1    8700 8350
	1    0    0    -1  
$EndComp
Wire Wire Line
	10400 8400 10500 8400
$Comp
L power:GNDREF #PWR0105
U 1 1 5EC597E9
P 10500 8400
F 0 "#PWR0105" H 10500 8150 50  0001 C CNN
F 1 "GNDREF" H 10505 8227 50  0000 C CNN
F 2 "" H 10500 8400 50  0001 C CNN
F 3 "" H 10500 8400 50  0001 C CNN
	1    10500 8400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10000 8400 10100 8400
$Comp
L Device:C C18
U 1 1 5EC51F71
P 10250 8400
F 0 "C18" H 10275 8500 50  0000 L CNN
F 1 "1µF" H 10275 8300 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 10288 8250 50  0001 C CNN
F 3 "" H 10250 8400 50  0001 C CNN
	1    10250 8400
	0    1    1    0   
$EndComp
$Comp
L librairie_projet:LT1818 U6
U 1 1 5EBDCDD4
P 9600 9800
F 0 "U6" H 9900 10142 50  0000 C CNN
F 1 "LT1818" H 9900 10051 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:TSOT-23-5" H 9900 10125 50  0001 C CIN
F 3 "http://www.st.com/internet/com/TECHNICAL_RESOURCES/TECHNICAL_LITERATURE/DATASHEET/CD00003395.pdf" H 9900 9850 50  0001 C CNN
	1    9600 9800
	0    -1   -1   0   
$EndComp
$Comp
L librairie_projet:BAT54XV2 D2
U 1 1 5EAF4ABA
P 9700 10350
F 0 "D2" H 9700 10567 50  0000 C CNN
F 1 "BAT54XV2" H 9700 10476 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-523" H 9700 10175 50  0001 C CNN
F 3 "https://www.diodes.com/assets/Datasheets/ds30396.pdf" H 9700 10350 50  0001 C CNN
	1    9700 10350
	0    1    1    0   
$EndComp
$Comp
L Device:C C7
U 1 1 5EAF4AC5
P 10000 10100
F 0 "C7" H 10025 10200 50  0000 L CNN
F 1 "47n" H 10025 10000 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 10038 9950 50  0001 C CNN
F 3 "" H 10000 10100 50  0001 C CNN
	1    10000 10100
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_Coaxial J5
U 1 1 5EA8C71B
P 9700 10800
F 0 "J5" H 9800 10682 50  0000 L CNN
F 1 "Conn_Coaxial" H 9400 10950 50  0000 L CNN
F 2 "Connector_Coaxial:SMA_Amphenol_132203-12_Horizontal" H 9700 10800 50  0001 C CNN
F 3 " ~" H 9700 10800 50  0001 C CNN
	1    9700 10800
	0    -1   1    0   
$EndComp
Text Notes 9600 11160 0    60   ~ 0
REF\n
Wire Wire Line
	9700 9200 9700 9000
Wire Wire Line
	9700 9000 9700 8900
Connection ~ 9700 9000
Wire Wire Line
	9700 8900 9650 8900
Wire Wire Line
	9800 8400 9800 8900
Wire Wire Line
	9800 8900 10050 8900
Wire Wire Line
	10050 8900 10050 9000
Wire Wire Line
	10000 9000 10050 9000
Connection ~ 10050 9000
Wire Wire Line
	10050 9000 10550 9000
Connection ~ 8700 8500
Wire Wire Line
	8750 9150 8700 9150
Connection ~ 8750 9150
Connection ~ 9100 8500
Wire Wire Line
	9600 8500 9100 8500
Wire Wire Line
	9900 7600 9900 7950
Wire Wire Line
	9600 7950 9600 8400
Wire Wire Line
	9500 9500 10550 9500
Wire Wire Line
	10550 9000 10550 9500
Wire Wire Line
	9500 9500 9500 9800
Wire Wire Line
	9500 6950 9500 5900
Wire Wire Line
	9500 5900 9750 5900
Wire Wire Line
	10650 6700 9700 6700
Wire Wire Line
	9700 6700 9700 7600
Wire Wire Line
	9750 5800 10650 5800
Connection ~ 9750 5800
Wire Wire Line
	9600 7950 9900 7950
Wire Wire Line
	9500 4350 9500 3900
Connection ~ 9500 3900
$Comp
L power:GNDREF #PWR0115
U 1 1 5ECEA303
P 9600 7500
F 0 "#PWR0115" H 9600 7250 50  0001 C CNN
F 1 "GNDREF" H 9605 7327 50  0000 C CNN
F 2 "" H 9600 7500 50  0001 C CNN
F 3 "" H 9600 7500 50  0001 C CNN
	1    9600 7500
	-1   0    0    1   
$EndComp
Wire Wire Line
	9800 7600 9800 7900
Wire Wire Line
	9800 7900 9300 7900
Wire Wire Line
	9300 6950 9500 6950
$Comp
L Device:R R2
U 1 1 5EC4CAE6
P 11500 8350
F 0 "R2" V 11500 8350 50  0000 C CNN
F 1 "50" V 11384 8350 50  0000 C CNN
F 2 "" V 11430 8350 50  0001 C CNN
F 3 "~" H 11500 8350 50  0001 C CNN
	1    11500 8350
	0    -1   1    0   
$EndComp
$Comp
L Device:C C10
U 1 1 5EC4E9B5
P 11300 8500
F 0 "C10" H 11325 8600 50  0000 L CNN
F 1 "2nF" H 11325 8400 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 11338 8350 50  0001 C CNN
F 3 "" H 11300 8500 50  0001 C CNN
	1    11300 8500
	-1   0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR0104
U 1 1 5EC56397
P 11300 8750
F 0 "#PWR0104" H 11300 8500 50  0001 C CNN
F 1 "GNDREF" H 11305 8577 50  0000 C CNN
F 2 "" H 11300 8750 50  0001 C CNN
F 3 "" H 11300 8750 50  0001 C CNN
	1    11300 8750
	-1   0    0    -1  
$EndComp
Wire Wire Line
	11300 8750 11300 8650
Wire Wire Line
	11350 8350 11300 8350
Wire Wire Line
	10550 9000 10950 9000
Wire Wire Line
	10950 9000 10950 8350
Wire Wire Line
	10950 8350 11300 8350
Connection ~ 10550 9000
Connection ~ 11300 8350
Wire Wire Line
	11100 2050 9600 2050
Connection ~ 9600 2050
Wire Wire Line
	7100 3900 7100 3250
Wire Wire Line
	9400 4350 9400 5200
Wire Wire Line
	9400 5800 9750 5800
Connection ~ 8100 5800
Wire Wire Line
	6100 4100 6100 6100
Wire Wire Line
	7100 3900 9200 3900
$Comp
L Device:R_Small R8
U 1 1 5F3A76F9
P 6500 8050
F 0 "R8" H 6559 8096 50  0000 L CNN
F 1 "R_Small" H 6559 8005 50  0000 L CNN
F 2 "" H 6500 8050 50  0001 C CNN
F 3 "~" H 6500 8050 50  0001 C CNN
	1    6500 8050
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R7
U 1 1 5F3A7C96
P 5950 8250
F 0 "R7" H 6009 8296 50  0000 L CNN
F 1 "R_Small" H 6009 8205 50  0000 L CNN
F 2 "" H 5950 8250 50  0001 C CNN
F 3 "~" H 5950 8250 50  0001 C CNN
	1    5950 8250
	1    0    0    -1  
$EndComp
Wire Wire Line
	9200 4350 9200 3900
Connection ~ 9200 3900
Wire Wire Line
	9200 3900 9500 3900
Wire Wire Line
	8850 4100 8850 4950
Wire Wire Line
	8850 4950 9300 4950
Wire Wire Line
	9300 4950 9300 4350
Wire Wire Line
	6100 4100 8850 4100
Wire Wire Line
	7050 5800 8100 5800
Wire Wire Line
	6500 6200 6500 4350
Wire Wire Line
	6500 4350 8700 4350
Wire Wire Line
	8700 4350 8700 5200
Wire Wire Line
	8700 5200 9400 5200
Connection ~ 9400 5200
Wire Wire Line
	9400 5200 9400 5800
Wire Wire Line
	9300 6950 9300 7900
Wire Wire Line
	6750 4650 8600 4650
Wire Wire Line
	8600 4650 8600 5350
Wire Wire Line
	8600 5350 9300 5350
Wire Wire Line
	9300 5350 9300 5900
Wire Wire Line
	9300 5900 9500 5900
Connection ~ 9500 5900
$Comp
L librairie_projet:24AA256 U8
U 1 1 5ED2FD7E
P 11600 7250
F 0 "U8" H 11600 7867 50  0000 C CNN
F 1 "24AA256" H 11600 7776 50  0000 C CNN
F 2 "" H 11600 7250 50  0001 C CNN
F 3 "http://www.nxp.com/documents/data_sheet/P82B96.pdf" H 11600 7250 50  0001 C CNN
	1    11600 7250
	-1   0    0    1   
$EndComp
Connection ~ 9800 7600
Wire Wire Line
	11400 7150 11000 7150
Wire Wire Line
	10650 6700 11400 6700
Wire Wire Line
	6500 8150 6500 8500
Wire Wire Line
	10900 4500 11100 4500
Wire Wire Line
	11100 4500 11100 2050
Wire Wire Line
	10600 4500 9750 4500
Wire Wire Line
	9750 4500 9750 4900
Wire Wire Line
	10350 4900 10250 4900
Wire Wire Line
	9950 4900 9750 4900
Connection ~ 9750 4900
Wire Wire Line
	9750 4900 9750 5500
Wire Wire Line
	7050 5700 8950 5700
Wire Wire Line
	7750 5600 8950 5600
Wire Wire Line
	8100 5500 8950 5500
Wire Wire Line
	9800 6950 9800 7600
Wire Wire Line
	9800 6950 11000 6950
Connection ~ 10650 6700
Wire Wire Line
	11400 6700 11400 7150
Wire Wire Line
	10650 5800 10650 6700
$Comp
L power:GNDREF #PWR0141
U 1 1 5EFB05F4
P 12800 7150
F 0 "#PWR0141" H 12800 6900 50  0001 C CNN
F 1 "GNDREF" V 12805 7022 50  0000 R CNN
F 2 "" H 12800 7150 50  0001 C CNN
F 3 "" H 12800 7150 50  0001 C CNN
	1    12800 7150
	0    -1   -1   0   
$EndComp
$Comp
L power:GNDREF #PWR0142
U 1 1 5EFB1E04
P 12800 7350
F 0 "#PWR0142" H 12800 7100 50  0001 C CNN
F 1 "GNDREF" V 12805 7222 50  0000 R CNN
F 2 "" H 12800 7350 50  0001 C CNN
F 3 "" H 12800 7350 50  0001 C CNN
	1    12800 7350
	0    -1   -1   0   
$EndComp
$Comp
L power:GNDREF #PWR0143
U 1 1 5EFB279A
P 12800 7550
F 0 "#PWR0143" H 12800 7300 50  0001 C CNN
F 1 "GNDREF" V 12805 7422 50  0000 R CNN
F 2 "" H 12800 7550 50  0001 C CNN
F 3 "" H 12800 7550 50  0001 C CNN
	1    12800 7550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	12200 7150 12800 7150
Wire Wire Line
	12800 7350 12200 7350
Wire Wire Line
	12200 7550 12800 7550
$Comp
L power:GNDREF #PWR0144
U 1 1 5EFDAF47
P 12800 6950
F 0 "#PWR0144" H 12800 6700 50  0001 C CNN
F 1 "GNDREF" V 12805 6822 50  0000 R CNN
F 2 "" H 12800 6950 50  0001 C CNN
F 3 "" H 12800 6950 50  0001 C CNN
	1    12800 6950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	12200 6950 12800 6950
$Comp
L power:GNDREF #PWR0145
U 1 1 5EFE9F3A
P 10750 7350
F 0 "#PWR0145" H 10750 7100 50  0001 C CNN
F 1 "GNDREF" V 10755 7222 50  0000 R CNN
F 2 "" H 10750 7350 50  0001 C CNN
F 3 "" H 10750 7350 50  0001 C CNN
	1    10750 7350
	0    1    1    0   
$EndComp
Wire Wire Line
	10750 7350 11000 7350
Wire Wire Line
	9600 7500 9600 7600
Wire Wire Line
	9350 8900 9300 8900
$Comp
L Device:R R4
U 1 1 5EC4DB73
P 9500 8900
F 0 "R4" V 9293 8900 50  0000 C CNN
F 1 "625" V 9384 8900 50  0000 C CNN
F 2 "" V 9430 8900 50  0001 C CNN
F 3 "~" H 9500 8900 50  0001 C CNN
	1    9500 8900
	0    -1   -1   0   
$EndComp
Connection ~ 9700 8900
Wire Wire Line
	9700 8400 9700 8900
Wire Wire Line
	9100 8150 9100 8200
Wire Wire Line
	8700 8500 8700 9150
Wire Wire Line
	9600 8500 9600 8400
Connection ~ 9600 8400
$Comp
L power:GNDREF #PWR0146
U 1 1 5EF10044
P 9500 10000
F 0 "#PWR0146" H 9500 9750 50  0001 C CNN
F 1 "GNDREF" V 9500 9700 50  0000 C CNN
F 2 "" H 9500 10000 50  0001 C CNN
F 3 "" H 9500 10000 50  0001 C CNN
	1    9500 10000
	1    0    0    -1  
$EndComp
Wire Wire Line
	9500 10000 9500 9800
Connection ~ 9500 9800
Wire Wire Line
	9200 3450 9200 3550
Wire Wire Line
	8600 3550 8700 3550
Wire Wire Line
	10950 7550 11000 7550
$Comp
L power:GNDREF #PWR0147
U 1 1 5EF22E74
P 10550 7550
F 0 "#PWR0147" H 10550 7300 50  0001 C CNN
F 1 "GNDREF" V 10555 7422 50  0000 R CNN
F 2 "" H 10550 7550 50  0001 C CNN
F 3 "" H 10550 7550 50  0001 C CNN
	1    10550 7550
	0    1    1    0   
$EndComp
$Comp
L power:GNDREF #PWR0148
U 1 1 5EF2327A
P 10550 7800
F 0 "#PWR0148" H 10550 7550 50  0001 C CNN
F 1 "GNDREF" V 10555 7672 50  0000 R CNN
F 2 "" H 10550 7800 50  0001 C CNN
F 3 "" H 10550 7800 50  0001 C CNN
	1    10550 7800
	0    1    1    0   
$EndComp
Wire Wire Line
	10550 7800 10650 7800
Wire Wire Line
	10650 7550 10550 7550
Connection ~ 10950 7800
Wire Wire Line
	10950 7800 10950 7950
Connection ~ 10950 7550
Wire Wire Line
	9900 7950 10950 7950
Wire Wire Line
	10950 7550 10950 7800
Connection ~ 9900 7950
Wire Wire Line
	5400 6100 6100 6100
Wire Wire Line
	5050 6100 5400 6100
Connection ~ 5400 6100
$Comp
L TOSMETRE-rescue:18F1320-16F88 U1
U 1 1 5CF66128
P 4900 6400
F 0 "U1" V 4946 5770 50  0000 R CNN
F 1 "18F1320" V 4855 5770 50  0000 R CNN
F 2 "Package_SO:SSOP-20_4.4x6.5mm_P0.65mm" H 3450 6100 50  0001 L CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/21919e.pdf" H 4700 5800 50  0001 C CNN
	1    4900 6400
	-1   0    0    1   
$EndComp
Wire Wire Line
	5400 6200 6500 6200
Connection ~ 6500 8500
Wire Wire Line
	5950 8500 6500 8500
Wire Wire Line
	5400 6400 5550 6400
Wire Wire Line
	5550 6300 5400 6300
Wire Wire Line
	6500 8500 7050 8500
Wire Wire Line
	7050 8500 8700 8500
Connection ~ 7050 8500
Wire Wire Line
	7050 5800 7050 8500
Connection ~ 5950 8500
Wire Wire Line
	3700 8500 5950 8500
Wire Wire Line
	5050 8050 5950 8050
Connection ~ 5950 8050
Wire Wire Line
	5950 8050 6750 8050
Wire Wire Line
	6750 4950 6750 8050
Wire Wire Line
	5400 6700 5450 6700
Wire Wire Line
	5400 6600 5500 6600
Wire Wire Line
	5500 6600 5500 7000
$Comp
L power:GNDREF #PWR?
U 1 1 5F2AF3C5
P 6250 7000
F 0 "#PWR?" H 6250 6750 50  0001 C CNN
F 1 "GNDREF" V 6350 7050 50  0000 R CNN
F 2 "" H 6250 7000 50  0001 C CNN
F 3 "" H 6250 7000 50  0001 C CNN
	1    6250 7000
	0    -1   -1   0   
$EndComp
$Comp
L power:GNDREF #PWR?
U 1 1 5F2B062F
P 6250 7450
F 0 "#PWR?" H 6250 7200 50  0001 C CNN
F 1 "GNDREF" V 6350 7500 50  0000 R CNN
F 2 "" H 6250 7450 50  0001 C CNN
F 3 "" H 6250 7450 50  0001 C CNN
	1    6250 7450
	0    -1   -1   0   
$EndComp
$Comp
L power:GNDREF #PWR?
U 1 1 5F2B0FD4
P 6250 7900
F 0 "#PWR?" H 6250 7650 50  0001 C CNN
F 1 "GNDREF" V 6350 7950 50  0000 R CNN
F 2 "" H 6250 7900 50  0001 C CNN
F 3 "" H 6250 7900 50  0001 C CNN
	1    6250 7900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9750 5600 13600 5600
Wire Wire Line
	11650 8350 13600 8350
Wire Wire Line
	13600 5600 13600 8350
Text Notes 9250 710  0    60   ~ 0
FWD\n
$Comp
L Switch:SW_Push_Dual_x2 SW?
U 1 1 602CE788
P 5850 7000
F 0 "SW?" H 5850 7285 50  0000 C CNN
F 1 "SW_Push" H 5850 7194 50  0000 C CNN
F 2 "" H 5850 7200 50  0001 C CNN
F 3 "~" H 5850 7200 50  0001 C CNN
	1    5850 7000
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push_Dual_x2 SW?
U 1 1 602F02F4
P 5850 7450
F 0 "SW?" H 5850 7735 50  0000 C CNN
F 1 "SW_Push_Dual_x2" H 5850 7644 50  0000 C CNN
F 2 "" H 5850 7650 50  0001 C CNN
F 3 "~" H 5850 7650 50  0001 C CNN
	1    5850 7450
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push_Dual_x2 SW?
U 1 1 602F1015
P 5850 7900
F 0 "SW?" H 5850 8185 50  0000 C CNN
F 1 "SW_Push_Dual_x2" H 5850 8094 50  0000 C CNN
F 2 "" H 5850 8100 50  0001 C CNN
F 3 "~" H 5850 8100 50  0001 C CNN
	1    5850 7900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 7000 5650 7000
Wire Wire Line
	5450 7450 5650 7450
Wire Wire Line
	5400 7900 5650 7900
Wire Wire Line
	6050 7900 6250 7900
Wire Wire Line
	6050 7450 6250 7450
Wire Wire Line
	6050 7000 6250 7000
Wire Wire Line
	5950 8150 5950 8050
Wire Wire Line
	5950 8350 5950 8500
Wire Wire Line
	5050 6100 5050 8050
Wire Wire Line
	6500 6200 6500 7950
Connection ~ 6500 6200
Wire Wire Line
	5400 6800 5400 7900
Wire Wire Line
	5450 6700 5450 7450
$EndSCHEMATC
