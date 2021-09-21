%% Exercicio 11

media=14;
desvio=2;
var=desvio^2;

N=1e5;
max=20;
matriz = randn(1,N)*desvio + media;

pEntre12e16 = sum(matriz >12 & matriz <16) / N
pEntre1x0e18 = sum(matriz >10 & matriz <18) / N
pMaiorOuIgualA10 = sum (matriz >=10) / N