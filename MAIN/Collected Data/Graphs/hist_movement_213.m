% clear all
% clc
% 
% load('B_b_213');
% load('B_a_213');
sb=size(B_b_213);
sa=size(B_a_213);
Z(1,1)=sb(1,1);
Z(1,2)=sa(1,1);
lim=min(Z);

% 
% Y_b_213=B_b_213(2:lim,5);
% Y_a_213=B_a_213(2:lim,5);

figure(1);
hold on
histfit(Y_a_213)
h = findobj(gca,'Type','patch');
set(h,'FaceColor','g','Edgecolor','k')
xlim([200 300])
ylim([0 1000])
hold off

figure(2)
hold on
histfit(Y_b_213)
h = findobj(gca,'Type','patch');
set(h,'FaceColor','b','Edgecolor','k')
xlim([200 300])
ylim([0 1000])
hold off