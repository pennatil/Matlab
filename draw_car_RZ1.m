% Modeling and Simulating Social Systems with MATLAB
% http://www.soms.ethz.ch/matlab
% Author: Stefano Balietti and Karsten Donnay, 2012

function draw_car(x0, y0, w, h);
% This function is drawing a car
% INPUT: 
%   x0, y0: Central point of the car
%   w: Width of the car
%   h: Height of the car
close all

% Hold the graphics
hold on

% Define the coordinates for the car chassi
chassi_x = [w/2 w/2 -w/2 -w/2];
chassi_y = [-h/2 h/2 h/2 -h/2];

wheel_1_x=[2*w/5 2*w/5 (w/10) (w/10)];
wheel_1_y=[-h/2 -12*h/20 -12*h/20 -h/2];

wheel_2_x=[-(2*w/5) -(2*w/5) -(w/10) -(w/10)];
wheel_2_y=[-h/2 -12*h/20 -12*h/20 -h/2];

wheel_3_x=[-(2*w/5) -(2*w/5) -(w/10) -(w/10)];
wheel_3_y=[h/2 (12*h/20) (12*h/20) h/2];

wheel_4_x=[2*w/5 2*w/5 (w/10) (w/10)];
wheel_4_y=[h/2 (12*h/20) (12*h/20) h/2];

window_1_x=[-w/6 -w/6 w/12 w/12];
window_1_y=[(-h)/4 (h)/4 h/6 -h/6];

window_2_x=[w/12 w/12 w/12+w/6 w/12+w/6];
window_2_y=[-h/6 h/6 h/6 -h/6];

window_3_x=[w/12+w/6 w/12+w/6 5*w/12 5*w/12];
window_3_y=[h/6 -h/6 (-h)/4 (h)/4];

window_4_x=[-w/6 5*w/12 w/12+w/6 w/12];
window_4_y=[(-h)/4 -h/4 -h/6 -h/6];

window_5_x=[-w/6 5*w/12 w/12+w/6 w/12];
window_5_y=[(h)/4 h/4 h/6 h/6];

A=[rand(1),rand(1),rand(1)];

% Draw the car!
patch(x0+chassi_x, y0+chassi_y, A)
patch(x0+wheel_1_x,y0+wheel_1_y,'k')
patch(x0+wheel_2_x,y0+wheel_2_y,'k')
patch(x0+wheel_3_x,y0+wheel_3_y,'k')
patch(x0+wheel_4_x,y0+wheel_4_y,'k')
patch(x0+window_1_x,y0+window_1_y,'b')
patch(x0+window_2_x,y0+window_2_y,A)
patch(x0+window_3_x,y0+window_3_y,'b')
patch(x0+window_4_x,y0+window_4_y,'b')
patch(x0+window_5_x,y0+window_5_y,'b')
end