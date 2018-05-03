%% script file con la sperimentazione sui tempi di esecuzione
N=[10000000];
d = [10,20,30];
tsp = zeros(length(N),length(d));
for i=1:length(N)
    n = N(i)
    for j=1:length(d)
        dens = d(j)
        fflush(stdout);
        M = sprand(n,n,dens/n);
        disp('a');
        fflush(stdout);
        H =  M~=0;
        disp('ciao');
        fflush(stdout);
        [v,t,p] = PageRank(H, ones(1,n), 0.85, 1000);
        tsp(i,j)=t/p;
    end
end
tsp
