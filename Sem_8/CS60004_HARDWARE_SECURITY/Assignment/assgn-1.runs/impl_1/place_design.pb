
Q
Command: %s
53*	vivadotcl2 
place_design2default:defaultZ4-113h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7a200t2default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7a200t2default:defaultZ17-349h px� 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px� 
V
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px� 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px� 
p
,Running DRC as a precondition to command %s
22*	vivadotcl2 
place_design2default:defaultZ4-22h px� 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px� 
V
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px� 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px� 
U

Starting %s Task
103*constraints2
Placer2default:defaultZ18-103h px� 
}
BMultithreading enabled for place_design using a maximum of %s CPUs12*	placeflow2
22default:defaultZ30-611h px� 
v

Phase %s%s
101*constraints2
1 2default:default2)
Placer Initialization2default:defaultZ18-101h px� 
�

Phase %s%s
101*constraints2
1.1 2default:default29
%Placer Initialization Netlist Sorting2default:defaultZ18-101h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0022default:default2
1325.6952default:default2
0.0002default:defaultZ17-268h px� 
Z
EPhase 1.1 Placer Initialization Netlist Sorting | Checksum: 925ebcdf
*commonh px� 
�

%s
*constraints2s
_Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.008 . Memory (MB): peak = 1325.695 ; gain = 0.0002default:defaulth px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0022default:default2
1325.6952default:default2
0.0002default:defaultZ17-268h px� 
�

