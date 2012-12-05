function [A,B,movement,i,j] = crossing_20(A,B,movement,i,j)
if movement(i-1,j)==6
    if (B(j,1)==162 && B(j,2)+1==56)
        A(B(j,1),B(j,2)+1)=B(j,3);
        A(B(j,1),B(j,2))=1;
        B(j,2)=B(j,2)+1;
        movement(i,j)=6;
    elseif (B(j,1)==162 && B(j,2)+1==57)
        A(B(j,1)-1,B(j,2))=B(j,3);
        A(B(j,1),B(j,2))=20;
        B(j,1)=B(j,1)-1;
        movement(i,j)=8;
    end
elseif movement(i-1,j)==8
    if (B(j,1)-1==160 && B(j,2)==56)
        A(B(j,1)-1,B(j,2))=B(j,3);
        A(B(j,1),B(j,2))=1;
        B(j,1)=B(j,1)-1;
        movement(i,j)=8;
    elseif (B(j,1)-1==160 && B(j,2)==58)
        A(B(j,1)-1,B(j,2))=B(j,3);
        A(B(j,1),B(j,2))=1;
        B(j,1)=B(j,1)-1;
        movement(i,j)=8;
    end
elseif movement(i-1,j)==4
    if (B(j,1)==162 && B(j,2)-1==58)
        A(B(j,1),B(j,2)-1)=B(j,3);
        A(B(j,1),B(j,2))=1;
        B(j,2)=B(j,2)-1;
        movement(i,j)=4;
    elseif (B(j,1)==162 && B(j,2)-1==57)
        A(B(j,1)-1,B(j,2))=B(j,3);
        A(B(j,1),B(j,2))=20;
        B(j,1)=B(j,1)-1;
        movement(i,j)=8;
    end
end
end
