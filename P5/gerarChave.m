function chave = gerarChave(min,max)
  len = 0;
  
  while len < min
    len = floor(rand(1,1) * max+1);
  endwhile
  
  letras = [ 'a':'z' 'A':'Z'];
  chave = letras(floor(rand(1,len)*length(letras) + 1));
  
endfunction
  