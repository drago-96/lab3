righe = 251;
rtot = 2*righe-1;
n = rtot*(rtot+1)/2;
n=2*n-1;
primi = crivello(n);
b = boustrophedon(righe);
res = primi(b);
imshow(1+res, [1 1 1; 0 0 1]);
imwrite(1+res,[1 1 1; 0 0 1], "figure_B6.png");