function [A,B,movement,i,j] = crossing_3(A,B,movement,i,j)
if movement(i-1,j)==2
    if (B(j,1)+1==12 && B(j,2)==12)
        A(B(j,1)+1,B(j,2))=B(j,3);
        A(B(j,1),B(j,2))=3;
        B(j,1)=B(j,1)+1;
        movement(i,j)=2;
    elseif (B(j,1)+1==13 && B(j,2)==12)
        A(B(j,1)+1,B(j,2))=B(j,3);
        A(B(j,1),B(j,2))=1;
        B(j,1)=B(j,1)+1;
        movement(i,j)=2;
    end
elseif movement(i-1,j)==6
    if (B(j,1)==50 && B(j,2)+1==16)
        A(B(j,1),B(j,2)+1)=B(j,3);
        A(B(j,1),B(j,2))=3;
        B(j,2)=B(j,2)+1;
        movement(i,j)=6;
    elseif (B(j,1)==50 && B(j,2)+1==17)
        A(B(j,1),B(j,2)+1)=B(j,3);
        A(B(j,1),B(j,2))=1;
        B(j,2)=B(j,2)+1;
        movement(i,j)=6;
    end
elseif movement(i-1,j)==8
    if (B(j,1)-1==50 && B(j,2)==14)
        A(B(j,1)-1,B(j,2))=B(j,3);
        A(B(j,1),B(j,2))=1;
        B(j,1)=B(j,1)-1;
        movement(i,j)=8;
    elseif (B(j,1)-1==49 && B(j,2)==14)
        rnd=rand(1);
        if rnd<=0.5
            A(B(j,1),B(j,2)+1)=B(j,3);
            A(B(j,1),B(j,2))=3;
            B(j,2)=B(j,2)+1;
            movement(i,j)=6;
        else
            A(B(j,1)-1,B(j,2))=B(j,3);
            A(B(j,1),B(j,2))=3;
            B(j,1)=B(j,1)-1;
            movement(i,j)=8;
        end
    elseif (B(j,1)-1==48 && B(j,2)==14)
        A(B(j,1)-1,B(j,2))=B(j,3);
        A(B(j,1),B(j,2))=3;
        B(j,1)=B(j,1)-1;
        movement(i,j)=8;
    elseif (B(j,1)-1==47 && B(j,2)==14)
        A(B(j,1)-1,B(j,2))=B(j,3);
        A(B(j,1),B(j,2))=1;
        B(j,1)=B(j,1)-1;
        movement(i,j)=8;
    end
elseif movement(i-1,j)==4
    if (B(j,1)==10 && B(j,2)-1==12)
        A(B(j,1),B(j,2)-1)=B(j,3);
        A(B(j,1),B(j,2))=1;
        B(j,2)=B(j,2)-1;
        movement(i,j)=4;
    elseif (B(j,1)==10 && B(j,2)-1==11)
        rnd=rand(1);
        if rnd<=0.5
            A(B(j,1)+1,B(j,2))=B(j,3);
            A(B(j,1),B(j,2))=3;
            B(j,1)=B(j,1)+1;
            movement(i,j)=2;
        else
            A(B(j,1),B(j,2)-1)=B(j,3);
            A(B(j,1),B(j,2))=3;
            B(j,2)=B(j,2)-1;
            movement(i,j)=4;
        end
    elseif (B(j,1)==10 && B(j,2)-1==10)
        A(B(j,1),B(j,2)-1)=B(j,3);
        A(B(j,1),B(j,2))=3;
        B(j,2)=B(j,2)-1;
        movement(i,j)=4;
    elseif (B(j,1)==10 && B(j,2)-1==9)
        A(B(j,1),B(j,2)-1)=B(j,3);
        A(B(j,1),B(j,2))=1;
        B(j,2)=B(j,2)-1;
        movement(i,j)=4;
    end
    
end
end
