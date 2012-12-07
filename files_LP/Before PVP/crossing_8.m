function [A,B,movement,i,j] = crossing_8(A,B,movement,i,j)
if movement(i-1,j)==2
    if (B(j,1)+1==162 && B(j,2)==25)
        A(B(j,1)+1,B(j,2))=B(j,3);
        A(B(j,1),B(j,2))=8;
        B(j,1)=B(j,1)+1;
        movement(i,j)=2;
    elseif (B(j,1)+1==163 && B(j,2)==25)
        A(B(j,1)+1,B(j,2))=B(j,3);
        A(B(j,1),B(j,2))=1;
        B(j,1)=B(j,1)+1;
        movement(i,j)=2;
    end
elseif movement(i-1,j)==6
    if (B(j,1)==160 && B(j,2)+1==25)
        A(B(j,1),B(j,2)+1)=B(j,3);
        A(B(j,1),B(j,2))=1;
        B(j,2)=B(j,2)+1;
        movement(i,j)=6;
    elseif (B(j,1)==160 && B(j,2)+1==26)
        rnd=rand(1);
        if rnd<=0.4
            A(B(j,1)+1,B(j,2))=B(j,3);
            A(B(j,1),B(j,2))=8;
            B(j,1)=B(j,1)+1;
            movement(i,j)=2;
        else
            A(B(j,1),B(j,2)+1)=B(j,3);
            A(B(j,1),B(j,2))=8;
            B(j,2)=B(j,2)+1;
            movement(i,j)=6;
        end
    elseif (B(j,1)==160 && B(j,2)+1==27)
        A(B(j,1),B(j,2)+1)=B(j,3);
        A(B(j,1),B(j,2))=8;
        B(j,2)=B(j,2)+1;
        movement(i,j)=6;
    elseif (B(j,1)==160 && B(j,2)+1==28)
        A(B(j,1),B(j,2)+1)=B(j,3);
        A(B(j,1),B(j,2))=1;
        B(j,2)=B(j,2)+1;
        movement(i,j)=6;
    end
end
end
