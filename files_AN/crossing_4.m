function [A,B,movement,i,j] = crossing_3(A,B,movement,i,j)
rdn=rand(1);
%if the last movement was from north
if movement(i-1,j)==2
    %if the next empty space is in [4,4], go south
    if (B(j,1)+1==4 && B(j,2)==4)
        A(B(j,1)+1,B(j,2))=B(j,3);
        A(B(j,1),B(j,2))=1;
        B(j,1)=B(j,1)+1;
        movement(i,j)=2;
        %if the next empty space is in [5,4], probability of turning west
        %or keep going south
    elseif (B(j,1)+1==5 && B(j,2)==4)
        rnd=rand(1);
        if rnd<=0.3
            A(B(j,1),B(j,2)-1)=B(j,3);
            A(B(j,1),B(j,2))=3;
            B(j,2)=B(j,2)-1;
            movement(i,j)=4;
        else
            A(B(j,1)+1,B(j,2))=B(j,3);
            A(B(j,1),B(j,2))=3;
            B(j,1)=B(j,1)+1;
            movement(i,j)=2;
        end
        %if the next empty space is in [6,4], go south
    elseif (B(j,1)+1==6 && B(j,2)==4)
        A(B(j,1)+1,B(j,2))=B(j,3);
        A(B(j,1),B(j,2))=3;
        B(j,1)=B(j,1)+1;
        movement(i,j)=2;
        %if the next empty space is in [7,4], probability to keep going
        %south or turning east
    elseif (B(j,1)+1==7 && B(j,2)==4)
        rnd=rand(1);
        %if the car came from east, it can't do a U turn so it must go
        %south at this point
        if movement(i-3,j)==4
            A(B(j,1)+1,B(j,2))=B(j,3);
            A(B(j,1),B(j,2))=3;
            B(j,1)=B(j,1)+1;
            movement(i,j)=2;
        elseif rnd <=0.5
            A(B(j,1)+1,B(j,2))=B(j,3);
            A(B(j,1),B(j,2))=3;
            B(j,1)=B(j,1)+1;
            movement(i,j)=2;
        else
            A(B(j,1),B(j,2)+1)=B(j,3);
            A(B(j,1),B(j,2))=3;
            B(j,2)=B(j,2)+1;
            movement(i,j)=6;
        end
    end
elseif movement(i-1,j)==6
    if (B(j,1)==6 && B(j,2)+1==4)
        A(B(j,1),B(j,2)+1)=B(j,3);
        A(B(j,1),B(j,2))=1;
        B(j,2)=B(j,2)+1;
        movement(i,j)=6;
    elseif (B(j,1)==6 && B(j,2)+1==5)
        rnd=rand(1);
        if rnd<=0.3
            A(B(j,1)+1,B(j,2))=B(j,3);
            A(B(j,1),B(j,2))=3;
            B(j,1)=B(j,1)+1;
            movement(i,j)=2;
        else
            A(B(j,1),B(j,2)+1)=B(j,3);
            A(B(j,1),B(j,2))=3;
            B(j,2)=B(j,2)+1;
            movement(i,j)=6;
        end
    elseif (B(j,1)==6 && B(j,2)+1==6)
        A(B(j,1),B(j,2)+1)=B(j,3);
        A(B(j,1),B(j,2))=3;
        B(j,2)=B(j,2)+1;
        movement(i,j)=6;
    elseif (B(j,1)==6 && B(j,2)+1==7)
        rnd=rand(1);
        if movement(i-3,j)==2
            A(B(j,1),B(j,2)+1)=B(j,3);
            A(B(j,1),B(j,2))=3;
            B(j,2)=B(j,2)+1;
            movement(i,j)=6;
        elseif rnd <=0.5
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
    end
elseif movement(i-1,j)==8
    if (B(j,1)-1==6 && B(j,2)==6)
        A(B(j,1)-1,B(j,2))=B(j,3);
        A(B(j,1),B(j,2))=1;
        B(j,1)=B(j,1)-1;
        movement(i,j)=8;
    elseif (B(j,1)-1==5 && B(j,2)==6)
        rnd=rand(1);
        if rnd<=0.3
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
    elseif (B(j,1)-1==4 && B(j,2)==6)
        A(B(j,1)-1,B(j,2))=B(j,3);
        A(B(j,1),B(j,2))=3;
        B(j,1)=B(j,1)-1;
        movement(i,j)=8;
    elseif (B(j,1)-1==3 && B(j,2)==6)
        rnd=rand(1);
        if movement(i-3,j)==6
            A(B(j,1)-1,B(j,2))=B(j,3);
            A(B(j,1),B(j,2))=3;
            B(j,1)=B(j,1)-1;
            movement(i,j)=8;
        elseif rnd <=0.5
            A(B(j,1)-1,B(j,2))=B(j,3);
            A(B(j,1),B(j,2))=3;
            B(j,1)=B(j,1)-1;
            movement(i,j)=8;
        else
            A(B(j,1),B(j,2)-1)=B(j,3);
            A(B(j,1),B(j,2))=3;
            B(j,2)=B(j,2)-1;
            movement(i,j)=4;
        end
    end
elseif movement(i-1,j)==4
    if (B(j,1)==4 && B(j,2)-1==6)
        A(B(j,1),B(j,2)-1)=B(j,3);
        A(B(j,1),B(j,2))=1;
        B(j,2)=B(j,2)-1;
        movement(i,j)=4;
    elseif (B(j,1)==4 && B(j,2)-1==5)
        rnd=rand(1);
        if rnd<=0.3
            A(B(j,1)-1,B(j,2))=B(j,3);
            A(B(j,1),B(j,2))=3;
            B(j,1)=B(j,1)-1;
            movement(i,j)=8;
        else
            A(B(j,1),B(j,2)-1)=B(j,3);
            A(B(j,1),B(j,2))=3;
            B(j,2)=B(j,2)-1;
            movement(i,j)=4;
        end
    elseif (B(j,1)==4 && B(j,2)-1==4)
        A(B(j,1),B(j,2)-1)=B(j,3);
        A(B(j,1),B(j,2))=3;
        B(j,2)=B(j,2)-1;
        movement(i,j)=4;
    elseif (B(j,1)==4 && B(j,2)-1==3)
        rnd=rand(1);
        if movement(i-3,j)==8
            A(B(j,1),B(j,2)-1)=B(j,3);
            A(B(j,1),B(j,2))=3;
            B(j,2)=B(j,2)-1;
            movement(i,j)=4;
        elseif rnd <=0.5
            A(B(j,1),B(j,2)-1)=B(j,3);
            A(B(j,1),B(j,2))=3;
            B(j,2)=B(j,2)-1;
            movement(i,j)=4;
        else
            A(B(j,1)+1,B(j,2))=B(j,3);
            A(B(j,1),B(j,2))=3;
            B(j,1)=B(j,1)+1;
            movement(i,j)=2;
        end
    end
    
end
end
