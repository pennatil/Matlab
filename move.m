function [A,B,movement] = move(A,B,i,j,movement,dir)
%south
if dir==2
    A(B(j,1)+1,B(j,2))=0.5;
    A(B(j,1),B(j,2))=1;
    B(j,1)=B(j,1)+1;
    movement(i,j)=2;
%north
elseif dir==8
    A(B(j,1)-1,B(j,2))=0.5;
    A(B(j,1),B(j,2))=1;
    B(j,1)=B(j,1)-1;
    movement(i,j)=8;
%east
elseif dir==6
    A(B(j,1),B(j,2)+1)=0.5;
    A(B(j,1),B(j,2))=1;
    B(j,2)=B(j,2)+1;
    movement(i,j)=6;
%west
elseif dir==4
    A(B(j,1),B(j,2)-1)=0.5;
    A(B(j,1),B(j,2))=1;
    B(j,2)=B(j,2)-1;
    movement(i,j)=4;
end
end