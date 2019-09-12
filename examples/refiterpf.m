function x=refiterpf(A,b)
n=size(A,1);
%
% Calcula la solucion aproximada en el sistema
% de punto flotante F(10,3,9,9).
%
A1=representm(A);
b1=representm(b);
[L1,U1,piv]=egpf(A1);
g1=modldpf(L1,b1(piv,:,:));
x1=sustpapf(U1,g1);
for k=1:2
   %
   % Calcula el residual a la presicion de la computadora
   % y luego lo redondea al sistema.
   %
   x=convertm(x1);
   r=b-A*x;
   r1=representm(r);
   %
   % Resuelve la ecuacion residual y corrige la solucion 
   % aproximada.
   %
   g1=modldpf(L1,r1(piv,:,:));
   e1=sustpapf(U1,g1);
   for i=1:n
      x1(i,:)=float(x1(i,:),e1(i,:),'+');
   end
end
x=convertm(x1);