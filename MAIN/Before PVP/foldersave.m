function [B] = foldersave(B,str_main_folder)
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
    %navigate to ROOT LP
    cd ../
end

