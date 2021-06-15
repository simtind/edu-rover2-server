EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 3
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
L Device:D D?
U 1 1 5FFEEEFF
P 5150 5275
AR Path="/5FFEEEFF" Ref="D?"  Part="1" 
AR Path="/5FFEC45F/5FFEEEFF" Ref="D?"  Part="1" 
AR Path="/60017CE1/5FFEEEFF" Ref="D?"  Part="1" 
AR Path="/600184A3/5FFEEEFF" Ref="D?"  Part="1" 
AR Path="/60018874/5FFEEEFF" Ref="D?"  Part="1" 
AR Path="/6003A868/5FFEEEFF" Ref="D?"  Part="1" 
AR Path="/6003F027/5FFEEEFF" Ref="D?"  Part="1" 
AR Path="/60043462/5FFEEEFF" Ref="D204"  Part="1" 
AR Path="/60A21E25/5FFEEEFF" Ref="D304"  Part="1" 
AR Path="/60A3400F/5FFEEEFF" Ref="D312"  Part="1" 
F 0 "D312" H 5350 5325 50  0000 C CNN
F 1 "D" H 5300 5225 50  0001 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P3.81mm_Vertical_KathodeUp" H 5150 5275 50  0001 C CNN
F 3 "" H 5150 5275 50  0000 C CNN
	1    5150 5275
	0    1    1    0   
$EndComp
$Comp
L Device:D D?
U 1 1 5FFEEF0B
P 5000 5275
AR Path="/5FFEEF0B" Ref="D?"  Part="1" 
AR Path="/5FFEC45F/5FFEEF0B" Ref="D?"  Part="1" 
AR Path="/60017CE1/5FFEEF0B" Ref="D?"  Part="1" 
AR Path="/600184A3/5FFEEF0B" Ref="D?"  Part="1" 
AR Path="/60018874/5FFEEF0B" Ref="D?"  Part="1" 
AR Path="/6003A868/5FFEEF0B" Ref="D?"  Part="1" 
AR Path="/6003F027/5FFEEF0B" Ref="D?"  Part="1" 
AR Path="/60043462/5FFEEF0B" Ref="D202"  Part="1" 
AR Path="/60A21E25/5FFEEF0B" Ref="D302"  Part="1" 
AR Path="/60A3400F/5FFEEF0B" Ref="D310"  Part="1" 
F 0 "D310" H 5200 5325 50  0000 C CNN
F 1 "D" H 5150 5225 50  0001 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P3.81mm_Vertical_KathodeUp" H 5000 5275 50  0001 C CNN
F 3 "" H 5000 5275 50  0000 C CNN
	1    5000 5275
	0    1    1    0   
$EndComp
Wire Wire Line
	2025 4175 3325 4175
Text GLabel 4025 2875 1    60   Input ~ 0
+Bat
Text GLabel 3350 3225 3    60   Input ~ 0
GND
Wire Wire Line
	2025 4075 3325 4075
Text GLabel 5150 5575 3    60   Input ~ 0
GND
Text GLabel 3925 5275 3    60   Input ~ 0
GND
Text HLabel 2475 2575 0    60   Input ~ 0
GND
Text GLabel 2475 2575 2    60   Input ~ 0
GND
Text HLabel 2475 2475 0    60   Input ~ 0
+Bat
Text GLabel 2475 2475 2    60   Input ~ 0
+Bat
$Comp
L Device:C C?
U 1 1 600F7A3C
P 3775 3125
AR Path="/600F7A3C" Ref="C?"  Part="1" 
AR Path="/60043462/600F7A3C" Ref="C201"  Part="1" 
AR Path="/5FFEC45F/600F7A3C" Ref="C?"  Part="1" 
AR Path="/6003A868/600F7A3C" Ref="C?"  Part="1" 
AR Path="/6003F027/600F7A3C" Ref="C?"  Part="1" 
AR Path="/60A21E25/600F7A3C" Ref="C301"  Part="1" 
AR Path="/60A3400F/600F7A3C" Ref="C305"  Part="1" 
F 0 "C305" V 3650 3400 50  0000 C CNN
F 1 "100nF" V 3725 3375 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 3813 2975 50  0001 C CNN
F 3 "~" H 3775 3125 50  0001 C CNN
	1    3775 3125
	0    -1   1    0   
