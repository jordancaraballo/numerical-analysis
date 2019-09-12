x=[0,1,2];
y=[5,-2,3];
a=polyfit(x,y,1);
z=linspace(-1,3,50);
y1=polyval(a,z);
plot(x,y,'kx',z,y1,'k')
axis([-1,3,-4,7])
legend('Datos','Mejor Recta')
residual=norm(y-polyval(a,x));