% Suma de los cuadrados de los primeros 20 enteros positivos

% Metodo 1
suma=0;
for k=1:20
    suma=suma+k^2;
end
disp(['Valor de la suma (metodo 1): ',num2str(suma)]);

% Metodo 2 (mas eficiente)
k=1:20;
suma=sum(k.^2);
disp(['Valor de la suma (metodo 2): ',num2str(suma)]);