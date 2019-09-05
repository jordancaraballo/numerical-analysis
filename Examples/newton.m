function [x,iter]=newton(f,fp,x0,tol,itermax)
%NEWTON   Metodo de Newton para sistemas nolineales.
%         Los datos de entrada son:
%         f:        nombre de la funcion que representa el sistema.
%         fp:       nombre de la funcion que calcula el Jacobiano.
%         x0:       el punto inicial (vector columna).
%         tol:      tolerancia para el error relativo en la solucion
%                   calculada.
%         itermax:  numero maximo de iteraciones que se repiten las
%                   iteraciones.
%
%         Los ultimos dos argumentos son opcionales. Ejemplos de como
%         llamar esta funcion son:
%                   [X,ITER]=NEWTON('FUNC','DFUNC',x0,1.0e-6,100)
%         o
%                   X=NEWTON('FUNC','DFUNC',x0)
if nargin<4
   tol=1.0e-4;
end
if nargin<5
   itermax=20;
end
x=x0;
normx=0;
normz=inf;
iter=0;
while (normz>tol*normx)&(iter<=itermax)
    f0=feval(f,x);
    fp0=feval(fp,x);
    z=-fp0\f0;
    normz=norm(z,2);
    normx=norm(x,2);
    x=x+z;
    iter=iter+1;
end