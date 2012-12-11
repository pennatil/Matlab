function [A,B,movement,i,j] = crossing_23(A,B,movement,i,j)
if movement(i-1,j)==8
    if (B(j,1)-1==160 && B(j,2)==140)
        A(B(j,1)-1,B(j,2))=B(j,3);
        A(B(j,1),B(j,2))=23;
        B(j,1)=B(j,1)-1;
        movement(i,j)=8;
    elseif (B(j,1)-1==159 && B(j,2)==140)
        A(B(j,1)-1,B(j,2))=B(j,3);
        A(B(j,1),B(j,2))=1;
        B(j,1)=B(j,1)-1;
        movement(i,j)=8;
    end
elseif movement(i-1,j)==4
    if (B(j,1)==162 && B(j,2)-1==140)
        A(B(j,1),B(j,2)-1)=B(j,3);
        A(B(j,1),B(j,2))=1;
        B(j,2)=B(j,2)-1;
        movement(i,j)=4;
    elseif (B(j,1)==162 && B(j,2)-1==139)
        rnd=rand(1);
        if rnd<=0.5
            A(B(j,1)-1,B(j,2))=B(j,3);
            A(B(j,1),B(j,2))=23;
            B(j,1)=B(j,1)-1;
            movement(i,j)=8;
        else
            A(B(j,1),B(j,2)-1)=B(j,3);
            A(B(j,1),B(j,2))=23;
            B(j,2)=B(j,2)-1;
            movement(i,j)=4;
        end
    elseif (B(j,1)==162 && B(j,2)-1==138)
        A(B(j,1),B(j,2)-1)=B(j,3);
        A(B(j,1),B(j,2))=23;
        B(j,2)=B(j,2)-1;
        movement(i,j)=4;
    elseif (B(j,1)==162 && B(j,2)-1==137)
        A(B(j,1),B(j,2)-1)=B(j,3);
        A(B(j,1),B(j,2))=1;
        B(j,2)=B(j,2)-1;
        movement(i,j)=4;
    end
end
end