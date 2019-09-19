function p=algoritmo115(a,z)
    n = length(a) - 1;
    p = a(1) * ones(size(z));
    for j=2:n+1
        p = p + a(j) * z.^(j-1);
    end
end