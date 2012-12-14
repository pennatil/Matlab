% clear all
% clc
% 
% load('B_b_497');
% load('B_a_497');
sb=size(B_b_497);
sa=size(B_a_497);
Z(1,1)=sb(1,1);
Z(1,2)=sa(1,1);
lim=min(Z);

% 
% Y_b_497=B_b_497(2:lim,5);
% Y_a_497=B_a_497(2:lim,5);

figure(1);
hold on
histfit(Y_a_497)
h = findobj(gca,'Type','patch');
set(h,'FaceColor','g','Edgecolor','k')
xlim([450 700])
ylim([0 300])
hold off

figure(2)
hold on
histfit(Y_b_497)
h = findobj(gca,'Type','patch');
set(h,'FaceColor','b','Edgecolor','k')
xlim([450 700])
ylim([0 300])
hold off