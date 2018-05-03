% metodo di Eulero
slot=[1,2];
y0=1;
h=0.1;
f = @(x,y) -22*y;
[x,u] = eulero(f,slot,y0,h);
plot(x,u,'r.-');

% esatto
hold on
g = @(x) exp(22-22*x);
l = [1:0.01:2];
plot(l,g(l),'b');

