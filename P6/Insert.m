function vetor = Insert(vetor, Key, k, n)
  for i = 1:k
    Key = [Key num2str(k*10)];
    index = mod((string2hashRD (Key)), n)+1;
    vetor(index)=1;
  endfor
end