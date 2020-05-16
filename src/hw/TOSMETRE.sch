EESchema Schematic File Version 4
LIBS:TOSMETRE-cache
EELAYER 29 0
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
Text Notes 3200 6650 2    60   ~ 0
Signal réfléchi
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
L TOSMETRE-rescue:18F1320-16F88 U1
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
Connection ~ 8150 1150
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
Wire Wire Line
	8150 1150 8150 1450
Wire Wire Line
	7850 1450 7750 1450
Wire Wire Line
	8050 1450 8150 1450
$Comp
L Device:CP_Small C5
U 1 1 5AA53058
P 7950 1450
F 0 "C5" H 7960 1520 50  0000 L CNN
F 1 "CP_Small" H 7960 1370 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 7950 1450 50  0001 C CNN
F 3 "" H 7950 1450 50  0001 C CNN
	1    7950 1450
	0    1    1    0   
$EndComp
$Comp
L power:GNDREF #PWR01
U 1 1 5A343ADA
P 7750 1450
F 0 "#PWR01" H 7750 1200 50  0001 C CNN
F 1 "GNDREF" H 7750 1300 50  0000 C CNN
F 2 "" H 7750 1450 50  0001 C CNN
F 3 "" H 7750 1450 50  0001 C CNN
	1    7750 1450
	0    1    1    0   
$EndComp
Wire Wire Line
	8350 3150 8350 3600
Text Notes 4200 1300 0    50   ~ 0
+5V
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
	3800 1250 3800 1150
Wire Wire Line
	3800 1550 3800 1650
Wire Wire Line
	2250 1650 2250 1550
Connection ~ 2250 1150
Wire Wire Line
	2250 1150 2250 1250
Wire Wire Line
	1850 1150 2250 1150
$Comp
L power:GNDREF #PWR09
U 1 1 5AAD17B7
P 3800 1650
F 0 "#PWR09" H 3800 1400 50  0001 C CNN
F 1 "GNDREF" H 3800 1500 50  0000 C CNN
F 2 "" H 3800 1650 50  0001 C CNN
F 3 "" H 3800 1650 50  0001 C CNN
	1    3800 1650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 5AACE979
P 3800 1400
F 0 "C2" H 3825 1500 50  0000 L CNN
F 1 "C" H 3825 1300 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 3838 1250 50  0001 C CNN
F 3 "" H 3800 1400 50  0001 C CNN
	1    3800 1400
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR08
U 1 1 5AA93D13
P 1400 1650
F 0 "#PWR08" H 1400 1400 50  0001 C CNN
F 1 "GNDREF" H 1400 1500 50  0000 C CNN
F 2 "" H 1400 1650 50  0001 C CNN
F 3 "" H 1400 1650 50  0001 C CNN
	1    1400 1650
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR07
U 1 1 5AA93D0C
P 1400 1650
F 0 "#PWR07" H 1400 1400 50  0001 C CNN
F 1 "GNDREF" H 1400 1500 50  0000 C CNN
F 2 "" H 1400 1650 50  0001 C CNN
F 3 "" H 1400 1650 50  0001 C CNN
	1    1400 1650
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR06
U 1 1 5AA44E43
P 2250 1650
F 0 "#PWR06" H 2250 1400 50  0001 C CNN
F 1 "GNDREF" H 2250 1500 50  0000 C CNN
F 2 "" H 2250 1650 50  0001 C CNN
F 3 "" H 2250 1650 50  0001 C CNN
	1    2250 1650
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR05
U 1 1 5AA44D09
P 2250 1650
F 0 "#PWR05" H 2250 1400 50  0001 C CNN
F 1 "GNDREF" H 2250 1500 50  0000 C CNN
F 2 "" H 2250 1650 50  0001 C CNN
F 3 "" H 2250 1650 50  0001 C CNN
	1    2250 1650
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR04
U 1 1 5AA42E24
P 3150 1650
F 0 "#PWR04" H 3150 1400 50  0001 C CNN
F 1 "GNDREF" H 3150 1500 50  0000 C CNN
F 2 "" H 3150 1650 50  0001 C CNN
F 3 "" H 3150 1650 50  0001 C CNN
	1    3150 1650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 5A3C3936
P 2250 1400
F 0 "C1" H 2275 1500 50  0000 L CNN
F 1 "C" H 2275 1300 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 2288 1250 50  0001 C CNN
F 3 "" H 2250 1400 50  0001 C CNN
	1    2250 1400
	1    0    0    -1  
