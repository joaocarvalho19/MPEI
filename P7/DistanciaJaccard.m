function J = DistanciaJaccard(Nu, Set)

  %% Calcula a distancia de Jaccard entre todos os pares pela definicao.

  J=zeros(Nu); %% array para guardar distancias
  h = waitbar(0,"Calculating");
  index = 1;
  for n1 = 1:Nu
    waitbar(n1/Nu,h);
    for n2= n1+1:Nu
      I = intersect(Set{n1},Set{n2});
      U = union(Set{n1},Set{n2});
      J(n1,n2) = 1- length(I)/length(U);
      index++;             
    end
  end
  delete (h)
  
endfunction