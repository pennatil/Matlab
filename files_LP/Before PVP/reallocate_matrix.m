function [M,a_m,j]=reallocate_matrix(M,a_m,j)
M(a_m)=j;
a_m=a_m+1;
end