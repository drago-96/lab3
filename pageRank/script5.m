% Script di sperimentazione su link in/out e PageRank
N = [1000,10000,100000];
D = [1,10,100];
for i=1:length(N)
  for j=1:length(d)
    n = N(i); d = D(j)/n; H = sprand(n,n,d);
v = ones(1,n)/n; e = ones(n,1); gamma = 0.85;
itmax=300;
u = PageRank(H, v, gamma, itmax);
yout = H*e;
yout = yout/sum(yout);
yin = e'*H;
yin = yin/sum(yin);
x=[1:n];
uin = sort(yin./u, 'descend');
uout = sort(yout'./u,'descend');
plot(x, uin,'b','LineWidth',3);
hold on;
plot(x,uout,'r','LineWidth',3)