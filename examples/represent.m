 function v = represent(x)
%
% Pre:
%    x is a real scalar.
%
% Post:
%    v is the 3-digit floating point representation of x.
%    In particular, x = .v(1)v(2)v(3) x 10^v(4)

  if x == 0
     v = [0 0 0 0];
  elseif abs(x) == inf
     v = x;
  else   
      % Determine m and e so .1 <= m < 1 and abs(x) = m*10^e 
      m = abs(x);  
	  e = 0;
      while m >= 1
        m = m/10; 
		e = e+1;
      end
      while m < 1/10
         m = 10*m; 
	     e = e-1;
      end
      % Determine nearest integer to 1000m 
      z = round(1000*m);
	  % Set up mantissa and exponent  
      if z == 1000
         v = [ 1 0 0 e+1];
      else
         v(1) = floor(z/100);
         v(2) = floor((z - v(1)*100)/10);
         v(3) = z - v(1)*100 - v(2)*10;
         v(4) = e;
      end
      % Set up the sign of the mantissa
      if x < 0
         v(1) = -v(1);
      end
	  % Special cases when the exponent is out the range [-9,9].
      if e > 9
         v(4) = inf;
      elseif e < -9
         v = [0 0 0 0];
      end 
   end
