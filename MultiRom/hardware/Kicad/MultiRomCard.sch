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
LIBS:MultiRomCard
LIBS:MultiRomCard-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "MultiRom Cartridge for Interton VC4000"
Date "Saturday, June 20, 2015"
Rev "V1"
Comp "Mario Keller and Johannes Maibaum"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L 74HC595 U2
U 1 1 54871FDF
P 4150 2300
F 0 "U2" H 4300 2900 70  0000 C CNN
F 1 "74HC595" H 4150 1700 70  0000 C CNN
F 2 "Housings_DIP:DIP-16__300_ELL" H 4150 2300 60  0001 C CNN
F 3 "" H 4150 2300 60  0000 C CNN
	1    4150 2300
	1    0    0    -1  
$EndComp
$Comp
L 74HC595 U3
U 1 1 54872016
P 4150 3700
F 0 "U3" H 4300 4300 70  0000 C CNN
F 1 "74HC595" H 4150 3100 70  0000 C CNN
F 2 "Housings_DIP:DIP-16__300_ELL" H 4150 3700 60  0001 C CNN
F 3 "" H 4150 3700 60  0000 C CNN
	1    4150 3700
	1    0    0    -1  
$EndComp
$Comp
L 74HC595 U4
U 1 1 5487203D
P 4150 5100
F 0 "U4" H 4300 5700 70  0000 C CNN
F 1 "74HC595" H 4150 4500 70  0000 C CNN
F 2 "Housings_DIP:DIP-16__300_ELL" H 4150 5100 60  0001 C CNN
F 3 "" H 4150 5100 60  0000 C CNN
	1    4150 5100
	1    0    0    -1  
$EndComp
$Comp
L 74HC245 U6
U 1 1 54D634ED
P 8750 1900
F 0 "U6" H 8850 2475 60  0000 L BNN
F 1 "74HC245" H 8800 1325 60  0000 L TNN
F 2 "Housings_DIP:DIP-20__300_ELL" H 8750 1900 60  0001 C CNN
F 3 "" H 8750 1900 60  0000 C CNN
	1    8750 1900
	-1   0    0    1   
$EndComp
$Comp
L 74HC245 U7
U 1 1 54D63519
P 8750 3450
F 0 "U7" H 8850 4025 60  0000 L BNN
F 1 "74HC245" H 8800 2875 60  0000 L TNN
F 2 "Housings_DIP:DIP-20__300_ELL" H 8750 3450 60  0001 C CNN
F 3 "" H 8750 3450 60  0000 C CNN
	1    8750 3450
	-1   0    0    1   
$EndComp
$Comp
L 74HC245 U8
U 1 1 54D63544
P 8750 4850
F 0 "U8" H 8850 5425 60  0000 L BNN
F 1 "74HC245" H 8800 4275 60  0000 L TNN
F 2 "Housings_DIP:DIP-20__300_ELL" H 8750 4850 60  0001 C CNN
F 3 "" H 8750 4850 60  0000 C CNN
	1    8750 4850
	-1   0    0    1   
$EndComp
$Comp
L 6264 U5
U 1 1 54D63FC2
P 6150 2550
F 0 "U5" H 6150 3250 60  0000 C CNN
F 1 "6264" H 6150 1850 60  0000 C CNN
F 2 "Housings_DIP:DIP-28__600_ELL" H 6150 2650 60  0001 C CNN
F 3 "" H 6150 2650 60  0000 C CNN
	1    6150 2550
	1    0    0    -1  
$EndComp
Entry Wire Line
	5250 2050 5350 2150
Entry Wire Line
	5250 2150 5350 2250
Entry Wire Line
	5250 2250 5350 2350
Entry Wire Line
	5250 2350 5350 2450
Entry Wire Line
	5250 2450 5350 2550
Entry Wire Line
	5250 2550 5350 2650
Entry Wire Line
	5250 2650 5350 2750
Entry Wire Line
	5250 2750 5350 2850
Entry Wire Line
	5250 2850 5350 2950
Entry Wire Line
	5250 2950 5350 3050
Entry Wire Line
	5250 3050 5350 3150
Entry Wire Line
	5250 1950 5350 2050
Entry Wire Line
	5250 1850 5350 1950
Text Label 5350 1950 0    60   ~ 0
A0
Text Label 5350 2050 0    60   ~ 0
A1
Text Label 5350 2150 0    60   ~ 0
A2
Text Label 5350 2250 0    60   ~ 0
A3
Text Label 5350 2350 0    60   ~ 0
A4
Text Label 5350 2450 0    60   ~ 0
A5
Text Label 5350 2550 0    60   ~ 0
A6
Text Label 5350 2650 0    60   ~ 0
A7
Text Label 5350 2750 0    60   ~ 0
A8
Text Label 5350 2850 0    60   ~ 0
A9
Text Label 5350 2950 0    60   ~ 0
A10
Text Label 5350 3050 0    60   ~ 0
A11
Text Label 5350 3150 0    60   ~ 0
A12
Entry Wire Line
	7200 1950 7300 2050
