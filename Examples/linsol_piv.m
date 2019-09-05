function x=linsol_piv(A,b)
[L,U,piv]=egpiv(A);
g=modld(L,b(piv));
x=sustpa(U,g);