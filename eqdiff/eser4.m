es=3;

if es==1
  ys=[0.1 0.3 0.5 10];
  %y0=[0.5;0.3];
  for i=1:4
    y0=[ys(i);0.5];
    [x,y] = eulero(@funLV,[0 300],y0,0.1);
    plot(x,y(1,:),x,y(2,:),'r.')
    pause(5);
  end
elseif es==2
  y0=[300;150];
  [x,y] = RK4(@funLV,[0 20],y0,0.01);
  plot(x,y(1,:),x,y(2,:),'r.')
elseif es==3
  y0=[7.7;0.5];
  [x,y] = eulero(@funLV,[0 10],y0,0.01);
  subplot(1,2,1)
  plot(x,y(1,:),x,y(2,:),'r.')
  subplot(1,2,2)
  plot(y(2,:),y(1,:))
end

