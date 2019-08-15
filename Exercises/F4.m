function y=F4(x)
    n=length(x);
    y=size(x);
    for k=1:n
        if x(k)<=2
            y(k)=4*x(k)^2;
        else
            y(k)=16;
    end
end