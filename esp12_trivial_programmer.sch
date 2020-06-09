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
P 5500 4000
F 0 "J1" H 5580 3992 50  0000 L CNN
F 1 "3.3v \"FTDI\" programming connector" H 5580 3901 50  0000 L CNN
F 2 "" H 5500 4000 50  0001 C CNN
F 3 "~" H 5500 4000 50  0001 C CNN
	1    5500 4000
	1    0    0    -1  
$EndComp
Text GLabel 3550 3300 1    50   Input ~ 0
3V3
Text GLabel 3550 4800 3    50   Input ~ 0
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
Text GLabel 5300 3800 0    50   Input ~ 0
GND
Text GLabel 5300 4000 0    50   Input ~ 0
3V3
Text GLabel 4850 4300 0    50   Input ~ 0
DTR
Text GLabel 5300 4100 0    50   Input ~ 0
TXD
Text GLabel 5300 4200 0    50   Input ~ 0
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
P 4400 4550
F 0 "R2" H 4470 4596 50  0000 L CNN
F 1 "10K" H 4470 4505 50  0000 L CNN
F 2 "" V 4330 4550 50  0001 C CNN
F 3 "~" H 4400 4550 50  0001 C CNN
	1    4400 4550
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
	4400 4400 4150 4400
Text GLabel 4400 4700 3    50   Input ~ 0
GND
Text GLabel 2700 3400 1    50   Input ~ 0
3V3
Text GLabel 4550 3150 1    50   Input ~ 0
3V3
Text GLabel 4250 3150 1    50   Input ~ 0
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
P 5000 4300
F 0 "D1" H 5000 4517 50  0000 C CNN
F 1 "D" H 5000 4426 50  0000 C CNN
F 2 "" H 5000 4300 50  0001 C CNN
F 3 "~" H 5000 4300 50  0001 C CNN
	1    5000 4300
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5150 4300 5300 4300
Wire Wire Line
	4250 3450 4250 3500
Wire Wire Line
	4550 3700 4550 3450
Text GLabel 5050 3500 2    50   Input ~ 0
DTR
$Comp
L Device:D D2
U 1 1 5EE09BCB
P 4900 3500
F 0 "D2" H 4900 3717 50  0000 C CNN
F 1 "D" H 4900 3626 50  0000 C CNN
F 2 "" H 4900 3500 50  0001 C CNN
F 3 "~" H 4900 3500 50  0001 C CNN
	1    4900 3500
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4750 3500 4250 3500
Connection ~ 4250 3500
$Comp
L Device:C C1
U 1 1 5EE1C7D1
P 2550 3700
F 0 "C1" V 2298 3700 50  0000 C CNN
F 1 "100nF" V 2389 3700 50  0000 C CNN
F 2 "" H 2588 3550 50  0001 C CNN
F 3 "~" H 2550 3700 50  0001 C CNN
	1    2550 3700
	0    1    1    0   
$EndComp
Connection ~ 2700 3700
Text GLabel 2400 3700 0    50   Input ~ 0
DTR
$EndSCHEMATC