$EndComp
Wire Wire Line
	5150 5575 5150 5425
Text GLabel 5000 5575 3    60   Input ~ 0
GND
Wire Wire Line
	5000 5575 5000 5425
Wire Wire Line
	3925 3125 3925 2875
Connection ~ 3925 3125
Text HLabel 2475 2375 0    60   Input ~ 0
+5V
Text GLabel 2475 2375 2    60   Input ~ 0
+5V
Text Notes 650  950  0    60   ~ 0
This sheet is copied 4 times since we're controlling 4 motors.\nThe first copy uses component number 200 and up, the second 300 and up, and so on.\nIn notes this sheet will use component numbers in the 200 range for simplicity.
$Comp
L Driver_Motor:L298HN U201
U 1 1 6099A2B6
P 3925 4575
AR Path="/60043462/6099A2B6" Ref="U201"  Part="1" 
AR Path="/60A21E25/6099A2B6" Ref="U301"  Part="1" 
AR Path="/60A3400F/6099A2B6" Ref="U304"  Part="1" 
F 0 "U304" H 3475 5325 50  0000 C CNN
F 1 "L298HN" H 3575 5250 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-15_P2.54x2.54mm_StaggerOdd_Lead4.58mm_Vertical" H 3975 3925 50  0001 L CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/CD00000240.pdf" H 4075 4825 50  0001 C CNN
	1    3925 4575
	1    0    0    -1  
$EndComp
$Comp
L Device:D D?
U 1 1 6099A9EA
P 5150 4025
AR Path="/6099A9EA" Ref="D?"  Part="1" 
AR Path="/5FFEC45F/6099A9EA" Ref="D?"  Part="1" 
AR Path="/60017CE1/6099A9EA" Ref="D?"  Part="1" 
AR Path="/600184A3/6099A9EA" Ref="D?"  Part="1" 
AR Path="/60018874/6099A9EA" Ref="D?"  Part="1" 
AR Path="/6003A868/6099A9EA" Ref="D?"  Part="1" 
AR Path="/6003F027/6099A9EA" Ref="D?"  Part="1" 
AR Path="/60043462/6099A9EA" Ref="D203"  Part="1" 
AR Path="/60A21E25/6099A9EA" Ref="D303"  Part="1" 
AR Path="/60A3400F/6099A9EA" Ref="D311"  Part="1" 
F 0 "D311" H 5000 4100 50  0000 C CNN
F 1 "D" H 5300 3975 50  0001 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P3.81mm_Vertical_KathodeUp" H 5150 4025 50  0001 C CNN
F 3 "" H 5150 4025 50  0000 C CNN
	1    5150 4025
	0    1    1    0   
$EndComp
$Comp
L Device:D D?
U 1 1 6099B26B
P 5000 4025
AR Path="/6099B26B" Ref="D?"  Part="1" 
AR Path="/5FFEC45F/6099B26B" Ref="D?"  Part="1" 
AR Path="/60017CE1/6099B26B" Ref="D?"  Part="1" 
AR Path="/600184A3/6099B26B" Ref="D?"  Part="1" 
AR Path="/60018874/6099B26B" Ref="D?"  Part="1" 
AR Path="/6003A868/6099B26B" Ref="D?"  Part="1" 
AR Path="/6003F027/6099B26B" Ref="D?"  Part="1" 
AR Path="/60043462/6099B26B" Ref="D201"  Part="1" 
AR Path="/60A21E25/6099B26B" Ref="D301"  Part="1" 
AR Path="/60A3400F/6099B26B" Ref="D309"  Part="1" 
F 0 "D309" H 4875 4100 50  0000 C CNN
F 1 "D" H 5150 3975 50  0001 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P3.81mm_Vertical_KathodeUp" H 5000 4025 50  0001 C CNN
F 3 "" H 5000 4025 50  0000 C CNN
	1    5000 4025
	0    1    1    0   
