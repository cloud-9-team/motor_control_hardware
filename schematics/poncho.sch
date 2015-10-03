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
LIBS:stepper drivers
LIBS:poncho-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Poncho de control de motores por Wi-Fi"
Date "jue 01 oct 2015"
Rev "1.1"
Comp ""
Comment1 "Computadora Industrial Abierta Argentina Versión Educativa EDU-CIAA-NXP"
Comment2 "Licencia: https://github.com/ciaa/Hardware/tree/master/Readme (LICENSE)"
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L L293D L293D1
U 1 1 560AA651
P 8500 2900
F 0 "L293D1" H 8100 3800 50  0000 L BNN
F 1 "L293D" H 8100 1900 50  0000 L BNN
F 2 "Housings_DIP:DIP-16_W7.62mm" H 8500 3050 50  0001 C CNN
F 3 "" H 8500 2900 60  0000 C CNN
	1    8500 2900
	1    0    0    -1  
$EndComp
$Comp
L +9V #PWR01
U 1 1 560AA652
P 6700 3550
F 0 "#PWR01" H 6700 3520 20  0001 C CNN
F 1 "+9V" H 6700 3660 30  0000 C CNN
F 2 "" H 6700 3550 60  0000 C CNN
F 3 "" H 6700 3550 60  0000 C CNN
	1    6700 3550
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR02
U 1 1 560AA653
P 10150 2100
F 0 "#PWR02" H 10150 2190 20  0001 C CNN
F 1 "+5V" H 10150 2190 30  0000 C CNN
F 2 "" H 10150 2100 60  0000 C CNN
F 3 "" H 10150 2100 60  0000 C CNN
	1    10150 2100
	1    0    0    -1  
$EndComp
Text Label 6950 3000 0    60   ~ 0
GPIO_GND
Text Label 6950 2800 0    60   ~ 0
GPIO_GND
Text Label 10000 2800 2    60   ~ 0
GPIO_GND
Text Label 10000 3000 2    60   ~ 0
GPIO_GND
Text Label 6950 2200 0    60   ~ 0
GPIO1
Text Label 10000 3600 2    60   ~ 0
GPIO2
Text Label 6950 2400 0    60   ~ 0
TEC_COL1
Text Label 6950 3400 0    60   ~ 0
TEC_F3
Text Label 10000 2400 2    60   ~ 0
TEC_F2
Text Label 6450 2600 0    60   ~ 0
ENG0_OUT0
Text Label 6450 3200 0    60   ~ 0
ENG0_OUT1
Text Label 10500 2600 2    60   ~ 0
ENG1_OUT0
Text Label 10500 3200 2    60   ~ 0
ENG1_OUT1
Wire Wire Line
	6700 3600 6700 3550
Wire Wire Line
	6700 3600 7900 3600
Wire Wire Line
	6950 3000 7900 3000
Wire Wire Line
	7900 2800 6950 2800
Wire Wire Line
	9100 2800 10000 2800
Wire Wire Line
	9100 3000 10000 3000
Wire Wire Line
	6950 2200 7900 2200
Wire Wire Line
	9100 3600 10000 3600
Wire Wire Line
	7900 2400 6950 2400
Wire Wire Line
	7900 3400 6950 3400
Wire Wire Line
	9100 2400 10000 2400
Wire Wire Line
	9100 3400 10000 3400
Wire Wire Line
	9100 2600 10500 2600
Wire Wire Line
	9100 3200 10500 3200
Wire Wire Line
	7900 3200 6450 3200
Wire Wire Line
	7900 2600 6450 2600
Wire Wire Line
	9100 2200 10150 2200
Wire Wire Line
	10150 2200 10150 2100
