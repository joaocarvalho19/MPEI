%% Exercicio 4
clear;clc;
% a)
  % p(X --> Y)
  pA_A = 0.4^2;
  pA_B = (1-0.4)^2;
  pA_C = 0.4*(1-0.4);
  pA_D = 0.4*(1-0.4);

  pB_A = 0;
  pB_B = 0;
  pB_C = 0;
  pB_D = 1;

  pC_A = 0;
  pC_B = 0;
  pC_C = 0;
  pC_D = 1;

  pD_A = 0.6^2;
  pD_B = 0.6*(1-0.6);
  pD_C = 0.6*(1-0.6);
  pD_D = (1-0.6)^2;


  T = [pA_A pB_A pC_A pD_A ; pA_B pB_B pC_B pD_B ; pA_C pB_C pC_C pD_C ; pA_D pB_D pC_D pD_D]

% b)

  inicial = [1 ; 0 ; 0 ; 0];
  
  x10 = T^10*inicial  
  b = x10(2)