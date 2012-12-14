% clear all
% clc

% load('B_b_312');
% load('B_a_312');
sb=size(B_b_312);
sa=size(B_a_312);
Z(1,1)=sb(1,1);
Z(1,2)=sa(1,1);
lim=min(Z);


% Y_b_312=B_b_312(2:lim,5);
% Y_a_312=B_a_312(2:lim,5);

figure(1);
hold on
histfit(Y_a_312)
h = findobj(gca,'Type','patch');
set(h,'FaceColor','g','Edgecolor','k')
xlim([270 600])
ylim([0 3000])
hold off

figure(2)
hold on
histfit(Y_b_312)
h = findobj(gca,'Type','patch');
set(h,'FaceColor','b','Edgecolor','k')
xlim([270 600])
ylim([0 3000])
hold off