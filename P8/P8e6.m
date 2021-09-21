%% Exercicio 6
clear;clc;
% a)
H = [0.8,0,0.3,0 ; 0.2,0.9,0.2,0 ; 0,0.1,0.4,0 ; 0,0,0.1,1];

% b)
vetor_e = [1;0;0;0];
x = H^1000 * vetor_e;
a = x(2,1)

% c)

b_1 = H
b_2 = H^2
b_10 = H^10
b_100 = H^100

% d)
  
  Q = H(1:3,1:3);

%e)
  
  F = inv(eye(size(Q)) - Q); 
  
%f)

    F1 = F(:,1);
    f1 = sum(F1)
    
    F2 = F(:,2);
    f2 = sum(F2)
    
    F3 = F(:,3);
    f3 = sum(F3)
    
%g)
  T = sum(F);
  t1 = T(1)
  t3 = T(3)
    