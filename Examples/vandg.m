function a=vandg(n,x);
m=length(x);
a=ones(m,n);
for j=2:n
  a(:,j)=x.*a(:,j-1);
end
