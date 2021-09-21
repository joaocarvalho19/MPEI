%% Exercicio 2

p=0.3
rand(1,10) < p

lancamentos = floor( rand(1,15) * 6)+1 %%Valores entre 0 e 6

N = 2000;
minimo = -4;
maximo = 10;
gama = maximo - minimo;
numeros = rand(1,N) * gama + minimo;
figure(1)
hist(numeros)