Text HLabel 1100 6750 0    60   BiDi ~ 0
GPIO0
Text HLabel 1100 6900 0    60   BiDi ~ 0
GPIO2
Text HLabel 1100 7050 0    60   BiDi ~ 0
GPIO4
Text HLabel 1100 7200 0    60   BiDi ~ 0
GPIO6
Text HLabel 5550 7650 2    60   BiDi ~ 0
GPIO8
Text HLabel 5550 7050 2    60   BiDi ~ 0
GPIO1
Text HLabel 5550 7200 2    60   BiDi ~ 0
GPIO3
Text HLabel 5550 7350 2    60   BiDi ~ 0
GPIO5
Text HLabel 5550 7500 2    60   BiDi ~ 0
GPIO7
Text HLabel 4750 750  2    60   Output ~ 0
WAKEUP
$Comp
L THERMISTOR TH1
U 1 1 52CA1D91
P 2450 1050
F 0 "TH1" V 2550 1100 50  0000 C CNN
F 1 "MF-MSMF030-2" V 2350 1050 50  0000 C CNN
F 2 "Discret:R1" H 2450 1050 60  0001 C CNN
F 3 "mfmsmf.pdf" H 2450 1050 60  0001 C CNN
F 4 "PTC RESETTABLE .30A 30V 1812" V 2450 1050 60  0001 C CNN "Descripción"
F 5 "Bourns Inc." V 2450 1050 60  0001 C CNN "Fabricante"
F 6 "MF-MSMF030-2" V 2450 1050 60  0001 C CNN "Nro de parte"
F 7 "../PCB/EDU-NXP/Datasheets" V 2450 1050 60  0001 C CNN "Path datasheet"
F 8 "MF-MSMF030-2CT-ND" V 2450 1050 60  0001 C CNN "Digikey"
F 9 "1812" V 2450 1050 60  0001 C CNN "Footprint"
	1    2450 1050
	-1   0    0    1   
$EndComp
$Comp
L +3.3V #PWR03
U 1 1 52CA1E6C
P 2450 750
F 0 "#PWR03" H 2450 710 30  0001 C CNN
F 1 "+3.3V" H 2450 860 30  0000 C CNN
F 2 "" H 2450 750 60  0000 C CNN
F 3 "" H 2450 750 60  0000 C CNN
	1    2450 750 
	1    0    0    -1  
$EndComp
Text HLabel 1200 2050 0    60   BiDi ~ 0
I2C_SDA
Text HLabel 1200 2250 0    60   Input ~ 0
I2C_SCL
Text HLabel 5450 5850 2    60   Output ~ 0
SPI_MISO
Text HLabel 1200 6050 0    60   Input ~ 0
SPI_MOSI
$Comp
L GNDA #PWR04
U 1 1 52DEB0D0
P 10650 5550
F 0 "#PWR04" H 10650 5550 40  0001 C CNN
F 1 "GNDA" H 10650 5480 40  0000 C CNN
F 2 "" H 10650 5550 60  0000 C CNN
F 3 "" H 10650 5550 60  0000 C CNN
	1    10650 5550
	1    0    0    -1  
$EndComp
$Comp
L THERMISTOR TH2
U 1 1 539535E7
P 3450 1050
F 0 "TH2" V 3550 1100 50  0000 C CNN
F 1 "MF-MSMF030-2" V 3350 1050 50  0000 C CNN
F 2 "Discret:R1" H 2450 1050 60  0001 C CNN
F 3 "mfmsmf.pdf" H 2450 1050 60  0001 C CNN
F 4 "PTC RESETTABLE .30A 30V 1812" V 2450 1050 60  0001 C CNN "Descripción"
F 5 "Bourns Inc." V 2450 1050 60  0001 C CNN "Fabricante"
F 6 "MF-MSMF030-2" V 2450 1050 60  0001 C CNN "Nro de parte"
F 7 "../PCB/EDU-NXP/Datasheets" V 2450 1050 60  0001 C CNN "Path datasheet"
F 8 "MF-MSMF030-2CT-ND" V 2450 1050 60  0001 C CNN "Digikey"
F 9 "1812" V 2450 1050 60  0001 C CNN "Footprint"
	1    3450 1050
	-1   0    0    1   
$EndComp
$Comp
L +5V #PWR05
U 1 1 539535EE
P 3450 750
F 0 "#PWR05" H 3450 840 20  0001 C CNN
F 1 "+5V" H 3450 840 30  0000 C CNN
F 2 "" H 3450 750 60  0000 C CNN
F 3 "" H 3450 750 60  0000 C CNN
	1    3450 750 
	1    0    0    -1  
