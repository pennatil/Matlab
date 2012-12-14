function [A,B,movement,i,j] = crossing_22(A,B,movement,i,j)
if movement(i-1,j)==2
    if (B(j,1)+1==162 && B(j,2)==128)
        A(B(j,1)+1,B(j,2))=B(j,3);
        A(B(j,1),B(j,2))=1;
        B(j,1)=B(j,1)+1;
        movement(i,j)=2;
    elseif (B(j,1)+1==163 && B(j,2)==128)
        A(B(j,1),B(j,2)-1)=B(j,3);
        A(B(j,1),B(j,2))=22;
        B(j,2)=B(j,2)-1;
        movement(i,j)=4;
    elseif (B(j,1)+1==162 && B(j,2)==130)
        A(B(j,1)+1,B(j,2))=B(j,3);
        A(B(j,1),B(j,2))=1;
        B(j,1)=B(j,1)+1;
        movement(i,j)=2;
    elseif (B(j,1)+1==163 && B(j,2)==130)
        A(B(j,1)+1,B(j,2))=B(j,3);
        A(B(j,1),B(j,2))=22;
        B(j,1)=B(j,1)+1;
        movement(i,j)=2;
    elseif (B(j,1)+1==164 && B(j,2)==130)
        A(B(j,1)+1,B(j,2))=B(j,3);
        A(B(j,1),B(j,2))=22;
        B(j,1)=B(j,1)+1;
        movement(i,j)=2;
    elseif (B(j,1)+1==165 && B(j,2)==130)
        A(B(j,1),B(j,2)+1)=B(j,3);
        A(B(j,1),B(j,2))=22;
        B(j,2)=B(j,2)+1;
        movement(i,j)=6;
    end
elseif movement(i-1,j)==4
    if (B(j,1)==162 && B(j,2)-1==126)
        A(B(j,1),B(j,2)-1)=B(j,3);
        A(B(j,1),B(j,2))=1;
        B(j,2)=B(j,2)-1;
        movement(i,j)=4;
    end
elseif movement(i-1,j)==6
    if (B(j,1)==164 && B(j,2)+1==128)
        A(B(j,1),B(j,2)+1)=B(j,3);
        A(B(j,1),B(j,2))=1;
        B(j,2)=B(j,2)+1;
        movement(i,j)=6;
    elseif (B(j,1)==164 && B(j,2)+1==129)
        A(B(j,1),B(j,2)+1)=B(j,3);
        A(B(j,1),B(j,2))=22;
        B(j,2)=B(j,2)+1;
        movement(i,j)=6;
    elseif (B(j,1)==164 && B(j,2)+1==130)
        A(B(j,1),B(j,2)+1)=B(j,3);
        A(B(j,1),B(j,2))=22;
        B(j,2)=B(j,2)+1;
        movement(i,j)=6;
    elseif (B(j,1)==164 && B(j,2)+1==131)
        A(B(j,1),B(j,2)+1)=B(j,3);
        A(B(j,1),B(j,2))=22;
        B(j,2)=B(j,2)+1;
        movement(i,j)=6;
    elseif (B(j,1)==164 && B(j,2)+1==132)
        A(B(j,1),B(j,2)+1)=B(j,3);
        A(B(j,1),B(j,2))=1;
        B(j,2)=B(j,2)+1;
        movement(i,j)=6;
    end
end
end
