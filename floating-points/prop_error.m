% "." es para que haga el calculo componente a componente
% gamma es lo que me hace el factorial

x=linspace(1.0e-5,1.0e-3,500);
f1=(x-sin(x)) ./x.^ 3;
f2=1/6-x.^ 2/gamma(6)+x.^ 4/gamma(8);
plot(x,f1,x,f2);