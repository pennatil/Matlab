function [A,B,movement,i,j] = crossing_4(A,B,movement,i,j)
if movement(i-1,j)==2
    if (B(j,1)+1==10 && B(j,2)==40)
        A(B(j,1)+1,B(j,2))=B(j,3);
        A(B(j,1),B(j,2))=1;
        B(j,1)=B(j,1)+1;
        movement(i,j)=2;
    elseif (B(j,1)+1==11 && B(j,2)==40)
        rnd=rand(1);
        if rnd<=0.4
            A(B(j,1),B(j,2)-1)=B(j,3);
            A(B(j,1),B(j,2))=4;
            B(j,2)=B(j,2)-1;
            movement(i,j)=4;
        else
            A(B(j,1)+1,B(j,2))=B(j,3);
            A(B(j,1),B(j,2))=4;
            B(j,1)=B(j,1)+1;
            movement(i,j)=2;
        end
    elseif (B(j,1)+1==12 && B(j,2)==40)
        A(B(j,1)+1,B(j,2))=B(j,3);
        A(B(j,1),B(j,2))=4;
        B(j,1)=B(j,1)+1;
        movement(i,j)=2;
    elseif (B(j,1)+1==13 && B(j,2)==40)
        A(B(j,1)+1,B(j,2))=B(j,3);
        A(B(j,1),B(j,2))=4;
        B(j,1)=B(j,1)+1;
        movement(i,j)=2;
    elseif (B(j,1)+1==14 && B(j,2)==40)
        A(B(j,1)+1,B(j,2))=B(j,3);
        A(B(j,1),B(j,2))=4;
        B(j,1)=B(j,1)+1;
        movement(i,j)=2;
    elseif (B(j,1)+1==15 && B(j,2)==40)
        A(B(j,1)+1,B(j,2))=B(j,3);
        A(B(j,1),B(j,2))=4;
        B(j,1)=B(j,1)+1;
        movement(i,j)=2;
    elseif (B(j,1)+1==16 && B(j,2)==40)
        A(B(j,1)+1,B(j,2))=B(j,3);
        A(B(j,1),B(j,2))=1;
        B(j,1)=B(j,1)+1;
        movement(i,j)=2;
    elseif (B(j,1)+1==10 && B(j,2)==42)
        A(B(j,1)+1,B(j,2))=B(j,3);
        A(B(j,1),B(j,2))=1;
        B(j,1)=B(j,1)+1;
        movement(i,j)=2;
    elseif (B(j,1)+1==11 && B(j,2)==42)
        A(B(j,1)+1,B(j,2))=B(j,3);
        A(B(j,1),B(j,2))=4;
        B(j,1)=B(j,1)+1;
        movement(i,j)=2;
    elseif (B(j,1)+1==12 && B(j,2)==42)
        A(B(j,1)+1,B(j,2))=B(j,3);
        A(B(j,1),B(j,2))=4;
        B(j,1)=B(j,1)+1;
        movement(i,j)=2;
    elseif (B(j,1)+1==13 && B(j,2)==42)
        rnd=rand(1);
        if rnd<=0.5
            A(B(j,1)+1,B(j,2))=B(j,3);
            A(B(j,1),B(j,2))=4;
            B(j,1)=B(j,1)+1;
            movement(i,j)=2;
        else
            A(B(j,1),B(j,2)+1)=B(j,3);
            A(B(j,1),B(j,2))=4;
            B(j,2)=B(j,2)+1;
            movement(i,j)=6;
        end
    elseif (B(j,1)+1==14 && B(j,2)==42)
        A(B(j,1)+1,B(j,2))=B(j,3);
        A(B(j,1),B(j,2))=4;
        B(j,1)=B(j,1)+1;
        movement(i,j)=2;
    elseif (B(j,1)+1==15 && B(j,2)==42)
        A(B(j,1)+1,B(j,2))=B(j,3);
        A(B(j,1),B(j,2))=4;
        B(j,1)=B(j,1)+1;
        movement(i,j)=2;
    elseif (B(j,1)+1==16 && B(j,2)==42)
        A(B(j,1)+1,B(j,2))=B(j,3);
        A(B(j,1),B(j,2))=1;
        B(j,1)=B(j,1)+1;
        movement(i,j)=2;
    end