Entry Wire Line
	7200 2050 7300 2150
Entry Wire Line
	7200 2250 7300 2350
Entry Wire Line
	7200 2350 7300 2450
Entry Wire Line
	7200 2450 7300 2550
Entry Wire Line
	7200 2550 7300 2650
Entry Wire Line
	7200 2650 7300 2750
Entry Wire Line
	7200 2150 7300 2250
Text Label 6900 1950 0    60   ~ 0
D0
Text Label 6900 2050 0    60   ~ 0
D1
Text Label 6900 2150 0    60   ~ 0
D2
Text Label 6900 2250 0    60   ~ 0
D3
Text Label 6900 2350 0    60   ~ 0
D4
Text Label 6900 2450 0    60   ~ 0
D5
Text Label 6900 2550 0    60   ~ 0
D6
Text Label 6900 2650 0    60   ~ 0
D7
Entry Wire Line
	5050 1850 5150 1750
Entry Wire Line
	5050 1950 5150 1850
Entry Wire Line
	5050 2050 5150 1950
Entry Wire Line
	5050 2150 5150 2050
Entry Wire Line
	5050 2250 5150 2150
Entry Wire Line
	5050 2350 5150 2250
Entry Wire Line
	5050 2450 5150 2350
Entry Wire Line
	5050 2550 5150 2450
Entry Wire Line
	5050 3250 5150 3150
Entry Wire Line
	5050 3350 5150 3250
Entry Wire Line
	5050 3450 5150 3350
Entry Wire Line
	5050 3650 5150 3550
Entry Wire Line
	5050 3550 5150 3450
Text Label 4850 1850 0    60   ~ 0
A0
Text Label 4850 1950 0    60   ~ 0
A1
Text Label 4850 2050 0    60   ~ 0
A2
Text Label 4850 2150 0    60   ~ 0
A3
Text Label 4850 2250 0    60   ~ 0
A4
Text Label 4850 2350 0    60   ~ 0
A5
Text Label 4850 2450 0    60   ~ 0
A6
Text Label 4850 2550 0    60   ~ 0
A7
Text Label 4850 3250 0    60   ~ 0
A8
Text Label 4850 3350 0    60   ~ 0
A9
Text Label 4850 3450 0    60   ~ 0
A10
Text Label 4850 3550 0    60   ~ 0
A11
Text Label 4850 3650 0    60   ~ 0
A12
NoConn ~ 4850 3750
NoConn ~ 4850 3850
NoConn ~ 4850 3950
Entry Wire Line
	7400 1600 7500 1700
Entry Wire Line
	7400 1700 7500 1800
Entry Wire Line
	7400 1800 7500 1900
Entry Wire Line
	7400 1900 7500 2000
Entry Wire Line
	7400 2000 7500 2100
Entry Wire Line
	7400 2200 7500 2300
Entry Wire Line
	7400 2300 7500 2400
Entry Wire Line
	7400 3150 7500 3250
Entry Wire Line
	7400 3250 7500 3350
Entry Wire Line
	7400 3450 7500 3550
Entry Wire Line
	7400 3550 7500 3650
Entry Wire Line
	7400 3650 7500 3750
Text Label 7750 2400 0    60   ~ 0
A0
Text Label 7750 2300 0    60   ~ 0
A1
Text Label 7750 2200 0    60   ~ 0
A2
Text Label 7750 2100 0    60   ~ 0
A3
Text Label 7750 2000 0    60   ~ 0
A4
Text Label 7750 1900 0    60   ~ 0
A5
Text Label 7750 1800 0    60   ~ 0
A6
Text Label 7750 1700 0    60   ~ 0
A7
Text Label 7700 3250 0    60   ~ 0
A8
Text Label 7700 3350 0    60   ~ 0
A9
Text Label 7700 3550 0    60   ~ 0
A10
Text Label 7700 3650 0    60   ~ 0
A11
Text Label 7700 3750 0    60   ~ 0
A12
NoConn ~ 8050 3950
$Comp
L VC4000_Cartridge_Bus P1
U 1 1 54D6988D
P 10900 3350
F 0 "P1" H 10900 4950 60  0000 C CNN
F 1 "VC4000_Cartridge_Bus" V 10650 3350 60  0000 C CNN
F 2 "VC4000_MultiRom:VC4000_CartridgeBus" H 10950 3350 60  0001 C CNN
F 3 "" H 10950 3350 60  0000 C CNN
	1    10900 3350
	-1   0    0    1   
