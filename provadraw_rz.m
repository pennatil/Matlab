clear all
clc
A=0;
A = input(sprintf('How many cars?:',A));
for i=1:1:A
%color array LP
RGB=[rand(1);rand(1);rand(1)]
%randomizer for the colorLP
%C=C_temp(floor((rand(1)*7)+1),1);
%randomize in x position LP_____THE VAR A HAS TO BE MODIFIED ONCE INSERTED IN
%THE FINAL SCRIPT WITH THE ACTUAL WIDTH
rand_x=floor(rand(1)*A);
%randomize in y position LP_____THE VAR A HAS TO BE MODIFIED ONCE INSERTED IN
%THE FINAL SCRIPT WITH THE ACTUAL HEIGHT
rand_y=floor(rand(1)*A);
%struct loop LP
car(i).car_id = num2str(i);
car(i).color = RGB;
car(i).pos_x = num2str(rand_x);
car(i).pos_y = num2str(rand_y);
Provadrawcar_rz(1,1,1,1,RGB,i)
end

