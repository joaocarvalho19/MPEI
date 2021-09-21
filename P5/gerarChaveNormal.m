function chave = gerarChaveNormal(media,sigma, pmf,alpha)
  
  len = round( randn()*sigma+media);
  Fx=cumsum(pmf);
  
  
  for k=1:len
    U=rand();
    i= 1 + sum (U > Fx);
    numbers(k) = alpha(i);
  endfor
  chave = char(numbers);
end
  