$EndComp
Entry Wire Line
	4950 4650 5050 4750
Entry Wire Line
	4950 4750 5050 4850
Entry Wire Line
	4950 4850 5050 4950
Entry Wire Line
	4950 4950 5050 5050
Entry Wire Line
	4950 5050 5050 5150
Entry Wire Line
	4950 5150 5050 5250
Entry Wire Line
	4950 5250 5050 5350
Entry Wire Line
	4950 5350 5050 5450
Entry Wire Line
	7800 4750 7900 4650
Entry Wire Line
	7800 4850 7900 4750
Entry Wire Line
	7800 4950 7900 4850
Entry Wire Line
	7800 5050 7900 4950
Entry Wire Line
	7800 5150 7900 5050
Entry Wire Line
	7800 5250 7900 5150
Entry Wire Line
	7800 5350 7900 5250
Entry Wire Line
	7800 5450 7900 5350
Text Label 4850 4650 0    60   ~ 0
D0
Text Label 4850 4750 0    60   ~ 0
D1
Text Label 4850 4850 0    60   ~ 0
D2
Text Label 4850 4950 0    60   ~ 0
D3
Text Label 4850 5050 0    60   ~ 0
D4
Text Label 4850 5150 0    60   ~ 0
D5
Text Label 4850 5250 0    60   ~ 0
D6
Text Label 4850 5350 0    60   ~ 0
D7
Text Label 7900 5350 0    60   ~ 0
D0
Text Label 7900 5250 0    60   ~ 0
D1
Text Label 7900 5150 0    60   ~ 0
D2
Text Label 7900 5050 0    60   ~ 0
D3
Text Label 7900 4950 0    60   ~ 0
D4
Text Label 7900 4850 0    60   ~ 0
D5
Text Label 7900 4750 0    60   ~ 0
D6
Text Label 7900 4650 0    60   ~ 0
D7
NoConn ~ 4850 5550
Entry Wire Line
	9700 2400 9800 2300
Entry Wire Line
	9700 2300 9800 2200
Entry Wire Line
	9700 2200 9800 2100
Entry Wire Line
	9700 2100 9800 2000
Entry Wire Line
	9700 2000 9800 1900
Entry Wire Line
	9700 1900 9800 1800
Entry Wire Line
	9700 1800 9800 1700
Entry Wire Line
	9700 1700 9800 1600
Entry Wire Line
	9700 3250 9800 3150
Entry Wire Line
	9700 3350 9800 3250
Entry Wire Line
	9700 3550 9800 3450
Entry Wire Line
	9700 3650 9800 3550
Entry Wire Line
	10100 2450 10200 2550
Entry Wire Line
	10100 2350 10200 2450
Entry Wire Line
	10100 2550 10200 2650
Entry Wire Line
	10100 2650 10200 2750
Entry Wire Line
	10100 2750 10200 2850
Entry Wire Line
	10100 2850 10200 2950
Entry Wire Line
	10100 2950 10200 3050
Entry Wire Line
	10100 3050 10200 3150
Entry Wire Line
	10100 3250 10200 3350
Entry Wire Line
	10100 3350 10200 3450
Entry Wire Line
	10100 3750 10200 3850
Entry Wire Line
	10100 3850 10200 3950
Text Label 9550 2400 0    60   ~ 0
EA0
Text Label 9550 2300 0    60   ~ 0
EA1
Text Label 9550 2200 0    60   ~ 0
EA2
Text Label 9550 2100 0    60   ~ 0
EA3
Text Label 9550 2000 0    60   ~ 0
EA4
Text Label 9550 1900 0    60   ~ 0
EA5
Text Label 9550 1800 0    60   ~ 0
EA6
Text Label 9550 1700 0    60   ~ 0
EA7
Text Label 9450 3250 0    60   ~ 0
EA8
Text Label 9450 3350 0    60   ~ 0
EA9
Text Label 9450 3550 0    60   ~ 0
EA10
Text Label 9450 3650 0    60   ~ 0
EA11
Entry Wire Line
	9650 4650 9750 4750
Entry Wire Line
	9650 4750 9750 4850
Entry Wire Line
	9650 4850 9750 4950
Entry Wire Line
	9650 4950 9750 5050
Entry Wire Line
	9650 5050 9750 5150
Entry Wire Line
	9650 5150 9750 5250
Entry Wire Line
	9650 5250 9750 5350
Entry Wire Line
	9650 5350 9750 5450
