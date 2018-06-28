f = @(x,y) -y;
y0=1;
int=[0 10];
l=[0:0.01:10];
y = exp(-l);
h=[1 2 2.5 3];

for t=1:4
  subplot(2,2,t)
  [x,u]=RK4(f,int,y0,h(t));
  plot(x,u,'r.-',l,y,'b');
  legend('RK','esatta');
  title(['h=', num2str(h(t))]);
end