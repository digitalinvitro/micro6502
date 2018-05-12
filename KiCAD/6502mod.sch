EESchema Schematic File Version 2
LIBS:6502mod-rescue
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
LIBS:65xx
LIBS:Oscillators
LIBS:6502mod-cache
EELAYER 25 0
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
L MCS6502 U1
U 1 1 5A7C2746
P 5950 2600
F 0 "U1" H 5950 1450 60  0001 C CNN
F 1 "MCS6502" V 5950 2600 60  0000 C CNN
F 2 "Housings_DIP:DIP-40_W15.24mm" H 5450 2800 60  0001 C CNN
F 3 "" H 5450 2800 60  0000 C CNN
	1    5950 2600
	1    0    0    -1  
$EndComp
$Comp
L W24512AK U3
U 1 1 5A7C2C37
P 8200 2750
F 0 "U3" H 8200 3950 50  0001 C CNN
F 1 "W24512AK" H 8350 1725 50  0000 C CNN
F 2 "Housings_DIP:DIP-32_W7.62mm" H 8200 2750 50  0001 C CNN
F 3 "" H 8200 2750 50  0000 C CNN
	1    8200 2750
	1    0    0    -1  
$EndComp
Entry Wire Line
	6900 2500 7000 2400
Entry Wire Line
	6900 2400 7000 2300
Entry Wire Line
	6900 2700 7000 2600
Entry Wire Line
	6900 2600 7000 2500
Entry Wire Line
	6900 2900 7000 2800
Entry Wire Line
	6900 2800 7000 2700
Entry Wire Line
	6900 3100 7000 3000
Entry Wire Line
	6900 3000 7000 2900
Text Label 6800 2400 0    47   ~ 0
D0
Text Label 6800 2500 0    47   ~ 0
D1
Text Label 6800 2600 0    47   ~ 0
D2
Text Label 6800 2700 0    47   ~ 0
D3
Text Label 6800 2800 0    47   ~ 0
D4
Text Label 6800 2900 0    47   ~ 0
D5
Text Label 6800 3000 0    47   ~ 0
D6
Text Label 6800 3100 0    47   ~ 0
D7
Entry Wire Line
	9200 1800 9300 1700
Entry Wire Line
	9200 1700 9300 1600
Entry Wire Line
	9200 2000 9300 1900
Entry Wire Line
	9200 1900 9300 1800
Entry Wire Line
	9200 2200 9300 2100
Entry Wire Line
	9200 2100 9300 2000
Entry Wire Line
	9200 2400 9300 2300
Entry Wire Line
	9200 2300 9300 2200
Text Label 9100 1700 0    47   ~ 0
D0
Text Label 9100 1800 0    47   ~ 0
D1
Text Label 9100 1900 0    47   ~ 0
D2
Text Label 9100 2000 0    47   ~ 0
D3
Text Label 9100 2100 0    47   ~ 0
D4
Text Label 9100 2200 0    47   ~ 0
D5
Text Label 9100 2300 0    47   ~ 0
D6
Text Label 9100 2400 0    47   ~ 0
D7
Entry Wire Line
	6900 3300 7000 3200
Entry Wire Line
	6900 3200 7000 3100
Entry Wire Line
	6900 3500 7000 3400
Entry Wire Line
	6900 3400 7000 3300
Text Label 6750 3200 0    47   ~ 0
A15
Text Label 6750 3300 0    47   ~ 0
A14
Text Label 6750 3400 0    47   ~ 0
A13
Text Label 6750 3500 0    47   ~ 0
A12
Entry Wire Line
	5000 2600 4900 2500
Entry Wire Line
	5000 2500 4900 2400
Entry Wire Line
	5000 2800 4900 2700
Entry Wire Line
	5000 2700 4900 2600
Entry Wire Line
	5000 3000 4900 2900
Entry Wire Line
	5000 2900 4900 2800
Entry Wire Line
	5000 3200 4900 3100
Entry Wire Line
	5000 3100 4900 3000
Text Label 5100 2500 2    47   ~ 0
A0
Text Label 5100 2600 2    47   ~ 0
A1
Text Label 5100 2700 2    47   ~ 0
A2
Text Label 5100 2800 2    47   ~ 0
A3
Text Label 5100 2900 2    47   ~ 0
A4
Text Label 5100 3000 2    47   ~ 0
A5
Text Label 5100 3100 2    47   ~ 0
A6
Text Label 5100 3200 2    47   ~ 0
A7
Entry Wire Line
	5000 3400 4900 3300
Entry Wire Line
	5000 3300 4900 3200
Entry Wire Line
	5000 3600 4900 3500
Entry Wire Line
	5000 3500 4900 3400
Text Label 5100 3300 2    47   ~ 0
A8
Text Label 5100 3400 2    47   ~ 0
A9
Text Label 5150 3500 2    47   ~ 0
A10
Text Label 5150 3600 2    47   ~ 0
A11
Entry Wire Line
	7100 1800 7000 1700
Entry Wire Line
	7100 1700 7000 1600
Entry Wire Line
	7100 2000 7000 1900
Entry Wire Line
	7100 1900 7000 1800
Entry Wire Line
	7100 2200 7000 2100
Entry Wire Line
	7100 2100 7000 2000
Entry Wire Line
	7100 2400 7000 2300
Entry Wire Line
	7100 2300 7000 2200
Text Label 7200 1700 2    47   ~ 0
A0
Text Label 7200 1800 2    47   ~ 0
A1
Text Label 7200 1900 2    47   ~ 0
A2
Text Label 7200 2000 2    47   ~ 0
A3
Text Label 7200 2100 2    47   ~ 0
A4
Text Label 7200 2200 2    47   ~ 0
A5
Text Label 7200 2300 2    47   ~ 0
A6
Text Label 7200 2400 2    47   ~ 0
A7
Entry Wire Line
	7100 2600 7000 2500
Entry Wire Line
	7100 2500 7000 2400
Entry Wire Line
	7100 2800 7000 2700
Entry Wire Line
	7100 2700 7000 2600
Text Label 7200 2500 2    47   ~ 0
A8
Text Label 7200 2600 2    47   ~ 0
A9
Text Label 7250 2700 2    47   ~ 0
A10
Text Label 7250 2800 2    47   ~ 0
A11
Entry Wire Line
	6900 2300 7000 2200
Text Label 6800 2300 0    47   ~ 0
WR
Entry Wire Line
	7100 3800 7000 3700
Text Label 7200 3800 2    47   ~ 0
WE
Entry Wire Line
	7100 3600 7000 3500
Text Label 7200 3500 2    47   ~ 0
CS
Entry Wire Line
	7100 3700 7000 3600
Text Label 7200 3700 2    47   ~ 0
RD
Entry Wire Line
	7100 3000 7000 2900
Entry Wire Line
	7100 2900 7000 2800
Entry Wire Line
	7100 3200 7000 3100
Entry Wire Line
	7100 3100 7000 3000
Text Label 7250 2900 2    47   ~ 0
A12
Text Label 7250 3000 2    47   ~ 0
A13
Text Label 7250 3100 2    47   ~ 0
A14
Text Label 7250 3200 2    47   ~ 0
A15
Entry Wire Line
	6900 1800 7000 1700
Text Label 6800 1800 0    40   ~ 0
Phi2
Entry Wire Line
	6900 2000 7000 1900
Text Label 6625 2000 0    40   ~ 0
CPUCLK
$Comp
L XC9572-VQ64 U2
U 1 1 5A7C6F0B
P 3350 4500
F 0 "U2" H 3920 7100 50  0000 C CNN
F 1 "XC9572xl-VQ64" H 3940 3701 50  0000 C CNN
F 2 "XILINX:XILINX-VQ64" H 3350 4500 50  0000 C CNN
F 3 "" H 3350 4500 50  0000 C CNN
	1    3350 4500
	1    0    0    -1  
$EndComp
Entry Wire Line
	4800 2250 4900 2150
Entry Wire Line
	4800 2150 4900 2050
Entry Wire Line
	4800 2450 4900 2350
Entry Wire Line
	4800 2350 4900 2250
Entry Wire Line
	4800 2650 4900 2550
Entry Wire Line
	4800 2550 4900 2450
Entry Wire Line
	4800 2850 4900 2750
Entry Wire Line
	4800 2750 4900 2650
Entry Wire Line
	4800 3050 4900 2950
Entry Wire Line
	4800 2950 4900 2850
Entry Wire Line
	4800 3350 4900 3250
Entry Wire Line
	4800 3150 4900 3050
Entry Wire Line
	4800 2050 4900 1950
Entry Wire Line
	4800 3650 4900 3550
Entry Wire Line
	4800 3550 4900 3450
Entry Wire Line
	4800 3850 4900 3750
Entry Wire Line
	4800 3750 4900 3650
Entry Wire Line
	4800 4050 4900 3950
Entry Wire Line
	4800 3950 4900 3850
Entry Wire Line
	4800 4250 4900 4150
Entry Wire Line
	4800 4150 4900 4050
Text Label 4700 3750 0    47   ~ 0
A8
Text Label 4700 3850 0    47   ~ 0
A9
Text Label 4650 3950 0    47   ~ 0
A10
Text Label 4650 4050 0    47   ~ 0
A11
Text Label 4650 4150 0    47   ~ 0
A12
Text Label 4650 4250 0    47   ~ 0
A13
Entry Wire Line
	4800 4450 4900 4350
Entry Wire Line
	4800 4350 4900 4250
Entry Wire Line
	4800 4550 4900 4450
Text Label 4650 4350 0    47   ~ 0
A14
Text Label 4650 4450 0    47   ~ 0
A15
Entry Wire Line
	4800 3450 4900 3350
Entry Wire Line
	4800 4650 4900 4550
Entry Wire Line
	1900 2250 1800 2150
Entry Wire Line
	1900 2150 1800 2050
Entry Wire Line
	1900 2450 1800 2350
Entry Wire Line
	1900 2350 1800 2250
Entry Wire Line
	1900 2650 1800 2550
Entry Wire Line
	1900 2550 1800 2450
Entry Wire Line
	1900 2850 1800 2750
Entry Wire Line
	1900 2750 1800 2650
Entry Wire Line
	1900 3050 1800 2950
Entry Wire Line
	1900 2950 1800 2850
Entry Wire Line
	1900 3250 1800 3150
Entry Wire Line
	1900 3150 1800 3050
Entry Wire Line
	1900 2050 1800 1950
