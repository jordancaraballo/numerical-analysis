function g=modldpf(L,b)
n=size(b,1);
g=b;
for k=1:n-1
   for j=k+1:n
      g(j,:)=float(g(j,:),float(g(k,:),L(j,k,:),'*'),'-');
   end
end