$EndComp
$Comp
L TOSMETRE-rescue:L7805-TOSMETRE-rescue-TOSMETRE-rescue U2
U 1 1 5A33E692
P 3150 1150
F 0 "U2" H 3000 1275 50  0000 C CNN
F 1 "L7805" H 3150 1275 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Horizontal_TabDown" H 3175 1000 50  0001 L CIN
F 3 "" H 3150 1100 50  0001 C CNN
	1    3150 1150
	1    0    0    -1  
$EndComp
$Comp
L Device:D D1
U 1 1 5A324E39
P 1700 1150
F 0 "D1" H 1700 1250 50  0000 C CNN
F 1 "D" H 1700 1050 50  0000 C CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 1700 1150 50  0001 C CNN
F 3 "" H 1700 1150 50  0001 C CNN
	1    1700 1150
	-1   0    0    1   
$EndComp
Wire Wire Line
	1400 1650 1400 1250
Wire Wire Line
	1400 1250 1250 1250
Connection ~ 1400 1650
Wire Wire Line
	1250 1150 1550 1150
Connection ~ 2250 1650
Wire Wire Line
	3150 1450 3150 1650
Wire Wire Line
	3800 1150 3450 1150
Connection ~ 3800 1150
Wire Wire Line
	2250 1150 2850 1150
NoConn ~ 8650 4600
NoConn ~ 8550 4600
NoConn ~ 8450 4600
NoConn ~ 8050 4600
NoConn ~ 7950 4600
NoConn ~ 7850 4600
Connection ~ 8150 1450
Wire Wire Line
	8150 1450 8150 3150
$Comp
L Connector:Conn_Coaxial J5
U 1 1 5EA8C71B
P 3200 6750
F 0 "J5" H 3300 6632 50  0000 L CNN
F 1 "Conn_Coaxial" H 3300 6723 50  0000 L CNN
F 2 "Connector_Coaxial:SMA_Amphenol_132203-12_Horizontal" H 3200 6750 50  0001 C CNN
F 3 " ~" H 3200 6750 50  0001 C CNN
	1    3200 6750
	-1   0    0    -1  
$EndComp
$Comp
L Device:C C7
U 1 1 5EAF4AC5
P 3900 7050
F 0 "C7" H 3925 7150 50  0000 L CNN
F 1 "47n" H 3925 6950 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 3938 6900 50  0001 C CNN
F 3 "" H 3900 7050 50  0001 C CNN
	1    3900 7050
	-1   0    0    1   
$EndComp
$Comp
L power:GNDREF #PWR0111
U 1 1 5EB0E0EA
P 3200 7050
F 0 "#PWR0111" H 3200 6800 50  0001 C CNN
F 1 "GNDREF" V 3205 6922 50  0000 R CNN
F 2 "" H 3200 7050 50  0001 C CNN
F 3 "" H 3200 7050 50  0001 C CNN
	1    3200 7050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 1150 4750 1150
$Comp
L librairie_projet:BAT54XV2 D2
U 1 1 5EAF4ABA
P 3650 6750
F 0 "D2" H 3650 6967 50  0000 C CNN
F 1 "BAT54XV2" H 3650 6876 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-523" H 3650 6575 50  0001 C CNN
F 3 "https://www.diodes.com/assets/Datasheets/ds30396.pdf" H 3650 6750 50  0001 C CNN
	1    3650 6750
	-1   0    0    1   
$EndComp
$Comp
L librairie_projet:LT1818 U?
U 1 1 5EBDDABC
P 850 3100
F 0 "U?" H 1150 3442 50  0000 C CNN
F 1 "LT1818" H 1150 3351 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:TSOT-23-5" H 1150 3425 50  0001 C CIN
F 3 "http://www.st.com/internet/com/TECHNICAL_RESOURCES/TECHNICAL_LITERATURE/DATASHEET/CD00003395.pdf" H 1150 3150 50  0001 C CNN
	1    850  3100
	1    0    0    -1  
$EndComp
$Comp
L librairie_projet:AD5175 U?
U 1 1 5EBDF7FE
P 2750 3300
F 0 "U?" H 2750 3767 50  0000 C CNN
F 1 "AD5175" H 2750 3676 50  0000 C CNN
F 2 "Package_SO:MSOP-10_3x3mm_P0.5mm" H 2850 3800 50  0001 C CNN
F 3 "" H 2750 3300 50  0001 C CNN
	1    2750 3300
	1    0    0    -1  
