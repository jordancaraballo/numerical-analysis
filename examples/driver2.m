global mheart pheart
mheart=0.5;
pheart=1;
[t,y]=ode45('heart',[0,10],[0,-1]);
plot(t,y(:,1),'k-',t,y(:,2),'k.')
xlabel('t');ylabel('y');
legend('x(t)','s(t)')