Entry Wire Line
	1900 3600 1800 3500
Entry Wire Line
	1900 3500 1800 3400
Entry Wire Line
	1900 3800 1800 3700
Entry Wire Line
	1900 3700 1800 3600
Entry Wire Line
	1900 4000 1800 3900
Entry Wire Line
	1900 3900 1800 3800
Entry Wire Line
	1900 4200 1800 4100
Text Label 2000 2550 2    47   ~ 0
A0
Entry Wire Line
	1900 4400 1800 4300
Entry Wire Line
	1900 4300 1800 4200
Entry Wire Line
	1900 4500 1800 4400
Entry Wire Line
	1900 3400 1800 3300
Text Label 2000 2350 2    47   ~ 0
A7
Text Label 2000 3400 2    47   ~ 0
A6
Text Label 2000 3600 2    47   ~ 0
A5
Text Label 2000 3900 2    47   ~ 0
A4
Text Label 2000 2050 2    47   ~ 0
A3
Text Label 2000 2150 2    47   ~ 0
A2
Text Label 2000 2250 2    47   ~ 0
A1
Text Label 2000 2950 2    47   ~ 0
D0
Text Label 2000 3050 2    47   ~ 0
D1
Text Label 2000 3150 2    47   ~ 0
D2
Text Label 2000 3250 2    47   ~ 0
D4
Text Label 4800 3350 2    47   ~ 0
D3
Text Label 4800 3450 2    47   ~ 0
D5
Text Label 4800 3550 2    47   ~ 0
D6
Text Label 4800 3650 2    47   ~ 0
D7
Text Label 2100 4600 2    47   ~ 0
RESET
Text Label 2000 4400 2    47   ~ 0
WE
Text Label 2000 4500 2    47   ~ 0
CS
Text Label 2200 2750 2    47   ~ 0
CPUCLK
Text Label 2050 4200 2    47   ~ 0
Phi2
Text Label 2000 4000 2    47   ~ 0
WR
Text Label 4800 3150 2    47   ~ 0
RD
Text Label 2000 2450 2    47   ~ 0
RX
Text Label 2000 3800 2    47   ~ 0
TX
Text Label 2050 2650 2    47   ~ 0
CLK
Text Label 2150 3500 2    47   ~ 0
PWRON
Text Label 4800 2050 2    47   ~ 0
P1
Text Label 4800 2150 2    47   ~ 0
P2
Text Label 4800 2250 2    47   ~ 0
P3
Text Label 4800 2350 2    47   ~ 0
P4
Text Label 4800 2450 2    47   ~ 0
P5
Text Label 4800 2550 2    47   ~ 0
P6
Text Label 4800 2650 2    47   ~ 0
P7
Text Label 4800 2750 2    47   ~ 0
P8
Text Label 4800 2850 2    47   ~ 0
P9
Text Label 4800 2950 2    47   ~ 0
P10
Text Label 4800 3050 2    47   ~ 0
P11/SCL
Text Label 4800 4550 2    47   ~ 0
P12
Text Label 4800 4650 2    47   ~ 0
P13
Text Label 2050 2850 2    47   ~ 0
P14
Text Label 2050 3700 2    47   ~ 0
P15
Text Label 2150 4300 2    47   ~ 0
P0/SDA
$Comp
L R_Small R0
U 1 1 5A7D685E
P 7350 3600
F 0 "R0" H 7250 3650 50  0000 L CNN
F 1 "1k" H 7250 3550 50  0000 L CNN
F 2 "m-pad-2.1:m-pad-2.1-0603" H 7350 3600 50  0001 C CNN
F 3 "" H 7350 3600 50  0000 C CNN
	1    7350 3600
	0    1    1    0   
$EndComp
Entry Wire Line
	7100 3500 7000 3400
Entry Wire Line
	6900 3600 7000 3500
Text Label 6750 3600 0    47   ~ 0
GND
Entry Wire Line
	5000 1700 4900 1600
Text Label 5150 1700 2    47   ~ 0
GND
Entry Wire Line
	5000 2400 4900 2300
Text Label 5150 2400 2    47   ~ 0
VCC
$Comp
L R_Small R7
U 1 1 5A7D6F63
P 5150 2200
F 0 "R7" H 5050 2250 50  0000 L CNN
F 1 "4,7k" H 5050 2150 50  0000 L CNN
F 2 "m-pad-2.1:m-pad-2.1-0603" H 5150 2200 50  0001 C CNN
F 3 "" H 5150 2200 50  0000 C CNN
	1    5150 2200
	0    1    1    0   
$EndComp
$Comp
L R_Small R8
U 1 1 5A7D6F8D
P 6750 1900
F 0 "R8" V 6750 1850 40  0000 L CNN
F 1 "4,7k" V 6675 1825 40  0000 L CNN
F 2 "m-pad-2.1:m-pad-2.1-0603" H 6750 1900 50  0001 C CNN
F 3 "" H 6750 1900 50  0000 C CNN
	1    6750 1900
	0    1    1    0   
$EndComp
Entry Wire Line
	6900 1900 7000 1800
Text Label 6900 1900 2    41   ~ 0
VCC
Entry Wire Line
	5000 2000 4900 1900
Entry Wire Line
	5000 2200 4900 2100
Text Label 5050 2000 2    47   ~ 0
IRQ
Text Label 5050 2200 2    47   ~ 0
VCC
$Comp
L R_Small R5
U 1 1 5A7D7515
P 5150 1800
F 0 "R5" H 5050 1850 50  0000 L CNN
F 1 "4,7k" H 5050 1750 50  0000 L CNN
F 2 "m-pad-2.1:m-pad-2.1-0603" H 5150 1800 50  0001 C CNN
F 3 "" H 5150 1800 50  0000 C CNN
	1    5150 1800
	0    1    1    0   
$EndComp
Entry Wire Line
	5000 1800 4900 1700
Text Label 5050 1800 2    47   ~ 0
VCC
$Comp
L R_Small R1
U 1 1 5A7D784F
P 1500 5300
F 0 "R1" H 1400 5350 50  0000 L CNN
F 1 "10k" H 1400 5250 50  0000 L CNN
F 2 "m-pad-2.1:m-pad-2.1-0603" H 1500 5300 50  0001 C CNN
F 3 "" H 1500 5300 50  0000 C CNN
	1    1500 5300
	-1   0    0    1   
$EndComp
$Comp
L R_Small R2
U 1 1 5A7D7990
P 1700 5300
F 0 "R2" H 1600 5350 50  0000 L CNN
F 1 "10k" H 1600 5250 50  0000 L CNN
F 2 "m-pad-2.1:m-pad-2.1-0603" H 1700 5300 50  0001 C CNN
F 3 "" H 1700 5300 50  0000 C CNN
	1    1700 5300
	-1   0    0    1   
$EndComp
$Comp
L R_Small R3
U 1 1 5A7D79C4
P 1900 5300
F 0 "R3" H 1800 5350 50  0000 L CNN
F 1 "10k" H 1800 5250 50  0000 L CNN
F 2 "m-pad-2.1:m-pad-2.1-0603" H 1900 5300 50  0001 C CNN
F 3 "" H 1900 5300 50  0000 C CNN
	1    1900 5300
	-1   0    0    1   
$EndComp
$Comp
L R_Small R4
U 1 1 5A7D79FD
P 2100 5300
F 0 "R4" H 2000 5350 50  0000 L CNN
F 1 "10k" H 2000 5250 50  0000 L CNN
F 2 "m-pad-2.1:m-pad-2.1-0603" H 2100 5300 50  0001 C CNN
F 3 "" H 2100 5300 50  0000 C CNN
	1    2100 5300
	-1   0    0    1   
$EndComp
$Comp
L +3.3V #PWR01
U 1 1 5A7D7F3F
P 2350 5400
F 0 "#PWR01" H 2350 5250 50  0001 C CNN
F 1 "+3.3V" H 2350 5540 50  0000 C CNN
F 2 "" H 2350 5400 50  0000 C CNN
F 3 "" H 2350 5400 50  0000 C CNN
	1    2350 5400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 5A7D844C
P 3200 5850
F 0 "#PWR02" H 3200 5600 50  0001 C CNN
F 1 "GND" H 3200 5700 50  0000 C CNN
F 2 "" H 3200 5850 50  0000 C CNN
F 3 "" H 3200 5850 50  0000 C CNN
	1    3200 5850
	1    0    0    -1  
$EndComp
$Comp
L CONN_02X05 P1
U 1 1 5A7D8632
P 1300 6150
F 0 "P1" H 1300 6450 50  0000 C CNN
F 1 "CONN_02X05" H 1300 5850 50  0000 C CNN
F 2 "Footprints:CONN_2x5" H 1300 4950 50  0000 C CNN
F 3 "" H 1300 4950 50  0000 C CNN
	1    1300 6150
	1    0    0    -1  
$EndComp
Entry Wire Line
	850  5100 750  5200
Text Label 950  4800 2    47   ~ 0
TDI
Entry Wire Line
	850  4900 750  5000
Entry Wire Line
	850  5000 750  5100
Entry Wire Line
	850  4800 750  4900
Text Label 1000 4900 2    47   ~ 0
TMS
Text Label 1000 5000 2    47   ~ 0
TCK
Text Label 850  5100 0    47   ~ 0
TDO
Entry Wire Line
	850  5950 750  5850
Entry Wire Line
	850  6050 750  5950
Entry Wire Line
	850  6150 750  6050
Entry Wire Line
	850  6350 750  6250
Entry Wire Line
	2900 1500 2800 1400
Text Label 2950 1500 2    47   ~ 0
+3.3V
$Comp
L SW_PUSH_SMALL_H SW1
U 1 1 5A7DB719
P 1000 4600
F 0 "SW1" H 1080 4710 50  0000 C CNN
F 1 "SW" H 1000 4550 50  0000 C CNN
F 2 "Buttons_Switches_SMD:SW_SPST_EVQP0" H 1000 4800 50  0001 C CNN
F 3 "" H 1000 4800 50  0000 C CNN
	1    1000 4600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 5A7DB8AB
P 750 4600
F 0 "#PWR03" H 750 4350 50  0001 C CNN
F 1 "GND" H 750 4450 50  0000 C CNN
F 2 "" H 750 4600 50  0000 C CNN
F 3 "" H 750 4600 50  0000 C CNN
	1    750  4600
	0    1    1    0   
