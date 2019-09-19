% Estimating the n for the error to become in the marging of 10^-8.
t=8;
n=1;
R=1.25;
tol=10^(-t);

while R>tol
    n=n+1;
    R=(1.25)^n/gamma(n+2);
end
disp(num2str(n));


