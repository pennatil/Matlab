% clear all
% clc
% 
% load('B_b_367');
% load('B_a_367');
sb=size(B_b_367);
sa=size(B_a_367);
Z(1,1)=sb(1,1);
Z(1,2)=sa(1,1);
lim=min(Z);


% Y_b_367=B_b_367(2:lim,5);
% Y_a_367=B_a_367(2:lim,5);

figure(1);
hold on
histfit(Y_a_367)
h = findobj(gca,'Type','patch');
set(h,'FaceColor','g','Edgecolor','k')
xlim([300 450])
ylim([0 1000])
hold off

figure(2)
hold on
histfit(Y_b_367)
h = findobj(gca,'Type','patch');
set(h,'FaceColor','b','Edgecolor','k')
xlim([300 450])
ylim([0 1000])
hold off