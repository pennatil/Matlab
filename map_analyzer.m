%Analize map for entry/exit points
inp=0;
inp=input(sprintf('use new matrix?? 1 for yes, 0 for no',inp))
clc
if inp==1
    clear all
    inp=1;
end
close all
pointn=1;
if inp==1
    A=-1*ones(50,125);
end
S=size(A);
width=S(1,2);
height=S(1,1);
if inp==1
    A(:,10)=1;
    A(:,3)=1;
    A(:,5)=1;
    A(5,:)=1;
    A(7,:)=1;
    A(9,:)=1;
end

for column=1:1:width
    if A(1,column)==1;
        a=num2str(column);
        str=['possible entry/exit point n° ',num2str(pointn),': A(1,',num2str(column),')'];
        disp(str)
        A(1,column)=0.3;
        pointn=pointn+1;
    end
end
for column=1:1:width
    if A(height,column)==1;
        a=num2str(column);
        str=['possible entry/exit point n° ',num2str(pointn),': A(',num2str(height),',',num2str(column),')'];
        disp(str)
        A(height,column)=0.3;
        pointn=pointn+1;
    end
end
for row=1:1:height
    if A(row,1)==1;
        a=num2str(column);
        str=['possible entry/exit point n° ',num2str(pointn),': A(',num2str(row),',1)'];
        disp(str)
        A(row,1)=0.3;
        pointn=pointn+1;
    end
end
for row=1:1:height
    if A(row,column)==1;
        a=num2str(column);
        str=['possible entry/exit point n° ',num2str(pointn),': A(',num2str(row),',',num2str(column),')'];
        disp(str)
        A(row,column)=0.3;
        pointn=pointn+1;
    end
end

imshow(A,'InitialMagnification','fit','colormap',hot)