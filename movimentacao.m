function centroides = movimentacao(X, idx, K)
% Retorna os novos centroides calculados a partir do ponto médio de todas as
% amostras atribuídas a cada centróide.
%   X -> dataset
%   idx -> vetor com os centroides associados a amostras [1..K]
%   K -> número de centróides

[m n] = size(X);

% Inicializando a matrix com as posições dos centróides
centroides = zeros(K, n);

% ====================== Implemente seu código aqui ======================
% Cada linha do vetor de "centroids" corresponde a um centróide
% e cada coluna corresponde as coordenadas (x,y) respectivamente
%

for cont = 1:K
  num_k = 0;
  soma_das_coordenadas = zeros(n, 1);
  for i = 1:m
    if ( idx(i) == cont) % se pertencer ao cluster
      soma_das_coordenadas = soma_das_coordenadas + X(i, :)'; %sum (uma coluna com dois zeros) + a linha de X correspondente a i
      %sum � o resultado da soma de todas as coordenadas das amostras que pertence aquele cluster
      num_k = num_k + 1; %quantidade de amostras que pertence aquele cluaster
    end
  end
  centroides(cont, :) = (soma_das_coordenadas/num_k)'; %media das coord dos centroides: soma / quantidade de amostras daquele centroide
end


% =============================================================

end

