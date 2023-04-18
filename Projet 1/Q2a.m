tic
clear all
close all
clc

%% Parametres et conditions initiales

iterations = 10^4;

result_hasard = zeros(1,iterations);
result_fixe = zeros(1,iterations);
prob_hasard = zeros(1,3);
prob_fixe = zeros(1,3);

%% Cas où l'entree est choisie au hasard

for i=1 : iterations   
    result_hasard(i) = wall(randi([1,4]),4,3);
    prob_hasard(result_hasard(i)) = prob_hasard(result_hasard(i)) +1;    
end

prob_hasard = prob_hasard/iterations;

disp(['Si l entrée est choisie au hasard :'])
disp(['    Probabilité de 1 =  ',num2str(prob_hasard(1))])
disp(['    Probabilité de 2 =  ',num2str(prob_hasard(2))])
disp(['    Probabilité de 3 =  ',num2str(prob_hasard(3))])

%% Cas ou l'entree est fixee a la position 1

for i=1 : iterations   
    result_fixe(i) = wall(1,4,3);
    prob_fixe(result_fixe(i)) = prob_fixe(result_fixe(i)) +1;    
end

prob_fixe = prob_fixe/iterations;

disp(['Si l entrée est fixée a la position 1 :'])
disp(['    Probabilité de 1 =  ',num2str(prob_fixe(1))])
disp(['    Probabilité de 2 =  ',num2str(prob_fixe(2))])
disp(['    Probabilité de 3 =  ',num2str(prob_fixe(3))])


toc
