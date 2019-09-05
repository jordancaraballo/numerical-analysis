function z=func1(w)
z=zeros(2,1);
x=w(1);
y=w(2);
z(1)=x^3-x*y^2+y^3;
z(2)=x*sin(x*y)+1;