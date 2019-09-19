% Calculando polinomios de taylor para f(x) = 1/1+x
x=linspace(-0.5,0.5,100)
p1 = 1-x;
p2 = p1 + x.^2;
p3 = p2 - x.^3;
p4 = p3 + x.^4;
f = 1./(1+x);
plot(x,p4,x,f);
xlabel('x');
ylabel('y');
legend('p4','f');

