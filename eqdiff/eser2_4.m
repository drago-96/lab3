y0=1;
int=[0 5];
f=@(t,y) -y-5*exp(-t)*sin(5*t);
g=@(t) exp(-t).*cos(5*t);
x=[0:0.01:5];

diff_eu = zeros(1,10);
diff_rk = zeros(1,10);
diff_abs_eu = zeros(1,10);
diff_abs_rk = zeros(1,10);
diff_max_eu = zeros(1,10);
diff_max_rk = zeros(1,10);
for k=1:10
  h=1/(10*k);
  [x1,u1]=RK4(f,int,y0,h);
  [x2,u2] = eulero(f,int,y0,h);
  res = g(x1);
  diff_eu(k)=meansq(u2-g(x2));
  diff_rk(k)=meansq(u1-g(x1));
  diff_abs_rk(k)=abs(u1(end)-g(x1(end)));
  diff_abs_eu(k)=abs(u2(end)-g(x2(end)));
  diff_max_eu(k)=max(abs(u2-g(x2)));
  diff_max_rk(k)=max(abs(u1-g(x1)));
  %plot(x1,g(x1)-u1,'r'); %,x,g(x)-u2,'g'
  %pause(3);
end
%diff_eu
%diff_rk
%diff_abs_rk
%diff_abs_eu
lsp = log(1./[10:10:100]);

plot(lsp,log(diff_max_eu),'r',lsp,log(diff_max_rk),'g')

p1=polyfit(lsp,log(diff_max_eu),1)
p2=polyfit(lsp,log(diff_max_rk),1)