$EndComp
$Comp
L R_Small R9
U 1 1 5A7DB9A0
P 1300 5300
F 0 "R9" H 1200 5350 50  0000 L CNN
F 1 "10k" H 1200 5250 50  0000 L CNN
F 2 "m-pad-2.1:m-pad-2.1-0603" H 1300 5300 50  0001 C CNN
F 3 "" H 1300 5300 50  0000 C CNN
	1    1300 5300
	-1   0    0    1   
$EndComp
Entry Wire Line
	5000 4650 4900 4550
$Comp
L CONN_01X08 P2
U 1 1 5A7DCC18
P 9900 2850
F 0 "P2" H 9900 3300 50  0000 C CNN
F 1 "CONN_01X08" V 10000 2850 50  0000 C CNN
F 2 "Footprints:CONN_1x8" H 9900 2850 50  0001 C CNN
F 3 "" H 9900 2850 50  0000 C CNN
	1    9900 2850
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X08 P3
U 1 1 5A7DCDAF
P 9900 3800
F 0 "P3" H 9900 4250 50  0000 C CNN
F 1 "CONN_01X08" V 10000 3800 50  0000 C CNN
F 2 "Footprints:CONN_1x8" H 9900 3800 50  0001 C CNN
F 3 "" H 9900 3800 50  0000 C CNN
	1    9900 3800
	1    0    0    -1  
$EndComp
Entry Wire Line
	9400 2800 9300 2700
Entry Wire Line
	9400 2700 9300 2600
Entry Wire Line
	9400 3000 9300 2900
Entry Wire Line
	9400 2900 9300 2800
Entry Wire Line
	9400 3200 9300 3100
Entry Wire Line
	9400 3100 9300 3000
Entry Wire Line
	9400 3550 9300 3450
Entry Wire Line
	9400 3450 9300 3350
Entry Wire Line
	9400 3750 9300 3650
Entry Wire Line
	9400 3650 9300 3550
Entry Wire Line
	9400 2600 9300 2500
Text Label 9400 2600 0    47   ~ 0
P1
Text Label 9400 2700 0    47   ~ 0
P2
Text Label 9400 2800 0    47   ~ 0
P3
Text Label 9400 2900 0    47   ~ 0
P4
Text Label 9400 3000 0    47   ~ 0
P5
Text Label 9400 3100 0    47   ~ 0
P6
Text Label 9400 3200 0    47   ~ 0
P7
Text Label 9400 3450 0    47   ~ 0
P8
Text Label 9400 3550 0    47   ~ 0
P9
Text Label 9400 3650 0    47   ~ 0
P10
Text Label 9400 3750 0    47   ~ 0
P11/SCL
Entry Wire Line
	9400 4050 9300 3950
Entry Wire Line
	9400 3950 9300 3850
Entry Wire Line
	9400 4150 9300 4050
Entry Wire Line
	9400 3850 9300 3750
Text Label 9400 3850 0    47   ~ 0
P12
Text Label 9400 3950 0    47   ~ 0
P13
Text Label 9400 4050 0    47   ~ 0
P14
Text Label 9400 4150 0    47   ~ 0
P15
Entry Wire Line
	9400 2500 9300 2400
Text Label 9400 2500 0    47   ~ 0
P0/SDA
Entry Wire Line
	6900 1700 7000 1600
Text Label 6775 1700 0    40   ~ 0
RST
NoConn ~ 5300 2300
NoConn ~ 5300 1900
$Comp
L TCXO_DFAS11 X1
U 1 1 5A7DF9F6
P 6000 4800
F 0 "X1" H 6000 5100 50  0000 C CNN
F 1 "TCXO_DFAS11" H 6000 4800 50  0000 C CNN
F 2 "m-pad-2.1:m-pad-2.1-ASVK" H 6000 4800 50  0001 C CNN
F 3 "" H 6000 4800 50  0000 C CNN
	1    6000 4800
	1    0    0    -1  
$EndComp
$Comp
L R_Small R10
U 1 1 5A7E03D4
P 5250 4800
F 0 "R10" H 5150 4850 50  0000 L CNN
F 1 "1k" H 5150 4750 50  0000 L CNN
F 2 "m-pad-2.1:m-pad-2.1-0603" H 5250 4800 50  0001 C CNN
F 3 "" H 5250 4800 50  0000 C CNN
	1    5250 4800
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR04
U 1 1 5A7E09B5
P 6800 5000
F 0 "#PWR04" H 6800 4750 50  0001 C CNN
F 1 "GND" H 6800 4850 50  0000 C CNN
F 2 "" H 6800 5000 50  0000 C CNN
F 3 "" H 6800 5000 50  0000 C CNN
	1    6800 5000
	1    0    0    -1  
$EndComp
Entry Wire Line
	7000 4550 6900 4650
Text Label 6700 4650 0    47   ~ 0
CLK
$Comp
L CONN_01X03 P4
U 1 1 5A7E112A
P 9900 1750
F 0 "P4" H 9900 1950 50  0000 C CNN
F 1 "CONN_01X03" V 10000 1750 50  0000 C CNN
F 2 "Footprints:CONN_1x3" H 9900 1750 50  0001 C CNN
F 3 "" H 9900 1750 50  0000 C CNN
	1    9900 1750
	1    0    0    -1  
$EndComp
Entry Wire Line
	9400 1850 9300 1750
Text Label 9500 1850 2    47   ~ 0
TX
Entry Wire Line
	9400 1650 9300 1550
Entry Wire Line
	9400 1750 9300 1650
Text Label 9500 1750 2    47   ~ 0
GND
Text Label 9500 1650 2    47   ~ 0
RX
Text Label 5100 4650 2    47   ~ 0
+3.3V
$Comp
L +3.3V #PWR05
U 1 1 5A7E2C1D
P 5250 4500
F 0 "#PWR05" H 5250 4350 50  0001 C CNN
F 1 "+3.3V" H 5250 4640 50  0000 C CNN
F 2 "" H 5250 4500 50  0000 C CNN
F 3 "" H 5250 4500 50  0000 C CNN
	1    5250 4500
	1    0    0    -1  
$EndComp
$Comp
L Q_PMOS_DGS-RESCUE-6502mod Q1
U 1 1 5A7E2FC6
P 8400 4725
F 0 "Q1" V 8350 4925 50  0000 R CNN
F 1 "IRLML6401" V 8625 4700 50  0000 R CNN
F 2 "transistor:transistor-SOT23" H 8600 4825 50  0001 C CNN
F 3 "" H 8400 4725 50  0000 C CNN
	1    8400 4725
	0    -1   -1   0   
$EndComp
$Comp
L R_Small R11
U 1 1 5A7E3739
P 7650 4950
F 0 "R11" V 7600 5025 50  0000 L CNN
F 1 "150" V 7725 4825 50  0000 L CNN
F 2 "m-pad-2.1:m-pad-2.1-0603" H 7650 4950 50  0001 C CNN
F 3 "" H 7650 4950 50  0000 C CNN
	1    7650 4950
	0    -1   -1   0   
$EndComp
Entry Wire Line
	7000 4850 7100 4950
Text Label 7400 4950 2    47   ~ 0
PWRON
Entry Wire Line
	7000 4525 7100 4625
Text Label 7250 4625 2    47   ~ 0
VCC
Text Label 850  6050 0    47   ~ 0
TDO
Text Label 975  5950 2    47   ~ 0
TCK
Text Label 975  6150 2    47   ~ 0
TMS
Text Label 950  6350 2    47   ~ 0
TDI
Entry Wire Line
	1700 1750 1800 1650
Entry Wire Line
	1700 1650 1800 1550
Entry Wire Line
	1700 1950 1800 1850
Entry Wire Line
	1700 1850 1800 1750
Entry Wire Line
	1700 2150 1800 2050
Entry Wire Line
	1700 2050 1800 1950
Entry Wire Line
	1700 2350 1800 2250
Entry Wire Line
	1700 2250 1800 2150
Text Label 1600 1650 0    47   ~ 0
A0
Text Label 1600 1750 0    47   ~ 0
A1
Text Label 1600 1850 0    47   ~ 0
A2
Text Label 1600 1950 0    47   ~ 0
A3
Text Label 1600 2050 0    47   ~ 0
A4
Text Label 1600 2150 0    47   ~ 0
A5
Text Label 1600 2250 0    47   ~ 0
A6
Text Label 1600 2350 0    47   ~ 0
A7
Entry Wire Line
	1700 2550 1800 2450
Entry Wire Line
	1700 2450 1800 2350
Entry Wire Line
	1700 2750 1800 2650
Entry Wire Line
	1700 2650 1800 2550
Text Label 1600 2450 0    47   ~ 0
A8
Text Label 1600 2550 0    47   ~ 0
A9
Text Label 1550 2650 0    47   ~ 0
A10
Text Label 1550 2750 0    47   ~ 0
A11
Entry Wire Line
	1700 1550 1800 1450
Text Label 1550 1550 0    47   ~ 0
VCC
Entry Wire Line
	1700 2850 1800 2750
Text Label 1550 2850 0    47   ~ 0
A12
Entry Wire Line
	1700 3250 1800 3150
Entry Wire Line
	1700 3150 1800 3050
Entry Wire Line
	1700 3450 1800 3350
Entry Wire Line
	1700 3350 1800 3250
Entry Wire Line
	1700 3650 1800 3550
Entry Wire Line
	1700 3550 1800 3450
Entry Wire Line
	1700 3850 1800 3750
Entry Wire Line
	1700 3750 1800 3650
Text Label 1550 3150 0    47   ~ 0
A13
Text Label 1550 3250 0    47   ~ 0
A14
Text Label 1550 3350 0    47   ~ 0
A15
Text Label 1600 3450 0    47   ~ 0
D0
Text Label 1600 3550 0    47   ~ 0
D1
Text Label 1600 3650 0    47   ~ 0
D2
Text Label 1600 3750 0    47   ~ 0
D3
Text Label 1600 3850 0    47   ~ 0
D4
Entry Wire Line
	1700 4050 1800 3950
Entry Wire Line
	1700 3950 1800 3850
Entry Wire Line
	1700 4250 1800 4150
Entry Wire Line
	1700 4150 1800 4050
Text Label 1600 3950 0    47   ~ 0
D5
Text Label 1600 4050 0    47   ~ 0
D6
Text Label 1600 4150 0    47   ~ 0
D7
Text Label 1450 4250 0    47   ~ 0
CPUCLK
Entry Wire Line
	1700 3050 1800 2950
