%% 1ªversao

%% Exercicio 1
clear; clc;
chave = gerarChave(3,20)

%% Exercicio 2
hash = string2hash(chave,'sdbm');

%%Exercicio 3

%%nr strings=1000
%%fator de carga = 0.8  = 1000/n
%%N é o numero primo mais proximo de n 
%%hash = mod(hash * 33 + str(:,i), N);
%%neste caso N=1259
N=1259;
array=zeros(1,N);
for x = 1:1000
  array(string2hashRD(gerarChave(3,20) , 1258)+1) += 1;
  %%stem(array)
  %%pause(1)
  %%drawnow
endfor
figure(1)
subplot(1,2,1)
xbins = 0:6;
hist(array,xbins)
subplot(1,2,2)
stem(array)

%%num de colisoes
for k = 1:N
  colisoes(k) = sum(array==k);
endfor

%%Exercicio 4
colisoes;
pColisoes = colisoes/N;

media=dot( (1:N),pColisoes )
mediaX2 = dot( (1:N).*(1:N),pColisoes );
var=mediaX2 - media^2

distribuicao=cumsum(colisoes);
figure(2)
stem(distribuicao)