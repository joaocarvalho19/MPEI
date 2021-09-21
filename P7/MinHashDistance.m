function MHdistance = MinHashDistance(Set,Nu,n,r,primo)
  
  %%Criar matrix minhash
  MH = zeros(n,Nu);
    %ciclos for
    %para todos os user
    for u=1:Nu

      for k = 1: n
          filmes = Set{u};
         %processar (com hash function) todos os elementos
         %e obter minimos
        minimo = hf(filmes(1),k,r,primo);
        for f = 2 : length(filmes)
          temp = hf( filmes(f),k,r,primo);   
          if temp < minimo
            minimo=temp;
           endif
        endfor
        %guardar minimo
        MH(k,u) = minimo;
      end
    end
    
  %%calcular distancia
  MHdistance = zeros(n,Nu);
  for u1 = 1:Nu
    for u2 =1:u1
      MHdistance(u1,u2) = 1 - (sum(MH(:,u1) == MH(:,u2)) /n);
      MHdistance(u2,u1) = MHdistance(u1,u2);
     endfor
  endfor
  
endfunction