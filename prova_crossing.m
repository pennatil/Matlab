close all
clear all
clc
video=0;
nCars=1;
nIter=11;
A=-1*ones(11,11);
A(5,:)=1;
A(:,5)=1;
A(7,:)=1;
A(:,7)=1;
B(1,1)=1;
B(1,2)=5;
B(1,3)=0.3;
A(B(1,1),B(1,2))=B(1,3);
movement(1,1)=2;

%A(5:7,5:7)=2;
A(6,6)=-1;
imshow(A,'InitialMagnification','fit','Colormap',hot)
pause(1)

for i=2:1:nIter
    for j=1:1:nCars %loop for each car on the map
        [A,B,movement,i,j] = prevmove(A,B,movement,i,j);
    end
    
    imshow(A,'InitialMagnification','fit','colormap',hot)
    pause(0.5)
end