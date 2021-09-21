%%Exercicio 7

% a)

  T = [0.8 0.1 0.05 ;
       0.2 0.6 0.2  ; 
       0   0.3 0.75 ]

  inicial = [100 ; 200 ; 30];
  total = sum(inicial);
  inicial = inicial/total;

  x4 = T^3*inicial;
  x4 = x4*total;
  
  Ana = x4(1)
  Bernardo = x4(2)
  Catarina = x4(3)
  
% b)

  x365 = T^365*inicial;
  x365 = x365*total;
  
  Ana = x365(1)
  Bernardo = x365(2)
  Catarina = x365(3)