Phase %s%s
101*constraints2
1.2 2default:default2F
2IO Placement/ Clock Placement/ Build Placer Device2default:defaultZ18-101h px� 
�
�%s: no pin(s)/port(s)/net(s) specified as objects, only virtual clock '%s' will be created. If you don't want this, please specify pin(s)/ports(s)/net(s) as objects to the command.
483*constraints2 
create_clock2default:default2
clk2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
12default:default8@Z18-483h px� 
�
?%s: Path segmentation by forcing '%s' to be timing startpoint.
515*constraints2!
set_max_delay2default:default2(
in1_IBUF[0]_inst/O2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-515h px� 
�
b%s: There will be no %s timing paths from this pin '%s' unless %s is used to constrain the paths.
571*constraints2!
set_max_delay2default:default2
hold2default:default2(
in1_IBUF[0]_inst/O2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-613h px� 
�
?%s: Path segmentation by forcing '%s' to be timing startpoint.
515*constraints2!
set_max_delay2default:default2(
in1_IBUF[0]_inst/I2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-515h px� 
�
b%s: There will be no %s timing paths from this pin '%s' unless %s is used to constrain the paths.
571*constraints2!
set_max_delay2default:default2
hold2default:default2(
in1_IBUF[0]_inst/I2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-613h px� 
�
?%s: Path segmentation by forcing '%s' to be timing startpoint.
515*constraints2!
set_max_delay2default:default2*
in1_IBUF[100]_inst/O2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-515h px� 
�
b%s: There will be no %s timing paths from this pin '%s' unless %s is used to constrain the paths.
571*constraints2!
set_max_delay2default:default2
hold2default:default2*
in1_IBUF[100]_inst/O2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-613h px� 
�
?%s: Path segmentation by forcing '%s' to be timing startpoint.
515*constraints2!
set_max_delay2default:default2*
in1_IBUF[100]_inst/I2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-515h px� 
�
b%s: There will be no %s timing paths from this pin '%s' unless %s is used to constrain the paths.
571*constraints2!
set_max_delay2default:default2
hold2default:default2*
in1_IBUF[100]_inst/I2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-613h px� 
�
?%s: Path segmentation by forcing '%s' to be timing startpoint.
515*constraints2!
set_max_delay2default:default2*
in1_IBUF[101]_inst/O2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-515h px� 
�
b%s: There will be no %s timing paths from this pin '%s' unless %s is used to constrain the paths.
571*constraints2!
set_max_delay2default:default2
hold2default:default2*
in1_IBUF[101]_inst/O2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-613h px� 
�
?%s: Path segmentation by forcing '%s' to be timing startpoint.
515*constraints2!
set_max_delay2default:default2*
in1_IBUF[101]_inst/I2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-515h px� 
�
b%s: There will be no %s timing paths from this pin '%s' unless %s is used to constrain the paths.
571*constraints2!
set_max_delay2default:default2
hold2default:default2*
in1_IBUF[101]_inst/I2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-613h px� 
�
?%s: Path segmentation by forcing '%s' to be timing startpoint.
515*constraints2!
set_max_delay2default:default2*
in1_IBUF[102]_inst/O2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-515h px� 
�
b%s: There will be no %s timing paths from this pin '%s' unless %s is used to constrain the paths.
571*constraints2!
set_max_delay2default:default2
hold2default:default2*
in1_IBUF[102]_inst/O2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-613h px� 
�
?%s: Path segmentation by forcing '%s' to be timing startpoint.
515*constraints2!
set_max_delay2default:default2*
in1_IBUF[102]_inst/I2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-515h px� 
�
b%s: There will be no %s timing paths from this pin '%s' unless %s is used to constrain the paths.
571*constraints2!
set_max_delay2default:default2
hold2default:default2*
in1_IBUF[102]_inst/I2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-613h px� 
�
b%s: There will be no %s timing paths from this pin '%s' unless %s is used to constrain the paths.
571*constraints2!
set_max_delay2default:default2
hold2default:default2*
in1_IBUF[103]_inst/O2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-613h px� 
�
?%s: Path segmentation by forcing '%s' to be timing startpoint.
515*constraints2!
set_max_delay2default:default2*
in1_IBUF[103]_inst/O2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-515h px� 
�
?%s: Path segmentation by forcing '%s' to be timing startpoint.
515*constraints2!
set_max_delay2default:default2*
in1_IBUF[103]_inst/I2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-515h px� 
�
b%s: There will be no %s timing paths from this pin '%s' unless %s is used to constrain the paths.
571*constraints2!
set_max_delay2default:default2
hold2default:default2*
in1_IBUF[103]_inst/I2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-613h px� 
�
?%s: Path segmentation by forcing '%s' to be timing startpoint.
515*constraints2!
set_max_delay2default:default2*
in1_IBUF[104]_inst/O2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-515h px� 
�
b%s: There will be no %s timing paths from this pin '%s' unless %s is used to constrain the paths.
571*constraints2!
set_max_delay2default:default2
hold2default:default2*
in1_IBUF[104]_inst/O2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-613h px� 
�
?%s: Path segmentation by forcing '%s' to be timing startpoint.
515*constraints2!
set_max_delay2default:default2*
in1_IBUF[104]_inst/I2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-515h px� 
�
b%s: There will be no %s timing paths from this pin '%s' unless %s is used to constrain the paths.
571*constraints2!
set_max_delay2default:default2
hold2default:default2*
in1_IBUF[104]_inst/I2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-613h px� 
�
?%s: Path segmentation by forcing '%s' to be timing startpoint.
515*constraints2!
set_max_delay2default:default2*
in1_IBUF[105]_inst/O2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-515h px� 
�
b%s: There will be no %s timing paths from this pin '%s' unless %s is used to constrain the paths.
571*constraints2!
set_max_delay2default:default2
hold2default:default2*
in1_IBUF[105]_inst/O2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-613h px� 
�
?%s: Path segmentation by forcing '%s' to be timing startpoint.
515*constraints2!
set_max_delay2default:default2*
in1_IBUF[105]_inst/I2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-515h px� 
�
b%s: There will be no %s timing paths from this pin '%s' unless %s is used to constrain the paths.
571*constraints2!
set_max_delay2default:default2
hold2default:default2*
in1_IBUF[105]_inst/I2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-613h px� 
�
b%s: There will be no %s timing paths from this pin '%s' unless %s is used to constrain the paths.
571*constraints2!
set_max_delay2default:default2
hold2default:default2*
in1_IBUF[106]_inst/O2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-613h px� 
�
?%s: Path segmentation by forcing '%s' to be timing startpoint.
515*constraints2!
set_max_delay2default:default2*
in1_IBUF[106]_inst/O2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-515h px� 
�
b%s: There will be no %s timing paths from this pin '%s' unless %s is used to constrain the paths.
571*constraints2!
set_max_delay2default:default2
hold2default:default2*
in1_IBUF[106]_inst/I2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-613h px� 
�
?%s: Path segmentation by forcing '%s' to be timing startpoint.
515*constraints2!
set_max_delay2default:default2*
in1_IBUF[106]_inst/I2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-515h px� 
�
b%s: There will be no %s timing paths from this pin '%s' unless %s is used to constrain the paths.
571*constraints2!
set_max_delay2default:default2
hold2default:default2*
in1_IBUF[107]_inst/O2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-613h px� 
�
?%s: Path segmentation by forcing '%s' to be timing startpoint.
515*constraints2!
set_max_delay2default:default2*
in1_IBUF[107]_inst/O2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-515h px� 
�
b%s: There will be no %s timing paths from this pin '%s' unless %s is used to constrain the paths.
571*constraints2!
set_max_delay2default:default2
hold2default:default2*
in1_IBUF[107]_inst/I2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-613h px� 
�
?%s: Path segmentation by forcing '%s' to be timing startpoint.
515*constraints2!
set_max_delay2default:default2*
in1_IBUF[107]_inst/I2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-515h px� 
�
?%s: Path segmentation by forcing '%s' to be timing startpoint.
515*constraints2!
set_max_delay2default:default2*
in1_IBUF[108]_inst/O2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-515h px� 
�
b%s: There will be no %s timing paths from this pin '%s' unless %s is used to constrain the paths.
571*constraints2!
set_max_delay2default:default2
hold2default:default2*
in1_IBUF[108]_inst/O2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-613h px� 
�
?%s: Path segmentation by forcing '%s' to be timing startpoint.
515*constraints2!
set_max_delay2default:default2*
in1_IBUF[108]_inst/I2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-515h px� 
�
b%s: There will be no %s timing paths from this pin '%s' unless %s is used to constrain the paths.
571*constraints2!
set_max_delay2default:default2
hold2default:default2*
in1_IBUF[108]_inst/I2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-613h px� 
�
b%s: There will be no %s timing paths from this pin '%s' unless %s is used to constrain the paths.
571*constraints2!
set_max_delay2default:default2
hold2default:default2*
in1_IBUF[109]_inst/O2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-613h px� 
�
?%s: Path segmentation by forcing '%s' to be timing startpoint.
515*constraints2!
set_max_delay2default:default2*
in1_IBUF[109]_inst/O2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-515h px� 
�
?%s: Path segmentation by forcing '%s' to be timing startpoint.
515*constraints2!
set_max_delay2default:default2*
in1_IBUF[109]_inst/I2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-515h px� 
�
b%s: There will be no %s timing paths from this pin '%s' unless %s is used to constrain the paths.
571*constraints2!
set_max_delay2default:default2
hold2default:default2*
in1_IBUF[109]_inst/I2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-613h px� 
�
b%s: There will be no %s timing paths from this pin '%s' unless %s is used to constrain the paths.
571*constraints2!
set_max_delay2default:default2
hold2default:default2)
in1_IBUF[10]_inst/O2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-613h px� 
�
?%s: Path segmentation by forcing '%s' to be timing startpoint.
515*constraints2!
set_max_delay2default:default2)
in1_IBUF[10]_inst/O2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-515h px� 
�
b%s: There will be no %s timing paths from this pin '%s' unless %s is used to constrain the paths.
571*constraints2!
set_max_delay2default:default2
hold2default:default2)
in1_IBUF[10]_inst/I2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-613h px� 
�
?%s: Path segmentation by forcing '%s' to be timing startpoint.
515*constraints2!
set_max_delay2default:default2)
in1_IBUF[10]_inst/I2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-515h px� 
�
?%s: Path segmentation by forcing '%s' to be timing startpoint.
515*constraints2!
set_max_delay2default:default2*
in1_IBUF[110]_inst/O2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-515h px� 
�
b%s: There will be no %s timing paths from this pin '%s' unless %s is used to constrain the paths.
571*constraints2!
set_max_delay2default:default2
hold2default:default2*
in1_IBUF[110]_inst/O2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-613h px� 
�
b%s: There will be no %s timing paths from this pin '%s' unless %s is used to constrain the paths.
571*constraints2!
set_max_delay2default:default2
hold2default:default2*
in1_IBUF[110]_inst/I2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-613h px� 
�
?%s: Path segmentation by forcing '%s' to be timing startpoint.
515*constraints2!
set_max_delay2default:default2*
in1_IBUF[110]_inst/I2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-515h px� 
�
?%s: Path segmentation by forcing '%s' to be timing startpoint.
515*constraints2!
set_max_delay2default:default2*
in1_IBUF[111]_inst/O2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-515h px� 
�
b%s: There will be no %s timing paths from this pin '%s' unless %s is used to constrain the paths.
571*constraints2!
set_max_delay2default:default2
hold2default:default2*
in1_IBUF[111]_inst/O2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-613h px� 
�
?%s: Path segmentation by forcing '%s' to be timing startpoint.
515*constraints2!
set_max_delay2default:default2*
in1_IBUF[111]_inst/I2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-515h px� 
�
b%s: There will be no %s timing paths from this pin '%s' unless %s is used to constrain the paths.
571*constraints2!
set_max_delay2default:default2
hold2default:default2*
in1_IBUF[111]_inst/I2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-613h px� 
�
b%s: There will be no %s timing paths from this pin '%s' unless %s is used to constrain the paths.
571*constraints2!
set_max_delay2default:default2
hold2default:default2*
in1_IBUF[112]_inst/O2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-613h px� 
�
?%s: Path segmentation by forcing '%s' to be timing startpoint.
515*constraints2!
set_max_delay2default:default2*
in1_IBUF[112]_inst/O2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-515h px� 
�
?%s: Path segmentation by forcing '%s' to be timing startpoint.
515*constraints2!
set_max_delay2default:default2*
in1_IBUF[112]_inst/I2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-515h px� 
�
b%s: There will be no %s timing paths from this pin '%s' unless %s is used to constrain the paths.
571*constraints2!
set_max_delay2default:default2
hold2default:default2*
in1_IBUF[112]_inst/I2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-613h px� 
�
?%s: Path segmentation by forcing '%s' to be timing startpoint.
515*constraints2!
set_max_delay2default:default2*
in1_IBUF[113]_inst/O2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-515h px� 
�
b%s: There will be no %s timing paths from this pin '%s' unless %s is used to constrain the paths.
571*constraints2!
set_max_delay2default:default2
hold2default:default2*
in1_IBUF[113]_inst/O2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-613h px� 
�
?%s: Path segmentation by forcing '%s' to be timing startpoint.
515*constraints2!
set_max_delay2default:default2*
in1_IBUF[113]_inst/I2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-515h px� 
�
b%s: There will be no %s timing paths from this pin '%s' unless %s is used to constrain the paths.
571*constraints2!
set_max_delay2default:default2
hold2default:default2*
in1_IBUF[113]_inst/I2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-613h px� 
�
b%s: There will be no %s timing paths from this pin '%s' unless %s is used to constrain the paths.
571*constraints2!
set_max_delay2default:default2
hold2default:default2*
in1_IBUF[114]_inst/O2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-613h px� 
�
?%s: Path segmentation by forcing '%s' to be timing startpoint.
515*constraints2!
set_max_delay2default:default2*
in1_IBUF[114]_inst/O2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-515h px� 
�
?%s: Path segmentation by forcing '%s' to be timing startpoint.
515*constraints2!
set_max_delay2default:default2*
in1_IBUF[114]_inst/I2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-515h px� 
�
b%s: There will be no %s timing paths from this pin '%s' unless %s is used to constrain the paths.
571*constraints2!
set_max_delay2default:default2
hold2default:default2*
in1_IBUF[114]_inst/I2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-613h px� 
�
?%s: Path segmentation by forcing '%s' to be timing startpoint.
515*constraints2!
set_max_delay2default:default2*
in1_IBUF[115]_inst/O2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-515h px� 
�
b%s: There will be no %s timing paths from this pin '%s' unless %s is used to constrain the paths.
571*constraints2!
set_max_delay2default:default2
hold2default:default2*
in1_IBUF[115]_inst/O2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-613h px� 
�
b%s: There will be no %s timing paths from this pin '%s' unless %s is used to constrain the paths.
571*constraints2!
set_max_delay2default:default2
hold2default:default2*
in1_IBUF[115]_inst/I2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-613h px� 
�
?%s: Path segmentation by forcing '%s' to be timing startpoint.
515*constraints2!
set_max_delay2default:default2*
in1_IBUF[115]_inst/I2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-515h px� 
�
b%s: There will be no %s timing paths from this pin '%s' unless %s is used to constrain the paths.
571*constraints2!
set_max_delay2default:default2
hold2default:default2*
in1_IBUF[116]_inst/O2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-613h px� 
�
?%s: Path segmentation by forcing '%s' to be timing startpoint.
515*constraints2!
set_max_delay2default:default2*
in1_IBUF[116]_inst/O2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-515h px� 
�
?%s: Path segmentation by forcing '%s' to be timing startpoint.
515*constraints2!
set_max_delay2default:default2*
in1_IBUF[116]_inst/I2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-515h px� 
�
b%s: There will be no %s timing paths from this pin '%s' unless %s is used to constrain the paths.
571*constraints2!
set_max_delay2default:default2
hold2default:default2*
in1_IBUF[116]_inst/I2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-613h px� 
�
?%s: Path segmentation by forcing '%s' to be timing startpoint.
515*constraints2!
set_max_delay2default:default2*
in1_IBUF[117]_inst/O2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-515h px� 
�
b%s: There will be no %s timing paths from this pin '%s' unless %s is used to constrain the paths.
571*constraints2!
set_max_delay2default:default2
hold2default:default2*
in1_IBUF[117]_inst/O2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-613h px� 
�
b%s: There will be no %s timing paths from this pin '%s' unless %s is used to constrain the paths.
571*constraints2!
set_max_delay2default:default2
hold2default:default2*
in1_IBUF[117]_inst/I2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-613h px� 
�
?%s: Path segmentation by forcing '%s' to be timing startpoint.
515*constraints2!
set_max_delay2default:default2*
in1_IBUF[117]_inst/I2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-515h px� 
�
b%s: There will be no %s timing paths from this pin '%s' unless %s is used to constrain the paths.
571*constraints2!
set_max_delay2default:default2
hold2default:default2*
in1_IBUF[118]_inst/O2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-613h px� 
�
?%s: Path segmentation by forcing '%s' to be timing startpoint.
515*constraints2!
set_max_delay2default:default2*
in1_IBUF[118]_inst/O2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-515h px� 
�
b%s: There will be no %s timing paths from this pin '%s' unless %s is used to constrain the paths.
571*constraints2!
set_max_delay2default:default2
hold2default:default2*
in1_IBUF[118]_inst/I2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-613h px� 
�
?%s: Path segmentation by forcing '%s' to be timing startpoint.
515*constraints2!
set_max_delay2default:default2*
in1_IBUF[118]_inst/I2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-515h px� 
�
?%s: Path segmentation by forcing '%s' to be timing startpoint.
515*constraints2!
set_max_delay2default:default2*
in1_IBUF[119]_inst/O2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-515h px� 
�
b%s: There will be no %s timing paths from this pin '%s' unless %s is used to constrain the paths.
571*constraints2!
set_max_delay2default:default2
hold2default:default2*
in1_IBUF[119]_inst/O2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-613h px� 
�
?%s: Path segmentation by forcing '%s' to be timing startpoint.
515*constraints2!
set_max_delay2default:default2*
in1_IBUF[119]_inst/I2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-515h px� 
�
b%s: There will be no %s timing paths from this pin '%s' unless %s is used to constrain the paths.
571*constraints2!
set_max_delay2default:default2
hold2default:default2*
in1_IBUF[119]_inst/I2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-613h px� 
�
b%s: There will be no %s timing paths from this pin '%s' unless %s is used to constrain the paths.
571*constraints2!
set_max_delay2default:default2
hold2default:default2)
in1_IBUF[11]_inst/O2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-613h px� 
�
?%s: Path segmentation by forcing '%s' to be timing startpoint.
515*constraints2!
set_max_delay2default:default2)
in1_IBUF[11]_inst/O2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-515h px� 
�
?%s: Path segmentation by forcing '%s' to be timing startpoint.
515*constraints2!
set_max_delay2default:default2)
in1_IBUF[11]_inst/I2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-515h px� 
�
b%s: There will be no %s timing paths from this pin '%s' unless %s is used to constrain the paths.
571*constraints2!
set_max_delay2default:default2
hold2default:default2)
in1_IBUF[11]_inst/I2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-613h px� 
�
?%s: Path segmentation by forcing '%s' to be timing startpoint.
515*constraints2!
set_max_delay2default:default2*
in1_IBUF[120]_inst/O2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-515h px� 
�
b%s: There will be no %s timing paths from this pin '%s' unless %s is used to constrain the paths.
571*constraints2!
set_max_delay2default:default2
hold2default:default2*
in1_IBUF[120]_inst/O2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-613h px� 
�
b%s: There will be no %s timing paths from this pin '%s' unless %s is used to constrain the paths.
571*constraints2!
set_max_delay2default:default2
hold2default:default2*
in1_IBUF[120]_inst/I2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-613h px� 
�
?%s: Path segmentation by forcing '%s' to be timing startpoint.
515*constraints2!
set_max_delay2default:default2*
in1_IBUF[120]_inst/I2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-515h px� 
�
?%s: Path segmentation by forcing '%s' to be timing startpoint.
515*constraints2!
set_max_delay2default:default2*
in1_IBUF[121]_inst/O2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-515h px� 
�
b%s: There will be no %s timing paths from this pin '%s' unless %s is used to constrain the paths.
571*constraints2!
set_max_delay2default:default2
hold2default:default2*
in1_IBUF[121]_inst/O2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-613h px� 
�
?%s: Path segmentation by forcing '%s' to be timing startpoint.
515*constraints2!
set_max_delay2default:default2*
in1_IBUF[121]_inst/I2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-515h px� 
�
b%s: There will be no %s timing paths from this pin '%s' unless %s is used to constrain the paths.
571*constraints2!
set_max_delay2default:default2
hold2default:default2*
in1_IBUF[121]_inst/I2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-613h px� 
�
b%s: There will be no %s timing paths from this pin '%s' unless %s is used to constrain the paths.
571*constraints2!
set_max_delay2default:default2
hold2default:default2*
in1_IBUF[122]_inst/O2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-613h px� 
�
?%s: Path segmentation by forcing '%s' to be timing startpoint.
515*constraints2!
set_max_delay2default:default2*
in1_IBUF[122]_inst/O2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-515h px� 
�
?%s: Path segmentation by forcing '%s' to be timing startpoint.
515*constraints2!
set_max_delay2default:default2*
in1_IBUF[122]_inst/I2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-515h px� 
�
b%s: There will be no %s timing paths from this pin '%s' unless %s is used to constrain the paths.
571*constraints2!
set_max_delay2default:default2
hold2default:default2*
in1_IBUF[122]_inst/I2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-613h px� 
�
?%s: Path segmentation by forcing '%s' to be timing startpoint.
515*constraints2!
set_max_delay2default:default2*
in1_IBUF[123]_inst/O2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-515h px� 
�
b%s: There will be no %s timing paths from this pin '%s' unless %s is used to constrain the paths.
571*constraints2!
set_max_delay2default:default2
hold2default:default2*
in1_IBUF[123]_inst/O2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-613h px� 
�
?%s: Path segmentation by forcing '%s' to be timing startpoint.
515*constraints2!
set_max_delay2default:default2*
in1_IBUF[123]_inst/I2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-515h px� 
�
b%s: There will be no %s timing paths from this pin '%s' unless %s is used to constrain the paths.
571*constraints2!
set_max_delay2default:default2
hold2default:default2*
in1_IBUF[123]_inst/I2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-613h px� 
�
b%s: There will be no %s timing paths from this pin '%s' unless %s is used to constrain the paths.
571*constraints2!
set_max_delay2default:default2
hold2default:default2*
in1_IBUF[124]_inst/O2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-613h px� 
�
?%s: Path segmentation by forcing '%s' to be timing startpoint.
515*constraints2!
set_max_delay2default:default2*
in1_IBUF[124]_inst/O2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-515h px� 
�
b%s: There will be no %s timing paths from this pin '%s' unless %s is used to constrain the paths.
571*constraints2!
set_max_delay2default:default2
hold2default:default2*
in1_IBUF[124]_inst/I2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-613h px� 
�
?%s: Path segmentation by forcing '%s' to be timing startpoint.
515*constraints2!
set_max_delay2default:default2*
in1_IBUF[124]_inst/I2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-515h px� 
�
?%s: Path segmentation by forcing '%s' to be timing startpoint.
515*constraints2!
set_max_delay2default:default2*
in1_IBUF[125]_inst/O2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-515h px� 
�
b%s: There will be no %s timing paths from this pin '%s' unless %s is used to constrain the paths.
571*constraints2!
set_max_delay2default:default2
hold2default:default2*
in1_IBUF[125]_inst/O2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-613h px� 
�
?%s: Path segmentation by forcing '%s' to be timing startpoint.
515*constraints2!
set_max_delay2default:default2*
in1_IBUF[125]_inst/I2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-515h px� 
�
b%s: There will be no %s timing paths from this pin '%s' unless %s is used to constrain the paths.
571*constraints2!
set_max_delay2default:default2
hold2default:default2*
in1_IBUF[125]_inst/I2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-613h px� 
�
?%s: Path segmentation by forcing '%s' to be timing startpoint.
515*constraints2!
set_max_delay2default:default2*
in1_IBUF[126]_inst/O2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-515h px� 
�
b%s: There will be no %s timing paths from this pin '%s' unless %s is used to constrain the paths.
571*constraints2!
set_max_delay2default:default2
hold2default:default2*
in1_IBUF[126]_inst/O2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-613h px� 
�
b%s: There will be no %s timing paths from this pin '%s' unless %s is used to constrain the paths.
571*constraints2!
set_max_delay2default:default2
hold2default:default2*
in1_IBUF[126]_inst/I2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-613h px� 
�
?%s: Path segmentation by forcing '%s' to be timing startpoint.
515*constraints2!
set_max_delay2default:default2*
in1_IBUF[126]_inst/I2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-515h px� 
�
?%s: Path segmentation by forcing '%s' to be timing startpoint.
515*constraints2!
set_max_delay2default:default2*
in1_IBUF[127]_inst/O2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-515h px� 
�
b%s: There will be no %s timing paths from this pin '%s' unless %s is used to constrain the paths.
571*constraints2!
set_max_delay2default:default2
hold2default:default2*
in1_IBUF[127]_inst/O2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-613h px� 
�
b%s: There will be no %s timing paths from this pin '%s' unless %s is used to constrain the paths.
571*constraints2!
set_max_delay2default:default2
hold2default:default2*
in1_IBUF[127]_inst/I2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-613h px� 
�
?%s: Path segmentation by forcing '%s' to be timing startpoint.
515*constraints2!
set_max_delay2default:default2*
in1_IBUF[127]_inst/I2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-515h px� 
�
?%s: Path segmentation by forcing '%s' to be timing startpoint.
515*constraints2!
set_max_delay2default:default2*
in1_IBUF[128]_inst/O2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-515h px� 
�
b%s: There will be no %s timing paths from this pin '%s' unless %s is used to constrain the paths.
571*constraints2!
set_max_delay2default:default2
hold2default:default2*
in1_IBUF[128]_inst/O2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-613h px� 
�
?%s: Path segmentation by forcing '%s' to be timing startpoint.
515*constraints2!
set_max_delay2default:default2*
in1_IBUF[128]_inst/I2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-515h px� 
�
b%s: There will be no %s timing paths from this pin '%s' unless %s is used to constrain the paths.
571*constraints2!
set_max_delay2default:default2
hold2default:default2*
in1_IBUF[128]_inst/I2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-613h px� 
�
b%s: There will be no %s timing paths from this pin '%s' unless %s is used to constrain the paths.
571*constraints2!
set_max_delay2default:default2
hold2default:default2*
in1_IBUF[129]_inst/O2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-613h px� 
�
?%s: Path segmentation by forcing '%s' to be timing startpoint.
515*constraints2!
set_max_delay2default:default2*
in1_IBUF[129]_inst/O2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-515h px� 
�
b%s: There will be no %s timing paths from this pin '%s' unless %s is used to constrain the paths.
571*constraints2!
set_max_delay2default:default2
hold2default:default2*
in1_IBUF[129]_inst/I2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-613h px� 
�
?%s: Path segmentation by forcing '%s' to be timing startpoint.
515*constraints2!
set_max_delay2default:default2*
in1_IBUF[129]_inst/I2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-515h px� 
�
b%s: There will be no %s timing paths from this pin '%s' unless %s is used to constrain the paths.
571*constraints2!
set_max_delay2default:default2
hold2default:default2)
in1_IBUF[12]_inst/O2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-613h px� 
�
?%s: Path segmentation by forcing '%s' to be timing startpoint.
515*constraints2!
set_max_delay2default:default2)
in1_IBUF[12]_inst/O2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-515h px� 
�
?%s: Path segmentation by forcing '%s' to be timing startpoint.
515*constraints2!
set_max_delay2default:default2)
in1_IBUF[12]_inst/I2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-515h px� 
�
b%s: There will be no %s timing paths from this pin '%s' unless %s is used to constrain the paths.
571*constraints2!
set_max_delay2default:default2
hold2default:default2)
in1_IBUF[12]_inst/I2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-613h px� 
�
?%s: Path segmentation by forcing '%s' to be timing startpoint.
515*constraints2!
set_max_delay2default:default2*
in1_IBUF[130]_inst/O2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-515h px� 
�
b%s: There will be no %s timing paths from this pin '%s' unless %s is used to constrain the paths.
571*constraints2!
set_max_delay2default:default2
hold2default:default2*
in1_IBUF[130]_inst/O2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-613h px� 
�
b%s: There will be no %s timing paths from this pin '%s' unless %s is used to constrain the paths.
571*constraints2!
set_max_delay2default:default2
hold2default:default2*
in1_IBUF[130]_inst/I2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-613h px� 
�
?%s: Path segmentation by forcing '%s' to be timing startpoint.
515*constraints2!
set_max_delay2default:default2*
in1_IBUF[130]_inst/I2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-515h px� 
�
?%s: Path segmentation by forcing '%s' to be timing startpoint.
515*constraints2!
set_max_delay2default:default2*
in1_IBUF[131]_inst/O2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-515h px� 
�
b%s: There will be no %s timing paths from this pin '%s' unless %s is used to constrain the paths.
571*constraints2!
set_max_delay2default:default2
hold2default:default2*
in1_IBUF[131]_inst/O2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-613h px� 
�
?%s: Path segmentation by forcing '%s' to be timing startpoint.
515*constraints2!
set_max_delay2default:default2*
in1_IBUF[131]_inst/I2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-515h px� 
�
b%s: There will be no %s timing paths from this pin '%s' unless %s is used to constrain the paths.
571*constraints2!
set_max_delay2default:default2
hold2default:default2*
in1_IBUF[131]_inst/I2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-613h px� 
�
?%s: Path segmentation by forcing '%s' to be timing startpoint.
515*constraints2!
set_max_delay2default:default2*
in1_IBUF[132]_inst/O2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-515h px� 
�
b%s: There will be no %s timing paths from this pin '%s' unless %s is used to constrain the paths.
571*constraints2!
set_max_delay2default:default2
hold2default:default2*
in1_IBUF[132]_inst/O2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-613h px� 
�
?%s: Path segmentation by forcing '%s' to be timing startpoint.
515*constraints2!
set_max_delay2default:default2*
in1_IBUF[132]_inst/I2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-515h px� 
�
b%s: There will be no %s timing paths from this pin '%s' unless %s is used to constrain the paths.
571*constraints2!
set_max_delay2default:default2
hold2default:default2*
in1_IBUF[132]_inst/I2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-613h px� 
�
b%s: There will be no %s timing paths from this pin '%s' unless %s is used to constrain the paths.
571*constraints2!
set_max_delay2default:default2
hold2default:default2*
in1_IBUF[133]_inst/O2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-613h px� 
�
?%s: Path segmentation by forcing '%s' to be timing startpoint.
515*constraints2!
set_max_delay2default:default2*
in1_IBUF[133]_inst/O2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-515h px� 
�
?%s: Path segmentation by forcing '%s' to be timing startpoint.
515*constraints2!
set_max_delay2default:default2*
in1_IBUF[133]_inst/I2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-515h px� 
�
b%s: There will be no %s timing paths from this pin '%s' unless %s is used to constrain the paths.
571*constraints2!
set_max_delay2default:default2
hold2default:default2*
in1_IBUF[133]_inst/I2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-613h px� 
�
?%s: Path segmentation by forcing '%s' to be timing startpoint.
515*constraints2!
set_max_delay2default:default2*
in1_IBUF[134]_inst/O2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-515h px� 
�
b%s: There will be no %s timing paths from this pin '%s' unless %s is used to constrain the paths.
571*constraints2!
set_max_delay2default:default2
hold2default:default2*
in1_IBUF[134]_inst/O2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-613h px� 
�
b%s: There will be no %s timing paths from this pin '%s' unless %s is used to constrain the paths.
571*constraints2!
set_max_delay2default:default2
hold2default:default2*
in1_IBUF[134]_inst/I2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-613h px� 
�
?%s: Path segmentation by forcing '%s' to be timing startpoint.
515*constraints2!
set_max_delay2default:default2*
in1_IBUF[134]_inst/I2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-515h px� 
�
b%s: There will be no %s timing paths from this pin '%s' unless %s is used to constrain the paths.
571*constraints2!
set_max_delay2default:default2
hold2default:default2*
in1_IBUF[135]_inst/O2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-613h px� 
�
?%s: Path segmentation by forcing '%s' to be timing startpoint.
515*constraints2!
set_max_delay2default:default2*
in1_IBUF[135]_inst/O2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-515h px� 
�
b%s: There will be no %s timing paths from this pin '%s' unless %s is used to constrain the paths.
571*constraints2!
set_max_delay2default:default2
hold2default:default2*
in1_IBUF[135]_inst/I2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-613h px� 
�
?%s: Path segmentation by forcing '%s' to be timing startpoint.
515*constraints2!
set_max_delay2default:default2*
in1_IBUF[135]_inst/I2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-515h px� 
�
?%s: Path segmentation by forcing '%s' to be timing startpoint.
515*constraints2!
set_max_delay2default:default2*
in1_IBUF[136]_inst/O2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-515h px� 
�
b%s: There will be no %s timing paths from this pin '%s' unless %s is used to constrain the paths.
571*constraints2!
set_max_delay2default:default2
hold2default:default2*
in1_IBUF[136]_inst/O2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-613h px� 
�
?%s: Path segmentation by forcing '%s' to be timing startpoint.
515*constraints2!
set_max_delay2default:default2*
in1_IBUF[136]_inst/I2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-515h px� 
�
b%s: There will be no %s timing paths from this pin '%s' unless %s is used to constrain the paths.
571*constraints2!
set_max_delay2default:default2
hold2default:default2*
in1_IBUF[136]_inst/I2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-613h px� 
�
b%s: There will be no %s timing paths from this pin '%s' unless %s is used to constrain the paths.
571*constraints2!
set_max_delay2default:default2
hold2default:default2*
in1_IBUF[137]_inst/O2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-613h px� 
�
?%s: Path segmentation by forcing '%s' to be timing startpoint.
515*constraints2!
set_max_delay2default:default2*
in1_IBUF[137]_inst/O2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-515h px� 
�
b%s: There will be no %s timing paths from this pin '%s' unless %s is used to constrain the paths.
571*constraints2!
set_max_delay2default:default2
hold2default:default2*
in1_IBUF[137]_inst/I2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-613h px� 
�
?%s: Path segmentation by forcing '%s' to be timing startpoint.
515*constraints2!
set_max_delay2default:default2*
in1_IBUF[137]_inst/I2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-515h px� 
�
?%s: Path segmentation by forcing '%s' to be timing startpoint.
515*constraints2!
set_max_delay2default:default2*
in1_IBUF[138]_inst/O2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-515h px� 
�
b%s: There will be no %s timing paths from this pin '%s' unless %s is used to constrain the paths.
571*constraints2!
set_max_delay2default:default2
hold2default:default2*
in1_IBUF[138]_inst/O2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-613h px� 
�
?%s: Path segmentation by forcing '%s' to be timing startpoint.
515*constraints2!
set_max_delay2default:default2*
in1_IBUF[138]_inst/I2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-515h px� 
�
b%s: There will be no %s timing paths from this pin '%s' unless %s is used to constrain the paths.
571*constraints2!
set_max_delay2default:default2
hold2default:default2*
in1_IBUF[138]_inst/I2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-613h px� 
�
b%s: There will be no %s timing paths from this pin '%s' unless %s is used to constrain the paths.
571*constraints2!
set_max_delay2default:default2
hold2default:default2*
in1_IBUF[139]_inst/O2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-613h px� 
�
?%s: Path segmentation by forcing '%s' to be timing startpoint.
515*constraints2!
set_max_delay2default:default2*
in1_IBUF[139]_inst/O2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-515h px� 
�
?%s: Path segmentation by forcing '%s' to be timing startpoint.
515*constraints2!
set_max_delay2default:default2*
in1_IBUF[139]_inst/I2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-515h px� 
�
b%s: There will be no %s timing paths from this pin '%s' unless %s is used to constrain the paths.
571*constraints2!
set_max_delay2default:default2
hold2default:default2*
in1_IBUF[139]_inst/I2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-613h px� 
�
?%s: Path segmentation by forcing '%s' to be timing startpoint.
515*constraints2!
set_max_delay2default:default2)
in1_IBUF[13]_inst/O2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-515h px� 
�
b%s: There will be no %s timing paths from this pin '%s' unless %s is used to constrain the paths.
571*constraints2!
set_max_delay2default:default2
hold2default:default2)
in1_IBUF[13]_inst/O2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-613h px� 
�
b%s: There will be no %s timing paths from this pin '%s' unless %s is used to constrain the paths.
571*constraints2!
set_max_delay2default:default2
hold2default:default2)
in1_IBUF[13]_inst/I2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-613h px� 
�
?%s: Path segmentation by forcing '%s' to be timing startpoint.
515*constraints2!
set_max_delay2default:default2)
in1_IBUF[13]_inst/I2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-515h px� 
�
?%s: Path segmentation by forcing '%s' to be timing startpoint.
515*constraints2!
set_max_delay2default:default2*
in1_IBUF[140]_inst/O2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-515h px� 
�
b%s: There will be no %s timing paths from this pin '%s' unless %s is used to constrain the paths.
571*constraints2!
set_max_delay2default:default2
hold2default:default2*
in1_IBUF[140]_inst/O2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-613h px� 
�
b%s: There will be no %s timing paths from this pin '%s' unless %s is used to constrain the paths.
571*constraints2!
set_max_delay2default:default2
hold2default:default2*
in1_IBUF[140]_inst/I2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-613h px� 
�
?%s: Path segmentation by forcing '%s' to be timing startpoint.
515*constraints2!
set_max_delay2default:default2*
in1_IBUF[140]_inst/I2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-515h px� 
�
b%s: There will be no %s timing paths from this pin '%s' unless %s is used to constrain the paths.
571*constraints2!
set_max_delay2default:default2
hold2default:default2*
in1_IBUF[141]_inst/O2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-613h px� 
�
?%s: Path segmentation by forcing '%s' to be timing startpoint.
515*constraints2!
set_max_delay2default:default2*
in1_IBUF[141]_inst/O2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-515h px� 
�
?%s: Path segmentation by forcing '%s' to be timing startpoint.
515*constraints2!
set_max_delay2default:default2*
in1_IBUF[141]_inst/I2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-515h px� 
�
b%s: There will be no %s timing paths from this pin '%s' unless %s is used to constrain the paths.
571*constraints2!
set_max_delay2default:default2
hold2default:default2*
in1_IBUF[141]_inst/I2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-613h px� 
�
?%s: Path segmentation by forcing '%s' to be timing startpoint.
515*constraints2!
set_max_delay2default:default2*
in1_IBUF[142]_inst/O2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-515h px� 
�
b%s: There will be no %s timing paths from this pin '%s' unless %s is used to constrain the paths.
571*constraints2!
set_max_delay2default:default2
hold2default:default2*
in1_IBUF[142]_inst/O2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-613h px� 
�
b%s: There will be no %s timing paths from this pin '%s' unless %s is used to constrain the paths.
571*constraints2!
set_max_delay2default:default2
hold2default:default2*
in1_IBUF[142]_inst/I2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-613h px� 
�
?%s: Path segmentation by forcing '%s' to be timing startpoint.
515*constraints2!
set_max_delay2default:default2*
in1_IBUF[142]_inst/I2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-515h px� 
�
?%s: Path segmentation by forcing '%s' to be timing startpoint.
515*constraints2!
set_max_delay2default:default2*
in1_IBUF[143]_inst/O2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-515h px� 
�
b%s: There will be no %s timing paths from this pin '%s' unless %s is used to constrain the paths.
571*constraints2!
set_max_delay2default:default2
hold2default:default2*
in1_IBUF[143]_inst/O2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-613h px� 
�
?%s: Path segmentation by forcing '%s' to be timing startpoint.
515*constraints2!
set_max_delay2default:default2*
in1_IBUF[143]_inst/I2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-515h px� 
�
b%s: There will be no %s timing paths from this pin '%s' unless %s is used to constrain the paths.
571*constraints2!
set_max_delay2default:default2
hold2default:default2*
in1_IBUF[143]_inst/I2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-613h px� 
�
?%s: Path segmentation by forcing '%s' to be timing startpoint.
515*constraints2!
set_max_delay2default:default2*
in1_IBUF[144]_inst/O2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-515h px� 
�
b%s: There will be no %s timing paths from this pin '%s' unless %s is used to constrain the paths.
571*constraints2!
set_max_delay2default:default2
hold2default:default2*
in1_IBUF[144]_inst/O2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-613h px� 
�
?%s: Path segmentation by forcing '%s' to be timing startpoint.
515*constraints2!
set_max_delay2default:default2*
in1_IBUF[144]_inst/I2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-515h px� 
�
�Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2&
Constraints 18-5152default:default2
1002default:defaultZ17-14h px� 
�
b%s: There will be no %s timing paths from this pin '%s' unless %s is used to constrain the paths.
571*constraints2!
set_max_delay2default:default2
hold2default:default2*
in1_IBUF[144]_inst/I2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-613h px� 
�
�Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2&
Constraints 18-6132default:default2
1002default:defaultZ17-14h px� 
�
�%s: Path segmentation by forcing '%s' to be timing endpoint. There will be no %s timing paths to this pin unless %s is used to constrain the paths.
514*constraints2!
set_max_delay2default:default2(
out_OBUF[0]_inst/O2default:default2
hold2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-514h px� 
�
�%s: Path segmentation by forcing '%s' to be timing endpoint. There will be no %s timing paths to this pin unless %s is used to constrain the paths.
514*constraints2!
set_max_delay2default:default2(
out_OBUF[0]_inst/I2default:default2
hold2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-514h px� 
�
�%s: Path segmentation by forcing '%s' to be timing endpoint. There will be no %s timing paths to this pin unless %s is used to constrain the paths.
514*constraints2!
set_max_delay2default:default2*
out_OBUF[100]_inst/O2default:default2
hold2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-514h px� 
�
�%s: Path segmentation by forcing '%s' to be timing endpoint. There will be no %s timing paths to this pin unless %s is used to constrain the paths.
514*constraints2!
set_max_delay2default:default2*
out_OBUF[100]_inst/I2default:default2
hold2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-514h px� 
�
�%s: Path segmentation by forcing '%s' to be timing endpoint. There will be no %s timing paths to this pin unless %s is used to constrain the paths.
514*constraints2!
set_max_delay2default:default2*
out_OBUF[101]_inst/O2default:default2
hold2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-514h px� 
�
�%s: Path segmentation by forcing '%s' to be timing endpoint. There will be no %s timing paths to this pin unless %s is used to constrain the paths.
514*constraints2!
set_max_delay2default:default2*
out_OBUF[101]_inst/I2default:default2
hold2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-514h px� 
�
�%s: Path segmentation by forcing '%s' to be timing endpoint. There will be no %s timing paths to this pin unless %s is used to constrain the paths.
514*constraints2!
set_max_delay2default:default2*
out_OBUF[102]_inst/O2default:default2
hold2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-514h px� 
�
�%s: Path segmentation by forcing '%s' to be timing endpoint. There will be no %s timing paths to this pin unless %s is used to constrain the paths.
514*constraints2!
set_max_delay2default:default2*
out_OBUF[102]_inst/I2default:default2
hold2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-514h px� 
�
�%s: Path segmentation by forcing '%s' to be timing endpoint. There will be no %s timing paths to this pin unless %s is used to constrain the paths.
514*constraints2!
set_max_delay2default:default2*
out_OBUF[103]_inst/O2default:default2
hold2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-514h px� 
�
�%s: Path segmentation by forcing '%s' to be timing endpoint. There will be no %s timing paths to this pin unless %s is used to constrain the paths.
514*constraints2!
set_max_delay2default:default2*
out_OBUF[103]_inst/I2default:default2
hold2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-514h px� 
�
�%s: Path segmentation by forcing '%s' to be timing endpoint. There will be no %s timing paths to this pin unless %s is used to constrain the paths.
514*constraints2!
set_max_delay2default:default2*
out_OBUF[104]_inst/O2default:default2
hold2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-514h px� 
�
�%s: Path segmentation by forcing '%s' to be timing endpoint. There will be no %s timing paths to this pin unless %s is used to constrain the paths.
514*constraints2!
set_max_delay2default:default2*
out_OBUF[104]_inst/I2default:default2
hold2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-514h px� 
�
�%s: Path segmentation by forcing '%s' to be timing endpoint. There will be no %s timing paths to this pin unless %s is used to constrain the paths.
514*constraints2!
set_max_delay2default:default2*
out_OBUF[105]_inst/O2default:default2
hold2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-514h px� 
�
�%s: Path segmentation by forcing '%s' to be timing endpoint. There will be no %s timing paths to this pin unless %s is used to constrain the paths.
514*constraints2!
set_max_delay2default:default2*
out_OBUF[105]_inst/I2default:default2
hold2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-514h px� 
�
�%s: Path segmentation by forcing '%s' to be timing endpoint. There will be no %s timing paths to this pin unless %s is used to constrain the paths.
514*constraints2!
set_max_delay2default:default2*
out_OBUF[106]_inst/O2default:default2
hold2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-514h px� 
�
�%s: Path segmentation by forcing '%s' to be timing endpoint. There will be no %s timing paths to this pin unless %s is used to constrain the paths.
514*constraints2!
set_max_delay2default:default2*
out_OBUF[106]_inst/I2default:default2
hold2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-514h px� 
�
�%s: Path segmentation by forcing '%s' to be timing endpoint. There will be no %s timing paths to this pin unless %s is used to constrain the paths.
514*constraints2!
set_max_delay2default:default2*
out_OBUF[107]_inst/O2default:default2
hold2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-514h px� 
�
�%s: Path segmentation by forcing '%s' to be timing endpoint. There will be no %s timing paths to this pin unless %s is used to constrain the paths.
514*constraints2!
set_max_delay2default:default2*
out_OBUF[107]_inst/I2default:default2
hold2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-514h px� 
�
�%s: Path segmentation by forcing '%s' to be timing endpoint. There will be no %s timing paths to this pin unless %s is used to constrain the paths.
514*constraints2!
set_max_delay2default:default2*
out_OBUF[108]_inst/O2default:default2
hold2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-514h px� 
�
�%s: Path segmentation by forcing '%s' to be timing endpoint. There will be no %s timing paths to this pin unless %s is used to constrain the paths.
514*constraints2!
set_max_delay2default:default2*
out_OBUF[108]_inst/I2default:default2
hold2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-514h px� 
�
�%s: Path segmentation by forcing '%s' to be timing endpoint. There will be no %s timing paths to this pin unless %s is used to constrain the paths.
514*constraints2!
set_max_delay2default:default2*
out_OBUF[109]_inst/O2default:default2
hold2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-514h px� 
�
�%s: Path segmentation by forcing '%s' to be timing endpoint. There will be no %s timing paths to this pin unless %s is used to constrain the paths.
514*constraints2!
set_max_delay2default:default2*
out_OBUF[109]_inst/I2default:default2
hold2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-514h px� 
�
�%s: Path segmentation by forcing '%s' to be timing endpoint. There will be no %s timing paths to this pin unless %s is used to constrain the paths.
514*constraints2!
set_max_delay2default:default2)
out_OBUF[10]_inst/O2default:default2
hold2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-514h px� 
�
�%s: Path segmentation by forcing '%s' to be timing endpoint. There will be no %s timing paths to this pin unless %s is used to constrain the paths.
514*constraints2!
set_max_delay2default:default2)
out_OBUF[10]_inst/I2default:default2
hold2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-514h px� 
�
�%s: Path segmentation by forcing '%s' to be timing endpoint. There will be no %s timing paths to this pin unless %s is used to constrain the paths.
514*constraints2!
set_max_delay2default:default2*
out_OBUF[110]_inst/O2default:default2
hold2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-514h px� 
�
�%s: Path segmentation by forcing '%s' to be timing endpoint. There will be no %s timing paths to this pin unless %s is used to constrain the paths.
514*constraints2!
set_max_delay2default:default2*
out_OBUF[110]_inst/I2default:default2
hold2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-514h px� 
�
�%s: Path segmentation by forcing '%s' to be timing endpoint. There will be no %s timing paths to this pin unless %s is used to constrain the paths.
514*constraints2!
set_max_delay2default:default2*
out_OBUF[111]_inst/O2default:default2
hold2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-514h px� 
�
�%s: Path segmentation by forcing '%s' to be timing endpoint. There will be no %s timing paths to this pin unless %s is used to constrain the paths.
514*constraints2!
set_max_delay2default:default2*
out_OBUF[111]_inst/I2default:default2
hold2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-514h px� 
�
�%s: Path segmentation by forcing '%s' to be timing endpoint. There will be no %s timing paths to this pin unless %s is used to constrain the paths.
514*constraints2!
set_max_delay2default:default2*
out_OBUF[112]_inst/O2default:default2
hold2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-514h px� 
�
�%s: Path segmentation by forcing '%s' to be timing endpoint. There will be no %s timing paths to this pin unless %s is used to constrain the paths.
514*constraints2!
set_max_delay2default:default2*
out_OBUF[112]_inst/I2default:default2
hold2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-514h px� 
�
�%s: Path segmentation by forcing '%s' to be timing endpoint. There will be no %s timing paths to this pin unless %s is used to constrain the paths.
514*constraints2!
set_max_delay2default:default2*
out_OBUF[113]_inst/O2default:default2
hold2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-514h px� 
�
�%s: Path segmentation by forcing '%s' to be timing endpoint. There will be no %s timing paths to this pin unless %s is used to constrain the paths.
514*constraints2!
set_max_delay2default:default2*
out_OBUF[113]_inst/I2default:default2
hold2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-514h px� 
�
�%s: Path segmentation by forcing '%s' to be timing endpoint. There will be no %s timing paths to this pin unless %s is used to constrain the paths.
514*constraints2!
set_max_delay2default:default2*
out_OBUF[114]_inst/O2default:default2
hold2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-514h px� 
�
�%s: Path segmentation by forcing '%s' to be timing endpoint. There will be no %s timing paths to this pin unless %s is used to constrain the paths.
514*constraints2!
set_max_delay2default:default2*
out_OBUF[114]_inst/I2default:default2
hold2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-514h px� 
�
�%s: Path segmentation by forcing '%s' to be timing endpoint. There will be no %s timing paths to this pin unless %s is used to constrain the paths.
514*constraints2!
set_max_delay2default:default2*
out_OBUF[115]_inst/O2default:default2
hold2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-514h px� 
�
�%s: Path segmentation by forcing '%s' to be timing endpoint. There will be no %s timing paths to this pin unless %s is used to constrain the paths.
514*constraints2!
set_max_delay2default:default2*
out_OBUF[115]_inst/I2default:default2
hold2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-514h px� 
�
�%s: Path segmentation by forcing '%s' to be timing endpoint. There will be no %s timing paths to this pin unless %s is used to constrain the paths.
514*constraints2!
set_max_delay2default:default2*
out_OBUF[116]_inst/O2default:default2
hold2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-514h px� 
�
�%s: Path segmentation by forcing '%s' to be timing endpoint. There will be no %s timing paths to this pin unless %s is used to constrain the paths.
514*constraints2!
set_max_delay2default:default2*
out_OBUF[116]_inst/I2default:default2
hold2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-514h px� 
�
�%s: Path segmentation by forcing '%s' to be timing endpoint. There will be no %s timing paths to this pin unless %s is used to constrain the paths.
514*constraints2!
set_max_delay2default:default2*
out_OBUF[117]_inst/O2default:default2
hold2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-514h px� 
�
�%s: Path segmentation by forcing '%s' to be timing endpoint. There will be no %s timing paths to this pin unless %s is used to constrain the paths.
514*constraints2!
set_max_delay2default:default2*
out_OBUF[117]_inst/I2default:default2
hold2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-514h px� 
�
�%s: Path segmentation by forcing '%s' to be timing endpoint. There will be no %s timing paths to this pin unless %s is used to constrain the paths.
514*constraints2!
set_max_delay2default:default2*
out_OBUF[118]_inst/O2default:default2
hold2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-514h px� 
�
�%s: Path segmentation by forcing '%s' to be timing endpoint. There will be no %s timing paths to this pin unless %s is used to constrain the paths.
514*constraints2!
set_max_delay2default:default2*
out_OBUF[118]_inst/I2default:default2
hold2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-514h px� 
�
�%s: Path segmentation by forcing '%s' to be timing endpoint. There will be no %s timing paths to this pin unless %s is used to constrain the paths.
514*constraints2!
set_max_delay2default:default2*
out_OBUF[119]_inst/O2default:default2
hold2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-514h px� 
�
�%s: Path segmentation by forcing '%s' to be timing endpoint. There will be no %s timing paths to this pin unless %s is used to constrain the paths.
514*constraints2!
set_max_delay2default:default2*
out_OBUF[119]_inst/I2default:default2
hold2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-514h px� 
�
�%s: Path segmentation by forcing '%s' to be timing endpoint. There will be no %s timing paths to this pin unless %s is used to constrain the paths.
514*constraints2!
set_max_delay2default:default2)
out_OBUF[11]_inst/O2default:default2
hold2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-514h px� 
�
�%s: Path segmentation by forcing '%s' to be timing endpoint. There will be no %s timing paths to this pin unless %s is used to constrain the paths.
514*constraints2!
set_max_delay2default:default2)
out_OBUF[11]_inst/I2default:default2
hold2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-514h px� 
�
�%s: Path segmentation by forcing '%s' to be timing endpoint. There will be no %s timing paths to this pin unless %s is used to constrain the paths.
514*constraints2!
set_max_delay2default:default2*
out_OBUF[120]_inst/O2default:default2
hold2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-514h px� 
�
�%s: Path segmentation by forcing '%s' to be timing endpoint. There will be no %s timing paths to this pin unless %s is used to constrain the paths.
514*constraints2!
set_max_delay2default:default2*
out_OBUF[120]_inst/I2default:default2
hold2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-514h px� 
�
�%s: Path segmentation by forcing '%s' to be timing endpoint. There will be no %s timing paths to this pin unless %s is used to constrain the paths.
514*constraints2!
set_max_delay2default:default2.
out_OBUF[120]_inst_i_4/O2default:default2
hold2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-514h px� 
�
�%s: Path segmentation by forcing '%s' to be timing endpoint. There will be no %s timing paths to this pin unless %s is used to constrain the paths.
514*constraints2!
set_max_delay2default:default2/
out_OBUF[120]_inst_i_4/I02default:default2
hold2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-514h px� 
�
�%s: Path segmentation by forcing '%s' to be timing endpoint. There will be no %s timing paths to this pin unless %s is used to constrain the paths.
514*constraints2!
set_max_delay2default:default2/
out_OBUF[120]_inst_i_4/I12default:default2
hold2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-514h px� 
�
�%s: Path segmentation by forcing '%s' to be timing endpoint. There will be no %s timing paths to this pin unless %s is used to constrain the paths.
514*constraints2!
set_max_delay2default:default2/
out_OBUF[120]_inst_i_4/I22default:default2
hold2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-514h px� 
�
�%s: Path segmentation by forcing '%s' to be timing endpoint. There will be no %s timing paths to this pin unless %s is used to constrain the paths.
514*constraints2!
set_max_delay2default:default2/
out_OBUF[120]_inst_i_4/I32default:default2
hold2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-514h px� 
�
�%s: Path segmentation by forcing '%s' to be timing endpoint. There will be no %s timing paths to this pin unless %s is used to constrain the paths.
514*constraints2!
set_max_delay2default:default2/
out_OBUF[120]_inst_i_4/I42default:default2
hold2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-514h px� 
�
�%s: Path segmentation by forcing '%s' to be timing endpoint. There will be no %s timing paths to this pin unless %s is used to constrain the paths.
514*constraints2!
set_max_delay2default:default2/
out_OBUF[120]_inst_i_4/I52default:default2
hold2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-514h px� 
�
�%s: Path segmentation by forcing '%s' to be timing endpoint. There will be no %s timing paths to this pin unless %s is used to constrain the paths.
514*constraints2!
set_max_delay2default:default2.
out_OBUF[120]_inst_i_5/O2default:default2
hold2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-514h px� 
�
�%s: Path segmentation by forcing '%s' to be timing endpoint. There will be no %s timing paths to this pin unless %s is used to constrain the paths.
514*constraints2!
set_max_delay2default:default2/
out_OBUF[120]_inst_i_5/I02default:default2
hold2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-514h px� 
�
�%s: Path segmentation by forcing '%s' to be timing endpoint. There will be no %s timing paths to this pin unless %s is used to constrain the paths.
514*constraints2!
set_max_delay2default:default2/
out_OBUF[120]_inst_i_5/I12default:default2
hold2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-514h px� 
�
�%s: Path segmentation by forcing '%s' to be timing endpoint. There will be no %s timing paths to this pin unless %s is used to constrain the paths.
514*constraints2!
set_max_delay2default:default2/
out_OBUF[120]_inst_i_5/I22default:default2
hold2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-514h px� 
�
�%s: Path segmentation by forcing '%s' to be timing endpoint. There will be no %s timing paths to this pin unless %s is used to constrain the paths.
514*constraints2!
set_max_delay2default:default2/
out_OBUF[120]_inst_i_5/I32default:default2
hold2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-514h px� 
�
�%s: Path segmentation by forcing '%s' to be timing endpoint. There will be no %s timing paths to this pin unless %s is used to constrain the paths.
514*constraints2!
set_max_delay2default:default2/
out_OBUF[120]_inst_i_5/I42default:default2
hold2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-514h px� 
�
�%s: Path segmentation by forcing '%s' to be timing endpoint. There will be no %s timing paths to this pin unless %s is used to constrain the paths.
514*constraints2!
set_max_delay2default:default2/
out_OBUF[120]_inst_i_5/I52default:default2
hold2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-514h px� 
�
�%s: Path segmentation by forcing '%s' to be timing endpoint. There will be no %s timing paths to this pin unless %s is used to constrain the paths.
514*constraints2!
set_max_delay2default:default2*
out_OBUF[121]_inst/O2default:default2
hold2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-514h px� 
�
�%s: Path segmentation by forcing '%s' to be timing endpoint. There will be no %s timing paths to this pin unless %s is used to constrain the paths.
514*constraints2!
set_max_delay2default:default2*
out_OBUF[121]_inst/I2default:default2
hold2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-514h px� 
�
�%s: Path segmentation by forcing '%s' to be timing endpoint. There will be no %s timing paths to this pin unless %s is used to constrain the paths.
514*constraints2!
set_max_delay2default:default2*
out_OBUF[122]_inst/O2default:default2
hold2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-514h px� 
�
�%s: Path segmentation by forcing '%s' to be timing endpoint. There will be no %s timing paths to this pin unless %s is used to constrain the paths.
514*constraints2!
set_max_delay2default:default2*
out_OBUF[122]_inst/I2default:default2
hold2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-514h px� 
�
�%s: Path segmentation by forcing '%s' to be timing endpoint. There will be no %s timing paths to this pin unless %s is used to constrain the paths.
514*constraints2!
set_max_delay2default:default2*
out_OBUF[123]_inst/O2default:default2
hold2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-514h px� 
�
�%s: Path segmentation by forcing '%s' to be timing endpoint. There will be no %s timing paths to this pin unless %s is used to constrain the paths.
514*constraints2!
set_max_delay2default:default2*
out_OBUF[123]_inst/I2default:default2
hold2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-514h px� 
�
�%s: Path segmentation by forcing '%s' to be timing endpoint. There will be no %s timing paths to this pin unless %s is used to constrain the paths.
514*constraints2!
set_max_delay2default:default2*
out_OBUF[124]_inst/O2default:default2
hold2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-514h px� 
�
�%s: Path segmentation by forcing '%s' to be timing endpoint. There will be no %s timing paths to this pin unless %s is used to constrain the paths.
514*constraints2!
set_max_delay2default:default2*
out_OBUF[124]_inst/I2default:default2
hold2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-514h px� 
�
�%s: Path segmentation by forcing '%s' to be timing endpoint. There will be no %s timing paths to this pin unless %s is used to constrain the paths.
514*constraints2!
set_max_delay2default:default2*
out_OBUF[125]_inst/O2default:default2
hold2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-514h px� 
�
�%s: Path segmentation by forcing '%s' to be timing endpoint. There will be no %s timing paths to this pin unless %s is used to constrain the paths.
514*constraints2!
set_max_delay2default:default2*
out_OBUF[125]_inst/I2default:default2
hold2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-514h px� 
�
�%s: Path segmentation by forcing '%s' to be timing endpoint. There will be no %s timing paths to this pin unless %s is used to constrain the paths.
514*constraints2!
set_max_delay2default:default2*
out_OBUF[126]_inst/O2default:default2
hold2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-514h px� 
�
�%s: Path segmentation by forcing '%s' to be timing endpoint. There will be no %s timing paths to this pin unless %s is used to constrain the paths.
514*constraints2!
set_max_delay2default:default2*
out_OBUF[126]_inst/I2default:default2
hold2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-514h px� 
�
�%s: Path segmentation by forcing '%s' to be timing endpoint. There will be no %s timing paths to this pin unless %s is used to constrain the paths.
514*constraints2!
set_max_delay2default:default2*
out_OBUF[127]_inst/O2default:default2
hold2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-514h px� 
�
�%s: Path segmentation by forcing '%s' to be timing endpoint. There will be no %s timing paths to this pin unless %s is used to constrain the paths.
514*constraints2!
set_max_delay2default:default2*
out_OBUF[127]_inst/I2default:default2
hold2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-514h px� 
�
�%s: Path segmentation by forcing '%s' to be timing endpoint. There will be no %s timing paths to this pin unless %s is used to constrain the paths.
514*constraints2!
set_max_delay2default:default2*
out_OBUF[128]_inst/O2default:default2
hold2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-514h px� 
�
�%s: Path segmentation by forcing '%s' to be timing endpoint. There will be no %s timing paths to this pin unless %s is used to constrain the paths.
514*constraints2!
set_max_delay2default:default2*
out_OBUF[128]_inst/I2default:default2
hold2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-514h px� 
�
�%s: Path segmentation by forcing '%s' to be timing endpoint. There will be no %s timing paths to this pin unless %s is used to constrain the paths.
514*constraints2!
set_max_delay2default:default2*
out_OBUF[129]_inst/O2default:default2
hold2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-514h px� 
�
�%s: Path segmentation by forcing '%s' to be timing endpoint. There will be no %s timing paths to this pin unless %s is used to constrain the paths.
514*constraints2!
set_max_delay2default:default2*
out_OBUF[129]_inst/I2default:default2
hold2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-514h px� 
�
�%s: Path segmentation by forcing '%s' to be timing endpoint. There will be no %s timing paths to this pin unless %s is used to constrain the paths.
514*constraints2!
set_max_delay2default:default2)
out_OBUF[12]_inst/O2default:default2
hold2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-514h px� 
�
�%s: Path segmentation by forcing '%s' to be timing endpoint. There will be no %s timing paths to this pin unless %s is used to constrain the paths.
514*constraints2!
set_max_delay2default:default2)
out_OBUF[12]_inst/I2default:default2
hold2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-514h px� 
�
�%s: Path segmentation by forcing '%s' to be timing endpoint. There will be no %s timing paths to this pin unless %s is used to constrain the paths.
514*constraints2!
set_max_delay2default:default2*
out_OBUF[130]_inst/O2default:default2
hold2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-514h px� 
�
�%s: Path segmentation by forcing '%s' to be timing endpoint. There will be no %s timing paths to this pin unless %s is used to constrain the paths.
514*constraints2!
set_max_delay2default:default2*
out_OBUF[130]_inst/I2default:default2
hold2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-514h px� 
�
�%s: Path segmentation by forcing '%s' to be timing endpoint. There will be no %s timing paths to this pin unless %s is used to constrain the paths.
514*constraints2!
set_max_delay2default:default2*
out_OBUF[131]_inst/O2default:default2
hold2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-514h px� 
�
�%s: Path segmentation by forcing '%s' to be timing endpoint. There will be no %s timing paths to this pin unless %s is used to constrain the paths.
514*constraints2!
set_max_delay2default:default2*
out_OBUF[131]_inst/I2default:default2
hold2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-514h px� 
�
�%s: Path segmentation by forcing '%s' to be timing endpoint. There will be no %s timing paths to this pin unless %s is used to constrain the paths.
514*constraints2!
set_max_delay2default:default2*
out_OBUF[132]_inst/O2default:default2
hold2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-514h px� 
�
�%s: Path segmentation by forcing '%s' to be timing endpoint. There will be no %s timing paths to this pin unless %s is used to constrain the paths.
514*constraints2!
set_max_delay2default:default2*
out_OBUF[132]_inst/I2default:default2
hold2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-514h px� 
�
�%s: Path segmentation by forcing '%s' to be timing endpoint. There will be no %s timing paths to this pin unless %s is used to constrain the paths.
514*constraints2!
set_max_delay2default:default2*
out_OBUF[133]_inst/O2default:default2
hold2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-514h px� 
�
�%s: Path segmentation by forcing '%s' to be timing endpoint. There will be no %s timing paths to this pin unless %s is used to constrain the paths.
514*constraints2!
set_max_delay2default:default2*
out_OBUF[133]_inst/I2default:default2
hold2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-514h px� 
�
�%s: Path segmentation by forcing '%s' to be timing endpoint. There will be no %s timing paths to this pin unless %s is used to constrain the paths.
514*constraints2!
set_max_delay2default:default2*
out_OBUF[134]_inst/O2default:default2
hold2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-514h px� 
�
�%s: Path segmentation by forcing '%s' to be timing endpoint. There will be no %s timing paths to this pin unless %s is used to constrain the paths.
514*constraints2!
set_max_delay2default:default2*
out_OBUF[134]_inst/I2default:default2
hold2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-514h px� 
�
�%s: Path segmentation by forcing '%s' to be timing endpoint. There will be no %s timing paths to this pin unless %s is used to constrain the paths.
514*constraints2!
set_max_delay2default:default2*
out_OBUF[135]_inst/O2default:default2
hold2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-514h px� 
�
�%s: Path segmentation by forcing '%s' to be timing endpoint. There will be no %s timing paths to this pin unless %s is used to constrain the paths.
514*constraints2!
set_max_delay2default:default2*
out_OBUF[135]_inst/I2default:default2
hold2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-514h px� 
�
�%s: Path segmentation by forcing '%s' to be timing endpoint. There will be no %s timing paths to this pin unless %s is used to constrain the paths.
514*constraints2!
set_max_delay2default:default2*
out_OBUF[136]_inst/O2default:default2
hold2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-514h px� 
�
�%s: Path segmentation by forcing '%s' to be timing endpoint. There will be no %s timing paths to this pin unless %s is used to constrain the paths.
514*constraints2!
set_max_delay2default:default2*
out_OBUF[136]_inst/I2default:default2
hold2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-514h px� 
�
�%s: Path segmentation by forcing '%s' to be timing endpoint. There will be no %s timing paths to this pin unless %s is used to constrain the paths.
514*constraints2!
set_max_delay2default:default2*
out_OBUF[137]_inst/O2default:default2
hold2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-514h px� 
�
�%s: Path segmentation by forcing '%s' to be timing endpoint. There will be no %s timing paths to this pin unless %s is used to constrain the paths.
514*constraints2!
set_max_delay2default:default2*
out_OBUF[137]_inst/I2default:default2
hold2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-514h px� 
�
�%s: Path segmentation by forcing '%s' to be timing endpoint. There will be no %s timing paths to this pin unless %s is used to constrain the paths.
514*constraints2!
set_max_delay2default:default2*
out_OBUF[138]_inst/O2default:default2
hold2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-514h px� 
�
�%s: Path segmentation by forcing '%s' to be timing endpoint. There will be no %s timing paths to this pin unless %s is used to constrain the paths.
514*constraints2!
set_max_delay2default:default2*
out_OBUF[138]_inst/I2default:default2
hold2default:default2!
set_min_delay2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
32default:default8@Z18-514h px� 
�
�Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2&
Constraints 18-5142default:default2
1002default:defaultZ17-14h px� 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px� 
h
SPhase 1.2 IO Placement/ Clock Placement/ Build Placer Device | Checksum: 170e501ff
*commonh px� 
�

