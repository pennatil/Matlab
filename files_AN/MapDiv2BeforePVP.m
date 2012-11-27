%map
clc
clear all
close all
pointn=1;
width=150;
height=220;
A=-1*ones(height,width);
 figure(2)
%vertical, Start from intersection 3
A(10:162,10)=1;
% A(25:30,10)=-1;
% A(130:135,10)=-1;
% %vertical, Start from intersection 3 (2°)
A(12:162,12)=1;
% %vertical, Start from intersection 3 (3°)
A(14:162,14)=1;
% %vertical, Start from intersection 4
A(1:210,42)=1;
% %vertical, Start from intersection 4 (2°)
A(1:162,40)=1;
% %vertical, Start from intersection 5
A(1:205,58)=1;
% %vertical, Start from intersection 5 (2°)
A(1:205,56)=1;
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
% %orizzontal, Start from intersection 10
% %orizzontal, Start from intersection 12
% %orizzontal, Start from intersection 12
A(105,10:66)=1;
A(107,10:68)=1;
A(103:105,66)=1;
A(105:107,68)=1;
% %orizzontal, Start from intersection 13
% %orizzontal, Start from intersection 13 (2°)
% %orizzontal, Start from intersection 13 (3°)
% %orizzontal, Start from intersection 15 
A(105,68:150)=1;
% %orizzontal, Start from intersection 15 (2°)
A(103,66:150)=1;
% %orizzontal, Start from intersection 15 (3°)
A(107,77:140)=1;
% %orizzontal, Start from intersection 18
A(162,1:150)=1;
% %orizzontal, Start from intersection 18 (2°)
A(160,1:58)=1;
A(164,77:150)=1;
% %orizzontal, Start from intersection 18 (3°)
A(158,1:14)=1;
% %orizzontal, Start from intersection 24
% %orizzontal, last one (Lungolago)
A(210,1:77)=1; 
% %entrances
% 
% 
% 
% 
% 
% 
% 
% 
% 
% 
% %highlighting crossings LP
% 
%cross 4
A(10:14,40:42)=4;
A(11,41)=-1;
A(13,41)=-1;
%cross 5
A(10:12,56:58)=5;
A(11,57)=-1;
%cross 6
A(10:12,77)=6;
% %cross 7
% A(10:12,250:252)=7;
% A(11,251)=-1;
% %cross 9
% A(100,74)=9;
% %cross 10
% A(120,106:108)=10;
% %cross 11
% A(135,144)=11;
% %cross 12
% A(203:205,10:14)=12;
% A(204,11)=-1;
% A(204,13)=-1;
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
B=[2,40,0.3];
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
        else
            [A,B,movement,i,j] = prevmove(A,B,movement,i,j);
        end
    end
    random=rand(1);
    
    %random generation car for model 8
    if random<=0.6
        rnd=rand(1);
        if rnd<=0.25
            if A(2,40)==1
                nCars=nCars+1;
                B(nCars,1)=2;
                B(nCars,2)=40;
                B(nCars,3)=0.3;
                A(B(nCars,1),B(nCars,2))=B(nCars,3);
                movement(i,nCars)=2;
            end
            %
            if A(2,42)==1
                nCars=nCars+1;
                B(nCars,1)=2;
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
            if A(14,34)==1
                nCars=nCars+1;
                B(nCars,1)=14;
                B(nCars,2)=34;
                B(nCars,3)=0.15;
                A(B(nCars,1),B(nCars,2))=B(nCars,3);
                movement(i,nCars)=6;
            end
        elseif rnd<=0.75
            if A(16,56)==1
                nCars=nCars+1;
                B(nCars,1)=16;
                B(nCars,2)=56;
                B(nCars,3)=0.5;
                A(B(nCars,1),B(nCars,2))=B(nCars,3);
                movement(i,nCars)=8;
            end
            %
            if A(16,58)==1
                nCars=nCars+1;
                B(nCars,1)=16;
                B(nCars,2)=58;
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
            if A(10,65)==1
                nCars=nCars+1;
                B(nCars,1)=10;
                B(nCars,2)=65;
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
            end
        end
    
    imshow(A,'InitialMagnification',390,'colormap',hot)
    pause(0.01)
    
end
%matlabpool close
