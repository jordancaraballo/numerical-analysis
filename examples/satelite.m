function f=satelite(t,u)
f=zeros(4,1);
denom=(u(1)^2+u(3)^2)^1.5;
f(1)=u(2);
f(2)=-u(1)/denom;
f(3)=u(4);
f(4)=-u(3)/denom;