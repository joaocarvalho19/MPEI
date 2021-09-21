%%Exercicio 8

%% a)

n = 3;
N = 1e5;
seq = 2;
xA = 0;
xB = 0;
xC = 0;
xD = 0;
xD2 = 0;
matriz = floor(rand(seq,N)*n+1);

for c=1:N
  if matriz(1,c) == 1 && matriz(2,c) == 2
    xA += 1;
    xD += 1;
  end
  if ismember(1,matriz(:,c))
    xB += 1;
  end
  if ismember(1,matriz(:,c)) || ismember(2,matriz(:,c))
    xC += 1;
  end 
  if matriz(1,c) == 2 && matriz(2,c) == 1
    xD += 1;
  end
  if ismember(2,matriz(:,c))
    xD2 += 1;
  end
end

P2e8a = xA/N  
P2e8b = xB/N
P2e8c = xC/N
P2e8d = xD/xD2