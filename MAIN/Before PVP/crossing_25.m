function [A,B,movement,i,j] = crossing_25(A,B,movement,i,j)
if movement(i-1,j)==6
    if (B(j,1)==205 && B(j,2)+1==56)
        A(B(j,1),B(j,2)+1)=B(j,3);
        A(B(j,1),B(j,2))=1;
        B(j,2)=B(j,2)+1;
        movement(i,j)=6;
    elseif (B(j,1)==205 && B(j,2)+1==57)
        rnd=rand(1);
        if rnd<=0.5
            A(B(j,1)-1,B(j,2))=B(j,3);
            A(B(j,1),B(j,2))=25;
            B(j,1)=B(j,1)-1;
            movement(i,j)=8;
        else
            A(B(j,1),B(j,2)+1)=B(j,3);
            A(B(j,1),B(j,2))=25;
            B(j,2)=B(j,2)+1;
            movement(i,j)=6;
        end
    elseif (B(j,1)==205 && B(j,2)+1==58)
        A(B(j,1),B(j,2)+1)=B(j,3);
        A(B(j,1),B(j,2))=25;
        B(j,2)=B(j,2)+1;
        movement(i,j)=6;
    elseif (B(j,1)==205 && B(j,2)+1==59)
        A(B(j,1),B(j,2)+1)=B(j,3);
        A(B(j,1),B(j,2))=1;
        B(j,2)=B(j,2)+1;
        movement(i,j)=6;
    end
elseif movement(i-1,j)==8
    if (B(j,1)-1==203 && B(j,2)==56)
        A(B(j,1)-1,B(j,2))=B(j,3);
        A(B(j,1),B(j,2))=25;
        B(j,1)=B(j,1)-1;
        movement(i,j)=8;
    elseif (B(j,1)-1==202 && B(j,2)==56)
        A(B(j,1)-1,B(j,2))=B(j,3);
        A(B(j,1),B(j,2))=1;
        B(j,1)=B(j,1)-1;
        movement(i,j)=8;
    end
end
end
