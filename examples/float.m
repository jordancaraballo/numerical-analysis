  function z = float(x,y,op)
%
% Pre:
%    x and y are in 3-digit floating point form.
%    op is one of the strings '+', '-', '*', or '/'.
%
% Post:
%    z is the 3-digit floating point representation of x op y.
%
  sx = num2str(convert(x)); 
  sy = num2str(convert(y)); 
  z = represent(eval(['(' sx ')' op '(' sy ')' ]));
  
     