Text Label 1550 3050 0    47   ~ 0
GND
Entry Wire Line
	1700 4350 1800 4250
Text Label 1500 4350 0    47   ~ 0
RST
$Comp
L CONN_01X07 P7
U 1 1 5A8E84DE
P 1200 1850
F 0 "P7" H 1200 2250 50  0000 C CNN
F 1 "CONN_01X07" V 1300 1850 50  0000 C CNN
F 2 "Footprints:CONN_1x7" H 1200 1850 50  0001 C CNN
F 3 "" H 1200 1850 50  0000 C CNN
	1    1200 1850
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X07 P5
U 1 1 5A8E8620
P 800 2550
F 0 "P5" H 800 2950 50  0000 C CNN
F 1 "CONN_01X07" V 900 2550 50  0000 C CNN
F 2 "Footprints:CONN_1x7" H 800 2550 50  0001 C CNN
F 3 "" H 800 2550 50  0000 C CNN
	1    800  2550
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X07 P8
U 1 1 5A8E8DEA
P 1200 3350
F 0 "P8" H 1200 3750 50  0000 C CNN
F 1 "CONN_01X07" V 1300 3350 50  0000 C CNN
F 2 "Footprints:CONN_1x7" H 1200 3350 50  0001 C CNN
F 3 "" H 1200 3350 50  0000 C CNN
	1    1200 3350
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X07 P6
U 1 1 5A8E8E8F
P 800 4050
F 0 "P6" H 800 4450 50  0000 C CNN
F 1 "CONN_01X07" V 900 4050 50  0000 C CNN
F 2 "Footprints:CONN_1x7" H 800 4050 50  0001 C CNN
F 3 "" H 800 4050 50  0000 C CNN
	1    800  4050
	-1   0    0    1   
$EndComp
$Comp
L R_Small R12
U 1 1 5A8E9FC9
P 2150 900
F 0 "R12" V 2150 850 39  0000 L CNN
F 1 "10k" V 2175 975 35  0000 L CNN
F 2 "m-pad-2.1:m-pad-2.1-0603" H 2150 900 50  0001 C CNN
F 3 "" H 2150 900 50  0000 C CNN
	1    2150 900 
	-1   0    0    1   
$EndComp
Entry Wire Line
	2250 1300 2150 1400
Entry Wire Line
	2150 1300 2050 1400
Entry Wire Line
	2450 1300 2350 1400
Entry Wire Line
	2350 1300 2250 1400
Entry Wire Line
	2650 1300 2550 1400
Entry Wire Line
	2550 1300 2450 1400
Text Label 2150 1200 3    47   ~ 0
A0
Text Label 2250 1200 3    47   ~ 0
A1
Text Label 2350 1200 3    47   ~ 0
A2
Text Label 2450 1200 3    47   ~ 0
A3
Text Label 2550 1200 3    47   ~ 0
A4
Text Label 2650 1200 3    47   ~ 0
A5
Entry Wire Line
	2850 1300 2750 1400
Entry Wire Line
	2750 1300 2650 1400
Entry Wire Line
	3050 1300 2950 1400
Entry Wire Line
	2950 1300 2850 1400
Entry Wire Line
	3250 1300 3150 1400
Entry Wire Line
	3150 1300 3050 1400
Text Label 2750 1200 3    47   ~ 0
A6
Text Label 2850 1200 3    47   ~ 0
A7
Text Label 2950 1200 3    47   ~ 0
A8
Text Label 3050 1200 3    47   ~ 0
A9
Text Label 3150 1150 3    47   ~ 0
A10
Text Label 3250 1150 3    47   ~ 0
A11
Entry Wire Line
	3450 1300 3350 1400
Entry Wire Line
	3350 1300 3250 1400
Entry Wire Line
	3650 1300 3550 1400
Entry Wire Line
	3550 1300 3450 1400
Entry Wire Line
	3850 1300 3750 1400
Entry Wire Line
	3750 1300 3650 1400
Text Label 3350 1150 3    47   ~ 0
A12
Text Label 3450 1150 3    47   ~ 0
A13
Text Label 3550 1150 3    47   ~ 0
A14
Text Label 3650 1150 3    47   ~ 0
A15
Text Label 3750 1200 3    47   ~ 0
D0
Text Label 3850 1200 3    47   ~ 0
D1
Entry Wire Line
	4050 1300 3950 1400
Entry Wire Line
	3950 1300 3850 1400
Text Label 3950 1200 3    47   ~ 0
D2
Text Label 4050 1200 3    47   ~ 0
D3
Entry Wire Line
	4250 1300 4150 1400
Entry Wire Line
	4150 1300 4050 1400
Text Label 4150 1200 3    47   ~ 0
D4
Text Label 4250 1200 3    47   ~ 0
D5
Entry Wire Line
	4450 1300 4350 1400
Entry Wire Line
	4350 1300 4250 1400
Text Label 4350 1200 3    47   ~ 0
D6
Text Label 4450 1200 3    47   ~ 0
D7
$Comp
L R_Small R13
U 1 1 5A8EB027
P 2250 900
F 0 "R13" V 2250 825 50  0000 L CNN
F 1 "10k" V 2275 975 35  0000 L CNN
F 2 "m-pad-2.1:m-pad-2.1-0603" H 2250 900 50  0001 C CNN
F 3 "" H 2250 900 50  0000 C CNN
	1    2250 900 
	-1   0    0    1   
$EndComp
$Comp
L R_Small R14
U 1 1 5A8EB0B9
P 2350 900
F 0 "R14" V 2350 825 50  0000 L CNN
F 1 "10k" V 2375 975 35  0000 L CNN
F 2 "m-pad-2.1:m-pad-2.1-0603" H 2350 900 50  0001 C CNN
F 3 "" H 2350 900 50  0000 C CNN
	1    2350 900 
	-1   0    0    1   
$EndComp
$Comp
L R_Small R15
U 1 1 5A8EB0BF
P 2450 900
F 0 "R15" V 2450 825 50  0000 L CNN
F 1 "10k" V 2475 975 35  0000 L CNN
F 2 "m-pad-2.1:m-pad-2.1-0603" H 2450 900 50  0001 C CNN
F 3 "" H 2450 900 50  0000 C CNN
	1    2450 900 
	-1   0    0    1   
$EndComp
$Comp
L R_Small R16
U 1 1 5A8EB145
P 2550 900
F 0 "R16" V 2550 825 50  0000 L CNN
F 1 "10k" V 2575 975 35  0000 L CNN
F 2 "m-pad-2.1:m-pad-2.1-0603" H 2550 900 50  0001 C CNN
F 3 "" H 2550 900 50  0000 C CNN
	1    2550 900 
	-1   0    0    1   
$EndComp
$Comp
L R_Small R17
U 1 1 5A8EB14B
P 2650 900
F 0 "R17" V 2650 850 39  0000 L CNN
F 1 "10k" V 2675 975 35  0000 L CNN
F 2 "m-pad-2.1:m-pad-2.1-0603" H 2650 900 50  0001 C CNN
F 3 "" H 2650 900 50  0000 C CNN
	1    2650 900 
	-1   0    0    1   
$EndComp
$Comp
L R_Small R18
U 1 1 5A8EB151
P 2750 900
F 0 "R18" V 2750 850 35  0000 L CNN
F 1 "10k" V 2775 975 35  0000 L CNN
F 2 "m-pad-2.1:m-pad-2.1-0603" H 2750 900 50  0001 C CNN
F 3 "" H 2750 900 50  0000 C CNN
	1    2750 900 
	-1   0    0    1   
$EndComp
$Comp
L R_Small R19
U 1 1 5A8EB157
P 2850 900
F 0 "R19" V 2850 850 39  0000 L CNN
F 1 "10k" V 2875 975 35  0000 L CNN
F 2 "m-pad-2.1:m-pad-2.1-0603" H 2850 900 50  0001 C CNN
F 3 "" H 2850 900 50  0000 C CNN
	1    2850 900 
	-1   0    0    1   
$EndComp
$Comp
L R_Small R20
U 1 1 5A8EB2DB
P 2950 900
F 0 "R20" V 2950 850 39  0000 L CNN
F 1 "10k" V 2975 975 35  0000 L CNN
F 2 "m-pad-2.1:m-pad-2.1-0603" H 2950 900 50  0001 C CNN
F 3 "" H 2950 900 50  0000 C CNN
	1    2950 900 
	-1   0    0    1   
$EndComp
$Comp
L R_Small R21
U 1 1 5A8EB2E1
P 3050 900
F 0 "R21" V 3050 850 39  0000 L CNN
F 1 "10k" V 3075 975 35  0000 L CNN
F 2 "m-pad-2.1:m-pad-2.1-0603" H 3050 900 50  0001 C CNN
F 3 "" H 3050 900 50  0000 C CNN
	1    3050 900 
	-1   0    0    1   
$EndComp
$Comp
L R_Small R22
U 1 1 5A8EB2E7
P 3150 900
F 0 "R22" V 3150 850 39  0000 L CNN
F 1 "10k" V 3175 975 35  0000 L CNN
F 2 "m-pad-2.1:m-pad-2.1-0603" H 3150 900 50  0001 C CNN
F 3 "" H 3150 900 50  0000 C CNN
	1    3150 900 
	-1   0    0    1   
$EndComp
$Comp
L R_Small R23
U 1 1 5A8EB2ED
P 3250 900
F 0 "R23" V 3250 825 50  0000 L CNN
F 1 "10k" V 3275 975 35  0000 L CNN
F 2 "m-pad-2.1:m-pad-2.1-0603" H 3250 900 50  0001 C CNN
F 3 "" H 3250 900 50  0000 C CNN
	1    3250 900 
	-1   0    0    1   
$EndComp
$Comp
L R_Small R24
U 1 1 5A8EB2F3
P 3350 900
F 0 "R24" V 3350 825 50  0000 L CNN
F 1 "10k" V 3375 975 35  0000 L CNN
F 2 "m-pad-2.1:m-pad-2.1-0603" H 3350 900 50  0001 C CNN
F 3 "" H 3350 900 50  0000 C CNN
	1    3350 900 
	-1   0    0    1   
