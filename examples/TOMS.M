% M-file = toms.m
%
% To show, for the `tomato' data, the effect of
% finding a line fit (not sorting data), then a
% quadratic fit (not sorting data) and finally
% a quadratic fit (sorting data).  Clearly
% for a quadratic fit, the sorting is essential!
% For the linear fit it is not essential because the
% line, though drawn as a zigzag, still looks like a line.

tomato
C=polyfit(x,y,1);
Y=polyval(C,x);
plot(x,y,'*w',x,Y,'w')
xlabel('This is the linear fit, without sorting')

pause

C=polyfit(x,y,2);
Y=polyval(C,x);
plot(x,y,'*w',x,Y,'w')
xlabel('This is the quadratic fit, without sorting!')

pause

[sx i]=sort(x);
sy=y(i);
C=polyfit(sx,sy,2);
Y=polyval(C,sx);
plot(sx,sy,'*w',sx,Y,'w')
xlabel('This is the quadratic fit, WITH sorting')


