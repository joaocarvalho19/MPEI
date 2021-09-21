%% Exercicio 1

%% a)
a = 3;
c = 3;
X0 = 3;
m = 19;
N = 1000;
pAl = lcg(X0,a,c,m,N);
unicos = length(unique(pAl))

figure(1)
hist(pAl)

%% b)
pAlEntre0e1 = pAl/m;
unicosEntre0e1 = length(pAlEntre0e1)
figure(2)
hist(pAlEntre0e1)