y0=1;
int=[0 5];
f=@(t,y) -y-5*exp(-t)*sin(5*t);
g=@(t) exp(-t).*cos(5*t);
for k=1:10
  h=1/(10*k);
  [x,u1]=RK4(f,int,y0,h);
  %[x,u2] = eulero(f,int,y0,h);
  res = g(x);
  plot(x,g(x)-u1,'r'); %,x,g(x)-u2,'g'
  pause(3);
  
end