Entry Wire Line
	10100 4250 10200 4150
Entry Wire Line
	10100 4150 10200 4050
Entry Wire Line
	10100 4350 10200 4250
Entry Wire Line
	10100 4450 10200 4350
Entry Wire Line
	10100 4550 10200 4450
Entry Wire Line
	10100 4850 10200 4750
Entry Wire Line
	10100 4950 10200 4850
Text Label 10250 4050 0    60   ~ 0
ED7
Text Label 10250 4150 0    60   ~ 0
ED6
Text Label 10250 4250 0    60   ~ 0
ED5
Text Label 10250 4350 0    60   ~ 0
ED4
Text Label 10250 4450 0    60   ~ 0
ED3
Text Label 10250 4650 0    60   ~ 0
ED2
Text Label 10250 4750 0    60   ~ 0
ED1
Text Label 10250 4850 0    60   ~ 0
ED0
Text Label 9450 5350 0    60   ~ 0
ED0
Text Label 9450 5250 0    60   ~ 0
ED1
Text Label 9450 5150 0    60   ~ 0
ED2
Text Label 9450 5050 0    60   ~ 0
ED3
Text Label 9450 4950 0    60   ~ 0
ED4
Text Label 9450 4850 0    60   ~ 0
ED5
Text Label 9450 4750 0    60   ~ 0
ED6
Text Label 9450 4650 0    60   ~ 0
ED7
Text Label 10250 2450 0    60   ~ 0
EA7
Text Label 10250 2550 0    60   ~ 0
EA6
Text Label 10250 2650 0    60   ~ 0
EA5
Text Label 10250 2750 0    60   ~ 0
EA4
Text Label 10250 2850 0    60   ~ 0
EA3
Text Label 10250 2950 0    60   ~ 0
EA2
Text Label 10250 3050 0    60   ~ 0
EA1
Text Label 10250 3150 0    60   ~ 0
EA0
Text Label 10250 3350 0    60   ~ 0
EA8
Text Label 10250 3450 0    60   ~ 0
EA9
Text Label 10250 3850 0    60   ~ 0
EA10
Text Label 10250 3950 0    60   ~ 0
EA11
NoConn ~ 10550 2150
NoConn ~ 10550 2250
NoConn ~ 10550 2350
$Comp
L VCC #PWR01
U 1 1 54D6D558
P 10450 1600
F 0 "#PWR01" H 10450 1700 30  0001 C CNN
F 1 "VCC" H 10450 1750 30  0000 C CNN
F 2 "" H 10450 1600 60  0000 C CNN
F 3 "" H 10450 1600 60  0000 C CNN
	1    10450 1600
	1    0    0    -1  
$EndComp
$Comp
L Arduino_UNO U1
U 1 1 54D6E609
P 1550 3650
F 0 "U1" H 1100 4400 60  0000 C CNN
F 1 "Arduino_UNO" H 1850 2900 60  0000 C CNN
F 2 "VC4000_MultiRom:Arduino_UNO" H 1550 3500 60  0001 C CNN
F 3 "" H 1550 3500 60  0000 C CNN
	1    1550 3650
	1    0    0    -1  
$EndComp
NoConn ~ 1400 2800
NoConn ~ 1550 2800
NoConn ~ 900  3000
NoConn ~ 900  3100
NoConn ~ 900  3200
$Comp
L VCC #PWR02
U 1 1 54D739B7
P 1700 2800
F 0 "#PWR02" H 1700 2900 30  0001 C CNN
F 1 "VCC" H 1700 2950 30  0000 C CNN
F 2 "" H 1700 2800 60  0000 C CNN
F 3 "" H 1700 2800 60  0000 C CNN
	1    1700 2800
	1    0    0    -1  
$EndComp
Text GLabel 6750 3650 0    48   Input ~ 0
WESRAM
Text GLabel 2300 4100 2    48   Output ~ 0
WESRAM
Text GLabel 2300 3600 2    48   Output ~ 0
CE1SRAM
Text GLabel 2300 3500 2    48   Output ~ 0
CE2SRAM
Text GLabel 6750 3750 0    48   Input ~ 0
CE2SRAM
Text GLabel 6750 3850 0    48   Input ~ 0
CE1SRAM
NoConn ~ 2200 4300
NoConn ~ 2200 4200
NoConn ~ 2200 3400
NoConn ~ 2200 3300
NoConn ~ 2200 3200
NoConn ~ 2200 3100
NoConn ~ 2200 3000
$Comp
L VCC #PWR03
U 1 1 54DB48BB
P 3250 1650
F 0 "#PWR03" H 3250 1750 30  0001 C CNN
F 1 "VCC" H 3250 1800 30  0000 C CNN
F 2 "" H 3250 1650 60  0000 C CNN
F 3 "" H 3250 1650 60  0000 C CNN
	1    3250 1650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR04
