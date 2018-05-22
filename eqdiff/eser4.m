es=4;

if es==1
  ys=[0.1 0.3 0.5 10];
  y0=[0.5;0.3];
  [x1,y1] = ode45(@(x,y) funLV(x,y,3),[0 300],y0);
  plot(x1,y1(:,1),x1,y1(:,2),'r')
  pause(5);
  for i=1:4
    y0=[ys(i);0.5];
    [x,y] = ode45(@(x,y) funLV(x,y,3),[0 300],y0);
    plot(x,y(:,1),x,y(:,2),'r')
    pause(5);
  end
  
elseif es==2
  y0=[300;150];
  y0=[15;22];
  [x,y] = RK4(@(x,y) funLV(x,y,4),[0 20],y0,0.01);
  plot(x,y(1,:),x,y(2,:),'r')
  
elseif es==3
  y0=[7.7;0.5];
  [x,y] = ode45(@(x,y) funLV(x,y,5),[0 25],y0);
  subplot(1,2,1)
  plot(x,y(:,1),x,y(:,2),'r')
  subplot(1,2,2)
  plot(y(:,2),y(:,1))

elseif es==4
  y0 = [999;1];
  [x,y] = ode45(@funSIR,[0 100],y0);
  plot(x,y(:,1),x,y(:,2),'r')

end

