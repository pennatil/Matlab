function [C,A] = check_points(C,A)
n=0;
for row=1:1:86
   if(A(C(row,1),C(row,2))~=1 && A(C(row,1),C(row,2))~=C(row,3)) 
       C(row,3)=A(C(row,1),C(row,2));
       C(row,4)=C(row,4)+1;
   end
end
clearvars row
end

