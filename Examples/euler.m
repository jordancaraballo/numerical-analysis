oldsum = represent(0);
one = represent(1);
sum = one;
k = 1;
while convert(sum) ~= convert(oldsum)
   k = k+1;
   kay  = represent(k);
   term = float(one,kay,'/');
   oldsum = sum;
   sum  = float(sum,term,'+');
   disp(['Suma hasta ' num2str(k) ' terminos = ' pretty(sum)])
end   
  
