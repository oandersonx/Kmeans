function centroides = randCentroides(X, K)
% Essa função escolhe aleatoriamente K exemplos do conjunto de dados
% para inicializar os K centróides 

% Inicializando a matrix de centróides
centroides = zeros(K, size(X, 2));

% ====================== Implemente seu código aqui ======================
% Você deve escolher randomicamente exemplos do dataset X 
%


% Randomiza as amostras
amostras_embaralhadas = randperm(size(X, 1)); %randperm(tamanho das linhas de x)
% Pega os K primeiros exemplos 
centroides = X(amostras_embaralhadas(1:K), :);
% =============================================================

end

