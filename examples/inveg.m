function a=inveg(A)
[n,n]=size(A);
a=zeros(n,n);
[L,U]=eg(A);
E=eye(n,n);
for k=1:n
   g=modld(L,E(:,k));
   a(:,k)=sustpa(U,g);
end