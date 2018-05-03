%% script file con la sperimentazione sui tempi di esecuzione
Gamma =  [0.5:0.05:0.99];
v = ones(1,n);
it = zeros(1,length(Gamma));
tempi = zeros(1,length(Gamma));
for i=1:length(Gamma)
    g = Gamma(i)
    fflush(stdout);
    [y,t,p] = PageRank(H, v, g, 1000);
    it(i)=p;
    tempi(i)=t;
end
subplot(2,1,1)
plot(Gamma,it);
subplot(2,1,2)
plot(Gamma,tempi);
it
tempi
