EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 1 3
Title "eduROV motherboard"
Date ""
Rev "A"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector_Generic:Conn_01x03 P102
U 1 1 59CD089E
P 6075 9500
F 0 "P102" H 6075 9700 50  0000 C CNN
F 1 "Ext press" V 6175 9500 50  0000 C CNN
F 2 "Connector_JST:JST_PH_B3B-PH-K_1x03_P2.00mm_Vertical" H 6075 9500 50  0001 C CNN
F 3 "" H 6075 9500 50  0000 C CNN
	1    6075 9500
	1    0    0    -1  
$EndComp
Text GLabel 7200 9600 0    60   Input ~ 0
GND
Text GLabel 5875 9600 0    60   Input ~ 0
GND
Text GLabel 9600 8725 2    60   Input ~ 0
+Batt
$Comp
L Device:R R108
U 1 1 59CD15CB
P 9550 9525
F 0 "R108" V 9630 9525 50  0000 C CNN
F 1 "10k" V 9550 9525 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 9480 9525 50  0001 C CNN
F 3 "" H 9550 9525 50  0000 C CNN
	1    9550 9525
	-1   0    0    1   
$EndComp
Text GLabel 9550 9675 0    60   Input ~ 0
BattMonitor
Text GLabel 7200 9400 0    60   Input ~ 0
TempMonitor
Text GLabel 5875 9400 0    60   Input ~ 0
PressMonitor
$Comp
L Connector_Generic:Conn_01x02 2Pscrew103
U 1 1 59CD3D3E
P 13925 4750
F 0 "2Pscrew103" H 14275 4700 50  0000 C CNN
F 1 "Channel 3" H 14225 4800 50  0000 C CNN
F 2 "TerminalBlock_Altech:Altech_AK300_1x02_P5.00mm_45-Degree" H 13925 4750 50  0001 C CNN
F 3 "" H 13925 4750 50  0000 C CNN
	1    13925 4750
	1    0    0    1   
$EndComp
Text GLabel 12225 7500 0    60   Input ~ 0
IO_LED
$Comp
L Device:R R110
U 1 1 59D35BF6
P 12425 7650
F 0 "R110" V 12505 7650 50  0000 C CNN
F 1 "10k" V 12425 7650 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 12355 7650 50  0001 C CNN
F 3 "" H 12425 7650 50  0000 C CNN
	1    12425 7650
	-1   0    0    1   
$EndComp
Text GLabel 12225 7800 0    60   Input ~ 0
GND
$Comp
L Connector_Generic:Conn_01x04 P105
U 1 1 59D3A8DC
P 13575 7025
F 0 "P105" H 13750 7025 50  0000 C CNN
F 1 "Ch LED" H 13800 6950 50  0000 C CNN
F 2 "Connector_JST:JST_PH_B4B-PH-K_1x04_P2.00mm_Vertical" H 13575 7025 50  0001 C CNN
F 3 "" H 13575 7025 50  0000 C CNN
	1    13575 7025
	1    0    0    -1  
$EndComp
Text GLabel 12225 6925 0    60   Input ~ 0
+Batt
$Comp
L Edurov:IRL540NPBF Q101
U 1 1 5A60C2A4
P 13075 7500
F 0 "Q101" H 13325 7575 50  0000 L CNN
F 1 "IRL540NPBF" H 13325 7500 50  0001 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 13325 7425 50  0001 L CIN
F 3 "" H 13075 7500 50  0001 L CNN
	1    13075 7500
	1    0    0    -1  
$EndComp
Text GLabel 9600 10025 2    60   Input ~ 0
-Batt
Text Notes 12155 10350 0    59   ~ 0
PCB is made with 2oz copper layer due to cross-section requirement
$Comp
L Connector:Raspberry_Pi_2_3 RaspberryPI101
U 1 1 5F72663B
P 3125 4025
F 0 "RaspberryPI101" H 2375 5375 50  0000 C CNN
F 1 "Raspberry_Pi_2_3" H 2475 5275 50  0000 C CNN
F 2 "EduRov:RaspBerry_PI" H 3125 4025 50  0001 C CNN
F 3 "https://www.raspberrypi.org/documentation/hardware/raspberrypi/schematics/rpi_SCH_3bplus_1p0_reduced.pdf" H 3125 4025 50  0001 C CNN
	1    3125 4025
	-1   0    0    -1  
