clear all
close all
clc

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
imshow(A,'InitialMagnification','fit')
pause(1)
for i=2:1:nIter
      (A(B(1,1)+1,B(1,2))==1)
      move_south(i,1,A,B);
             %east
        
    imshow(A,'InitialMagnification','fit')
    pause(0.01)
end