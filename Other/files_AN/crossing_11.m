function [A,B,movement,i,j] = crossing_11(A,B,movement,i,j)
if movement(i-1,j)==2
    if (B(j,1)+1==164 && B(j,2)==64)
        A(B(j,1)+1,B(j,2))=B(j,3);
        A(B(j,1),B(j,2))=11;
        B(j,1)=B(j,1)+1;
        movement(i,j)=2;
    elseif (B(j,1)+1==165 && B(j,2)==64)
        A(B(j,1)+1,B(j,2))=B(j,3);
        A(B(j,1),B(j,2))=1;
        B(j,1)=B(j,1)+1;
        movement(i,j)=2;
    end
elseif movement(i-1,j)==6
    if (B(j,1)==162 && B(j,2)+1==64)
        A(B(j,1),B(j,2)+1)=B(j,3);
        A(B(j,1),B(j,2))=1;
        B(j,2)=B(j,2)+1;
        movement(i,j)=6;
    elseif (B(j,1)==162 && B(j,2)+1==65)
        rnd=rand(1);
        if rnd<=0.4
            A(B(j,1)+1,B(j,2))=B(j,3);
            A(B(j,1),B(j,2))=11;
            B(j,1)=B(j,1)+1;
            movement(i,j)=2;
        else
            A(B(j,1),B(j,2)+1)=B(j,3);
            A(B(j,1),B(j,2))=11;
            B(j,2)=B(j,2)+1;
            movement(i,j)=6;
        end
    elseif (B(j,1)==162 && B(j,2)+1==66)
        A(B(j,1),B(j,2)+1)=B(j,3);
        A(B(j,1),B(j,2))=11;
        B(j,2)=B(j,2)+1;
        movement(i,j)=6;
    elseif (B(j,1)==162 && B(j,2)+1==67)
        A(B(j,1),B(j,2)+1)=B(j,3);
        A(B(j,1),B(j,2))=1;
        B(j,2)=B(j,2)+1;
        movement(i,j)=6;
    end
end
end
