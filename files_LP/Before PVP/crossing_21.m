function [A,B,movement,i,j] = crossing_21(A,B,movement,i,j)
if movement(i-1,j)==2
    if (B(j,1)+1==162 && B(j,2)==75)
        A(B(j,1)+1,B(j,2))=B(j,3);
        A(B(j,1),B(j,2))=1;
        B(j,1)=B(j,1)+1;
        movement(i,j)=2;
    elseif (B(j,1)+1==163 && B(j,2)==75)
        A(B(j,1)+1,B(j,2))=B(j,3);
        A(B(j,1),B(j,2))=21;
        B(j,1)=B(j,1)+1;
        movement(i,j)=2;
    elseif (B(j,1)+1==164 && B(j,2)==75)
        A(B(j,1)+1,B(j,2))=B(j,3);
        A(B(j,1),B(j,2))=21;
        B(j,1)=B(j,1)+1;
        movement(i,j)=2;
    elseif (B(j,1)+1==165 && B(j,2)==75)
        A(B(j,1)+1,B(j,2))=B(j,3);
        A(B(j,1),B(j,2))=21;
        B(j,1)=B(j,1)+1;
        movement(i,j)=2;
    elseif (B(j,1)+1==166 && B(j,2)==75)
        A(B(j,1)+1,B(j,2))=B(j,3);
        A(B(j,1),B(j,2))=1;
        B(j,1)=B(j,1)+1;
        movement(i,j)=2;
    elseif (B(j,1)+1==162 && B(j,2)==77)
        A(B(j,1)+1,B(j,2))=B(j,3);
        A(B(j,1),B(j,2))=1;
        B(j,1)=B(j,1)+1;
        movement(i,j)=2;
    elseif (B(j,1)+1==163 && B(j,2)==77)
        A(B(j,1),B(j,2)+1)=B(j,3);
        A(B(j,1),B(j,2))=21;
        B(j,2)=B(j,2)+1;
        movement(i,j)=6;
    end
elseif movement(i-1,j)==6
    if (B(j,1)==164 && B(j,2)+1==75)
        A(B(j,1),B(j,2)+1)=B(j,3);
        A(B(j,1),B(j,2))=1;
        B(j,2)=B(j,2)+1;
        movement(i,j)=6;
    elseif (B(j,1)==164 && B(j,2)+1==76)
        rnd=rand(1);
        if rnd<=0.4
            A(B(j,1)+1,B(j,2))=B(j,3);
            A(B(j,1),B(j,2))=21;
            B(j,1)=B(j,1)+1;
            movement(i,j)=2;
        else
            A(B(j,1),B(j,2)+1)=B(j,3);
            A(B(j,1),B(j,2))=21;
            B(j,2)=B(j,2)+1;
            movement(i,j)=6;
        end
    elseif (B(j,1)==164 && B(j,2)+1==77)
        A(B(j,1),B(j,2)+1)=B(j,3);
        A(B(j,1),B(j,2))=21;
        B(j,2)=B(j,2)+1;
        movement(i,j)=6;
    elseif (B(j,1)==164 && B(j,2)+1==78)
        A(B(j,1),B(j,2)+1)=B(j,3);
        A(B(j,1),B(j,2))=21;
        B(j,2)=B(j,2)+1;
        movement(i,j)=6;
    elseif (B(j,1)==164 && B(j,2)+1==79)
        A(B(j,1),B(j,2)+1)=B(j,3);
        A(B(j,1),B(j,2))=1;
        B(j,2)=B(j,2)+1;
        movement(i,j)=6;
    elseif (B(j,1)==162 && B(j,2)+1==75)
        A(B(j,1),B(j,2)+1)=B(j,3);
        A(B(j,1),B(j,2))=1;
        B(j,2)=B(j,2)+1;
        movement(i,j)=6;
    elseif (B(j,1)==162 && B(j,2)+1==76)
        A(B(j,1),B(j,2)+1)=B(j,3);
        A(B(j,1),B(j,2))=21;
        B(j,2)=B(j,2)+1;
        movement(i,j)=6;
    elseif (B(j,1)==162 && B(j,2)+1==77)
        A(B(j,1),B(j,2)+1)=B(j,3);
        A(B(j,1),B(j,2))=21;
        B(j,2)=B(j,2)+1;
        movement(i,j)=6;
    elseif (B(j,1)==162 && B(j,2)+1==78)
        A(B(j,1),B(j,2)+1)=B(j,3);
        A(B(j,1),B(j,2))=21;
        B(j,2)=B(j,2)+1;
        movement(i,j)=6;
    elseif (B(j,1)==162 && B(j,2)+1==79)
        A(B(j,1),B(j,2)+1)=B(j,3);
        A(B(j,1),B(j,2))=1;
        B(j,2)=B(j,2)+1;
        movement(i,j)=6;
    end
elseif movement(i-1,j)==8
    if (B(j,1)-1==164 && B(j,2)==77)
        A(B(j,1)-1,B(j,2))=B(j,3);
        A(B(j,1),B(j,2))=1;
        B(j,1)=B(j,1)-1;
        movement(i,j)=8;
    elseif (B(j,1)-1==163 && B(j,2)==77)
        A(B(j,1),B(j,2)+1)=B(j,3);
        A(B(j,1),B(j,2))=21;
        B(j,2)=B(j,2)+1;
        movement(i,j)=6;
end
end