$EndComp
$Comp
L Device:D D?
U 1 1 609ACCEB
P 5575 5275
AR Path="/609ACCEB" Ref="D?"  Part="1" 
AR Path="/5FFEC45F/609ACCEB" Ref="D?"  Part="1" 
AR Path="/60017CE1/609ACCEB" Ref="D?"  Part="1" 
AR Path="/600184A3/609ACCEB" Ref="D?"  Part="1" 
AR Path="/60018874/609ACCEB" Ref="D?"  Part="1" 
AR Path="/6003A868/609ACCEB" Ref="D?"  Part="1" 
AR Path="/6003F027/609ACCEB" Ref="D?"  Part="1" 
AR Path="/60043462/609ACCEB" Ref="D208"  Part="1" 
AR Path="/60A21E25/609ACCEB" Ref="D308"  Part="1" 
AR Path="/60A3400F/609ACCEB" Ref="D316"  Part="1" 
F 0 "D316" H 5775 5325 50  0000 C CNN
F 1 "D" H 5725 5225 50  0001 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P3.81mm_Vertical_KathodeUp" H 5575 5275 50  0001 C CNN
F 3 "" H 5575 5275 50  0000 C CNN
	1    5575 5275
	0    1    1    0   
$EndComp
$Comp
L Device:D D?
U 1 1 609ACCF1
P 5425 5275
AR Path="/609ACCF1" Ref="D?"  Part="1" 
AR Path="/5FFEC45F/609ACCF1" Ref="D?"  Part="1" 
AR Path="/60017CE1/609ACCF1" Ref="D?"  Part="1" 
AR Path="/600184A3/609ACCF1" Ref="D?"  Part="1" 
AR Path="/60018874/609ACCF1" Ref="D?"  Part="1" 
AR Path="/6003A868/609ACCF1" Ref="D?"  Part="1" 
AR Path="/6003F027/609ACCF1" Ref="D?"  Part="1" 
AR Path="/60043462/609ACCF1" Ref="D206"  Part="1" 
AR Path="/60A21E25/609ACCF1" Ref="D306"  Part="1" 
AR Path="/60A3400F/609ACCF1" Ref="D314"  Part="1" 
F 0 "D314" H 5625 5325 50  0000 C CNN
F 1 "D" H 5575 5225 50  0001 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P3.81mm_Vertical_KathodeUp" H 5425 5275 50  0001 C CNN
F 3 "" H 5425 5275 50  0000 C CNN
	1    5425 5275
	0    1    1    0   
$EndComp
Text GLabel 5575 5575 3    60   Input ~ 0
GND
Wire Wire Line
	5575 5575 5575 5425
Text GLabel 5425 5575 3    60   Input ~ 0
GND
Wire Wire Line
	5425 5575 5425 5425
$Comp
L Device:D D?
U 1 1 609ACD01
P 5575 4025
AR Path="/609ACD01" Ref="D?"  Part="1" 
AR Path="/5FFEC45F/609ACD01" Ref="D?"  Part="1" 
AR Path="/60017CE1/609ACD01" Ref="D?"  Part="1" 
AR Path="/600184A3/609ACD01" Ref="D?"  Part="1" 
AR Path="/60018874/609ACD01" Ref="D?"  Part="1" 
AR Path="/6003A868/609ACD01" Ref="D?"  Part="1" 
AR Path="/6003F027/609ACD01" Ref="D?"  Part="1" 
AR Path="/60043462/609ACD01" Ref="D207"  Part="1" 
AR Path="/60A21E25/609ACD01" Ref="D307"  Part="1" 
AR Path="/60A3400F/609ACD01" Ref="D315"  Part="1" 
F 0 "D315" H 5425 4100 50  0000 C CNN
F 1 "D" H 5725 3975 50  0001 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P3.81mm_Vertical_KathodeUp" H 5575 4025 50  0001 C CNN
F 3 "" H 5575 4025 50  0000 C CNN
	1    5575 4025
	0    1    1    0   
