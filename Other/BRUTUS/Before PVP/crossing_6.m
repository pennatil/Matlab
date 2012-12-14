function [A,B,movement,i,j] = crossing_6(A,B,movement,i,j)
if movement(i-1,j)==2
    if (B(j,1)+1==12 && B(j,2)==77)
        A(B(j,1)+1,B(j,2))=B(j,3);
        A(B(j,1),B(j,2))=6;
        B(j,1)=B(j,1)+1;
        movement(i,j)=2;
    elseif (B(j,1)+1==13 && B(j,2)==77)
        A(B(j,1)+1,B(j,2))=B(j,3);
        A(B(j,1),B(j,2))=6;
        B(j,1)=B(j,1)+1;
        movement(i,j)=2;
    elseif (B(j,1)+1==14 && B(j,2)==77)
        A(B(j,1)+1,B(j,2))=B(j,3);
        A(B(j,1),B(j,2))=1;
        B(j,1)=B(j,1)+1;
        movement(i,j)=2;
    end
elseif movement(i-1,j)==6
    if (B(j,1)==12 && B(j,2)+1==77)
        A(B(j,1),B(j,2)+1)=B(j,3);
        A(B(j,1),B(j,2))=1;
        B(j,2)=B(j,2)+1;
        movement(i,j)=6;
    elseif (B(j,1)==12 && B(j,2)+1==78)
        rnd=rand(1);
        if rnd<=0.3
            A(B(j,1)+1,B(j,2))=B(j,3);
            A(B(j,1),B(j,2))=6;
            B(j,1)=B(j,1)+1;
            movement(i,j)=2;
        else
            A(B(j,1),B(j,2)+1)=B(j,3);
            A(B(j,1),B(j,2))=6;
            B(j,2)=B(j,2)+1;
            movement(i,j)=6;
        end
    elseif (B(j,1)==12 && B(j,2)+1==79)
        A(B(j,1),B(j,2)+1)=B(j,3);
        A(B(j,1),B(j,2))=1;
        B(j,2)=B(j,2)+1;
        movement(i,j)=6;
    end
elseif movement(i-1,j)==4
    if (B(j,1)==10 && B(j,2)-1==77)
        A(B(j,1),B(j,2)-1)=B(j,3);
        A(B(j,1),B(j,2))=1;
        B(j,2)=B(j,2)-1;
        movement(i,j)=4;
    elseif (B(j,1)==10 && B(j,2)-1==76)
        rnd=rand(1);
        if rnd<=0.66
            A(B(j,1)+1,B(j,2))=B(j,3);
            A(B(j,1),B(j,2))=6;
            B(j,1)=B(j,1)+1;
            movement(i,j)=2;
        else
            A(B(j,1),B(j,2)-1)=B(j,3);
            A(B(j,1),B(j,2))=6;
            B(j,2)=B(j,2)-1;
            movement(i,j)=4;
        end
    elseif (B(j,1)==10 && B(j,2)-1==75)
        A(B(j,1),B(j,2)-1)=B(j,3);
        A(B(j,1),B(j,2))=1;
        B(j,2)=B(j,2)-1;
        movement(i,j)=4;
    end
end
end
