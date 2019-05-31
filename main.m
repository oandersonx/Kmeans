%% Inicializacao
clear ; close all; clc

% Carregando o dataset
load('ex7data2.mat');

fprintf('Etapa de associacao: encontrando os centroides mais proximos.\n\n');

% Definindo a localizacao inicial dos centroides
K = 3; 
centroides = [3 3; 6 2; 8 5];


