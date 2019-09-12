function [a,ecm]=leastsqn(n,x,y);
A=vandg(n,x);
m=length(x);
B=A'*A;
a=B\(A'*y);
ecm=norm(A*a-y)/sqrt(m);
