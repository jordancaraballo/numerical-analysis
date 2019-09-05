function x=mbisect(f,a,b,tol,iterm)
fa=feval(f,a);
fb=feval(f,b);
iter=1;
while (b-a>=tol)&&(iter<iterm)
    c=(a+b)/2;
    fc=feval(f,c);
    disp(['iter=' num2str(iter) '   a=' num2str(a) '   c=' num2str(c) '   b=' num2str(b)...
         '   fa=' num2str(fa) '   fc=' num2str(fc) '   fb=' num2str(fb)])
    if fb*fc<=0
        a=c;
        fa=fc;
    else
        b=c;
        fb=fc;
    end
    iter=iter+1;
end
x=c;