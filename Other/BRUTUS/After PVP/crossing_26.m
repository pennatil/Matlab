function [A,B,movement,i,j] = crossing_26(A,B,movement,i,j)
if movement(i-1,j)==2
    if (B(j,1)+1==166 && B(j,2)==84)
        A(B(j,1)+1,B(j,2))=B(j,3);
        A(B(j,1),B(j,2))=1;
        B(j,1)=B(j,1)+1;
        movement(i,j)=2;
    elseif (B(j,1)+1==167 && B(j,2)==84)
        if (A(167,84)==26 || A(167,84)==1)
            A(B(j,1)+1,B(j,2))=B(j,3);
            A(B(j,1),B(j,2))=26;
            B(j,1)=B(j,1)+1;
            movement(i,j)=2;
        else
            movement(i,j)=2;
        end
    elseif (B(j,1)+1==168 && B(j,2)==84)
        A(B(j,1)+1,B(j,2))=B(j,3);
        A(B(j,1),B(j,2))=26;
        B(j,1)=B(j,1)+1;
        movement(i,j)=2;
    elseif (B(j,1)+1==169 && B(j,2)==84)
        A(B(j,1)+1,B(j,2))=B(j,3);
        A(B(j,1),B(j,2))=1;
        B(j,1)=B(j,1)+1;
        movement(i,j)=2;
    end
elseif movement(i-1,j)==6
    if (B(j,1)==167 && B(j,2)+1==83)
        A(B(j,1),B(j,2)+1)=B(j,3);
        A(B(j,1),B(j,2))=1;
        B(j,2)=B(j,2)+1;
        movement(i,j)=6;
    elseif (B(j,1)==167 && B(j,2)+1==84)
        if (A(167,84)==26 || A(167,84)==1)
            A(B(j,1),B(j,2)+1)=B(j,3);
            A(B(j,1),B(j,2))=26;
            B(j,2)=B(j,2)+1;
            movement(i,j)=6;
        else
            movement(i,j)=6;
        end
    elseif (B(j,1)==167 && B(j,2)+1==85)
        A(B(j,1)+1,B(j,2))=B(j,3);
        A(B(j,1),B(j,2))=26;
        B(j,1)=B(j,1)+1;
        movement(i,j)=2;
    end    
end
end