%s
*constraints2p
\Time (s): cpu = 00:00:12 ; elapsed = 00:00:10 . Memory (MB): peak = 1344.016 ; gain = 18.3202default:defaulth px� 
}

Phase %s%s
101*constraints2
1.3 2default:default2.
Build Placer Netlist Model2default:defaultZ18-101h px� 
P
;Phase 1.3 Build Placer Netlist Model | Checksum: 1faf3abba
*commonh px� 
�

%s
*constraints2p
\Time (s): cpu = 00:00:13 ; elapsed = 00:00:12 . Memory (MB): peak = 1395.035 ; gain = 69.3402default:defaulth px� 
z

Phase %s%s
101*constraints2
1.4 2default:default2+
Constrain Clocks/Macros2default:defaultZ18-101h px� 
M
8Phase 1.4 Constrain Clocks/Macros | Checksum: 1faf3abba
*commonh px� 
�

%s
*constraints2p
\Time (s): cpu = 00:00:13 ; elapsed = 00:00:12 . Memory (MB): peak = 1395.035 ; gain = 69.3402default:defaulth px� 
I
4Phase 1 Placer Initialization | Checksum: 1faf3abba
*commonh px� 
�

%s
*constraints2p
\Time (s): cpu = 00:00:13 ; elapsed = 00:00:12 . Memory (MB): peak = 1395.035 ; gain = 69.3402default:defaulth px� 
q

