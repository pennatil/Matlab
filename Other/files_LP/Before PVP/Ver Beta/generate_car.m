function [nCars,A,B,i,movement,color] = generate_car(nCars,A,B,i,movement,color)
%update count of the cars on the map LP
nCars=nCars+1;
%set starting position LP
B(nCars,1)=1;
B(nCars,2)=3;
B(nCars,3)=rand(1);
B(nCars,4)=0;
if color==1
    B(nCars,3)=0.3;
end
A(B(nCars,1),B(nCars,2))=B(nCars,3);
%set first move for the newly generated car LP
movement(i,nCars)=2;
end

