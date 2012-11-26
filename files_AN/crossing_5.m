function [A,B,movement,i,j] = crossing_5(A,B,movement,i,j)
if movement(i-1,j)==6
    if (B(j,1)==12 && B(j,2)+1==106)
        A(B(j,1),B(j,2)+1)=B(j,3);
        A(B(j,1),B(j,2))=1;
        B(j,2)=B(j,2)+1;
        movement(i,j)=6;
    elseif (B(j,1)==12 && B(j,2)+1==107)
        rnd=rand(1);
        if rnd<=0.3
            A(B(j,1)-1,B(j,2))=B(j,3);
            A(B(j,1),B(j,2))=5;
            B(j,1)=B(j,1)-1;
            movement(i,j)=8;
        else
            A(B(j,1),B(j,2)+1)=B(j,3);
            A(B(j,1),B(j,2))=5;
            B(j,2)=B(j,2)+1;
            movement(i,j)=6;
        end
    elseif (B(j,1)==12 && B(j,2)+1==108)
        A(B(j,1),B(j,2)+1)=B(j,3);
        A(B(j,1),B(j,2))=5;
        B(j,2)=B(j,2)+1;
        movement(i,j)=6;
    elseif (B(j,1)==12 && B(j,2)+1==109)
            A(B(j,1),B(j,2)+1)=B(j,3);
            A(B(j,1),B(j,2))=3;
            B(j,2)=B(j,2)+1;
            movement(i,j)=6;
    end
elseif movement(i-1,j)==8
    if (B(j,1)-1==12 && B(j,2)==106)
        A(B(j,1)-1,B(j,2))=B(j,3);
        A(B(j,1),B(j,2))=1;
        B(j,1)=B(j,1)-1;
        movement(i,j)=8;
    elseif (B(j,1)-1==11 && B(j,2)==106)
        A(B(j,1)-1,B(j,2))=B(j,3);
        A(B(j,1),B(j,2))=5;
        B(j,1)=B(j,1)-1;
        movement(i,j)=8;
    elseif (B(j,1)-1==10 && B(j,2)==106)
        A(B(j,1)-1,B(j,2))=B(j,3);
        A(B(j,1),B(j,2))=5;
        B(j,1)=B(j,1)-1;
        movement(i,j)=8;
    elseif (B(j,1)-1==9 && B(j,2)==106)
        A(B(j,1)-1,B(j,2))=B(j,3);
        A(B(j,1),B(j,2))=5;
        B(j,1)=B(j,1)-1;
        movement(i,j)=8;
    elseif (B(j,1)-1==12 && B(j,2)==108)
        A(B(j,1)-1,B(j,2))=B(j,3);
        A(B(j,1),B(j,2))=1;
        B(j,1)=B(j,1)-1;
        movement(i,j)=8;
    elseif (B(j,1)-1==11 && B(j,2)==108)
        A(B(j,1)-1,B(j,2))=B(j,3);
        A(B(j,1),B(j,2))=5;
        B(j,1)=B(j,1)-1;
        movement(i,j)=8;
    elseif (B(j,1)-1==10 && B(j,2)==108)
        A(B(j,1)-1,B(j,2))=B(j,3);
        A(B(j,1),B(j,2))=5;
        B(j,1)=B(j,1)-1;
        movement(i,j)=8;
    elseif (B(j,1)-1==9 && B(j,2)==108)
        A(B(j,1)-1,B(j,2))=B(j,3);
        A(B(j,1),B(j,2))=5;
        B(j,1)=B(j,1)-1;
        movement(i,j)=8;
    end
elseif movement(i-1,j)==4
    if (B(j,1)==10 && B(j,2)-1==108)
        A(B(j,1),B(j,2)-1)=B(j,3);
        A(B(j,1),B(j,2))=1;
        B(j,2)=B(j,2)-1;
        movement(i,j)=4;
    elseif (B(j,1)==10 && B(j,2)-1==107)
        A(B(j,1),B(j,2)-1)=B(j,3);
        A(B(j,1),B(j,2))=5;
        B(j,2)=B(j,2)-1;
        movement(i,j)=4;
    elseif (B(j,1)==10 && B(j,2)-1==106)
        A(B(j,1),B(j,2)-1)=B(j,3);
        A(B(j,1),B(j,2))=5;
        B(j,2)=B(j,2)-1;
        movement(i,j)=4;
    elseif (B(j,1)==10 && B(j,2)-1==105)
        A(B(j,1),B(j,2)-1)=B(j,3);
        A(B(j,1),B(j,2))=5;
        B(j,2)=B(j,2)-1;
        movement(i,j)=4;
    end
    
end
end
