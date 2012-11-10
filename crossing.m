function [A,B,movement,i,j] = crossing(A,B,i,j,movement,cros)
rdn=rand(1);
if cros==2
    if (rdn<=0.4)
        [A,B,movement]=move(A,B,i,j,movement,2);
    elseif (rdn>0.4 && rdn<=0.8)
        [A,B,movement]=move(A,B,i,j,movement,2);
        [A,B,movement]=move(A,B,i,j,movement,6);
    else
        [A,B,movement]=move(A,B,i,j,movement,2);
        [A,B,movement]=move(A,B,i,j,movement,4);
    end
end
end

