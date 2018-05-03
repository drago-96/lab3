f = @(x,y) -y;
y0=1;
int=[0 10];
l=[0:0.01:10];
y = exp(-l);

[x,u]=RK4(f,int,y0,1);

plot(x,u,'r.-');
hold on
plot(l,y,'b');