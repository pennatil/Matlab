%map
clc
clear all
close all
pointn=1;
width=210;
height=330;
A=-1*ones(height,width);

%v(1.1)
A(1:325,5)=1;
%v(2.1)
A(1:325,35)=1;
%v(3.1)
%A(5:327,65)=1;
A(1:143,65)=1;
A(149:330,65)=1;

A(143:149,68)=1;

A(143,65:68)=1;
A(149,65:68)=1;
%v(3.2)
A(323:330,67)=1;
%v(4.1)
%A(1:330,195)=1;
A(1:145,195)=1;

A(145:147,190)=1;

A(145,190:195)=1;
A(147,190:195)=1;

A(147:264,195)=1;
A(266:330,195)=1;

A(264:266,192)=1;

A(264,192:195)=1;
A(266,192:195)=1;
%v(4.2)
%A(1:330,193)=1;
A(1:143,193)=1;

A(143:149,188)=1;

A(143,188:193)=1;
A(149,188:193)=1;

A(149:262,193)=1;
A(268:330,193)=1;

A(262:268,190)=1;

A(262,190:193)=1;
A(268,190:193)=1;
%v(5.1)
%A(205:327,205)=1;
A(205:262,205)=1;
A(268:325,205)=1;

A(262:268,202)=1;

A(262,202:205)=1;
A(268,202:205)=1;
%O(1.1)
A(5,5:209)=1;
%O(1.2)
A(7,5:209)=1;
%O(2.1)
%A(205,65:205)=1;
A(205,65:85)=1;
A(205,175:209)=1;

A(180:205,85)=1;
A(180:205,175)=1;

A(180,85:175)=1;
%O(2.2)
%A(207,65:205)=1;
A(207,65:87)=1;
A(207,173:209)=1;

A(182:207,87)=1;
A(182:207,173)=1;

A(182,87:173)=1;
%O(2.3)
%A(209,65:205)=1;
A(209,65:89)=1;
A(209,171:205)=1;

A(184:209,89)=1;
A(184:209,171)=1;

A(184,89:171)=1;
%O(3.1)
%A(325,65:205)=1;
A(323,1:5)=1;
A(323,65:85)=1;
A(323,175:209)=1;

A(283:323,85)=1;
A(283:323,175)=1;

A(283,85:175)=1;

A(325,1:14)=1;
A(310,14:26)=1;
A(325,26:35)=1;
A(310:325,14)=1;
A(310:325,26)=1;

A(325,35:44)=1;
A(313,44:56)=1;
A(325,56:65)=1;
A(313:325,44)=1;
A(313:325,56)=1;
%O(3.2)
%A(327,65:205)=1;
A(325,65:87)=1;
A(325,173:209)=1;

A(285:325,87)=1;
A(285:325,173)=1;

A(285,87:173)=1;
%R(1)
A(75,5:20)=1;
A(75:105,20)=1;
A(105,20:35)=1;
%R(2.1)
A(220,1:35)=1;
A(220,35:50)=1;
A(205:220,50)=1;
A(205,50:65)=1;
%R(2.2)
A(222,1:37)=1;
A(222,37:52)=1;
A(207:222,52)=1;
A(207,52:65)=1;
%R(3)
A(105,35:50)=1;
A(90:105,50)=1;
A(90,50:65)=1;

%borders
A(1,:)=-1;
A(:,1)=-1;
A(330,:)=-1;
A(:,210)-1;

imshow(A,'InitialMagnification','fit','colormap',hot)

%{
%find starting points on north wall
for column=1:1:width
    if A(1,column)==1;
        a=num2str(column);
        str=['entry point number ',num2str(pointn),' located at A(1,',num2str(column),')'];
        disp(str)
        pointn=pointn+1;
    end
end
%find starting points on south wall
for column=1:1:width
    if A(height,column)==1;
        a=num2str(column);
        str=['entry point number ',num2str(pointn),' located at A(',num2str(height),',',num2str(column),')'];
        disp(str)
        pointn=pointn+1;
    end
end

for row=1:1:height
    if A(height,1)==1;
        a=num2str(column);
        str=['entry point number ',num2str(pointn),' located at A(1',num2str(column),')'];
        disp(str)
        pointn=pointn+1;
    end
end

for row=1:1:height
    if A(height,column)==1;
        a=num2str(column);
        str=['entry point number ',num2str(pointn),' located at A(',num2str(column),',',num2str(column),')'];
        disp(str)
        pointn=pointn+1;
    end
end
%}