$EndComp
$Comp
L R_Small R25
U 1 1 5A8EB2F9
P 3450 900
F 0 "R25" V 3450 825 50  0000 L CNN
F 1 "10k" V 3475 975 35  0000 L CNN
F 2 "m-pad-2.1:m-pad-2.1-0603" H 3450 900 50  0001 C CNN
F 3 "" H 3450 900 50  0000 C CNN
	1    3450 900 
	-1   0    0    1   
$EndComp
$Comp
L R_Small R26
U 1 1 5A8EB2FF
P 3550 900
F 0 "R26" V 3550 825 50  0000 L CNN
F 1 "10k" V 3575 975 35  0000 L CNN
F 2 "m-pad-2.1:m-pad-2.1-0603" H 3550 900 50  0001 C CNN
F 3 "" H 3550 900 50  0000 C CNN
	1    3550 900 
	-1   0    0    1   
$EndComp
$Comp
L R_Small R27
U 1 1 5A8EB305
P 3650 900
F 0 "R27" V 3625 850 39  0000 L CNN
F 1 "10k" V 3675 975 39  0000 L CNN
F 2 "m-pad-2.1:m-pad-2.1-0603" H 3650 900 50  0001 C CNN
F 3 "" H 3650 900 50  0000 C CNN
	1    3650 900 
	-1   0    0    1   
$EndComp
$Comp
L R_Small R28
U 1 1 5A8EC106
P 3750 900
F 0 "R28" V 3750 850 39  0000 L CNN
F 1 "10k" V 3775 1000 31  0000 L CNN
F 2 "m-pad-2.1:m-pad-2.1-0603" H 3750 900 50  0001 C CNN
F 3 "" H 3750 900 50  0000 C CNN
	1    3750 900 
	-1   0    0    1   
$EndComp
$Comp
L R_Small R29
U 1 1 5A8EC10C
P 3850 900
F 0 "R29" V 3850 850 39  0000 L CNN
F 1 "10k" V 3875 1000 31  0000 L CNN
F 2 "m-pad-2.1:m-pad-2.1-0603" H 3850 900 50  0001 C CNN
F 3 "" H 3850 900 50  0000 C CNN
	1    3850 900 
	-1   0    0    1   
$EndComp
$Comp
L R_Small R30
U 1 1 5A8EC112
P 3950 900
F 0 "R30" V 3950 850 39  0000 L CNN
F 1 "10k" V 3975 1000 31  0000 L CNN
F 2 "m-pad-2.1:m-pad-2.1-0603" H 3950 900 50  0001 C CNN
F 3 "" H 3950 900 50  0000 C CNN
	1    3950 900 
	-1   0    0    1   
$EndComp
$Comp
L R_Small R31
U 1 1 5A8EC118
P 4050 900
F 0 "R31" V 4050 850 39  0000 L CNN
F 1 "10k" V 4075 1000 31  0000 L CNN
F 2 "m-pad-2.1:m-pad-2.1-0603" H 4050 900 50  0001 C CNN
F 3 "" H 4050 900 50  0000 C CNN
	1    4050 900 
	-1   0    0    1   
$EndComp
$Comp
L R_Small R32
U 1 1 5A8EC11E
P 4150 900
F 0 "R32" V 4150 850 39  0000 L CNN
F 1 "10k" V 4175 1000 31  0000 L CNN
F 2 "m-pad-2.1:m-pad-2.1-0603" H 4150 900 50  0001 C CNN
F 3 "" H 4150 900 50  0000 C CNN
	1    4150 900 
	-1   0    0    1   
$EndComp
$Comp
L R_Small R33
U 1 1 5A8EC124
P 4250 900
F 0 "R33" V 4250 850 39  0000 L CNN
F 1 "10k" V 4275 1000 31  0000 L CNN
F 2 "m-pad-2.1:m-pad-2.1-0603" H 4250 900 50  0001 C CNN
F 3 "" H 4250 900 50  0000 C CNN
	1    4250 900 
	-1   0    0    1   
$EndComp
$Comp
L R_Small R34
U 1 1 5A8EC12A
P 4350 900
F 0 "R34" V 4350 850 39  0000 L CNN
F 1 "10k" V 4375 1000 31  0000 L CNN
F 2 "m-pad-2.1:m-pad-2.1-0603" H 4350 900 50  0001 C CNN
F 3 "" H 4350 900 50  0000 C CNN
	1    4350 900 
	-1   0    0    1   
$EndComp
$Comp
L R_Small R35
U 1 1 5A8EC130
P 4450 900
F 0 "R35" V 4450 850 39  0000 L CNN
F 1 "10k" V 4475 1000 31  0000 L CNN
F 2 "m-pad-2.1:m-pad-2.1-0603" H 4450 900 50  0001 C CNN
F 3 "" H 4450 900 50  0000 C CNN
	1    4450 900 
	-1   0    0    1   
$EndComp
$Comp
L LM317_SOT223 U4
U 1 1 5A8E9687
P 7975 5425
F 0 "U4" H 7975 5725 50  0000 C CNN
F 1 "LM317_3.3" H 7800 5450 50  0000 L CNN
F 2 "m-pad-2.1:m-pad-2.1-SOT223" H 7975 5425 50  0001 C CNN
F 3 "" H 7975 5425 50  0000 C CNN
	1    7975 5425
	-1   0    0    -1  
$EndComp
Entry Wire Line
	7000 5175 7100 5275
$Comp
L D_Schottky D1
U 1 1 5A8EA435
P 10225 5275
F 0 "D1" H 10325 5325 50  0000 C CNN
F 1 "D_Schottky" H 10250 5400 50  0000 C CNN
F 2 "m-pad-2.1:m-pad-2.1-1206P" H 10225 5275 50  0001 C CNN
F 3 "" H 10225 5275 50  0000 C CNN
	1    10225 5275
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P9
U 1 1 5A8EA748
P 10725 5325
F 0 "P9" H 10725 5475 50  0000 C CNN
F 1 "CONN_01X02" V 10825 5325 50  0000 C CNN
F 2 "connect:connect-CLAMP-02" H 10725 5325 50  0001 C CNN
F 3 "" H 10725 5325 50  0000 C CNN
	1    10725 5325
	1    0    0    1   
$EndComp
$Comp
L CP C3
U 1 1 5A8EBB8E
P 8475 5550
F 0 "C3" H 8500 5650 50  0000 L CNN
F 1 "10uF" H 8500 5450 50  0000 L CNN
F 2 "discret:C1V5" H 8513 5400 50  0001 C CNN
F 3 "" H 8475 5550 50  0000 C CNN
	1    8475 5550
	1    0    0    -1  
$EndComp
$Comp
L C_Small C1
U 1 1 5A8EC4B2
P 7500 5500
F 0 "C1" H 7510 5570 50  0000 L CNN
F 1 "0.2" H 7510 5420 50  0000 L CNN
F 2 "m-pad-2.1:m-pad-2.1-0603" H 7500 5500 50  0001 C CNN
F 3 "" H 7500 5500 50  0000 C CNN
	1    7500 5500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 5A8E9BC0
P 7975 6000
F 0 "#PWR06" H 7975 5750 50  0001 C CNN
F 1 "GND" H 7975 5850 50  0000 C CNN
F 2 "" H 7975 6000 50  0000 C CNN
F 3 "" H 7975 6000 50  0000 C CNN
	1    7975 6000
	1    0    0    -1  
$EndComp
$Comp
L C_Small C5
U 1 1 5A8F09F6
P 8825 5550
F 0 "C5" H 8835 5620 50  0000 L CNN
F 1 "0.2" H 8835 5470 50  0000 L CNN
F 2 "m-pad-2.1:m-pad-2.1-0603P" H 8825 5550 50  0001 C CNN
F 3 "" H 8825 5550 50  0000 C CNN
	1    8825 5550
	-1   0    0    1   
$EndComp
NoConn ~ 1050 6250
Entry Wire Line
	5975 1400 6075 1300
$Comp
L C_Small C6
U 1 1 5A8F937A
P 6450 700
F 0 "C6" H 6460 770 50  0000 L CNN
F 1 "0.1" H 6460 620 50  0000 L CNN
F 2 "m-pad-2.1:m-pad-2.1-0603P" H 6450 700 50  0001 C CNN
F 3 "" H 6450 700 50  0000 C CNN
	1    6450 700 
	0    1    1    0   
$EndComp
Text Label 6075 1275 2    47   ~ 0
VCC
Entry Wire Line
	7150 1400 7250 1300
$Comp
L C_Small C7
U 1 1 5A8FA6E4
P 7250 1100
F 0 "C7" H 7260 1170 50  0000 L CNN
F 1 "0.1" H 7260 1020 50  0000 L CNN
F 2 "m-pad-2.1:m-pad-2.1-0603P" H 7250 1100 50  0001 C CNN
F 3 "" H 7250 1100 50  0000 C CNN
	1    7250 1100
	1    0    0    -1  
$EndComp
Text Label 7250 1300 2    47   ~ 0
+5.5V
Entry Wire Line
	7700 1400 7800 1300
$Comp
L C_Small C8
U 1 1 5A8FAE76
P 7800 1100
F 0 "C8" H 7810 1170 50  0000 L CNN
F 1 "0.1" H 7810 1020 50  0000 L CNN
F 2 "m-pad-2.1:m-pad-2.1-0603P" H 7800 1100 50  0001 C CNN
F 3 "" H 7800 1100 50  0000 C CNN
	1    7800 1100
	1    0    0    -1  
$EndComp
Text Label 7800 1300 2    47   ~ 0
+3.3V
Entry Wire Line
	8000 1400 8100 1300
$Comp
L C_Small C9
U 1 1 5A8FB01A
P 8100 1100
F 0 "C9" H 8110 1170 50  0000 L CNN
F 1 "0.1" H 8110 1020 50  0000 L CNN
F 2 "m-pad-2.1:m-pad-2.1-0603P" H 8100 1100 50  0001 C CNN
F 3 "" H 8100 1100 50  0000 C CNN
	1    8100 1100
	1    0    0    -1  
$EndComp
Text Label 8100 1300 2    47   ~ 0
+3.3V
$Comp
L PWR_FLAG #FLG07
U 1 1 5A8FE225
P 9400 5750
F 0 "#FLG07" H 9400 5845 50  0001 C CNN
F 1 "PWR_FLAG" H 9525 5875 50  0000 C CNN
F 2 "" H 9400 5750 50  0000 C CNN
F 3 "" H 9400 5750 50  0000 C CNN
	1    9400 5750
	1    0    0    -1  
