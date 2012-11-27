%map
clc
clear all
close all
pointn=1;
width=150;
height=220;
A=-1*ones(height,width);

%vertical, Start from intersection 3
A(10:162,10)=1;
%vertical, Start from intersection 3 (2°)
A(10:162,12)=1;
%vertical, Start from intersection 3 (3°)
A(12:162,14)=1;
%vertical, Start from intersection 4
A(1:210,42)=1;
%vertical, Start from intersection 4 (2°)
A(1:162,40)=1;
%vertical, Start from intersection 5
A(1:205,58)=1;
%vertical, Start from intersection 5 (2°)
A(1:205,56)=1;
%vertical, Start from intersection 6
A(10:210,77)=1;
%vertical, Start from intersection 6 (2°)
A(10:208,75)=1;
%vertical, Start form intersection 7
A(1:164,130)=1;
%vertical, Start form intersection 7 (2°)
A(1:164,128)=1;
%vertical, Start from intersection 17
A(103:163,140)=1;
%orizzontal, Start from intersection 3
A(10,10:150)=1;
%orizzontal, Start from intersection 3 (2°)
A(12,14:150)=1;
%orizzontal, Start from intersection 3 (3°)
A(14,14:42)=1;
%orizzontal, Start from intersection 9
A(55,42:50)=1;
A(65,50:58)=1;
A(55:65,50)=1;
%orizzontal, Start from intersection 10
A(65,58:68)=1;
A(72,68:77)=1;
A(65:72,68)=1;
%orizzontal, Start from intersection 12
A(105,10:66)=1;
A(107,10:68)=1;
A(103:105,66)=1;
A(105:107,68)=1;
%orizzontal, Start from intersection 13
A(109,40:58)=1;
%orizzontal, Start from intersection 15 
A(105,68:150)=1;
%orizzontal, Start from intersection 15 (2°)
A(103,66:150)=1;
%orizzontal, Start from intersection 15 (3°)
A(107,75:140)=1;
%orizzontal, Start from intersection 18
A(162,1:150)=1;
%orizzontal, Start from intersection 18 (2°)
A(160,1:58)=1;
A(164,75:150)=1;
%orizzontal, Start from intersection 18 (3°)
A(158,1:14)=1;
%orizzontal, Start from intersection 24
A(205,47:58)=1;
A(205:210,47)=1;
%orizzontal, last one (Lungolago)
A(210,1:77)=1; 
A(208,1:75)=1; 
%Border
A(:,1)=-1;
A(1,:)=-1;
A(:,150)=-1;
A(220,:)=-1;
%Add
%3-4
A(10,20:32)=-1;
A(12,18:34)=-1;
A(14,16:36)=-1;
A(10:18,20)=1;
A(10:18,32)=1;
A(12:20,18)=1;
A(12:20,34)=1;
A(14:22,16)=1;
A(14:22,36)=1;
A(18,20:32)=1;
A(20,18:34)=1;
A(22,16:36)=1;
%6-7
A(10,93:113)=-1;
A(12,91:115)=-1;
A(10:18,93)=1;
A(18,93:113)=1;
A(10:18,113)=1;
A(12:20,91)=1;
A(12:20,115)=1;
A(20,91:115)=1;
%3-12
A(38:88,10)=-1;
A(36:90,12)=-1;
A(34:92,14)=-1;
A(38,10:21)=1;
A(88,10:21)=1;
A(36,12:23)=1;
A(90,12:23)=1;
A(34,14:25)=1;
A(92,14:25)=1;
A(38:88,21)=1;
A(36:90,23)=1;
A(34:92,25)=1;
%12-18
A(125:136,10)=-1;
A(123:138,12)=-1;
A(121:140,14)=-1;
A(125,10:21)=1;
A(136,10:21)=1;
A(123,12:23)=1;
A(138,12:23)=1;
A(121,14:25)=1;
A(140,14:25)=1;
A(125:136,21)=1;
A(123:138,23)=1;
A(121:140,25)=1;
%18-19
A(162,18:34)=-1;
A(160,16:36)=-1;
A(142:160,16)=1;
A(142:160,36)=1;
A(144:162,18)=1;
A(144:162,34)=1;
A(144,18:34)=1;
A(142,16:36)=1;
%20-21
A(164,84:124)=-1;
A(162,86:122)=-1;
A(162:182,86)=1;
A(162:182,122)=1;
A(164:184,84)=1;
A(164:184,124)=1;
A(184,84:124)=1;
A(182,86:122)=1;

%{
highlighting crossings LP
%cross 4
A(10:14,72:74)=4;
A(11,73)=-1;
A(13,73)=-1;
%cross 5
A(10:12,106:108)=5;
A(11,107)=-1;
%cross 6
A(10:12,144)=6;
%cross 7
A(10:12,250:252)=7;
A(11,251)=-1;
%cross 9
A(100,74)=9;
%cross 10
A(120,106:108)=10;
%cross 11
A(135,144)=11;
%cross 12
A(203:205,10:14)=12;
A(204,11)=-1;
A(204,13)=-1;
%cross 13
A(203:207,72:74)=13;
A(73,204)=-1;
A(73,206)=-1;
%cross 14
A(203:205,106:108)=14;
A(206:207,106)=14;
A(204,107)=-1;
%cross 15
A(198:202,144:146)=15;
A(199,145)=-1;
A(201,145)=-1;
%cross 16
A(198:202,250:252)=16;
A(199,251)=-1;
A(201,251)=-1;
%cross 17
A(198:202,270)=17;
%cross 18
A(311:315,10:14)=18;
A(312,11)=-1;
A(312,13)=-1;
A(314,11)=-1;
A(314,13)=-1;
%cross 19
A(313:315,72:74)=19;
A(314,73)=-1;
%cross 20
A(313:315,106:108)=20;
A(314,107)=-1;
%cross 21
A(315:317,144:146)=21;
A(316,145)=-1;
%cross 22
A(315:317,250:252)=22;
A(316,250:251)=-1;
%cross 23
A(315:317,270)=23;
%cross 27
A(410:412,74:76)=27;
A(411,75)=-1;
%}

%{
Entrance Points
P1.1(2,42) 7850 vc/g
P1.2(2,42) 7850 vc/g
P4.1(10,149) 11935 vc/g
P5.1(103,179) 3210 vc/g
P5.2(105,179) 3210 vc/g
P6.1(162,149) 5500 vc/g
P7.2(208,2) 18265 vc/g
P8.3(158,2) 14423 vc/g
Total entrance veicles: 72243
Exits Points
P2.1(2,58) 5300 vc/g
P2.2(2,60) 5300 vc/g
P3.1(2,130) 3625 vc/g
P3.2(2,132) 3625 vc/g
P4.2(12,179) 11935 vc/g
P6.2(164,149) 5500 vc/g
P7.1(206,2) 18265 vc/g
P8.1(162,2) 14423 vc/g
P8.2(160,2) 14423 vc/g
Total exit veicles: 82396
%}

imshow(A,'InitialMagnification','fit','colormap',hot)