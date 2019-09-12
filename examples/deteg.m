function y=deteg(A)
[L,U]=eg(A);
y=prod(diag(U));