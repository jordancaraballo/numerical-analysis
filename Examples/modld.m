function g=modld(L,b)
n=length(b);
g=b;
for k=1:n-1
   g(k+1:n)=g(k+1:n)-g(k)*L(k+1:n,k);
end