$EndComp
$Comp
L Device:D D?
U 1 1 609ACD07
P 5425 4025
AR Path="/609ACD07" Ref="D?"  Part="1" 
AR Path="/5FFEC45F/609ACD07" Ref="D?"  Part="1" 
AR Path="/60017CE1/609ACD07" Ref="D?"  Part="1" 
AR Path="/600184A3/609ACD07" Ref="D?"  Part="1" 
AR Path="/60018874/609ACD07" Ref="D?"  Part="1" 
AR Path="/6003A868/609ACD07" Ref="D?"  Part="1" 
AR Path="/6003F027/609ACD07" Ref="D?"  Part="1" 
AR Path="/60043462/609ACD07" Ref="D205"  Part="1" 
AR Path="/60A21E25/609ACD07" Ref="D305"  Part="1" 
AR Path="/60A3400F/609ACD07" Ref="D313"  Part="1" 
F 0 "D313" H 5300 4100 50  0000 C CNN
F 1 "D" H 5575 3975 50  0001 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P3.81mm_Vertical_KathodeUp" H 5425 4025 50  0001 C CNN
F 3 "" H 5425 4025 50  0000 C CNN
	1    5425 4025
	0    1    1    0   
$EndComp
Text GLabel 5300 3575 1    60   Input ~ 0
+Bat
Wire Wire Line
	4525 4775 5575 4775
Wire Wire Line
	4525 4375 5000 4375
Wire Wire Line
	4525 4475 5150 4475
Wire Wire Line
	5000 3875 5000 3575
Wire Wire Line
	5000 3575 5150 3575
Wire Wire Line
	5150 3875 5150 3575
Connection ~ 5150 3575
Wire Wire Line
	5425 3875 5425 3575
Wire Wire Line
	5150 3575 5425 3575
Wire Wire Line
	5425 3575 5575 3575
Wire Wire Line
	5575 3575 5575 3875
Connection ~ 5425 3575
Wire Wire Line
	5000 4175 5000 4375
Connection ~ 5000 4375
Wire Wire Line
	5000 4375 5825 4375
Wire Wire Line
	5150 4175 5150 4475
Connection ~ 5150 4475
Wire Wire Line
	5150 4475 5825 4475
Wire Wire Line
	5000 4375 5000 5125
Wire Wire Line
	5150 4475 5150 5125
Wire Wire Line
	5425 4175 5425 4675
Wire Wire Line
	4525 4675 5425 4675
Connection ~ 5425 4675
Wire Wire Line
	5425 4675 5825 4675
Wire Wire Line
	5575 4175 5575 4775
Connection ~ 5575 4775
Wire Wire Line
	5575 4775 5825 4775
Wire Wire Line
	5575 4775 5575 5125
Wire Wire Line
	5425 4675 5425 5125
Wire Wire Line
	3350 3125 3350 3225
Wire Wire Line
	3350 3125 3625 3125
Wire Wire Line
	3925 3125 3925 3875
Wire Wire Line
	4025 2875 4025 3125
