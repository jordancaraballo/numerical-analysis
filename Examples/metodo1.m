function pval=metodo1(a,z)
n=length(a);
pval=a(1)*ones(size(z));
for k=2:n
    pval=pval+a(k)*z.^(k-1);
end