function x=linsol(A,b)
[L,U]=eg(A);
g=modld(L,b);
x=sustpa(U,g);