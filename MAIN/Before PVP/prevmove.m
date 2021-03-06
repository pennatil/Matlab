function [A,B,movement,i,j,nCarsOut] = prevmove(A,B,movement,i,j,nCarsOut)
%Probability of making movement 5 AN
m=0.6;

if (movement(i-1,j)==5)
    movement(i,j)=movement(i-2,j);
    B(j,5)=B(j,5)+1;
end
if (movement(i-1,j)==2)%if the previous movement was south, next one cannot be north
    %control for another car
    %if (A(B(j,1)+1,B(j,2))<1 && A(B(j,1)+1,B(j,2))>0 && A(B(j,1),B(j,2)+1)==-1 && A(B(j,1),B(j,2)-1)==-1 && A(B(j,1)+1,B(j,2)-1)<1 && A(B(j,1)+1,B(j,2)-1)>0 && A(B(j,1)+1,B(j,2)+1)<1 && A(B(j,1)+1,B(j,2)+1)>0 && A(B(j,1)+2,B(j,2))==1)
        %[A,B,j,i,movement] = jump(A,B,j,i,movement);
    if (A(B(j,1)+1,B(j,2))>0 && A(B(j,1)+1,B(j,2))<1)
        stop=rand(1);
        if stop<=m
            movement(i,j)=5;
            B(j,5)=B(j,5)+1;
        else
            movement(i,j)=2;
            B(j,5)=B(j,5)+1;
        end
        %     elseif (A(B(j,1)+2,B(j,2))>0 && A(B(j,1)+2,B(j,2))<1)
        %         movement(i,j)=2;
        %casual crossing (only working in a 4-ways crossing. to improve
        %for a more general situation
        %elseif (A(B(j,1)+1,B(j,2))==1 && A(B(j,1),B(j,2)+1)==1 && A(B(j,1),B(j,2)-1)==1)
    elseif (A(B(j,1)+1,B(j,2))>1 || A(B(j,1),B(j,2)+1)>1 || A(B(j,1),B(j,2)-1)>1 || A(B(j,1)-1,B(j,2))>1)
        [A,B,movement,i,j]=crossing_sel(A,B,movement,i,j);
        B(j,4)=B(j,4)+1;
        B(j,5)=B(j,5)+1;
        %south
    elseif (A(B(j,1)+1,B(j,2))==1)
        [A,B,movement]=move(A,B,i,j,movement,2);
        %west
    elseif (A(B(j,1),B(j,2)-1)==1)
        [A,B,movement]=move(A,B,i,j,movement,4);
        %east
    elseif (A(B(j,1),B(j,2)+1)==1)
        [A,B,movement]=move(A,B,i,j,movement,6);
        %dead-end streets control: it just deletes the car
    elseif (A(B(j,1)+1,B(j,2))==-1 && A(B(j,1),B(j,2)-1)==-1 && A(B(j,1),B(j,2)+1)==-1)
        del=rand(1);
        if del<0.4
            A(B(j,1),B(j,2))=1;
            movement(i,j)=0;
            B(j,3)=-2;
            nCarsOut=nCarsOut+1;
        else
            movement(i,j)=2;
            B(j,5)=B(j,5)+1;
        end
    else
        movement(i,j)=2;
        B(j,5)=B(j,5)+1;
    end
elseif(movement(i-1,j)==8)%if the previous movement was north, next one cannot be south
    %if (A(B(j,1)-1,B(j,2))<1 && A(B(j,1)-1,B(j,2))>0 && A(B(j,1),B(j,2)+1)==-1 && A(B(j,1),B(j,2)-1)==-1 && A(B(j,1)-1,B(j,2)-1)<1 && A(B(j,1)-1,B(j,2)-1)>0 && A(B(j,1)-1,B(j,2)+1)<1 && A(B(j,1)-1,B(j,2)+1)>0 && A(B(j,1)-2,B(j,2))==1)
       % [A,B,j,i,movement] = jump(A,B,j,i,movement);
        %control for another car
    if (A(B(j,1)-1,B(j,2))>0 && A(B(j,1)-1,B(j,2))<1)
        stop=rand(1);
        if stop<=m
            movement(i,j)=5;
            B(j,5)=B(j,5)+1;
        else
            movement(i,j)=8;
            B(j,5)=B(j,5)+1;
        end
        %     elseif (A(B(j,1)-2,B(j,2))>0 && A(B(j,1)-2,B(j,2))<1)
        %         movement(i,j)=8;
    elseif (A(B(j,1)+1,B(j,2))>1 || A(B(j,1),B(j,2)+1)>1 || A(B(j,1),B(j,2)-1)>1 || A(B(j,1)-1,B(j,2))>1)
        [A,B,movement,i,j]=crossing_sel(A,B,movement,i,j);
        B(j,4)=B(j,4)+1;
        B(j,5)=B(j,5)+1;
        %north
    elseif (A(B(j,1)-1,B(j,2))==1)
        [A,B,movement]=move(A,B,i,j,movement,8);
        %east
    elseif (A(B(j,1),B(j,2)+1)==1)
        [A,B,movement]=move(A,B,i,j,movement,6);
        %west
    elseif (A(B(j,1),B(j,2)-1)==1)
        [A,B,movement]=move(A,B,i,j,movement,4);
        %dead-end streets control: it just deletes the car
    elseif (A(B(j,1)-1,B(j,2))==-1 && A(B(j,1),B(j,2)+1)==-1 && A(B(j,1),B(j,2)-1)==-1)
        del=rand(1);
        if del<0.4
            A(B(j,1),B(j,2))=1;
            movement(i,j)=0;
            B(j,3)=-2;
            nCarsOut=nCarsOut+1;
        else
            movement(i,j)=8;
            B(j,5)=B(j,5)+1;
        end
    else
        movement(i,j)=8;
        B(j,5)=B(j,5)+1;
    end
elseif(movement(i-1,j)==6)%if the previous movement was east, next one cannot be west
    %if (A(B(j,1),B(j,2)+1)<1 && A(B(j,1),B(j,2)+1)>0 && A(B(j,1)-1,B(j,2))==-1 && A(B(j,1)+1,B(j,2))==-1 && A(B(j,1)+1,B(j,2)-1)<1 && A(B(j,1)+1,B(j,2)-1)>0 && A(B(j,1)+1,B(j,2)+1)<1 && A(B(j,1)+1,B(j,2)+1)>0 && A(B(j,1),B(j,2)+2)==1)
       % [A,B,j,i,movement] = jump(A,B,j,i,movement);
        %control for another car
    if (A(B(j,1),B(j,2)+1)>0 && A(B(j,1),B(j,2)+1)<1)
        stop=rand(1);
        if stop<=m
            movement(i,j)=5;
            B(j,5)=B(j,5)+1;
        else
            movement(i,j)=6;
            B(j,5)=B(j,5)+1;
        end
        %     elseif (A(B(j,1),B(j,2)+2)>0 && A(B(j,1),B(j,2)+2)<1)
        %         movement(i,j)=6;
    elseif (A(B(j,1)+1,B(j,2))>1 || A(B(j,1),B(j,2)+1)>1 || A(B(j,1),B(j,2)-1)>1 || A(B(j,1)-1,B(j,2))>1)
        [A,B,movement,i,j]=crossing_sel(A,B,movement,i,j);
        B(j,4)=B(j,4)+1;
        B(j,5)=B(j,5)+1;
        %east
    elseif (A(B(j,1),B(j,2)+1)==1)
        [A,B,movement]=move(A,B,i,j,movement,6);
        %south
    elseif (A(B(j,1)+1,B(j,2))==1)
        [A,B,movement]=move(A,B,i,j,movement,2);
        %north
    elseif (A(B(j,1)-1,B(j,2))==1)
        [A,B,movement]=move(A,B,i,j,movement,8);
        %dead-end streets control: it just deletes the car
    elseif (A(B(j,1),B(j,2)+1)==-1 && A(B(j,1)+1,B(j,2))==-1 && A(B(j,1)-1,B(j,2))==-1)
        del=rand(1);
        if del<0.4
            A(B(j,1),B(j,2))=1;
            movement(i,j)=0;
            B(j,3)=-2;
            nCarsOut=nCarsOut+1;
        else
            movement(i,j)=6;
            B(j,5)=B(j,5)+1;
        end
    else
        movement(i,j)=6;
        B(j,5)=B(j,5)+1;
    end
elseif(movement(i-1,j)==4)%if the previous movement was west, next one cannot be east
    %if (A(B(j,1),B(j,2)-1)<1 && A(B(j,1),B(j,2)-1)>0 && A(B(j,1)-1,B(j,2))==-1 && A(B(j,1)+1,B(j,2))==-1 && A(B(j,1)-1,B(j,2)-1)<1 && A(B(j,1)-1,B(j,2)-1)>0 && A(B(j,1)-1,B(j,2)+1)<1 && A(B(j,1)-1,B(j,2)+1)>0 && A(B(j,1),B(j,2)-2)==1)
      %  [A,B,j,i,movement] = jump(A,B,j,i,movement);
        %control for another car
    if (A(B(j,1),B(j,2)-1)>0 && A(B(j,1),B(j,2)-1)<1)
        stop=rand(1);
        if stop<=m
            movement(i,j)=5;
            B(j,5)=B(j,5)+1;
        else
            movement(i,j)=4;
            B(j,5)=B(j,5)+1;
        end
        %     elseif (A(B(j,1),B(j,2)-2)>0 && A(B(j,1),B(j,2)-2)<1)
        %         movement(i,j)=4;
    elseif (A(B(j,1)+1,B(j,2))>1 || A(B(j,1),B(j,2)+1)>1 || A(B(j,1),B(j,2)-1)>1 || A(B(j,1)-1,B(j,2))>1)
        [A,B,movement,i,j]=crossing_sel(A,B,movement,i,j);
        B(j,4)=B(j,4)+1;
        B(j,5)=B(j,5)+1;
        %west
    elseif (A(B(j,1),B(j,2)-1)==1)
        [A,B,movement]=move(A,B,i,j,movement,4);
        %north
    elseif (A(B(j,1)-1,B(j,2))==1)
        [A,B,movement]=move(A,B,i,j,movement,8);
        %south
    elseif (A(B(j,1)+1,B(j,2))==1)
        [A,B,movement]=move(A,B,i,j,movement,2);
        %dead-end streets control: it just deletes the car
    elseif (A(B(j,1),B(j,2)-1)==-1 && A(B(j,1)-1,B(j,2))==-1 && A(B(j,1)+1,B(j,2))==-1)
        del=rand(1);
        if del<0.4
            A(B(j,1),B(j,2))=1;
            movement(i,j)=0;
            B(j,3)=-2;
            nCarsOut=nCarsOut+1;
        else
            movement(i,j)=4;
            B(j,5)=B(j,5)+1;
        end
    else
        movement(i,j)=4;
        B(j,5)=B(j,5)+1;
    end
end
end

