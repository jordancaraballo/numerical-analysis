function pval=hornerV(a,z)
m=length(a); 
n=m-1;
pval=a(n+1)*ones(size(z));
for k=n:-1:1
   pval=a(k)+z.*pval;
end
