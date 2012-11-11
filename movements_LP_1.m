%this is the main movement code. the way it works is it keeps an index of
%where the cars are, and only updates the index and not the entire matrix.
%Also, the car now only checks the blocks around it and not the entire
%matrix like it did before. In order to avoid going back on its own steps,
%it keeps the direction it went represented by the numbers 2,4,6 and 8. 2
%is south, 4 is west, 6 is east, and 8 is north.¨Most of the lines are
%explained, for the rest ask me directly.
%
%North=8
%South=2
%East=6
%West=4
%
close all
clc
clear all
%cluster
%matlabpool open 2
%init number of times the movement is repeated
nIter=0;
%input for map
inp=0;
inp= input(sprintf('1:top to bottom, 30x3   \n2:bottom to top,30X3   \n3:twist & turns 30x30   \n4:two cars   \n5:two cars simple crossing   \n6:casual crossing   \n7;300x300 many cars  \n',inp));
%if-else statement for map
if (inp==1)
    %creating the matrix
    A=-1*zeros(30,3);
    %setting the free road
    A(:,2)=1;
    A(30,2)=-1;
    %index for the car
    B=[1 2 rand(1)];
    %starting position
    A(B(1,1),B(1,2))=B(1,3);
    %number of iterations for the specified map
    nIter=300;
    %number of cars for the specified map
    nCars=1;
    %previous movement is set by the program depending in the sirtuation
    %for each car
    movement(1,1)=2;
    %SAME AS ABOVE
elseif (inp==2)
    A=-1*zeros(30,3);
    A(:,2)=1;
    A(15,2)=-1;
    B=[30,2,rand(1)];
    A(B(1,1),B(1,2))=B(1,3);
    nIter=30;
    nCars=1;
    movement(1,1)=8;
    %SAME AS ABOVE
elseif (inp==3)
    A=-1*ones(30,30);
    A(1:10,3)=1;
    A(10,3:25)=1;
    A(10:15,25)=1;
    A(15,2:25)=1;
    A(15:25,2)=1;
    A(25,2:10)=1;
    A(20:25,10)=1;
    A(20,10:29)=1;
    B=[1,3,rand(1)];
    A(B(1,1),B(1,2))=B(1,3);
    nIter=300;
    nCars=1;
    movement(1,1)=2;
elseif (inp==4)
    A=-1*zeros(30,5);
    A(:,2)=1;
    A(:,4)=1;
    B=[30 2 rand(1);1 4 rand(1)];
    A(B(1,1),B(1,2))=B(1,3);
    A(B(2,1),B(2,2))=B(2,3);
    nIter=30;
    nCars=2;
    movement(1,1)=8;
    movement(1,2)=2;
elseif (inp==5)
    A=-1*zeros(30,30);
    A(:,15)=1;
    A(15,:)=1;
    B=[1 15 rand(1);15 1 rand(1)];
    A(15,30)=-1;
    A(30,15)=-1;
    A(B(1,1),B(1,2))=B(1,3);
    A(B(2,1),B(2,2))=B(2,3);
    nIter=300;
    nCars=2;
    movement(1,1)=2;
    movement(1,2)=6;
elseif (inp==6)
    A=-1*zeros(30,30);
    A(:,15)=1;
    A(15,:)=1;
    A(1,:)=-1;
    A(:,1)=-1;
    A(30,:)=-1;
    A(:,30)=-1;
    A(15,15)=2;
    B=[1 15 rand(1)];
    A(B(1,1),B(1,2))=B(1,3);
    nIter=300;
    nCars=1;
    movement(1,1)=2;
