function [A,B,movement,i,j] = crossing_16(A,B,movement,i,j)
if movement(i-1,j)==8
    if (B(j,1)-1==101 && B(j,2)==130)
        A(B(j,1)-1,B(j,2))=B(j,3);
        A(B(j,1),B(j,2))=1;
        B(j,1)=B(j,1)-1;
        movement(i,j)=8;
    end
elseif movement(i-1,j)==4
    if (B(j,1)==105 && B(j,2)-1==130)
        A(B(j,1),B(j,2)-1)=B(j,3);
        A(B(j,1),B(j,2))=1;
        B(j,2)=B(j,2)-1;
        movement(i,j)=4;
    elseif (B(j,1)==105 && B(j,2)-1==129)
        A(B(j,1),B(j,2)-1)=B(j,3);
        A(B(j,1),B(j,2))=16;
        B(j,2)=B(j,2)-1;
        movement(i,j)=4;
    elseif (B(j,1)==105 && B(j,2)-1==128)
        A(B(j,1),B(j,2)-1)=B(j,3);
        A(B(j,1),B(j,2))=16;
        B(j,2)=B(j,2)-1;
        movement(i,j)=4;
    elseif (B(j,1)==105 && B(j,2)-1==127)
        A(B(j,1),B(j,2)-1)=B(j,3);
        A(B(j,1),B(j,2))=16;
        B(j,2)=B(j,2)-1;
        movement(i,j)=4;
    elseif (B(j,1)==105 && B(j,2)-1==126)
        A(B(j,1),B(j,2)-1)=B(j,3);
        A(B(j,1),B(j,2))=1;
        B(j,2)=B(j,2)-1;
        movement(i,j)=4;
    elseif (B(j,1)==103 && B(j,2)-1==130)
        A(B(j,1),B(j,2)-1)=B(j,3);
        A(B(j,1),B(j,2))=1;
        B(j,2)=B(j,2)-1;
        movement(i,j)=4;
    elseif (B(j,1)==103 && B(j,2)-1==129)
        rnd=rand(1);
        if rnd<=0.3
            A(B(j,1)-1,B(j,2))=B(j,3);
            A(B(j,1),B(j,2))=16;
            B(j,1)=B(j,1)-1;
            movement(i,j)=8;
        else
            A(B(j,1),B(j,2)-1)=B(j,3);
            A(B(j,1),B(j,2))=16;
            B(j,2)=B(j,2)-1;
            movement(i,j)=4;
        end
    elseif (B(j,1)==103 && B(j,2)-1==128)
        A(B(j,1),B(j,2)-1)=B(j,3);
        A(B(j,1),B(j,2))=16;
        B(j,2)=B(j,2)-1;
        movement(i,j)=4;
    elseif (B(j,1)==103 && B(j,2)-1==127)
        A(B(j,1),B(j,2)-1)=B(j,3);
        A(B(j,1),B(j,2))=16;
        B(j,2)=B(j,2)-1;
        movement(i,j)=4;
    elseif (B(j,1)==103 && B(j,2)-1==126)
        A(B(j,1),B(j,2)-1)=B(j,3);
        A(B(j,1),B(j,2))=1;
        B(j,2)=B(j,2)-1;
        movement(i,j)=4;
    end
elseif movement(i-1,j)==6
    if (B(j,1)==107 && B(j,2)+1==128)
        A(B(j,1),B(j,2)+1)=B(j,3);
        A(B(j,1),B(j,2))=1;
        B(j,2)=B(j,2)+1;
        movement(i,j)=6;
    elseif (B(j,1)==107 && B(j,2)+1==129)
        rnd=rand(1);
        if rnd<=0.5
            A(B(j,1)+1,B(j,2))=B(j,3);
            A(B(j,1),B(j,2))=16;
            B(j,1)=B(j,1)+1;
            movement(i,j)=2;
        else
            A(B(j,1),B(j,2)+1)=B(j,3);
            A(B(j,1),B(j,2))=16;
            B(j,2)=B(j,2)+1;
            movement(i,j)=6;
        end
    elseif (B(j,1)==107 && B(j,2)+1==130)
        A(B(j,1),B(j,2)+1)=B(j,3);
        A(B(j,1),B(j,2))=16;
        B(j,2)=B(j,2)+1;
        movement(i,j)=6;
    elseif (B(j,1)==107 && B(j,2)+1==131)
        A(B(j,1)+1,B(j,2))=B(j,3);
        A(B(j,1),B(j,2))=16;
        B(j,1)=B(j,1)+1;
        movement(i,j)=2;
    end
elseif movement(i-1,j)==2
    if (B(j,1)+1==103 && B(j,2)==128)
        A(B(j,1)+1,B(j,2))=B(j,3);
        A(B(j,1),B(j,2))=1;
        B(j,1)=B(j,1)+1;
        movement(i,j)=2;
    elseif (B(j,1)+1==104 && B(j,2)==128)
        rnd=rand(1);
        if rnd<=0.25
            A(B(j,1),B(j,2)-1)=B(j,3);
            A(B(j,1),B(j,2))=16;
            B(j,2)=B(j,2)-1;
            movement(i,j)=4;
        else
            A(B(j,1)+1,B(j,2))=B(j,3);
            A(B(j,1),B(j,2))=16;
            B(j,1)=B(j,1)+1;
            movement(i,j)=2;
        end
    elseif (B(j,1)+1==105 && B(j,2)==128)
        A(B(j,1)+1,B(j,2))=B(j,3);
        A(B(j,1),B(j,2))=16;
        B(j,1)=B(j,1)+1;
        movement(i,j)=2;
    elseif (B(j,1)+1==106 && B(j,2)==128)
        rnd=rand(1);
        if rnd<=0.25
            A(B(j,1),B(j,2)-1)=B(j,3);
            A(B(j,1),B(j,2))=16;
            B(j,2)=B(j,2)-1;
            movement(i,j)=4;
        else
            A(B(j,1)+1,B(j,2))=B(j,3);
            A(B(j,1),B(j,2))=16;
            B(j,1)=B(j,1)+1;
            movement(i,j)=2;
        end
    elseif (B(j,1)+1==107 && B(j,2)==128)
        A(B(j,1)+1,B(j,2))=B(j,3);
        A(B(j,1),B(j,2))=16;
        B(j,1)=B(j,1)+1;
        movement(i,j)=2;
    elseif (B(j,1)+1==108 && B(j,2)==128)
        A(B(j,1)+1,B(j,2))=B(j,3);
        A(B(j,1),B(j,2))=16;
        B(j,1)=B(j,1)+1;
        movement(i,j)=2;
    elseif (B(j,1)+1==109 && B(j,2)==128)
        A(B(j,1)+1,B(j,2))=B(j,3);
        A(B(j,1),B(j,2))=1;
        B(j,1)=B(j,1)+1;
        movement(i,j)=2;
    elseif (B(j,1)+1==109 && B(j,2)==130)
        A(B(j,1)+1,B(j,2))=B(j,3);
        A(B(j,1),B(j,2))=1;
        B(j,1)=B(j,1)+1;
        movement(i,j)=2;
    end
end
end
