EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:special
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:ir
LIBS:noname-cache
EELAYER 27 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Inductance Meter"
Date "3 jun 2015"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L LM339 U1
U 1 1 556F350F
P 5950 4050
F 0 "U1" H 6000 4250 60  0000 C CNN
F 1 "LM339" H 6050 3850 50  0000 C CNN
F 2 "" H 5950 4050 60  0000 C CNN
F 3 "" H 5950 4050 60  0000 C CNN
	1    5950 4050
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR3
U 1 1 556F351E
P 5850 3250
F 0 "#PWR3" H 5850 3100 50  0001 C CNN
F 1 "+5V" H 5850 3390 50  0000 C CNN
F 2 "" H 5850 3250 60  0000 C CNN
F 3 "" H 5850 3250 60  0000 C CNN
	1    5850 3250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR4
U 1 1 556F352D
P 5850 4500
F 0 "#PWR4" H 5850 4250 50  0001 C CNN
F 1 "GND" H 5850 4350 50  0000 C CNN
F 2 "" H 5850 4500 60  0000 C CNN
F 3 "" H 5850 4500 60  0000 C CNN
	1    5850 4500
	1    0    0    -1  
$EndComp
$Comp
L INDUCTOR L1
U 1 1 556F353C
P 4450 4050
F 0 "L1" V 4400 4050 50  0000 C CNN
F 1 "INDUCTOR" V 4550 4050 50  0000 C CNN
F 2 "" H 4450 4050 60  0000 C CNN
F 3 "" H 4450 4050 60  0000 C CNN
	1    4450 4050
	-1   0    0    1   
$EndComp
$Comp
L D_SMALL D1
U 1 1 556F354B
P 5500 3600
F 0 "D1" H 5450 3680 50  0000 L CNN
F 1 "1N4001" H 5350 3520 50  0000 L CNN
F 2 "" V 5500 3600 60  0000 C CNN
F 3 "" V 5500 3600 60  0000 C CNN
	1    5500 3600
	0    -1   -1   0   
$EndComp
$Comp
L R R1
U 1 1 556F355A
P 5150 3400
F 0 "R1" V 5230 3400 50  0000 C CNN
F 1 "150" V 5150 3400 50  0000 C CNN
F 2 "" V 5080 3400 30  0000 C CNN
F 3 "" H 5150 3400 30  0000 C CNN
	1    5150 3400
	0    -1   -1   0   
$EndComp
$Comp
L C C2
U 1 1 556F3569
P 5300 4050
F 0 "C2" H 5325 4150 50  0000 L CNN
F 1 "1uF" H 5325 3950 50  0000 L CNN
F 2 "" H 5338 3900 30  0000 C CNN
F 3 "" H 5300 4050 60  0000 C CNN
	1    5300 4050
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 556F3576
P 4950 4050
F 0 "C1" H 4975 4150 50  0000 L CNN
F 1 "1uF" H 4975 3950 50  0000 L CNN
F 2 "" H 4988 3900 30  0000 C CNN
F 3 "" H 4950 4050 60  0000 C CNN
	1    4950 4050
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR5
U 1 1 556F35C2
P 6600 3250
F 0 "#PWR5" H 6600 3100 50  0001 C CNN
F 1 "+5V" H 6600 3390 50  0000 C CNN
F 2 "" H 6600 3250 60  0000 C CNN
F 3 "" H 6600 3250 60  0000 C CNN
	1    6600 3250
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 556F35C8
P 6600 3550
F 0 "R2" V 6680 3550 50  0000 C CNN
F 1 "330" V 6600 3550 50  0000 C CNN
F 2 "" V 6530 3550 30  0000 C CNN
F 3 "" H 6600 3550 30  0000 C CNN
	1    6600 3550
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR2
U 1 1 556F35CE
P 5500 4500
F 0 "#PWR2" H 5500 4250 50  0001 C CNN
F 1 "GND" H 5500 4350 50  0000 C CNN
F 2 "" H 5500 4500 60  0000 C CNN
F 3 "" H 5500 4500 60  0000 C CNN
	1    5500 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 3750 4700 3750
Wire Wire Line
	4700 3750 4700 3850
Wire Wire Line
	4700 3850 5500 3850
Wire Wire Line
	5500 3700 5500 3950
Wire Wire Line
	5500 3950 5600 3950
Wire Wire Line
	5300 3900 5300 3850
Connection ~ 5300 3850
Wire Wire Line
	4950 3900 4950 3850
Connection ~ 4950 3850
Wire Wire Line
	4450 4350 4700 4350
Wire Wire Line
	4700 4350 4700 4250
Wire Wire Line
	5300 4200 5300 4250
Connection ~ 5300 4250
Wire Wire Line
	4950 4200 4950 4250
Connection ~ 4950 4250
Wire Wire Line
	5500 4500 5500 4150
Wire Wire Line
	5500 4150 5600 4150
Wire Wire Line
	5300 4250 4700 4250
Connection ~ 5500 3850
Wire Wire Line
	5300 3400 5500 3400
Wire Wire Line
	5500 3400 5500 3500
Wire Wire Line
	5850 3250 5850 3750
Wire Wire Line
	6300 4050 7000 4050
Wire Wire Line
	6600 3700 6600 4050
Connection ~ 6600 4050
Wire Wire Line
	6600 3250 6600 3400
Wire Wire Line
	5850 4350 5850 4500
Wire Wire Line
	5000 3400 4450 3400
$Comp
L GND #PWR1
U 1 1 556F3714
P 5150 4500
F 0 "#PWR1" H 5150 4250 50  0001 C CNN
F 1 "GND" H 5150 4350 50  0000 C CNN
F 2 "" H 5150 4500 60  0000 C CNN
F 3 "" H 5150 4500 60  0000 C CNN
	1    5150 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 4500 5150 4250
Connection ~ 5150 4250
Text GLabel 4450 3400 0    60   Input ~ 0
LINE_TOGGLE
Text GLabel 7000 4050 2    60   Output ~ 0
PULSE_OUT
$EndSCHEMATC