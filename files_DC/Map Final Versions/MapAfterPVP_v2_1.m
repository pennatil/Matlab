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
% %orizzontal, Start from intersection 9
A(55,42:50)=1;
A(65,50:58)=1;
A(55:65,50)=1;
% %orizzontal, Start from intersection 10
A(65,58:68)=1;
A(72,68:77)=1;
A(65:72,68)=1;
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

imshow(A,'InitialMagnification','fit','colormap',hot)