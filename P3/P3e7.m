%% Exercicio 7

%% a)

media = 15;
k = 0;
pPoisson = (media^k)*(e^-media)/factorial(k)

%% b)
sumprob = 0;
for k=0:10
  sumprob += (media^k)*(e^-media)/factorial(k);
endfor

pPoissonb = 1-sumprob