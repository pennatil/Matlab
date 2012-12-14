% clear all
% clc

load('B_b_513');
load('B_a_513');
sb=size(B_b_513);
sa=size(B_a_513);
Z(1,1)=sb(1,1);
Z(1,2)=sa(1,1);
lim=min(Z);

% 
% Y_b_513=B_b_513(2:lim,5);
% Y_a_513=B_a_513(2:lim,5);

figure(1);
hold on
histfit(Y_a_513)
h = findobj(gca,'Type','patch');
set(h,'FaceColor','g','Edgecolor','k')
xlim([500 700])
ylim([0 150])
hold off

figure(2)
hold on
histfit(Y_b_513)
h = findobj(gca,'Type','patch');
set(h,'FaceColor','b','Edgecolor','k')
xlim([500 700])
ylim([0 150])
hold off