$EndComp
Text Label 7125 5275 0    47   ~ 0
+3.3V
$Comp
L GND #PWR08
U 1 1 5A9514B2
P 9000 700
F 0 "#PWR08" H 9000 450 50  0001 C CNN
F 1 "GND" H 9000 550 50  0000 C CNN
F 2 "" H 9000 700 50  0000 C CNN
F 3 "" H 9000 700 50  0000 C CNN
	1    9000 700 
	0    -1   -1   0   
$EndComp
Entry Wire Line
	5525 1300 5425 1400
Text Label 5525 1025 3    47   ~ 0
CPUCLK
$Comp
L R_Small R36
U 1 1 5A9BB0D5
P 5525 900
F 0 "R36" H 5425 950 50  0000 L CNN
F 1 "10k" H 5425 850 50  0000 L CNN
F 2 "m-pad-2.1:m-pad-2.1-0603" H 5525 900 50  0001 C CNN
F 3 "" H 5525 900 50  0000 C CNN
	1    5525 900 
	-1   0    0    1   
$EndComp
$Comp
L R_Small R37
U 1 1 5A9BBF75
P 8675 4800
F 0 "R37" H 8750 4850 50  0000 L CNN
F 1 "1.5k" H 8750 4750 50  0000 L CNN
F 2 "m-pad-2.1:m-pad-2.1-0603" H 8675 4800 50  0001 C CNN
F 3 "" H 8675 4800 50  0000 C CNN
	1    8675 4800
	1    0    0    -1  
$EndComp
Entry Wire Line
	1900 4100 1800 4000
Text Label 2050 4100 2    47   ~ 0
IRQ
Entry Wire Line
	5325 1300 5225 1400
Text Label 5325 1175 3    47   ~ 0
IRQ
$Comp
L R_Small R6
U 1 1 5A9C415D
P 5325 900
F 0 "R6" H 5225 950 50  0000 L CNN
F 1 "4,7k" H 5225 850 50  0000 L CNN
F 2 "m-pad-2.1:m-pad-2.1-0603" H 5325 900 50  0001 C CNN
F 3 "" H 5325 900 50  0000 C CNN
	1    5325 900 
	-1   0    0    1   
$EndComp
Entry Wire Line
	7000 4025 7100 4125
Text Label 7225 4125 2    47   ~ 0
RST
$Comp
L R_Small R38
U 1 1 5A9C4FEB
P 7400 4125
F 0 "R38" V 7300 4100 40  0000 L CNN
F 1 "1k" V 7475 4100 50  0000 L CNN
F 2 "m-pad-2.1:m-pad-2.1-0603" H 7400 4125 50  0001 C CNN
F 3 "" H 7400 4125 50  0000 C CNN
	1    7400 4125
	0    -1   -1   0   
$EndComp
$Comp
L C_Small C10
U 1 1 5A9C62D0
P 7700 4300
F 0 "C10" H 7710 4370 50  0000 L CNN
F 1 "0.33" H 7710 4220 50  0000 L CNN
F 2 "m-pad-2.1:m-pad-2.1-0603" H 7700 4300 50  0001 C CNN
F 3 "" H 7700 4300 50  0000 C CNN
	1    7700 4300
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR09
U 1 1 5A9C6646
P 7700 4450
F 0 "#PWR09" H 7700 4200 50  0001 C CNN
F 1 "GND" H 7825 4425 50  0000 C CNN
F 2 "" H 7700 4450 50  0000 C CNN
F 3 "" H 7700 4450 50  0000 C CNN
	1    7700 4450
	1    0    0    -1  
$EndComp
$Comp
L R_Small R39
U 1 1 5A9C68C4
P 7925 4125
F 0 "R39" V 7850 4100 50  0000 L CNN
F 1 "20k" V 8000 4075 50  0000 L CNN
F 2 "m-pad-2.1:m-pad-2.1-0603" H 7925 4125 50  0001 C CNN
F 3 "" H 7925 4125 50  0000 C CNN
	1    7925 4125
	0    -1   -1   0   
$EndComp
NoConn ~ 1550 6150
NoConn ~ 1550 6250
$Comp
L CP C2
U 1 1 5A9CE82F
P 7250 5500
F 0 "C2" H 7275 5600 50  0000 L CNN
F 1 "22uF" H 7275 5400 50  0000 L CNN
F 2 "discret:C1V5" H 7288 5350 50  0001 C CNN
F 3 "" H 7250 5500 50  0000 C CNN
	1    7250 5500
	1    0    0    -1  
$EndComp
Entry Wire Line
	7000 4850 6900 4950
Entry Wire Line
	8300 1400 8400 1300
$Comp
L C_Small C12
U 1 1 5A9CCB86
P 8400 1100
F 0 "C12" H 8410 1170 50  0000 L CNN
F 1 "0.1" H 8410 1020 50  0000 L CNN
F 2 "m-pad-2.1:m-pad-2.1-0603P" H 8400 1100 50  0001 C CNN
F 3 "" H 8400 1100 50  0000 C CNN
	1    8400 1100
	1    0    0    -1  
$EndComp
Entry Wire Line
	8550 1400 8650 1300
$Comp
L C_Small C13
U 1 1 5A9CCB8E
P 8650 1100
F 0 "C13" H 8660 1170 50  0000 L CNN
F 1 "0.1" H 8660 1020 50  0000 L CNN
F 2 "m-pad-2.1:m-pad-2.1-0603P" H 8650 1100 50  0001 C CNN
F 3 "" H 8650 1100 50  0000 C CNN
	1    8650 1100
	1    0    0    -1  
$EndComp
Text Label 8650 1300 2    47   ~ 0
+3.3V
Entry Wire Line
	8800 1400 8900 1300
$Comp
L C_Small C14
U 1 1 5A9CCB96
P 8900 1100
F 0 "C14" H 8910 1170 50  0000 L CNN
F 1 "0.1" H 8910 1020 50  0000 L CNN
F 2 "m-pad-2.1:m-pad-2.1-0603P" H 8900 1100 50  0001 C CNN
F 3 "" H 8900 1100 50  0000 C CNN
	1    8900 1100
	1    0    0    -1  
$EndComp
Text Label 8900 1300 2    47   ~ 0
+3.3V
Text Label 8400 1300 2    47   ~ 0
+3.3V
$Comp
L Led_Small-RESCUE-6502mod D3
U 1 1 5A9E7759
P 10525 4625
F 0 "D3" H 10475 4750 50  0000 L CNN
F 1 "Led" H 10350 4525 50  0000 L CNN
F 2 "led:LED-0805" V 10525 4625 50  0000 C CNN
F 3 "" V 10525 4625 50  0000 C CNN
	1    10525 4625
	-1   0    0    1   
$EndComp
$Comp
L R_Small R41
U 1 1 5A9E7BDC
P 10175 4625
F 0 "R41" V 10125 4700 50  0000 L CNN
F 1 "150" V 10250 4500 50  0000 L CNN
F 2 "m-pad-2.1:m-pad-2.1-0603" H 10175 4625 50  0001 C CNN
F 3 "" H 10175 4625 50  0000 C CNN
	1    10175 4625
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR010
U 1 1 5A9E958E
P 10725 4625
F 0 "#PWR010" H 10725 4375 50  0001 C CNN
F 1 "GND" H 10725 4475 50  0000 C CNN
F 2 "" H 10725 4625 50  0000 C CNN
F 3 "" H 10725 4625 50  0000 C CNN
	1    10725 4625
	0    -1   -1   0   
$EndComp
$Comp
L Led_Small-RESCUE-6502mod D2
U 1 1 5A9EAA9A
P 8825 4125
F 0 "D2" H 8775 4250 50  0000 L CNN
F 1 "Led" H 8650 4025 50  0000 L CNN
F 2 "led:LED-0805" V 8825 4125 50  0001 C CNN
F 3 "" V 8825 4125 50  0000 C CNN
	1    8825 4125
	-1   0    0    1   
$EndComp
$Comp
L R_Small R40
U 1 1 5A9EAAA0
P 8475 4125
F 0 "R40" V 8425 4200 50  0000 L CNN
F 1 "150" V 8550 4000 50  0000 L CNN
F 2 "m-pad-2.1:m-pad-2.1-0603" H 8475 4125 50  0001 C CNN
F 3 "" H 8475 4125 50  0000 C CNN
	1    8475 4125
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR011
U 1 1 5A9EAAA7
P 9025 4125
F 0 "#PWR011" H 9025 3875 50  0001 C CNN
F 1 "GND" H 9025 3975 50  0000 C CNN
F 2 "" H 9025 4125 50  0000 C CNN
F 3 "" H 9025 4125 50  0000 C CNN
	1    9025 4125
	0    -1   -1   0   
$EndComp
Entry Wire Line
	7000 4950 7100 5050
Text Label 7350 5050 2    47   ~ 0
+5.5V
Entry Wire Line
	8325 1500 8425 1400
Text Label 8300 1500 2    47   ~ 0
+5.5V
$Comp
L GND #PWR012
U 1 1 5A9F1023
P 8200 4000
F 0 "#PWR012" H 8200 3750 50  0001 C CNN
F 1 "GND" H 8325 3975 50  0000 C CNN
F 2 "" H 8200 4000 50  0000 C CNN
F 3 "" H 8200 4000 50  0000 C CNN
	1    8200 4000
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG013
U 1 1 5A9F2C89
P 9900 4475
F 0 "#FLG013" H 9900 4570 50  0001 C CNN
F 1 "PWR_FLAG" H 9725 4625 50  0000 C CNN
F 2 "" H 9900 4475 50  0000 C CNN
F 3 "" H 9900 4475 50  0000 C CNN
	1    9900 4475
	1    0    0    -1  
$EndComp
Wire Bus Line
	7000 1400 7000 5175
Wire Wire Line
	6900 2400 6600 2400
Wire Wire Line
	6900 2500 6600 2500
Wire Wire Line
	6900 2600 6600 2600
Wire Wire Line
	6900 2700 6600 2700
Wire Wire Line
	6900 2800 6600 2800
Wire Wire Line
	6900 2900 6600 2900
Wire Wire Line
	6600 3000 6900 3000
Wire Wire Line
	6900 3100 6600 3100
Wire Bus Line
	9300 1400 9300 4050
Wire Wire Line
	9200 1700 8900 1700
Wire Wire Line
	9200 1800 8900 1800
Wire Wire Line
	9200 1900 8900 1900
Wire Wire Line
	9200 2000 8900 2000
