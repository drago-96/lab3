es=2;

if es==1
  y0 = [1,0,0,1];
  [x,y] = ode45(@fPFC,[0 1.68],y0);
  plot(y(:,1),y(:,2))
  v = [-0.4 1.2 -0.65 0.65]; axis(v)
elseif es==2
  sigma = 10; r = 48; b = 8/3;
  fAL = @(x,y) [sigma*(y(2)-y(1));r*y(1)-y(2)-y(1)*y(3); y(1)*y(2)-b*y(3)];
  y0 = [0;1;0];
  [x,y] = ode45(fAL,[0 10],y0);
  plot(x,y(:,2))
  plot(y(:,1),y(:,3))
  plot3(y(:,1),y(:,2),y(:,3))
end