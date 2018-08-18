es=2

if es==1
  f=@(x,y)[cos(x^2);sin(x^2)];
  [x,yp] = ode45(f,[0 200],[0;0]);
  %[x,ym] = ode45(@(x,y)-f(x,y),[0 20],[0;0]);
  %plot(yp(:,1),yp(:,2),ym(:,1),ym(:,2),'b')
  yp(end-10:end,:)

elseif es==2
  a=1;b=1.2;
  f=@(x,y)[log(b)*y(1)-y(2);log(b)*y(2)+y(1)];
  y0=[a;0];
  t=[0 50];
  [x,y] = ode45(f,t,y0);
  plot(y(:,1),y(:,2));
  
  y2a = a*b.^x.*cos(x);
  err=norm(y(:,1)-y2a)
  rerr=err/norm(y2a)
    
 end