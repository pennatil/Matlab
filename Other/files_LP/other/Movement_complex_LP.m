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


%input for map
inp=0;
inp= input(sprintf('1:top to bottom, 30x3\n2:bottom to top,30X3\n3:twist & turns 30x30\n',inp));

%number of cars on the map
inpNCars=0;
inpNCars= input(sprintf('how many cars??',inpNCars));
nCars=1;

%initialize the index
B=zeros(inpNCars,3);
if (inp==1 || inp==2)
    %creating the matrix
    A=-1*zeros(30,3);
    %setting the free road
    A(:,2)=1;
    %index for the car
    B(1,1)=1;
    B(1,2)=2;
    %starting position
    A(B(1,1),B(1,2))=0.3;
    %number of iterations for the specified map
    nIter=30;
    %previous movement is set by the program depending in the sirtuation
    movement(1,1)=2;
elseif (inp==3)
    tic
    A=-1*ones(30,30);
    A(1:10,3)=1;
    A(10,3:25)=1;
    A(10:15,25)=1;
    A(15,2:25)=1;
    A(15:25,2)=1;
    A(25,2:10)=1;
    A(20:25,10)=1;
    A(20,10:29)=1;
    %B=[1,3];
    B(1,1)=1;
    B(1,2)=3;
    B(1,3)=0.3;
    A(B(1,1),B(1,2))=B(1,3);
    nIter=300;
    nCars=1;
    movement(1,1)=2;
end



%video
video=0;
video = input(sprintf('videofile?? 1 for yes, 2 for no',video));
if (video==1)
    aviobj = avifile('example.avi','compression','None');
    fig=figure;
end

%show first image
imshow(A,'InitialMagnification','fit','Colormap',hot)


if (video==1)
    F = getframe(fig);
    aviobj = addframe(aviobj,F);
end


%break
pause(1)
%loop for movements
for i=2:1:nIter
    for n=1:1:nCars
        if (movement(1,i-1)==2)%if the previous movement was south, next one cannot be north
            %south
            if (A(B(n,1)+1,B(n,2))==1)
                A(B(n,1)+1,B(n,2))=0.3;
                A(B(n,1),B(n,2))=1;
                B(n,1)=B(n,1)+1;
                movement(1,i)=2;
                
                %east
            elseif (A(B(n,1),B(n,2)+1)==1)
                A(B(n,1),B(n,2)+1)=0.3;
                A(B(n,1),B(n,2))=1;
                B(n,2)=B(n,2)+1;
                movement(1,i)=6;
                %west
            elseif (A(B(n,1),B(n,2)-1)==1)
                A(B(n,1),B(n,2)-1)=0.3;
                A(B(n,1),B(n,2))=1;
                B(n,2)=B(n,2)-1;
                movement(1,i)=4;
            end
        elseif(movement(i-1)==8)%if the previous movement was north, next one cannot be south
            %north
            if (A(B(n,1)-1,B(n,2))==1)
                A(B(n,1)-1,B(n,2))=0.3;
                A(B(n,1),B(n,2))=1;
                B(n,1)=B(n,1)-1;
                movement(1,i)=8;
                %east
            elseif (A(B(n,1),B(n,2)+1)==1)
                A(B(n,1),B(n,2)+1)=0.3;
                A(B(n,1),B(n,2))=1;
                B(n,2)=B(n,2)+1;
                movement(1,i)=6;
                %west
            elseif (A(B(n,1),B(n,2)-1)==1)
                A(B(n,1),B(n,2)-1)=0.3;
                A(B(n,1),B(n,2))=1;
                B(n,2)=B(n,2)-1;
                movement(1,i)=4;
                
            end
        elseif(movement(i-1)==6)%if the previous movement was east, next one cannot be west
            %north
            if (A(B(n,1)-1,B(n,2))==1)
                A(B(n,1)-1,B(n,2))=0.3;
                A(B(n,1),B(n,2))=1;
                B(n,1)=B(n,1)-1;
                movement(1,i)=8;
                %south
            elseif (A(B(n,1)+1,B(n,2))==1)
                A(B(n,1)+1,B(n,2))=0.3;
                A(B(n,1),B(n,2))=1;
                B(n,1)=B(n,1)+1;
                movement(1,i)=2;
                %east
            elseif (A(B(n,1),B(n,2)+1)==1)
                A(B(n,1),B(n,2)+1)=0.3;
                A(B(n,1),B(n,2))=1;
                B(n,2)=B(n,2)+1;
                movement(1,i)=6;
                
            end
        elseif(movement(i-1)==4)%if the previous movement was west, next one cannot be east
            %south
            if (A(B(n,1)+1,B(n,2))==1)
                A(B(n,1)+1,B(n,2))=0.3;
                A(B(n,1),B(n,2))=1;
                B(n,1)=B(n,1)+1;
                movement(1,i)=2;
                %west
            elseif (A(B(n,1),B(n,2)-1)==1)
                A(B(n,1),B(n,2)-1)=0.3;
                A(B(n,1),B(n,2))=1;
                B(n,2)=B(n,2)-1;
                movement(1,i)=4;
                %north
            elseif (A(B(n,1)-1,B(n,2))==1)
                A(B(n,1)-1,B(n,2))=0.3;
                A(B(n,1),B(n,2))=1;
                B(n,1)=B(n,1)-1;
                movement(1,i)=8;
            end
        end
    end
    
    
    
    
    if nCars<inpNCars
        %generate a car
        probCar=rand(1);
        if (probCar<0.5)
            if (inp==1 || inp==2)
            B(nCars+1,1)=1;
            B(nCars+1,2)=2;
            elseif (inp==3)
                    B(nCars+1,1)=1;
            B(nCars+1,2)=3;
                end
            A(B(nCars+1,1),B(nCars+1,2))=0.3;
            %movement(nCars+1,i);
            nCars=nCars+1;
        end
    end
    imshow(A,'InitialMagnification','fit','Colormap',hot)
    pause(0.1)
    if (video==1)
        F = getframe(fig);
        aviobj = addframe(aviobj,F);
        
    end
end
if (video==1)
    close(fig);
    aviobj = close(aviobj);
end