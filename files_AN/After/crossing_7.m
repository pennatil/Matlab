function [A,B,movement,i,j] = crossing_7(A,B,movement,i,j)
if movement(i-1,j)==2
    if (B(j,1)+1==10 && B(j,2)==56)
        A(B(j,1)+1,B(j,2))=B(j,3);
        A(B(j,1),B(j,2))=1;
        B(j,1)=B(j,1)+1;
        movement(i,j)=2;
    elseif (B(j,1)+1==11 && B(j,2)==56)
        rnd=rand(1);
        if rnd<=0.5
            A(B(j,1),B(j,2)-1)=B(j,3);
            A(B(j,1),B(j,2))=7;
            B(j,2)=B(j,2)-1;
            movement(i,j)=4;
        else
            A(B(j,1)+1,B(j,2))=B(j,3);
            A(B(j,1),B(j,2))=7;
            B(j,1)=B(j,1)+1;
            movement(i,j)=2;
        end
    elseif (B(j,1)+1==12 && B(j,2)==56)
        A(B(j,1)+1,B(j,2))=B(j,3);
        A(B(j,1),B(j,2))=7;
        B(j,1)=B(j,1)+1;
        movement(i,j)=2;
    elseif (B(j,1)+1==13 && B(j,2)==56)
        rnd=rand(1);
        if movement(i-3,j)==4
            A(B(j,1)+1,B(j,2))=B(j,3);
            A(B(j,1),B(j,2))=7;
            B(j,1)=B(j,1)+1;
            movement(i,j)=2;
        elseif rnd <=0.5
            A(B(j,1)+1,B(j,2))=B(j,3);
            A(B(j,1),B(j,2))=7;
            B(j,1)=B(j,1)+1;
            movement(i,j)=2;
        else
            A(B(j,1),B(j,2)+1)=B(j,3);
            A(B(j,1),B(j,2))=7;
            B(j,2)=B(j,2)+1;
            movement(i,j)=6;
        end
    elseif (B(j,1)+1==14 && B(j,2)==56)
        A(B(j,1)+1,B(j,2))=B(j,3);
        A(B(j,1),B(j,2))=1;
        B(j,1)=B(j,1)+1;
        movement(i,j)=2;
    end
elseif movement(i-1,j)==6
    if (B(j,1)==12 && B(j,2)+1==56)
        A(B(j,1),B(j,2)+1)=B(j,3);
        A(B(j,1),B(j,2))=1;
        B(j,2)=B(j,2)+1;
        movement(i,j)=6;
    elseif (B(j,1)==12 && B(j,2)+1==57)
        rnd=rand(1);
        if rnd<=0.5
            A(B(j,1)+1,B(j,2))=B(j,3);
            A(B(j,1),B(j,2))=7;
            B(j,1)=B(j,1)+1;
            movement(i,j)=2;
        else
            A(B(j,1),B(j,2)+1)=B(j,3);
            A(B(j,1),B(j,2))=7;
            B(j,2)=B(j,2)+1;
            movement(i,j)=6;
        end
    elseif (B(j,1)==12 && B(j,2)+1==58)
        A(B(j,1),B(j,2)+1)=B(j,3);
        A(B(j,1),B(j,2))=7;
        B(j,2)=B(j,2)+1;
        movement(i,j)=6;
    elseif (B(j,1)==12 && B(j,2)+1==59)
        rnd=rand(1);
        if movement(i-3,j)==2
            A(B(j,1),B(j,2)+1)=B(j,3);
            A(B(j,1),B(j,2))=7;
            B(j,2)=B(j,2)+1;
            movement(i,j)=6;
        elseif rnd <=0.5
            A(B(j,1),B(j,2)+1)=B(j,3);
            A(B(j,1),B(j,2))=7;
            B(j,2)=B(j,2)+1;
            movement(i,j)=6;
        else
            A(B(j,1)-1,B(j,2))=B(j,3);
            A(B(j,1),B(j,2))=7;
            B(j,1)=B(j,1)-1;
            movement(i,j)=8;
        end
    elseif (B(j,1)==12 && B(j,2)+1==60)
        A(B(j,1),B(j,2)+1)=B(j,3);
        A(B(j,1),B(j,2))=1;
        B(j,2)=B(j,2)+1;
        movement(i,j)=6;
    end
