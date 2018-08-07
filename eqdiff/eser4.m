es=4;

if es==1
  ys=[0.1 0.5 10];
  y0=[0.5;0.3];
  [x1,y1] = ode45(@(x,y) funLV(x,y,3),[0 300],y0);
  subplot(2,2,1);
  plot(x1,y1(:,1),x1,y1(:,2),'r')
  legend('0.5', '0.3')
  for i=1:3
    y0=[ys(i);0.5];
    [x,y] = ode45(@(x,y) funLV(x,y,3),[0 300],y0);
    subplot(2,2,i+1)
    plot(x,y(:,1),x,y(:,2),'r')
    legend(num2str(y0(1)),num2str(y0(2)))
  end
  
elseif es==2
  ys=[ [300;150] [15;22]];
  for i=1:2
    y0=ys(:,i);
    [x,y] = RK4(@(x,y) funLV(x,y,4),[0 20],y0,0.01);
    subplot(1,2,i)
    plot(x,y(1,:),x,y(2,:),'r')
  end
  
elseif es==3
  y0=[7.7;0.5];
  [x,y] = ode45(@(x,y) funLV(x,y,5),[0 10],y0);
  subplot(1,2,1)
  plot(y(:,1),y(:,2))
  [x,y] = ode45(@(x,y) funLV(x,y,5),[0 25],y0);
  subplot(1,2,2) 
  plot(x,y(:,1),x,y(:,2),'r')

elseif es==4
  y0 = [999;1];
  [x,y] = ode45(@funSIR,[0 100],y0);
  plot(x,y(:,1),x,y(:,2),'r',[0 100],[800 800],'g')

end

