function [A,B,movement,i,j] = prevmove(A,B,movement,i,j)
if (movement(i-1,j)==0)
    movement(i,j)=0;
elseif (movement(i-1,j)==2)%if the previous movement was south, next one cannot be north
    %control for another car
    if (A(B(j,1)+1,B(j,2))==0.3)
        movement(i,j)=2;
        %casual crossing (only working in a 4-ways crossing. to improve
        %for a more general situation
        %elseif (A(B(j,1)+1,B(j,2))==1 && A(B(j,1),B(j,2)+1)==1 && A(B(j,1),B(j,2)-1)==1)
    elseif (A(B(j,1)+1,B(j,2))==2)
        [A,B,movement,i,j]=crossing(A,B,i,j,movement,2);
        %south
    elseif (A(B(j,1)+1,B(j,2))==1)
        [A,B,movement]=move(A,B,i,j,movement,2);
        %east
    elseif (A(B(j,1),B(j,2)+1)==1)
        [A,B,movement]=move(A,B,i,j,movement,6);
        %west
    elseif (A(B(j,1),B(j,2)-1)==1)
        [A,B,movement]=move(A,B,i,j,movement,4);
        %dead-end streets control: it just deletes the car
    else A(B(j,1),B(j,2))=1;
        movement(i,j)=0;
    end
elseif(movement(i-1,j)==8)%if the previous movement was north, next one cannot be south
    %control for another car
    if (A(B(j,1)-1,B(j,2))==0.3)
        movement(i,j)=8;
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
    else A(B(j,1),B(j,2))=1;
        movement(i,j)=0;
    end
elseif(movement(i-1,j)==6)%if the previous movement was east, next one cannot be west
    %control for another car
    if (A(B(j,1),B(j,2)+1)==0.3)
        movement(i,j)=6;
        %east
    elseif (A(B(j,1),B(j,2)+1)==1)
        [A,B,movement]=move(A,B,i,j,movement,6);
        %north
    elseif (A(B(j,1)-1,B(j,2))==1)
        [A,B,movement]=move(A,B,i,j,movement,8);
        %south
    elseif (A(B(j,1)+1,B(j,2))==1)
        [A,B,movement]=move(A,B,i,j,movement,2);
        %dead-end streets control: it just deletes the car
    else A(B(j,1),B(j,2))=1;
        movement(i,j)=0;
    end
elseif(movement(i-1,j)==4)%if the previous movement was west, next one cannot be east
    %control for another car
    if (A(B(j,1),B(j,2)-1)==0.3)
        movement(i,j)=4;
        %west
    elseif (A(B(j,1),B(j,2)-1)==1)
        [A,B,movement]=move(A,B,i,j,movement,4);
        %south
    elseif (A(B(j,1)+1,B(j,2))==1)
        [A,B,movement]=move(A,B,i,j,movement,2);
        %north
    elseif (A(B(j,1)-1,B(j,2))==1)
        [A,B,movement]=move(A,B,i,j,movement,8);
        %dead-end streets control: it just deletes the car
    else A(B(j,1),B(j,2))=1;
        movement(i,j)=0;
    end
end
end

