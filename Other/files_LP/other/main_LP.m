%this is the main movement code. the way it works is it keeps an index of
%where the cars are, and only updates the index and not the entire matrix.
%Also, the car now only checks the blocks around it and not the entire
%matrix like it did before. In order to avoid going back on its own steps,
%it keeps the direction it went represented by the numbers 2,4,6 and 8. 2
%is south, 4 is west, 6 is east, and 8 is north.�Most of the lines are
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
n_of_times=0;
n_of_times=input(sprintf('num of times',n_of_times));
for z=1:1:n_of_times
clearvars -except workspace

%cluster --- set the number of maximum core you have!
%matlabpool open 2
%init number of times the movement is repeated
if (z==1)
nIter=0;
%input for map
inp=0;
inp= input(sprintf('1:top to bottom, 30x3   \n2:bottom to top,30X3   \n3:twist & turns 30x30   \n4:two cars   \n5:two cars simple crossing   \n6:casual crossing   \n7:300x300 many cars  \n8:4-ways crossing \nmap: ',inp));
%number of cars
inpNCars=0;
inpNCars=input(sprintf('number of cars: ',inpNCars));
%input for color
color=0;
color=input(sprintf('color:0 for random, 1 for red\n',color));
%input for break
br=0;
br=input(sprintf('choose speed of the animation:\n1:very slow\n2:slow\n3:medium\n4:fast\n5:very fast\n6:no animation\nspeed: ',br));
%init for break time
p_time=0;
%if else stetment for animation speed
if br==1
    p_time=2;
elseif br==2
    p_time=1;
elseif br==3
    p_time=0.5;
elseif br==4
    p_time=0.1;
elseif br==5
    p_time=0.01;
elseif br==6
    p_time=0;
end

%if-else statement for map
if (inp==1)
    tic
    %creating the matrix
    A=-1*zeros(30,3);
    %setting the free road
    A(:,2)=1;
    %stop block
    A(30,2)=-1;
    %index for the car
    B=[1 2 rand(1)];
    
    if color==1
        B(1,3)=0.3;
    end
    
    %starting position
    A(B(1,1),B(1,2))=B(1,3);
    %number of iterations for the specified map
    nIter=300;
    %number of cars for the specified map
    nCars=1;
    %previous movement is set by the program depending in the situation
    %for each car
    movement(1,1)=2;
    %SAME AS ABOVE
elseif (inp==2)
    tic
    A=-1*zeros(30,3);
    A(:,2)=1;
    %A(15,2)=-1;
    B=[30,2,rand(1)];
    if color==1
        B(30,3)=0.3;
    end
    A(1,2)=-1;
    A(B(1,1),B(1,2))=B(1,3);
    nIter=30;
    nCars=1;
    movement(1,1)=8;
    %SAME AS ABOVE
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
    B=[1,3,rand(1)];
    if color==1
        B(1,3)=0.3;
    end
    A(B(1,1),B(1,2))=B(1,3);
    nIter=300;
    nCars=1;
    movement(1,1)=2;
    
elseif (inp==7)
    tic
    A=-1*zeros(300,300);
    for n1=2:2:300
        A(:,n1)=1;
    end
    for n2=2:4:300
        A(1,n2)=-1;
    end
    for n3=4:4:300
        A(300,n3)=-1;
    end
    B=zeros(inpNCars,3);
    B(1,1)=300;
    B(1,2)=2;
    B(1,3)=rand(1);
    
    B(2,1)=1;
    B(2,2)=4;
    B(2,3)=rand(1);
    
    
    
    
    %B=[300 2 rand(1);1 4 rand(1)];
    A(B(1,1),B(1,2))=B(1,3);
    A(B(2,1),B(2,2))=B(2,3);
    
    nIter=300;
    nCars=2;
    movement(1,1)=8;
    movement(1,2)=2;
    
    
    
elseif (inp==8)
    tic
    A=-1*zeros(9,9);
    A(:,4)=1;
    A(:,6)=1;
    A(4,:)=1;
    A(6,:)=1;
    A(4:2:6,4:6)=3;
    A(4:6,4:2:6)=3;
    A(:,1)=-1;
    A(9,:)=-1;
    A(:,9)=-1;
    A(1,:)=-1;
    %cambiato random a 0.3
    B=[2,4,0.3];
    A(B(1,1),B(1,2))=B(1,3);
    nIter=100;
    nCars=1;
    movement(1,1)=2;
