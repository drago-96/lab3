function b = sfoca_conv(a, psf)
  % function b = sfoca_conv(a, psf)
  % sfoca una immagine memorizzata nella variabile a
  % usando la PSF memorizzata nella variabile psf
  % in uscita l’immagine sfocata b
  % la function salva l’immagine nel file "sfocata.jpg"
  a = double(a); s = size(a);
  if length(s)==3
    b = conv_rgb(a,psf,'valid');
  else
    b = conv2(a,psf,'valid');
  end
  b = uint8(b);
  %imshow(b);
  %imwrite(b,’sfocata.jpg’)