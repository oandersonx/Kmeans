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

fprintf('Nova posicao dos centroides:  \n')
fprintf(' %f %f \n' , centroides');
fprintf('\n As novas coordenadas dos centroides devem ser: \n');
fprintf('   [ 2.428301 3.157924 ]\n');
fprintf('   [ 5.813503 2.633656 ]\n');
fprintf('   [ 7.119387 3.616684 ]\n\n');

fprintf('\n Rodando o K-Means para o dataset. \n\n');

% Carregando o dataset
load('ex7data2.mat');

% Definindo os parametros iniciais
K = 3;
max_iteracao = 10;
centroides = [3 3; 6 2; 8 5];

% O 'true' no ultimo parametro da funcao indica que a execucao do k-means
% deve ser apresentada a cada iteracao
[centroides, idx] = kmeans(X, centroides, max_iteracao, true);
fprintf('\nK-Means executado.\n\n');

%% =============================================================================

%% Aplicar o K-Means na compressão de imagens 
fprintf('\n Rodando o K-Means nos pixels da imagem.\n\n');

% Cria uma matriz tridimensional A cujos os dois
% primeiros indicies identificam a posicao do pixel e o ultimo índice 
% representa vermelho, verde ou azul. 
% Por exemplo, A (50, 33, 3) fornece a intensidade azul do pixel na linha 50 
%e na coluna 33.

A = double (imread('teste.jpg'));
%load ('bird_small.mat');


% Divide todos os valores por 255 para os mesmos obedeçam o intervalo [0-1]
A = A / 255; 

% Captura o tamanho da imagem
img_size = size(A);

% Reshape na imagem para gerar uma matriz Nx3, onde N = numero de pixels. 
% 3 -> valores do pixel no canal RGB e N=128x128 - 16384
% Isso da a matriz de dataset X, na qual usaremos o K-Means.
X = reshape(A, img_size(1) * img_size(2), 3);

% Você deve testar diferentes valores de K e max_iters aqui 
K = 16; 
max_iters = 10;

% Aqui, foram definidos valores especificos para iniciar os centroides 
% voce deve inicializa-los randomicamente atraves da funcao kMeansInitCentroids
initial_centroids = kMeansInitCentroids(X, K);