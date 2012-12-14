function [A,B,movement,i,j] = crossing_22(A,B,movement,i,j)
if movement(i-1,j)==6
    if (B(j,1)==162 && B(j,2)+1==128)
        A(B(j,1),B(j,2)+1)=B(j,3);
        A(B(j,1),B(j,2))=1;
        B(j,2)=B(j,2)+1;
        movement(i,j)=6;
    elseif (B(j,1)==162 && B(j,2)+1==129)
        rnd=rand(1);
        if rnd<=0.5
            A(B(j,1)-1,B(j,2))=B(j,3);
            A(B(j,1),B(j,2))=22;
            B(j,1)=B(j,1)-1;
            movement(i,j)=8;
        else
            A(B(j,1),B(j,2)+1)=B(j,3);
            A(B(j,1),B(j,2))=22;
            B(j,2)=B(j,2)+1;
            movement(i,j)=6;
        end
    elseif (B(j,1)==162 && B(j,2)+1==130)
        A(B(j,1),B(j,2)+1)=B(j,3);
        A(B(j,1),B(j,2))=22;
        B(j,2)=B(j,2)+1;
        movement(i,j)=6;
    elseif (B(j,1)==162 && B(j,2)+1==131)
        A(B(j,1)-1,B(j,2))=B(j,3);
        A(B(j,1),B(j,2))=22;
        B(j,1)=B(j,1)-1;
        movement(i,j)=8;
    elseif (B(j,1)==164 && B(j,2)+1==128)
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
        rnd=rand(1);
        if rnd<=0.5
            A(B(j,1)-1,B(j,2))=B(j,3);
            A(B(j,1),B(j,2))=22;
            B(j,1)=B(j,1)-1;
            movement(i,j)=8;
        else
            A(B(j,1),B(j,2)+1)=B(j,3);
            A(B(j,1),B(j,2))=22;
            B(j,2)=B(j,2)+1;
            movement(i,j)=6;
        end
    elseif (B(j,1)==164 && B(j,2)+1==132)
        A(B(j,1),B(j,2)+1)=B(j,3);
        A(B(j,1),B(j,2))=1;
        B(j,2)=B(j,2)+1;
        movement(i,j)=6;
    end
elseif movement(i-1,j)==8
    if (B(j,1)-1==160 && B(j,2)==128)
        A(B(j,1)-1,B(j,2))=B(j,3);
        A(B(j,1),B(j,2))=1;
        B(j,1)=B(j,1)-1;
        movement(i,j)=8;
    elseif (B(j,1)-1==162 && B(j,2)==130)
        A(B(j,1)-1,B(j,2))=B(j,3);
        A(B(j,1),B(j,2))=22;
        B(j,1)=B(j,1)-1;
        movement(i,j)=8;
    elseif (B(j,1)-1==161 && B(j,2)==130)
        A(B(j,1)-1,B(j,2))=B(j,3);
        A(B(j,1),B(j,2))=22;
        B(j,1)=B(j,1)-1;
        movement(i,j)=8;
    elseif (B(j,1)-1==160 && B(j,2)==130)
        A(B(j,1)-1,B(j,2))=B(j,3);
        A(B(j,1),B(j,2))=1;
        B(j,1)=B(j,1)-1;
        movement(i,j)=8;
    end
end
end
