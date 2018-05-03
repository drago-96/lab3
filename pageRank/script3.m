% script file con la sperimentazione sul numero di passi in funzione di gamma
Gamma =  [0.5:0.01:0.99];
d = [1,10,100];
n = 10000;
v = ones(1,n);
it = zeros(length(d),length(Gamma));
for j=1:length(d)
  dens = d(j);
  H = sprand(n,n,dens/n) ~= 0;
  for i=1:length(Gamma)
    g = Gamma(i);
    [y,t,p] = PageRank(H, v, g, 1000);
    it(j,i)=p;
  end
end
it
plot(Gamma,it,[";n;";";10n;";";100n;"]);
