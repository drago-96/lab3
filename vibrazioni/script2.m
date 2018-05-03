n = 101;
m = ones(n,1)*0.01/n;
k = ones(n+1,1)*1.e6;
theta = 1.e-3*ones(n,1);
q = 5;
rate = 16000;
secs = 2;
pickup = [20];

y=zeros(n,1);
v=zeros(n,1);

for i=1:q
  y(i) = i/q;
end
for i=q+1:n
  y(i) = 1-(i-q)/(n+1-q);
end

s1 = suonacorda(m, k, theta, y, v, rate, secs, pickup);

p = 34;
theta(p)=200*theta(1);

s2 = suonacorda(m, k, theta, y, v, rate, secs, pickup);

figure(1);
subplot(1,2,1);
plot(s1(1:rate/10));
axis([0 rate/10 -1 1]);
subplot(1,2,2);
plot(s2(1:rate/10));
axis([0 rate/10 -1 1]);

f1 = fft(s1);
f2 = fft(s2);

figure(2);
subplot(1,2,1);
plot(abs(f1(1:10000)));
subplot(1,2,2);
plot(abs(f2(1:10000)));
