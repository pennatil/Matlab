function [A,B,movement,i,j] = crossing_13(A,B,movement,i,j)
if movement(i-1,j)==2
    if (B(j,1)+1==105 && B(j,2)==40)
        A(B(j,1)+1,B(j,2))=B(j,3);
        A(B(j,1),B(j,2))=1;
        B(j,1)=B(j,1)+1;
        movement(i,j)=2;
    elseif (B(j,1)+1==106 && B(j,2)==40)
        rnd=rand(1);
        if rnd<=0.4
            A(B(j,1),B(j,2)-1)=B(j,3);
            A(B(j,1),B(j,2))=13;
            B(j,2)=B(j,2)-1;
            movement(i,j)=4;
        else
            A(B(j,1)+1,B(j,2))=B(j,3);
            A(B(j,1),B(j,2))=13;
            B(j,1)=B(j,1)+1;
            movement(i,j)=2;
        end
    elseif (B(j,1)+1==107 && B(j,2)==40)
        A(B(j,1)+1,B(j,2))=B(j,3);
        A(B(j,1),B(j,2))=13;
        B(j,1)=B(j,1)+1;
        movement(i,j)=2;
    elseif (B(j,1)+1==108 && B(j,2)==40)
        rnd=rand(1);
        if rnd <=0.4
            A(B(j,1),B(j,2)-1)=B(j,3);
            A(B(j,1),B(j,2))=13;
            B(j,2)=B(j,2)-1;
            movement(i,j)=4;
        else
            A(B(j,1)+1,B(j,2))=B(j,3);
            A(B(j,1),B(j,2))=13;
            B(j,1)=B(j,1)+1;
            movement(i,j)=2;
        end
    elseif (B(j,1)+1==109 && B(j,2)==40)
        A(B(j,1)+1,B(j,2))=B(j,3);
        A(B(j,1),B(j,2))=13;
        B(j,1)=B(j,1)+1;
        movement(i,j)=2;
    elseif (B(j,1)+1==110 && B(j,2)==40)
        A(B(j,1)+1,B(j,2))=B(j,3);
        A(B(j,1),B(j,2))=13;
        B(j,1)=B(j,1)+1;
        movement(i,j)=2;
    elseif (B(j,1)+1==111 && B(j,2)==40)
        A(B(j,1)+1,B(j,2))=B(j,3);
        A(B(j,1),B(j,2))=1;
        B(j,1)=B(j,1)+1;
        movement(i,j)=2;
    elseif (B(j,1)+1==105 && B(j,2)==42)
        A(B(j,1)+1,B(j,2))=B(j,3);
        A(B(j,1),B(j,2))=1;
        B(j,1)=B(j,1)+1;
        movement(i,j)=2;
    elseif (B(j,1)+1==106 && B(j,2)==42)
        A(B(j,1)+1,B(j,2))=B(j,3);
        A(B(j,1),B(j,2))=13;
        B(j,1)=B(j,1)+1;
        movement(i,j)=2;
    elseif (B(j,1)+1==107 && B(j,2)==42)
        A(B(j,1)+1,B(j,2))=B(j,3);
        A(B(j,1),B(j,2))=13;
        B(j,1)=B(j,1)+1;
        movement(i,j)=2;
    elseif (B(j,1)+1==108 && B(j,2)==42)
        A(B(j,1)+1,B(j,2))=B(j,3);
        A(B(j,1),B(j,2))=13;
        B(j,1)=B(j,1)+1;
        movement(i,j)=2;
    elseif (B(j,1)+1==109 && B(j,2)==42)
        A(B(j,1)+1,B(j,2))=B(j,3);
        A(B(j,1),B(j,2))=13;
        B(j,1)=B(j,1)+1;
        movement(i,j)=2;
    elseif (B(j,1)+1==110 && B(j,2)==42)
        A(B(j,1)+1,B(j,2))=B(j,3);
        A(B(j,1),B(j,2))=13;
        B(j,1)=B(j,1)+1;
        movement(i,j)=2;
    elseif (B(j,1)+1==111 && B(j,2)==42)
        A(B(j,1)+1,B(j,2))=B(j,3);
        A(B(j,1),B(j,2))=1;
        B(j,1)=B(j,1)+1;
        movement(i,j)=2;
    end
