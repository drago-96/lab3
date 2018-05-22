M=[0.1 1 10 30];
opts=odeset("InitialStep",1);
for i=1:4
  mu=M(i);
  f=@(x,y) [y(2);mu*(1-y(1)^2)*y(2)-y(1)];
  y0=[1;1];  
  [x,y] = ode45(f,[0 100],y0,opts);
  subplot(2,2,i);
  plot(x,y(:,1),'.');
end