elseif movement(i-1,j)==8
    if (B(j,1)-1==12 && B(j,2)==58)
        A(B(j,1)-1,B(j,2))=B(j,3);
        A(B(j,1),B(j,2))=1;
        B(j,1)=B(j,1)-1;
        movement(i,j)=8;
    elseif (B(j,1)-1==11 && B(j,2)==58)
        rnd=rand(1);
        if rnd<=0.5
            A(B(j,1),B(j,2)+1)=B(j,3);
            A(B(j,1),B(j,2))=7;
            B(j,2)=B(j,2)+1;
            movement(i,j)=6;
        else
            A(B(j,1)-1,B(j,2))=B(j,3);
            A(B(j,1),B(j,2))=7;
            B(j,1)=B(j,1)-1;
            movement(i,j)=8;
        end
    elseif (B(j,1)-1==10 && B(j,2)==58)
        A(B(j,1)-1,B(j,2))=B(j,3);
        A(B(j,1),B(j,2))=7;
        B(j,1)=B(j,1)-1;
        movement(i,j)=8;
    elseif (B(j,1)-1==9 && B(j,2)==58)
        rnd=rand(1);
        if movement(i-3,j)==6
            A(B(j,1)-1,B(j,2))=B(j,3);
            A(B(j,1),B(j,2))=7;
            B(j,1)=B(j,1)-1;
            movement(i,j)=8;
        elseif rnd <=0.5
            A(B(j,1)-1,B(j,2))=B(j,3);
            A(B(j,1),B(j,2))=7;
            B(j,1)=B(j,1)-1;
            movement(i,j)=8;
        else
            A(B(j,1),B(j,2)-1)=B(j,3);
            A(B(j,1),B(j,2))=7;
            B(j,2)=B(j,2)-1;
            movement(i,j)=4;
        end
    elseif (B(j,1)-1==8 && B(j,2)==58)
        A(B(j,1)-1,B(j,2))=B(j,3);
        A(B(j,1),B(j,2))=1;
        B(j,1)=B(j,1)-1;
        movement(i,j)=8;
    end
elseif movement(i-1,j)==4
    if (B(j,1)==10 && B(j,2)-1==58)
        A(B(j,1),B(j,2)-1)=B(j,3);
        A(B(j,1),B(j,2))=1;
        B(j,2)=B(j,2)-1;
        movement(i,j)=4;
    elseif (B(j,1)==10 && B(j,2)-1==57)
        rnd=rand(1);
        if rnd<=0.5
            A(B(j,1)-1,B(j,2))=B(j,3);
            A(B(j,1),B(j,2))=7;
            B(j,1)=B(j,1)-1;
            movement(i,j)=8;
        else
            A(B(j,1),B(j,2)-1)=B(j,3);
            A(B(j,1),B(j,2))=7;
            B(j,2)=B(j,2)-1;
            movement(i,j)=4;
        end
    elseif (B(j,1)==10 && B(j,2)-1==56)
        A(B(j,1),B(j,2)-1)=B(j,3);
        A(B(j,1),B(j,2))=7;
        B(j,2)=B(j,2)-1;
        movement(i,j)=4;
    elseif (B(j,1)==10 && B(j,2)-1==55)
        rnd=rand(1);
        if movement(i-3,j)==8
            A(B(j,1),B(j,2)-1)=B(j,3);
            A(B(j,1),B(j,2))=7;
            B(j,2)=B(j,2)-1;
            movement(i,j)=4;
        elseif rnd <=0.5
            A(B(j,1),B(j,2)-1)=B(j,3);
            A(B(j,1),B(j,2))=7;
            B(j,2)=B(j,2)-1;
            movement(i,j)=4;
        else
            A(B(j,1)+1,B(j,2))=B(j,3);
            A(B(j,1),B(j,2))=7;
            B(j,1)=B(j,1)+1;
            movement(i,j)=2;
        end
    elseif (B(j,1)==10 && B(j,2)-1==54)
        A(B(j,1),B(j,2)-1)=B(j,3);
        A(B(j,1),B(j,2))=1;
        B(j,2)=B(j,2)-1;
        movement(i,j)=4;
    end
    
end
end
