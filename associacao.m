function idx = associacao(X, centroides)
% essa função associa o centróide mais próximo a cada exemplo de treinamento e 
% guarda o valor associado no vetor idx. Portanto, se temos m exemplos de 
% treinamento, o vetor deve possuir a dimensão idx = m x 1 
%

% Definindo o valor de K
K = size(centroides, 1);

% inicializando idx
idx = zeros(size(X,1), 1);


% idx(i) deve conter o índice do centróide mais próximo do exemplo i. 
% Portanto, deve ser um valor dentro do intervalo de 1 a K
%

	m = size(X,1)

for i = 1:m
    distancia = zeros(1,K);
    for j = 1:K
        distancia(1,j) = sum(power((X(i,:)-centroids(j,:)),2));
    end
    [ponto_mediox, pontomedioy] = min(distancia);
    idx(i,1) = pontomedioy;
end

%ponto mediox e pontomedioy sao coordenadas da menor distancia daquele determinado centroide


%o idx retorna o valores de x e seu centroide, o mais proximo




% =============================================================

end