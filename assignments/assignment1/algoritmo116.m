function p=algoritmo116(a,z)
    n = length(a) - 1;
    p = a(1) * ones(size(z));
    y = z;
    for j=2:n+1
        p = p + a(j) * y;
        y = y.*z;
    end
end