$EndComp
Text HLabel 5400 4450 2    60   Output ~ 0
ENET_RXD1
Text HLabel 5350 4650 2    60   Input ~ 0
ENET_TX_EN
Text HLabel 1300 4050 0    60   Input ~ 0
TEC_COL0
Text HLabel 1300 4850 0    60   Output ~ 0
ENET_RXD0
Text HLabel 5300 5050 2    60   Output ~ 0
ENET_CRS_DV
Text HLabel 5400 5250 2    60   BiDi ~ 0
ENET_MDIO
Text HLabel 5400 5450 2    60   Input ~ 0
ENET_TXD0
Text HLabel 1450 5450 0    60   Input ~ 0
ENET_REF_CLK
Text HLabel 5400 5650 2    60   Input ~ 0
ENET_TXD1
Text HLabel 1200 3450 0    60   Output ~ 0
TEC_F0
Text HLabel 1150 1500 0    60   Output ~ 0
ADC0_1
Text HLabel 4800 3400 2    60   Output ~ 0
TEC_F1
Text HLabel 1000 1700 0    60   Input ~ 0
DAC
Text HLabel 1200 3850 0    60   Output ~ 0
TEC_F2
Text HLabel 1200 3650 0    60   Output ~ 0
TEC_F3
Text HLabel 5600 6900 2    60   Input ~ 0
LCD1
Text HLabel 5600 6750 2    60   Input ~ 0
LCD2
Text HLabel 5600 6600 2    60   Input ~ 0
LCD3
Text HLabel 5500 6450 2    60   Input ~ 0
LCD_RS
Text HLabel 1150 6250 0    60   Input ~ 0
LCD_EN
Text HLabel 5650 6250 2    60   Input ~ 0
LCD4
Text HLabel 1200 2850 0    60   Output ~ 0
CAN_RD
Text HLabel 1200 3050 0    60   Input ~ 0
CAN_TD
Text HLabel 1300 3250 0    60   Input ~ 0
TEC_COL1
Text HLabel 4650 3250 2    60   Input ~ 0
TEC_COL2
Text HLabel 950  750  0    60   Output ~ 0
ISP
Text HLabel 1150 1100 0    60   Output ~ 0
ADC0_3
Text HLabel 1150 1300 0    60   Output ~ 0
ADC0_2
$Comp
L CONN_20X2 P1
U 1 1 5398AC24
P 2950 2400
F 0 "P1" H 2950 3450 60  0000 C CNN
F 1 "CONN_20X2" V 2950 2400 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x20" H 2950 2400 60  0001 C CNN
F 3 "" H 2950 2400 60  0000 C CNN
	1    2950 2400
	1    0    0    -1  
$EndComp
$Comp
L CONN_20X2 P2
U 1 1 5398AC33
P 3400 6200
F 0 "P2" H 3400 7250 60  0000 C CNN
F 1 "CONN_20X2" V 3400 6200 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x20" H 3400 6200 60  0001 C CNN
F 3 "" H 3400 6200 60  0000 C CNN
	1    3400 6200
	1    0    0    -1  
$EndComp
$Comp
L R R20
U 1 1 5398AC42
P 1700 1700
F 0 "R20" V 1780 1700 40  0000 C CNN
F 1 "470" V 1707 1701 40  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Cement_Horizontal_Meggitt-SBC-2" V 1630 1700 30  0001 C CNN
F 3 "AOA0000CE1.pdf" H 1700 1700 30  0001 C CNN
F 4 "RES 470 OHM 1/8W 5% 0805 SMD" V 1700 1700 60  0001 C CNN "Descripción"
F 5 "Panasonic Electronic Components" V 1700 1700 60  0001 C CNN "Fabricante"
F 6 "ERJ-6GEYJ471V" V 1700 1700 60  0001 C CNN "Nro de parte"
F 7 "..PCB/EDU-NXP/Datasheets" V 1700 1700 60  0001 C CNN "Path datasheet"
F 8 "P470ACT-ND" V 1700 1700 60  0001 C CNN "Digikey"
F 9 "0805" V 1700 1700 60  0001 C CNN "Footprint"
	1    1700 1700
	0    -1   -1   0   
$EndComp
$Comp
L R R21
U 1 1 5398AC4F
P 1700 1500
F 0 "R21" V 1780 1500 40  0000 C CNN
F 1 "1k2" V 1707 1501 40  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Cement_Horizontal_Meggitt-SBC-2" V 1630 1500 30  0001 C CNN
F 3 "SEI-RMCF_RMCP.pdf" H 1700 1500 30  0001 C CNN
F 4 "RES 1.2K OHM 1/8W 5% 0805" V 1700 1500 60  0001 C CNN "Descripción"
F 5 "Stackpole Electronics Inc" V 1700 1500 60  0001 C CNN "Fabricante"
F 6 "RMCF0805JT1K20" V 1700 1500 60  0001 C CNN "Nro de parte"
F 7 "..PCB/EDU-NXP/Datasheets" V 1700 1500 60  0001 C CNN "Path datasheet"
F 8 "RMCF0805JT1K20CT-ND" V 1700 1500 60  0001 C CNN "Digikey"
F 9 "0805" V 1700 1500 60  0001 C CNN "Footprint"
	1    1700 1500
	0    -1   -1   0   
