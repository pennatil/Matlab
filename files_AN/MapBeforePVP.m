%map
clc
clear all
%close all
pointn=1;
width=280;
height=420;
A=-1*ones(height,width);
 figure(2)
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
A(10:38,12)=1;
A(52:248,12)=1;
A(262:315,12)=1;
A(38,12:35)=1;
A(52,12:35)=1;
A(38:52,35)=1;
A(248,12:35)=1;
A(262,12:35)=1;
A(248:262,35)=1;
%vertical, Start from intersection 3 (3�)
A(12:36,14)=1;
A(54:246,14)=1;
A(264:315,14)=1;
A(36,14:37)=1;
A(54,14:37)=1;
A(36:54,37)=1;
A(246,14:37)=1;
A(264,14:37)=1;
A(246:264,37)=1;
%vertical, Start from intersection 4
A(1:412,74)=1;
A(45:65,74)=-1;
A(348:378,74)=-1;

A(45:65,86)=1;
A(45,74:86)=1;
A(65,74:86)=1;

A(348,74:104)=1;
A(378,74:104)=1;
A(348:378,104)=1;
%vertical, Start from intersection 4 (2�)
A(203:315,72)=1;
A(1:205,72)=1;
A(47:63,72)=-1;
A(47:63,84)=1;
A(47,72:84)=1;
A(63,72:84)=1;
%vertical, Start from intersection 5
A(1:400,106)=1;
A(45:65,106)=-1;

A(45:65,111)=1;
A(45,106:111)=1;
A(65,106:111)=1;
%vertical, Start from intersection 5 (2�)
A(67:400,108)=1;
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
A(315,117:127)=-1;

A(315,74:85)=1;
A(315,95:106)=1;
A(294:315,85)=1;
A(294:315,95)=1;
A(294,85:95)=1;

A(315,106:117)=1;
A(315,127:144)=1;
A(295:315,117)=1;
A(295:315,127)=1;
A(295,117:127)=1;

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
A(400,76:106)=1;
A(400:412,76)=1;
%orizzontal, last one (Lungolago)
A(410,1:144)=1;
A(412,1:146)=1;


%entrances










%highlighting crossings LP

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
%borders
A(:,1)=-1;
A(1,:)=-1;
A(:,280)=-1;
A(420,:)=-1;

%{
Entrance Points
P1.1(2,72) 7850 vc/g
P1.2(2,74) 7850 vc/g
P4.1(10,279) 11935 vc/g
P5.1(198,279) 3210 vc/g
P5.2(200,279) 3210 vc/g
P6.1(315,279) 5500 vc/g
P7.2(412,2) 18265 vc/g
P8.3(315,2) 14423 vc/g
Exits Points
P2.1(2,106) 5300 vc/g
P2.2(2,108) 5300 vc/g
P3.1(2,250) 3625 vc/g
P3.2(2,252) 3625 vc/g
P4.2(12,279) 11935 vc/g
P6.2(317,279) 5500 vc/g
P7.1(410,2) 18265 vc/g
P8.1(311,2) 14423 vc/g
P8.2(313,2) 14423 vc/g
%}


A(12,13)=-1;
%Toad
A(73:78,182:212)=1;
A(79:84,172:187)=1;
A(79:84,207:222)=1;
A(85:90,167:177)=1;
A(85:90,217:227)=1;
A(91:96,162:172)=1;
A(91:96,222:233)=1;
A(97:102,157:167)=1;
A(97:102,227:237)=1;
A(103:128,157:162)=1;
A(103:128,232:237)=1;
A(123:128,172:222)=1;
A(129:134,157:177)=1;
A(129:134,217:237)=1;
A(135:140,162:172)=1;
A(135:140,222:233)=1;
A(141:151,167:172)=1;
A(141:151,222:227)=1;
A(146:151,167:177)=1;
A(146:151,217:227)=1;
A(152:157,172:222)=1;
A(81:90,189:193)=1;
A(86:90,179:192)=1;
A(90:94,179:187)=1;
A(81:90,201:205)=1;
A(86:90,201:215)=1;
A(90:94,206:215)=1;
A(100:120,188:206)=1;
A(130:140,189:194)=1;
A(130:140,201:206)=1;
A(105:115,183:211)=1;
A(104:119,164:174)=1;
A(98:105,169:174)=1;
A(105:115,174:179)=1;
A(104:119,221:230)=1;
A(98:105,221:225)=1;
A(105:114,216:221)=1;

%prova incroci andrea
B=[2,72,0.3];
A(B(1,1),B(1,2))=B(1,3);
nIter=300;
nCars=1;
movement(1,1)=2;

imshow(A,'InitialMagnification','fit','colormap',hot)

pause(1)
%loop for movements
for i=2:1:nIter
    for j=1:1:nCars %loop for each car on the map
        [A,B,movement,i,j] = prevmove(A,B,movement,i,j);
    end
    random=rand(1);
    
    %random generation car for model 8
        if random<=0.6
            rnd=rand(1);
            if rnd<=0.25
                nCars=nCars+1;
                B(nCars,1)=2;
                B(nCars,2)=72;
                B(nCars,3)=0.3;
                A(B(nCars,1),B(nCars,2))=B(nCars,3);
                movement(i,nCars)=2;
            elseif rnd<=0.5
                nCars=nCars+1;
                B(nCars,1)=12;
                B(nCars,2)=66;
                B(nCars,3)=0.15;
                A(B(nCars,1),B(nCars,2))=B(nCars,3);
                movement(i,nCars)=6;
            elseif rnd<=0.75
                nCars=nCars+1;
                B(nCars,1)=14;
                B(nCars,2)=66;
                B(nCars,3)=0.5;
                A(B(nCars,1),B(nCars,2))=B(nCars,3);
                movement(i,nCars)=6;
            else
                nCars=nCars+1;
                B(nCars,1)=10;
                B(nCars,2)=80;
                B(nCars,3)=0.7;
                A(B(nCars,1),B(nCars,2))=B(nCars,3);
                movement(i,nCars)=4;
                nCars=nCars+1;
                B(nCars,1)=2;
                B(nCars,2)=74;
                B(nCars,3)=0.3;
                A(B(nCars,1),B(nCars,2))=B(nCars,3);
                movement(i,nCars)=2;
            end
        end
    
    imshow(A,'InitialMagnification',10000,'colormap',hot)
    pause(0.01)
    
end
%matlabpool close