$EndComp
Text GLabel 3325 2725 1    60   Input ~ 0
+5V
Text GLabel 3225 2725 1    60   Input ~ 0
+5V
Text GLabel 3175 5475 3    60   Input ~ 0
GND
Wire Wire Line
	3525 5325 3525 5425
Wire Wire Line
	3525 5425 3425 5425
Wire Wire Line
	3175 5425 3175 5475
Wire Wire Line
	3425 5325 3425 5425
Connection ~ 3425 5425
Wire Wire Line
	3425 5425 3325 5425
Connection ~ 3325 5425
Wire Wire Line
	3325 5425 3225 5425
Wire Wire Line
	3225 5325 3225 5425
Connection ~ 3225 5425
Wire Wire Line
	3225 5425 3175 5425
Wire Wire Line
	3125 5325 3125 5425
Wire Wire Line
	3125 5425 3175 5425
Connection ~ 3175 5425
Wire Wire Line
	3125 5425 3025 5425
Wire Wire Line
	3025 5425 3025 5325
Connection ~ 3125 5425
Wire Wire Line
	3025 5425 2925 5425
Wire Wire Line
	2925 5425 2925 5325
Connection ~ 3025 5425
Wire Wire Line
	2925 5425 2825 5425
Wire Wire Line
	2825 5425 2825 5325
Connection ~ 2925 5425
$Comp
L Device:R R109
U 1 1 5F76240D
P 9550 9825
F 0 "R109" V 9630 9825 50  0000 C CNN
F 1 "10k" V 9550 9825 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 9480 9825 50  0001 C CNN
F 3 "" H 9550 9825 50  0000 C CNN
	1    9550 9825
	-1   0    0    1   
$EndComp
$Comp
L Device:R R107
U 1 1 59CD11FD
P 9550 9225
F 0 "R107" V 9630 9225 50  0000 C CNN
F 1 "10k" V 9550 9225 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 9480 9225 50  0001 C CNN
F 3 "" H 9550 9225 50  0000 C CNN
	1    9550 9225
	-1   0    0    1   
$EndComp
Wire Wire Line
	9600 8725 9550 8725
Wire Wire Line
	9550 8725 9550 8775
Wire Wire Line
	9550 9975 9550 10025
Wire Wire Line
	9550 10025 9600 10025
Wire Wire Line
	3325 5325 3325 5425
$Comp
L Device:R R105
U 1 1 59CD3229
P 6375 3525
F 0 "R105" V 6455 3525 50  0000 C CNN
F 1 "10k" V 6375 3525 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6305 3525 50  0001 C CNN
F 3 "" H 6375 3525 50  0000 C CNN
	1    6375 3525
	1    0    0    1   
$EndComp
Text GLabel 6375 3675 3    60   Input ~ 0
GND
Text GLabel 7925 3925 2    60   Input ~ 0
BattMonitor
Text GLabel 7925 3825 2    60   Input ~ 0
PressMonitor
Text GLabel 7925 3725 2    60   Input ~ 0
TempMonitor
$Comp
L Device:R R106
U 1 1 5FB9B542
P 9550 8925
F 0 "R106" V 9630 8925 50  0000 C CNN
F 1 "10k" V 9550 8925 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 9480 8925 50  0001 C CNN
F 3 "" H 9550 8925 50  0000 C CNN
	1    9550 8925
	-1   0    0    1   
$EndComp
Wire Wire Line
	12225 7800 12425 7800
Connection ~ 12425 7800
Wire Wire Line
	12225 7500 12425 7500
Connection ~ 12425 7500
Wire Wire Line
	12425 7500 12875 7500