U 1 1 54DB55F6
P 9500 3050
F 0 "#PWR04" H 9500 3050 30  0001 C CNN
F 1 "GND" H 9500 2980 30  0001 C CNN
F 2 "" H 9500 3050 60  0000 C CNN
F 3 "" H 9500 3050 60  0000 C CNN
	1    9500 3050
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR05
U 1 1 54DB5800
P 9550 4300
F 0 "#PWR05" H 9550 4400 30  0001 C CNN
F 1 "VCC" H 9550 4450 30  0000 C CNN
F 2 "" H 9550 4300 60  0000 C CNN
F 3 "" H 9550 4300 60  0000 C CNN
	1    9550 4300
	1    0    0    -1  
$EndComp
Text GLabel 2300 3700 2    48   Output ~ 0
OEVCBUS
Text GLabel 9500 2900 1    48   Input ~ 0
OEVCBUS
Text GLabel 9600 4350 2    48   Input ~ 0
OEVCBUS
Text GLabel 9550 1400 2    48   Input ~ 0
OEVCBUS
NoConn ~ 9450 3950
$Comp
L GND #PWR06
U 1 1 54DB7B7A
P 10450 4900
F 0 "#PWR06" H 10450 4900 30  0001 C CNN
F 1 "GND" H 10450 4830 30  0001 C CNN
F 2 "" H 10450 4900 60  0000 C CNN
F 3 "" H 10450 4900 60  0000 C CNN
	1    10450 4900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR07
U 1 1 54DB8BDD
P 9550 4000
F 0 "#PWR07" H 9550 4000 30  0001 C CNN
F 1 "GND" H 9550 3930 30  0001 C CNN
F 2 "" H 9550 4000 60  0000 C CNN
F 3 "" H 9550 4000 60  0000 C CNN
	1    9550 4000
	1    0    0    -1  
$EndComp
NoConn ~ 900  4000
NoConn ~ 900  4100
NoConn ~ 900  4200
NoConn ~ 900  4300
$Comp
L GND #PWR08
U 1 1 54D739DD
P 1550 4500
F 0 "#PWR08" H 1550 4500 30  0001 C CNN
F 1 "GND" H 1550 4430 30  0001 C CNN
F 2 "" H 1550 4500 60  0000 C CNN
F 3 "" H 1550 4500 60  0000 C CNN
	1    1550 4500
	1    0    0    -1  
$EndComp
Text Notes 10200 3750 0    60   ~ 0
"CE2"
$Comp
L GND #PWR09
U 1 1 553D09E4
P 10350 2050
F 0 "#PWR09" H 10350 1800 50  0001 C CNN
F 1 "GND" H 10350 1900 50  0000 C CNN
F 2 "" H 10350 2050 60  0000 C CNN
F 3 "" H 10350 2050 60  0000 C CNN
	1    10350 2050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR010
U 1 1 553D11BE
P 9450 1500
F 0 "#PWR010" H 9450 1250 50  0001 C CNN
F 1 "GND" H 9450 1350 50  0000 C CNN
F 2 "" H 9450 1500 60  0000 C CNN
F 3 "" H 9450 1500 60  0000 C CNN
	1    9450 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 3000 3350 3000
Wire Wire Line
	4950 4400 3350 4400
Wire Wire Line
	5350 1950 5550 1950
Wire Wire Line
	5550 2150 5350 2150
Wire Wire Line
	5550 2250 5350 2250
Wire Wire Line
	5550 2350 5350 2350
Wire Wire Line
	5550 2450 5350 2450
Wire Wire Line
	5550 2550 5350 2550
Wire Wire Line
	5550 2650 5350 2650
Wire Wire Line
	5550 2750 5350 2750
Wire Wire Line
	5550 2850 5350 2850
Wire Wire Line
	5550 2950 5350 2950
Wire Wire Line
	5550 3050 5350 3050
Wire Wire Line
	5550 3150 5350 3150
Wire Wire Line
	5550 2050 5350 2050
Wire Wire Line
	6750 1950 7200 1950
Wire Wire Line
	6750 2050 7200 2050
Wire Wire Line
	6750 2150 7200 2150
Wire Wire Line
	6750 2250 7200 2250
Wire Wire Line
	6750 2350 7200 2350
Wire Wire Line
	6750 2450 7200 2450
Wire Wire Line
	6750 2550 7200 2550
Wire Wire Line
	6750 2650 7200 2650
