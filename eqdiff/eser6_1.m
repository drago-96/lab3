y0 = [0;1;0;0.8;0;1.2];
opts=odeset('RelTol',1e-6);
opts2=odeset('RelTol',1e-3);
[x,y] = ode45(@fGS,[0 10],y0,opts);
plot3(y(:,1),y(:,2),y(:,3));
err = max(abs(sqrt(sum(y(:,1:3).^2,2))-1))
[x,y] = ode45(@fGS,[0 10],y0,opts2);
err = max(abs(sqrt(sum(y(:,1:3).^2,2))-1))
[x,y] = ode23(@fGS,[0 10],y0);
err = max(abs(sqrt(sum(y(:,1:3).^2,2))-1))

[x,y] = eulero(@fGS,[0 10],y0,0.0025);
err = max(abs(sqrt(sum(y(1:3,:).^2,1))-1))
[x,y] = eulero(@fGS,[0 10],y0,0.00025);
err = max(abs(sqrt(sum(y(1:3,:).^2,1))-1))
[x,y] = RK4(@fGS,[0 10],y0,0.005);
err = max(abs(sqrt(sum(y(1:3,:).^2,1))-1))
[x,y] = RK4(@fGS,[0 10],y0,0.0005);
err = max(abs(sqrt(sum(y(1:3,:).^2,1))-1))
