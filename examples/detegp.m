function y=detegp(A)
n=size(A,1);
[L,U,piv]=egpiv(A);
index=1;
for k=1:n
   if piv(k)~=k
      index=-index;
      q=piv(k);
      piv([k,q])=piv([q,k]);
   end
end
y=index*prod(diag(U));