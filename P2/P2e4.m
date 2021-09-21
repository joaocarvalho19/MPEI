%% Exercicio 4

%% a)
N = 1e5;
n = 20;
m = 100;

alvos = floor(rand(n,N)*100+1);

cf=0;

for c=1:N
  if length(unique(alvos(:,c))) == n
    cf = cf + 1;
   end
end
P2e4a = cf/N

%% b)

P2e4b = 1 - P2e4a 