elseif (inp==7)
    A=-1*zeros(300,300);
    A(:,2)=1;
    A(:,4)=1;
    A(:,6)=1;
    A(:,8)=1;
    A(:,10)=1;
    A(:,12)=1;
    A(:,14)=1;
    A(:,16)=1;
    A(:,18)=1;
    A(:,20)=1;
    B=[300 2 rand(1);1 4 rand(1);300 6 rand(1);1 8 rand(1);300 10 rand(1);1 12 rand(1);300 14 rand(1);1 16 rand(1);300 18 rand(1);1 20 rand(1)];
    A(B(1,1),B(1,2))=B(1,3);
    A(B(2,1),B(2,2))=B(2,3);
    A(B(3,1),B(3,2))=B(3,3);
    A(B(4,1),B(4,2))=B(4,3);
    A(B(5,1),B(5,2))=B(5,3);
    A(B(6,1),B(6,2))=B(6,3);
    A(B(7,1),B(7,2))=B(7,3);
    A(B(8,1),B(8,2))=B(8,3);
    A(B(9,1),B(9,2))=B(9,3);
    A(B(10,1),B(10,2))=B(10,3);
    nIter=300;
    nCars=10;
    movement(1,1)=8;
    movement(1,2)=2;
    movement(1,3)=8;
    movement(1,4)=2;
    movement(1,5)=8;
    movement(1,6)=2;
    movement(1,7)=8;
    movement(1,8)=2;
    movement(1,9)=8;
    movement(1,10)=2;
end
inpNCars=0;
inpNCars=input(sprintf('how many cars: ',inpNCars));
nIter=nIter+inpNCars
%show first image
imshow(A,'InitialMagnification','fit','colormap',hot)
%break
pause(1)
%loop for movements
for i=2:1:nIter
    for j=1:1:nCars %loop for each car on the map
        [A,B,movement,i,j] = prevmove(A,B,movement,i,j);
    end
    imshow(A,'InitialMagnification','fit','colormap',hot)
    pause(0.1)
    
    random=rand(1);
    
    %random generation car for model 5
    if inp==5
        if random<=0.8
            nCars=nCars+1;
            B(nCars,1)=1;
            B(nCars,2)=15;
            B(nCars,3)=rand(1);
            A(B(nCars,1),B(nCars,2))=B(nCars,3);
            movement(i,nCars)=2;
        end
        if random>=0.2
            nCars=nCars+1;
            B(nCars,1)=15;
            B(nCars,2)=1;
            B(nCars,3)=rand(1);
            A(B(nCars,1),B(nCars,2))=B(nCars,3);
            movement(i,nCars)=6;
        end
    end
    
    
    %random generation car for model 1
    if inp==1
        if random<=0.3
            nCars=nCars+1;
            B(nCars,1)=1;
            B(nCars,2)=2;
            B(nCars,3)=rand(1);
            A(B(nCars,1),B(nCars,2))=B(nCars,3);
            movement(i,nCars)=2;
        end
    end
    
    
    %random generation car for model 3
    if inp==3
        if random<=0.3
            nCars=nCars+1;
            B(nCars,1)=1;
            B(nCars,2)=3;
            B(nCars,3)=rand(1);
            A(B(nCars,1),B(nCars,2))=B(nCars,3);
            movement(i,nCars)=2;
        end
    end
    
    
    %random generation car for model 7
    if inp==7
        if (nCars<inpNCars)
        if random<=0.3
            for n=2:4:18
                nCars=nCars+1;
                B(nCars,1)=300;
                B(nCars,2)=n;
                B(nCars,3)=rand(1);
                A(B(nCars,1),B(nCars,2))=B(nCars,3);
                movement(i,nCars)=8;
            end
            for n=4:4:20
                nCars=nCars+1;
                B(nCars,1)=1;
                B(nCars,2)=n;
                B(nCars,3)=rand(1);
                A(B(nCars,1),B(nCars,2))=B(nCars,3);
                movement(i,nCars)=2;
            end
        end
        end
    end
    
    %random generation car for model 1
    if inp==6
        if random<=0.3
            nCars=nCars+1;
            B(nCars,1)=1;
            B(nCars,2)=15;
            B(nCars,3)=rand(1);
            A(B(nCars,1),B(nCars,2))=B(nCars,3);
            movement(i,nCars)=2;
        end
    end
    
end