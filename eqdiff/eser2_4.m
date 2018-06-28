y0=1;
int=[0 5];
f=@(t,y) -y-5*exp(-t)*sin(5*t);
g=@(t) exp(-t).*cos(5*t);
x=[0:0.01:5];

diff_max_eu = zeros(1,10);
diff_max_rk = zeros(1,10);
for k=1:10
  h=1/(10*k);
  [x1,u1]=RK4(f,int,y0,h);
  [x2,u2] = eulero(f,int,y0,h);
  res = g(x1);
  diff_max_eu(k)=max(abs(u2-g(x2)));
  diff_max_rk(k)=max(abs(u1-g(x1)));

end

diff_max_eu
diff_max_rk

lsp = log(1./[10:10:100]);

plot(lsp,log(diff_max_eu),'r',lsp,log(diff_max_rk),'b')
legend('Eulero','Runge-Kutta');

p1=polyfit(lsp,log(diff_max_eu),1)
p2=polyfit(lsp,log(diff_max_rk),1)