$Comp
L Device:CP C?
U 1 1 609C5861
P 4175 3125
AR Path="/609C5861" Ref="C?"  Part="1" 
AR Path="/5FFEC45F/609C5861" Ref="C?"  Part="1" 
AR Path="/60017CE1/609C5861" Ref="C?"  Part="1" 
AR Path="/600184A3/609C5861" Ref="C?"  Part="1" 
AR Path="/60018874/609C5861" Ref="C?"  Part="1" 
AR Path="/6003A868/609C5861" Ref="C?"  Part="1" 
AR Path="/6003F027/609C5861" Ref="C?"  Part="1" 
AR Path="/60043462/609C5861" Ref="C202"  Part="1" 
AR Path="/60A21E25/609C5861" Ref="C302"  Part="1" 
AR Path="/60A3400F/609C5861" Ref="C306"  Part="1" 
F 0 "C306" V 4300 2950 50  0000 C CNN
F 1 "470uF" V 4225 2900 50  0000 C CNN
F 2 "Capacitor_THT:CP_Radial_D12.5mm_P5.00mm" H 4213 2975 50  0001 C CNN
F 3 "~" H 4175 3125 50  0001 C CNN
	1    4175 3125
	0    -1   -1   0   
$EndComp
Text GLabel 3925 2875 1    60   Input ~ 0
+5V
Text GLabel 4600 3225 3    60   Input ~ 0
GND
Wire Wire Line
	4600 3125 4600 3225
Wire Wire Line
	4600 3125 4325 3125
Wire Wire Line
	2025 4575 3325 4575
Wire Wire Line
	2025 4475 3325 4475
Text HLabel 2025 4475 0    60   Input ~ 0
IN1B
Text HLabel 2025 4575 0    60   Input ~ 0
IN2B
Text HLabel 2025 4175 0    60   Input ~ 0
IN2A
Text HLabel 2025 4075 0    60   Input ~ 0
IN1A
Text HLabel 1675 4475 0    60   Input ~ 0
ENABLE
Wire Wire Line
	1675 4275 1675 4675
Wire Wire Line
	1675 4275 3325 4275
Wire Wire Line
	1675 4675 3325 4675
Wire Notes Line
	9650 2975 9650 1275
Wire Notes Line
	7600 2975 9650 2975
Wire Notes Line
	7600 1275 7600 2975
Text HLabel 8350 1925 0    39   Input ~ 0
SENSEA
Wire Wire Line
	8350 2525 8350 2225
Wire Wire Line
	8750 2525 8350 2525
Wire Wire Line
	8750 1525 8750 1675
Connection ~ 8750 1675
Wire Wire Line
	8750 1675 8750 1725
Text GLabel 9050 1675 2    60   Input ~ 0
GND
$Comp
L Device:C C?
U 1 1 60487676
P 8900 1675
AR Path="/60487676" Ref="C?"  Part="1" 
AR Path="/60043462/60487676" Ref="C203"  Part="1" 
AR Path="/5FFEC45F/60487676" Ref="C?"  Part="1" 
AR Path="/6003A868/60487676" Ref="C?"  Part="1" 
AR Path="/6003F027/60487676" Ref="C?"  Part="1" 
AR Path="/60A21E25/60487676" Ref="C303"  Part="1" 
AR Path="/60A3400F/60487676" Ref="C307"  Part="1" 
F 0 "C307" V 9100 1825 50  0000 C CNN
F 1 "100nF" V 9000 1875 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 8938 1525 50  0001 C CNN
F 3 "~" H 8900 1675 50  0001 C CNN
	1    8900 1675
	0    1    -1   0   
$EndComp
Text GLabel 8750 1525 0    60   Input ~ 0
+5V
$Comp
L Sensor_Current:ACS723xLCTR-05AB U?
U 1 1 60485F83
P 8750 2125
AR Path="/5FFEC45F/60485F83" Ref="U?"  Part="1" 
AR Path="/6003A868/60485F83" Ref="U?"  Part="1" 
AR Path="/6003F027/60485F83" Ref="U?"  Part="1" 
AR Path="/60043462/60485F83" Ref="U202"  Part="1" 
AR Path="/60A21E25/60485F83" Ref="U302"  Part="1" 
AR Path="/60A3400F/60485F83" Ref="U305"  Part="1" 
F 0 "U305" H 9000 2575 50  0000 C CNN
F 1 "ACS723xLCTR-05AB" H 9250 2475 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 8850 1775 50  0001 L CIN
F 3 "http://www.allegromicro.com/~/media/Files/Datasheets/ACS723-Datasheet.ashx?la=en" H 8750 2125 50  0001 C CNN
	1    8750 2125
	-1   0    0    -1  
