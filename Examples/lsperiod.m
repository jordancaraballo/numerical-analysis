x=[0,1,2];
y=[5,-2,3];
A=[sin(x)',cos(x)'];
a=(A'*A)\(A'*y');
z=linspace(-1,3,50);
y1=a(1)*sin(z)+a(2)*cos(z);
plot(x,y,'kx',z,y1,'k')
axis([-1,3,-4,7])
legend('Datos','Mejor Funcion Trigonometrica')
residual=norm(y-a(1)*sin(x)+a(2)*cos(x));