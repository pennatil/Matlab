function [B,C,movement] = foldersave(B,C,str_main_folder,movement)
%creates a folder to save the data from the simulation

%navigate to folder for entire simulation LP
    cd(str_main_folder);
    %{
    str_folder=['sim_',num2str(z)];
    %create folder for num of simulation LP
    mkdir(str_folder);
    %navigate to the folder of the urrent simulation LP
    cd(str_folder);
    %}
    %write the matrix b as a csv file LP
    csvwrite('matrix_B.csv',B)
    csvwrite('matrix_C.csv',C)
    csvwrite('movement.csv',movement)
    %navigate to ROOT LP
    cd ../
end

