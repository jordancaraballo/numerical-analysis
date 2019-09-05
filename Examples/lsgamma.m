x=[0:0.1:1];
y=gamma(x+1);
A=ones(length(x),6);
for k=2:6
    A(:,k)=x'.*A(:,k-1);
end
[Q,R]=qr(A);
a=R\(Q'*y');
z=[0:.01:1];
y1=hornerV(a,z');
plot(x,y,'kx',z,y1,'k')
legend('Datos','Mejor Polinomio')
residual=norm(y'-hornerV(a,x'));