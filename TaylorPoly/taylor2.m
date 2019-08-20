% Calculando polinomios de taylor para f(x) = 1/1+x
x=linspace(-pi/2,pi/2,100)
p9 = x-x.^3/gamma(4)+ x.^5/gamma(6) - x.^7/gamma(8) + x.^9/gamma(10);
f = sin(x);
plot(x,p9,x,f);
xlabel('x');
ylabel('y');
legend('p9','f');
error=max(abs(f-p9))
