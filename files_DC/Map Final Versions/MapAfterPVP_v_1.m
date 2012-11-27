%map
clc
clear all
%close all
pointn=1;
width=150;
height=220;
A=-1*ones(height,width);
%vertical, Start from intersection 3
A(10:162,10)=1;
% A(25:30,10)=-1;
% A(130:135,10)=-1;
% %vertical, Start from intersection 3 (2°)
A(12:162,12)=1;
% %vertical, Start from intersection 3 (3°)
A(14:162,14)=1;
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
% %vertical, Start form intersection 7
A(1:164,130)=1;
% %vertical, Start form intersection 7 (2°)
A(1:164,128)=1;
% %vertical, Start from intersection 17
A(103:163,140)=1;
% %orizzontal, Start from intersection 3
A(10,10:150)=1;
% %orizzontal, Start from intersection 3 (2°)
A(12,12:150)=1;
% %orizzontal, Start from intersection 3 (3°)
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
% %orizzontal, Start from intersection 12
A(105,10:66)=1;
A(107,10:68)=1;
A(103:105,66)=1;
A(105:107,68)=1;
% %orizzontal, Start from intersection 13
% %orizzontal, Start from intersection 13 (2°)
% %orizzontal, Start from intersection 13 (3°)
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
% %orizzontal, Start from intersection 24
% %orizzontal, last one (Lungolago)
A(210,1:77)=1; 

imshow(A,'InitialMagnification','fit','colormap',hot)