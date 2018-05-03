%% script file con la sperimentazione sui tempi di esecuzione
Gamma =  [0.5:0.01:0.99];
d = [1,10,100];
it = zeros(length(d),length(Gamma));

n = 10000;
v = ones(1,n);


for j=1:length(d)
  dens = d(j);
  num_mat = 10;
  for nmat=1:10 
    H = sprand(n,n,dens/n) ~= 0;
    for i=1:length(Gamma) 
      g = Gamma(i);
      [y,t,p] = PageRank(H, v, g, 1000);
      if p==1000
        num_mat = num_mat-1;
        break;
      else
        it(j,i)=it(j,i)+p;
      end
    end
  end
  it(j,:) = it(j,:)/num_mat;
  disp(num_mat);
end
plot(Gamma,it,[";n;";";10n;";";100n;"]);