Phase %s%s
101*constraints2
2 2default:default2$
Global Placement2default:defaultZ18-101h px� 
p

Phase %s%s
101*constraints2
2.1 2default:default2!
Floorplanning2default:defaultZ18-101h px� 
C
.Phase 2.1 Floorplanning | Checksum: 20a17d3c3
*commonh px� 
�

%s
*constraints2p
\Time (s): cpu = 00:00:14 ; elapsed = 00:00:15 . Memory (MB): peak = 1395.035 ; gain = 69.3402default:defaulth px� 


Phase %s%s
101*constraints2
2.2 2default:default20
Physical Synthesis In Placer2default:defaultZ18-101h px� 
K
)No high fanout nets found in the design.
65*physynthZ32-65h px� 
�
$Optimized %s %s. Created %s new %s.
216*physynth2
02default:default2
net2default:default2
02default:default2
instance2default:defaultZ32-232h px� 
�
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
02default:default2
net or cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px� 
j
FNo candidate cells for DSP register optimization found in the design.
274*physynthZ32-456h px� 
�
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
22default:default2
02default:default2
net or cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px� 
h
DNo candidate cells for SRL register optimization found in the design349*physynthZ32-677h px� 
�
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
02default:default2
net or cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px� 
i
ENo candidate cells for BRAM register optimization found in the design297*physynthZ32-526h px� 
�
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
02default:default2
net or cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px� 
R
.No candidate nets found for HD net replication521*physynthZ32-949h px� 
�
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
02default:default2
net or cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0022default:default2
1395.0352default:default2
0.0002default:defaultZ17-268h px� 
B
-
Summary of Physical Synthesis Optimizations
*commonh px� 
B
-============================================
*commonh px� 


