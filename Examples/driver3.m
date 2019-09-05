[t,y]=ode45('satelite',[0,10],[0.4,0,0.1,2]);
plot(y(:,1),y(:,3),'k')
xlabel('x');ylabel('y');