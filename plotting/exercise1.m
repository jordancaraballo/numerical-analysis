% Define el arreglo de los valores de x
% Define x array
x=linspace(0,2*pi,100);

% Evalua las funciones sin(x), sin(2x), y sin(3x) en los valores del arreglo x
% Evaluate sin functions from x array
y1=sin(x);
y2=sin(2*x);
y3=sin(3*x);

% Traza las graficas en una figura y en un mismo sistema de coordenadas
% Figure for sin functions inside the same representation.
figure(5);clf
plot(x,y1,'k',x,y2,'r',x,y3,'g');
xlabel('x');
ylabel('y');
legend('sin(x)','sin(2x)','sin(3x)');