%Exercício 1

%%a)
pRapaz=0.5;
nFilhos=2;

filhos = rand(nFilhos,1e6)<pRapaz;
sucessos=sum(sum(filhos)>=1);
p1A= sucessos/1e6

%%b)

%%c)
UmRapaz=sum(sum(filhos)>=1);
DoisRapazes=sum(sum(filhos)==2);
p1C=DoisRapazes/UmRapaz

%%d)
PrimeiroRapaz=sum(filhos(1,:)==1);
p1D=DoisRapazes/PrimeiroRapaz

%%e)
nFilhos=5;
filhos = rand(nFilhos,1e6)<pRapaz;
rapazes= sum(filhos);
peloMenosUmRapaz=sum(rapazes>=1);
doisRapazes= sum(rapazes==2);
p1E=doisRapazes/peloMenosUmRapaz

%%i)
peloMenosDoisRapazes=sum(rapazes>=2);
p1I=peloMenosDoisRapazes/peloMenosUmRapaz

%%Exercício 2

nLancamentos=10;
pCara=0.5;
N=1e7;

%%a
resultados=rand(nLancamentos,N)<pCara;
DezCaras=sum(sum(resultados)==10);
p2A=DezCaras/N

%%b
nLancamentos=11;
resultados=rand(nLancamentos,N)<pCara;
caras=sum(resultados);
peloMenosDezCaras=sum(sum(resultados(1:10,:))==10);
OnzeCaras=sum(caras==11);
p2B=OnzeCaras/peloMenosDezCaras

%%Exercício 4
N=1e6;
n=20;

alvos = floor(rand (n,N)*100+1);

%%hist(v(:), 1:100)

v2= unique(alvos);

%%CF
cf=0;

for c=1:N
  if length(unique(alvos(:,c))) == 20
    cf = cf+1;
  end
end

p = cf/N

