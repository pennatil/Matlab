function [A,B,movement,i,j] = crossing_17(A,B,movement,i,j)
if movement(i-1,j)==8
    if (B(j,1)-1==107 && B(j,2)==138)
        A(B(j,1)-1,B(j,2))=B(j,3);
        A(B(j,1),B(j,2))=1;
        B(j,1)=B(j,1)-1;
        movement(i,j)=8;
    elseif (B(j,1)-1==106 && B(j,2)==138)
        A(B(j,1),B(j,2)-1)=B(j,3);
        A(B(j,1),B(j,2))=17;
        B(j,2)=B(j,2)-1;
        movement(i,j)=4;
    elseif (B(j,1)-1==107 && B(j,2)==140)
        A(B(j,1)-1,B(j,2))=B(j,3);
        A(B(j,1),B(j,2))=1;
        B(j,1)=B(j,1)-1;
        movement(i,j)=8;
    elseif (B(j,1)-1==106 && B(j,2)==140)
        A(B(j,1)-1,B(j,2))=B(j,3);
        A(B(j,1),B(j,2))=1;
        B(j,1)=B(j,1)-1;
        movement(i,j)=8;
    elseif (B(j,1)-1==105 && B(j,2)==140)
        A(B(j,1)-1,B(j,2))=B(j,3);
        A(B(j,1),B(j,2))=17;
        B(j,1)=B(j,1)-1;
        movement(i,j)=8;
    elseif (B(j,1)-1==104 && B(j,2)==140)
        A(B(j,1),B(j,2)-1)=B(j,3);
        A(B(j,1),B(j,2))=17;
        B(j,2)=B(j,2)-1;
        movement(i,j)=4;
    end
elseif movement(i-1,j)==4
    if (B(j,1)==105 && B(j,2)-1==140)
        A(B(j,1),B(j,2)-1)=B(j,3);
        A(B(j,1),B(j,2))=1;
        B(j,2)=B(j,2)-1;
        movement(i,j)=4;
    elseif (B(j,1)==105 && B(j,2)-1==139)
        A(B(j,1),B(j,2)-1)=B(j,3);
        A(B(j,1),B(j,2))=17;
        B(j,2)=B(j,2)-1;
        movement(i,j)=4;
    elseif (B(j,1)==105 && B(j,2)-1==138)
        A(B(j,1),B(j,2)-1)=B(j,3);
        A(B(j,1),B(j,2))=17;
        B(j,2)=B(j,2)-1;
        movement(i,j)=4;
    elseif (B(j,1)==105 && B(j,2)-1==137)
        A(B(j,1),B(j,2)-1)=B(j,3);
        A(B(j,1),B(j,2))=17;
        B(j,2)=B(j,2)-1;
        movement(i,j)=4;
    elseif (B(j,1)==105 && B(j,2)-1==136)
        A(B(j,1),B(j,2)-1)=B(j,3);
        A(B(j,1),B(j,2))=1;
        B(j,2)=B(j,2)-1;
        movement(i,j)=4;
    elseif (B(j,1)==107 && B(j,2)-1==136)
        A(B(j,1),B(j,2)-1)=B(j,3);
        A(B(j,1),B(j,2))=1;
        B(j,2)=B(j,2)-1;
        movement(i,j)=4;
    end
    
end
end