Wire Wire Line
	4850 1850 5050 1850
Wire Wire Line
	4850 1950 5050 1950
Wire Wire Line
	4850 2050 5050 2050
Wire Wire Line
	4850 2150 5050 2150
Wire Wire Line
	4850 2250 5050 2250
Wire Wire Line
	4850 2350 5050 2350
Wire Wire Line
	4850 2450 5050 2450
Wire Wire Line
	4850 2550 5050 2550
Wire Wire Line
	4850 3250 5050 3250
Wire Wire Line
	4850 3350 5050 3350
Wire Wire Line
	4850 3450 5050 3450
Wire Wire Line
	4850 3550 5050 3550
Wire Wire Line
	4850 3650 5050 3650
Wire Bus Line
	5150 1500 5150 3550
Wire Bus Line
	5250 1500 5250 3050
Wire Wire Line
	7500 3250 8050 3250
Wire Wire Line
	7500 3350 8050 3350
Wire Wire Line
	7500 2400 8050 2400
Wire Wire Line
	7500 2300 8050 2300
Wire Wire Line
	7500 2200 8050 2200
Wire Wire Line
	7500 2100 8050 2100
Wire Wire Line
	7500 2000 8050 2000
Wire Wire Line
	7500 1900 8050 1900
Wire Wire Line
	7500 1800 8050 1800
Wire Wire Line
	7500 1700 8050 1700
Wire Bus Line
	7400 1500 7400 3650
Wire Wire Line
	6750 3150 6850 3150
Wire Wire Line
	6750 3050 6950 3050
Wire Wire Line
	6950 2850 6950 3850
Wire Bus Line
	7300 2050 7300 5550
Wire Wire Line
	7900 4750 8050 4750
Wire Wire Line
	7900 4650 8050 4650
Wire Wire Line
	7900 4850 8050 4850
Wire Wire Line
	7900 4950 8050 4950
Wire Wire Line
	7900 5050 8050 5050
Wire Wire Line
	7900 5150 8050 5150
Wire Wire Line
	7900 5250 8050 5250
Wire Wire Line
	7900 5350 8050 5350
Wire Wire Line
	4850 4650 4950 4650
Wire Wire Line
	4850 4750 4950 4750
Wire Wire Line
	4850 4850 4950 4850
Wire Wire Line
	4850 4950 4950 4950
Wire Wire Line
	4850 5050 4950 5050
Wire Wire Line
	4850 5150 4950 5150
Wire Wire Line
	4850 5250 4950 5250
Wire Wire Line
	4850 5350 4950 5350
Wire Bus Line
	7800 4750 7800 5550
Wire Bus Line
	5050 4750 5050 5550
Wire Wire Line
	4850 4150 4950 4150
Wire Wire Line
	4950 4150 4950 4400
Wire Wire Line
	3350 4400 3350 4650
Wire Wire Line
	3350 4650 3450 4650
Wire Wire Line
	3350 3000 3350 3250
Wire Wire Line
	3350 3250 3450 3250
Wire Wire Line
	4950 3000 4950 2750
Wire Wire Line
	4950 2750 4850 2750
Wire Wire Line
	9450 1700 9700 1700
Wire Wire Line
	9450 1800 9700 1800
Wire Wire Line
	9450 1900 9700 1900
Wire Wire Line
	9450 2000 9700 2000
Wire Wire Line
	9450 2100 9700 2100
Wire Wire Line
	9450 2200 9700 2200
Wire Wire Line
	9450 2300 9700 2300
Wire Wire Line
	9450 2400 9700 2400
Wire Wire Line
	9450 3250 9700 3250
Wire Wire Line
	9450 3350 9700 3350
Wire Bus Line
	5150 1500 7400 1500
Wire Wire Line
	10200 2450 10550 2450
Wire Wire Line
	10200 2550 10550 2550
Wire Wire Line
	10200 2650 10550 2650
Wire Wire Line
	10200 2750 10550 2750
Wire Wire Line
	10200 2850 10550 2850
Wire Wire Line
	10200 2950 10550 2950
Wire Wire Line
	10200 3050 10550 3050
Wire Wire Line
	10200 3150 10550 3150
Wire Wire Line
	10200 3450 10550 3450
Wire Wire Line
	10200 3850 10550 3850
Wire Wire Line
	10200 3950 10550 3950
Wire Bus Line
	10100 1500 10100 3850
Wire Bus Line
	10100 1500 9800 1500
Wire Bus Line
	9800 1500 9800 3550
Wire Wire Line
	9450 4650 9650 4650
Wire Wire Line
	9450 4750 9650 4750
Wire Wire Line
	9450 4850 9650 4850
