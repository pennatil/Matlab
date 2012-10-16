hold on
disp('Figure 1 is a graduated one')
figure(1)
A=[0:0.1:1];
C=[0:0.1:1];
E=[0:0.1:1];
G=[0:0.1:1];
I=[0:0.1:1];
K=[0:0.1:1];
B=[1:-0.1:0];
D=[1:-0.1:0];
F=[1:-0.1:0];
H=[1:-0.1:0];
J=[1:-0.1:0];
griglia=[A;B;C;D;E;F;G;H;I;J];
imshow(griglia,'InitialMagnification','fit')
hold off

hold on
disp('Figure 2 is randomly generated')
figure(2)
values2=rand(15,15);
imshow(values2,'InitialMagnification','fit')
hold off

hold on
disp('Figure 3 is a bullseye')
figure(3)
A1=[0 0 0 0 0 0 1 1 0 0 0 0 0 0];
A2=[0 0 0 0 1 1 0 0 1 1 0 0 0 0];
A3=[0 0 0 1 0 0 1 1 0 0 1 0 0 0];
A4=[0 0 1 0 0 1 0 0 1 0 0 1 0 0];
A5=[0 1 0 0 1 0 1 1 0 1 0 0 1 0];
A6=[1 0 0 1 0 1 0 0 1 0 1 0 0 1];
A7=[1 0 0 1 0 1 0 0 1 0 1 0 0 1];
A8=[0 1 0 0 1 0 1 1 0 1 0 0 1 0];
A9=[0 0 1 0 0 1 0 0 1 0 0 1 0 0];
A10=[0 0 0 1 0 0 1 1 0 0 1 0 0 0];
A11=[0 0 0 0 1 1 0 0 1 1 0 0 0 0];
A12=[0 0 0 0 0 0 1 1 0 0 0 0 0 0];
bullseye=[A1;A2;A3;A4;A5;A6;A7;A8;A9;A10;A11;A12];
imshow(bullseye,'InitialMagnification','fit')
hold off

disp('!!!!!!!!Remember to run the command "clear all" so to clear all the cache and the variables stored!!!!!!!')