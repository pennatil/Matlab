function [A,B,movement,i,j] = crossing_30(A,B,movement,i,j)
if movement(i-2,j)==2
    if (B(j,1)+1==12 && B(j,2)==128 && A(13,128)==1)
        A(B(j,1)+2,B(j,2))=B(j,3);
        A(B(j,1),B(j,2))=7;
        B(j,1)=B(j,1)+2;
        movement(i,j)=2;
    else
        movement(i,j)=movement(i-2,j);
        B(j,5)=B(j,5)+1;
    end
elseif movement(i-2,j)==6
    if (B(j,1)==12 && B(j,2)+1==130 && A(12,131)==1)
        A(B(j,1),B(j,2)+2)=B(j,3);
        A(B(j,1),B(j,2))=7;
        B(j,2)=B(j,2)+2;
        movement(i,j)=6;
    else
        movement(i,j)=movement(i-2,j);
        B(j,5)=B(j,5)+1;
    end
elseif movement(i-1,j)==8
    if (B(j,1)-1==10 && B(j,2)==130 && A(9,130)==1)
        A(B(j,1)-2,B(j,2))=B(j,3);
        A(B(j,1),B(j,2))=7;
        B(j,1)=B(j,1)-2;
        movement(i,j)=8;
    else
        movement(i,j)=movement(i-2,j);
        B(j,5)=B(j,5)+1;
    end
elseif movement(i-1,j)==4
    if (B(j,1)==10 && B(j,2)-1==128 && A(10,127)==1)
        A(B(j,1),B(j,2)-2)=B(j,3);
        A(B(j,1),B(j,2))=7;
        B(j,2)=B(j,2)-2;
        movement(i,j)=4;
    else
        movement(i,j)=movement(i-2,j);
        B(j,5)=B(j,5)+1;
    end
else
    movement(i,j)=movement(i-2,j);
    B(j,5)=B(j,5)+1;
end
end

