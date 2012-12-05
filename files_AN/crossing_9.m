function [A,B,movement,i,j] = crossing_9(A,B,movement,i,j)
if movement(i-1,j)==8
    if (B(j,1)-1==103 && B(j,2)==106)
        A(B(j,1)-1,B(j,2))=B(j,3);
        A(B(j,1),B(j,2))=9;
        B(j,1)=B(j,1)-1;
        movement(i,j)=8;
    elseif (B(j,1)-1==102 && B(j,2)==106)
        A(B(j,1)-1,B(j,2))=B(j,3);
        A(B(j,1),B(j,2))=1;
        B(j,1)=B(j,1)-1;
        movement(i,j)=8;
    end
elseif movement(i-1,j)==4
    if (B(j,1)==105 && B(j,2)-1==106)
        A(B(j,1),B(j,2)-1)=B(j,3);
        A(B(j,1),B(j,2))=1;
        B(j,2)=B(j,2)-1;
        movement(i,j)=4;
    elseif (B(j,1)==105 && B(j,2)-1==105)
        rnd=rand(1);
        if rnd<=0.65
            A(B(j,1)-1,B(j,2))=B(j,3);
            A(B(j,1),B(j,2))=9;
            B(j,1)=B(j,1)-1;
            movement(i,j)=8;
        else
            A(B(j,1),B(j,2)-1)=B(j,3);
            A(B(j,1),B(j,2))=9;
            B(j,2)=B(j,2)-1;
            movement(i,j)=4;
        end
    elseif (B(j,1)==105 && B(j,2)-1==104)
        A(B(j,1),B(j,2)-1)=B(j,3);
        A(B(j,1),B(j,2))=9;
        B(j,2)=B(j,2)-1;
        movement(i,j)=4;
    elseif (B(j,1)==105 && B(j,2)-1==103)
        A(B(j,1),B(j,2)-1)=B(j,3);
        A(B(j,1),B(j,2))=1;
        B(j,2)=B(j,2)-1;
        movement(i,j)=4;
    end
    
end
end
