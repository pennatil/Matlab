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
% %vertical, Start from intersection 4
A(1:162,42)=1;
% %vertical, Start from intersection 4 (2°)
A(1:162,40)=1;
% %vertical, Start from intersection 5
A(1:162,58)=1;
% %vertical, Start from intersection 5 (2°)
A(1:162,56)=1;
% %vertical, Start from intersection 6
A(10:210,77)=1;
% %vertical, Start from intersection 6 (2°)
A(10:210,75)=1;
% %vertical, Start form intersection 7
A(1:164,130)=1;
% %vertical, Start form intersection 7 (2°)
A(1:164,128)=1;
% %vertical, Start from intersection 17
A(103:163,140)=1;
%orizzontal, Start from intersection 3
A(10,10:150)=1;
%orizzontal, Start from intersection 3 (2°)
A(12,14:150)=1;
%orizzontal, Start from intersection 3 (3°)
A(14,14:42)=1;
% %orizzontal, Start from intersection 12
A(105,10:66)=1;
A(107,10:68)=1;
A(103:105,66)=1;
A(105:107,68)=1;
% %orizzontal, Start from intersection 13
A(109,40:58)=1;
% %orizzontal, Start from intersection 15 
A(105,68:150)=1;
% %orizzontal, Start from intersection 15 (2°)
A(103,66:150)=1;
% %orizzontal, Start from intersection 15 (3°)
A(107,77:140)=1;
% %orizzontal, Start from intersection 18
A(162,1:58)=1;
A(162,77:150)=1;
% %orizzontal, Start from intersection 18 (2°)
A(160,1:58)=1;
A(164,77:150)=1;
% %orizzontal, Start from intersection 18 (3°)
A(158,1:14)=1;
% %orizzontal, last one (Lungolago)
A(210,1:77)=1; 
A(208,1:77)=1; 
%Border
A(:,1:2)=-1;
A(1:2,:)=-1;
A(:,149:150)=-1;
A(219:220,:)=-1;
%Border
A(:,1:2)=-1;
A(1:2,:)=-1;
A(:,149:150)=-1;
A(219:220,:)=-1;
%Add
% 6-7
A(10,93:113)=-1;
A(12,91:115)=-1;
A(10:18,93)=1;
A(18,93:113)=1;
A(10:18,113)=1;
A(12:20,91)=1;
A(12:20,115)=1;
A(20,91:115)=1;
%18-19
 A(162,18:34)=-1;
%20-21
A(164,84:124)=-1;
A(162,86:122)=-1;
A(162:182,86)=1;
A(162:182,122)=1;
A(164:184,84)=1;
A(164:184,124)=1;
A(184,84:124)=1;
A(182,86:122)=1;
%add andrea
A(159,10)=-1;
A(161,10)=-1;
A(161,12)=-1;
A(158,11)=-1;
A(158,13)=-1;
A(162,15:18)=-1;
A(162,35:39)=-1;
A(163:209,42)=-1;
A(208,42)=1;
A(163:209,40)=1;
A(50,14:17)=1;
A(14:50,17)=1;
A(14,15:16)=-1;
A(10:30,9)=1;
A(11:29,10)=-1;
A(72:75,74)=1;
A(75,74:73)=1;
A(73:74,75)=-1;
%highlighting crossings AN
%cross 3
A(10:11,11:12)=3;
A(49:50,14:15)=3;
%cross 4
A(10:14,40:42)=4;
A(11,41)=-1;
A(13,41)=-1;
%cross 5
A(10:12,56:58)=5;
A(11,57)=-1;
%cross 6
A(10:12,77)=6;
%cross 7
A(10:12,128:130)=7;
A(11,129)=-1;
%cross 9
%A(100,74)=9;
%cross 10
A(72:73,76:77)=10;
%cross 11
%A(135,144)=11;
%cross 12
A(105:107,10:14)=12;
A(106,11)=-1;
A(106,13)=-1;
%cross 13
A(105:109,40:42)=13;
A(106,41)=-1;
A(108,41)=-1;
%cross 14
A(105:109,56:58)=14;
A(106,57)=-1;
A(108,57)=-1;
%cross 15
A(103:107,75:77)=15;
A(104,76)=-1;
A(106,76)=-1;
% %cross 16
% A(198:202,250:252)=16;
% A(199,251)=-1;
% A(201,251)=-1;
% %cross 17
% A(198:202,270)=17;
% %cross 18
% A(311:315,10:14)=18;
% A(312,11)=-1;
% A(312,13)=-1;
% A(314,11)=-1;
% A(314,13)=-1;
% %cross 19
% A(313:315,72:74)=19;
% A(314,73)=-1;
% %cross 20
% A(313:315,106:108)=20;
% A(314,107)=-1;
% %cross 21
% A(315:317,144:146)=21;
% A(316,145)=-1;
% %cross 22
% A(315:317,250:252)=22;
% A(316,250:251)=-1;
% %cross 23
% A(315:317,270)=23;
% %cross 27
% A(410:412,74:76)=27;
% A(411,75)=-1;

%Toad
% A(48:78,88:118)=1;
A(48:49,98:110)=1;
A(50:51,94:99)=1;
A(50:51,109:114)=1;
A(52:53,92:95)=1;
A(52:53,113:116)=1;
A(54:55,92:93)=1;
A(54:55,115:116)=1;
A(54:59,90:91)=1;
A(54:59,117:118)=1;
A(58:71,88:89)=1;
A(58:71,119:120)=1;
A(68:69,94:114)=1;
A(70:71,88:95)=1;
A(70:71,113:120)=1;
A(72:73,90:93)=1;
A(72:73,115:118)=1;
A(74:77,92:93)=1;
A(74:77,115:116)=1;
A(76:77,94:95)=1;
A(76:77,113:114)=1;
A(78:79,94:114)=1;
A(70:73,100:101)=1;
A(70:73,107:108)=1;
A(51:53,101)=1;
A(51:53,107)=1;
A(53:55,97:99)=1;
A(53:55,109:111)=1;
A(53,100)=1;
A(53,108)=1;
A(58,93)=1;
A(58:61,115)=1;
A(58:61,93)=1;
A(62:65,91:93)=1;
A(62:65,115:117)=1;
A(59:63,94:95)=1;
A(59:63,113:114)=1;
A(59:66,100:108)=1;
A(61:64,98:110)=1;

imshow(A,'InitialMagnification','fit','colormap',hot)