function gersch(A)
n=length(A);
diagonal=abs(diag(A));
r=sum(abs(A),2)-diagonal;
t=[0:0.1:6.3]';
X=zeros(length(t),n); Y=X;
for i=1:n
    X(:,i)=r(i)*cos(t)+real(A(i,i));
    Y(:,i)=r(i)*sin(t)+imag(A(i,i));
end
e=eig(A);
plot(X,Y,real(e),imag(e),'x')