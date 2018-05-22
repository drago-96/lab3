function b=conv_rgb(X,psf,type)
  b1 = conv2(X(:,:,1),psf,type);
  b2 = conv2(X(:,:,2),psf,type);
  b3 = conv2(X(:,:,3),psf,type);
  b = b1; b(:,:,2) = b2; b(:,:,3) = b3;