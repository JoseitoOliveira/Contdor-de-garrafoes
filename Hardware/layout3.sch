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
L MCU_Microchip_ATmega:ATmega328-PU U1
U 1 1 5FE22029
P 3250 3400
F 0 "U1" H 2606 3446 50  0000 R CNN
F 1 "ATmega328-PU" H 2606 3355 50  0000 R CNN
F 2 "Package_DIP:DIP-28_W7.62mm" H 3250 3400 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/ATmega328_P%20AVR%20MCU%20with%20picoPower%20Technology%20Data%20Sheet%2040001984A.pdf" H 3250 3400 50  0001 C CNN
	1    3250 3400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 5FE238C0
P 3250 4900
F 0 "#PWR0101" H 3250 4650 50  0001 C CNN
F 1 "GND" H 3255 4727 50  0000 C CNN
F 2 "" H 3250 4900 50  0001 C CNN
F 3 "" H 3250 4900 50  0001 C CNN
	1    3250 4900
	1    0    0    -1  
$EndComp
$Comp
L Connector:Jack-DC J1
U 1 1 5FE25BE6
P 4100 1250
F 0 "J1" H 4157 1575 50  0000 C CNN
F 1 "Jack-DC" H 4157 1484 50  0000 C CNN
F 2 "Connector_BarrelJack:BarrelJack_Horizontal" H 4150 1210 50  0001 C CNN
F 3 "~" H 4150 1210 50  0001 C CNN
	1    4100 1250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5FE3D7B4
P 4550 1450
F 0 "#PWR0102" H 4550 1200 50  0001 C CNN
F 1 "GND" H 4555 1277 50  0000 C CNN
F 2 "" H 4550 1450 50  0001 C CNN
F 3 "" H 4550 1450 50  0001 C CNN
	1    4550 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 1450 4550 1350
Wire Wire Line
	4550 1350 4400 1350
Text GLabel 5450 1075 2    50   Output ~ 0
vcc
Text GLabel 3250 1750 1    50   Input ~ 0
vcc
Wire Wire Line
	3250 1750 3250 1900
Text GLabel 5925 3175 0    50   Input ~ 0
Pino_5
Text GLabel 5925 3275 0    50   Input ~ 0
Pino_4
Wire Wire Line
	3850 4100 3950 4100
Wire Wire Line
	3850 4300 3950 4300
Wire Wire Line
	3850 4400 3950 4400
Wire Wire Line
	3950 4500 3850 4500
Wire Wire Line
	3950 4600 3850 4600
Text GLabel 5925 3075 0    50   Input ~ 0
Pino_6
Text GLabel 5925 2975 0    50   Input ~ 0
Pino_7
$Comp
L Connector_Generic:Conn_01x02 J3
U 1 1 5FE69DA5
P 7300 1600
F 0 "J3" H 7380 1592 50  0000 L CNN
F 1 "Conn_01x02" H 7380 1501 50  0000 L CNN
F 2 "TerminalBlock:TerminalBlock_bornier-2_P5.08mm" H 7300 1600 50  0001 C CNN
F 3 "~" H 7300 1600 50  0001 C CNN
	1    7300 1600
	1    0    0    -1  
$EndComp
$Comp
L G3MB202PDC12:G3MB202PDC12 K1
U 1 1 5FE33D30
P 6400 2150
F 0 "K1" H 6978 2267 50  0000 L CNN
F 1 "G3MB202PDC12" H 6978 2176 50  0000 L CNN
F 2 "G3MB202PDC12:RELAY_G3MB202PDC12" H 6400 2150 50  0001 L BNN
F 3 "" H 6400 2150 50  0001 L BNN
F 4 "Omron Automation" H 6400 2150 50  0001 L BNN "MF"
F 5 "SIP-4 Omron" H 6400 2150 50  0001 L BNN "Package"
F 6 "Bad" H 6400 2150 50  0001 L BNN "Availability"
F 7 "Solid State SPST-NO (1 Form A) 4-SIP" H 6400 2150 50  0001 L BNN "Description"
F 8 "G3MB-202P-DC12" H 6400 2150 50  0001 L BNN "MP"
F 9 "None" H 6400 2150 50  0001 L BNN "Price"
	1    6400 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 1825 6850 1700