Wire Wire Line
	9200 2100 8900 2100
Wire Wire Line
	9200 2200 8900 2200
Wire Wire Line
	8900 2300 9200 2300
Wire Wire Line
	9200 2400 8900 2400
Wire Wire Line
	6900 3200 6600 3200
Wire Wire Line
	6900 3300 6600 3300
Wire Wire Line
	6900 3400 6600 3400
Wire Wire Line
	6900 3500 6600 3500
Wire Wire Line
	5000 2500 5300 2500
Wire Wire Line
	5000 2600 5300 2600
Wire Wire Line
	5000 2700 5300 2700
Wire Wire Line
	5000 2800 5300 2800
Wire Wire Line
	5000 2900 5300 2900
Wire Wire Line
	5000 3000 5300 3000
Wire Wire Line
	5300 3100 5000 3100
Wire Wire Line
	5000 3200 5300 3200
Wire Wire Line
	5000 3300 5300 3300
Wire Wire Line
	5000 3400 5300 3400
Wire Wire Line
	5000 3500 5300 3500
Wire Wire Line
	5000 3600 5300 3600
Wire Bus Line
	4900 1400 4900 4550
Wire Bus Line
	1800 1400 9300 1400
Wire Wire Line
	7100 1700 7500 1700
Wire Wire Line
	7100 1800 7500 1800
Wire Wire Line
	7100 1900 7500 1900
Wire Wire Line
	7100 2000 7500 2000
Wire Wire Line
	7100 2100 7500 2100
Wire Wire Line
	7100 2200 7500 2200
Wire Wire Line
	7100 2300 7500 2300
Wire Wire Line
	7100 2400 7500 2400
Wire Wire Line
	7100 2500 7500 2500
Wire Wire Line
	7100 2600 7500 2600
Wire Wire Line
	7100 2700 7500 2700
Wire Wire Line
	7100 2800 7500 2800
Wire Wire Line
	6900 2300 6600 2300
Wire Wire Line
	7100 3800 7500 3800
Wire Wire Line
	7100 3500 7500 3500
Wire Wire Line
	7100 3700 7500 3700
Wire Wire Line
	7100 2900 7500 2900
Wire Wire Line
	7100 3000 7500 3000
Wire Wire Line
	7100 3100 7500 3100
Wire Wire Line
	7100 3200 7500 3200
Wire Wire Line
	6900 1800 6600 1800
Wire Wire Line
	6900 2000 6600 2000
Wire Wire Line
	4800 2150 4500 2150
Wire Wire Line
	4800 2250 4500 2250
Wire Wire Line
	4800 2350 4500 2350
Wire Wire Line
	4800 2450 4500 2450
Wire Wire Line
	4800 2550 4500 2550
Wire Wire Line
	4800 2650 4500 2650
Wire Wire Line
	4500 2750 4800 2750
Wire Wire Line
	4800 2850 4500 2850
Wire Wire Line
	4800 2950 4500 2950
Wire Wire Line
	4800 3050 4500 3050
Wire Wire Line
	4800 3150 4500 3150
Wire Wire Line
	4800 3350 4500 3350
Wire Wire Line
	4800 2050 4500 2050
Wire Wire Line
	4800 3550 4500 3550
Wire Wire Line
	4800 3650 4500 3650
Wire Wire Line
	4800 3750 4500 3750
Wire Wire Line
	4800 3850 4500 3850
Wire Wire Line
	4800 3950 4500 3950
Wire Wire Line
	4800 4050 4500 4050
Wire Wire Line
	4500 4150 4800 4150
Wire Wire Line
	4800 4250 4500 4250
Wire Wire Line
	4800 4350 4500 4350
Wire Wire Line
	4800 4450 4500 4450
Wire Wire Line
	4800 4550 4500 4550
Wire Wire Line
	4800 3450 4500 3450
Wire Wire Line
	4800 4650 4500 4650
Wire Wire Line
	1900 2150 2200 2150
Wire Wire Line
	1900 2250 2200 2250
Wire Wire Line
	1900 2350 2200 2350
Wire Wire Line
	1900 2450 2200 2450
Wire Wire Line
	1900 2550 2200 2550
Wire Wire Line
	1900 2650 2200 2650
Wire Wire Line
	2200 2750 1900 2750
Wire Wire Line
	1900 2850 2200 2850
Wire Wire Line
	1900 2950 2200 2950
Wire Wire Line
	1900 3050 2200 3050
Wire Wire Line
	1900 3150 2200 3150
Wire Wire Line
	1900 3250 2200 3250
Wire Wire Line
	1900 2050 2200 2050
Wire Wire Line
	1900 3500 2200 3500
Wire Wire Line
	1900 3600 2200 3600
Wire Wire Line
	1900 3700 2200 3700
Wire Wire Line
	1900 3800 2200 3800
Wire Wire Line
	1900 3900 2200 3900
Wire Wire Line
	1900 4000 2200 4000
Wire Wire Line
	1900 4200 2200 4200
Wire Wire Line
	1900 4300 2200 4300
Wire Wire Line
	1900 4400 2200 4400
Wire Wire Line
	1900 4500 2200 4500
Wire Wire Line
	1900 3400 2200 3400
Wire Bus Line
	1800 1400 1800 4400
Wire Wire Line
	7500 3600 7450 3600
Wire Wire Line
	7250 3600 7100 3600
Wire Wire Line
	6900 3600 6600 3600
Wire Wire Line
	5000 1700 5300 1700
Wire Wire Line
	5000 2400 5300 2400
Wire Wire Line
	6900 1900 6850 1900
Wire Wire Line
	6650 1900 6600 1900
Wire Wire Line
	5000 2000 5300 2000
Wire Wire Line
	5300 2200 5250 2200
Wire Wire Line
	5000 2200 5050 2200
Wire Wire Line
	5000 1800 5050 1800
Wire Wire Line
	5300 1800 5250 1800
Wire Wire Line
	850  4800 2200 4800
Wire Wire Line
	850  4900 2200 4900
Wire Wire Line
	850  5000 2200 5000
Wire Wire Line
	850  5100 2200 5100
Wire Wire Line
	2100 5200 2100 5100
Connection ~ 2100 5100
Wire Wire Line
	1900 5200 1900 5000
Connection ~ 1900 5000
Wire Wire Line
	1700 5200 1700 4900
Connection ~ 1700 4900
Wire Wire Line
	1500 5200 1500 4800
Connection ~ 1500 4800
Wire Wire Line
	1500 5400 1500 5550
Wire Wire Line
	1300 5550 2350 5550
Connection ~ 1700 5550
Wire Wire Line
	1900 5400 1900 5550
Connection ~ 1900 5550
Wire Wire Line
	2100 5400 2100 5550
Connection ~ 2100 5550
Wire Wire Line
	2350 5550 2350 5400
Wire Wire Line
	3100 5500 3100 5700
Wire Wire Line
	2850 5700 3400 5700
Wire Wire Line
	3400 5700 3400 5500
Wire Wire Line
	3300 5500 3300 5700
Connection ~ 3300 5700
Wire Wire Line
	3200 5500 3200 5850
Connection ~ 3200 5700
Wire Bus Line
	750  4900 750  6250
Wire Wire Line
	1050 5950 850  5950
Wire Wire Line
	1050 6050 850  6050
Wire Wire Line
	1050 6350 850  6350
Wire Wire Line
	1550 5950 2850 5950
Wire Wire Line
	2850 5950 2850 5700
Connection ~ 3100 5700
Wire Wire Line
	1850 6350 1550 6350
Wire Wire Line
	1850 5950 1850 6350
Connection ~ 1850 5950
Wire Wire Line
	2900 1500 3500 1500
Wire Wire Line
	3500 1500 3500 1650
Wire Wire Line
	3400 1500 3400 1650
Wire Wire Line
	3000 1500 3000 1650
Wire Wire Line
	2900 1500 2900 1650
Connection ~ 3400 1500
Connection ~ 3000 1500
Wire Wire Line
	850  4600 750  4600
Wire Wire Line
	5000 4650 5300 4650
Wire Wire Line
	9400 2700 9700 2700
Wire Wire Line
	9400 2800 9700 2800
Wire Wire Line
	9400 2900 9700 2900
Wire Wire Line
	9400 3000 9700 3000
Wire Wire Line
	9400 3100 9700 3100
Wire Wire Line
	9400 3200 9700 3200
Wire Wire Line
	9700 3450 9400 3450
Wire Wire Line
	9400 3550 9700 3550
Wire Wire Line
	9400 3650 9700 3650
Wire Wire Line
	9400 3750 9700 3750
Wire Wire Line
	9400 2600 9700 2600
Wire Wire Line
	9400 3950 9700 3950
Wire Wire Line
	9400 4050 9700 4050
Wire Wire Line
	9400 4150 9700 4150
Wire Wire Line
	9400 3850 9700 3850
Wire Wire Line
	9400 2500 9700 2500
Wire Wire Line
	5250 4500 5250 4700
Connection ~ 5250 4650
Wire Wire Line
	5250 4900 5250 4950
Wire Wire Line
	5250 4950 5300 4950
Wire Wire Line
	6800 5000 6800 4950
Wire Wire Line
	6700 4950 6900 4950
Wire Wire Line
	6700 4650 6900 4650
Wire Wire Line
	9700 1650 9400 1650
Wire Wire Line
	9400 1750 9700 1750
Wire Wire Line
	9700 1850 9400 1850
Wire Wire Line
	1700 1650 1400 1650
Wire Wire Line
	1700 1750 1400 1750
Wire Wire Line
	1700 1850 1400 1850
Wire Wire Line
	1700 1950 1400 1950
Wire Wire Line
	1700 2050 1400 2050
Wire Wire Line
	1700 2150 1400 2150
Wire Wire Line
	1000 2250 1700 2250
Wire Wire Line
	1000 2350 1700 2350
Wire Wire Line
	1000 2450 1700 2450
Wire Wire Line
	1000 2550 1700 2550
Wire Wire Line
	1000 2650 1700 2650
Wire Wire Line
	1000 2750 1700 2750
Wire Wire Line
	1700 1550 1400 1550
Wire Wire Line
	1000 2850 1700 2850
Wire Wire Line
	1300 5550 1300 5400
Connection ~ 1500 5550
Wire Wire Line
	1150 4600 2200 4600
Wire Wire Line
	1300 5200 1300 4600
