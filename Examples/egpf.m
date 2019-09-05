function [L,U,piv]=egpf(A)
%
% A es una matriz cuyas entradas son numeros en el sistema
% de punto flotante (10,3,9,9), i.e., cada entrada de A es 
% un vector de cuatro componentes.
%
n=size(A,1);
piv=1:n;
for k=1:n-1
   [vmax,r]=max(abs(convertm(A(k:n,k,:))));
   q=r+k-1;
   if q~=k
      piv([k,q])=piv([q,k]);
      A([k,q],:,:)=A([q,k],:,:);
   end
   for i=k+1:n
      A(i,k,:)=float(A(i,k,:),A(k,k,:),'/');
      for j=k+1:n
         A(i,j,:)=float(A(i,j,:),float(A(i,k,:),A(k,j,:),'*'),'-');
      end
   end
end
L=representm(eye(n,n));
U=representm(zeros(n,n));
for j=1:n-1
   L(j+1:n,j,:)=A(j+1:n,j,:);
   U(1:j,j,:)=A(1:j,j,:);
end
U(1:n,n,:)=A(1:n,n,:);