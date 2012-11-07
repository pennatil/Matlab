%this is the main movement code. the way it works is it keeps an index of
%where the cars are, and only updates the index and not the entire matrix.
%Also, the car now only checks the blocks around it and not the entire
%matrix like it did before. In order to avoid going back on its own steps,
%it keeps the direction it went represented by the numbers 2,4,6 and 8. 2
%is south, 4 is west, 6 is east, and 8 is north.¨Most of the lines are
%explained, for the rest ask me directly.
%Created by LP
close all
clc
clear all
%init number of times the movement is repeated
nIter=0;
%input for map
inp=0;
inp= input(sprintf('1:top to bottom, 30x3     2:bottom to top,30X3    3:twist & turns 30x30    4:two cars',inp));
%if-else statement for map
if (inp==1)
    %creating the matrix
    A=-1*zeros(30,3);
    %setting the free road
    A(:,2)=1;
    %index for the car
    B=[1,2];
    %starting position
    A(B(1,1),B(1,2))=0.5;
    %number of iterations for the specified map
    nIter=30;
    %number of cars for the specified map
    nCars=1;
    %previous movement is set by the program depending in the sirtuation
    %for each car
    movement(1,1)=2;
    %SAME AS ABOVE
elseif (inp==2)
    A=-1*zeros(30,3);
    A(:,2)=1;
    B=[30,2];
    A(B(1,1),B(1,2))=0.5;
    nIter=30;
    nCars=1;
    movement(1,1)=8;
    %SAME AS ABOVE
elseif (inp==3)
    A=[-1,-1,1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1;-1,-1,1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1;-1,-1,1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1;-1,-1,1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1;-1,-1,1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1;-1,-1,1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1;-1,-1,1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1;-1,-1,1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1;-1,-1,1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1;-1,-1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,-1,-1,-1,-1,-1;-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,1,-1,-1,-1,-1,-1;-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,1,-1,-1,-1,-1,-1;-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,1,-1,-1,-1,-1,-1;-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,1,-1,-1,-1,-1,-1;1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,-1,-1,-1,-1,-1;1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1;1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1;1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1;1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1;1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1;1,-1,-1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1;1,-1,-1,1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1;1,-1,-1,1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1;1,-1,-1,1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1;1,1,1,1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1;-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1;-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1;-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1;-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1;-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1];
    B=[1,3];
    A(B(1,1),B(1,2))=0.5;
    nIter=104;
    nCars=1;
    movement(1,1)=2;
elseif (inp==4)
    A=-1*zeros(30,5);
    A(:,2)=1;
    A(:,4)=1;
    B=[30 2;1 4];
    A(B(1,1),B(1,2))=0.5;
    A(B(2,1),B(2,2))=0.5;
    nIter=30;
    nCars=2;
    movement(1,1)=8;
    movement(1,2)=2;
end
%show first image
imshow(A,'InitialMagnification','fit')
%break
pause(1)
%loop for movements
for i=2:1:nIter
    for j=1:1:nCars %loop for each car on the map
    if (movement(i-1,j)==2)%if the previous movement was south, next one cannot be north
           %south
        if (A(B(j,1)+1,B(j,2))==1)
            A(B(j,1)+1,B(j,2))=0.5;
            A(B(j,1),B(j,2))=1;
            B(j,1)=B(j,1)+1;
            movement(i,j)=2;
             %east
        elseif (A(B(j,1),B(j,2)+1)==1)
            A(B(j,1),B(j,2)+1)=0.5;
            A(B(j,1),B(j,2))=1;
            B(j,2)=B(j,2)+1;
            movement(i,j)=6;
            %west
        elseif (A(B(j,1),B(j,2)-1)==1)
            A(B(j,1),B(j,2)-1)=0.5;
            A(B(j,1),B(j,2))=1;
            B(j,2)=B(j,2)-1;
            movement(i,j)=4;
        end
    elseif(movement(i-1,j)==8)%if the previous movement was north, next one cannot be south
        %north
        if (A(B(j,1)-1,B(j,2))==1)
            A(B(j,1)-1,B(j,2))=0.5;
            A(B(j,1),B(j,2))=1;
            B(j,1)=B(j,1)-1; 
            movement(i,j)=8;
        %east
        elseif (A(B(j,1),B(j,2)+1)==1)
            A(B(j,1),B(j,2)+1)=0.5;
            A(B(j,1),B(j,2))=1;
            B(j,2)=B(j,2)+1;
            movement(i,j)=6;
            %west
        elseif (A(B(j,1),B(j,2)-1)==1)
            A(B(j,1),B(j,2)-1)=0.5;
            A(B(j,1),B(j,2))=1;
            B(j,2)=B(j,2)-1;
            movement(i,j)=4;
            
        end
   elseif(movement(i-1,j)==6)%if the previous movement was east, next one cannot be west
       %north
       if (A(B(j,1)-1,B(j,2))==1)
            A(B(j,1)-1,B(j,2))=0.5;
            A(B(j,1),B(j,2))=1;
            B(j,1)=B(j,1)-1; 
            movement(i,j)=8;    
       %south
       elseif (A(B(j,1)+1,B(j,2))==1)
            A(B(j,1)+1,B(j,2))=0.5;
            A(B(j,1),B(j,2))=1;
            B(j,1)=B(j,1)+1;
            movement(i,j)=2;
             %east
        elseif (A(B(j,1),B(j,2)+1)==1)
            A(B(j,1),B(j,2)+1)=0.5;
            A(B(j,1),B(j,2))=1;
            B(j,2)=B(j,2)+1;
            movement(i,j)=6;
        
        end
     elseif(movement(i-1,j)==4)%if the previous movement was west, next one cannot be east
     %south
        if (A(B(j,1)+1,B(j,2))==1)
            A(B(j,1)+1,B(j,2))=0.5;
            A(B(j,1),B(j,2))=1;
            B(j,1)=B(j,1)+1;
            movement(i,j)=2;
            %west
        elseif (A(B(j,1),B(j,2)-1)==1)
            A(B(j,1),B(j,2)-1)=0.5;
            A(B(j,1),B(j,2))=1;
            B(j,2)=B(j,2)-1;
            movement(i,j)=4;
            %north
        elseif (A(B(j,1)-1,B(j,2))==1)
            A(B(j,1)-1,B(j,2))=0.5;
            A(B(j,1),B(j,2))=1;
            B(j,1)=B(j,1)-1; 
            movement(i,j)=8;
        end
    end
    end
    imshow(A,'InitialMagnification','fit')
    pause(0.00000001)
end