%this is the main movement code. the way it works is it keeps an index of
%where the cars are, and only updates the index and not the entire matrix.
%Also, the car now only checks the blocks around it and not the entire
%matrix like it did before. In order to avoid going back on its own steps,
%it keeps the direction it went represented by the numbers 2,4,6 and 8. 2
%is south, 4 is west, 6 is east, and 8 is north.�Most of the lines are
%explained, for the rest ask me directly.
%Created by LP
close all
clc
clear all
%init number of times the movement is repeated
nIter=0;
%number of cars on the map
nCars=1;
%input for map
inp=0;
inp= input(sprintf('1:top to bottom, 30x3     2:bottom to top,30X3    3:twist & turns 30x30',inp));
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
    %previous movement is set by the program depending in the sirtuation
    movement(1)=2;
    %SAME AS ABOVE
elseif (inp==2)
    A=-1*zeros(30,3);
    A(:,2)=1;
    B=[30,2];
    A(B(1,1),B(1,2))=0.5;
    nIter=30;
    movement(1)=8;
    %SAME AS ABOVE
elseif (inp==3)
    A=[-1,-1,1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1;-1,-1,1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1;-1,-1,1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1;-1,-1,1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1;-1,-1,1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1;-1,-1,1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1;-1,-1,1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1;-1,-1,1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1;-1,-1,1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1;-1,-1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,-1,-1,-1,-1,-1;-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,1,-1,-1,-1,-1,-1;-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,1,-1,-1,-1,-1,-1;-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,1,-1,-1,-1,-1,-1;-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,1,-1,-1,-1,-1,-1;1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,-1,-1,-1,-1,-1;1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1;1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1;1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1;1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1;1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1;1,-1,-1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1;1,-1,-1,1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1;1,-1,-1,1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1;1,-1,-1,1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1;1,1,1,1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1;-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1;-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1;-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1;-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1;-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1];
    B=[1,3];
    A(B(1,1),B(1,2))=0.5;
    nIter=104;
    movement(1)=2;
end
%show first image
imshow(A,'InitialMagnification','fit')
%break
pause(1)
%loop for movements
for i=2:1:nIter
    for nc=1:1:nCars
        if (movement(i-1)==2)%if the previous movement was south, next one cannot be north
               %south
            if (A(B(nc,1)+1,B(nc,2))==1)
                A(B(nc,1)+1,B(nc,2))=0.5;
                A(B(nc,1),B(nc,2))=1;
                B(nc,1)=B(nc,1)+1;
                movement(i)=2;
                 %east
            elseif (A(B(nc,1),B(nc,2)+1)==1)
                A(B(nc,1),B(nc,2)+1)=0.5;
                A(B(nc,1),B(nc,2))=1;
                B(nc,2)=B(nc,2)+1;
                movement(i)=6;
                %west
            elseif (A(B(nc,1),B(nc,2)-1)==1)
                A(B(nc,1),B(nc,2)-1)=0.5;
                A(B(nc,1),B(nc,2))=1;
                B(nc,2)=B(nc,2)-1;
                movement(i)=4;
            end
        elseif(movement(i-1)==8)%if the previous movement was north, next one cannot be south
            %north
            if (A(B(nc,1)-1,B(nc,2))==1)
                A(B(nc,1)-1,B(nc,2))=0.5;
                A(B(nc,1),B(nc,2))=1;
                B(nc,1)=B(nc,1)-1; 
                movement(i)=8;
            %east
            elseif (A(B(nc,1),B(nc,2)+1)==1)
                A(B(nc,1),B(nc,2)+1)=0.5;
                A(B(nc,1),B(nc,2))=1;
                B(nc,2)=B(nc,2)+1;
                movement(i)=6;
                %west
            elseif (A(B(nc,1),B(nc,2)-1)==1)
                A(B(nc,1),B(nc,2)-1)=0.5;
                A(B(nc,1),B(nc,2))=1;
                B(nc,2)=B(nc,2)-1;
                movement(i)=4;

            end
       elseif(movement(i-1)==6)%if the previous movement was east, next one cannot be west
           %north
           if (A(B(nc,1)-1,B(nc,2))==1)
                A(B(nc,1)-1,B(nc,2))=0.5;
                A(B(nc,1),B(nc,2))=1;
                B(nc,1)=B(nc,1)-1; 
                movement(i)=8;    
           %south
           elseif (A(B(nc,1)+1,B(nc,2))==1)
                A(B(nc,1)+1,B(nc,2))=0.5;
                A(B(nc,1),B(nc,2))=1;
                B(nc,1)=B(nc,1)+1;
                movement(i)=2;
                 %east
            elseif (A(B(nc,1),B(nc,2)+1)==1)
                A(B(nc,1),B(nc,2)+1)=0.5;
                A(B(nc,1),B(nc,2))=1;
                B(nc,2)=B(nc,2)+1;
                movement(i)=6;

            end
         elseif(movement(i-1)==4)%if the previous movement was west, next one cannot be east
         %south
            if (A(B(nc,1)+1,B(nc,2))==1)
                A(B(nc,1)+1,B(nc,2))=0.5;
                A(B(nc,1),B(nc,2))=1;
                B(nc,1)=B(nc,1)+1;
                movement(i)=2;
                %west
            elseif (A(B(nc,1),B(nc,2)-1)==1)
                A(B(nc,1),B(nc,2)-1)=0.5;
                A(B(nc,1),B(nc,2))=1;
                B(nc,2)=B(nc,2)-1;
                movement(i)=4;
                %north
            elseif (A(B(nc,1)-1,B(nc,2))==1)
                A(B(nc,1)-1,B(nc,2))=0.5;
                A(B(nc,1),B(nc,2))=1;
                B(nc,1)=B(nc,1)-1; 
                movement(i)=8;
            end
        end
        imshow(A,'InitialMagnification','fit')
        pause(0.00000001)
    end
end