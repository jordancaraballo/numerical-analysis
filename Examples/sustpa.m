function x=sustpa(U,g)
n=length(g);
x=g;
x(n)=g(n)/U(n,n);
for k=n-1:-1:1
   x(k)=(g(k)-U(k,k+1:n)*x(k+1:n))/U(k,k);
end