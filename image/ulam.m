righe = 1000;
rtot = 2*righe-1;
n = rtot*(rtot+1)/2;
n=2*n-1;
tic; primi = crivello(n); toc
tic; b = boustrophedon(righe); toc
res = primi(b);
imshow(1+res, [1 1 1; 0 0 1]);