function isMember = IsMember(vetor, Key, k, n)
  isMember = 0;
  for i = 1:k
    Key = [Key num2str(k*10)];
    index = mod((string2hashRD (Key)), n)+1;
    if vetor(index) == 1
      isMember = 1;
    endif
  endfor
end