*commonh px� 


*commonh px� 
�
�----------------------------------------------------------------------------------------------------------------------------------------
*commonh px� 
�
�|  Optimization                  |  Added Cells  |  Removed Cells  |  Optimized Cells/Nets  |  Dont Touch  |  Iterations  |  Elapsed   |
----------------------------------------------------------------------------------------------------------------------------------------
*commonh px� 
�
�|  Very High Fanout              |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  DSP Register                  |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  Shift Register                |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  BRAM Register                 |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  HD Interface Net Replication  |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  Total                         |            0  |              0  |                     0  |           0  |           5  |  00:00:00  |
----------------------------------------------------------------------------------------------------------------------------------------
*commonh px� 


*commonh px� 


*commonh px� 
R
=Phase 2.2 Physical Synthesis In Placer | Checksum: 217ba0c94
*commonh px� 
�

%s
*constraints2p
\Time (s): cpu = 00:00:28 ; elapsed = 00:00:37 . Memory (MB): peak = 1395.035 ; gain = 69.3402default:defaulth px� 
D
/Phase 2 Global Placement | Checksum: 223e3858a
*commonh px� 
�

%s
*constraints2p
\Time (s): cpu = 00:00:30 ; elapsed = 00:00:40 . Memory (MB): peak = 1395.035 ; gain = 69.3402default:defaulth px� 
q

