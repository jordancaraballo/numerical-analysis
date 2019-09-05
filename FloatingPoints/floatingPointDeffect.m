% Floating Point error #1
% Result should be e=0
a=4/3
b=a-1
c=b+b+b
e=1-c

% Floating Point error #2
% Result should be h=10
x=0;
t=0;
h=0.1;

while x<=1
    x=x+h
    t=t+1;
end
t