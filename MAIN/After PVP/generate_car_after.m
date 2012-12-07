function [A,B,nCars,inpNCars,movement,i] = generate_car_after(A,B,nCars,inpNCars,movement,i)
%multiplicatore per le prob
m=2;
%North 1
    rdn1=rand(1);
    if rdn1<=m*(7850/69033)
        if A(3,40)==1
            nCars=nCars+1;
            B(nCars,1)=3;
            B(nCars,2)=40;
            B(nCars,3)=0.2 + (0.6-0.2).*rand(1);
            A(B(nCars,1),B(nCars,2))=B(nCars,3);
            movement(i,nCars)=2;
        end
    end
    
    %North 2
    rdn2=rand(1);
    if rdn2<=m*(7850/69033)
        if A(3,42)==1
            nCars=nCars+1;
            B(nCars,1)=3;
            B(nCars,2)=42;
            B(nCars,3)=0.2 + (0.6-0.2).*rand(1);
            A(B(nCars,1),B(nCars,2))=B(nCars,3);
            movement(i,nCars)=2;
        end
    end
    
    %South
    rdn3=rand(1);
    if rdn3<=m*(18265/69033)
        if A(210,3)==1
            nCars=nCars+1;
            B(nCars,1)=210;
            B(nCars,2)=3;
            B(nCars,3)=0.2 + (0.6-0.2).*rand(1);
            A(B(nCars,1),B(nCars,2))=B(nCars,3);
            movement(i,nCars)=6;
        end
    end
    
    %West
    rdn4=rand(1);
    if rdn4<=m*(14423/69033)
        if A(162,3)==1
            nCars=nCars+1;
            B(nCars,1)=162;
            B(nCars,2)=3;
            B(nCars,3)=0.2 + (0.6-0.2).*rand(1);
            A(B(nCars,1),B(nCars,2))=B(nCars,3);
            movement(i,nCars)=6;
        end
    end
    
    %North-East 1
    rdn5=rand(1);
    if rdn5<=m*(11935/69033)
        if A(10,148)==1
            nCars=nCars+1;
            B(nCars,1)=10;
            B(nCars,2)=148;
            B(nCars,3)=0.2 + (0.6-0.2).*rand(1);
            A(B(nCars,1),B(nCars,2))=B(nCars,3);
            movement(i,nCars)=4;
        end
    end
    
    %North-East 2
    rdn8=rand(1);
    if rdn8<=0.4 %%%%%%%%%%%%%%%%%%%%%%%%%missing prob
        if A(3,128)==1
            nCars=nCars+1;
            B(nCars,1)=3;
            B(nCars,2)=128;
            B(nCars,3)=0.2 + (0.6-0.2).*rand(1);
            A(B(nCars,1),B(nCars,2))=B(nCars,3);
            movement(i,nCars)=2;
        end
    end
    
    %East 1
    rdn6=rand(1);
    if rdn6<=m*(3210/69033)
        if A(103,148)==1
            nCars=nCars+1;
            B(nCars,1)=103;
            B(nCars,2)=148;
            B(nCars,3)=0.2 + (0.6-0.2).*rand(1);
            A(B(nCars,1),B(nCars,2))=B(nCars,3);
            movement(i,nCars)=4;
        end
    end
    
    %East 2
    rdn7=rand(1);
    if rdn7<=m*(5500/69033)
        if A(162,148)==1
            nCars=nCars+1;
            B(nCars,1)=162;
            B(nCars,2)=148;
            B(nCars,3)=0.2 + (0.6-0.2).*rand(1);
            A(B(nCars,1),B(nCars,2))=B(nCars,3);
            movement(i,nCars)=4;
        end
    end
    
%{
%North 1







rdn1=rand(1);
if rdn1<=2*(7850/69033)
    if A(3,40)==1
        nCars=nCars+1;
        B(nCars,1)=3;
        B(nCars,2)=40;
        B(nCars,3)=rand(1);
        B(nCars,8)=nCars;
        A(B(nCars,1),B(nCars,2))=B(nCars,3);
        movement(i,nCars)=2;
        B(nCars,6)=3;
        B(nCars,7)=40;
        B(nCars,4)=1;
        B(nCars,5)=1;
    end
end

if (nCars<inpNCars)
    %North 2
    rdn2=rand(1);
    if (rdn2<=2*(7850/69033))
        if A(3,42)==1
            nCars=nCars+1;
            B(nCars,1)=3;
            B(nCars,2)=42;
            B(nCars,3)=rand(1);
            B(nCars,8)=nCars;
            A(B(nCars,1),B(nCars,2))=B(nCars,3);
            movement(i,nCars)=2;
            B(nCars,6)=3;
            B(nCars,7)=42;
            B(nCars,4)=1;
            B(nCars,5)=1;
        end
    end
end

if (nCars<inpNCars)
    %South
    rdn3=rand(1);
    if rdn3<=2*(18265/69033)
        if A(210,3)==1
            nCars=nCars+1;
            B(nCars,1)=210;
            B(nCars,2)=3;
            B(nCars,3)=rand(1);
            B(nCars,8)=nCars;
            A(B(nCars,1),B(nCars,2))=B(nCars,3);
            movement(i,nCars)=6;
            B(nCars,6)=210;
            B(nCars,7)=3;
            B(nCars,4)=1;
            B(nCars,5)=1;
        end
    end
end

if (nCars<inpNCars)
    %West
    rdn4=rand(1);
    if rdn4<=2*(14423/69033)
        if A(162,3)==1
            nCars=nCars+1;
            B(nCars,1)=162;
            B(nCars,2)=3;
            B(nCars,3)=rand(1);
            B(nCars,8)=nCars;
            A(B(nCars,1),B(nCars,2))=B(nCars,3);
            movement(i,nCars)=6;
            B(nCars,6)=162;
            B(nCars,7)=3;
            B(nCars,4)=1;
            B(nCars,5)=1;
        end
    end
end

if (nCars<inpNCars)
    %North-East
    rdn5=rand(1);
    if rdn5<=2*(11935/69033)
        if A(10,148)==1
            nCars=nCars+1;
            B(nCars,1)=10;
            B(nCars,2)=148;
            B(nCars,3)=rand(1);
            B(nCars,8)=nCars;
            A(B(nCars,1),B(nCars,2))=B(nCars,3);
            movement(i,nCars)=4;
            B(nCars,6)=10;
            B(nCars,7)=148;
            B(nCars,4)=1;
            B(nCars,5)=1;
        end
    end
end

if (nCars<inpNCars)
    %East 1
    rdn6=rand(1);
    if rdn6<=2*(3210/69033)
        if A(105,148)==1
            nCars=nCars+1;
            B(nCars,1)=105;
            B(nCars,2)=148;
            B(nCars,3)=rand(1);
            B(nCars,8)=nCars;
            A(B(nCars,1),B(nCars,2))=B(nCars,3);
            movement(i,nCars)=4;
            B(nCars,6)=105;
            B(nCars,7)=148;
            B(nCars,4)=1;
            B(nCars,5)=1;
        end
    end
end

if (nCars<inpNCars)
    %East 2
    rdn7=rand(1);
    if rdn7<=2*(5500/69033)
        if A(162,148)==1
            nCars=nCars+1;
            B(nCars,1)=162;
            B(nCars,2)=148;
            B(nCars,3)=rand(1);
            B(nCars,8)=nCars;
            A(B(nCars,1),B(nCars,2))=B(nCars,3);
            movement(i,nCars)=4;
            B(nCars,6)=162;
            B(nCars,7)=148;
            B(nCars,4)=1;
            B(nCars,5)=1;
        end
    end
end
    %}
end

