es=4;

if es==1
  f=@(x,y)log(2)*y;
  [x,u]=eulero(f,[0 5],1000,0.01);
  plot(x,u);
elseif es==2
  l=200;
  f=@(x,y) -log(2)/(50)*y;
  [x,u]=eulero(f,[0 l],1,0.01);
  plot(x,u);
  hold on
  plot([0 l],[0.1 0.1]); % 166.08
  r = log2(10)*50 % 166.10
elseif es==3
  K=0.01;
  a=0.2;
  b=a/K;
  y0=2;
  f=@(x,y) y*(a-b*y);
  [x,u]=ode45(f,[0 0.5],y0,0.001);
  plot(x,u,[0 0.5], [0.2 0.2]);
elseif es==4
  K=100;
  f=@(t,y) (0.5+cos(2*pi*t))*(y*(1-y/K));
  ys=[1 10 50 200];
  cols=['b','g','r','k'];
  for i=1:4
    y0=ys(i);
    [x,u]=eulero(f,[0 20],y0,0.01);
    plot(x,u,cols(i));
    hold on
    
  end
end

