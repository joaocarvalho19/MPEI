%% Exercicio 4

%% a)

p = 0.3;
n = 5;
x = [0 1 2 3 4 5]
prob = [binomial(p,n,0) binomial(p,n,1) binomial(p,n,2) binomial(p,n,3) binomial(p,n,4) binomial(p,n,5)]

hist(prob,x)
%%plot(x, prob)

%% b)

maximo2 = prob(1,1) + prob(1,2) + prob(1,3)
