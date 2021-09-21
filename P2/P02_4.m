%%P02_4_a
N=1e5;
n=20;

alvos = floor(rand (n,N)*100+1);

%%CF
cf=0;

for c=1:N
  if length(unique(alvos(:,c))) == n 
    %% alvos(:,c) dá nos a coluna c da matriz
    %% unique(alvos(:,c)) dá nos o nr de elementos unicos da mesma coluna
    %% Logo, se o numero de elemnetos unicos for igual ao nr de elementos da coluna, entao, a seta acertou em alvos todos diferentes, sem repetiçoes
    %% assim se houver 20 elementos no unique, entao, todos os alvos sao diferenrtes
    cf = cf+1;
  end
end

P02_4_a = cf/N

%%P02_4_b

P02_4_b = 1 - P02_4_a 