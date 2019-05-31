%% Inicializacao
clear ; close all; clc

% Carregando o dataset
load('ex7data2.mat');

fprintf('Etapa de associacao: encontrando os centroides mais proximos.\n\n');

% Definindo a localizacao inicial dos centroides
K = 3; 
centroides = [3 3; 6 2; 8 5];

% Funcao que encontra os centroides mais proximos dos exemplos de treinamento baseada na posicao inicial dos mesmos
idx = associacao(X, centroides);

fprintf('Os centroides mais proximos para os 3 primeiros exemplos de treinamento sao: \n')
fprintf(' %d', idx(1:3));
fprintf('\n(a ordem retornada pela funcao deve ser: 1, 3, 2 respectivamente)\n');

fprintf('\nEtapa de movimentacao do cluster: define as novas posicoes dos centroides.\n\n');

% Calcula a nova posicao do centroide com base na media dos exemplos de treinamento
% que estao associados a ele 
centroides = movimentacao(X, idx, K);