Phase %s%s
101*constraints2
3 2default:default2$
Detail Placement2default:defaultZ18-101h px� 
}

Phase %s%s
101*constraints2
3.1 2default:default2.
Commit Multi Column Macros2default:defaultZ18-101h px� 
P
;Phase 3.1 Commit Multi Column Macros | Checksum: 223e3858a
*commonh px� 
�

%s
*constraints2p
\Time (s): cpu = 00:00:30 ; elapsed = 00:00:41 . Memory (MB): peak = 1395.035 ; gain = 69.3402default:defaulth px� 


Phase %s%s
101*constraints2
3.2 2default:default20
Commit Most Macros & LUTRAMs2default:defaultZ18-101h px� 
R
=Phase 3.2 Commit Most Macros & LUTRAMs | Checksum: 2369d5aa5
*commonh px� 
�

%s
*constraints2p
\Time (s): cpu = 00:00:31 ; elapsed = 00:00:45 . Memory (MB): peak = 1395.035 ; gain = 69.3402default:defaulth px� 
y

Phase %s%s
101*constraints2
3.3 2default:default2*
Area Swap Optimization2default:defaultZ18-101h px� 
L
7Phase 3.3 Area Swap Optimization | Checksum: 1dd2fabb1
*commonh px� 
�

%s
*constraints2p
\Time (s): cpu = 00:00:32 ; elapsed = 00:00:45 . Memory (MB): peak = 1395.035 ; gain = 69.3402default:defaulth px� 
�

