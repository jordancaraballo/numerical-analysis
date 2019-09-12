function [pval,pprime]=hornerVp(a,z)
n=length(a); 
pval=a(n)*ones(size(z));
pprime=pval;
for k=n-1:-1:2
   pval=a(k)+z.*pval;
   pprime=pval+z.*pprime;
end
pval=a(1)+z.*pval;