function [tvals,yvals]=feulern(f,t0,b,y0,n)
h=(b-t0)/n;
m=length(y0);
tvals=zeros(n+1,1);
yvals=zeros(n+1,m);
index=[0:1:n]';
tvals=t0+h*index;
yvals(1,:)=y0;
for i=2:n+1
   yvals(i,:)=yvals(i-1,:)+h*feval(f,tvals(i-1),yvals(i-1,:))';
end