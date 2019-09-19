function p=algoritmo117(a,z)
    m = length(a); 
    n = m-1;
    p = a(n+1) * ones(size(z));
    for k=n:-1:1
        p = a(k) + z.*p;
    end
end