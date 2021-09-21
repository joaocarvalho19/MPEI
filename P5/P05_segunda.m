%%P05
clear; clc;
%%Primeira versao
alpha = [ 'a':'z' 'A':'Z' ];
ficheiros={'pg21209.txt','pg26017.txt'};
pmf = pmfLetrasPT(ficheiros,alpha);

N=1259;
array=zeros(1,N);
for x = 1:1000
  word = randomWordNorm(10,sqrt(5),pmf ,alpha); 
  array(string2hashRD(word ,N )) += 1;
end


figure(1)
subplot(1,2,1)
xbins = 0:6;
hist(array,xbins)
subplot(1,2,2)
stem(array)

%%num de colisoes = num listas ligadas
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