$EndComp
$Comp
L librairie_projet:LTC2305 U?
U 1 1 5EBEB456
P 3750 4950
F 0 "U?" H 3750 5417 50  0000 C CNN
F 1 "LTC2305" H 3750 5326 50  0000 C CNN
F 2 "Package_SO:MSOP-8_3x3mm_P0.65mm" H 2800 4600 50  0001 C CNN
F 3 "http://datasheets.maximintegrated.com/en/ds/MAX31826.pdf" H 3550 4800 50  0001 C CNN
	1    3750 4950
	0    -1   -1   0   
$EndComp
$Comp
L librairie_projet:LT1818 U?
U 1 1 5EBDCDD4
P 4550 3200
F 0 "U?" H 4850 3542 50  0000 C CNN
F 1 "LT1818" H 4850 3451 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:TSOT-23-5" H 4850 3525 50  0001 C CIN
F 3 "http://www.st.com/internet/com/TECHNICAL_RESOURCES/TECHNICAL_LITERATURE/DATASHEET/CD00003395.pdf" H 4850 3250 50  0001 C CNN
	1    4550 3200
	1    0    0    -1  
$EndComp
Text Notes 1600 6750 2    60   ~ 0
Signal transmis
$Comp
L Connector:Conn_Coaxial J2
U 1 1 5EA8D686
P 1500 6850
F 0 "J2" H 1600 6732 50  0000 L CNN
F 1 "Conn_Coaxial" H 1600 6823 50  0000 L CNN
F 2 "Connector_Coaxial:SMA_Amphenol_132203-12_Horizontal" H 1500 6850 50  0001 C CNN
F 3 " ~" H 1500 6850 50  0001 C CNN
	1    1500 6850
	-1   0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR0109
U 1 1 5EAA45E2
P 1500 7150
F 0 "#PWR0109" H 1500 6900 50  0001 C CNN
F 1 "GNDREF" H 1505 6977 50  0000 C CNN
F 2 "" H 1500 7150 50  0001 C CNN
F 3 "" H 1500 7150 50  0001 C CNN
	1    1500 7150
	1    0    0    -1  
$EndComp
$Comp
L librairie_projet:BAT54XV2 D3
U 1 1 5EAD20A2
P 1900 6850
F 0 "D3" H 1900 7067 50  0000 C CNN
F 1 "BAT54XV2" H 1900 6976 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-523" H 1900 6675 50  0001 C CNN
F 3 "https://www.diodes.com/assets/Datasheets/ds30396.pdf" H 1900 6850 50  0001 C CNN
	1    1900 6850
	-1   0    0    1   
$EndComp
$Comp
L Device:C C8
U 1 1 5EAEBEF7
P 2200 7100
F 0 "C8" H 2225 7200 50  0000 L CNN
F 1 "47n" H 2225 7000 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 2238 6950 50  0001 C CNN
F 3 "" H 2200 7100 50  0001 C CNN
	1    2200 7100
	1    0    0    -1  
$EndComp
Wire Wire Line
	850  3000 650  3000
Wire Wire Line
	650  3000 650  3450
Wire Wire Line
	650  3450 1550 3450
Wire Wire Line
	1550 3450 1550 3300
$Comp
L Device:R R?
U 1 1 5EC330C0
P 3600 3650
F 0 "R?" H 3670 3696 50  0000 L CNN
F 1 "R" H 3670 3605 50  0000 L CNN
F 2 "" V 3530 3650 50  0001 C CNN
F 3 "~" H 3600 3650 50  0001 C CNN
	1    3600 3650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5EC33B75
P 1600 3050
F 0 "R?" H 1670 3096 50  0000 L CNN
F 1 "R" H 1670 3005 50  0000 L CNN
F 2 "" V 1530 3050 50  0001 C CNN
F 3 "~" H 1600 3050 50  0001 C CNN
	1    1600 3050
	1    0    0    -1  
$EndComp
Connection ~ 1600 3200
Wire Wire Line
	1600 3200 1450 3200
$Comp
L power:GNDREF #PWR?
U 1 1 5EC348CB
P 1600 2700
F 0 "#PWR?" H 1600 2450 50  0001 C CNN
F 1 "GNDREF" H 1605 2527 50  0000 C CNN
F 2 "" H 1600 2700 50  0001 C CNN
F 3 "" H 1600 2700 50  0001 C CNN
	1    1600 2700
	-1   0    0    1   
