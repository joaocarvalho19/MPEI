
%%Exercício 3

%%a
pMamDadoCancro=0.9;
pMamDadoNaoCancro=0.1;
pCancroA=1/10000;
pCancroB=1/1000;

pMamA=pCancroA*pMamDadoCancro+(1-pCancroA)*pMamDadoNaoCancro;
pCancroDadoMamA=(pMamDadoCancro*pCancroA)/pMamA

pMamB=pCancroB*pMamDadoCancro+(1-pCancroB)*pMamDadoNaoCancro;
pCancroDadoMamB=(pMamDadoCancro*pCancroB)/pMamB

%%a experimental

exp=zeros(2, 10e7);
exp(1,:)=rand(1,10e7)<1/10000;

for i= 1:10e7
  if exp(1,i)==1
    exp(2,i)=rand(1)<0.9;
  else
    exp(2,i)=rand(1)<0.1;
    
end

endfor

cFav=sum(sum(exp)==2)
cPoss=sum(exp(2,:))
pTeorica= cFav/cPoss
