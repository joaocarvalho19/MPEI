%% Exercicio 2

clear;clc;

% a)
% Matriz
matriz = [1/3,1/4,0 ; 1/3,(1-1/4-1/5),1/2 ; 1/3,1/5,1/2]

% b)
% A-60  B-15 C-15

vetor_e=[60;15;15];

% c)
final =  vetor_e;
for k = 1:30
  final =  matriz*final;
end
c = final

% d)
vetor_e=[30;30;30];
final =  vetor_e;
for k = 1:30
  final =  matriz*final;
end
d = final