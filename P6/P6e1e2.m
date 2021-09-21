%% Exercicio 1/2

n = 1000;
k = 4; 

vetor = Initialize(n);
vetor = Insert(vetor, "Alemanha",k,n);
vetor = Insert(vetor, "Espanha",k,n);
vetor = Insert(vetor, "Brasil",k,n);
vetor = Insert(vetor, "Portugal",k,n);

isMember = IsMember(vetor, "Belgica",k,n);
isMember = IsMember(vetor, "Portugal",k,n);
isMember = IsMember(vetor, "Alemanha",k,n);
isMember = IsMember(vetor, "Brasil",k,n);
isMember = IsMember(vetor, "Espanha",k,n);
isMember = IsMember(vetor, "Italia",k,n);
isMember = IsMember(vetor, "França",k,n);
isMember = IsMember(vetor, "Russia",k,n);
isMember = IsMember(vetor, "USA",k,n);