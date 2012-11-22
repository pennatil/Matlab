close all
clc
clear all
%init number of simulations LP
n_of_times=0;
%ask user for number of simulations LP
n_of_times=input(sprintf('num of times: ',n_of_times));
%speed set to no animation by default LP
br=6; %change to 5 to show animation
%br=input(sprintf('choose speed of the animation:\n1:very slow\n2:slow\n3:medium\n4:fast\n5:very fast\n6:no animation\nspeed: ',br));
%init for break time LP
p_time=0;
%if else stetment for animation speed LP
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

end
%input for map LP
inp=3;
%number of cars LP
inpNCars=0;
inpNCars=input(sprintf('number of cars: ',inpNCars));
%input for color LP
color=0;
%if animation is different that none, asks for the color of the cars
%generated LP
if br~=6
    color=input(sprintf('color:0 for random, 1 for red\n',color));
end
%uncomment to start measuring the performance LP
%profile on
%initialising the progress bar LP
h = waitbar(0,'Simulation in progress...');
%creating the map LP
A=-1*ones(30,30);
A(1:10,3)=1;
A(10,3:25)=1;
A(10:15,25)=1;
A(15,2:25)=1;
A(15:25,2)=1;
A(25,2:10)=1;
A(20:25,10)=1;
A(20,10:29)=1;
%set sterting value of bar to 0 LP
bar_start=0;
%preallocate the matric of the movement LP
movement=zeros(inpNCars,inpNCars);
%preallocate the memory for the output matrix LP
W=zeros(n_of_times,6);

%%
%loop for the number of situations to run LP
for z=1:1:n_of_times
    %clear variables to repeat the movement LP
    clearvars nCars B
    nCars=1;
    B=zeros(inpNCars,5);
    B(1,1)=1;
    B(1,2)=3;
    B(1,3)=rand(1);
    %number of movements LP
    B(1,4)=0;
    Time{nCars}=tic;   %Time slot
    
    movement(1,1)=2;
    if color==1
        B(1,3)=0.3;
    end
    A(B(1,1),B(1,2))=B(1,3);
    if (br~=6)
        %show first image LP
        imshow(A,'InitialMagnification','fit','colormap',hot)
        %break LP
        pause(1)
    end
    
    
    i=2;
    
    while (B(nCars,3)~=-2)
        %check for the cars on the map LP
        for j=1:1:nCars
            %function for the movement LP
            [A,B,movement,i,j] = prevmove(A,B,movement,i,j);
            %{
            %if first car is out, stop time LP
            if (B(1,3)==-2)
                timespent=toc;
            end
            %}
            % Stop time toc
       for cr=1:inpNCars         
             if (B(cr,3)==-2)
                 B(cr,5)=toc(Time{cr});
             end
       end
        end
        
        %%
        
        %generator for the cars, only works if the number of cars on the
        %map are less that the ones you set up LP
        if nCars<inpNCars
            %random generator for the probability LP
            random=rand(1);
            if random<=0.7
                %update count of the cars on the map LP
                nCars=nCars+1;
                %set starting position LP
                B(nCars,1)=1;
                B(nCars,2)=3;
                B(nCars,3)=rand(1); %% If B nCars,3 == -2 stop toc
                B(nCars,4)=0;
                Time{nCars}=tic;
                if color==1
                    B(nCars,3)=0.3;
                end
                A(B(nCars,1),B(nCars,2))=B(nCars,3);
                %set first move for the newly generated car LP
                movement(i,nCars)=2;
            end
        end
        %Kundennummer: 932267
        if (br~=6)
            imshow(A,'InitialMagnification','fit','colormap',hot)
            pause(p_time)
        end
        
        %since for loop has changed to while, i has to be updated
        %manuallyLP
        i=i+1;
        %update the percentage for the progress bar LP
        bar=(bar_start+((nCars)/(n_of_times*inpNCars)));
        %string for the progress bar LP
        text_bar=['Simulation in Progress...',num2str(floor(1000*bar)/10),'%% completed'];
        %update for the bar based on the percentage LP
        waitbar(bar,h,sprintf(text_bar))
   

     end
    %set base value on which the percentage is updated LP
    bar_start=bar;
    %save number of run LP
    W(z,1)=z;
    %save set num of cars LP
    W(z,2)=inpNCars;
    %set num of cars on map (just to check if all were generated LP
    W(z,3)=nCars;
    %number of blocks travelled LP
    W(z,4)=B(1,4);
    %time taken LP
    %W(z,5)=timespent;
    %speed LP
    W(z,6)=W(z,4)/W(z,5);
    
end
%%


%set progressbar to complete LP
waitbar(1,h,sprintf('Simulation Completed...saving data'))
%generate matrix with date & time parameters for file output LP
D=clock;
%set all data to a string LP
str_name=['run_',num2str(D(1,3)),'_',num2str(D(1,2)),'_',num2str(D(1,1)),'_',num2str(D(1,4)),'_',num2str(D(1,5)),'_',num2str(floor(D(1,6))),'.csv'];
%write file to working matlab folder LP
csvwrite(str_name,W)
%close progress bar LP
close(h)
%display done on the console LP
disp('done!!')
%if profiling is on, activate to see performance LP
%profile viewer