Wire Wire Line
	9450 4950 9650 4950
Wire Wire Line
	9450 5050 9650 5050
Wire Wire Line
	9450 5150 9650 5150
Wire Wire Line
	9450 5250 9650 5250
Wire Wire Line
	9450 5350 9650 5350
Wire Wire Line
	10200 4850 10550 4850
Wire Wire Line
	10200 4750 10550 4750
Wire Wire Line
	10200 4450 10550 4450
Wire Wire Line
	10200 4350 10550 4350
Wire Wire Line
	10200 4050 10550 4050
Wire Bus Line
	9750 4750 9750 5550
Wire Wire Line
	10450 1600 10450 3250
Wire Wire Line
	10450 3250 10550 3250
Wire Bus Line
	9750 5550 10100 5550
Wire Wire Line
	2200 3800 2850 3800
Wire Wire Line
	2850 3800 2850 1850
Wire Wire Line
	2850 1850 3450 1850
Wire Wire Line
	900  3800 700  3800
Wire Wire Line
	700  3800 700  5250
Wire Wire Line
	700  5250 3450 5250
Wire Wire Line
	800  3900 900  3900
Wire Wire Line
	3150 4650 800  4650
Wire Wire Line
	3150 2450 3150 4650
Wire Wire Line
	3150 3850 3450 3850
Wire Wire Line
	3150 2450 3450 2450
Connection ~ 3150 3850
Wire Wire Line
	800  4650 800  3900
Wire Wire Line
	2950 3900 2200 3900
Wire Wire Line
	2950 2050 2950 4850
Wire Wire Line
	2950 2050 3450 2050
Wire Wire Line
	2950 3450 3450 3450
Connection ~ 2950 3450
Wire Wire Line
	2950 4850 3450 4850
Connection ~ 2950 3900
Wire Wire Line
	3050 2350 3050 5150
Wire Wire Line
	3050 3750 3450 3750
Wire Wire Line
	3050 2350 3450 2350
Connection ~ 3050 3750
Wire Wire Line
	3050 4000 2200 4000
Wire Wire Line
	3050 5150 3450 5150
Connection ~ 3050 4000
Wire Wire Line
	2200 4100 2300 4100
Wire Wire Line
	2200 3500 2300 3500
Wire Wire Line
	3250 1650 3250 4950
Wire Wire Line
	3250 2150 3450 2150
Wire Wire Line
	3250 3550 3450 3550
Connection ~ 3250 2150
Wire Wire Line
	3250 4950 3450 4950
Connection ~ 3250 3550
Wire Wire Line
	2200 3600 2300 3600
Wire Wire Line
	2300 3700 2200 3700
Wire Wire Line
	6950 2850 6750 2850
Connection ~ 6950 3050
Wire Wire Line
	6850 3150 6850 3650
Wire Wire Line
	10200 3350 10550 3350
Wire Wire Line
	10200 4150 10550 4150
Wire Wire Line
	10200 4250 10550 4250
Wire Wire Line
	10200 4650 10550 4650
Wire Wire Line
	10450 4900 10450 4550
Wire Wire Line
	10450 4550 10550 4550
Wire Wire Line
	6850 3650 6750 3650
Wire Wire Line
	6750 3850 8050 3850
Wire Wire Line
	9550 3750 9550 4000
Wire Wire Line
	9550 3850 9450 3850
Wire Wire Line
	10550 3550 10450 3550
Wire Wire Line
	10450 3550 10450 3650
Wire Wire Line
	10450 3650 10550 3650
Connection ~ 9550 3850
Wire Bus Line
	5050 5550 7800 5550
Connection ~ 6950 3850
Wire Wire Line
	6750 2950 7050 2950
Wire Wire Line
	7050 2950 7050 3750
Wire Wire Line
	10350 2050 10550 2050
Wire Wire Line
	10550 1950 10450 1950
Connection ~ 10450 1950
Wire Wire Line
	9550 1400 9450 1400
Wire Wire Line
	9600 4350 9450 4350
Wire Wire Line
	9550 4300 9550 4450
Wire Wire Line
	9550 4450 9450 4450
Entry Wire Line
	10100 4750 10200 4650
Wire Bus Line
	10100 5550 10100 4150
Wire Wire Line
	9500 2950 9450 2950
Entry Wire Line
	7400 2100 7500 2200
Wire Wire Line
	9500 2950 9500 2900
Wire Wire Line
	9450 3050 9500 3050
Wire Wire Line
	7050 3750 6750 3750
Wire Wire Line
	8050 3750 7500 3750
Wire Wire Line
	8050 3650 7500 3650
Wire Wire Line
	7500 3550 8050 3550
