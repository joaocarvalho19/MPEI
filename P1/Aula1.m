%% Codigo 1
p = 0.5;
k = 2;
n = 3;
prob= factorial(n)/(factorial(n-k)*factorial(k))*p^k*(1-p)^(n-k)

%% Codigo 2 - segunda versao
N= 1e5;  %numero de experiencias

p = 0.5; %probabilidade de cara

k = 2;   %numero de caras

n = 3;   %numero de lançamentos

lancamentos = rand(n,N) > p;
sucessos= sum(lancamentos)==k;

probSimulacao= sum(sucessos)/N

%% exercicio 2 

p = 0.5;
k = 6;
n = 15;
prob= factorial(n)/(factorial(n-k)*factorial(k))*p^k*(1-p)^(n-k)

lancamentos = rand(n,N) > p;
sucessos= sum(lancamentos)==k;

probSimulacao2= sum(sucessos)/N

%% exercicio 3

p = 0.5;
k = 6;
n = 15;

prob= factorial(n)/(factorial(n-k)*factorial(k))*p^k*(1-p)^(n-k)

lancamentos = rand(n,N);
sucessos = sum(lancamentos) <= k;

probSimulacao3= sum(sucessos)/N

%% exercicio 4

N = 20;
funcao1(0.5, 15, 6, N);
N = 100 
funcao1(0.5, 15, 6, N);

%% exercicio 5

p = 0.3;
k = 3;
n = 5;

prob= factorial(n)/(factorial(n-k)*factorial(k))*p^k*(1-p)^(n-k)

analizes = rand(n,N);
sucessos = sum(analizes) == k;

probSimulacao4= sum(sucessos)/N