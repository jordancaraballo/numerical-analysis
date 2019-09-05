 function s = pretty(v)
%
% Pre:
%    v is a 3-digit floating point number
%
% Post:
%    s is a string so that disp(s)
%    "pretty prints" the value of v.

% Convert the mantissa.

  if v == inf
     s = 'inf';
  elseif v==-inf
     s = '-inf';
  else
     m = ['.' num2str(abs(v(1))) num2str(v(2)) num2str(v(3))];
     if v(1) < 0
        m = ['-' m];
     end
   
     % Convert the exponent.

     e = num2str(v(4));
     s = [m 'x10^' e];
   end
