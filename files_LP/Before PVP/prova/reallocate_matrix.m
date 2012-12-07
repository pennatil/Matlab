function [ Z,B,nCars ] = reallocate_matrix(Z,B,nCars)
SB=size(B);
y_size=SB(1,1);
x_size=SB(1,2);
if (nCars>1 && nCars<y_size)
    SZ=size(Z);
    for a=1:1:8
        Z(SZ(1,1)+1,a)=B(nCars,a);
    end
    T = B( [1:(nCars-1),(nCars+1):end],:);
    clearvars B
    B=T;
    clearvars T SZ
    nCars=nCars-1;
elseif nCars==1
    SZ=size(Z);
    for a=1:1:8
        Z(SZ(1,1)+1,a)=B(nCars,a);
    end
    T = B((nCars+1):end],:);
    clearvars B
    B=T;
    clearvars T SZ
    nCars=nCars-1;
elseif (nCars==y_size)
    SZ=size(Z);
    for a=1:1:8
        Z(SZ(1,1)+1,a)=B(nCars,a);
    end
    T = B([1:(end-1)],:);
    clearvars B
    B=T;
    clearvars T SZ
    nCars=nCars-1;
end

