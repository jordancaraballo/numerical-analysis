function a=convertm(v)
n=size(v,1);
m=size(v,2);
a=zeros(n,m);
for j=1:m
   for i=1:n
      a(i,j)=convert(v(i,j,:));
   end
end