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
%cluster
%matlabpool open 2
%init number of times the movement is repeated
nIter=300;
%input for map
A=-1*ones(300,300);
for n=4:4:300
    A(n,:)=1;
    A(:,n)=1;
end
rand_map_8=rand(1);
nCars=1;


%
%rn=(floor(rand(1)*75)+1)*4;
%
B(1,1)=4;
B(1,2)=1;
B(1,3)=rand(1);
A(B(1,1),B(1,2))=B(1,3);
movement(1,1)=6;


inpNCars=0;
inpNCars=input(sprintf('how many cars: ',inpNCars));
%nIter=nIter+inpNCars

%video
video=0;
video = input(sprintf('videofile?? 1 for yes, 2 for no',video));
if (video==1)
aviobj = avifile('example.avi','compression','None');
fig=figure;
end


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
    grid on;
    %pause(0.1)
    
    if (video==1)
        F = getframe(fig);
        aviobj = addframe(aviobj,F);
        %pause(0.01)
    end
    
    random=rand(1);
    
    
    
    
    if nCars<inpNCars
        for z=1:1:10
            nCars=nCars+1;
            B(nCars,1)=A_pos_X(1,floor(rand(1)*300)+1);
            B(nCars,2)=1;
            B(nCars,3)=rand(1);
            A(B(nCars,1),B(nCars,2))=B(nCars,3);
            movement(i,nCars)=6;
            
            nCars=nCars+1;
            B(nCars,2)=A_pos_X(1,floor(rand(1)*300)+1);
            B(nCars,1)=1;
            B(nCars,3)=rand(1);
            A(B(nCars,1),B(nCars,2))=B(nCars,3);
            movement(i,nCars)=2;
            
        end
    end
    
end

if (video==1)
close(fig);
aviobj = close(aviobj);
end
