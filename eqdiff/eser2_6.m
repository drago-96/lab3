H=[0.1 0.01 0.001];
A=[1 100];
y0=1;
span=[0 6];
opts=odeset("RelTol",1e-7);
for j=1:2
  a=A(j); 
  f=@(x,y)-a*y+2*x;
  g=@(x) (1+2/(a^2))*exp(-a*x)+2/a*x-2/(a^2);
  [x1,y1]=ode45(f,span,y0,opts);
  subplot(1,2,j);
  plot(x1(2:end-1)-x1(1:end-2),'r.');
  err = max(abs(y1-g(x1)))
  rerr = max(abs(y1-g(x1))./g(x1))
  for i=1:3
    h=H(i);
    [x,y]=eulero(f,span,y0,h);
    err = max(abs(y-g(x)))
    rerr = max(abs(y-g(x))./g(x))
  end
end
