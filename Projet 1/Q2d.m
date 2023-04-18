tic
clear all
close all
clc

%% Parametres

iterations = 100;
size = 10^4;

esperance = zeros(1,iterations);
avg_esperance = zeros(1(,9);

gains = [1 -3 5 -5 8 -7 7 -2 1];

%% Calcul des esperances de chaque entree selon la methode de la Q2c

for k=1 : 9
    for i=1 : iterations    
        result = zeros(1,size);    
    
        for j=1 : size 
            result(j) = wall(k,9,10);
            result(j) = gains(result(j));
        end

        esperance(i) = mean(result);
    end

    avg_esperance(k) = mean(esperance);

    disp(['Entrée = ',num2str(k)])
    disp(['    Espérance =  ',num2str(avg_esperance(k))])   btt 
end


toc