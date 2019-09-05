function pval=metodo2(a,z)
n=length(a);
pval=a(1)*ones(size(z));
w=z;
for k=2:n
    pval=pval+a(k)*w;
    w=w.*z;
end