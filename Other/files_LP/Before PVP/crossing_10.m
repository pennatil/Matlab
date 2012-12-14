function [A,B,movement,i,j] = crossing_10(A,B,movement,i,j)
rdn=rand(1);
if movement(i-1,j)==2
    if (B(j,1)+1==72 && B(j,2)==77)
        A(B(j,1)+1,B(j,2))=B(j,3);
        A(B(j,1),B(j,2))=1;
        B(j,1)=B(j,1)+1;
        movement(i,j)=2;
    elseif (B(j,1)+1==73 && B(j,2)==77)
        rnd=rand(1);
        if rnd<=0.7
            A(B(j,1),B(j,2)-1)=B(j,3);
            A(B(j,1),B(j,2))=10;
            B(j,2)=B(j,2)-1;
            movement(i,j)=4;
        else
            A(B(j,1)+1,B(j,2))=B(j,3);
            A(B(j,1),B(j,2))=10;
            B(j,1)=B(j,1)+1;
            movement(i,j)=2;
        end
    elseif (B(j,1)+1==74 && B(j,2)==77)
        A(B(j,1)+1,B(j,2))=B(j,3);
        A(B(j,1),B(j,2))=10;
        B(j,1)=B(j,1)+1;
        movement(i,j)=2;
    elseif (B(j,1)+1==75 && B(j,2)==77)
        A(B(j,1)+1,B(j,2))=B(j,3);
        A(B(j,1),B(j,2))=1;
        B(j,1)=B(j,1)+1;
        movement(i,j)=2;
    end
elseif movement(i-1,j)==4
    if (B(j,1)==72 && B(j,2)-1==75)
        A(B(j,1),B(j,2)-1)=B(j,3);
        A(B(j,1),B(j,2))=10;
        B(j,2)=B(j,2)-1;
        movement(i,j)=4;
    elseif (B(j,1)==72 && B(j,2)-1==74)
        A(B(j,1),B(j,2)-1)=B(j,3);
        A(B(j,1),B(j,2))=1;
        B(j,2)=B(j,2)-1;
        movement(i,j)=4;
    end
    
end
end
