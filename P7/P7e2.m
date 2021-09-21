%%Exercicio 2

udata=load('u.data'); % Carrega o ficheiro dos dados dos filmes
% Fica apenas com as duas primeiras colunas
u= udata(1:end,1:2); clear udata;

% Lista de utilizadores
users = unique(u(:,1));             % Extrai os IDs dos utilizadores
Nu= length(users);                  % Número de utilizadores

%i = 0;
%numElementos = 100;
%while i<100
%  nums = floor(rand(1,numElementos) *Nu +1);
%  i++;
%end
%  users=nums;
%  Nu=length(users);

% Constrói a lista de filmes para cada utilizador
Set= cell(Nu,1);                    % Usa células

Set = ConjuntoFilmes(Nu, u, users, Set);

J = DistanciaJaccard(Nu, Set);

threshold = 0.4;
SimilarUsers = ItensSimilares(threshold, Nu, J, users);