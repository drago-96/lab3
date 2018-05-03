function a = grigi(n)
  int = [1:n];
  col = cos(2*pi*int/n);
  a = col'*col;
  %a = [1:n]'*ones(1,n) + ones(n,1)*[1:n] - 2;
  %colormap([0:1/(2*n-1):1]'*[1 1 1]);
  mappa = rand(50,3); colormap(mappa);
  colormap('default');
  imagesc(a);
end