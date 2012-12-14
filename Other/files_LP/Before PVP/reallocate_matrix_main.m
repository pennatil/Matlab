function [B,Z,nCars,a_m,n_of_SZ,Z_MV,movement] = reallocate_matrix_main(B,M,Z,nCars,a_m,n_of_SZ,Z_MV,movement)
if M(1,1)~=Z(:,8)
    SM=size(M);
    
    for i=1:1:SM(1,2)
        SZ=size(Z);
        S_MV=size(movement);
        
        if n_of_SZ>1
            for a1=1:1:8
                Z(SZ(1,1)+1,a1)=B(M(1,i),a1);
            end
            
            for m1=1:1:S_MV(1,1)
                Z_MV(m1,S_MV(1,2)+1)=movement(m1,M(1,i));
            end
            
        elseif n_of_SZ==1
            for a2=1:1:8
                Z(SZ(1,1),a2)=B(M(1,i),a2);
            end
            for m2=1:1:S_MV(1,1)
                Z_MV(m2,S_MV(1,2))=movement(m2,M(1,i));
            end
        end
        clearvars SZ
  
        
   
        SB1=size(B);
        
        if SB1(1,1)>1
            T = B( [1:(M(1,i)-1),(M(1,i)+1):SB1(1,1)],:);
            clearvars B SB1
            B=T;
            clearvars T
            %nCars=nCars-1;
            
            T_M=movement(:,[1:(M(1,i)-1),(M(1,i)+1):S_MV(1,2)]);
            clearvars movement
            movement=T_M;
            clearvars T_M
        elseif SB1(1,1)==1
            clearvars B movement
            
            nCars=nCars-1;
        end
    end
    %S_B=size(B);
    

    a_m=1;
end
clear M
n_of_SZ=n_of_SZ+1;
end

%{
    for row_b=1:1:S_B(1,1)
        for col_b=1:1:S_B(1,2)
            if (B(row_b,col_b)~=-1000)
                T(row_b,col_b)=B(row_b,col_b);
            end
        end
    end
    
    for row_m=1:1:S_MV(1,1)
        for col_m=1:1:S_MV(1,2)
            if (movement(row_m,col_m)~=-1000)
                Z_MV(row_m,col_m)=movement(row_m,col_m);
            end
        end
    end
    
    clearvars movement B
    B=T;
    movement=Z_MV;
    clearvars T
%}
%{
            T = B( [2:SB1(1,1)],:);
            clearvars B SB1
            B=T;
            clearvars T
            nCars=nCars-1;
%}
    
%{
SB=size(B);
y_size=SB(1,1);
x_size=SB(1,2);
if (nCars>1 && nCars<y_size)
%{
SZ=size(Z);
    for a=1:1:8
        Z(SZ(1,1)+1,a)=B(nCars,a);
    end
    T = B( [1:(nCars-1),(nCars+1):end],:);
    clearvars B
    B=T;
    clearvars T SZ
    nCars=nCars-1;
%}
elseif nCars==1
%{
    SZ=size(Z);
    for a=1:1:8
        Z(SZ(1,1)+1,a)=B(nCars,a);
    end
    T = B([(nCars+1):end],:);
    clearvars B
    B=T;
    clearvars T SZ
    nCars=nCars-1;
%}
elseif (nCars==y_size)
%{
    SZ=size(Z);
    for a=1:1:8
        Z(SZ(1,1)+1,a)=B(nCars,a);
    end
    T = B([1:(end-1)],:);
    clearvars B
    B=T;
    clearvars T SZ
    nCars=nCars-1;
%}
%}
%Z is the B matrix
%Z_MV is the mov matrix
%{
M=sort(M,'descend');
if M(1,1)~=Z(:,8)
    S_M=size(M);
    S_Z=size(Z);
    S_MV=size(movement);
    if n_of_SZ>1
        for i=1:1:S_M(1,2)
            for x1=1:1:8
                Z(S_Z(1,i)+1,x1)=B(M(1,i),x1);
            end
            
            for y1=1:1:S_MV(1,1)
                Z_MV(y1,S_MV(i,1)+1)=movement(y1,M(1,i));
            end
        end
    end
end
%}
