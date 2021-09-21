%% Exercicio 4

alpha = [ 'a':'z' 'A':'Z' '0':'9' ];
n=8000;
len=40;
nStr=1000;
nStr2=10000;
K=15;
fakePos= zeros(1,K);
fakePosProb= zeros(1,K);



for k=1:K
    
  adicionado=0;
  pertence=0;

  vetor = Initialize(n);


  for x = 1:nStr
    nums = randi(numel(alpha),[1 len]);
    str = alpha (nums);
    vetor = Insert(vetor, str, k, n);
    adicionado++;
  end
  

  for x = 1:nStr2
    nums = randi(numel(alpha),[1 len]);
    str2 = alpha (nums);
    IsMember = IsMember(vetor, str2, k, n);
    if IsMember == 1
      pertence++;
    endif
  end
      fakePos(k) = pertence;
      fakePosProb(k) = pertence/adicionado;

endfor

figure(1)
plot(fakePos)