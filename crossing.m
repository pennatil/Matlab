function [A,B,movement,i,j] = crossing(A,B,i,j,movement,cros)
rdn=rand(1);
if cros==2
    if (rdn<=0.4)
        A(B(j,1)+1,B(j,2))=B(j,3);
        A(B(j,1),B(j,2))=1;
        B(j,1)=B(j,1)+1;
        movement(i,j)=2;
        A(B(j,1)+1,B(j,2))=B(j,3);
        A(B(j,1),B(j,2))=2;
        B(j,1)=B(j,1)+1;
        movement(i,j)=2;
    elseif (rdn>0.4 && rdn<=0.8)
        A(B(j,1)+1,B(j,2))=B(j,3);
        A(B(j,1),B(j,2))=1;
        B(j,1)=B(j,1)+1;
        movement(i,j)=2;
        A(B(j,1),B(j,2)+1)=B(j,3);
        A(B(j,1),B(j,2))=2;
        B(j,2)=B(j,2)+1;
        movement(i,j)=6;
    else
        A(B(j,1)+1,B(j,2))=B(j,3);
        A(B(j,1),B(j,2))=1;
        B(j,1)=B(j,1)+1;
        movement(i,j)=2;
        A(B(j,1),B(j,2)-1)=B(j,3);
        A(B(j,1),B(j,2))=2;
        B(j,2)=B(j,2)-1;
        movement(i,j)=4;
    end
end
end

