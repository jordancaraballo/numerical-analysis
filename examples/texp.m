nTerms=50;
error=zeros(nTerms,1);
x=[-10 -5 -1 1 5 10];
for j=1:6
   exact=exp(x(j));
   pn=1;
   termk=1;
   for k=1:nTerms
      termk=x(j)*termk/k;
      pn=pn+termk;
      error(k)=abs(exact-pn);
   end
   errrel=error/exact;
   subplot(2,3,j)
   semilogy(1:nTerms,errrel,'k')
   xlabel('Grado del Polinomio')
   ylabel('Error Relativo')
   title(sprintf('x= %5.2f',x(j)))
end