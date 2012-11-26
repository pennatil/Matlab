function [A,B,movement,i,j] = crossing_sel(A,B,movement,i,j)
if (A(B(j,1)+1,B(j,2))==3 || A(B(j,1),B(j,2)+1)==3 || A(B(j,1),B(j,2)-1)==3 || A(B(j,1)-1,B(j,2))==3)
    %function
    [A,B,movement,i,j]=crossing_3(A,B,movement,i,j);
end

end

