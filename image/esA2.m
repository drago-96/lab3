eps = 1e-1; %3e-1;
n = 1000;
col = [0:n]'*ones(1,n+1)/n;
righe = ones(n+1,1)*[0:n]/n;
g = @(x,y) cos(2*pi*(x+y)).*sin(2*pi*(x-y));
A = g(col,righe);

verdi = arrayfun(@abs,A)<eps;
rossi = arrayfun(@abs,A-ones(n+1)/2)<eps;
blu = arrayfun(@abs,A+ones(n+1)/2)<eps;

bianco = (rossi+verdi+blu)==0;

res = zeros(n+1,n+1,3);
res(:,:,1)=rossi|bianco;
res(:,:,2)=verdi|bianco;
res(:,:,3)=blu|bianco;

imshow(res);
imwrite(res,"figure_A2.png");