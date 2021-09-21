%% Exercicio 1
clear;clc;
% 2 Estados: Faltar | Ir

% pX sabendo que Y
pI_F = 0.8;
pI_I = 0.7;
pF_F = 1 - pI_F;
pF_I = 1 - pI_I;

% Vetor de estados(1-Ir/0-Faltar)
estados = [1,0];

% Matriz
matriz = [pI_I,pI_F;pF_I,pF_F];

%a)
Xn2 = estados.*matriz^2;
pFaltar = Xn2(2,1);
pPresente = Xn2(1,1);
a = pPresente

%b)
estados = [0,1];
Xn2 = estados.*matriz^2;
pFaltar = Xn2(2,2);
pPresente = Xn2(1,2);
b = pPresente

%c)
estados = [1,0];
Xn2 = estados.*matriz^30;
pFaltar = Xn2(2,1);
pPresente = Xn2(1,1);
c = pPresente