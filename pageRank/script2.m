%% script per sperimentazione tempo/passi in base a dimensione e densità
N=[1000,10000,100000,1000000];
d = [1,10,100];
num_mat = 5;
tsp = zeros(length(N),length(d));
for i=1:length(N)
    n = N(i);
    for j=1:length(d)
        dens = d(j);
        for k=1:num_mat
          H = sprand(n,n,dens/n) ~= 0;
          [v,t,p] = PageRank(H, ones(1,n), 0.85, 1000);
          tsp(i,j)=tsp(i,j)+t/p;
        end
        tsp(i,j)=tsp(i,j)/num_mat;
    end
end
disp(tsp);