$EndComp
$Comp
L R R22
U 1 1 5398AC55
P 1700 1300
F 0 "R22" V 1780 1300 40  0000 C CNN
F 1 "1k2" V 1707 1301 40  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Cement_Horizontal_Meggitt-SBC-2" V 1630 1500 30  0001 C CNN
F 3 "SEI-RMCF_RMCP.pdf" H 1700 1500 30  0001 C CNN
F 4 "RES 1.2K OHM 1/8W 5% 0805" V 1700 1500 60  0001 C CNN "Descripción"
F 5 "Stackpole Electronics Inc" V 1700 1500 60  0001 C CNN "Fabricante"
F 6 "RMCF0805JT1K20" V 1700 1500 60  0001 C CNN "Nro de parte"
F 7 "..PCB/EDU-NXP/Datasheets" V 1700 1500 60  0001 C CNN "Path datasheet"
F 8 "RMCF0805JT1K20CT-ND" V 1700 1500 60  0001 C CNN "Digikey"
F 9 "0805" V 1700 1500 60  0001 C CNN "Footprint"
	1    1700 1300
	0    -1   -1   0   
$EndComp
$Comp
L R R23
U 1 1 5398AC5B
P 1700 1100
F 0 "R23" V 1780 1100 40  0000 C CNN
F 1 "1k2" V 1707 1101 40  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Cement_Horizontal_Meggitt-SBC-2" V 1630 1500 30  0001 C CNN
F 3 "SEI-RMCF_RMCP.pdf" H 1700 1500 30  0001 C CNN
F 4 "RES 1.2K OHM 1/8W 5% 0805" V 1700 1500 60  0001 C CNN "Descripción"
F 5 "Stackpole Electronics Inc" V 1700 1500 60  0001 C CNN "Fabricante"
F 6 "RMCF0805JT1K20" V 1700 1500 60  0001 C CNN "Nro de parte"
F 7 "..PCB/EDU-NXP/Datasheets" V 1700 1500 60  0001 C CNN "Path datasheet"
F 8 "RMCF0805JT1K20CT-ND" V 1700 1500 60  0001 C CNN "Digikey"
F 9 "0805" V 1700 1500 60  0001 C CNN "Footprint"
	1    1700 1100
	0    -1   -1   0   
$EndComp
Text HLabel 5500 6050 2    60   Input ~ 0
SPI_SCK
Text HLabel 1350 2650 0    60   Input ~ 0
RS232_TXD
Text HLabel 1350 2450 0    60   Output ~ 0
RS232_RXD
Text HLabel 5450 4850 2    60   Input ~ 0
ENET_MDC
Text HLabel 1100 600  0    60   Output ~ 0
RESET
$Comp
L THERMISTOR TH3
U 1 1 539E1654
P 2900 4850
F 0 "TH3" V 3000 4900 50  0000 C CNN
F 1 "MF-MSMF030-2" V 2800 4850 50  0000 C CNN
F 2 "Discret:R1" H -2450 4850 60  0001 C CNN
F 3 "mfmsmf.pdf" H -2450 4850 60  0001 C CNN
F 4 "PTC RESETTABLE .30A 30V 1812" V -2450 4850 60  0001 C CNN "Descripción"
F 5 "Bourns Inc." V -2450 4850 60  0001 C CNN "Fabricante"
F 6 "MF-MSMF030-2" V -2450 4850 60  0001 C CNN "Nro de parte"
F 7 "../PCB/EDU-NXP/Datasheets" V -2450 4850 60  0001 C CNN "Path datasheet"
F 8 "MF-MSMF030-2CT-ND" V -2450 4850 60  0001 C CNN "Digikey"
F 9 "1812" V -2450 4850 60  0001 C CNN "Footprint"
	1    2900 4850
	-1   0    0    1   
$EndComp
$Comp
L +3.3V #PWR06
U 1 1 539E165A
P 2900 4550
F 0 "#PWR06" H 2900 4510 30  0001 C CNN
F 1 "+3.3V" H 2900 4660 30  0000 C CNN
F 2 "" H 2900 4550 60  0000 C CNN
F 3 "" H 2900 4550 60  0000 C CNN
	1    2900 4550
	1    0    0    -1  
