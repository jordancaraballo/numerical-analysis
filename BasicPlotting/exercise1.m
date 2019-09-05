% Define el arreglo de los valores de x
% Define x array
x=linspace(0,2*pi,100);

% Evalua las funciones sin(x), sin(2x), y sin(3x) en los valores del arreglo x
% Evaluate sin functions from x array
y1=sin(x);
y2=sin(2*x);
y3=sin(3*x);

% Traza las graficas de las funciones dadas en figuras separadas
% Figures for sin functions.
figure(1);clf
plot(x,y1);
xlabel('x');
ylabel('y');
title('sin(x)');

figure(2);clf
plot(x,y2);
xlabel('x');
ylabel('y');
title('sin(2x)');

figure(3);clf
plot(x,y3);
xlabel('x');
ylabel('y');
title('sin(3x)');

% Traza las graficas en una figura pero separadas
% Figure for sin functions in the same axis.
figure(4);clf

subplot(1,3,1);
plot(x,y1);
xlabel('x');
ylabel('y');
title('sin(x)');

subplot(1,3,2);
plot(x,y2);
xlabel('x');
ylabel('y');
title('sin(2x)');

subplot(1,3,3);
plot(x,y3);
xlabel('x');
ylabel('y');
title('sin(3x)');

% Traza las graficas en una figura y en un mismo sistema de coordenadas
% Figure for sin functions inside the same representation.
figure(5);clf
plot(x,y1,'k',x,y2,'r',x,y3,'g');
xlabel('x');
ylabel('y');
legend('sin(x)','sin(2x)','sin(3x)');