Wire Wire Line
	6850 1700 7100 1700
Wire Wire Line
	6550 1825 6550 1600
Wire Wire Line
	6550 1600 7100 1600
$Comp
L power:GND #PWR0106
U 1 1 5FE765F6
P 5900 1750
F 0 "#PWR0106" H 5900 1500 50  0001 C CNN
F 1 "GND" H 5905 1577 50  0000 C CNN
F 2 "" H 5900 1750 50  0001 C CNN
F 3 "" H 5900 1750 50  0001 C CNN
	1    5900 1750
	-1   0    0    1   
$EndComp
Wire Wire Line
	5900 1750 5900 1825
Text GLabel 5925 2875 0    50   Input ~ 0
Pino_8
Wire Wire Line
	6075 1750 6050 1750
Wire Wire Line
	6050 1750 6050 1825
Wire Wire Line
	3850 2200 3950 2200
$Comp
L Connector_Generic:Conn_01x08 J2
U 1 1 5FE8271A
P 6425 2975
F 0 "J2" H 6505 2967 50  0000 L CNN
F 1 "Teclado matricial" H 6505 2876 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x08_P2.54mm_Horizontal" H 6425 2975 50  0001 C CNN
F 3 "~" H 6425 2975 50  0001 C CNN
	1    6425 2975
	1    0    0    -1  
$EndComp
Wire Wire Line
	6225 2675 5925 2675
Wire Wire Line
	5925 2775 6225 2775
Wire Wire Line
	6225 2875 5925 2875
Wire Wire Line
	5925 2975 6225 2975
Wire Wire Line
	5925 3375 6225 3375
Text GLabel 5925 2775 0    50   Input ~ 0
Pino_9
Text GLabel 5925 2675 0    50   Input ~ 0
Pino_10
$Comp
L Device:Crystal Y1
U 1 1 5FE27634
P 4725 2850
F 0 "Y1" V 4375 2700 50  0000 L CNN
F 1 "Crystal" V 4425 2650 50  0000 L CNN
F 2 "Crystal:Crystal_HC18-U_Vertical" H 4725 2850 50  0001 C CNN
F 3 "~" H 4725 2850 50  0001 C CNN
	1    4725 2850
	0    1    1    0   
$EndComp
$Comp
L Device:C C1
U 1 1 5FE28A1C
P 5025 2700
F 0 "C1" V 4773 2700 50  0000 C CNN
F 1 "C" V 4864 2700 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 5063 2550 50  0001 C CNN
F 3 "~" H 5025 2700 50  0001 C CNN
	1    5025 2700
	0    1    1    0   
$EndComp
$Comp
L Device:C C2
U 1 1 5FE293F2
P 5025 3000
F 0 "C2" V 5175 3000 50  0000 C CNN
F 1 "C" V 5225 3000 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 5063 2850 50  0001 C CNN
F 3 "~" H 5025 3000 50  0001 C CNN
	1    5025 3000
	0    1    1    0   
$EndComp
Wire Wire Line
	4525 2800 4525 2700
Wire Wire Line
	4525 2700 4725 2700
Wire Wire Line
	4525 2900 4525 3000
Wire Wire Line
	4525 3000 4725 3000
Wire Wire Line
	4725 2700 4875 2700
Connection ~ 4725 2700
Wire Wire Line
	4725 3000 4875 3000
Connection ~ 4725 3000
$Comp
L power:GND #PWR0108
U 1 1 5FE46CA9
P 5175 2850
F 0 "#PWR0108" H 5175 2600 50  0001 C CNN
F 1 "GND" V 5180 2722 50  0000 R CNN
F 2 "" H 5175 2850 50  0001 C CNN
F 3 "" H 5175 2850 50  0001 C CNN
	1    5175 2850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5175 2850 5175 2700
