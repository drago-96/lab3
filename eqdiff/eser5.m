es=3;

if es==1
  k=16.4;
  m=90;
  xp=15;
  funP=@(x,y) [y(2);-k/m*y(2)-9.8];
  [x1,y1]=RK4(funP,[0 xp],[1200;0],0.1); 
  yf=y1(:,length(y1));
  k=180;
  funP=@(x,y) [y(2);-k/m*y(2)-9.8];
  [x2,y2]=RK4(funP,[xp 150],yf,0.1);
  plot(x1,y1(1,:),x2,y2(1,:));
  y2
  
elseif es==2
  f = @(x,y) [y(2); -9.8/2*sin(y(1))];
  y0 = [pi/6;0];
  [x,y] = eulero(f,[0 10],y0,0.01);
  figure(1)
  plot(x,y(1,:),x,y(2,:))

elseif es==3
  f = @(x,y) [y(2); -9.8/2*y(1)];
  y0 = [pi/6;0];
  [x,y] = eulero(f,[0 10],y0,0.01);
  figure(2)
  plot(x,y(1,:),x,y(2,:))
  
end