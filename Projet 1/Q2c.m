tic
clear all
close all
clc

%% Parametres et initialisation

iterations = 100;

size_1 = 10;
size_2 = 10^2;
size_3 = 10^3;
size_4 = 10^4;

esperance_1 = zeros(1,iterations);
esperance_2 = zeros(1,iterations);
esperance_3 = zeros(1,iterations);
esperance_4 = zeros(1,iterations);

gains = [1 -3 5 -5 8 -7 7 -2 1];

%% Q2b repetee 1000 fois 

for i=1 : iterations
    
    result_1 = zeros(1,size_1);
    result_2 = zeros(1,size_2);
    result_3 = zeros(1,size_3);
    result_4 = zeros(1,size_4);    
    
    for j=1 : size_1 
        result_1(j) = wall(randi([1,9]),9,10);
        result_1(j) = gains(result_1(j));
    end

    for j=1 : size_2
        result_2(j) = wall(randi([1,9]),9,10);
        result_2(j) = gains(result_2(j));
    end

    for j=1 : size_3 
        result_3(j) = wall(randi([1,9]),9,10);
        result_3(j) = gains(result_3(j));
    end

    for j=1 : size_4 
        result_4(j) = wall(randi([1,9]),9,10);
        result_4(j) = gains(result_4(j));
    end

    esperance_1(i) = mean(result_1);
    esperance_2(i) = mean(result_2);
    esperance_3(i) = mean(result_3);
    esperance_4(i) = mean(result_4);
end

%% Calcul des esperance et des variances

avg_esperance_1 = mean(esperance_1);
avg_esperance_2 = mean(esperance_2);
avg_esperance_3 = mean(esperance_3);
avg_esperance_4 = mean(esperance_4);

variance_1 = var(esperance_1);
variance_2 = var(esperance_2);
variance_3 = var(esperance_3);
variance_4 = var(esperance_4);

disp(['    Espérance 10 =  ',num2str(avg_esperance_1)])
disp(['    Espérance 100 =  ',num2str(avg_esperance_2)])
disp(['    Espérance 1000 =  ',num2str(avg_esperance_3)])
disp(['    Espérance 10000 =  ',num2str(avg_esperance_4)])

disp(['    Variance 10 =  ',num2str(variance_1)])
disp(['    Variance 100 =  ',num2str(variance_2)])
disp(['    Variance 1000 =  ',num2str(variance_3)])
disp(['    Variance 10000 =  ',num2str(variance_4)])



toc