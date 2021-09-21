%% Exercicio 2

%%a)

N = 1e5;
n = 10;
k = 10;
p = 0.5;
prob= factorial(n)/(factorial(n-k)*factorial(k))*p^k*(1-p)^(n-k)
lancamentos = rand(n,N) < p;
sucessos = sum(lancamentos) == k;
p2a = sum(sucessos)/N

%%b)

nLancamentos=11;
resultados=rand(nLancamentos,N)<pCara;
caras=sum(resultados);
peloMenosDezCaras=sum(sum(resultados(1:10,:))==10);
OnzeCaras=sum(caras==11);
p2B=OnzeCaras/peloMenosDezCaras

