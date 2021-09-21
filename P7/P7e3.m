%% Exercicio 3

clear; clc;

udata=load('u.data');
u= udata(1:end,1:2); clear udata;

% Lista de utilizadores
users = unique(u(:,1));           
Nu= length(users);

i = 0;
numElementos = 100;
while i<100
  nums = floor(rand(1,numElementos) *Nu +1);
  i++;
end
  users=nums;
  Nu=length(users);

% Constrói a lista de filmes para cada utilizador
Set= cell(Nu,1);                    % Usa células

Set = ConjuntoFilmes(Nu, u, users, Set);

n = 100;

primo=10007
r = fix(rand(1,n)*primo);

MHdistance = MinHashDistance(Set,Nu,n,r,primo);
SimilarUsers = ItensSimilaresHash(0.7, Nu, MHdistance, users);
