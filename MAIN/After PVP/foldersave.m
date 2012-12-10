function [A,B,C,D,movement,nIterDone,nCars] = foldersave(A,B,C,D,movement,nIterDone,nCars,str_main_folder)
%creates a folder to save the data from the simulation

%navigate to folder for entire simulation LP
    %cd(str_main_folder);
    %{
    str_folder=['sim_',num2str(z)];
    %create folder for num of simulation LP
    mkdir(str_folder);
    %navigate to the folder of the urrent simulation LP
    cd(str_folder);
    %}
    %write the matrix b as a csv file LP
    csvwrite([str_main_folder,'/matrix_A.csv'],A)
    csvwrite([str_main_folder,'/matrix_B.csv'],B)
    csvwrite([str_main_folder,'/matrix_C.csv'],C)
    csvwrite([str_main_folder,'/matrix_D.csv'],D)
    csvwrite([str_main_folder,'/movement.csv'],movement)
    csvwrite([str_main_folder,'/nIterDone.csv'],nIterDone)
    %navigate to ROOT LP
    %cd ../
end