Phase %s%s
101*constraints2
3.4 2default:default22
Pipeline Register Optimization2default:defaultZ18-101h px� 
T
?Phase 3.4 Pipeline Register Optimization | Checksum: 1dd2fabb1
*commonh px� 
�

%s
*constraints2p
\Time (s): cpu = 00:00:32 ; elapsed = 00:00:45 . Memory (MB): peak = 1395.035 ; gain = 69.3402default:defaulth px� 
t

Phase %s%s
101*constraints2
3.5 2default:default2%
Fast Optimization2default:defaultZ18-101h px� 
G
2Phase 3.5 Fast Optimization | Checksum: 2429e5ac1
*commonh px� 
�

%s
*constraints2p
\Time (s): cpu = 00:00:46 ; elapsed = 00:01:02 . Memory (MB): peak = 1395.035 ; gain = 69.3402default:defaulth px� 


Phase %s%s
101*constraints2
3.6 2default:default20
Small Shape Detail Placement2default:defaultZ18-101h px� 
Q
<Phase 3.6 Small Shape Detail Placement | Checksum: a14bd384
*commonh px� 
�

%s
*constraints2p
\Time (s): cpu = 00:00:49 ; elapsed = 00:01:06 . Memory (MB): peak = 1395.035 ; gain = 69.3402default:defaulth px� 
u

