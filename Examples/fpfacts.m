x=1; p=0; y=1; z=x+y;
while x~=z
   y=y/2;
   p=p+1;
   z=x+y;
end;
echo off;

disp(' ')
disp(sprintf('> p = %2.0f',p))
disp(' ')
disp('Strike any key to continue.')
pause
%
x=1; q=0;
while x>0
   x=x/2;
   q=q+1;
end;
echo off
disp(' ')
disp(sprintf('> q = %2.0f',q))
disp(' ')
disp('Strike any key to continue.')
pause
%
x=1; r=0;
while x~=inf
   x=2*x;
   r=r+1;
end
echo off;
disp(' ')
disp(sprintf('> r = %2.0f',r))
disp(' ')