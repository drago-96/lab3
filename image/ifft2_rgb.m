function Y=ifft2_rgb(X)
  y1 = ifft2(X(:,:,1));
  y2 = ifft2(X(:,:,2));
  y3 = ifft2(X(:,:,3));
  Y=y1; Y(:,:,2)=y2; Y(:,:,3)=y3;
  