Connection ~ 1300 4600
Wire Wire Line
	1700 3150 1400 3150
Wire Wire Line
	1700 3250 1400 3250
Wire Wire Line
	1700 3350 1400 3350
Wire Wire Line
	1700 3450 1400 3450
Wire Wire Line
	1700 3550 1400 3550
Wire Wire Line
	1700 3650 1400 3650
Wire Wire Line
	1000 3750 1700 3750
Wire Wire Line
	1000 3850 1700 3850
Wire Wire Line
	1000 3950 1700 3950
Wire Wire Line
	1000 4050 1700 4050
Wire Wire Line
	1000 4150 1700 4150
Wire Wire Line
	1000 4250 1700 4250
Wire Wire Line
	1700 3050 1400 3050
Wire Wire Line
	1000 4350 1700 4350
Wire Wire Line
	2150 1300 2150 1000
Wire Wire Line
	2250 1300 2250 1000
Wire Wire Line
	2350 1300 2350 1000
Wire Wire Line
	2450 1300 2450 1000
Wire Wire Line
	2550 1300 2550 1000
Wire Wire Line
	2650 1300 2650 1000
Wire Wire Line
	2750 1300 2750 1000
Wire Wire Line
	2850 1300 2850 1000
Wire Wire Line
	2950 1300 2950 1000
Wire Wire Line
	3050 1300 3050 1000
Wire Wire Line
	3150 1300 3150 1000
Wire Wire Line
	3250 1300 3250 1000
Wire Wire Line
	3350 1300 3350 1000
Wire Wire Line
	3450 1300 3450 1000
Wire Wire Line
	3550 1300 3550 1000
Wire Wire Line
	3650 1300 3650 1000
Wire Wire Line
	3750 1300 3750 1000
Wire Wire Line
	3850 1300 3850 1000
Wire Wire Line
	3950 1300 3950 1000
Wire Wire Line
	4050 1300 4050 1000
Wire Wire Line
	4150 1300 4150 1000
Wire Wire Line
	4250 1300 4250 1000
Wire Wire Line
	4350 1300 4350 1000
Wire Wire Line
	4450 1300 4450 1000
Wire Wire Line
	2150 800  2150 700 
Wire Wire Line
	6550 700  9000 700 
Wire Wire Line
	4450 700  4450 800 
Wire Wire Line
	4350 800  4350 700 
Connection ~ 4350 700 
Wire Wire Line
	4250 800  4250 700 
Connection ~ 4250 700 
Wire Wire Line
	4150 800  4150 700 
Connection ~ 4150 700 
Wire Wire Line
	4050 800  4050 700 
Connection ~ 4050 700 
Wire Wire Line
	3950 800  3950 700 
Connection ~ 3950 700 
Wire Wire Line
	3850 800  3850 700 
Connection ~ 3850 700 
Wire Wire Line
	3750 800  3750 700 
Connection ~ 3750 700 
Wire Wire Line
	3650 800  3650 700 
Connection ~ 3650 700 
Wire Wire Line
	3550 800  3550 700 
Connection ~ 3550 700 
Wire Wire Line
	3450 800  3450 700 
Connection ~ 3450 700 
Wire Wire Line
	3350 800  3350 700 
Connection ~ 3350 700 
Wire Wire Line
	3250 800  3250 700 
Connection ~ 3250 700 
Wire Wire Line
	3150 800  3150 700 
Connection ~ 3150 700 
Wire Wire Line
	3050 800  3050 700 
Connection ~ 3050 700 
Wire Wire Line
	2950 800  2950 700 
Connection ~ 2950 700 
Wire Wire Line
	2850 800  2850 700 
Connection ~ 2850 700 
Wire Wire Line
	2750 800  2750 700 
Connection ~ 2750 700 
Wire Wire Line
	2650 800  2650 700 
Connection ~ 2650 700 
Wire Wire Line
	2550 800  2550 700 
Connection ~ 2550 700 
Wire Wire Line
	2450 800  2450 700 
Connection ~ 2450 700 
Wire Wire Line
	2350 800  2350 700 
Connection ~ 2350 700 
Wire Wire Line
	2250 800  2250 700 
Connection ~ 2250 700 
Wire Wire Line
	8375 5275 10075 5275
Connection ~ 8475 5275
Wire Wire Line
	10525 5275 10375 5275
Wire Wire Line
	7550 4950 7100 4950
Wire Wire Line
	6075 700  6075 1300
Wire Wire Line
	7250 1300 7250 1200
Wire Wire Line
	7800 1300 7800 1200
Wire Wire Line
	8100 1300 8100 1200
Wire Wire Line
	8100 700  8100 1000
Wire Wire Line
	7250 1000 7250 700 
Connection ~ 7250 700 
Wire Wire Line
	7800 1000 7800 700 
Connection ~ 7800 700 
Connection ~ 8400 700 
Connection ~ 4450 700 
Wire Wire Line
	5525 1300 5525 1000
Wire Wire Line
	2200 4100 1900 4100
Wire Wire Line
	5325 1300 5325 1000
Wire Wire Line
	5325 800  5325 700 
Wire Wire Line
	6600 1700 6900 1700
Wire Wire Line
	7700 4125 7700 4200
Wire Wire Line
	8025 4125 8375 4125
Connection ~ 7700 4125
Wire Wire Line
	1700 5400 1700 6050
Wire Wire Line
	1700 6050 1550 6050
Wire Wire Line
	1050 6150 850  6150
Wire Wire Line
	7100 4625 8200 4625
Wire Wire Line
	7750 4950 8675 4950
Wire Wire Line
	8400 4950 8400 4925
Wire Wire Line
	8675 4700 8675 4625
Connection ~ 8675 4625
Wire Wire Line
	8675 4950 8675 4900
Connection ~ 8400 4950
Connection ~ 8825 5275
Wire Wire Line
	8600 4625 10075 4625
Wire Wire Line
	9900 4475 9900 5275
Connection ~ 9900 5275
Wire Wire Line
	8825 5275 8825 5450
Wire Wire Line
	8475 5275 8475 5400
Wire Wire Line
	7100 5275 7575 5275
Wire Wire Line
	7250 5350 7250 5275
Connection ~ 7250 5275
Wire Wire Line
	7500 5400 7500 5275
Connection ~ 7500 5275
Wire Wire Line
	7250 5650 7250 5850
Wire Wire Line
	7250 5850 9900 5850
Wire Wire Line
	8825 5850 8825 5650
Wire Wire Line
	8475 5700 8475 5850
Connection ~ 8475 5850
Wire Wire Line
	7500 5600 7500 5850
Connection ~ 7500 5850
Wire Wire Line
	7975 5775 7975 6000
Connection ~ 7975 5850
Wire Wire Line
	9900 5850 9900 5375
Wire Wire Line
	9900 5375 10525 5375
Connection ~ 8825 5850
Wire Wire Line
	9400 5750 9400 5850
Connection ~ 9400 5850
Connection ~ 8150 4625
Wire Wire Line
	7700 4400 7700 4450
Wire Wire Line
	7500 4125 7825 4125
Wire Wire Line
	7300 4125 7100 4125
Connection ~ 6800 4950
Wire Wire Line
	8400 1300 8400 1200
Wire Wire Line
	8650 1300 8650 1200
Wire Wire Line
	8900 1300 8900 1200
Wire Wire Line
	8900 700  8900 1000
Wire Wire Line
	8400 1000 8400 700 
Wire Wire Line
	8650 1000 8650 700 
Connection ~ 8100 700 
Connection ~ 8650 700 
Connection ~ 8900 700 
Connection ~ 9900 4625
Wire Wire Line
	10425 4625 10275 4625
Wire Wire Line
	10725 4625 10625 4625
Wire Wire Line
	8725 4125 8575 4125
Wire Wire Line
	9025 4125 8925 4125
Connection ~ 8150 4125
Wire Wire Line
	7100 5050 9900 5050
Connection ~ 9900 5050
Wire Wire Line
	8325 1500 8200 1500
Wire Wire Line
	8200 1500 8200 1550
Wire Wire Line
	8200 4000 8200 3950
Wire Wire Line
	8150 4125 8150 4625
Entry Wire Line
	4700 1300 4600 1400
Wire Wire Line
	4700 700  4700 1300
Text Label 4700 1100 3    47   ~ 0
+5.5V
$Comp
L PWR_FLAG #FLG014
U 1 1 5A9EFF3F
P 7350 4500
F 0 "#FLG014" H 7350 4595 50  0001 C CNN
F 1 "PWR_FLAG" H 7275 4700 50  0000 C CNN
F 2 "" H 7350 4500 50  0000 C CNN
F 3 "" H 7350 4500 50  0000 C CNN
	1    7350 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 4500 7350 4625
Connection ~ 7350 4625
Wire Wire Line
	1950 700  4700 700 
Wire Wire Line
	5325 700  6350 700 
Wire Wire Line
	5525 800  5525 700 
Connection ~ 5525 700 
Connection ~ 6075 700 
$Comp
L R_Small R43
U 1 1 5A9F4EFC
P 2050 900
F 0 "R43" V 2050 850 39  0000 L CNN
F 1 "10k" V 2075 975 35  0000 L CNN
F 2 "m-pad-2.1:m-pad-2.1-0603" H 2050 900 50  0001 C CNN
F 3 "" H 2050 900 50  0000 C CNN
	1    2050 900 
	-1   0    0    1   
$EndComp
Entry Wire Line
	2050 1300 1950 1400
Text Label 2050 1200 3    47   ~ 0
WE
Wire Wire Line
	2050 1300 2050 1000
Wire Wire Line
	2050 800  2050 700 
Connection ~ 2150 700 
Text Label 7225 3600 2    47   ~ 0
+5.5V
$Comp
L R_Small R42
U 1 1 5A9F7998
P 1950 900
F 0 "R42" H 2000 850 39  0000 L CNN
F 1 "10k" V 1975 975 35  0000 L CNN
F 2 "m-pad-2.1:m-pad-2.1-0603" H 1950 900 50  0001 C CNN
F 3 "" H 1950 900 50  0000 C CNN
	1    1950 900 
	-1   0    0    1   
$EndComp
Entry Wire Line
	1950 1300 1850 1400
Text Label 1950 1200 3    47   ~ 0
RD
Wire Wire Line
	1950 1300 1950 1000
Wire Wire Line
	1950 800  1950 700 
Connection ~ 2050 700 
$EndSCHEMATC
