x=zeros(4*21,1);
y=ones(4*21,1);
i=1;
for e=-1:2
for f=0.10:0.01:0.30
      x(i)=f*10^e;
      i=i+1;
   end
end
semilogx(x,y,'k+')