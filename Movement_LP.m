height=10;
width=10;
nIter=10;
B=ones(height,width);
A=-1*B
A(:,5)=1;
A(5,:)=1;
%starting index for the car
B=[1,5];
%starting point for the car using the index
A(B(1,1),B(1,2))=0.5;
%show first image
imshow(A,'InitialMagnification','fit')
%break
pause(1)
%loop for movements
for i=2:1:nIter
    %if south block is empty
if (A(B(1,1)+1,B(1,2))==1)
    %set next to full
    A(B(1,1)+1,B(1,2))=0.5;
    %set current to empty
    A(B(1,1),B(1,2))=1;
    %update the index
    B(1,1)=B(1,1)+1;
    %if east is empty______process is the same as above
elseif (A(B(1,1),B(1,2)+1)==1)
    A(B(1,1),B(1,2)+1)=0.5;
    A(B(1,1),B(1,2))=1;
    B(1,2)=B(1,2)+1;
    %if north is empty______process is the same as above
elseif (A(B(1,1)-1,B(1,2))==1)
    A(B(1,1)-1,B(1,2))=0.5;
    A(B(1,1),B(1,2))=1;
    B(1,1)=B(1,1)+1;   
    %if east west is empty______process is the same as above
elseif (A(B(1,1),B(1,2)-1)==1)
    A(B(1,1),B(1,2)-1)=0.5;
    A(B(1,1),B(1,2))=1;
    B(1,2)=B(1,2)-1;
end
imshow(A,'InitialMagnification','fit')
pause(0.5)
end