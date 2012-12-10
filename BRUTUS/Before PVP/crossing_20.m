function [A,B,movement,i,j] = crossing_20(A,B,movement,i,j)
if movement(i-1,j)==6
    if (B(j,1)==160 && B(j,2)+1==56)
        A(B(j,1),B(j,2)+1)=B(j,3);
        A(B(j,1),B(j,2))=1;
        B(j,2)=B(j,2)+1;
        movement(i,j)=6;
    elseif (B(j,1)==160 && B(j,2)+1==57)
        rnd=rand(1);
        if rnd<=0.4
            A(B(j,1)-1,B(j,2))=B(j,3);
            A(B(j,1),B(j,2))=20;
            B(j,1)=B(j,1)-1;
            movement(i,j)=8;
        else
            A(B(j,1),B(j,2)+1)=B(j,3);
            A(B(j,1),B(j,2))=20;
            B(j,2)=B(j,2)+1;
            movement(i,j)=6;
        end
    elseif (B(j,1)==160 && B(j,2)+1==58)
        A(B(j,1),B(j,2)+1)=B(j,3);
        A(B(j,1),B(j,2))=20;
        B(j,2)=B(j,2)+1;
        movement(i,j)=6;
    elseif (B(j,1)==160 && B(j,2)+1==59)
        A(B(j,1)-1,B(j,2))=B(j,3);
        A(B(j,1),B(j,2))=20;
        B(j,1)=B(j,1)-1;
        movement(i,j)=8;
    elseif (B(j,1)==162 && B(j,2)+1==56)
        A(B(j,1),B(j,2)+1)=B(j,3);
        A(B(j,1),B(j,2))=1;
        B(j,2)=B(j,2)+1;
        movement(i,j)=6;
    elseif (B(j,1)==162 && B(j,2)+1==57)
        A(B(j,1),B(j,2)+1)=B(j,3);
        A(B(j,1),B(j,2))=20;
        B(j,2)=B(j,2)+1;
        movement(i,j)=6;
    elseif (B(j,1)==162 && B(j,2)+1==58)
        A(B(j,1),B(j,2)+1)=B(j,3);
        A(B(j,1),B(j,2))=20;
        B(j,2)=B(j,2)+1;
        movement(i,j)=6;
    elseif (B(j,1)==162 && B(j,2)+1==59)
        rnd=rand(1);
        if rnd<=0.25
            A(B(j,1)-1,B(j,2))=B(j,3);
            A(B(j,1),B(j,2))=20;
            B(j,1)=B(j,1)-1;
            movement(i,j)=8;
        else
            A(B(j,1),B(j,2)+1)=B(j,3);
            A(B(j,1),B(j,2))=20;
            B(j,2)=B(j,2)+1;
            movement(i,j)=6;
        end
    elseif (B(j,1)==162 && B(j,2)+1==60)
        A(B(j,1),B(j,2)+1)=B(j,3);
        A(B(j,1),B(j,2))=1;
        B(j,2)=B(j,2)+1;
        movement(i,j)=6;
    end
elseif movement(i-1,j)==8
    if (B(j,1)-1==162 && B(j,2)==58)
        A(B(j,1)-1,B(j,2))=B(j,3);
        A(B(j,1),B(j,2))=1;
        B(j,1)=B(j,1)-1;
        movement(i,j)=8;
    elseif (B(j,1)-1==161 && B(j,2)==58)
        rnd=rand(1);
        if rnd<=0.7
            A(B(j,1),B(j,2)+1)=B(j,3);
            A(B(j,1),B(j,2))=20;
            B(j,2)=B(j,2)+1;
            movement(i,j)=6;
        else
            A(B(j,1)-1,B(j,2))=B(j,3);
            A(B(j,1),B(j,2))=20;
            B(j,1)=B(j,1)-1;
            movement(i,j)=8;
        end
    elseif (B(j,1)-1==160 && B(j,2)==58)
        A(B(j,1)-1,B(j,2))=B(j,3);
        A(B(j,1),B(j,2))=20;
        B(j,1)=B(j,1)-1;
        movement(i,j)=8;
    elseif (B(j,1)-1==159 && B(j,2)==58)
        A(B(j,1)-1,B(j,2))=B(j,3);
        A(B(j,1),B(j,2))=20;
        B(j,1)=B(j,1)-1;
        movement(i,j)=8;
    elseif (B(j,1)-1==158 && B(j,2)==58)
        A(B(j,1)-1,B(j,2))=B(j,3);
        A(B(j,1),B(j,2))=1;
        B(j,1)=B(j,1)-1;
        movement(i,j)=8;
    elseif (B(j,1)-1==162 && B(j,2)==56)
        A(B(j,1)-1,B(j,2))=B(j,3);
        A(B(j,1),B(j,2))=1;
        B(j,1)=B(j,1)-1;
        movement(i,j)=8;
    elseif (B(j,1)-1==161 && B(j,2)==56)
        A(B(j,1)-1,B(j,2))=B(j,3);
        A(B(j,1),B(j,2))=20;
        B(j,1)=B(j,1)-1;
        movement(i,j)=8;
    elseif (B(j,1)-1==160 && B(j,2)==56)
        A(B(j,1)-1,B(j,2))=B(j,3);
        A(B(j,1),B(j,2))=20;
        B(j,1)=B(j,1)-1;
        movement(i,j)=8;
    elseif (B(j,1)-1==159 && B(j,2)==56)
        A(B(j,1)-1,B(j,2))=B(j,3);
        A(B(j,1),B(j,2))=20;
        B(j,1)=B(j,1)-1;
        movement(i,j)=8;
    elseif (B(j,1)-1==158 && B(j,2)==56)
        A(B(j,1)-1,B(j,2))=B(j,3);
        A(B(j,1),B(j,2))=1;
        B(j,1)=B(j,1)-1;
        movement(i,j)=8;
    end
end
end
