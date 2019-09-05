function f=heart(t,y);
%
%  y(1) representa x(t) y y(2) representa s(t)
%
global mheart pheart
f=zeros(2,1);
f(1)=mheart*(-y(2)-y(1)^3/3+pheart*y(1));
f(2)=y(1)/mheart;