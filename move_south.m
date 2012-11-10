function move_south(nc,i,A,B)
A(B(nc,1)+1,B(nc,2))=0.5;
A(B(nc,1),B(nc,2))=1;
B(nc,1)=B(nc,1)+1;
movement(nc,i)=2;
end