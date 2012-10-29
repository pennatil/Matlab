%creating structs car
clear all
clc
A=10;
for i=1:1:A
rand_x=floor(rand(1)*A);
rand_y=floor(rand(1)*A);
car_struct = struct ('car_id', num2str(i), 'colour_code',  000, 'pos_x', num2str(rand_x), 'pos_y', num2str(rand_y))
end