$EndComp
$Comp
L THERMISTOR TH4
U 1 1 539E1660
P 3900 4850
F 0 "TH4" V 4000 4900 50  0000 C CNN
F 1 "MF-MSMF030-2" V 3800 4850 50  0000 C CNN
F 2 "Discret:R1" H -2450 4850 60  0001 C CNN
F 3 "mfmsmf.pdf" H -2450 4850 60  0001 C CNN
F 4 "PTC RESETTABLE .30A 30V 1812" V -2450 4850 60  0001 C CNN "Descripción"
F 5 "Bourns Inc." V -2450 4850 60  0001 C CNN "Fabricante"
F 6 "MF-MSMF030-2" V -2450 4850 60  0001 C CNN "Nro de parte"
F 7 "../PCB/EDU-NXP/Datasheets" V -2450 4850 60  0001 C CNN "Path datasheet"
F 8 "MF-MSMF030-2CT-ND" V -2450 4850 60  0001 C CNN "Digikey"
F 9 "1812" V -2450 4850 60  0001 C CNN "Footprint"
	1    3900 4850
	-1   0    0    1   
$EndComp
$Comp
L +5V #PWR07
U 1 1 539E1666
P 3900 4550
F 0 "#PWR07" H 3900 4640 20  0001 C CNN
F 1 "+5V" H 3900 4640 30  0000 C CNN
F 2 "" H 3900 4550 60  0000 C CNN
F 3 "" H 3900 4550 60  0000 C CNN
	1    3900 4550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR08
U 1 1 53B8B104
P 10650 6050
F 0 "#PWR08" H 10650 6050 30  0001 C CNN
F 1 "GND" H 10650 5980 30  0001 C CNN
F 2 "" H 10650 6050 60  0000 C CNN
F 3 "" H 10650 6050 60  0000 C CNN
	1    10650 6050
	1    0    0    -1  
$EndComp
Text Label 10150 5900 0    60   ~ 0
GPIO_GND
Text Label 750  5050 0    60   ~ 0
GPIO_GND
Text Label 750  5250 0    60   ~ 0
GPIO_GND
Text Label 750  5650 0    60   ~ 0
GPIO_GND
Text Label 750  5850 0    60   ~ 0
GPIO_GND
Text Label 750  6450 0    60   ~ 0
GPIO_GND
Text Label 4700 2550 0    60   ~ 0
GPIO_GND
Text Label 10100 5450 0    60   ~ 0
ANALOG_GND
Text Label 4550 1950 0    60   ~ 0
ANALOG_GND
Text Label 4550 550  0    60   ~ 0
GPIO_GND
Text Label 750  900  0    60   ~ 0
ANALOG_GND
Text Label 4550 950  0    60   ~ 0
ANALOG_GND
Text Label 4550 1150 0    60   ~ 0
ANALOG_GND
Text Label 4550 1350 0    60   ~ 0
ANALOG_GND
Text Label 4550 1550 0    60   ~ 0
ANALOG_GND
Text Label 4550 1750 0    60   ~ 0
ANALOG_GND
Text Label 750  6600 0    60   ~ 0
GPIO_GND
Text Label 750  7550 0    60   ~ 0
GPIO_GND
Text Label 750  7400 0    60   ~ 0
GPIO_GND
Text Label 4700 2700 0    60   ~ 0
GPIO_GND
Text Label 4700 2850 0    60   ~ 0
GPIO_GND
Text Label 4700 3000 0    60   ~ 0
GPIO_GND
Text Label 4750 3600 0    60   ~ 0
GPIO_GND
Text Label 4750 3750 0    60   ~ 0
GPIO_GND
Text Label 750  4650 0    60   ~ 0
GPIO_GND
Text Label 750  4450 0    60   ~ 0
GPIO_GND
Text Label 750  4250 0    60   ~ 0
GPIO_GND
Wire Wire Line
	2050 3250 1300 3250
Wire Wire Line
	2050 2950 2050 3250
Wire Wire Line
	2550 2950 2050 2950
Wire Wire Line
	2100 3050 2550 3050
Wire Wire Line
	2100 3450 2100 3050
Wire Wire Line
	1200 3450 2100 3450
Wire Wire Line
	2150 3650 1200 3650
Wire Wire Line
	2150 3150 2150 3650
Wire Wire Line
	2550 3150 2150 3150
Wire Wire Line
	2200 3250 2550 3250
Wire Wire Line
	2200 3850 2200 3250
Wire Wire Line
	1200 3850 2200 3850
