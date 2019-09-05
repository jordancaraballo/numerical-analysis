function [L,U]=eg(A)
[n n]=size(A);
for k=1:n-1
   A(k+1:n,k)=A(k+1:n,k)/A(k,k);
   for i=k+1:n
      for j=k+1:n
         A(i,j)=A(i,j)-A(i,k)*A(k,j);
      end
   end
%   A(k+1:n,k+1:n)=A(k+1:n,k+1:n)-A(k+1:n,k)*A(k,k+1:n);
end
L=eye(n,n)+tril(A,-1);
U=triu(A);