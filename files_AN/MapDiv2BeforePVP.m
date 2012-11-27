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
A(72:208,75)=1;
A(72,75:77)=1;
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
A(:,1:2)=-1;
A(1:2,:)=-1;
A(:,149:150)=-1;
A(219:220,:)=-1;
%Add
%3-4
% A(10,20:32)=-1;
% A(12,18:34)=-1;
% A(14,16:36)=-1;
% A(10:18,20)=1;
% A(10:18,32)=1;
% A(12:20,18)=1;
% A(12:20,34)=1;
% A(14:22,16)=1;
% A(14:22,36)=1;
% A(18,20:32)=1;
% A(20,18:34)=1;
% A(22,16:36)=1;
% 6-7
A(10,93:113)=-1;
A(12,91:115)=-1;
A(10:18,93)=1;
A(18,93:113)=1;
A(10:18,113)=1;
A(12:20,91)=1;
A(12:20,115)=1;
A(20,91:115)=1;
%3-12
%12-18
% A(125:136,10)=-1;
% A(123:138,12)=-1;
% A(121:140,14)=-1;
% A(125,10:21)=1;
% A(136,10:21)=1;
% A(123,12:23)=1;
% A(138,12:23)=1;
% A(121,14:25)=1;
% A(140,14:25)=1;
% A(125:136,21)=1;
% A(123:138,23)=1;
% A(121:140,25)=1;
%18-19
 A(162,18:34)=-1;
% A(160,16:36)=-1;
% A(142:160,16)=1;
% A(142:160,36)=1;
%A(144:162,18)=1;
%A(144:162,34)=1;
%A(144,18:34)=1;
% A(142,16:36)=1;
%20-21
A(164,84:124)=-1;
A(162,86:122)=-1;
A(162:182,86)=1;
A(162:182,122)=1;
A(164:184,84)=1;
A(164:184,124)=1;
A(184,84:124)=1;
A(182,86:122)=1;
% 
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
% 
% 
% 
% 
% 
% 
% 
% 
% %highlighting crossings AN
%
%cross 3
A(10,11:12)=3;
A(11,12)=3;
A(13:14,14)=3;
A(14,15)=3;
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
% %cross 9
% A(100,74)=9;
% %cross 10
% A(120,106:108)=10;
% %cross 11
% A(135,144)=11;
%cross 12
A(105:107,10:14)=12;
A(106,11)=-1;
A(106,13)=-1;
% %cross 13
% A(203:207,72:74)=13;
% A(73,204)=-1;
% A(73,206)=-1;
% %cross 14
% A(203:205,106:108)=14;
% A(206:207,106)=14;
% A(204,107)=-1;
% %cross 15
% A(198:202,144:146)=15;
% A(199,145)=-1;
% A(201,145)=-1;
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
%borders
A(:,1)=-1;
A(1,:)=-1;
A(:,150)=-1;
A(220,:)=-1;

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
Total entrance veicles: 72243
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
Total exit veicles: 82396
%}

%prova incroci andrea
B=[3,40,0.3];
A(B(1,1),B(1,2))=B(1,3);
nIter=1000;
nCars=1;
movement(1,1)=2;

imshow(A,'InitialMagnification',390,'colormap',hot)

