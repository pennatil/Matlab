%This script creates the car struct required to create a succession of
%cars. in order to use it, just run the script and it will show the struct
%in the workspace. to recall the properties of a certain car, use car(n),
%where n is the number of the car for which you are looking at the
%properties. never go under 0, or over your initial input!!

%Created by RZ & LP
clc
clear all

A=0;
A = input(sprintf('How many cars?:',A));

for i=1:1:A
%color array LP
C_temp=['y';'m';'c';'r';'g';'b';'w'];
%randomizer for the colorLP
C=C_temp(floor((rand(1)*7)+1),1);
%randomize in x position LP_____THE VAR A HAS TO BE MODIFIED ONCE INSERTED IN
%THE FINAL SCRIPT WITH THE ACTUAL WIDTH
rand_x=floor(rand(1)*A);
%randomize in y position LP_____THE VAR A HAS TO BE MODIFIED ONCE INSERTED IN
%THE FINAL SCRIPT WITH THE ACTUAL WIDTH
rand_y=floor(rand(1)*A);
%struct loop LP
car(i).car_id = num2str(i);
car(i).color = C;
car(i).pos_x = num2str(rand_x);
car(i).pos_y = num2str(rand_y);
end