Wire Wire Line
	2250 4050 1300 4050
Wire Wire Line
	2250 3350 2250 4050
Wire Wire Line
	2550 3350 2250 3350
Wire Wire Line
	4350 3250 4650 3250
Wire Wire Line
	4400 5050 5300 5050
Wire Wire Line
	1450 5450 2300 5450
Wire Wire Line
	2150 6050 1200 6050
Wire Wire Line
	1150 6250 2100 6250
Wire Wire Line
	5150 6450 5500 6450
Wire Wire Line
	4450 5250 5400 5250
Wire Wire Line
	4300 4650 5350 4650
Wire Wire Line
	4600 5850 5450 5850
Wire Wire Line
	4550 5650 5400 5650
Wire Wire Line
	4500 5450 5400 5450
Wire Wire Line
	4650 6050 5500 6050
Wire Wire Line
	3800 6250 5650 6250
Wire Wire Line
	5100 6600 5600 6600
Wire Wire Line
	1900 7200 1900 6950
Wire Wire Line
	1100 7200 1900 7200
Wire Wire Line
	1100 7050 1850 7050
Wire Wire Line
	1800 6900 1100 6900
Wire Wire Line
	1100 6750 1750 6750
Wire Wire Line
	4750 7650 5550 7650
Wire Wire Line
	4750 7150 4750 7650
Wire Wire Line
	3800 7150 4750 7150
Wire Wire Line
	4800 7050 3800 7050
Wire Wire Line
	4800 7500 4800 7050
Wire Wire Line
	5550 7500 4800 7500
Wire Wire Line
	4850 7350 5550 7350
Wire Wire Line
	4850 6950 4850 7350
Wire Wire Line
	3800 6950 4850 6950
Wire Wire Line
	4900 7200 5550 7200
Wire Wire Line
	4900 6850 4900 7200
Wire Wire Line
	4950 7050 5550 7050
Wire Wire Line
	4950 6750 4950 7050
Wire Wire Line
	5000 6650 5000 6900
Wire Wire Line
	5000 6900 5600 6900
Wire Wire Line
	5050 6750 5600 6750
Wire Wire Line
	5050 6550 5050 6750
Wire Wire Line
	5100 6450 5100 6600
Wire Wire Line
	4350 4850 5450 4850
Wire Wire Line
	4250 4450 5400 4450
Wire Wire Line
	2000 7150 3000 7150
Wire Wire Line
	2000 7550 2000 7150
Wire Wire Line
	750  7550 2000 7550
Wire Wire Line
	1950 7400 750  7400
Wire Wire Line
	1950 7050 1950 7400
Wire Wire Line
	3000 7050 1950 7050
Wire Wire Line
	1900 6950 3000 6950
Wire Wire Line
	1850 7050 1850 6850
Wire Wire Line
	1800 6750 1800 6900
Wire Wire Line
	1750 6750 1750 6650
Wire Wire Line
	750  6600 1700 6600
Wire Wire Line
	1700 6600 1700 6550
Wire Wire Line
	1300 4850 2450 4850
Wire Wire Line
	4200 3750 5200 3750
Wire Wire Line
	4200 3350 4200 3750
Wire Wire Line
	3350 3350 4200 3350
Wire Wire Line
	4250 3600 5200 3600
Wire Wire Line
	4250 3250 4250 3600
Wire Wire Line
	3350 3250 4250 3250
Wire Wire Line
	4300 3400 4300 3150
Wire Wire Line
	4800 3400 4300 3400
Wire Wire Line
	4350 3050 4350 3250
Wire Wire Line
	4400 2950 4400 3100
Wire Wire Line
	4400 3100 5150 3100
Wire Wire Line
	4450 3000 5150 3000
Wire Wire Line
	4450 2850 4450 3000
Wire Wire Line
	3350 2850 4450 2850
Wire Wire Line
	4500 2750 3350 2750
Wire Wire Line
	4500 2850 4500 2750
Wire Wire Line
	4550 2700 5150 2700
Wire Wire Line
	4550 2650 4550 2700
Wire Wire Line
	3350 2650 4550 2650
Wire Wire Line
	3350 2550 5150 2550
Wire Wire Line
	4500 2850 5150 2850
Wire Wire Line
	4250 2350 5150 2350
Wire Wire Line
	3850 750  4750 750 
Wire Wire Line
	1900 2050 1200 2050
Wire Wire Line
	1200 2250 1850 2250
Wire Wire Line
	1950 1900 1950 2250
