  %% Exercicio 3

nLancamentos = 4;
p =0.5;
x = [0 1 2 3 4]

prob = [binomial(p,nLancamentos,0) binomial(p,nLancamentos,1) binomial(p,nLancamentos,2) binomial(p,nLancamentos,3) binomial(p,nLancamentos,4)]
sum(prob);
stem(x, prob)

media = p*nLancamentos
Var= nLancamentos*p*(1-p)
desvio = sqrt(Var)