elseif movement(i-1,j)==4
    if (B(j,1)==105 && B(j,2)-1==42)
        A(B(j,1),B(j,2)-1)=B(j,3);
        A(B(j,1),B(j,2))=1;
        B(j,2)=B(j,2)-1;
        movement(i,j)=4;
    elseif (B(j,1)==105 && B(j,2)-1==41)
        A(B(j,1),B(j,2)-1)=B(j,3);
        A(B(j,1),B(j,2))=13;
        B(j,2)=B(j,2)-1;
        movement(i,j)=4;
    elseif (B(j,1)==105 && B(j,2)-1==40)
        A(B(j,1),B(j,2)-1)=B(j,3);
        A(B(j,1),B(j,2))=13;
        B(j,2)=B(j,2)-1;
        movement(i,j)=4;
    elseif (B(j,1)==105 && B(j,2)-1==39)
        A(B(j,1),B(j,2)-1)=B(j,3);
        A(B(j,1),B(j,2))=13;
        B(j,2)=B(j,2)-1;
        movement(i,j)=4;
    elseif (B(j,1)==105 && B(j,2)-1==38)
        A(B(j,1),B(j,2)-1)=B(j,3);
        A(B(j,1),B(j,2))=1;
        B(j,2)=B(j,2)-1;
        movement(i,j)=4;
    elseif (B(j,1)==107 && B(j,2)-1==42)
        A(B(j,1),B(j,2)-1)=B(j,3);
        A(B(j,1),B(j,2))=1;
        B(j,2)=B(j,2)-1;
        movement(i,j)=4;
    elseif (B(j,1)==107 && B(j,2)-1==41)
        A(B(j,1),B(j,2)-1)=B(j,3);
        A(B(j,1),B(j,2))=13;
        B(j,2)=B(j,2)-1;
        movement(i,j)=4;
    elseif (B(j,1)==107 && B(j,2)-1==40)
        A(B(j,1),B(j,2)-1)=B(j,3);
        A(B(j,1),B(j,2))=13;
        B(j,2)=B(j,2)-1;
        movement(i,j)=4;
    elseif (B(j,1)==107 && B(j,2)-1==39)
        A(B(j,1),B(j,2)-1)=B(j,3);
        A(B(j,1),B(j,2))=13;
        B(j,2)=B(j,2)-1;
        movement(i,j)=4;
    elseif (B(j,1)==107 && B(j,2)-1==38)
        A(B(j,1),B(j,2)-1)=B(j,3);
        A(B(j,1),B(j,2))=1;
        B(j,2)=B(j,2)-1;
        movement(i,j)=4;
    elseif (B(j,1)==109 && B(j,2)-1==42)
        A(B(j,1),B(j,2)-1)=B(j,3);
        A(B(j,1),B(j,2))=1;
        B(j,2)=B(j,2)-1;
        movement(i,j)=4;
    elseif (B(j,1)==109 && B(j,2)-1==41)
        rnd=rand(1);
        if rnd <=0.5
            A(B(j,1),B(j,2)-1)=B(j,3);
            A(B(j,1),B(j,2))=13;
            B(j,2)=B(j,2)-1;
            movement(i,j)=4;
        else
            A(B(j,1)+1,B(j,2))=B(j,3);
            A(B(j,1),B(j,2))=13;
            B(j,1)=B(j,1)+1;
            movement(i,j)=2;
        end
    elseif (B(j,1)==109 && B(j,2)-1==40)
        A(B(j,1),B(j,2)-1)=B(j,3);
        A(B(j,1),B(j,2))=13;
        B(j,2)=B(j,2)-1;
        movement(i,j)=4;
    elseif (B(j,1)==109 && B(j,2)-1==39)
        A(B(j,1)+1,B(j,2))=B(j,3);
        A(B(j,1),B(j,2))=13;
        B(j,1)=B(j,1)+1;
        movement(i,j)=2;
    end
    
end
end