Text Label 13325 4650 0    60   ~ 0
Mot3+
Text Label 13325 4750 0    60   ~ 0
Mot3-
$Comp
L Connector_Generic:Conn_01x02 2Pscrew101
U 1 1 59CD3B58
P 13900 2425
F 0 "2Pscrew101" H 14250 2375 50  0000 C CNN
F 1 "Channel 1" H 14200 2475 50  0000 C CNN
F 2 "TerminalBlock_Altech:Altech_AK300_1x02_P5.00mm_45-Degree" H 13900 2425 50  0001 C CNN
F 3 "" H 13900 2425 50  0000 C CNN
	1    13900 2425
	1    0    0    1   
$EndComp
Text GLabel 13200 3275 2    60   Input ~ 0
GND
Text GLabel 13200 1950 2    60   Input ~ 0
+Batt
$Comp
L Connector_Generic:Conn_01x02 2Pscrew104
U 1 1 59CD3CF4
P 13925 5325
F 0 "2Pscrew104" H 14275 5275 50  0000 C CNN
F 1 "Channel 4" H 14225 5375 50  0000 C CNN
F 2 "TerminalBlock_Altech:Altech_AK300_1x02_P5.00mm_45-Degree" H 13925 5325 50  0001 C CNN
F 3 "" H 13925 5325 50  0000 C CNN
	1    13925 5325
	1    0    0    1   
$EndComp
Wire Wire Line
	13225 4650 13725 4650
Wire Wire Line
	13225 4750 13725 4750
Text Label 13325 5225 0    60   ~ 0
Mot4+
Text Label 13325 5325 0    60   ~ 0
Mot4-
Wire Wire Line
	13225 5225 13725 5225
Wire Wire Line
	13225 5325 13725 5325
Text Label 13300 2900 0    60   ~ 0
Mot2+
Text Label 13300 3000 0    60   ~ 0
Mot2-
Wire Wire Line
	13200 2900 13700 2900
Wire Wire Line
	13200 3000 13700 3000
Text Label 13300 2325 0    60   ~ 0
Mot1+
Text Label 13300 2425 0    60   ~ 0
Mot1-
Wire Wire Line
	13200 2325 13700 2325
Wire Wire Line
	13200 2425 13700 2425
$Comp
L MCU_Module:Arduino_Nano_v3.x A101
U 1 1 60095748
P 7425 3725
F 0 "A101" H 6525 4725 50  0000 C CNN
F 1 "Arduino_Nano_v3.x" H 6825 4675 50  0000 C CNN
F 2 "Module:Arduino_Nano" H 7425 3725 50  0001 C CIN
F 3 "http://www.mouser.com/pdfdocs/Gravitech_Arduino_Nano3_0.pdf" H 7425 3725 50  0001 C CNN
	1    7425 3725
	1    0    0    -1  
$EndComp
Text GLabel 7925 4425 2    60   Input ~ 0
Sense1
Text GLabel 7925 4325 2    60   Input ~ 0
Sense2
Text GLabel 7925 4225 2    60   Input ~ 0
Sense3
Text GLabel 7925 4125 2    60   Input ~ 0
Sense4
Text GLabel 6925 3725 0    60   Input ~ 0
IO2B
Text GLabel 6925 3825 0    60   Input ~ 0
IO2A
Text GLabel 6225 3325 0    60   Input ~ 0
IOEN
Text GLabel 6925 3625 0    60   Input ~ 0
IO1A
Text GLabel 6925 3525 0    60   Input ~ 0
IO1B
Text GLabel 6925 4025 0    60   Input ~ 0
IO3A
Text GLabel 6925 3925 0    60   Input ~ 0
IO3B
Text GLabel 6925 4225 0    60   Input ~ 0
IO4A
Text GLabel 6925 4125 0    60   Input ~ 0
IO4B
Text GLabel 6925 3425 0    60   Input ~ 0
IO_LED
Text GLabel 7525 4725 3    60   Input ~ 0
GND
Text GLabel 7425 4725 3    60   Input ~ 0
GND
Wire Wire Line
	6225 3325 6375 3325
Wire Wire Line
	6375 3375 6375 3325
Connection ~ 6375 3325
Wire Wire Line
	6375 3325 6925 3325
