function [A,B,movement,i,j] = crossing_14(A,B,movement,i,j)
if movement(i-1,j)==8
    if (B(j,1)-1==109 && B(j,2)==56)
        A(B(j,1)-1,B(j,2))=B(j,3);
        A(B(j,1),B(j,2))=1;
        B(j,1)=B(j,1)-1;
        movement(i,j)=8;
    elseif (B(j,1)-1==108 && B(j,2)==56)
        rnd=rand(1);
        if rnd<=0.4
            A(B(j,1),B(j,2)-1)=B(j,3);
            A(B(j,1),B(j,2))=14;
            B(j,2)=B(j,2)-1;
            movement(i,j)=4;
        else
            A(B(j,1)-1,B(j,2))=B(j,3);
            A(B(j,1),B(j,2))=14;
            B(j,1)=B(j,1)-1;
            movement(i,j)=8;
        end
    elseif (B(j,1)-1==107 && B(j,2)==56)
        A(B(j,1)-1,B(j,2))=B(j,3);
        A(B(j,1),B(j,2))=14;
        B(j,1)=B(j,1)-1;
        movement(i,j)=8;
    elseif (B(j,1)-1==106 && B(j,2)==56)
        rnd=rand(1);
        if rnd <=0.5
            A(B(j,1),B(j,2)-1)=B(j,3);
            A(B(j,1),B(j,2))=14;
            B(j,2)=B(j,2)-1;
            movement(i,j)=4;
        else
            A(B(j,1)-1,B(j,2))=B(j,3);
            A(B(j,1),B(j,2))=14;
            B(j,1)=B(j,1)-1;
            movement(i,j)=8;
        end
    elseif (B(j,1)-1==105 && B(j,2)==56)
        A(B(j,1)-1,B(j,2))=B(j,3);
        A(B(j,1),B(j,2))=14;
        B(j,1)=B(j,1)-1;
        movement(i,j)=8;
    elseif (B(j,1)-1==104 && B(j,2)==56)
        A(B(j,1),B(j,2)-1)=B(j,3);
        A(B(j,1),B(j,2))=14;
        B(j,2)=B(j,2)-1;
        movement(i,j)=4;
    elseif (B(j,1)-1==103 && B(j,2)==56)
        A(B(j,1)-1,B(j,2))=B(j,3);
        A(B(j,1),B(j,2))=1;
        B(j,1)=B(j,1)-1;
        movement(i,j)=8;
    elseif (B(j,1)-1==109 && B(j,2)==58)
        A(B(j,1)-1,B(j,2))=B(j,3);
        A(B(j,1),B(j,2))=1;
        B(j,1)=B(j,1)-1;
        movement(i,j)=8;
    elseif (B(j,1)-1==108 && B(j,2)==58)
        A(B(j,1)-1,B(j,2))=B(j,3);
        A(B(j,1),B(j,2))=14;
        B(j,1)=B(j,1)-1;
        movement(i,j)=8;
    elseif (B(j,1)-1==107 && B(j,2)==58)
        A(B(j,1)-1,B(j,2))=B(j,3);
        A(B(j,1),B(j,2))=14;
        B(j,1)=B(j,1)-1;
        movement(i,j)=8;
    elseif (B(j,1)-1==106 && B(j,2)==58)
        A(B(j,1)-1,B(j,2))=B(j,3);
        A(B(j,1),B(j,2))=14;
        B(j,1)=B(j,1)-1;
        movement(i,j)=8;
    elseif (B(j,1)-1==105 && B(j,2)==58)
        A(B(j,1)-1,B(j,2))=B(j,3);
        A(B(j,1),B(j,2))=14;
        B(j,1)=B(j,1)-1;
        movement(i,j)=8;
    elseif (B(j,1)-1==104 && B(j,2)==58)
        A(B(j,1)-1,B(j,2))=B(j,3);
        A(B(j,1),B(j,2))=14;
        B(j,1)=B(j,1)-1;
        movement(i,j)=8;
    elseif (B(j,1)-1==103 && B(j,2)==58)
        A(B(j,1)-1,B(j,2))=B(j,3);
        A(B(j,1),B(j,2))=1;
        B(j,1)=B(j,1)-1;
        movement(i,j)=8;
    end
elseif movement(i-1,j)==4
    if (B(j,1)==105 && B(j,2)-1==58)
        A(B(j,1),B(j,2)-1)=B(j,3);
        A(B(j,1),B(j,2))=1;
        B(j,2)=B(j,2)-1;
        movement(i,j)=4;
    elseif (B(j,1)==105 && B(j,2)-1==57)
        rnd=rand(1);
        if rnd<=0.4
            A(B(j,1)-1,B(j,2))=B(j,3);
            A(B(j,1),B(j,2))=14;
            B(j,1)=B(j,1)-1;
            movement(i,j)=8;
        else
            A(B(j,1),B(j,2)-1)=B(j,3);
            A(B(j,1),B(j,2))=14;
            B(j,2)=B(j,2)-1;
            movement(i,j)=4;
        end
    elseif (B(j,1)==105 && B(j,2)-1==56)
        A(B(j,1),B(j,2)-1)=B(j,3);
        A(B(j,1),B(j,2))=14;
        B(j,2)=B(j,2)-1;
        movement(i,j)=4;
    elseif (B(j,1)==105 && B(j,2)-1==55)
        rnd=rand(1);
        if rnd <=0.5
            A(B(j,1),B(j,2)-1)=B(j,3);
            A(B(j,1),B(j,2))=14;
            B(j,2)=B(j,2)-1;
            movement(i,j)=4;
        else
            A(B(j,1)-1,B(j,2))=B(j,3);
            A(B(j,1),B(j,2))=14;
            B(j,1)=B(j,1)-1;
            movement(i,j)=8;
        end
    elseif (B(j,1)==105 && B(j,2)-1==54)
        A(B(j,1),B(j,2)-1)=B(j,3);
        A(B(j,1),B(j,2))=1;
        B(j,2)=B(j,2)-1;
        movement(i,j)=4;
    elseif (B(j,1)==107 && B(j,2)-1==58)
        A(B(j,1),B(j,2)-1)=B(j,3);
        A(B(j,1),B(j,2))=1;
        B(j,2)=B(j,2)-1;
        movement(i,j)=4;
    elseif (B(j,1)==107 && B(j,2)-1==57)
        A(B(j,1),B(j,2)-1)=B(j,3);
        A(B(j,1),B(j,2))=14;
        B(j,2)=B(j,2)-1;
        movement(i,j)=4;
    elseif (B(j,1)==107 && B(j,2)-1==56)
        A(B(j,1),B(j,2)-1)=B(j,3);
        A(B(j,1),B(j,2))=14;
        B(j,2)=B(j,2)-1;
        movement(i,j)=4;
    elseif (B(j,1)==107 && B(j,2)-1==55)
        A(B(j,1),B(j,2)-1)=B(j,3);
        A(B(j,1),B(j,2))=14;
        B(j,2)=B(j,2)-1;
        movement(i,j)=4;
    elseif (B(j,1)==107 && B(j,2)-1==54)
        A(B(j,1),B(j,2)-1)=B(j,3);
        A(B(j,1),B(j,2))=1;
        B(j,2)=B(j,2)-1;
        movement(i,j)=4;
    elseif (B(j,1)==109 && B(j,2)-1==54)
        A(B(j,1),B(j,2)-1)=B(j,3);
        A(B(j,1),B(j,2))=1;
        B(j,2)=B(j,2)-1;
        movement(i,j)=4;
    end
    
end
end
