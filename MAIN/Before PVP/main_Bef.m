%map
run 'Map_Before.m'
%initialising the progress bar LP
h = waitbar(0,'Simulation in progress...');
%set sterting value of bar to 0 LP
bar_start=0;
inpNCars=500;
B=zeros(inpNCars,3);

%preallocate the matric of the movement LP
movement=zeros(inpNCars,inpNCars);
%prova incroci andrea
%B=[3,40,0.3];
B(1,1)=3;
B(1,2)=40;
B(1,3)=0.3;
A(B(1,1),B(1,2))=B(1,3);
%counting number of cars out
nCarsOut=0;
%set num of cars

nCars=1;
movement(1,1)=2;
imshow(A,'InitialMagnification','fit','colormap',hot)

pause(1)
%loop for movements
i=2;
while (nCarsOut~=inpNCars)
    for j=1:1:nCars %loop for each car on the map
        if (movement(i-1,j)==0)
            movement(i,j)=0;
        elseif (B(j,1)+1==12 && B(j,2)==77) || (B(j,1)+1==13 && B(j,2)==77)
            [A,B,movement,i,j]=crossing_6(A,B,movement,i,j);
        else
            [A,B,movement,i,j,nCarsOut] = prevmove(A,B,movement,i,j,nCarsOut);
        end
    end
    
    
    if (nCars<inpNCars)
        %North 1
        rdn1=rand(1);
        if rdn1<=0.3
            if A(3,40)==1
                nCars=nCars+1;
                B(nCars,1)=3;
                B(nCars,2)=40;
                B(nCars,3)=0.3;
                A(B(nCars,1),B(nCars,2))=B(nCars,3);
                movement(i,nCars)=2;
            end
        end
    end
    if (nCars<inpNCars)
        %North 2
        rdn2=rand(1);
        if rdn2<=0.3
            if A(3,42)==1
                nCars=nCars+1;
                B(nCars,1)=3;
                B(nCars,2)=42;
                B(nCars,3)=0.3;
                A(B(nCars,1),B(nCars,2))=B(nCars,3);
                movement(i,nCars)=2;
            end
        end
    end
    
    if (nCars<inpNCars)
        %South
        rdn3=rand(1);
        if rdn3<=0.7
            if A(210,3)==1
                nCars=nCars+1;
                B(nCars,1)=210;
                B(nCars,2)=3;
                B(nCars,3)=0.15;
                A(B(nCars,1),B(nCars,2))=B(nCars,3);
                movement(i,nCars)=6;
            end
        end
    end
    
    if (nCars<inpNCars)
        %West
        rdn4=rand(1);
        if rdn4<=0.8
            if A(162,3)==1
                nCars=nCars+1;
                B(nCars,1)=162;
                B(nCars,2)=3;
                B(nCars,3)=0.15;
                A(B(nCars,1),B(nCars,2))=B(nCars,3);
                movement(i,nCars)=6;
            end
        end
    end
    
    if (nCars<inpNCars)
        %North-East
        rdn5=rand(1);
        if rdn5<=0.4
            if A(10,148)==1
                nCars=nCars+1;
                B(nCars,1)=10;
                B(nCars,2)=148;
                B(nCars,3)=0.6;
                A(B(nCars,1),B(nCars,2))=B(nCars,3);
                movement(i,nCars)=4;
            end
        end
    end
    
    if (nCars<inpNCars)
        %East 1
        rdn6=rand(1);
        if rdn6<=0.1
            if A(105,148)==1
                nCars=nCars+1;
                B(nCars,1)=105;
                B(nCars,2)=148;
                B(nCars,3)=0.6;
                A(B(nCars,1),B(nCars,2))=B(nCars,3);
                movement(i,nCars)=4;
            end
        end
    end
    
    if (nCars<inpNCars)
        %East 2
        rdn7=rand(1);
        if rdn7<=0.3
            if A(162,148)==1
                nCars=nCars+1;
                B(nCars,1)=162;
                B(nCars,2)=148;
                B(nCars,3)=0.6;
                A(B(nCars,1),B(nCars,2))=B(nCars,3);
                movement(i,nCars)=4;
            end
        end
    end
    
    imshow(A,'InitialMagnification','fit','colormap',hot)
    pause(0.01)
    %for loop changed to while, i has to be updated manually
    i=i+1;
    %update the percentage for the progress bar LP
    bar=(bar_start+(nCarsOut/inpNCars));
    %string for the progress bar LP
    text_bar=['Simulation in Progress...',num2str(floor(1000*bar)/10),'%% completed'];
    %update for the bar based on the percentage LP
    waitbar(bar,h,sprintf(text_bar))
    clearvars bar
end
close(h)
%{
for i=2:1:nIter
    
    
    
    
    %Random cars generation
    
    
    
    
    
end
%}
%matlabpool close
