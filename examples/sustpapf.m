function x=sustpapf(U,g)
n=size(g,1);
x=g;
x(n,:)=float(g(n,:),U(n,n,:),'/');
for k=n-1:-1:1
   for j=k+1:n
      x(k,:)=float(x(k,:),float(U(k,j,:),x(j,:),'*'),'-');
   end
   x(k,:)=float(x(k,:),U(k,k,:),'/');
end