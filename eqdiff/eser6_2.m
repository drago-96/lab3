sigma = 10; r = 28; b = 8/3;
fAL = @(x,y) [sigma*(y(2)-y(1));r*y(1)-y(2)-y(1)*y(3); y(1)*y(2)-b*y(3)];
y0 = [10;0;20];
y0p = [11;0;20];
[x,y] = ode45(fAL,[0 10],y0);
[xp,yp] = ode45(fAL,[0 10],y0p);
plot3(y(:,1),y(:,2),y(:,3),yp(:,1),yp(:,2),yp(:,3),'r')
figure(2)
plot(x,y(:,1),xp,yp(:,1),'r');
%hold on
%plot3(yp(:,1),yp(:,2),yp(:,3),'r')