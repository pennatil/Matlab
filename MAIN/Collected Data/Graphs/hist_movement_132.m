% clear all
% clc

% load('B_b_132');
% load('B_a_132');
sb=size(B_b_132);
sa=size(B_a_132);
Z(1,1)=sb(1,1);
Z(1,2)=sa(1,1);
lim=min(Z);
% 
% 
% Y_b_132=B_b_132(2:lim,5);
% Y_a_132=B_a_132(2:2:2*lim-1,5);

% Y_b_132=B_b_132(:,5);
% Y_a_132=B_a_132(:,5);

figure(1);
hold on
histfit(Y_a_132)
h = findobj(gca,'Type','patch');
set(h,'FaceColor','g','Edgecolor','k')
xlim([120 260])
ylim([0 1000])
hold off

figure(2)
hold on
histfit(Y_b_132)
h = findobj(gca,'Type','patch');
set(h,'FaceColor','b','Edgecolor','k')
xlim([120 260])
ylim([0 1000])
hold off