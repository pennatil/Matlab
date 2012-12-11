clear all
clc
%asks for number of simulations LP
inpNFolder=0;
inpNFolder=input(sprintf('Number of simulations that were run: ',inpNFolder));
%loop for the main program
for i=1:1:inpNFolder
    %name of the folder containing the sim
    str_folder=['brutus_bef_',num2str(i)];
    %navigate to that folder
    cd(str_folder);
    %get filename
    str_filename=['brutus_bef_',num2str(i),'_matrix_B.csv'];
    %read csv and save it to a temp
    T1=csvread(str_filename);
    %gets the size of the temp matrix
    st=size(T1);
    % go through each row of the matrix taking the size each time
    for row=1:1:st(1,1)
        % go through each row of the matrix
        for column=1:1:st(1,2)
            % read from the temp and write to the main
            BR(row+((i-1)*st(1,1)),column)=T1(row,column);
        end
        %add simulation number to the matrix
        BR(row+((i-1)*st(1,1)),9)=i;
    end
    %Same as above
    str_filename=['brutus_bef_',num2str(i),'_matrix_C.csv'];
    T2=csvread(str_filename);
    st2=size(T2);
    for row=1:1:st2(1,1)
        for column=1:1:st2(1,2)
            CR(row+((i-1)*st2(1,1)),column)=T2(row,column);
        end
        CR(row+((i-1)*st2(1,1)),st2(1,2)+1)=i;
    end
    %get out of the simulation folder in order to go to the next one
    cd ../
    %clear vars /as a double check)
    clearvars T row column
end
%clear everything except for the two needed matrices
clearvars -except BR CR