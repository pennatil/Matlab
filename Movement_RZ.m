h=1;
w=2;
height=10;
width=10;
nIter=10;
A=-1*ones(10,10)
A(:,5)=1
A(5,:)=1
%starting index for the car
B=[1,5]
%starting point for the car using the index
A(B(1,1),B(1,2))=0.5
size(A)

%loop for movements
for i=2:nIter
    
    %if south block is empty
if (A(B(1,1)+1,B(1,2))==1)
    
    %set next to full
    A(B(1,1)+1,B(1,2))=0.5;
    %set current to empty
    A(B(1,1),B(1,2))=1;
    %update the index
    B(1,1)=B(1,1)+1;
    
    %if east is empty______process is the same as above
elseif (A(B(1,1),B(1,2)+1)==1)
    
    A(B(1,1),B(1,2)+1)=0.5;
    A(B(1,1),B(1,2))=1;
    B(1,2)=B(1,2)+1;
    
    %if north is empty______process is the same as above
elseif (A(B(1,1)-1,B(1,2))==1)
    A(B(1,1)-1,B(1,2))=0.5;
    A(B(1,1),B(1,2))=1;
    B(1,1)=B(1,1)+1;  
    
    %if east west is empty______process is the same as above
elseif (A(B(1,1),B(1,2)-1)==1)
    A(B(1,1),B(1,2)-1)=0.5;
    A(B(1,1),B(1,2))=1;
    B(1,2)=B(1,2)-1;
end

% Draw the car!
x0=B(1,2);
y0=B(1,1);
hold on

% Define the coordinates for the car chassi
chassi_x = [w/2 w/2 -w/2 -w/2];
chassi_y = [-h/2 h/2 h/2 -h/2];

wheel_1_x=[2*w/5 2*w/5 (w/10) (w/10)];
wheel_1_y=[-h/2 -12*h/20 -12*h/20 -h/2];

wheel_2_x=[-(2*w/5) -(2*w/5) -(w/10) -(w/10)];
wheel_2_y=[-h/2 -12*h/20 -12*h/20 -h/2];

wheel_3_x=[-(2*w/5) -(2*w/5) -(w/10) -(w/10)];
wheel_3_y=[h/2 (12*h/20) (12*h/20) h/2];

wheel_4_x=[2*w/5 2*w/5 (w/10) (w/10)];
wheel_4_y=[h/2 (12*h/20) (12*h/20) h/2];

window_1_x=[-w/6 -w/6 w/12 w/12];
window_1_y=[(-h)/4 (h)/4 h/6 -h/6];

window_2_x=[w/12 w/12 w/12+w/6 w/12+w/6];
window_2_y=[-h*11/60 h*11/60 h*11/60 -h*11/60];

window_3_x=[w/12+w/6 w/12+w/6 5*w/12 5*w/12];
window_3_y=[h/6 -h/6 (-h)/4 (h)/4];

window_4_x=[-w/6 5*w/12 w/12+w/6 w/12];
window_4_y=[(-h)/4 -h/4 -h*11/60 -h*11/60];

window_5_x=[-w/6 5*w/12 w/12+w/6 w/12];
window_5_y=[(h)/4 h/4 h*11/60 h*11/60];

A=[rand(1),rand(1),rand(1)];

patch(x0+chassi_x, y0+chassi_y, A)
patch(x0+wheel_1_x,y0+wheel_1_y,'k')
patch(x0+wheel_2_x,y0+wheel_2_y,'k')
patch(x0+wheel_3_x,y0+wheel_3_y,'k')
patch(x0+wheel_4_x,y0+wheel_4_y,'k')
patch(x0+window_1_x,y0+window_1_y,'b')
patch(x0+window_2_x,y0+window_2_y,A)
patch(x0+window_3_x,y0+window_3_y,'b')
patch(x0+window_4_x,y0+window_4_y,'b')
patch(x0+window_5_x,y0+window_5_y,'b')



imshow(A,'InitialMagnification','fit')

hold off

pause(0.5)
end