%% Exercicio 3

n2 = 8000;
k2 = 3;
m = 1000; %%num de strings
size = 40; %% str size
alpha = [ 'a':'z' 'A':'Z' '0':'9' ];
vetor = Initialize(n2);

%% Insert 1000 str
for i = 1:1000
  nums = randi(numel(alpha),[1 size]);
  str = alpha (nums);
  vetor = Insert(vetor,str,k2,n2);
endfor

%% IsMember 10000 str
pertence = 0;
for i = 1:10000
  nums = randi(numel(alpha),[1 size]);
  str2 = alpha (nums);
  Ismember = IsMember(vetor,str2,k2,n2);
  if Ismember == 1
    pertence += 1;
  endif
endfor