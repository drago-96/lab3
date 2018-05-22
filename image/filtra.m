function W = filtra(V, f1, f2)
  [m, n, l] = size(V);
  % calcolo fft di righe e colonne
  V = double(V); U = fft2_rgb(V);
  % filtro e antitrasformo
  Z1=diag(f1)*U(:,:,1)*diag(f2);
  Z2=diag(f1)*U(:,:,2)*diag(f2);
  Z3=diag(f1)*U(:,:,3)*diag(f2);
  Z=Z1; Z(:,:,2)=Z2; Z(:,:,3)=Z3;
  W = ifft2_rgb(Z);
  % ripulisco
  W = real(W); % tolgo eventuale roundoff immaginario
  W = uint8(W); % trasformo variabile double in intera
  % riportando i valori tra 0 e 255
