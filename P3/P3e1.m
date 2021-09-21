%%Exercicio 1

nFaces=6;
n=1:nFaces
pN=ones(1,nFaces)/nFaces;
subplot(2,1,1)
stem(n,pN)

y=cumsum([0 0 pN 0 0] );
subplot(2,1,2)
stairs([-1 0 n 7 8],y)

ylim([0 1.5])
xlim([-1 6])


