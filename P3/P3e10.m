%% Execicio 10

u=10-0;
a= 3-0;
b=10-7;
c=6-1;

pA=a/u
pB=b/u
pC=c/u

N=1e5;
m=10;
matriz =(rand(1,N) *(m));

menor3 = sum(matriz < 3);
maior7 = sum(matriz > 7);
maior1Menor6 = sum(matriz > 1 & matriz <6);

pMenor3 = menor3/N
pMaior7 = maior7/N
pMaior1Menor6 = maior1Menor6/N