Wire Wire Line
	5175 2850 5175 3000
Connection ~ 5175 2850
Wire Wire Line
	3850 2800 4525 2800
Wire Wire Line
	3850 2900 4525 2900
Wire Wire Line
	3950 2300 3850 2300
Wire Wire Line
	3950 2400 3850 2400
Wire Wire Line
	3950 2500 3850 2500
Wire Wire Line
	3850 2600 3950 2600
Text GLabel 3950 2500 2    50   Output ~ 0
Pino_11
Text GLabel 3950 2600 2    50   Output ~ 0
Pino_12
Text GLabel 3975 3500 2    50   Output ~ 0
Pino_18_A4
$Comp
L Regulator_Linear:LM7805_TO220 U2
U 1 1 5FF0E292
P 5075 1075
F 0 "U2" H 5075 1317 50  0000 C CNN
F 1 "LM7805_TO220" H 5075 1226 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 5075 1300 50  0001 C CIN
F 3 "https://www.onsemi.cn/PowerSolutions/document/MC7800-D.PDF" H 5075 1025 50  0001 C CNN
	1    5075 1075
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 1150 4625 1150
Wire Wire Line
	4700 1450 4700 1350
Wire Wire Line
	4700 1350 4550 1350
Connection ~ 4550 1350
Text GLabel 4650 750  2    50   Input ~ 0
vcc_12v
Wire Wire Line
	4625 750  4650 750 
Wire Wire Line
	4625 750  4625 1150
$Comp
L Connector_Generic:Conn_01x03 J4
U 1 1 5FF1CF76
P 8875 3425
F 0 "J4" H 8955 3467 50  0000 L CNN
F 1 "Conn_01x03" H 8955 3376 50  0000 L CNN
F 2 "TerminalBlock:TerminalBlock_bornier-3_P5.08mm" H 8875 3425 50  0001 C CNN
F 3 "~" H 8875 3425 50  0001 C CNN
	1    8875 3425
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0109
U 1 1 5FF1DF62
P 8625 3575
F 0 "#PWR0109" H 8625 3325 50  0001 C CNN
F 1 "GND" H 8630 3402 50  0000 C CNN
F 2 "" H 8625 3575 50  0001 C CNN
F 3 "" H 8625 3575 50  0001 C CNN
	1    8625 3575
	1    0    0    -1  
$EndComp
Text GLabel 8575 3175 0    50   Input ~ 0
vcc_12v
Wire Wire Line
	8675 3325 8600 3325
Wire Wire Line
	8675 3525 8625 3525
Wire Wire Line
	8625 3525 8625 3575
Wire Wire Line
	8575 3175 8600 3175
Wire Wire Line
	8600 3175 8600 3325
Text GLabel 3975 3300 2    50   Output ~ 0
Pino_16_A2
Text GLabel 3975 3400 2    50   Output ~ 0
Pino_17_A3
Text GLabel 3850 3700 2    50   Input ~ 0
vcc
Text GLabel 3950 4100 2    50   Output ~ 0
Pino_2_int
Text GLabel 7925 3625 0    50   Input ~ 0
Pino_2_int
NoConn ~ 3950 2300
Wire Wire Line
	3975 3400 3850 3400
Wire Wire Line
	3975 3500 3850 3500
$Comp
L Device:C C3
U 1 1 5FF8A6BB
P 4775 1300
F 0 "C3" H 4650 1375 50  0000 L CNN
F 1 "C" H 4890 1255 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 4813 1150 50  0001 C CNN
F 3 "~" H 4775 1300 50  0001 C CNN
	1    4775 1300
	1    0    0    -1  
$EndComp
Connection ~ 4775 1450
Wire Wire Line
	4775 1450 4700 1450
