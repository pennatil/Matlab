% clear all
% clc
% 
% load('B_b_195');
% load('B_a_195');
sb=size(B_b_195);
sa=size(B_a_195);
Z(1,1)=sb(1,1);
Z(1,2)=sa(1,1);
lim=min(Z);


% Y_b_195=B_b_195(2:lim,5);
% Y_a_195=B_a_195(2:lim,5);

figure(1);
hold on
histfit(Y_a_195)
h = findobj(gca,'Type','patch');
set(h,'FaceColor','g','Edgecolor','k')
xlim([180 260])
ylim([0 3000])
hold off

figure(2)
hold on
histfit(Y_b_195)
h = findobj(gca,'Type','patch');
set(h,'FaceColor','b','Edgecolor','k')
xlim([180 260])
ylim([0 3000])
hold off