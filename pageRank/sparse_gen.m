N = 10000000;
n = 100*N;

p1 = floor(1+N*rand(1,n));
p2 = floor(1+N*rand(1,n));
M = sparse(p1,p2,1,N,N);
clear p1 p2