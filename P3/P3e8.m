%% Exercicio 8

sumf = 0;
for x=1:4
  f = (x + 5)/30
  sumf += f;
  if f>0 && f<1
    Entre0e1 = 1
  endif
endfor
sumf
%% Esta funçao pode representar uma funçao de probabilidade de uma variavel 
%% aleatoria pois f(x) em que x=1,2,3,4 é sempre maior que 0 e menor que 1 e a soma é 1.