Wire Wire Line
	1950 2250 2550 2250
Wire Wire Line
	2000 2150 2550 2150
Wire Wire Line
	2000 1700 2000 2150
Wire Wire Line
	2050 1500 2050 2050
Wire Wire Line
	2100 1950 2100 1300
Wire Wire Line
	2150 1100 2150 1850
Wire Wire Line
	750  900  2200 900 
Wire Wire Line
	2200 900  2200 1750
Wire Wire Line
	10650 5450 10100 5450
Wire Wire Line
	10650 5550 10650 5450
Wire Wire Line
	950  750  2250 750 
Wire Wire Line
	2250 750  2250 1650
Wire Wire Line
	2250 1650 2550 1650
Wire Wire Line
	2300 1550 2550 1550
Wire Wire Line
	2300 600  2300 1550
Wire Wire Line
	1100 600  2300 600 
Wire Wire Line
	4050 1550 5150 1550
Wire Wire Line
	2150 1100 1950 1100
Wire Wire Line
	2100 1300 1950 1300
Wire Wire Line
	2050 1500 1950 1500
Wire Wire Line
	1950 1700 2000 1700
Wire Wire Line
	5150 6350 5150 6450
Wire Wire Line
	10650 5900 10100 5900
Wire Wire Line
	10650 6050 10650 5900
Wire Wire Line
	750  4250 2600 4250
Wire Wire Line
	750  4450 2550 4450
Wire Wire Line
	750  4650 2500 4650
Wire Wire Line
	750  5050 2400 5050
Wire Wire Line
	750  5250 2350 5250
Wire Wire Line
	750  5650 2250 5650
Wire Wire Line
	750  5850 2200 5850
Wire Wire Line
	750  6450 3000 6450
Wire Wire Line
	3800 550  5150 550 
Wire Wire Line
	3900 950  5150 950 
Wire Wire Line
	3950 1150 5150 1150
Wire Wire Line
	4000 1350 5150 1350
Wire Wire Line
	4100 1750 5150 1750
Wire Wire Line
	4150 1950 5150 1950
Wire Wire Line
	4200 2150 5150 2150
Wire Wire Line
	4250 5350 4250 4450
Wire Wire Line
	4300 5450 4300 4650
Wire Wire Line
	4350 5550 4350 4850
Wire Wire Line
	4400 5650 4400 5050
Wire Wire Line
	4450 5750 4450 5250
Wire Wire Line
	4500 5850 4500 5450
Wire Wire Line
	4550 5950 4550 5650
Wire Wire Line
	4600 6050 4600 5850
Wire Wire Line
	4650 6150 4650 6050
Wire Wire Line
	2600 4250 2600 5350
Wire Wire Line
	2550 4450 2550 5450
Wire Wire Line
	2500 4650 2500 5550
Wire Wire Line
	2450 4850 2450 5650
Wire Wire Line
	2400 5050 2400 5750
Wire Wire Line
	2350 5250 2350 5850
Wire Wire Line
	2300 5450 2300 5950
Wire Wire Line
	2250 5650 2250 6050
Wire Wire Line
	2200 5850 2200 6150
Wire Wire Line
	2200 6150 3000 6150
Wire Wire Line
	2150 6250 2150 6050
Wire Wire Line
	3000 6250 2150 6250
Wire Wire Line
	2100 6350 3000 6350
Wire Wire Line
	1700 6550 3000 6550
Wire Wire Line
	2100 6250 2100 6350
Wire Wire Line
	3800 1550 3800 550 
Wire Wire Line
	3850 1650 3850 750 
Wire Wire Line
	3900 1750 3900 950 
Wire Wire Line
	3350 1750 3900 1750
Wire Wire Line
	3950 1150 3950 1850
Wire Wire Line
	4000 1950 4000 1350
Wire Wire Line
	4050 2050 4050 1550
Wire Wire Line
	4100 2150 4100 1750
Wire Wire Line
	4150 2250 4150 1950
Wire Wire Line
	4200 2350 4200 2150
Wire Wire Line
	4250 2450 4250 2350
Wire Wire Line
	2200 1750 2550 1750
Wire Wire Line
	2150 1850 2550 1850
Wire Wire Line
	2550 1950 2100 1950
Wire Wire Line
	2050 2050 2550 2050
Wire Wire Line
	1900 2350 2550 2350
Wire Wire Line
	1900 2050 1900 2350
Wire Wire Line
	1850 2450 2550 2450
Wire Wire Line
	1850 2250 1850 2450
