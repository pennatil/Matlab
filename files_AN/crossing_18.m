function [A,B,movement,i,j] = crossing_18(A,B,movement,i,j)
if movement(i-1,j)==2
    if (B(j,1)+1==160 && B(j,2)==12)
        A(B(j,1)+1,B(j,2))=B(j,3);
        A(B(j,1),B(j,2))=1;
        B(j,1)=B(j,1)+1;
        movement(i,j)=2;
    elseif (B(j,1)+1==161 && B(j,2)==12)
        rnd=rand(1);
        if rnd<=0.4
            A(B(j,1),B(j,2)+1)=B(j,3);
            A(B(j,1),B(j,2))=18;
            B(j,2)=B(j,2)+1;
            movement(i,j)=6;
        else
            A(B(j,1),B(j,2)-1)=B(j,3);
            A(B(j,1),B(j,2))=18;
            B(j,2)=B(j,2)-1;
            movement(i,j)=4;
        end
    end
elseif movement(i-1,j)==6
    if (B(j,1)==160 && B(j,2)+1==14)
        A(B(j,1),B(j,2)+1)=B(j,3);
        A(B(j,1),B(j,2))=18;
        B(j,2)=B(j,2)+1;
        movement(i,j)=6;
    elseif (B(j,1)==160 && B(j,2)+1==15)
        A(B(j,1),B(j,2)+1)=B(j,3);
        A(B(j,1),B(j,2))=18;
        B(j,2)=B(j,2)+1;
        movement(i,j)=6;
    elseif (B(j,1)==160 && B(j,2)+1==16)
        A(B(j,1),B(j,2)+1)=B(j,3);
        A(B(j,1),B(j,2))=1;
        B(j,2)=B(j,2)+1;
        movement(i,j)=6;
    elseif (B(j,1)==162 && B(j,2)+1==12)
        A(B(j,1),B(j,2)+1)=B(j,3);
        A(B(j,1),B(j,2))=1;
        B(j,2)=B(j,2)+1;
        movement(i,j)=6;
    elseif (B(j,1)==162 && B(j,2)+1==13)
        A(B(j,1),B(j,2)+1)=B(j,3);
        A(B(j,1),B(j,2))=18;
        B(j,2)=B(j,2)+1;
        movement(i,j)=6;
    elseif (B(j,1)==162 && B(j,2)+1==14)
        A(B(j,1),B(j,2)+1)=B(j,3);
        A(B(j,1),B(j,2))=18;
        B(j,2)=B(j,2)+1;
        movement(i,j)=6;
    elseif (B(j,1)==162 && B(j,2)+1==15)
        A(B(j,1)-1,B(j,2))=B(j,3);
        A(B(j,1),B(j,2))=18;
        B(j,1)=B(j,1)-1;
        movement(i,j)=8;
    end
elseif movement(i-1,j)==8
    if (B(j,1)-1==160 && B(j,2)==14)
        A(B(j,1)-1,B(j,2))=B(j,3);
        A(B(j,1),B(j,2))=18;
        B(j,1)=B(j,1)-1;
        movement(i,j)=8;
    elseif (B(j,1)-1==159 && B(j,2)==14)
        rnd=rand(1);
        if rnd<=0.33
            A(B(j,1),B(j,2)+1)=B(j,3);
            A(B(j,1),B(j,2))=18;
            B(j,2)=B(j,2)+1;
            movement(i,j)=6;
        else
            A(B(j,1)-1,B(j,2))=B(j,3);
            A(B(j,1),B(j,2))=18;
            B(j,1)=B(j,1)-1;
            movement(i,j)=8;
        end
    elseif (B(j,1)-1==158 && B(j,2)==14)
        A(B(j,1)-1,B(j,2))=B(j,3);
        A(B(j,1),B(j,2))=1;
        B(j,1)=B(j,1)-1;
        movement(i,j)=8;
    end
elseif movement(i-1,j)==4
    if (B(j,1)==160 && B(j,2)-1==10)
        A(B(j,1),B(j,2)-1)=B(j,3);
        A(B(j,1),B(j,2))=1;
        B(j,2)=B(j,2)-1;
        movement(i,j)=4;
    end
    
end
end
