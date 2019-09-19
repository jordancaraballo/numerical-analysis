% Programa para evaluar una funcion definida por partes
% El valor de x:

x=2;
if x<=2
    f=4*x^2;
else
    f=16;
end

disp(['f(',num2str(x),')=',num2str(f)]);