elseif movement(i-1,j)==6
    if (B(j,1)==12 && B(j,2)+1==40)
        A(B(j,1),B(j,2)+1)=B(j,3);
        A(B(j,1),B(j,2))=1;
        B(j,2)=B(j,2)+1;
        movement(i,j)=6;
    elseif (B(j,1)==12 && B(j,2)+1==41)
        A(B(j,1),B(j,2)+1)=B(j,3);
        A(B(j,1),B(j,2))=4;
        B(j,2)=B(j,2)+1;
        movement(i,j)=6;
    elseif (B(j,1)==12 && B(j,2)+1==42)
        A(B(j,1),B(j,2)+1)=B(j,3);
        A(B(j,1),B(j,2))=4;
        B(j,2)=B(j,2)+1;
        movement(i,j)=6;
    elseif (B(j,1)==12 && B(j,2)+1==43)
        A(B(j,1),B(j,2)+1)=B(j,3);
        A(B(j,1),B(j,2))=4;
        B(j,2)=B(j,2)+1;
        movement(i,j)=6;
    elseif (B(j,1)==12 && B(j,2)+1==44)
        A(B(j,1),B(j,2)+1)=B(j,3);
        A(B(j,1),B(j,2))=1;
        B(j,2)=B(j,2)+1;
        movement(i,j)=6;
    elseif (B(j,1)==14 && B(j,2)+1==40)
        A(B(j,1),B(j,2)+1)=B(j,3);
        A(B(j,1),B(j,2))=1;
        B(j,2)=B(j,2)+1;
        movement(i,j)=6;
    elseif (B(j,1)==14 && B(j,2)+1==41)
        rdn=rand(1);
        if rdn <=0.5
            A(B(j,1),B(j,2)+1)=B(j,3);
            A(B(j,1),B(j,2))=4;
            B(j,2)=B(j,2)+1;
            movement(i,j)=6;
        else
            A(B(j,1)+1,B(j,2))=B(j,3);
            A(B(j,1),B(j,2))=4;
            B(j,1)=B(j,1)+1;
            movement(i,j)=2;
        end
    elseif (B(j,1)==14 && B(j,2)+1==42)
        A(B(j,1),B(j,2)+1)=B(j,3);
        A(B(j,1),B(j,2))=4;
        B(j,2)=B(j,2)+1;
        movement(i,j)=6;
    elseif (B(j,1)==14 && B(j,2)+1==43)
        A(B(j,1)+1,B(j,2))=B(j,3);
        A(B(j,1),B(j,2))=4;
        B(j,1)=B(j,1)+1;
        movement(i,j)=2;
    end
elseif movement(i-1,j)==4
    if (B(j,1)==10 && B(j,2)-1==42)
        A(B(j,1),B(j,2)-1)=B(j,3);
        A(B(j,1),B(j,2))=1;
        B(j,2)=B(j,2)-1;
        movement(i,j)=4;
    elseif (B(j,1)==10 && B(j,2)-1==41)
        A(B(j,1),B(j,2)-1)=B(j,3);
        A(B(j,1),B(j,2))=4;
        B(j,2)=B(j,2)-1;
        movement(i,j)=4;
    elseif (B(j,1)==10 && B(j,2)-1==40)
        A(B(j,1),B(j,2)-1)=B(j,3);
        A(B(j,1),B(j,2))=4;
        B(j,2)=B(j,2)-1;
        movement(i,j)=4;
    elseif (B(j,1)==10 && B(j,2)-1==39)
        A(B(j,1),B(j,2)-1)=B(j,3);
        A(B(j,1),B(j,2))=4;
        B(j,2)=B(j,2)-1;
        movement(i,j)=4;
    elseif (B(j,1)==10 && B(j,2)-1==38)
        A(B(j,1),B(j,2)-1)=B(j,3);
        A(B(j,1),B(j,2))=1;
        B(j,2)=B(j,2)-1;
        movement(i,j)=4;
    end
    
end
end