Text GLabel 7625 2725 1    60   Input ~ 0
+5V
Text GLabel 12125 2525 0    60   Input ~ 0
Sense1
Text GLabel 12125 3100 0    60   Input ~ 0
Sense2
Text GLabel 12125 1950 0    60   Input ~ 0
IOEN
Text GLabel 12150 4275 0    60   Input ~ 0
IOEN
Text GLabel 12125 2900 0    60   Input ~ 0
IO2A
Text GLabel 12125 2425 0    60   Input ~ 0
IO1B
Text GLabel 12125 3000 0    60   Input ~ 0
IO2B
Text GLabel 12125 2325 0    60   Input ~ 0
IO1A
$Comp
L Device:C C101
U 1 1 5FC68142
P 12600 7200
F 0 "C101" H 12475 7250 50  0000 R CNN
F 1 "100nF" H 12475 7175 50  0000 R CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 12638 7050 50  0001 C CNN
F 3 "~" H 12600 7200 50  0001 C CNN
	1    12600 7200
	-1   0    0    -1  
$EndComp
Wire Notes Line
	4575 2975 5725 2975
Wire Notes Line
	4575 4125 4575 2975
Wire Notes Line
	5725 4125 4575 4125
Wire Notes Line
	5725 2975 5725 4125
Text Notes 4875 3625 0    39   ~ 0
These resistors connects \nArduino serial port to \nRaspberry PI serial port.\nCan be ommitted if using \nUSB to power Arduino.
$Comp
L Device:R R102
U 1 1 6015AA7F
P 4775 3675
F 0 "R102" V 4675 3725 50  0000 C CNN
F 1 "10k" V 4775 3675 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4705 3675 50  0001 C CNN
F 3 "" H 4775 3675 50  0000 C CNN
	1    4775 3675
	1    0    0    1   
$EndComp
Connection ~ 4775 3225
Wire Wire Line
	3925 3225 4775 3225
$Comp
L Device:R R101
U 1 1 6015A2BD
P 4775 3375
F 0 "R101" V 4675 3425 50  0000 C CNN
F 1 "10k" V 4775 3375 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4705 3375 50  0001 C CNN
F 3 "" H 4775 3375 50  0000 C CNN
	1    4775 3375
	1    0    0    1   
$EndComp
Wire Wire Line
	4775 3125 3925 3125
$Comp
L Device:R R103
U 1 1 600D5188
P 4925 3125
F 0 "R103" V 4975 3325 50  0000 C CNN
F 1 "10k" V 4925 3125 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4855 3125 50  0001 C CNN
F 3 "" H 4925 3125 50  0000 C CNN
	1    4925 3125
	0    1    -1   0   
$EndComp
Wire Wire Line
	5075 3225 6925 3225
Text GLabel 4775 3825 3    60   Input ~ 0
GND
$Comp
L Device:R R104
U 1 1 600D04E5
P 4925 3225
F 0 "R104" V 4875 3025 50  0000 C CNN
F 1 "10k" V 4925 3225 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4855 3225 50  0001 C CNN
F 3 "" H 4925 3225 50  0000 C CNN
	1    4925 3225
	0    -1   1    0   
$EndComp
Wire Wire Line
	6925 3125 5075 3125
$Comp
L Connector_Generic:Conn_01x03 P103
U 1 1 60763419
P 7400 9500
F 0 "P103" H 7400 9700 50  0000 C CNN
F 1 "Ext press" V 7500 9500 50  0000 C CNN
F 2 "Connector_JST:JST_PH_B3B-PH-K_1x03_P2.00mm_Vertical" H 7400 9500 50  0001 C CNN
F 3 "" H 7400 9500 50  0000 C CNN
	1    7400 9500
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x04 P104
U 1 1 60771AD7
P 8400 9500
F 0 "P104" H 8400 9700 50  0000 C CNN
F 1 "Ext press" V 8500 9500 50  0000 C CNN
F 2 "Connector_JST:JST_PH_B4B-PH-K_1x04_P2.00mm_Vertical" H 8400 9500 50  0001 C CNN
F 3 "" H 8400 9500 50  0000 C CNN
	1    8400 9500
	1    0    0    -1  
