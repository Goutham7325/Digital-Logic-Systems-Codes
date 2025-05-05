# File saved with Nlview 7.7.1 2023-07-26 3bc4126617 VDI=43 GEI=38 GUI=JA:21.0
# 
# non-default properties - (restore without -noprops)
property -colorscheme classic
property attrcolor #000000
property attrfontsize 8
property autobundle 1
property backgroundcolor #ffffff
property boxcolor0 #000000
property boxcolor1 #000000
property boxcolor2 #000000
property boxinstcolor #000000
property boxpincolor #000000
property buscolor #008000
property closeenough 5
property createnetattrdsp 2048
property decorate 1
property elidetext 40
property fillcolor1 #ffffcc
property fillcolor2 #dfebf8
property fillcolor3 #f0f0f0
property gatecellname 2
property instattrmax 30
property instdrag 15
property instorder 1
property marksize 12
property maxfontsize 15
property maxzoom 6.25
property netcolor #19b400
property objecthighlight0 #ff00ff
property objecthighlight1 #ffff00
property objecthighlight2 #00ff00
property objecthighlight3 #0095ff
property objecthighlight4 #8000ff
property objecthighlight5 #ffc800
property objecthighlight7 #00ffff
property objecthighlight8 #ff00ff
property objecthighlight9 #ccccff
property objecthighlight10 #0ead00
property objecthighlight11 #cefc00
property objecthighlight12 #9e2dbe
property objecthighlight13 #ba6a29
property objecthighlight14 #fc0188
property objecthighlight15 #02f990
property objecthighlight16 #f1b0fb
property objecthighlight17 #fec004
property objecthighlight18 #149bff
property objecthighlight19 #eb591b
property overlaycolor #19b400
property pbuscolor #000000
property pbusnamecolor #000000
property pinattrmax 20
property pinorder 2
property pinpermute 0
property portcolor #000000
property portnamecolor #000000
property ripindexfontsize 4
property rippercolor #000000
property rubberbandcolor #000000
property rubberbandfontsize 15
property selectattr 0
property selectionappearance 2
property selectioncolor #0000ff
property sheetheight 44
property sheetwidth 68
property showmarks 1
property shownetname 0
property showpagenumbers 1
property showripindex 1
property timelimit 1
#
module new alarm_clock work:alarm_clock:NOFILE -nosplit
load symbol RTL_AND7 work AND pin I0 input pin I1 input pin O output fillcolor 1
load symbol RTL_EQ0 work RTL(=) pin O output.right pinBus I0 input.left [3:0] pinBus I1 input.left [3:0] fillcolor 1
load symbol BCDtoSevenSegment work:abstract:NOFILE HIERBOX pin A input.left pin B input.left pin C input.left pin D input.left pinBus SS output.right [6:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol BCDtoSevenSegment work:BCDtoSevenSegment:NOFILE HIERBOX pin A input.left pin B input.left pin C input.left pin D input.left pinBus SS output.right [6:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol clk_div_1s work:clk_div_1s:NOFILE HIERBOX pin clk_1Hz output.right pin clk_1kHz input.left boxcolor 1 fillcolor 2 minwidth 13%
load symbol digital_clock work:digital_clock:NOFILE HIERBOX pin H0_adder input.left pin H1_adder input.left pin M0_adder input.left pin M1_adder input.left pin clk input.left pin reset input.left pinBus H0_out output.right [3:0] pinBus H1_out output.right [3:0] pinBus M0_out output.right [3:0] pinBus M1_out output.right [3:0] boxcolor 1 fillcolor 2 minwidth 13%
load port H0_adder input -pg 1 -lvl 0 -x 0 -y 120
load port H1_adder input -pg 1 -lvl 0 -x 0 -y 150
load port M0_adder input -pg 1 -lvl 0 -x 0 -y 180
load port M1_adder input -pg 1 -lvl 0 -x 0 -y 210
load port alarm_buzz output -pg 1 -lvl 7 -x 1630 -y 340
load port clk_1kHz input -pg 1 -lvl 0 -x 0 -y 250
load port reset input -pg 1 -lvl 0 -x 0 -y 280
load portBus H0_alarm input [3:0] -attr @name H0_alarm[3:0] -pg 1 -lvl 0 -x 0 -y 310
load portBus H0_display output [6:0] -attr @name H0_display[6:0] -pg 1 -lvl 7 -x 1630 -y 80
load portBus H1_alarm input [3:0] -attr @name H1_alarm[3:0] -pg 1 -lvl 0 -x 0 -y 340
load portBus H1_display output [6:0] -attr @name H1_display[6:0] -pg 1 -lvl 7 -x 1630 -y 600
load portBus M0_alarm input [3:0] -attr @name M0_alarm[3:0] -pg 1 -lvl 0 -x 0 -y 370
load portBus M0_display output [6:0] -attr @name M0_display[6:0] -pg 1 -lvl 7 -x 1630 -y 230
load portBus M1_alarm input [3:0] -attr @name M1_alarm[3:0] -pg 1 -lvl 0 -x 0 -y 410
load portBus M1_display output [6:0] -attr @name M1_display[6:0] -pg 1 -lvl 7 -x 1630 -y 450
load inst alarm_buzz0_i RTL_AND7 work -attr @cell(#000000) RTL_AND -pinAttr I0 @attr FO=1 -pinAttr I1 @attr FO=1 -pinAttr O @attr FO=1 -pg 1 -lvl 6 -x 1500 -y 340
load inst alarm_buzz1_i RTL_AND7 work -attr @cell(#000000) RTL_AND -pinAttr I0 @attr FO=1 -pinAttr I1 @attr FO=1 -pinAttr O @attr FO=1 -pg 1 -lvl 5 -x 1240 -y 320
load inst alarm_buzz1_i__0 RTL_EQ0 work -attr @cell(#000000) RTL_EQ -pinAttr O @attr FO=1 -pinBusAttr I0 @name I0[3:0] -pinBusAttr I1 @name I1[3:0] -pg 1 -lvl 5 -x 1240 -y 400
load inst alarm_buzz2_i RTL_AND7 work -attr @cell(#000000) RTL_AND -pinAttr I0 @attr FO=1 -pinAttr I1 @attr FO=1 -pinAttr O @attr FO=1 -pg 1 -lvl 4 -x 980 -y 260
load inst alarm_buzz2_i__0 RTL_EQ0 work -attr @cell(#000000) RTL_EQ -pinAttr O @attr FO=1 -pinBusAttr I0 @name I0[3:0] -pinBusAttr I1 @name I1[3:0] -pg 1 -lvl 4 -x 980 -y 360
load inst alarm_buzz3_i RTL_EQ0 work -attr @cell(#000000) RTL_EQ -pinAttr O @attr FO=1 -pinBusAttr I0 @name I0[3:0] -pinBusAttr I1 @name I1[3:0] -pg 1 -lvl 3 -x 700 -y 170
load inst alarm_buzz3_i__0 RTL_EQ0 work -attr @cell(#000000) RTL_EQ -pinAttr O @attr FO=1 -pinBusAttr I0 @name I0[3:0] -pinBusAttr I1 @name I1[3:0] -pg 1 -lvl 3 -x 700 -y 270
load inst bcd_H0 BCDtoSevenSegment work:abstract:NOFILE -autohide -attr @cell(#000000) BCDtoSevenSegment -pinBusAttr SS @name SS[6:0] -pg 1 -lvl 6 -x 1500 -y 50
load inst bcd_H1 BCDtoSevenSegment work:BCDtoSevenSegment:NOFILE -autohide -attr @cell(#000000) BCDtoSevenSegment -pinBusAttr SS @name SS[6:0] -pg 1 -lvl 6 -x 1500 -y 570
load inst bcd_M0 BCDtoSevenSegment work:abstract:NOFILE -autohide -attr @cell(#000000) BCDtoSevenSegment -pinBusAttr SS @name SS[6:0] -pg 1 -lvl 6 -x 1500 -y 200
load inst bcd_M1 BCDtoSevenSegment work:abstract:NOFILE -autohide -attr @cell(#000000) BCDtoSevenSegment -pinBusAttr SS @name SS[6:0] -pg 1 -lvl 6 -x 1500 -y 420
load inst clk_1s clk_div_1s work:clk_div_1s:NOFILE -autohide -attr @cell(#000000) clk_div_1s -pg 1 -lvl 1 -x 120 -y 240
load inst dig_clock digital_clock work:digital_clock:NOFILE -autohide -attr @cell(#000000) digital_clock -pinBusAttr H0_out @name H0_out[3:0] -pinBusAttr H1_out @name H1_out[3:0] -pinBusAttr M0_out @name M0_out[3:0] -pinBusAttr M1_out @name M1_out[3:0] -pg 1 -lvl 2 -x 410 -y 130
load net H0_adder -port H0_adder -pin dig_clock H0_adder
netloc H0_adder 1 0 2 NJ 120 320J
load net H0_alarm[0] -attr @rip H0_alarm[0] -port H0_alarm[0] -pin alarm_buzz3_i I1[0]
load net H0_alarm[1] -attr @rip H0_alarm[1] -port H0_alarm[1] -pin alarm_buzz3_i I1[1]
load net H0_alarm[2] -attr @rip H0_alarm[2] -port H0_alarm[2] -pin alarm_buzz3_i I1[2]
load net H0_alarm[3] -attr @rip H0_alarm[3] -port H0_alarm[3] -pin alarm_buzz3_i I1[3]
load net H0_display[0] -attr @rip SS[0] -port H0_display[0] -pin bcd_H0 SS[0]
load net H0_display[1] -attr @rip SS[1] -port H0_display[1] -pin bcd_H0 SS[1]
load net H0_display[2] -attr @rip SS[2] -port H0_display[2] -pin bcd_H0 SS[2]
load net H0_display[3] -attr @rip SS[3] -port H0_display[3] -pin bcd_H0 SS[3]
load net H0_display[4] -attr @rip SS[4] -port H0_display[4] -pin bcd_H0 SS[4]
load net H0_display[5] -attr @rip SS[5] -port H0_display[5] -pin bcd_H0 SS[5]
load net H0_display[6] -attr @rip SS[6] -port H0_display[6] -pin bcd_H0 SS[6]
load net H0_out[0] -attr @rip H0_out[0] -pin alarm_buzz3_i I0[0] -pin bcd_H0 D -pin dig_clock H0_out[0]
load net H0_out[1] -attr @rip H0_out[1] -pin alarm_buzz3_i I0[1] -pin bcd_H0 C -pin dig_clock H0_out[1]
load net H0_out[2] -attr @rip H0_out[2] -pin alarm_buzz3_i I0[2] -pin bcd_H0 B -pin dig_clock H0_out[2]
load net H0_out[3] -attr @rip H0_out[3] -pin alarm_buzz3_i I0[3] -pin bcd_H0 A -pin dig_clock H0_out[3]
load net H1_adder -port H1_adder -pin dig_clock H1_adder
netloc H1_adder 1 0 2 NJ 150 300J
load net H1_alarm[0] -attr @rip H1_alarm[0] -port H1_alarm[0] -pin alarm_buzz3_i__0 I1[0]
load net H1_alarm[1] -attr @rip H1_alarm[1] -port H1_alarm[1] -pin alarm_buzz3_i__0 I1[1]
load net H1_alarm[2] -attr @rip H1_alarm[2] -port H1_alarm[2] -pin alarm_buzz3_i__0 I1[2]
load net H1_alarm[3] -attr @rip H1_alarm[3] -port H1_alarm[3] -pin alarm_buzz3_i__0 I1[3]
load net H1_display[0] -attr @rip SS[0] -port H1_display[0] -pin bcd_H1 SS[0]
load net H1_display[1] -attr @rip SS[1] -port H1_display[1] -pin bcd_H1 SS[1]
load net H1_display[2] -attr @rip SS[2] -port H1_display[2] -pin bcd_H1 SS[2]
load net H1_display[3] -attr @rip SS[3] -port H1_display[3] -pin bcd_H1 SS[3]
load net H1_display[4] -attr @rip SS[4] -port H1_display[4] -pin bcd_H1 SS[4]
load net H1_display[5] -attr @rip SS[5] -port H1_display[5] -pin bcd_H1 SS[5]
load net H1_display[6] -attr @rip SS[6] -port H1_display[6] -pin bcd_H1 SS[6]
load net H1_out[0] -attr @rip H1_out[0] -pin alarm_buzz3_i__0 I0[0] -pin bcd_H1 D -pin dig_clock H1_out[0]
load net H1_out[1] -attr @rip H1_out[1] -pin alarm_buzz3_i__0 I0[1] -pin bcd_H1 C -pin bcd_M1 C -pin dig_clock H1_out[1]
load net H1_out[2] -attr @rip H1_out[2] -pin alarm_buzz3_i__0 I0[2] -pin bcd_H1 B -pin dig_clock H1_out[2]
load net H1_out[3] -attr @rip H1_out[3] -pin alarm_buzz3_i__0 I0[3] -pin bcd_H1 A -pin dig_clock H1_out[3]
load net M0_adder -port M0_adder -pin dig_clock M0_adder
netloc M0_adder 1 0 2 20J 170 280J
load net M0_alarm[0] -attr @rip M0_alarm[0] -port M0_alarm[0] -pin alarm_buzz2_i__0 I1[0]
load net M0_alarm[1] -attr @rip M0_alarm[1] -port M0_alarm[1] -pin alarm_buzz2_i__0 I1[1]
load net M0_alarm[2] -attr @rip M0_alarm[2] -port M0_alarm[2] -pin alarm_buzz2_i__0 I1[2]
load net M0_alarm[3] -attr @rip M0_alarm[3] -port M0_alarm[3] -pin alarm_buzz2_i__0 I1[3]
load net M0_display[0] -attr @rip SS[0] -port M0_display[0] -pin bcd_M0 SS[0]
load net M0_display[1] -attr @rip SS[1] -port M0_display[1] -pin bcd_M0 SS[1]
load net M0_display[2] -attr @rip SS[2] -port M0_display[2] -pin bcd_M0 SS[2]
load net M0_display[3] -attr @rip SS[3] -port M0_display[3] -pin bcd_M0 SS[3]
load net M0_display[4] -attr @rip SS[4] -port M0_display[4] -pin bcd_M0 SS[4]
load net M0_display[5] -attr @rip SS[5] -port M0_display[5] -pin bcd_M0 SS[5]
load net M0_display[6] -attr @rip SS[6] -port M0_display[6] -pin bcd_M0 SS[6]
load net M0_out[0] -attr @rip M0_out[0] -pin alarm_buzz2_i__0 I0[0] -pin bcd_M0 D -pin dig_clock M0_out[0]
load net M0_out[1] -attr @rip M0_out[1] -pin alarm_buzz2_i__0 I0[1] -pin bcd_M0 C -pin dig_clock M0_out[1]
load net M0_out[2] -attr @rip M0_out[2] -pin alarm_buzz2_i__0 I0[2] -pin bcd_M0 B -pin dig_clock M0_out[2]
load net M0_out[3] -attr @rip M0_out[3] -pin alarm_buzz2_i__0 I0[3] -pin bcd_M0 A -pin dig_clock M0_out[3]
load net M1_adder -port M1_adder -pin dig_clock M1_adder
netloc M1_adder 1 0 2 40J 190 260J
load net M1_alarm[0] -attr @rip M1_alarm[0] -port M1_alarm[0] -pin alarm_buzz1_i__0 I1[0]
load net M1_alarm[1] -attr @rip M1_alarm[1] -port M1_alarm[1] -pin alarm_buzz1_i__0 I1[1]
load net M1_alarm[2] -attr @rip M1_alarm[2] -port M1_alarm[2] -pin alarm_buzz1_i__0 I1[2]
load net M1_alarm[3] -attr @rip M1_alarm[3] -port M1_alarm[3] -pin alarm_buzz1_i__0 I1[3]
load net M1_display[0] -attr @rip SS[0] -port M1_display[0] -pin bcd_M1 SS[0]
load net M1_display[1] -attr @rip SS[1] -port M1_display[1] -pin bcd_M1 SS[1]
load net M1_display[2] -attr @rip SS[2] -port M1_display[2] -pin bcd_M1 SS[2]
load net M1_display[3] -attr @rip SS[3] -port M1_display[3] -pin bcd_M1 SS[3]
load net M1_display[4] -attr @rip SS[4] -port M1_display[4] -pin bcd_M1 SS[4]
load net M1_display[5] -attr @rip SS[5] -port M1_display[5] -pin bcd_M1 SS[5]
load net M1_display[6] -attr @rip SS[6] -port M1_display[6] -pin bcd_M1 SS[6]
load net M1_out[0] -attr @rip M1_out[0] -pin alarm_buzz1_i__0 I0[0] -pin bcd_M1 D -pin dig_clock M1_out[0]
load net M1_out[1] -attr @rip M1_out[1] -pin alarm_buzz1_i__0 I0[1] -pin dig_clock M1_out[1]
load net M1_out[2] -attr @rip M1_out[2] -pin alarm_buzz1_i__0 I0[2] -pin bcd_M1 B -pin dig_clock M1_out[2]
load net M1_out[3] -attr @rip M1_out[3] -pin alarm_buzz1_i__0 I0[3] -pin bcd_M1 A -pin dig_clock M1_out[3]
load net alarm_buzz -port alarm_buzz -pin alarm_buzz0_i O
netloc alarm_buzz 1 6 1 NJ 340
load net alarm_buzz1 -pin alarm_buzz0_i I0 -pin alarm_buzz1_i O
netloc alarm_buzz1 1 5 1 1420 320n
load net alarm_buzz1_i__0_n_0 -pin alarm_buzz0_i I1 -pin alarm_buzz1_i__0 O
netloc alarm_buzz1_i__0_n_0 1 5 1 1420 350n
load net alarm_buzz2 -pin alarm_buzz1_i I0 -pin alarm_buzz2_i O
netloc alarm_buzz2 1 4 1 1160 260n
load net alarm_buzz2_i__0_n_0 -pin alarm_buzz1_i I1 -pin alarm_buzz2_i__0 O
netloc alarm_buzz2_i__0_n_0 1 4 1 1160 330n
load net alarm_buzz3 -pin alarm_buzz2_i I0 -pin alarm_buzz3_i O
netloc alarm_buzz3 1 3 1 860 170n
load net alarm_buzz3_i__0_n_0 -pin alarm_buzz2_i I1 -pin alarm_buzz3_i__0 O
netloc alarm_buzz3_i__0_n_0 1 3 1 N 270
load net clk_1Hz -pin clk_1s clk_1Hz -pin dig_clock clk
netloc clk_1Hz 1 1 1 260J 220n
load net clk_1kHz -port clk_1kHz -pin clk_1s clk_1kHz
netloc clk_1kHz 1 0 1 NJ 250
load net reset -pin dig_clock reset -port reset
netloc reset 1 0 2 20J 290 320J
load netBundle @H0_alarm 4 H0_alarm[3] H0_alarm[2] H0_alarm[1] H0_alarm[0] -autobundled
netbloc @H0_alarm 1 0 3 NJ 310 NJ 310 590J
load netBundle @H1_alarm 4 H1_alarm[3] H1_alarm[2] H1_alarm[1] H1_alarm[0] -autobundled
netbloc @H1_alarm 1 0 3 NJ 340 NJ 340 630J
load netBundle @M0_alarm 4 M0_alarm[3] M0_alarm[2] M0_alarm[1] M0_alarm[0] -autobundled
netbloc @M0_alarm 1 0 4 NJ 370 NJ 370 NJ 370 NJ
load netBundle @M1_alarm 4 M1_alarm[3] M1_alarm[2] M1_alarm[1] M1_alarm[0] -autobundled
netbloc @M1_alarm 1 0 5 NJ 410 NJ 410 NJ 410 NJ 410 NJ
load netBundle @H0_display 7 H0_display[6] H0_display[5] H0_display[4] H0_display[3] H0_display[2] H0_display[1] H0_display[0] -autobundled
netbloc @H0_display 1 6 1 NJ 80
load netBundle @H1_display 7 H1_display[6] H1_display[5] H1_display[4] H1_display[3] H1_display[2] H1_display[1] H1_display[0] -autobundled
netbloc @H1_display 1 6 1 NJ 600
load netBundle @M0_display 7 M0_display[6] M0_display[5] M0_display[4] M0_display[3] M0_display[2] M0_display[1] M0_display[0] -autobundled
netbloc @M0_display 1 6 1 NJ 230
load netBundle @M1_display 7 M1_display[6] M1_display[5] M1_display[4] M1_display[3] M1_display[2] M1_display[1] M1_display[0] -autobundled
netbloc @M1_display 1 6 1 NJ 450
load netBundle @H0_out 4 H0_out[3] H0_out[2] H0_out[1] H0_out[0] -autobundled
netbloc @H0_out 1 2 4 570 120 NJ 120 NJ 120 1420
load netBundle @H1_out 4 H1_out[3] H1_out[2] H1_out[1] H1_out[0] -autobundled
netbloc @H1_out 1 2 4 570 470 NJ 470 NJ 470 1400
load netBundle @M0_out 4 M0_out[3] M0_out[2] M0_out[1] M0_out[0] -autobundled
netbloc @M0_out 1 2 4 630J 220 880 210 NJ 210 1420
load netBundle @M1_out 4 M1_out[3] M1_out[2] M1_out[1] M1_out[0] -autobundled
netbloc @M1_out 1 2 4 610J 320 900J 310 1140 450 1420
levelinfo -pg 1 0 120 410 700 980 1240 1500 1630
pagesize -pg 1 -db -bbox -sgen -140 0 1780 680
show
fullfit
#
# initialize ictrl to current module alarm_clock work:alarm_clock:NOFILE
ictrl init topinfo |
