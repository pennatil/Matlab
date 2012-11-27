function [A,B,movement,i,j] = crossing_sel(A,B,movement,i,j)
    %3
if (A(B(j,1)+1,B(j,2))==3 || A(B(j,1),B(j,2)+1)==3 || A(B(j,1),B(j,2)-1)==3 || A(B(j,1)-1,B(j,2))==3)
    [A,B,movement,i,j]=crossing_3(A,B,movement,i,j);
    %4
elseif (A(B(j,1)+1,B(j,2))==4 || A(B(j,1),B(j,2)+1)==4 || A(B(j,1),B(j,2)-1)==4 || A(B(j,1)-1,B(j,2))==4)
    [A,B,movement,i,j]=crossing_4(A,B,movement,i,j);
    %5
elseif (A(B(j,1)+1,B(j,2))==5 || A(B(j,1),B(j,2)+1)==5 || A(B(j,1),B(j,2)-1)==5 || A(B(j,1)-1,B(j,2))==5)
    [A,B,movement,i,j]=crossing_5(A,B,movement,i,j);
    %6
elseif (A(B(j,1)+1,B(j,2))==6 || A(B(j,1),B(j,2)+1)==6 || A(B(j,1),B(j,2)-1)==6 || A(B(j,1)-1,B(j,2))==6)
    [A,B,movement,i,j]=crossing_6(A,B,movement,i,j);
    %7
elseif (A(B(j,1)+1,B(j,2))==7 || A(B(j,1),B(j,2)+1)==7 || A(B(j,1),B(j,2)-1)==7 || A(B(j,1)-1,B(j,2))==7)
    [A,B,movement,i,j]=crossing_7(A,B,movement,i,j);
    %9
elseif (A(B(j,1)+1,B(j,2))==9 || A(B(j,1),B(j,2)+1)==9 || A(B(j,1),B(j,2)-1)==9 || A(B(j,1)-1,B(j,2))==9)
    [A,B,movement,i,j]=crossing_9(A,B,movement,i,j);
    %10
elseif (A(B(j,1)+1,B(j,2))==10 || A(B(j,1),B(j,2)+1)==10 || A(B(j,1),B(j,2)-1)==10 || A(B(j,1)-1,B(j,2))==10)
    [A,B,movement,i,j]=crossing_10(A,B,movement,i,j);
    %12
elseif (A(B(j,1)+1,B(j,2))==12 || A(B(j,1),B(j,2)+1)==12 || A(B(j,1),B(j,2)-1)==12 || A(B(j,1)-1,B(j,2))==12)
    [A,B,movement,i,j]=crossing_12(A,B,movement,i,j);
    %13
elseif (A(B(j,1)+1,B(j,2))==13 || A(B(j,1),B(j,2)+1)==13 || A(B(j,1),B(j,2)-1)==13 || A(B(j,1)-1,B(j,2))==13)
    [A,B,movement,i,j]=crossing_13(A,B,movement,i,j);
    %14
elseif (A(B(j,1)+1,B(j,2))==14 || A(B(j,1),B(j,2)+1)==14 || A(B(j,1),B(j,2)-1)==14 || A(B(j,1)-1,B(j,2))==14)
    [A,B,movement,i,j]=crossing_14(A,B,movement,i,j);
    %15
elseif (A(B(j,1)+1,B(j,2))==15 || A(B(j,1),B(j,2)+1)==15 || A(B(j,1),B(j,2)-1)==15 || A(B(j,1)-1,B(j,2))==15)
    [A,B,movement,i,j]=crossing_15(A,B,movement,i,j);
    %16
elseif (A(B(j,1)+1,B(j,2))==16 || A(B(j,1),B(j,2)+1)==16 || A(B(j,1),B(j,2)-1)==16 || A(B(j,1)-1,B(j,2))==16)
    [A,B,movement,i,j]=crossing_16(A,B,movement,i,j);
    %17
elseif (A(B(j,1)+1,B(j,2))==17 || A(B(j,1),B(j,2)+1)==17 || A(B(j,1),B(j,2)-1)==17 || A(B(j,1)-1,B(j,2))==17)
    [A,B,movement,i,j]=crossing_17(A,B,movement,i,j);
    %18
elseif (A(B(j,1)+1,B(j,2))==18 || A(B(j,1),B(j,2)+1)==18 || A(B(j,1),B(j,2)-1)==18 || A(B(j,1)-1,B(j,2))==18)
    [A,B,movement,i,j]=crossing_18(A,B,movement,i,j);
    %19
elseif (A(B(j,1)+1,B(j,2))==19 || A(B(j,1),B(j,2)+1)==19 || A(B(j,1),B(j,2)-1)==19 || A(B(j,1)-1,B(j,2))==19)
    [A,B,movement,i,j]=crossing_19(A,B,movement,i,j);
    %20
elseif (A(B(j,1)+1,B(j,2))==20 || A(B(j,1),B(j,2)+1)==20 || A(B(j,1),B(j,2)-1)==20 || A(B(j,1)-1,B(j,2))==20)
    [A,B,movement,i,j]=crossing_20(A,B,movement,i,j);
    %21
elseif (A(B(j,1)+1,B(j,2))==21 || A(B(j,1),B(j,2)+1)==21 || A(B(j,1),B(j,2)-1)==21 || A(B(j,1)-1,B(j,2))==21)
    [A,B,movement,i,j]=crossing_21(A,B,movement,i,j);
    %22
elseif (A(B(j,1)+1,B(j,2))==22 || A(B(j,1),B(j,2)+1)==22 || A(B(j,1),B(j,2)-1)==22 || A(B(j,1)-1,B(j,2))==22)
    [A,B,movement,i,j]=crossing_22(A,B,movement,i,j);
    %23
elseif (A(B(j,1)+1,B(j,2))==23 || A(B(j,1),B(j,2)+1)==23 || A(B(j,1),B(j,2)-1)==23 || A(B(j,1)-1,B(j,2))==23)
    [A,B,movement,i,j]=crossing_23(A,B,movement,i,j);
    %27
elseif (A(B(j,1)+1,B(j,2))==27 || A(B(j,1),B(j,2)+1)==27 || A(B(j,1),B(j,2)-1)==27 || A(B(j,1)-1,B(j,2))==27)
    [A,B,movement,i,j]=crossing_27(A,B,movement,i,j);
end
end