$EndComp
Text GLabel 8200 9700 0    60   Input ~ 0
GND
Text GLabel 8200 9400 0    60   Input ~ 0
SCL
Text GLabel 8200 9500 0    60   Input ~ 0
SDA
Text GLabel 2325 3425 0    60   Input ~ 0
SCL
Text GLabel 2325 3525 0    60   Input ~ 0
SDA
Text GLabel 2925 2725 1    60   Input ~ 0
+3V3
Text GLabel 3025 2725 1    60   Input ~ 0
+3V3
$Comp
L Connector_Generic:Conn_01x02 2Pscrew102
U 1 1 59CCD414
P 13900 3000
F 0 "2Pscrew102" H 14250 2950 50  0000 C CNN
F 1 "Channel 2" H 14200 3050 50  0000 C CNN
F 2 "TerminalBlock_Altech:Altech_AK300_1x02_P5.00mm_45-Degree" H 13900 3000 50  0001 C CNN
F 3 "" H 13900 3000 50  0000 C CNN
	1    13900 3000
	1    0    0    1   
$EndComp
Text GLabel 7525 2725 1    60   Input ~ 0
+3V3
Wire Notes Line
	475  7600 10700 7600
Wire Notes Line
	10700 475  10675 475 
Wire Notes Line
	10700 475  10700 11200
Wire Wire Line
	1525 9775 1575 9775
Connection ~ 1525 9775
Wire Wire Line
	1225 9425 1325 9425
Text GLabel 2775 9425 3    60   Input ~ 0
GND
Text GLabel 2675 9425 3    60   Input ~ 0
+Batt
Text GLabel 2975 9425 3    60   Input ~ 0
+5V
Text GLabel 2875 9425 3    60   Input ~ 0
GND
$Comp
L Connector_Generic:Conn_01x04 5vReg101
U 1 1 5F7592EB
P 2775 9225
F 0 "5vReg101" V 2739 8937 50  0000 R CNN
F 1 "Conn_01x04" V 2648 8937 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 2775 9225 50  0001 C CNN
F 3 "~" H 2775 9225 50  0001 C CNN
	1    2775 9225
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1575 9775 1575 9825
Wire Wire Line
	1475 9775 1525 9775
Text GLabel 1575 9825 3    60   Input ~ 0
GND
Text Notes 2625 9125 0    47   ~ 0
Connect 5v regulator here
Text Notes 1025 9060 0    47   ~ 0
Connect battery here
Text GLabel 1475 9775 3    60   Input ~ 0
-Batt
$Comp
L Connector_Generic:Conn_01x02 P101
U 1 1 59F0943E
P 1325 9225
F 0 "P101" H 1325 9375 50  0000 C CNN
F 1 "Battery connector" V 1425 9225 50  0000 C CNN
F 2 "TerminalBlock_Altech:Altech_AK300_1x02_P5.00mm_45-Degree" H 1325 9225 50  0001 C CNN
F 3 "" H 1325 9225 50  0000 C CNN
	1    1325 9225
	0    -1   -1   0   
$EndComp
Text GLabel 1225 9775 3    60   Input ~ 0
+Batt
Text Notes 650  1075 0    394  ~ 0
Computing
Text Notes 550  8150 0    394  ~ 0
Power in\n
Text Notes 5200 8100 0    394  ~ 0
Sensors
Wire Notes Line
	4750 7600 4750 11225
Text Notes 5875 9200 0    47   ~ 0
Pressure
Text Notes 7050 9200 0    47   ~ 0
Temperature
Text Notes 8025 9200 0    47   ~ 0
I2C bus
Text Notes 9375 8550 0    47   ~ 0
Battery level
Text Notes 10975 1050 0    394  ~ 0
Actuators
Text Notes 11200 6600 0    47   ~ 0
Headlights
Wire Wire Line
	13175 7800 13175 7700
Wire Wire Line
	12425 7800 12600 7800
Wire Wire Line
	13375 7225 13175 7225
Wire Wire Line
	13175 7225 13175 7300
Wire Wire Line
	13375 7025 13175 7025
Wire Wire Line
	13175 7025 13175 7225
Connection ~ 13175 7225
Wire Wire Line
	13375 6925 13275 6925
Wire Wire Line
	13375 7125 13275 7125
Wire Wire Line
	13275 7125 13275 6925
