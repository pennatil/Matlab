load('B_b_132');
Y_b_132=B_b_132(2:3216,5);
load('B_a_132');
Y_a_132=B_a_132(2:3216,5);

figure(1);
hist(Y_a_132,130:260)
h = findobj(gca,'Type','patch');
set(h,'FaceColor','r')

figure(2)
hist(Y_b_132,130:260)