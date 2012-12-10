function [A,B,movement,i,j] = crossing_12(A,B,movement,i,j)
if movement(i-1,j)==2
    if (B(j,1)+1==105 && B(j,2)==10)
        A(B(j,1)+1,B(j,2))=B(j,3);
        A(B(j,1),B(j,2))=1;
        B(j,1)=B(j,1)+1;
        movement(i,j)=2;
    elseif (B(j,1)+1==106 && B(j,2)==10)
        A(B(j,1)+1,B(j,2))=B(j,3);
        A(B(j,1),B(j,2))=12;
        B(j,1)=B(j,1)+1;
        movement(i,j)=2;
    elseif (B(j,1)+1==107 && B(j,2)==10)
        A(B(j,1)+1,B(j,2))=B(j,3);
        A(B(j,1),B(j,2))=12;
        B(j,1)=B(j,1)+1;
        movement(i,j)=2;
    elseif (B(j,1)+1==108 && B(j,2)==10)
        A(B(j,1)+1,B(j,2))=B(j,3);
        A(B(j,1),B(j,2))=12;
        B(j,1)=B(j,1)+1;
        movement(i,j)=2;
    elseif (B(j,1)+1==109 && B(j,2)==10)
        A(B(j,1)+1,B(j,2))=B(j,3);
        A(B(j,1),B(j,2))=1;
        B(j,1)=B(j,1)+1;
        movement(i,j)=2;
    elseif (B(j,1)+1==105 && B(j,2)==12)
        A(B(j,1)+1,B(j,2))=B(j,3);
        A(B(j,1),B(j,2))=1;
        B(j,1)=B(j,1)+1;
        movement(i,j)=2;
    elseif (B(j,1)+1==106 && B(j,2)==12)
        A(B(j,1)+1,B(j,2))=B(j,3);
        A(B(j,1),B(j,2))=12;
        B(j,1)=B(j,1)+1;
        movement(i,j)=2;
    elseif (B(j,1)+1==107 && B(j,2)==12)
        A(B(j,1)+1,B(j,2))=B(j,3);
        A(B(j,1),B(j,2))=12;
        B(j,1)=B(j,1)+1;
        movement(i,j)=2;
    elseif (B(j,1)+1==108 && B(j,2)==12)
        A(B(j,1)+1,B(j,2))=B(j,3);
        A(B(j,1),B(j,2))=12;
        B(j,1)=B(j,1)+1;
        movement(i,j)=2;
    elseif (B(j,1)+1==109 && B(j,2)==12)
        A(B(j,1)+1,B(j,2))=B(j,3);
        A(B(j,1),B(j,2))=1;
        B(j,1)=B(j,1)+1;
        movement(i,j)=2;
    end
elseif movement(i-1,j)==8
    if (B(j,1)-1==107 && B(j,2)==14)
        if A(107,15)==1
            A(B(j,1)-1,B(j,2))=B(j,3);
            A(B(j,1),B(j,2))=1;
            B(j,1)=B(j,1)-1;
            movement(i,j)=8;
        else rdn=rand(1);
            if rdn<0.95
                A(B(j,1)-1,B(j,2))=B(j,3);
                A(B(j,1),B(j,2))=1;
                B(j,1)=B(j,1)-1;
                movement(i,j)=8;
            else
                movement(i,j)=8;
                B(j,5)=B(j,5)+1;
            end
        end
    elseif (B(j,1)-1==106 && B(j,2)==14)
        A(B(j,1)-1,B(j,2))=B(j,3);
        A(B(j,1),B(j,2))=12;
        B(j,1)=B(j,1)-1;
        movement(i,j)=8;
    elseif (B(j,1)-1==105 && B(j,2)==14)
        A(B(j,1)-1,B(j,2))=B(j,3);
        A(B(j,1),B(j,2))=12;
        B(j,1)=B(j,1)-1;
        movement(i,j)=8;
    elseif (B(j,1)-1==104 && B(j,2)==14)
        A(B(j,1)-1,B(j,2))=B(j,3);
        A(B(j,1),B(j,2))=12;
        B(j,1)=B(j,1)-1;
        movement(i,j)=8;
    elseif (B(j,1)-1==103 && B(j,2)==14)
        A(B(j,1)-1,B(j,2))=B(j,3);
        A(B(j,1),B(j,2))=1;
        B(j,1)=B(j,1)-1;
        movement(i,j)=8;
    end
elseif movement(i-1,j)==4
    if (B(j,1)==105 && B(j,2)-1==14)
        A(B(j,1),B(j,2)-1)=B(j,3);
        A(B(j,1),B(j,2))=1;
        B(j,2)=B(j,2)-1;
        movement(i,j)=4;
    elseif (B(j,1)==105 && B(j,2)-1==13)
        rnd=rand(1);
        if rnd<=0.3
            A(B(j,1)-1,B(j,2))=B(j,3);
            A(B(j,1),B(j,2))=12;
            B(j,1)=B(j,1)-1;
            movement(i,j)=8;
        else
            A(B(j,1),B(j,2)-1)=B(j,3);
            A(B(j,1),B(j,2))=12;
            B(j,2)=B(j,2)-1;
            movement(i,j)=4;
        end
    elseif (B(j,1)==105 && B(j,2)-1==12)
        A(B(j,1),B(j,2)-1)=B(j,3);
        A(B(j,1),B(j,2))=12;
        B(j,2)=B(j,2)-1;
        movement(i,j)=4;
    elseif (B(j,1)==105 && B(j,2)-1==11)
        A(B(j,1),B(j,2)-1)=B(j,3);
        A(B(j,1),B(j,2))=12;
        B(j,2)=B(j,2)-1;
        movement(i,j)=4;
    elseif (B(j,1)==105 && B(j,2)-1==10)
        A(B(j,1),B(j,2)-1)=B(j,3);
        A(B(j,1),B(j,2))=12;
        B(j,2)=B(j,2)-1;
        movement(i,j)=4;
    elseif (B(j,1)==105 && B(j,2)-1==9)
        A(B(j,1)+1,B(j,2))=B(j,3);
        A(B(j,1),B(j,2))=12;
        B(j,1)=B(j,1)+1;
        movement(i,j)=2;
    elseif (B(j,1)==107 && B(j,2)-1==14)
        A(B(j,1),B(j,2)-1)=B(j,3);
        A(B(j,1),B(j,2))=1;
        B(j,2)=B(j,2)-1;
        movement(i,j)=4;
    elseif (B(j,1)==107 && B(j,2)-1==13)
        A(B(j,1),B(j,2)-1)=B(j,3);
        A(B(j,1),B(j,2))=12;
        B(j,2)=B(j,2)-1;
        movement(i,j)=4;
    elseif (B(j,1)==107 && B(j,2)-1==12)
        A(B(j,1),B(j,2)-1)=B(j,3);
        A(B(j,1),B(j,2))=12;
        B(j,2)=B(j,2)-1;
        movement(i,j)=4;
    elseif (B(j,1)==107 && B(j,2)-1==11)
        A(B(j,1)+1,B(j,2))=B(j,3);
        A(B(j,1),B(j,2))=12;
        B(j,1)=B(j,1)+1;
        movement(i,j)=2;
    end
    
end
end
