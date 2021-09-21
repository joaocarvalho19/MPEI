%%Exercicio 6

n=300000;
k=3;
adicionado=0;
i = 0;


f = "testeGutenberg.txt";
vetor = Initialize(n);


ficheiro = fopen(f);

while 1
  linha = fgetl(ficheiro);
  if linha == -1
    break
  endif
  remain = linha;
  while length(remain) > 0
    [token, remain] = strtok(remain, ' ,;.-');
    if strcmp(remain, "não")==1
      printf("não => %d", i);
    endif
    vetor = Insert(vetor, token, k, n);
   endwhile
endwhile
fclose(ficheiro);


ficheiro = fopen(f);
while 1
  linha = fgetl(ficheiro);
  if linha == -1
    break
  endif
  remain = linha;
  while length(remain) > 0
    [token, remain] = strtok(remain, ' ,;.-');
    if strcmp(remain, "não")==1
      printf("não => %d", i);
    endif
    printf("%s => %d\n", token, IsMember(vetor, token, k, n));
   endwhile
endwhile
fclose(ficheiro);