$EndComp
$Comp
L power:GNDREF #PWR?
U 1 1 5EC35FE3
P 5500 3750
F 0 "#PWR?" H 5500 3500 50  0001 C CNN
F 1 "GNDREF" H 5505 3577 50  0000 C CNN
F 2 "" H 5500 3750 50  0001 C CNN
F 3 "" H 5500 3750 50  0001 C CNN
	1    5500 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 2900 1600 2700
Wire Wire Line
	1550 3450 1550 4150
Connection ~ 1550 3450
$Comp
L Device:R R?
U 1 1 5EC4CAE6
P 2750 4150
F 0 "R?" V 2543 4150 50  0000 C CNN
F 1 "R" V 2634 4150 50  0000 C CNN
F 2 "" V 2680 4150 50  0001 C CNN
F 3 "~" H 2750 4150 50  0001 C CNN
	1    2750 4150
	0    1    1    0   
$EndComp
Wire Wire Line
	2900 4150 3050 4150
$Comp
L Device:R R?
U 1 1 5EC4DB73
P 5500 3450
F 0 "R?" V 5293 3450 50  0000 C CNN
F 1 "R" V 5384 3450 50  0000 C CNN
F 2 "" V 5430 3450 50  0001 C CNN
F 3 "~" H 5500 3450 50  0001 C CNN
	1    5500 3450
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5EC4E9B5
P 3050 4300
F 0 "C?" H 3075 4400 50  0000 L CNN
F 1 "C" H 3075 4200 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 3088 4150 50  0001 C CNN
F 3 "" H 3050 4300 50  0001 C CNN
	1    3050 4300
	1    0    0    -1  
$EndComp
Connection ~ 3050 4150
Wire Wire Line
	3050 4150 3500 4150
$Comp
L Device:C C?
U 1 1 5EC5241B
P 3750 3900
F 0 "C?" H 3775 4000 50  0000 L CNN
F 1 "C" H 3775 3800 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 3788 3750 50  0001 C CNN
F 3 "" H 3750 3900 50  0001 C CNN
	1    3750 3900
	0    -1   -1   0   
$EndComp
$Comp
L power:GNDREF #PWR?
U 1 1 5EC558FE
P 4000 3900
F 0 "#PWR?" H 4000 3650 50  0001 C CNN
F 1 "GNDREF" H 4005 3727 50  0000 C CNN
F 2 "" H 4000 3900 50  0001 C CNN
F 3 "" H 4000 3900 50  0001 C CNN
	1    4000 3900
	0    -1   -1   0   
$EndComp
$Comp
L power:GNDREF #PWR?
U 1 1 5EC56397
P 3050 4550
F 0 "#PWR?" H 3050 4300 50  0001 C CNN
F 1 "GNDREF" H 3055 4377 50  0000 C CNN
F 2 "" H 3050 4550 50  0001 C CNN
F 3 "" H 3050 4550 50  0001 C CNN
	1    3050 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 3900 3900 3900
Wire Wire Line
	3050 4550 3050 4450
Wire Wire Line
	3500 4150 3500 4550
Wire Wire Line
	1600 3200 2350 3200
Wire Wire Line
	1550 3300 2350 3300
Wire Wire Line
	1550 4150 2600 4150
Wire Wire Line
	2350 3100 2150 3100
Wire Wire Line
	2150 3100 2150 2400
Wire Wire Line
	4750 1150 4750 2400
Connection ~ 4750 1150
$Comp
L librairie_projet:AD5175 U?
U 1 1 5EB81854
P 6350 3400
F 0 "U?" H 6350 3867 50  0000 C CNN
F 1 "AD5175" H 6350 3776 50  0000 C CNN
F 2 "Package_SO:MSOP-10_3x3mm_P0.5mm" H 6450 3900 50  0001 C CNN
F 3 "" H 6350 3400 50  0001 C CNN
	1    6350 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 3200 5650 3200
Wire Wire Line
	2150 2400 4750 2400
Wire Wire Line
	5150 3300 5500 3300
Wire Wire Line
	4550 3100 3600 3100
Wire Wire Line
	3600 3100 3600 3500
Wire Wire Line
	3600 3800 3600 3900
Connection ~ 3600 3900
Wire Wire Line
	3600 3900 3600 4550
Wire Wire Line
	4750 1150 5650 1150
Wire Wire Line
	5650 1150 5650 3200
Connection ~ 5650 1150
Wire Wire Line
	5650 1150 8150 1150
Connection ~ 5500 3300
Wire Wire Line
	5500 3300 5950 3300
Wire Wire Line
	5500 3600 5500 3750
$EndSCHEMATC
