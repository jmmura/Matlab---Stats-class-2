tic
clear all
close all
clc

%% Parametres et initialisation des vecteurs

size_1 = 10;
size_2 = 10^2;
size_3 = 10^3;
size_4 = 10^4;

result_1 = zeros(1,size_1);
result_2 = zeros(1,size_2);
result_3 = zeros(1,size_3);
result_4 = zeros(1,size_4);

gains = [1 -3 5 -5 8 -7 7 -2 1];

%% Calcul des gains et des esperances pour chaque vecteur

for i=1 : size_1 
    result_1(i) = wall(randi([1,9]),9,10);
    result_1(i) = gains(result_1(i));
end

for i=1 : size_2
    result_2(i) = wall(randi([1,9]),9,10);
    result_2(i) = gains(result_2(i));
end

for i=1 : size_3 
    result_3(i) = wall(randi([1,9]),9,10);
    result_3(i) = gains(result_3(i));
end

for i=1 : size_4 
    result_4(i) = wall(randi([1,9]),9,10);
    result_4(i) = gains(result_4(i));
end

esperance_1 = mean(result_1);
esperance_2 = mean(result_2);
esperance_3 = mean(result_3);
esperance_4 = mean(result_4);

disp(['    Espérance 10 =  ',num2str(esperance_1)])
disp(['    Espérance 100 =  ',num2str(esperance_2)])
disp(['    Espérance 1000 =  ',num2str(esperance_3)])
disp(['    Espérance 10000 =  ',num2str(esperance_4)])


toc