Wire Wire Line
	1800 2550 2550 2550
Wire Wire Line
	1800 2450 1800 2550
Wire Wire Line
	2450 1300 2450 1450
Wire Wire Line
	2600 5350 3000 5350
Wire Wire Line
	2550 5450 3000 5450
Wire Wire Line
	2500 5550 3000 5550
Wire Wire Line
	2450 5650 3000 5650
Wire Wire Line
	2400 5750 3000 5750
Wire Wire Line
	2350 5850 3000 5850
Wire Wire Line
	2300 5950 3000 5950
Wire Wire Line
	2250 6050 3000 6050
Wire Wire Line
	1150 1500 1450 1500
Wire Wire Line
	1000 1700 1450 1700
Wire Wire Line
	3350 2050 4050 2050
Wire Wire Line
	3350 2150 4100 2150
Wire Wire Line
	3350 2250 4150 2250
Wire Wire Line
	3350 2450 4250 2450
Wire Wire Line
	3350 2350 4200 2350
Wire Wire Line
	3350 1550 3800 1550
Wire Wire Line
	3350 1650 3850 1650
Wire Wire Line
	3950 1850 3350 1850
Wire Wire Line
	3350 1950 4000 1950
Wire Wire Line
	3800 5350 4250 5350
Wire Wire Line
	3800 5450 4300 5450
Wire Wire Line
	3800 5650 4400 5650
Wire Wire Line
	3800 5550 4350 5550
Wire Wire Line
	3800 5750 4450 5750
Wire Wire Line
	1150 1100 1450 1100
Wire Wire Line
	3800 5850 4500 5850
Wire Wire Line
	3800 5950 4550 5950
Wire Wire Line
	1150 1300 1450 1300
Wire Wire Line
	3800 6050 4600 6050
Wire Wire Line
	3800 6150 4650 6150
Wire Wire Line
	3800 6650 5000 6650
Wire Wire Line
	3800 6750 4950 6750
Wire Wire Line
	3800 6850 4900 6850
Wire Wire Line
	1750 6650 3000 6650
Wire Wire Line
	1800 6750 3000 6750
Wire Wire Line
	1850 6850 3000 6850
Wire Wire Line
	3800 6350 5150 6350
Wire Wire Line
	3800 6450 5100 6450
Wire Wire Line
	3800 6550 5050 6550
Wire Wire Line
	4300 3150 3350 3150
Wire Wire Line
	3350 3050 4350 3050
Wire Wire Line
	3350 2950 4400 2950
Wire Wire Line
	2450 800  2450 750 
Wire Wire Line
	2450 1450 2550 1450
Wire Wire Line
	3350 1450 3450 1450
Wire Wire Line
	3450 1450 3450 1300
Wire Wire Line
	3450 800  3450 750 
Wire Wire Line
	2900 5100 2900 5250
Wire Wire Line
	2900 4600 2900 4550
Wire Wire Line
	3900 5250 3900 5100
Wire Wire Line
	3900 4600 3900 4550
Wire Wire Line
	2900 5250 3000 5250
Wire Wire Line
	3900 5250 3800 5250
Text Label 4700 3100 0    60   ~ 0
GPIO_GND
Wire Wire Line
	2000 2850 2550 2850
Wire Wire Line
	2000 2850 2000 3050
Wire Wire Line
	2000 3050 1200 3050
Wire Wire Line
	1200 2850 1950 2850
Wire Wire Line
	1950 2850 1950 2750
Wire Wire Line
	1950 2750 2550 2750
Wire Wire Line
	1350 2650 2550 2650
Wire Wire Line
	1800 2450 1350 2450
Text Label 4700 2350 0    60   ~ 0
GPIO_GND
Text Label 4700 2150 0    60   ~ 0
GPIO_GND
Text HLabel 1100 1900 0    60   Input ~ 0
VDD_A
Wire Wire Line
	1100 1900 1950 1900
Text Label 10000 3400 2    60   ~ 0
TEC_COL0
NoConn ~ 6450 2600
NoConn ~ 6450 3200
NoConn ~ 6950 2800
NoConn ~ 6950 3000
NoConn ~ 6950 2200
NoConn ~ 6950 2400
NoConn ~ 10000 2400
NoConn ~ 10500 2600
NoConn ~ 10000 2800
NoConn ~ 10000 3000
NoConn ~ 10500 3200
NoConn ~ 10000 3400
NoConn ~ 10000 3600
$EndSCHEMATC