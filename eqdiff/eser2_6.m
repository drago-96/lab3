H=[0.1 0.01 0.001];
A=[1 100];
y0=1;
span=[0 6];
for j=1:2
  a=A(j); 
  f=@(x,y)-a*y+2*x;
  g=@(x) (1+2/(a^2))*exp(-a*x)+2/a*x-2/(a^2);
  [x1,y1]=ode45(f,span,y0,RelTol=1e-7);
  plot(x1,'r');
  pause(2);
  for i=1:3
    h=H(i);
    [x,y]=eulero(f,span,y0,h);
    plot(x,y);
    err = max(abs(y-g(x)))
    pause(1);
  end
end
%[x,y]=ode45(f,span,y0);
%plot(x);
%plot(x,y,'o');