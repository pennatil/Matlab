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
%vertical, Start from intersection 3 (2�)
A(12:38,12)=1;
A(52:248,12)=1;
A(262:315,12)=1;
A(38,12:35)=1;
A(52,12:35)=1;
A(38:52,35)=1;
A(248,12:35)=1;
A(262,12:35)=1;
A(248:262,35)=1;
%vertical, Start from intersection 3 (3�)
A(14:36,14)=1;
A(54:246,14)=1;
A(264:315,14)=1;
A(36,14:37)=1;
A(54,14:37)=1;
A(36:54,37)=1;
A(246,14:37)=1;
A(264,14:37)=1;
A(246:264,37)=1;
%vertical, Start from intersection 4
A(1:315,74)=1;
A(45:65,74)=-1;
% A(348:378,74)=-1;

A(45:65,86)=1;
A(45,74:86)=1;
A(65,74:86)=1;

% A(348,74:104)=1;
% A(378,74:104)=1;
% A(348:378,104)=1;
%vertical, Start from intersection 4 (2�)
A(203:315,72)=1;
%vertical, Start from intersection 5
A(1:315,106)=1;
A(45:65,106)=-1;

A(45:65,111)=1;
A(45,106:111)=1;
A(65,106:111)=1;
%vertical, Start from intersection 5 (2�)
A(67:315,108)=1;
A(1:43,108)=1;
A(43:67,113)=1;
A(43,108:113)=1;
A(67,108:113)=1;
%vertical, Start from intersection 6
A(10:410,144)=1;
A(245:265,144)=-1;

A(245,144:151)=1;
A(265,144:151)=1;
A(245:265,151)=1;

A(198:243,146)=1;
A(267:412,146)=1;
A(243,146:153)=1;
A(267,146:153)=1;
A(243:267,153)=1;
%vertical, Start form intersection 7
A(1:315,250)=1;
%vertical, Start form intersection 7 (2�)
A(1:317,252)=1;
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
%orizzontal, Start from intersection 3 (2�)
A(12,12:40)=1;
A(12,54:175)=1;
A(12,219:280)=1;

A(12:26,175)=1;
A(12:26,219)=1;
A(26,175:219)=1;

A(12:28,40)=1;
A(12:28,54)=1;
A(28,40:54)=1;
%orizzontal, Start from intersection 3 (3�)
A(14,14:38)=1;
A(14:30,38)=1;
A(14:30,56)=1;
A(30,38:56)=1;
A(14,56:74)=1;
%orizzontal, Start from intersection 8
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
%orizzontal, Start from intersection 13 (2�)
A(203,74:83)=1;
A(203:206,83)=1;
A(206,83:89)=1;
A(203:206,89)=1;
A(203,89:106)=1;
%orizzontal, Start from intersection 13 (3�)
A(207,72:79)=1;
A(207:210,79)=1;
A(210,79:93)=1;
A(207:210,93)=1;
A(207,93:106)=1;
%orizzontal, Start from intersection 14
A(205,106:125)=1;
A(200:205,125)=1;
A(200,125:144)=1;
%orizzontal, Start from intersection 14 (2�)
A(203,106:123)=1;
A(198:203,123)=1;
A(198,123:144)=1;
%orizzontal, Start from intersection 15 
A(198,144:280)=1;
%orizzontal, Start from intersection 15 (2�)
A(200,144:280)=1;
%orizzontal, Start from intersection 15 (3�)
A(202,144:270)=1;
%orizzontal, Start from intersection 18
A(315,1:280)=1;
A(315,177:217)=-1;
A(315,26:58)=-1;
A(315,85:95)=-1;
A(315,109:143)=-1;

A(315,74:85)=1;
A(315,95:106)=1;
A(294:315,85)=1;
A(294:315,95)=1;
A(294,85:95)=1;

% A(315,106:117)=1;
% A(315,127:144)=1;
% A(295:315,117)=1;
% A(295:315,127)=1;
% A(295,117:127)=1;

A(297:315,26)=1;
A(297:315,58)=1;
A(297,26:58)=1;

A(274:315,177)=1;
A(274:315,217)=1;
A(274,177:217)=1;
%orizzontal, Start from intersection 18 (2�)
A(313,1:24)=1;
A(313,60:83)=1;
A(295:313,24)=1;
A(295:313,60)=1;
A(295,24:60)=1;

A(313,97:108)=1;
A(292:313,83)=1;
A(292:313,97)=1;
A(292,83:97)=1;

A(317,144:179)=1;
A(317,215:280)=1;

A(276:317,179)=1;
A(276:317,215)=1;
A(276,179:215)=1;
%orizzontal, Start from intersection 18 (3�)
A(311,1:14)=1;
%orizzontal, Start from intersection 24
% A(400,76:106)=1;
% A(400:412,76)=1;
%orizzontal, last one (Lungolago)
A(410,1:144)=1;
A(412,1:146)=1;
%Toad
A(72:158,156:238)=1;
A(73:78,182:212)=-1;
A(79:84,172:187)=-1;
A(79:84,207:222)=-1;
A(85:90,167:177)=-1;
A(85:90,217:227)=-1;
A(91:96,162:172)=-1;
A(91:96,222:233)=-1;
A(97:102,157:167)=-1;
A(97:102,227:237)=-1;
A(103:128,157:162)=-1;
A(103:128,232:237)=-1;
A(123:128,172:222)=-1;
A(129:134,157:177)=-1;
A(129:134,217:237)=-1;
A(135:140,162:172)=-1;
A(135:140,222:233)=-1;
A(141:151,167:172)=-1;
A(141:151,222:227)=-1;
A(146:151,167:177)=-1;
A(146:151,217:227)=-1;
A(152:157,172:222)=-1;
A(81:90,189:193)=-1;
A(86:90,179:192)=-1;
A(90:94,179:187)=-1;
A(81:90,201:205)=-1;
A(86:90,201:215)=-1;
A(90:94,206:215)=-1;
A(100:120,188:206)=-1;
A(130:140,189:194)=-1;
A(130:140,201:206)=-1;
A(105:115,183:211)=-1;
A(104:119,164:174)=-1;
A(98:105,169:171)=-1;


imshow(A,'InitialMagnification','fit','colormap',hot)
