function y=detcof(A)
n=size(A,1);
if n==1
   y=A(1,1);
elseif n==2
   y=A(1,1)*A(2,2)-A(1,2)*A(2,1);
else
   isign=1;
   y=0;
   for i=1:n
      y=y+isign*A(1,i)*detcof(A(2:n,[1:i-1 i+1:n]));
      isign=-isign;
   end
end
   