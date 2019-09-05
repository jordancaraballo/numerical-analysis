  function x = convert(v)
%
% Pre:
%    v represents a 3-digit floating point number.
%
% Post:
%    x is the value of v.
%
   if abs(v) == inf
      x = v;
   else
      x = sign(v(1))*(v(3) + 10*v(2) + 100*abs(v(1)))*10^(v(4)-3);
   end
