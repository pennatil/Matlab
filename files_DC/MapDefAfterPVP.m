%map
clc
clear all
close all
pointn=1;
width=280;
height=420;
A=-1*ones(height,width);
 
%vertical, Start from intersection 3
A(10:315,10)=1;
A(40:50,10)=-1;
A(250:260,10)=-1;

A(40,10:33)=1;
A(50,10:33)=1;
A(40:50,33)=1;

A(250,10:33)=1;
A(260,10:33)=1;
A(250:260,33)=1;
%vertical, Start from intersection 4
A(1:412,74)=1;
%vertical, Start from intersection 5
A(1:400,106)=1;
%vertical, Start from intersection 6
A(10:410,144)=1;
A(198:412,146)=1;
%vertical, Start form intersection 7
A(10:315,250)=1;
%vertical, Start form intersection 7
A(10:317,252)=1;
%vertical, Start from intersection 8
A(80,1:10)=1;
%vertical, Start from intersection 17
A(198:317,270)=1;
%orizzontal, Start from intersection 3
A(10,10:280)=1;

A(10,177:217)=-1;
A(10:24,177)=1;
A(10:24,217)=1;
A(24,177:217)=1;

A(10,42:52)=-1;
A(10:26,42)=1;
A(10:26,52)=1;
A(26,42:52)=1;
%orizzontal, Start from intersection 3 (2°)
A(12,10:40)=1;
A(12,54:175)=1;
A(12,219:280)=1;

A(12:26,175)=1;
A(12:26,219)=1;
A(26,175:219)=1;

A(12:28,40)=1;
A(12:28,54)=1;
A(28,40:54)=1;
%orizzontal, Start from intersection 9
A(100,74:90)=1;
A(100:120,90)=1;
A(120,90:106)=1;
%orizzontal, Start from intersection 10
A(120,106:125)=1;
A(120:135,125)=1;
A(135,125:144)=1;
%orizzontal, Start from intersection 12
A(205,10:74)=1;
%orizzontal, Start from intersection 12
A(203,10:74)=1;
%orizzontal, Start from intersection 13
A(205,74:81)=1;
A(205:208,81)=1;
A(208,81:91)=1;
A(205:208,91)=1;
A(205,91:106)=1;
%orizzontal, Start from intersection 13 (2°)
A(203,74:83)=1;
A(203:206,83)=1;
A(206,83:89)=1;
A(203:206,89)=1;
A(203,89:106)=1;
%orizzontal, Start from intersection 14
A(205,106:125)=1;
A(200:205,125)=1;
A(200,125:144)=1;
%orizzontal, Start from intersection 14 (2°)
A(203,106:123)=1;
A(198:203,123)=1;
A(198,123:144)=1;
%orizzontal, Start from intersection 15 
A(198,144:280)=1;
%orizzontal, Start from intersection 15 (2°)
A(200,144:280)=1;
%orizzontal, Start from intersection 15 (3°)
A(202,144:270)=1;
%orizzontal, Start from intersection 18
A(315,1:280)=1;
A(315,177:217)=-1;
A(315,26:58)=-1;

A(297:315,26)=1;
A(297:315,58)=1;
A(297,26:58)=1;

A(274:315,177)=1;
A(274:315,217)=1;
A(274,177:217)=1;
%orizzontal, Start from intersection 18 (2°)
A(313,1:10)=1;

A(313,10:24)=1;
A(313,60:74)=1;
A(295:313,24)=1;
A(295:313,60)=1;
A(295,24:60)=1;

A(317,144:179)=1;
A(317,215:280)=1;

A(276:317,179)=1;
A(276:317,215)=1;
A(276,179:215)=1;
%orizzontal, Start from intersection 24
A(400,76:106)=1;
A(400:412,76)=1;
%orizzontal, last one (Lungolago)
A(410,1:144)=1;
A(412,1:146)=1;


imshow(A,'InitialMagnification','fit','colormap',hot)
