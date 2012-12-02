%clear all data
clc
clear all
close all

%map
run 'Map_Before.m'

%creating folder for the simulation LP
D=clock;
str_main_folder=['sim_',num2str(D(1,3)),'_',num2str(D(1,2)),'_',num2str(D(1,1)),'_',num2str(D(1,4)),'_',num2str(D(1,5)),'_',num2str(floor(D(1,6)))];
mkdir(str_main_folder);

%number of cars to be generated
inpNCars=200;

%preallocating matrix B LP
B=zeros(inpNCars,5);

%preallocate the matrix of the movement LP
movement=zeros(inpNCars,inpNCars);

%Initialising counter for cars out LP
nCarsOut=0;

%initialising video LP
video=0; %if video is wanted, change value to 1, otherwise 0 for no video LP
if (video==1)
    writerObj = VideoWriter('prova.avi');
    open(writerObj);
end

%initialising the two progress bars LP

    h = waitbar(0,'Starting simulation');
    m = waitbar(0,'generating start cars...');
    closed_fig_m=0;
    bar_start=0;

%generating first car
B(1,1)=3;
B(1,2)=40;
B(1,3)=0.3;
A(B(1,1),B(1,2))=B(1,3);
movement(1,1)=2;

%Initialize nCars
nCars=1;


%initialising figure for the animation
figure=0; %if image is wanted, change value to 1, otherwise 0 for no image LP
if (figure==1)
    a=figure(1);
    imshow(A,'InitialMagnification','fit','colormap',hot)
    pause(1)
end
%main loop, i has to be initialised manually since the loop has been changed from a
%for loop to a while loop
i=2;
while (nCarsOut~=inpNCars)
    for j=1:1:nCars %loop for each car on the map
        if (B(j,3)~=-2)%if car is still on map, perform operation LP
            if (movement(i-1,j)==0)
                movement(i,j)=0;
            elseif (B(j,1)+1==12 && B(j,2)==77) || (B(j,1)+1==13 && B(j,2)==77)
                [A,B,movement,i,j]=crossing_6(A,B,movement,i,j);
            else
                [A,B,movement,i,j,nCarsOut] = prevmove(A,B,movement,i,j,nCarsOut);
            end
        end
    end
    
    
    if (nCars<inpNCars)
        [A,B,nCars,inpNCars,movement,i] = generate_car_bef(A,B,nCars,inpNCars,movement,i);
    end

        if (nCars<inpNCars)
            gen_cars_bar=nCars/inpNCars;
            string_gen=[num2str(nCars),' cars out of ',num2str(inpNCars),' have been generated'];
            waitbar(gen_cars_bar,m,sprintf(string_gen));
        elseif (nCars==inpNCars && closed_fig_m==0)
            close(m)
            closed_fig_m=1;
        end

    
    if (image==1)
        imshow(A,'InitialMagnification','fit','colormap',hot)
        pause(0.01)
    end
    if (video==1)
        frame = getframe;
        writeVideo(writerObj,frame);
    end
    %for loop changed to while, i has to be updated manually LP
    i=i+1;
  
        %update the percentage for the progress bar LP
        bar=(bar_start+(nCarsOut/inpNCars));
        %string for the progress bar LP
        text_bar=['Simulation in Progress...',num2str(bar*inpNCars),' cars out of ',num2str(inpNCars),' have been deleted'];
        %update for the bar based on the percentage LP
        waitbar(bar,h,sprintf(text_bar))
        clearvars bar
   
end

%closing bar containing cars out LP
    close(h)
%closing main figure window LP
if (figure==1)
    close(a)
end
if (video==1)
    close(writerObj);
end
%data gets saved into the folder of the simulation LP
foldersave(B,str_main_folder);