$Comp
L Device:C C4
U 1 1 5FF9305F
P 5375 1300
F 0 "C4" H 5490 1346 50  0000 L CNN
F 1 "C" H 5490 1255 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 5413 1150 50  0001 C CNN
F 3 "~" H 5375 1300 50  0001 C CNN
	1    5375 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4625 1150 4775 1150
Connection ~ 4625 1150
Wire Wire Line
	4775 1150 4775 1075
Wire Wire Line
	4775 1450 5075 1450
Connection ~ 4775 1150
Wire Wire Line
	5375 1075 5375 1150
Wire Wire Line
	5450 1075 5375 1075
Connection ~ 5375 1075
Wire Wire Line
	5075 1375 5075 1450
Connection ~ 5075 1450
Wire Wire Line
	5075 1450 5375 1450
Text GLabel 5925 3375 0    50   Input ~ 0
Pino_3
Wire Wire Line
	5925 3175 6225 3175
Wire Wire Line
	5925 3275 6225 3275
Wire Wire Line
	5925 3075 6225 3075
Text GLabel 3975 3600 2    50   Output ~ 0
Pino_19_A5
Wire Wire Line
	3975 3600 3850 3600
Wire Wire Line
	3850 3300 3975 3300
NoConn ~ 3850 3200
Text GLabel 3350 1750 1    50   Input ~ 0
vcc
Wire Wire Line
	3350 1750 3350 1900
NoConn ~ 2650 2200
Text GLabel 3950 2700 2    50   Output ~ 0
Pino_13
Text GLabel 6075 1750 2    50   Input ~ 0
Pino_13
Wire Wire Line
	3950 2700 3850 2700
$Comp
L Transistor_FET:2N7000 Q1
U 1 1 6027C46B
P 8125 3425
F 0 "Q1" H 8330 3471 50  0000 L CNN
F 1 "2N7000" H 8330 3380 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 8325 3350 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/NDS7002A-D.PDF" H 8125 3425 50  0001 L CNN
	1    8125 3425
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8325 3425 8675 3425
Text GLabel 8025 3125 0    50   Input ~ 0
vcc
Wire Wire Line
	8025 3125 8025 3225
$Comp
L power:GND #PWR0110
U 1 1 602A009F
P 8025 4050
F 0 "#PWR0110" H 8025 3800 50  0001 C CNN
F 1 "GND" H 8030 3877 50  0000 C CNN
F 2 "" H 8025 4050 50  0001 C CNN
F 3 "" H 8025 4050 50  0001 C CNN
	1    8025 4050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 602A0DA5
P 8025 3900
F 0 "R1" H 8095 3946 50  0000 L CNN
F 1 "R" H 8095 3855 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 7955 3900 50  0001 C CNN
F 3 "~" H 8025 3900 50  0001 C CNN
	1    8025 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	7925 3625 8025 3625
Wire Wire Line
	8025 3625 8025 3750
Connection ~ 8025 3625
NoConn ~ 5600 5450
NoConn ~ 5600 5350
NoConn ~ 5600 5250
NoConn ~ 5600 5150
Wire Wire Line
	6775 5000 6775 4925
Wire Wire Line
	6400 5150 6625 5150
$Comp
L power:GND #PWR0103
U 1 1 6049CEC3
P 6775 5300
F 0 "#PWR0103" H 6775 5050 50  0001 C CNN
F 1 "GND" H 6780 5127 50  0000 C CNN
F 2 "" H 6775 5300 50  0001 C CNN
F 3 "" H 6775 5300 50  0001 C CNN
	1    6775 5300
	-1   0    0    -1  
$EndComp
Text GLabel 6775 4925 0    50   Input ~ 0
vcc
$Comp
L Device:R_POT RV1
U 1 1 6049CECA
P 6775 5150
F 0 "RV1" H 6706 5196 50  0000 R CNN
F 1 "R_POT" H 6706 5105 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Runtron_RM-065_Vertical" H 6775 5150 50  0001 C CNN
F 3 "~" H 6775 5150 50  0001 C CNN
	1    6775 5150
	-1   0    0    -1  