Connection ~ 13275 6925
Wire Wire Line
	13275 6925 12600 6925
Wire Wire Line
	12600 6925 12600 7050
Connection ~ 12600 6925
Wire Wire Line
	12600 6925 12225 6925
Wire Wire Line
	12600 7350 12600 7800
Connection ~ 12600 7800
Wire Wire Line
	12600 7800 13175 7800
Text GLabel 13175 7025 0    60   Input ~ 0
LED-
Text Notes 5925 9975 0    60   ~ 0
Sensor connectors compatible with Adafruit Stemma system.
Text GLabel 8200 9600 0    60   Input ~ 0
+3V3
Wire Wire Line
	1525 9425 1525 9775
Wire Wire Line
	1225 9425 1225 9775
Wire Wire Line
	1425 9425 1525 9425
$Sheet
S 12150 4125 1075 1575
U 60A21E25
F0 "MotorController2" 60
F1 "MotorController.sch" 60
F2 "ENABLE" I L 12150 4275 60 
F3 "GND" I R 13225 5600 60 
F4 "+Bat" I R 13225 4275 60 
F5 "MOTA+" I R 13225 5225 50 
F6 "MOTA-" I R 13225 5325 50 
F7 "+5V" I R 13225 4375 50 
F8 "MOTB+" I R 13225 4650 50 
F9 "MOTB-" I R 13225 4750 50 
F10 "IN1B" I L 12150 4650 50 
F11 "IN2B" I L 12150 4750 50 
F12 "IN2A" I L 12150 5325 50 
F13 "IN1A" I L 12150 5225 50 
F14 "SENSEA" I L 12150 5425 50 
F15 "SENSEB" I L 12150 4850 50 
$EndSheet
Text GLabel 13225 4275 2    60   Input ~ 0
+Batt
Text GLabel 13225 5600 2    60   Input ~ 0
GND
Text GLabel 13225 4375 2    60   Input ~ 0
+5V
Text GLabel 12150 5425 0    60   Input ~ 0
Sense4
Text GLabel 12150 5325 0    60   Input ~ 0
IO4B
Text GLabel 12150 5225 0    60   Input ~ 0
IO4A
Text GLabel 12150 4850 0    60   Input ~ 0
Sense3
Text GLabel 12150 4750 0    60   Input ~ 0
IO3B
Text GLabel 12150 4650 0    60   Input ~ 0
IO3A
$Sheet
S 12125 1800 1075 1575
U 60A3400F
F0 "MotorController1" 60
F1 "MotorController.sch" 60
F2 "ENABLE" I L 12125 1950 60 
F3 "GND" I R 13200 3275 60 
F4 "+Bat" I R 13200 1950 60 
F5 "MOTA+" I R 13200 2900 50 
F6 "MOTA-" I R 13200 3000 50 
F7 "+5V" I R 13200 2050 50 
F8 "MOTB+" I R 13200 2325 50 
F9 "MOTB-" I R 13200 2425 50 
F10 "IN1B" I L 12125 2325 50 
F11 "IN2B" I L 12125 2425 50 
F12 "IN2A" I L 12125 3000 50 
F13 "IN1A" I L 12125 2900 50 
F14 "SENSEA" I L 12125 3100 50 
F15 "SENSEB" I L 12125 2525 50 
$EndSheet
$Comp
L Connector_Generic:Conn_01x03 P?
U 1 1 60ABB9B2
P 5425 8375
F 0 "P?" V 5389 8087 50  0000 R CNN
F 1 "Conn_01x03" V 5298 8087 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 5425 8375 50  0001 C CNN
F 3 "~" H 5425 8375 50  0001 C CNN
	1    5425 8375
	0    -1   -1   0   
$EndComp
Text GLabel 5325 8575 3    60   Input ~ 0
+5V
Text GLabel 5525 8575 3    60   Input ~ 0
+3V3
Text GLabel 5425 8575 3    60   Input ~ 0
Vsens
Text GLabel 5875 9500 0    60   Input ~ 0
Vsens
Text GLabel 7200 9500 0    60   Input ~ 0
Vsens
$EndSCHEMATC
