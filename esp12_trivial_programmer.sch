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
L Connector_Generic:Conn_01x06 J1
U 1 1 5EDF4F91
P 5300 4050
F 0 "J1" H 5380 4042 50  0000 L CNN
F 1 "3.3v \"FTDI\" programming connector" H 5380 3951 50  0000 L CNN
F 2 "" H 5300 4050 50  0001 C CNN
F 3 "~" H 5300 4050 50  0001 C CNN
	1    5300 4050
	1    0    0    -1  
$EndComp
Text GLabel 3850 4850 3    50   Input ~ 0
GND
$Comp
L RF_Module:ESP-12E U1
U 1 1 5EDF3B7F
P 3550 4100
F 0 "U1" H 3550 5081 50  0000 C CNN
F 1 "ESP-12E" H 3550 4990 50  0000 C CNN
F 2 "RF_Module:ESP-12E" H 3550 4100 50  0001 C CNN
F 3 "http://wiki.ai-thinker.com/_media/esp8266/esp8266_series_modules_user_manual_v1.1.pdf" H 3200 4200 50  0001 C CNN
	1    3550 4100
	1    0    0    -1  
$EndComp
Text GLabel 5100 3850 0    50   Input ~ 0
GND
Text GLabel 4650 4700 3    50   Input ~ 0
EN
Text GLabel 5100 4150 0    50   Input ~ 0
TXD
Text GLabel 5100 4250 0    50   Input ~ 0
RXD
Text GLabel 4150 3600 2    50   Input ~ 0
RXD
Text GLabel 4150 3800 2    50   Input ~ 0
TXD
$Comp
L Device:R R1
U 1 1 5EE01396
P 4550 3300
F 0 "R1" H 4620 3346 50  0000 L CNN
F 1 "10K" H 4620 3255 50  0000 L CNN
F 2 "" V 4480 3300 50  0001 C CNN
F 3 "~" H 4550 3300 50  0001 C CNN
	1    4550 3300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5EE01E59
P 4250 4650
F 0 "R2" H 4320 4696 50  0000 L CNN
F 1 "10K" H 4320 4605 50  0000 L CNN
F 2 "" V 4180 4650 50  0001 C CNN
F 3 "~" H 4250 4650 50  0001 C CNN
	1    4250 4650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 5EE01F88
P 2700 3550
F 0 "R3" H 2770 3596 50  0000 L CNN
F 1 "10K" H 2770 3505 50  0000 L CNN
F 2 "" V 2630 3550 50  0001 C CNN
F 3 "~" H 2700 3550 50  0001 C CNN
	1    2700 3550
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 5EE020B9
P 4250 3300
F 0 "R4" H 4320 3346 50  0000 L CNN
F 1 "10K" H 4320 3255 50  0000 L CNN
F 2 "" V 4180 3300 50  0001 C CNN
F 3 "~" H 4250 3300 50  0001 C CNN
	1    4250 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 4400 4150 4400
Text GLabel 3850 3100 1    50   Input ~ 0
3V3
Wire Wire Line
	4250 3500 4150 3500
Wire Wire Line
	4150 3700 4550 3700
Wire Wire Line
	2950 3700 2700 3700
$Comp
L Device:D D1
U 1 1 5EE0AE57
P 4800 4350
F 0 "D1" H 4800 4567 50  0000 C CNN
F 1 "D" H 4800 4476 50  0000 C CNN
F 2 "" H 4800 4350 50  0001 C CNN
F 3 "~" H 4800 4350 50  0001 C CNN
	1    4800 4350
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4950 4350 5100 4350
Wire Wire Line
	4250 3450 4250 3500
Wire Wire Line
	4550 3700 4550 3450
$Comp
L Device:D D2
U 1 1 5EE09BCB
P 4650 3650
F 0 "D2" H 4650 3867 50  0000 C CNN
F 1 "D" H 4650 3776 50  0000 C CNN
F 2 "" H 4650 3650 50  0001 C CNN
F 3 "~" H 4650 3650 50  0001 C CNN
	1    4650 3650
	0    1    -1   0   
$EndComp
$Comp
L Device:C C1
U 1 1 5EE1C7D1
P 4650 4550
F 0 "C1" V 4398 4550 50  0000 C CNN
F 1 "100nF" V 4489 4550 50  0000 C CNN
F 2 "" H 4688 4400 50  0001 C CNN
F 3 "~" H 4650 4550 50  0001 C CNN
	1    4650 4550
	-1   0    0    1   
$EndComp
Text GLabel 2600 3700 0    50   Input ~ 0
EN
Wire Wire Line
	4650 3800 4650 4350
Wire Wire Line
	4650 4400 4650 4350
Connection ~ 4650 4350
Wire Wire Line
	2600 3700 2700 3700
Connection ~ 2700 3700
Wire Wire Line
	4650 3500 4250 3500
Connection ~ 4250 3500
Wire Wire Line
	4250 4500 4250 4400
Wire Wire Line
	4550 3150 4250 3150
Wire Wire Line
	2700 3150 2700 3400
Connection ~ 4250 3150
Wire Wire Line
	4250 3150 3850 3150
Wire Wire Line
	3550 3300 3550 3150
Connection ~ 3550 3150
Wire Wire Line
	3550 3150 2700 3150
Wire Wire Line
	3850 3100 3850 3150
Connection ~ 3850 3150
Wire Wire Line
	3850 3150 3550 3150
Wire Wire Line
	4250 4800 3850 4800
Wire Wire Line
	3850 4850 3850 4800
Connection ~ 3850 4800
Wire Wire Line
	3850 4800 3550 4800
$EndSCHEMATC