Wire Wire Line
	9550 3750 9450 3750
Wire Wire Line
	9450 3650 9700 3650
Wire Wire Line
	9450 3550 9700 3550
Wire Wire Line
	10550 3750 10200 3750
Wire Wire Line
	10200 3750 10200 3550
Wire Wire Line
	10200 3550 9950 3550
Wire Wire Line
	9950 3550 9950 3400
Wire Wire Line
	9950 3400 9700 3400
Wire Wire Line
	9700 3400 9700 3450
Wire Wire Line
	9700 3450 9450 3450
Wire Wire Line
	8050 3450 7500 3450
Wire Wire Line
	7500 3450 7500 3400
Wire Wire Line
	7500 3400 7050 3400
Connection ~ 7050 3400
$Comp
L C C1
U 1 1 55855363
P 8300 6050
F 0 "C1" H 8325 6150 50  0000 L CNN
F 1 ".1uF" H 8325 5950 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Disc_D6_P5" H 8338 5900 30  0001 C CNN
F 3 "" H 8300 6050 60  0000 C CNN
	1    8300 6050
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 558556DE
P 8600 6050
F 0 "C2" H 8625 6150 50  0000 L CNN
F 1 ".1uF" H 8625 5950 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Disc_D6_P5" H 8638 5900 30  0001 C CNN
F 3 "" H 8600 6050 60  0000 C CNN
	1    8600 6050
	1    0    0    -1  
$EndComp
$Comp
L C C3
U 1 1 55855710
P 8900 6050
F 0 "C3" H 8925 6150 50  0000 L CNN
F 1 ".1uF" H 8925 5950 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Disc_D6_P5" H 8938 5900 30  0001 C CNN
F 3 "" H 8900 6050 60  0000 C CNN
	1    8900 6050
	1    0    0    -1  
$EndComp
$Comp
L C C4
U 1 1 55855748
P 9200 6050
F 0 "C4" H 9225 6150 50  0000 L CNN
F 1 ".1uF" H 9225 5950 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Disc_D6_P5" H 9238 5900 30  0001 C CNN
F 3 "" H 9200 6050 60  0000 C CNN
	1    9200 6050
	1    0    0    -1  
$EndComp
$Comp
L C C5
U 1 1 55855787
P 9500 6050
F 0 "C5" H 9525 6150 50  0000 L CNN
F 1 ".1uF" H 9525 5950 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Disc_D6_P5" H 9538 5900 30  0001 C CNN
F 3 "" H 9500 6050 60  0000 C CNN
	1    9500 6050
	1    0    0    -1  
$EndComp
$Comp
L C C6
U 1 1 558557C4
P 9800 6050
F 0 "C6" H 9825 6150 50  0000 L CNN
F 1 ".1uF" H 9825 5950 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Disc_D6_P5" H 9838 5900 30  0001 C CNN
F 3 "" H 9800 6050 60  0000 C CNN
	1    9800 6050
	1    0    0    -1  
$EndComp
$Comp
L C C7
U 1 1 55855806
P 10100 6050
F 0 "C7" H 10125 6150 50  0000 L CNN
F 1 ".1uF" H 10125 5950 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Disc_D6_P5" H 10138 5900 30  0001 C CNN
F 3 "" H 10100 6050 60  0000 C CNN
	1    10100 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	8100 5900 10100 5900
Connection ~ 8600 5900
Connection ~ 8900 5900
Connection ~ 9200 5900
Connection ~ 9500 5900
Connection ~ 9800 5900
Wire Wire Line
	8100 6200 10100 6200
Connection ~ 8600 6200
Connection ~ 8900 6200
Connection ~ 9200 6200
Connection ~ 9500 6200
Connection ~ 9800 6200
$Comp
L GND #PWR011
U 1 1 558564D3
P 8100 6200
F 0 "#PWR011" H 8100 6200 30  0001 C CNN
F 1 "GND" H 8100 6130 30  0001 C CNN
F 2 "" H 8100 6200 60  0000 C CNN
F 3 "" H 8100 6200 60  0000 C CNN
	1    8100 6200
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR012
U 1 1 5585650E
P 8100 5900
F 0 "#PWR012" H 8100 6000 30  0001 C CNN
F 1 "VCC" H 8100 6050 30  0000 C CNN
F 2 "" H 8100 5900 60  0000 C CNN
F 3 "" H 8100 5900 60  0000 C CNN
	1    8100 5900
	1    0    0    -1  
$EndComp
Connection ~ 8300 5900
Connection ~ 8300 6200
Text Notes 8550 5800 0    60   ~ 0
IC Power Decoupling Caps
$EndSCHEMATC
