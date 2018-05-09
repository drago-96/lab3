es=4;

if es==1 %paracadute
  y0 = [1000;0];
  T=[0:0.001:2.5];
  x = lsode(@funP,y0,T);
  plot( T,x(:,2) )
elseif es==2 %pendolo  
  f = @(x,y) [y(2); -sin(y(1))];
  y0 = [1;0];
  [x,y] = eulero(f,[0 20],y0,0.01);
  plot(x,y(1,:))
elseif es==3 %pendolo smorzato
  f = @(x,y) [y(2); -0.2*y(2)-sin(y(1))];
  y0 = [1;0];
  [x,y] = eulero(f,[0 20],y0,0.01);
  plot(x,y(1,:))
elseif es==4 %oscillatore
  fext=@(x) 0;
  fOA = @(x,y) [y(2); -4*y(1)];
  y0 = [1;0];
  [x,y] = eulero(fOA,[0 30],y0,0.01);
  plot(x,y(1,:),x,fext(x),'r')
elseif es==5 %oscillatore accoppiato
  y0 = [0.5;2;0;0];
  [x,y] = eulero(@fOAA,[0 50],y0,0.01);
  plot(x,y(1,:),x,y(2,:))
end