end
nIter=nIter+inpNCars;
end
if (br~=6)
%show first image
imshow(A,'InitialMagnification','fit','colormap',hot)
%break
pause(1)
end
%loop for movements
for i=2:1:nIter
    for j=1:1:nCars %loop for each car on the map
        [A,B,movement,i,j] = prevmove(A,B,movement,i,j);
    end
    %4-ways crossing working
    
    if nCars<inpNCars
        
        random=rand(1);
        %random generation car for model 1
        if inp==1
            if random<=0.3
                nCars=nCars+1;
                B(nCars,1)=1;
                B(nCars,2)=2;
                B(nCars,3)=rand(1);
                if color==1
                    B(nCars,3)=0.3;
                end
                A(B(nCars,1),B(nCars,2))=B(nCars,3);
                movement(i,nCars)=2;
            end
        end
        %random generation car for model 2
        if inp==2
            if random<=0.3
                nCars=nCars+1;
                B(nCars,1)=30;
                B(nCars,2)=2;
                B(nCars,3)=rand(1);
                if color==1
                    B(nCars,3)=0.3;
                end
                A(B(nCars,1),B(nCars,2))=B(nCars,3);
                movement(i,nCars)=8;
            end
        end
        
        
        %random generation car for model 3
        if inp==3
            if random<=0.3
                nCars=nCars+1;
                B(nCars,1)=1;
                B(nCars,2)=3;
                B(nCars,3)=rand(1);
                if color==1
                    B(nCars,3)=0.3;
                end
                A(B(nCars,1),B(nCars,2))=B(nCars,3);
                movement(i,nCars)=2;
            end
        end
        
        
        
        %random generation car for model 5
        if inp==5
            if random<=0.8
                nCars=nCars+1;
                B(nCars,1)=1;
                B(nCars,2)=15;
                B(nCars,3)=rand(1);
                if color==1
                    B(nCars,3)=0.3;
                end
                A(B(nCars,1),B(nCars,2))=B(nCars,3);
                movement(i,nCars)=2;
            end
            if random>=0.2
                nCars=nCars+1;
                B(nCars,1)=15;
                B(nCars,2)=1;
                B(nCars,3)=rand(1);
                if color==1
                    B(nCars,3)=0.3;
                end
                A(B(nCars,1),B(nCars,2))=B(nCars,3);
                movement(i,nCars)=6;
            end
        end
        
        %random generation car for model 6
        if inp==6
            if random<=0.3
                nCars=nCars+1;
                B(nCars,1)=1;
                B(nCars,2)=15;
                B(nCars,3)=rand(1);
                if color==1
                    B(nCars,3)=0.3;
                end
                A(B(nCars,1),B(nCars,2))=B(nCars,3);
                movement(i,nCars)=2;
            end
        end
        
        
        
        
        %random generation car for model 7
        if inp==7
            if random<=0.3
                for n=2:4:298
                    nCars=nCars+1;
                    B(nCars,1)=300;
                    B(nCars,2)=n;
                    B(nCars,3)=rand(1);
                    if color==1
                        B(nCars,3)=0.3;
                    end
                    A(B(nCars,1),B(nCars,2))=B(nCars,3);
                    movement(i,nCars)=8;
                end
                for n=4:4:298
                    nCars=nCars+1;
                    B(nCars,1)=1;
                    B(nCars,2)=n;
                    B(nCars,3)=rand(1);
                    if color==1
                        B(nCars,3)=0.3;
                    end
                    A(B(nCars,1),B(nCars,2))=B(nCars,3);
                    movement(i,nCars)=2;
                end
            end
        end
        
        
        
        
        %random generation car for model 8
        if inp==8
            if random<=0.3
                rnd=rand(1);
                if rnd<=0.25
                    nCars=nCars+1;
                    B(nCars,1)=2;
                    B(nCars,2)=4;
                    B(nCars,3)=0.3;
                    A(B(nCars,1),B(nCars,2))=B(nCars,3);
                    movement(i,nCars)=2;
                elseif rnd<=0.5
                    nCars=nCars+1;
                    B(nCars,1)=6;
                    B(nCars,2)=2;
                    B(nCars,3)=0.15;
                    if color==1
                        B(nCars,3)=0.3;
                    end
                    A(B(nCars,1),B(nCars,2))=B(nCars,3);
                    movement(i,nCars)=6;
                elseif rnd<=0.75
                    nCars=nCars+1;
                    B(nCars,1)=8;
                    B(nCars,2)=6;
                    B(nCars,3)=0.5;
                    if color==1
                        B(nCars,3)=0.3;
                    end
                    A(B(nCars,1),B(nCars,2))=B(nCars,3);
                    movement(i,nCars)=8;
                else
                    nCars=nCars+1;
                    B(nCars,1)=4;
                    B(nCars,2)=8;
                    B(nCars,3)=0.7;
                    if color==1
                        B(nCars,3)=0.3;
                    end
                    A(B(nCars,1),B(nCars,2))=B(nCars,3);
                    movement(i,nCars)=4;
                end
            end
        end
    end
    if (br~=6)
    imshow(A,'InitialMagnification','fit','colormap',hot)
    pause(p_time)
    end
    
end

timespent=toc;
timespent
workspace(z).number_of_iteration=nIter ;
workspace(z).set_number_of_cars=inpNCars;
workspace(z).number_of_cars=nCars;
workspace(z).time_of_execution=timespent;
end
disp('done!!')




