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
A1=[1 1 1 1 1 1 0 0 1 1 1 1 1 1];
A2=[1 1 1 1 0 0 1 1 0 0 1 1 1 1];
A3=[1 1 1 0 1 1 0 0 1 1 0 1 1 1];
A4=[1 1 0 1 1 0 1 1 0 1 1 0 1 1];
A5=[1 0 1 1 0 1 0 0 1 0 1 1 0 1];
A6=[1 0 1 0 1 0 1 1 0 1 0 1 0 1];
A7=[0 1 1 0 1 0 1 1 0 1 0 1 1 0];
A8=A7;
A9=A6;
A10=A5;
A11=A4;
A12=A3;
A13=A2;
A14=A1;
bullseye=[A1;A2;A3;A4;A5;A6;A7;A8;A9;A10;A11;A12;A13;A14];
imshow(bullseye,'InitialMagnification','fit')
hold off

disp('!!!!!!!!Remember to run the command "clear all" so to clear all the cache and the variables stored!!!!!!!')