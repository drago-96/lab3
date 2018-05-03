%% script file con la sperimentazione sui tempi di esecuzione
N=[10000:5000:100000];
tempi = zeros(length(N),1);
for i=1:length(N)
   n = N(i)
   for j=1:20
      H = sprand(n,n,10/n) ~= 0;
      [v,t,p] = PageRank(H, ones(1,n), 0.85, 1000);
      tempi(i) = tempi(i) + t;
   end
   tempi(i) = tempi(i)/20;
end
plot(N,tempi)