Phase %s%s
101*constraints2
3.7 2default:default2&
Re-assign LUT pins2default:defaultZ18-101h px� 
H
3Phase 3.7 Re-assign LUT pins | Checksum: 1405c3a17
*commonh px� 
�

%s
*constraints2p
\Time (s): cpu = 00:00:50 ; elapsed = 00:01:07 . Memory (MB): peak = 1395.035 ; gain = 69.3402default:defaulth px� 
�

Phase %s%s
101*constraints2
3.8 2default:default22
Pipeline Register Optimization2default:defaultZ18-101h px� 
T
?Phase 3.8 Pipeline Register Optimization | Checksum: 1405c3a17
*commonh px� 
�

%s
*constraints2p
\Time (s): cpu = 00:00:50 ; elapsed = 00:01:07 . Memory (MB): peak = 1395.035 ; gain = 69.3402default:defaulth px� 
t

Phase %s%s
101*constraints2
3.9 2default:default2%
Fast Optimization2default:defaultZ18-101h px� 
F
1Phase 3.9 Fast Optimization | Checksum: fd18360a
*commonh px� 
�

%s
*constraints2p
\Time (s): cpu = 00:00:57 ; elapsed = 00:01:18 . Memory (MB): peak = 1395.035 ; gain = 69.3402default:defaulth px� 
C
.Phase 3 Detail Placement | Checksum: fd18360a
*commonh px� 
�

%s
*constraints2p
\Time (s): cpu = 00:00:57 ; elapsed = 00:01:18 . Memory (MB): peak = 1395.035 ; gain = 69.3402default:defaulth px� 
�

Phase %s%s
101*constraints2
4 2default:default2<
(Post Placement Optimization and Clean-Up2default:defaultZ18-101h px� 
{

Phase %s%s
101*constraints2
4.1 2default:default2,
Post Commit Optimization2default:defaultZ18-101h px� 
�
�%s: no pin(s)/port(s)/net(s) specified as objects, only virtual clock '%s' will be created. If you don't want this, please specify pin(s)/ports(s)/net(s) as objects to the command.
483*constraints2 
create_clock2default:default2
clk2default:default2~
hC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.srcs/constrs_1/new/timing.xdc2default:default2
12default:default8@Z18-483h px� 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px� 
�

Phase %s%s
101*constraints2
4.1.1 2default:default2/
Post Placement Optimization2default:defaultZ18-101h px� 
U
@Post Placement Optimization Initialization | Checksum: f9ed2daa
*commonh px� 
u

Phase %s%s
101*constraints2
4.1.1.1 2default:default2"
BUFG Insertion2default:defaultZ18-101h px� 
�
�BUFG insertion identified %s candidate nets, %s success, %s bufg driver replicated, %s skipped for placement/routing, %s skipped for timing, %s skipped for netlist change reason40*	placeflow2
02default:default2
02default:default2
02default:default2
02default:default2
02default:default2
02default:defaultZ46-46h px� 
G
2Phase 4.1.1.1 BUFG Insertion | Checksum: f9ed2daa
*commonh px� 
�

%s
*constraints2q
]Time (s): cpu = 00:00:59 ; elapsed = 00:01:22 . Memory (MB): peak = 1431.078 ; gain = 105.3832default:defaulth px� 
�
hPost Placement Timing Summary WNS=%s. For the most accurate timing information please run report_timing.610*place2
-3.9092default:defaultZ30-746h px� 
R
=Phase 4.1.1 Post Placement Optimization | Checksum: f83c3bef
*commonh px� 
�

%s
*constraints2q
]Time (s): cpu = 00:01:16 ; elapsed = 00:01:51 . Memory (MB): peak = 1432.059 ; gain = 106.3632default:defaulth px� 
M
8Phase 4.1 Post Commit Optimization | Checksum: f83c3bef
*commonh px� 
�

%s
*constraints2q
]Time (s): cpu = 00:01:16 ; elapsed = 00:01:51 . Memory (MB): peak = 1432.059 ; gain = 106.3632default:defaulth px� 
y

Phase %s%s
101*constraints2
4.2 2default:default2*
Post Placement Cleanup2default:defaultZ18-101h px� 
K
6Phase 4.2 Post Placement Cleanup | Checksum: f83c3bef
*commonh px� 
�

%s
*constraints2q
]Time (s): cpu = 00:01:16 ; elapsed = 00:01:51 . Memory (MB): peak = 1432.059 ; gain = 106.3632default:defaulth px� 
s

Phase %s%s
101*constraints2
4.3 2default:default2$
Placer Reporting2default:defaultZ18-101h px� 
E
0Phase 4.3 Placer Reporting | Checksum: f83c3bef
*commonh px� 
�

%s
*constraints2q
]Time (s): cpu = 00:01:17 ; elapsed = 00:01:51 . Memory (MB): peak = 1432.059 ; gain = 106.3632default:defaulth px� 
z

Phase %s%s
101*constraints2
4.4 2default:default2+
Final Placement Cleanup2default:defaultZ18-101h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0022default:default2
1432.0592default:default2
0.0002default:defaultZ17-268h px� 
L
7Phase 4.4 Final Placement Cleanup | Checksum: f83c3bef
*commonh px� 
�

%s
*constraints2q
]Time (s): cpu = 00:01:17 ; elapsed = 00:01:51 . Memory (MB): peak = 1432.059 ; gain = 106.3632default:defaulth px� 
[
FPhase 4 Post Placement Optimization and Clean-Up | Checksum: f83c3bef
*commonh px� 
�

%s
*constraints2q
]Time (s): cpu = 00:01:17 ; elapsed = 00:01:51 . Memory (MB): peak = 1432.059 ; gain = 106.3632default:defaulth px� 
=
(Ending Placer Task | Checksum: 563e20b2
*commonh px� 
�

%s
*constraints2q
]Time (s): cpu = 00:01:17 ; elapsed = 00:01:51 . Memory (MB): peak = 1432.059 ; gain = 106.3632default:defaulth px� 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
692default:default2
3002default:default2
6002default:default2
02default:defaultZ4-41h px� 
^
%s completed successfully
29*	vivadotcl2 
place_design2default:defaultZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
place_design: 2default:default2
00:01:192default:default2
00:01:532default:default2
1432.0592default:default2
106.3632default:defaultZ17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0022default:default2
1432.0592default:default2
0.0002default:defaultZ17-268h px� 
H
&Writing timing data to binary archive.266*timingZ38-480h px� 
D
Writing placer database...
1603*designutilsZ20-1893h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0022default:default2
1432.0592default:default2
0.0002default:defaultZ17-268h px� 
=
Writing XDEF routing.
211*designutilsZ20-211h px� 
J
#Writing XDEF routing logical nets.
209*designutilsZ20-209h px� 
J
#Writing XDEF routing special nets.
210*designutilsZ20-210h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2)
Write XDEF Complete: 2default:default2
00:00:022default:default2 
00:00:00.9072default:default2
1432.0592default:default2
0.0002default:defaultZ17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2�
lC:/Users/nisar/My Files/IIT Kharagpur/FourthYear/Sem8/HSEC/Assgn-1/assgn-1.runs/impl_1/multiplier_placed.dcp2default:defaultZ17-1381h px� 
e
%s4*runtcl2I
5Executing : report_io -file multiplier_io_placed.rpt
2default:defaulth px� 
�
kreport_io: Time (s): cpu = 00:00:01 ; elapsed = 00:00:00.343 . Memory (MB): peak = 1437.520 ; gain = 5.461
*commonh px� 
�
%s4*runtcl2�
lExecuting : report_utilization -file multiplier_utilization_placed.rpt -pb multiplier_utilization_placed.pb
2default:defaulth px� 
�
%s4*runtcl2f
RExecuting : report_control_sets -verbose -file multiplier_control_sets_placed.rpt
2default:defaulth px� 
�
ureport_control_sets: Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.008 . Memory (MB): peak = 1437.520 ; gain = 0.000
*commonh px� 


End Record