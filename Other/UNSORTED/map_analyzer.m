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

us_v=0;
us_v=input(sprintf('edge width?',us_v))

S=size(A);
width=S(1,2)-2*us_v;
height=S(1,1)-2*us_v;
if inp==1
    A(:,10)=1;
    A(:,3)=1;
    A(:,5)=1;
    A(5,:)=1;
    A(7,:)=1;
    A(9,:)=1;
end

for column=us_v:1:width
    if A(us_v,column)==1;
        a=num2str(column);
        str=['possible entry/exit point n° ',num2str(pointn),': A(',num2str(us_v),',',num2str(column),')'];
        disp(str)
        A(1,column)=0.3;
        pointn=pointn+1;
    end
end
for column=us_v:1:width
    if A(height,column)==1;
        a=num2str(column);
        str=['possible entry/exit point n° ',num2str(pointn),': A(',num2str(height),',',num2str(column),')'];
        disp(str)
        A(height,column)=0.3;
        pointn=pointn+1;
    end
end
for row=us_v:1:height
    if A(row,us_v)==1;
        a=num2str(column);
        str=['possible entry/exit point n° ',num2str(pointn),': A(',num2str(row),',',num2str(us_v),')'];
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