$EndComp
Text GLabel 8750 2525 2    60   Input ~ 0
GND
Connection ~ 9800 1925
Wire Wire Line
	9800 1175 10200 1175
Wire Wire Line
	9800 1925 9800 1175
Wire Wire Line
	9800 2225 9800 2625
Connection ~ 9800 2225
Wire Wire Line
	9800 2625 9950 2625
Wire Wire Line
	9150 2225 9800 2225
Wire Wire Line
	9150 1925 9800 1925
$Comp
L Device:R R?
U 1 1 6032BA93
P 9800 2075
AR Path="/6032BA93" Ref="R?"  Part="1" 
AR Path="/6003A868/6032BA93" Ref="R?"  Part="1" 
AR Path="/5FFEC45F/6032BA93" Ref="R?"  Part="1" 
AR Path="/6003F027/6032BA93" Ref="R?"  Part="1" 
AR Path="/60043462/6032BA93" Ref="R201"  Part="1" 
AR Path="/60A21E25/6032BA93" Ref="R301"  Part="1" 
AR Path="/60A3400F/6032BA93" Ref="R303"  Part="1" 
F 0 "R303" V 9880 2075 50  0000 C CNN
F 1 "0" V 9800 2075 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" V 9730 2075 50  0001 C CNN
F 3 "" H 9800 2075 50  0000 C CNN
	1    9800 2075
	-1   0    0    1   
$EndComp
Wire Notes Line
	9650 1275 7600 1275
Text Notes 7700 2875 0    39   ~ 0
If measurement of motor current is not required, bridge R201\nwith a wire, and do not mount components inside this box.
Text Notes 7650 1425 0    60   Italic 0
Optional current measurement, motor A
Text Notes 9970 1655 0    39   ~ 0
Im = Motor Current
Wire Notes Line
	9950 1425 9950 1775
Text Notes 9921 1785 0    60   ~ 0
V
Text GLabel 9950 2625 2    60   Input ~ 0
GND
Wire Notes Line
	9700 5450 9700 3750
Wire Notes Line
	7650 5450 9700 5450
Wire Notes Line
	7650 3750 7650 5450
Text HLabel 8400 4400 0    39   Input ~ 0
SENSEB
Wire Wire Line
	8400 5000 8400 4700
Wire Wire Line
	8800 5000 8400 5000
Wire Wire Line
	8800 4000 8800 4150
Connection ~ 8800 4150
Wire Wire Line
	8800 4150 8800 4200
Text GLabel 9100 4150 2    60   Input ~ 0
GND
$Comp
L Device:C C?
U 1 1 609D3EFB
P 8950 4150
AR Path="/609D3EFB" Ref="C?"  Part="1" 
AR Path="/60043462/609D3EFB" Ref="C204"  Part="1" 
AR Path="/5FFEC45F/609D3EFB" Ref="C?"  Part="1" 
AR Path="/6003A868/609D3EFB" Ref="C?"  Part="1" 
AR Path="/6003F027/609D3EFB" Ref="C?"  Part="1" 
AR Path="/60A21E25/609D3EFB" Ref="C304"  Part="1" 
AR Path="/60A3400F/609D3EFB" Ref="C308"  Part="1" 
F 0 "C308" V 9150 4300 50  0000 C CNN
F 1 "100nF" V 9050 4350 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 8988 4000 50  0001 C CNN
F 3 "~" H 8950 4150 50  0001 C CNN
	1    8950 4150
	0    1    -1   0   