$EndComp
Text GLabel 5500 4850 0    50   Input ~ 0
Pino_12
Text GLabel 5500 5050 0    50   Input ~ 0
Pino_11
Text GLabel 6000 4550 1    50   Input ~ 0
vcc
Wire Wire Line
	5600 4850 5500 4850
Wire Wire Line
	5500 5050 5600 5050
Wire Wire Line
	5500 5550 5600 5550
Wire Wire Line
	5500 5650 5600 5650
Wire Wire Line
	5500 5750 5600 5750
Wire Wire Line
	5500 5850 5600 5850
Wire Wire Line
	5600 4950 5500 4950
$Comp
L power:GND #PWR0104
U 1 1 6049CEDE
P 5500 4950
F 0 "#PWR0104" H 5500 4700 50  0001 C CNN
F 1 "GND" V 5505 4822 50  0000 R CNN
F 2 "" H 5500 4950 50  0001 C CNN
F 3 "" H 5500 4950 50  0001 C CNN
	1    5500 4950
	0    1    1    0   
$EndComp
Wire Wire Line
	6500 5550 6400 5550
$Comp
L power:GND #PWR0105
U 1 1 6049CEE5
P 6500 5550
F 0 "#PWR0105" H 6500 5300 50  0001 C CNN
F 1 "GND" H 6505 5377 50  0000 C CNN
F 2 "" H 6500 5550 50  0001 C CNN
F 3 "" H 6500 5550 50  0001 C CNN
	1    6500 5550
	1    0    0    1   
$EndComp
Wire Wire Line
	6400 5650 6500 5650
Wire Wire Line
	6000 6050 6000 6100
$Comp
L power:GND #PWR0107
U 1 1 6049CEEE
P 6000 6100
F 0 "#PWR0107" H 6000 5850 50  0001 C CNN
F 1 "GND" H 6005 5927 50  0000 C CNN
F 2 "" H 6000 6100 50  0001 C CNN
F 3 "" H 6000 6100 50  0001 C CNN
	1    6000 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 4550 6000 4650
$Comp
L Display_Character:RC1602A DS1
U 1 1 6049CEBB
P 6000 5350
F 0 "DS1" V 6100 5325 50  0000 C CNN
F 1 "RC1602A" V 6000 5325 50  0000 C CNN
F 2 "Display:WC1602A" H 6100 4550 50  0001 C CNN
F 3 "http://www.raystar-optronics.com/down.php?ProID=18" H 6100 5250 50  0001 C CNN
	1    6000 5350
	1    0    0    -1  
$EndComp
Text GLabel 5500 5850 0    50   Input ~ 0
Pino_19_A5
Text GLabel 5500 5550 0    50   Input ~ 0
Pino_16_A2
Text GLabel 5500 5750 0    50   Input ~ 0
Pino_18_A4
Text GLabel 5500 5650 0    50   Input ~ 0
Pino_17_A3
Text GLabel 3950 4400 2    50   Output ~ 0
Pino_10
Text GLabel 3950 4500 2    50   Output ~ 0
Pino_9
Text GLabel 3950 4300 2    50   Output ~ 0
Pino_6
Text GLabel 3950 3900 2    50   Output ~ 0
Pino_3
Text GLabel 3950 4000 2    50   Output ~ 0
Pino_4
Text GLabel 3950 2200 2    50   Output ~ 0
Pino_7
Wire Wire Line
	3850 4200 3950 4200
NoConn ~ 3850 3100
Text GLabel 3950 4200 2    50   Output ~ 0
Pino_5
Text GLabel 3950 4600 2    50   Output ~ 0
Pino_8
Wire Wire Line
	3850 3900 3950 3900
Wire Wire Line
	3850 4000 3950 4000
Text GLabel 6500 5650 2    50   Input ~ 0
LCD_A
Text GLabel 3950 2400 2    50   Output ~ 0
LCD_A
$EndSCHEMATC