pause(1)
%loop for movements
for i=2:1:nIter
    for j=1:1:nCars %loop for each car on the map
        if (movement(i-1,j)==0)
            movement(i,j)=0;
        elseif (B(j,1)+1==12 && B(j,2)==77) || (B(j,1)+1==13 && B(j,2)==77)
            [A,B,movement,i,j]=crossing_6(A,B,movement,i,j);
        else
            [A,B,movement,i,j] = prevmove(A,B,movement,i,j);
        end
    end
    random=rand(1);
    
    %random generation car for model 8
    if random<=0.6
        rnd=rand(1);
        if rnd<=0.25
            if A(3,40)==1
                nCars=nCars+1;
                B(nCars,1)=3;
                B(nCars,2)=40;
                B(nCars,3)=0.3;
                A(B(nCars,1),B(nCars,2))=B(nCars,3);
                movement(i,nCars)=2;
            end
            %
            if A(3,42)==1
                nCars=nCars+1;
                B(nCars,1)=3;
                B(nCars,2)=42;
                B(nCars,3)=0.3;
                A(B(nCars,1),B(nCars,2))=B(nCars,3);
                movement(i,nCars)=2;
            end
        elseif rnd<=0.5
            if A(12,34)==1
                nCars=nCars+1;
                B(nCars,1)=12;
                B(nCars,2)=34;
                B(nCars,3)=0.15;
                A(B(nCars,1),B(nCars,2))=B(nCars,3);
                movement(i,nCars)=6;
            end
            %
            if A(22,25)==1
                nCars=nCars+1;
                B(nCars,1)=22;
                B(nCars,2)=25;
                B(nCars,3)=0.15;
                A(B(nCars,1),B(nCars,2))=B(nCars,3);
                movement(i,nCars)=6;
            end
            %
            if A(162,3)==1
                nCars=nCars+1;
                B(nCars,1)=162;
                B(nCars,2)=3;
                B(nCars,3)=0.15;
                A(B(nCars,1),B(nCars,2))=B(nCars,3);
                movement(i,nCars)=6;
            end
        elseif rnd<=0.75
            if A(50,56)==1
                nCars=nCars+1;
                B(nCars,1)=50;
                B(nCars,2)=56;
                B(nCars,3)=0.5;
                A(B(nCars,1),B(nCars,2))=B(nCars,3);
                movement(i,nCars)=8;
            end
            %
            if A(50,58)==1
                nCars=nCars+1;
                B(nCars,1)=50;
                B(nCars,2)=58;
                B(nCars,3)=0.5;
                A(B(nCars,1),B(nCars,2))=B(nCars,3);
                movement(i,nCars)=8;
            end
            %
            if A(20,128)==1
                nCars=nCars+1;
                B(nCars,1)=20;
                B(nCars,2)=128;
                B(nCars,3)=0.5;
                A(B(nCars,1),B(nCars,2))=B(nCars,3);
                movement(i,nCars)=8;
            end
            %
            if A(35,14)==1
                nCars=nCars+1;
                B(nCars,1)=35;
                B(nCars,2)=14;
                B(nCars,3)=0.5;
                A(B(nCars,1),B(nCars,2))=B(nCars,3);
                movement(i,nCars)=8;
            end
            %
            if A(20,130)==1
                nCars=nCars+1;
                B(nCars,1)=20;
                B(nCars,2)=130;
                B(nCars,3)=0.5;
                A(B(nCars,1),B(nCars,2))=B(nCars,3);
                movement(i,nCars)=8;
            end
        else
            if A(10,47)==1
                nCars=nCars+1;
                B(nCars,1)=10;
                B(nCars,2)=47;
                B(nCars,3)=0.6;
                A(B(nCars,1),B(nCars,2))=B(nCars,3);
                movement(i,nCars)=4;
            end
            %
            if A(10,148)==1
                nCars=nCars+1;
                B(nCars,1)=10;
                B(nCars,2)=148;
                B(nCars,3)=0.6;
                A(B(nCars,1),B(nCars,2))=B(nCars,3);
                movement(i,nCars)=4;
            end
            %
            if A(10,83)==1
                nCars=nCars+1;
                B(nCars,1)=10;
                B(nCars,2)=83;
                B(nCars,3)=0.6;
                A(B(nCars,1),B(nCars,2))=B(nCars,3);
                movement(i,nCars)=4;
            end
            %
            if A(105,35)==1
                nCars=nCars+1;
                B(nCars,1)=105;
                B(nCars,2)=35;
                B(nCars,3)=0.6;
                A(B(nCars,1),B(nCars,2))=B(nCars,3);
                movement(i,nCars)=4;
            end
            %
            if A(107,35)==1
                nCars=nCars+1;
                B(nCars,1)=107;
                B(nCars,2)=35;
                B(nCars,3)=0.6;
                A(B(nCars,1),B(nCars,2))=B(nCars,3);
                movement(i,nCars)=4;
            end
            end
        end
    
    imshow(A,'InitialMagnification',390,'colormap',hot)
    pause(0.01)
    
end
%matlabpool close
