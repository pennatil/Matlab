for i=1:1:20
num=rand(1)
if (num>0.5)
    A(1,i)=1;
else
    A(1,i)=0;
end
end

for a=1:1:20
    if (A(1,a)==1)
        disp('prova1')
    else
        disp('prova2')
    end
end
