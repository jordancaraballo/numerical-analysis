% Ejercicio 1.4: Para n>= 1, sea t(n) el tiempo de ejecucion para
% evaluar el polinomio: pn(x) = 1 - x + x^2 - x^3 + ... + (-1)^n * x^n.
% Dibuje en un mismo sistema de coordenadas las t(n) que resultan al usar
% los algoritmos 1.15, 1.16 y 1.17 al evaluar el polinomio.
%pn = 1 - x + x^2 - x^3 + ... + (-1)^n * x^n % no se como ponerla

% Variables globales
n = 2048;            % valores de n que deseo evaluar
x = linspace(0,1,n); % valor en el que deseo evaluar el polinomio

t115 = zeros(1,n); % arreglo de tiempo para algoritmo 115
t116 = t115;       % arreglo de tiempo para algoritmo 116
t117 = t115;       % arreglo de tiempo para algoritmo 117

% Loop to iterate over algorithms
for k=1:n
  
    a = (-1).^(0:k);     % arreglo de los coeficientes   
    
    tic; p = algoritmo115(a,x);
    t115(k) = toc;
    
    tic; p = algoritmo116(a,x);
    t116(k) = toc;
    
    tic; p = algoritmo117(a,x);
    t117(k) = toc;
    
end

plot(1:n,t115,1:n,t116,1:n,t117);
xlabel('n'); xlim([0 n]);
ylabel('t(n)'); 
title({'Performance of Polynomial Evaluation Algorithms'; 'Time as a function of n >= 1'},'FontWeight','Normal')
legend({'Algoritmo 1.15','Algoritmo 1.16','Algoritmo 1.17'},'Location','northwest');
