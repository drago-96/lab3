y0=[1;0];
int=[1 2];
[x,u]=RK4(@fun,int,y0,0.01);
plot(x,u(1,:));