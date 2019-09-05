function [tvals,yvals]=heun(f,t0,b,y0,h)
n=floor((b-t0)/h)+1;
m=length(y0);
yvals=zeros(n+1,m);
tvals=linspace(t0,b,n+1)';
yvals(1,:)=y0;
h2=h/2;
for i=2:n+1
   k1=feval(f,tvals(i-1), yvals(i-1,:))';
   yvals(i,:)=yvals(i-1,:)+h*k1;
   yvals(i,:)=yvals(i-1,:)+h2*(k1+feval(f,tvals(i), yvals(i,:))');
end