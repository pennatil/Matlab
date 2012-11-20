%remebemer to initialize the struct once all the parameters are set
close all
clc
clear all
n_of_times=0;
n_of_times=input(sprintf('num of times: ',n_of_times));
br=6;
%br=input(sprintf('choose speed of the animation:\n1:very slow\n2:slow\n3:medium\n4:fast\n5:very fast\n6:no animation\nspeed: ',br));
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
%init number of times the movement is repeated
nIter=0;
%input for map
inp=3;
%number of cars
inpNCars=0;
inpNCars=input(sprintf('number of cars: ',inpNCars));
%input for color
color=0;
if br~=6
    
    color=input(sprintf('color:0 for random, 1 for red\n',color));
end

h = waitbar(0,'Simulation in progress...');
A=-1*ones(30,30);
A(1:10,3)=1;
A(10,3:25)=1;
A(10:15,25)=1;
A(15,2:25)=1;
A(15:25,2)=1;
A(25,2:10)=1;
A(20:25,10)=1;
A(20,10:29)=1;
bar_start=0;
movement=zeros(inpNCars,inpNCars);
W=zeros(n_of_times,6);
for z=1:1:n_of_times
    
    clearvars nCars B
    nIter=300;
    nCars=1;
    
    
    B=zeros(inpNCars,4);
    B(1,1)=1;
    B(1,2)=3;
    B(1,3)=rand(1);
    %number of movements
    B(1,4)=0;
    movement(1,1)=2;
    if color==1
        B(1,3)=0.3;
    end
    A(B(1,1),B(1,2))=B(1,3);
    
    nIter=nIter+inpNCars;
    if (br~=6)
        %show first image
        imshow(A,'InitialMagnification','fit','colormap',hot)
        %break
        pause(1)
    end
    tic
    %loop for movements
    %for i=2:1:nIter
    i=2;
    
    while (B(nCars,3)~=-2)
        for j=1:1:nCars %loop for each car on the map
            [A,B,movement,i,j] = prevmove(A,B,movement,i,j);
            
            if (B(1,3)==-2)
                timespent=toc;
                timespent;
            end
        end
        %4-ways crossing working
        
        if nCars<inpNCars
            random=rand(1);
            if random<=0.7
                nCars=nCars+1;
                B(nCars,1)=1;
                B(nCars,2)=3;
                B(nCars,3)=rand(1);
                B(nCars,4)=0;
                if color==1
                    B(nCars,3)=0.3;
                end
                A(B(nCars,1),B(nCars,2))=B(nCars,3);
                movement(i,nCars)=2;
            end
        end
        if (br~=6)
            imshow(A,'InitialMagnification','fit','colormap',hot)
            pause(p_time)
        end
        i=i+1;
        bar=(bar_start+((nCars)/(n_of_times*inpNCars)));
        text_bar=['Simulation in Progress...',num2str(floor(1000*bar)/10),'%% completed'];
        waitbar(bar,h,sprintf(text_bar))
        
    end
    
    timespent=toc;
    bar_start=bar;
    %save number of run
    W(z,1)=z;
    %save set num of cars
    W(z,2)=inpNCars;
    %set num of cars on map (just to check if all were generated
    W(z,3)=nCars;
    %number of blocks travelled
    W(z,4)=B(1,4);
    %time taken
    W(z,5)=timespent;
    %speed
    W(z,6)=W(z,4)/W(z,5);
    
    
end

waitbar(1,h,sprintf('Simulation Completed...saving data'))
D=clock;
str_name=['run_',num2str(D(1,3)),'_',num2str(D(1,2)),'_',num2str(D(1,1)),'_',num2str(D(1,4)),'_',num2str(D(1,5)),'_',num2str(floor(D(1,6))),'.csv'];
csvwrite(str_name,W)
close(h)
disp('done!!')




