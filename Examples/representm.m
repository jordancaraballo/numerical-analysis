function v=representm(A);
[n,m]=size(A);
v=zeros(n,m,4);
for j=1:m
   for i=1:n
      v(i,j,:)=represent(A(i,j));
   end
end