$EndComp
Text GLabel 8800 4000 0    60   Input ~ 0
+5V
$Comp
L Sensor_Current:ACS723xLCTR-05AB U?
U 1 1 609D3F02
P 8800 4600
AR Path="/5FFEC45F/609D3F02" Ref="U?"  Part="1" 
AR Path="/6003A868/609D3F02" Ref="U?"  Part="1" 
AR Path="/6003F027/609D3F02" Ref="U?"  Part="1" 
AR Path="/60043462/609D3F02" Ref="U203"  Part="1" 
AR Path="/60A21E25/609D3F02" Ref="U303"  Part="1" 
AR Path="/60A3400F/609D3F02" Ref="U306"  Part="1" 
F 0 "U306" H 9050 5050 50  0000 C CNN
F 1 "ACS723xLCTR-05AB" H 9300 4950 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 8900 4250 50  0001 L CIN
F 3 "http://www.allegromicro.com/~/media/Files/Datasheets/ACS723-Datasheet.ashx?la=en" H 8800 4600 50  0001 C CNN
	1    8800 4600
	-1   0    0    -1  
$EndComp
Text GLabel 8800 5000 2    60   Input ~ 0
GND
Connection ~ 9850 4400
Wire Wire Line
	9850 3650 10250 3650
Wire Wire Line
	9850 4400 9850 3650
Wire Wire Line
	9850 4700 9850 5100
Connection ~ 9850 4700
Wire Wire Line
	9850 5100 10000 5100
Wire Wire Line
	9200 4700 9850 4700
Wire Wire Line
	9200 4400 9850 4400
$Comp
L Device:R R?
U 1 1 609D3F11
P 9850 4550
AR Path="/609D3F11" Ref="R?"  Part="1" 
AR Path="/6003A868/609D3F11" Ref="R?"  Part="1" 
AR Path="/5FFEC45F/609D3F11" Ref="R?"  Part="1" 
AR Path="/6003F027/609D3F11" Ref="R?"  Part="1" 
AR Path="/60043462/609D3F11" Ref="R202"  Part="1" 
AR Path="/60A21E25/609D3F11" Ref="R302"  Part="1" 
AR Path="/60A3400F/609D3F11" Ref="R304"  Part="1" 
F 0 "R304" V 9930 4550 50  0000 C CNN
F 1 "0" V 9850 4550 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" V 9780 4550 50  0001 C CNN
F 3 "" H 9850 4550 50  0000 C CNN
	1    9850 4550
	-1   0    0    1   
$EndComp
Wire Notes Line
	9700 3750 7650 3750
Text Notes 7750 5350 0    39   ~ 0
If measurement of motor current is not required, bridge R201\nwith a wire, and do not mount components inside this box.
Text Notes 7700 3900 0    60   Italic 0
Optional current measurement, motor B
Text Notes 10020 4130 0    39   ~ 0
Im = Motor Current
Wire Notes Line
	10000 3900 10000 4250
Text Notes 9971 4260 0    60   ~ 0
V
Text GLabel 10000 5100 2    60   Input ~ 0
GND
Connection ~ 4025 3125
Wire Wire Line
	4025 3125 4025 3875
Text HLabel 5825 4675 2    60   Input ~ 0
MOTB-
Text HLabel 5825 4775 2    60   Input ~ 0
MOTB+
Text HLabel 5825 4375 2    60   Input ~ 0
MOTA-
Text HLabel 5825 4475 2    60   Input ~ 0
MOTA+
Text Label 9900 1175 0    50   ~ 0
IA
Text Label 10000 3650 0    50   ~ 0
IB
Text Label 3725 5425 1    50   ~ 0
IB
Text Label 3625 5425 1    50   ~ 0
IA
Wire Wire Line
	3625 5425 3625 5275
Wire Wire Line
	3725 5275 3725 5425
$EndSCHEMATC
