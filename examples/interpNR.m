function c=interpNR(x,y)
n=length(x);
c=zeros(n,1);
c(1)=y(1);
if n>1
   c(2:n)=interpNR(x(2:n),(y(2:n)-y(1))./(x(2:n)-x(1)));
end