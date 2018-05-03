N = [1000,10000,50000];
D = [1,10,100];
W = zeros(length(N),length(D),N(3));
for i=1:length(N)
  for j=1:length(D)
    n = N(i); 
    d = D(j)/n;
    H = sprand(n,n,d) ~= 0;
    [v1,t,p] = PageRank(H, ones(1,n), 0.85, 1000);
    [v2,t,p] = PageRank(H, ones(1,n), 0.99, 1000);
    [val1,sigma1] = sort(v1);
    [val2,sigma2] = sort(v2);

    for k=1:n
      W(i,j,k) = find(sigma1==sigma2(k));
    end
    figure(1);
    subplot(length(N),length(D),(i-1)*length(N)+j)
    plot(W(i,j,1:1000))
    title(["n=", num2str(n), ",d=", num2str(D(j)*n)])
    figure(2);
    subplot(length(N),length(D),(i-1)*length(N)+j)
    plot(W(i,j,1:n))
    title(["n=", num2str(n), ",d=", num2str(D(j)*n)])
    figure(3);
    subplot(length(N),length(D),(i-1)*length(N)+j)
    plot(W(i,j,1:10))
    title(["n=", num2str(n), ",d=", num2str(D(j)*n)])
  end
end