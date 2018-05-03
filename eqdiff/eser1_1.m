% metodo di Eulero
slot=[1,2];
y0=1;
h=0.1;
f = @(x,y) -(2*y+x^2*y^2)/x;
[x,u] = eulero(f,slot,y0,h);
plot(x,u,'r.-');

% esatto
hold on
g = @(x) 1./(x.^2.*(log(x)+1));
l = [1:0.01:2];
plot(l,g(l),'b');
