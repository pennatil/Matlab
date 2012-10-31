clear all
clc
T=imread('rzF_map.tif');
A=single(T(:,:,4));
clear T;
S=size(A);
sx=S(1,1);
sy=S(1,2);
for row=1:1:sx
    for column=1:1:sy
        if (A(row,column)==0)
            A(row,column)=1;
        else
            A(row,column)=0;
        end
    end
end
imshow(A,'InitialMagnification','fit')