function [A,B,movement,i,j] = crossing_24(A,B,movement,i,j)
if movement(i-1,j)==2
    if (B(j,1)+1==208 && B(j,2)==40)
        A(B(j,1)+1,B(j,2))=B(j,3);
        A(B(j,1),B(j,2))=1;
        B(j,1)=B(j,1)+1;
        movement(i,j)=2;
    elseif (B(j,1)+1==209 && B(j,2)==40)
        A(B(j,1),B(j,2)-1)=B(j,3);
        A(B(j,1),B(j,2))=24;
        B(j,2)=B(j,2)-1;
        movement(i,j)=4;
    end
elseif movement(i-1,j)==6
    if (B(j,1)==210 && B(j,2)+1==40)
        A(B(j,1),B(j,2)+1)=B(j,3);
        A(B(j,1),B(j,2))=1;
        B(j,2)=B(j,2)+1;
        movement(i,j)=6;
    elseif (B(j,1)==210 && B(j,2)+1==41)
        A(B(j,1),B(j,2)+1)=B(j,3);
        A(B(j,1),B(j,2))=24;
        B(j,2)=B(j,2)+1;
        movement(i,j)=6;
    elseif (B(j,1)==210 && B(j,2)+1==42)
        A(B(j,1),B(j,2)+1)=B(j,3);
        A(B(j,1),B(j,2))=24;
        B(j,2)=B(j,2)+1;
        movement(i,j)=6;
    elseif (B(j,1)==210 && B(j,2)+1==43)
        rnd=rand(1);
        if rnd <=0.5
            A(B(j,1),B(j,2)+1)=B(j,3);
            A(B(j,1),B(j,2))=24;
            B(j,2)=B(j,2)+1;
            movement(i,j)=6;
        else
            A(B(j,1)-1,B(j,2))=B(j,3);
            A(B(j,1),B(j,2))=24;
            B(j,1)=B(j,1)-1;
            movement(i,j)=8;
        end
    elseif (B(j,1)==210 && B(j,2)+1==44)
        A(B(j,1),B(j,2)+1)=B(j,3);
        A(B(j,1),B(j,2))=1;
        B(j,2)=B(j,2)+1;
        movement(i,j)=6;
    end
elseif movement(i-1,j)==8
    if (B(j,1)-1==208 && B(j,2)==42)
        A(B(j,1)-1,B(j,2))=B(j,3);
        A(B(j,1),B(j,2))=24;
        B(j,1)=B(j,1)-1;
        movement(i,j)=8;
    elseif (B(j,1)-1==207 && B(j,2)==42)
        A(B(j,1)-1,B(j,2))=B(j,3);
        A(B(j,1),B(j,2))=24;
        B(j,1)=B(j,1)-1;
        movement(i,j)=8;
    elseif (B(j,1)-1==206 && B(j,2)==42)
        A(B(j,1)-1,B(j,2))=B(j,3);
        A(B(j,1),B(j,2))=1;
        B(j,1)=B(j,1)-1;
        movement(i,j)=8;
    end
elseif movement(i-1,j)==4
    if (B(j,1)==208 && B(j,2)-1==42)
        A(B(j,1),B(j,2)-1)=B(j,3);
        A(B(j,1),B(j,2))=1;
        B(j,2)=B(j,2)-1;
        movement(i,j)=4;
    elseif (B(j,1)==208 && B(j,2)-1==41)
        rnd=rand(1);
        if rnd<=0.3
            A(B(j,1)-1,B(j,2))=B(j,3);
            A(B(j,1),B(j,2))=24;
            B(j,1)=B(j,1)-1;
            movement(i,j)=8;
        else
            A(B(j,1),B(j,2)-1)=B(j,3);
            A(B(j,1),B(j,2))=24;
            B(j,2)=B(j,2)-1;
            movement(i,j)=4;
        end
    elseif (B(j,1)==208 && B(j,2)-1==40)
        A(B(j,1),B(j,2)-1)=B(j,3);
        A(B(j,1),B(j,2))=24;
        B(j,2)=B(j,2)-1;
        movement(i,j)=4;
    elseif (B(j,1)==208 && B(j,2)-1==39)
        A(B(j,1),B(j,2)-1)=B(j,3);
        A(B(j,1),B(j,2))=24;
        B(j,2)=B(j,2)-1;
        movement(i,j)=4;
    elseif (B(j,1)==208 && B(j,2)-1==38)
        A(B(j,1),B(j,2)-1)=B(j,3);
        A(B(j,1),B(j,2))=1;
        B(j,2)=B(j,2)-1;
        movement(i,j)=4;
    end
    
end
end
